; ModuleID = 'drivers/firmware/efi/libstub/randomalloc.c'
source_filename = "drivers/firmware/efi/libstub/randomalloc.c"
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
@efi_is64 = external hidden constant i8, align 1

; Function Attrs: noredzone nounwind
define hidden i64 @efi_random_alloc(i64 noundef %size, i64 noundef %align, ptr noundef %addr, i64 noundef %random_seed, i32 noundef %memory_type, i64 noundef %alloc_min, i64 noundef %alloc_max) #0 !dbg !263 {
entry:
  %retval = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %random_seed.addr = alloca i64, align 8
  %memory_type.addr = alloca i32, align 4
  %alloc_min.addr = alloca i64, align 8
  %alloc_max.addr = alloca i64, align 8
  %total_slots = alloca i64, align 8
  %target_slot = alloca i64, align 8
  %total_mirrored_slots = alloca i64, align 8
  %map = alloca ptr, align 8
  %status = alloca i64, align 8
  %map_offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %md = alloca ptr, align 8
  %slots = alloca i64, align 8
  %md35 = alloca ptr, align 8
  %target = alloca i64, align 8
  %pages = alloca i64, align 8
  %__UNIQUE_ID___x349 = alloca i64, align 8
  %__UNIQUE_ID___y350 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp79 = alloca i64, align 8
  %__pad121 = alloca [3 x i64], align 16
  %tmp125 = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !267, metadata !DIExpression()), !dbg !323
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !268, metadata !DIExpression()), !dbg !324
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !269, metadata !DIExpression()), !dbg !325
  store i64 %random_seed, ptr %random_seed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %random_seed.addr, metadata !270, metadata !DIExpression()), !dbg !326
  store i32 %memory_type, ptr %memory_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %memory_type.addr, metadata !271, metadata !DIExpression()), !dbg !327
  store i64 %alloc_min, ptr %alloc_min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alloc_min.addr, metadata !272, metadata !DIExpression()), !dbg !328
  store i64 %alloc_max, ptr %alloc_max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alloc_max.addr, metadata !273, metadata !DIExpression()), !dbg !329
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_slots) #9, !dbg !330
  call void @llvm.dbg.declare(metadata ptr %total_slots, metadata !274, metadata !DIExpression()), !dbg !331
  store i64 0, ptr %total_slots, align 8, !dbg !331
  call void @llvm.lifetime.start.p0(i64 8, ptr %target_slot) #9, !dbg !330
  call void @llvm.dbg.declare(metadata ptr %target_slot, metadata !275, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_mirrored_slots) #9, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %total_mirrored_slots, metadata !276, metadata !DIExpression()), !dbg !334
  store i64 0, ptr %total_mirrored_slots, align 8, !dbg !334
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #9, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %map, metadata !277, metadata !DIExpression()), !dbg !336
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !337
  call void @llvm.dbg.declare(metadata ptr %status, metadata !299, metadata !DIExpression()), !dbg !338
  call void @llvm.lifetime.start.p0(i64 4, ptr %map_offset) #9, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %map_offset, metadata !300, metadata !DIExpression()), !dbg !340
  %call = call i64 @efi_get_memory_map(ptr noundef %map, i1 noundef zeroext false) #10, !dbg !341
  store i64 %call, ptr %status, align 8, !dbg !342
  %0 = load i64, ptr %status, align 8, !dbg !343
  %cmp = icmp ne i64 %0, 0, !dbg !345
  br i1 %cmp, label %if.then, label %if.end, !dbg !346

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %status, align 8, !dbg !347
  store i64 %1, ptr %retval, align 8, !dbg !348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup141, !dbg !348

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %align.addr, align 8, !dbg !349
  %cmp1 = icmp ult i64 %2, 4096, !dbg !351
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !352

if.then2:                                         ; preds = %if.end
  store i64 4096, ptr %align.addr, align 8, !dbg !353
  br label %if.end3, !dbg !354

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load i64, ptr %size.addr, align 8, !dbg !355
  %sub = sub i64 %3, 1, !dbg !355
  %or = or i64 %sub, 4095, !dbg !355
  %add = add i64 %or, 1, !dbg !355
  store i64 %add, ptr %size.addr, align 8, !dbg !356
  store i32 0, ptr %map_offset, align 4, !dbg !357
  br label %for.cond, !dbg !358

for.cond:                                         ; preds = %for.inc, %if.end3
  %4 = load i32, ptr %map_offset, align 4, !dbg !359
  %conv = sext i32 %4 to i64, !dbg !359
  %5 = load ptr, ptr %map, align 8, !dbg !360
  %map_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %5, i32 0, i32 0, !dbg !361
  %6 = load i64, ptr %map_size, align 8, !dbg !361
  %cmp4 = icmp ult i64 %conv, %6, !dbg !362
  br i1 %cmp4, label %for.body, label %for.end, !dbg !363

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #9, !dbg !364
  call void @llvm.dbg.declare(metadata ptr %md, metadata !301, metadata !DIExpression()), !dbg !365
  %7 = load ptr, ptr %map, align 8, !dbg !366
  %map6 = getelementptr inbounds %struct.efi_boot_memmap, ptr %7, i32 0, i32 5, !dbg !367
  %arraydecay = getelementptr inbounds [0 x %struct.efi_memory_desc_t], ptr %map6, i64 0, i64 0, !dbg !366
  %8 = load i32, ptr %map_offset, align 4, !dbg !368
  %idx.ext = sext i32 %8 to i64, !dbg !369
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %idx.ext, !dbg !369
  store ptr %add.ptr, ptr %md, align 8, !dbg !365
  call void @llvm.lifetime.start.p0(i64 8, ptr %slots) #9, !dbg !370
  call void @llvm.dbg.declare(metadata ptr %slots, metadata !306, metadata !DIExpression()), !dbg !371
  %9 = load ptr, ptr %md, align 8, !dbg !372
  %10 = load i64, ptr %size.addr, align 8, !dbg !373
  %11 = load i64, ptr %align.addr, align 8, !dbg !374
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !374
  br i1 %12, label %cond.true, label %cond.false11, !dbg !374

cond.true:                                        ; preds = %for.body
  %13 = load i64, ptr %align.addr, align 8, !dbg !374
  %cmp7 = icmp ult i64 %13, 2, !dbg !374
  br i1 %cmp7, label %cond.true9, label %cond.false, !dbg !374

cond.true9:                                       ; preds = %cond.true
  br label %cond.end, !dbg !374

cond.false:                                       ; preds = %cond.true
  %14 = load i64, ptr %align.addr, align 8, !dbg !374
  %15 = call i64 @llvm.ctlz.i64(i64 %14, i1 true), !dbg !374
  %cast = trunc i64 %15 to i32, !dbg !374
  %sub10 = sub nsw i32 63, %cast, !dbg !374
  br label %cond.end, !dbg !374

cond.end:                                         ; preds = %cond.false, %cond.true9
  %cond = phi i32 [ 0, %cond.true9 ], [ %sub10, %cond.false ], !dbg !374
  br label %cond.end13, !dbg !374

cond.false11:                                     ; preds = %for.body
  %16 = load i64, ptr %align.addr, align 8, !dbg !374
  %call12 = call i32 @__ilog2_u64(i64 noundef %16) #11, !dbg !374
  br label %cond.end13, !dbg !374

cond.end13:                                       ; preds = %cond.false11, %cond.end
  %cond14 = phi i32 [ %cond, %cond.end ], [ %call12, %cond.false11 ], !dbg !374
  %conv15 = sext i32 %cond14 to i64, !dbg !374
  %17 = load i64, ptr %alloc_min.addr, align 8, !dbg !375
  %18 = load i64, ptr %alloc_max.addr, align 8, !dbg !376
  %call16 = call i64 @get_entry_num_slots(ptr noundef %9, i64 noundef %10, i64 noundef %conv15, i64 noundef %17, i64 noundef %18) #10, !dbg !377
  store i64 %call16, ptr %slots, align 8, !dbg !378
  %19 = load i64, ptr %slots, align 8, !dbg !379
  %20 = load ptr, ptr %md, align 8, !dbg !380
  %virt_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %20, i32 0, i32 3, !dbg !380
  store i64 %19, ptr %virt_addr, align 8, !dbg !381
  %21 = load i64, ptr %slots, align 8, !dbg !382
  %22 = load i64, ptr %total_slots, align 8, !dbg !383
  %add17 = add i64 %22, %21, !dbg !383
  store i64 %add17, ptr %total_slots, align 8, !dbg !383
  %23 = load ptr, ptr %md, align 8, !dbg !384
  %attribute = getelementptr inbounds %struct.efi_memory_desc_t, ptr %23, i32 0, i32 5, !dbg !386
  %24 = load i64, ptr %attribute, align 8, !dbg !386
  %and = and i64 %24, 65536, !dbg !387
  %tobool = icmp ne i64 %and, 0, !dbg !387
  br i1 %tobool, label %if.then18, label %if.end20, !dbg !388

if.then18:                                        ; preds = %cond.end13
  %25 = load i64, ptr %slots, align 8, !dbg !389
  %26 = load i64, ptr %total_mirrored_slots, align 8, !dbg !390
  %add19 = add i64 %26, %25, !dbg !390
  store i64 %add19, ptr %total_mirrored_slots, align 8, !dbg !390
  br label %if.end20, !dbg !391

if.end20:                                         ; preds = %if.then18, %cond.end13
  call void @llvm.lifetime.end.p0(i64 8, ptr %slots) #9, !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #9, !dbg !392
  br label %for.inc, !dbg !393

for.inc:                                          ; preds = %if.end20
  %27 = load ptr, ptr %map, align 8, !dbg !394
  %desc_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %27, i32 0, i32 1, !dbg !395
  %28 = load i64, ptr %desc_size, align 8, !dbg !395
  %29 = load i32, ptr %map_offset, align 4, !dbg !396
  %conv21 = sext i32 %29 to i64, !dbg !396
  %add22 = add i64 %conv21, %28, !dbg !396
  %conv23 = trunc i64 %add22 to i32, !dbg !396
  store i32 %conv23, ptr %map_offset, align 4, !dbg !396
  br label %for.cond, !dbg !397, !llvm.loop !398

for.end:                                          ; preds = %for.cond
  %30 = load i64, ptr %total_mirrored_slots, align 8, !dbg !402
  %cmp24 = icmp ugt i64 %30, 0, !dbg !404
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !405

if.then26:                                        ; preds = %for.end
  %31 = load i64, ptr %total_mirrored_slots, align 8, !dbg !406
  store i64 %31, ptr %total_slots, align 8, !dbg !407
  br label %if.end27, !dbg !408

if.end27:                                         ; preds = %if.then26, %for.end
  %32 = load i64, ptr %total_slots, align 8, !dbg !409
  %33 = load i64, ptr %random_seed.addr, align 8, !dbg !410
  %and28 = and i64 %33, 4294967295, !dbg !411
  %mul = mul i64 %32, %and28, !dbg !412
  %shr = lshr i64 %mul, 32, !dbg !413
  store i64 %shr, ptr %target_slot, align 8, !dbg !414
  store i64 -9223372036854775799, ptr %status, align 8, !dbg !415
  store i32 0, ptr %map_offset, align 4, !dbg !416
  br label %for.cond29, !dbg !417

for.cond29:                                       ; preds = %for.inc101, %if.end27
  %34 = load i32, ptr %map_offset, align 4, !dbg !418
  %conv30 = sext i32 %34 to i64, !dbg !418
  %35 = load ptr, ptr %map, align 8, !dbg !419
  %map_size31 = getelementptr inbounds %struct.efi_boot_memmap, ptr %35, i32 0, i32 0, !dbg !420
  %36 = load i64, ptr %map_size31, align 8, !dbg !420
  %cmp32 = icmp ult i64 %conv30, %36, !dbg !421
  br i1 %cmp32, label %for.body34, label %for.end106, !dbg !422

for.body34:                                       ; preds = %for.cond29
  call void @llvm.lifetime.start.p0(i64 8, ptr %md35) #9, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %md35, metadata !307, metadata !DIExpression()), !dbg !424
  %37 = load ptr, ptr %map, align 8, !dbg !425
  %map36 = getelementptr inbounds %struct.efi_boot_memmap, ptr %37, i32 0, i32 5, !dbg !426
  %arraydecay37 = getelementptr inbounds [0 x %struct.efi_memory_desc_t], ptr %map36, i64 0, i64 0, !dbg !425
  %38 = load i32, ptr %map_offset, align 4, !dbg !427
  %idx.ext38 = sext i32 %38 to i64, !dbg !428
  %add.ptr39 = getelementptr inbounds i8, ptr %arraydecay37, i64 %idx.ext38, !dbg !428
  store ptr %add.ptr39, ptr %md35, align 8, !dbg !424
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #9, !dbg !429
  call void @llvm.dbg.declare(metadata ptr %target, metadata !311, metadata !DIExpression()), !dbg !430
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #9, !dbg !431
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !312, metadata !DIExpression()), !dbg !432
  %39 = load i64, ptr %total_mirrored_slots, align 8, !dbg !433
  %cmp40 = icmp ugt i64 %39, 0, !dbg !435
  br i1 %cmp40, label %land.lhs.true, label %if.end46, !dbg !436

land.lhs.true:                                    ; preds = %for.body34
  %40 = load ptr, ptr %md35, align 8, !dbg !437
  %attribute42 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %40, i32 0, i32 5, !dbg !438
  %41 = load i64, ptr %attribute42, align 8, !dbg !438
  %and43 = and i64 %41, 65536, !dbg !439
  %tobool44 = icmp ne i64 %and43, 0, !dbg !439
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !440

if.then45:                                        ; preds = %land.lhs.true
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !441

if.end46:                                         ; preds = %land.lhs.true, %for.body34
  %42 = load i64, ptr %target_slot, align 8, !dbg !442
  %43 = load ptr, ptr %md35, align 8, !dbg !444
  %virt_addr47 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %43, i32 0, i32 3, !dbg !444
  %44 = load i64, ptr %virt_addr47, align 8, !dbg !444
  %cmp48 = icmp uge i64 %42, %44, !dbg !445
  br i1 %cmp48, label %if.then50, label %if.end53, !dbg !446

if.then50:                                        ; preds = %if.end46
  %45 = load ptr, ptr %md35, align 8, !dbg !447
  %virt_addr51 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %45, i32 0, i32 3, !dbg !447
  %46 = load i64, ptr %virt_addr51, align 8, !dbg !447
  %47 = load i64, ptr %target_slot, align 8, !dbg !449
  %sub52 = sub i64 %47, %46, !dbg !449
  store i64 %sub52, ptr %target_slot, align 8, !dbg !449
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !450

if.end53:                                         ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x349) #9, !dbg !451
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x349, metadata !313, metadata !DIExpression()), !dbg !451
  %48 = load ptr, ptr %md35, align 8, !dbg !451
  %phys_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %48, i32 0, i32 2, !dbg !451
  %49 = load i64, ptr %phys_addr, align 8, !dbg !451
  store i64 %49, ptr %__UNIQUE_ID___x349, align 8, !dbg !451
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y350) #9, !dbg !451
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y350, metadata !315, metadata !DIExpression()), !dbg !451
  %50 = load i64, ptr %alloc_min.addr, align 8, !dbg !451
  store i64 %50, ptr %__UNIQUE_ID___y350, align 8, !dbg !451
  %51 = load i64, ptr %__UNIQUE_ID___x349, align 8, !dbg !451
  %52 = load i64, ptr %__UNIQUE_ID___y350, align 8, !dbg !451
  %cmp54 = icmp ugt i64 %51, %52, !dbg !451
  br i1 %cmp54, label %cond.true56, label %cond.false57, !dbg !451

cond.true56:                                      ; preds = %if.end53
  %53 = load i64, ptr %__UNIQUE_ID___x349, align 8, !dbg !451
  br label %cond.end58, !dbg !451

cond.false57:                                     ; preds = %if.end53
  %54 = load i64, ptr %__UNIQUE_ID___y350, align 8, !dbg !451
  br label %cond.end58, !dbg !451

cond.end58:                                       ; preds = %cond.false57, %cond.true56
  %cond59 = phi i64 [ %53, %cond.true56 ], [ %54, %cond.false57 ], !dbg !451
  store i64 %cond59, ptr %tmp, align 8, !dbg !451
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y350) #9, !dbg !452
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x349) #9, !dbg !452
  %55 = load i64, ptr %tmp, align 8, !dbg !451
  %sub60 = sub i64 %55, 1, !dbg !452
  %56 = load i64, ptr %align.addr, align 8, !dbg !452
  %sub61 = sub i64 %56, 1, !dbg !452
  %or62 = or i64 %sub60, %sub61, !dbg !452
  %add63 = add i64 %or62, 1, !dbg !452
  %57 = load i64, ptr %target_slot, align 8, !dbg !453
  %58 = load i64, ptr %align.addr, align 8, !dbg !454
  %mul64 = mul i64 %57, %58, !dbg !455
  %add65 = add i64 %add63, %mul64, !dbg !456
  store i64 %add65, ptr %target, align 8, !dbg !457
  %59 = load i64, ptr %size.addr, align 8, !dbg !458
  %div = udiv i64 %59, 4096, !dbg !459
  store i64 %div, ptr %pages, align 8, !dbg !460
  %call66 = call zeroext i1 @efi_is_native() #10, !dbg !461
  br i1 %call66, label %cond.true68, label %cond.false78, !dbg !461

cond.true68:                                      ; preds = %cond.end58
  %call69 = call zeroext i1 @efi_is_native() #10, !dbg !461
  br i1 %call69, label %cond.true71, label %cond.false72, !dbg !461

cond.true71:                                      ; preds = %cond.true68
  %60 = load ptr, ptr @efi_system_table, align 8, !dbg !461
  %boottime = getelementptr inbounds %struct.anon.1, ptr %60, i32 0, i32 10, !dbg !461
  %61 = load ptr, ptr %boottime, align 8, !dbg !461
  br label %cond.end75, !dbg !461

cond.false72:                                     ; preds = %cond.true68
  %62 = load ptr, ptr @efi_system_table, align 8, !dbg !461
  %boottime73 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %62, i32 0, i32 10, !dbg !461
  %63 = load i32, ptr %boottime73, align 4, !dbg !461
  %conv74 = zext i32 %63 to i64, !dbg !461
  %64 = inttoptr i64 %conv74 to ptr, !dbg !461
  br label %cond.end75, !dbg !461

cond.end75:                                       ; preds = %cond.false72, %cond.true71
  %cond76 = phi ptr [ %61, %cond.true71 ], [ %64, %cond.false72 ], !dbg !461
  %allocate_pages = getelementptr inbounds %struct.anon, ptr %cond76, i32 0, i32 3, !dbg !461
  %65 = load ptr, ptr %allocate_pages, align 8, !dbg !461
  %66 = load i32, ptr %memory_type.addr, align 4, !dbg !461
  %67 = load i64, ptr %pages, align 8, !dbg !461
  %call77 = call win64cc i64 %65(i32 noundef 2, i32 noundef %66, i64 noundef %67, ptr noundef %target) #10, !dbg !461
  br label %cond.end93, !dbg !461

cond.false78:                                     ; preds = %cond.end58
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !462
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !316, metadata !DIExpression()), !dbg !462
  br label %do.body, !dbg !463

do.body:                                          ; preds = %cond.false78
  br label %do.cond, !dbg !465

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !465

do.end:                                           ; preds = %do.cond
  %call80 = call zeroext i1 @efi_is_native() #10, !dbg !462
  br i1 %call80, label %cond.true82, label %cond.false84, !dbg !462

cond.true82:                                      ; preds = %do.end
  %68 = load ptr, ptr @efi_system_table, align 8, !dbg !462
  %boottime83 = getelementptr inbounds %struct.anon.1, ptr %68, i32 0, i32 10, !dbg !462
  %69 = load ptr, ptr %boottime83, align 8, !dbg !462
  br label %cond.end87, !dbg !462

cond.false84:                                     ; preds = %do.end
  %70 = load ptr, ptr @efi_system_table, align 8, !dbg !462
  %boottime85 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %70, i32 0, i32 10, !dbg !462
  %71 = load i32, ptr %boottime85, align 4, !dbg !462
  %conv86 = zext i32 %71 to i64, !dbg !462
  %72 = inttoptr i64 %conv86 to ptr, !dbg !462
  br label %cond.end87, !dbg !462

cond.end87:                                       ; preds = %cond.false84, %cond.true82
  %cond88 = phi ptr [ %69, %cond.true82 ], [ %72, %cond.false84 ], !dbg !462
  %allocate_pages89 = getelementptr inbounds %struct.anon.0, ptr %cond88, i32 0, i32 3, !dbg !462
  %73 = load i32, ptr %allocate_pages89, align 8, !dbg !462
  %74 = load i32, ptr %memory_type.addr, align 4, !dbg !462
  %75 = load i64, ptr %pages, align 8, !dbg !462
  %arraydecay90 = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !462
  %call91 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %73, i32 noundef 2, i32 noundef %74, i64 noundef %75, ptr noundef %target, ptr noundef %arraydecay90) #10, !dbg !462
  store i64 %call91, ptr %tmp79, align 8, !dbg !462
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !461
  %76 = load i64, ptr %tmp79, align 8, !dbg !462
  %call92 = call i64 @__efi64_widen_efi_status(i64 noundef %76) #10, !dbg !461
  br label %cond.end93, !dbg !461

cond.end93:                                       ; preds = %cond.end87, %cond.end75
  %cond94 = phi i64 [ %call77, %cond.end75 ], [ %call92, %cond.end87 ], !dbg !461
  store i64 %cond94, ptr %status, align 8, !dbg !467
  %77 = load i64, ptr %status, align 8, !dbg !468
  %cmp95 = icmp eq i64 %77, 0, !dbg !470
  br i1 %cmp95, label %if.then97, label %if.end98, !dbg !471

if.then97:                                        ; preds = %cond.end93
  %78 = load i64, ptr %target, align 8, !dbg !472
  %79 = load ptr, ptr %addr.addr, align 8, !dbg !473
  store i64 %78, ptr %79, align 8, !dbg !474
  br label %if.end98, !dbg !475

if.end98:                                         ; preds = %if.then97, %cond.end93
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !476

cleanup:                                          ; preds = %if.end98, %if.then50, %if.then45
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #9, !dbg !477
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #9, !dbg !477
  call void @llvm.lifetime.end.p0(i64 8, ptr %md35) #9, !dbg !477
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 7, label %for.inc101
    i32 5, label %for.end106
  ]

for.inc101:                                       ; preds = %cleanup
  %80 = load ptr, ptr %map, align 8, !dbg !478
  %desc_size102 = getelementptr inbounds %struct.efi_boot_memmap, ptr %80, i32 0, i32 1, !dbg !479
  %81 = load i64, ptr %desc_size102, align 8, !dbg !479
  %82 = load i32, ptr %map_offset, align 4, !dbg !480
  %conv103 = sext i32 %82 to i64, !dbg !480
  %add104 = add i64 %conv103, %81, !dbg !480
  %conv105 = trunc i64 %add104 to i32, !dbg !480
  store i32 %conv105, ptr %map_offset, align 4, !dbg !480
  br label %for.cond29, !dbg !481, !llvm.loop !482

for.end106:                                       ; preds = %cleanup, %for.cond29
  %call107 = call zeroext i1 @efi_is_native() #10, !dbg !484
  br i1 %call107, label %cond.true109, label %cond.false120, !dbg !484

cond.true109:                                     ; preds = %for.end106
  %call110 = call zeroext i1 @efi_is_native() #10, !dbg !484
  br i1 %call110, label %cond.true112, label %cond.false114, !dbg !484

cond.true112:                                     ; preds = %cond.true109
  %83 = load ptr, ptr @efi_system_table, align 8, !dbg !484
  %boottime113 = getelementptr inbounds %struct.anon.1, ptr %83, i32 0, i32 10, !dbg !484
  %84 = load ptr, ptr %boottime113, align 8, !dbg !484
  br label %cond.end117, !dbg !484

cond.false114:                                    ; preds = %cond.true109
  %85 = load ptr, ptr @efi_system_table, align 8, !dbg !484
  %boottime115 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %85, i32 0, i32 10, !dbg !484
  %86 = load i32, ptr %boottime115, align 4, !dbg !484
  %conv116 = zext i32 %86 to i64, !dbg !484
  %87 = inttoptr i64 %conv116 to ptr, !dbg !484
  br label %cond.end117, !dbg !484

cond.end117:                                      ; preds = %cond.false114, %cond.true112
  %cond118 = phi ptr [ %84, %cond.true112 ], [ %87, %cond.false114 ], !dbg !484
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond118, i32 0, i32 7, !dbg !484
  %88 = load ptr, ptr %free_pool, align 8, !dbg !484
  %89 = load ptr, ptr %map, align 8, !dbg !484
  %call119 = call win64cc i64 %88(ptr noundef %89) #10, !dbg !484
  br label %cond.end139, !dbg !484

cond.false120:                                    ; preds = %for.end106
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad121) #9, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %__pad121, metadata !321, metadata !DIExpression()), !dbg !485
  br label %do.body122, !dbg !486

do.body122:                                       ; preds = %cond.false120
  br label %do.cond123, !dbg !488

do.cond123:                                       ; preds = %do.body122
  br label %do.end124, !dbg !488

do.end124:                                        ; preds = %do.cond123
  %call126 = call zeroext i1 @efi_is_native() #10, !dbg !485
  br i1 %call126, label %cond.true128, label %cond.false130, !dbg !485

cond.true128:                                     ; preds = %do.end124
  %90 = load ptr, ptr @efi_system_table, align 8, !dbg !485
  %boottime129 = getelementptr inbounds %struct.anon.1, ptr %90, i32 0, i32 10, !dbg !485
  %91 = load ptr, ptr %boottime129, align 8, !dbg !485
  br label %cond.end133, !dbg !485

cond.false130:                                    ; preds = %do.end124
  %92 = load ptr, ptr @efi_system_table, align 8, !dbg !485
  %boottime131 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %92, i32 0, i32 10, !dbg !485
  %93 = load i32, ptr %boottime131, align 4, !dbg !485
  %conv132 = zext i32 %93 to i64, !dbg !485
  %94 = inttoptr i64 %conv132 to ptr, !dbg !485
  br label %cond.end133, !dbg !485

cond.end133:                                      ; preds = %cond.false130, %cond.true128
  %cond134 = phi ptr [ %91, %cond.true128 ], [ %94, %cond.false130 ], !dbg !485
  %free_pool135 = getelementptr inbounds %struct.anon.0, ptr %cond134, i32 0, i32 7, !dbg !485
  %95 = load i32, ptr %free_pool135, align 8, !dbg !485
  %96 = load ptr, ptr %map, align 8, !dbg !485
  %arraydecay136 = getelementptr inbounds [3 x i64], ptr %__pad121, i64 0, i64 0, !dbg !485
  %call137 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %95, ptr noundef %96, ptr noundef %arraydecay136) #10, !dbg !485
  store i64 %call137, ptr %tmp125, align 8, !dbg !485
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad121) #9, !dbg !484
  %97 = load i64, ptr %tmp125, align 8, !dbg !485
  %call138 = call i64 @__efi64_widen_efi_status(i64 noundef %97) #10, !dbg !484
  br label %cond.end139, !dbg !484

cond.end139:                                      ; preds = %cond.end133, %cond.end117
  %cond140 = phi i64 [ %call119, %cond.end117 ], [ %call138, %cond.end133 ], !dbg !484
  %98 = load i64, ptr %status, align 8, !dbg !490
  store i64 %98, ptr %retval, align 8, !dbg !491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup141, !dbg !491

cleanup141:                                       ; preds = %cond.end139, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %map_offset) #9, !dbg !492
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !492
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #9, !dbg !492
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_mirrored_slots) #9, !dbg !492
  call void @llvm.lifetime.end.p0(i64 8, ptr %target_slot) #9, !dbg !492
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_slots) #9, !dbg !492
  %99 = load i64, ptr %retval, align 8, !dbg !492
  ret i64 %99, !dbg !492

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone
declare !dbg !493 hidden i64 @efi_get_memory_map(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone nounwind
define internal i64 @get_entry_num_slots(ptr noundef %md, i64 noundef %size, i64 noundef %align_shift, i64 noundef %alloc_min, i64 noundef %alloc_max) #0 !dbg !497 {
entry:
  %retval = alloca i64, align 8
  %md.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %align_shift.addr = alloca i64, align 8
  %alloc_min.addr = alloca i64, align 8
  %alloc_max.addr = alloca i64, align 8
  %align = alloca i64, align 8
  %first_slot = alloca i64, align 8
  %last_slot = alloca i64, align 8
  %region_end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x345 = alloca i64, align 8
  %__UNIQUE_ID___y346 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x347 = alloca i64, align 8
  %__UNIQUE_ID___y348 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  store ptr %md, ptr %md.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %md.addr, metadata !501, metadata !DIExpression()), !dbg !516
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !502, metadata !DIExpression()), !dbg !517
  store i64 %align_shift, ptr %align_shift.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align_shift.addr, metadata !503, metadata !DIExpression()), !dbg !518
  store i64 %alloc_min, ptr %alloc_min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alloc_min.addr, metadata !504, metadata !DIExpression()), !dbg !519
  store i64 %alloc_max, ptr %alloc_max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alloc_max.addr, metadata !505, metadata !DIExpression()), !dbg !520
  call void @llvm.lifetime.start.p0(i64 8, ptr %align) #9, !dbg !521
  call void @llvm.dbg.declare(metadata ptr %align, metadata !506, metadata !DIExpression()), !dbg !522
  %0 = load i64, ptr %align_shift.addr, align 8, !dbg !523
  %shl = shl i64 1, %0, !dbg !524
  store i64 %shl, ptr %align, align 8, !dbg !522
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_slot) #9, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %first_slot, metadata !507, metadata !DIExpression()), !dbg !526
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_slot) #9, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %last_slot, metadata !508, metadata !DIExpression()), !dbg !527
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_end) #9, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %region_end, metadata !509, metadata !DIExpression()), !dbg !528
  %1 = load ptr, ptr %md.addr, align 8, !dbg !529
  %type = getelementptr inbounds %struct.efi_memory_desc_t, ptr %1, i32 0, i32 0, !dbg !531
  %2 = load i32, ptr %type, align 8, !dbg !531
  %cmp = icmp ne i32 %2, 7, !dbg !532
  br i1 %cmp, label %if.then, label %if.end, !dbg !533

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !534

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %md.addr, align 8, !dbg !535
  %attribute = getelementptr inbounds %struct.efi_memory_desc_t, ptr %3, i32 0, i32 5, !dbg !537
  %4 = load i64, ptr %attribute, align 8, !dbg !537
  %and = and i64 %4, 1048576, !dbg !538
  %tobool = icmp ne i64 %and, 0, !dbg !538
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !539

if.then1:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !540

if.end2:                                          ; preds = %if.end
  %call = call zeroext i1 @efi_soft_reserve_enabled() #12, !dbg !541
  br i1 %call, label %land.lhs.true, label %if.end7, !dbg !543

land.lhs.true:                                    ; preds = %if.end2
  %5 = load ptr, ptr %md.addr, align 8, !dbg !544
  %attribute3 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %5, i32 0, i32 5, !dbg !545
  %6 = load i64, ptr %attribute3, align 8, !dbg !545
  %and4 = and i64 %6, 262144, !dbg !546
  %tobool5 = icmp ne i64 %and4, 0, !dbg !546
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !547

if.then6:                                         ; preds = %land.lhs.true
  store i64 0, ptr %retval, align 8, !dbg !548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !548

if.end7:                                          ; preds = %land.lhs.true, %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x345) #9, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x345, metadata !510, metadata !DIExpression()), !dbg !549
  %7 = load ptr, ptr %md.addr, align 8, !dbg !549
  %phys_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %7, i32 0, i32 2, !dbg !549
  %8 = load i64, ptr %phys_addr, align 8, !dbg !549
  %9 = load ptr, ptr %md.addr, align 8, !dbg !549
  %num_pages = getelementptr inbounds %struct.efi_memory_desc_t, ptr %9, i32 0, i32 4, !dbg !549
  %10 = load i64, ptr %num_pages, align 8, !dbg !549
  %mul = mul i64 %10, 4096, !dbg !549
  %add = add i64 %8, %mul, !dbg !549
  %sub = sub i64 %add, 1, !dbg !549
  store i64 %sub, ptr %__UNIQUE_ID___x345, align 8, !dbg !549
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y346) #9, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y346, metadata !512, metadata !DIExpression()), !dbg !549
  %11 = load i64, ptr %alloc_max.addr, align 8, !dbg !549
  store i64 %11, ptr %__UNIQUE_ID___y346, align 8, !dbg !549
  %12 = load i64, ptr %__UNIQUE_ID___x345, align 8, !dbg !549
  %13 = load i64, ptr %__UNIQUE_ID___y346, align 8, !dbg !549
  %cmp8 = icmp ult i64 %12, %13, !dbg !549
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !549

cond.true:                                        ; preds = %if.end7
  %14 = load i64, ptr %__UNIQUE_ID___x345, align 8, !dbg !549
  br label %cond.end, !dbg !549

cond.false:                                       ; preds = %if.end7
  %15 = load i64, ptr %__UNIQUE_ID___y346, align 8, !dbg !549
  br label %cond.end, !dbg !549

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !549
  store i64 %cond, ptr %tmp, align 8, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y346) #9, !dbg !550
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x345) #9, !dbg !550
  %16 = load i64, ptr %tmp, align 8, !dbg !549
  store i64 %16, ptr %region_end, align 8, !dbg !551
  %17 = load i64, ptr %region_end, align 8, !dbg !552
  %18 = load i64, ptr %size.addr, align 8, !dbg !554
  %cmp9 = icmp ult i64 %17, %18, !dbg !555
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !556

if.then10:                                        ; preds = %cond.end
  store i64 0, ptr %retval, align 8, !dbg !557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !557

if.end11:                                         ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x347) #9, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x347, metadata !513, metadata !DIExpression()), !dbg !558
  %19 = load ptr, ptr %md.addr, align 8, !dbg !558
  %phys_addr12 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %19, i32 0, i32 2, !dbg !558
  %20 = load i64, ptr %phys_addr12, align 8, !dbg !558
  store i64 %20, ptr %__UNIQUE_ID___x347, align 8, !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y348) #9, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y348, metadata !515, metadata !DIExpression()), !dbg !558
  %21 = load i64, ptr %alloc_min.addr, align 8, !dbg !558
  store i64 %21, ptr %__UNIQUE_ID___y348, align 8, !dbg !558
  %22 = load i64, ptr %__UNIQUE_ID___x347, align 8, !dbg !558
  %23 = load i64, ptr %__UNIQUE_ID___y348, align 8, !dbg !558
  %cmp14 = icmp ugt i64 %22, %23, !dbg !558
  br i1 %cmp14, label %cond.true15, label %cond.false16, !dbg !558

cond.true15:                                      ; preds = %if.end11
  %24 = load i64, ptr %__UNIQUE_ID___x347, align 8, !dbg !558
  br label %cond.end17, !dbg !558

cond.false16:                                     ; preds = %if.end11
  %25 = load i64, ptr %__UNIQUE_ID___y348, align 8, !dbg !558
  br label %cond.end17, !dbg !558

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi i64 [ %24, %cond.true15 ], [ %25, %cond.false16 ], !dbg !558
  store i64 %cond18, ptr %tmp13, align 8, !dbg !558
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y348) #9, !dbg !559
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x347) #9, !dbg !559
  %26 = load i64, ptr %tmp13, align 8, !dbg !558
  %sub19 = sub i64 %26, 1, !dbg !559
  %27 = load i64, ptr %align, align 8, !dbg !559
  %sub20 = sub i64 %27, 1, !dbg !559
  %or = or i64 %sub19, %sub20, !dbg !559
  %add21 = add i64 %or, 1, !dbg !559
  store i64 %add21, ptr %first_slot, align 8, !dbg !560
  %28 = load i64, ptr %region_end, align 8, !dbg !561
  %29 = load i64, ptr %size.addr, align 8, !dbg !561
  %sub22 = sub i64 %28, %29, !dbg !561
  %add23 = add i64 %sub22, 1, !dbg !561
  %30 = load i64, ptr %align, align 8, !dbg !561
  %sub24 = sub i64 %30, 1, !dbg !561
  %not = xor i64 %sub24, -1, !dbg !561
  %and25 = and i64 %add23, %not, !dbg !561
  store i64 %and25, ptr %last_slot, align 8, !dbg !562
  %31 = load i64, ptr %first_slot, align 8, !dbg !563
  %32 = load i64, ptr %last_slot, align 8, !dbg !565
  %cmp26 = icmp ugt i64 %31, %32, !dbg !566
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !567

if.then27:                                        ; preds = %cond.end17
  store i64 0, ptr %retval, align 8, !dbg !568
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !568

if.end28:                                         ; preds = %cond.end17
  %33 = load i64, ptr %last_slot, align 8, !dbg !569
  %34 = load i64, ptr %first_slot, align 8, !dbg !570
  %sub29 = sub i64 %33, %34, !dbg !571
  %35 = load i64, ptr %align_shift.addr, align 8, !dbg !572
  %shr = lshr i64 %sub29, %35, !dbg !573
  %add30 = add i64 %shr, 1, !dbg !574
  store i64 %add30, ptr %retval, align 8, !dbg !575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !575

cleanup:                                          ; preds = %if.end28, %if.then27, %if.then10, %if.then6, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_end) #9, !dbg !576
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_slot) #9, !dbg !576
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_slot) #9, !dbg !576
  call void @llvm.lifetime.end.p0(i64 8, ptr %align) #9, !dbg !576
  %36 = load i64, ptr %retval, align 8, !dbg !576
  ret i64 %36, !dbg !576
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline noredzone nounwind willreturn memory(none)
define internal i32 @__ilog2_u64(i64 noundef %n) #5 !dbg !577 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !582, metadata !DIExpression()), !dbg !583
  %0 = load i64, ptr %n.addr, align 8, !dbg !584
  %call = call i32 @fls64(i64 noundef %0) #10, !dbg !585
  %sub = sub nsw i32 %call, 1, !dbg !586
  ret i32 %sub, !dbg !587
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #6 !dbg !588 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #10, !dbg !592
  ret i1 %call, !dbg !593
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #6 !dbg !594 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load i64, ptr %status.addr, align 8, !dbg !600
  %conv = trunc i64 %0 to i32, !dbg !600
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #10, !dbg !601
  %conv1 = zext i32 %call to i64, !dbg !601
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #10, !dbg !602
  ret i64 %call2, !dbg !603
}

; Function Attrs: noredzone
declare !dbg !604 hidden i64 @__efi64_thunk(i32 noundef, ...) #3

; Function Attrs: inlinehint noredzone nounwind willreturn memory(read)
define internal zeroext i1 @efi_soft_reserve_enabled() #7 !dbg !607 {
entry:
  ret i1 false, !dbg !608
}

; Function Attrs: alwaysinline noredzone nounwind
define internal i32 @fls64(i64 noundef %x) #8 !dbg !609 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !614, metadata !DIExpression()), !dbg !616
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #9, !dbg !617
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !615, metadata !DIExpression()), !dbg !618
  store i32 -1, ptr %bitpos, align 4, !dbg !618
  %0 = load i32, ptr %bitpos, align 4, !dbg !619
  %1 = load i64, ptr %x.addr, align 8, !dbg !620
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #13, !dbg !619, !srcloc !621
  store i32 %2, ptr %bitpos, align 4, !dbg !619
  %3 = load i32, ptr %bitpos, align 4, !dbg !622
  %add = add nsw i32 %3, 1, !dbg !623
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #9, !dbg !624
  ret i32 %add, !dbg !625
}

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #6 !dbg !626 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !627, !range !628, !noundef !629
  %tobool = trunc i8 %0 to i1, !dbg !627
  ret i1 %tobool, !dbg !630
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #6 !dbg !631 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !636, metadata !DIExpression()), !dbg !638
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !637, metadata !DIExpression()), !dbg !639
  %0 = load i64, ptr %word.addr, align 8, !dbg !640
  %1 = load i32, ptr %shift.addr, align 4, !dbg !641
  %and = and i32 %1, 63, !dbg !642
  %sh_prom = zext i32 %and to i64, !dbg !643
  %shr = lshr i64 %0, %sh_prom, !dbg !643
  %2 = load i64, ptr %word.addr, align 8, !dbg !644
  %3 = load i32, ptr %shift.addr, align 4, !dbg !645
  %sub = sub i32 0, %3, !dbg !646
  %and1 = and i32 %sub, 63, !dbg !647
  %sh_prom2 = zext i32 %and1 to i64, !dbg !648
  %shl = shl i64 %2, %sh_prom2, !dbg !648
  %or = or i64 %shr, %shl, !dbg !649
  ret i64 %or, !dbg !650
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #6 !dbg !651 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !655, metadata !DIExpression()), !dbg !657
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !656, metadata !DIExpression()), !dbg !658
  %0 = load i32, ptr %word.addr, align 4, !dbg !659
  %1 = load i32, ptr %shift.addr, align 4, !dbg !660
  %and = and i32 %1, 31, !dbg !661
  %shl = shl i32 %0, %and, !dbg !662
  %2 = load i32, ptr %word.addr, align 4, !dbg !663
  %3 = load i32, ptr %shift.addr, align 4, !dbg !664
  %sub = sub i32 0, %3, !dbg !665
  %and1 = and i32 %sub, 31, !dbg !666
  %shr = lshr i32 %2, %and1, !dbg !667
  %or = or i32 %shl, %shr, !dbg !668
  ret i32 %or, !dbg !669
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline noredzone nounwind willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #7 = { inlinehint noredzone nounwind willreturn memory(read) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin noredzone "no-builtins" }
attributes #11 = { nobuiltin noredzone nounwind willreturn memory(none) "no-builtins" }
attributes #12 = { nobuiltin noredzone nounwind willreturn memory(read) "no-builtins" }
attributes #13 = { nounwind memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!257, !258, !259, !260, !261}
!llvm.ident = !{!262}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.randomalloc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/randomalloc\22 -D KBUILD_BASENAME=\22randomalloc\22 -D KBUILD_MODNAME=\22randomalloc\22 -D __KBUILD_MODNAME=kmod_randomalloc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/randomalloc.ll drivers/firmware/efi/libstub/randomalloc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/firmware/efi/libstub/randomalloc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abd6a06a0d6e18b20ee240368f73258")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "false", value: 0)
!8 = !DIEnumerator(name: "true", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 243, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "EfiTimerCancel", value: 0)
!13 = !DIEnumerator(name: "EfiTimerPeriodic", value: 1)
!14 = !DIEnumerator(name: "EfiTimerRelative", value: 2)
!15 = !{!16, !17, !18, !23, !25}
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!22 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !5)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_boot_services_t", file: !27, line: 250, baseType: !28)
!27 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_boot_services", file: !10, line: 252, size: 3008, elements: !29)
!29 = !{!30, !209}
!30 = !DIDerivedType(tag: DW_TAG_member, scope: !28, file: !10, line: 253, baseType: !31, size: 3008)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !28, file: !10, line: 253, size: 3008, elements: !32)
!32 = !{!33, !42, !43, !44, !52, !56, !62, !67, !71, !81, !86, !90, !91, !95, !96, !97, !98, !99, !116, !117, !118, !123, !139, !143, !150, !157, !161, !165, !169, !170, !174, !175, !176, !180, !181, !182, !183, !184, !185, !189, !193, !197, !198, !204, !208}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !31, file: !10, line: 254, baseType: !34, size: 192)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !27, line: 90, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 84, size: 192, elements: !36)
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !35, file: !27, line: 85, baseType: !18, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !35, file: !27, line: 86, baseType: !23, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !35, file: !27, line: 87, baseType: !23, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !35, file: !27, line: 88, baseType: !23, size: 32, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !35, file: !27, line: 89, baseType: !23, size: 32, offset: 160)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !31, file: !10, line: 255, baseType: !17, size: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !31, file: !10, line: 256, baseType: !17, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !31, file: !10, line: 257, baseType: !45, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !47)
!47 = !{!48, !49, !49, !16, !50}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !27, line: 47, baseType: !16)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_physical_addr_t", file: !27, line: 50, baseType: !18)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !31, file: !10, line: 259, baseType: !53, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !55)
!55 = !{!48, !51, !16}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !31, file: !10, line: 261, baseType: !57, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !59)
!59 = !{!48, !60, !17, !60, !60, !61}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !31, file: !10, line: 264, baseType: !63, size: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !65)
!65 = !{!48, !49, !16, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !31, file: !10, line: 266, baseType: !68, size: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !70)
!70 = !{!48, !17}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !31, file: !10, line: 267, baseType: !72, size: 64, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !74)
!74 = !{!48, !23, !16, !75, !17, !80}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_notify_t", file: !10, line: 212, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !78)
!78 = !{null, !79, !17}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_t", file: !10, line: 210, baseType: !17)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !31, file: !10, line: 270, baseType: !82, size: 64, offset: 704)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !84)
!84 = !{!48, !79, !85, !18}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !10, line: 247, baseType: !9)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !31, file: !10, line: 272, baseType: !87, size: 64, offset: 768)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !89)
!89 = !{!48, !16, !80, !60}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !31, file: !10, line: 275, baseType: !17, size: 64, offset: 832)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !31, file: !10, line: 276, baseType: !92, size: 64, offset: 896)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !94)
!94 = !{!48, !79}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !31, file: !10, line: 277, baseType: !17, size: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !31, file: !10, line: 278, baseType: !17, size: 64, offset: 1024)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !31, file: !10, line: 279, baseType: !17, size: 64, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !31, file: !10, line: 280, baseType: !17, size: 64, offset: 1152)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !31, file: !10, line: 281, baseType: !100, size: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !102)
!102 = !{!48, !103, !104, !66}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_handle_t", file: !27, line: 51, baseType: !17)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !27, line: 74, baseType: !106, align: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !107, line: 17, baseType: !108)
!107 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 15, size: 128, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !108, file: !107, line: 16, baseType: !111, size: 128)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, elements: !114)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !113)
!113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !{!115}
!115 = !DISubrange(count: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !31, file: !10, line: 283, baseType: !17, size: 64, offset: 1280)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !31, file: !10, line: 284, baseType: !17, size: 64, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !31, file: !10, line: 285, baseType: !119, size: 64, offset: 1408)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !121)
!121 = !{!48, !49, !104, !17, !60, !122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !31, file: !10, line: 288, baseType: !124, size: 64, offset: 1472)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !126)
!126 = !{!48, !104, !127, !122}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_device_path_protocol_t", file: !10, line: 176, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_generic_dev_path", file: !27, line: 985, size: 32, elements: !131)
!131 = !{!132, !134, !135}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !27, line: 986, baseType: !133, size: 8)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sub_type", scope: !130, file: !27, line: 987, baseType: !133, size: 8, offset: 8)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !130, file: !27, line: 988, baseType: !136, size: 16, offset: 16)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !138)
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !31, file: !10, line: 291, baseType: !140, size: 64, offset: 1536)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !142)
!142 = !{!48, !104, !17}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !31, file: !10, line: 293, baseType: !144, size: 64, offset: 1600)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !146)
!146 = !{!48, !147, !103, !128, !17, !16, !122}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !148, line: 35, baseType: !149)
!148 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!149 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !31, file: !10, line: 297, baseType: !151, size: 64, offset: 1664)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !153)
!153 = !{!48, !103, !60, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !27, line: 49, baseType: !136)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !31, file: !10, line: 299, baseType: !158, size: 64, offset: 1728)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !160)
!160 = !{!48, !103, !48, !16, !155}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !31, file: !10, line: 303, baseType: !162, size: 64, offset: 1792)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !164)
!164 = !{!48, !103}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !31, file: !10, line: 304, baseType: !166, size: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !168)
!168 = !{!48, !103, !16}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !31, file: !10, line: 306, baseType: !17, size: 64, offset: 1920)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !31, file: !10, line: 307, baseType: !171, size: 64, offset: 1984)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !173)
!173 = !{!48, !16}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !31, file: !10, line: 308, baseType: !17, size: 64, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !31, file: !10, line: 309, baseType: !17, size: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !31, file: !10, line: 310, baseType: !177, size: 64, offset: 2176)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !179)
!179 = !{!48, !103, !103, !103}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !31, file: !10, line: 313, baseType: !17, size: 64, offset: 2240)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !31, file: !10, line: 314, baseType: !17, size: 64, offset: 2304)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !31, file: !10, line: 315, baseType: !17, size: 64, offset: 2368)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !31, file: !10, line: 316, baseType: !17, size: 64, offset: 2432)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !31, file: !10, line: 317, baseType: !17, size: 64, offset: 2496)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !31, file: !10, line: 318, baseType: !186, size: 64, offset: 2560)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !188)
!188 = !{!48, !104, !17, !66}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !31, file: !10, line: 320, baseType: !190, size: 64, offset: 2624)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !192)
!192 = !{!48, !122, null}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !31, file: !10, line: 321, baseType: !194, size: 64, offset: 2688)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !196)
!196 = !{!48, !103, null}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !31, file: !10, line: 322, baseType: !17, size: 64, offset: 2752)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !31, file: !10, line: 323, baseType: !199, size: 64, offset: 2816)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !201)
!201 = !{null, !17, !202, !16}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !31, file: !10, line: 324, baseType: !205, size: 64, offset: 2880)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !207)
!207 = !{null, !17, !16, !113}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !31, file: !10, line: 325, baseType: !17, size: 64, offset: 2944)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !28, file: !10, line: 373, baseType: !210, size: 1600)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !28, file: !10, line: 327, size: 1600, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !210, file: !10, line: 328, baseType: !34, size: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !210, file: !10, line: 329, baseType: !23, size: 32, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !210, file: !10, line: 330, baseType: !23, size: 32, offset: 224)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !210, file: !10, line: 331, baseType: !23, size: 32, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !210, file: !10, line: 332, baseType: !23, size: 32, offset: 288)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !210, file: !10, line: 333, baseType: !23, size: 32, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !210, file: !10, line: 334, baseType: !23, size: 32, offset: 352)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !210, file: !10, line: 335, baseType: !23, size: 32, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !210, file: !10, line: 336, baseType: !23, size: 32, offset: 416)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !210, file: !10, line: 337, baseType: !23, size: 32, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !210, file: !10, line: 338, baseType: !23, size: 32, offset: 480)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !210, file: !10, line: 339, baseType: !23, size: 32, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !210, file: !10, line: 340, baseType: !23, size: 32, offset: 544)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !210, file: !10, line: 341, baseType: !23, size: 32, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !210, file: !10, line: 342, baseType: !23, size: 32, offset: 608)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !210, file: !10, line: 343, baseType: !23, size: 32, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !210, file: !10, line: 344, baseType: !23, size: 32, offset: 672)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !210, file: !10, line: 345, baseType: !23, size: 32, offset: 704)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !210, file: !10, line: 346, baseType: !23, size: 32, offset: 736)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !210, file: !10, line: 347, baseType: !23, size: 32, offset: 768)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !210, file: !10, line: 348, baseType: !23, size: 32, offset: 800)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !210, file: !10, line: 349, baseType: !23, size: 32, offset: 832)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !210, file: !10, line: 350, baseType: !23, size: 32, offset: 864)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !210, file: !10, line: 351, baseType: !23, size: 32, offset: 896)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !210, file: !10, line: 352, baseType: !23, size: 32, offset: 928)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !210, file: !10, line: 353, baseType: !23, size: 32, offset: 960)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !210, file: !10, line: 354, baseType: !23, size: 32, offset: 992)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !210, file: !10, line: 355, baseType: !23, size: 32, offset: 1024)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !210, file: !10, line: 356, baseType: !23, size: 32, offset: 1056)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !210, file: !10, line: 357, baseType: !23, size: 32, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !210, file: !10, line: 358, baseType: !23, size: 32, offset: 1120)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !210, file: !10, line: 359, baseType: !23, size: 32, offset: 1152)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !210, file: !10, line: 360, baseType: !23, size: 32, offset: 1184)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !210, file: !10, line: 361, baseType: !23, size: 32, offset: 1216)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !210, file: !10, line: 362, baseType: !23, size: 32, offset: 1248)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !210, file: !10, line: 363, baseType: !23, size: 32, offset: 1280)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !210, file: !10, line: 364, baseType: !23, size: 32, offset: 1312)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !210, file: !10, line: 365, baseType: !23, size: 32, offset: 1344)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !210, file: !10, line: 366, baseType: !23, size: 32, offset: 1376)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !210, file: !10, line: 367, baseType: !23, size: 32, offset: 1408)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !210, file: !10, line: 368, baseType: !23, size: 32, offset: 1440)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !210, file: !10, line: 369, baseType: !23, size: 32, offset: 1472)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !210, file: !10, line: 370, baseType: !23, size: 32, offset: 1504)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !210, file: !10, line: 371, baseType: !23, size: 32, offset: 1536)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !210, file: !10, line: 372, baseType: !23, size: 32, offset: 1568)
!257 = !{i32 7, !"Dwarf Version", i32 5}
!258 = !{i32 2, !"Debug Info Version", i32 3}
!259 = !{i32 1, !"wchar_size", i32 2}
!260 = !{i32 8, !"PIC Level", i32 2}
!261 = !{i32 1, !"Code Model", i32 1}
!262 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!263 = distinct !DISubprogram(name: "efi_random_alloc", scope: !1, file: !1, line: 57, type: !264, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!48, !16, !16, !60, !16, !49, !16, !16}
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !299, !300, !301, !306, !307, !311, !312, !313, !315, !316, !321}
!267 = !DILocalVariable(name: "size", arg: 1, scope: !263, file: !1, line: 57, type: !16)
!268 = !DILocalVariable(name: "align", arg: 2, scope: !263, file: !1, line: 58, type: !16)
!269 = !DILocalVariable(name: "addr", arg: 3, scope: !263, file: !1, line: 59, type: !60)
!270 = !DILocalVariable(name: "random_seed", arg: 4, scope: !263, file: !1, line: 60, type: !16)
!271 = !DILocalVariable(name: "memory_type", arg: 5, scope: !263, file: !1, line: 61, type: !49)
!272 = !DILocalVariable(name: "alloc_min", arg: 6, scope: !263, file: !1, line: 62, type: !16)
!273 = !DILocalVariable(name: "alloc_max", arg: 7, scope: !263, file: !1, line: 63, type: !16)
!274 = !DILocalVariable(name: "total_slots", scope: !263, file: !1, line: 65, type: !16)
!275 = !DILocalVariable(name: "target_slot", scope: !263, file: !1, line: 65, type: !16)
!276 = !DILocalVariable(name: "total_mirrored_slots", scope: !263, file: !1, line: 66, type: !16)
!277 = !DILocalVariable(name: "map", scope: !263, file: !1, line: 67, type: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_boot_memmap", file: !27, line: 535, size: 320, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "map_size", scope: !279, file: !27, line: 536, baseType: !16, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "desc_size", scope: !279, file: !27, line: 537, baseType: !16, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "desc_ver", scope: !279, file: !27, line: 538, baseType: !23, size: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "map_key", scope: !279, file: !27, line: 539, baseType: !16, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "buff_size", scope: !279, file: !27, line: 540, baseType: !16, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !279, file: !27, line: 541, baseType: !287, offset: 320)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, elements: !297)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !27, line: 145, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 138, size: 320, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !289, file: !27, line: 139, baseType: !23, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !289, file: !27, line: 140, baseType: !23, size: 32, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !289, file: !27, line: 141, baseType: !18, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !289, file: !27, line: 142, baseType: !18, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !289, file: !27, line: 143, baseType: !18, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !289, file: !27, line: 144, baseType: !18, size: 64, offset: 256)
!297 = !{!298}
!298 = !DISubrange(count: -1)
!299 = !DILocalVariable(name: "status", scope: !263, file: !1, line: 68, type: !48)
!300 = !DILocalVariable(name: "map_offset", scope: !263, file: !1, line: 69, type: !49)
!301 = !DILocalVariable(name: "md", scope: !302, file: !1, line: 82, type: !305)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 81, column: 81)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 81, column: 2)
!304 = distinct !DILexicalBlock(scope: !263, file: !1, line: 81, column: 2)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!306 = !DILocalVariable(name: "slots", scope: !302, file: !1, line: 83, type: !16)
!307 = !DILocalVariable(name: "md", scope: !308, file: !1, line: 113, type: !305)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 112, column: 81)
!309 = distinct !DILexicalBlock(scope: !310, file: !1, line: 112, column: 2)
!310 = distinct !DILexicalBlock(scope: !263, file: !1, line: 112, column: 2)
!311 = !DILocalVariable(name: "target", scope: !308, file: !1, line: 114, type: !51)
!312 = !DILocalVariable(name: "pages", scope: !308, file: !1, line: 115, type: !16)
!313 = !DILocalVariable(name: "__UNIQUE_ID___x349", scope: !314, file: !1, line: 126, type: !18)
!314 = distinct !DILexicalBlock(scope: !308, file: !1, line: 126, column: 12)
!315 = !DILocalVariable(name: "__UNIQUE_ID___y350", scope: !314, file: !1, line: 126, type: !18)
!316 = !DILocalVariable(name: "__pad", scope: !317, file: !1, line: 129, type: !318)
!317 = distinct !DILexicalBlock(scope: !308, file: !1, line: 129, column: 12)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 192, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 3)
!321 = !DILocalVariable(name: "__pad", scope: !322, file: !1, line: 136, type: !318)
!322 = distinct !DILexicalBlock(scope: !263, file: !1, line: 136, column: 2)
!323 = !DILocation(line: 57, column: 45, scope: !263)
!324 = !DILocation(line: 58, column: 24, scope: !263)
!325 = !DILocation(line: 59, column: 25, scope: !263)
!326 = !DILocation(line: 60, column: 24, scope: !263)
!327 = !DILocation(line: 61, column: 14, scope: !263)
!328 = !DILocation(line: 62, column: 24, scope: !263)
!329 = !DILocation(line: 63, column: 24, scope: !263)
!330 = !DILocation(line: 65, column: 2, scope: !263)
!331 = !DILocation(line: 65, column: 16, scope: !263)
!332 = !DILocation(line: 65, column: 33, scope: !263)
!333 = !DILocation(line: 66, column: 2, scope: !263)
!334 = !DILocation(line: 66, column: 16, scope: !263)
!335 = !DILocation(line: 67, column: 2, scope: !263)
!336 = !DILocation(line: 67, column: 26, scope: !263)
!337 = !DILocation(line: 68, column: 2, scope: !263)
!338 = !DILocation(line: 68, column: 15, scope: !263)
!339 = !DILocation(line: 69, column: 2, scope: !263)
!340 = !DILocation(line: 69, column: 6, scope: !263)
!341 = !DILocation(line: 71, column: 11, scope: !263)
!342 = !DILocation(line: 71, column: 9, scope: !263)
!343 = !DILocation(line: 72, column: 6, scope: !344)
!344 = distinct !DILexicalBlock(scope: !263, file: !1, line: 72, column: 6)
!345 = !DILocation(line: 72, column: 13, scope: !344)
!346 = !DILocation(line: 72, column: 6, scope: !263)
!347 = !DILocation(line: 73, column: 10, scope: !344)
!348 = !DILocation(line: 73, column: 3, scope: !344)
!349 = !DILocation(line: 75, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !263, file: !1, line: 75, column: 6)
!351 = !DILocation(line: 75, column: 12, scope: !350)
!352 = !DILocation(line: 75, column: 6, scope: !263)
!353 = !DILocation(line: 76, column: 9, scope: !350)
!354 = !DILocation(line: 76, column: 3, scope: !350)
!355 = !DILocation(line: 78, column: 9, scope: !263)
!356 = !DILocation(line: 78, column: 7, scope: !263)
!357 = !DILocation(line: 81, column: 18, scope: !304)
!358 = !DILocation(line: 81, column: 7, scope: !304)
!359 = !DILocation(line: 81, column: 23, scope: !303)
!360 = !DILocation(line: 81, column: 36, scope: !303)
!361 = !DILocation(line: 81, column: 41, scope: !303)
!362 = !DILocation(line: 81, column: 34, scope: !303)
!363 = !DILocation(line: 81, column: 2, scope: !304)
!364 = !DILocation(line: 82, column: 3, scope: !302)
!365 = !DILocation(line: 82, column: 22, scope: !302)
!366 = !DILocation(line: 82, column: 35, scope: !302)
!367 = !DILocation(line: 82, column: 40, scope: !302)
!368 = !DILocation(line: 82, column: 46, scope: !302)
!369 = !DILocation(line: 82, column: 44, scope: !302)
!370 = !DILocation(line: 83, column: 3, scope: !302)
!371 = !DILocation(line: 83, column: 17, scope: !302)
!372 = !DILocation(line: 85, column: 31, scope: !302)
!373 = !DILocation(line: 85, column: 35, scope: !302)
!374 = !DILocation(line: 85, column: 41, scope: !302)
!375 = !DILocation(line: 85, column: 55, scope: !302)
!376 = !DILocation(line: 86, column: 10, scope: !302)
!377 = !DILocation(line: 85, column: 11, scope: !302)
!378 = !DILocation(line: 85, column: 9, scope: !302)
!379 = !DILocation(line: 87, column: 22, scope: !302)
!380 = !DILocation(line: 87, column: 3, scope: !302)
!381 = !DILocation(line: 87, column: 20, scope: !302)
!382 = !DILocation(line: 88, column: 18, scope: !302)
!383 = !DILocation(line: 88, column: 15, scope: !302)
!384 = !DILocation(line: 89, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !302, file: !1, line: 89, column: 7)
!386 = !DILocation(line: 89, column: 11, scope: !385)
!387 = !DILocation(line: 89, column: 21, scope: !385)
!388 = !DILocation(line: 89, column: 7, scope: !302)
!389 = !DILocation(line: 90, column: 28, scope: !385)
!390 = !DILocation(line: 90, column: 25, scope: !385)
!391 = !DILocation(line: 90, column: 4, scope: !385)
!392 = !DILocation(line: 91, column: 2, scope: !303)
!393 = !DILocation(line: 91, column: 2, scope: !302)
!394 = !DILocation(line: 81, column: 65, scope: !303)
!395 = !DILocation(line: 81, column: 70, scope: !303)
!396 = !DILocation(line: 81, column: 62, scope: !303)
!397 = !DILocation(line: 81, column: 2, scope: !303)
!398 = distinct !{!398, !363, !399, !400, !401}
!399 = !DILocation(line: 91, column: 2, scope: !304)
!400 = !{!"llvm.loop.mustprogress"}
!401 = !{!"llvm.loop.unroll.disable"}
!402 = !DILocation(line: 94, column: 6, scope: !403)
!403 = distinct !DILexicalBlock(scope: !263, file: !1, line: 94, column: 6)
!404 = !DILocation(line: 94, column: 27, scope: !403)
!405 = !DILocation(line: 94, column: 6, scope: !263)
!406 = !DILocation(line: 95, column: 17, scope: !403)
!407 = !DILocation(line: 95, column: 15, scope: !403)
!408 = !DILocation(line: 95, column: 3, scope: !403)
!409 = !DILocation(line: 98, column: 17, scope: !263)
!410 = !DILocation(line: 98, column: 37, scope: !263)
!411 = !DILocation(line: 98, column: 49, scope: !263)
!412 = !DILocation(line: 98, column: 29, scope: !263)
!413 = !DILocation(line: 98, column: 61, scope: !263)
!414 = !DILocation(line: 98, column: 14, scope: !263)
!415 = !DILocation(line: 111, column: 9, scope: !263)
!416 = !DILocation(line: 112, column: 18, scope: !310)
!417 = !DILocation(line: 112, column: 7, scope: !310)
!418 = !DILocation(line: 112, column: 23, scope: !309)
!419 = !DILocation(line: 112, column: 36, scope: !309)
!420 = !DILocation(line: 112, column: 41, scope: !309)
!421 = !DILocation(line: 112, column: 34, scope: !309)
!422 = !DILocation(line: 112, column: 2, scope: !310)
!423 = !DILocation(line: 113, column: 3, scope: !308)
!424 = !DILocation(line: 113, column: 22, scope: !308)
!425 = !DILocation(line: 113, column: 35, scope: !308)
!426 = !DILocation(line: 113, column: 40, scope: !308)
!427 = !DILocation(line: 113, column: 46, scope: !308)
!428 = !DILocation(line: 113, column: 44, scope: !308)
!429 = !DILocation(line: 114, column: 3, scope: !308)
!430 = !DILocation(line: 114, column: 23, scope: !308)
!431 = !DILocation(line: 115, column: 3, scope: !308)
!432 = !DILocation(line: 115, column: 17, scope: !308)
!433 = !DILocation(line: 117, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !308, file: !1, line: 117, column: 7)
!435 = !DILocation(line: 117, column: 28, scope: !434)
!436 = !DILocation(line: 117, column: 32, scope: !434)
!437 = !DILocation(line: 118, column: 9, scope: !434)
!438 = !DILocation(line: 118, column: 13, scope: !434)
!439 = !DILocation(line: 118, column: 23, scope: !434)
!440 = !DILocation(line: 117, column: 7, scope: !308)
!441 = !DILocation(line: 119, column: 4, scope: !434)
!442 = !DILocation(line: 121, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !308, file: !1, line: 121, column: 7)
!444 = !DILocation(line: 121, column: 22, scope: !443)
!445 = !DILocation(line: 121, column: 19, scope: !443)
!446 = !DILocation(line: 121, column: 7, scope: !308)
!447 = !DILocation(line: 122, column: 19, scope: !448)
!448 = distinct !DILexicalBlock(scope: !443, file: !1, line: 121, column: 40)
!449 = !DILocation(line: 122, column: 16, scope: !448)
!450 = !DILocation(line: 123, column: 4, scope: !448)
!451 = !DILocation(line: 126, column: 12, scope: !314)
!452 = !DILocation(line: 126, column: 12, scope: !308)
!453 = !DILocation(line: 126, column: 68, scope: !308)
!454 = !DILocation(line: 126, column: 82, scope: !308)
!455 = !DILocation(line: 126, column: 80, scope: !308)
!456 = !DILocation(line: 126, column: 66, scope: !308)
!457 = !DILocation(line: 126, column: 10, scope: !308)
!458 = !DILocation(line: 127, column: 11, scope: !308)
!459 = !DILocation(line: 127, column: 16, scope: !308)
!460 = !DILocation(line: 127, column: 9, scope: !308)
!461 = !DILocation(line: 129, column: 12, scope: !308)
!462 = !DILocation(line: 129, column: 12, scope: !317)
!463 = !DILocation(line: 129, column: 12, scope: !464)
!464 = distinct !DILexicalBlock(scope: !317, file: !1, line: 129, column: 12)
!465 = !DILocation(line: 129, column: 12, scope: !466)
!466 = distinct !DILexicalBlock(scope: !464, file: !1, line: 129, column: 12)
!467 = !DILocation(line: 129, column: 10, scope: !308)
!468 = !DILocation(line: 131, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !308, file: !1, line: 131, column: 7)
!470 = !DILocation(line: 131, column: 14, scope: !469)
!471 = !DILocation(line: 131, column: 7, scope: !308)
!472 = !DILocation(line: 132, column: 12, scope: !469)
!473 = !DILocation(line: 132, column: 5, scope: !469)
!474 = !DILocation(line: 132, column: 10, scope: !469)
!475 = !DILocation(line: 132, column: 4, scope: !469)
!476 = !DILocation(line: 133, column: 3, scope: !308)
!477 = !DILocation(line: 134, column: 2, scope: !309)
!478 = !DILocation(line: 112, column: 65, scope: !309)
!479 = !DILocation(line: 112, column: 70, scope: !309)
!480 = !DILocation(line: 112, column: 62, scope: !309)
!481 = !DILocation(line: 112, column: 2, scope: !309)
!482 = distinct !{!482, !422, !483, !400, !401}
!483 = !DILocation(line: 134, column: 2, scope: !310)
!484 = !DILocation(line: 136, column: 2, scope: !263)
!485 = !DILocation(line: 136, column: 2, scope: !322)
!486 = !DILocation(line: 136, column: 2, scope: !487)
!487 = distinct !DILexicalBlock(scope: !322, file: !1, line: 136, column: 2)
!488 = !DILocation(line: 136, column: 2, scope: !489)
!489 = distinct !DILexicalBlock(scope: !487, file: !1, line: 136, column: 2)
!490 = !DILocation(line: 138, column: 9, scope: !263)
!491 = !DILocation(line: 138, column: 2, scope: !263)
!492 = !DILocation(line: 139, column: 1, scope: !263)
!493 = !DISubprogram(name: "efi_get_memory_map", scope: !10, file: !10, line: 980, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!494 = !DISubroutineType(types: !495)
!495 = !{!48, !496, !147}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!497 = distinct !DISubprogram(name: "get_entry_num_slots", scope: !1, file: !1, line: 17, type: !498, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{!16, !305, !16, !16, !18, !18}
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !512, !513, !515}
!501 = !DILocalVariable(name: "md", arg: 1, scope: !497, file: !1, line: 17, type: !305)
!502 = !DILocalVariable(name: "size", arg: 2, scope: !497, file: !1, line: 18, type: !16)
!503 = !DILocalVariable(name: "align_shift", arg: 3, scope: !497, file: !1, line: 19, type: !16)
!504 = !DILocalVariable(name: "alloc_min", arg: 4, scope: !497, file: !1, line: 20, type: !18)
!505 = !DILocalVariable(name: "alloc_max", arg: 5, scope: !497, file: !1, line: 20, type: !18)
!506 = !DILocalVariable(name: "align", scope: !497, file: !1, line: 22, type: !16)
!507 = !DILocalVariable(name: "first_slot", scope: !497, file: !1, line: 23, type: !18)
!508 = !DILocalVariable(name: "last_slot", scope: !497, file: !1, line: 23, type: !18)
!509 = !DILocalVariable(name: "region_end", scope: !497, file: !1, line: 23, type: !18)
!510 = !DILocalVariable(name: "__UNIQUE_ID___x345", scope: !511, file: !1, line: 35, type: !18)
!511 = distinct !DILexicalBlock(scope: !497, file: !1, line: 35, column: 15)
!512 = !DILocalVariable(name: "__UNIQUE_ID___y346", scope: !511, file: !1, line: 35, type: !18)
!513 = !DILocalVariable(name: "__UNIQUE_ID___x347", scope: !514, file: !1, line: 40, type: !18)
!514 = distinct !DILexicalBlock(scope: !497, file: !1, line: 40, column: 15)
!515 = !DILocalVariable(name: "__UNIQUE_ID___y348", scope: !514, file: !1, line: 40, type: !18)
!516 = !DILocation(line: 17, column: 61, scope: !497)
!517 = !DILocation(line: 18, column: 21, scope: !497)
!518 = !DILocation(line: 19, column: 21, scope: !497)
!519 = !DILocation(line: 20, column: 11, scope: !497)
!520 = !DILocation(line: 20, column: 26, scope: !497)
!521 = !DILocation(line: 22, column: 2, scope: !497)
!522 = !DILocation(line: 22, column: 16, scope: !497)
!523 = !DILocation(line: 22, column: 31, scope: !497)
!524 = !DILocation(line: 22, column: 28, scope: !497)
!525 = !DILocation(line: 23, column: 2, scope: !497)
!526 = !DILocation(line: 23, column: 6, scope: !497)
!527 = !DILocation(line: 23, column: 18, scope: !497)
!528 = !DILocation(line: 23, column: 29, scope: !497)
!529 = !DILocation(line: 25, column: 6, scope: !530)
!530 = distinct !DILexicalBlock(scope: !497, file: !1, line: 25, column: 6)
!531 = !DILocation(line: 25, column: 10, scope: !530)
!532 = !DILocation(line: 25, column: 15, scope: !530)
!533 = !DILocation(line: 25, column: 6, scope: !497)
!534 = !DILocation(line: 26, column: 3, scope: !530)
!535 = !DILocation(line: 28, column: 6, scope: !536)
!536 = distinct !DILexicalBlock(scope: !497, file: !1, line: 28, column: 6)
!537 = !DILocation(line: 28, column: 10, scope: !536)
!538 = !DILocation(line: 28, column: 20, scope: !536)
!539 = !DILocation(line: 28, column: 6, scope: !497)
!540 = !DILocation(line: 29, column: 3, scope: !536)
!541 = !DILocation(line: 31, column: 6, scope: !542)
!542 = distinct !DILexicalBlock(scope: !497, file: !1, line: 31, column: 6)
!543 = !DILocation(line: 31, column: 33, scope: !542)
!544 = !DILocation(line: 32, column: 7, scope: !542)
!545 = !DILocation(line: 32, column: 11, scope: !542)
!546 = !DILocation(line: 32, column: 21, scope: !542)
!547 = !DILocation(line: 31, column: 6, scope: !497)
!548 = !DILocation(line: 33, column: 3, scope: !542)
!549 = !DILocation(line: 35, column: 15, scope: !511)
!550 = !DILocation(line: 35, column: 15, scope: !497)
!551 = !DILocation(line: 35, column: 13, scope: !497)
!552 = !DILocation(line: 37, column: 6, scope: !553)
!553 = distinct !DILexicalBlock(scope: !497, file: !1, line: 37, column: 6)
!554 = !DILocation(line: 37, column: 19, scope: !553)
!555 = !DILocation(line: 37, column: 17, scope: !553)
!556 = !DILocation(line: 37, column: 6, scope: !497)
!557 = !DILocation(line: 38, column: 3, scope: !553)
!558 = !DILocation(line: 40, column: 15, scope: !514)
!559 = !DILocation(line: 40, column: 15, scope: !497)
!560 = !DILocation(line: 40, column: 13, scope: !497)
!561 = !DILocation(line: 41, column: 14, scope: !497)
!562 = !DILocation(line: 41, column: 12, scope: !497)
!563 = !DILocation(line: 43, column: 6, scope: !564)
!564 = distinct !DILexicalBlock(scope: !497, file: !1, line: 43, column: 6)
!565 = !DILocation(line: 43, column: 19, scope: !564)
!566 = !DILocation(line: 43, column: 17, scope: !564)
!567 = !DILocation(line: 43, column: 6, scope: !497)
!568 = !DILocation(line: 44, column: 3, scope: !564)
!569 = !DILocation(line: 46, column: 26, scope: !497)
!570 = !DILocation(line: 46, column: 38, scope: !497)
!571 = !DILocation(line: 46, column: 36, scope: !497)
!572 = !DILocation(line: 46, column: 53, scope: !497)
!573 = !DILocation(line: 46, column: 50, scope: !497)
!574 = !DILocation(line: 46, column: 66, scope: !497)
!575 = !DILocation(line: 46, column: 2, scope: !497)
!576 = !DILocation(line: 47, column: 1, scope: !497)
!577 = distinct !DISubprogram(name: "__ilog2_u64", scope: !578, file: !578, line: 30, type: !579, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !581)
!578 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!579 = !DISubroutineType(types: !580)
!580 = !{!49, !18}
!581 = !{!582}
!582 = !DILocalVariable(name: "n", arg: 1, scope: !577, file: !578, line: 30, type: !18)
!583 = !DILocation(line: 30, column: 21, scope: !577)
!584 = !DILocation(line: 32, column: 15, scope: !577)
!585 = !DILocation(line: 32, column: 9, scope: !577)
!586 = !DILocation(line: 32, column: 18, scope: !577)
!587 = !DILocation(line: 32, column: 2, scope: !577)
!588 = distinct !DISubprogram(name: "efi_is_native", scope: !589, file: !589, line: 205, type: !590, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!589 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!590 = !DISubroutineType(types: !591)
!591 = !{!147}
!592 = !DILocation(line: 207, column: 9, scope: !588)
!593 = !DILocation(line: 207, column: 2, scope: !588)
!594 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !589, file: !589, line: 346, type: !595, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{!48, !18}
!597 = !{!598}
!598 = !DILocalVariable(name: "status", arg: 1, scope: !594, file: !589, line: 346, type: !18)
!599 = !DILocation(line: 346, column: 57, scope: !594)
!600 = !DILocation(line: 349, column: 21, scope: !594)
!601 = !DILocation(line: 349, column: 15, scope: !594)
!602 = !DILocation(line: 349, column: 9, scope: !594)
!603 = !DILocation(line: 349, column: 2, scope: !594)
!604 = !DISubprogram(name: "__efi64_thunk", scope: !589, file: !589, line: 158, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!605 = !DISubroutineType(types: !606)
!606 = !{!18, !23, null}
!607 = distinct !DISubprogram(name: "efi_soft_reserve_enabled", scope: !27, file: !27, line: 888, type: !590, scopeLine: 889, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!608 = !DILocation(line: 890, column: 2, scope: !607)
!609 = distinct !DISubprogram(name: "fls64", scope: !610, file: !610, line: 401, type: !611, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !613)
!610 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!611 = !DISubroutineType(types: !612)
!612 = !{!49, !20}
!613 = !{!614, !615}
!614 = !DILocalVariable(name: "x", arg: 1, scope: !609, file: !610, line: 401, type: !20)
!615 = !DILocalVariable(name: "bitpos", scope: !609, file: !610, line: 403, type: !49)
!616 = !DILocation(line: 401, column: 40, scope: !609)
!617 = !DILocation(line: 403, column: 2, scope: !609)
!618 = !DILocation(line: 403, column: 6, scope: !609)
!619 = !DILocation(line: 409, column: 2, scope: !609)
!620 = !DILocation(line: 411, column: 14, scope: !609)
!621 = !{i64 788989}
!622 = !DILocation(line: 412, column: 9, scope: !609)
!623 = !DILocation(line: 412, column: 16, scope: !609)
!624 = !DILocation(line: 413, column: 1, scope: !609)
!625 = !DILocation(line: 412, column: 2, scope: !609)
!626 = distinct !DISubprogram(name: "efi_is_64bit", scope: !589, file: !589, line: 198, type: !590, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!627 = !DILocation(line: 202, column: 9, scope: !626)
!628 = !{i8 0, i8 2}
!629 = !{}
!630 = !DILocation(line: 202, column: 2, scope: !626)
!631 = distinct !DISubprogram(name: "ror64", scope: !632, file: !632, line: 115, type: !633, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !635)
!632 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!633 = !DISubroutineType(types: !634)
!634 = !{!20, !20, !5}
!635 = !{!636, !637}
!636 = !DILocalVariable(name: "word", arg: 1, scope: !631, file: !632, line: 115, type: !20)
!637 = !DILocalVariable(name: "shift", arg: 2, scope: !631, file: !632, line: 115, type: !5)
!638 = !DILocation(line: 115, column: 33, scope: !631)
!639 = !DILocation(line: 115, column: 52, scope: !631)
!640 = !DILocation(line: 117, column: 10, scope: !631)
!641 = !DILocation(line: 117, column: 19, scope: !631)
!642 = !DILocation(line: 117, column: 25, scope: !631)
!643 = !DILocation(line: 117, column: 15, scope: !631)
!644 = !DILocation(line: 117, column: 35, scope: !631)
!645 = !DILocation(line: 117, column: 46, scope: !631)
!646 = !DILocation(line: 117, column: 45, scope: !631)
!647 = !DILocation(line: 117, column: 53, scope: !631)
!648 = !DILocation(line: 117, column: 40, scope: !631)
!649 = !DILocation(line: 117, column: 32, scope: !631)
!650 = !DILocation(line: 117, column: 2, scope: !631)
!651 = distinct !DISubprogram(name: "rol32", scope: !632, file: !632, line: 125, type: !652, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{!24, !24, !5}
!654 = !{!655, !656}
!655 = !DILocalVariable(name: "word", arg: 1, scope: !651, file: !632, line: 125, type: !24)
!656 = !DILocalVariable(name: "shift", arg: 2, scope: !651, file: !632, line: 125, type: !5)
!657 = !DILocation(line: 125, column: 33, scope: !651)
!658 = !DILocation(line: 125, column: 52, scope: !651)
!659 = !DILocation(line: 127, column: 10, scope: !651)
!660 = !DILocation(line: 127, column: 19, scope: !651)
!661 = !DILocation(line: 127, column: 25, scope: !651)
!662 = !DILocation(line: 127, column: 15, scope: !651)
!663 = !DILocation(line: 127, column: 35, scope: !651)
!664 = !DILocation(line: 127, column: 46, scope: !651)
!665 = !DILocation(line: 127, column: 45, scope: !651)
!666 = !DILocation(line: 127, column: 53, scope: !651)
!667 = !DILocation(line: 127, column: 40, scope: !651)
!668 = !DILocation(line: 127, column: 32, scope: !651)
!669 = !DILocation(line: 127, column: 2, scope: !651)
