; ModuleID = 'drivers/firmware/efi/libstub/alignedmem.c'
source_filename = "drivers/firmware/efi/libstub/alignedmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { %struct.efi_table_hdr_t, i64, i32, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@efi_system_table = external hidden global ptr, align 8
@efi_is64 = external hidden constant i8, align 1

; Function Attrs: noredzone nounwind
define hidden i64 @efi_allocate_pages_aligned(i64 noundef %size, ptr noundef %addr, i64 noundef %max, i64 noundef %align, i32 noundef %memory_type) #0 !dbg !258 {
entry:
  %retval = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %max.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %memory_type.addr = alloca i32, align 4
  %alloc_addr = alloca i64, align 8
  %status = alloca i64, align 8
  %slack = alloca i32, align 4
  %__UNIQUE_ID___x345 = alloca i64, align 8
  %__UNIQUE_ID___y346 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp27 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %l = alloca i32, align 4
  %__pad79 = alloca [3 x i64], align 16
  %tmp83 = alloca i64, align 8
  %__pad122 = alloca [3 x i64], align 16
  %tmp126 = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !262, metadata !DIExpression()), !dbg !288
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !263, metadata !DIExpression()), !dbg !289
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !264, metadata !DIExpression()), !dbg !290
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !265, metadata !DIExpression()), !dbg !291
  store i32 %memory_type, ptr %memory_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %memory_type.addr, metadata !266, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc_addr) #5, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %alloc_addr, metadata !267, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #5, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %status, metadata !268, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 4, ptr %slack) #5, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %slack, metadata !269, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x345) #5, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x345, metadata !270, metadata !DIExpression()), !dbg !299
  %0 = load i64, ptr %max.addr, align 8, !dbg !299
  store i64 %0, ptr %__UNIQUE_ID___x345, align 8, !dbg !299
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y346) #5, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y346, metadata !272, metadata !DIExpression()), !dbg !299
  %call = call zeroext i1 @efi_is_64bit() #6, !dbg !299
  %1 = zext i1 %call to i64, !dbg !299
  %cond = select i1 %call, i64 -1, i64 4294967295, !dbg !299
  store i64 %cond, ptr %__UNIQUE_ID___y346, align 8, !dbg !299
  %2 = load i64, ptr %__UNIQUE_ID___x345, align 8, !dbg !299
  %3 = load i64, ptr %__UNIQUE_ID___y346, align 8, !dbg !299
  %cmp = icmp ult i64 %2, %3, !dbg !299
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !299

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___x345, align 8, !dbg !299
  br label %cond.end, !dbg !299

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr %__UNIQUE_ID___y346, align 8, !dbg !299
  br label %cond.end, !dbg !299

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1 = phi i64 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !299
  store i64 %cond1, ptr %tmp, align 8, !dbg !299
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y346) #5, !dbg !300
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x345) #5, !dbg !300
  %6 = load i64, ptr %tmp, align 8, !dbg !299
  store i64 %6, ptr %max.addr, align 8, !dbg !301
  %7 = load i64, ptr %align.addr, align 8, !dbg !302
  %cmp2 = icmp ult i64 %7, 4096, !dbg !304
  br i1 %cmp2, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %cond.end
  store i64 4096, ptr %align.addr, align 8, !dbg !306
  br label %if.end, !dbg !307

if.end:                                           ; preds = %if.then, %cond.end
  %8 = load i64, ptr %max.addr, align 8, !dbg !308
  %add = add i64 %8, 1, !dbg !308
  %9 = load i64, ptr %align.addr, align 8, !dbg !308
  %sub = sub i64 %9, 1, !dbg !308
  %sub3 = sub i64 %add, %sub, !dbg !308
  %10 = load i64, ptr %align.addr, align 8, !dbg !308
  %sub4 = sub i64 %10, 1, !dbg !308
  %add5 = add i64 %sub3, %sub4, !dbg !308
  %11 = load i64, ptr %align.addr, align 8, !dbg !308
  %sub6 = sub i64 %11, 1, !dbg !308
  %not = xor i64 %sub6, -1, !dbg !308
  %and = and i64 %add5, %not, !dbg !308
  %sub7 = sub i64 %and, 1, !dbg !309
  store i64 %sub7, ptr %alloc_addr, align 8, !dbg !310
  %12 = load i64, ptr %size.addr, align 8, !dbg !311
  %sub8 = sub i64 %12, 1, !dbg !311
  %or = or i64 %sub8, 4095, !dbg !311
  %add9 = add i64 %or, 1, !dbg !311
  store i64 %add9, ptr %size.addr, align 8, !dbg !312
  %13 = load i64, ptr %align.addr, align 8, !dbg !313
  %div = udiv i64 %13, 4096, !dbg !314
  %sub10 = sub i64 %div, 1, !dbg !315
  %conv = trunc i64 %sub10 to i32, !dbg !313
  store i32 %conv, ptr %slack, align 4, !dbg !316
  %call11 = call zeroext i1 @efi_is_native() #6, !dbg !317
  br i1 %call11, label %cond.true13, label %cond.false26, !dbg !317

cond.true13:                                      ; preds = %if.end
  %call14 = call zeroext i1 @efi_is_native() #6, !dbg !317
  br i1 %call14, label %cond.true16, label %cond.false17, !dbg !317

cond.true16:                                      ; preds = %cond.true13
  %14 = load ptr, ptr @efi_system_table, align 8, !dbg !317
  %boottime = getelementptr inbounds %struct.anon.1, ptr %14, i32 0, i32 10, !dbg !317
  %15 = load ptr, ptr %boottime, align 8, !dbg !317
  br label %cond.end20, !dbg !317

cond.false17:                                     ; preds = %cond.true13
  %16 = load ptr, ptr @efi_system_table, align 8, !dbg !317
  %boottime18 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %16, i32 0, i32 10, !dbg !317
  %17 = load i32, ptr %boottime18, align 4, !dbg !317
  %conv19 = zext i32 %17 to i64, !dbg !317
  %18 = inttoptr i64 %conv19 to ptr, !dbg !317
  br label %cond.end20, !dbg !317

cond.end20:                                       ; preds = %cond.false17, %cond.true16
  %cond21 = phi ptr [ %15, %cond.true16 ], [ %18, %cond.false17 ], !dbg !317
  %allocate_pages = getelementptr inbounds %struct.anon, ptr %cond21, i32 0, i32 3, !dbg !317
  %19 = load ptr, ptr %allocate_pages, align 8, !dbg !317
  %20 = load i32, ptr %memory_type.addr, align 4, !dbg !317
  %21 = load i64, ptr %size.addr, align 8, !dbg !317
  %div22 = udiv i64 %21, 4096, !dbg !317
  %22 = load i32, ptr %slack, align 4, !dbg !317
  %conv23 = sext i32 %22 to i64, !dbg !317
  %add24 = add i64 %div22, %conv23, !dbg !317
  %call25 = call win64cc i64 %19(i32 noundef 1, i32 noundef %20, i64 noundef %add24, ptr noundef %alloc_addr) #6, !dbg !317
  br label %cond.end43, !dbg !317

cond.false26:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #5, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !273, metadata !DIExpression()), !dbg !318
  br label %do.body, !dbg !319

do.body:                                          ; preds = %cond.false26
  br label %do.cond, !dbg !321

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !321

do.end:                                           ; preds = %do.cond
  %call28 = call zeroext i1 @efi_is_native() #6, !dbg !318
  br i1 %call28, label %cond.true30, label %cond.false32, !dbg !318

cond.true30:                                      ; preds = %do.end
  %23 = load ptr, ptr @efi_system_table, align 8, !dbg !318
  %boottime31 = getelementptr inbounds %struct.anon.1, ptr %23, i32 0, i32 10, !dbg !318
  %24 = load ptr, ptr %boottime31, align 8, !dbg !318
  br label %cond.end35, !dbg !318

cond.false32:                                     ; preds = %do.end
  %25 = load ptr, ptr @efi_system_table, align 8, !dbg !318
  %boottime33 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %25, i32 0, i32 10, !dbg !318
  %26 = load i32, ptr %boottime33, align 4, !dbg !318
  %conv34 = zext i32 %26 to i64, !dbg !318
  %27 = inttoptr i64 %conv34 to ptr, !dbg !318
  br label %cond.end35, !dbg !318

cond.end35:                                       ; preds = %cond.false32, %cond.true30
  %cond36 = phi ptr [ %24, %cond.true30 ], [ %27, %cond.false32 ], !dbg !318
  %allocate_pages37 = getelementptr inbounds %struct.anon.0, ptr %cond36, i32 0, i32 3, !dbg !318
  %28 = load i32, ptr %allocate_pages37, align 8, !dbg !318
  %29 = load i32, ptr %memory_type.addr, align 4, !dbg !318
  %30 = load i64, ptr %size.addr, align 8, !dbg !318
  %div38 = udiv i64 %30, 4096, !dbg !318
  %31 = load i32, ptr %slack, align 4, !dbg !318
  %conv39 = sext i32 %31 to i64, !dbg !318
  %add40 = add i64 %div38, %conv39, !dbg !318
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !318
  %call41 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %28, i32 noundef 1, i32 noundef %29, i64 noundef %add40, ptr noundef %alloc_addr, ptr noundef %arraydecay) #6, !dbg !318
  store i64 %call41, ptr %tmp27, align 8, !dbg !318
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #5, !dbg !317
  %32 = load i64, ptr %tmp27, align 8, !dbg !318
  %call42 = call i64 @__efi64_widen_efi_status(i64 noundef %32) #6, !dbg !317
  br label %cond.end43, !dbg !317

cond.end43:                                       ; preds = %cond.end35, %cond.end20
  %cond44 = phi i64 [ %call25, %cond.end20 ], [ %call42, %cond.end35 ], !dbg !317
  store i64 %cond44, ptr %status, align 8, !dbg !323
  %33 = load i64, ptr %status, align 8, !dbg !324
  %cmp45 = icmp ne i64 %33, 0, !dbg !326
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !327

if.then47:                                        ; preds = %cond.end43
  %34 = load i64, ptr %status, align 8, !dbg !328
  store i64 %34, ptr %retval, align 8, !dbg !329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !329

if.end48:                                         ; preds = %cond.end43
  %35 = load i64, ptr %alloc_addr, align 8, !dbg !330
  %36 = load i64, ptr %align.addr, align 8, !dbg !330
  %sub49 = sub i64 %36, 1, !dbg !330
  %add50 = add i64 %35, %sub49, !dbg !330
  %37 = load i64, ptr %align.addr, align 8, !dbg !330
  %sub51 = sub i64 %37, 1, !dbg !330
  %not52 = xor i64 %sub51, -1, !dbg !330
  %and53 = and i64 %add50, %not52, !dbg !330
  %38 = load ptr, ptr %addr.addr, align 8, !dbg !331
  store i64 %and53, ptr %38, align 8, !dbg !332
  %39 = load i32, ptr %slack, align 4, !dbg !333
  %cmp54 = icmp sgt i32 %39, 0, !dbg !334
  br i1 %cmp54, label %if.then56, label %if.end144, !dbg !335

if.then56:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5, !dbg !336
  call void @llvm.dbg.declare(metadata ptr %l, metadata !278, metadata !DIExpression()), !dbg !337
  %40 = load i64, ptr %alloc_addr, align 8, !dbg !338
  %41 = load i64, ptr %align.addr, align 8, !dbg !339
  %sub57 = sub i64 %41, 1, !dbg !340
  %and58 = and i64 %40, %sub57, !dbg !341
  %div59 = udiv i64 %and58, 4096, !dbg !342
  %conv60 = trunc i64 %div59 to i32, !dbg !343
  store i32 %conv60, ptr %l, align 4, !dbg !337
  %42 = load i32, ptr %l, align 4, !dbg !344
  %tobool = icmp ne i32 %42, 0, !dbg !344
  br i1 %tobool, label %if.then61, label %if.end102, !dbg !345

if.then61:                                        ; preds = %if.then56
  %call62 = call zeroext i1 @efi_is_native() #6, !dbg !346
  br i1 %call62, label %cond.true64, label %cond.false78, !dbg !346

cond.true64:                                      ; preds = %if.then61
  %call65 = call zeroext i1 @efi_is_native() #6, !dbg !346
  br i1 %call65, label %cond.true67, label %cond.false69, !dbg !346

cond.true67:                                      ; preds = %cond.true64
  %43 = load ptr, ptr @efi_system_table, align 8, !dbg !346
  %boottime68 = getelementptr inbounds %struct.anon.1, ptr %43, i32 0, i32 10, !dbg !346
  %44 = load ptr, ptr %boottime68, align 8, !dbg !346
  br label %cond.end72, !dbg !346

cond.false69:                                     ; preds = %cond.true64
  %45 = load ptr, ptr @efi_system_table, align 8, !dbg !346
  %boottime70 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %45, i32 0, i32 10, !dbg !346
  %46 = load i32, ptr %boottime70, align 4, !dbg !346
  %conv71 = zext i32 %46 to i64, !dbg !346
  %47 = inttoptr i64 %conv71 to ptr, !dbg !346
  br label %cond.end72, !dbg !346

cond.end72:                                       ; preds = %cond.false69, %cond.true67
  %cond73 = phi ptr [ %44, %cond.true67 ], [ %47, %cond.false69 ], !dbg !346
  %free_pages = getelementptr inbounds %struct.anon, ptr %cond73, i32 0, i32 4, !dbg !346
  %48 = load ptr, ptr %free_pages, align 8, !dbg !346
  %49 = load i64, ptr %alloc_addr, align 8, !dbg !346
  %50 = load i32, ptr %slack, align 4, !dbg !346
  %51 = load i32, ptr %l, align 4, !dbg !346
  %sub74 = sub nsw i32 %50, %51, !dbg !346
  %add75 = add nsw i32 %sub74, 1, !dbg !346
  %conv76 = sext i32 %add75 to i64, !dbg !346
  %call77 = call win64cc i64 %48(i64 noundef %49, i64 noundef %conv76) #6, !dbg !346
  br label %cond.end99, !dbg !346

cond.false78:                                     ; preds = %if.then61
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad79) #5, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %__pad79, metadata !281, metadata !DIExpression()), !dbg !347
  br label %do.body80, !dbg !348

do.body80:                                        ; preds = %cond.false78
  br label %do.cond81, !dbg !350

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !350

do.end82:                                         ; preds = %do.cond81
  %call84 = call zeroext i1 @efi_is_native() #6, !dbg !347
  br i1 %call84, label %cond.true86, label %cond.false88, !dbg !347

cond.true86:                                      ; preds = %do.end82
  %52 = load ptr, ptr @efi_system_table, align 8, !dbg !347
  %boottime87 = getelementptr inbounds %struct.anon.1, ptr %52, i32 0, i32 10, !dbg !347
  %53 = load ptr, ptr %boottime87, align 8, !dbg !347
  br label %cond.end91, !dbg !347

cond.false88:                                     ; preds = %do.end82
  %54 = load ptr, ptr @efi_system_table, align 8, !dbg !347
  %boottime89 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %54, i32 0, i32 10, !dbg !347
  %55 = load i32, ptr %boottime89, align 4, !dbg !347
  %conv90 = zext i32 %55 to i64, !dbg !347
  %56 = inttoptr i64 %conv90 to ptr, !dbg !347
  br label %cond.end91, !dbg !347

cond.end91:                                       ; preds = %cond.false88, %cond.true86
  %cond92 = phi ptr [ %53, %cond.true86 ], [ %56, %cond.false88 ], !dbg !347
  %free_pages93 = getelementptr inbounds %struct.anon.0, ptr %cond92, i32 0, i32 4, !dbg !347
  %57 = load i32, ptr %free_pages93, align 4, !dbg !347
  %58 = load i64, ptr %alloc_addr, align 8, !dbg !347
  %59 = load i32, ptr %slack, align 4, !dbg !347
  %60 = load i32, ptr %l, align 4, !dbg !347
  %sub94 = sub nsw i32 %59, %60, !dbg !347
  %add95 = add nsw i32 %sub94, 1, !dbg !347
  %arraydecay96 = getelementptr inbounds [3 x i64], ptr %__pad79, i64 0, i64 0, !dbg !347
  %call97 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %57, i64 noundef %58, i32 noundef 0, i32 noundef %add95, ptr noundef %arraydecay96) #6, !dbg !347
  store i64 %call97, ptr %tmp83, align 8, !dbg !347
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad79) #5, !dbg !346
  %61 = load i64, ptr %tmp83, align 8, !dbg !347
  %call98 = call i64 @__efi64_widen_efi_status(i64 noundef %61) #6, !dbg !346
  br label %cond.end99, !dbg !346

cond.end99:                                       ; preds = %cond.end91, %cond.end72
  %cond100 = phi i64 [ %call77, %cond.end72 ], [ %call98, %cond.end91 ], !dbg !346
  %62 = load i32, ptr %l, align 4, !dbg !352
  %sub101 = sub nsw i32 %62, 1, !dbg !353
  store i32 %sub101, ptr %slack, align 4, !dbg !354
  br label %if.end102, !dbg !355

if.end102:                                        ; preds = %cond.end99, %if.then56
  %63 = load i32, ptr %slack, align 4, !dbg !356
  %tobool103 = icmp ne i32 %63, 0, !dbg !356
  br i1 %tobool103, label %if.then104, label %if.end143, !dbg !357

if.then104:                                       ; preds = %if.end102
  %call105 = call zeroext i1 @efi_is_native() #6, !dbg !358
  br i1 %call105, label %cond.true107, label %cond.false121, !dbg !358

cond.true107:                                     ; preds = %if.then104
  %call108 = call zeroext i1 @efi_is_native() #6, !dbg !358
  br i1 %call108, label %cond.true110, label %cond.false112, !dbg !358

cond.true110:                                     ; preds = %cond.true107
  %64 = load ptr, ptr @efi_system_table, align 8, !dbg !358
  %boottime111 = getelementptr inbounds %struct.anon.1, ptr %64, i32 0, i32 10, !dbg !358
  %65 = load ptr, ptr %boottime111, align 8, !dbg !358
  br label %cond.end115, !dbg !358

cond.false112:                                    ; preds = %cond.true107
  %66 = load ptr, ptr @efi_system_table, align 8, !dbg !358
  %boottime113 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %66, i32 0, i32 10, !dbg !358
  %67 = load i32, ptr %boottime113, align 4, !dbg !358
  %conv114 = zext i32 %67 to i64, !dbg !358
  %68 = inttoptr i64 %conv114 to ptr, !dbg !358
  br label %cond.end115, !dbg !358

cond.end115:                                      ; preds = %cond.false112, %cond.true110
  %cond116 = phi ptr [ %65, %cond.true110 ], [ %68, %cond.false112 ], !dbg !358
  %free_pages117 = getelementptr inbounds %struct.anon, ptr %cond116, i32 0, i32 4, !dbg !358
  %69 = load ptr, ptr %free_pages117, align 8, !dbg !358
  %70 = load ptr, ptr %addr.addr, align 8, !dbg !358
  %71 = load i64, ptr %70, align 8, !dbg !358
  %72 = load i64, ptr %size.addr, align 8, !dbg !358
  %add118 = add i64 %71, %72, !dbg !358
  %73 = load i32, ptr %slack, align 4, !dbg !358
  %conv119 = sext i32 %73 to i64, !dbg !358
  %call120 = call win64cc i64 %69(i64 noundef %add118, i64 noundef %conv119) #6, !dbg !358
  br label %cond.end141, !dbg !358

cond.false121:                                    ; preds = %if.then104
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad122) #5, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %__pad122, metadata !285, metadata !DIExpression()), !dbg !359
  br label %do.body123, !dbg !360

do.body123:                                       ; preds = %cond.false121
  br label %do.cond124, !dbg !362

do.cond124:                                       ; preds = %do.body123
  br label %do.end125, !dbg !362

do.end125:                                        ; preds = %do.cond124
  %call127 = call zeroext i1 @efi_is_native() #6, !dbg !359
  br i1 %call127, label %cond.true129, label %cond.false131, !dbg !359

cond.true129:                                     ; preds = %do.end125
  %74 = load ptr, ptr @efi_system_table, align 8, !dbg !359
  %boottime130 = getelementptr inbounds %struct.anon.1, ptr %74, i32 0, i32 10, !dbg !359
  %75 = load ptr, ptr %boottime130, align 8, !dbg !359
  br label %cond.end134, !dbg !359

cond.false131:                                    ; preds = %do.end125
  %76 = load ptr, ptr @efi_system_table, align 8, !dbg !359
  %boottime132 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %76, i32 0, i32 10, !dbg !359
  %77 = load i32, ptr %boottime132, align 4, !dbg !359
  %conv133 = zext i32 %77 to i64, !dbg !359
  %78 = inttoptr i64 %conv133 to ptr, !dbg !359
  br label %cond.end134, !dbg !359

cond.end134:                                      ; preds = %cond.false131, %cond.true129
  %cond135 = phi ptr [ %75, %cond.true129 ], [ %78, %cond.false131 ], !dbg !359
  %free_pages136 = getelementptr inbounds %struct.anon.0, ptr %cond135, i32 0, i32 4, !dbg !359
  %79 = load i32, ptr %free_pages136, align 4, !dbg !359
  %80 = load ptr, ptr %addr.addr, align 8, !dbg !359
  %81 = load i64, ptr %80, align 8, !dbg !359
  %82 = load i64, ptr %size.addr, align 8, !dbg !359
  %add137 = add i64 %81, %82, !dbg !359
  %83 = load i32, ptr %slack, align 4, !dbg !359
  %arraydecay138 = getelementptr inbounds [3 x i64], ptr %__pad122, i64 0, i64 0, !dbg !359
  %call139 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %79, i64 noundef %add137, i32 noundef 0, i32 noundef %83, ptr noundef %arraydecay138) #6, !dbg !359
  store i64 %call139, ptr %tmp126, align 8, !dbg !359
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad122) #5, !dbg !358
  %84 = load i64, ptr %tmp126, align 8, !dbg !359
  %call140 = call i64 @__efi64_widen_efi_status(i64 noundef %84) #6, !dbg !358
  br label %cond.end141, !dbg !358

cond.end141:                                      ; preds = %cond.end134, %cond.end115
  %cond142 = phi i64 [ %call120, %cond.end115 ], [ %call140, %cond.end134 ], !dbg !358
  br label %if.end143, !dbg !358

if.end143:                                        ; preds = %cond.end141, %if.end102
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5, !dbg !364
  br label %if.end144, !dbg !365

if.end144:                                        ; preds = %if.end143, %if.end48
  store i64 0, ptr %retval, align 8, !dbg !366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !366

cleanup:                                          ; preds = %if.end144, %if.then47
  call void @llvm.lifetime.end.p0(i64 4, ptr %slack) #5, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #5, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr %alloc_addr) #5, !dbg !367
  %85 = load i64, ptr %retval, align 8, !dbg !367
  ret i64 %85, !dbg !367
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #3 !dbg !368 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !372, !range !373, !noundef !374
  %tobool = trunc i8 %0 to i1, !dbg !372
  ret i1 %tobool, !dbg !375
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #3 !dbg !376 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #6, !dbg !377
  ret i1 %call, !dbg !378
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #3 !dbg !379 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i64, ptr %status.addr, align 8, !dbg !385
  %conv = trunc i64 %0 to i32, !dbg !385
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #6, !dbg !386
  %conv1 = zext i32 %call to i64, !dbg !386
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #6, !dbg !387
  ret i64 %call2, !dbg !388
}

; Function Attrs: noredzone
declare !dbg !389 hidden i64 @__efi64_thunk(i32 noundef, ...) #4

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #3 !dbg !392 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !397, metadata !DIExpression()), !dbg !399
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !398, metadata !DIExpression()), !dbg !400
  %0 = load i64, ptr %word.addr, align 8, !dbg !401
  %1 = load i32, ptr %shift.addr, align 4, !dbg !402
  %and = and i32 %1, 63, !dbg !403
  %sh_prom = zext i32 %and to i64, !dbg !404
  %shr = lshr i64 %0, %sh_prom, !dbg !404
  %2 = load i64, ptr %word.addr, align 8, !dbg !405
  %3 = load i32, ptr %shift.addr, align 4, !dbg !406
  %sub = sub i32 0, %3, !dbg !407
  %and1 = and i32 %sub, 63, !dbg !408
  %sh_prom2 = zext i32 %and1 to i64, !dbg !409
  %shl = shl i64 %2, %sh_prom2, !dbg !409
  %or = or i64 %shr, %shl, !dbg !410
  ret i64 %or, !dbg !411
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #3 !dbg !412 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !416, metadata !DIExpression()), !dbg !418
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !417, metadata !DIExpression()), !dbg !419
  %0 = load i32, ptr %word.addr, align 4, !dbg !420
  %1 = load i32, ptr %shift.addr, align 4, !dbg !421
  %and = and i32 %1, 31, !dbg !422
  %shl = shl i32 %0, %and, !dbg !423
  %2 = load i32, ptr %word.addr, align 4, !dbg !424
  %3 = load i32, ptr %shift.addr, align 4, !dbg !425
  %sub = sub i32 0, %3, !dbg !426
  %and1 = and i32 %sub, 31, !dbg !427
  %shr = lshr i32 %2, %and1, !dbg !428
  %or = or i32 %shl, %shr, !dbg !429
  ret i32 %or, !dbg !430
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!252, !253, !254, !255, !256}
!llvm.ident = !{!257}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.alignedmem.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/alignedmem\22 -D KBUILD_BASENAME=\22alignedmem\22 -D KBUILD_MODNAME=\22alignedmem\22 -D __KBUILD_MODNAME=kmod_alignedmem -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/alignedmem.ll drivers/firmware/efi/libstub/alignedmem.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/firmware/efi/libstub/alignedmem.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "143b76f2fcd4f4750783d93873479b04")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 243, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "EfiTimerCancel", value: 0)
!8 = !DIEnumerator(name: "EfiTimerPeriodic", value: 1)
!9 = !DIEnumerator(name: "EfiTimerRelative", value: 2)
!10 = !{!11, !15, !16}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !12, line: 21, baseType: !13)
!12 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !14, line: 27, baseType: !5)
!14 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_boot_services_t", file: !18, line: 250, baseType: !19)
!18 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_boot_services", file: !4, line: 252, size: 3008, elements: !20)
!20 = !{!21, !204}
!21 = !DIDerivedType(tag: DW_TAG_member, scope: !19, file: !4, line: 253, baseType: !22, size: 3008)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !19, file: !4, line: 253, size: 3008, elements: !23)
!23 = !{!24, !36, !38, !39, !47, !51, !57, !62, !66, !76, !81, !85, !86, !90, !91, !92, !93, !94, !111, !112, !113, !118, !134, !138, !145, !152, !156, !160, !164, !165, !169, !170, !171, !175, !176, !177, !178, !179, !180, !184, !188, !192, !193, !199, !203}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !22, file: !4, line: 254, baseType: !25, size: 192)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !18, line: 90, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 84, size: 192, elements: !27)
!27 = !{!28, !32, !33, !34, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !26, file: !18, line: 85, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !12, line: 23, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !14, line: 31, baseType: !31)
!31 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !26, file: !18, line: 86, baseType: !11, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !26, file: !18, line: 87, baseType: !11, size: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !26, file: !18, line: 88, baseType: !11, size: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !26, file: !18, line: 89, baseType: !11, size: 32, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !22, file: !4, line: 255, baseType: !37, size: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !22, file: !4, line: 256, baseType: !37, size: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !22, file: !4, line: 257, baseType: !40, size: 64, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !42)
!42 = !{!43, !44, !44, !15, !45}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !18, line: 47, baseType: !15)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_physical_addr_t", file: !18, line: 50, baseType: !29)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !22, file: !4, line: 259, baseType: !48, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !50)
!50 = !{!43, !46, !15}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !22, file: !4, line: 261, baseType: !52, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !54)
!54 = !{!43, !55, !37, !55, !55, !56}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !22, file: !4, line: 264, baseType: !58, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !60)
!60 = !{!43, !44, !15, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !22, file: !4, line: 266, baseType: !63, size: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !65)
!65 = !{!43, !37}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !22, file: !4, line: 267, baseType: !67, size: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !69)
!69 = !{!43, !11, !15, !70, !37, !75}
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_notify_t", file: !4, line: 212, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !73)
!73 = !{null, !74, !37}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_t", file: !4, line: 210, baseType: !37)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !22, file: !4, line: 270, baseType: !77, size: 64, offset: 704)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !79)
!79 = !{!43, !74, !80, !29}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !4, line: 247, baseType: !3)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !22, file: !4, line: 272, baseType: !82, size: 64, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !84)
!84 = !{!43, !15, !75, !55}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !22, file: !4, line: 275, baseType: !37, size: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !22, file: !4, line: 276, baseType: !87, size: 64, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !89)
!89 = !{!43, !74}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !22, file: !4, line: 277, baseType: !37, size: 64, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !22, file: !4, line: 278, baseType: !37, size: 64, offset: 1024)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !22, file: !4, line: 279, baseType: !37, size: 64, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !22, file: !4, line: 280, baseType: !37, size: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !22, file: !4, line: 281, baseType: !95, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !97)
!97 = !{!43, !98, !99, !61}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_handle_t", file: !18, line: 51, baseType: !37)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !18, line: 74, baseType: !101, align: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !102, line: 17, baseType: !103)
!102 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 15, size: 128, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !103, file: !102, line: 16, baseType: !106, size: 128)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !109)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !14, line: 21, baseType: !108)
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !{!110}
!110 = !DISubrange(count: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !22, file: !4, line: 283, baseType: !37, size: 64, offset: 1280)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !22, file: !4, line: 284, baseType: !37, size: 64, offset: 1344)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !22, file: !4, line: 285, baseType: !114, size: 64, offset: 1408)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !116)
!116 = !{!43, !44, !99, !37, !55, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !22, file: !4, line: 288, baseType: !119, size: 64, offset: 1472)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !121)
!121 = !{!43, !99, !122, !117}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_device_path_protocol_t", file: !4, line: 176, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_generic_dev_path", file: !18, line: 985, size: 32, elements: !126)
!126 = !{!127, !129, !130}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !18, line: 986, baseType: !128, size: 8)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !12, line: 17, baseType: !107)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sub_type", scope: !125, file: !18, line: 987, baseType: !128, size: 8, offset: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !125, file: !18, line: 988, baseType: !131, size: 16, offset: 16)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !12, line: 19, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !14, line: 24, baseType: !133)
!133 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !22, file: !4, line: 291, baseType: !135, size: 64, offset: 1536)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !137)
!137 = !{!43, !99, !37}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !22, file: !4, line: 293, baseType: !139, size: 64, offset: 1600)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !141)
!141 = !{!43, !142, !98, !123, !37, !15, !117}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !143, line: 35, baseType: !144)
!143 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!144 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !22, file: !4, line: 297, baseType: !146, size: 64, offset: 1664)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !148)
!148 = !{!43, !98, !55, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !18, line: 49, baseType: !131)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !22, file: !4, line: 299, baseType: !153, size: 64, offset: 1728)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !155)
!155 = !{!43, !98, !43, !15, !150}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !22, file: !4, line: 303, baseType: !157, size: 64, offset: 1792)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !159)
!159 = !{!43, !98}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !22, file: !4, line: 304, baseType: !161, size: 64, offset: 1856)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !163)
!163 = !{!43, !98, !15}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !22, file: !4, line: 306, baseType: !37, size: 64, offset: 1920)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !22, file: !4, line: 307, baseType: !166, size: 64, offset: 1984)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !168)
!168 = !{!43, !15}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !22, file: !4, line: 308, baseType: !37, size: 64, offset: 2048)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !22, file: !4, line: 309, baseType: !37, size: 64, offset: 2112)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !22, file: !4, line: 310, baseType: !172, size: 64, offset: 2176)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !174)
!174 = !{!43, !98, !98, !98}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !22, file: !4, line: 313, baseType: !37, size: 64, offset: 2240)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !22, file: !4, line: 314, baseType: !37, size: 64, offset: 2304)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !22, file: !4, line: 315, baseType: !37, size: 64, offset: 2368)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !22, file: !4, line: 316, baseType: !37, size: 64, offset: 2432)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !22, file: !4, line: 317, baseType: !37, size: 64, offset: 2496)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !22, file: !4, line: 318, baseType: !181, size: 64, offset: 2560)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !183)
!183 = !{!43, !99, !37, !61}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !22, file: !4, line: 320, baseType: !185, size: 64, offset: 2624)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !187)
!187 = !{!43, !117, null}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !22, file: !4, line: 321, baseType: !189, size: 64, offset: 2688)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !191)
!191 = !{!43, !98, null}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !22, file: !4, line: 322, baseType: !37, size: 64, offset: 2752)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !22, file: !4, line: 323, baseType: !194, size: 64, offset: 2816)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !196)
!196 = !{null, !37, !197, !15}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !22, file: !4, line: 324, baseType: !200, size: 64, offset: 2880)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !202)
!202 = !{null, !37, !15, !108}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !22, file: !4, line: 325, baseType: !37, size: 64, offset: 2944)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !19, file: !4, line: 373, baseType: !205, size: 1600)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !19, file: !4, line: 327, size: 1600, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !205, file: !4, line: 328, baseType: !25, size: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !205, file: !4, line: 329, baseType: !11, size: 32, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !205, file: !4, line: 330, baseType: !11, size: 32, offset: 224)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !205, file: !4, line: 331, baseType: !11, size: 32, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !205, file: !4, line: 332, baseType: !11, size: 32, offset: 288)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !205, file: !4, line: 333, baseType: !11, size: 32, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !205, file: !4, line: 334, baseType: !11, size: 32, offset: 352)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !205, file: !4, line: 335, baseType: !11, size: 32, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !205, file: !4, line: 336, baseType: !11, size: 32, offset: 416)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !205, file: !4, line: 337, baseType: !11, size: 32, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !205, file: !4, line: 338, baseType: !11, size: 32, offset: 480)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !205, file: !4, line: 339, baseType: !11, size: 32, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !205, file: !4, line: 340, baseType: !11, size: 32, offset: 544)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !205, file: !4, line: 341, baseType: !11, size: 32, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !205, file: !4, line: 342, baseType: !11, size: 32, offset: 608)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !205, file: !4, line: 343, baseType: !11, size: 32, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !205, file: !4, line: 344, baseType: !11, size: 32, offset: 672)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !205, file: !4, line: 345, baseType: !11, size: 32, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !205, file: !4, line: 346, baseType: !11, size: 32, offset: 736)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !205, file: !4, line: 347, baseType: !11, size: 32, offset: 768)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !205, file: !4, line: 348, baseType: !11, size: 32, offset: 800)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !205, file: !4, line: 349, baseType: !11, size: 32, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !205, file: !4, line: 350, baseType: !11, size: 32, offset: 864)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !205, file: !4, line: 351, baseType: !11, size: 32, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !205, file: !4, line: 352, baseType: !11, size: 32, offset: 928)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !205, file: !4, line: 353, baseType: !11, size: 32, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !205, file: !4, line: 354, baseType: !11, size: 32, offset: 992)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !205, file: !4, line: 355, baseType: !11, size: 32, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !205, file: !4, line: 356, baseType: !11, size: 32, offset: 1056)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !205, file: !4, line: 357, baseType: !11, size: 32, offset: 1088)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !205, file: !4, line: 358, baseType: !11, size: 32, offset: 1120)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !205, file: !4, line: 359, baseType: !11, size: 32, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !205, file: !4, line: 360, baseType: !11, size: 32, offset: 1184)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !205, file: !4, line: 361, baseType: !11, size: 32, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !205, file: !4, line: 362, baseType: !11, size: 32, offset: 1248)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !205, file: !4, line: 363, baseType: !11, size: 32, offset: 1280)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !205, file: !4, line: 364, baseType: !11, size: 32, offset: 1312)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !205, file: !4, line: 365, baseType: !11, size: 32, offset: 1344)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !205, file: !4, line: 366, baseType: !11, size: 32, offset: 1376)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !205, file: !4, line: 367, baseType: !11, size: 32, offset: 1408)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !205, file: !4, line: 368, baseType: !11, size: 32, offset: 1440)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !205, file: !4, line: 369, baseType: !11, size: 32, offset: 1472)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !205, file: !4, line: 370, baseType: !11, size: 32, offset: 1504)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !205, file: !4, line: 371, baseType: !11, size: 32, offset: 1536)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !205, file: !4, line: 372, baseType: !11, size: 32, offset: 1568)
!252 = !{i32 7, !"Dwarf Version", i32 5}
!253 = !{i32 2, !"Debug Info Version", i32 3}
!254 = !{i32 1, !"wchar_size", i32 2}
!255 = !{i32 8, !"PIC Level", i32 2}
!256 = !{i32 1, !"Code Model", i32 1}
!257 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!258 = distinct !DISubprogram(name: "efi_allocate_pages_aligned", scope: !1, file: !1, line: 24, type: !259, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{!43, !15, !55, !15, !15, !44}
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !272, !273, !278, !281, !285}
!262 = !DILocalVariable(name: "size", arg: 1, scope: !258, file: !1, line: 24, type: !15)
!263 = !DILocalVariable(name: "addr", arg: 2, scope: !258, file: !1, line: 24, type: !55)
!264 = !DILocalVariable(name: "max", arg: 3, scope: !258, file: !1, line: 25, type: !15)
!265 = !DILocalVariable(name: "align", arg: 4, scope: !258, file: !1, line: 25, type: !15)
!266 = !DILocalVariable(name: "memory_type", arg: 5, scope: !258, file: !1, line: 26, type: !44)
!267 = !DILocalVariable(name: "alloc_addr", scope: !258, file: !1, line: 28, type: !46)
!268 = !DILocalVariable(name: "status", scope: !258, file: !1, line: 29, type: !43)
!269 = !DILocalVariable(name: "slack", scope: !258, file: !1, line: 30, type: !44)
!270 = !DILocalVariable(name: "__UNIQUE_ID___x345", scope: !271, file: !1, line: 32, type: !15)
!271 = distinct !DILexicalBlock(scope: !258, file: !1, line: 32, column: 8)
!272 = !DILocalVariable(name: "__UNIQUE_ID___y346", scope: !271, file: !1, line: 32, type: !15)
!273 = !DILocalVariable(name: "__pad", scope: !274, file: !1, line: 41, type: !275)
!274 = distinct !DILexicalBlock(scope: !258, file: !1, line: 41, column: 11)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 192, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 3)
!278 = !DILocalVariable(name: "l", scope: !279, file: !1, line: 50, type: !44)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 49, column: 17)
!280 = distinct !DILexicalBlock(scope: !258, file: !1, line: 49, column: 6)
!281 = !DILocalVariable(name: "__pad", scope: !282, file: !1, line: 53, type: !275)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 53, column: 4)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 52, column: 10)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 52, column: 7)
!285 = !DILocalVariable(name: "__pad", scope: !286, file: !1, line: 57, type: !275)
!286 = distinct !DILexicalBlock(scope: !287, file: !1, line: 57, column: 4)
!287 = distinct !DILexicalBlock(scope: !279, file: !1, line: 56, column: 7)
!288 = !DILocation(line: 24, column: 55, scope: !258)
!289 = !DILocation(line: 24, column: 76, scope: !258)
!290 = !DILocation(line: 25, column: 20, scope: !258)
!291 = !DILocation(line: 25, column: 39, scope: !258)
!292 = !DILocation(line: 26, column: 10, scope: !258)
!293 = !DILocation(line: 28, column: 2, scope: !258)
!294 = !DILocation(line: 28, column: 22, scope: !258)
!295 = !DILocation(line: 29, column: 2, scope: !258)
!296 = !DILocation(line: 29, column: 15, scope: !258)
!297 = !DILocation(line: 30, column: 2, scope: !258)
!298 = !DILocation(line: 30, column: 6, scope: !258)
!299 = !DILocation(line: 32, column: 8, scope: !271)
!300 = !DILocation(line: 32, column: 8, scope: !258)
!301 = !DILocation(line: 32, column: 6, scope: !258)
!302 = !DILocation(line: 34, column: 6, scope: !303)
!303 = distinct !DILexicalBlock(scope: !258, file: !1, line: 34, column: 6)
!304 = !DILocation(line: 34, column: 12, scope: !303)
!305 = !DILocation(line: 34, column: 6, scope: !258)
!306 = !DILocation(line: 35, column: 9, scope: !303)
!307 = !DILocation(line: 35, column: 3, scope: !303)
!308 = !DILocation(line: 37, column: 15, scope: !258)
!309 = !DILocation(line: 37, column: 42, scope: !258)
!310 = !DILocation(line: 37, column: 13, scope: !258)
!311 = !DILocation(line: 38, column: 9, scope: !258)
!312 = !DILocation(line: 38, column: 7, scope: !258)
!313 = !DILocation(line: 39, column: 10, scope: !258)
!314 = !DILocation(line: 39, column: 16, scope: !258)
!315 = !DILocation(line: 39, column: 32, scope: !258)
!316 = !DILocation(line: 39, column: 8, scope: !258)
!317 = !DILocation(line: 41, column: 11, scope: !258)
!318 = !DILocation(line: 41, column: 11, scope: !274)
!319 = !DILocation(line: 41, column: 11, scope: !320)
!320 = distinct !DILexicalBlock(scope: !274, file: !1, line: 41, column: 11)
!321 = !DILocation(line: 41, column: 11, scope: !322)
!322 = distinct !DILexicalBlock(scope: !320, file: !1, line: 41, column: 11)
!323 = !DILocation(line: 41, column: 9, scope: !258)
!324 = !DILocation(line: 44, column: 6, scope: !325)
!325 = distinct !DILexicalBlock(scope: !258, file: !1, line: 44, column: 6)
!326 = !DILocation(line: 44, column: 13, scope: !325)
!327 = !DILocation(line: 44, column: 6, scope: !258)
!328 = !DILocation(line: 45, column: 10, scope: !325)
!329 = !DILocation(line: 45, column: 3, scope: !325)
!330 = !DILocation(line: 47, column: 10, scope: !258)
!331 = !DILocation(line: 47, column: 3, scope: !258)
!332 = !DILocation(line: 47, column: 8, scope: !258)
!333 = !DILocation(line: 49, column: 6, scope: !280)
!334 = !DILocation(line: 49, column: 12, scope: !280)
!335 = !DILocation(line: 49, column: 6, scope: !258)
!336 = !DILocation(line: 50, column: 3, scope: !279)
!337 = !DILocation(line: 50, column: 7, scope: !279)
!338 = !DILocation(line: 50, column: 12, scope: !279)
!339 = !DILocation(line: 50, column: 26, scope: !279)
!340 = !DILocation(line: 50, column: 32, scope: !279)
!341 = !DILocation(line: 50, column: 23, scope: !279)
!342 = !DILocation(line: 50, column: 38, scope: !279)
!343 = !DILocation(line: 50, column: 11, scope: !279)
!344 = !DILocation(line: 52, column: 7, scope: !284)
!345 = !DILocation(line: 52, column: 7, scope: !279)
!346 = !DILocation(line: 53, column: 4, scope: !283)
!347 = !DILocation(line: 53, column: 4, scope: !282)
!348 = !DILocation(line: 53, column: 4, scope: !349)
!349 = distinct !DILexicalBlock(scope: !282, file: !1, line: 53, column: 4)
!350 = !DILocation(line: 53, column: 4, scope: !351)
!351 = distinct !DILexicalBlock(scope: !349, file: !1, line: 53, column: 4)
!352 = !DILocation(line: 54, column: 12, scope: !283)
!353 = !DILocation(line: 54, column: 14, scope: !283)
!354 = !DILocation(line: 54, column: 10, scope: !283)
!355 = !DILocation(line: 55, column: 3, scope: !283)
!356 = !DILocation(line: 56, column: 7, scope: !287)
!357 = !DILocation(line: 56, column: 7, scope: !279)
!358 = !DILocation(line: 57, column: 4, scope: !287)
!359 = !DILocation(line: 57, column: 4, scope: !286)
!360 = !DILocation(line: 57, column: 4, scope: !361)
!361 = distinct !DILexicalBlock(scope: !286, file: !1, line: 57, column: 4)
!362 = !DILocation(line: 57, column: 4, scope: !363)
!363 = distinct !DILexicalBlock(scope: !361, file: !1, line: 57, column: 4)
!364 = !DILocation(line: 58, column: 2, scope: !280)
!365 = !DILocation(line: 58, column: 2, scope: !279)
!366 = !DILocation(line: 59, column: 2, scope: !258)
!367 = !DILocation(line: 60, column: 1, scope: !258)
!368 = distinct !DISubprogram(name: "efi_is_64bit", scope: !369, file: !369, line: 198, type: !370, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!369 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!370 = !DISubroutineType(types: !371)
!371 = !{!142}
!372 = !DILocation(line: 202, column: 9, scope: !368)
!373 = !{i8 0, i8 2}
!374 = !{}
!375 = !DILocation(line: 202, column: 2, scope: !368)
!376 = distinct !DISubprogram(name: "efi_is_native", scope: !369, file: !369, line: 205, type: !370, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!377 = !DILocation(line: 207, column: 9, scope: !376)
!378 = !DILocation(line: 207, column: 2, scope: !376)
!379 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !369, file: !369, line: 346, type: !380, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !382)
!380 = !DISubroutineType(types: !381)
!381 = !{!43, !29}
!382 = !{!383}
!383 = !DILocalVariable(name: "status", arg: 1, scope: !379, file: !369, line: 346, type: !29)
!384 = !DILocation(line: 346, column: 57, scope: !379)
!385 = !DILocation(line: 349, column: 21, scope: !379)
!386 = !DILocation(line: 349, column: 15, scope: !379)
!387 = !DILocation(line: 349, column: 9, scope: !379)
!388 = !DILocation(line: 349, column: 2, scope: !379)
!389 = !DISubprogram(name: "__efi64_thunk", scope: !369, file: !369, line: 158, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DISubroutineType(types: !391)
!391 = !{!29, !11, null}
!392 = distinct !DISubprogram(name: "ror64", scope: !393, file: !393, line: 115, type: !394, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !396)
!393 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!394 = !DISubroutineType(types: !395)
!395 = !{!30, !30, !5}
!396 = !{!397, !398}
!397 = !DILocalVariable(name: "word", arg: 1, scope: !392, file: !393, line: 115, type: !30)
!398 = !DILocalVariable(name: "shift", arg: 2, scope: !392, file: !393, line: 115, type: !5)
!399 = !DILocation(line: 115, column: 33, scope: !392)
!400 = !DILocation(line: 115, column: 52, scope: !392)
!401 = !DILocation(line: 117, column: 10, scope: !392)
!402 = !DILocation(line: 117, column: 19, scope: !392)
!403 = !DILocation(line: 117, column: 25, scope: !392)
!404 = !DILocation(line: 117, column: 15, scope: !392)
!405 = !DILocation(line: 117, column: 35, scope: !392)
!406 = !DILocation(line: 117, column: 46, scope: !392)
!407 = !DILocation(line: 117, column: 45, scope: !392)
!408 = !DILocation(line: 117, column: 53, scope: !392)
!409 = !DILocation(line: 117, column: 40, scope: !392)
!410 = !DILocation(line: 117, column: 32, scope: !392)
!411 = !DILocation(line: 117, column: 2, scope: !392)
!412 = distinct !DISubprogram(name: "rol32", scope: !393, file: !393, line: 125, type: !413, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !415)
!413 = !DISubroutineType(types: !414)
!414 = !{!13, !13, !5}
!415 = !{!416, !417}
!416 = !DILocalVariable(name: "word", arg: 1, scope: !412, file: !393, line: 125, type: !13)
!417 = !DILocalVariable(name: "shift", arg: 2, scope: !412, file: !393, line: 125, type: !5)
!418 = !DILocation(line: 125, column: 33, scope: !412)
!419 = !DILocation(line: 125, column: 52, scope: !412)
!420 = !DILocation(line: 127, column: 10, scope: !412)
!421 = !DILocation(line: 127, column: 19, scope: !412)
!422 = !DILocation(line: 127, column: 25, scope: !412)
!423 = !DILocation(line: 127, column: 15, scope: !412)
!424 = !DILocation(line: 127, column: 35, scope: !412)
!425 = !DILocation(line: 127, column: 46, scope: !412)
!426 = !DILocation(line: 127, column: 45, scope: !412)
!427 = !DILocation(line: 127, column: 53, scope: !412)
!428 = !DILocation(line: 127, column: 40, scope: !412)
!429 = !DILocation(line: 127, column: 32, scope: !412)
!430 = !DILocation(line: 127, column: 2, scope: !412)
