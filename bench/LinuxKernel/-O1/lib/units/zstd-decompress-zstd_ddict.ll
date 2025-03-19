; ModuleID = 'lib/zstd/decompress/zstd_ddict.c'
source_filename = "lib/zstd/decompress/zstd_ddict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_DDict_s = type { ptr, ptr, i64, %struct.ZSTD_entropyDTables_t, i32, i32, %struct.ZSTD_customMem }
%struct.ZSTD_entropyDTables_t = type { [513 x %struct.ZSTD_seqSymbol], [257 x %struct.ZSTD_seqSymbol], [513 x %struct.ZSTD_seqSymbol], [4097 x i32], [3 x i32], [157 x i32] }
%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_DCtx_s = type { ptr, ptr, ptr, ptr, %struct.ZSTD_entropyDTables_t, [640 x i32], ptr, ptr, ptr, ptr, i64, %struct.ZSTD_frameHeader, i64, i64, i32, i32, i32, i32, %struct.xxh64_state, i64, i32, i32, i32, ptr, %struct.ZSTD_customMem, i64, i64, i64, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, i32, i32, i32, %struct.ZSTD_outBuffer_s, ptr, ptr, i32, [65568 x i8], [18 x i8], i64 }
%struct.ZSTD_frameHeader = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.anon = type { i32 }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ZSTD_DDict_dictContent(ptr noundef %ddict) #0 align 16 !dbg !215 {
entry:
  %ddict.addr = alloca ptr, align 8
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load ptr, ptr %ddict.addr, align 8, !dbg !223
  %dictContent = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 1, !dbg !224
  %1 = load ptr, ptr %dictContent, align 8, !dbg !224
  ret ptr %1, !dbg !225
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ZSTD_DDict_dictSize(ptr noundef %ddict) #0 align 16 !dbg !226 {
entry:
  %ddict.addr = alloca ptr, align 8
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !230, metadata !DIExpression()), !dbg !231
  %0 = load ptr, ptr %ddict.addr, align 8, !dbg !232
  %dictSize = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 2, !dbg !233
  %1 = load i64, ptr %dictSize, align 8, !dbg !233
  ret i64 %1, !dbg !234
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ZSTD_copyDDictParameters(ptr noundef %dctx, ptr noundef %ddict) #0 align 16 !dbg !235 {
entry:
  %dctx.addr = alloca ptr, align 8
  %ddict.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !366, metadata !DIExpression()), !dbg !368
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !367, metadata !DIExpression()), !dbg !369
  %0 = load ptr, ptr %ddict.addr, align 8, !dbg !370
  %dictID = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 4, !dbg !371
  %1 = load i32, ptr %dictID, align 4, !dbg !371
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !372
  %dictID1 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %2, i32 0, i32 31, !dbg !373
  store i32 %1, ptr %dictID1, align 8, !dbg !374
  %3 = load ptr, ptr %ddict.addr, align 8, !dbg !375
  %dictContent = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 1, !dbg !376
  %4 = load ptr, ptr %dictContent, align 8, !dbg !376
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !377
  %prefixStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 7, !dbg !378
  store ptr %4, ptr %prefixStart, align 8, !dbg !379
  %6 = load ptr, ptr %ddict.addr, align 8, !dbg !380
  %dictContent2 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %6, i32 0, i32 1, !dbg !381
  %7 = load ptr, ptr %dictContent2, align 8, !dbg !381
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !382
  %virtualStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 8, !dbg !383
  store ptr %7, ptr %virtualStart, align 8, !dbg !384
  %9 = load ptr, ptr %ddict.addr, align 8, !dbg !385
  %dictContent3 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %9, i32 0, i32 1, !dbg !386
  %10 = load ptr, ptr %dictContent3, align 8, !dbg !386
  %11 = load ptr, ptr %ddict.addr, align 8, !dbg !387
  %dictSize = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %11, i32 0, i32 2, !dbg !388
  %12 = load i64, ptr %dictSize, align 8, !dbg !388
  %add.ptr = getelementptr i8, ptr %10, i64 %12, !dbg !389
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !390
  %dictEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %13, i32 0, i32 9, !dbg !391
  store ptr %add.ptr, ptr %dictEnd, align 8, !dbg !392
  %14 = load ptr, ptr %dctx.addr, align 8, !dbg !393
  %dictEnd4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %14, i32 0, i32 9, !dbg !394
  %15 = load ptr, ptr %dictEnd4, align 8, !dbg !394
  %16 = load ptr, ptr %dctx.addr, align 8, !dbg !395
  %previousDstEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i32 0, i32 6, !dbg !396
  store ptr %15, ptr %previousDstEnd, align 8, !dbg !397
  %17 = load ptr, ptr %ddict.addr, align 8, !dbg !398
  %entropyPresent = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %17, i32 0, i32 5, !dbg !400
  %18 = load i32, ptr %entropyPresent, align 8, !dbg !400
  %tobool = icmp ne i32 %18, 0, !dbg !398
  br i1 %tobool, label %if.then, label %if.else, !dbg !401

if.then:                                          ; preds = %entry
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !402
  %litEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %19, i32 0, i32 16, !dbg !404
  store i32 1, ptr %litEntropy, align 8, !dbg !405
  %20 = load ptr, ptr %dctx.addr, align 8, !dbg !406
  %fseEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %20, i32 0, i32 17, !dbg !407
  store i32 1, ptr %fseEntropy, align 4, !dbg !408
  %21 = load ptr, ptr %ddict.addr, align 8, !dbg !409
  %entropy = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %21, i32 0, i32 3, !dbg !410
  %LLTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 0, !dbg !411
  %arraydecay = getelementptr inbounds [513 x %struct.ZSTD_seqSymbol], ptr %LLTable, i64 0, i64 0, !dbg !409
  %22 = load ptr, ptr %dctx.addr, align 8, !dbg !412
  %LLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %22, i32 0, i32 0, !dbg !413
  store ptr %arraydecay, ptr %LLTptr, align 8, !dbg !414
  %23 = load ptr, ptr %ddict.addr, align 8, !dbg !415
  %entropy5 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %23, i32 0, i32 3, !dbg !416
  %MLTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy5, i32 0, i32 2, !dbg !417
  %arraydecay6 = getelementptr inbounds [513 x %struct.ZSTD_seqSymbol], ptr %MLTable, i64 0, i64 0, !dbg !415
  %24 = load ptr, ptr %dctx.addr, align 8, !dbg !418
  %MLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %24, i32 0, i32 1, !dbg !419
  store ptr %arraydecay6, ptr %MLTptr, align 8, !dbg !420
  %25 = load ptr, ptr %ddict.addr, align 8, !dbg !421
  %entropy7 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %25, i32 0, i32 3, !dbg !422
  %OFTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy7, i32 0, i32 1, !dbg !423
  %arraydecay8 = getelementptr inbounds [257 x %struct.ZSTD_seqSymbol], ptr %OFTable, i64 0, i64 0, !dbg !421
  %26 = load ptr, ptr %dctx.addr, align 8, !dbg !424
  %OFTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %26, i32 0, i32 2, !dbg !425
  store ptr %arraydecay8, ptr %OFTptr, align 8, !dbg !426
  %27 = load ptr, ptr %ddict.addr, align 8, !dbg !427
  %entropy9 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %27, i32 0, i32 3, !dbg !428
  %hufTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy9, i32 0, i32 3, !dbg !429
  %arraydecay10 = getelementptr inbounds [4097 x i32], ptr %hufTable, i64 0, i64 0, !dbg !427
  %28 = load ptr, ptr %dctx.addr, align 8, !dbg !430
  %HUFptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %28, i32 0, i32 3, !dbg !431
  store ptr %arraydecay10, ptr %HUFptr, align 8, !dbg !432
  %29 = load ptr, ptr %ddict.addr, align 8, !dbg !433
  %entropy11 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %29, i32 0, i32 3, !dbg !434
  %rep = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy11, i32 0, i32 4, !dbg !435
  %arrayidx = getelementptr [3 x i32], ptr %rep, i64 0, i64 0, !dbg !433
  %30 = load i32, ptr %arrayidx, align 4, !dbg !433
  %31 = load ptr, ptr %dctx.addr, align 8, !dbg !436
  %entropy12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %31, i32 0, i32 4, !dbg !437
  %rep13 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy12, i32 0, i32 4, !dbg !438
  %arrayidx14 = getelementptr [3 x i32], ptr %rep13, i64 0, i64 0, !dbg !436
  store i32 %30, ptr %arrayidx14, align 4, !dbg !439
  %32 = load ptr, ptr %ddict.addr, align 8, !dbg !440
  %entropy15 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %32, i32 0, i32 3, !dbg !441
  %rep16 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy15, i32 0, i32 4, !dbg !442
  %arrayidx17 = getelementptr [3 x i32], ptr %rep16, i64 0, i64 1, !dbg !440
  %33 = load i32, ptr %arrayidx17, align 4, !dbg !440
  %34 = load ptr, ptr %dctx.addr, align 8, !dbg !443
  %entropy18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %34, i32 0, i32 4, !dbg !444
  %rep19 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy18, i32 0, i32 4, !dbg !445
  %arrayidx20 = getelementptr [3 x i32], ptr %rep19, i64 0, i64 1, !dbg !443
  store i32 %33, ptr %arrayidx20, align 4, !dbg !446
  %35 = load ptr, ptr %ddict.addr, align 8, !dbg !447
  %entropy21 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %35, i32 0, i32 3, !dbg !448
  %rep22 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy21, i32 0, i32 4, !dbg !449
  %arrayidx23 = getelementptr [3 x i32], ptr %rep22, i64 0, i64 2, !dbg !447
  %36 = load i32, ptr %arrayidx23, align 4, !dbg !447
  %37 = load ptr, ptr %dctx.addr, align 8, !dbg !450
  %entropy24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %37, i32 0, i32 4, !dbg !451
  %rep25 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy24, i32 0, i32 4, !dbg !452
  %arrayidx26 = getelementptr [3 x i32], ptr %rep25, i64 0, i64 2, !dbg !450
  store i32 %36, ptr %arrayidx26, align 4, !dbg !453
  br label %if.end, !dbg !454

if.else:                                          ; preds = %entry
  %38 = load ptr, ptr %dctx.addr, align 8, !dbg !455
  %litEntropy27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %38, i32 0, i32 16, !dbg !457
  store i32 0, ptr %litEntropy27, align 8, !dbg !458
  %39 = load ptr, ptr %dctx.addr, align 8, !dbg !459
  %fseEntropy28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %39, i32 0, i32 17, !dbg !460
  store i32 0, ptr %fseEntropy28, align 4, !dbg !461
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !462
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ZSTD_createDDict_advanced(ptr noundef %dict, i64 noundef %dictSize, i32 noundef %dictLoadMethod, i32 noundef %dictContentType, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #0 align 16 !dbg !463 {
entry:
  %retval = alloca ptr, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %dictLoadMethod.addr = alloca i32, align 4
  %dictContentType.addr = alloca i32, align 4
  %ddict = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %initResult = alloca i64, align 8
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !469, metadata !DIExpression()), !dbg !480
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !470, metadata !DIExpression()), !dbg !481
  store i32 %dictLoadMethod, ptr %dictLoadMethod.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictLoadMethod.addr, metadata !471, metadata !DIExpression()), !dbg !482
  store i32 %dictContentType, ptr %dictContentType.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictContentType.addr, metadata !472, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.declare(metadata ptr %customMem, metadata !473, metadata !DIExpression()), !dbg !484
  %customAlloc = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 0, !dbg !485
  %0 = load ptr, ptr %customAlloc, align 8, !dbg !485
  %tobool = icmp ne ptr %0, null, !dbg !487
  %lnot = xor i1 %tobool, true, !dbg !487
  %lnot.ext = zext i1 %lnot to i32, !dbg !487
  %customFree = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 1, !dbg !488
  %1 = load ptr, ptr %customFree, align 8, !dbg !488
  %tobool1 = icmp ne ptr %1, null, !dbg !489
  %lnot2 = xor i1 %tobool1, true, !dbg !489
  %lnot.ext3 = zext i1 %lnot2 to i32, !dbg !489
  %xor = xor i32 %lnot.ext, %lnot.ext3, !dbg !490
  %tobool4 = icmp ne i32 %xor, 0, !dbg !490
  br i1 %tobool4, label %if.then, label %if.end, !dbg !491

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !492
  br label %return, !dbg !492

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ddict) #7, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %ddict, metadata !474, metadata !DIExpression()), !dbg !494
  %call = call ptr @ZSTD_customMalloc(i64 noundef 27352, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #8, !dbg !495
  store ptr %call, ptr %ddict, align 8, !dbg !494
  %2 = load ptr, ptr %ddict, align 8, !dbg !496
  %cmp = icmp eq ptr %2, null, !dbg !498
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !499

if.then5:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13, !dbg !500

if.end6:                                          ; preds = %if.end
  %3 = load ptr, ptr %ddict, align 8, !dbg !501
  %cMem = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 6, !dbg !502
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cMem, ptr align 8 %customMem, i64 24, i1 false), !dbg !503
  call void @llvm.lifetime.start.p0(i64 8, ptr %initResult) #7, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %initResult, metadata !477, metadata !DIExpression()), !dbg !505
  %4 = load ptr, ptr %ddict, align 8, !dbg !506
  %5 = load ptr, ptr %dict.addr, align 8, !dbg !507
  %6 = load i64, ptr %dictSize.addr, align 8, !dbg !508
  %7 = load i32, ptr %dictLoadMethod.addr, align 4, !dbg !509
  %8 = load i32, ptr %dictContentType.addr, align 4, !dbg !510
  %call7 = call i64 @ZSTD_initDDict_internal(ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8) #8, !dbg !511
  store i64 %call7, ptr %initResult, align 8, !dbg !505
  %9 = load i64, ptr %initResult, align 8, !dbg !512
  %call8 = call i32 @ERR_isError(i64 noundef %9) #8, !dbg !514
  %tobool9 = icmp ne i32 %call8, 0, !dbg !514
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !515

if.then10:                                        ; preds = %if.end6
  %10 = load ptr, ptr %ddict, align 8, !dbg !516
  %call11 = call i64 @ZSTD_freeDDict(ptr noundef %10) #8, !dbg !518
  store ptr null, ptr %retval, align 8, !dbg !519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !519

if.end12:                                         ; preds = %if.end6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !520
  br label %cleanup, !dbg !520

cleanup:                                          ; preds = %if.end12, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %initResult) #7, !dbg !520
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %11 = load ptr, ptr %ddict, align 8, !dbg !521
  store ptr %11, ptr %retval, align 8, !dbg !522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13, !dbg !522

cleanup13:                                        ; preds = %cleanup.cont, %cleanup, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ddict) #7, !dbg !523
  br label %return

return:                                           ; preds = %cleanup13, %if.then
  %12 = load ptr, ptr %retval, align 8, !dbg !524
  ret ptr %12, !dbg !524
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !525 dso_local ptr @ZSTD_customMalloc(i64 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_initDDict_internal(ptr noundef %ddict, ptr noundef %dict, i64 noundef %dictSize, i32 noundef %dictLoadMethod, i32 noundef %dictContentType) #0 align 16 !dbg !528 {
entry:
  %retval = alloca i64, align 8
  %ddict.addr = alloca ptr, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %dictLoadMethod.addr = alloca i32, align 4
  %dictContentType.addr = alloca i32, align 4
  %internalBuffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err_code = alloca i64, align 8
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !532, metadata !DIExpression()), !dbg !543
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !533, metadata !DIExpression()), !dbg !544
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !534, metadata !DIExpression()), !dbg !545
  store i32 %dictLoadMethod, ptr %dictLoadMethod.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictLoadMethod.addr, metadata !535, metadata !DIExpression()), !dbg !546
  store i32 %dictContentType, ptr %dictContentType.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictContentType.addr, metadata !536, metadata !DIExpression()), !dbg !547
  %0 = load i32, ptr %dictLoadMethod.addr, align 4, !dbg !548
  %cmp = icmp eq i32 %0, 1, !dbg !549
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !550

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dict.addr, align 8, !dbg !551
  %tobool = icmp ne ptr %1, null, !dbg !551
  br i1 %tobool, label %lor.lhs.false1, label %if.then, !dbg !552

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i64, ptr %dictSize.addr, align 8, !dbg !553
  %tobool2 = icmp ne i64 %2, 0, !dbg !553
  br i1 %tobool2, label %if.else, label %if.then, !dbg !554

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %3 = load ptr, ptr %ddict.addr, align 8, !dbg !555
  %dictBuffer = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 0, !dbg !557
  store ptr null, ptr %dictBuffer, align 8, !dbg !558
  %4 = load ptr, ptr %dict.addr, align 8, !dbg !559
  %5 = load ptr, ptr %ddict.addr, align 8, !dbg !560
  %dictContent = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %5, i32 0, i32 1, !dbg !561
  store ptr %4, ptr %dictContent, align 8, !dbg !562
  %6 = load ptr, ptr %dict.addr, align 8, !dbg !563
  %tobool3 = icmp ne ptr %6, null, !dbg !563
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !565

if.then4:                                         ; preds = %if.then
  store i64 0, ptr %dictSize.addr, align 8, !dbg !566
  br label %if.end, !dbg !567

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end10, !dbg !568

if.else:                                          ; preds = %lor.lhs.false1
  call void @llvm.lifetime.start.p0(i64 8, ptr %internalBuffer) #7, !dbg !569
  call void @llvm.dbg.declare(metadata ptr %internalBuffer, metadata !537, metadata !DIExpression()), !dbg !570
  %7 = load i64, ptr %dictSize.addr, align 8, !dbg !571
  %8 = load ptr, ptr %ddict.addr, align 8, !dbg !572
  %cMem = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %8, i32 0, i32 6, !dbg !573
  %call = call ptr @ZSTD_customMalloc(i64 noundef %7, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem) #8, !dbg !574
  store ptr %call, ptr %internalBuffer, align 8, !dbg !570
  %9 = load ptr, ptr %internalBuffer, align 8, !dbg !575
  %10 = load ptr, ptr %ddict.addr, align 8, !dbg !576
  %dictBuffer5 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %10, i32 0, i32 0, !dbg !577
  store ptr %9, ptr %dictBuffer5, align 8, !dbg !578
  %11 = load ptr, ptr %internalBuffer, align 8, !dbg !579
  %12 = load ptr, ptr %ddict.addr, align 8, !dbg !580
  %dictContent6 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %12, i32 0, i32 1, !dbg !581
  store ptr %11, ptr %dictContent6, align 8, !dbg !582
  %13 = load ptr, ptr %internalBuffer, align 8, !dbg !583
  %tobool7 = icmp ne ptr %13, null, !dbg !583
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !585

if.then8:                                         ; preds = %if.else
  store i64 -64, ptr %retval, align 8, !dbg !586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !586

if.end9:                                          ; preds = %if.else
  %14 = load ptr, ptr %internalBuffer, align 8, !dbg !587
  %15 = load ptr, ptr %dict.addr, align 8, !dbg !587
  %16 = load i64, ptr %dictSize.addr, align 8, !dbg !587
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %15, i64 %16, i1 false), !dbg !587
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !588
  br label %cleanup, !dbg !588

cleanup:                                          ; preds = %if.end9, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %internalBuffer) #7, !dbg !588
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end10

if.end10:                                         ; preds = %cleanup.cont, %if.end
  %17 = load i64, ptr %dictSize.addr, align 8, !dbg !589
  %18 = load ptr, ptr %ddict.addr, align 8, !dbg !590
  %dictSize11 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %18, i32 0, i32 2, !dbg !591
  store i64 %17, ptr %dictSize11, align 8, !dbg !592
  %19 = load ptr, ptr %ddict.addr, align 8, !dbg !593
  %entropy = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %19, i32 0, i32 3, !dbg !594
  %hufTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 3, !dbg !595
  %arrayidx = getelementptr [4097 x i32], ptr %hufTable, i64 0, i64 0, !dbg !593
  store i32 201326604, ptr %arrayidx, align 8, !dbg !596
  br label %do.body, !dbg !597

do.body:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #7, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !541, metadata !DIExpression()), !dbg !598
  %20 = load ptr, ptr %ddict.addr, align 8, !dbg !598
  %21 = load i32, ptr %dictContentType.addr, align 4, !dbg !598
  %call12 = call i64 @ZSTD_loadEntropy_intoDDict(ptr noundef %20, i32 noundef %21) #8, !dbg !598
  store i64 %call12, ptr %err_code, align 8, !dbg !598
  %22 = load i64, ptr %err_code, align 8, !dbg !599
  %call13 = call i32 @ERR_isError(i64 noundef %22) #8, !dbg !599
  %tobool14 = icmp ne i32 %call13, 0, !dbg !599
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !598

if.then15:                                        ; preds = %do.body
  %23 = load i64, ptr %err_code, align 8, !dbg !601
  store i64 %23, ptr %retval, align 8, !dbg !601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !601

if.end16:                                         ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !597
  br label %cleanup17, !dbg !597

cleanup17:                                        ; preds = %if.end16, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #7, !dbg !597
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 0, label %cleanup.cont19
    i32 1, label %return
  ]

cleanup.cont19:                                   ; preds = %cleanup17
  br label %do.end, !dbg !598

do.end:                                           ; preds = %cleanup.cont19
  store i64 0, ptr %retval, align 8, !dbg !603
  br label %return, !dbg !603

return:                                           ; preds = %do.end, %cleanup17, %cleanup
  %24 = load i64, ptr %retval, align 8, !dbg !604
  ret i64 %24, !dbg !604

unreachable:                                      ; preds = %cleanup17, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ERR_isError(i64 noundef %code) #0 align 16 !dbg !605 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !610, metadata !DIExpression()), !dbg !611
  %0 = load i64, ptr %code.addr, align 8, !dbg !612
  %cmp = icmp ugt i64 %0, -120, !dbg !613
  %conv = zext i1 %cmp to i32, !dbg !613
  ret i32 %conv, !dbg !614
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_freeDDict(ptr noundef %ddict) #0 align 16 !dbg !615 {
entry:
  %retval = alloca i64, align 8
  %ddict.addr = alloca ptr, align 8
  %cMem = alloca %struct.ZSTD_customMem, align 8
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !619, metadata !DIExpression()), !dbg !623
  %0 = load ptr, ptr %ddict.addr, align 8, !dbg !624
  %cmp = icmp eq ptr %0, null, !dbg !626
  br i1 %cmp, label %if.then, label %if.end, !dbg !627

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !628
  br label %return, !dbg !628

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %cMem) #7, !dbg !629
  call void @llvm.dbg.declare(metadata ptr %cMem, metadata !620, metadata !DIExpression()), !dbg !630
  %1 = load ptr, ptr %ddict.addr, align 8, !dbg !631
  %cMem1 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 6, !dbg !632
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cMem, ptr align 8 %cMem1, i64 24, i1 false), !dbg !632
  %2 = load ptr, ptr %ddict.addr, align 8, !dbg !633
  %dictBuffer = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %2, i32 0, i32 0, !dbg !634
  %3 = load ptr, ptr %dictBuffer, align 8, !dbg !634
  call void @ZSTD_customFree(ptr noundef %3, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem) #8, !dbg !635
  %4 = load ptr, ptr %ddict.addr, align 8, !dbg !636
  call void @ZSTD_customFree(ptr noundef %4, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem) #8, !dbg !637
  store i64 0, ptr %retval, align 8, !dbg !638
  call void @llvm.lifetime.end.p0(i64 24, ptr %cMem) #7, !dbg !639
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !640
  ret i64 %5, !dbg !640
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ZSTD_createDDict(ptr noundef %dict, i64 noundef %dictSize) #0 align 16 !dbg !641 {
entry:
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %allocator = alloca %struct.ZSTD_customMem, align 8
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !645, metadata !DIExpression()), !dbg !648
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !646, metadata !DIExpression()), !dbg !649
  call void @llvm.lifetime.start.p0(i64 24, ptr %allocator) #7, !dbg !650
  call void @llvm.dbg.declare(metadata ptr %allocator, metadata !647, metadata !DIExpression()), !dbg !651
  call void @llvm.memset.p0.i64(ptr align 8 %allocator, i8 0, i64 24, i1 false), !dbg !651
  %0 = load ptr, ptr %dict.addr, align 8, !dbg !652
  %1 = load i64, ptr %dictSize.addr, align 8, !dbg !653
  %call = call ptr @ZSTD_createDDict_advanced(ptr noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef byval(%struct.ZSTD_customMem) align 8 %allocator) #8, !dbg !654
  call void @llvm.lifetime.end.p0(i64 24, ptr %allocator) #7, !dbg !655
  ret ptr %call, !dbg !656
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ZSTD_createDDict_byReference(ptr noundef %dictBuffer, i64 noundef %dictSize) #0 align 16 !dbg !657 {
entry:
  %dictBuffer.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %allocator = alloca %struct.ZSTD_customMem, align 8
  store ptr %dictBuffer, ptr %dictBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictBuffer.addr, metadata !659, metadata !DIExpression()), !dbg !662
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !660, metadata !DIExpression()), !dbg !663
  call void @llvm.lifetime.start.p0(i64 24, ptr %allocator) #7, !dbg !664
  call void @llvm.dbg.declare(metadata ptr %allocator, metadata !661, metadata !DIExpression()), !dbg !665
  call void @llvm.memset.p0.i64(ptr align 8 %allocator, i8 0, i64 24, i1 false), !dbg !665
  %0 = load ptr, ptr %dictBuffer.addr, align 8, !dbg !666
  %1 = load i64, ptr %dictSize.addr, align 8, !dbg !667
  %call = call ptr @ZSTD_createDDict_advanced(ptr noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef byval(%struct.ZSTD_customMem) align 8 %allocator) #8, !dbg !668
  call void @llvm.lifetime.end.p0(i64 24, ptr %allocator) #7, !dbg !669
  ret ptr %call, !dbg !670
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ZSTD_initStaticDDict(ptr noundef %sBuffer, i64 noundef %sBufferSize, ptr noundef %dict, i64 noundef %dictSize, i32 noundef %dictLoadMethod, i32 noundef %dictContentType) #0 align 16 !dbg !671 {
entry:
  %retval = alloca ptr, align 8
  %sBuffer.addr = alloca ptr, align 8
  %sBufferSize.addr = alloca i64, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %dictLoadMethod.addr = alloca i32, align 4
  %dictContentType.addr = alloca i32, align 4
  %neededSpace = alloca i64, align 8
  %ddict = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sBuffer, ptr %sBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sBuffer.addr, metadata !675, metadata !DIExpression()), !dbg !683
  store i64 %sBufferSize, ptr %sBufferSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sBufferSize.addr, metadata !676, metadata !DIExpression()), !dbg !684
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !677, metadata !DIExpression()), !dbg !685
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !678, metadata !DIExpression()), !dbg !686
  store i32 %dictLoadMethod, ptr %dictLoadMethod.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictLoadMethod.addr, metadata !679, metadata !DIExpression()), !dbg !687
  store i32 %dictContentType, ptr %dictContentType.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictContentType.addr, metadata !680, metadata !DIExpression()), !dbg !688
  call void @llvm.lifetime.start.p0(i64 8, ptr %neededSpace) #7, !dbg !689
  call void @llvm.dbg.declare(metadata ptr %neededSpace, metadata !681, metadata !DIExpression()), !dbg !690
  %0 = load i32, ptr %dictLoadMethod.addr, align 4, !dbg !691
  %cmp = icmp eq i32 %0, 1, !dbg !692
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !691

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !691

cond.false:                                       ; preds = %entry
  %1 = load i64, ptr %dictSize.addr, align 8, !dbg !693
  br label %cond.end, !dbg !691

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %1, %cond.false ], !dbg !691
  %add = add i64 27352, %cond, !dbg !694
  store i64 %add, ptr %neededSpace, align 8, !dbg !690
  call void @llvm.lifetime.start.p0(i64 8, ptr %ddict) #7, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %ddict, metadata !682, metadata !DIExpression()), !dbg !696
  %2 = load ptr, ptr %sBuffer.addr, align 8, !dbg !697
  store ptr %2, ptr %ddict, align 8, !dbg !696
  %3 = load ptr, ptr %sBuffer.addr, align 8, !dbg !698
  %4 = ptrtoint ptr %3 to i64, !dbg !700
  %and = and i64 %4, 7, !dbg !701
  %tobool = icmp ne i64 %and, 0, !dbg !701
  br i1 %tobool, label %if.then, label %if.end, !dbg !702

if.then:                                          ; preds = %cond.end
  store ptr null, ptr %retval, align 8, !dbg !703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !703

if.end:                                           ; preds = %cond.end
  %5 = load i64, ptr %sBufferSize.addr, align 8, !dbg !704
  %6 = load i64, ptr %neededSpace, align 8, !dbg !706
  %cmp1 = icmp ult i64 %5, %6, !dbg !707
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !708

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !709

if.end3:                                          ; preds = %if.end
  %7 = load i32, ptr %dictLoadMethod.addr, align 4, !dbg !710
  %cmp4 = icmp eq i32 %7, 0, !dbg !712
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !713

if.then5:                                         ; preds = %if.end3
  %8 = load ptr, ptr %ddict, align 8, !dbg !714
  %add.ptr = getelementptr %struct.ZSTD_DDict_s, ptr %8, i64 1, !dbg !714
  %9 = load ptr, ptr %dict.addr, align 8, !dbg !714
  %10 = load i64, ptr %dictSize.addr, align 8, !dbg !714
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr, ptr align 1 %9, i64 %10, i1 false), !dbg !714
  %11 = load ptr, ptr %ddict, align 8, !dbg !716
  %add.ptr6 = getelementptr %struct.ZSTD_DDict_s, ptr %11, i64 1, !dbg !717
  store ptr %add.ptr6, ptr %dict.addr, align 8, !dbg !718
  br label %if.end7, !dbg !719

if.end7:                                          ; preds = %if.then5, %if.end3
  %12 = load ptr, ptr %ddict, align 8, !dbg !720
  %13 = load ptr, ptr %dict.addr, align 8, !dbg !722
  %14 = load i64, ptr %dictSize.addr, align 8, !dbg !723
  %15 = load i32, ptr %dictContentType.addr, align 4, !dbg !724
  %call = call i64 @ZSTD_initDDict_internal(ptr noundef %12, ptr noundef %13, i64 noundef %14, i32 noundef 1, i32 noundef %15) #8, !dbg !725
  %call8 = call i32 @ERR_isError(i64 noundef %call) #8, !dbg !726
  %tobool9 = icmp ne i32 %call8, 0, !dbg !726
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !727

if.then10:                                        ; preds = %if.end7
  store ptr null, ptr %retval, align 8, !dbg !728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !728

if.end11:                                         ; preds = %if.end7
  %16 = load ptr, ptr %ddict, align 8, !dbg !729
  store ptr %16, ptr %retval, align 8, !dbg !730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !730

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ddict) #7, !dbg !731
  call void @llvm.lifetime.end.p0(i64 8, ptr %neededSpace) #7, !dbg !731
  %17 = load ptr, ptr %retval, align 8, !dbg !731
  ret ptr %17, !dbg !731
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !732 dso_local void @ZSTD_customFree(ptr noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_estimateDDictSize(i64 noundef %dictSize, i32 noundef %dictLoadMethod) #0 align 16 !dbg !735 {
entry:
  %dictSize.addr = alloca i64, align 8
  %dictLoadMethod.addr = alloca i32, align 4
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !739, metadata !DIExpression()), !dbg !741
  store i32 %dictLoadMethod, ptr %dictLoadMethod.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictLoadMethod.addr, metadata !740, metadata !DIExpression()), !dbg !742
  %0 = load i32, ptr %dictLoadMethod.addr, align 4, !dbg !743
  %cmp = icmp eq i32 %0, 1, !dbg !744
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !743

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !743

cond.false:                                       ; preds = %entry
  %1 = load i64, ptr %dictSize.addr, align 8, !dbg !745
  br label %cond.end, !dbg !743

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %1, %cond.false ], !dbg !743
  %add = add i64 27352, %cond, !dbg !746
  ret i64 %add, !dbg !747
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_sizeof_DDict(ptr noundef %ddict) #0 align 16 !dbg !748 {
entry:
  %retval = alloca i64, align 8
  %ddict.addr = alloca ptr, align 8
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !750, metadata !DIExpression()), !dbg !751
  %0 = load ptr, ptr %ddict.addr, align 8, !dbg !752
  %cmp = icmp eq ptr %0, null, !dbg !754
  br i1 %cmp, label %if.then, label %if.end, !dbg !755

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !756
  br label %return, !dbg !756

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ddict.addr, align 8, !dbg !757
  %dictBuffer = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 0, !dbg !758
  %2 = load ptr, ptr %dictBuffer, align 8, !dbg !758
  %tobool = icmp ne ptr %2, null, !dbg !757
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !757

cond.true:                                        ; preds = %if.end
  %3 = load ptr, ptr %ddict.addr, align 8, !dbg !759
  %dictSize = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 2, !dbg !760
  %4 = load i64, ptr %dictSize, align 8, !dbg !760
  br label %cond.end, !dbg !757

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !757

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !757
  %add = add i64 27352, %cond, !dbg !761
  store i64 %add, ptr %retval, align 8, !dbg !762
  br label %return, !dbg !762

return:                                           ; preds = %cond.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !763
  ret i64 %5, !dbg !763
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ZSTD_getDictID_fromDDict(ptr noundef %ddict) #0 align 16 !dbg !764 {
entry:
  %retval = alloca i32, align 4
  %ddict.addr = alloca ptr, align 8
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !768, metadata !DIExpression()), !dbg !769
  %0 = load ptr, ptr %ddict.addr, align 8, !dbg !770
  %cmp = icmp eq ptr %0, null, !dbg !772
  br i1 %cmp, label %if.then, label %if.end, !dbg !773

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !774
  br label %return, !dbg !774

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ddict.addr, align 8, !dbg !775
  %dictContent = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 1, !dbg !776
  %2 = load ptr, ptr %dictContent, align 8, !dbg !776
  %3 = load ptr, ptr %ddict.addr, align 8, !dbg !777
  %dictSize = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 2, !dbg !778
  %4 = load i64, ptr %dictSize, align 8, !dbg !778
  %call = call i32 @ZSTD_getDictID_fromDict(ptr noundef %2, i64 noundef %4) #8, !dbg !779
  store i32 %call, ptr %retval, align 4, !dbg !780
  br label %return, !dbg !780

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !781
  ret i32 %5, !dbg !781
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !782 dso_local i32 @ZSTD_getDictID_fromDict(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_loadEntropy_intoDDict(ptr noundef %ddict, i32 noundef %dictContentType) #0 align 16 !dbg !785 {
entry:
  %retval = alloca i64, align 8
  %ddict.addr = alloca ptr, align 8
  %dictContentType.addr = alloca i32, align 4
  %magic = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !789, metadata !DIExpression()), !dbg !794
  store i32 %dictContentType, ptr %dictContentType.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictContentType.addr, metadata !790, metadata !DIExpression()), !dbg !795
  %0 = load ptr, ptr %ddict.addr, align 8, !dbg !796
  %dictID = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 4, !dbg !797
  store i32 0, ptr %dictID, align 4, !dbg !798
  %1 = load ptr, ptr %ddict.addr, align 8, !dbg !799
  %entropyPresent = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 5, !dbg !800
  store i32 0, ptr %entropyPresent, align 8, !dbg !801
  %2 = load i32, ptr %dictContentType.addr, align 4, !dbg !802
  %cmp = icmp eq i32 %2, 1, !dbg !804
  br i1 %cmp, label %if.then, label %if.end, !dbg !805

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !806
  br label %return, !dbg !806

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ddict.addr, align 8, !dbg !807
  %dictSize = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 2, !dbg !809
  %4 = load i64, ptr %dictSize, align 8, !dbg !809
  %cmp1 = icmp ult i64 %4, 8, !dbg !810
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !811

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %dictContentType.addr, align 4, !dbg !812
  %cmp3 = icmp eq i32 %5, 2, !dbg !815
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !816

if.then4:                                         ; preds = %if.then2
  store i64 -30, ptr %retval, align 8, !dbg !817
  br label %return, !dbg !817

if.end5:                                          ; preds = %if.then2
  store i64 0, ptr %retval, align 8, !dbg !818
  br label %return, !dbg !818

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %magic) #7, !dbg !819
  call void @llvm.dbg.declare(metadata ptr %magic, metadata !791, metadata !DIExpression()), !dbg !820
  %6 = load ptr, ptr %ddict.addr, align 8, !dbg !821
  %dictContent = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %6, i32 0, i32 1, !dbg !822
  %7 = load ptr, ptr %dictContent, align 8, !dbg !822
  %call = call i32 @MEM_readLE32(ptr noundef %7) #8, !dbg !823
  store i32 %call, ptr %magic, align 4, !dbg !820
  %8 = load i32, ptr %magic, align 4, !dbg !824
  %cmp7 = icmp ne i32 %8, -332356553, !dbg !826
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !827

if.then8:                                         ; preds = %if.end6
  %9 = load i32, ptr %dictContentType.addr, align 4, !dbg !828
  %cmp9 = icmp eq i32 %9, 2, !dbg !831
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !832

if.then10:                                        ; preds = %if.then8
  store i64 -30, ptr %retval, align 8, !dbg !833
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !833

if.end11:                                         ; preds = %if.then8
  store i64 0, ptr %retval, align 8, !dbg !834
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !834

if.end12:                                         ; preds = %if.end6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !835
  br label %cleanup, !dbg !835

cleanup:                                          ; preds = %if.end12, %if.end11, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %magic) #7, !dbg !835
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  %10 = load ptr, ptr %ddict.addr, align 8, !dbg !836
  %dictContent13 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %10, i32 0, i32 1, !dbg !837
  %11 = load ptr, ptr %dictContent13, align 8, !dbg !837
  %add.ptr = getelementptr i8, ptr %11, i64 4, !dbg !838
  %call14 = call i32 @MEM_readLE32(ptr noundef %add.ptr) #8, !dbg !839
  %12 = load ptr, ptr %ddict.addr, align 8, !dbg !840
  %dictID15 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %12, i32 0, i32 4, !dbg !841
  store i32 %call14, ptr %dictID15, align 4, !dbg !842
  %13 = load ptr, ptr %ddict.addr, align 8, !dbg !843
  %entropy = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %13, i32 0, i32 3, !dbg !843
  %14 = load ptr, ptr %ddict.addr, align 8, !dbg !843
  %dictContent16 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %14, i32 0, i32 1, !dbg !843
  %15 = load ptr, ptr %dictContent16, align 8, !dbg !843
  %16 = load ptr, ptr %ddict.addr, align 8, !dbg !843
  %dictSize17 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %16, i32 0, i32 2, !dbg !843
  %17 = load i64, ptr %dictSize17, align 8, !dbg !843
  %call18 = call i64 @ZSTD_loadDEntropy(ptr noundef %entropy, ptr noundef %15, i64 noundef %17) #8, !dbg !843
  %call19 = call i32 @ERR_isError(i64 noundef %call18) #8, !dbg !843
  %tobool = icmp ne i32 %call19, 0, !dbg !843
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !845

if.then20:                                        ; preds = %cleanup.cont
  store i64 -30, ptr %retval, align 8, !dbg !846
  br label %return, !dbg !846

if.end21:                                         ; preds = %cleanup.cont
  %18 = load ptr, ptr %ddict.addr, align 8, !dbg !848
  %entropyPresent22 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %18, i32 0, i32 5, !dbg !849
  store i32 1, ptr %entropyPresent22, align 8, !dbg !850
  store i64 0, ptr %retval, align 8, !dbg !851
  br label %return, !dbg !851

return:                                           ; preds = %if.end21, %if.then20, %cleanup, %if.end5, %if.then4, %if.then
  %19 = load i64, ptr %retval, align 8, !dbg !852
  ret i64 %19, !dbg !852

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_readLE32(ptr noundef %memPtr) #6 align 16 !dbg !853 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !857, metadata !DIExpression()), !dbg !858
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !859
  %call = call i32 @get_unaligned_le32(ptr noundef %0) #8, !dbg !860
  ret i32 %call, !dbg !861
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !862 dso_local i64 @ZSTD_loadDEntropy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #6 align 16 !dbg !197 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !201, metadata !DIExpression()), !dbg !867
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !202, metadata !DIExpression()), !dbg !868
  %0 = load ptr, ptr %p.addr, align 8, !dbg !868
  store ptr %0, ptr %__pptr, align 8, !dbg !868
  %1 = load ptr, ptr %__pptr, align 8, !dbg !868
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !868
  %2 = load i32, ptr %x, align 1, !dbg !868
  store i32 %2, ptr %tmp, align 4, !dbg !868
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !869
  %3 = load i32, ptr %tmp, align 4, !dbg !868
  ret i32 %3, !dbg !870
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zstd/decompress/.zstd_ddict.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zstd/zstd_decompress\22 -D KBUILD_BASENAME=\22zstd_ddict\22 -D KBUILD_MODNAME=\22zstd_decompress\22 -D __KBUILD_MODNAME=kmod_zstd_decompress -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zstd/decompress/zstd_ddict.ll lib/zstd/decompress/zstd_ddict.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !101, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/zstd/decompress/zstd_ddict.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "281e2b7b767bfb39f88e4f70732d9ef4")
!2 = !{!3, !9, !16, !27, !31, !35, !41, !45, !52, !56, !61, !65, !70}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 2474, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/zstd_lib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8133d2f71405070b8bf1f9699046d166")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "ZSTD_frame", value: 0)
!8 = !DIEnumerator(name: "ZSTD_skippableFrame", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 81, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "lib/zstd/decompress/../common/zstd_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c514f784a58bd125143564d5f9097a9")
!11 = !{!12, !13, !14, !15}
!12 = !DIEnumerator(name: "bt_raw", value: 0)
!13 = !DIEnumerator(name: "bt_rle", value: 1)
!14 = !DIEnumerator(name: "bt_compressed", value: 2)
!15 = !DIEnumerator(name: "bt_reserved", value: 3)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 88, baseType: !5, size: 32, elements: !18)
!17 = !DIFile(filename: "lib/zstd/decompress/zstd_decompress_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5223103cf3e1f284362511d946d93a92")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26}
!19 = !DIEnumerator(name: "ZSTDds_getFrameHeaderSize", value: 0)
!20 = !DIEnumerator(name: "ZSTDds_decodeFrameHeader", value: 1)
!21 = !DIEnumerator(name: "ZSTDds_decodeBlockHeader", value: 2)
!22 = !DIEnumerator(name: "ZSTDds_decompressBlock", value: 3)
!23 = !DIEnumerator(name: "ZSTDds_decompressLastBlock", value: 4)
!24 = !DIEnumerator(name: "ZSTDds_checkChecksum", value: 5)
!25 = !DIEnumerator(name: "ZSTDds_decodeSkippableHeader", value: 6)
!26 = !DIEnumerator(name: "ZSTDds_skipFrame", value: 7)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 1228, baseType: !5, size: 32, elements: !28)
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "ZSTD_f_zstd1", value: 0)
!30 = !DIEnumerator(name: "ZSTD_f_zstd1_magicless", value: 1)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 1235, baseType: !5, size: 32, elements: !32)
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "ZSTD_d_validateChecksum", value: 0)
!34 = !DIEnumerator(name: "ZSTD_d_ignoreChecksum", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 96, baseType: !36, size: 32, elements: !37)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "ZSTD_use_indefinitely", value: -1)
!39 = !DIEnumerator(name: "ZSTD_dont_use", value: 0)
!40 = !DIEnumerator(name: "ZSTD_use_once", value: 1)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 1241, baseType: !5, size: 32, elements: !42)
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "ZSTD_rmd_refSingleDDict", value: 0)
!44 = !DIEnumerator(name: "ZSTD_rmd_refMultipleDDicts", value: 1)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 93, baseType: !5, size: 32, elements: !46)
!46 = !{!47, !48, !49, !50, !51}
!47 = !DIEnumerator(name: "zdss_init", value: 0)
!48 = !DIEnumerator(name: "zdss_loadHeader", value: 1)
!49 = !DIEnumerator(name: "zdss_read", value: 2)
!50 = !DIEnumerator(name: "zdss_load", value: 3)
!51 = !DIEnumerator(name: "zdss_flush", value: 4)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 267, baseType: !5, size: 32, elements: !53)
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "ZSTD_bm_buffered", value: 0)
!55 = !DIEnumerator(name: "ZSTD_bm_stable", value: 1)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 119, baseType: !5, size: 32, elements: !57)
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "ZSTD_not_in_dst", value: 0)
!59 = !DIEnumerator(name: "ZSTD_in_dst", value: 1)
!60 = !DIEnumerator(name: "ZSTD_split", value: 2)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 1223, baseType: !5, size: 32, elements: !62)
!62 = !{!63, !64}
!63 = !DIEnumerator(name: "ZSTD_dlm_byCopy", value: 0)
!64 = !DIEnumerator(name: "ZSTD_dlm_byRef", value: 1)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 1217, baseType: !5, size: 32, elements: !66)
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "ZSTD_dct_auto", value: 0)
!68 = !DIEnumerator(name: "ZSTD_dct_rawContent", value: 1)
!69 = !DIEnumerator(name: "ZSTD_dct_fullDict", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 37, baseType: !5, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/zstd_errors.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b65e56a0777f4855c2ba6522d04d0e69")
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!73 = !DIEnumerator(name: "ZSTD_error_no_error", value: 0)
!74 = !DIEnumerator(name: "ZSTD_error_GENERIC", value: 1)
!75 = !DIEnumerator(name: "ZSTD_error_prefix_unknown", value: 10)
!76 = !DIEnumerator(name: "ZSTD_error_version_unsupported", value: 12)
!77 = !DIEnumerator(name: "ZSTD_error_frameParameter_unsupported", value: 14)
!78 = !DIEnumerator(name: "ZSTD_error_frameParameter_windowTooLarge", value: 16)
!79 = !DIEnumerator(name: "ZSTD_error_corruption_detected", value: 20)
!80 = !DIEnumerator(name: "ZSTD_error_checksum_wrong", value: 22)
!81 = !DIEnumerator(name: "ZSTD_error_dictionary_corrupted", value: 30)
!82 = !DIEnumerator(name: "ZSTD_error_dictionary_wrong", value: 32)
!83 = !DIEnumerator(name: "ZSTD_error_dictionaryCreation_failed", value: 34)
!84 = !DIEnumerator(name: "ZSTD_error_parameter_unsupported", value: 40)
!85 = !DIEnumerator(name: "ZSTD_error_parameter_outOfBound", value: 42)
!86 = !DIEnumerator(name: "ZSTD_error_tableLog_tooLarge", value: 44)
!87 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooLarge", value: 46)
!88 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooSmall", value: 48)
!89 = !DIEnumerator(name: "ZSTD_error_stage_wrong", value: 60)
!90 = !DIEnumerator(name: "ZSTD_error_init_missing", value: 62)
!91 = !DIEnumerator(name: "ZSTD_error_memory_allocation", value: 64)
!92 = !DIEnumerator(name: "ZSTD_error_workSpace_tooSmall", value: 66)
!93 = !DIEnumerator(name: "ZSTD_error_dstSize_tooSmall", value: 70)
!94 = !DIEnumerator(name: "ZSTD_error_srcSize_wrong", value: 72)
!95 = !DIEnumerator(name: "ZSTD_error_dstBuffer_null", value: 74)
!96 = !DIEnumerator(name: "ZSTD_error_frameIndex_tooLarge", value: 100)
!97 = !DIEnumerator(name: "ZSTD_error_seekableIO", value: 102)
!98 = !DIEnumerator(name: "ZSTD_error_dstBuffer_wrong", value: 104)
!99 = !DIEnumerator(name: "ZSTD_error_srcBuffer_wrong", value: 105)
!100 = !DIEnumerator(name: "ZSTD_error_maxCode", value: 120)
!101 = !{!102, !113, !118, !123, !159, !188, !149, !191, !193}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !105, line: 32, baseType: !106)
!105 = !DIFile(filename: "lib/zstd/decompress/../common/mem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ecad453ab26990e649f823cad6e0e9a6")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !107, line: 108, baseType: !108)
!107 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !109, line: 17, baseType: !110)
!109 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !111, line: 21, baseType: !112)
!111 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!112 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DDict", file: !4, line: 868, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_DDict_s", file: !1, line: 33, size: 218816, elements: !116)
!116 = !{!117, !119, !122, !128, !171, !172, !173}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "dictBuffer", scope: !115, file: !1, line: 34, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dictContent", scope: !115, file: !1, line: 35, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dictSize", scope: !115, file: !1, line: 36, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 61, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !125, line: 72, baseType: !126)
!125 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !125, line: 16, baseType: !127)
!127 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !115, file: !1, line: 37, baseType: !129, size: 218336, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_entropyDTables_t", file: !17, line: 86, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 79, size: 218336, elements: !131)
!131 = !{!132, !152, !156, !157, !163, !167}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "LLTable", scope: !130, file: !17, line: 80, baseType: !133, size: 32832)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 32832, elements: !150)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_seqSymbol", file: !17, line: 72, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 67, size: 64, elements: !136)
!136 = !{!137, !143, !144, !145}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nextState", scope: !135, file: !17, line: 68, baseType: !138, size: 16)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !105, line: 35, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !107, line: 109, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !109, line: 19, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !111, line: 24, baseType: !142)
!142 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nbAdditionalBits", scope: !135, file: !17, line: 69, baseType: !104, size: 8, offset: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nbBits", scope: !135, file: !17, line: 70, baseType: !104, size: 8, offset: 24)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "baseValue", scope: !135, file: !17, line: 71, baseType: !146, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !105, line: 37, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !107, line: 110, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !109, line: 21, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !111, line: 27, baseType: !5)
!150 = !{!151}
!151 = !DISubrange(count: 513)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "OFTable", scope: !130, file: !17, line: 81, baseType: !153, size: 16448, offset: 32832)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 16448, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 257)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "MLTable", scope: !130, file: !17, line: 82, baseType: !133, size: 32832, offset: 49280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "hufTable", scope: !130, file: !17, line: 83, baseType: !158, size: 131104, offset: 82112)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 131104, elements: !161)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "HUF_DTable", file: !160, line: 143, baseType: !146)
!160 = !DIFile(filename: "lib/zstd/decompress/../common/huf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3885d88b55dce6c8e4168e380ad868c4")
!161 = !{!162}
!162 = !DISubrange(count: 4097)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !130, file: !17, line: 84, baseType: !164, size: 96, offset: 213216)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 96, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 3)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !130, file: !17, line: 85, baseType: !168, size: 5024, offset: 213312)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 5024, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 157)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "dictID", scope: !115, file: !1, line: 38, baseType: !146, size: 32, offset: 218528)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "entropyPresent", scope: !115, file: !1, line: 39, baseType: !146, size: 32, offset: 218560)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cMem", scope: !115, file: !1, line: 40, baseType: !174, size: 192, offset: 218624)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_customMem", file: !4, line: 1568, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 1568, size: 192, elements: !176)
!176 = !{!177, !182, !187}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "customAlloc", scope: !175, file: !4, line: 1568, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_allocFunction", file: !4, line: 1566, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!118, !118, !123}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "customFree", scope: !175, file: !4, line: 1568, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_freeFunction", file: !4, line: 1567, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !118, !118}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !175, file: !4, line: 1568, baseType: !118, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !192, line: 38, baseType: !149)
!192 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !196, line: 32, size: 32, elements: !204)
!196 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!197 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !196, file: !196, line: 30, type: !198, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!148, !120}
!200 = !{!201, !202}
!201 = !DILocalVariable(name: "p", arg: 1, scope: !197, file: !196, line: 30, type: !120)
!202 = !DILocalVariable(name: "__pptr", scope: !203, file: !196, line: 32, type: !193)
!203 = distinct !DILexicalBlock(scope: !197, file: !196, line: 32, column: 9)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !195, file: !196, line: 32, baseType: !191, size: 32)
!206 = !{i32 7, !"Dwarf Version", i32 5}
!207 = !{i32 2, !"Debug Info Version", i32 3}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 8, !"cf-protection-branch", i32 1}
!210 = !{i32 4, !"function_return_thunk_extern", i32 1}
!211 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!212 = !{i32 1, !"Code Model", i32 2}
!213 = !{i32 1, !"override-stack-alignment", i32 8}
!214 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!215 = distinct !DISubprogram(name: "ZSTD_DDict_dictContent", scope: !1, file: !1, line: 43, type: !216, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !220)
!216 = !DISubroutineType(types: !217)
!217 = !{!120, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!220 = !{!221}
!221 = !DILocalVariable(name: "ddict", arg: 1, scope: !215, file: !1, line: 43, type: !218)
!222 = !DILocation(line: 43, column: 54, scope: !215)
!223 = !DILocation(line: 46, column: 12, scope: !215)
!224 = !DILocation(line: 46, column: 19, scope: !215)
!225 = !DILocation(line: 46, column: 5, scope: !215)
!226 = distinct !DISubprogram(name: "ZSTD_DDict_dictSize", scope: !1, file: !1, line: 49, type: !227, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !229)
!227 = !DISubroutineType(types: !228)
!228 = !{!123, !218}
!229 = !{!230}
!230 = !DILocalVariable(name: "ddict", arg: 1, scope: !226, file: !1, line: 49, type: !218)
!231 = !DILocation(line: 49, column: 46, scope: !226)
!232 = !DILocation(line: 52, column: 12, scope: !226)
!233 = !DILocation(line: 52, column: 19, scope: !226)
!234 = !DILocation(line: 52, column: 5, scope: !226)
!235 = distinct !DISubprogram(name: "ZSTD_copyDDictParameters", scope: !1, file: !1, line: 55, type: !236, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !365)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !238, !218}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DCtx", file: !4, line: 216, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_DCtx_s", file: !17, line: 125, size: 767552, elements: !241)
!241 = !{!242, !245, !246, !247, !250, !251, !255, !256, !257, !258, !259, !260, !273, !278, !279, !281, !283, !284, !285, !299, !300, !302, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !317, !326, !328, !330, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !344, !351, !353, !354, !356, !360, !364}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "LLTptr", scope: !240, file: !17, line: 127, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "MLTptr", scope: !240, file: !17, line: 128, baseType: !243, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "OFTptr", scope: !240, file: !17, line: 129, baseType: !243, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "HUFptr", scope: !240, file: !17, line: 130, baseType: !248, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !240, file: !17, line: 131, baseType: !129, size: 218336, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !240, file: !17, line: 132, baseType: !252, size: 20480, offset: 218592)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 20480, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 640)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "previousDstEnd", scope: !240, file: !17, line: 133, baseType: !120, size: 64, offset: 239104)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "prefixStart", scope: !240, file: !17, line: 134, baseType: !120, size: 64, offset: 239168)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "virtualStart", scope: !240, file: !17, line: 135, baseType: !120, size: 64, offset: 239232)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "dictEnd", scope: !240, file: !17, line: 136, baseType: !120, size: 64, offset: 239296)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "expected", scope: !240, file: !17, line: 137, baseType: !123, size: 64, offset: 239360)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "fParams", scope: !240, file: !17, line: 138, baseType: !261, size: 320, offset: 239424)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_frameHeader", file: !4, line: 2483, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 2475, size: 320, elements: !263)
!263 = !{!264, !266, !267, !268, !270, !271, !272}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "frameContentSize", scope: !262, file: !4, line: 2476, baseType: !265, size: 64)
!265 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "windowSize", scope: !262, file: !4, line: 2477, baseType: !265, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "blockSizeMax", scope: !262, file: !4, line: 2478, baseType: !5, size: 32, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "frameType", scope: !262, file: !4, line: 2479, baseType: !269, size: 32, offset: 160)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_frameType_e", file: !4, line: 2474, baseType: !3)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "headerSize", scope: !262, file: !4, line: 2480, baseType: !5, size: 32, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dictID", scope: !262, file: !4, line: 2481, baseType: !5, size: 32, offset: 224)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "checksumFlag", scope: !262, file: !4, line: 2482, baseType: !5, size: 32, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "processedCSize", scope: !240, file: !17, line: 139, baseType: !274, size: 64, offset: 239744)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "U64", file: !105, line: 39, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !107, line: 113, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !109, line: 23, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !111, line: 31, baseType: !265)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "decodedSize", scope: !240, file: !17, line: 140, baseType: !274, size: 64, offset: 239808)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "bType", scope: !240, file: !17, line: 141, baseType: !280, size: 32, offset: 239872)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockType_e", file: !10, line: 81, baseType: !9)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "stage", scope: !240, file: !17, line: 142, baseType: !282, size: 32, offset: 239904)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dStage", file: !17, line: 91, baseType: !16)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "litEntropy", scope: !240, file: !17, line: 143, baseType: !146, size: 32, offset: 239936)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "fseEntropy", scope: !240, file: !17, line: 144, baseType: !146, size: 32, offset: 239968)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "xxhState", scope: !240, file: !17, line: 145, baseType: !286, size: 640, offset: 240000)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xxh64_state", file: !287, line: 160, size: 640, elements: !288)
!287 = !DIFile(filename: "./include/linux/xxhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c71ec635eedf0b4cf42578b400352c76")
!288 = !{!289, !290, !291, !292, !293, !294, !298}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "total_len", scope: !286, file: !287, line: 161, baseType: !275, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !286, file: !287, line: 162, baseType: !275, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !286, file: !287, line: 163, baseType: !275, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !286, file: !287, line: 164, baseType: !275, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !286, file: !287, line: 165, baseType: !275, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "mem64", scope: !286, file: !287, line: 166, baseType: !295, size: 256, offset: 320)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 256, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 4)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "memsize", scope: !286, file: !287, line: 167, baseType: !147, size: 32, offset: 576)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "headerSize", scope: !240, file: !17, line: 146, baseType: !123, size: 64, offset: 240640)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !240, file: !17, line: 147, baseType: !301, size: 32, offset: 240704)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_format_e", file: !4, line: 1233, baseType: !27)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "forceIgnoreChecksum", scope: !240, file: !17, line: 148, baseType: !303, size: 32, offset: 240736)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_forceIgnoreChecksum_e", file: !4, line: 1239, baseType: !31)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "validateChecksum", scope: !240, file: !17, line: 149, baseType: !146, size: 32, offset: 240768)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "litPtr", scope: !240, file: !17, line: 150, baseType: !102, size: 64, offset: 240832)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "customMem", scope: !240, file: !17, line: 151, baseType: !174, size: 192, offset: 240896)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "litSize", scope: !240, file: !17, line: 152, baseType: !123, size: 64, offset: 241088)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rleSize", scope: !240, file: !17, line: 153, baseType: !123, size: 64, offset: 241152)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "staticSize", scope: !240, file: !17, line: 154, baseType: !123, size: 64, offset: 241216)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "bmi2", scope: !240, file: !17, line: 156, baseType: !36, size: 32, offset: 241280)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ddictLocal", scope: !240, file: !17, line: 160, baseType: !113, size: 64, offset: 241344)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ddict", scope: !240, file: !17, line: 161, baseType: !218, size: 64, offset: 241408)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dictID", scope: !240, file: !17, line: 162, baseType: !146, size: 32, offset: 241472)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ddictIsCold", scope: !240, file: !17, line: 163, baseType: !36, size: 32, offset: 241504)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dictUses", scope: !240, file: !17, line: 164, baseType: !316, size: 32, offset: 241536)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dictUses_e", file: !17, line: 100, baseType: !35)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ddictSet", scope: !240, file: !17, line: 165, baseType: !318, size: 64, offset: 241600)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DDictHashSet", file: !17, line: 107, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 103, size: 192, elements: !321)
!321 = !{!322, !324, !325}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ddictPtrTable", scope: !320, file: !17, line: 104, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "ddictPtrTableSize", scope: !320, file: !17, line: 105, baseType: !123, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ddictPtrCount", scope: !320, file: !17, line: 106, baseType: !123, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "refMultipleDDicts", scope: !240, file: !17, line: 166, baseType: !327, size: 32, offset: 241664)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_refMultipleDDicts_e", file: !4, line: 1245, baseType: !41)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "streamStage", scope: !240, file: !17, line: 169, baseType: !329, size: 32, offset: 241696)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dStreamStage", file: !17, line: 94, baseType: !45)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "inBuff", scope: !240, file: !17, line: 170, baseType: !331, size: 64, offset: 241728)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "inBuffSize", scope: !240, file: !17, line: 171, baseType: !123, size: 64, offset: 241792)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "inPos", scope: !240, file: !17, line: 172, baseType: !123, size: 64, offset: 241856)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "maxWindowSize", scope: !240, file: !17, line: 173, baseType: !123, size: 64, offset: 241920)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "outBuff", scope: !240, file: !17, line: 174, baseType: !331, size: 64, offset: 241984)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "outBuffSize", scope: !240, file: !17, line: 175, baseType: !123, size: 64, offset: 242048)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "outStart", scope: !240, file: !17, line: 176, baseType: !123, size: 64, offset: 242112)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "outEnd", scope: !240, file: !17, line: 177, baseType: !123, size: 64, offset: 242176)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "lhSize", scope: !240, file: !17, line: 178, baseType: !123, size: 64, offset: 242240)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "hostageByte", scope: !240, file: !17, line: 179, baseType: !146, size: 32, offset: 242304)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "noForwardProgress", scope: !240, file: !17, line: 180, baseType: !36, size: 32, offset: 242336)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "outBufferMode", scope: !240, file: !17, line: 181, baseType: !343, size: 32, offset: 242368)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_bufferMode_e", file: !10, line: 270, baseType: !52)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "expectedOutBuffer", scope: !240, file: !17, line: 182, baseType: !345, size: 192, offset: 242432)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_outBuffer", file: !4, line: 597, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_outBuffer_s", file: !4, line: 593, size: 192, elements: !347)
!347 = !{!348, !349, !350}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !346, file: !4, line: 594, baseType: !118, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !346, file: !4, line: 595, baseType: !123, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !346, file: !4, line: 596, baseType: !123, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "litBuffer", scope: !240, file: !17, line: 185, baseType: !352, size: 64, offset: 242624)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "litBufferEnd", scope: !240, file: !17, line: 186, baseType: !102, size: 64, offset: 242688)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "litBufferLocation", scope: !240, file: !17, line: 187, baseType: !355, size: 32, offset: 242752)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_litLocation_e", file: !17, line: 123, baseType: !56)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "litExtraBuffer", scope: !240, file: !17, line: 188, baseType: !357, size: 524544, offset: 242784)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 524544, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 65568)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "headerBuffer", scope: !240, file: !17, line: 189, baseType: !361, size: 144, offset: 767328)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 144, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 18)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "oversizedDuration", scope: !240, file: !17, line: 191, baseType: !123, size: 64, offset: 767488)
!365 = !{!366, !367}
!366 = !DILocalVariable(name: "dctx", arg: 1, scope: !235, file: !1, line: 55, type: !238)
!367 = !DILocalVariable(name: "ddict", arg: 2, scope: !235, file: !1, line: 55, type: !218)
!368 = !DILocation(line: 55, column: 42, scope: !235)
!369 = !DILocation(line: 55, column: 66, scope: !235)
!370 = !DILocation(line: 60, column: 20, scope: !235)
!371 = !DILocation(line: 60, column: 27, scope: !235)
!372 = !DILocation(line: 60, column: 5, scope: !235)
!373 = !DILocation(line: 60, column: 11, scope: !235)
!374 = !DILocation(line: 60, column: 18, scope: !235)
!375 = !DILocation(line: 61, column: 25, scope: !235)
!376 = !DILocation(line: 61, column: 32, scope: !235)
!377 = !DILocation(line: 61, column: 5, scope: !235)
!378 = !DILocation(line: 61, column: 11, scope: !235)
!379 = !DILocation(line: 61, column: 23, scope: !235)
!380 = !DILocation(line: 62, column: 26, scope: !235)
!381 = !DILocation(line: 62, column: 33, scope: !235)
!382 = !DILocation(line: 62, column: 5, scope: !235)
!383 = !DILocation(line: 62, column: 11, scope: !235)
!384 = !DILocation(line: 62, column: 24, scope: !235)
!385 = !DILocation(line: 63, column: 34, scope: !235)
!386 = !DILocation(line: 63, column: 41, scope: !235)
!387 = !DILocation(line: 63, column: 55, scope: !235)
!388 = !DILocation(line: 63, column: 62, scope: !235)
!389 = !DILocation(line: 63, column: 53, scope: !235)
!390 = !DILocation(line: 63, column: 5, scope: !235)
!391 = !DILocation(line: 63, column: 11, scope: !235)
!392 = !DILocation(line: 63, column: 19, scope: !235)
!393 = !DILocation(line: 64, column: 28, scope: !235)
!394 = !DILocation(line: 64, column: 34, scope: !235)
!395 = !DILocation(line: 64, column: 5, scope: !235)
!396 = !DILocation(line: 64, column: 11, scope: !235)
!397 = !DILocation(line: 64, column: 26, scope: !235)
!398 = !DILocation(line: 69, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !235, file: !1, line: 69, column: 9)
!400 = !DILocation(line: 69, column: 16, scope: !399)
!401 = !DILocation(line: 69, column: 9, scope: !235)
!402 = !DILocation(line: 70, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !1, line: 69, column: 32)
!404 = !DILocation(line: 70, column: 15, scope: !403)
!405 = !DILocation(line: 70, column: 26, scope: !403)
!406 = !DILocation(line: 71, column: 9, scope: !403)
!407 = !DILocation(line: 71, column: 15, scope: !403)
!408 = !DILocation(line: 71, column: 26, scope: !403)
!409 = !DILocation(line: 72, column: 24, scope: !403)
!410 = !DILocation(line: 72, column: 31, scope: !403)
!411 = !DILocation(line: 72, column: 39, scope: !403)
!412 = !DILocation(line: 72, column: 9, scope: !403)
!413 = !DILocation(line: 72, column: 15, scope: !403)
!414 = !DILocation(line: 72, column: 22, scope: !403)
!415 = !DILocation(line: 73, column: 24, scope: !403)
!416 = !DILocation(line: 73, column: 31, scope: !403)
!417 = !DILocation(line: 73, column: 39, scope: !403)
!418 = !DILocation(line: 73, column: 9, scope: !403)
!419 = !DILocation(line: 73, column: 15, scope: !403)
!420 = !DILocation(line: 73, column: 22, scope: !403)
!421 = !DILocation(line: 74, column: 24, scope: !403)
!422 = !DILocation(line: 74, column: 31, scope: !403)
!423 = !DILocation(line: 74, column: 39, scope: !403)
!424 = !DILocation(line: 74, column: 9, scope: !403)
!425 = !DILocation(line: 74, column: 15, scope: !403)
!426 = !DILocation(line: 74, column: 22, scope: !403)
!427 = !DILocation(line: 75, column: 24, scope: !403)
!428 = !DILocation(line: 75, column: 31, scope: !403)
!429 = !DILocation(line: 75, column: 39, scope: !403)
!430 = !DILocation(line: 75, column: 9, scope: !403)
!431 = !DILocation(line: 75, column: 15, scope: !403)
!432 = !DILocation(line: 75, column: 22, scope: !403)
!433 = !DILocation(line: 76, column: 32, scope: !403)
!434 = !DILocation(line: 76, column: 39, scope: !403)
!435 = !DILocation(line: 76, column: 47, scope: !403)
!436 = !DILocation(line: 76, column: 9, scope: !403)
!437 = !DILocation(line: 76, column: 15, scope: !403)
!438 = !DILocation(line: 76, column: 23, scope: !403)
!439 = !DILocation(line: 76, column: 30, scope: !403)
!440 = !DILocation(line: 77, column: 32, scope: !403)
!441 = !DILocation(line: 77, column: 39, scope: !403)
!442 = !DILocation(line: 77, column: 47, scope: !403)
!443 = !DILocation(line: 77, column: 9, scope: !403)
!444 = !DILocation(line: 77, column: 15, scope: !403)
!445 = !DILocation(line: 77, column: 23, scope: !403)
!446 = !DILocation(line: 77, column: 30, scope: !403)
!447 = !DILocation(line: 78, column: 32, scope: !403)
!448 = !DILocation(line: 78, column: 39, scope: !403)
!449 = !DILocation(line: 78, column: 47, scope: !403)
!450 = !DILocation(line: 78, column: 9, scope: !403)
!451 = !DILocation(line: 78, column: 15, scope: !403)
!452 = !DILocation(line: 78, column: 23, scope: !403)
!453 = !DILocation(line: 78, column: 30, scope: !403)
!454 = !DILocation(line: 79, column: 5, scope: !403)
!455 = !DILocation(line: 80, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !399, file: !1, line: 79, column: 12)
!457 = !DILocation(line: 80, column: 15, scope: !456)
!458 = !DILocation(line: 80, column: 26, scope: !456)
!459 = !DILocation(line: 81, column: 9, scope: !456)
!460 = !DILocation(line: 81, column: 15, scope: !456)
!461 = !DILocation(line: 81, column: 26, scope: !456)
!462 = !DILocation(line: 83, column: 1, scope: !235)
!463 = distinct !DISubprogram(name: "ZSTD_createDDict_advanced", scope: !1, file: !1, line: 142, type: !464, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !468)
!464 = !DISubroutineType(types: !465)
!465 = !{!113, !120, !123, !466, !467, !174}
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dictLoadMethod_e", file: !4, line: 1226, baseType: !61)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dictContentType_e", file: !4, line: 1221, baseType: !65)
!468 = !{!469, !470, !471, !472, !473, !474, !477}
!469 = !DILocalVariable(name: "dict", arg: 1, scope: !463, file: !1, line: 142, type: !120)
!470 = !DILocalVariable(name: "dictSize", arg: 2, scope: !463, file: !1, line: 142, type: !123)
!471 = !DILocalVariable(name: "dictLoadMethod", arg: 3, scope: !463, file: !1, line: 143, type: !466)
!472 = !DILocalVariable(name: "dictContentType", arg: 4, scope: !463, file: !1, line: 144, type: !467)
!473 = !DILocalVariable(name: "customMem", arg: 5, scope: !463, file: !1, line: 145, type: !174)
!474 = !DILocalVariable(name: "ddict", scope: !475, file: !1, line: 149, type: !476)
!475 = distinct !DILexicalBlock(scope: !463, file: !1, line: 149, column: 5)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!477 = !DILocalVariable(name: "initResult", scope: !478, file: !1, line: 152, type: !479)
!478 = distinct !DILexicalBlock(scope: !475, file: !1, line: 152, column: 9)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!480 = !DILocation(line: 142, column: 51, scope: !463)
!481 = !DILocation(line: 142, column: 64, scope: !463)
!482 = !DILocation(line: 143, column: 61, scope: !463)
!483 = !DILocation(line: 144, column: 62, scope: !463)
!484 = !DILocation(line: 145, column: 54, scope: !463)
!485 = !DILocation(line: 147, column: 21, scope: !486)
!486 = distinct !DILexicalBlock(scope: !463, file: !1, line: 147, column: 9)
!487 = !DILocation(line: 147, column: 10, scope: !486)
!488 = !DILocation(line: 147, column: 48, scope: !486)
!489 = !DILocation(line: 147, column: 37, scope: !486)
!490 = !DILocation(line: 147, column: 34, scope: !486)
!491 = !DILocation(line: 147, column: 9, scope: !463)
!492 = !DILocation(line: 147, column: 61, scope: !486)
!493 = !DILocation(line: 149, column: 9, scope: !475)
!494 = !DILocation(line: 149, column: 27, scope: !475)
!495 = !DILocation(line: 149, column: 49, scope: !475)
!496 = !DILocation(line: 150, column: 13, scope: !497)
!497 = distinct !DILexicalBlock(scope: !475, file: !1, line: 150, column: 13)
!498 = !DILocation(line: 150, column: 19, scope: !497)
!499 = !DILocation(line: 150, column: 13, scope: !475)
!500 = !DILocation(line: 150, column: 28, scope: !497)
!501 = !DILocation(line: 151, column: 9, scope: !475)
!502 = !DILocation(line: 151, column: 16, scope: !475)
!503 = !DILocation(line: 151, column: 23, scope: !475)
!504 = !DILocation(line: 152, column: 13, scope: !478)
!505 = !DILocation(line: 152, column: 26, scope: !478)
!506 = !DILocation(line: 152, column: 63, scope: !478)
!507 = !DILocation(line: 153, column: 45, scope: !478)
!508 = !DILocation(line: 153, column: 51, scope: !478)
!509 = !DILocation(line: 154, column: 45, scope: !478)
!510 = !DILocation(line: 154, column: 61, scope: !478)
!511 = !DILocation(line: 152, column: 39, scope: !478)
!512 = !DILocation(line: 155, column: 30, scope: !513)
!513 = distinct !DILexicalBlock(scope: !478, file: !1, line: 155, column: 17)
!514 = !DILocation(line: 155, column: 17, scope: !513)
!515 = !DILocation(line: 155, column: 17, scope: !478)
!516 = !DILocation(line: 156, column: 32, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !1, line: 155, column: 43)
!518 = !DILocation(line: 156, column: 17, scope: !517)
!519 = !DILocation(line: 157, column: 17, scope: !517)
!520 = !DILocation(line: 158, column: 13, scope: !475)
!521 = !DILocation(line: 159, column: 16, scope: !475)
!522 = !DILocation(line: 159, column: 9, scope: !475)
!523 = !DILocation(line: 160, column: 5, scope: !463)
!524 = !DILocation(line: 161, column: 1, scope: !463)
!525 = !DISubprogram(name: "ZSTD_customMalloc", scope: !10, file: !10, line: 348, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!526 = !DISubroutineType(types: !527)
!527 = !{!118, !123, !174}
!528 = distinct !DISubprogram(name: "ZSTD_initDDict_internal", scope: !1, file: !1, line: 117, type: !529, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !531)
!529 = !DISubroutineType(types: !530)
!530 = !{!123, !113, !120, !123, !466, !467}
!531 = !{!532, !533, !534, !535, !536, !537, !541}
!532 = !DILocalVariable(name: "ddict", arg: 1, scope: !528, file: !1, line: 117, type: !113)
!533 = !DILocalVariable(name: "dict", arg: 2, scope: !528, file: !1, line: 118, type: !120)
!534 = !DILocalVariable(name: "dictSize", arg: 3, scope: !528, file: !1, line: 118, type: !123)
!535 = !DILocalVariable(name: "dictLoadMethod", arg: 4, scope: !528, file: !1, line: 119, type: !466)
!536 = !DILocalVariable(name: "dictContentType", arg: 5, scope: !528, file: !1, line: 120, type: !467)
!537 = !DILocalVariable(name: "internalBuffer", scope: !538, file: !1, line: 127, type: !540)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 126, column: 12)
!539 = distinct !DILexicalBlock(scope: !528, file: !1, line: 122, column: 9)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!541 = !DILocalVariable(name: "err_code", scope: !542, file: !1, line: 137, type: !479)
!542 = distinct !DILexicalBlock(scope: !528, file: !1, line: 137, column: 5)
!543 = !DILocation(line: 117, column: 51, scope: !528)
!544 = !DILocation(line: 118, column: 51, scope: !528)
!545 = !DILocation(line: 118, column: 64, scope: !528)
!546 = !DILocation(line: 119, column: 61, scope: !528)
!547 = !DILocation(line: 120, column: 62, scope: !528)
!548 = !DILocation(line: 122, column: 10, scope: !539)
!549 = !DILocation(line: 122, column: 25, scope: !539)
!550 = !DILocation(line: 122, column: 44, scope: !539)
!551 = !DILocation(line: 122, column: 49, scope: !539)
!552 = !DILocation(line: 122, column: 55, scope: !539)
!553 = !DILocation(line: 122, column: 60, scope: !539)
!554 = !DILocation(line: 122, column: 9, scope: !528)
!555 = !DILocation(line: 123, column: 9, scope: !556)
!556 = distinct !DILexicalBlock(scope: !539, file: !1, line: 122, column: 71)
!557 = !DILocation(line: 123, column: 16, scope: !556)
!558 = !DILocation(line: 123, column: 27, scope: !556)
!559 = !DILocation(line: 124, column: 30, scope: !556)
!560 = !DILocation(line: 124, column: 9, scope: !556)
!561 = !DILocation(line: 124, column: 16, scope: !556)
!562 = !DILocation(line: 124, column: 28, scope: !556)
!563 = !DILocation(line: 125, column: 14, scope: !564)
!564 = distinct !DILexicalBlock(scope: !556, file: !1, line: 125, column: 13)
!565 = !DILocation(line: 125, column: 13, scope: !556)
!566 = !DILocation(line: 125, column: 29, scope: !564)
!567 = !DILocation(line: 125, column: 20, scope: !564)
!568 = !DILocation(line: 126, column: 5, scope: !556)
!569 = !DILocation(line: 127, column: 9, scope: !538)
!570 = !DILocation(line: 127, column: 21, scope: !538)
!571 = !DILocation(line: 127, column: 56, scope: !538)
!572 = !DILocation(line: 127, column: 66, scope: !538)
!573 = !DILocation(line: 127, column: 73, scope: !538)
!574 = !DILocation(line: 127, column: 38, scope: !538)
!575 = !DILocation(line: 128, column: 29, scope: !538)
!576 = !DILocation(line: 128, column: 9, scope: !538)
!577 = !DILocation(line: 128, column: 16, scope: !538)
!578 = !DILocation(line: 128, column: 27, scope: !538)
!579 = !DILocation(line: 129, column: 30, scope: !538)
!580 = !DILocation(line: 129, column: 9, scope: !538)
!581 = !DILocation(line: 129, column: 16, scope: !538)
!582 = !DILocation(line: 129, column: 28, scope: !538)
!583 = !DILocation(line: 130, column: 14, scope: !584)
!584 = distinct !DILexicalBlock(scope: !538, file: !1, line: 130, column: 13)
!585 = !DILocation(line: 130, column: 13, scope: !538)
!586 = !DILocation(line: 130, column: 30, scope: !584)
!587 = !DILocation(line: 131, column: 9, scope: !538)
!588 = !DILocation(line: 132, column: 5, scope: !539)
!589 = !DILocation(line: 133, column: 23, scope: !528)
!590 = !DILocation(line: 133, column: 5, scope: !528)
!591 = !DILocation(line: 133, column: 12, scope: !528)
!592 = !DILocation(line: 133, column: 21, scope: !528)
!593 = !DILocation(line: 134, column: 5, scope: !528)
!594 = !DILocation(line: 134, column: 12, scope: !528)
!595 = !DILocation(line: 134, column: 20, scope: !528)
!596 = !DILocation(line: 134, column: 32, scope: !528)
!597 = !DILocation(line: 137, column: 5, scope: !528)
!598 = !DILocation(line: 137, column: 5, scope: !542)
!599 = !DILocation(line: 137, column: 5, scope: !600)
!600 = distinct !DILexicalBlock(scope: !542, file: !1, line: 137, column: 5)
!601 = !DILocation(line: 137, column: 5, scope: !602)
!602 = distinct !DILexicalBlock(scope: !600, file: !1, line: 137, column: 5)
!603 = !DILocation(line: 139, column: 5, scope: !528)
!604 = !DILocation(line: 140, column: 1, scope: !528)
!605 = distinct !DISubprogram(name: "ERR_isError", scope: !606, file: !606, line: 47, type: !607, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !609)
!606 = !DIFile(filename: "lib/zstd/decompress/../common/error_private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c1e76caf533df7af314a25a57fa92da")
!607 = !DISubroutineType(types: !608)
!608 = !{!5, !123}
!609 = !{!610}
!610 = !DILocalVariable(name: "code", arg: 1, scope: !605, file: !606, line: 47, type: !123)
!611 = !DILocation(line: 47, column: 40, scope: !605)
!612 = !DILocation(line: 47, column: 56, scope: !605)
!613 = !DILocation(line: 47, column: 61, scope: !605)
!614 = !DILocation(line: 47, column: 48, scope: !605)
!615 = distinct !DISubprogram(name: "ZSTD_freeDDict", scope: !1, file: !1, line: 209, type: !616, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{!123, !113}
!618 = !{!619, !620}
!619 = !DILocalVariable(name: "ddict", arg: 1, scope: !615, file: !1, line: 209, type: !113)
!620 = !DILocalVariable(name: "cMem", scope: !621, file: !1, line: 212, type: !622)
!621 = distinct !DILexicalBlock(scope: !615, file: !1, line: 212, column: 5)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!623 = !DILocation(line: 209, column: 35, scope: !615)
!624 = !DILocation(line: 211, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !615, file: !1, line: 211, column: 9)
!626 = !DILocation(line: 211, column: 14, scope: !625)
!627 = !DILocation(line: 211, column: 9, scope: !615)
!628 = !DILocation(line: 211, column: 22, scope: !625)
!629 = !DILocation(line: 212, column: 9, scope: !621)
!630 = !DILocation(line: 212, column: 30, scope: !621)
!631 = !DILocation(line: 212, column: 37, scope: !621)
!632 = !DILocation(line: 212, column: 44, scope: !621)
!633 = !DILocation(line: 213, column: 25, scope: !621)
!634 = !DILocation(line: 213, column: 32, scope: !621)
!635 = !DILocation(line: 213, column: 9, scope: !621)
!636 = !DILocation(line: 214, column: 25, scope: !621)
!637 = !DILocation(line: 214, column: 9, scope: !621)
!638 = !DILocation(line: 215, column: 9, scope: !621)
!639 = !DILocation(line: 216, column: 5, scope: !615)
!640 = !DILocation(line: 217, column: 1, scope: !615)
!641 = distinct !DISubprogram(name: "ZSTD_createDDict", scope: !1, file: !1, line: 167, type: !642, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{!113, !120, !123}
!644 = !{!645, !646, !647}
!645 = !DILocalVariable(name: "dict", arg: 1, scope: !641, file: !1, line: 167, type: !120)
!646 = !DILocalVariable(name: "dictSize", arg: 2, scope: !641, file: !1, line: 167, type: !123)
!647 = !DILocalVariable(name: "allocator", scope: !641, file: !1, line: 169, type: !622)
!648 = !DILocation(line: 167, column: 42, scope: !641)
!649 = !DILocation(line: 167, column: 55, scope: !641)
!650 = !DILocation(line: 169, column: 5, scope: !641)
!651 = !DILocation(line: 169, column: 26, scope: !641)
!652 = !DILocation(line: 170, column: 38, scope: !641)
!653 = !DILocation(line: 170, column: 44, scope: !641)
!654 = !DILocation(line: 170, column: 12, scope: !641)
!655 = !DILocation(line: 171, column: 1, scope: !641)
!656 = !DILocation(line: 170, column: 5, scope: !641)
!657 = distinct !DISubprogram(name: "ZSTD_createDDict_byReference", scope: !1, file: !1, line: 177, type: !642, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !658)
!658 = !{!659, !660, !661}
!659 = !DILocalVariable(name: "dictBuffer", arg: 1, scope: !657, file: !1, line: 177, type: !120)
!660 = !DILocalVariable(name: "dictSize", arg: 2, scope: !657, file: !1, line: 177, type: !123)
!661 = !DILocalVariable(name: "allocator", scope: !657, file: !1, line: 179, type: !622)
!662 = !DILocation(line: 177, column: 54, scope: !657)
!663 = !DILocation(line: 177, column: 73, scope: !657)
!664 = !DILocation(line: 179, column: 5, scope: !657)
!665 = !DILocation(line: 179, column: 26, scope: !657)
!666 = !DILocation(line: 180, column: 38, scope: !657)
!667 = !DILocation(line: 180, column: 50, scope: !657)
!668 = !DILocation(line: 180, column: 12, scope: !657)
!669 = !DILocation(line: 181, column: 1, scope: !657)
!670 = !DILocation(line: 180, column: 5, scope: !657)
!671 = distinct !DISubprogram(name: "ZSTD_initStaticDDict", scope: !1, file: !1, line: 184, type: !672, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{!218, !118, !123, !120, !123, !466, !467}
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682}
!675 = !DILocalVariable(name: "sBuffer", arg: 1, scope: !671, file: !1, line: 185, type: !118)
!676 = !DILocalVariable(name: "sBufferSize", arg: 2, scope: !671, file: !1, line: 185, type: !123)
!677 = !DILocalVariable(name: "dict", arg: 3, scope: !671, file: !1, line: 186, type: !120)
!678 = !DILocalVariable(name: "dictSize", arg: 4, scope: !671, file: !1, line: 186, type: !123)
!679 = !DILocalVariable(name: "dictLoadMethod", arg: 5, scope: !671, file: !1, line: 187, type: !466)
!680 = !DILocalVariable(name: "dictContentType", arg: 6, scope: !671, file: !1, line: 188, type: !467)
!681 = !DILocalVariable(name: "neededSpace", scope: !671, file: !1, line: 190, type: !479)
!682 = !DILocalVariable(name: "ddict", scope: !671, file: !1, line: 192, type: !476)
!683 = !DILocation(line: 185, column: 39, scope: !671)
!684 = !DILocation(line: 185, column: 55, scope: !671)
!685 = !DILocation(line: 186, column: 45, scope: !671)
!686 = !DILocation(line: 186, column: 58, scope: !671)
!687 = !DILocation(line: 187, column: 55, scope: !671)
!688 = !DILocation(line: 188, column: 56, scope: !671)
!689 = !DILocation(line: 190, column: 5, scope: !671)
!690 = !DILocation(line: 190, column: 18, scope: !671)
!691 = !DILocation(line: 191, column: 33, scope: !671)
!692 = !DILocation(line: 191, column: 48, scope: !671)
!693 = !DILocation(line: 191, column: 72, scope: !671)
!694 = !DILocation(line: 191, column: 30, scope: !671)
!695 = !DILocation(line: 192, column: 5, scope: !671)
!696 = !DILocation(line: 192, column: 23, scope: !671)
!697 = !DILocation(line: 192, column: 44, scope: !671)
!698 = !DILocation(line: 195, column: 17, scope: !699)
!699 = distinct !DILexicalBlock(scope: !671, file: !1, line: 195, column: 9)
!700 = !DILocation(line: 195, column: 9, scope: !699)
!701 = !DILocation(line: 195, column: 25, scope: !699)
!702 = !DILocation(line: 195, column: 9, scope: !671)
!703 = !DILocation(line: 195, column: 30, scope: !699)
!704 = !DILocation(line: 196, column: 9, scope: !705)
!705 = distinct !DILexicalBlock(scope: !671, file: !1, line: 196, column: 9)
!706 = !DILocation(line: 196, column: 23, scope: !705)
!707 = !DILocation(line: 196, column: 21, scope: !705)
!708 = !DILocation(line: 196, column: 9, scope: !671)
!709 = !DILocation(line: 196, column: 36, scope: !705)
!710 = !DILocation(line: 197, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !671, file: !1, line: 197, column: 9)
!712 = !DILocation(line: 197, column: 24, scope: !711)
!713 = !DILocation(line: 197, column: 9, scope: !671)
!714 = !DILocation(line: 198, column: 9, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !1, line: 197, column: 44)
!716 = !DILocation(line: 199, column: 16, scope: !715)
!717 = !DILocation(line: 199, column: 21, scope: !715)
!718 = !DILocation(line: 199, column: 14, scope: !715)
!719 = !DILocation(line: 200, column: 5, scope: !715)
!720 = !DILocation(line: 201, column: 47, scope: !721)
!721 = distinct !DILexicalBlock(scope: !671, file: !1, line: 201, column: 9)
!722 = !DILocation(line: 202, column: 47, scope: !721)
!723 = !DILocation(line: 202, column: 53, scope: !721)
!724 = !DILocation(line: 203, column: 63, scope: !721)
!725 = !DILocation(line: 201, column: 23, scope: !721)
!726 = !DILocation(line: 201, column: 9, scope: !721)
!727 = !DILocation(line: 201, column: 9, scope: !671)
!728 = !DILocation(line: 204, column: 9, scope: !721)
!729 = !DILocation(line: 205, column: 12, scope: !671)
!730 = !DILocation(line: 205, column: 5, scope: !671)
!731 = !DILocation(line: 206, column: 1, scope: !671)
!732 = !DISubprogram(name: "ZSTD_customFree", scope: !10, file: !10, line: 350, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !118, !174}
!735 = distinct !DISubprogram(name: "ZSTD_estimateDDictSize", scope: !1, file: !1, line: 222, type: !736, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!123, !123, !466}
!738 = !{!739, !740}
!739 = !DILocalVariable(name: "dictSize", arg: 1, scope: !735, file: !1, line: 222, type: !123)
!740 = !DILocalVariable(name: "dictLoadMethod", arg: 2, scope: !735, file: !1, line: 222, type: !466)
!741 = !DILocation(line: 222, column: 38, scope: !735)
!742 = !DILocation(line: 222, column: 70, scope: !735)
!743 = !DILocation(line: 224, column: 34, scope: !735)
!744 = !DILocation(line: 224, column: 49, scope: !735)
!745 = !DILocation(line: 224, column: 73, scope: !735)
!746 = !DILocation(line: 224, column: 31, scope: !735)
!747 = !DILocation(line: 224, column: 5, scope: !735)
!748 = distinct !DISubprogram(name: "ZSTD_sizeof_DDict", scope: !1, file: !1, line: 227, type: !227, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !749)
!749 = !{!750}
!750 = !DILocalVariable(name: "ddict", arg: 1, scope: !748, file: !1, line: 227, type: !218)
!751 = !DILocation(line: 227, column: 44, scope: !748)
!752 = !DILocation(line: 229, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !748, file: !1, line: 229, column: 9)
!754 = !DILocation(line: 229, column: 14, scope: !753)
!755 = !DILocation(line: 229, column: 9, scope: !748)
!756 = !DILocation(line: 229, column: 22, scope: !753)
!757 = !DILocation(line: 230, column: 30, scope: !748)
!758 = !DILocation(line: 230, column: 37, scope: !748)
!759 = !DILocation(line: 230, column: 50, scope: !748)
!760 = !DILocation(line: 230, column: 57, scope: !748)
!761 = !DILocation(line: 230, column: 27, scope: !748)
!762 = !DILocation(line: 230, column: 5, scope: !748)
!763 = !DILocation(line: 231, column: 1, scope: !748)
!764 = distinct !DISubprogram(name: "ZSTD_getDictID_fromDDict", scope: !1, file: !1, line: 237, type: !765, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{!5, !218}
!767 = !{!768}
!768 = !DILocalVariable(name: "ddict", arg: 1, scope: !764, file: !1, line: 237, type: !218)
!769 = !DILocation(line: 237, column: 53, scope: !764)
!770 = !DILocation(line: 239, column: 9, scope: !771)
!771 = distinct !DILexicalBlock(scope: !764, file: !1, line: 239, column: 9)
!772 = !DILocation(line: 239, column: 14, scope: !771)
!773 = !DILocation(line: 239, column: 9, scope: !764)
!774 = !DILocation(line: 239, column: 22, scope: !771)
!775 = !DILocation(line: 240, column: 36, scope: !764)
!776 = !DILocation(line: 240, column: 43, scope: !764)
!777 = !DILocation(line: 240, column: 56, scope: !764)
!778 = !DILocation(line: 240, column: 63, scope: !764)
!779 = !DILocation(line: 240, column: 12, scope: !764)
!780 = !DILocation(line: 240, column: 5, scope: !764)
!781 = !DILocation(line: 241, column: 1, scope: !764)
!782 = !DISubprogram(name: "ZSTD_getDictID_fromDict", scope: !4, file: !4, line: 897, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DISubroutineType(types: !784)
!784 = !{!5, !120, !123}
!785 = distinct !DISubprogram(name: "ZSTD_loadEntropy_intoDDict", scope: !1, file: !1, line: 87, type: !786, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{!123, !113, !467}
!788 = !{!789, !790, !791}
!789 = !DILocalVariable(name: "ddict", arg: 1, scope: !785, file: !1, line: 87, type: !113)
!790 = !DILocalVariable(name: "dictContentType", arg: 2, scope: !785, file: !1, line: 88, type: !467)
!791 = !DILocalVariable(name: "magic", scope: !792, file: !1, line: 99, type: !793)
!792 = distinct !DILexicalBlock(scope: !785, file: !1, line: 99, column: 5)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!794 = !DILocation(line: 87, column: 40, scope: !785)
!795 = !DILocation(line: 88, column: 51, scope: !785)
!796 = !DILocation(line: 90, column: 5, scope: !785)
!797 = !DILocation(line: 90, column: 12, scope: !785)
!798 = !DILocation(line: 90, column: 19, scope: !785)
!799 = !DILocation(line: 91, column: 5, scope: !785)
!800 = !DILocation(line: 91, column: 12, scope: !785)
!801 = !DILocation(line: 91, column: 27, scope: !785)
!802 = !DILocation(line: 92, column: 9, scope: !803)
!803 = distinct !DILexicalBlock(scope: !785, file: !1, line: 92, column: 9)
!804 = !DILocation(line: 92, column: 25, scope: !803)
!805 = !DILocation(line: 92, column: 9, scope: !785)
!806 = !DILocation(line: 92, column: 49, scope: !803)
!807 = !DILocation(line: 94, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !785, file: !1, line: 94, column: 9)
!809 = !DILocation(line: 94, column: 16, scope: !808)
!810 = !DILocation(line: 94, column: 25, scope: !808)
!811 = !DILocation(line: 94, column: 9, scope: !785)
!812 = !DILocation(line: 95, column: 13, scope: !813)
!813 = distinct !DILexicalBlock(scope: !814, file: !1, line: 95, column: 13)
!814 = distinct !DILexicalBlock(scope: !808, file: !1, line: 94, column: 30)
!815 = !DILocation(line: 95, column: 29, scope: !813)
!816 = !DILocation(line: 95, column: 13, scope: !814)
!817 = !DILocation(line: 96, column: 13, scope: !813)
!818 = !DILocation(line: 97, column: 9, scope: !814)
!819 = !DILocation(line: 99, column: 9, scope: !792)
!820 = !DILocation(line: 99, column: 19, scope: !792)
!821 = !DILocation(line: 99, column: 40, scope: !792)
!822 = !DILocation(line: 99, column: 47, scope: !792)
!823 = !DILocation(line: 99, column: 27, scope: !792)
!824 = !DILocation(line: 100, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !792, file: !1, line: 100, column: 13)
!826 = !DILocation(line: 100, column: 19, scope: !825)
!827 = !DILocation(line: 100, column: 13, scope: !792)
!828 = !DILocation(line: 101, column: 17, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !1, line: 101, column: 17)
!830 = distinct !DILexicalBlock(scope: !825, file: !1, line: 100, column: 45)
!831 = !DILocation(line: 101, column: 33, scope: !829)
!832 = !DILocation(line: 101, column: 17, scope: !830)
!833 = !DILocation(line: 102, column: 17, scope: !829)
!834 = !DILocation(line: 103, column: 13, scope: !830)
!835 = !DILocation(line: 105, column: 5, scope: !785)
!836 = !DILocation(line: 106, column: 47, scope: !785)
!837 = !DILocation(line: 106, column: 54, scope: !785)
!838 = !DILocation(line: 106, column: 66, scope: !785)
!839 = !DILocation(line: 106, column: 21, scope: !785)
!840 = !DILocation(line: 106, column: 5, scope: !785)
!841 = !DILocation(line: 106, column: 12, scope: !785)
!842 = !DILocation(line: 106, column: 19, scope: !785)
!843 = !DILocation(line: 109, column: 5, scope: !844)
!844 = distinct !DILexicalBlock(scope: !785, file: !1, line: 109, column: 5)
!845 = !DILocation(line: 109, column: 5, scope: !785)
!846 = !DILocation(line: 109, column: 5, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !1, line: 109, column: 5)
!848 = !DILocation(line: 112, column: 5, scope: !785)
!849 = !DILocation(line: 112, column: 12, scope: !785)
!850 = !DILocation(line: 112, column: 27, scope: !785)
!851 = !DILocation(line: 113, column: 5, scope: !785)
!852 = !DILocation(line: 114, column: 1, scope: !785)
!853 = distinct !DISubprogram(name: "MEM_readLE32", scope: !105, file: !105, line: 169, type: !854, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{!146, !120}
!856 = !{!857}
!857 = !DILocalVariable(name: "memPtr", arg: 1, scope: !853, file: !105, line: 169, type: !120)
!858 = !DILocation(line: 169, column: 41, scope: !853)
!859 = !DILocation(line: 171, column: 31, scope: !853)
!860 = !DILocation(line: 171, column: 12, scope: !853)
!861 = !DILocation(line: 171, column: 5, scope: !853)
!862 = !DISubprogram(name: "ZSTD_loadDEntropy", scope: !17, file: !17, line: 217, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!863 = !DISubroutineType(types: !864)
!864 = !{!123, !865, !866, !479}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!867 = !DILocation(line: 30, column: 50, scope: !197)
!868 = !DILocation(line: 32, column: 9, scope: !203)
!869 = !DILocation(line: 32, column: 9, scope: !197)
!870 = !DILocation(line: 32, column: 2, scope: !197)
