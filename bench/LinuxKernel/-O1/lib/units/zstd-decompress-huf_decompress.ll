; ModuleID = 'lib/zstd/decompress/huf_decompress.c'
source_filename = "lib/zstd/decompress/huf_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.algo_time_t = type { i32, i32 }
%struct.DTableDesc = type { i8, i8, i8, i8 }
%struct.HUF_DEltX1 = type { i8, i8 }
%struct.HUF_ReadDTableX1_Workspace = type { [13 x i32], [13 x i32], [218 x i32], [256 x i8], [256 x i8] }
%struct.anon = type { i64 }
%struct.HUF_ReadDTableX2_Workspace = type { [12 x [13 x i32]], [13 x i32], [15 x i32], [256 x %struct.sortedSymbol_t], [256 x i8], [218 x i32] }
%struct.sortedSymbol_t = type { i8 }
%struct.HUF_DEltX2 = type { i16, i8, i8 }
%struct.BIT_DStream_t = type { i64, i32, ptr, ptr, ptr }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i64 }
%struct.anon.2 = type { i16 }

@algoTime = internal constant [16 x [2 x %struct.algo_time_t]] [[2 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }], [2 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 150, i32 216 }, %struct.algo_time_t { i32 381, i32 119 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 170, i32 205 }, %struct.algo_time_t { i32 514, i32 112 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 177, i32 199 }, %struct.algo_time_t { i32 539, i32 110 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 197, i32 194 }, %struct.algo_time_t { i32 644, i32 107 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 221, i32 192 }, %struct.algo_time_t { i32 735, i32 107 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 256, i32 189 }, %struct.algo_time_t { i32 881, i32 106 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 359, i32 188 }, %struct.algo_time_t { i32 1167, i32 109 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 582, i32 187 }, %struct.algo_time_t { i32 1570, i32 114 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 688, i32 187 }, %struct.algo_time_t { i32 1712, i32 122 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 825, i32 186 }, %struct.algo_time_t { i32 1965, i32 136 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 976, i32 185 }, %struct.algo_time_t { i32 2131, i32 150 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 1180, i32 186 }, %struct.algo_time_t { i32 2070, i32 175 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 1377, i32 185 }, %struct.algo_time_t { i32 1731, i32 202 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 1412, i32 185 }, %struct.algo_time_t { i32 1695, i32 202 }]], align 16, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_readDTableX1_wksp(ptr noundef %DTable, ptr noundef %src, i64 noundef %srcSize, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !214 {
entry:
  %DTable.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !221, metadata !DIExpression()), !dbg !226
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !222, metadata !DIExpression()), !dbg !227
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !223, metadata !DIExpression()), !dbg !228
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !224, metadata !DIExpression()), !dbg !229
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !225, metadata !DIExpression()), !dbg !230
  %0 = load ptr, ptr %DTable.addr, align 8, !dbg !231
  %1 = load ptr, ptr %src.addr, align 8, !dbg !232
  %2 = load i64, ptr %srcSize.addr, align 8, !dbg !233
  %3 = load ptr, ptr %workSpace.addr, align 8, !dbg !234
  %4 = load i64, ptr %wkspSize.addr, align 8, !dbg !235
  %call = call i64 @HUF_readDTableX1_wksp_bmi2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0) #10, !dbg !236
  ret i64 %call, !dbg !237
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_readDTableX1_wksp_bmi2(ptr noundef %DTable, ptr noundef %src, i64 noundef %srcSize, ptr noundef %workSpace, i64 noundef %wkspSize, i32 noundef %bmi2) #0 align 16 !dbg !238 {
entry:
  %retval = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  %tableLog = alloca i32, align 4
  %nbSymbols = alloca i32, align 4
  %iSize = alloca i64, align 8
  %dtPtr = alloca ptr, align 8
  %dt = alloca ptr, align 8
  %wksp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %dtd = alloca %struct.DTableDesc, align 1
  %maxTableLog = alloca i32, align 4
  %targetTableLog = alloca i32, align 4
  %n = alloca i32, align 4
  %nextRankStart = alloca i32, align 4
  %unroll = alloca i32, align 4
  %nLimit = alloca i32, align 4
  %curr = alloca i32, align 4
  %u = alloca i32, align 4
  %w = alloca i64, align 8
  %w64 = alloca i64, align 8
  %w79 = alloca i32, align 4
  %symbol = alloca i32, align 4
  %rankStart82 = alloca i32, align 4
  %symbolCount = alloca i32, align 4
  %length = alloca i32, align 4
  %uStart = alloca i32, align 4
  %nbBits = alloca i8, align 1
  %s = alloca i32, align 4
  %u94 = alloca i32, align 4
  %D = alloca %struct.HUF_DEltX1, align 1
  %D115 = alloca %struct.HUF_DEltX1, align 1
  %D4 = alloca i64, align 8
  %D4152 = alloca i64, align 8
  %D4171 = alloca i64, align 8
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !242, metadata !DIExpression()), !dbg !326
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !243, metadata !DIExpression()), !dbg !327
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !244, metadata !DIExpression()), !dbg !328
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !245, metadata !DIExpression()), !dbg !329
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !246, metadata !DIExpression()), !dbg !330
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !247, metadata !DIExpression()), !dbg !331
  call void @llvm.lifetime.start.p0(i64 4, ptr %tableLog) #11, !dbg !332
  call void @llvm.dbg.declare(metadata ptr %tableLog, metadata !248, metadata !DIExpression()), !dbg !333
  store i32 0, ptr %tableLog, align 4, !dbg !333
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbSymbols) #11, !dbg !334
  call void @llvm.dbg.declare(metadata ptr %nbSymbols, metadata !249, metadata !DIExpression()), !dbg !335
  store i32 0, ptr %nbSymbols, align 4, !dbg !335
  call void @llvm.lifetime.start.p0(i64 8, ptr %iSize) #11, !dbg !336
  call void @llvm.dbg.declare(metadata ptr %iSize, metadata !250, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtPtr) #11, !dbg !338
  call void @llvm.dbg.declare(metadata ptr %dtPtr, metadata !251, metadata !DIExpression()), !dbg !339
  %0 = load ptr, ptr %DTable.addr, align 8, !dbg !340
  %add.ptr = getelementptr i32, ptr %0, i64 1, !dbg !341
  store ptr %add.ptr, ptr %dtPtr, align 8, !dbg !339
  call void @llvm.lifetime.start.p0(i64 8, ptr %dt) #11, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %dt, metadata !253, metadata !DIExpression()), !dbg !343
  %1 = load ptr, ptr %dtPtr, align 8, !dbg !344
  store ptr %1, ptr %dt, align 8, !dbg !343
  call void @llvm.lifetime.start.p0(i64 8, ptr %wksp) #11, !dbg !345
  call void @llvm.dbg.declare(metadata ptr %wksp, metadata !255, metadata !DIExpression()), !dbg !346
  %2 = load ptr, ptr %workSpace.addr, align 8, !dbg !347
  store ptr %2, ptr %wksp, align 8, !dbg !346
  %3 = load i64, ptr %wkspSize.addr, align 8, !dbg !348
  %cmp = icmp ugt i64 1488, %3, !dbg !350
  br i1 %cmp, label %if.then, label %if.end, !dbg !351

if.then:                                          ; preds = %entry
  store i64 -44, ptr %retval, align 8, !dbg !352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup213, !dbg !352

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %wksp, align 8, !dbg !353
  %huffWeight = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %4, i32 0, i32 4, !dbg !354
  %arraydecay = getelementptr inbounds [256 x i8], ptr %huffWeight, i64 0, i64 0, !dbg !353
  %5 = load ptr, ptr %wksp, align 8, !dbg !355
  %rankVal = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %5, i32 0, i32 0, !dbg !356
  %arraydecay1 = getelementptr inbounds [13 x i32], ptr %rankVal, i64 0, i64 0, !dbg !355
  %6 = load ptr, ptr %src.addr, align 8, !dbg !357
  %7 = load i64, ptr %srcSize.addr, align 8, !dbg !358
  %8 = load ptr, ptr %wksp, align 8, !dbg !359
  %statsWksp = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %8, i32 0, i32 2, !dbg !360
  %arraydecay2 = getelementptr inbounds [218 x i32], ptr %statsWksp, i64 0, i64 0, !dbg !359
  %9 = load i32, ptr %bmi2.addr, align 4, !dbg !361
  %call = call i64 @HUF_readStats_wksp(ptr noundef %arraydecay, i64 noundef 256, ptr noundef %arraydecay1, ptr noundef %nbSymbols, ptr noundef %tableLog, ptr noundef %6, i64 noundef %7, ptr noundef %arraydecay2, i64 noundef 872, i32 noundef %9) #10, !dbg !362
  store i64 %call, ptr %iSize, align 8, !dbg !363
  %10 = load i64, ptr %iSize, align 8, !dbg !364
  %call3 = call i32 @ERR_isError(i64 noundef %10) #10, !dbg !366
  %tobool = icmp ne i32 %call3, 0, !dbg !366
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !367

if.then4:                                         ; preds = %if.end
  %11 = load i64, ptr %iSize, align 8, !dbg !368
  store i64 %11, ptr %retval, align 8, !dbg !369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup213, !dbg !369

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !370
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !256, metadata !DIExpression()), !dbg !371
  %12 = load ptr, ptr %DTable.addr, align 8, !dbg !372
  %call6 = call i32 @HUF_getDTableDesc(ptr noundef %12) #10, !dbg !373
  store i32 %call6, ptr %dtd, align 1, !dbg !373
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxTableLog) #11, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %maxTableLog, metadata !265, metadata !DIExpression()), !dbg !375
  %maxTableLog7 = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 0, !dbg !376
  %13 = load i8, ptr %maxTableLog7, align 1, !dbg !376
  %conv = zext i8 %13 to i32, !dbg !377
  %add = add i32 %conv, 1, !dbg !378
  store i32 %add, ptr %maxTableLog, align 4, !dbg !375
  call void @llvm.lifetime.start.p0(i64 4, ptr %targetTableLog) #11, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %targetTableLog, metadata !267, metadata !DIExpression()), !dbg !380
  %14 = load i32, ptr %maxTableLog, align 4, !dbg !381
  %cmp8 = icmp ult i32 %14, 11, !dbg !381
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !381

cond.true:                                        ; preds = %if.end5
  %15 = load i32, ptr %maxTableLog, align 4, !dbg !381
  br label %cond.end, !dbg !381

cond.false:                                       ; preds = %if.end5
  br label %cond.end, !dbg !381

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ 11, %cond.false ], !dbg !381
  store i32 %cond, ptr %targetTableLog, align 4, !dbg !380
  %16 = load ptr, ptr %wksp, align 8, !dbg !382
  %huffWeight10 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %16, i32 0, i32 4, !dbg !383
  %arraydecay11 = getelementptr inbounds [256 x i8], ptr %huffWeight10, i64 0, i64 0, !dbg !382
  %17 = load ptr, ptr %wksp, align 8, !dbg !384
  %rankVal12 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %17, i32 0, i32 0, !dbg !385
  %arraydecay13 = getelementptr inbounds [13 x i32], ptr %rankVal12, i64 0, i64 0, !dbg !384
  %18 = load i32, ptr %nbSymbols, align 4, !dbg !386
  %19 = load i32, ptr %tableLog, align 4, !dbg !387
  %20 = load i32, ptr %targetTableLog, align 4, !dbg !388
  %call14 = call i32 @HUF_rescaleStats(ptr noundef %arraydecay11, ptr noundef %arraydecay13, i32 noundef %18, i32 noundef %19, i32 noundef %20) #10, !dbg !389
  store i32 %call14, ptr %tableLog, align 4, !dbg !390
  %21 = load i32, ptr %tableLog, align 4, !dbg !391
  %maxTableLog15 = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 0, !dbg !393
  %22 = load i8, ptr %maxTableLog15, align 1, !dbg !393
  %conv16 = zext i8 %22 to i32, !dbg !394
  %add17 = add i32 %conv16, 1, !dbg !395
  %cmp18 = icmp ugt i32 %21, %add17, !dbg !396
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !397

if.then20:                                        ; preds = %cond.end
  store i64 -44, ptr %retval, align 8, !dbg !398
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !398

if.end21:                                         ; preds = %cond.end
  %tableType = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 1, !dbg !399
  store i8 0, ptr %tableType, align 1, !dbg !400
  %23 = load i32, ptr %tableLog, align 4, !dbg !401
  %conv22 = trunc i32 %23 to i8, !dbg !402
  %tableLog23 = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 2, !dbg !403
  store i8 %conv22, ptr %tableLog23, align 1, !dbg !404
  %24 = load ptr, ptr %DTable.addr, align 8, !dbg !405
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 1 %dtd, i64 4, i1 false), !dbg !405
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !406
  br label %cleanup, !dbg !406

cleanup:                                          ; preds = %if.end21, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %targetTableLog) #11, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxTableLog) #11, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !406
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup213 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #11, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %n, metadata !268, metadata !DIExpression()), !dbg !408
  call void @llvm.lifetime.start.p0(i64 4, ptr %nextRankStart) #11, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %nextRankStart, metadata !270, metadata !DIExpression()), !dbg !410
  store i32 0, ptr %nextRankStart, align 4, !dbg !410
  call void @llvm.lifetime.start.p0(i64 4, ptr %unroll) #11, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %unroll, metadata !271, metadata !DIExpression()), !dbg !412
  store i32 4, ptr %unroll, align 4, !dbg !412
  call void @llvm.lifetime.start.p0(i64 4, ptr %nLimit) #11, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %nLimit, metadata !273, metadata !DIExpression()), !dbg !414
  %25 = load i32, ptr %nbSymbols, align 4, !dbg !415
  %sub = sub i32 %25, 4, !dbg !416
  %add26 = add i32 %sub, 1, !dbg !417
  store i32 %add26, ptr %nLimit, align 4, !dbg !414
  store i32 0, ptr %n, align 4, !dbg !418
  br label %for.cond, !dbg !419

for.cond:                                         ; preds = %for.inc, %cleanup.cont
  %26 = load i32, ptr %n, align 4, !dbg !420
  %27 = load i32, ptr %tableLog, align 4, !dbg !421
  %add27 = add i32 %27, 1, !dbg !422
  %cmp28 = icmp slt i32 %26, %add27, !dbg !423
  br i1 %cmp28, label %for.body, label %for.end, !dbg !424

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %curr) #11, !dbg !425
  call void @llvm.dbg.declare(metadata ptr %curr, metadata !274, metadata !DIExpression()), !dbg !426
  %28 = load i32, ptr %nextRankStart, align 4, !dbg !427
  store i32 %28, ptr %curr, align 4, !dbg !426
  %29 = load ptr, ptr %wksp, align 8, !dbg !428
  %rankVal30 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %29, i32 0, i32 0, !dbg !429
  %30 = load i32, ptr %n, align 4, !dbg !430
  %idxprom = sext i32 %30 to i64, !dbg !428
  %arrayidx = getelementptr [13 x i32], ptr %rankVal30, i64 0, i64 %idxprom, !dbg !428
  %31 = load i32, ptr %arrayidx, align 4, !dbg !428
  %32 = load i32, ptr %nextRankStart, align 4, !dbg !431
  %add31 = add i32 %32, %31, !dbg !431
  store i32 %add31, ptr %nextRankStart, align 4, !dbg !431
  %33 = load i32, ptr %curr, align 4, !dbg !432
  %34 = load ptr, ptr %wksp, align 8, !dbg !433
  %rankStart = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %34, i32 0, i32 1, !dbg !434
  %35 = load i32, ptr %n, align 4, !dbg !435
  %idxprom32 = sext i32 %35 to i64, !dbg !433
  %arrayidx33 = getelementptr [13 x i32], ptr %rankStart, i64 0, i64 %idxprom32, !dbg !433
  store i32 %33, ptr %arrayidx33, align 4, !dbg !436
  call void @llvm.lifetime.end.p0(i64 4, ptr %curr) #11, !dbg !437
  br label %for.inc, !dbg !438

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %n, align 4, !dbg !439
  %inc = add i32 %36, 1, !dbg !439
  store i32 %inc, ptr %n, align 4, !dbg !439
  br label %for.cond, !dbg !440, !llvm.loop !441

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4, !dbg !445
  br label %for.cond34, !dbg !446

for.cond34:                                       ; preds = %for.inc57, %for.end
  %37 = load i32, ptr %n, align 4, !dbg !447
  %38 = load i32, ptr %nLimit, align 4, !dbg !448
  %cmp35 = icmp slt i32 %37, %38, !dbg !449
  br i1 %cmp35, label %for.body37, label %for.end59, !dbg !450

for.body37:                                       ; preds = %for.cond34
  call void @llvm.lifetime.start.p0(i64 4, ptr %u) #11, !dbg !451
  call void @llvm.dbg.declare(metadata ptr %u, metadata !278, metadata !DIExpression()), !dbg !452
  store i32 0, ptr %u, align 4, !dbg !453
  br label %for.cond38, !dbg !454

for.cond38:                                       ; preds = %for.inc54, %for.body37
  %39 = load i32, ptr %u, align 4, !dbg !455
  %cmp39 = icmp slt i32 %39, 4, !dbg !456
  br i1 %cmp39, label %for.body41, label %for.end56, !dbg !457

for.body41:                                       ; preds = %for.cond38
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #11, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %w, metadata !282, metadata !DIExpression()), !dbg !459
  %40 = load ptr, ptr %wksp, align 8, !dbg !460
  %huffWeight42 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %40, i32 0, i32 4, !dbg !461
  %41 = load i32, ptr %n, align 4, !dbg !462
  %42 = load i32, ptr %u, align 4, !dbg !463
  %add43 = add i32 %41, %42, !dbg !464
  %idxprom44 = sext i32 %add43 to i64, !dbg !460
  %arrayidx45 = getelementptr [256 x i8], ptr %huffWeight42, i64 0, i64 %idxprom44, !dbg !460
  %43 = load i8, ptr %arrayidx45, align 1, !dbg !460
  %conv46 = zext i8 %43 to i64, !dbg !460
  store i64 %conv46, ptr %w, align 8, !dbg !459
  %44 = load i32, ptr %n, align 4, !dbg !465
  %45 = load i32, ptr %u, align 4, !dbg !466
  %add47 = add i32 %44, %45, !dbg !467
  %conv48 = trunc i32 %add47 to i8, !dbg !468
  %46 = load ptr, ptr %wksp, align 8, !dbg !469
  %symbols = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %46, i32 0, i32 3, !dbg !470
  %47 = load ptr, ptr %wksp, align 8, !dbg !471
  %rankStart49 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %47, i32 0, i32 1, !dbg !472
  %48 = load i64, ptr %w, align 8, !dbg !473
  %arrayidx50 = getelementptr [13 x i32], ptr %rankStart49, i64 0, i64 %48, !dbg !471
  %49 = load i32, ptr %arrayidx50, align 4, !dbg !474
  %inc51 = add i32 %49, 1, !dbg !474
  store i32 %inc51, ptr %arrayidx50, align 4, !dbg !474
  %idxprom52 = zext i32 %49 to i64, !dbg !469
  %arrayidx53 = getelementptr [256 x i8], ptr %symbols, i64 0, i64 %idxprom52, !dbg !469
  store i8 %conv48, ptr %arrayidx53, align 1, !dbg !475
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #11, !dbg !476
  br label %for.inc54, !dbg !477

for.inc54:                                        ; preds = %for.body41
  %50 = load i32, ptr %u, align 4, !dbg !478
  %inc55 = add i32 %50, 1, !dbg !478
  store i32 %inc55, ptr %u, align 4, !dbg !478
  br label %for.cond38, !dbg !479, !llvm.loop !480

for.end56:                                        ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %u) #11, !dbg !482
  br label %for.inc57, !dbg !483

for.inc57:                                        ; preds = %for.end56
  %51 = load i32, ptr %n, align 4, !dbg !484
  %add58 = add i32 %51, 4, !dbg !484
  store i32 %add58, ptr %n, align 4, !dbg !484
  br label %for.cond34, !dbg !485, !llvm.loop !486

for.end59:                                        ; preds = %for.cond34
  br label %for.cond60, !dbg !488

for.cond60:                                       ; preds = %for.inc76, %for.end59
  %52 = load i32, ptr %n, align 4, !dbg !489
  %53 = load i32, ptr %nbSymbols, align 4, !dbg !490
  %cmp61 = icmp slt i32 %52, %53, !dbg !491
  br i1 %cmp61, label %for.body63, label %for.end78, !dbg !492

for.body63:                                       ; preds = %for.cond60
  call void @llvm.lifetime.start.p0(i64 8, ptr %w64) #11, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %w64, metadata !287, metadata !DIExpression()), !dbg !494
  %54 = load ptr, ptr %wksp, align 8, !dbg !495
  %huffWeight65 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %54, i32 0, i32 4, !dbg !496
  %55 = load i32, ptr %n, align 4, !dbg !497
  %idxprom66 = sext i32 %55 to i64, !dbg !495
  %arrayidx67 = getelementptr [256 x i8], ptr %huffWeight65, i64 0, i64 %idxprom66, !dbg !495
  %56 = load i8, ptr %arrayidx67, align 1, !dbg !495
  %conv68 = zext i8 %56 to i64, !dbg !495
  store i64 %conv68, ptr %w64, align 8, !dbg !494
  %57 = load i32, ptr %n, align 4, !dbg !498
  %conv69 = trunc i32 %57 to i8, !dbg !499
  %58 = load ptr, ptr %wksp, align 8, !dbg !500
  %symbols70 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %58, i32 0, i32 3, !dbg !501
  %59 = load ptr, ptr %wksp, align 8, !dbg !502
  %rankStart71 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %59, i32 0, i32 1, !dbg !503
  %60 = load i64, ptr %w64, align 8, !dbg !504
  %arrayidx72 = getelementptr [13 x i32], ptr %rankStart71, i64 0, i64 %60, !dbg !502
  %61 = load i32, ptr %arrayidx72, align 4, !dbg !505
  %inc73 = add i32 %61, 1, !dbg !505
  store i32 %inc73, ptr %arrayidx72, align 4, !dbg !505
  %idxprom74 = zext i32 %61 to i64, !dbg !500
  %arrayidx75 = getelementptr [256 x i8], ptr %symbols70, i64 0, i64 %idxprom74, !dbg !500
  store i8 %conv69, ptr %arrayidx75, align 1, !dbg !506
  call void @llvm.lifetime.end.p0(i64 8, ptr %w64) #11, !dbg !507
  br label %for.inc76, !dbg !508

for.inc76:                                        ; preds = %for.body63
  %62 = load i32, ptr %n, align 4, !dbg !509
  %inc77 = add i32 %62, 1, !dbg !509
  store i32 %inc77, ptr %n, align 4, !dbg !509
  br label %for.cond60, !dbg !510, !llvm.loop !511

for.end78:                                        ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 4, ptr %nLimit) #11, !dbg !513
  call void @llvm.lifetime.end.p0(i64 4, ptr %unroll) #11, !dbg !513
  call void @llvm.lifetime.end.p0(i64 4, ptr %nextRankStart) #11, !dbg !513
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #11, !dbg !513
  call void @llvm.lifetime.start.p0(i64 4, ptr %w79) #11, !dbg !514
  call void @llvm.dbg.declare(metadata ptr %w79, metadata !291, metadata !DIExpression()), !dbg !515
  call void @llvm.lifetime.start.p0(i64 4, ptr %symbol) #11, !dbg !516
  call void @llvm.dbg.declare(metadata ptr %symbol, metadata !293, metadata !DIExpression()), !dbg !517
  %63 = load ptr, ptr %wksp, align 8, !dbg !518
  %rankVal80 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %63, i32 0, i32 0, !dbg !519
  %arrayidx81 = getelementptr [13 x i32], ptr %rankVal80, i64 0, i64 0, !dbg !518
  %64 = load i32, ptr %arrayidx81, align 4, !dbg !518
  store i32 %64, ptr %symbol, align 4, !dbg !517
  call void @llvm.lifetime.start.p0(i64 4, ptr %rankStart82) #11, !dbg !520
  call void @llvm.dbg.declare(metadata ptr %rankStart82, metadata !294, metadata !DIExpression()), !dbg !521
  store i32 0, ptr %rankStart82, align 4, !dbg !521
  store i32 1, ptr %w79, align 4, !dbg !522
  br label %for.cond83, !dbg !523

for.cond83:                                       ; preds = %for.inc210, %for.end78
  %65 = load i32, ptr %w79, align 4, !dbg !524
  %66 = load i32, ptr %tableLog, align 4, !dbg !525
  %add84 = add i32 %66, 1, !dbg !526
  %cmp85 = icmp ult i32 %65, %add84, !dbg !527
  br i1 %cmp85, label %for.body87, label %for.end212, !dbg !528

for.body87:                                       ; preds = %for.cond83
  call void @llvm.lifetime.start.p0(i64 4, ptr %symbolCount) #11, !dbg !529
  call void @llvm.dbg.declare(metadata ptr %symbolCount, metadata !295, metadata !DIExpression()), !dbg !530
  %67 = load ptr, ptr %wksp, align 8, !dbg !531
  %rankVal88 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %67, i32 0, i32 0, !dbg !532
  %68 = load i32, ptr %w79, align 4, !dbg !533
  %idxprom89 = zext i32 %68 to i64, !dbg !531
  %arrayidx90 = getelementptr [13 x i32], ptr %rankVal88, i64 0, i64 %idxprom89, !dbg !531
  %69 = load i32, ptr %arrayidx90, align 4, !dbg !531
  store i32 %69, ptr %symbolCount, align 4, !dbg !530
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #11, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %length, metadata !299, metadata !DIExpression()), !dbg !535
  %70 = load i32, ptr %w79, align 4, !dbg !536
  %shl = shl i32 1, %70, !dbg !537
  %shr = ashr i32 %shl, 1, !dbg !538
  store i32 %shr, ptr %length, align 4, !dbg !535
  call void @llvm.lifetime.start.p0(i64 4, ptr %uStart) #11, !dbg !539
  call void @llvm.dbg.declare(metadata ptr %uStart, metadata !300, metadata !DIExpression()), !dbg !540
  %71 = load i32, ptr %rankStart82, align 4, !dbg !541
  store i32 %71, ptr %uStart, align 4, !dbg !540
  call void @llvm.lifetime.start.p0(i64 1, ptr %nbBits) #11, !dbg !542
  call void @llvm.dbg.declare(metadata ptr %nbBits, metadata !301, metadata !DIExpression()), !dbg !543
  %72 = load i32, ptr %tableLog, align 4, !dbg !544
  %add91 = add i32 %72, 1, !dbg !545
  %73 = load i32, ptr %w79, align 4, !dbg !546
  %sub92 = sub i32 %add91, %73, !dbg !547
  %conv93 = trunc i32 %sub92 to i8, !dbg !548
  store i8 %conv93, ptr %nbBits, align 1, !dbg !543
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #11, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %s, metadata !302, metadata !DIExpression()), !dbg !550
  call void @llvm.lifetime.start.p0(i64 4, ptr %u94) #11, !dbg !551
  call void @llvm.dbg.declare(metadata ptr %u94, metadata !303, metadata !DIExpression()), !dbg !552
  %74 = load i32, ptr %length, align 4, !dbg !553
  switch i32 %74, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb110
    i32 4, label %sw.bb132
    i32 8, label %sw.bb147
  ], !dbg !554

sw.bb:                                            ; preds = %for.body87
  store i32 0, ptr %s, align 4, !dbg !555
  br label %for.cond95, !dbg !556

for.cond95:                                       ; preds = %for.inc107, %sw.bb
  %75 = load i32, ptr %s, align 4, !dbg !557
  %76 = load i32, ptr %symbolCount, align 4, !dbg !558
  %cmp96 = icmp slt i32 %75, %76, !dbg !559
  br i1 %cmp96, label %for.body98, label %for.end109, !dbg !560

for.body98:                                       ; preds = %for.cond95
  call void @llvm.lifetime.start.p0(i64 2, ptr %D) #11, !dbg !561
  call void @llvm.dbg.declare(metadata ptr %D, metadata !304, metadata !DIExpression()), !dbg !562
  %77 = load ptr, ptr %wksp, align 8, !dbg !563
  %symbols99 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %77, i32 0, i32 3, !dbg !564
  %78 = load i32, ptr %symbol, align 4, !dbg !565
  %79 = load i32, ptr %s, align 4, !dbg !566
  %add100 = add i32 %78, %79, !dbg !567
  %idxprom101 = sext i32 %add100 to i64, !dbg !563
  %arrayidx102 = getelementptr [256 x i8], ptr %symbols99, i64 0, i64 %idxprom101, !dbg !563
  %80 = load i8, ptr %arrayidx102, align 1, !dbg !563
  %byte = getelementptr inbounds %struct.HUF_DEltX1, ptr %D, i32 0, i32 1, !dbg !568
  store i8 %80, ptr %byte, align 1, !dbg !569
  %81 = load i8, ptr %nbBits, align 1, !dbg !570
  %nbBits103 = getelementptr inbounds %struct.HUF_DEltX1, ptr %D, i32 0, i32 0, !dbg !571
  store i8 %81, ptr %nbBits103, align 1, !dbg !572
  %82 = load ptr, ptr %dt, align 8, !dbg !573
  %83 = load i32, ptr %uStart, align 4, !dbg !574
  %idxprom104 = sext i32 %83 to i64, !dbg !573
  %arrayidx105 = getelementptr %struct.HUF_DEltX1, ptr %82, i64 %idxprom104, !dbg !573
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx105, ptr align 1 %D, i64 2, i1 false), !dbg !575
  %84 = load i32, ptr %uStart, align 4, !dbg !576
  %add106 = add i32 %84, 1, !dbg !576
  store i32 %add106, ptr %uStart, align 4, !dbg !576
  call void @llvm.lifetime.end.p0(i64 2, ptr %D) #11, !dbg !577
  br label %for.inc107, !dbg !578

for.inc107:                                       ; preds = %for.body98
  %85 = load i32, ptr %s, align 4, !dbg !579
  %inc108 = add i32 %85, 1, !dbg !579
  store i32 %inc108, ptr %s, align 4, !dbg !579
  br label %for.cond95, !dbg !580, !llvm.loop !581

for.end109:                                       ; preds = %for.cond95
  br label %sw.epilog, !dbg !583

sw.bb110:                                         ; preds = %for.body87
  store i32 0, ptr %s, align 4, !dbg !584
  br label %for.cond111, !dbg !585

for.cond111:                                      ; preds = %for.inc129, %sw.bb110
  %86 = load i32, ptr %s, align 4, !dbg !586
  %87 = load i32, ptr %symbolCount, align 4, !dbg !587
  %cmp112 = icmp slt i32 %86, %87, !dbg !588
  br i1 %cmp112, label %for.body114, label %for.end131, !dbg !589

for.body114:                                      ; preds = %for.cond111
  call void @llvm.lifetime.start.p0(i64 2, ptr %D115) #11, !dbg !590
  call void @llvm.dbg.declare(metadata ptr %D115, metadata !309, metadata !DIExpression()), !dbg !591
  %88 = load ptr, ptr %wksp, align 8, !dbg !592
  %symbols116 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %88, i32 0, i32 3, !dbg !593
  %89 = load i32, ptr %symbol, align 4, !dbg !594
  %90 = load i32, ptr %s, align 4, !dbg !595
  %add117 = add i32 %89, %90, !dbg !596
  %idxprom118 = sext i32 %add117 to i64, !dbg !592
  %arrayidx119 = getelementptr [256 x i8], ptr %symbols116, i64 0, i64 %idxprom118, !dbg !592
  %91 = load i8, ptr %arrayidx119, align 1, !dbg !592
  %byte120 = getelementptr inbounds %struct.HUF_DEltX1, ptr %D115, i32 0, i32 1, !dbg !597
  store i8 %91, ptr %byte120, align 1, !dbg !598
  %92 = load i8, ptr %nbBits, align 1, !dbg !599
  %nbBits121 = getelementptr inbounds %struct.HUF_DEltX1, ptr %D115, i32 0, i32 0, !dbg !600
  store i8 %92, ptr %nbBits121, align 1, !dbg !601
  %93 = load ptr, ptr %dt, align 8, !dbg !602
  %94 = load i32, ptr %uStart, align 4, !dbg !603
  %add122 = add i32 %94, 0, !dbg !604
  %idxprom123 = sext i32 %add122 to i64, !dbg !602
  %arrayidx124 = getelementptr %struct.HUF_DEltX1, ptr %93, i64 %idxprom123, !dbg !602
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx124, ptr align 1 %D115, i64 2, i1 false), !dbg !605
  %95 = load ptr, ptr %dt, align 8, !dbg !606
  %96 = load i32, ptr %uStart, align 4, !dbg !607
  %add125 = add i32 %96, 1, !dbg !608
  %idxprom126 = sext i32 %add125 to i64, !dbg !606
  %arrayidx127 = getelementptr %struct.HUF_DEltX1, ptr %95, i64 %idxprom126, !dbg !606
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx127, ptr align 1 %D115, i64 2, i1 false), !dbg !609
  %97 = load i32, ptr %uStart, align 4, !dbg !610
  %add128 = add i32 %97, 2, !dbg !610
  store i32 %add128, ptr %uStart, align 4, !dbg !610
  call void @llvm.lifetime.end.p0(i64 2, ptr %D115) #11, !dbg !611
  br label %for.inc129, !dbg !612

for.inc129:                                       ; preds = %for.body114
  %98 = load i32, ptr %s, align 4, !dbg !613
  %inc130 = add i32 %98, 1, !dbg !613
  store i32 %inc130, ptr %s, align 4, !dbg !613
  br label %for.cond111, !dbg !614, !llvm.loop !615

for.end131:                                       ; preds = %for.cond111
  br label %sw.epilog, !dbg !617

sw.bb132:                                         ; preds = %for.body87
  store i32 0, ptr %s, align 4, !dbg !618
  br label %for.cond133, !dbg !619

for.cond133:                                      ; preds = %for.inc144, %sw.bb132
  %99 = load i32, ptr %s, align 4, !dbg !620
  %100 = load i32, ptr %symbolCount, align 4, !dbg !621
  %cmp134 = icmp slt i32 %99, %100, !dbg !622
  br i1 %cmp134, label %for.body136, label %for.end146, !dbg !623

for.body136:                                      ; preds = %for.cond133
  call void @llvm.lifetime.start.p0(i64 8, ptr %D4) #11, !dbg !624
  call void @llvm.dbg.declare(metadata ptr %D4, metadata !313, metadata !DIExpression()), !dbg !625
  %101 = load ptr, ptr %wksp, align 8, !dbg !626
  %symbols137 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %101, i32 0, i32 3, !dbg !627
  %102 = load i32, ptr %symbol, align 4, !dbg !628
  %103 = load i32, ptr %s, align 4, !dbg !629
  %add138 = add i32 %102, %103, !dbg !630
  %idxprom139 = sext i32 %add138 to i64, !dbg !626
  %arrayidx140 = getelementptr [256 x i8], ptr %symbols137, i64 0, i64 %idxprom139, !dbg !626
  %104 = load i8, ptr %arrayidx140, align 1, !dbg !626
  %105 = load i8, ptr %nbBits, align 1, !dbg !631
  %call141 = call i64 @HUF_DEltX1_set4(i8 noundef zeroext %104, i8 noundef zeroext %105) #10, !dbg !632
  store i64 %call141, ptr %D4, align 8, !dbg !625
  %106 = load ptr, ptr %dt, align 8, !dbg !633
  %107 = load i32, ptr %uStart, align 4, !dbg !634
  %idx.ext = sext i32 %107 to i64, !dbg !635
  %add.ptr142 = getelementptr %struct.HUF_DEltX1, ptr %106, i64 %idx.ext, !dbg !635
  %108 = load i64, ptr %D4, align 8, !dbg !636
  call void @MEM_write64(ptr noundef %add.ptr142, i64 noundef %108) #10, !dbg !637
  %109 = load i32, ptr %uStart, align 4, !dbg !638
  %add143 = add i32 %109, 4, !dbg !638
  store i32 %add143, ptr %uStart, align 4, !dbg !638
  call void @llvm.lifetime.end.p0(i64 8, ptr %D4) #11, !dbg !639
  br label %for.inc144, !dbg !640

for.inc144:                                       ; preds = %for.body136
  %110 = load i32, ptr %s, align 4, !dbg !641
  %inc145 = add i32 %110, 1, !dbg !641
  store i32 %inc145, ptr %s, align 4, !dbg !641
  br label %for.cond133, !dbg !642, !llvm.loop !643

for.end146:                                       ; preds = %for.cond133
  br label %sw.epilog, !dbg !645

sw.bb147:                                         ; preds = %for.body87
  store i32 0, ptr %s, align 4, !dbg !646
  br label %for.cond148, !dbg !647

for.cond148:                                      ; preds = %for.inc164, %sw.bb147
  %111 = load i32, ptr %s, align 4, !dbg !648
  %112 = load i32, ptr %symbolCount, align 4, !dbg !649
  %cmp149 = icmp slt i32 %111, %112, !dbg !650
  br i1 %cmp149, label %for.body151, label %for.end166, !dbg !651

for.body151:                                      ; preds = %for.cond148
  call void @llvm.lifetime.start.p0(i64 8, ptr %D4152) #11, !dbg !652
  call void @llvm.dbg.declare(metadata ptr %D4152, metadata !318, metadata !DIExpression()), !dbg !653
  %113 = load ptr, ptr %wksp, align 8, !dbg !654
  %symbols153 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %113, i32 0, i32 3, !dbg !655
  %114 = load i32, ptr %symbol, align 4, !dbg !656
  %115 = load i32, ptr %s, align 4, !dbg !657
  %add154 = add i32 %114, %115, !dbg !658
  %idxprom155 = sext i32 %add154 to i64, !dbg !654
  %arrayidx156 = getelementptr [256 x i8], ptr %symbols153, i64 0, i64 %idxprom155, !dbg !654
  %116 = load i8, ptr %arrayidx156, align 1, !dbg !654
  %117 = load i8, ptr %nbBits, align 1, !dbg !659
  %call157 = call i64 @HUF_DEltX1_set4(i8 noundef zeroext %116, i8 noundef zeroext %117) #10, !dbg !660
  store i64 %call157, ptr %D4152, align 8, !dbg !653
  %118 = load ptr, ptr %dt, align 8, !dbg !661
  %119 = load i32, ptr %uStart, align 4, !dbg !662
  %idx.ext158 = sext i32 %119 to i64, !dbg !663
  %add.ptr159 = getelementptr %struct.HUF_DEltX1, ptr %118, i64 %idx.ext158, !dbg !663
  %120 = load i64, ptr %D4152, align 8, !dbg !664
  call void @MEM_write64(ptr noundef %add.ptr159, i64 noundef %120) #10, !dbg !665
  %121 = load ptr, ptr %dt, align 8, !dbg !666
  %122 = load i32, ptr %uStart, align 4, !dbg !667
  %idx.ext160 = sext i32 %122 to i64, !dbg !668
  %add.ptr161 = getelementptr %struct.HUF_DEltX1, ptr %121, i64 %idx.ext160, !dbg !668
  %add.ptr162 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr161, i64 4, !dbg !669
  %123 = load i64, ptr %D4152, align 8, !dbg !670
  call void @MEM_write64(ptr noundef %add.ptr162, i64 noundef %123) #10, !dbg !671
  %124 = load i32, ptr %uStart, align 4, !dbg !672
  %add163 = add i32 %124, 8, !dbg !672
  store i32 %add163, ptr %uStart, align 4, !dbg !672
  call void @llvm.lifetime.end.p0(i64 8, ptr %D4152) #11, !dbg !673
  br label %for.inc164, !dbg !674

for.inc164:                                       ; preds = %for.body151
  %125 = load i32, ptr %s, align 4, !dbg !675
  %inc165 = add i32 %125, 1, !dbg !675
  store i32 %inc165, ptr %s, align 4, !dbg !675
  br label %for.cond148, !dbg !676, !llvm.loop !677

for.end166:                                       ; preds = %for.cond148
  br label %sw.epilog, !dbg !679

sw.default:                                       ; preds = %for.body87
  store i32 0, ptr %s, align 4, !dbg !680
  br label %for.cond167, !dbg !681

for.cond167:                                      ; preds = %for.inc205, %sw.default
  %126 = load i32, ptr %s, align 4, !dbg !682
  %127 = load i32, ptr %symbolCount, align 4, !dbg !683
  %cmp168 = icmp slt i32 %126, %127, !dbg !684
  br i1 %cmp168, label %for.body170, label %for.end207, !dbg !685

for.body170:                                      ; preds = %for.cond167
  call void @llvm.lifetime.start.p0(i64 8, ptr %D4171) #11, !dbg !686
  call void @llvm.dbg.declare(metadata ptr %D4171, metadata !322, metadata !DIExpression()), !dbg !687
  %128 = load ptr, ptr %wksp, align 8, !dbg !688
  %symbols172 = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %128, i32 0, i32 3, !dbg !689
  %129 = load i32, ptr %symbol, align 4, !dbg !690
  %130 = load i32, ptr %s, align 4, !dbg !691
  %add173 = add i32 %129, %130, !dbg !692
  %idxprom174 = sext i32 %add173 to i64, !dbg !688
  %arrayidx175 = getelementptr [256 x i8], ptr %symbols172, i64 0, i64 %idxprom174, !dbg !688
  %131 = load i8, ptr %arrayidx175, align 1, !dbg !688
  %132 = load i8, ptr %nbBits, align 1, !dbg !693
  %call176 = call i64 @HUF_DEltX1_set4(i8 noundef zeroext %131, i8 noundef zeroext %132) #10, !dbg !694
  store i64 %call176, ptr %D4171, align 8, !dbg !687
  store i32 0, ptr %u94, align 4, !dbg !695
  br label %for.cond177, !dbg !697

for.cond177:                                      ; preds = %for.inc201, %for.body170
  %133 = load i32, ptr %u94, align 4, !dbg !698
  %134 = load i32, ptr %length, align 4, !dbg !700
  %cmp178 = icmp slt i32 %133, %134, !dbg !701
  br i1 %cmp178, label %for.body180, label %for.end203, !dbg !702

for.body180:                                      ; preds = %for.cond177
  %135 = load ptr, ptr %dt, align 8, !dbg !703
  %136 = load i32, ptr %uStart, align 4, !dbg !705
  %idx.ext181 = sext i32 %136 to i64, !dbg !706
  %add.ptr182 = getelementptr %struct.HUF_DEltX1, ptr %135, i64 %idx.ext181, !dbg !706
  %137 = load i32, ptr %u94, align 4, !dbg !707
  %idx.ext183 = sext i32 %137 to i64, !dbg !708
  %add.ptr184 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr182, i64 %idx.ext183, !dbg !708
  %add.ptr185 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr184, i64 0, !dbg !709
  %138 = load i64, ptr %D4171, align 8, !dbg !710
  call void @MEM_write64(ptr noundef %add.ptr185, i64 noundef %138) #10, !dbg !711
  %139 = load ptr, ptr %dt, align 8, !dbg !712
  %140 = load i32, ptr %uStart, align 4, !dbg !713
  %idx.ext186 = sext i32 %140 to i64, !dbg !714
  %add.ptr187 = getelementptr %struct.HUF_DEltX1, ptr %139, i64 %idx.ext186, !dbg !714
  %141 = load i32, ptr %u94, align 4, !dbg !715
  %idx.ext188 = sext i32 %141 to i64, !dbg !716
  %add.ptr189 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr187, i64 %idx.ext188, !dbg !716
  %add.ptr190 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr189, i64 4, !dbg !717
  %142 = load i64, ptr %D4171, align 8, !dbg !718
  call void @MEM_write64(ptr noundef %add.ptr190, i64 noundef %142) #10, !dbg !719
  %143 = load ptr, ptr %dt, align 8, !dbg !720
  %144 = load i32, ptr %uStart, align 4, !dbg !721
  %idx.ext191 = sext i32 %144 to i64, !dbg !722
  %add.ptr192 = getelementptr %struct.HUF_DEltX1, ptr %143, i64 %idx.ext191, !dbg !722
  %145 = load i32, ptr %u94, align 4, !dbg !723
  %idx.ext193 = sext i32 %145 to i64, !dbg !724
  %add.ptr194 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr192, i64 %idx.ext193, !dbg !724
  %add.ptr195 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr194, i64 8, !dbg !725
  %146 = load i64, ptr %D4171, align 8, !dbg !726
  call void @MEM_write64(ptr noundef %add.ptr195, i64 noundef %146) #10, !dbg !727
  %147 = load ptr, ptr %dt, align 8, !dbg !728
  %148 = load i32, ptr %uStart, align 4, !dbg !729
  %idx.ext196 = sext i32 %148 to i64, !dbg !730
  %add.ptr197 = getelementptr %struct.HUF_DEltX1, ptr %147, i64 %idx.ext196, !dbg !730
  %149 = load i32, ptr %u94, align 4, !dbg !731
  %idx.ext198 = sext i32 %149 to i64, !dbg !732
  %add.ptr199 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr197, i64 %idx.ext198, !dbg !732
  %add.ptr200 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr199, i64 12, !dbg !733
  %150 = load i64, ptr %D4171, align 8, !dbg !734
  call void @MEM_write64(ptr noundef %add.ptr200, i64 noundef %150) #10, !dbg !735
  br label %for.inc201, !dbg !736

for.inc201:                                       ; preds = %for.body180
  %151 = load i32, ptr %u94, align 4, !dbg !737
  %add202 = add i32 %151, 16, !dbg !737
  store i32 %add202, ptr %u94, align 4, !dbg !737
  br label %for.cond177, !dbg !738, !llvm.loop !739

for.end203:                                       ; preds = %for.cond177
  %152 = load i32, ptr %length, align 4, !dbg !741
  %153 = load i32, ptr %uStart, align 4, !dbg !742
  %add204 = add i32 %153, %152, !dbg !742
  store i32 %add204, ptr %uStart, align 4, !dbg !742
  call void @llvm.lifetime.end.p0(i64 8, ptr %D4171) #11, !dbg !743
  br label %for.inc205, !dbg !744

for.inc205:                                       ; preds = %for.end203
  %154 = load i32, ptr %s, align 4, !dbg !745
  %inc206 = add i32 %154, 1, !dbg !745
  store i32 %inc206, ptr %s, align 4, !dbg !745
  br label %for.cond167, !dbg !746, !llvm.loop !747

for.end207:                                       ; preds = %for.cond167
  br label %sw.epilog, !dbg !749

sw.epilog:                                        ; preds = %for.end207, %for.end166, %for.end146, %for.end131, %for.end109
  %155 = load i32, ptr %symbolCount, align 4, !dbg !750
  %156 = load i32, ptr %symbol, align 4, !dbg !751
  %add208 = add i32 %156, %155, !dbg !751
  store i32 %add208, ptr %symbol, align 4, !dbg !751
  %157 = load i32, ptr %symbolCount, align 4, !dbg !752
  %158 = load i32, ptr %length, align 4, !dbg !753
  %mul = mul i32 %157, %158, !dbg !754
  %159 = load i32, ptr %rankStart82, align 4, !dbg !755
  %add209 = add i32 %159, %mul, !dbg !755
  store i32 %add209, ptr %rankStart82, align 4, !dbg !755
  call void @llvm.lifetime.end.p0(i64 4, ptr %u94) #11, !dbg !756
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #11, !dbg !756
  call void @llvm.lifetime.end.p0(i64 1, ptr %nbBits) #11, !dbg !756
  call void @llvm.lifetime.end.p0(i64 4, ptr %uStart) #11, !dbg !756
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #11, !dbg !756
  call void @llvm.lifetime.end.p0(i64 4, ptr %symbolCount) #11, !dbg !756
  br label %for.inc210, !dbg !757

for.inc210:                                       ; preds = %sw.epilog
  %160 = load i32, ptr %w79, align 4, !dbg !758
  %inc211 = add i32 %160, 1, !dbg !758
  store i32 %inc211, ptr %w79, align 4, !dbg !758
  br label %for.cond83, !dbg !759, !llvm.loop !760

for.end212:                                       ; preds = %for.cond83
  call void @llvm.lifetime.end.p0(i64 4, ptr %rankStart82) #11, !dbg !762
  call void @llvm.lifetime.end.p0(i64 4, ptr %symbol) #11, !dbg !762
  call void @llvm.lifetime.end.p0(i64 4, ptr %w79) #11, !dbg !762
  %161 = load i64, ptr %iSize, align 8, !dbg !763
  store i64 %161, ptr %retval, align 8, !dbg !764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup213, !dbg !764

cleanup213:                                       ; preds = %for.end212, %cleanup, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %wksp) #11, !dbg !765
  call void @llvm.lifetime.end.p0(i64 8, ptr %dt) #11, !dbg !765
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtPtr) #11, !dbg !765
  call void @llvm.lifetime.end.p0(i64 8, ptr %iSize) #11, !dbg !765
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbSymbols) #11, !dbg !765
  call void @llvm.lifetime.end.p0(i64 4, ptr %tableLog) #11, !dbg !765
  %162 = load i64, ptr %retval, align 8, !dbg !765
  ret i64 %162, !dbg !765
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !766 dso_local i64 @HUF_readStats_wksp(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ERR_isError(i64 noundef %code) #0 align 16 !dbg !770 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !775, metadata !DIExpression()), !dbg !776
  %0 = load i64, ptr %code.addr, align 8, !dbg !777
  %cmp = icmp ugt i64 %0, -120, !dbg !778
  %conv = zext i1 %cmp to i32, !dbg !778
  ret i32 %conv, !dbg !779
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @HUF_getDTableDesc(ptr noundef %table) #0 align 16 !dbg !780 {
entry:
  %retval = alloca %struct.DTableDesc, align 1
  %table.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !786, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !787, metadata !DIExpression()), !dbg !789
  %0 = load ptr, ptr %table.addr, align 8, !dbg !790
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %retval, ptr align 4 %0, i64 4, i1 false), !dbg !790
  %1 = load i32, ptr %retval, align 1, !dbg !791
  ret i32 %1, !dbg !791
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @HUF_rescaleStats(ptr noundef %huffWeight, ptr noundef %rankVal, i32 noundef %nbSymbols, i32 noundef %tableLog, i32 noundef %targetTableLog) #0 align 16 !dbg !792 {
entry:
  %retval = alloca i32, align 4
  %huffWeight.addr = alloca ptr, align 8
  %rankVal.addr = alloca ptr, align 8
  %nbSymbols.addr = alloca i32, align 4
  %tableLog.addr = alloca i32, align 4
  %targetTableLog.addr = alloca i32, align 4
  %scale = alloca i32, align 4
  %s = alloca i32, align 4
  store ptr %huffWeight, ptr %huffWeight.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %huffWeight.addr, metadata !796, metadata !DIExpression()), !dbg !805
  store ptr %rankVal, ptr %rankVal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rankVal.addr, metadata !797, metadata !DIExpression()), !dbg !806
  store i32 %nbSymbols, ptr %nbSymbols.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbSymbols.addr, metadata !798, metadata !DIExpression()), !dbg !807
  store i32 %tableLog, ptr %tableLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tableLog.addr, metadata !799, metadata !DIExpression()), !dbg !808
  store i32 %targetTableLog, ptr %targetTableLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %targetTableLog.addr, metadata !800, metadata !DIExpression()), !dbg !809
  %0 = load i32, ptr %tableLog.addr, align 4, !dbg !810
  %1 = load i32, ptr %targetTableLog.addr, align 4, !dbg !812
  %cmp = icmp ugt i32 %0, %1, !dbg !813
  br i1 %cmp, label %if.then, label %if.end, !dbg !814

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %tableLog.addr, align 4, !dbg !815
  store i32 %2, ptr %retval, align 4, !dbg !816
  br label %return, !dbg !816

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %tableLog.addr, align 4, !dbg !817
  %4 = load i32, ptr %targetTableLog.addr, align 4, !dbg !818
  %cmp1 = icmp ult i32 %3, %4, !dbg !819
  br i1 %cmp1, label %if.then2, label %if.end32, !dbg !820

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %scale) #11, !dbg !821
  call void @llvm.dbg.declare(metadata ptr %scale, metadata !801, metadata !DIExpression()), !dbg !822
  %5 = load i32, ptr %targetTableLog.addr, align 4, !dbg !823
  %6 = load i32, ptr %tableLog.addr, align 4, !dbg !824
  %sub = sub i32 %5, %6, !dbg !825
  store i32 %sub, ptr %scale, align 4, !dbg !822
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #11, !dbg !826
  call void @llvm.dbg.declare(metadata ptr %s, metadata !804, metadata !DIExpression()), !dbg !827
  store i32 0, ptr %s, align 4, !dbg !828
  br label %for.cond, !dbg !830

for.cond:                                         ; preds = %for.inc, %if.then2
  %7 = load i32, ptr %s, align 4, !dbg !831
  %8 = load i32, ptr %nbSymbols.addr, align 4, !dbg !833
  %cmp3 = icmp ult i32 %7, %8, !dbg !834
  br i1 %cmp3, label %for.body, label %for.end, !dbg !835

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %huffWeight.addr, align 8, !dbg !836
  %10 = load i32, ptr %s, align 4, !dbg !838
  %idxprom = zext i32 %10 to i64, !dbg !836
  %arrayidx = getelementptr i8, ptr %9, i64 %idxprom, !dbg !836
  %11 = load i8, ptr %arrayidx, align 1, !dbg !836
  %conv = zext i8 %11 to i32, !dbg !836
  %cmp4 = icmp eq i32 %conv, 0, !dbg !839
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !840

cond.true:                                        ; preds = %for.body
  br label %cond.end, !dbg !840

cond.false:                                       ; preds = %for.body
  %12 = load i32, ptr %scale, align 4, !dbg !841
  br label %cond.end, !dbg !840

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %12, %cond.false ], !dbg !840
  %conv6 = trunc i32 %cond to i8, !dbg !842
  %conv7 = zext i8 %conv6 to i32, !dbg !842
  %13 = load ptr, ptr %huffWeight.addr, align 8, !dbg !843
  %14 = load i32, ptr %s, align 4, !dbg !844
  %idxprom8 = zext i32 %14 to i64, !dbg !843
  %arrayidx9 = getelementptr i8, ptr %13, i64 %idxprom8, !dbg !843
  %15 = load i8, ptr %arrayidx9, align 1, !dbg !845
  %conv10 = zext i8 %15 to i32, !dbg !845
  %add = add i32 %conv10, %conv7, !dbg !845
  %conv11 = trunc i32 %add to i8, !dbg !845
  store i8 %conv11, ptr %arrayidx9, align 1, !dbg !845
  br label %for.inc, !dbg !846

for.inc:                                          ; preds = %cond.end
  %16 = load i32, ptr %s, align 4, !dbg !847
  %inc = add i32 %16, 1, !dbg !847
  store i32 %inc, ptr %s, align 4, !dbg !847
  br label %for.cond, !dbg !848, !llvm.loop !849

for.end:                                          ; preds = %for.cond
  %17 = load i32, ptr %targetTableLog.addr, align 4, !dbg !851
  store i32 %17, ptr %s, align 4, !dbg !853
  br label %for.cond12, !dbg !854

for.cond12:                                       ; preds = %for.inc21, %for.end
  %18 = load i32, ptr %s, align 4, !dbg !855
  %19 = load i32, ptr %scale, align 4, !dbg !857
  %cmp13 = icmp ugt i32 %18, %19, !dbg !858
  br i1 %cmp13, label %for.body15, label %for.end22, !dbg !859

for.body15:                                       ; preds = %for.cond12
  %20 = load ptr, ptr %rankVal.addr, align 8, !dbg !860
  %21 = load i32, ptr %s, align 4, !dbg !862
  %22 = load i32, ptr %scale, align 4, !dbg !863
  %sub16 = sub i32 %21, %22, !dbg !864
  %idxprom17 = zext i32 %sub16 to i64, !dbg !860
  %arrayidx18 = getelementptr i32, ptr %20, i64 %idxprom17, !dbg !860
  %23 = load i32, ptr %arrayidx18, align 4, !dbg !860
  %24 = load ptr, ptr %rankVal.addr, align 8, !dbg !865
  %25 = load i32, ptr %s, align 4, !dbg !866
  %idxprom19 = zext i32 %25 to i64, !dbg !865
  %arrayidx20 = getelementptr i32, ptr %24, i64 %idxprom19, !dbg !865
  store i32 %23, ptr %arrayidx20, align 4, !dbg !867
  br label %for.inc21, !dbg !868

for.inc21:                                        ; preds = %for.body15
  %26 = load i32, ptr %s, align 4, !dbg !869
  %dec = add i32 %26, -1, !dbg !869
  store i32 %dec, ptr %s, align 4, !dbg !869
  br label %for.cond12, !dbg !870, !llvm.loop !871

for.end22:                                        ; preds = %for.cond12
  %27 = load i32, ptr %scale, align 4, !dbg !873
  store i32 %27, ptr %s, align 4, !dbg !875
  br label %for.cond23, !dbg !876

for.cond23:                                       ; preds = %for.inc29, %for.end22
  %28 = load i32, ptr %s, align 4, !dbg !877
  %cmp24 = icmp ugt i32 %28, 0, !dbg !879
  br i1 %cmp24, label %for.body26, label %for.end31, !dbg !880

for.body26:                                       ; preds = %for.cond23
  %29 = load ptr, ptr %rankVal.addr, align 8, !dbg !881
  %30 = load i32, ptr %s, align 4, !dbg !883
  %idxprom27 = zext i32 %30 to i64, !dbg !881
  %arrayidx28 = getelementptr i32, ptr %29, i64 %idxprom27, !dbg !881
  store i32 0, ptr %arrayidx28, align 4, !dbg !884
  br label %for.inc29, !dbg !885

for.inc29:                                        ; preds = %for.body26
  %31 = load i32, ptr %s, align 4, !dbg !886
  %dec30 = add i32 %31, -1, !dbg !886
  store i32 %dec30, ptr %s, align 4, !dbg !886
  br label %for.cond23, !dbg !887, !llvm.loop !888

for.end31:                                        ; preds = %for.cond23
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #11, !dbg !890
  call void @llvm.lifetime.end.p0(i64 4, ptr %scale) #11, !dbg !890
  br label %if.end32, !dbg !891

if.end32:                                         ; preds = %for.end31, %if.end
  %32 = load i32, ptr %targetTableLog.addr, align 4, !dbg !892
  store i32 %32, ptr %retval, align 4, !dbg !893
  br label %return, !dbg !893

return:                                           ; preds = %if.end32, %if.then
  %33 = load i32, ptr %retval, align 4, !dbg !894
  ret i32 %33, !dbg !894
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_DEltX1_set4(i8 noundef zeroext %symbol, i8 noundef zeroext %nbBits) #0 align 16 !dbg !895 {
entry:
  %symbol.addr = alloca i8, align 1
  %nbBits.addr = alloca i8, align 1
  %D4 = alloca i64, align 8
  store i8 %symbol, ptr %symbol.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %symbol.addr, metadata !899, metadata !DIExpression()), !dbg !902
  store i8 %nbBits, ptr %nbBits.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !900, metadata !DIExpression()), !dbg !903
  call void @llvm.lifetime.start.p0(i64 8, ptr %D4) #11, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %D4, metadata !901, metadata !DIExpression()), !dbg !905
  %call = call i32 @MEM_isLittleEndian() #10, !dbg !906
  %tobool = icmp ne i32 %call, 0, !dbg !906
  br i1 %tobool, label %if.then, label %if.else, !dbg !908

if.then:                                          ; preds = %entry
  %0 = load i8, ptr %symbol.addr, align 1, !dbg !909
  %conv = zext i8 %0 to i32, !dbg !909
  %shl = shl i32 %conv, 8, !dbg !911
  %1 = load i8, ptr %nbBits.addr, align 1, !dbg !912
  %conv1 = zext i8 %1 to i32, !dbg !912
  %add = add i32 %shl, %conv1, !dbg !913
  %conv2 = sext i32 %add to i64, !dbg !914
  store i64 %conv2, ptr %D4, align 8, !dbg !915
  br label %if.end, !dbg !916

if.else:                                          ; preds = %entry
  %2 = load i8, ptr %symbol.addr, align 1, !dbg !917
  %conv3 = zext i8 %2 to i32, !dbg !917
  %3 = load i8, ptr %nbBits.addr, align 1, !dbg !919
  %conv4 = zext i8 %3 to i32, !dbg !919
  %shl5 = shl i32 %conv4, 8, !dbg !920
  %add6 = add i32 %conv3, %shl5, !dbg !921
  %conv7 = sext i32 %add6 to i64, !dbg !917
  store i64 %conv7, ptr %D4, align 8, !dbg !922
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i64, ptr %D4, align 8, !dbg !923
  %mul = mul i64 %4, 281479271743489, !dbg !923
  store i64 %mul, ptr %D4, align 8, !dbg !923
  %5 = load i64, ptr %D4, align 8, !dbg !924
  call void @llvm.lifetime.end.p0(i64 8, ptr %D4) #11, !dbg !925
  ret i64 %5, !dbg !926
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @MEM_write64(ptr noundef %memPtr, i64 noundef %value) #5 align 16 !dbg !126 {
entry:
  %memPtr.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %__pptr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !136, metadata !DIExpression()), !dbg !927
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !137, metadata !DIExpression()), !dbg !928
  br label %do.body, !dbg !929

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #11, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !138, metadata !DIExpression()), !dbg !930
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !930
  store ptr %0, ptr %__pptr, align 8, !dbg !930
  %1 = load i64, ptr %value.addr, align 8, !dbg !930
  %2 = load ptr, ptr %__pptr, align 8, !dbg !930
  %x = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0, !dbg !930
  store i64 %1, ptr %x, align 1, !dbg !930
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #11, !dbg !929
  br label %do.end, !dbg !930

do.end:                                           ; preds = %do.body
  ret void, !dbg !931
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress1X1_usingDTable(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #0 align 16 !dbg !932 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %dtd = alloca %struct.DTableDesc, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !936, metadata !DIExpression()), !dbg !942
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !937, metadata !DIExpression()), !dbg !943
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !938, metadata !DIExpression()), !dbg !944
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !939, metadata !DIExpression()), !dbg !945
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !940, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !941, metadata !DIExpression()), !dbg !948
  %0 = load ptr, ptr %DTable.addr, align 8, !dbg !949
  %call = call i32 @HUF_getDTableDesc(ptr noundef %0) #10, !dbg !950
  store i32 %call, ptr %dtd, align 1, !dbg !950
  %tableType = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 1, !dbg !951
  %1 = load i8, ptr %tableType, align 1, !dbg !951
  %conv = zext i8 %1 to i32, !dbg !953
  %cmp = icmp ne i32 %conv, 0, !dbg !954
  br i1 %cmp, label %if.then, label %if.end, !dbg !955

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !956

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !957
  %3 = load i64, ptr %dstSize.addr, align 8, !dbg !958
  %4 = load ptr, ptr %cSrc.addr, align 8, !dbg !959
  %5 = load i64, ptr %cSrcSize.addr, align 8, !dbg !960
  %6 = load ptr, ptr %DTable.addr, align 8, !dbg !961
  %call2 = call i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef 0) #10, !dbg !962
  store i64 %call2, ptr %retval, align 8, !dbg !963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !963

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !964
  %7 = load i64, ptr %retval, align 8, !dbg !964
  ret i64 %7, !dbg !964
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable, i32 noundef %bmi2) #0 align 16 !dbg !965 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %bmi2.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !969, metadata !DIExpression()), !dbg !975
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !970, metadata !DIExpression()), !dbg !975
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !971, metadata !DIExpression()), !dbg !975
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !972, metadata !DIExpression()), !dbg !975
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !973, metadata !DIExpression()), !dbg !975
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !974, metadata !DIExpression()), !dbg !975
  %0 = load i32, ptr %bmi2.addr, align 4, !dbg !976
  %tobool = icmp ne i32 %0, 0, !dbg !976
  br i1 %tobool, label %if.then, label %if.end, !dbg !975

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !978
  %2 = load i64, ptr %dstSize.addr, align 8, !dbg !978
  %3 = load ptr, ptr %cSrc.addr, align 8, !dbg !978
  %4 = load i64, ptr %cSrcSize.addr, align 8, !dbg !978
  %5 = load ptr, ptr %DTable.addr, align 8, !dbg !978
  %call = call i64 @HUF_decompress1X1_usingDTable_internal_bmi2(ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) #10, !dbg !978
  store i64 %call, ptr %retval, align 8, !dbg !978
  br label %return, !dbg !978

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !975
  %7 = load i64, ptr %dstSize.addr, align 8, !dbg !975
  %8 = load ptr, ptr %cSrc.addr, align 8, !dbg !975
  %9 = load i64, ptr %cSrcSize.addr, align 8, !dbg !975
  %10 = load ptr, ptr %DTable.addr, align 8, !dbg !975
  %call1 = call i64 @HUF_decompress1X1_usingDTable_internal_default(ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10) #10, !dbg !975
  store i64 %call1, ptr %retval, align 8, !dbg !975
  br label %return, !dbg !975

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, ptr %retval, align 8, !dbg !975
  ret i64 %11, !dbg !975
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress1X1_DCtx_wksp(ptr noundef %DCtx, ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !980 {
entry:
  %retval = alloca i64, align 8
  %DCtx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %ip = alloca ptr, align 8
  %hSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %DCtx, ptr %DCtx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DCtx.addr, metadata !984, metadata !DIExpression()), !dbg !993
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !985, metadata !DIExpression()), !dbg !994
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !986, metadata !DIExpression()), !dbg !995
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !987, metadata !DIExpression()), !dbg !996
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !988, metadata !DIExpression()), !dbg !997
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !989, metadata !DIExpression()), !dbg !998
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !990, metadata !DIExpression()), !dbg !999
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #11, !dbg !1000
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !991, metadata !DIExpression()), !dbg !1001
  %0 = load ptr, ptr %cSrc.addr, align 8, !dbg !1002
  store ptr %0, ptr %ip, align 8, !dbg !1001
  call void @llvm.lifetime.start.p0(i64 8, ptr %hSize) #11, !dbg !1003
  call void @llvm.dbg.declare(metadata ptr %hSize, metadata !992, metadata !DIExpression()), !dbg !1004
  %1 = load ptr, ptr %DCtx.addr, align 8, !dbg !1005
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !1006
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1007
  %4 = load ptr, ptr %workSpace.addr, align 8, !dbg !1008
  %5 = load i64, ptr %wkspSize.addr, align 8, !dbg !1009
  %call = call i64 @HUF_readDTableX1_wksp(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) #10, !dbg !1010
  store i64 %call, ptr %hSize, align 8, !dbg !1004
  %6 = load i64, ptr %hSize, align 8, !dbg !1011
  %call1 = call i32 @ERR_isError(i64 noundef %6) #10, !dbg !1013
  %tobool = icmp ne i32 %call1, 0, !dbg !1013
  br i1 %tobool, label %if.then, label %if.end, !dbg !1014

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %hSize, align 8, !dbg !1015
  store i64 %7, ptr %retval, align 8, !dbg !1016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1016

if.end:                                           ; preds = %entry
  %8 = load i64, ptr %hSize, align 8, !dbg !1017
  %9 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1019
  %cmp = icmp uge i64 %8, %9, !dbg !1020
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1021

if.then2:                                         ; preds = %if.end
  store i64 -72, ptr %retval, align 8, !dbg !1022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1022

if.end3:                                          ; preds = %if.end
  %10 = load i64, ptr %hSize, align 8, !dbg !1023
  %11 = load ptr, ptr %ip, align 8, !dbg !1024
  %add.ptr = getelementptr i8, ptr %11, i64 %10, !dbg !1024
  store ptr %add.ptr, ptr %ip, align 8, !dbg !1024
  %12 = load i64, ptr %hSize, align 8, !dbg !1025
  %13 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1026
  %sub = sub i64 %13, %12, !dbg !1026
  store i64 %sub, ptr %cSrcSize.addr, align 8, !dbg !1026
  %14 = load ptr, ptr %dst.addr, align 8, !dbg !1027
  %15 = load i64, ptr %dstSize.addr, align 8, !dbg !1028
  %16 = load ptr, ptr %ip, align 8, !dbg !1029
  %17 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1030
  %18 = load ptr, ptr %DCtx.addr, align 8, !dbg !1031
  %call4 = call i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %14, i64 noundef %15, ptr noundef %16, i64 noundef %17, ptr noundef %18, i32 noundef 0) #10, !dbg !1032
  store i64 %call4, ptr %retval, align 8, !dbg !1033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1033

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hSize) #11, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #11, !dbg !1034
  %19 = load i64, ptr %retval, align 8, !dbg !1034
  ret i64 %19, !dbg !1034
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress4X1_usingDTable(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #0 align 16 !dbg !1035 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %dtd = alloca %struct.DTableDesc, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1037, metadata !DIExpression()), !dbg !1043
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !1038, metadata !DIExpression()), !dbg !1044
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1039, metadata !DIExpression()), !dbg !1045
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1040, metadata !DIExpression()), !dbg !1046
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !1041, metadata !DIExpression()), !dbg !1047
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !1048
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !1042, metadata !DIExpression()), !dbg !1049
  %0 = load ptr, ptr %DTable.addr, align 8, !dbg !1050
  %call = call i32 @HUF_getDTableDesc(ptr noundef %0) #10, !dbg !1051
  store i32 %call, ptr %dtd, align 1, !dbg !1051
  %tableType = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 1, !dbg !1052
  %1 = load i8, ptr %tableType, align 1, !dbg !1052
  %conv = zext i8 %1 to i32, !dbg !1054
  %cmp = icmp ne i32 %conv, 0, !dbg !1055
  br i1 %cmp, label %if.then, label %if.end, !dbg !1056

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1057

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1058
  %3 = load i64, ptr %dstSize.addr, align 8, !dbg !1059
  %4 = load ptr, ptr %cSrc.addr, align 8, !dbg !1060
  %5 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1061
  %6 = load ptr, ptr %DTable.addr, align 8, !dbg !1062
  %call2 = call i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef 0) #10, !dbg !1063
  store i64 %call2, ptr %retval, align 8, !dbg !1064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1064

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !1065
  %7 = load i64, ptr %retval, align 8, !dbg !1065
  ret i64 %7, !dbg !1065
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable, i32 noundef %bmi2) #0 align 16 !dbg !1066 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %bmi2.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1068, metadata !DIExpression()), !dbg !1074
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !1069, metadata !DIExpression()), !dbg !1075
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1070, metadata !DIExpression()), !dbg !1076
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1071, metadata !DIExpression()), !dbg !1077
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !1072, metadata !DIExpression()), !dbg !1078
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !1073, metadata !DIExpression()), !dbg !1079
  %0 = load i32, ptr %bmi2.addr, align 4, !dbg !1080
  %tobool = icmp ne i32 %0, 0, !dbg !1080
  br i1 %tobool, label %if.then, label %if.end, !dbg !1082

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !1083
  %2 = load i64, ptr %dstSize.addr, align 8, !dbg !1085
  %3 = load ptr, ptr %cSrc.addr, align 8, !dbg !1086
  %4 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1087
  %5 = load ptr, ptr %DTable.addr, align 8, !dbg !1088
  %call = call i64 @HUF_decompress4X1_usingDTable_internal_bmi2(ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) #10, !dbg !1089
  store i64 %call, ptr %retval, align 8, !dbg !1090
  br label %return, !dbg !1090

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !1091
  %7 = load i64, ptr %dstSize.addr, align 8, !dbg !1092
  %8 = load ptr, ptr %cSrc.addr, align 8, !dbg !1093
  %9 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1094
  %10 = load ptr, ptr %DTable.addr, align 8, !dbg !1095
  %call1 = call i64 @HUF_decompress4X1_usingDTable_internal_default(ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10) #10, !dbg !1096
  store i64 %call1, ptr %retval, align 8, !dbg !1097
  br label %return, !dbg !1097

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, ptr %retval, align 8, !dbg !1098
  ret i64 %11, !dbg !1098
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress4X1_DCtx_wksp(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !1099 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1101, metadata !DIExpression()), !dbg !1108
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1102, metadata !DIExpression()), !dbg !1109
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !1103, metadata !DIExpression()), !dbg !1110
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1104, metadata !DIExpression()), !dbg !1111
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1105, metadata !DIExpression()), !dbg !1112
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !1106, metadata !DIExpression()), !dbg !1113
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1107, metadata !DIExpression()), !dbg !1114
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !1115
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !1116
  %2 = load i64, ptr %dstSize.addr, align 8, !dbg !1117
  %3 = load ptr, ptr %cSrc.addr, align 8, !dbg !1118
  %4 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1119
  %5 = load ptr, ptr %workSpace.addr, align 8, !dbg !1120
  %6 = load i64, ptr %wkspSize.addr, align 8, !dbg !1121
  %call = call i64 @HUF_decompress4X1_DCtx_wksp_bmi2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef 0) #10, !dbg !1122
  ret i64 %call, !dbg !1123
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress4X1_DCtx_wksp_bmi2(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %workSpace, i64 noundef %wkspSize, i32 noundef %bmi2) #0 align 16 !dbg !1124 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  %ip = alloca ptr, align 8
  %hSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1128, metadata !DIExpression()), !dbg !1138
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1129, metadata !DIExpression()), !dbg !1139
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !1130, metadata !DIExpression()), !dbg !1140
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1131, metadata !DIExpression()), !dbg !1141
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1132, metadata !DIExpression()), !dbg !1142
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !1133, metadata !DIExpression()), !dbg !1143
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1134, metadata !DIExpression()), !dbg !1144
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !1135, metadata !DIExpression()), !dbg !1145
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #11, !dbg !1146
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !1136, metadata !DIExpression()), !dbg !1147
  %0 = load ptr, ptr %cSrc.addr, align 8, !dbg !1148
  store ptr %0, ptr %ip, align 8, !dbg !1147
  call void @llvm.lifetime.start.p0(i64 8, ptr %hSize) #11, !dbg !1149
  call void @llvm.dbg.declare(metadata ptr %hSize, metadata !1137, metadata !DIExpression()), !dbg !1150
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !1151
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !1152
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1153
  %4 = load ptr, ptr %workSpace.addr, align 8, !dbg !1154
  %5 = load i64, ptr %wkspSize.addr, align 8, !dbg !1155
  %6 = load i32, ptr %bmi2.addr, align 4, !dbg !1156
  %call = call i64 @HUF_readDTableX1_wksp_bmi2(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) #10, !dbg !1157
  store i64 %call, ptr %hSize, align 8, !dbg !1150
  %7 = load i64, ptr %hSize, align 8, !dbg !1158
  %call1 = call i32 @ERR_isError(i64 noundef %7) #10, !dbg !1160
  %tobool = icmp ne i32 %call1, 0, !dbg !1160
  br i1 %tobool, label %if.then, label %if.end, !dbg !1161

if.then:                                          ; preds = %entry
  %8 = load i64, ptr %hSize, align 8, !dbg !1162
  store i64 %8, ptr %retval, align 8, !dbg !1163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1163

if.end:                                           ; preds = %entry
  %9 = load i64, ptr %hSize, align 8, !dbg !1164
  %10 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1166
  %cmp = icmp uge i64 %9, %10, !dbg !1167
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1168

if.then2:                                         ; preds = %if.end
  store i64 -72, ptr %retval, align 8, !dbg !1169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1169

if.end3:                                          ; preds = %if.end
  %11 = load i64, ptr %hSize, align 8, !dbg !1170
  %12 = load ptr, ptr %ip, align 8, !dbg !1171
  %add.ptr = getelementptr i8, ptr %12, i64 %11, !dbg !1171
  store ptr %add.ptr, ptr %ip, align 8, !dbg !1171
  %13 = load i64, ptr %hSize, align 8, !dbg !1172
  %14 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1173
  %sub = sub i64 %14, %13, !dbg !1173
  store i64 %sub, ptr %cSrcSize.addr, align 8, !dbg !1173
  %15 = load ptr, ptr %dst.addr, align 8, !dbg !1174
  %16 = load i64, ptr %dstSize.addr, align 8, !dbg !1175
  %17 = load ptr, ptr %ip, align 8, !dbg !1176
  %18 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1177
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !1178
  %20 = load i32, ptr %bmi2.addr, align 4, !dbg !1179
  %call4 = call i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %15, i64 noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19, i32 noundef %20) #10, !dbg !1180
  store i64 %call4, ptr %retval, align 8, !dbg !1181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1181

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hSize) #11, !dbg !1182
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #11, !dbg !1182
  %21 = load i64, ptr %retval, align 8, !dbg !1182
  ret i64 %21, !dbg !1182
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_readDTableX2_wksp(ptr noundef %DTable, ptr noundef %src, i64 noundef %srcSize, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !1183 {
entry:
  %DTable.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !1185, metadata !DIExpression()), !dbg !1190
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1186, metadata !DIExpression()), !dbg !1191
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1187, metadata !DIExpression()), !dbg !1192
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !1188, metadata !DIExpression()), !dbg !1193
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1189, metadata !DIExpression()), !dbg !1194
  %0 = load ptr, ptr %DTable.addr, align 8, !dbg !1195
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1196
  %2 = load i64, ptr %srcSize.addr, align 8, !dbg !1197
  %3 = load ptr, ptr %workSpace.addr, align 8, !dbg !1198
  %4 = load i64, ptr %wkspSize.addr, align 8, !dbg !1199
  %call = call i64 @HUF_readDTableX2_wksp_bmi2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0) #10, !dbg !1200
  ret i64 %call, !dbg !1201
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_readDTableX2_wksp_bmi2(ptr noundef %DTable, ptr noundef %src, i64 noundef %srcSize, ptr noundef %workSpace, i64 noundef %wkspSize, i32 noundef %bmi2) #0 align 16 !dbg !1202 {
entry:
  %retval = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  %tableLog = alloca i32, align 4
  %maxW = alloca i32, align 4
  %nbSymbols = alloca i32, align 4
  %dtd = alloca %struct.DTableDesc, align 1
  %maxTableLog = alloca i32, align 4
  %iSize = alloca i64, align 8
  %dtPtr = alloca ptr, align 8
  %dt = alloca ptr, align 8
  %rankStart = alloca ptr, align 8
  %wksp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %w = alloca i32, align 4
  %nextRankStart = alloca i32, align 4
  %curr = alloca i32, align 4
  %s = alloca i32, align 4
  %w52 = alloca i32, align 4
  %r = alloca i32, align 4
  %rankVal0 = alloca ptr, align 8
  %rescale = alloca i32, align 4
  %nextRankVal = alloca i32, align 4
  %w70 = alloca i32, align 4
  %curr76 = alloca i32, align 4
  %minBits = alloca i32, align 4
  %consumed = alloca i32, align 4
  %rankValPtr = alloca ptr, align 8
  %w99 = alloca i32, align 4
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !1204, metadata !DIExpression()), !dbg !1255
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1205, metadata !DIExpression()), !dbg !1256
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1206, metadata !DIExpression()), !dbg !1257
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !1207, metadata !DIExpression()), !dbg !1258
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1208, metadata !DIExpression()), !dbg !1259
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !1209, metadata !DIExpression()), !dbg !1260
  call void @llvm.lifetime.start.p0(i64 4, ptr %tableLog) #11, !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %tableLog, metadata !1210, metadata !DIExpression()), !dbg !1262
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxW) #11, !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %maxW, metadata !1211, metadata !DIExpression()), !dbg !1263
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbSymbols) #11, !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %nbSymbols, metadata !1212, metadata !DIExpression()), !dbg !1264
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !1265
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !1213, metadata !DIExpression()), !dbg !1266
  %0 = load ptr, ptr %DTable.addr, align 8, !dbg !1267
  %call = call i32 @HUF_getDTableDesc(ptr noundef %0) #10, !dbg !1268
  store i32 %call, ptr %dtd, align 1, !dbg !1268
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxTableLog) #11, !dbg !1269
  call void @llvm.dbg.declare(metadata ptr %maxTableLog, metadata !1214, metadata !DIExpression()), !dbg !1270
  %maxTableLog1 = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 0, !dbg !1271
  %1 = load i8, ptr %maxTableLog1, align 1, !dbg !1271
  %conv = zext i8 %1 to i32, !dbg !1272
  store i32 %conv, ptr %maxTableLog, align 4, !dbg !1270
  call void @llvm.lifetime.start.p0(i64 8, ptr %iSize) #11, !dbg !1273
  call void @llvm.dbg.declare(metadata ptr %iSize, metadata !1215, metadata !DIExpression()), !dbg !1274
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtPtr) #11, !dbg !1275
  call void @llvm.dbg.declare(metadata ptr %dtPtr, metadata !1216, metadata !DIExpression()), !dbg !1276
  %2 = load ptr, ptr %DTable.addr, align 8, !dbg !1277
  %add.ptr = getelementptr i32, ptr %2, i64 1, !dbg !1278
  store ptr %add.ptr, ptr %dtPtr, align 8, !dbg !1276
  call void @llvm.lifetime.start.p0(i64 8, ptr %dt) #11, !dbg !1279
  call void @llvm.dbg.declare(metadata ptr %dt, metadata !1217, metadata !DIExpression()), !dbg !1280
  %3 = load ptr, ptr %dtPtr, align 8, !dbg !1281
  store ptr %3, ptr %dt, align 8, !dbg !1280
  call void @llvm.lifetime.start.p0(i64 8, ptr %rankStart) #11, !dbg !1282
  call void @llvm.dbg.declare(metadata ptr %rankStart, metadata !1219, metadata !DIExpression()), !dbg !1283
  call void @llvm.lifetime.start.p0(i64 8, ptr %wksp) #11, !dbg !1284
  call void @llvm.dbg.declare(metadata ptr %wksp, metadata !1220, metadata !DIExpression()), !dbg !1285
  %4 = load ptr, ptr %workSpace.addr, align 8, !dbg !1286
  store ptr %4, ptr %wksp, align 8, !dbg !1285
  %5 = load i64, ptr %wkspSize.addr, align 8, !dbg !1287
  %cmp = icmp ugt i64 2120, %5, !dbg !1289
  br i1 %cmp, label %if.then, label %if.end, !dbg !1290

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1291

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %wksp, align 8, !dbg !1292
  %rankStart0 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %6, i32 0, i32 2, !dbg !1293
  %arraydecay = getelementptr inbounds [15 x i32], ptr %rankStart0, i64 0, i64 0, !dbg !1292
  %add.ptr3 = getelementptr i32, ptr %arraydecay, i64 1, !dbg !1294
  store ptr %add.ptr3, ptr %rankStart, align 8, !dbg !1295
  %7 = load ptr, ptr %wksp, align 8, !dbg !1296
  %rankStats = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %7, i32 0, i32 1, !dbg !1296
  %arraydecay4 = getelementptr inbounds [13 x i32], ptr %rankStats, i64 0, i64 0, !dbg !1296
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay4, i8 0, i64 52, i1 false), !dbg !1296
  %8 = load ptr, ptr %wksp, align 8, !dbg !1297
  %rankStart05 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %8, i32 0, i32 2, !dbg !1297
  %arraydecay6 = getelementptr inbounds [15 x i32], ptr %rankStart05, i64 0, i64 0, !dbg !1297
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay6, i8 0, i64 60, i1 false), !dbg !1297
  %9 = load i32, ptr %maxTableLog, align 4, !dbg !1298
  %cmp7 = icmp ugt i32 %9, 12, !dbg !1300
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !1301

if.then9:                                         ; preds = %if.end
  store i64 -44, ptr %retval, align 8, !dbg !1302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1302

if.end10:                                         ; preds = %if.end
  %10 = load ptr, ptr %wksp, align 8, !dbg !1303
  %weightList = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %10, i32 0, i32 4, !dbg !1304
  %arraydecay11 = getelementptr inbounds [256 x i8], ptr %weightList, i64 0, i64 0, !dbg !1303
  %11 = load ptr, ptr %wksp, align 8, !dbg !1305
  %rankStats12 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %11, i32 0, i32 1, !dbg !1306
  %arraydecay13 = getelementptr inbounds [13 x i32], ptr %rankStats12, i64 0, i64 0, !dbg !1305
  %12 = load ptr, ptr %src.addr, align 8, !dbg !1307
  %13 = load i64, ptr %srcSize.addr, align 8, !dbg !1308
  %14 = load ptr, ptr %wksp, align 8, !dbg !1309
  %calleeWksp = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %14, i32 0, i32 5, !dbg !1310
  %arraydecay14 = getelementptr inbounds [218 x i32], ptr %calleeWksp, i64 0, i64 0, !dbg !1309
  %15 = load i32, ptr %bmi2.addr, align 4, !dbg !1311
  %call15 = call i64 @HUF_readStats_wksp(ptr noundef %arraydecay11, i64 noundef 256, ptr noundef %arraydecay13, ptr noundef %nbSymbols, ptr noundef %tableLog, ptr noundef %12, i64 noundef %13, ptr noundef %arraydecay14, i64 noundef 872, i32 noundef %15) #10, !dbg !1312
  store i64 %call15, ptr %iSize, align 8, !dbg !1313
  %16 = load i64, ptr %iSize, align 8, !dbg !1314
  %call16 = call i32 @ERR_isError(i64 noundef %16) #10, !dbg !1316
  %tobool = icmp ne i32 %call16, 0, !dbg !1316
  br i1 %tobool, label %if.then17, label %if.end18, !dbg !1317

if.then17:                                        ; preds = %if.end10
  %17 = load i64, ptr %iSize, align 8, !dbg !1318
  store i64 %17, ptr %retval, align 8, !dbg !1319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1319

if.end18:                                         ; preds = %if.end10
  %18 = load i32, ptr %tableLog, align 4, !dbg !1320
  %19 = load i32, ptr %maxTableLog, align 4, !dbg !1322
  %cmp19 = icmp ugt i32 %18, %19, !dbg !1323
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !1324

if.then21:                                        ; preds = %if.end18
  store i64 -44, ptr %retval, align 8, !dbg !1325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1325

if.end22:                                         ; preds = %if.end18
  %20 = load i32, ptr %tableLog, align 4, !dbg !1326
  %cmp23 = icmp ule i32 %20, 11, !dbg !1328
  br i1 %cmp23, label %land.lhs.true, label %if.end28, !dbg !1329

land.lhs.true:                                    ; preds = %if.end22
  %21 = load i32, ptr %maxTableLog, align 4, !dbg !1330
  %cmp25 = icmp ugt i32 %21, 11, !dbg !1331
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1332

if.then27:                                        ; preds = %land.lhs.true
  store i32 11, ptr %maxTableLog, align 4, !dbg !1333
  br label %if.end28, !dbg !1334

if.end28:                                         ; preds = %if.then27, %land.lhs.true, %if.end22
  %22 = load i32, ptr %tableLog, align 4, !dbg !1335
  store i32 %22, ptr %maxW, align 4, !dbg !1337
  br label %for.cond, !dbg !1338

for.cond:                                         ; preds = %for.inc, %if.end28
  %23 = load ptr, ptr %wksp, align 8, !dbg !1339
  %rankStats29 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %23, i32 0, i32 1, !dbg !1341
  %24 = load i32, ptr %maxW, align 4, !dbg !1342
  %idxprom = zext i32 %24 to i64, !dbg !1339
  %arrayidx = getelementptr [13 x i32], ptr %rankStats29, i64 0, i64 %idxprom, !dbg !1339
  %25 = load i32, ptr %arrayidx, align 4, !dbg !1339
  %cmp30 = icmp eq i32 %25, 0, !dbg !1343
  br i1 %cmp30, label %for.body, label %for.end, !dbg !1344

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !1345

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %maxW, align 4, !dbg !1347
  %dec = add i32 %26, -1, !dbg !1347
  store i32 %dec, ptr %maxW, align 4, !dbg !1347
  br label %for.cond, !dbg !1348, !llvm.loop !1349

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #11, !dbg !1351
  call void @llvm.dbg.declare(metadata ptr %w, metadata !1222, metadata !DIExpression()), !dbg !1352
  call void @llvm.lifetime.start.p0(i64 4, ptr %nextRankStart) #11, !dbg !1351
  call void @llvm.dbg.declare(metadata ptr %nextRankStart, metadata !1224, metadata !DIExpression()), !dbg !1353
  store i32 0, ptr %nextRankStart, align 4, !dbg !1353
  store i32 1, ptr %w, align 4, !dbg !1354
  br label %for.cond32, !dbg !1355

for.cond32:                                       ; preds = %for.inc42, %for.end
  %27 = load i32, ptr %w, align 4, !dbg !1356
  %28 = load i32, ptr %maxW, align 4, !dbg !1357
  %add = add i32 %28, 1, !dbg !1358
  %cmp33 = icmp ult i32 %27, %add, !dbg !1359
  br i1 %cmp33, label %for.body35, label %for.end43, !dbg !1360

for.body35:                                       ; preds = %for.cond32
  call void @llvm.lifetime.start.p0(i64 4, ptr %curr) #11, !dbg !1361
  call void @llvm.dbg.declare(metadata ptr %curr, metadata !1225, metadata !DIExpression()), !dbg !1362
  %29 = load i32, ptr %nextRankStart, align 4, !dbg !1363
  store i32 %29, ptr %curr, align 4, !dbg !1362
  %30 = load ptr, ptr %wksp, align 8, !dbg !1364
  %rankStats36 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %30, i32 0, i32 1, !dbg !1365
  %31 = load i32, ptr %w, align 4, !dbg !1366
  %idxprom37 = zext i32 %31 to i64, !dbg !1364
  %arrayidx38 = getelementptr [13 x i32], ptr %rankStats36, i64 0, i64 %idxprom37, !dbg !1364
  %32 = load i32, ptr %arrayidx38, align 4, !dbg !1364
  %33 = load i32, ptr %nextRankStart, align 4, !dbg !1367
  %add39 = add i32 %33, %32, !dbg !1367
  store i32 %add39, ptr %nextRankStart, align 4, !dbg !1367
  %34 = load i32, ptr %curr, align 4, !dbg !1368
  %35 = load ptr, ptr %rankStart, align 8, !dbg !1369
  %36 = load i32, ptr %w, align 4, !dbg !1370
  %idxprom40 = zext i32 %36 to i64, !dbg !1369
  %arrayidx41 = getelementptr i32, ptr %35, i64 %idxprom40, !dbg !1369
  store i32 %34, ptr %arrayidx41, align 4, !dbg !1371
  call void @llvm.lifetime.end.p0(i64 4, ptr %curr) #11, !dbg !1372
  br label %for.inc42, !dbg !1373

for.inc42:                                        ; preds = %for.body35
  %37 = load i32, ptr %w, align 4, !dbg !1374
  %inc = add i32 %37, 1, !dbg !1374
  store i32 %inc, ptr %w, align 4, !dbg !1374
  br label %for.cond32, !dbg !1375, !llvm.loop !1376

for.end43:                                        ; preds = %for.cond32
  %38 = load i32, ptr %nextRankStart, align 4, !dbg !1378
  %39 = load ptr, ptr %rankStart, align 8, !dbg !1379
  %arrayidx44 = getelementptr i32, ptr %39, i64 0, !dbg !1379
  store i32 %38, ptr %arrayidx44, align 4, !dbg !1380
  %40 = load i32, ptr %nextRankStart, align 4, !dbg !1381
  %41 = load ptr, ptr %rankStart, align 8, !dbg !1382
  %42 = load i32, ptr %maxW, align 4, !dbg !1383
  %add45 = add i32 %42, 1, !dbg !1384
  %idxprom46 = zext i32 %add45 to i64, !dbg !1382
  %arrayidx47 = getelementptr i32, ptr %41, i64 %idxprom46, !dbg !1382
  store i32 %40, ptr %arrayidx47, align 4, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 4, ptr %nextRankStart) #11, !dbg !1386
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #11, !dbg !1386
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #11, !dbg !1387
  call void @llvm.dbg.declare(metadata ptr %s, metadata !1229, metadata !DIExpression()), !dbg !1388
  store i32 0, ptr %s, align 4, !dbg !1389
  br label %for.cond48, !dbg !1390

for.cond48:                                       ; preds = %for.inc63, %for.end43
  %43 = load i32, ptr %s, align 4, !dbg !1391
  %44 = load i32, ptr %nbSymbols, align 4, !dbg !1392
  %cmp49 = icmp ult i32 %43, %44, !dbg !1393
  br i1 %cmp49, label %for.body51, label %for.end65, !dbg !1394

for.body51:                                       ; preds = %for.cond48
  call void @llvm.lifetime.start.p0(i64 4, ptr %w52) #11, !dbg !1395
  call void @llvm.dbg.declare(metadata ptr %w52, metadata !1231, metadata !DIExpression()), !dbg !1396
  %45 = load ptr, ptr %wksp, align 8, !dbg !1397
  %weightList53 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %45, i32 0, i32 4, !dbg !1398
  %46 = load i32, ptr %s, align 4, !dbg !1399
  %idxprom54 = zext i32 %46 to i64, !dbg !1397
  %arrayidx55 = getelementptr [256 x i8], ptr %weightList53, i64 0, i64 %idxprom54, !dbg !1397
  %47 = load i8, ptr %arrayidx55, align 1, !dbg !1397
  %conv56 = zext i8 %47 to i32, !dbg !1397
  store i32 %conv56, ptr %w52, align 4, !dbg !1396
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %r, metadata !1235, metadata !DIExpression()), !dbg !1401
  %48 = load ptr, ptr %rankStart, align 8, !dbg !1402
  %49 = load i32, ptr %w52, align 4, !dbg !1403
  %idxprom57 = zext i32 %49 to i64, !dbg !1402
  %arrayidx58 = getelementptr i32, ptr %48, i64 %idxprom57, !dbg !1402
  %50 = load i32, ptr %arrayidx58, align 4, !dbg !1404
  %inc59 = add i32 %50, 1, !dbg !1404
  store i32 %inc59, ptr %arrayidx58, align 4, !dbg !1404
  store i32 %50, ptr %r, align 4, !dbg !1401
  %51 = load i32, ptr %s, align 4, !dbg !1405
  %conv60 = trunc i32 %51 to i8, !dbg !1406
  %52 = load ptr, ptr %wksp, align 8, !dbg !1407
  %sortedSymbol = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %52, i32 0, i32 3, !dbg !1408
  %53 = load i32, ptr %r, align 4, !dbg !1409
  %idxprom61 = zext i32 %53 to i64, !dbg !1407
  %arrayidx62 = getelementptr [256 x %struct.sortedSymbol_t], ptr %sortedSymbol, i64 0, i64 %idxprom61, !dbg !1407
  %symbol = getelementptr inbounds %struct.sortedSymbol_t, ptr %arrayidx62, i32 0, i32 0, !dbg !1410
  store i8 %conv60, ptr %symbol, align 1, !dbg !1411
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !1412
  call void @llvm.lifetime.end.p0(i64 4, ptr %w52) #11, !dbg !1412
  br label %for.inc63, !dbg !1413

for.inc63:                                        ; preds = %for.body51
  %54 = load i32, ptr %s, align 4, !dbg !1414
  %inc64 = add i32 %54, 1, !dbg !1414
  store i32 %inc64, ptr %s, align 4, !dbg !1414
  br label %for.cond48, !dbg !1415, !llvm.loop !1416

for.end65:                                        ; preds = %for.cond48
  %55 = load ptr, ptr %rankStart, align 8, !dbg !1418
  %arrayidx66 = getelementptr i32, ptr %55, i64 0, !dbg !1418
  store i32 0, ptr %arrayidx66, align 4, !dbg !1419
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #11, !dbg !1420
  call void @llvm.lifetime.start.p0(i64 8, ptr %rankVal0) #11, !dbg !1421
  call void @llvm.dbg.declare(metadata ptr %rankVal0, metadata !1236, metadata !DIExpression()), !dbg !1422
  %56 = load ptr, ptr %wksp, align 8, !dbg !1423
  %rankVal = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %56, i32 0, i32 0, !dbg !1424
  %arrayidx67 = getelementptr [12 x [13 x i32]], ptr %rankVal, i64 0, i64 0, !dbg !1423
  %arraydecay68 = getelementptr inbounds [13 x i32], ptr %arrayidx67, i64 0, i64 0, !dbg !1423
  store ptr %arraydecay68, ptr %rankVal0, align 8, !dbg !1422
  call void @llvm.lifetime.start.p0(i64 4, ptr %rescale) #11, !dbg !1425
  call void @llvm.dbg.declare(metadata ptr %rescale, metadata !1239, metadata !DIExpression()), !dbg !1426
  %57 = load i32, ptr %maxTableLog, align 4, !dbg !1427
  %58 = load i32, ptr %tableLog, align 4, !dbg !1428
  %sub = sub i32 %57, %58, !dbg !1429
  %sub69 = sub i32 %sub, 1, !dbg !1430
  store i32 %sub69, ptr %rescale, align 4, !dbg !1426
  call void @llvm.lifetime.start.p0(i64 4, ptr %nextRankVal) #11, !dbg !1431
  call void @llvm.dbg.declare(metadata ptr %nextRankVal, metadata !1241, metadata !DIExpression()), !dbg !1432
  store i32 0, ptr %nextRankVal, align 4, !dbg !1432
  call void @llvm.lifetime.start.p0(i64 4, ptr %w70) #11, !dbg !1433
  call void @llvm.dbg.declare(metadata ptr %w70, metadata !1242, metadata !DIExpression()), !dbg !1434
  store i32 1, ptr %w70, align 4, !dbg !1435
  br label %for.cond71, !dbg !1436

for.cond71:                                       ; preds = %for.inc84, %for.end65
  %59 = load i32, ptr %w70, align 4, !dbg !1437
  %60 = load i32, ptr %maxW, align 4, !dbg !1438
  %add72 = add i32 %60, 1, !dbg !1439
  %cmp73 = icmp ult i32 %59, %add72, !dbg !1440
  br i1 %cmp73, label %for.body75, label %for.end86, !dbg !1441

for.body75:                                       ; preds = %for.cond71
  call void @llvm.lifetime.start.p0(i64 4, ptr %curr76) #11, !dbg !1442
  call void @llvm.dbg.declare(metadata ptr %curr76, metadata !1243, metadata !DIExpression()), !dbg !1443
  %61 = load i32, ptr %nextRankVal, align 4, !dbg !1444
  store i32 %61, ptr %curr76, align 4, !dbg !1443
  %62 = load ptr, ptr %wksp, align 8, !dbg !1445
  %rankStats77 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %62, i32 0, i32 1, !dbg !1446
  %63 = load i32, ptr %w70, align 4, !dbg !1447
  %idxprom78 = zext i32 %63 to i64, !dbg !1445
  %arrayidx79 = getelementptr [13 x i32], ptr %rankStats77, i64 0, i64 %idxprom78, !dbg !1445
  %64 = load i32, ptr %arrayidx79, align 4, !dbg !1445
  %65 = load i32, ptr %w70, align 4, !dbg !1448
  %66 = load i32, ptr %rescale, align 4, !dbg !1449
  %add80 = add i32 %65, %66, !dbg !1450
  %shl = shl i32 %64, %add80, !dbg !1451
  %67 = load i32, ptr %nextRankVal, align 4, !dbg !1452
  %add81 = add i32 %67, %shl, !dbg !1452
  store i32 %add81, ptr %nextRankVal, align 4, !dbg !1452
  %68 = load i32, ptr %curr76, align 4, !dbg !1453
  %69 = load ptr, ptr %rankVal0, align 8, !dbg !1454
  %70 = load i32, ptr %w70, align 4, !dbg !1455
  %idxprom82 = zext i32 %70 to i64, !dbg !1454
  %arrayidx83 = getelementptr i32, ptr %69, i64 %idxprom82, !dbg !1454
  store i32 %68, ptr %arrayidx83, align 4, !dbg !1456
  call void @llvm.lifetime.end.p0(i64 4, ptr %curr76) #11, !dbg !1457
  br label %for.inc84, !dbg !1458

for.inc84:                                        ; preds = %for.body75
  %71 = load i32, ptr %w70, align 4, !dbg !1459
  %inc85 = add i32 %71, 1, !dbg !1459
  store i32 %inc85, ptr %w70, align 4, !dbg !1459
  br label %for.cond71, !dbg !1460, !llvm.loop !1461

for.end86:                                        ; preds = %for.cond71
  call void @llvm.lifetime.end.p0(i64 4, ptr %w70) #11, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 4, ptr %nextRankVal) #11, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 4, ptr %rescale) #11, !dbg !1463
  call void @llvm.lifetime.start.p0(i64 4, ptr %minBits) #11, !dbg !1464
  call void @llvm.dbg.declare(metadata ptr %minBits, metadata !1247, metadata !DIExpression()), !dbg !1465
  %72 = load i32, ptr %tableLog, align 4, !dbg !1466
  %add87 = add i32 %72, 1, !dbg !1467
  %73 = load i32, ptr %maxW, align 4, !dbg !1468
  %sub88 = sub i32 %add87, %73, !dbg !1469
  store i32 %sub88, ptr %minBits, align 4, !dbg !1465
  call void @llvm.lifetime.start.p0(i64 4, ptr %consumed) #11, !dbg !1470
  call void @llvm.dbg.declare(metadata ptr %consumed, metadata !1249, metadata !DIExpression()), !dbg !1471
  %74 = load i32, ptr %minBits, align 4, !dbg !1472
  store i32 %74, ptr %consumed, align 4, !dbg !1473
  br label %for.cond89, !dbg !1474

for.cond89:                                       ; preds = %for.inc112, %for.end86
  %75 = load i32, ptr %consumed, align 4, !dbg !1475
  %76 = load i32, ptr %maxTableLog, align 4, !dbg !1476
  %77 = load i32, ptr %minBits, align 4, !dbg !1477
  %sub90 = sub i32 %76, %77, !dbg !1478
  %add91 = add i32 %sub90, 1, !dbg !1479
  %cmp92 = icmp ult i32 %75, %add91, !dbg !1480
  br i1 %cmp92, label %for.body94, label %for.end114, !dbg !1481

for.body94:                                       ; preds = %for.cond89
  call void @llvm.lifetime.start.p0(i64 8, ptr %rankValPtr) #11, !dbg !1482
  call void @llvm.dbg.declare(metadata ptr %rankValPtr, metadata !1250, metadata !DIExpression()), !dbg !1483
  %78 = load ptr, ptr %wksp, align 8, !dbg !1484
  %rankVal95 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %78, i32 0, i32 0, !dbg !1485
  %79 = load i32, ptr %consumed, align 4, !dbg !1486
  %idxprom96 = zext i32 %79 to i64, !dbg !1484
  %arrayidx97 = getelementptr [12 x [13 x i32]], ptr %rankVal95, i64 0, i64 %idxprom96, !dbg !1484
  %arraydecay98 = getelementptr inbounds [13 x i32], ptr %arrayidx97, i64 0, i64 0, !dbg !1484
  store ptr %arraydecay98, ptr %rankValPtr, align 8, !dbg !1483
  call void @llvm.lifetime.start.p0(i64 4, ptr %w99) #11, !dbg !1487
  call void @llvm.dbg.declare(metadata ptr %w99, metadata !1254, metadata !DIExpression()), !dbg !1488
  store i32 1, ptr %w99, align 4, !dbg !1489
  br label %for.cond100, !dbg !1491

for.cond100:                                      ; preds = %for.inc109, %for.body94
  %80 = load i32, ptr %w99, align 4, !dbg !1492
  %81 = load i32, ptr %maxW, align 4, !dbg !1494
  %add101 = add i32 %81, 1, !dbg !1495
  %cmp102 = icmp ult i32 %80, %add101, !dbg !1496
  br i1 %cmp102, label %for.body104, label %for.end111, !dbg !1497

for.body104:                                      ; preds = %for.cond100
  %82 = load ptr, ptr %rankVal0, align 8, !dbg !1498
  %83 = load i32, ptr %w99, align 4, !dbg !1500
  %idxprom105 = zext i32 %83 to i64, !dbg !1498
  %arrayidx106 = getelementptr i32, ptr %82, i64 %idxprom105, !dbg !1498
  %84 = load i32, ptr %arrayidx106, align 4, !dbg !1498
  %85 = load i32, ptr %consumed, align 4, !dbg !1501
  %shr = lshr i32 %84, %85, !dbg !1502
  %86 = load ptr, ptr %rankValPtr, align 8, !dbg !1503
  %87 = load i32, ptr %w99, align 4, !dbg !1504
  %idxprom107 = zext i32 %87 to i64, !dbg !1503
  %arrayidx108 = getelementptr i32, ptr %86, i64 %idxprom107, !dbg !1503
  store i32 %shr, ptr %arrayidx108, align 4, !dbg !1505
  br label %for.inc109, !dbg !1506

for.inc109:                                       ; preds = %for.body104
  %88 = load i32, ptr %w99, align 4, !dbg !1507
  %inc110 = add i32 %88, 1, !dbg !1507
  store i32 %inc110, ptr %w99, align 4, !dbg !1507
  br label %for.cond100, !dbg !1508, !llvm.loop !1509

for.end111:                                       ; preds = %for.cond100
  call void @llvm.lifetime.end.p0(i64 4, ptr %w99) #11, !dbg !1511
  call void @llvm.lifetime.end.p0(i64 8, ptr %rankValPtr) #11, !dbg !1511
  br label %for.inc112, !dbg !1512

for.inc112:                                       ; preds = %for.end111
  %89 = load i32, ptr %consumed, align 4, !dbg !1513
  %inc113 = add i32 %89, 1, !dbg !1513
  store i32 %inc113, ptr %consumed, align 4, !dbg !1513
  br label %for.cond89, !dbg !1514, !llvm.loop !1515

for.end114:                                       ; preds = %for.cond89
  call void @llvm.lifetime.end.p0(i64 4, ptr %consumed) #11, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 4, ptr %minBits) #11, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 8, ptr %rankVal0) #11, !dbg !1518
  %90 = load ptr, ptr %dt, align 8, !dbg !1519
  %91 = load i32, ptr %maxTableLog, align 4, !dbg !1520
  %92 = load ptr, ptr %wksp, align 8, !dbg !1521
  %sortedSymbol115 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %92, i32 0, i32 3, !dbg !1522
  %arraydecay116 = getelementptr inbounds [256 x %struct.sortedSymbol_t], ptr %sortedSymbol115, i64 0, i64 0, !dbg !1521
  %93 = load ptr, ptr %wksp, align 8, !dbg !1523
  %rankStart0117 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %93, i32 0, i32 2, !dbg !1524
  %arraydecay118 = getelementptr inbounds [15 x i32], ptr %rankStart0117, i64 0, i64 0, !dbg !1523
  %94 = load ptr, ptr %wksp, align 8, !dbg !1525
  %rankVal119 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %94, i32 0, i32 0, !dbg !1526
  %arraydecay120 = getelementptr inbounds [12 x [13 x i32]], ptr %rankVal119, i64 0, i64 0, !dbg !1525
  %95 = load i32, ptr %maxW, align 4, !dbg !1527
  %96 = load i32, ptr %tableLog, align 4, !dbg !1528
  %add121 = add i32 %96, 1, !dbg !1529
  call void @HUF_fillDTableX2(ptr noundef %90, i32 noundef %91, ptr noundef %arraydecay116, ptr noundef %arraydecay118, ptr noundef %arraydecay120, i32 noundef %95, i32 noundef %add121) #10, !dbg !1530
  %97 = load i32, ptr %maxTableLog, align 4, !dbg !1531
  %conv122 = trunc i32 %97 to i8, !dbg !1532
  %tableLog123 = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 2, !dbg !1533
  store i8 %conv122, ptr %tableLog123, align 1, !dbg !1534
  %tableType = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 1, !dbg !1535
  store i8 1, ptr %tableType, align 1, !dbg !1536
  %98 = load ptr, ptr %DTable.addr, align 8, !dbg !1537
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %98, ptr align 1 %dtd, i64 4, i1 false), !dbg !1537
  %99 = load i64, ptr %iSize, align 8, !dbg !1538
  store i64 %99, ptr %retval, align 8, !dbg !1539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1539

cleanup:                                          ; preds = %for.end114, %if.then21, %if.then17, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %wksp) #11, !dbg !1540
  call void @llvm.lifetime.end.p0(i64 8, ptr %rankStart) #11, !dbg !1540
  call void @llvm.lifetime.end.p0(i64 8, ptr %dt) #11, !dbg !1540
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtPtr) #11, !dbg !1540
  call void @llvm.lifetime.end.p0(i64 8, ptr %iSize) #11, !dbg !1540
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxTableLog) #11, !dbg !1540
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !1540
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbSymbols) #11, !dbg !1540
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxW) #11, !dbg !1540
  call void @llvm.lifetime.end.p0(i64 4, ptr %tableLog) #11, !dbg !1540
  %100 = load i64, ptr %retval, align 8, !dbg !1540
  ret i64 %100, !dbg !1540
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @HUF_fillDTableX2(ptr noundef %DTable, i32 noundef %targetLog, ptr noundef %sortedList, ptr noundef %rankStart, ptr noundef %rankValOrigin, i32 noundef %maxWeight, i32 noundef %nbBitsBaseline) #0 align 16 !dbg !1541 {
entry:
  %DTable.addr = alloca ptr, align 8
  %targetLog.addr = alloca i32, align 4
  %sortedList.addr = alloca ptr, align 8
  %rankStart.addr = alloca ptr, align 8
  %rankValOrigin.addr = alloca ptr, align 8
  %maxWeight.addr = alloca i32, align 4
  %nbBitsBaseline.addr = alloca i32, align 4
  %rankVal = alloca ptr, align 8
  %scaleLog = alloca i32, align 4
  %minBits = alloca i32, align 4
  %w = alloca i32, align 4
  %wEnd = alloca i32, align 4
  %begin = alloca i32, align 4
  %end = alloca i32, align 4
  %nbBits = alloca i32, align 4
  %start = alloca i32, align 4
  %length = alloca i32, align 4
  %minWeight = alloca i32, align 4
  %s = alloca i32, align 4
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !1549, metadata !DIExpression()), !dbg !1573
  store i32 %targetLog, ptr %targetLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %targetLog.addr, metadata !1550, metadata !DIExpression()), !dbg !1574
  store ptr %sortedList, ptr %sortedList.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sortedList.addr, metadata !1551, metadata !DIExpression()), !dbg !1575
  store ptr %rankStart, ptr %rankStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rankStart.addr, metadata !1552, metadata !DIExpression()), !dbg !1576
  store ptr %rankValOrigin, ptr %rankValOrigin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rankValOrigin.addr, metadata !1553, metadata !DIExpression()), !dbg !1577
  store i32 %maxWeight, ptr %maxWeight.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxWeight.addr, metadata !1554, metadata !DIExpression()), !dbg !1578
  store i32 %nbBitsBaseline, ptr %nbBitsBaseline.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBitsBaseline.addr, metadata !1555, metadata !DIExpression()), !dbg !1579
  call void @llvm.lifetime.start.p0(i64 8, ptr %rankVal) #11, !dbg !1580
  call void @llvm.dbg.declare(metadata ptr %rankVal, metadata !1556, metadata !DIExpression()), !dbg !1581
  %0 = load ptr, ptr %rankValOrigin.addr, align 8, !dbg !1582
  %arrayidx = getelementptr [13 x i32], ptr %0, i64 0, !dbg !1582
  %arraydecay = getelementptr inbounds [13 x i32], ptr %arrayidx, i64 0, i64 0, !dbg !1582
  store ptr %arraydecay, ptr %rankVal, align 8, !dbg !1581
  call void @llvm.lifetime.start.p0(i64 4, ptr %scaleLog) #11, !dbg !1583
  call void @llvm.dbg.declare(metadata ptr %scaleLog, metadata !1557, metadata !DIExpression()), !dbg !1584
  %1 = load i32, ptr %nbBitsBaseline.addr, align 4, !dbg !1585
  %2 = load i32, ptr %targetLog.addr, align 4, !dbg !1586
  %sub = sub i32 %1, %2, !dbg !1587
  store i32 %sub, ptr %scaleLog, align 4, !dbg !1584
  call void @llvm.lifetime.start.p0(i64 4, ptr %minBits) #11, !dbg !1588
  call void @llvm.dbg.declare(metadata ptr %minBits, metadata !1558, metadata !DIExpression()), !dbg !1589
  %3 = load i32, ptr %nbBitsBaseline.addr, align 4, !dbg !1590
  %4 = load i32, ptr %maxWeight.addr, align 4, !dbg !1591
  %sub1 = sub i32 %3, %4, !dbg !1592
  store i32 %sub1, ptr %minBits, align 4, !dbg !1589
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #11, !dbg !1593
  call void @llvm.dbg.declare(metadata ptr %w, metadata !1559, metadata !DIExpression()), !dbg !1594
  call void @llvm.lifetime.start.p0(i64 4, ptr %wEnd) #11, !dbg !1595
  call void @llvm.dbg.declare(metadata ptr %wEnd, metadata !1560, metadata !DIExpression()), !dbg !1596
  %5 = load i32, ptr %maxWeight.addr, align 4, !dbg !1597
  %add = add i32 %5, 1, !dbg !1598
  store i32 %add, ptr %wEnd, align 4, !dbg !1596
  store i32 1, ptr %w, align 4, !dbg !1599
  br label %for.cond, !dbg !1600

for.cond:                                         ; preds = %for.inc33, %entry
  %6 = load i32, ptr %w, align 4, !dbg !1601
  %7 = load i32, ptr %wEnd, align 4, !dbg !1602
  %cmp = icmp slt i32 %6, %7, !dbg !1603
  br i1 %cmp, label %for.body, label %for.end35, !dbg !1604

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %begin) #11, !dbg !1605
  call void @llvm.dbg.declare(metadata ptr %begin, metadata !1561, metadata !DIExpression()), !dbg !1606
  %8 = load ptr, ptr %rankStart.addr, align 8, !dbg !1607
  %9 = load i32, ptr %w, align 4, !dbg !1608
  %idxprom = sext i32 %9 to i64, !dbg !1607
  %arrayidx2 = getelementptr i32, ptr %8, i64 %idxprom, !dbg !1607
  %10 = load i32, ptr %arrayidx2, align 4, !dbg !1607
  store i32 %10, ptr %begin, align 4, !dbg !1606
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #11, !dbg !1609
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1565, metadata !DIExpression()), !dbg !1610
  %11 = load ptr, ptr %rankStart.addr, align 8, !dbg !1611
  %12 = load i32, ptr %w, align 4, !dbg !1612
  %add3 = add i32 %12, 1, !dbg !1613
  %idxprom4 = sext i32 %add3 to i64, !dbg !1611
  %arrayidx5 = getelementptr i32, ptr %11, i64 %idxprom4, !dbg !1611
  %13 = load i32, ptr %arrayidx5, align 4, !dbg !1611
  store i32 %13, ptr %end, align 4, !dbg !1610
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbBits) #11, !dbg !1614
  call void @llvm.dbg.declare(metadata ptr %nbBits, metadata !1566, metadata !DIExpression()), !dbg !1615
  %14 = load i32, ptr %nbBitsBaseline.addr, align 4, !dbg !1616
  %15 = load i32, ptr %w, align 4, !dbg !1617
  %sub6 = sub i32 %14, %15, !dbg !1618
  store i32 %sub6, ptr %nbBits, align 4, !dbg !1615
  %16 = load i32, ptr %targetLog.addr, align 4, !dbg !1619
  %17 = load i32, ptr %nbBits, align 4, !dbg !1620
  %sub7 = sub i32 %16, %17, !dbg !1621
  %18 = load i32, ptr %minBits, align 4, !dbg !1622
  %cmp8 = icmp uge i32 %sub7, %18, !dbg !1623
  br i1 %cmp8, label %if.then, label %if.else, !dbg !1624

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #11, !dbg !1625
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1567, metadata !DIExpression()), !dbg !1626
  %19 = load ptr, ptr %rankVal, align 8, !dbg !1627
  %20 = load i32, ptr %w, align 4, !dbg !1628
  %idxprom9 = sext i32 %20 to i64, !dbg !1627
  %arrayidx10 = getelementptr i32, ptr %19, i64 %idxprom9, !dbg !1627
  %21 = load i32, ptr %arrayidx10, align 4, !dbg !1627
  store i32 %21, ptr %start, align 4, !dbg !1626
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #11, !dbg !1629
  call void @llvm.dbg.declare(metadata ptr %length, metadata !1570, metadata !DIExpression()), !dbg !1630
  %22 = load i32, ptr %targetLog.addr, align 4, !dbg !1631
  %23 = load i32, ptr %nbBits, align 4, !dbg !1632
  %sub11 = sub i32 %22, %23, !dbg !1633
  %and = and i32 %sub11, 31, !dbg !1634
  %shl = shl i32 1, %and, !dbg !1635
  store i32 %shl, ptr %length, align 4, !dbg !1630
  call void @llvm.lifetime.start.p0(i64 4, ptr %minWeight) #11, !dbg !1636
  call void @llvm.dbg.declare(metadata ptr %minWeight, metadata !1571, metadata !DIExpression()), !dbg !1637
  %24 = load i32, ptr %nbBits, align 4, !dbg !1638
  %25 = load i32, ptr %scaleLog, align 4, !dbg !1639
  %add12 = add i32 %24, %25, !dbg !1640
  store i32 %add12, ptr %minWeight, align 4, !dbg !1637
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #11, !dbg !1641
  call void @llvm.dbg.declare(metadata ptr %s, metadata !1572, metadata !DIExpression()), !dbg !1642
  %26 = load i32, ptr %minWeight, align 4, !dbg !1643
  %cmp13 = icmp slt i32 %26, 1, !dbg !1645
  br i1 %cmp13, label %if.then14, label %if.end, !dbg !1646

if.then14:                                        ; preds = %if.then
  store i32 1, ptr %minWeight, align 4, !dbg !1647
  br label %if.end, !dbg !1648

if.end:                                           ; preds = %if.then14, %if.then
  %27 = load i32, ptr %begin, align 4, !dbg !1649
  store i32 %27, ptr %s, align 4, !dbg !1651
  br label %for.cond15, !dbg !1652

for.cond15:                                       ; preds = %for.inc, %if.end
  %28 = load i32, ptr %s, align 4, !dbg !1653
  %29 = load i32, ptr %end, align 4, !dbg !1655
  %cmp16 = icmp ne i32 %28, %29, !dbg !1656
  br i1 %cmp16, label %for.body17, label %for.end, !dbg !1657

for.body17:                                       ; preds = %for.cond15
  %30 = load ptr, ptr %DTable.addr, align 8, !dbg !1658
  %31 = load i32, ptr %start, align 4, !dbg !1660
  %idx.ext = sext i32 %31 to i64, !dbg !1661
  %add.ptr = getelementptr %struct.HUF_DEltX2, ptr %30, i64 %idx.ext, !dbg !1661
  %32 = load i32, ptr %targetLog.addr, align 4, !dbg !1662
  %33 = load i32, ptr %nbBits, align 4, !dbg !1663
  %34 = load ptr, ptr %rankValOrigin.addr, align 8, !dbg !1664
  %35 = load i32, ptr %nbBits, align 4, !dbg !1665
  %idxprom18 = zext i32 %35 to i64, !dbg !1664
  %arrayidx19 = getelementptr [13 x i32], ptr %34, i64 %idxprom18, !dbg !1664
  %arraydecay20 = getelementptr inbounds [13 x i32], ptr %arrayidx19, i64 0, i64 0, !dbg !1664
  %36 = load i32, ptr %minWeight, align 4, !dbg !1666
  %37 = load i32, ptr %wEnd, align 4, !dbg !1667
  %38 = load ptr, ptr %sortedList.addr, align 8, !dbg !1668
  %39 = load ptr, ptr %rankStart.addr, align 8, !dbg !1669
  %40 = load i32, ptr %nbBitsBaseline.addr, align 4, !dbg !1670
  %41 = load ptr, ptr %sortedList.addr, align 8, !dbg !1671
  %42 = load i32, ptr %s, align 4, !dbg !1672
  %idxprom21 = sext i32 %42 to i64, !dbg !1671
  %arrayidx22 = getelementptr %struct.sortedSymbol_t, ptr %41, i64 %idxprom21, !dbg !1671
  %symbol = getelementptr inbounds %struct.sortedSymbol_t, ptr %arrayidx22, i32 0, i32 0, !dbg !1673
  %43 = load i8, ptr %symbol, align 1, !dbg !1673
  %conv = zext i8 %43 to i16, !dbg !1671
  call void @HUF_fillDTableX2Level2(ptr noundef %add.ptr, i32 noundef %32, i32 noundef %33, ptr noundef %arraydecay20, i32 noundef %36, i32 noundef %37, ptr noundef %38, ptr noundef %39, i32 noundef %40, i16 noundef zeroext %conv) #10, !dbg !1674
  %44 = load i32, ptr %length, align 4, !dbg !1675
  %45 = load i32, ptr %start, align 4, !dbg !1676
  %add23 = add i32 %45, %44, !dbg !1676
  store i32 %add23, ptr %start, align 4, !dbg !1676
  br label %for.inc, !dbg !1677

for.inc:                                          ; preds = %for.body17
  %46 = load i32, ptr %s, align 4, !dbg !1678
  %inc = add i32 %46, 1, !dbg !1678
  store i32 %inc, ptr %s, align 4, !dbg !1678
  br label %for.cond15, !dbg !1679, !llvm.loop !1680

for.end:                                          ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #11, !dbg !1682
  call void @llvm.lifetime.end.p0(i64 4, ptr %minWeight) #11, !dbg !1682
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #11, !dbg !1682
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #11, !dbg !1682
  br label %if.end32, !dbg !1683

if.else:                                          ; preds = %for.body
  %47 = load ptr, ptr %DTable.addr, align 8, !dbg !1684
  %48 = load ptr, ptr %rankVal, align 8, !dbg !1686
  %49 = load i32, ptr %w, align 4, !dbg !1687
  %idxprom24 = sext i32 %49 to i64, !dbg !1686
  %arrayidx25 = getelementptr i32, ptr %48, i64 %idxprom24, !dbg !1686
  %50 = load i32, ptr %arrayidx25, align 4, !dbg !1686
  %idx.ext26 = zext i32 %50 to i64, !dbg !1688
  %add.ptr27 = getelementptr %struct.HUF_DEltX2, ptr %47, i64 %idx.ext26, !dbg !1688
  %51 = load ptr, ptr %sortedList.addr, align 8, !dbg !1689
  %52 = load i32, ptr %begin, align 4, !dbg !1690
  %idx.ext28 = sext i32 %52 to i64, !dbg !1691
  %add.ptr29 = getelementptr %struct.sortedSymbol_t, ptr %51, i64 %idx.ext28, !dbg !1691
  %53 = load ptr, ptr %sortedList.addr, align 8, !dbg !1692
  %54 = load i32, ptr %end, align 4, !dbg !1693
  %idx.ext30 = sext i32 %54 to i64, !dbg !1694
  %add.ptr31 = getelementptr %struct.sortedSymbol_t, ptr %53, i64 %idx.ext30, !dbg !1694
  %55 = load i32, ptr %nbBits, align 4, !dbg !1695
  %56 = load i32, ptr %targetLog.addr, align 4, !dbg !1696
  call void @HUF_fillDTableX2ForWeight(ptr noundef %add.ptr27, ptr noundef %add.ptr29, ptr noundef %add.ptr31, i32 noundef %55, i32 noundef %56, i16 noundef zeroext 0, i32 noundef 1) #10, !dbg !1697
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbBits) #11, !dbg !1698
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #11, !dbg !1698
  call void @llvm.lifetime.end.p0(i64 4, ptr %begin) #11, !dbg !1698
  br label %for.inc33, !dbg !1699

for.inc33:                                        ; preds = %if.end32
  %57 = load i32, ptr %w, align 4, !dbg !1700
  %inc34 = add i32 %57, 1, !dbg !1700
  store i32 %inc34, ptr %w, align 4, !dbg !1700
  br label %for.cond, !dbg !1701, !llvm.loop !1702

for.end35:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %wEnd) #11, !dbg !1704
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #11, !dbg !1704
  call void @llvm.lifetime.end.p0(i64 4, ptr %minBits) #11, !dbg !1704
  call void @llvm.lifetime.end.p0(i64 4, ptr %scaleLog) #11, !dbg !1704
  call void @llvm.lifetime.end.p0(i64 8, ptr %rankVal) #11, !dbg !1704
  ret void, !dbg !1704
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress1X2_usingDTable(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #0 align 16 !dbg !1705 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %dtd = alloca %struct.DTableDesc, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1707, metadata !DIExpression()), !dbg !1713
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !1708, metadata !DIExpression()), !dbg !1714
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1709, metadata !DIExpression()), !dbg !1715
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1710, metadata !DIExpression()), !dbg !1716
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !1711, metadata !DIExpression()), !dbg !1717
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !1718
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !1712, metadata !DIExpression()), !dbg !1719
  %0 = load ptr, ptr %DTable.addr, align 8, !dbg !1720
  %call = call i32 @HUF_getDTableDesc(ptr noundef %0) #10, !dbg !1721
  store i32 %call, ptr %dtd, align 1, !dbg !1721
  %tableType = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 1, !dbg !1722
  %1 = load i8, ptr %tableType, align 1, !dbg !1722
  %conv = zext i8 %1 to i32, !dbg !1724
  %cmp = icmp ne i32 %conv, 1, !dbg !1725
  br i1 %cmp, label %if.then, label %if.end, !dbg !1726

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1727

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1728
  %3 = load i64, ptr %dstSize.addr, align 8, !dbg !1729
  %4 = load ptr, ptr %cSrc.addr, align 8, !dbg !1730
  %5 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1731
  %6 = load ptr, ptr %DTable.addr, align 8, !dbg !1732
  %call2 = call i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef 0) #10, !dbg !1733
  store i64 %call2, ptr %retval, align 8, !dbg !1734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1734

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !1735
  %7 = load i64, ptr %retval, align 8, !dbg !1735
  ret i64 %7, !dbg !1735
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable, i32 noundef %bmi2) #0 align 16 !dbg !1736 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %bmi2.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1738, metadata !DIExpression()), !dbg !1744
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !1739, metadata !DIExpression()), !dbg !1744
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1740, metadata !DIExpression()), !dbg !1744
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1741, metadata !DIExpression()), !dbg !1744
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !1742, metadata !DIExpression()), !dbg !1744
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !1743, metadata !DIExpression()), !dbg !1744
  %0 = load i32, ptr %bmi2.addr, align 4, !dbg !1745
  %tobool = icmp ne i32 %0, 0, !dbg !1745
  br i1 %tobool, label %if.then, label %if.end, !dbg !1744

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !1747
  %2 = load i64, ptr %dstSize.addr, align 8, !dbg !1747
  %3 = load ptr, ptr %cSrc.addr, align 8, !dbg !1747
  %4 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1747
  %5 = load ptr, ptr %DTable.addr, align 8, !dbg !1747
  %call = call i64 @HUF_decompress1X2_usingDTable_internal_bmi2(ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) #10, !dbg !1747
  store i64 %call, ptr %retval, align 8, !dbg !1747
  br label %return, !dbg !1747

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !1744
  %7 = load i64, ptr %dstSize.addr, align 8, !dbg !1744
  %8 = load ptr, ptr %cSrc.addr, align 8, !dbg !1744
  %9 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1744
  %10 = load ptr, ptr %DTable.addr, align 8, !dbg !1744
  %call1 = call i64 @HUF_decompress1X2_usingDTable_internal_default(ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10) #10, !dbg !1744
  store i64 %call1, ptr %retval, align 8, !dbg !1744
  br label %return, !dbg !1744

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, ptr %retval, align 8, !dbg !1744
  ret i64 %11, !dbg !1744
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress1X2_DCtx_wksp(ptr noundef %DCtx, ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !1749 {
entry:
  %retval = alloca i64, align 8
  %DCtx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %ip = alloca ptr, align 8
  %hSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %DCtx, ptr %DCtx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DCtx.addr, metadata !1751, metadata !DIExpression()), !dbg !1760
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1752, metadata !DIExpression()), !dbg !1761
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !1753, metadata !DIExpression()), !dbg !1762
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1754, metadata !DIExpression()), !dbg !1763
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1755, metadata !DIExpression()), !dbg !1764
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !1756, metadata !DIExpression()), !dbg !1765
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1757, metadata !DIExpression()), !dbg !1766
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #11, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !1758, metadata !DIExpression()), !dbg !1768
  %0 = load ptr, ptr %cSrc.addr, align 8, !dbg !1769
  store ptr %0, ptr %ip, align 8, !dbg !1768
  call void @llvm.lifetime.start.p0(i64 8, ptr %hSize) #11, !dbg !1770
  call void @llvm.dbg.declare(metadata ptr %hSize, metadata !1759, metadata !DIExpression()), !dbg !1771
  %1 = load ptr, ptr %DCtx.addr, align 8, !dbg !1772
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !1773
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1774
  %4 = load ptr, ptr %workSpace.addr, align 8, !dbg !1775
  %5 = load i64, ptr %wkspSize.addr, align 8, !dbg !1776
  %call = call i64 @HUF_readDTableX2_wksp(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) #10, !dbg !1777
  store i64 %call, ptr %hSize, align 8, !dbg !1771
  %6 = load i64, ptr %hSize, align 8, !dbg !1778
  %call1 = call i32 @ERR_isError(i64 noundef %6) #10, !dbg !1780
  %tobool = icmp ne i32 %call1, 0, !dbg !1780
  br i1 %tobool, label %if.then, label %if.end, !dbg !1781

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %hSize, align 8, !dbg !1782
  store i64 %7, ptr %retval, align 8, !dbg !1783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1783

if.end:                                           ; preds = %entry
  %8 = load i64, ptr %hSize, align 8, !dbg !1784
  %9 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1786
  %cmp = icmp uge i64 %8, %9, !dbg !1787
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1788

if.then2:                                         ; preds = %if.end
  store i64 -72, ptr %retval, align 8, !dbg !1789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1789

if.end3:                                          ; preds = %if.end
  %10 = load i64, ptr %hSize, align 8, !dbg !1790
  %11 = load ptr, ptr %ip, align 8, !dbg !1791
  %add.ptr = getelementptr i8, ptr %11, i64 %10, !dbg !1791
  store ptr %add.ptr, ptr %ip, align 8, !dbg !1791
  %12 = load i64, ptr %hSize, align 8, !dbg !1792
  %13 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1793
  %sub = sub i64 %13, %12, !dbg !1793
  store i64 %sub, ptr %cSrcSize.addr, align 8, !dbg !1793
  %14 = load ptr, ptr %dst.addr, align 8, !dbg !1794
  %15 = load i64, ptr %dstSize.addr, align 8, !dbg !1795
  %16 = load ptr, ptr %ip, align 8, !dbg !1796
  %17 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1797
  %18 = load ptr, ptr %DCtx.addr, align 8, !dbg !1798
  %call4 = call i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %14, i64 noundef %15, ptr noundef %16, i64 noundef %17, ptr noundef %18, i32 noundef 0) #10, !dbg !1799
  store i64 %call4, ptr %retval, align 8, !dbg !1800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1800

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hSize) #11, !dbg !1801
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #11, !dbg !1801
  %19 = load i64, ptr %retval, align 8, !dbg !1801
  ret i64 %19, !dbg !1801
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress4X2_usingDTable(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #0 align 16 !dbg !1802 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %dtd = alloca %struct.DTableDesc, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1804, metadata !DIExpression()), !dbg !1810
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !1805, metadata !DIExpression()), !dbg !1811
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1806, metadata !DIExpression()), !dbg !1812
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1807, metadata !DIExpression()), !dbg !1813
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !1808, metadata !DIExpression()), !dbg !1814
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !1815
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !1809, metadata !DIExpression()), !dbg !1816
  %0 = load ptr, ptr %DTable.addr, align 8, !dbg !1817
  %call = call i32 @HUF_getDTableDesc(ptr noundef %0) #10, !dbg !1818
  store i32 %call, ptr %dtd, align 1, !dbg !1818
  %tableType = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 1, !dbg !1819
  %1 = load i8, ptr %tableType, align 1, !dbg !1819
  %conv = zext i8 %1 to i32, !dbg !1821
  %cmp = icmp ne i32 %conv, 1, !dbg !1822
  br i1 %cmp, label %if.then, label %if.end, !dbg !1823

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1824

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1825
  %3 = load i64, ptr %dstSize.addr, align 8, !dbg !1826
  %4 = load ptr, ptr %cSrc.addr, align 8, !dbg !1827
  %5 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1828
  %6 = load ptr, ptr %DTable.addr, align 8, !dbg !1829
  %call2 = call i64 @HUF_decompress4X2_usingDTable_internal(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef 0) #10, !dbg !1830
  store i64 %call2, ptr %retval, align 8, !dbg !1831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1831

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !1832
  %7 = load i64, ptr %retval, align 8, !dbg !1832
  ret i64 %7, !dbg !1832
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress4X2_usingDTable_internal(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable, i32 noundef %bmi2) #0 align 16 !dbg !1833 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %bmi2.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1835, metadata !DIExpression()), !dbg !1841
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !1836, metadata !DIExpression()), !dbg !1842
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1837, metadata !DIExpression()), !dbg !1843
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1838, metadata !DIExpression()), !dbg !1844
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !1839, metadata !DIExpression()), !dbg !1845
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !1840, metadata !DIExpression()), !dbg !1846
  %0 = load i32, ptr %bmi2.addr, align 4, !dbg !1847
  %tobool = icmp ne i32 %0, 0, !dbg !1847
  br i1 %tobool, label %if.then, label %if.end, !dbg !1849

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !1850
  %2 = load i64, ptr %dstSize.addr, align 8, !dbg !1852
  %3 = load ptr, ptr %cSrc.addr, align 8, !dbg !1853
  %4 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1854
  %5 = load ptr, ptr %DTable.addr, align 8, !dbg !1855
  %call = call i64 @HUF_decompress4X2_usingDTable_internal_bmi2(ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) #10, !dbg !1856
  store i64 %call, ptr %retval, align 8, !dbg !1857
  br label %return, !dbg !1857

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !1858
  %7 = load i64, ptr %dstSize.addr, align 8, !dbg !1859
  %8 = load ptr, ptr %cSrc.addr, align 8, !dbg !1860
  %9 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1861
  %10 = load ptr, ptr %DTable.addr, align 8, !dbg !1862
  %call1 = call i64 @HUF_decompress4X2_usingDTable_internal_default(ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10) #10, !dbg !1863
  store i64 %call1, ptr %retval, align 8, !dbg !1864
  br label %return, !dbg !1864

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, ptr %retval, align 8, !dbg !1865
  ret i64 %11, !dbg !1865
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress4X2_DCtx_wksp(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !1866 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1868, metadata !DIExpression()), !dbg !1875
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1869, metadata !DIExpression()), !dbg !1876
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !1870, metadata !DIExpression()), !dbg !1877
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1871, metadata !DIExpression()), !dbg !1878
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1872, metadata !DIExpression()), !dbg !1879
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !1873, metadata !DIExpression()), !dbg !1880
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1874, metadata !DIExpression()), !dbg !1881
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !1882
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !1883
  %2 = load i64, ptr %dstSize.addr, align 8, !dbg !1884
  %3 = load ptr, ptr %cSrc.addr, align 8, !dbg !1885
  %4 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1886
  %5 = load ptr, ptr %workSpace.addr, align 8, !dbg !1887
  %6 = load i64, ptr %wkspSize.addr, align 8, !dbg !1888
  %call = call i64 @HUF_decompress4X2_DCtx_wksp_bmi2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef 0) #10, !dbg !1889
  ret i64 %call, !dbg !1890
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress4X2_DCtx_wksp_bmi2(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %workSpace, i64 noundef %wkspSize, i32 noundef %bmi2) #0 align 16 !dbg !1891 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  %ip = alloca ptr, align 8
  %hSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1893, metadata !DIExpression()), !dbg !1903
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1894, metadata !DIExpression()), !dbg !1904
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !1895, metadata !DIExpression()), !dbg !1905
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1896, metadata !DIExpression()), !dbg !1906
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1897, metadata !DIExpression()), !dbg !1907
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !1898, metadata !DIExpression()), !dbg !1908
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1899, metadata !DIExpression()), !dbg !1909
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !1900, metadata !DIExpression()), !dbg !1910
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #11, !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !1901, metadata !DIExpression()), !dbg !1912
  %0 = load ptr, ptr %cSrc.addr, align 8, !dbg !1913
  store ptr %0, ptr %ip, align 8, !dbg !1912
  call void @llvm.lifetime.start.p0(i64 8, ptr %hSize) #11, !dbg !1914
  call void @llvm.dbg.declare(metadata ptr %hSize, metadata !1902, metadata !DIExpression()), !dbg !1915
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !1916
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !1917
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1918
  %4 = load ptr, ptr %workSpace.addr, align 8, !dbg !1919
  %5 = load i64, ptr %wkspSize.addr, align 8, !dbg !1920
  %call = call i64 @HUF_readDTableX2_wksp(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) #10, !dbg !1921
  store i64 %call, ptr %hSize, align 8, !dbg !1915
  %6 = load i64, ptr %hSize, align 8, !dbg !1922
  %call1 = call i32 @ERR_isError(i64 noundef %6) #10, !dbg !1924
  %tobool = icmp ne i32 %call1, 0, !dbg !1924
  br i1 %tobool, label %if.then, label %if.end, !dbg !1925

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %hSize, align 8, !dbg !1926
  store i64 %7, ptr %retval, align 8, !dbg !1927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1927

if.end:                                           ; preds = %entry
  %8 = load i64, ptr %hSize, align 8, !dbg !1928
  %9 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1930
  %cmp = icmp uge i64 %8, %9, !dbg !1931
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1932

if.then2:                                         ; preds = %if.end
  store i64 -72, ptr %retval, align 8, !dbg !1933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1933

if.end3:                                          ; preds = %if.end
  %10 = load i64, ptr %hSize, align 8, !dbg !1934
  %11 = load ptr, ptr %ip, align 8, !dbg !1935
  %add.ptr = getelementptr i8, ptr %11, i64 %10, !dbg !1935
  store ptr %add.ptr, ptr %ip, align 8, !dbg !1935
  %12 = load i64, ptr %hSize, align 8, !dbg !1936
  %13 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1937
  %sub = sub i64 %13, %12, !dbg !1937
  store i64 %sub, ptr %cSrcSize.addr, align 8, !dbg !1937
  %14 = load ptr, ptr %dst.addr, align 8, !dbg !1938
  %15 = load i64, ptr %dstSize.addr, align 8, !dbg !1939
  %16 = load ptr, ptr %ip, align 8, !dbg !1940
  %17 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1941
  %18 = load ptr, ptr %dctx.addr, align 8, !dbg !1942
  %19 = load i32, ptr %bmi2.addr, align 4, !dbg !1943
  %call4 = call i64 @HUF_decompress4X2_usingDTable_internal(ptr noundef %14, i64 noundef %15, ptr noundef %16, i64 noundef %17, ptr noundef %18, i32 noundef %19) #10, !dbg !1944
  store i64 %call4, ptr %retval, align 8, !dbg !1945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1945

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hSize) #11, !dbg !1946
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #11, !dbg !1946
  %20 = load i64, ptr %retval, align 8, !dbg !1946
  ret i64 %20, !dbg !1946
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress1X_usingDTable(ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #0 align 16 !dbg !1947 {
entry:
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %dtd = alloca %struct.DTableDesc, align 1
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1949, metadata !DIExpression()), !dbg !1956
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !1950, metadata !DIExpression()), !dbg !1957
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1951, metadata !DIExpression()), !dbg !1958
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1952, metadata !DIExpression()), !dbg !1959
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !1953, metadata !DIExpression()), !dbg !1960
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !1961
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !1954, metadata !DIExpression()), !dbg !1962
  %0 = load ptr, ptr %DTable.addr, align 8, !dbg !1963
  %call = call i32 @HUF_getDTableDesc(ptr noundef %0) #10, !dbg !1964
  store i32 %call, ptr %dtd, align 1, !dbg !1964
  %tableType = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 1, !dbg !1965
  %1 = load i8, ptr %tableType, align 1, !dbg !1965
  %conv = zext i8 %1 to i32, !dbg !1966
  %tobool = icmp ne i32 %conv, 0, !dbg !1966
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1966

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1967
  %3 = load i64, ptr %maxDstSize.addr, align 8, !dbg !1968
  %4 = load ptr, ptr %cSrc.addr, align 8, !dbg !1969
  %5 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1970
  %6 = load ptr, ptr %DTable.addr, align 8, !dbg !1971
  %call1 = call i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef 0) #10, !dbg !1972
  br label %cond.end, !dbg !1966

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !1973
  %8 = load i64, ptr %maxDstSize.addr, align 8, !dbg !1974
  %9 = load ptr, ptr %cSrc.addr, align 8, !dbg !1975
  %10 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1976
  %11 = load ptr, ptr %DTable.addr, align 8, !dbg !1977
  %call2 = call i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11, i32 noundef 0) #10, !dbg !1978
  br label %cond.end, !dbg !1966

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call1, %cond.true ], [ %call2, %cond.false ], !dbg !1966
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !1979
  ret i64 %cond, !dbg !1980
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress4X_usingDTable(ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #0 align 16 !dbg !1981 {
entry:
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %dtd = alloca %struct.DTableDesc, align 1
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1983, metadata !DIExpression()), !dbg !1989
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !1984, metadata !DIExpression()), !dbg !1990
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1985, metadata !DIExpression()), !dbg !1991
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1986, metadata !DIExpression()), !dbg !1992
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !1987, metadata !DIExpression()), !dbg !1993
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !1994
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !1988, metadata !DIExpression()), !dbg !1995
  %0 = load ptr, ptr %DTable.addr, align 8, !dbg !1996
  %call = call i32 @HUF_getDTableDesc(ptr noundef %0) #10, !dbg !1997
  store i32 %call, ptr %dtd, align 1, !dbg !1997
  %tableType = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 1, !dbg !1998
  %1 = load i8, ptr %tableType, align 1, !dbg !1998
  %conv = zext i8 %1 to i32, !dbg !1999
  %tobool = icmp ne i32 %conv, 0, !dbg !1999
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1999

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !2000
  %3 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2001
  %4 = load ptr, ptr %cSrc.addr, align 8, !dbg !2002
  %5 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2003
  %6 = load ptr, ptr %DTable.addr, align 8, !dbg !2004
  %call1 = call i64 @HUF_decompress4X2_usingDTable_internal(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef 0) #10, !dbg !2005
  br label %cond.end, !dbg !1999

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !2006
  %8 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2007
  %9 = load ptr, ptr %cSrc.addr, align 8, !dbg !2008
  %10 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2009
  %11 = load ptr, ptr %DTable.addr, align 8, !dbg !2010
  %call2 = call i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11, i32 noundef 0) #10, !dbg !2011
  br label %cond.end, !dbg !1999

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call1, %cond.true ], [ %call2, %cond.false ], !dbg !1999
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !2012
  ret i64 %cond, !dbg !2013
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @HUF_selectDecoder(i64 noundef %dstSize, i64 noundef %cSrcSize) #0 align 16 !dbg !2014 {
entry:
  %dstSize.addr = alloca i64, align 8
  %cSrcSize.addr = alloca i64, align 8
  %Q = alloca i32, align 4
  %D256 = alloca i32, align 4
  %DTime0 = alloca i32, align 4
  %DTime1 = alloca i32, align 4
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !2018, metadata !DIExpression()), !dbg !2025
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !2019, metadata !DIExpression()), !dbg !2026
  call void @llvm.lifetime.start.p0(i64 4, ptr %Q) #11, !dbg !2027
  call void @llvm.dbg.declare(metadata ptr %Q, metadata !2020, metadata !DIExpression()), !dbg !2028
  %0 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2029
  %1 = load i64, ptr %dstSize.addr, align 8, !dbg !2030
  %cmp = icmp uge i64 %0, %1, !dbg !2031
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2032

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2032

cond.false:                                       ; preds = %entry
  %2 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2033
  %mul = mul i64 %2, 16, !dbg !2034
  %3 = load i64, ptr %dstSize.addr, align 8, !dbg !2035
  %div = udiv i64 %mul, %3, !dbg !2036
  %conv = trunc i64 %div to i32, !dbg !2037
  br label %cond.end, !dbg !2032

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15, %cond.true ], [ %conv, %cond.false ], !dbg !2032
  store i32 %cond, ptr %Q, align 4, !dbg !2028
  call void @llvm.lifetime.start.p0(i64 4, ptr %D256) #11, !dbg !2038
  call void @llvm.dbg.declare(metadata ptr %D256, metadata !2022, metadata !DIExpression()), !dbg !2039
  %4 = load i64, ptr %dstSize.addr, align 8, !dbg !2040
  %shr = lshr i64 %4, 8, !dbg !2041
  %conv1 = trunc i64 %shr to i32, !dbg !2042
  store i32 %conv1, ptr %D256, align 4, !dbg !2039
  call void @llvm.lifetime.start.p0(i64 4, ptr %DTime0) #11, !dbg !2043
  call void @llvm.dbg.declare(metadata ptr %DTime0, metadata !2023, metadata !DIExpression()), !dbg !2044
  %5 = load i32, ptr %Q, align 4, !dbg !2045
  %idxprom = zext i32 %5 to i64, !dbg !2046
  %arrayidx = getelementptr [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %idxprom, !dbg !2046
  %arrayidx2 = getelementptr [2 x %struct.algo_time_t], ptr %arrayidx, i64 0, i64 0, !dbg !2046
  %tableTime = getelementptr inbounds %struct.algo_time_t, ptr %arrayidx2, i32 0, i32 0, !dbg !2047
  %6 = load i32, ptr %tableTime, align 16, !dbg !2047
  %7 = load i32, ptr %Q, align 4, !dbg !2048
  %idxprom3 = zext i32 %7 to i64, !dbg !2049
  %arrayidx4 = getelementptr [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %idxprom3, !dbg !2049
  %arrayidx5 = getelementptr [2 x %struct.algo_time_t], ptr %arrayidx4, i64 0, i64 0, !dbg !2049
  %decode256Time = getelementptr inbounds %struct.algo_time_t, ptr %arrayidx5, i32 0, i32 1, !dbg !2050
  %8 = load i32, ptr %decode256Time, align 4, !dbg !2050
  %9 = load i32, ptr %D256, align 4, !dbg !2051
  %mul6 = mul i32 %8, %9, !dbg !2052
  %add = add i32 %6, %mul6, !dbg !2053
  store i32 %add, ptr %DTime0, align 4, !dbg !2044
  call void @llvm.lifetime.start.p0(i64 4, ptr %DTime1) #11, !dbg !2054
  call void @llvm.dbg.declare(metadata ptr %DTime1, metadata !2024, metadata !DIExpression()), !dbg !2055
  %10 = load i32, ptr %Q, align 4, !dbg !2056
  %idxprom7 = zext i32 %10 to i64, !dbg !2057
  %arrayidx8 = getelementptr [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %idxprom7, !dbg !2057
  %arrayidx9 = getelementptr [2 x %struct.algo_time_t], ptr %arrayidx8, i64 0, i64 1, !dbg !2057
  %tableTime10 = getelementptr inbounds %struct.algo_time_t, ptr %arrayidx9, i32 0, i32 0, !dbg !2058
  %11 = load i32, ptr %tableTime10, align 8, !dbg !2058
  %12 = load i32, ptr %Q, align 4, !dbg !2059
  %idxprom11 = zext i32 %12 to i64, !dbg !2060
  %arrayidx12 = getelementptr [16 x [2 x %struct.algo_time_t]], ptr @algoTime, i64 0, i64 %idxprom11, !dbg !2060
  %arrayidx13 = getelementptr [2 x %struct.algo_time_t], ptr %arrayidx12, i64 0, i64 1, !dbg !2060
  %decode256Time14 = getelementptr inbounds %struct.algo_time_t, ptr %arrayidx13, i32 0, i32 1, !dbg !2061
  %13 = load i32, ptr %decode256Time14, align 4, !dbg !2061
  %14 = load i32, ptr %D256, align 4, !dbg !2062
  %mul15 = mul i32 %13, %14, !dbg !2063
  %add16 = add i32 %11, %mul15, !dbg !2064
  store i32 %add16, ptr %DTime1, align 4, !dbg !2055
  %15 = load i32, ptr %DTime1, align 4, !dbg !2065
  %shr17 = lshr i32 %15, 5, !dbg !2066
  %16 = load i32, ptr %DTime1, align 4, !dbg !2067
  %add18 = add i32 %16, %shr17, !dbg !2067
  store i32 %add18, ptr %DTime1, align 4, !dbg !2067
  %17 = load i32, ptr %DTime1, align 4, !dbg !2068
  %18 = load i32, ptr %DTime0, align 4, !dbg !2069
  %cmp19 = icmp ult i32 %17, %18, !dbg !2070
  %conv20 = zext i1 %cmp19 to i32, !dbg !2070
  call void @llvm.lifetime.end.p0(i64 4, ptr %DTime1) #11, !dbg !2071
  call void @llvm.lifetime.end.p0(i64 4, ptr %DTime0) #11, !dbg !2071
  call void @llvm.lifetime.end.p0(i64 4, ptr %D256) #11, !dbg !2071
  call void @llvm.lifetime.end.p0(i64 4, ptr %Q) #11, !dbg !2071
  ret i32 %conv20, !dbg !2072
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress4X_hufOnly_wksp(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !2073 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %algoNb = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2075, metadata !DIExpression()), !dbg !2084
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2076, metadata !DIExpression()), !dbg !2085
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !2077, metadata !DIExpression()), !dbg !2086
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !2078, metadata !DIExpression()), !dbg !2087
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !2079, metadata !DIExpression()), !dbg !2088
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !2080, metadata !DIExpression()), !dbg !2089
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !2081, metadata !DIExpression()), !dbg !2090
  %0 = load i64, ptr %dstSize.addr, align 8, !dbg !2091
  %cmp = icmp eq i64 %0, 0, !dbg !2093
  br i1 %cmp, label %if.then, label %if.end, !dbg !2094

if.then:                                          ; preds = %entry
  store i64 -70, ptr %retval, align 8, !dbg !2095
  br label %return, !dbg !2095

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2096
  %cmp1 = icmp eq i64 %1, 0, !dbg !2098
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2099

if.then2:                                         ; preds = %if.end
  store i64 -20, ptr %retval, align 8, !dbg !2100
  br label %return, !dbg !2100

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %algoNb) #11, !dbg !2101
  call void @llvm.dbg.declare(metadata ptr %algoNb, metadata !2082, metadata !DIExpression()), !dbg !2102
  %2 = load i64, ptr %dstSize.addr, align 8, !dbg !2103
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2104
  %call = call i32 @HUF_selectDecoder(i64 noundef %2, i64 noundef %3) #10, !dbg !2105
  store i32 %call, ptr %algoNb, align 4, !dbg !2102
  %4 = load i32, ptr %algoNb, align 4, !dbg !2106
  %tobool = icmp ne i32 %4, 0, !dbg !2106
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2106

cond.true:                                        ; preds = %if.end3
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !2107
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !2108
  %7 = load i64, ptr %dstSize.addr, align 8, !dbg !2109
  %8 = load ptr, ptr %cSrc.addr, align 8, !dbg !2110
  %9 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2111
  %10 = load ptr, ptr %workSpace.addr, align 8, !dbg !2112
  %11 = load i64, ptr %wkspSize.addr, align 8, !dbg !2113
  %call4 = call i64 @HUF_decompress4X2_DCtx_wksp(ptr noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11) #10, !dbg !2114
  br label %cond.end, !dbg !2106

cond.false:                                       ; preds = %if.end3
  %12 = load ptr, ptr %dctx.addr, align 8, !dbg !2115
  %13 = load ptr, ptr %dst.addr, align 8, !dbg !2116
  %14 = load i64, ptr %dstSize.addr, align 8, !dbg !2117
  %15 = load ptr, ptr %cSrc.addr, align 8, !dbg !2118
  %16 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2119
  %17 = load ptr, ptr %workSpace.addr, align 8, !dbg !2120
  %18 = load i64, ptr %wkspSize.addr, align 8, !dbg !2121
  %call5 = call i64 @HUF_decompress4X1_DCtx_wksp(ptr noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, i64 noundef %18) #10, !dbg !2122
  br label %cond.end, !dbg !2106

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call4, %cond.true ], [ %call5, %cond.false ], !dbg !2106
  store i64 %cond, ptr %retval, align 8, !dbg !2123
  call void @llvm.lifetime.end.p0(i64 4, ptr %algoNb) #11, !dbg !2124
  br label %return

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %19 = load i64, ptr %retval, align 8, !dbg !2125
  ret i64 %19, !dbg !2125
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress1X_DCtx_wksp(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !2126 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %algoNb = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2128, metadata !DIExpression()), !dbg !2137
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2129, metadata !DIExpression()), !dbg !2138
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !2130, metadata !DIExpression()), !dbg !2139
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !2131, metadata !DIExpression()), !dbg !2140
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !2132, metadata !DIExpression()), !dbg !2141
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !2133, metadata !DIExpression()), !dbg !2142
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !2134, metadata !DIExpression()), !dbg !2143
  %0 = load i64, ptr %dstSize.addr, align 8, !dbg !2144
  %cmp = icmp eq i64 %0, 0, !dbg !2146
  br i1 %cmp, label %if.then, label %if.end, !dbg !2147

if.then:                                          ; preds = %entry
  store i64 -70, ptr %retval, align 8, !dbg !2148
  br label %return, !dbg !2148

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2149
  %2 = load i64, ptr %dstSize.addr, align 8, !dbg !2151
  %cmp1 = icmp ugt i64 %1, %2, !dbg !2152
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2153

if.then2:                                         ; preds = %if.end
  store i64 -20, ptr %retval, align 8, !dbg !2154
  br label %return, !dbg !2154

if.end3:                                          ; preds = %if.end
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2155
  %4 = load i64, ptr %dstSize.addr, align 8, !dbg !2157
  %cmp4 = icmp eq i64 %3, %4, !dbg !2158
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2159

if.then5:                                         ; preds = %if.end3
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !2160
  %6 = load ptr, ptr %cSrc.addr, align 8, !dbg !2160
  %7 = load i64, ptr %dstSize.addr, align 8, !dbg !2160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %6, i64 %7, i1 false), !dbg !2160
  %8 = load i64, ptr %dstSize.addr, align 8, !dbg !2162
  store i64 %8, ptr %retval, align 8, !dbg !2163
  br label %return, !dbg !2163

if.end6:                                          ; preds = %if.end3
  %9 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2164
  %cmp7 = icmp eq i64 %9, 1, !dbg !2166
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2167

if.then8:                                         ; preds = %if.end6
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !2168
  %11 = load ptr, ptr %cSrc.addr, align 8, !dbg !2168
  %12 = load i8, ptr %11, align 1, !dbg !2168
  %conv = zext i8 %12 to i32, !dbg !2168
  %13 = trunc i32 %conv to i8, !dbg !2168
  %14 = load i64, ptr %dstSize.addr, align 8, !dbg !2168
  call void @llvm.memset.p0.i64(ptr align 1 %10, i8 %13, i64 %14, i1 false), !dbg !2168
  %15 = load i64, ptr %dstSize.addr, align 8, !dbg !2170
  store i64 %15, ptr %retval, align 8, !dbg !2171
  br label %return, !dbg !2171

if.end9:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr %algoNb) #11, !dbg !2172
  call void @llvm.dbg.declare(metadata ptr %algoNb, metadata !2135, metadata !DIExpression()), !dbg !2173
  %16 = load i64, ptr %dstSize.addr, align 8, !dbg !2174
  %17 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2175
  %call = call i32 @HUF_selectDecoder(i64 noundef %16, i64 noundef %17) #10, !dbg !2176
  store i32 %call, ptr %algoNb, align 4, !dbg !2173
  %18 = load i32, ptr %algoNb, align 4, !dbg !2177
  %tobool = icmp ne i32 %18, 0, !dbg !2177
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2177

cond.true:                                        ; preds = %if.end9
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !2178
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !2179
  %21 = load i64, ptr %dstSize.addr, align 8, !dbg !2180
  %22 = load ptr, ptr %cSrc.addr, align 8, !dbg !2181
  %23 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2182
  %24 = load ptr, ptr %workSpace.addr, align 8, !dbg !2183
  %25 = load i64, ptr %wkspSize.addr, align 8, !dbg !2184
  %call10 = call i64 @HUF_decompress1X2_DCtx_wksp(ptr noundef %19, ptr noundef %20, i64 noundef %21, ptr noundef %22, i64 noundef %23, ptr noundef %24, i64 noundef %25) #10, !dbg !2185
  br label %cond.end, !dbg !2177

cond.false:                                       ; preds = %if.end9
  %26 = load ptr, ptr %dctx.addr, align 8, !dbg !2186
  %27 = load ptr, ptr %dst.addr, align 8, !dbg !2187
  %28 = load i64, ptr %dstSize.addr, align 8, !dbg !2188
  %29 = load ptr, ptr %cSrc.addr, align 8, !dbg !2189
  %30 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2190
  %31 = load ptr, ptr %workSpace.addr, align 8, !dbg !2191
  %32 = load i64, ptr %wkspSize.addr, align 8, !dbg !2192
  %call11 = call i64 @HUF_decompress1X1_DCtx_wksp(ptr noundef %26, ptr noundef %27, i64 noundef %28, ptr noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32) #10, !dbg !2193
  br label %cond.end, !dbg !2177

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %call11, %cond.false ], !dbg !2177
  store i64 %cond, ptr %retval, align 8, !dbg !2194
  call void @llvm.lifetime.end.p0(i64 4, ptr %algoNb) #11, !dbg !2195
  br label %return

return:                                           ; preds = %cond.end, %if.then8, %if.then5, %if.then2, %if.then
  %33 = load i64, ptr %retval, align 8, !dbg !2196
  ret i64 %33, !dbg !2196
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress1X_usingDTable_bmi2(ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable, i32 noundef %bmi2) #0 align 16 !dbg !2197 {
entry:
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %bmi2.addr = alloca i32, align 4
  %dtd = alloca %struct.DTableDesc, align 1
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2199, metadata !DIExpression()), !dbg !2206
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !2200, metadata !DIExpression()), !dbg !2207
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !2201, metadata !DIExpression()), !dbg !2208
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !2202, metadata !DIExpression()), !dbg !2209
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !2203, metadata !DIExpression()), !dbg !2210
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !2204, metadata !DIExpression()), !dbg !2211
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !2212
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !2205, metadata !DIExpression()), !dbg !2213
  %0 = load ptr, ptr %DTable.addr, align 8, !dbg !2214
  %call = call i32 @HUF_getDTableDesc(ptr noundef %0) #10, !dbg !2215
  store i32 %call, ptr %dtd, align 1, !dbg !2215
  %tableType = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 1, !dbg !2216
  %1 = load i8, ptr %tableType, align 1, !dbg !2216
  %conv = zext i8 %1 to i32, !dbg !2217
  %tobool = icmp ne i32 %conv, 0, !dbg !2217
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2217

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !2218
  %3 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2219
  %4 = load ptr, ptr %cSrc.addr, align 8, !dbg !2220
  %5 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2221
  %6 = load ptr, ptr %DTable.addr, align 8, !dbg !2222
  %7 = load i32, ptr %bmi2.addr, align 4, !dbg !2223
  %call1 = call i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef %7) #10, !dbg !2224
  br label %cond.end, !dbg !2217

cond.false:                                       ; preds = %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !2225
  %9 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2226
  %10 = load ptr, ptr %cSrc.addr, align 8, !dbg !2227
  %11 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2228
  %12 = load ptr, ptr %DTable.addr, align 8, !dbg !2229
  %13 = load i32, ptr %bmi2.addr, align 4, !dbg !2230
  %call2 = call i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i32 noundef %13) #10, !dbg !2231
  br label %cond.end, !dbg !2217

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call1, %cond.true ], [ %call2, %cond.false ], !dbg !2217
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !2232
  ret i64 %cond, !dbg !2233
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress1X1_DCtx_wksp_bmi2(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %workSpace, i64 noundef %wkspSize, i32 noundef %bmi2) #0 align 16 !dbg !2234 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  %ip = alloca ptr, align 8
  %hSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2236, metadata !DIExpression()), !dbg !2246
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2237, metadata !DIExpression()), !dbg !2247
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !2238, metadata !DIExpression()), !dbg !2248
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !2239, metadata !DIExpression()), !dbg !2249
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !2240, metadata !DIExpression()), !dbg !2250
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !2241, metadata !DIExpression()), !dbg !2251
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !2242, metadata !DIExpression()), !dbg !2252
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !2243, metadata !DIExpression()), !dbg !2253
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #11, !dbg !2254
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !2244, metadata !DIExpression()), !dbg !2255
  %0 = load ptr, ptr %cSrc.addr, align 8, !dbg !2256
  store ptr %0, ptr %ip, align 8, !dbg !2255
  call void @llvm.lifetime.start.p0(i64 8, ptr %hSize) #11, !dbg !2257
  call void @llvm.dbg.declare(metadata ptr %hSize, metadata !2245, metadata !DIExpression()), !dbg !2258
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !2259
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !2260
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2261
  %4 = load ptr, ptr %workSpace.addr, align 8, !dbg !2262
  %5 = load i64, ptr %wkspSize.addr, align 8, !dbg !2263
  %6 = load i32, ptr %bmi2.addr, align 4, !dbg !2264
  %call = call i64 @HUF_readDTableX1_wksp_bmi2(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) #10, !dbg !2265
  store i64 %call, ptr %hSize, align 8, !dbg !2258
  %7 = load i64, ptr %hSize, align 8, !dbg !2266
  %call1 = call i32 @ERR_isError(i64 noundef %7) #10, !dbg !2268
  %tobool = icmp ne i32 %call1, 0, !dbg !2268
  br i1 %tobool, label %if.then, label %if.end, !dbg !2269

if.then:                                          ; preds = %entry
  %8 = load i64, ptr %hSize, align 8, !dbg !2270
  store i64 %8, ptr %retval, align 8, !dbg !2271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2271

if.end:                                           ; preds = %entry
  %9 = load i64, ptr %hSize, align 8, !dbg !2272
  %10 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2274
  %cmp = icmp uge i64 %9, %10, !dbg !2275
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2276

if.then2:                                         ; preds = %if.end
  store i64 -72, ptr %retval, align 8, !dbg !2277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2277

if.end3:                                          ; preds = %if.end
  %11 = load i64, ptr %hSize, align 8, !dbg !2278
  %12 = load ptr, ptr %ip, align 8, !dbg !2279
  %add.ptr = getelementptr i8, ptr %12, i64 %11, !dbg !2279
  store ptr %add.ptr, ptr %ip, align 8, !dbg !2279
  %13 = load i64, ptr %hSize, align 8, !dbg !2280
  %14 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2281
  %sub = sub i64 %14, %13, !dbg !2281
  store i64 %sub, ptr %cSrcSize.addr, align 8, !dbg !2281
  %15 = load ptr, ptr %dst.addr, align 8, !dbg !2282
  %16 = load i64, ptr %dstSize.addr, align 8, !dbg !2283
  %17 = load ptr, ptr %ip, align 8, !dbg !2284
  %18 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2285
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !2286
  %20 = load i32, ptr %bmi2.addr, align 4, !dbg !2287
  %call4 = call i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %15, i64 noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19, i32 noundef %20) #10, !dbg !2288
  store i64 %call4, ptr %retval, align 8, !dbg !2289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2289

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hSize) #11, !dbg !2290
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #11, !dbg !2290
  %21 = load i64, ptr %retval, align 8, !dbg !2290
  ret i64 %21, !dbg !2290
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress4X_usingDTable_bmi2(ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable, i32 noundef %bmi2) #0 align 16 !dbg !2291 {
entry:
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %bmi2.addr = alloca i32, align 4
  %dtd = alloca %struct.DTableDesc, align 1
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2293, metadata !DIExpression()), !dbg !2300
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !2294, metadata !DIExpression()), !dbg !2301
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !2295, metadata !DIExpression()), !dbg !2302
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !2296, metadata !DIExpression()), !dbg !2303
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !2297, metadata !DIExpression()), !dbg !2304
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !2298, metadata !DIExpression()), !dbg !2305
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !2306
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !2299, metadata !DIExpression()), !dbg !2307
  %0 = load ptr, ptr %DTable.addr, align 8, !dbg !2308
  %call = call i32 @HUF_getDTableDesc(ptr noundef %0) #10, !dbg !2309
  store i32 %call, ptr %dtd, align 1, !dbg !2309
  %tableType = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 1, !dbg !2310
  %1 = load i8, ptr %tableType, align 1, !dbg !2310
  %conv = zext i8 %1 to i32, !dbg !2311
  %tobool = icmp ne i32 %conv, 0, !dbg !2311
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2311

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !2312
  %3 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2313
  %4 = load ptr, ptr %cSrc.addr, align 8, !dbg !2314
  %5 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2315
  %6 = load ptr, ptr %DTable.addr, align 8, !dbg !2316
  %7 = load i32, ptr %bmi2.addr, align 4, !dbg !2317
  %call1 = call i64 @HUF_decompress4X2_usingDTable_internal(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef %7) #10, !dbg !2318
  br label %cond.end, !dbg !2311

cond.false:                                       ; preds = %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !2319
  %9 = load i64, ptr %maxDstSize.addr, align 8, !dbg !2320
  %10 = load ptr, ptr %cSrc.addr, align 8, !dbg !2321
  %11 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2322
  %12 = load ptr, ptr %DTable.addr, align 8, !dbg !2323
  %13 = load i32, ptr %bmi2.addr, align 4, !dbg !2324
  %call2 = call i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i32 noundef %13) #10, !dbg !2325
  br label %cond.end, !dbg !2311

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call1, %cond.true ], [ %call2, %cond.false ], !dbg !2311
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !2326
  ret i64 %cond, !dbg !2327
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_decompress4X_hufOnly_wksp_bmi2(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %workSpace, i64 noundef %wkspSize, i32 noundef %bmi2) #0 align 16 !dbg !2328 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  %algoNb = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2330, metadata !DIExpression()), !dbg !2340
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2331, metadata !DIExpression()), !dbg !2341
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !2332, metadata !DIExpression()), !dbg !2342
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !2333, metadata !DIExpression()), !dbg !2343
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !2334, metadata !DIExpression()), !dbg !2344
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !2335, metadata !DIExpression()), !dbg !2345
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !2336, metadata !DIExpression()), !dbg !2346
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !2337, metadata !DIExpression()), !dbg !2347
  %0 = load i64, ptr %dstSize.addr, align 8, !dbg !2348
  %cmp = icmp eq i64 %0, 0, !dbg !2350
  br i1 %cmp, label %if.then, label %if.end, !dbg !2351

if.then:                                          ; preds = %entry
  store i64 -70, ptr %retval, align 8, !dbg !2352
  br label %return, !dbg !2352

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2353
  %cmp1 = icmp eq i64 %1, 0, !dbg !2355
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2356

if.then2:                                         ; preds = %if.end
  store i64 -20, ptr %retval, align 8, !dbg !2357
  br label %return, !dbg !2357

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %algoNb) #11, !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %algoNb, metadata !2338, metadata !DIExpression()), !dbg !2359
  %2 = load i64, ptr %dstSize.addr, align 8, !dbg !2360
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2361
  %call = call i32 @HUF_selectDecoder(i64 noundef %2, i64 noundef %3) #10, !dbg !2362
  store i32 %call, ptr %algoNb, align 4, !dbg !2359
  %4 = load i32, ptr %algoNb, align 4, !dbg !2363
  %tobool = icmp ne i32 %4, 0, !dbg !2363
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2363

cond.true:                                        ; preds = %if.end3
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !2364
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !2365
  %7 = load i64, ptr %dstSize.addr, align 8, !dbg !2366
  %8 = load ptr, ptr %cSrc.addr, align 8, !dbg !2367
  %9 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2368
  %10 = load ptr, ptr %workSpace.addr, align 8, !dbg !2369
  %11 = load i64, ptr %wkspSize.addr, align 8, !dbg !2370
  %12 = load i32, ptr %bmi2.addr, align 4, !dbg !2371
  %call4 = call i64 @HUF_decompress4X2_DCtx_wksp_bmi2(ptr noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, i32 noundef %12) #10, !dbg !2372
  br label %cond.end, !dbg !2363

cond.false:                                       ; preds = %if.end3
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !2373
  %14 = load ptr, ptr %dst.addr, align 8, !dbg !2374
  %15 = load i64, ptr %dstSize.addr, align 8, !dbg !2375
  %16 = load ptr, ptr %cSrc.addr, align 8, !dbg !2376
  %17 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2377
  %18 = load ptr, ptr %workSpace.addr, align 8, !dbg !2378
  %19 = load i64, ptr %wkspSize.addr, align 8, !dbg !2379
  %20 = load i32, ptr %bmi2.addr, align 4, !dbg !2380
  %call5 = call i64 @HUF_decompress4X1_DCtx_wksp_bmi2(ptr noundef %13, ptr noundef %14, i64 noundef %15, ptr noundef %16, i64 noundef %17, ptr noundef %18, i64 noundef %19, i32 noundef %20) #10, !dbg !2381
  br label %cond.end, !dbg !2363

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call4, %cond.true ], [ %call5, %cond.false ], !dbg !2363
  store i64 %cond, ptr %retval, align 8, !dbg !2382
  call void @llvm.lifetime.end.p0(i64 4, ptr %algoNb) #11, !dbg !2383
  br label %return

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %21 = load i64, ptr %retval, align 8, !dbg !2384
  ret i64 %21, !dbg !2384
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_isLittleEndian() #5 align 16 !dbg !2385 {
entry:
  ret i32 1, !dbg !2388
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress1X1_usingDTable_internal_bmi2(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #7 align 16 !dbg !2389 {
entry:
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2391, metadata !DIExpression()), !dbg !2396
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !2392, metadata !DIExpression()), !dbg !2396
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !2393, metadata !DIExpression()), !dbg !2396
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !2394, metadata !DIExpression()), !dbg !2396
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !2395, metadata !DIExpression()), !dbg !2396
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2396
  %1 = load i64, ptr %dstSize.addr, align 8, !dbg !2396
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !2396
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2396
  %4 = load ptr, ptr %DTable.addr, align 8, !dbg !2396
  %call = call i64 @HUF_decompress1X1_usingDTable_internal_body(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #10, !dbg !2396
  ret i64 %call, !dbg !2396
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress1X1_usingDTable_internal_default(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #0 align 16 !dbg !2397 {
entry:
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2399, metadata !DIExpression()), !dbg !2404
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !2400, metadata !DIExpression()), !dbg !2404
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !2401, metadata !DIExpression()), !dbg !2404
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !2402, metadata !DIExpression()), !dbg !2404
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !2403, metadata !DIExpression()), !dbg !2404
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2404
  %1 = load i64, ptr %dstSize.addr, align 8, !dbg !2404
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !2404
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2404
  %4 = load ptr, ptr %DTable.addr, align 8, !dbg !2404
  %call = call i64 @HUF_decompress1X1_usingDTable_internal_body(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #10, !dbg !2404
  ret i64 %call, !dbg !2404
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress1X1_usingDTable_internal_body(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #8 align 16 !dbg !2405 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %dtPtr = alloca ptr, align 8
  %dt = alloca ptr, align 8
  %bitD = alloca %struct.BIT_DStream_t, align 8
  %dtd = alloca %struct.DTableDesc, align 1
  %dtLog = alloca i32, align 4
  %_var_err__ = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2407, metadata !DIExpression()), !dbg !2431
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !2408, metadata !DIExpression()), !dbg !2432
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !2409, metadata !DIExpression()), !dbg !2433
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !2410, metadata !DIExpression()), !dbg !2434
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !2411, metadata !DIExpression()), !dbg !2435
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #11, !dbg !2436
  call void @llvm.dbg.declare(metadata ptr %op, metadata !2412, metadata !DIExpression()), !dbg !2437
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2438
  store ptr %0, ptr %op, align 8, !dbg !2437
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #11, !dbg !2439
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !2413, metadata !DIExpression()), !dbg !2440
  %1 = load ptr, ptr %op, align 8, !dbg !2441
  %2 = load i64, ptr %dstSize.addr, align 8, !dbg !2442
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !2443
  store ptr %add.ptr, ptr %oend, align 8, !dbg !2440
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtPtr) #11, !dbg !2444
  call void @llvm.dbg.declare(metadata ptr %dtPtr, metadata !2415, metadata !DIExpression()), !dbg !2445
  %3 = load ptr, ptr %DTable.addr, align 8, !dbg !2446
  %add.ptr1 = getelementptr i32, ptr %3, i64 1, !dbg !2447
  store ptr %add.ptr1, ptr %dtPtr, align 8, !dbg !2445
  call void @llvm.lifetime.start.p0(i64 8, ptr %dt) #11, !dbg !2448
  call void @llvm.dbg.declare(metadata ptr %dt, metadata !2416, metadata !DIExpression()), !dbg !2449
  %4 = load ptr, ptr %dtPtr, align 8, !dbg !2450
  store ptr %4, ptr %dt, align 8, !dbg !2449
  call void @llvm.lifetime.start.p0(i64 40, ptr %bitD) #11, !dbg !2451
  call void @llvm.dbg.declare(metadata ptr %bitD, metadata !2418, metadata !DIExpression()), !dbg !2452
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !2453
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !2427, metadata !DIExpression()), !dbg !2454
  %5 = load ptr, ptr %DTable.addr, align 8, !dbg !2455
  %call = call i32 @HUF_getDTableDesc(ptr noundef %5) #10, !dbg !2456
  store i32 %call, ptr %dtd, align 1, !dbg !2456
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtLog) #11, !dbg !2457
  call void @llvm.dbg.declare(metadata ptr %dtLog, metadata !2428, metadata !DIExpression()), !dbg !2458
  %tableLog = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 2, !dbg !2459
  %6 = load i8, ptr %tableLog, align 1, !dbg !2459
  %conv = zext i8 %6 to i32, !dbg !2460
  store i32 %conv, ptr %dtLog, align 4, !dbg !2458
  call void @llvm.lifetime.start.p0(i64 8, ptr %_var_err__) #11, !dbg !2461
  call void @llvm.dbg.declare(metadata ptr %_var_err__, metadata !2429, metadata !DIExpression()), !dbg !2461
  %7 = load ptr, ptr %cSrc.addr, align 8, !dbg !2461
  %8 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2461
  %call2 = call i64 @BIT_initDStream(ptr noundef %bitD, ptr noundef %7, i64 noundef %8) #10, !dbg !2461
  store i64 %call2, ptr %_var_err__, align 8, !dbg !2461
  %9 = load i64, ptr %_var_err__, align 8, !dbg !2462
  %call3 = call i32 @ERR_isError(i64 noundef %9) #10, !dbg !2462
  %tobool = icmp ne i32 %call3, 0, !dbg !2462
  br i1 %tobool, label %if.then, label %if.end, !dbg !2461

if.then:                                          ; preds = %entry
  %10 = load i64, ptr %_var_err__, align 8, !dbg !2462
  store i64 %10, ptr %retval, align 8, !dbg !2462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2462

if.end:                                           ; preds = %entry
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2464
  br label %cleanup, !dbg !2464

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %_var_err__) #11, !dbg !2464
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %11 = load ptr, ptr %op, align 8, !dbg !2465
  %12 = load ptr, ptr %oend, align 8, !dbg !2466
  %13 = load ptr, ptr %dt, align 8, !dbg !2467
  %14 = load i32, ptr %dtLog, align 4, !dbg !2468
  %call4 = call i64 @HUF_decodeStreamX1(ptr noundef %11, ptr noundef %bitD, ptr noundef %12, ptr noundef %13, i32 noundef %14) #10, !dbg !2469
  %call5 = call i32 @BIT_endOfDStream(ptr noundef %bitD) #10, !dbg !2470
  %tobool6 = icmp ne i32 %call5, 0, !dbg !2470
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2472

if.then7:                                         ; preds = %cleanup.cont
  store i64 -20, ptr %retval, align 8, !dbg !2473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !2473

if.end8:                                          ; preds = %cleanup.cont
  %15 = load i64, ptr %dstSize.addr, align 8, !dbg !2474
  store i64 %15, ptr %retval, align 8, !dbg !2475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !2475

cleanup9:                                         ; preds = %if.end8, %if.then7, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtLog) #11, !dbg !2476
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !2476
  call void @llvm.lifetime.end.p0(i64 40, ptr %bitD) #11, !dbg !2476
  call void @llvm.lifetime.end.p0(i64 8, ptr %dt) #11, !dbg !2476
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtPtr) #11, !dbg !2476
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #11, !dbg !2476
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #11, !dbg !2476
  %16 = load i64, ptr %retval, align 8, !dbg !2476
  ret i64 %16, !dbg !2476
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_initDStream(ptr noundef %bitD, ptr noundef %srcBuffer, i64 noundef %srcSize) #5 align 16 !dbg !2477 {
entry:
  %retval = alloca i64, align 8
  %bitD.addr = alloca ptr, align 8
  %srcBuffer.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %lastByte = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %lastByte53 = alloca i8, align 1
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !2482, metadata !DIExpression()), !dbg !2492
  store ptr %srcBuffer, ptr %srcBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcBuffer.addr, metadata !2483, metadata !DIExpression()), !dbg !2493
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !2484, metadata !DIExpression()), !dbg !2494
  %0 = load i64, ptr %srcSize.addr, align 8, !dbg !2495
  %cmp = icmp ult i64 %0, 1, !dbg !2497
  br i1 %cmp, label %if.then, label %if.end, !dbg !2498

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bitD.addr, align 8, !dbg !2499
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 40, i1 false), !dbg !2499
  store i64 -72, ptr %retval, align 8, !dbg !2501
  br label %return, !dbg !2501

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !2502
  %3 = load ptr, ptr %bitD.addr, align 8, !dbg !2503
  %start = getelementptr inbounds %struct.BIT_DStream_t, ptr %3, i32 0, i32 3, !dbg !2504
  store ptr %2, ptr %start, align 8, !dbg !2505
  %4 = load ptr, ptr %bitD.addr, align 8, !dbg !2506
  %start1 = getelementptr inbounds %struct.BIT_DStream_t, ptr %4, i32 0, i32 3, !dbg !2507
  %5 = load ptr, ptr %start1, align 8, !dbg !2507
  %add.ptr = getelementptr i8, ptr %5, i64 8, !dbg !2508
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !2509
  %limitPtr = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 4, !dbg !2510
  store ptr %add.ptr, ptr %limitPtr, align 8, !dbg !2511
  %7 = load i64, ptr %srcSize.addr, align 8, !dbg !2512
  %cmp2 = icmp uge i64 %7, 8, !dbg !2513
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !2514

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !2515
  %9 = load i64, ptr %srcSize.addr, align 8, !dbg !2516
  %add.ptr4 = getelementptr i8, ptr %8, i64 %9, !dbg !2517
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i64 -8, !dbg !2518
  %10 = load ptr, ptr %bitD.addr, align 8, !dbg !2519
  %ptr = getelementptr inbounds %struct.BIT_DStream_t, ptr %10, i32 0, i32 2, !dbg !2520
  store ptr %add.ptr5, ptr %ptr, align 8, !dbg !2521
  %11 = load ptr, ptr %bitD.addr, align 8, !dbg !2522
  %ptr6 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i32 0, i32 2, !dbg !2523
  %12 = load ptr, ptr %ptr6, align 8, !dbg !2523
  %call = call i64 @MEM_readLEST(ptr noundef %12) #10, !dbg !2524
  %13 = load ptr, ptr %bitD.addr, align 8, !dbg !2525
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %13, i32 0, i32 0, !dbg !2526
  store i64 %call, ptr %bitContainer, align 8, !dbg !2527
  call void @llvm.lifetime.start.p0(i64 1, ptr %lastByte) #11, !dbg !2528
  call void @llvm.dbg.declare(metadata ptr %lastByte, metadata !2485, metadata !DIExpression()), !dbg !2529
  %14 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !2530
  %15 = load i64, ptr %srcSize.addr, align 8, !dbg !2531
  %sub = sub i64 %15, 1, !dbg !2532
  %arrayidx = getelementptr i8, ptr %14, i64 %sub, !dbg !2533
  %16 = load i8, ptr %arrayidx, align 1, !dbg !2533
  store i8 %16, ptr %lastByte, align 1, !dbg !2529
  %17 = load i8, ptr %lastByte, align 1, !dbg !2534
  %conv = zext i8 %17 to i32, !dbg !2534
  %tobool = icmp ne i32 %conv, 0, !dbg !2534
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2534

cond.true:                                        ; preds = %if.then3
  %18 = load i8, ptr %lastByte, align 1, !dbg !2535
  %conv7 = zext i8 %18 to i32, !dbg !2535
  %call8 = call i32 @BIT_highbit32(i32 noundef %conv7) #10, !dbg !2536
  %sub9 = sub i32 8, %call8, !dbg !2537
  br label %cond.end, !dbg !2534

cond.false:                                       ; preds = %if.then3
  br label %cond.end, !dbg !2534

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub9, %cond.true ], [ 0, %cond.false ], !dbg !2534
  %19 = load ptr, ptr %bitD.addr, align 8, !dbg !2538
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %19, i32 0, i32 1, !dbg !2539
  store i32 %cond, ptr %bitsConsumed, align 8, !dbg !2540
  %20 = load i8, ptr %lastByte, align 1, !dbg !2541
  %conv10 = zext i8 %20 to i32, !dbg !2541
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !2543
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !2544

if.then13:                                        ; preds = %cond.end
  store i64 -1, ptr %retval, align 8, !dbg !2545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2545

if.end14:                                         ; preds = %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2546
  br label %cleanup, !dbg !2546

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 1, ptr %lastByte) #11, !dbg !2546
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end78, !dbg !2547

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %bitD.addr, align 8, !dbg !2548
  %start15 = getelementptr inbounds %struct.BIT_DStream_t, ptr %21, i32 0, i32 3, !dbg !2549
  %22 = load ptr, ptr %start15, align 8, !dbg !2549
  %23 = load ptr, ptr %bitD.addr, align 8, !dbg !2550
  %ptr16 = getelementptr inbounds %struct.BIT_DStream_t, ptr %23, i32 0, i32 2, !dbg !2551
  store ptr %22, ptr %ptr16, align 8, !dbg !2552
  %24 = load ptr, ptr %bitD.addr, align 8, !dbg !2553
  %start17 = getelementptr inbounds %struct.BIT_DStream_t, ptr %24, i32 0, i32 3, !dbg !2554
  %25 = load ptr, ptr %start17, align 8, !dbg !2554
  %26 = load i8, ptr %25, align 1, !dbg !2555
  %conv18 = zext i8 %26 to i64, !dbg !2555
  %27 = load ptr, ptr %bitD.addr, align 8, !dbg !2556
  %bitContainer19 = getelementptr inbounds %struct.BIT_DStream_t, ptr %27, i32 0, i32 0, !dbg !2557
  store i64 %conv18, ptr %bitContainer19, align 8, !dbg !2558
  %28 = load i64, ptr %srcSize.addr, align 8, !dbg !2559
  switch i64 %28, label %sw.default [
    i64 7, label %sw.bb
    i64 6, label %sw.bb23
    i64 5, label %sw.bb29
    i64 4, label %sw.bb35
    i64 3, label %sw.bb41
    i64 2, label %sw.bb47
  ], !dbg !2560

sw.bb:                                            ; preds = %if.else
  %29 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !2561
  %arrayidx20 = getelementptr i8, ptr %29, i64 6, !dbg !2563
  %30 = load i8, ptr %arrayidx20, align 1, !dbg !2563
  %conv21 = zext i8 %30 to i64, !dbg !2564
  %shl = shl i64 %conv21, 48, !dbg !2565
  %31 = load ptr, ptr %bitD.addr, align 8, !dbg !2566
  %bitContainer22 = getelementptr inbounds %struct.BIT_DStream_t, ptr %31, i32 0, i32 0, !dbg !2567
  %32 = load i64, ptr %bitContainer22, align 8, !dbg !2568
  %add = add i64 %32, %shl, !dbg !2568
  store i64 %add, ptr %bitContainer22, align 8, !dbg !2568
  br label %sw.bb23, !dbg !2566

sw.bb23:                                          ; preds = %if.else, %sw.bb
  %33 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !2569
  %arrayidx24 = getelementptr i8, ptr %33, i64 5, !dbg !2570
  %34 = load i8, ptr %arrayidx24, align 1, !dbg !2570
  %conv25 = zext i8 %34 to i64, !dbg !2571
  %shl26 = shl i64 %conv25, 40, !dbg !2572
  %35 = load ptr, ptr %bitD.addr, align 8, !dbg !2573
  %bitContainer27 = getelementptr inbounds %struct.BIT_DStream_t, ptr %35, i32 0, i32 0, !dbg !2574
  %36 = load i64, ptr %bitContainer27, align 8, !dbg !2575
  %add28 = add i64 %36, %shl26, !dbg !2575
  store i64 %add28, ptr %bitContainer27, align 8, !dbg !2575
  br label %sw.bb29, !dbg !2573

sw.bb29:                                          ; preds = %if.else, %sw.bb23
  %37 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !2576
  %arrayidx30 = getelementptr i8, ptr %37, i64 4, !dbg !2577
  %38 = load i8, ptr %arrayidx30, align 1, !dbg !2577
  %conv31 = zext i8 %38 to i64, !dbg !2578
  %shl32 = shl i64 %conv31, 32, !dbg !2579
  %39 = load ptr, ptr %bitD.addr, align 8, !dbg !2580
  %bitContainer33 = getelementptr inbounds %struct.BIT_DStream_t, ptr %39, i32 0, i32 0, !dbg !2581
  %40 = load i64, ptr %bitContainer33, align 8, !dbg !2582
  %add34 = add i64 %40, %shl32, !dbg !2582
  store i64 %add34, ptr %bitContainer33, align 8, !dbg !2582
  br label %sw.bb35, !dbg !2580

sw.bb35:                                          ; preds = %if.else, %sw.bb29
  %41 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !2583
  %arrayidx36 = getelementptr i8, ptr %41, i64 3, !dbg !2584
  %42 = load i8, ptr %arrayidx36, align 1, !dbg !2584
  %conv37 = zext i8 %42 to i64, !dbg !2585
  %shl38 = shl i64 %conv37, 24, !dbg !2586
  %43 = load ptr, ptr %bitD.addr, align 8, !dbg !2587
  %bitContainer39 = getelementptr inbounds %struct.BIT_DStream_t, ptr %43, i32 0, i32 0, !dbg !2588
  %44 = load i64, ptr %bitContainer39, align 8, !dbg !2589
  %add40 = add i64 %44, %shl38, !dbg !2589
  store i64 %add40, ptr %bitContainer39, align 8, !dbg !2589
  br label %sw.bb41, !dbg !2587

sw.bb41:                                          ; preds = %if.else, %sw.bb35
  %45 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !2590
  %arrayidx42 = getelementptr i8, ptr %45, i64 2, !dbg !2591
  %46 = load i8, ptr %arrayidx42, align 1, !dbg !2591
  %conv43 = zext i8 %46 to i64, !dbg !2592
  %shl44 = shl i64 %conv43, 16, !dbg !2593
  %47 = load ptr, ptr %bitD.addr, align 8, !dbg !2594
  %bitContainer45 = getelementptr inbounds %struct.BIT_DStream_t, ptr %47, i32 0, i32 0, !dbg !2595
  %48 = load i64, ptr %bitContainer45, align 8, !dbg !2596
  %add46 = add i64 %48, %shl44, !dbg !2596
  store i64 %add46, ptr %bitContainer45, align 8, !dbg !2596
  br label %sw.bb47, !dbg !2594

sw.bb47:                                          ; preds = %if.else, %sw.bb41
  %49 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !2597
  %arrayidx48 = getelementptr i8, ptr %49, i64 1, !dbg !2598
  %50 = load i8, ptr %arrayidx48, align 1, !dbg !2598
  %conv49 = zext i8 %50 to i64, !dbg !2599
  %shl50 = shl i64 %conv49, 8, !dbg !2600
  %51 = load ptr, ptr %bitD.addr, align 8, !dbg !2601
  %bitContainer51 = getelementptr inbounds %struct.BIT_DStream_t, ptr %51, i32 0, i32 0, !dbg !2602
  %52 = load i64, ptr %bitContainer51, align 8, !dbg !2603
  %add52 = add i64 %52, %shl50, !dbg !2603
  store i64 %add52, ptr %bitContainer51, align 8, !dbg !2603
  br label %sw.default, !dbg !2601

sw.default:                                       ; preds = %if.else, %sw.bb47
  br label %sw.epilog, !dbg !2604

sw.epilog:                                        ; preds = %sw.default
  call void @llvm.lifetime.start.p0(i64 1, ptr %lastByte53) #11, !dbg !2605
  call void @llvm.dbg.declare(metadata ptr %lastByte53, metadata !2489, metadata !DIExpression()), !dbg !2606
  %53 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !2607
  %54 = load i64, ptr %srcSize.addr, align 8, !dbg !2608
  %sub54 = sub i64 %54, 1, !dbg !2609
  %arrayidx55 = getelementptr i8, ptr %53, i64 %sub54, !dbg !2610
  %55 = load i8, ptr %arrayidx55, align 1, !dbg !2610
  store i8 %55, ptr %lastByte53, align 1, !dbg !2606
  %56 = load i8, ptr %lastByte53, align 1, !dbg !2611
  %conv56 = zext i8 %56 to i32, !dbg !2611
  %tobool57 = icmp ne i32 %conv56, 0, !dbg !2611
  br i1 %tobool57, label %cond.true58, label %cond.false62, !dbg !2611

cond.true58:                                      ; preds = %sw.epilog
  %57 = load i8, ptr %lastByte53, align 1, !dbg !2612
  %conv59 = zext i8 %57 to i32, !dbg !2612
  %call60 = call i32 @BIT_highbit32(i32 noundef %conv59) #10, !dbg !2613
  %sub61 = sub i32 8, %call60, !dbg !2614
  br label %cond.end63, !dbg !2611

cond.false62:                                     ; preds = %sw.epilog
  br label %cond.end63, !dbg !2611

cond.end63:                                       ; preds = %cond.false62, %cond.true58
  %cond64 = phi i32 [ %sub61, %cond.true58 ], [ 0, %cond.false62 ], !dbg !2611
  %58 = load ptr, ptr %bitD.addr, align 8, !dbg !2615
  %bitsConsumed65 = getelementptr inbounds %struct.BIT_DStream_t, ptr %58, i32 0, i32 1, !dbg !2616
  store i32 %cond64, ptr %bitsConsumed65, align 8, !dbg !2617
  %59 = load i8, ptr %lastByte53, align 1, !dbg !2618
  %conv66 = zext i8 %59 to i32, !dbg !2618
  %cmp67 = icmp eq i32 %conv66, 0, !dbg !2620
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !2621

if.then69:                                        ; preds = %cond.end63
  store i64 -20, ptr %retval, align 8, !dbg !2622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !2622

if.end70:                                         ; preds = %cond.end63
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2623
  br label %cleanup71, !dbg !2623

cleanup71:                                        ; preds = %if.end70, %if.then69
  call void @llvm.lifetime.end.p0(i64 1, ptr %lastByte53) #11, !dbg !2623
  %cleanup.dest72 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest72, label %unreachable [
    i32 0, label %cleanup.cont73
    i32 1, label %return
  ]

cleanup.cont73:                                   ; preds = %cleanup71
  %60 = load i64, ptr %srcSize.addr, align 8, !dbg !2624
  %sub74 = sub i64 8, %60, !dbg !2625
  %conv75 = trunc i64 %sub74 to i32, !dbg !2626
  %mul = mul i32 %conv75, 8, !dbg !2627
  %61 = load ptr, ptr %bitD.addr, align 8, !dbg !2628
  %bitsConsumed76 = getelementptr inbounds %struct.BIT_DStream_t, ptr %61, i32 0, i32 1, !dbg !2629
  %62 = load i32, ptr %bitsConsumed76, align 8, !dbg !2630
  %add77 = add i32 %62, %mul, !dbg !2630
  store i32 %add77, ptr %bitsConsumed76, align 8, !dbg !2630
  br label %if.end78

if.end78:                                         ; preds = %cleanup.cont73, %cleanup.cont
  %63 = load i64, ptr %srcSize.addr, align 8, !dbg !2631
  store i64 %63, ptr %retval, align 8, !dbg !2632
  br label %return, !dbg !2632

return:                                           ; preds = %if.end78, %cleanup71, %cleanup, %if.then
  %64 = load i64, ptr %retval, align 8, !dbg !2633
  ret i64 %64, !dbg !2633

unreachable:                                      ; preds = %cleanup71, %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decodeStreamX1(ptr noundef %p, ptr noundef %bitDPtr, ptr noundef %pEnd, ptr noundef %dt, i32 noundef %dtLog) #8 align 16 !dbg !2634 {
entry:
  %p.addr = alloca ptr, align 8
  %bitDPtr.addr = alloca ptr, align 8
  %pEnd.addr = alloca ptr, align 8
  %dt.addr = alloca ptr, align 8
  %dtLog.addr = alloca i32, align 4
  %pStart = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2639, metadata !DIExpression()), !dbg !2645
  store ptr %bitDPtr, ptr %bitDPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitDPtr.addr, metadata !2640, metadata !DIExpression()), !dbg !2646
  store ptr %pEnd, ptr %pEnd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pEnd.addr, metadata !2641, metadata !DIExpression()), !dbg !2647
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !2642, metadata !DIExpression()), !dbg !2648
  store i32 %dtLog, ptr %dtLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dtLog.addr, metadata !2643, metadata !DIExpression()), !dbg !2649
  call void @llvm.lifetime.start.p0(i64 8, ptr %pStart) #11, !dbg !2650
  call void @llvm.dbg.declare(metadata ptr %pStart, metadata !2644, metadata !DIExpression()), !dbg !2651
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2652
  store ptr %0, ptr %pStart, align 8, !dbg !2651
  %1 = load ptr, ptr %pEnd.addr, align 8, !dbg !2653
  %2 = load ptr, ptr %p.addr, align 8, !dbg !2655
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64, !dbg !2656
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !2656
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2656
  %cmp = icmp sgt i64 %sub.ptr.sub, 3, !dbg !2657
  br i1 %cmp, label %if.then, label %if.else, !dbg !2658

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !2659

while.cond:                                       ; preds = %if.end19, %if.then
  %3 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !2661
  %call = call i32 @BIT_reloadDStream(ptr noundef %3) #10, !dbg !2662
  %cmp1 = icmp eq i32 %call, 0, !dbg !2663
  %conv = zext i1 %cmp1 to i32, !dbg !2663
  %4 = load ptr, ptr %p.addr, align 8, !dbg !2664
  %5 = load ptr, ptr %pEnd.addr, align 8, !dbg !2665
  %add.ptr = getelementptr i8, ptr %5, i64 -3, !dbg !2666
  %cmp2 = icmp ult ptr %4, %add.ptr, !dbg !2667
  %conv3 = zext i1 %cmp2 to i32, !dbg !2667
  %and = and i32 %conv, %conv3, !dbg !2668
  %tobool = icmp ne i32 %and, 0, !dbg !2659
  br i1 %tobool, label %while.body, label %while.end, !dbg !2659

while.body:                                       ; preds = %while.cond
  %call4 = call i32 @MEM_64bits() #10, !dbg !2669
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2669
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !2672

if.then6:                                         ; preds = %while.body
  %6 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !2669
  %7 = load ptr, ptr %dt.addr, align 8, !dbg !2669
  %8 = load i32, ptr %dtLog.addr, align 4, !dbg !2669
  %call7 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %6, ptr noundef %7, i32 noundef %8) #10, !dbg !2669
  %9 = load ptr, ptr %p.addr, align 8, !dbg !2669
  %incdec.ptr = getelementptr i8, ptr %9, i32 1, !dbg !2669
  store ptr %incdec.ptr, ptr %p.addr, align 8, !dbg !2669
  store i8 %call7, ptr %9, align 1, !dbg !2669
  br label %if.end, !dbg !2669

if.end:                                           ; preds = %if.then6, %while.body
  %call8 = call i32 @MEM_64bits() #10, !dbg !2673
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2673
  br i1 %tobool9, label %if.then10, label %lor.lhs.false, !dbg !2673

lor.lhs.false:                                    ; preds = %if.end
  br i1 true, label %if.then10, label %if.end13, !dbg !2675

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !2673
  %11 = load ptr, ptr %dt.addr, align 8, !dbg !2673
  %12 = load i32, ptr %dtLog.addr, align 4, !dbg !2673
  %call11 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %10, ptr noundef %11, i32 noundef %12) #10, !dbg !2673
  %13 = load ptr, ptr %p.addr, align 8, !dbg !2673
  %incdec.ptr12 = getelementptr i8, ptr %13, i32 1, !dbg !2673
  store ptr %incdec.ptr12, ptr %p.addr, align 8, !dbg !2673
  store i8 %call11, ptr %13, align 1, !dbg !2673
  br label %if.end13, !dbg !2673

if.end13:                                         ; preds = %if.then10, %lor.lhs.false
  %call14 = call i32 @MEM_64bits() #10, !dbg !2676
  %tobool15 = icmp ne i32 %call14, 0, !dbg !2676
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !2678

if.then16:                                        ; preds = %if.end13
  %14 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !2676
  %15 = load ptr, ptr %dt.addr, align 8, !dbg !2676
  %16 = load i32, ptr %dtLog.addr, align 4, !dbg !2676
  %call17 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %14, ptr noundef %15, i32 noundef %16) #10, !dbg !2676
  %17 = load ptr, ptr %p.addr, align 8, !dbg !2676
  %incdec.ptr18 = getelementptr i8, ptr %17, i32 1, !dbg !2676
  store ptr %incdec.ptr18, ptr %p.addr, align 8, !dbg !2676
  store i8 %call17, ptr %17, align 1, !dbg !2676
  br label %if.end19, !dbg !2676

if.end19:                                         ; preds = %if.then16, %if.end13
  %18 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !2679
  %19 = load ptr, ptr %dt.addr, align 8, !dbg !2679
  %20 = load i32, ptr %dtLog.addr, align 4, !dbg !2679
  %call20 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %18, ptr noundef %19, i32 noundef %20) #10, !dbg !2679
  %21 = load ptr, ptr %p.addr, align 8, !dbg !2679
  %incdec.ptr21 = getelementptr i8, ptr %21, i32 1, !dbg !2679
  store ptr %incdec.ptr21, ptr %p.addr, align 8, !dbg !2679
  store i8 %call20, ptr %21, align 1, !dbg !2679
  br label %while.cond, !dbg !2659, !llvm.loop !2680

while.end:                                        ; preds = %while.cond
  br label %if.end23, !dbg !2682

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !2683
  %call22 = call i32 @BIT_reloadDStream(ptr noundef %22) #10, !dbg !2685
  br label %if.end23

if.end23:                                         ; preds = %if.else, %while.end
  %call24 = call i32 @MEM_32bits() #10, !dbg !2686
  %tobool25 = icmp ne i32 %call24, 0, !dbg !2686
  br i1 %tobool25, label %if.then26, label %if.end39, !dbg !2688

if.then26:                                        ; preds = %if.end23
  br label %while.cond27, !dbg !2689

while.cond27:                                     ; preds = %while.body35, %if.then26
  %23 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !2690
  %call28 = call i32 @BIT_reloadDStream(ptr noundef %23) #10, !dbg !2691
  %cmp29 = icmp eq i32 %call28, 0, !dbg !2692
  %conv30 = zext i1 %cmp29 to i32, !dbg !2692
  %24 = load ptr, ptr %p.addr, align 8, !dbg !2693
  %25 = load ptr, ptr %pEnd.addr, align 8, !dbg !2694
  %cmp31 = icmp ult ptr %24, %25, !dbg !2695
  %conv32 = zext i1 %cmp31 to i32, !dbg !2695
  %and33 = and i32 %conv30, %conv32, !dbg !2696
  %tobool34 = icmp ne i32 %and33, 0, !dbg !2689
  br i1 %tobool34, label %while.body35, label %while.end38, !dbg !2689

while.body35:                                     ; preds = %while.cond27
  %26 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !2697
  %27 = load ptr, ptr %dt.addr, align 8, !dbg !2697
  %28 = load i32, ptr %dtLog.addr, align 4, !dbg !2697
  %call36 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %26, ptr noundef %27, i32 noundef %28) #10, !dbg !2697
  %29 = load ptr, ptr %p.addr, align 8, !dbg !2697
  %incdec.ptr37 = getelementptr i8, ptr %29, i32 1, !dbg !2697
  store ptr %incdec.ptr37, ptr %p.addr, align 8, !dbg !2697
  store i8 %call36, ptr %29, align 1, !dbg !2697
  br label %while.cond27, !dbg !2689, !llvm.loop !2698

while.end38:                                      ; preds = %while.cond27
  br label %if.end39, !dbg !2689

if.end39:                                         ; preds = %while.end38, %if.end23
  br label %while.cond40, !dbg !2699

while.cond40:                                     ; preds = %while.body43, %if.end39
  %30 = load ptr, ptr %p.addr, align 8, !dbg !2700
  %31 = load ptr, ptr %pEnd.addr, align 8, !dbg !2701
  %cmp41 = icmp ult ptr %30, %31, !dbg !2702
  br i1 %cmp41, label %while.body43, label %while.end46, !dbg !2699

while.body43:                                     ; preds = %while.cond40
  %32 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !2703
  %33 = load ptr, ptr %dt.addr, align 8, !dbg !2703
  %34 = load i32, ptr %dtLog.addr, align 4, !dbg !2703
  %call44 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %32, ptr noundef %33, i32 noundef %34) #10, !dbg !2703
  %35 = load ptr, ptr %p.addr, align 8, !dbg !2703
  %incdec.ptr45 = getelementptr i8, ptr %35, i32 1, !dbg !2703
  store ptr %incdec.ptr45, ptr %p.addr, align 8, !dbg !2703
  store i8 %call44, ptr %35, align 1, !dbg !2703
  br label %while.cond40, !dbg !2699, !llvm.loop !2704

while.end46:                                      ; preds = %while.cond40
  %36 = load ptr, ptr %pEnd.addr, align 8, !dbg !2705
  %37 = load ptr, ptr %pStart, align 8, !dbg !2706
  %sub.ptr.lhs.cast47 = ptrtoint ptr %36 to i64, !dbg !2707
  %sub.ptr.rhs.cast48 = ptrtoint ptr %37 to i64, !dbg !2707
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48, !dbg !2707
  call void @llvm.lifetime.end.p0(i64 8, ptr %pStart) #11, !dbg !2708
  ret i64 %sub.ptr.sub49, !dbg !2709
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @BIT_endOfDStream(ptr noundef %DStream) #5 align 16 !dbg !2710 {
entry:
  %DStream.addr = alloca ptr, align 8
  store ptr %DStream, ptr %DStream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DStream.addr, metadata !2716, metadata !DIExpression()), !dbg !2717
  %0 = load ptr, ptr %DStream.addr, align 8, !dbg !2718
  %ptr = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 2, !dbg !2719
  %1 = load ptr, ptr %ptr, align 8, !dbg !2719
  %2 = load ptr, ptr %DStream.addr, align 8, !dbg !2720
  %start = getelementptr inbounds %struct.BIT_DStream_t, ptr %2, i32 0, i32 3, !dbg !2721
  %3 = load ptr, ptr %start, align 8, !dbg !2721
  %cmp = icmp eq ptr %1, %3, !dbg !2722
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2723

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %DStream.addr, align 8, !dbg !2724
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %4, i32 0, i32 1, !dbg !2725
  %5 = load i32, ptr %bitsConsumed, align 8, !dbg !2725
  %conv = zext i32 %5 to i64, !dbg !2724
  %cmp1 = icmp eq i64 %conv, 64, !dbg !2726
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !2727
  %land.ext = zext i1 %6 to i32, !dbg !2723
  ret i32 %land.ext, !dbg !2728
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @MEM_readLEST(ptr noundef %memPtr) #5 align 16 !dbg !2729 {
entry:
  %retval = alloca i64, align 8
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !2733, metadata !DIExpression()), !dbg !2734
  %call = call i32 @MEM_32bits() #10, !dbg !2735
  %tobool = icmp ne i32 %call, 0, !dbg !2735
  br i1 %tobool, label %if.then, label %if.else, !dbg !2737

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !2738
  %call1 = call i32 @MEM_readLE32(ptr noundef %0) #10, !dbg !2739
  %conv = zext i32 %call1 to i64, !dbg !2740
  store i64 %conv, ptr %retval, align 8, !dbg !2741
  br label %return, !dbg !2741

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %memPtr.addr, align 8, !dbg !2742
  %call2 = call i64 @MEM_readLE64(ptr noundef %1) #10, !dbg !2743
  store i64 %call2, ptr %retval, align 8, !dbg !2744
  br label %return, !dbg !2744

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, ptr %retval, align 8, !dbg !2745
  ret i64 %2, !dbg !2745
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @BIT_highbit32(i32 noundef %val) #5 align 16 !dbg !2746 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2750, metadata !DIExpression()), !dbg !2751
  %0 = load i32, ptr %val.addr, align 4, !dbg !2752
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !dbg !2754
  %xor = xor i32 %1, 31, !dbg !2755
  ret i32 %xor, !dbg !2756
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_32bits() #5 align 16 !dbg !2757 {
entry:
  ret i32 0, !dbg !2758
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_readLE32(ptr noundef %memPtr) #5 align 16 !dbg !2759 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !2763, metadata !DIExpression()), !dbg !2764
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !2765
  %call = call i32 @get_unaligned_le32(ptr noundef %0) #10, !dbg !2766
  ret i32 %call, !dbg !2767
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @MEM_readLE64(ptr noundef %memPtr) #5 align 16 !dbg !2768 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !2772, metadata !DIExpression()), !dbg !2773
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !2774
  %call = call i64 @get_unaligned_le64(ptr noundef %0) #10, !dbg !2775
  ret i64 %call, !dbg !2776
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #5 align 16 !dbg !155 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !161, metadata !DIExpression()), !dbg !2777
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #11, !dbg !2778
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !162, metadata !DIExpression()), !dbg !2778
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2778
  store ptr %0, ptr %__pptr, align 8, !dbg !2778
  %1 = load ptr, ptr %__pptr, align 8, !dbg !2778
  %x = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 0, !dbg !2778
  %2 = load i32, ptr %x, align 1, !dbg !2778
  store i32 %2, ptr %tmp, align 4, !dbg !2778
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #11, !dbg !2779
  %3 = load i32, ptr %tmp, align 4, !dbg !2778
  ret i32 %3, !dbg !2780
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_unaligned_le64(ptr noundef %p) #5 align 16 !dbg !170 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !174, metadata !DIExpression()), !dbg !2781
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #11, !dbg !2782
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !175, metadata !DIExpression()), !dbg !2782
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2782
  store ptr %0, ptr %__pptr, align 8, !dbg !2782
  %1 = load ptr, ptr %__pptr, align 8, !dbg !2782
  %x = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 0, !dbg !2782
  %2 = load i64, ptr %x, align 1, !dbg !2782
  store i64 %2, ptr %tmp, align 8, !dbg !2782
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #11, !dbg !2783
  %3 = load i64, ptr %tmp, align 8, !dbg !2782
  ret i64 %3, !dbg !2784
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @BIT_reloadDStream(ptr noundef %bitD) #5 align 16 !dbg !2785 {
entry:
  %retval = alloca i32, align 4
  %bitD.addr = alloca ptr, align 8
  %nbBytes = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !2790, metadata !DIExpression()), !dbg !2794
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !2795
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 1, !dbg !2797
  %1 = load i32, ptr %bitsConsumed, align 8, !dbg !2797
  %conv = zext i32 %1 to i64, !dbg !2795
  %cmp = icmp ugt i64 %conv, 64, !dbg !2798
  br i1 %cmp, label %if.then, label %if.end, !dbg !2799

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !2800
  br label %return, !dbg !2800

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !2801
  %ptr = getelementptr inbounds %struct.BIT_DStream_t, ptr %2, i32 0, i32 2, !dbg !2803
  %3 = load ptr, ptr %ptr, align 8, !dbg !2803
  %4 = load ptr, ptr %bitD.addr, align 8, !dbg !2804
  %limitPtr = getelementptr inbounds %struct.BIT_DStream_t, ptr %4, i32 0, i32 4, !dbg !2805
  %5 = load ptr, ptr %limitPtr, align 8, !dbg !2805
  %cmp2 = icmp uge ptr %3, %5, !dbg !2806
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !2807

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !2808
  %call = call i32 @BIT_reloadDStreamFast(ptr noundef %6) #10, !dbg !2810
  store i32 %call, ptr %retval, align 4, !dbg !2811
  br label %return, !dbg !2811

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %bitD.addr, align 8, !dbg !2812
  %ptr6 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i32 0, i32 2, !dbg !2814
  %8 = load ptr, ptr %ptr6, align 8, !dbg !2814
  %9 = load ptr, ptr %bitD.addr, align 8, !dbg !2815
  %start = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 3, !dbg !2816
  %10 = load ptr, ptr %start, align 8, !dbg !2816
  %cmp7 = icmp eq ptr %8, %10, !dbg !2817
  br i1 %cmp7, label %if.then9, label %if.end16, !dbg !2818

if.then9:                                         ; preds = %if.end5
  %11 = load ptr, ptr %bitD.addr, align 8, !dbg !2819
  %bitsConsumed10 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i32 0, i32 1, !dbg !2822
  %12 = load i32, ptr %bitsConsumed10, align 8, !dbg !2822
  %conv11 = zext i32 %12 to i64, !dbg !2819
  %cmp12 = icmp ult i64 %conv11, 64, !dbg !2823
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !2824

if.then14:                                        ; preds = %if.then9
  store i32 1, ptr %retval, align 4, !dbg !2825
  br label %return, !dbg !2825

if.end15:                                         ; preds = %if.then9
  store i32 2, ptr %retval, align 4, !dbg !2826
  br label %return, !dbg !2826

if.end16:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbBytes) #11, !dbg !2827
  call void @llvm.dbg.declare(metadata ptr %nbBytes, metadata !2791, metadata !DIExpression()), !dbg !2828
  %13 = load ptr, ptr %bitD.addr, align 8, !dbg !2829
  %bitsConsumed17 = getelementptr inbounds %struct.BIT_DStream_t, ptr %13, i32 0, i32 1, !dbg !2830
  %14 = load i32, ptr %bitsConsumed17, align 8, !dbg !2830
  %shr = lshr i32 %14, 3, !dbg !2831
  store i32 %shr, ptr %nbBytes, align 4, !dbg !2828
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !2832
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2793, metadata !DIExpression()), !dbg !2833
  store i32 0, ptr %result, align 4, !dbg !2833
  %15 = load ptr, ptr %bitD.addr, align 8, !dbg !2834
  %ptr18 = getelementptr inbounds %struct.BIT_DStream_t, ptr %15, i32 0, i32 2, !dbg !2836
  %16 = load ptr, ptr %ptr18, align 8, !dbg !2836
  %17 = load i32, ptr %nbBytes, align 4, !dbg !2837
  %idx.ext = zext i32 %17 to i64, !dbg !2838
  %idx.neg = sub i64 0, %idx.ext, !dbg !2838
  %add.ptr = getelementptr i8, ptr %16, i64 %idx.neg, !dbg !2838
  %18 = load ptr, ptr %bitD.addr, align 8, !dbg !2839
  %start19 = getelementptr inbounds %struct.BIT_DStream_t, ptr %18, i32 0, i32 3, !dbg !2840
  %19 = load ptr, ptr %start19, align 8, !dbg !2840
  %cmp20 = icmp ult ptr %add.ptr, %19, !dbg !2841
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !2842

if.then22:                                        ; preds = %if.end16
  %20 = load ptr, ptr %bitD.addr, align 8, !dbg !2843
  %ptr23 = getelementptr inbounds %struct.BIT_DStream_t, ptr %20, i32 0, i32 2, !dbg !2845
  %21 = load ptr, ptr %ptr23, align 8, !dbg !2845
  %22 = load ptr, ptr %bitD.addr, align 8, !dbg !2846
  %start24 = getelementptr inbounds %struct.BIT_DStream_t, ptr %22, i32 0, i32 3, !dbg !2847
  %23 = load ptr, ptr %start24, align 8, !dbg !2847
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i64, !dbg !2848
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i64, !dbg !2848
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2848
  %conv25 = trunc i64 %sub.ptr.sub to i32, !dbg !2849
  store i32 %conv25, ptr %nbBytes, align 4, !dbg !2850
  store i32 1, ptr %result, align 4, !dbg !2851
  br label %if.end26, !dbg !2852

if.end26:                                         ; preds = %if.then22, %if.end16
  %24 = load i32, ptr %nbBytes, align 4, !dbg !2853
  %25 = load ptr, ptr %bitD.addr, align 8, !dbg !2854
  %ptr27 = getelementptr inbounds %struct.BIT_DStream_t, ptr %25, i32 0, i32 2, !dbg !2855
  %26 = load ptr, ptr %ptr27, align 8, !dbg !2856
  %idx.ext28 = zext i32 %24 to i64, !dbg !2856
  %idx.neg29 = sub i64 0, %idx.ext28, !dbg !2856
  %add.ptr30 = getelementptr i8, ptr %26, i64 %idx.neg29, !dbg !2856
  store ptr %add.ptr30, ptr %ptr27, align 8, !dbg !2856
  %27 = load i32, ptr %nbBytes, align 4, !dbg !2857
  %mul = mul i32 %27, 8, !dbg !2858
  %28 = load ptr, ptr %bitD.addr, align 8, !dbg !2859
  %bitsConsumed31 = getelementptr inbounds %struct.BIT_DStream_t, ptr %28, i32 0, i32 1, !dbg !2860
  %29 = load i32, ptr %bitsConsumed31, align 8, !dbg !2861
  %sub = sub i32 %29, %mul, !dbg !2861
  store i32 %sub, ptr %bitsConsumed31, align 8, !dbg !2861
  %30 = load ptr, ptr %bitD.addr, align 8, !dbg !2862
  %ptr32 = getelementptr inbounds %struct.BIT_DStream_t, ptr %30, i32 0, i32 2, !dbg !2863
  %31 = load ptr, ptr %ptr32, align 8, !dbg !2863
  %call33 = call i64 @MEM_readLEST(ptr noundef %31) #10, !dbg !2864
  %32 = load ptr, ptr %bitD.addr, align 8, !dbg !2865
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %32, i32 0, i32 0, !dbg !2866
  store i64 %call33, ptr %bitContainer, align 8, !dbg !2867
  %33 = load i32, ptr %result, align 4, !dbg !2868
  store i32 %33, ptr %retval, align 4, !dbg !2869
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !2870
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbBytes) #11, !dbg !2870
  br label %return

return:                                           ; preds = %if.end26, %if.end15, %if.then14, %if.then4, %if.then
  %34 = load i32, ptr %retval, align 4, !dbg !2871
  ret i32 %34, !dbg !2871
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_64bits() #5 align 16 !dbg !2872 {
entry:
  ret i32 1, !dbg !2873
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @HUF_decodeSymbolX1(ptr noundef %Dstream, ptr noundef %dt, i32 noundef %dtLog) #8 align 16 !dbg !2874 {
entry:
  %Dstream.addr = alloca ptr, align 8
  %dt.addr = alloca ptr, align 8
  %dtLog.addr = alloca i32, align 4
  %val = alloca i64, align 8
  %c = alloca i8, align 1
  store ptr %Dstream, ptr %Dstream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %Dstream.addr, metadata !2878, metadata !DIExpression()), !dbg !2883
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !2879, metadata !DIExpression()), !dbg !2884
  store i32 %dtLog, ptr %dtLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dtLog.addr, metadata !2880, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !2886
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2881, metadata !DIExpression()), !dbg !2887
  %0 = load ptr, ptr %Dstream.addr, align 8, !dbg !2888
  %1 = load i32, ptr %dtLog.addr, align 4, !dbg !2889
  %call = call i64 @BIT_lookBitsFast(ptr noundef %0, i32 noundef %1) #10, !dbg !2890
  store i64 %call, ptr %val, align 8, !dbg !2887
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #11, !dbg !2891
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2882, metadata !DIExpression()), !dbg !2892
  %2 = load ptr, ptr %dt.addr, align 8, !dbg !2893
  %3 = load i64, ptr %val, align 8, !dbg !2894
  %arrayidx = getelementptr %struct.HUF_DEltX1, ptr %2, i64 %3, !dbg !2893
  %byte = getelementptr inbounds %struct.HUF_DEltX1, ptr %arrayidx, i32 0, i32 1, !dbg !2895
  %4 = load i8, ptr %byte, align 1, !dbg !2895
  store i8 %4, ptr %c, align 1, !dbg !2892
  %5 = load ptr, ptr %Dstream.addr, align 8, !dbg !2896
  %6 = load ptr, ptr %dt.addr, align 8, !dbg !2897
  %7 = load i64, ptr %val, align 8, !dbg !2898
  %arrayidx1 = getelementptr %struct.HUF_DEltX1, ptr %6, i64 %7, !dbg !2897
  %nbBits = getelementptr inbounds %struct.HUF_DEltX1, ptr %arrayidx1, i32 0, i32 0, !dbg !2899
  %8 = load i8, ptr %nbBits, align 1, !dbg !2899
  %conv = zext i8 %8 to i32, !dbg !2897
  call void @BIT_skipBits(ptr noundef %5, i32 noundef %conv) #10, !dbg !2900
  %9 = load i8, ptr %c, align 1, !dbg !2901
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #11, !dbg !2902
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !2902
  ret i8 %9, !dbg !2903
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @BIT_reloadDStreamFast(ptr noundef %bitD) #5 align 16 !dbg !2904 {
entry:
  %retval = alloca i32, align 4
  %bitD.addr = alloca ptr, align 8
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !2906, metadata !DIExpression()), !dbg !2907
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !2908
  %ptr = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 2, !dbg !2908
  %1 = load ptr, ptr %ptr, align 8, !dbg !2908
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !2908
  %limitPtr = getelementptr inbounds %struct.BIT_DStream_t, ptr %2, i32 0, i32 4, !dbg !2908
  %3 = load ptr, ptr %limitPtr, align 8, !dbg !2908
  %cmp = icmp ult ptr %1, %3, !dbg !2908
  %conv = zext i1 %cmp to i32, !dbg !2908
  %conv1 = sext i32 %conv to i64, !dbg !2908
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2908
  %tobool = icmp ne i64 %expval, 0, !dbg !2908
  br i1 %tobool, label %if.then, label %if.end, !dbg !2910

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !2911
  br label %return, !dbg !2911

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %bitD.addr, align 8, !dbg !2912
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %4, i32 0, i32 1, !dbg !2913
  %5 = load i32, ptr %bitsConsumed, align 8, !dbg !2913
  %shr = lshr i32 %5, 3, !dbg !2914
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !2915
  %ptr2 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 2, !dbg !2916
  %7 = load ptr, ptr %ptr2, align 8, !dbg !2917
  %idx.ext = zext i32 %shr to i64, !dbg !2917
  %idx.neg = sub i64 0, %idx.ext, !dbg !2917
  %add.ptr = getelementptr i8, ptr %7, i64 %idx.neg, !dbg !2917
  store ptr %add.ptr, ptr %ptr2, align 8, !dbg !2917
  %8 = load ptr, ptr %bitD.addr, align 8, !dbg !2918
  %bitsConsumed3 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i32 0, i32 1, !dbg !2919
  %9 = load i32, ptr %bitsConsumed3, align 8, !dbg !2920
  %and = and i32 %9, 7, !dbg !2920
  store i32 %and, ptr %bitsConsumed3, align 8, !dbg !2920
  %10 = load ptr, ptr %bitD.addr, align 8, !dbg !2921
  %ptr4 = getelementptr inbounds %struct.BIT_DStream_t, ptr %10, i32 0, i32 2, !dbg !2922
  %11 = load ptr, ptr %ptr4, align 8, !dbg !2922
  %call = call i64 @MEM_readLEST(ptr noundef %11) #10, !dbg !2923
  %12 = load ptr, ptr %bitD.addr, align 8, !dbg !2924
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %12, i32 0, i32 0, !dbg !2925
  store i64 %call, ptr %bitContainer, align 8, !dbg !2926
  store i32 0, ptr %retval, align 4, !dbg !2927
  br label %return, !dbg !2927

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !2928
  ret i32 %13, !dbg !2928
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_lookBitsFast(ptr noundef %bitD, i32 noundef %nbBits) #5 align 16 !dbg !2929 {
entry:
  %bitD.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  %regMask = alloca i32, align 4
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !2933, metadata !DIExpression()), !dbg !2936
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !2934, metadata !DIExpression()), !dbg !2937
  call void @llvm.lifetime.start.p0(i64 4, ptr %regMask) #11, !dbg !2938
  call void @llvm.dbg.declare(metadata ptr %regMask, metadata !2935, metadata !DIExpression()), !dbg !2939
  store i32 63, ptr %regMask, align 4, !dbg !2939
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !2940
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 0, !dbg !2941
  %1 = load i64, ptr %bitContainer, align 8, !dbg !2941
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !2942
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %2, i32 0, i32 1, !dbg !2943
  %3 = load i32, ptr %bitsConsumed, align 8, !dbg !2943
  %and = and i32 %3, 63, !dbg !2944
  %sh_prom = zext i32 %and to i64, !dbg !2945
  %shl = shl i64 %1, %sh_prom, !dbg !2945
  %4 = load i32, ptr %nbBits.addr, align 4, !dbg !2946
  %sub = sub i32 64, %4, !dbg !2947
  %and1 = and i32 %sub, 63, !dbg !2948
  %sh_prom2 = zext i32 %and1 to i64, !dbg !2949
  %shr = lshr i64 %shl, %sh_prom2, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 4, ptr %regMask) #11, !dbg !2950
  ret i64 %shr, !dbg !2951
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @BIT_skipBits(ptr noundef %bitD, i32 noundef %nbBits) #8 align 16 !dbg !2952 {
entry:
  %bitD.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !2956, metadata !DIExpression()), !dbg !2958
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !2957, metadata !DIExpression()), !dbg !2959
  %0 = load i32, ptr %nbBits.addr, align 4, !dbg !2960
  %1 = load ptr, ptr %bitD.addr, align 8, !dbg !2961
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %1, i32 0, i32 1, !dbg !2962
  %2 = load i32, ptr %bitsConsumed, align 8, !dbg !2963
  %add = add i32 %2, %0, !dbg !2963
  store i32 %add, ptr %bitsConsumed, align 8, !dbg !2963
  ret void, !dbg !2964
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress4X1_usingDTable_internal_bmi2(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #7 align 16 !dbg !2965 {
entry:
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2967, metadata !DIExpression()), !dbg !2972
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !2968, metadata !DIExpression()), !dbg !2973
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !2969, metadata !DIExpression()), !dbg !2974
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !2970, metadata !DIExpression()), !dbg !2975
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !2971, metadata !DIExpression()), !dbg !2976
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2977
  %1 = load i64, ptr %dstSize.addr, align 8, !dbg !2978
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !2979
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2980
  %4 = load ptr, ptr %DTable.addr, align 8, !dbg !2981
  %call = call i64 @HUF_decompress4X1_usingDTable_internal_body(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #10, !dbg !2982
  ret i64 %call, !dbg !2983
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress4X1_usingDTable_internal_default(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #0 align 16 !dbg !2984 {
entry:
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2986, metadata !DIExpression()), !dbg !2991
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !2987, metadata !DIExpression()), !dbg !2992
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !2988, metadata !DIExpression()), !dbg !2993
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !2989, metadata !DIExpression()), !dbg !2994
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !2990, metadata !DIExpression()), !dbg !2995
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2996
  %1 = load i64, ptr %dstSize.addr, align 8, !dbg !2997
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !2998
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !2999
  %4 = load ptr, ptr %DTable.addr, align 8, !dbg !3000
  %call = call i64 @HUF_decompress4X1_usingDTable_internal_body(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #10, !dbg !3001
  ret i64 %call, !dbg !3002
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress4X1_usingDTable_internal_body(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #8 align 16 !dbg !3003 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %istart = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %olimit = alloca ptr, align 8
  %dtPtr = alloca ptr, align 8
  %dt = alloca ptr, align 8
  %bitD1 = alloca %struct.BIT_DStream_t, align 8
  %bitD2 = alloca %struct.BIT_DStream_t, align 8
  %bitD3 = alloca %struct.BIT_DStream_t, align 8
  %bitD4 = alloca %struct.BIT_DStream_t, align 8
  %length1 = alloca i64, align 8
  %length2 = alloca i64, align 8
  %length3 = alloca i64, align 8
  %length4 = alloca i64, align 8
  %istart1 = alloca ptr, align 8
  %istart2 = alloca ptr, align 8
  %istart3 = alloca ptr, align 8
  %istart4 = alloca ptr, align 8
  %segmentSize = alloca i64, align 8
  %opStart2 = alloca ptr, align 8
  %opStart3 = alloca ptr, align 8
  %opStart4 = alloca ptr, align 8
  %op1 = alloca ptr, align 8
  %op2 = alloca ptr, align 8
  %op3 = alloca ptr, align 8
  %op4 = alloca ptr, align 8
  %dtd = alloca %struct.DTableDesc, align 1
  %dtLog = alloca i32, align 4
  %endSignal = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_var_err__ = alloca i64, align 8
  %_var_err__33 = alloca i64, align 8
  %_var_err__42 = alloca i64, align 8
  %_var_err__51 = alloca i64, align 8
  %endCheck = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3005, metadata !DIExpression()), !dbg !3052
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !3006, metadata !DIExpression()), !dbg !3053
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !3007, metadata !DIExpression()), !dbg !3054
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !3008, metadata !DIExpression()), !dbg !3055
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !3009, metadata !DIExpression()), !dbg !3056
  %0 = load i64, ptr %cSrcSize.addr, align 8, !dbg !3057
  %cmp = icmp ult i64 %0, 10, !dbg !3059
  br i1 %cmp, label %if.then, label %if.end, !dbg !3060

if.then:                                          ; preds = %entry
  store i64 -20, ptr %retval, align 8, !dbg !3061
  br label %return, !dbg !3061

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart) #11, !dbg !3062
  call void @llvm.dbg.declare(metadata ptr %istart, metadata !3010, metadata !DIExpression()), !dbg !3063
  %1 = load ptr, ptr %cSrc.addr, align 8, !dbg !3064
  store ptr %1, ptr %istart, align 8, !dbg !3063
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #11, !dbg !3065
  call void @llvm.dbg.declare(metadata ptr %ostart, metadata !3013, metadata !DIExpression()), !dbg !3066
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !3067
  store ptr %2, ptr %ostart, align 8, !dbg !3066
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #11, !dbg !3068
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !3014, metadata !DIExpression()), !dbg !3069
  %3 = load ptr, ptr %ostart, align 8, !dbg !3070
  %4 = load i64, ptr %dstSize.addr, align 8, !dbg !3071
  %add.ptr = getelementptr i8, ptr %3, i64 %4, !dbg !3072
  store ptr %add.ptr, ptr %oend, align 8, !dbg !3069
  call void @llvm.lifetime.start.p0(i64 8, ptr %olimit) #11, !dbg !3073
  call void @llvm.dbg.declare(metadata ptr %olimit, metadata !3015, metadata !DIExpression()), !dbg !3074
  %5 = load ptr, ptr %oend, align 8, !dbg !3075
  %add.ptr1 = getelementptr i8, ptr %5, i64 -3, !dbg !3076
  store ptr %add.ptr1, ptr %olimit, align 8, !dbg !3074
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtPtr) #11, !dbg !3077
  call void @llvm.dbg.declare(metadata ptr %dtPtr, metadata !3016, metadata !DIExpression()), !dbg !3078
  %6 = load ptr, ptr %DTable.addr, align 8, !dbg !3079
  %add.ptr2 = getelementptr i32, ptr %6, i64 1, !dbg !3080
  store ptr %add.ptr2, ptr %dtPtr, align 8, !dbg !3078
  call void @llvm.lifetime.start.p0(i64 8, ptr %dt) #11, !dbg !3081
  call void @llvm.dbg.declare(metadata ptr %dt, metadata !3018, metadata !DIExpression()), !dbg !3082
  %7 = load ptr, ptr %dtPtr, align 8, !dbg !3083
  store ptr %7, ptr %dt, align 8, !dbg !3082
  call void @llvm.lifetime.start.p0(i64 40, ptr %bitD1) #11, !dbg !3084
  call void @llvm.dbg.declare(metadata ptr %bitD1, metadata !3019, metadata !DIExpression()), !dbg !3085
  call void @llvm.lifetime.start.p0(i64 40, ptr %bitD2) #11, !dbg !3086
  call void @llvm.dbg.declare(metadata ptr %bitD2, metadata !3020, metadata !DIExpression()), !dbg !3087
  call void @llvm.lifetime.start.p0(i64 40, ptr %bitD3) #11, !dbg !3088
  call void @llvm.dbg.declare(metadata ptr %bitD3, metadata !3021, metadata !DIExpression()), !dbg !3089
  call void @llvm.lifetime.start.p0(i64 40, ptr %bitD4) #11, !dbg !3090
  call void @llvm.dbg.declare(metadata ptr %bitD4, metadata !3022, metadata !DIExpression()), !dbg !3091
  call void @llvm.lifetime.start.p0(i64 8, ptr %length1) #11, !dbg !3092
  call void @llvm.dbg.declare(metadata ptr %length1, metadata !3023, metadata !DIExpression()), !dbg !3093
  %8 = load ptr, ptr %istart, align 8, !dbg !3094
  %call = call zeroext i16 @MEM_readLE16(ptr noundef %8) #10, !dbg !3095
  %conv = zext i16 %call to i64, !dbg !3095
  store i64 %conv, ptr %length1, align 8, !dbg !3093
  call void @llvm.lifetime.start.p0(i64 8, ptr %length2) #11, !dbg !3096
  call void @llvm.dbg.declare(metadata ptr %length2, metadata !3024, metadata !DIExpression()), !dbg !3097
  %9 = load ptr, ptr %istart, align 8, !dbg !3098
  %add.ptr3 = getelementptr i8, ptr %9, i64 2, !dbg !3099
  %call4 = call zeroext i16 @MEM_readLE16(ptr noundef %add.ptr3) #10, !dbg !3100
  %conv5 = zext i16 %call4 to i64, !dbg !3100
  store i64 %conv5, ptr %length2, align 8, !dbg !3097
  call void @llvm.lifetime.start.p0(i64 8, ptr %length3) #11, !dbg !3101
  call void @llvm.dbg.declare(metadata ptr %length3, metadata !3025, metadata !DIExpression()), !dbg !3102
  %10 = load ptr, ptr %istart, align 8, !dbg !3103
  %add.ptr6 = getelementptr i8, ptr %10, i64 4, !dbg !3104
  %call7 = call zeroext i16 @MEM_readLE16(ptr noundef %add.ptr6) #10, !dbg !3105
  %conv8 = zext i16 %call7 to i64, !dbg !3105
  store i64 %conv8, ptr %length3, align 8, !dbg !3102
  call void @llvm.lifetime.start.p0(i64 8, ptr %length4) #11, !dbg !3106
  call void @llvm.dbg.declare(metadata ptr %length4, metadata !3026, metadata !DIExpression()), !dbg !3107
  %11 = load i64, ptr %cSrcSize.addr, align 8, !dbg !3108
  %12 = load i64, ptr %length1, align 8, !dbg !3109
  %13 = load i64, ptr %length2, align 8, !dbg !3110
  %add = add i64 %12, %13, !dbg !3111
  %14 = load i64, ptr %length3, align 8, !dbg !3112
  %add9 = add i64 %add, %14, !dbg !3113
  %add10 = add i64 %add9, 6, !dbg !3114
  %sub = sub i64 %11, %add10, !dbg !3115
  store i64 %sub, ptr %length4, align 8, !dbg !3107
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart1) #11, !dbg !3116
  call void @llvm.dbg.declare(metadata ptr %istart1, metadata !3027, metadata !DIExpression()), !dbg !3117
  %15 = load ptr, ptr %istart, align 8, !dbg !3118
  %add.ptr11 = getelementptr i8, ptr %15, i64 6, !dbg !3119
  store ptr %add.ptr11, ptr %istart1, align 8, !dbg !3117
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart2) #11, !dbg !3120
  call void @llvm.dbg.declare(metadata ptr %istart2, metadata !3028, metadata !DIExpression()), !dbg !3121
  %16 = load ptr, ptr %istart1, align 8, !dbg !3122
  %17 = load i64, ptr %length1, align 8, !dbg !3123
  %add.ptr12 = getelementptr i8, ptr %16, i64 %17, !dbg !3124
  store ptr %add.ptr12, ptr %istart2, align 8, !dbg !3121
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart3) #11, !dbg !3125
  call void @llvm.dbg.declare(metadata ptr %istart3, metadata !3029, metadata !DIExpression()), !dbg !3126
  %18 = load ptr, ptr %istart2, align 8, !dbg !3127
  %19 = load i64, ptr %length2, align 8, !dbg !3128
  %add.ptr13 = getelementptr i8, ptr %18, i64 %19, !dbg !3129
  store ptr %add.ptr13, ptr %istart3, align 8, !dbg !3126
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart4) #11, !dbg !3130
  call void @llvm.dbg.declare(metadata ptr %istart4, metadata !3030, metadata !DIExpression()), !dbg !3131
  %20 = load ptr, ptr %istart3, align 8, !dbg !3132
  %21 = load i64, ptr %length3, align 8, !dbg !3133
  %add.ptr14 = getelementptr i8, ptr %20, i64 %21, !dbg !3134
  store ptr %add.ptr14, ptr %istart4, align 8, !dbg !3131
  call void @llvm.lifetime.start.p0(i64 8, ptr %segmentSize) #11, !dbg !3135
  call void @llvm.dbg.declare(metadata ptr %segmentSize, metadata !3031, metadata !DIExpression()), !dbg !3136
  %22 = load i64, ptr %dstSize.addr, align 8, !dbg !3137
  %add15 = add i64 %22, 3, !dbg !3138
  %div = udiv i64 %add15, 4, !dbg !3139
  store i64 %div, ptr %segmentSize, align 8, !dbg !3136
  call void @llvm.lifetime.start.p0(i64 8, ptr %opStart2) #11, !dbg !3140
  call void @llvm.dbg.declare(metadata ptr %opStart2, metadata !3032, metadata !DIExpression()), !dbg !3141
  %23 = load ptr, ptr %ostart, align 8, !dbg !3142
  %24 = load i64, ptr %segmentSize, align 8, !dbg !3143
  %add.ptr16 = getelementptr i8, ptr %23, i64 %24, !dbg !3144
  store ptr %add.ptr16, ptr %opStart2, align 8, !dbg !3141
  call void @llvm.lifetime.start.p0(i64 8, ptr %opStart3) #11, !dbg !3145
  call void @llvm.dbg.declare(metadata ptr %opStart3, metadata !3033, metadata !DIExpression()), !dbg !3146
  %25 = load ptr, ptr %opStart2, align 8, !dbg !3147
  %26 = load i64, ptr %segmentSize, align 8, !dbg !3148
  %add.ptr17 = getelementptr i8, ptr %25, i64 %26, !dbg !3149
  store ptr %add.ptr17, ptr %opStart3, align 8, !dbg !3146
  call void @llvm.lifetime.start.p0(i64 8, ptr %opStart4) #11, !dbg !3150
  call void @llvm.dbg.declare(metadata ptr %opStart4, metadata !3034, metadata !DIExpression()), !dbg !3151
  %27 = load ptr, ptr %opStart3, align 8, !dbg !3152
  %28 = load i64, ptr %segmentSize, align 8, !dbg !3153
  %add.ptr18 = getelementptr i8, ptr %27, i64 %28, !dbg !3154
  store ptr %add.ptr18, ptr %opStart4, align 8, !dbg !3151
  call void @llvm.lifetime.start.p0(i64 8, ptr %op1) #11, !dbg !3155
  call void @llvm.dbg.declare(metadata ptr %op1, metadata !3035, metadata !DIExpression()), !dbg !3156
  %29 = load ptr, ptr %ostart, align 8, !dbg !3157
  store ptr %29, ptr %op1, align 8, !dbg !3156
  call void @llvm.lifetime.start.p0(i64 8, ptr %op2) #11, !dbg !3158
  call void @llvm.dbg.declare(metadata ptr %op2, metadata !3036, metadata !DIExpression()), !dbg !3159
  %30 = load ptr, ptr %opStart2, align 8, !dbg !3160
  store ptr %30, ptr %op2, align 8, !dbg !3159
  call void @llvm.lifetime.start.p0(i64 8, ptr %op3) #11, !dbg !3161
  call void @llvm.dbg.declare(metadata ptr %op3, metadata !3037, metadata !DIExpression()), !dbg !3162
  %31 = load ptr, ptr %opStart3, align 8, !dbg !3163
  store ptr %31, ptr %op3, align 8, !dbg !3162
  call void @llvm.lifetime.start.p0(i64 8, ptr %op4) #11, !dbg !3164
  call void @llvm.dbg.declare(metadata ptr %op4, metadata !3038, metadata !DIExpression()), !dbg !3165
  %32 = load ptr, ptr %opStart4, align 8, !dbg !3166
  store ptr %32, ptr %op4, align 8, !dbg !3165
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !3167
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !3039, metadata !DIExpression()), !dbg !3168
  %33 = load ptr, ptr %DTable.addr, align 8, !dbg !3169
  %call19 = call i32 @HUF_getDTableDesc(ptr noundef %33) #10, !dbg !3170
  store i32 %call19, ptr %dtd, align 1, !dbg !3170
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtLog) #11, !dbg !3171
  call void @llvm.dbg.declare(metadata ptr %dtLog, metadata !3040, metadata !DIExpression()), !dbg !3172
  %tableLog = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 2, !dbg !3173
  %34 = load i8, ptr %tableLog, align 1, !dbg !3173
  %conv20 = zext i8 %34 to i32, !dbg !3174
  store i32 %conv20, ptr %dtLog, align 4, !dbg !3172
  call void @llvm.lifetime.start.p0(i64 4, ptr %endSignal) #11, !dbg !3175
  call void @llvm.dbg.declare(metadata ptr %endSignal, metadata !3041, metadata !DIExpression()), !dbg !3176
  store i32 1, ptr %endSignal, align 4, !dbg !3176
  %35 = load i64, ptr %length4, align 8, !dbg !3177
  %36 = load i64, ptr %cSrcSize.addr, align 8, !dbg !3179
  %cmp21 = icmp ugt i64 %35, %36, !dbg !3180
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !3181

if.then23:                                        ; preds = %if.end
  store i64 -20, ptr %retval, align 8, !dbg !3182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !3182

if.end24:                                         ; preds = %if.end
  %37 = load ptr, ptr %opStart4, align 8, !dbg !3183
  %38 = load ptr, ptr %oend, align 8, !dbg !3185
  %cmp25 = icmp ugt ptr %37, %38, !dbg !3186
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !3187

if.then27:                                        ; preds = %if.end24
  store i64 -20, ptr %retval, align 8, !dbg !3188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !3188

if.end28:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr %_var_err__) #11, !dbg !3189
  call void @llvm.dbg.declare(metadata ptr %_var_err__, metadata !3042, metadata !DIExpression()), !dbg !3189
  %39 = load ptr, ptr %istart1, align 8, !dbg !3189
  %40 = load i64, ptr %length1, align 8, !dbg !3189
  %call29 = call i64 @BIT_initDStream(ptr noundef %bitD1, ptr noundef %39, i64 noundef %40) #10, !dbg !3189
  store i64 %call29, ptr %_var_err__, align 8, !dbg !3189
  %41 = load i64, ptr %_var_err__, align 8, !dbg !3190
  %call30 = call i32 @ERR_isError(i64 noundef %41) #10, !dbg !3190
  %tobool = icmp ne i32 %call30, 0, !dbg !3190
  br i1 %tobool, label %if.then31, label %if.end32, !dbg !3189

if.then31:                                        ; preds = %if.end28
  %42 = load i64, ptr %_var_err__, align 8, !dbg !3190
  store i64 %42, ptr %retval, align 8, !dbg !3190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3190

if.end32:                                         ; preds = %if.end28
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3192
  br label %cleanup, !dbg !3192

cleanup:                                          ; preds = %if.end32, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %_var_err__) #11, !dbg !3192
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup194 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %_var_err__33) #11, !dbg !3193
  call void @llvm.dbg.declare(metadata ptr %_var_err__33, metadata !3044, metadata !DIExpression()), !dbg !3193
  %43 = load ptr, ptr %istart2, align 8, !dbg !3193
  %44 = load i64, ptr %length2, align 8, !dbg !3193
  %call34 = call i64 @BIT_initDStream(ptr noundef %bitD2, ptr noundef %43, i64 noundef %44) #10, !dbg !3193
  store i64 %call34, ptr %_var_err__33, align 8, !dbg !3193
  %45 = load i64, ptr %_var_err__33, align 8, !dbg !3194
  %call35 = call i32 @ERR_isError(i64 noundef %45) #10, !dbg !3194
  %tobool36 = icmp ne i32 %call35, 0, !dbg !3194
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !3193

if.then37:                                        ; preds = %cleanup.cont
  %46 = load i64, ptr %_var_err__33, align 8, !dbg !3194
  store i64 %46, ptr %retval, align 8, !dbg !3194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !3194

if.end38:                                         ; preds = %cleanup.cont
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3196
  br label %cleanup39, !dbg !3196

cleanup39:                                        ; preds = %if.end38, %if.then37
  call void @llvm.lifetime.end.p0(i64 8, ptr %_var_err__33) #11, !dbg !3196
  %cleanup.dest40 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest40, label %cleanup194 [
    i32 0, label %cleanup.cont41
  ]

cleanup.cont41:                                   ; preds = %cleanup39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_var_err__42) #11, !dbg !3197
  call void @llvm.dbg.declare(metadata ptr %_var_err__42, metadata !3046, metadata !DIExpression()), !dbg !3197
  %47 = load ptr, ptr %istart3, align 8, !dbg !3197
  %48 = load i64, ptr %length3, align 8, !dbg !3197
  %call43 = call i64 @BIT_initDStream(ptr noundef %bitD3, ptr noundef %47, i64 noundef %48) #10, !dbg !3197
  store i64 %call43, ptr %_var_err__42, align 8, !dbg !3197
  %49 = load i64, ptr %_var_err__42, align 8, !dbg !3198
  %call44 = call i32 @ERR_isError(i64 noundef %49) #10, !dbg !3198
  %tobool45 = icmp ne i32 %call44, 0, !dbg !3198
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !3197

if.then46:                                        ; preds = %cleanup.cont41
  %50 = load i64, ptr %_var_err__42, align 8, !dbg !3198
  store i64 %50, ptr %retval, align 8, !dbg !3198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !3198

if.end47:                                         ; preds = %cleanup.cont41
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3200
  br label %cleanup48, !dbg !3200

cleanup48:                                        ; preds = %if.end47, %if.then46
  call void @llvm.lifetime.end.p0(i64 8, ptr %_var_err__42) #11, !dbg !3200
  %cleanup.dest49 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest49, label %cleanup194 [
    i32 0, label %cleanup.cont50
  ]

cleanup.cont50:                                   ; preds = %cleanup48
  call void @llvm.lifetime.start.p0(i64 8, ptr %_var_err__51) #11, !dbg !3201
  call void @llvm.dbg.declare(metadata ptr %_var_err__51, metadata !3048, metadata !DIExpression()), !dbg !3201
  %51 = load ptr, ptr %istart4, align 8, !dbg !3201
  %52 = load i64, ptr %length4, align 8, !dbg !3201
  %call52 = call i64 @BIT_initDStream(ptr noundef %bitD4, ptr noundef %51, i64 noundef %52) #10, !dbg !3201
  store i64 %call52, ptr %_var_err__51, align 8, !dbg !3201
  %53 = load i64, ptr %_var_err__51, align 8, !dbg !3202
  %call53 = call i32 @ERR_isError(i64 noundef %53) #10, !dbg !3202
  %tobool54 = icmp ne i32 %call53, 0, !dbg !3202
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !3201

if.then55:                                        ; preds = %cleanup.cont50
  %54 = load i64, ptr %_var_err__51, align 8, !dbg !3202
  store i64 %54, ptr %retval, align 8, !dbg !3202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !3202

if.end56:                                         ; preds = %cleanup.cont50
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3204
  br label %cleanup57, !dbg !3204

cleanup57:                                        ; preds = %if.end56, %if.then55
  call void @llvm.lifetime.end.p0(i64 8, ptr %_var_err__51) #11, !dbg !3204
  %cleanup.dest58 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest58, label %cleanup194 [
    i32 0, label %cleanup.cont59
  ]

cleanup.cont59:                                   ; preds = %cleanup57
  %55 = load ptr, ptr %oend, align 8, !dbg !3205
  %56 = load ptr, ptr %op4, align 8, !dbg !3207
  %sub.ptr.lhs.cast = ptrtoint ptr %55 to i64, !dbg !3208
  %sub.ptr.rhs.cast = ptrtoint ptr %56 to i64, !dbg !3208
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3208
  %cmp60 = icmp uge i64 %sub.ptr.sub, 8, !dbg !3209
  br i1 %cmp60, label %if.then62, label %if.end164, !dbg !3210

if.then62:                                        ; preds = %cleanup.cont59
  br label %for.cond, !dbg !3211

for.cond:                                         ; preds = %if.end139, %if.then62
  %57 = load i32, ptr %endSignal, align 4, !dbg !3213
  %58 = load ptr, ptr %op4, align 8, !dbg !3216
  %59 = load ptr, ptr %olimit, align 8, !dbg !3217
  %cmp63 = icmp ult ptr %58, %59, !dbg !3218
  %conv64 = zext i1 %cmp63 to i32, !dbg !3218
  %and = and i32 %57, %conv64, !dbg !3219
  %tobool65 = icmp ne i32 %and, 0, !dbg !3220
  br i1 %tobool65, label %for.body, label %for.end, !dbg !3220

for.body:                                         ; preds = %for.cond
  %call66 = call i32 @MEM_64bits() #10, !dbg !3221
  %tobool67 = icmp ne i32 %call66, 0, !dbg !3221
  br i1 %tobool67, label %if.then68, label %if.end70, !dbg !3224

if.then68:                                        ; preds = %for.body
  %60 = load ptr, ptr %dt, align 8, !dbg !3221
  %61 = load i32, ptr %dtLog, align 4, !dbg !3221
  %call69 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD1, ptr noundef %60, i32 noundef %61) #10, !dbg !3221
  %62 = load ptr, ptr %op1, align 8, !dbg !3221
  %incdec.ptr = getelementptr i8, ptr %62, i32 1, !dbg !3221
  store ptr %incdec.ptr, ptr %op1, align 8, !dbg !3221
  store i8 %call69, ptr %62, align 1, !dbg !3221
  br label %if.end70, !dbg !3221

if.end70:                                         ; preds = %if.then68, %for.body
  %call71 = call i32 @MEM_64bits() #10, !dbg !3225
  %tobool72 = icmp ne i32 %call71, 0, !dbg !3225
  br i1 %tobool72, label %if.then73, label %if.end76, !dbg !3227

if.then73:                                        ; preds = %if.end70
  %63 = load ptr, ptr %dt, align 8, !dbg !3225
  %64 = load i32, ptr %dtLog, align 4, !dbg !3225
  %call74 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD2, ptr noundef %63, i32 noundef %64) #10, !dbg !3225
  %65 = load ptr, ptr %op2, align 8, !dbg !3225
  %incdec.ptr75 = getelementptr i8, ptr %65, i32 1, !dbg !3225
  store ptr %incdec.ptr75, ptr %op2, align 8, !dbg !3225
  store i8 %call74, ptr %65, align 1, !dbg !3225
  br label %if.end76, !dbg !3225

if.end76:                                         ; preds = %if.then73, %if.end70
  %call77 = call i32 @MEM_64bits() #10, !dbg !3228
  %tobool78 = icmp ne i32 %call77, 0, !dbg !3228
  br i1 %tobool78, label %if.then79, label %if.end82, !dbg !3230

if.then79:                                        ; preds = %if.end76
  %66 = load ptr, ptr %dt, align 8, !dbg !3228
  %67 = load i32, ptr %dtLog, align 4, !dbg !3228
  %call80 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD3, ptr noundef %66, i32 noundef %67) #10, !dbg !3228
  %68 = load ptr, ptr %op3, align 8, !dbg !3228
  %incdec.ptr81 = getelementptr i8, ptr %68, i32 1, !dbg !3228
  store ptr %incdec.ptr81, ptr %op3, align 8, !dbg !3228
  store i8 %call80, ptr %68, align 1, !dbg !3228
  br label %if.end82, !dbg !3228

if.end82:                                         ; preds = %if.then79, %if.end76
  %call83 = call i32 @MEM_64bits() #10, !dbg !3231
  %tobool84 = icmp ne i32 %call83, 0, !dbg !3231
  br i1 %tobool84, label %if.then85, label %if.end88, !dbg !3233

if.then85:                                        ; preds = %if.end82
  %69 = load ptr, ptr %dt, align 8, !dbg !3231
  %70 = load i32, ptr %dtLog, align 4, !dbg !3231
  %call86 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD4, ptr noundef %69, i32 noundef %70) #10, !dbg !3231
  %71 = load ptr, ptr %op4, align 8, !dbg !3231
  %incdec.ptr87 = getelementptr i8, ptr %71, i32 1, !dbg !3231
  store ptr %incdec.ptr87, ptr %op4, align 8, !dbg !3231
  store i8 %call86, ptr %71, align 1, !dbg !3231
  br label %if.end88, !dbg !3231

if.end88:                                         ; preds = %if.then85, %if.end82
  %call89 = call i32 @MEM_64bits() #10, !dbg !3234
  %tobool90 = icmp ne i32 %call89, 0, !dbg !3234
  br i1 %tobool90, label %if.then91, label %lor.lhs.false, !dbg !3234

lor.lhs.false:                                    ; preds = %if.end88
  br i1 true, label %if.then91, label %if.end94, !dbg !3236

if.then91:                                        ; preds = %lor.lhs.false, %if.end88
  %72 = load ptr, ptr %dt, align 8, !dbg !3234
  %73 = load i32, ptr %dtLog, align 4, !dbg !3234
  %call92 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD1, ptr noundef %72, i32 noundef %73) #10, !dbg !3234
  %74 = load ptr, ptr %op1, align 8, !dbg !3234
  %incdec.ptr93 = getelementptr i8, ptr %74, i32 1, !dbg !3234
  store ptr %incdec.ptr93, ptr %op1, align 8, !dbg !3234
  store i8 %call92, ptr %74, align 1, !dbg !3234
  br label %if.end94, !dbg !3234

if.end94:                                         ; preds = %if.then91, %lor.lhs.false
  %call95 = call i32 @MEM_64bits() #10, !dbg !3237
  %tobool96 = icmp ne i32 %call95, 0, !dbg !3237
  br i1 %tobool96, label %if.then98, label %lor.lhs.false97, !dbg !3237

lor.lhs.false97:                                  ; preds = %if.end94
  br i1 true, label %if.then98, label %if.end101, !dbg !3239

if.then98:                                        ; preds = %lor.lhs.false97, %if.end94
  %75 = load ptr, ptr %dt, align 8, !dbg !3237
  %76 = load i32, ptr %dtLog, align 4, !dbg !3237
  %call99 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD2, ptr noundef %75, i32 noundef %76) #10, !dbg !3237
  %77 = load ptr, ptr %op2, align 8, !dbg !3237
  %incdec.ptr100 = getelementptr i8, ptr %77, i32 1, !dbg !3237
  store ptr %incdec.ptr100, ptr %op2, align 8, !dbg !3237
  store i8 %call99, ptr %77, align 1, !dbg !3237
  br label %if.end101, !dbg !3237

if.end101:                                        ; preds = %if.then98, %lor.lhs.false97
  %call102 = call i32 @MEM_64bits() #10, !dbg !3240
  %tobool103 = icmp ne i32 %call102, 0, !dbg !3240
  br i1 %tobool103, label %if.then105, label %lor.lhs.false104, !dbg !3240

lor.lhs.false104:                                 ; preds = %if.end101
  br i1 true, label %if.then105, label %if.end108, !dbg !3242

if.then105:                                       ; preds = %lor.lhs.false104, %if.end101
  %78 = load ptr, ptr %dt, align 8, !dbg !3240
  %79 = load i32, ptr %dtLog, align 4, !dbg !3240
  %call106 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD3, ptr noundef %78, i32 noundef %79) #10, !dbg !3240
  %80 = load ptr, ptr %op3, align 8, !dbg !3240
  %incdec.ptr107 = getelementptr i8, ptr %80, i32 1, !dbg !3240
  store ptr %incdec.ptr107, ptr %op3, align 8, !dbg !3240
  store i8 %call106, ptr %80, align 1, !dbg !3240
  br label %if.end108, !dbg !3240

if.end108:                                        ; preds = %if.then105, %lor.lhs.false104
  %call109 = call i32 @MEM_64bits() #10, !dbg !3243
  %tobool110 = icmp ne i32 %call109, 0, !dbg !3243
  br i1 %tobool110, label %if.then112, label %lor.lhs.false111, !dbg !3243

lor.lhs.false111:                                 ; preds = %if.end108
  br i1 true, label %if.then112, label %if.end115, !dbg !3245

if.then112:                                       ; preds = %lor.lhs.false111, %if.end108
  %81 = load ptr, ptr %dt, align 8, !dbg !3243
  %82 = load i32, ptr %dtLog, align 4, !dbg !3243
  %call113 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD4, ptr noundef %81, i32 noundef %82) #10, !dbg !3243
  %83 = load ptr, ptr %op4, align 8, !dbg !3243
  %incdec.ptr114 = getelementptr i8, ptr %83, i32 1, !dbg !3243
  store ptr %incdec.ptr114, ptr %op4, align 8, !dbg !3243
  store i8 %call113, ptr %83, align 1, !dbg !3243
  br label %if.end115, !dbg !3243

if.end115:                                        ; preds = %if.then112, %lor.lhs.false111
  %call116 = call i32 @MEM_64bits() #10, !dbg !3246
  %tobool117 = icmp ne i32 %call116, 0, !dbg !3246
  br i1 %tobool117, label %if.then118, label %if.end121, !dbg !3248

if.then118:                                       ; preds = %if.end115
  %84 = load ptr, ptr %dt, align 8, !dbg !3246
  %85 = load i32, ptr %dtLog, align 4, !dbg !3246
  %call119 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD1, ptr noundef %84, i32 noundef %85) #10, !dbg !3246
  %86 = load ptr, ptr %op1, align 8, !dbg !3246
  %incdec.ptr120 = getelementptr i8, ptr %86, i32 1, !dbg !3246
  store ptr %incdec.ptr120, ptr %op1, align 8, !dbg !3246
  store i8 %call119, ptr %86, align 1, !dbg !3246
  br label %if.end121, !dbg !3246

if.end121:                                        ; preds = %if.then118, %if.end115
  %call122 = call i32 @MEM_64bits() #10, !dbg !3249
  %tobool123 = icmp ne i32 %call122, 0, !dbg !3249
  br i1 %tobool123, label %if.then124, label %if.end127, !dbg !3251

if.then124:                                       ; preds = %if.end121
  %87 = load ptr, ptr %dt, align 8, !dbg !3249
  %88 = load i32, ptr %dtLog, align 4, !dbg !3249
  %call125 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD2, ptr noundef %87, i32 noundef %88) #10, !dbg !3249
  %89 = load ptr, ptr %op2, align 8, !dbg !3249
  %incdec.ptr126 = getelementptr i8, ptr %89, i32 1, !dbg !3249
  store ptr %incdec.ptr126, ptr %op2, align 8, !dbg !3249
  store i8 %call125, ptr %89, align 1, !dbg !3249
  br label %if.end127, !dbg !3249

if.end127:                                        ; preds = %if.then124, %if.end121
  %call128 = call i32 @MEM_64bits() #10, !dbg !3252
  %tobool129 = icmp ne i32 %call128, 0, !dbg !3252
  br i1 %tobool129, label %if.then130, label %if.end133, !dbg !3254

if.then130:                                       ; preds = %if.end127
  %90 = load ptr, ptr %dt, align 8, !dbg !3252
  %91 = load i32, ptr %dtLog, align 4, !dbg !3252
  %call131 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD3, ptr noundef %90, i32 noundef %91) #10, !dbg !3252
  %92 = load ptr, ptr %op3, align 8, !dbg !3252
  %incdec.ptr132 = getelementptr i8, ptr %92, i32 1, !dbg !3252
  store ptr %incdec.ptr132, ptr %op3, align 8, !dbg !3252
  store i8 %call131, ptr %92, align 1, !dbg !3252
  br label %if.end133, !dbg !3252

if.end133:                                        ; preds = %if.then130, %if.end127
  %call134 = call i32 @MEM_64bits() #10, !dbg !3255
  %tobool135 = icmp ne i32 %call134, 0, !dbg !3255
  br i1 %tobool135, label %if.then136, label %if.end139, !dbg !3257

if.then136:                                       ; preds = %if.end133
  %93 = load ptr, ptr %dt, align 8, !dbg !3255
  %94 = load i32, ptr %dtLog, align 4, !dbg !3255
  %call137 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD4, ptr noundef %93, i32 noundef %94) #10, !dbg !3255
  %95 = load ptr, ptr %op4, align 8, !dbg !3255
  %incdec.ptr138 = getelementptr i8, ptr %95, i32 1, !dbg !3255
  store ptr %incdec.ptr138, ptr %op4, align 8, !dbg !3255
  store i8 %call137, ptr %95, align 1, !dbg !3255
  br label %if.end139, !dbg !3255

if.end139:                                        ; preds = %if.then136, %if.end133
  %96 = load ptr, ptr %dt, align 8, !dbg !3258
  %97 = load i32, ptr %dtLog, align 4, !dbg !3258
  %call140 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD1, ptr noundef %96, i32 noundef %97) #10, !dbg !3258
  %98 = load ptr, ptr %op1, align 8, !dbg !3258
  %incdec.ptr141 = getelementptr i8, ptr %98, i32 1, !dbg !3258
  store ptr %incdec.ptr141, ptr %op1, align 8, !dbg !3258
  store i8 %call140, ptr %98, align 1, !dbg !3258
  %99 = load ptr, ptr %dt, align 8, !dbg !3259
  %100 = load i32, ptr %dtLog, align 4, !dbg !3259
  %call142 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD2, ptr noundef %99, i32 noundef %100) #10, !dbg !3259
  %101 = load ptr, ptr %op2, align 8, !dbg !3259
  %incdec.ptr143 = getelementptr i8, ptr %101, i32 1, !dbg !3259
  store ptr %incdec.ptr143, ptr %op2, align 8, !dbg !3259
  store i8 %call142, ptr %101, align 1, !dbg !3259
  %102 = load ptr, ptr %dt, align 8, !dbg !3260
  %103 = load i32, ptr %dtLog, align 4, !dbg !3260
  %call144 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD3, ptr noundef %102, i32 noundef %103) #10, !dbg !3260
  %104 = load ptr, ptr %op3, align 8, !dbg !3260
  %incdec.ptr145 = getelementptr i8, ptr %104, i32 1, !dbg !3260
  store ptr %incdec.ptr145, ptr %op3, align 8, !dbg !3260
  store i8 %call144, ptr %104, align 1, !dbg !3260
  %105 = load ptr, ptr %dt, align 8, !dbg !3261
  %106 = load i32, ptr %dtLog, align 4, !dbg !3261
  %call146 = call zeroext i8 @HUF_decodeSymbolX1(ptr noundef %bitD4, ptr noundef %105, i32 noundef %106) #10, !dbg !3261
  %107 = load ptr, ptr %op4, align 8, !dbg !3261
  %incdec.ptr147 = getelementptr i8, ptr %107, i32 1, !dbg !3261
  store ptr %incdec.ptr147, ptr %op4, align 8, !dbg !3261
  store i8 %call146, ptr %107, align 1, !dbg !3261
  %call148 = call i32 @BIT_reloadDStreamFast(ptr noundef %bitD1) #10, !dbg !3262
  %cmp149 = icmp eq i32 %call148, 0, !dbg !3263
  %conv150 = zext i1 %cmp149 to i32, !dbg !3263
  %108 = load i32, ptr %endSignal, align 4, !dbg !3264
  %and151 = and i32 %108, %conv150, !dbg !3264
  store i32 %and151, ptr %endSignal, align 4, !dbg !3264
  %call152 = call i32 @BIT_reloadDStreamFast(ptr noundef %bitD2) #10, !dbg !3265
  %cmp153 = icmp eq i32 %call152, 0, !dbg !3266
  %conv154 = zext i1 %cmp153 to i32, !dbg !3266
  %109 = load i32, ptr %endSignal, align 4, !dbg !3267
  %and155 = and i32 %109, %conv154, !dbg !3267
  store i32 %and155, ptr %endSignal, align 4, !dbg !3267
  %call156 = call i32 @BIT_reloadDStreamFast(ptr noundef %bitD3) #10, !dbg !3268
  %cmp157 = icmp eq i32 %call156, 0, !dbg !3269
  %conv158 = zext i1 %cmp157 to i32, !dbg !3269
  %110 = load i32, ptr %endSignal, align 4, !dbg !3270
  %and159 = and i32 %110, %conv158, !dbg !3270
  store i32 %and159, ptr %endSignal, align 4, !dbg !3270
  %call160 = call i32 @BIT_reloadDStreamFast(ptr noundef %bitD4) #10, !dbg !3271
  %cmp161 = icmp eq i32 %call160, 0, !dbg !3272
  %conv162 = zext i1 %cmp161 to i32, !dbg !3272
  %111 = load i32, ptr %endSignal, align 4, !dbg !3273
  %and163 = and i32 %111, %conv162, !dbg !3273
  store i32 %and163, ptr %endSignal, align 4, !dbg !3273
  br label %for.cond, !dbg !3274, !llvm.loop !3275

for.end:                                          ; preds = %for.cond
  br label %if.end164, !dbg !3277

if.end164:                                        ; preds = %for.end, %cleanup.cont59
  %112 = load ptr, ptr %op1, align 8, !dbg !3278
  %113 = load ptr, ptr %opStart2, align 8, !dbg !3280
  %cmp165 = icmp ugt ptr %112, %113, !dbg !3281
  br i1 %cmp165, label %if.then167, label %if.end168, !dbg !3282

if.then167:                                       ; preds = %if.end164
  store i64 -20, ptr %retval, align 8, !dbg !3283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !3283

if.end168:                                        ; preds = %if.end164
  %114 = load ptr, ptr %op2, align 8, !dbg !3284
  %115 = load ptr, ptr %opStart3, align 8, !dbg !3286
  %cmp169 = icmp ugt ptr %114, %115, !dbg !3287
  br i1 %cmp169, label %if.then171, label %if.end172, !dbg !3288

if.then171:                                       ; preds = %if.end168
  store i64 -20, ptr %retval, align 8, !dbg !3289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !3289

if.end172:                                        ; preds = %if.end168
  %116 = load ptr, ptr %op3, align 8, !dbg !3290
  %117 = load ptr, ptr %opStart4, align 8, !dbg !3292
  %cmp173 = icmp ugt ptr %116, %117, !dbg !3293
  br i1 %cmp173, label %if.then175, label %if.end176, !dbg !3294

if.then175:                                       ; preds = %if.end172
  store i64 -20, ptr %retval, align 8, !dbg !3295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !3295

if.end176:                                        ; preds = %if.end172
  %118 = load ptr, ptr %op1, align 8, !dbg !3296
  %119 = load ptr, ptr %opStart2, align 8, !dbg !3297
  %120 = load ptr, ptr %dt, align 8, !dbg !3298
  %121 = load i32, ptr %dtLog, align 4, !dbg !3299
  %call177 = call i64 @HUF_decodeStreamX1(ptr noundef %118, ptr noundef %bitD1, ptr noundef %119, ptr noundef %120, i32 noundef %121) #10, !dbg !3300
  %122 = load ptr, ptr %op2, align 8, !dbg !3301
  %123 = load ptr, ptr %opStart3, align 8, !dbg !3302
  %124 = load ptr, ptr %dt, align 8, !dbg !3303
  %125 = load i32, ptr %dtLog, align 4, !dbg !3304
  %call178 = call i64 @HUF_decodeStreamX1(ptr noundef %122, ptr noundef %bitD2, ptr noundef %123, ptr noundef %124, i32 noundef %125) #10, !dbg !3305
  %126 = load ptr, ptr %op3, align 8, !dbg !3306
  %127 = load ptr, ptr %opStart4, align 8, !dbg !3307
  %128 = load ptr, ptr %dt, align 8, !dbg !3308
  %129 = load i32, ptr %dtLog, align 4, !dbg !3309
  %call179 = call i64 @HUF_decodeStreamX1(ptr noundef %126, ptr noundef %bitD3, ptr noundef %127, ptr noundef %128, i32 noundef %129) #10, !dbg !3310
  %130 = load ptr, ptr %op4, align 8, !dbg !3311
  %131 = load ptr, ptr %oend, align 8, !dbg !3312
  %132 = load ptr, ptr %dt, align 8, !dbg !3313
  %133 = load i32, ptr %dtLog, align 4, !dbg !3314
  %call180 = call i64 @HUF_decodeStreamX1(ptr noundef %130, ptr noundef %bitD4, ptr noundef %131, ptr noundef %132, i32 noundef %133) #10, !dbg !3315
  call void @llvm.lifetime.start.p0(i64 4, ptr %endCheck) #11, !dbg !3316
  call void @llvm.dbg.declare(metadata ptr %endCheck, metadata !3050, metadata !DIExpression()), !dbg !3317
  %call181 = call i32 @BIT_endOfDStream(ptr noundef %bitD1) #10, !dbg !3318
  %call182 = call i32 @BIT_endOfDStream(ptr noundef %bitD2) #10, !dbg !3319
  %and183 = and i32 %call181, %call182, !dbg !3320
  %call184 = call i32 @BIT_endOfDStream(ptr noundef %bitD3) #10, !dbg !3321
  %and185 = and i32 %and183, %call184, !dbg !3322
  %call186 = call i32 @BIT_endOfDStream(ptr noundef %bitD4) #10, !dbg !3323
  %and187 = and i32 %and185, %call186, !dbg !3324
  store i32 %and187, ptr %endCheck, align 4, !dbg !3317
  %134 = load i32, ptr %endCheck, align 4, !dbg !3325
  %tobool188 = icmp ne i32 %134, 0, !dbg !3325
  br i1 %tobool188, label %if.end190, label %if.then189, !dbg !3327

if.then189:                                       ; preds = %if.end176
  store i64 -20, ptr %retval, align 8, !dbg !3328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup191, !dbg !3328

if.end190:                                        ; preds = %if.end176
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3329
  br label %cleanup191, !dbg !3329

cleanup191:                                       ; preds = %if.end190, %if.then189
  call void @llvm.lifetime.end.p0(i64 4, ptr %endCheck) #11, !dbg !3329
  %cleanup.dest192 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest192, label %cleanup194 [
    i32 0, label %cleanup.cont193
  ]

cleanup.cont193:                                  ; preds = %cleanup191
  %135 = load i64, ptr %dstSize.addr, align 8, !dbg !3330
  store i64 %135, ptr %retval, align 8, !dbg !3331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !3331

cleanup194:                                       ; preds = %cleanup.cont193, %cleanup191, %if.then175, %if.then171, %if.then167, %cleanup57, %cleanup48, %cleanup39, %cleanup, %if.then27, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr %endSignal) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtLog) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %op4) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %op3) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %op2) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %op1) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %opStart4) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %opStart3) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %opStart2) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %segmentSize) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart4) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart3) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart2) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart1) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %length4) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %length3) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %length2) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %length1) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 40, ptr %bitD4) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 40, ptr %bitD3) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 40, ptr %bitD2) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 40, ptr %bitD1) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %dt) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtPtr) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %olimit) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #11, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart) #11, !dbg !3332
  br label %return

return:                                           ; preds = %cleanup194, %if.then
  %136 = load i64, ptr %retval, align 8, !dbg !3333
  ret i64 %136, !dbg !3333
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @MEM_readLE16(ptr noundef %memPtr) #5 align 16 !dbg !3334 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !3338, metadata !DIExpression()), !dbg !3339
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !3340
  %call = call zeroext i16 @get_unaligned_le16(ptr noundef %0) #10, !dbg !3341
  ret i16 %call, !dbg !3342
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @get_unaligned_le16(ptr noundef %p) #5 align 16 !dbg !183 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !187, metadata !DIExpression()), !dbg !3343
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #11, !dbg !3344
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !188, metadata !DIExpression()), !dbg !3344
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3344
  store ptr %0, ptr %__pptr, align 8, !dbg !3344
  %1 = load ptr, ptr %__pptr, align 8, !dbg !3344
  %x = getelementptr inbounds %struct.anon.2, ptr %1, i32 0, i32 0, !dbg !3344
  %2 = load i16, ptr %x, align 1, !dbg !3344
  store i16 %2, ptr %tmp, align 2, !dbg !3344
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #11, !dbg !3345
  %3 = load i16, ptr %tmp, align 2, !dbg !3344
  ret i16 %3, !dbg !3346
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @HUF_fillDTableX2Level2(ptr noundef %DTable, i32 noundef %targetLog, i32 noundef %consumedBits, ptr noundef %rankVal, i32 noundef %minWeight, i32 noundef %maxWeight1, ptr noundef %sortedSymbols, ptr noundef %rankStart, i32 noundef %nbBitsBaseline, i16 noundef zeroext %baseSeq) #0 align 16 !dbg !3347 {
entry:
  %DTable.addr = alloca ptr, align 8
  %targetLog.addr = alloca i32, align 4
  %consumedBits.addr = alloca i32, align 4
  %rankVal.addr = alloca ptr, align 8
  %minWeight.addr = alloca i32, align 4
  %maxWeight1.addr = alloca i32, align 4
  %sortedSymbols.addr = alloca ptr, align 8
  %rankStart.addr = alloca ptr, align 8
  %nbBitsBaseline.addr = alloca i32, align 4
  %baseSeq.addr = alloca i16, align 2
  %length = alloca i32, align 4
  %DEltX2 = alloca i64, align 8
  %skipSize = alloca i32, align 4
  %i = alloca i32, align 4
  %w = alloca i32, align 4
  %begin = alloca i32, align 4
  %end = alloca i32, align 4
  %nbBits = alloca i32, align 4
  %totalBits = alloca i32, align 4
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !3351, metadata !DIExpression()), !dbg !3378
  store i32 %targetLog, ptr %targetLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %targetLog.addr, metadata !3352, metadata !DIExpression()), !dbg !3379
  store i32 %consumedBits, ptr %consumedBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %consumedBits.addr, metadata !3353, metadata !DIExpression()), !dbg !3380
  store ptr %rankVal, ptr %rankVal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rankVal.addr, metadata !3354, metadata !DIExpression()), !dbg !3381
  store i32 %minWeight, ptr %minWeight.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %minWeight.addr, metadata !3355, metadata !DIExpression()), !dbg !3382
  store i32 %maxWeight1, ptr %maxWeight1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxWeight1.addr, metadata !3356, metadata !DIExpression()), !dbg !3383
  store ptr %sortedSymbols, ptr %sortedSymbols.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sortedSymbols.addr, metadata !3357, metadata !DIExpression()), !dbg !3384
  store ptr %rankStart, ptr %rankStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rankStart.addr, metadata !3358, metadata !DIExpression()), !dbg !3385
  store i32 %nbBitsBaseline, ptr %nbBitsBaseline.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBitsBaseline.addr, metadata !3359, metadata !DIExpression()), !dbg !3386
  store i16 %baseSeq, ptr %baseSeq.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %baseSeq.addr, metadata !3360, metadata !DIExpression()), !dbg !3387
  %0 = load i32, ptr %minWeight.addr, align 4, !dbg !3388
  %cmp = icmp sgt i32 %0, 1, !dbg !3389
  br i1 %cmp, label %if.then, label %if.end, !dbg !3390

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #11, !dbg !3391
  call void @llvm.dbg.declare(metadata ptr %length, metadata !3361, metadata !DIExpression()), !dbg !3392
  %1 = load i32, ptr %targetLog.addr, align 4, !dbg !3393
  %2 = load i32, ptr %consumedBits.addr, align 4, !dbg !3394
  %sub = sub i32 %1, %2, !dbg !3395
  %and = and i32 %sub, 31, !dbg !3396
  %shl = shl i32 1, %and, !dbg !3397
  store i32 %shl, ptr %length, align 4, !dbg !3392
  call void @llvm.lifetime.start.p0(i64 8, ptr %DEltX2) #11, !dbg !3398
  call void @llvm.dbg.declare(metadata ptr %DEltX2, metadata !3364, metadata !DIExpression()), !dbg !3399
  %3 = load i16, ptr %baseSeq.addr, align 2, !dbg !3400
  %conv = zext i16 %3 to i32, !dbg !3400
  %4 = load i32, ptr %consumedBits.addr, align 4, !dbg !3401
  %call = call i64 @HUF_buildDEltX2U64(i32 noundef %conv, i32 noundef %4, i16 noundef zeroext 0, i32 noundef 1) #10, !dbg !3402
  store i64 %call, ptr %DEltX2, align 8, !dbg !3399
  call void @llvm.lifetime.start.p0(i64 4, ptr %skipSize) #11, !dbg !3403
  call void @llvm.dbg.declare(metadata ptr %skipSize, metadata !3365, metadata !DIExpression()), !dbg !3404
  %5 = load ptr, ptr %rankVal.addr, align 8, !dbg !3405
  %6 = load i32, ptr %minWeight.addr, align 4, !dbg !3406
  %idxprom = sext i32 %6 to i64, !dbg !3405
  %arrayidx = getelementptr i32, ptr %5, i64 %idxprom, !dbg !3405
  %7 = load i32, ptr %arrayidx, align 4, !dbg !3405
  store i32 %7, ptr %skipSize, align 4, !dbg !3404
  %8 = load i32, ptr %length, align 4, !dbg !3407
  switch i32 %8, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb1
  ], !dbg !3408

sw.bb:                                            ; preds = %if.then
  %9 = load ptr, ptr %DTable.addr, align 8, !dbg !3409
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %9, ptr align 8 %DEltX2, i64 8, i1 false), !dbg !3409
  br label %sw.epilog, !dbg !3410

sw.bb1:                                           ; preds = %if.then
  %10 = load ptr, ptr %DTable.addr, align 8, !dbg !3411
  %add.ptr = getelementptr %struct.HUF_DEltX2, ptr %10, i64 0, !dbg !3411
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr, ptr align 8 %DEltX2, i64 8, i1 false), !dbg !3411
  %11 = load ptr, ptr %DTable.addr, align 8, !dbg !3412
  %add.ptr2 = getelementptr %struct.HUF_DEltX2, ptr %11, i64 2, !dbg !3412
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr2, ptr align 8 %DEltX2, i64 8, i1 false), !dbg !3412
  br label %sw.epilog, !dbg !3413

sw.default:                                       ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !3414
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3366, metadata !DIExpression()), !dbg !3415
  store i32 0, ptr %i, align 4, !dbg !3416
  br label %for.cond, !dbg !3418

for.cond:                                         ; preds = %for.inc, %sw.default
  %12 = load i32, ptr %i, align 4, !dbg !3419
  %13 = load i32, ptr %skipSize, align 4, !dbg !3421
  %cmp3 = icmp slt i32 %12, %13, !dbg !3422
  br i1 %cmp3, label %for.body, label %for.end, !dbg !3423

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %DTable.addr, align 8, !dbg !3424
  %15 = load i32, ptr %i, align 4, !dbg !3424
  %idx.ext = sext i32 %15 to i64, !dbg !3424
  %add.ptr5 = getelementptr %struct.HUF_DEltX2, ptr %14, i64 %idx.ext, !dbg !3424
  %add.ptr6 = getelementptr %struct.HUF_DEltX2, ptr %add.ptr5, i64 0, !dbg !3424
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr6, ptr align 8 %DEltX2, i64 8, i1 false), !dbg !3424
  %16 = load ptr, ptr %DTable.addr, align 8, !dbg !3426
  %17 = load i32, ptr %i, align 4, !dbg !3426
  %idx.ext7 = sext i32 %17 to i64, !dbg !3426
  %add.ptr8 = getelementptr %struct.HUF_DEltX2, ptr %16, i64 %idx.ext7, !dbg !3426
  %add.ptr9 = getelementptr %struct.HUF_DEltX2, ptr %add.ptr8, i64 2, !dbg !3426
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr9, ptr align 8 %DEltX2, i64 8, i1 false), !dbg !3426
  %18 = load ptr, ptr %DTable.addr, align 8, !dbg !3427
  %19 = load i32, ptr %i, align 4, !dbg !3427
  %idx.ext10 = sext i32 %19 to i64, !dbg !3427
  %add.ptr11 = getelementptr %struct.HUF_DEltX2, ptr %18, i64 %idx.ext10, !dbg !3427
  %add.ptr12 = getelementptr %struct.HUF_DEltX2, ptr %add.ptr11, i64 4, !dbg !3427
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr12, ptr align 8 %DEltX2, i64 8, i1 false), !dbg !3427
  %20 = load ptr, ptr %DTable.addr, align 8, !dbg !3428
  %21 = load i32, ptr %i, align 4, !dbg !3428
  %idx.ext13 = sext i32 %21 to i64, !dbg !3428
  %add.ptr14 = getelementptr %struct.HUF_DEltX2, ptr %20, i64 %idx.ext13, !dbg !3428
  %add.ptr15 = getelementptr %struct.HUF_DEltX2, ptr %add.ptr14, i64 6, !dbg !3428
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr15, ptr align 8 %DEltX2, i64 8, i1 false), !dbg !3428
  br label %for.inc, !dbg !3429

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4, !dbg !3430
  %add = add i32 %22, 8, !dbg !3430
  store i32 %add, ptr %i, align 4, !dbg !3430
  br label %for.cond, !dbg !3431, !llvm.loop !3432

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !3434
  br label %sw.epilog, !dbg !3435

sw.epilog:                                        ; preds = %for.end, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %skipSize) #11, !dbg !3436
  call void @llvm.lifetime.end.p0(i64 8, ptr %DEltX2) #11, !dbg !3436
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #11, !dbg !3436
  br label %if.end, !dbg !3437

if.end:                                           ; preds = %sw.epilog, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #11, !dbg !3438
  call void @llvm.dbg.declare(metadata ptr %w, metadata !3369, metadata !DIExpression()), !dbg !3439
  %23 = load i32, ptr %minWeight.addr, align 4, !dbg !3440
  store i32 %23, ptr %w, align 4, !dbg !3441
  br label %for.cond16, !dbg !3442

for.cond16:                                       ; preds = %for.inc35, %if.end
  %24 = load i32, ptr %w, align 4, !dbg !3443
  %25 = load i32, ptr %maxWeight1.addr, align 4, !dbg !3444
  %cmp17 = icmp slt i32 %24, %25, !dbg !3445
  br i1 %cmp17, label %for.body19, label %for.end36, !dbg !3446

for.body19:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %begin) #11, !dbg !3447
  call void @llvm.dbg.declare(metadata ptr %begin, metadata !3371, metadata !DIExpression()), !dbg !3448
  %26 = load ptr, ptr %rankStart.addr, align 8, !dbg !3449
  %27 = load i32, ptr %w, align 4, !dbg !3450
  %idxprom20 = sext i32 %27 to i64, !dbg !3449
  %arrayidx21 = getelementptr i32, ptr %26, i64 %idxprom20, !dbg !3449
  %28 = load i32, ptr %arrayidx21, align 4, !dbg !3449
  store i32 %28, ptr %begin, align 4, !dbg !3448
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #11, !dbg !3451
  call void @llvm.dbg.declare(metadata ptr %end, metadata !3375, metadata !DIExpression()), !dbg !3452
  %29 = load ptr, ptr %rankStart.addr, align 8, !dbg !3453
  %30 = load i32, ptr %w, align 4, !dbg !3454
  %add22 = add i32 %30, 1, !dbg !3455
  %idxprom23 = sext i32 %add22 to i64, !dbg !3453
  %arrayidx24 = getelementptr i32, ptr %29, i64 %idxprom23, !dbg !3453
  %31 = load i32, ptr %arrayidx24, align 4, !dbg !3453
  store i32 %31, ptr %end, align 4, !dbg !3452
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbBits) #11, !dbg !3456
  call void @llvm.dbg.declare(metadata ptr %nbBits, metadata !3376, metadata !DIExpression()), !dbg !3457
  %32 = load i32, ptr %nbBitsBaseline.addr, align 4, !dbg !3458
  %33 = load i32, ptr %w, align 4, !dbg !3459
  %sub25 = sub i32 %32, %33, !dbg !3460
  store i32 %sub25, ptr %nbBits, align 4, !dbg !3457
  call void @llvm.lifetime.start.p0(i64 4, ptr %totalBits) #11, !dbg !3461
  call void @llvm.dbg.declare(metadata ptr %totalBits, metadata !3377, metadata !DIExpression()), !dbg !3462
  %34 = load i32, ptr %nbBits, align 4, !dbg !3463
  %35 = load i32, ptr %consumedBits.addr, align 4, !dbg !3464
  %add26 = add i32 %34, %35, !dbg !3465
  store i32 %add26, ptr %totalBits, align 4, !dbg !3462
  %36 = load ptr, ptr %DTable.addr, align 8, !dbg !3466
  %37 = load ptr, ptr %rankVal.addr, align 8, !dbg !3467
  %38 = load i32, ptr %w, align 4, !dbg !3468
  %idxprom27 = sext i32 %38 to i64, !dbg !3467
  %arrayidx28 = getelementptr i32, ptr %37, i64 %idxprom27, !dbg !3467
  %39 = load i32, ptr %arrayidx28, align 4, !dbg !3467
  %idx.ext29 = zext i32 %39 to i64, !dbg !3469
  %add.ptr30 = getelementptr %struct.HUF_DEltX2, ptr %36, i64 %idx.ext29, !dbg !3469
  %40 = load ptr, ptr %sortedSymbols.addr, align 8, !dbg !3470
  %41 = load i32, ptr %begin, align 4, !dbg !3471
  %idx.ext31 = sext i32 %41 to i64, !dbg !3472
  %add.ptr32 = getelementptr %struct.sortedSymbol_t, ptr %40, i64 %idx.ext31, !dbg !3472
  %42 = load ptr, ptr %sortedSymbols.addr, align 8, !dbg !3473
  %43 = load i32, ptr %end, align 4, !dbg !3474
  %idx.ext33 = sext i32 %43 to i64, !dbg !3475
  %add.ptr34 = getelementptr %struct.sortedSymbol_t, ptr %42, i64 %idx.ext33, !dbg !3475
  %44 = load i32, ptr %totalBits, align 4, !dbg !3476
  %45 = load i32, ptr %targetLog.addr, align 4, !dbg !3477
  %46 = load i16, ptr %baseSeq.addr, align 2, !dbg !3478
  call void @HUF_fillDTableX2ForWeight(ptr noundef %add.ptr30, ptr noundef %add.ptr32, ptr noundef %add.ptr34, i32 noundef %44, i32 noundef %45, i16 noundef zeroext %46, i32 noundef 2) #10, !dbg !3479
  call void @llvm.lifetime.end.p0(i64 4, ptr %totalBits) #11, !dbg !3480
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbBits) #11, !dbg !3480
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #11, !dbg !3480
  call void @llvm.lifetime.end.p0(i64 4, ptr %begin) #11, !dbg !3480
  br label %for.inc35, !dbg !3481

for.inc35:                                        ; preds = %for.body19
  %47 = load i32, ptr %w, align 4, !dbg !3482
  %inc = add i32 %47, 1, !dbg !3482
  store i32 %inc, ptr %w, align 4, !dbg !3482
  br label %for.cond16, !dbg !3483, !llvm.loop !3484

for.end36:                                        ; preds = %for.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #11, !dbg !3486
  ret void, !dbg !3487
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @HUF_fillDTableX2ForWeight(ptr noundef %DTableRank, ptr noundef %begin, ptr noundef %end, i32 noundef %nbBits, i32 noundef %tableLog, i16 noundef zeroext %baseSeq, i32 noundef %level) #0 align 16 !dbg !3488 {
entry:
  %DTableRank.addr = alloca ptr, align 8
  %begin.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  %tableLog.addr = alloca i32, align 4
  %baseSeq.addr = alloca i16, align 2
  %level.addr = alloca i32, align 4
  %length = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %DElt = alloca %struct.HUF_DEltX2, align 2
  %DElt8 = alloca %struct.HUF_DEltX2, align 2
  %DEltX2 = alloca i64, align 8
  %DEltX236 = alloca i64, align 8
  %DEltX252 = alloca i64, align 8
  %DTableRankEnd = alloca ptr, align 8
  store ptr %DTableRank, ptr %DTableRank.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTableRank.addr, metadata !3492, metadata !DIExpression()), !dbg !3523
  store ptr %begin, ptr %begin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %begin.addr, metadata !3493, metadata !DIExpression()), !dbg !3524
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !3494, metadata !DIExpression()), !dbg !3525
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !3495, metadata !DIExpression()), !dbg !3526
  store i32 %tableLog, ptr %tableLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tableLog.addr, metadata !3496, metadata !DIExpression()), !dbg !3527
  store i16 %baseSeq, ptr %baseSeq.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %baseSeq.addr, metadata !3497, metadata !DIExpression()), !dbg !3528
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !3498, metadata !DIExpression()), !dbg !3529
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #11, !dbg !3530
  call void @llvm.dbg.declare(metadata ptr %length, metadata !3499, metadata !DIExpression()), !dbg !3531
  %0 = load i32, ptr %tableLog.addr, align 4, !dbg !3532
  %1 = load i32, ptr %nbBits.addr, align 4, !dbg !3533
  %sub = sub i32 %0, %1, !dbg !3534
  %and = and i32 %sub, 31, !dbg !3535
  %shl = shl i32 1, %and, !dbg !3536
  store i32 %shl, ptr %length, align 4, !dbg !3531
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #11, !dbg !3537
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !3500, metadata !DIExpression()), !dbg !3538
  %2 = load i32, ptr %length, align 4, !dbg !3539
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 4, label %sw.bb17
    i32 8, label %sw.bb31
  ], !dbg !3540

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %begin.addr, align 8, !dbg !3541
  store ptr %3, ptr %ptr, align 8, !dbg !3542
  br label %for.cond, !dbg !3543

for.cond:                                         ; preds = %for.inc, %sw.bb
  %4 = load ptr, ptr %ptr, align 8, !dbg !3544
  %5 = load ptr, ptr %end.addr, align 8, !dbg !3545
  %cmp = icmp ne ptr %4, %5, !dbg !3546
  br i1 %cmp, label %for.body, label %for.end, !dbg !3547

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %DElt) #11, !dbg !3548
  call void @llvm.dbg.declare(metadata ptr %DElt, metadata !3501, metadata !DIExpression()), !dbg !3549
  %6 = load ptr, ptr %ptr, align 8, !dbg !3550
  %symbol = getelementptr inbounds %struct.sortedSymbol_t, ptr %6, i32 0, i32 0, !dbg !3551
  %7 = load i8, ptr %symbol, align 1, !dbg !3551
  %conv = zext i8 %7 to i32, !dbg !3550
  %8 = load i32, ptr %nbBits.addr, align 4, !dbg !3552
  %9 = load i16, ptr %baseSeq.addr, align 2, !dbg !3553
  %conv1 = zext i16 %9 to i32, !dbg !3553
  %10 = load i32, ptr %level.addr, align 4, !dbg !3554
  %call = call i32 @HUF_buildDEltX2(i32 noundef %conv, i32 noundef %8, i32 noundef %conv1, i32 noundef %10) #10, !dbg !3555
  store i32 %call, ptr %DElt, align 2, !dbg !3555
  %11 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3556
  %incdec.ptr = getelementptr %struct.HUF_DEltX2, ptr %11, i32 1, !dbg !3556
  store ptr %incdec.ptr, ptr %DTableRank.addr, align 8, !dbg !3556
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %11, ptr align 2 %DElt, i64 4, i1 false), !dbg !3557
  call void @llvm.lifetime.end.p0(i64 4, ptr %DElt) #11, !dbg !3558
  br label %for.inc, !dbg !3559

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %ptr, align 8, !dbg !3560
  %incdec.ptr2 = getelementptr %struct.sortedSymbol_t, ptr %12, i32 1, !dbg !3560
  store ptr %incdec.ptr2, ptr %ptr, align 8, !dbg !3560
  br label %for.cond, !dbg !3561, !llvm.loop !3562

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !3564

sw.bb3:                                           ; preds = %entry
  %13 = load ptr, ptr %begin.addr, align 8, !dbg !3565
  store ptr %13, ptr %ptr, align 8, !dbg !3566
  br label %for.cond4, !dbg !3567

for.cond4:                                        ; preds = %for.inc14, %sw.bb3
  %14 = load ptr, ptr %ptr, align 8, !dbg !3568
  %15 = load ptr, ptr %end.addr, align 8, !dbg !3569
  %cmp5 = icmp ne ptr %14, %15, !dbg !3570
  br i1 %cmp5, label %for.body7, label %for.end16, !dbg !3571

for.body7:                                        ; preds = %for.cond4
  call void @llvm.lifetime.start.p0(i64 4, ptr %DElt8) #11, !dbg !3572
  call void @llvm.dbg.declare(metadata ptr %DElt8, metadata !3506, metadata !DIExpression()), !dbg !3573
  %16 = load ptr, ptr %ptr, align 8, !dbg !3574
  %symbol9 = getelementptr inbounds %struct.sortedSymbol_t, ptr %16, i32 0, i32 0, !dbg !3575
  %17 = load i8, ptr %symbol9, align 1, !dbg !3575
  %conv10 = zext i8 %17 to i32, !dbg !3574
  %18 = load i32, ptr %nbBits.addr, align 4, !dbg !3576
  %19 = load i16, ptr %baseSeq.addr, align 2, !dbg !3577
  %conv11 = zext i16 %19 to i32, !dbg !3577
  %20 = load i32, ptr %level.addr, align 4, !dbg !3578
  %call12 = call i32 @HUF_buildDEltX2(i32 noundef %conv10, i32 noundef %18, i32 noundef %conv11, i32 noundef %20) #10, !dbg !3579
  store i32 %call12, ptr %DElt8, align 2, !dbg !3579
  %21 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3580
  %arrayidx = getelementptr %struct.HUF_DEltX2, ptr %21, i64 0, !dbg !3580
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx, ptr align 2 %DElt8, i64 4, i1 false), !dbg !3581
  %22 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3582
  %arrayidx13 = getelementptr %struct.HUF_DEltX2, ptr %22, i64 1, !dbg !3582
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx13, ptr align 2 %DElt8, i64 4, i1 false), !dbg !3583
  %23 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3584
  %add.ptr = getelementptr %struct.HUF_DEltX2, ptr %23, i64 2, !dbg !3584
  store ptr %add.ptr, ptr %DTableRank.addr, align 8, !dbg !3584
  call void @llvm.lifetime.end.p0(i64 4, ptr %DElt8) #11, !dbg !3585
  br label %for.inc14, !dbg !3586

for.inc14:                                        ; preds = %for.body7
  %24 = load ptr, ptr %ptr, align 8, !dbg !3587
  %incdec.ptr15 = getelementptr %struct.sortedSymbol_t, ptr %24, i32 1, !dbg !3587
  store ptr %incdec.ptr15, ptr %ptr, align 8, !dbg !3587
  br label %for.cond4, !dbg !3588, !llvm.loop !3589

for.end16:                                        ; preds = %for.cond4
  br label %sw.epilog, !dbg !3591

sw.bb17:                                          ; preds = %entry
  %25 = load ptr, ptr %begin.addr, align 8, !dbg !3592
  store ptr %25, ptr %ptr, align 8, !dbg !3593
  br label %for.cond18, !dbg !3594

for.cond18:                                       ; preds = %for.inc28, %sw.bb17
  %26 = load ptr, ptr %ptr, align 8, !dbg !3595
  %27 = load ptr, ptr %end.addr, align 8, !dbg !3596
  %cmp19 = icmp ne ptr %26, %27, !dbg !3597
  br i1 %cmp19, label %for.body21, label %for.end30, !dbg !3598

for.body21:                                       ; preds = %for.cond18
  call void @llvm.lifetime.start.p0(i64 8, ptr %DEltX2) #11, !dbg !3599
  call void @llvm.dbg.declare(metadata ptr %DEltX2, metadata !3510, metadata !DIExpression()), !dbg !3600
  %28 = load ptr, ptr %ptr, align 8, !dbg !3601
  %symbol22 = getelementptr inbounds %struct.sortedSymbol_t, ptr %28, i32 0, i32 0, !dbg !3602
  %29 = load i8, ptr %symbol22, align 1, !dbg !3602
  %conv23 = zext i8 %29 to i32, !dbg !3601
  %30 = load i32, ptr %nbBits.addr, align 4, !dbg !3603
  %31 = load i16, ptr %baseSeq.addr, align 2, !dbg !3604
  %32 = load i32, ptr %level.addr, align 4, !dbg !3605
  %call24 = call i64 @HUF_buildDEltX2U64(i32 noundef %conv23, i32 noundef %30, i16 noundef zeroext %31, i32 noundef %32) #10, !dbg !3606
  store i64 %call24, ptr %DEltX2, align 8, !dbg !3600
  %33 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3607
  %add.ptr25 = getelementptr %struct.HUF_DEltX2, ptr %33, i64 0, !dbg !3607
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr25, ptr align 8 %DEltX2, i64 8, i1 false), !dbg !3607
  %34 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3608
  %add.ptr26 = getelementptr %struct.HUF_DEltX2, ptr %34, i64 2, !dbg !3608
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr26, ptr align 8 %DEltX2, i64 8, i1 false), !dbg !3608
  %35 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3609
  %add.ptr27 = getelementptr %struct.HUF_DEltX2, ptr %35, i64 4, !dbg !3609
  store ptr %add.ptr27, ptr %DTableRank.addr, align 8, !dbg !3609
  call void @llvm.lifetime.end.p0(i64 8, ptr %DEltX2) #11, !dbg !3610
  br label %for.inc28, !dbg !3611

for.inc28:                                        ; preds = %for.body21
  %36 = load ptr, ptr %ptr, align 8, !dbg !3612
  %incdec.ptr29 = getelementptr %struct.sortedSymbol_t, ptr %36, i32 1, !dbg !3612
  store ptr %incdec.ptr29, ptr %ptr, align 8, !dbg !3612
  br label %for.cond18, !dbg !3613, !llvm.loop !3614

for.end30:                                        ; preds = %for.cond18
  br label %sw.epilog, !dbg !3616

sw.bb31:                                          ; preds = %entry
  %37 = load ptr, ptr %begin.addr, align 8, !dbg !3617
  store ptr %37, ptr %ptr, align 8, !dbg !3618
  br label %for.cond32, !dbg !3619

for.cond32:                                       ; preds = %for.inc45, %sw.bb31
  %38 = load ptr, ptr %ptr, align 8, !dbg !3620
  %39 = load ptr, ptr %end.addr, align 8, !dbg !3621
  %cmp33 = icmp ne ptr %38, %39, !dbg !3622
  br i1 %cmp33, label %for.body35, label %for.end47, !dbg !3623

for.body35:                                       ; preds = %for.cond32
  call void @llvm.lifetime.start.p0(i64 8, ptr %DEltX236) #11, !dbg !3624
  call void @llvm.dbg.declare(metadata ptr %DEltX236, metadata !3514, metadata !DIExpression()), !dbg !3625
  %40 = load ptr, ptr %ptr, align 8, !dbg !3626
  %symbol37 = getelementptr inbounds %struct.sortedSymbol_t, ptr %40, i32 0, i32 0, !dbg !3627
  %41 = load i8, ptr %symbol37, align 1, !dbg !3627
  %conv38 = zext i8 %41 to i32, !dbg !3626
  %42 = load i32, ptr %nbBits.addr, align 4, !dbg !3628
  %43 = load i16, ptr %baseSeq.addr, align 2, !dbg !3629
  %44 = load i32, ptr %level.addr, align 4, !dbg !3630
  %call39 = call i64 @HUF_buildDEltX2U64(i32 noundef %conv38, i32 noundef %42, i16 noundef zeroext %43, i32 noundef %44) #10, !dbg !3631
  store i64 %call39, ptr %DEltX236, align 8, !dbg !3625
  %45 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3632
  %add.ptr40 = getelementptr %struct.HUF_DEltX2, ptr %45, i64 0, !dbg !3632
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr40, ptr align 8 %DEltX236, i64 8, i1 false), !dbg !3632
  %46 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3633
  %add.ptr41 = getelementptr %struct.HUF_DEltX2, ptr %46, i64 2, !dbg !3633
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr41, ptr align 8 %DEltX236, i64 8, i1 false), !dbg !3633
  %47 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3634
  %add.ptr42 = getelementptr %struct.HUF_DEltX2, ptr %47, i64 4, !dbg !3634
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr42, ptr align 8 %DEltX236, i64 8, i1 false), !dbg !3634
  %48 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3635
  %add.ptr43 = getelementptr %struct.HUF_DEltX2, ptr %48, i64 6, !dbg !3635
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr43, ptr align 8 %DEltX236, i64 8, i1 false), !dbg !3635
  %49 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3636
  %add.ptr44 = getelementptr %struct.HUF_DEltX2, ptr %49, i64 8, !dbg !3636
  store ptr %add.ptr44, ptr %DTableRank.addr, align 8, !dbg !3636
  call void @llvm.lifetime.end.p0(i64 8, ptr %DEltX236) #11, !dbg !3637
  br label %for.inc45, !dbg !3638

for.inc45:                                        ; preds = %for.body35
  %50 = load ptr, ptr %ptr, align 8, !dbg !3639
  %incdec.ptr46 = getelementptr %struct.sortedSymbol_t, ptr %50, i32 1, !dbg !3639
  store ptr %incdec.ptr46, ptr %ptr, align 8, !dbg !3639
  br label %for.cond32, !dbg !3640, !llvm.loop !3641

for.end47:                                        ; preds = %for.cond32
  br label %sw.epilog, !dbg !3643

sw.default:                                       ; preds = %entry
  %51 = load ptr, ptr %begin.addr, align 8, !dbg !3644
  store ptr %51, ptr %ptr, align 8, !dbg !3645
  br label %for.cond48, !dbg !3646

for.cond48:                                       ; preds = %for.inc68, %sw.default
  %52 = load ptr, ptr %ptr, align 8, !dbg !3647
  %53 = load ptr, ptr %end.addr, align 8, !dbg !3648
  %cmp49 = icmp ne ptr %52, %53, !dbg !3649
  br i1 %cmp49, label %for.body51, label %for.end70, !dbg !3650

for.body51:                                       ; preds = %for.cond48
  call void @llvm.lifetime.start.p0(i64 8, ptr %DEltX252) #11, !dbg !3651
  call void @llvm.dbg.declare(metadata ptr %DEltX252, metadata !3518, metadata !DIExpression()), !dbg !3652
  %54 = load ptr, ptr %ptr, align 8, !dbg !3653
  %symbol53 = getelementptr inbounds %struct.sortedSymbol_t, ptr %54, i32 0, i32 0, !dbg !3654
  %55 = load i8, ptr %symbol53, align 1, !dbg !3654
  %conv54 = zext i8 %55 to i32, !dbg !3653
  %56 = load i32, ptr %nbBits.addr, align 4, !dbg !3655
  %57 = load i16, ptr %baseSeq.addr, align 2, !dbg !3656
  %58 = load i32, ptr %level.addr, align 4, !dbg !3657
  %call55 = call i64 @HUF_buildDEltX2U64(i32 noundef %conv54, i32 noundef %56, i16 noundef zeroext %57, i32 noundef %58) #10, !dbg !3658
  store i64 %call55, ptr %DEltX252, align 8, !dbg !3652
  call void @llvm.lifetime.start.p0(i64 8, ptr %DTableRankEnd) #11, !dbg !3659
  call void @llvm.dbg.declare(metadata ptr %DTableRankEnd, metadata !3522, metadata !DIExpression()), !dbg !3660
  %59 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3661
  %60 = load i32, ptr %length, align 4, !dbg !3662
  %idx.ext = zext i32 %60 to i64, !dbg !3663
  %add.ptr56 = getelementptr %struct.HUF_DEltX2, ptr %59, i64 %idx.ext, !dbg !3663
  store ptr %add.ptr56, ptr %DTableRankEnd, align 8, !dbg !3660
  br label %for.cond57, !dbg !3664

for.cond57:                                       ; preds = %for.inc65, %for.body51
  %61 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3665
  %62 = load ptr, ptr %DTableRankEnd, align 8, !dbg !3668
  %cmp58 = icmp ne ptr %61, %62, !dbg !3669
  br i1 %cmp58, label %for.body60, label %for.end67, !dbg !3670

for.body60:                                       ; preds = %for.cond57
  %63 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3671
  %add.ptr61 = getelementptr %struct.HUF_DEltX2, ptr %63, i64 0, !dbg !3671
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr61, ptr align 8 %DEltX252, i64 8, i1 false), !dbg !3671
  %64 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3673
  %add.ptr62 = getelementptr %struct.HUF_DEltX2, ptr %64, i64 2, !dbg !3673
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr62, ptr align 8 %DEltX252, i64 8, i1 false), !dbg !3673
  %65 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3674
  %add.ptr63 = getelementptr %struct.HUF_DEltX2, ptr %65, i64 4, !dbg !3674
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr63, ptr align 8 %DEltX252, i64 8, i1 false), !dbg !3674
  %66 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3675
  %add.ptr64 = getelementptr %struct.HUF_DEltX2, ptr %66, i64 6, !dbg !3675
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr64, ptr align 8 %DEltX252, i64 8, i1 false), !dbg !3675
  br label %for.inc65, !dbg !3676

for.inc65:                                        ; preds = %for.body60
  %67 = load ptr, ptr %DTableRank.addr, align 8, !dbg !3677
  %add.ptr66 = getelementptr %struct.HUF_DEltX2, ptr %67, i64 8, !dbg !3677
  store ptr %add.ptr66, ptr %DTableRank.addr, align 8, !dbg !3677
  br label %for.cond57, !dbg !3678, !llvm.loop !3679

for.end67:                                        ; preds = %for.cond57
  call void @llvm.lifetime.end.p0(i64 8, ptr %DTableRankEnd) #11, !dbg !3681
  call void @llvm.lifetime.end.p0(i64 8, ptr %DEltX252) #11, !dbg !3681
  br label %for.inc68, !dbg !3682

for.inc68:                                        ; preds = %for.end67
  %68 = load ptr, ptr %ptr, align 8, !dbg !3683
  %incdec.ptr69 = getelementptr %struct.sortedSymbol_t, ptr %68, i32 1, !dbg !3683
  store ptr %incdec.ptr69, ptr %ptr, align 8, !dbg !3683
  br label %for.cond48, !dbg !3684, !llvm.loop !3685

for.end70:                                        ; preds = %for.cond48
  br label %sw.epilog, !dbg !3687

sw.epilog:                                        ; preds = %for.end70, %for.end47, %for.end30, %for.end16, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #11, !dbg !3688
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #11, !dbg !3688
  ret void, !dbg !3688
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_buildDEltX2U64(i32 noundef %symbol, i32 noundef %nbBits, i16 noundef zeroext %baseSeq, i32 noundef %level) #0 align 16 !dbg !3689 {
entry:
  %symbol.addr = alloca i32, align 4
  %nbBits.addr = alloca i32, align 4
  %baseSeq.addr = alloca i16, align 2
  %level.addr = alloca i32, align 4
  %DElt = alloca i32, align 4
  store i32 %symbol, ptr %symbol.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %symbol.addr, metadata !3693, metadata !DIExpression()), !dbg !3698
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !3694, metadata !DIExpression()), !dbg !3699
  store i16 %baseSeq, ptr %baseSeq.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %baseSeq.addr, metadata !3695, metadata !DIExpression()), !dbg !3700
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !3696, metadata !DIExpression()), !dbg !3701
  call void @llvm.lifetime.start.p0(i64 4, ptr %DElt) #11, !dbg !3702
  call void @llvm.dbg.declare(metadata ptr %DElt, metadata !3697, metadata !DIExpression()), !dbg !3703
  %0 = load i32, ptr %symbol.addr, align 4, !dbg !3704
  %1 = load i32, ptr %nbBits.addr, align 4, !dbg !3705
  %2 = load i16, ptr %baseSeq.addr, align 2, !dbg !3706
  %conv = zext i16 %2 to i32, !dbg !3706
  %3 = load i32, ptr %level.addr, align 4, !dbg !3707
  %call = call i32 @HUF_buildDEltX2U32(i32 noundef %0, i32 noundef %1, i32 noundef %conv, i32 noundef %3) #10, !dbg !3708
  store i32 %call, ptr %DElt, align 4, !dbg !3703
  %4 = load i32, ptr %DElt, align 4, !dbg !3709
  %conv1 = zext i32 %4 to i64, !dbg !3710
  %5 = load i32, ptr %DElt, align 4, !dbg !3711
  %conv2 = zext i32 %5 to i64, !dbg !3712
  %shl = shl i64 %conv2, 32, !dbg !3713
  %add = add i64 %conv1, %shl, !dbg !3714
  call void @llvm.lifetime.end.p0(i64 4, ptr %DElt) #11, !dbg !3715
  ret i64 %add, !dbg !3716
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @HUF_buildDEltX2U32(i32 noundef %symbol, i32 noundef %nbBits, i32 noundef %baseSeq, i32 noundef %level) #0 align 16 !dbg !3717 {
entry:
  %retval = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  %nbBits.addr = alloca i32, align 4
  %baseSeq.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %seq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %symbol, ptr %symbol.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %symbol.addr, metadata !3721, metadata !DIExpression()), !dbg !3726
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !3722, metadata !DIExpression()), !dbg !3727
  store i32 %baseSeq, ptr %baseSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %baseSeq.addr, metadata !3723, metadata !DIExpression()), !dbg !3728
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !3724, metadata !DIExpression()), !dbg !3729
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #11, !dbg !3730
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !3725, metadata !DIExpression()), !dbg !3731
  %call = call i32 @MEM_isLittleEndian() #10, !dbg !3732
  %tobool = icmp ne i32 %call, 0, !dbg !3732
  br i1 %tobool, label %if.then, label %if.else, !dbg !3734

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %level.addr, align 4, !dbg !3735
  %cmp = icmp eq i32 %0, 1, !dbg !3737
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3735

cond.true:                                        ; preds = %if.then
  %1 = load i32, ptr %symbol.addr, align 4, !dbg !3738
  br label %cond.end, !dbg !3735

cond.false:                                       ; preds = %if.then
  %2 = load i32, ptr %baseSeq.addr, align 4, !dbg !3739
  %3 = load i32, ptr %symbol.addr, align 4, !dbg !3740
  %shl = shl i32 %3, 8, !dbg !3741
  %add = add i32 %2, %shl, !dbg !3742
  br label %cond.end, !dbg !3735

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %add, %cond.false ], !dbg !3735
  store i32 %cond, ptr %seq, align 4, !dbg !3743
  %4 = load i32, ptr %seq, align 4, !dbg !3744
  %5 = load i32, ptr %nbBits.addr, align 4, !dbg !3745
  %shl1 = shl i32 %5, 16, !dbg !3746
  %add2 = add i32 %4, %shl1, !dbg !3747
  %6 = load i32, ptr %level.addr, align 4, !dbg !3748
  %shl3 = shl i32 %6, 24, !dbg !3749
  %add4 = add i32 %add2, %shl3, !dbg !3750
  store i32 %add4, ptr %retval, align 4, !dbg !3751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3751

if.else:                                          ; preds = %entry
  %7 = load i32, ptr %level.addr, align 4, !dbg !3752
  %cmp5 = icmp eq i32 %7, 1, !dbg !3754
  br i1 %cmp5, label %cond.true6, label %cond.false8, !dbg !3752

cond.true6:                                       ; preds = %if.else
  %8 = load i32, ptr %symbol.addr, align 4, !dbg !3755
  %shl7 = shl i32 %8, 8, !dbg !3756
  br label %cond.end11, !dbg !3752

cond.false8:                                      ; preds = %if.else
  %9 = load i32, ptr %baseSeq.addr, align 4, !dbg !3757
  %shl9 = shl i32 %9, 8, !dbg !3758
  %10 = load i32, ptr %symbol.addr, align 4, !dbg !3759
  %add10 = add i32 %shl9, %10, !dbg !3760
  br label %cond.end11, !dbg !3752

cond.end11:                                       ; preds = %cond.false8, %cond.true6
  %cond12 = phi i32 [ %shl7, %cond.true6 ], [ %add10, %cond.false8 ], !dbg !3752
  store i32 %cond12, ptr %seq, align 4, !dbg !3761
  %11 = load i32, ptr %seq, align 4, !dbg !3762
  %shl13 = shl i32 %11, 16, !dbg !3763
  %12 = load i32, ptr %nbBits.addr, align 4, !dbg !3764
  %shl14 = shl i32 %12, 8, !dbg !3765
  %add15 = add i32 %shl13, %shl14, !dbg !3766
  %13 = load i32, ptr %level.addr, align 4, !dbg !3767
  %add16 = add i32 %add15, %13, !dbg !3768
  store i32 %add16, ptr %retval, align 4, !dbg !3769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3769

cleanup:                                          ; preds = %cond.end11, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #11, !dbg !3770
  %14 = load i32, ptr %retval, align 4, !dbg !3770
  ret i32 %14, !dbg !3770
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @HUF_buildDEltX2(i32 noundef %symbol, i32 noundef %nbBits, i32 noundef %baseSeq, i32 noundef %level) #0 align 16 !dbg !3771 {
entry:
  %retval = alloca %struct.HUF_DEltX2, align 2
  %symbol.addr = alloca i32, align 4
  %nbBits.addr = alloca i32, align 4
  %baseSeq.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 %symbol, ptr %symbol.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %symbol.addr, metadata !3775, metadata !DIExpression()), !dbg !3781
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !3776, metadata !DIExpression()), !dbg !3782
  store i32 %baseSeq, ptr %baseSeq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %baseSeq.addr, metadata !3777, metadata !DIExpression()), !dbg !3783
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !3778, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !3779, metadata !DIExpression()), !dbg !3785
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #11, !dbg !3786
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3780, metadata !DIExpression()), !dbg !3787
  %0 = load i32, ptr %symbol.addr, align 4, !dbg !3788
  %1 = load i32, ptr %nbBits.addr, align 4, !dbg !3789
  %2 = load i32, ptr %baseSeq.addr, align 4, !dbg !3790
  %3 = load i32, ptr %level.addr, align 4, !dbg !3791
  %call = call i32 @HUF_buildDEltX2U32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #10, !dbg !3792
  store i32 %call, ptr %val, align 4, !dbg !3787
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %retval, ptr align 4 %val, i64 4, i1 false), !dbg !3793
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #11, !dbg !3794
  %4 = load i32, ptr %retval, align 2, !dbg !3794
  ret i32 %4, !dbg !3794
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress1X2_usingDTable_internal_bmi2(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #7 align 16 !dbg !3795 {
entry:
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3797, metadata !DIExpression()), !dbg !3802
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !3798, metadata !DIExpression()), !dbg !3802
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !3799, metadata !DIExpression()), !dbg !3802
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !3800, metadata !DIExpression()), !dbg !3802
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !3801, metadata !DIExpression()), !dbg !3802
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !3802
  %1 = load i64, ptr %dstSize.addr, align 8, !dbg !3802
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !3802
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !3802
  %4 = load ptr, ptr %DTable.addr, align 8, !dbg !3802
  %call = call i64 @HUF_decompress1X2_usingDTable_internal_body(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #10, !dbg !3802
  ret i64 %call, !dbg !3802
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress1X2_usingDTable_internal_default(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #0 align 16 !dbg !3803 {
entry:
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3805, metadata !DIExpression()), !dbg !3810
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !3806, metadata !DIExpression()), !dbg !3810
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !3807, metadata !DIExpression()), !dbg !3810
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !3808, metadata !DIExpression()), !dbg !3810
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !3809, metadata !DIExpression()), !dbg !3810
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !3810
  %1 = load i64, ptr %dstSize.addr, align 8, !dbg !3810
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !3810
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !3810
  %4 = load ptr, ptr %DTable.addr, align 8, !dbg !3810
  %call = call i64 @HUF_decompress1X2_usingDTable_internal_body(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #10, !dbg !3810
  ret i64 %call, !dbg !3810
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress1X2_usingDTable_internal_body(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #8 align 16 !dbg !3811 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %bitD = alloca %struct.BIT_DStream_t, align 8
  %_var_err__ = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %dtPtr = alloca ptr, align 8
  %dt = alloca ptr, align 8
  %dtd = alloca %struct.DTableDesc, align 1
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3813, metadata !DIExpression()), !dbg !3828
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !3814, metadata !DIExpression()), !dbg !3829
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !3815, metadata !DIExpression()), !dbg !3830
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !3816, metadata !DIExpression()), !dbg !3831
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !3817, metadata !DIExpression()), !dbg !3832
  call void @llvm.lifetime.start.p0(i64 40, ptr %bitD) #11, !dbg !3833
  call void @llvm.dbg.declare(metadata ptr %bitD, metadata !3818, metadata !DIExpression()), !dbg !3834
  call void @llvm.lifetime.start.p0(i64 8, ptr %_var_err__) #11, !dbg !3835
  call void @llvm.dbg.declare(metadata ptr %_var_err__, metadata !3819, metadata !DIExpression()), !dbg !3835
  %0 = load ptr, ptr %cSrc.addr, align 8, !dbg !3835
  %1 = load i64, ptr %cSrcSize.addr, align 8, !dbg !3835
  %call = call i64 @BIT_initDStream(ptr noundef %bitD, ptr noundef %0, i64 noundef %1) #10, !dbg !3835
  store i64 %call, ptr %_var_err__, align 8, !dbg !3835
  %2 = load i64, ptr %_var_err__, align 8, !dbg !3836
  %call1 = call i32 @ERR_isError(i64 noundef %2) #10, !dbg !3836
  %tobool = icmp ne i32 %call1, 0, !dbg !3836
  br i1 %tobool, label %if.then, label %if.end, !dbg !3835

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %_var_err__, align 8, !dbg !3836
  store i64 %3, ptr %retval, align 8, !dbg !3836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3836

if.end:                                           ; preds = %entry
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3838
  br label %cleanup, !dbg !3838

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %_var_err__) #11, !dbg !3838
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #11, !dbg !3839
  call void @llvm.dbg.declare(metadata ptr %ostart, metadata !3821, metadata !DIExpression()), !dbg !3840
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !3841
  store ptr %4, ptr %ostart, align 8, !dbg !3840
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #11, !dbg !3842
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !3823, metadata !DIExpression()), !dbg !3843
  %5 = load ptr, ptr %ostart, align 8, !dbg !3844
  %6 = load i64, ptr %dstSize.addr, align 8, !dbg !3845
  %add.ptr = getelementptr i8, ptr %5, i64 %6, !dbg !3846
  store ptr %add.ptr, ptr %oend, align 8, !dbg !3843
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtPtr) #11, !dbg !3847
  call void @llvm.dbg.declare(metadata ptr %dtPtr, metadata !3824, metadata !DIExpression()), !dbg !3848
  %7 = load ptr, ptr %DTable.addr, align 8, !dbg !3849
  %add.ptr2 = getelementptr i32, ptr %7, i64 1, !dbg !3850
  store ptr %add.ptr2, ptr %dtPtr, align 8, !dbg !3848
  call void @llvm.lifetime.start.p0(i64 8, ptr %dt) #11, !dbg !3851
  call void @llvm.dbg.declare(metadata ptr %dt, metadata !3825, metadata !DIExpression()), !dbg !3852
  %8 = load ptr, ptr %dtPtr, align 8, !dbg !3853
  store ptr %8, ptr %dt, align 8, !dbg !3852
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !3854
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !3827, metadata !DIExpression()), !dbg !3855
  %9 = load ptr, ptr %DTable.addr, align 8, !dbg !3856
  %call3 = call i32 @HUF_getDTableDesc(ptr noundef %9) #10, !dbg !3857
  store i32 %call3, ptr %dtd, align 1, !dbg !3857
  %10 = load ptr, ptr %ostart, align 8, !dbg !3858
  %11 = load ptr, ptr %oend, align 8, !dbg !3859
  %12 = load ptr, ptr %dt, align 8, !dbg !3860
  %tableLog = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 2, !dbg !3861
  %13 = load i8, ptr %tableLog, align 1, !dbg !3861
  %conv = zext i8 %13 to i32, !dbg !3862
  %call4 = call i64 @HUF_decodeStreamX2(ptr noundef %10, ptr noundef %bitD, ptr noundef %11, ptr noundef %12, i32 noundef %conv) #10, !dbg !3863
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !3864
  call void @llvm.lifetime.end.p0(i64 8, ptr %dt) #11, !dbg !3864
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtPtr) #11, !dbg !3864
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #11, !dbg !3864
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #11, !dbg !3864
  %call5 = call i32 @BIT_endOfDStream(ptr noundef %bitD) #10, !dbg !3865
  %tobool6 = icmp ne i32 %call5, 0, !dbg !3865
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3867

if.then7:                                         ; preds = %cleanup.cont
  store i64 -20, ptr %retval, align 8, !dbg !3868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !3868

if.end8:                                          ; preds = %cleanup.cont
  %14 = load i64, ptr %dstSize.addr, align 8, !dbg !3869
  store i64 %14, ptr %retval, align 8, !dbg !3870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !3870

cleanup9:                                         ; preds = %if.end8, %if.then7, %cleanup
  call void @llvm.lifetime.end.p0(i64 40, ptr %bitD) #11, !dbg !3871
  %15 = load i64, ptr %retval, align 8, !dbg !3871
  ret i64 %15, !dbg !3871
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decodeStreamX2(ptr noundef %p, ptr noundef %bitDPtr, ptr noundef %pEnd, ptr noundef %dt, i32 noundef %dtLog) #8 align 16 !dbg !3872 {
entry:
  %p.addr = alloca ptr, align 8
  %bitDPtr.addr = alloca ptr, align 8
  %pEnd.addr = alloca ptr, align 8
  %dt.addr = alloca ptr, align 8
  %dtLog.addr = alloca i32, align 4
  %pStart = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3876, metadata !DIExpression()), !dbg !3882
  store ptr %bitDPtr, ptr %bitDPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitDPtr.addr, metadata !3877, metadata !DIExpression()), !dbg !3883
  store ptr %pEnd, ptr %pEnd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pEnd.addr, metadata !3878, metadata !DIExpression()), !dbg !3884
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !3879, metadata !DIExpression()), !dbg !3885
  store i32 %dtLog, ptr %dtLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dtLog.addr, metadata !3880, metadata !DIExpression()), !dbg !3886
  call void @llvm.lifetime.start.p0(i64 8, ptr %pStart) #11, !dbg !3887
  call void @llvm.dbg.declare(metadata ptr %pStart, metadata !3881, metadata !DIExpression()), !dbg !3888
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3889
  store ptr %0, ptr %pStart, align 8, !dbg !3888
  %1 = load ptr, ptr %pEnd.addr, align 8, !dbg !3890
  %2 = load ptr, ptr %p.addr, align 8, !dbg !3892
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64, !dbg !3893
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !3893
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3893
  %cmp = icmp uge i64 %sub.ptr.sub, 8, !dbg !3894
  br i1 %cmp, label %if.then, label %if.else57, !dbg !3895

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %dtLog.addr, align 4, !dbg !3896
  %cmp1 = icmp ule i32 %3, 11, !dbg !3899
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !3900

land.lhs.true:                                    ; preds = %if.then
  %call = call i32 @MEM_64bits() #10, !dbg !3901
  %tobool = icmp ne i32 %call, 0, !dbg !3901
  br i1 %tobool, label %if.then2, label %if.else, !dbg !3902

if.then2:                                         ; preds = %land.lhs.true
  br label %while.cond, !dbg !3903

while.cond:                                       ; preds = %while.body, %if.then2
  %4 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3905
  %call3 = call i32 @BIT_reloadDStream(ptr noundef %4) #10, !dbg !3906
  %cmp4 = icmp eq i32 %call3, 0, !dbg !3907
  %conv = zext i1 %cmp4 to i32, !dbg !3907
  %5 = load ptr, ptr %p.addr, align 8, !dbg !3908
  %6 = load ptr, ptr %pEnd.addr, align 8, !dbg !3909
  %add.ptr = getelementptr i8, ptr %6, i64 -9, !dbg !3910
  %cmp5 = icmp ult ptr %5, %add.ptr, !dbg !3911
  %conv6 = zext i1 %cmp5 to i32, !dbg !3911
  %and = and i32 %conv, %conv6, !dbg !3912
  %tobool7 = icmp ne i32 %and, 0, !dbg !3903
  br i1 %tobool7, label %while.body, label %while.end, !dbg !3903

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %p.addr, align 8, !dbg !3913
  %8 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3913
  %9 = load ptr, ptr %dt.addr, align 8, !dbg !3913
  %10 = load i32, ptr %dtLog.addr, align 4, !dbg !3913
  %call8 = call i32 @HUF_decodeSymbolX2(ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) #10, !dbg !3913
  %11 = load ptr, ptr %p.addr, align 8, !dbg !3913
  %idx.ext = zext i32 %call8 to i64, !dbg !3913
  %add.ptr9 = getelementptr i8, ptr %11, i64 %idx.ext, !dbg !3913
  store ptr %add.ptr9, ptr %p.addr, align 8, !dbg !3913
  %12 = load ptr, ptr %p.addr, align 8, !dbg !3915
  %13 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3915
  %14 = load ptr, ptr %dt.addr, align 8, !dbg !3915
  %15 = load i32, ptr %dtLog.addr, align 4, !dbg !3915
  %call10 = call i32 @HUF_decodeSymbolX2(ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15) #10, !dbg !3915
  %16 = load ptr, ptr %p.addr, align 8, !dbg !3915
  %idx.ext11 = zext i32 %call10 to i64, !dbg !3915
  %add.ptr12 = getelementptr i8, ptr %16, i64 %idx.ext11, !dbg !3915
  store ptr %add.ptr12, ptr %p.addr, align 8, !dbg !3915
  %17 = load ptr, ptr %p.addr, align 8, !dbg !3916
  %18 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3916
  %19 = load ptr, ptr %dt.addr, align 8, !dbg !3916
  %20 = load i32, ptr %dtLog.addr, align 4, !dbg !3916
  %call13 = call i32 @HUF_decodeSymbolX2(ptr noundef %17, ptr noundef %18, ptr noundef %19, i32 noundef %20) #10, !dbg !3916
  %21 = load ptr, ptr %p.addr, align 8, !dbg !3916
  %idx.ext14 = zext i32 %call13 to i64, !dbg !3916
  %add.ptr15 = getelementptr i8, ptr %21, i64 %idx.ext14, !dbg !3916
  store ptr %add.ptr15, ptr %p.addr, align 8, !dbg !3916
  %22 = load ptr, ptr %p.addr, align 8, !dbg !3917
  %23 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3917
  %24 = load ptr, ptr %dt.addr, align 8, !dbg !3917
  %25 = load i32, ptr %dtLog.addr, align 4, !dbg !3917
  %call16 = call i32 @HUF_decodeSymbolX2(ptr noundef %22, ptr noundef %23, ptr noundef %24, i32 noundef %25) #10, !dbg !3917
  %26 = load ptr, ptr %p.addr, align 8, !dbg !3917
  %idx.ext17 = zext i32 %call16 to i64, !dbg !3917
  %add.ptr18 = getelementptr i8, ptr %26, i64 %idx.ext17, !dbg !3917
  store ptr %add.ptr18, ptr %p.addr, align 8, !dbg !3917
  %27 = load ptr, ptr %p.addr, align 8, !dbg !3918
  %28 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3918
  %29 = load ptr, ptr %dt.addr, align 8, !dbg !3918
  %30 = load i32, ptr %dtLog.addr, align 4, !dbg !3918
  %call19 = call i32 @HUF_decodeSymbolX2(ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %30) #10, !dbg !3918
  %31 = load ptr, ptr %p.addr, align 8, !dbg !3918
  %idx.ext20 = zext i32 %call19 to i64, !dbg !3918
  %add.ptr21 = getelementptr i8, ptr %31, i64 %idx.ext20, !dbg !3918
  store ptr %add.ptr21, ptr %p.addr, align 8, !dbg !3918
  br label %while.cond, !dbg !3903, !llvm.loop !3919

while.end:                                        ; preds = %while.cond
  br label %if.end56, !dbg !3921

if.else:                                          ; preds = %land.lhs.true, %if.then
  br label %while.cond22, !dbg !3922

while.cond22:                                     ; preds = %if.end51, %if.else
  %32 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3924
  %call23 = call i32 @BIT_reloadDStream(ptr noundef %32) #10, !dbg !3925
  %cmp24 = icmp eq i32 %call23, 0, !dbg !3926
  %conv25 = zext i1 %cmp24 to i32, !dbg !3926
  %33 = load ptr, ptr %p.addr, align 8, !dbg !3927
  %34 = load ptr, ptr %pEnd.addr, align 8, !dbg !3928
  %add.ptr26 = getelementptr i8, ptr %34, i64 -7, !dbg !3929
  %cmp27 = icmp ult ptr %33, %add.ptr26, !dbg !3930
  %conv28 = zext i1 %cmp27 to i32, !dbg !3930
  %and29 = and i32 %conv25, %conv28, !dbg !3931
  %tobool30 = icmp ne i32 %and29, 0, !dbg !3922
  br i1 %tobool30, label %while.body31, label %while.end55, !dbg !3922

while.body31:                                     ; preds = %while.cond22
  %call32 = call i32 @MEM_64bits() #10, !dbg !3932
  %tobool33 = icmp ne i32 %call32, 0, !dbg !3932
  br i1 %tobool33, label %if.then34, label %if.end, !dbg !3935

if.then34:                                        ; preds = %while.body31
  %35 = load ptr, ptr %p.addr, align 8, !dbg !3932
  %36 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3932
  %37 = load ptr, ptr %dt.addr, align 8, !dbg !3932
  %38 = load i32, ptr %dtLog.addr, align 4, !dbg !3932
  %call35 = call i32 @HUF_decodeSymbolX2(ptr noundef %35, ptr noundef %36, ptr noundef %37, i32 noundef %38) #10, !dbg !3932
  %39 = load ptr, ptr %p.addr, align 8, !dbg !3932
  %idx.ext36 = zext i32 %call35 to i64, !dbg !3932
  %add.ptr37 = getelementptr i8, ptr %39, i64 %idx.ext36, !dbg !3932
  store ptr %add.ptr37, ptr %p.addr, align 8, !dbg !3932
  br label %if.end, !dbg !3932

if.end:                                           ; preds = %if.then34, %while.body31
  %call38 = call i32 @MEM_64bits() #10, !dbg !3936
  %tobool39 = icmp ne i32 %call38, 0, !dbg !3936
  br i1 %tobool39, label %if.then40, label %lor.lhs.false, !dbg !3936

lor.lhs.false:                                    ; preds = %if.end
  br i1 true, label %if.then40, label %if.end44, !dbg !3938

if.then40:                                        ; preds = %lor.lhs.false, %if.end
  %40 = load ptr, ptr %p.addr, align 8, !dbg !3936
  %41 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3936
  %42 = load ptr, ptr %dt.addr, align 8, !dbg !3936
  %43 = load i32, ptr %dtLog.addr, align 4, !dbg !3936
  %call41 = call i32 @HUF_decodeSymbolX2(ptr noundef %40, ptr noundef %41, ptr noundef %42, i32 noundef %43) #10, !dbg !3936
  %44 = load ptr, ptr %p.addr, align 8, !dbg !3936
  %idx.ext42 = zext i32 %call41 to i64, !dbg !3936
  %add.ptr43 = getelementptr i8, ptr %44, i64 %idx.ext42, !dbg !3936
  store ptr %add.ptr43, ptr %p.addr, align 8, !dbg !3936
  br label %if.end44, !dbg !3936

if.end44:                                         ; preds = %if.then40, %lor.lhs.false
  %call45 = call i32 @MEM_64bits() #10, !dbg !3939
  %tobool46 = icmp ne i32 %call45, 0, !dbg !3939
  br i1 %tobool46, label %if.then47, label %if.end51, !dbg !3941

if.then47:                                        ; preds = %if.end44
  %45 = load ptr, ptr %p.addr, align 8, !dbg !3939
  %46 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3939
  %47 = load ptr, ptr %dt.addr, align 8, !dbg !3939
  %48 = load i32, ptr %dtLog.addr, align 4, !dbg !3939
  %call48 = call i32 @HUF_decodeSymbolX2(ptr noundef %45, ptr noundef %46, ptr noundef %47, i32 noundef %48) #10, !dbg !3939
  %49 = load ptr, ptr %p.addr, align 8, !dbg !3939
  %idx.ext49 = zext i32 %call48 to i64, !dbg !3939
  %add.ptr50 = getelementptr i8, ptr %49, i64 %idx.ext49, !dbg !3939
  store ptr %add.ptr50, ptr %p.addr, align 8, !dbg !3939
  br label %if.end51, !dbg !3939

if.end51:                                         ; preds = %if.then47, %if.end44
  %50 = load ptr, ptr %p.addr, align 8, !dbg !3942
  %51 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3942
  %52 = load ptr, ptr %dt.addr, align 8, !dbg !3942
  %53 = load i32, ptr %dtLog.addr, align 4, !dbg !3942
  %call52 = call i32 @HUF_decodeSymbolX2(ptr noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef %53) #10, !dbg !3942
  %54 = load ptr, ptr %p.addr, align 8, !dbg !3942
  %idx.ext53 = zext i32 %call52 to i64, !dbg !3942
  %add.ptr54 = getelementptr i8, ptr %54, i64 %idx.ext53, !dbg !3942
  store ptr %add.ptr54, ptr %p.addr, align 8, !dbg !3942
  br label %while.cond22, !dbg !3922, !llvm.loop !3943

while.end55:                                      ; preds = %while.cond22
  br label %if.end56

if.end56:                                         ; preds = %while.end55, %while.end
  br label %if.end59, !dbg !3945

if.else57:                                        ; preds = %entry
  %55 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3946
  %call58 = call i32 @BIT_reloadDStream(ptr noundef %55) #10, !dbg !3948
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.end56
  %56 = load ptr, ptr %pEnd.addr, align 8, !dbg !3949
  %57 = load ptr, ptr %p.addr, align 8, !dbg !3951
  %sub.ptr.lhs.cast60 = ptrtoint ptr %56 to i64, !dbg !3952
  %sub.ptr.rhs.cast61 = ptrtoint ptr %57 to i64, !dbg !3952
  %sub.ptr.sub62 = sub i64 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61, !dbg !3952
  %cmp63 = icmp uge i64 %sub.ptr.sub62, 2, !dbg !3953
  br i1 %cmp63, label %if.then65, label %if.end89, !dbg !3954

if.then65:                                        ; preds = %if.end59
  br label %while.cond66, !dbg !3955

while.cond66:                                     ; preds = %while.body75, %if.then65
  %58 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3957
  %call67 = call i32 @BIT_reloadDStream(ptr noundef %58) #10, !dbg !3958
  %cmp68 = icmp eq i32 %call67, 0, !dbg !3959
  %conv69 = zext i1 %cmp68 to i32, !dbg !3959
  %59 = load ptr, ptr %p.addr, align 8, !dbg !3960
  %60 = load ptr, ptr %pEnd.addr, align 8, !dbg !3961
  %add.ptr70 = getelementptr i8, ptr %60, i64 -2, !dbg !3962
  %cmp71 = icmp ule ptr %59, %add.ptr70, !dbg !3963
  %conv72 = zext i1 %cmp71 to i32, !dbg !3963
  %and73 = and i32 %conv69, %conv72, !dbg !3964
  %tobool74 = icmp ne i32 %and73, 0, !dbg !3955
  br i1 %tobool74, label %while.body75, label %while.end79, !dbg !3955

while.body75:                                     ; preds = %while.cond66
  %61 = load ptr, ptr %p.addr, align 8, !dbg !3965
  %62 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3965
  %63 = load ptr, ptr %dt.addr, align 8, !dbg !3965
  %64 = load i32, ptr %dtLog.addr, align 4, !dbg !3965
  %call76 = call i32 @HUF_decodeSymbolX2(ptr noundef %61, ptr noundef %62, ptr noundef %63, i32 noundef %64) #10, !dbg !3965
  %65 = load ptr, ptr %p.addr, align 8, !dbg !3965
  %idx.ext77 = zext i32 %call76 to i64, !dbg !3965
  %add.ptr78 = getelementptr i8, ptr %65, i64 %idx.ext77, !dbg !3965
  store ptr %add.ptr78, ptr %p.addr, align 8, !dbg !3965
  br label %while.cond66, !dbg !3955, !llvm.loop !3966

while.end79:                                      ; preds = %while.cond66
  br label %while.cond80, !dbg !3967

while.cond80:                                     ; preds = %while.body84, %while.end79
  %66 = load ptr, ptr %p.addr, align 8, !dbg !3968
  %67 = load ptr, ptr %pEnd.addr, align 8, !dbg !3969
  %add.ptr81 = getelementptr i8, ptr %67, i64 -2, !dbg !3970
  %cmp82 = icmp ule ptr %66, %add.ptr81, !dbg !3971
  br i1 %cmp82, label %while.body84, label %while.end88, !dbg !3967

while.body84:                                     ; preds = %while.cond80
  %68 = load ptr, ptr %p.addr, align 8, !dbg !3972
  %69 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3972
  %70 = load ptr, ptr %dt.addr, align 8, !dbg !3972
  %71 = load i32, ptr %dtLog.addr, align 4, !dbg !3972
  %call85 = call i32 @HUF_decodeSymbolX2(ptr noundef %68, ptr noundef %69, ptr noundef %70, i32 noundef %71) #10, !dbg !3972
  %72 = load ptr, ptr %p.addr, align 8, !dbg !3972
  %idx.ext86 = zext i32 %call85 to i64, !dbg !3972
  %add.ptr87 = getelementptr i8, ptr %72, i64 %idx.ext86, !dbg !3972
  store ptr %add.ptr87, ptr %p.addr, align 8, !dbg !3972
  br label %while.cond80, !dbg !3967, !llvm.loop !3973

while.end88:                                      ; preds = %while.cond80
  br label %if.end89, !dbg !3974

if.end89:                                         ; preds = %while.end88, %if.end59
  %73 = load ptr, ptr %p.addr, align 8, !dbg !3975
  %74 = load ptr, ptr %pEnd.addr, align 8, !dbg !3977
  %cmp90 = icmp ult ptr %73, %74, !dbg !3978
  br i1 %cmp90, label %if.then92, label %if.end96, !dbg !3979

if.then92:                                        ; preds = %if.end89
  %75 = load ptr, ptr %p.addr, align 8, !dbg !3980
  %76 = load ptr, ptr %bitDPtr.addr, align 8, !dbg !3981
  %77 = load ptr, ptr %dt.addr, align 8, !dbg !3982
  %78 = load i32, ptr %dtLog.addr, align 4, !dbg !3983
  %call93 = call i32 @HUF_decodeLastSymbolX2(ptr noundef %75, ptr noundef %76, ptr noundef %77, i32 noundef %78) #10, !dbg !3984
  %79 = load ptr, ptr %p.addr, align 8, !dbg !3985
  %idx.ext94 = zext i32 %call93 to i64, !dbg !3985
  %add.ptr95 = getelementptr i8, ptr %79, i64 %idx.ext94, !dbg !3985
  store ptr %add.ptr95, ptr %p.addr, align 8, !dbg !3985
  br label %if.end96, !dbg !3986

if.end96:                                         ; preds = %if.then92, %if.end89
  %80 = load ptr, ptr %p.addr, align 8, !dbg !3987
  %81 = load ptr, ptr %pStart, align 8, !dbg !3988
  %sub.ptr.lhs.cast97 = ptrtoint ptr %80 to i64, !dbg !3989
  %sub.ptr.rhs.cast98 = ptrtoint ptr %81 to i64, !dbg !3989
  %sub.ptr.sub99 = sub i64 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast98, !dbg !3989
  call void @llvm.lifetime.end.p0(i64 8, ptr %pStart) #11, !dbg !3990
  ret i64 %sub.ptr.sub99, !dbg !3991
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @HUF_decodeSymbolX2(ptr noundef %op, ptr noundef %DStream, ptr noundef %dt, i32 noundef %dtLog) #8 align 16 !dbg !3992 {
entry:
  %op.addr = alloca ptr, align 8
  %DStream.addr = alloca ptr, align 8
  %dt.addr = alloca ptr, align 8
  %dtLog.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !3996, metadata !DIExpression()), !dbg !4001
  store ptr %DStream, ptr %DStream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DStream.addr, metadata !3997, metadata !DIExpression()), !dbg !4002
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !3998, metadata !DIExpression()), !dbg !4003
  store i32 %dtLog, ptr %dtLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dtLog.addr, metadata !3999, metadata !DIExpression()), !dbg !4004
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !4005
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4000, metadata !DIExpression()), !dbg !4006
  %0 = load ptr, ptr %DStream.addr, align 8, !dbg !4007
  %1 = load i32, ptr %dtLog.addr, align 4, !dbg !4008
  %call = call i64 @BIT_lookBitsFast(ptr noundef %0, i32 noundef %1) #10, !dbg !4009
  store i64 %call, ptr %val, align 8, !dbg !4006
  %2 = load ptr, ptr %op.addr, align 8, !dbg !4010
  %3 = load ptr, ptr %dt.addr, align 8, !dbg !4010
  %4 = load i64, ptr %val, align 8, !dbg !4010
  %arrayidx = getelementptr %struct.HUF_DEltX2, ptr %3, i64 %4, !dbg !4010
  %sequence = getelementptr inbounds %struct.HUF_DEltX2, ptr %arrayidx, i32 0, i32 0, !dbg !4010
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 2 %sequence, i64 2, i1 false), !dbg !4010
  %5 = load ptr, ptr %DStream.addr, align 8, !dbg !4011
  %6 = load ptr, ptr %dt.addr, align 8, !dbg !4012
  %7 = load i64, ptr %val, align 8, !dbg !4013
  %arrayidx1 = getelementptr %struct.HUF_DEltX2, ptr %6, i64 %7, !dbg !4012
  %nbBits = getelementptr inbounds %struct.HUF_DEltX2, ptr %arrayidx1, i32 0, i32 1, !dbg !4014
  %8 = load i8, ptr %nbBits, align 2, !dbg !4014
  %conv = zext i8 %8 to i32, !dbg !4012
  call void @BIT_skipBits(ptr noundef %5, i32 noundef %conv) #10, !dbg !4015
  %9 = load ptr, ptr %dt.addr, align 8, !dbg !4016
  %10 = load i64, ptr %val, align 8, !dbg !4017
  %arrayidx2 = getelementptr %struct.HUF_DEltX2, ptr %9, i64 %10, !dbg !4016
  %length = getelementptr inbounds %struct.HUF_DEltX2, ptr %arrayidx2, i32 0, i32 2, !dbg !4018
  %11 = load i8, ptr %length, align 1, !dbg !4018
  %conv3 = zext i8 %11 to i32, !dbg !4016
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !4019
  ret i32 %conv3, !dbg !4020
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @HUF_decodeLastSymbolX2(ptr noundef %op, ptr noundef %DStream, ptr noundef %dt, i32 noundef %dtLog) #8 align 16 !dbg !4021 {
entry:
  %op.addr = alloca ptr, align 8
  %DStream.addr = alloca ptr, align 8
  %dt.addr = alloca ptr, align 8
  %dtLog.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4023, metadata !DIExpression()), !dbg !4028
  store ptr %DStream, ptr %DStream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DStream.addr, metadata !4024, metadata !DIExpression()), !dbg !4029
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !4025, metadata !DIExpression()), !dbg !4030
  store i32 %dtLog, ptr %dtLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dtLog.addr, metadata !4026, metadata !DIExpression()), !dbg !4031
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !4032
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4027, metadata !DIExpression()), !dbg !4033
  %0 = load ptr, ptr %DStream.addr, align 8, !dbg !4034
  %1 = load i32, ptr %dtLog.addr, align 4, !dbg !4035
  %call = call i64 @BIT_lookBitsFast(ptr noundef %0, i32 noundef %1) #10, !dbg !4036
  store i64 %call, ptr %val, align 8, !dbg !4033
  %2 = load ptr, ptr %op.addr, align 8, !dbg !4037
  %3 = load ptr, ptr %dt.addr, align 8, !dbg !4037
  %4 = load i64, ptr %val, align 8, !dbg !4037
  %arrayidx = getelementptr %struct.HUF_DEltX2, ptr %3, i64 %4, !dbg !4037
  %sequence = getelementptr inbounds %struct.HUF_DEltX2, ptr %arrayidx, i32 0, i32 0, !dbg !4037
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 2 %sequence, i64 1, i1 false), !dbg !4037
  %5 = load ptr, ptr %dt.addr, align 8, !dbg !4038
  %6 = load i64, ptr %val, align 8, !dbg !4040
  %arrayidx1 = getelementptr %struct.HUF_DEltX2, ptr %5, i64 %6, !dbg !4038
  %length = getelementptr inbounds %struct.HUF_DEltX2, ptr %arrayidx1, i32 0, i32 2, !dbg !4041
  %7 = load i8, ptr %length, align 1, !dbg !4041
  %conv = zext i8 %7 to i32, !dbg !4038
  %cmp = icmp eq i32 %conv, 1, !dbg !4042
  br i1 %cmp, label %if.then, label %if.else, !dbg !4043

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %DStream.addr, align 8, !dbg !4044
  %9 = load ptr, ptr %dt.addr, align 8, !dbg !4046
  %10 = load i64, ptr %val, align 8, !dbg !4047
  %arrayidx3 = getelementptr %struct.HUF_DEltX2, ptr %9, i64 %10, !dbg !4046
  %nbBits = getelementptr inbounds %struct.HUF_DEltX2, ptr %arrayidx3, i32 0, i32 1, !dbg !4048
  %11 = load i8, ptr %nbBits, align 2, !dbg !4048
  %conv4 = zext i8 %11 to i32, !dbg !4046
  call void @BIT_skipBits(ptr noundef %8, i32 noundef %conv4) #10, !dbg !4049
  br label %if.end19, !dbg !4050

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %DStream.addr, align 8, !dbg !4051
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %12, i32 0, i32 1, !dbg !4054
  %13 = load i32, ptr %bitsConsumed, align 8, !dbg !4054
  %conv5 = zext i32 %13 to i64, !dbg !4051
  %cmp6 = icmp ult i64 %conv5, 64, !dbg !4055
  br i1 %cmp6, label %if.then8, label %if.end18, !dbg !4056

if.then8:                                         ; preds = %if.else
  %14 = load ptr, ptr %DStream.addr, align 8, !dbg !4057
  %15 = load ptr, ptr %dt.addr, align 8, !dbg !4059
  %16 = load i64, ptr %val, align 8, !dbg !4060
  %arrayidx9 = getelementptr %struct.HUF_DEltX2, ptr %15, i64 %16, !dbg !4059
  %nbBits10 = getelementptr inbounds %struct.HUF_DEltX2, ptr %arrayidx9, i32 0, i32 1, !dbg !4061
  %17 = load i8, ptr %nbBits10, align 2, !dbg !4061
  %conv11 = zext i8 %17 to i32, !dbg !4059
  call void @BIT_skipBits(ptr noundef %14, i32 noundef %conv11) #10, !dbg !4062
  %18 = load ptr, ptr %DStream.addr, align 8, !dbg !4063
  %bitsConsumed12 = getelementptr inbounds %struct.BIT_DStream_t, ptr %18, i32 0, i32 1, !dbg !4065
  %19 = load i32, ptr %bitsConsumed12, align 8, !dbg !4065
  %conv13 = zext i32 %19 to i64, !dbg !4063
  %cmp14 = icmp ugt i64 %conv13, 64, !dbg !4066
  br i1 %cmp14, label %if.then16, label %if.end, !dbg !4067

if.then16:                                        ; preds = %if.then8
  %20 = load ptr, ptr %DStream.addr, align 8, !dbg !4068
  %bitsConsumed17 = getelementptr inbounds %struct.BIT_DStream_t, ptr %20, i32 0, i32 1, !dbg !4069
  store i32 64, ptr %bitsConsumed17, align 8, !dbg !4070
  br label %if.end, !dbg !4068

if.end:                                           ; preds = %if.then16, %if.then8
  br label %if.end18, !dbg !4071

if.end18:                                         ; preds = %if.end, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !4072
  ret i32 1, !dbg !4073
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress4X2_usingDTable_internal_bmi2(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #7 align 16 !dbg !4074 {
entry:
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4076, metadata !DIExpression()), !dbg !4081
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !4077, metadata !DIExpression()), !dbg !4082
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !4078, metadata !DIExpression()), !dbg !4083
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !4079, metadata !DIExpression()), !dbg !4084
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !4080, metadata !DIExpression()), !dbg !4085
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !4086
  %1 = load i64, ptr %dstSize.addr, align 8, !dbg !4087
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !4088
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !4089
  %4 = load ptr, ptr %DTable.addr, align 8, !dbg !4090
  %call = call i64 @HUF_decompress4X2_usingDTable_internal_body(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #10, !dbg !4091
  ret i64 %call, !dbg !4092
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress4X2_usingDTable_internal_default(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #0 align 16 !dbg !4093 {
entry:
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4095, metadata !DIExpression()), !dbg !4100
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !4096, metadata !DIExpression()), !dbg !4101
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !4097, metadata !DIExpression()), !dbg !4102
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !4098, metadata !DIExpression()), !dbg !4103
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !4099, metadata !DIExpression()), !dbg !4104
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !4105
  %1 = load i64, ptr %dstSize.addr, align 8, !dbg !4106
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !4107
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !4108
  %4 = load ptr, ptr %DTable.addr, align 8, !dbg !4109
  %call = call i64 @HUF_decompress4X2_usingDTable_internal_body(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #10, !dbg !4110
  ret i64 %call, !dbg !4111
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_decompress4X2_usingDTable_internal_body(ptr noundef %dst, i64 noundef %dstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %DTable) #8 align 16 !dbg !4112 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %DTable.addr = alloca ptr, align 8
  %istart = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %olimit = alloca ptr, align 8
  %dtPtr = alloca ptr, align 8
  %dt = alloca ptr, align 8
  %bitD1 = alloca %struct.BIT_DStream_t, align 8
  %bitD2 = alloca %struct.BIT_DStream_t, align 8
  %bitD3 = alloca %struct.BIT_DStream_t, align 8
  %bitD4 = alloca %struct.BIT_DStream_t, align 8
  %length1 = alloca i64, align 8
  %length2 = alloca i64, align 8
  %length3 = alloca i64, align 8
  %length4 = alloca i64, align 8
  %istart1 = alloca ptr, align 8
  %istart2 = alloca ptr, align 8
  %istart3 = alloca ptr, align 8
  %istart4 = alloca ptr, align 8
  %segmentSize = alloca i64, align 8
  %opStart2 = alloca ptr, align 8
  %opStart3 = alloca ptr, align 8
  %opStart4 = alloca ptr, align 8
  %op1 = alloca ptr, align 8
  %op2 = alloca ptr, align 8
  %op3 = alloca ptr, align 8
  %op4 = alloca ptr, align 8
  %endSignal = alloca i32, align 4
  %dtd = alloca %struct.DTableDesc, align 1
  %dtLog = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_var_err__ = alloca i64, align 8
  %_var_err__33 = alloca i64, align 8
  %_var_err__42 = alloca i64, align 8
  %_var_err__51 = alloca i64, align 8
  %endCheck = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4114, metadata !DIExpression()), !dbg !4159
  store i64 %dstSize, ptr %dstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstSize.addr, metadata !4115, metadata !DIExpression()), !dbg !4160
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !4116, metadata !DIExpression()), !dbg !4161
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !4117, metadata !DIExpression()), !dbg !4162
  store ptr %DTable, ptr %DTable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DTable.addr, metadata !4118, metadata !DIExpression()), !dbg !4163
  %0 = load i64, ptr %cSrcSize.addr, align 8, !dbg !4164
  %cmp = icmp ult i64 %0, 10, !dbg !4166
  br i1 %cmp, label %if.then, label %if.end, !dbg !4167

if.then:                                          ; preds = %entry
  store i64 -20, ptr %retval, align 8, !dbg !4168
  br label %return, !dbg !4168

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart) #11, !dbg !4169
  call void @llvm.dbg.declare(metadata ptr %istart, metadata !4119, metadata !DIExpression()), !dbg !4170
  %1 = load ptr, ptr %cSrc.addr, align 8, !dbg !4171
  store ptr %1, ptr %istart, align 8, !dbg !4170
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #11, !dbg !4172
  call void @llvm.dbg.declare(metadata ptr %ostart, metadata !4121, metadata !DIExpression()), !dbg !4173
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !4174
  store ptr %2, ptr %ostart, align 8, !dbg !4173
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #11, !dbg !4175
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !4122, metadata !DIExpression()), !dbg !4176
  %3 = load ptr, ptr %ostart, align 8, !dbg !4177
  %4 = load i64, ptr %dstSize.addr, align 8, !dbg !4178
  %add.ptr = getelementptr i8, ptr %3, i64 %4, !dbg !4179
  store ptr %add.ptr, ptr %oend, align 8, !dbg !4176
  call void @llvm.lifetime.start.p0(i64 8, ptr %olimit) #11, !dbg !4180
  call void @llvm.dbg.declare(metadata ptr %olimit, metadata !4123, metadata !DIExpression()), !dbg !4181
  %5 = load ptr, ptr %oend, align 8, !dbg !4182
  %add.ptr1 = getelementptr i8, ptr %5, i64 -7, !dbg !4183
  store ptr %add.ptr1, ptr %olimit, align 8, !dbg !4181
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtPtr) #11, !dbg !4184
  call void @llvm.dbg.declare(metadata ptr %dtPtr, metadata !4124, metadata !DIExpression()), !dbg !4185
  %6 = load ptr, ptr %DTable.addr, align 8, !dbg !4186
  %add.ptr2 = getelementptr i32, ptr %6, i64 1, !dbg !4187
  store ptr %add.ptr2, ptr %dtPtr, align 8, !dbg !4185
  call void @llvm.lifetime.start.p0(i64 8, ptr %dt) #11, !dbg !4188
  call void @llvm.dbg.declare(metadata ptr %dt, metadata !4125, metadata !DIExpression()), !dbg !4189
  %7 = load ptr, ptr %dtPtr, align 8, !dbg !4190
  store ptr %7, ptr %dt, align 8, !dbg !4189
  call void @llvm.lifetime.start.p0(i64 40, ptr %bitD1) #11, !dbg !4191
  call void @llvm.dbg.declare(metadata ptr %bitD1, metadata !4126, metadata !DIExpression()), !dbg !4192
  call void @llvm.lifetime.start.p0(i64 40, ptr %bitD2) #11, !dbg !4193
  call void @llvm.dbg.declare(metadata ptr %bitD2, metadata !4127, metadata !DIExpression()), !dbg !4194
  call void @llvm.lifetime.start.p0(i64 40, ptr %bitD3) #11, !dbg !4195
  call void @llvm.dbg.declare(metadata ptr %bitD3, metadata !4128, metadata !DIExpression()), !dbg !4196
  call void @llvm.lifetime.start.p0(i64 40, ptr %bitD4) #11, !dbg !4197
  call void @llvm.dbg.declare(metadata ptr %bitD4, metadata !4129, metadata !DIExpression()), !dbg !4198
  call void @llvm.lifetime.start.p0(i64 8, ptr %length1) #11, !dbg !4199
  call void @llvm.dbg.declare(metadata ptr %length1, metadata !4130, metadata !DIExpression()), !dbg !4200
  %8 = load ptr, ptr %istart, align 8, !dbg !4201
  %call = call zeroext i16 @MEM_readLE16(ptr noundef %8) #10, !dbg !4202
  %conv = zext i16 %call to i64, !dbg !4202
  store i64 %conv, ptr %length1, align 8, !dbg !4200
  call void @llvm.lifetime.start.p0(i64 8, ptr %length2) #11, !dbg !4203
  call void @llvm.dbg.declare(metadata ptr %length2, metadata !4131, metadata !DIExpression()), !dbg !4204
  %9 = load ptr, ptr %istart, align 8, !dbg !4205
  %add.ptr3 = getelementptr i8, ptr %9, i64 2, !dbg !4206
  %call4 = call zeroext i16 @MEM_readLE16(ptr noundef %add.ptr3) #10, !dbg !4207
  %conv5 = zext i16 %call4 to i64, !dbg !4207
  store i64 %conv5, ptr %length2, align 8, !dbg !4204
  call void @llvm.lifetime.start.p0(i64 8, ptr %length3) #11, !dbg !4208
  call void @llvm.dbg.declare(metadata ptr %length3, metadata !4132, metadata !DIExpression()), !dbg !4209
  %10 = load ptr, ptr %istart, align 8, !dbg !4210
  %add.ptr6 = getelementptr i8, ptr %10, i64 4, !dbg !4211
  %call7 = call zeroext i16 @MEM_readLE16(ptr noundef %add.ptr6) #10, !dbg !4212
  %conv8 = zext i16 %call7 to i64, !dbg !4212
  store i64 %conv8, ptr %length3, align 8, !dbg !4209
  call void @llvm.lifetime.start.p0(i64 8, ptr %length4) #11, !dbg !4213
  call void @llvm.dbg.declare(metadata ptr %length4, metadata !4133, metadata !DIExpression()), !dbg !4214
  %11 = load i64, ptr %cSrcSize.addr, align 8, !dbg !4215
  %12 = load i64, ptr %length1, align 8, !dbg !4216
  %13 = load i64, ptr %length2, align 8, !dbg !4217
  %add = add i64 %12, %13, !dbg !4218
  %14 = load i64, ptr %length3, align 8, !dbg !4219
  %add9 = add i64 %add, %14, !dbg !4220
  %add10 = add i64 %add9, 6, !dbg !4221
  %sub = sub i64 %11, %add10, !dbg !4222
  store i64 %sub, ptr %length4, align 8, !dbg !4214
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart1) #11, !dbg !4223
  call void @llvm.dbg.declare(metadata ptr %istart1, metadata !4134, metadata !DIExpression()), !dbg !4224
  %15 = load ptr, ptr %istart, align 8, !dbg !4225
  %add.ptr11 = getelementptr i8, ptr %15, i64 6, !dbg !4226
  store ptr %add.ptr11, ptr %istart1, align 8, !dbg !4224
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart2) #11, !dbg !4227
  call void @llvm.dbg.declare(metadata ptr %istart2, metadata !4135, metadata !DIExpression()), !dbg !4228
  %16 = load ptr, ptr %istart1, align 8, !dbg !4229
  %17 = load i64, ptr %length1, align 8, !dbg !4230
  %add.ptr12 = getelementptr i8, ptr %16, i64 %17, !dbg !4231
  store ptr %add.ptr12, ptr %istart2, align 8, !dbg !4228
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart3) #11, !dbg !4232
  call void @llvm.dbg.declare(metadata ptr %istart3, metadata !4136, metadata !DIExpression()), !dbg !4233
  %18 = load ptr, ptr %istart2, align 8, !dbg !4234
  %19 = load i64, ptr %length2, align 8, !dbg !4235
  %add.ptr13 = getelementptr i8, ptr %18, i64 %19, !dbg !4236
  store ptr %add.ptr13, ptr %istart3, align 8, !dbg !4233
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart4) #11, !dbg !4237
  call void @llvm.dbg.declare(metadata ptr %istart4, metadata !4137, metadata !DIExpression()), !dbg !4238
  %20 = load ptr, ptr %istart3, align 8, !dbg !4239
  %21 = load i64, ptr %length3, align 8, !dbg !4240
  %add.ptr14 = getelementptr i8, ptr %20, i64 %21, !dbg !4241
  store ptr %add.ptr14, ptr %istart4, align 8, !dbg !4238
  call void @llvm.lifetime.start.p0(i64 8, ptr %segmentSize) #11, !dbg !4242
  call void @llvm.dbg.declare(metadata ptr %segmentSize, metadata !4138, metadata !DIExpression()), !dbg !4243
  %22 = load i64, ptr %dstSize.addr, align 8, !dbg !4244
  %add15 = add i64 %22, 3, !dbg !4245
  %div = udiv i64 %add15, 4, !dbg !4246
  store i64 %div, ptr %segmentSize, align 8, !dbg !4243
  call void @llvm.lifetime.start.p0(i64 8, ptr %opStart2) #11, !dbg !4247
  call void @llvm.dbg.declare(metadata ptr %opStart2, metadata !4139, metadata !DIExpression()), !dbg !4248
  %23 = load ptr, ptr %ostart, align 8, !dbg !4249
  %24 = load i64, ptr %segmentSize, align 8, !dbg !4250
  %add.ptr16 = getelementptr i8, ptr %23, i64 %24, !dbg !4251
  store ptr %add.ptr16, ptr %opStart2, align 8, !dbg !4248
  call void @llvm.lifetime.start.p0(i64 8, ptr %opStart3) #11, !dbg !4252
  call void @llvm.dbg.declare(metadata ptr %opStart3, metadata !4140, metadata !DIExpression()), !dbg !4253
  %25 = load ptr, ptr %opStart2, align 8, !dbg !4254
  %26 = load i64, ptr %segmentSize, align 8, !dbg !4255
  %add.ptr17 = getelementptr i8, ptr %25, i64 %26, !dbg !4256
  store ptr %add.ptr17, ptr %opStart3, align 8, !dbg !4253
  call void @llvm.lifetime.start.p0(i64 8, ptr %opStart4) #11, !dbg !4257
  call void @llvm.dbg.declare(metadata ptr %opStart4, metadata !4141, metadata !DIExpression()), !dbg !4258
  %27 = load ptr, ptr %opStart3, align 8, !dbg !4259
  %28 = load i64, ptr %segmentSize, align 8, !dbg !4260
  %add.ptr18 = getelementptr i8, ptr %27, i64 %28, !dbg !4261
  store ptr %add.ptr18, ptr %opStart4, align 8, !dbg !4258
  call void @llvm.lifetime.start.p0(i64 8, ptr %op1) #11, !dbg !4262
  call void @llvm.dbg.declare(metadata ptr %op1, metadata !4142, metadata !DIExpression()), !dbg !4263
  %29 = load ptr, ptr %ostart, align 8, !dbg !4264
  store ptr %29, ptr %op1, align 8, !dbg !4263
  call void @llvm.lifetime.start.p0(i64 8, ptr %op2) #11, !dbg !4265
  call void @llvm.dbg.declare(metadata ptr %op2, metadata !4143, metadata !DIExpression()), !dbg !4266
  %30 = load ptr, ptr %opStart2, align 8, !dbg !4267
  store ptr %30, ptr %op2, align 8, !dbg !4266
  call void @llvm.lifetime.start.p0(i64 8, ptr %op3) #11, !dbg !4268
  call void @llvm.dbg.declare(metadata ptr %op3, metadata !4144, metadata !DIExpression()), !dbg !4269
  %31 = load ptr, ptr %opStart3, align 8, !dbg !4270
  store ptr %31, ptr %op3, align 8, !dbg !4269
  call void @llvm.lifetime.start.p0(i64 8, ptr %op4) #11, !dbg !4271
  call void @llvm.dbg.declare(metadata ptr %op4, metadata !4145, metadata !DIExpression()), !dbg !4272
  %32 = load ptr, ptr %opStart4, align 8, !dbg !4273
  store ptr %32, ptr %op4, align 8, !dbg !4272
  call void @llvm.lifetime.start.p0(i64 4, ptr %endSignal) #11, !dbg !4274
  call void @llvm.dbg.declare(metadata ptr %endSignal, metadata !4146, metadata !DIExpression()), !dbg !4275
  store i32 1, ptr %endSignal, align 4, !dbg !4275
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtd) #11, !dbg !4276
  call void @llvm.dbg.declare(metadata ptr %dtd, metadata !4147, metadata !DIExpression()), !dbg !4277
  %33 = load ptr, ptr %DTable.addr, align 8, !dbg !4278
  %call19 = call i32 @HUF_getDTableDesc(ptr noundef %33) #10, !dbg !4279
  store i32 %call19, ptr %dtd, align 1, !dbg !4279
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtLog) #11, !dbg !4280
  call void @llvm.dbg.declare(metadata ptr %dtLog, metadata !4148, metadata !DIExpression()), !dbg !4281
  %tableLog = getelementptr inbounds %struct.DTableDesc, ptr %dtd, i32 0, i32 2, !dbg !4282
  %34 = load i8, ptr %tableLog, align 1, !dbg !4282
  %conv20 = zext i8 %34 to i32, !dbg !4283
  store i32 %conv20, ptr %dtLog, align 4, !dbg !4281
  %35 = load i64, ptr %length4, align 8, !dbg !4284
  %36 = load i64, ptr %cSrcSize.addr, align 8, !dbg !4286
  %cmp21 = icmp ugt i64 %35, %36, !dbg !4287
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !4288

if.then23:                                        ; preds = %if.end
  store i64 -20, ptr %retval, align 8, !dbg !4289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup210, !dbg !4289

if.end24:                                         ; preds = %if.end
  %37 = load ptr, ptr %opStart4, align 8, !dbg !4290
  %38 = load ptr, ptr %oend, align 8, !dbg !4292
  %cmp25 = icmp ugt ptr %37, %38, !dbg !4293
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4294

if.then27:                                        ; preds = %if.end24
  store i64 -20, ptr %retval, align 8, !dbg !4295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup210, !dbg !4295

if.end28:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr %_var_err__) #11, !dbg !4296
  call void @llvm.dbg.declare(metadata ptr %_var_err__, metadata !4149, metadata !DIExpression()), !dbg !4296
  %39 = load ptr, ptr %istart1, align 8, !dbg !4296
  %40 = load i64, ptr %length1, align 8, !dbg !4296
  %call29 = call i64 @BIT_initDStream(ptr noundef %bitD1, ptr noundef %39, i64 noundef %40) #10, !dbg !4296
  store i64 %call29, ptr %_var_err__, align 8, !dbg !4296
  %41 = load i64, ptr %_var_err__, align 8, !dbg !4297
  %call30 = call i32 @ERR_isError(i64 noundef %41) #10, !dbg !4297
  %tobool = icmp ne i32 %call30, 0, !dbg !4297
  br i1 %tobool, label %if.then31, label %if.end32, !dbg !4296

if.then31:                                        ; preds = %if.end28
  %42 = load i64, ptr %_var_err__, align 8, !dbg !4297
  store i64 %42, ptr %retval, align 8, !dbg !4297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4297

if.end32:                                         ; preds = %if.end28
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4299
  br label %cleanup, !dbg !4299

cleanup:                                          ; preds = %if.end32, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %_var_err__) #11, !dbg !4299
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup210 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %_var_err__33) #11, !dbg !4300
  call void @llvm.dbg.declare(metadata ptr %_var_err__33, metadata !4151, metadata !DIExpression()), !dbg !4300
  %43 = load ptr, ptr %istart2, align 8, !dbg !4300
  %44 = load i64, ptr %length2, align 8, !dbg !4300
  %call34 = call i64 @BIT_initDStream(ptr noundef %bitD2, ptr noundef %43, i64 noundef %44) #10, !dbg !4300
  store i64 %call34, ptr %_var_err__33, align 8, !dbg !4300
  %45 = load i64, ptr %_var_err__33, align 8, !dbg !4301
  %call35 = call i32 @ERR_isError(i64 noundef %45) #10, !dbg !4301
  %tobool36 = icmp ne i32 %call35, 0, !dbg !4301
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !4300

if.then37:                                        ; preds = %cleanup.cont
  %46 = load i64, ptr %_var_err__33, align 8, !dbg !4301
  store i64 %46, ptr %retval, align 8, !dbg !4301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !4301

if.end38:                                         ; preds = %cleanup.cont
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4303
  br label %cleanup39, !dbg !4303

cleanup39:                                        ; preds = %if.end38, %if.then37
  call void @llvm.lifetime.end.p0(i64 8, ptr %_var_err__33) #11, !dbg !4303
  %cleanup.dest40 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest40, label %cleanup210 [
    i32 0, label %cleanup.cont41
  ]

cleanup.cont41:                                   ; preds = %cleanup39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_var_err__42) #11, !dbg !4304
  call void @llvm.dbg.declare(metadata ptr %_var_err__42, metadata !4153, metadata !DIExpression()), !dbg !4304
  %47 = load ptr, ptr %istart3, align 8, !dbg !4304
  %48 = load i64, ptr %length3, align 8, !dbg !4304
  %call43 = call i64 @BIT_initDStream(ptr noundef %bitD3, ptr noundef %47, i64 noundef %48) #10, !dbg !4304
  store i64 %call43, ptr %_var_err__42, align 8, !dbg !4304
  %49 = load i64, ptr %_var_err__42, align 8, !dbg !4305
  %call44 = call i32 @ERR_isError(i64 noundef %49) #10, !dbg !4305
  %tobool45 = icmp ne i32 %call44, 0, !dbg !4305
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !4304

if.then46:                                        ; preds = %cleanup.cont41
  %50 = load i64, ptr %_var_err__42, align 8, !dbg !4305
  store i64 %50, ptr %retval, align 8, !dbg !4305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !4305

if.end47:                                         ; preds = %cleanup.cont41
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4307
  br label %cleanup48, !dbg !4307

cleanup48:                                        ; preds = %if.end47, %if.then46
  call void @llvm.lifetime.end.p0(i64 8, ptr %_var_err__42) #11, !dbg !4307
  %cleanup.dest49 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest49, label %cleanup210 [
    i32 0, label %cleanup.cont50
  ]

cleanup.cont50:                                   ; preds = %cleanup48
  call void @llvm.lifetime.start.p0(i64 8, ptr %_var_err__51) #11, !dbg !4308
  call void @llvm.dbg.declare(metadata ptr %_var_err__51, metadata !4155, metadata !DIExpression()), !dbg !4308
  %51 = load ptr, ptr %istart4, align 8, !dbg !4308
  %52 = load i64, ptr %length4, align 8, !dbg !4308
  %call52 = call i64 @BIT_initDStream(ptr noundef %bitD4, ptr noundef %51, i64 noundef %52) #10, !dbg !4308
  store i64 %call52, ptr %_var_err__51, align 8, !dbg !4308
  %53 = load i64, ptr %_var_err__51, align 8, !dbg !4309
  %call53 = call i32 @ERR_isError(i64 noundef %53) #10, !dbg !4309
  %tobool54 = icmp ne i32 %call53, 0, !dbg !4309
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !4308

if.then55:                                        ; preds = %cleanup.cont50
  %54 = load i64, ptr %_var_err__51, align 8, !dbg !4309
  store i64 %54, ptr %retval, align 8, !dbg !4309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !4309

if.end56:                                         ; preds = %cleanup.cont50
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4311
  br label %cleanup57, !dbg !4311

cleanup57:                                        ; preds = %if.end56, %if.then55
  call void @llvm.lifetime.end.p0(i64 8, ptr %_var_err__51) #11, !dbg !4311
  %cleanup.dest58 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest58, label %cleanup210 [
    i32 0, label %cleanup.cont59
  ]

cleanup.cont59:                                   ; preds = %cleanup57
  %55 = load ptr, ptr %oend, align 8, !dbg !4312
  %56 = load ptr, ptr %op4, align 8, !dbg !4314
  %sub.ptr.lhs.cast = ptrtoint ptr %55 to i64, !dbg !4315
  %sub.ptr.rhs.cast = ptrtoint ptr %56 to i64, !dbg !4315
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4315
  %cmp60 = icmp uge i64 %sub.ptr.sub, 8, !dbg !4316
  br i1 %cmp60, label %if.then62, label %if.end180, !dbg !4317

if.then62:                                        ; preds = %cleanup.cont59
  br label %for.cond, !dbg !4318

for.cond:                                         ; preds = %if.end168, %if.then62
  %57 = load i32, ptr %endSignal, align 4, !dbg !4320
  %58 = load ptr, ptr %op4, align 8, !dbg !4323
  %59 = load ptr, ptr %olimit, align 8, !dbg !4324
  %cmp63 = icmp ult ptr %58, %59, !dbg !4325
  %conv64 = zext i1 %cmp63 to i32, !dbg !4325
  %and = and i32 %57, %conv64, !dbg !4326
  %tobool65 = icmp ne i32 %and, 0, !dbg !4327
  br i1 %tobool65, label %for.body, label %for.end, !dbg !4327

for.body:                                         ; preds = %for.cond
  %call66 = call i32 @MEM_64bits() #10, !dbg !4328
  %tobool67 = icmp ne i32 %call66, 0, !dbg !4328
  br i1 %tobool67, label %if.then68, label %if.end71, !dbg !4331

if.then68:                                        ; preds = %for.body
  %60 = load ptr, ptr %op1, align 8, !dbg !4328
  %61 = load ptr, ptr %dt, align 8, !dbg !4328
  %62 = load i32, ptr %dtLog, align 4, !dbg !4328
  %call69 = call i32 @HUF_decodeSymbolX2(ptr noundef %60, ptr noundef %bitD1, ptr noundef %61, i32 noundef %62) #10, !dbg !4328
  %63 = load ptr, ptr %op1, align 8, !dbg !4328
  %idx.ext = zext i32 %call69 to i64, !dbg !4328
  %add.ptr70 = getelementptr i8, ptr %63, i64 %idx.ext, !dbg !4328
  store ptr %add.ptr70, ptr %op1, align 8, !dbg !4328
  br label %if.end71, !dbg !4328

if.end71:                                         ; preds = %if.then68, %for.body
  %call72 = call i32 @MEM_64bits() #10, !dbg !4332
  %tobool73 = icmp ne i32 %call72, 0, !dbg !4332
  br i1 %tobool73, label %if.then74, label %lor.lhs.false, !dbg !4332

lor.lhs.false:                                    ; preds = %if.end71
  br i1 true, label %if.then74, label %if.end78, !dbg !4334

if.then74:                                        ; preds = %lor.lhs.false, %if.end71
  %64 = load ptr, ptr %op1, align 8, !dbg !4332
  %65 = load ptr, ptr %dt, align 8, !dbg !4332
  %66 = load i32, ptr %dtLog, align 4, !dbg !4332
  %call75 = call i32 @HUF_decodeSymbolX2(ptr noundef %64, ptr noundef %bitD1, ptr noundef %65, i32 noundef %66) #10, !dbg !4332
  %67 = load ptr, ptr %op1, align 8, !dbg !4332
  %idx.ext76 = zext i32 %call75 to i64, !dbg !4332
  %add.ptr77 = getelementptr i8, ptr %67, i64 %idx.ext76, !dbg !4332
  store ptr %add.ptr77, ptr %op1, align 8, !dbg !4332
  br label %if.end78, !dbg !4332

if.end78:                                         ; preds = %if.then74, %lor.lhs.false
  %call79 = call i32 @MEM_64bits() #10, !dbg !4335
  %tobool80 = icmp ne i32 %call79, 0, !dbg !4335
  br i1 %tobool80, label %if.then81, label %if.end85, !dbg !4337

if.then81:                                        ; preds = %if.end78
  %68 = load ptr, ptr %op1, align 8, !dbg !4335
  %69 = load ptr, ptr %dt, align 8, !dbg !4335
  %70 = load i32, ptr %dtLog, align 4, !dbg !4335
  %call82 = call i32 @HUF_decodeSymbolX2(ptr noundef %68, ptr noundef %bitD1, ptr noundef %69, i32 noundef %70) #10, !dbg !4335
  %71 = load ptr, ptr %op1, align 8, !dbg !4335
  %idx.ext83 = zext i32 %call82 to i64, !dbg !4335
  %add.ptr84 = getelementptr i8, ptr %71, i64 %idx.ext83, !dbg !4335
  store ptr %add.ptr84, ptr %op1, align 8, !dbg !4335
  br label %if.end85, !dbg !4335

if.end85:                                         ; preds = %if.then81, %if.end78
  %72 = load ptr, ptr %op1, align 8, !dbg !4338
  %73 = load ptr, ptr %dt, align 8, !dbg !4338
  %74 = load i32, ptr %dtLog, align 4, !dbg !4338
  %call86 = call i32 @HUF_decodeSymbolX2(ptr noundef %72, ptr noundef %bitD1, ptr noundef %73, i32 noundef %74) #10, !dbg !4338
  %75 = load ptr, ptr %op1, align 8, !dbg !4338
  %idx.ext87 = zext i32 %call86 to i64, !dbg !4338
  %add.ptr88 = getelementptr i8, ptr %75, i64 %idx.ext87, !dbg !4338
  store ptr %add.ptr88, ptr %op1, align 8, !dbg !4338
  %call89 = call i32 @MEM_64bits() #10, !dbg !4339
  %tobool90 = icmp ne i32 %call89, 0, !dbg !4339
  br i1 %tobool90, label %if.then91, label %if.end95, !dbg !4341

if.then91:                                        ; preds = %if.end85
  %76 = load ptr, ptr %op2, align 8, !dbg !4339
  %77 = load ptr, ptr %dt, align 8, !dbg !4339
  %78 = load i32, ptr %dtLog, align 4, !dbg !4339
  %call92 = call i32 @HUF_decodeSymbolX2(ptr noundef %76, ptr noundef %bitD2, ptr noundef %77, i32 noundef %78) #10, !dbg !4339
  %79 = load ptr, ptr %op2, align 8, !dbg !4339
  %idx.ext93 = zext i32 %call92 to i64, !dbg !4339
  %add.ptr94 = getelementptr i8, ptr %79, i64 %idx.ext93, !dbg !4339
  store ptr %add.ptr94, ptr %op2, align 8, !dbg !4339
  br label %if.end95, !dbg !4339

if.end95:                                         ; preds = %if.then91, %if.end85
  %call96 = call i32 @MEM_64bits() #10, !dbg !4342
  %tobool97 = icmp ne i32 %call96, 0, !dbg !4342
  br i1 %tobool97, label %if.then99, label %lor.lhs.false98, !dbg !4342

lor.lhs.false98:                                  ; preds = %if.end95
  br i1 true, label %if.then99, label %if.end103, !dbg !4344

if.then99:                                        ; preds = %lor.lhs.false98, %if.end95
  %80 = load ptr, ptr %op2, align 8, !dbg !4342
  %81 = load ptr, ptr %dt, align 8, !dbg !4342
  %82 = load i32, ptr %dtLog, align 4, !dbg !4342
  %call100 = call i32 @HUF_decodeSymbolX2(ptr noundef %80, ptr noundef %bitD2, ptr noundef %81, i32 noundef %82) #10, !dbg !4342
  %83 = load ptr, ptr %op2, align 8, !dbg !4342
  %idx.ext101 = zext i32 %call100 to i64, !dbg !4342
  %add.ptr102 = getelementptr i8, ptr %83, i64 %idx.ext101, !dbg !4342
  store ptr %add.ptr102, ptr %op2, align 8, !dbg !4342
  br label %if.end103, !dbg !4342

if.end103:                                        ; preds = %if.then99, %lor.lhs.false98
  %call104 = call i32 @MEM_64bits() #10, !dbg !4345
  %tobool105 = icmp ne i32 %call104, 0, !dbg !4345
  br i1 %tobool105, label %if.then106, label %if.end110, !dbg !4347

if.then106:                                       ; preds = %if.end103
  %84 = load ptr, ptr %op2, align 8, !dbg !4345
  %85 = load ptr, ptr %dt, align 8, !dbg !4345
  %86 = load i32, ptr %dtLog, align 4, !dbg !4345
  %call107 = call i32 @HUF_decodeSymbolX2(ptr noundef %84, ptr noundef %bitD2, ptr noundef %85, i32 noundef %86) #10, !dbg !4345
  %87 = load ptr, ptr %op2, align 8, !dbg !4345
  %idx.ext108 = zext i32 %call107 to i64, !dbg !4345
  %add.ptr109 = getelementptr i8, ptr %87, i64 %idx.ext108, !dbg !4345
  store ptr %add.ptr109, ptr %op2, align 8, !dbg !4345
  br label %if.end110, !dbg !4345

if.end110:                                        ; preds = %if.then106, %if.end103
  %88 = load ptr, ptr %op2, align 8, !dbg !4348
  %89 = load ptr, ptr %dt, align 8, !dbg !4348
  %90 = load i32, ptr %dtLog, align 4, !dbg !4348
  %call111 = call i32 @HUF_decodeSymbolX2(ptr noundef %88, ptr noundef %bitD2, ptr noundef %89, i32 noundef %90) #10, !dbg !4348
  %91 = load ptr, ptr %op2, align 8, !dbg !4348
  %idx.ext112 = zext i32 %call111 to i64, !dbg !4348
  %add.ptr113 = getelementptr i8, ptr %91, i64 %idx.ext112, !dbg !4348
  store ptr %add.ptr113, ptr %op2, align 8, !dbg !4348
  %call114 = call i32 @BIT_reloadDStreamFast(ptr noundef %bitD1) #10, !dbg !4349
  %cmp115 = icmp eq i32 %call114, 0, !dbg !4350
  %conv116 = zext i1 %cmp115 to i32, !dbg !4350
  %92 = load i32, ptr %endSignal, align 4, !dbg !4351
  %and117 = and i32 %92, %conv116, !dbg !4351
  store i32 %and117, ptr %endSignal, align 4, !dbg !4351
  %call118 = call i32 @BIT_reloadDStreamFast(ptr noundef %bitD2) #10, !dbg !4352
  %cmp119 = icmp eq i32 %call118, 0, !dbg !4353
  %conv120 = zext i1 %cmp119 to i32, !dbg !4353
  %93 = load i32, ptr %endSignal, align 4, !dbg !4354
  %and121 = and i32 %93, %conv120, !dbg !4354
  store i32 %and121, ptr %endSignal, align 4, !dbg !4354
  %call122 = call i32 @MEM_64bits() #10, !dbg !4355
  %tobool123 = icmp ne i32 %call122, 0, !dbg !4355
  br i1 %tobool123, label %if.then124, label %if.end128, !dbg !4357

if.then124:                                       ; preds = %if.end110
  %94 = load ptr, ptr %op3, align 8, !dbg !4355
  %95 = load ptr, ptr %dt, align 8, !dbg !4355
  %96 = load i32, ptr %dtLog, align 4, !dbg !4355
  %call125 = call i32 @HUF_decodeSymbolX2(ptr noundef %94, ptr noundef %bitD3, ptr noundef %95, i32 noundef %96) #10, !dbg !4355
  %97 = load ptr, ptr %op3, align 8, !dbg !4355
  %idx.ext126 = zext i32 %call125 to i64, !dbg !4355
  %add.ptr127 = getelementptr i8, ptr %97, i64 %idx.ext126, !dbg !4355
  store ptr %add.ptr127, ptr %op3, align 8, !dbg !4355
  br label %if.end128, !dbg !4355

if.end128:                                        ; preds = %if.then124, %if.end110
  %call129 = call i32 @MEM_64bits() #10, !dbg !4358
  %tobool130 = icmp ne i32 %call129, 0, !dbg !4358
  br i1 %tobool130, label %if.then132, label %lor.lhs.false131, !dbg !4358

lor.lhs.false131:                                 ; preds = %if.end128
  br i1 true, label %if.then132, label %if.end136, !dbg !4360

if.then132:                                       ; preds = %lor.lhs.false131, %if.end128
  %98 = load ptr, ptr %op3, align 8, !dbg !4358
  %99 = load ptr, ptr %dt, align 8, !dbg !4358
  %100 = load i32, ptr %dtLog, align 4, !dbg !4358
  %call133 = call i32 @HUF_decodeSymbolX2(ptr noundef %98, ptr noundef %bitD3, ptr noundef %99, i32 noundef %100) #10, !dbg !4358
  %101 = load ptr, ptr %op3, align 8, !dbg !4358
  %idx.ext134 = zext i32 %call133 to i64, !dbg !4358
  %add.ptr135 = getelementptr i8, ptr %101, i64 %idx.ext134, !dbg !4358
  store ptr %add.ptr135, ptr %op3, align 8, !dbg !4358
  br label %if.end136, !dbg !4358

if.end136:                                        ; preds = %if.then132, %lor.lhs.false131
  %call137 = call i32 @MEM_64bits() #10, !dbg !4361
  %tobool138 = icmp ne i32 %call137, 0, !dbg !4361
  br i1 %tobool138, label %if.then139, label %if.end143, !dbg !4363

if.then139:                                       ; preds = %if.end136
  %102 = load ptr, ptr %op3, align 8, !dbg !4361
  %103 = load ptr, ptr %dt, align 8, !dbg !4361
  %104 = load i32, ptr %dtLog, align 4, !dbg !4361
  %call140 = call i32 @HUF_decodeSymbolX2(ptr noundef %102, ptr noundef %bitD3, ptr noundef %103, i32 noundef %104) #10, !dbg !4361
  %105 = load ptr, ptr %op3, align 8, !dbg !4361
  %idx.ext141 = zext i32 %call140 to i64, !dbg !4361
  %add.ptr142 = getelementptr i8, ptr %105, i64 %idx.ext141, !dbg !4361
  store ptr %add.ptr142, ptr %op3, align 8, !dbg !4361
  br label %if.end143, !dbg !4361

if.end143:                                        ; preds = %if.then139, %if.end136
  %106 = load ptr, ptr %op3, align 8, !dbg !4364
  %107 = load ptr, ptr %dt, align 8, !dbg !4364
  %108 = load i32, ptr %dtLog, align 4, !dbg !4364
  %call144 = call i32 @HUF_decodeSymbolX2(ptr noundef %106, ptr noundef %bitD3, ptr noundef %107, i32 noundef %108) #10, !dbg !4364
  %109 = load ptr, ptr %op3, align 8, !dbg !4364
  %idx.ext145 = zext i32 %call144 to i64, !dbg !4364
  %add.ptr146 = getelementptr i8, ptr %109, i64 %idx.ext145, !dbg !4364
  store ptr %add.ptr146, ptr %op3, align 8, !dbg !4364
  %call147 = call i32 @MEM_64bits() #10, !dbg !4365
  %tobool148 = icmp ne i32 %call147, 0, !dbg !4365
  br i1 %tobool148, label %if.then149, label %if.end153, !dbg !4367

if.then149:                                       ; preds = %if.end143
  %110 = load ptr, ptr %op4, align 8, !dbg !4365
  %111 = load ptr, ptr %dt, align 8, !dbg !4365
  %112 = load i32, ptr %dtLog, align 4, !dbg !4365
  %call150 = call i32 @HUF_decodeSymbolX2(ptr noundef %110, ptr noundef %bitD4, ptr noundef %111, i32 noundef %112) #10, !dbg !4365
  %113 = load ptr, ptr %op4, align 8, !dbg !4365
  %idx.ext151 = zext i32 %call150 to i64, !dbg !4365
  %add.ptr152 = getelementptr i8, ptr %113, i64 %idx.ext151, !dbg !4365
  store ptr %add.ptr152, ptr %op4, align 8, !dbg !4365
  br label %if.end153, !dbg !4365

if.end153:                                        ; preds = %if.then149, %if.end143
  %call154 = call i32 @MEM_64bits() #10, !dbg !4368
  %tobool155 = icmp ne i32 %call154, 0, !dbg !4368
  br i1 %tobool155, label %if.then157, label %lor.lhs.false156, !dbg !4368

lor.lhs.false156:                                 ; preds = %if.end153
  br i1 true, label %if.then157, label %if.end161, !dbg !4370

if.then157:                                       ; preds = %lor.lhs.false156, %if.end153
  %114 = load ptr, ptr %op4, align 8, !dbg !4368
  %115 = load ptr, ptr %dt, align 8, !dbg !4368
  %116 = load i32, ptr %dtLog, align 4, !dbg !4368
  %call158 = call i32 @HUF_decodeSymbolX2(ptr noundef %114, ptr noundef %bitD4, ptr noundef %115, i32 noundef %116) #10, !dbg !4368
  %117 = load ptr, ptr %op4, align 8, !dbg !4368
  %idx.ext159 = zext i32 %call158 to i64, !dbg !4368
  %add.ptr160 = getelementptr i8, ptr %117, i64 %idx.ext159, !dbg !4368
  store ptr %add.ptr160, ptr %op4, align 8, !dbg !4368
  br label %if.end161, !dbg !4368

if.end161:                                        ; preds = %if.then157, %lor.lhs.false156
  %call162 = call i32 @MEM_64bits() #10, !dbg !4371
  %tobool163 = icmp ne i32 %call162, 0, !dbg !4371
  br i1 %tobool163, label %if.then164, label %if.end168, !dbg !4373

if.then164:                                       ; preds = %if.end161
  %118 = load ptr, ptr %op4, align 8, !dbg !4371
  %119 = load ptr, ptr %dt, align 8, !dbg !4371
  %120 = load i32, ptr %dtLog, align 4, !dbg !4371
  %call165 = call i32 @HUF_decodeSymbolX2(ptr noundef %118, ptr noundef %bitD4, ptr noundef %119, i32 noundef %120) #10, !dbg !4371
  %121 = load ptr, ptr %op4, align 8, !dbg !4371
  %idx.ext166 = zext i32 %call165 to i64, !dbg !4371
  %add.ptr167 = getelementptr i8, ptr %121, i64 %idx.ext166, !dbg !4371
  store ptr %add.ptr167, ptr %op4, align 8, !dbg !4371
  br label %if.end168, !dbg !4371

if.end168:                                        ; preds = %if.then164, %if.end161
  %122 = load ptr, ptr %op4, align 8, !dbg !4374
  %123 = load ptr, ptr %dt, align 8, !dbg !4374
  %124 = load i32, ptr %dtLog, align 4, !dbg !4374
  %call169 = call i32 @HUF_decodeSymbolX2(ptr noundef %122, ptr noundef %bitD4, ptr noundef %123, i32 noundef %124) #10, !dbg !4374
  %125 = load ptr, ptr %op4, align 8, !dbg !4374
  %idx.ext170 = zext i32 %call169 to i64, !dbg !4374
  %add.ptr171 = getelementptr i8, ptr %125, i64 %idx.ext170, !dbg !4374
  store ptr %add.ptr171, ptr %op4, align 8, !dbg !4374
  %call172 = call i32 @BIT_reloadDStreamFast(ptr noundef %bitD3) #10, !dbg !4375
  %cmp173 = icmp eq i32 %call172, 0, !dbg !4376
  %conv174 = zext i1 %cmp173 to i32, !dbg !4376
  %126 = load i32, ptr %endSignal, align 4, !dbg !4377
  %and175 = and i32 %126, %conv174, !dbg !4377
  store i32 %and175, ptr %endSignal, align 4, !dbg !4377
  %call176 = call i32 @BIT_reloadDStreamFast(ptr noundef %bitD4) #10, !dbg !4378
  %cmp177 = icmp eq i32 %call176, 0, !dbg !4379
  %conv178 = zext i1 %cmp177 to i32, !dbg !4379
  %127 = load i32, ptr %endSignal, align 4, !dbg !4380
  %and179 = and i32 %127, %conv178, !dbg !4380
  store i32 %and179, ptr %endSignal, align 4, !dbg !4380
  br label %for.cond, !dbg !4381, !llvm.loop !4382

for.end:                                          ; preds = %for.cond
  br label %if.end180, !dbg !4384

if.end180:                                        ; preds = %for.end, %cleanup.cont59
  %128 = load ptr, ptr %op1, align 8, !dbg !4385
  %129 = load ptr, ptr %opStart2, align 8, !dbg !4387
  %cmp181 = icmp ugt ptr %128, %129, !dbg !4388
  br i1 %cmp181, label %if.then183, label %if.end184, !dbg !4389

if.then183:                                       ; preds = %if.end180
  store i64 -20, ptr %retval, align 8, !dbg !4390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup210, !dbg !4390

if.end184:                                        ; preds = %if.end180
  %130 = load ptr, ptr %op2, align 8, !dbg !4391
  %131 = load ptr, ptr %opStart3, align 8, !dbg !4393
  %cmp185 = icmp ugt ptr %130, %131, !dbg !4394
  br i1 %cmp185, label %if.then187, label %if.end188, !dbg !4395

if.then187:                                       ; preds = %if.end184
  store i64 -20, ptr %retval, align 8, !dbg !4396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup210, !dbg !4396

if.end188:                                        ; preds = %if.end184
  %132 = load ptr, ptr %op3, align 8, !dbg !4397
  %133 = load ptr, ptr %opStart4, align 8, !dbg !4399
  %cmp189 = icmp ugt ptr %132, %133, !dbg !4400
  br i1 %cmp189, label %if.then191, label %if.end192, !dbg !4401

if.then191:                                       ; preds = %if.end188
  store i64 -20, ptr %retval, align 8, !dbg !4402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup210, !dbg !4402

if.end192:                                        ; preds = %if.end188
  %134 = load ptr, ptr %op1, align 8, !dbg !4403
  %135 = load ptr, ptr %opStart2, align 8, !dbg !4404
  %136 = load ptr, ptr %dt, align 8, !dbg !4405
  %137 = load i32, ptr %dtLog, align 4, !dbg !4406
  %call193 = call i64 @HUF_decodeStreamX2(ptr noundef %134, ptr noundef %bitD1, ptr noundef %135, ptr noundef %136, i32 noundef %137) #10, !dbg !4407
  %138 = load ptr, ptr %op2, align 8, !dbg !4408
  %139 = load ptr, ptr %opStart3, align 8, !dbg !4409
  %140 = load ptr, ptr %dt, align 8, !dbg !4410
  %141 = load i32, ptr %dtLog, align 4, !dbg !4411
  %call194 = call i64 @HUF_decodeStreamX2(ptr noundef %138, ptr noundef %bitD2, ptr noundef %139, ptr noundef %140, i32 noundef %141) #10, !dbg !4412
  %142 = load ptr, ptr %op3, align 8, !dbg !4413
  %143 = load ptr, ptr %opStart4, align 8, !dbg !4414
  %144 = load ptr, ptr %dt, align 8, !dbg !4415
  %145 = load i32, ptr %dtLog, align 4, !dbg !4416
  %call195 = call i64 @HUF_decodeStreamX2(ptr noundef %142, ptr noundef %bitD3, ptr noundef %143, ptr noundef %144, i32 noundef %145) #10, !dbg !4417
  %146 = load ptr, ptr %op4, align 8, !dbg !4418
  %147 = load ptr, ptr %oend, align 8, !dbg !4419
  %148 = load ptr, ptr %dt, align 8, !dbg !4420
  %149 = load i32, ptr %dtLog, align 4, !dbg !4421
  %call196 = call i64 @HUF_decodeStreamX2(ptr noundef %146, ptr noundef %bitD4, ptr noundef %147, ptr noundef %148, i32 noundef %149) #10, !dbg !4422
  call void @llvm.lifetime.start.p0(i64 4, ptr %endCheck) #11, !dbg !4423
  call void @llvm.dbg.declare(metadata ptr %endCheck, metadata !4157, metadata !DIExpression()), !dbg !4424
  %call197 = call i32 @BIT_endOfDStream(ptr noundef %bitD1) #10, !dbg !4425
  %call198 = call i32 @BIT_endOfDStream(ptr noundef %bitD2) #10, !dbg !4426
  %and199 = and i32 %call197, %call198, !dbg !4427
  %call200 = call i32 @BIT_endOfDStream(ptr noundef %bitD3) #10, !dbg !4428
  %and201 = and i32 %and199, %call200, !dbg !4429
  %call202 = call i32 @BIT_endOfDStream(ptr noundef %bitD4) #10, !dbg !4430
  %and203 = and i32 %and201, %call202, !dbg !4431
  store i32 %and203, ptr %endCheck, align 4, !dbg !4424
  %150 = load i32, ptr %endCheck, align 4, !dbg !4432
  %tobool204 = icmp ne i32 %150, 0, !dbg !4432
  br i1 %tobool204, label %if.end206, label %if.then205, !dbg !4434

if.then205:                                       ; preds = %if.end192
  store i64 -20, ptr %retval, align 8, !dbg !4435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup207, !dbg !4435

if.end206:                                        ; preds = %if.end192
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4436
  br label %cleanup207, !dbg !4436

cleanup207:                                       ; preds = %if.end206, %if.then205
  call void @llvm.lifetime.end.p0(i64 4, ptr %endCheck) #11, !dbg !4436
  %cleanup.dest208 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest208, label %cleanup210 [
    i32 0, label %cleanup.cont209
  ]

cleanup.cont209:                                  ; preds = %cleanup207
  %151 = load i64, ptr %dstSize.addr, align 8, !dbg !4437
  store i64 %151, ptr %retval, align 8, !dbg !4438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup210, !dbg !4438

cleanup210:                                       ; preds = %cleanup.cont209, %cleanup207, %if.then191, %if.then187, %if.then183, %cleanup57, %cleanup48, %cleanup39, %cleanup, %if.then27, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtLog) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtd) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 4, ptr %endSignal) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %op4) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %op3) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %op2) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %op1) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %opStart4) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %opStart3) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %opStart2) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %segmentSize) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart4) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart3) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart2) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart1) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %length4) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %length3) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %length2) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %length1) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 40, ptr %bitD4) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 40, ptr %bitD3) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 40, ptr %bitD2) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 40, ptr %bitD1) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %dt) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtPtr) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %olimit) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #11, !dbg !4439
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart) #11, !dbg !4439
  br label %return

return:                                           ; preds = %cleanup210, %if.then
  %152 = load i64, ptr %retval, align 8, !dbg !4440
  ret i64 %152, !dbg !4440
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "algoTime", scope: !2, file: !3, line: 1562, type: !195, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zstd/decompress/.huf_decompress.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zstd/zstd_decompress\22 -D KBUILD_BASENAME=\22huf_decompress\22 -D KBUILD_MODNAME=\22zstd_decompress\22 -D __KBUILD_MODNAME=kmod_zstd_decompress -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zstd/decompress/huf_decompress.ll lib/zstd/decompress/huf_decompress.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !194, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/zstd/decompress/huf_decompress.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d00ed02c48e7909942fd704cc6fbcd3f")
!4 = !{!5, !37}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 37, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/zstd_errors.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b65e56a0777f4855c2ba6522d04d0e69")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!9 = !DIEnumerator(name: "ZSTD_error_no_error", value: 0)
!10 = !DIEnumerator(name: "ZSTD_error_GENERIC", value: 1)
!11 = !DIEnumerator(name: "ZSTD_error_prefix_unknown", value: 10)
!12 = !DIEnumerator(name: "ZSTD_error_version_unsupported", value: 12)
!13 = !DIEnumerator(name: "ZSTD_error_frameParameter_unsupported", value: 14)
!14 = !DIEnumerator(name: "ZSTD_error_frameParameter_windowTooLarge", value: 16)
!15 = !DIEnumerator(name: "ZSTD_error_corruption_detected", value: 20)
!16 = !DIEnumerator(name: "ZSTD_error_checksum_wrong", value: 22)
!17 = !DIEnumerator(name: "ZSTD_error_dictionary_corrupted", value: 30)
!18 = !DIEnumerator(name: "ZSTD_error_dictionary_wrong", value: 32)
!19 = !DIEnumerator(name: "ZSTD_error_dictionaryCreation_failed", value: 34)
!20 = !DIEnumerator(name: "ZSTD_error_parameter_unsupported", value: 40)
!21 = !DIEnumerator(name: "ZSTD_error_parameter_outOfBound", value: 42)
!22 = !DIEnumerator(name: "ZSTD_error_tableLog_tooLarge", value: 44)
!23 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooLarge", value: 46)
!24 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooSmall", value: 48)
!25 = !DIEnumerator(name: "ZSTD_error_stage_wrong", value: 60)
!26 = !DIEnumerator(name: "ZSTD_error_init_missing", value: 62)
!27 = !DIEnumerator(name: "ZSTD_error_memory_allocation", value: 64)
!28 = !DIEnumerator(name: "ZSTD_error_workSpace_tooSmall", value: 66)
!29 = !DIEnumerator(name: "ZSTD_error_dstSize_tooSmall", value: 70)
!30 = !DIEnumerator(name: "ZSTD_error_srcSize_wrong", value: 72)
!31 = !DIEnumerator(name: "ZSTD_error_dstBuffer_null", value: 74)
!32 = !DIEnumerator(name: "ZSTD_error_frameIndex_tooLarge", value: 100)
!33 = !DIEnumerator(name: "ZSTD_error_seekableIO", value: 102)
!34 = !DIEnumerator(name: "ZSTD_error_dstBuffer_wrong", value: 104)
!35 = !DIEnumerator(name: "ZSTD_error_srcBuffer_wrong", value: 105)
!36 = !DIEnumerator(name: "ZSTD_error_maxCode", value: 120)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !38, line: 90, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "lib/zstd/decompress/../common/bitstream.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1506eb3bcf17fe963e7dde55b0cfcb8f")
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "BIT_DStream_unfinished", value: 0)
!41 = !DIEnumerator(name: "BIT_DStream_endOfBuffer", value: 1)
!42 = !DIEnumerator(name: "BIT_DStream_completed", value: 2)
!43 = !DIEnumerator(name: "BIT_DStream_overflow", value: 3)
!44 = !{!45, !60, !82, !66, !50, !87, !88, !90, !102, !124, !142, !143, !144, !146, !69, !149, !151, !133, !166, !167, !98, !179, !180, !130, !192}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "HUF_DEltX1", file: !3, line: 277, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 277, size: 16, elements: !48)
!48 = !{!49, !59}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "nbBits", scope: !47, file: !3, line: 277, baseType: !50, size: 8)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !51, line: 32, baseType: !52)
!51 = !DIFile(filename: "lib/zstd/decompress/../common/mem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ecad453ab26990e649f823cad6e0e9a6")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !53, line: 108, baseType: !54)
!53 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !55, line: 17, baseType: !56)
!55 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !57, line: 21, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !47, file: !3, line: 277, baseType: !50, size: 8, offset: 8)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "HUF_ReadDTableX1_Workspace", file: !3, line: 330, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 324, size: 11904, elements: !63)
!63 = !{!64, !72, !73, !77, !81}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "rankVal", scope: !62, file: !3, line: 325, baseType: !65, size: 416)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 416, elements: !70)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !51, line: 37, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 110, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !55, line: 21, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !57, line: 27, baseType: !7)
!70 = !{!71}
!71 = !DISubrange(count: 13)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rankStart", scope: !62, file: !3, line: 326, baseType: !65, size: 416, offset: 416)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "statsWksp", scope: !62, file: !3, line: 327, baseType: !74, size: 6976, offset: 832)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 6976, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 218)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "symbols", scope: !62, file: !3, line: 328, baseType: !78, size: 2048, offset: 7808)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "huffWeight", scope: !62, file: !3, line: 329, baseType: !78, size: 2048, offset: 9856)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 61, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !84, line: 72, baseType: !85)
!84 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !84, line: 16, baseType: !86)
!86 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "HUF_DEltX2", file: !3, line: 815, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 815, size: 32, elements: !93)
!93 = !{!94, !100, !101}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !92, file: !3, line: 815, baseType: !95, size: 16)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !51, line: 35, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !53, line: 109, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !55, line: 19, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !57, line: 24, baseType: !99)
!99 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "nbBits", scope: !92, file: !3, line: 815, baseType: !50, size: 8, offset: 16)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !92, file: !3, line: 815, baseType: !50, size: 8, offset: 24)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "HUF_ReadDTableX2_Workspace", file: !3, line: 1039, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 1032, size: 16960, elements: !105)
!105 = !{!106, !111, !112, !116, !122, !123}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "rankVal", scope: !104, file: !3, line: 1033, baseType: !107, size: 4992)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 4992, elements: !109)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "rankValCol_t", file: !3, line: 817, baseType: !65)
!109 = !{!110}
!110 = !DISubrange(count: 12)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "rankStats", scope: !104, file: !3, line: 1034, baseType: !65, size: 416, offset: 4992)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "rankStart0", scope: !104, file: !3, line: 1035, baseType: !113, size: 480, offset: 5408)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 480, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 15)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sortedSymbol", scope: !104, file: !3, line: 1036, baseType: !117, size: 2048, offset: 5888)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 2048, elements: !79)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "sortedSymbol_t", file: !3, line: 816, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 816, size: 8, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "symbol", scope: !119, file: !3, line: 816, baseType: !50, size: 8)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "weightList", scope: !104, file: !3, line: 1037, baseType: !78, size: 2048, offset: 7936)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "calleeWksp", scope: !104, file: !3, line: 1038, baseType: !74, size: 6976, offset: 9984)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !126, file: !51, line: 143, size: 64, elements: !140)
!126 = distinct !DISubprogram(name: "MEM_write64", scope: !51, file: !51, line: 141, type: !127, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !135)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !130}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "U64", file: !51, line: 39, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !53, line: 113, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !55, line: 23, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !57, line: 31, baseType: !134)
!134 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!135 = !{!136, !137, !138}
!136 = !DILocalVariable(name: "memPtr", arg: 1, scope: !126, file: !51, line: 141, type: !129)
!137 = !DILocalVariable(name: "value", arg: 2, scope: !126, file: !51, line: 141, type: !130)
!138 = !DILocalVariable(name: "__pptr", scope: !139, file: !51, line: 143, type: !124)
!139 = distinct !DILexicalBlock(scope: !126, file: !51, line: 143, column: 5)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !125, file: !51, line: 143, baseType: !130, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !150, line: 38, baseType: !69)
!150 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !154, line: 32, size: 32, elements: !164)
!154 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!155 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !154, file: !154, line: 30, type: !156, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!156 = !DISubroutineType(types: !157)
!157 = !{!68, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!160 = !{!161, !162}
!161 = !DILocalVariable(name: "p", arg: 1, scope: !155, file: !154, line: 30, type: !158)
!162 = !DILocalVariable(name: "__pptr", scope: !163, file: !154, line: 32, type: !151)
!163 = distinct !DILexicalBlock(scope: !155, file: !154, line: 32, column: 9)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !153, file: !154, line: 32, baseType: !149, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !150, line: 40, baseType: !133)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !170, file: !154, line: 37, size: 64, elements: !177)
!170 = distinct !DISubprogram(name: "get_unaligned_le64", scope: !154, file: !154, line: 35, type: !171, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !173)
!171 = !DISubroutineType(types: !172)
!172 = !{!132, !158}
!173 = !{!174, !175}
!174 = !DILocalVariable(name: "p", arg: 1, scope: !170, file: !154, line: 35, type: !158)
!175 = !DILocalVariable(name: "__pptr", scope: !176, file: !154, line: 37, type: !167)
!176 = distinct !DILexicalBlock(scope: !170, file: !154, line: 37, column: 9)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !169, file: !154, line: 37, baseType: !166, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !150, line: 36, baseType: !98)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !183, file: !154, line: 27, size: 16, elements: !190)
!183 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !154, file: !154, line: 25, type: !184, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!184 = !DISubroutineType(types: !185)
!185 = !{!97, !158}
!186 = !{!187, !188}
!187 = !DILocalVariable(name: "p", arg: 1, scope: !183, file: !154, line: 25, type: !158)
!188 = !DILocalVariable(name: "__pptr", scope: !189, file: !154, line: 27, type: !180)
!189 = distinct !DILexicalBlock(scope: !183, file: !154, line: 27, column: 9)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !182, file: !154, line: 27, baseType: !179, size: 16)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!194 = !{!0}
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 2048, elements: !202)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "algo_time_t", file: !3, line: 1561, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 1561, size: 64, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tableTime", scope: !198, file: !3, line: 1561, baseType: !66, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "decode256Time", scope: !198, file: !3, line: 1561, baseType: !66, size: 32, offset: 32)
!202 = !{!203, !204}
!203 = !DISubrange(count: 16)
!204 = !DISubrange(count: 2)
!205 = !{i32 7, !"Dwarf Version", i32 5}
!206 = !{i32 2, !"Debug Info Version", i32 3}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 8, !"cf-protection-branch", i32 1}
!209 = !{i32 4, !"function_return_thunk_extern", i32 1}
!210 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!211 = !{i32 1, !"Code Model", i32 2}
!212 = !{i32 1, !"override-stack-alignment", i32 8}
!213 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!214 = distinct !DISubprogram(name: "HUF_readDTableX1_wksp", scope: !3, file: !3, line: 333, type: !215, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!215 = !DISubroutineType(types: !216)
!216 = !{!82, !217, !158, !82, !129, !82}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "HUF_DTable", file: !219, line: 143, baseType: !66)
!219 = !DIFile(filename: "lib/zstd/decompress/../common/huf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3885d88b55dce6c8e4168e380ad868c4")
!220 = !{!221, !222, !223, !224, !225}
!221 = !DILocalVariable(name: "DTable", arg: 1, scope: !214, file: !3, line: 333, type: !217)
!222 = !DILocalVariable(name: "src", arg: 2, scope: !214, file: !3, line: 333, type: !158)
!223 = !DILocalVariable(name: "srcSize", arg: 3, scope: !214, file: !3, line: 333, type: !82)
!224 = !DILocalVariable(name: "workSpace", arg: 4, scope: !214, file: !3, line: 333, type: !129)
!225 = !DILocalVariable(name: "wkspSize", arg: 5, scope: !214, file: !3, line: 333, type: !82)
!226 = !DILocation(line: 333, column: 42, scope: !214)
!227 = !DILocation(line: 333, column: 62, scope: !214)
!228 = !DILocation(line: 333, column: 74, scope: !214)
!229 = !DILocation(line: 333, column: 89, scope: !214)
!230 = !DILocation(line: 333, column: 107, scope: !214)
!231 = !DILocation(line: 335, column: 39, scope: !214)
!232 = !DILocation(line: 335, column: 47, scope: !214)
!233 = !DILocation(line: 335, column: 52, scope: !214)
!234 = !DILocation(line: 335, column: 61, scope: !214)
!235 = !DILocation(line: 335, column: 72, scope: !214)
!236 = !DILocation(line: 335, column: 12, scope: !214)
!237 = !DILocation(line: 335, column: 5, scope: !214)
!238 = distinct !DISubprogram(name: "HUF_readDTableX1_wksp_bmi2", scope: !3, file: !3, line: 338, type: !239, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!82, !217, !158, !82, !129, !82, !87}
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !253, !255, !256, !265, !267, !268, !270, !271, !273, !274, !278, !282, !287, !291, !293, !294, !295, !299, !300, !301, !302, !303, !304, !309, !313, !318, !322}
!242 = !DILocalVariable(name: "DTable", arg: 1, scope: !238, file: !3, line: 338, type: !217)
!243 = !DILocalVariable(name: "src", arg: 2, scope: !238, file: !3, line: 338, type: !158)
!244 = !DILocalVariable(name: "srcSize", arg: 3, scope: !238, file: !3, line: 338, type: !82)
!245 = !DILocalVariable(name: "workSpace", arg: 4, scope: !238, file: !3, line: 338, type: !129)
!246 = !DILocalVariable(name: "wkspSize", arg: 5, scope: !238, file: !3, line: 338, type: !82)
!247 = !DILocalVariable(name: "bmi2", arg: 6, scope: !238, file: !3, line: 338, type: !87)
!248 = !DILocalVariable(name: "tableLog", scope: !238, file: !3, line: 340, type: !66)
!249 = !DILocalVariable(name: "nbSymbols", scope: !238, file: !3, line: 341, type: !66)
!250 = !DILocalVariable(name: "iSize", scope: !238, file: !3, line: 342, type: !82)
!251 = !DILocalVariable(name: "dtPtr", scope: !238, file: !3, line: 343, type: !252)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!253 = !DILocalVariable(name: "dt", scope: !238, file: !3, line: 344, type: !254)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!255 = !DILocalVariable(name: "wksp", scope: !238, file: !3, line: 345, type: !60)
!256 = !DILocalVariable(name: "dtd", scope: !257, file: !3, line: 358, type: !258)
!257 = distinct !DILexicalBlock(scope: !238, file: !3, line: 358, column: 5)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTableDesc", file: !3, line: 128, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 128, size: 32, elements: !260)
!260 = !{!261, !262, !263, !264}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "maxTableLog", scope: !259, file: !3, line: 128, baseType: !50, size: 8)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tableType", scope: !259, file: !3, line: 128, baseType: !50, size: 8, offset: 8)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tableLog", scope: !259, file: !3, line: 128, baseType: !50, size: 8, offset: 16)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !259, file: !3, line: 128, baseType: !50, size: 8, offset: 24)
!265 = !DILocalVariable(name: "maxTableLog", scope: !257, file: !3, line: 359, type: !266)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!267 = !DILocalVariable(name: "targetTableLog", scope: !257, file: !3, line: 360, type: !266)
!268 = !DILocalVariable(name: "n", scope: !269, file: !3, line: 381, type: !87)
!269 = distinct !DILexicalBlock(scope: !238, file: !3, line: 380, column: 5)
!270 = !DILocalVariable(name: "nextRankStart", scope: !269, file: !3, line: 382, type: !87)
!271 = !DILocalVariable(name: "unroll", scope: !269, file: !3, line: 383, type: !272)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!273 = !DILocalVariable(name: "nLimit", scope: !269, file: !3, line: 384, type: !272)
!274 = !DILocalVariable(name: "curr", scope: !275, file: !3, line: 386, type: !266)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 385, column: 43)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 385, column: 9)
!277 = distinct !DILexicalBlock(scope: !269, file: !3, line: 385, column: 9)
!278 = !DILocalVariable(name: "u", scope: !279, file: !3, line: 391, type: !87)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 390, column: 44)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 390, column: 9)
!281 = distinct !DILexicalBlock(scope: !269, file: !3, line: 390, column: 9)
!282 = !DILocalVariable(name: "w", scope: !283, file: !3, line: 393, type: !286)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 392, column: 40)
!284 = distinct !DILexicalBlock(scope: !285, file: !3, line: 392, column: 13)
!285 = distinct !DILexicalBlock(scope: !279, file: !3, line: 392, column: 13)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!287 = !DILocalVariable(name: "w", scope: !288, file: !3, line: 398, type: !286)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 397, column: 41)
!289 = distinct !DILexicalBlock(scope: !290, file: !3, line: 397, column: 9)
!290 = distinct !DILexicalBlock(scope: !269, file: !3, line: 397, column: 9)
!291 = !DILocalVariable(name: "w", scope: !292, file: !3, line: 410, type: !66)
!292 = distinct !DILexicalBlock(scope: !238, file: !3, line: 409, column: 5)
!293 = !DILocalVariable(name: "symbol", scope: !292, file: !3, line: 411, type: !87)
!294 = !DILocalVariable(name: "rankStart", scope: !292, file: !3, line: 412, type: !87)
!295 = !DILocalVariable(name: "symbolCount", scope: !296, file: !3, line: 414, type: !272)
!296 = distinct !DILexicalBlock(scope: !297, file: !3, line: 413, column: 38)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 413, column: 9)
!298 = distinct !DILexicalBlock(scope: !292, file: !3, line: 413, column: 9)
!299 = !DILocalVariable(name: "length", scope: !296, file: !3, line: 415, type: !272)
!300 = !DILocalVariable(name: "uStart", scope: !296, file: !3, line: 416, type: !87)
!301 = !DILocalVariable(name: "nbBits", scope: !296, file: !3, line: 417, type: !89)
!302 = !DILocalVariable(name: "s", scope: !296, file: !3, line: 418, type: !87)
!303 = !DILocalVariable(name: "u", scope: !296, file: !3, line: 419, type: !87)
!304 = !DILocalVariable(name: "D", scope: !305, file: !3, line: 423, type: !46)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 422, column: 47)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 422, column: 17)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 422, column: 17)
!308 = distinct !DILexicalBlock(scope: !296, file: !3, line: 420, column: 29)
!309 = !DILocalVariable(name: "D", scope: !310, file: !3, line: 432, type: !46)
!310 = distinct !DILexicalBlock(scope: !311, file: !3, line: 431, column: 47)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 431, column: 17)
!312 = distinct !DILexicalBlock(scope: !308, file: !3, line: 431, column: 17)
!313 = !DILocalVariable(name: "D4", scope: !314, file: !3, line: 442, type: !317)
!314 = distinct !DILexicalBlock(scope: !315, file: !3, line: 441, column: 47)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 441, column: 17)
!316 = distinct !DILexicalBlock(scope: !308, file: !3, line: 441, column: 17)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!318 = !DILocalVariable(name: "D4", scope: !319, file: !3, line: 449, type: !317)
!319 = distinct !DILexicalBlock(scope: !320, file: !3, line: 448, column: 47)
!320 = distinct !DILexicalBlock(scope: !321, file: !3, line: 448, column: 17)
!321 = distinct !DILexicalBlock(scope: !308, file: !3, line: 448, column: 17)
!322 = !DILocalVariable(name: "D4", scope: !323, file: !3, line: 457, type: !317)
!323 = distinct !DILexicalBlock(scope: !324, file: !3, line: 456, column: 47)
!324 = distinct !DILexicalBlock(scope: !325, file: !3, line: 456, column: 17)
!325 = distinct !DILexicalBlock(scope: !308, file: !3, line: 456, column: 17)
!326 = !DILocation(line: 338, column: 47, scope: !238)
!327 = !DILocation(line: 338, column: 67, scope: !238)
!328 = !DILocation(line: 338, column: 79, scope: !238)
!329 = !DILocation(line: 338, column: 94, scope: !238)
!330 = !DILocation(line: 338, column: 112, scope: !238)
!331 = !DILocation(line: 338, column: 126, scope: !238)
!332 = !DILocation(line: 340, column: 5, scope: !238)
!333 = !DILocation(line: 340, column: 9, scope: !238)
!334 = !DILocation(line: 341, column: 5, scope: !238)
!335 = !DILocation(line: 341, column: 9, scope: !238)
!336 = !DILocation(line: 342, column: 5, scope: !238)
!337 = !DILocation(line: 342, column: 12, scope: !238)
!338 = !DILocation(line: 343, column: 5, scope: !238)
!339 = !DILocation(line: 343, column: 17, scope: !238)
!340 = !DILocation(line: 343, column: 25, scope: !238)
!341 = !DILocation(line: 343, column: 32, scope: !238)
!342 = !DILocation(line: 344, column: 5, scope: !238)
!343 = !DILocation(line: 344, column: 23, scope: !238)
!344 = !DILocation(line: 344, column: 41, scope: !238)
!345 = !DILocation(line: 345, column: 5, scope: !238)
!346 = !DILocation(line: 345, column: 33, scope: !238)
!347 = !DILocation(line: 345, column: 69, scope: !238)
!348 = !DILocation(line: 348, column: 25, scope: !349)
!349 = distinct !DILexicalBlock(scope: !238, file: !3, line: 348, column: 9)
!350 = !DILocation(line: 348, column: 23, scope: !349)
!351 = !DILocation(line: 348, column: 9, scope: !238)
!352 = !DILocation(line: 348, column: 35, scope: !349)
!353 = !DILocation(line: 353, column: 32, scope: !238)
!354 = !DILocation(line: 353, column: 38, scope: !238)
!355 = !DILocation(line: 353, column: 75, scope: !238)
!356 = !DILocation(line: 353, column: 81, scope: !238)
!357 = !DILocation(line: 353, column: 113, scope: !238)
!358 = !DILocation(line: 353, column: 118, scope: !238)
!359 = !DILocation(line: 353, column: 127, scope: !238)
!360 = !DILocation(line: 353, column: 133, scope: !238)
!361 = !DILocation(line: 353, column: 169, scope: !238)
!362 = !DILocation(line: 353, column: 13, scope: !238)
!363 = !DILocation(line: 353, column: 11, scope: !238)
!364 = !DILocation(line: 354, column: 21, scope: !365)
!365 = distinct !DILexicalBlock(scope: !238, file: !3, line: 354, column: 9)
!366 = !DILocation(line: 354, column: 9, scope: !365)
!367 = !DILocation(line: 354, column: 9, scope: !238)
!368 = !DILocation(line: 354, column: 36, scope: !365)
!369 = !DILocation(line: 354, column: 29, scope: !365)
!370 = !DILocation(line: 358, column: 9, scope: !257)
!371 = !DILocation(line: 358, column: 20, scope: !257)
!372 = !DILocation(line: 358, column: 44, scope: !257)
!373 = !DILocation(line: 358, column: 26, scope: !257)
!374 = !DILocation(line: 359, column: 9, scope: !257)
!375 = !DILocation(line: 359, column: 19, scope: !257)
!376 = !DILocation(line: 359, column: 37, scope: !257)
!377 = !DILocation(line: 359, column: 33, scope: !257)
!378 = !DILocation(line: 359, column: 49, scope: !257)
!379 = !DILocation(line: 360, column: 9, scope: !257)
!380 = !DILocation(line: 360, column: 19, scope: !257)
!381 = !DILocation(line: 360, column: 36, scope: !257)
!382 = !DILocation(line: 361, column: 37, scope: !257)
!383 = !DILocation(line: 361, column: 43, scope: !257)
!384 = !DILocation(line: 361, column: 55, scope: !257)
!385 = !DILocation(line: 361, column: 61, scope: !257)
!386 = !DILocation(line: 361, column: 70, scope: !257)
!387 = !DILocation(line: 361, column: 81, scope: !257)
!388 = !DILocation(line: 361, column: 91, scope: !257)
!389 = !DILocation(line: 361, column: 20, scope: !257)
!390 = !DILocation(line: 361, column: 18, scope: !257)
!391 = !DILocation(line: 362, column: 13, scope: !392)
!392 = distinct !DILexicalBlock(scope: !257, file: !3, line: 362, column: 13)
!393 = !DILocation(line: 362, column: 34, scope: !392)
!394 = !DILocation(line: 362, column: 30, scope: !392)
!395 = !DILocation(line: 362, column: 45, scope: !392)
!396 = !DILocation(line: 362, column: 22, scope: !392)
!397 = !DILocation(line: 362, column: 13, scope: !257)
!398 = !DILocation(line: 362, column: 50, scope: !392)
!399 = !DILocation(line: 363, column: 13, scope: !257)
!400 = !DILocation(line: 363, column: 23, scope: !257)
!401 = !DILocation(line: 364, column: 30, scope: !257)
!402 = !DILocation(line: 364, column: 24, scope: !257)
!403 = !DILocation(line: 364, column: 13, scope: !257)
!404 = !DILocation(line: 364, column: 22, scope: !257)
!405 = !DILocation(line: 365, column: 9, scope: !257)
!406 = !DILocation(line: 366, column: 5, scope: !238)
!407 = !DILocation(line: 381, column: 9, scope: !269)
!408 = !DILocation(line: 381, column: 13, scope: !269)
!409 = !DILocation(line: 382, column: 9, scope: !269)
!410 = !DILocation(line: 382, column: 13, scope: !269)
!411 = !DILocation(line: 383, column: 9, scope: !269)
!412 = !DILocation(line: 383, column: 19, scope: !269)
!413 = !DILocation(line: 384, column: 9, scope: !269)
!414 = !DILocation(line: 384, column: 19, scope: !269)
!415 = !DILocation(line: 384, column: 33, scope: !269)
!416 = !DILocation(line: 384, column: 43, scope: !269)
!417 = !DILocation(line: 384, column: 52, scope: !269)
!418 = !DILocation(line: 385, column: 15, scope: !277)
!419 = !DILocation(line: 385, column: 14, scope: !277)
!420 = !DILocation(line: 385, column: 19, scope: !276)
!421 = !DILocation(line: 385, column: 26, scope: !276)
!422 = !DILocation(line: 385, column: 34, scope: !276)
!423 = !DILocation(line: 385, column: 20, scope: !276)
!424 = !DILocation(line: 385, column: 9, scope: !277)
!425 = !DILocation(line: 386, column: 13, scope: !275)
!426 = !DILocation(line: 386, column: 23, scope: !275)
!427 = !DILocation(line: 386, column: 30, scope: !275)
!428 = !DILocation(line: 387, column: 30, scope: !275)
!429 = !DILocation(line: 387, column: 36, scope: !275)
!430 = !DILocation(line: 387, column: 44, scope: !275)
!431 = !DILocation(line: 387, column: 27, scope: !275)
!432 = !DILocation(line: 388, column: 34, scope: !275)
!433 = !DILocation(line: 388, column: 13, scope: !275)
!434 = !DILocation(line: 388, column: 19, scope: !275)
!435 = !DILocation(line: 388, column: 29, scope: !275)
!436 = !DILocation(line: 388, column: 32, scope: !275)
!437 = !DILocation(line: 389, column: 9, scope: !276)
!438 = !DILocation(line: 389, column: 9, scope: !275)
!439 = !DILocation(line: 385, column: 39, scope: !276)
!440 = !DILocation(line: 385, column: 9, scope: !276)
!441 = distinct !{!441, !424, !442, !443, !444}
!442 = !DILocation(line: 389, column: 9, scope: !277)
!443 = !{!"llvm.loop.mustprogress"}
!444 = !{!"llvm.loop.unroll.disable"}
!445 = !DILocation(line: 390, column: 15, scope: !281)
!446 = !DILocation(line: 390, column: 14, scope: !281)
!447 = !DILocation(line: 390, column: 19, scope: !280)
!448 = !DILocation(line: 390, column: 23, scope: !280)
!449 = !DILocation(line: 390, column: 21, scope: !280)
!450 = !DILocation(line: 390, column: 9, scope: !281)
!451 = !DILocation(line: 391, column: 13, scope: !279)
!452 = !DILocation(line: 391, column: 17, scope: !279)
!453 = !DILocation(line: 392, column: 19, scope: !285)
!454 = !DILocation(line: 392, column: 18, scope: !285)
!455 = !DILocation(line: 392, column: 23, scope: !284)
!456 = !DILocation(line: 392, column: 25, scope: !284)
!457 = !DILocation(line: 392, column: 13, scope: !285)
!458 = !DILocation(line: 393, column: 17, scope: !283)
!459 = !DILocation(line: 393, column: 30, scope: !283)
!460 = !DILocation(line: 393, column: 34, scope: !283)
!461 = !DILocation(line: 393, column: 40, scope: !283)
!462 = !DILocation(line: 393, column: 51, scope: !283)
!463 = !DILocation(line: 393, column: 53, scope: !283)
!464 = !DILocation(line: 393, column: 52, scope: !283)
!465 = !DILocation(line: 394, column: 62, scope: !283)
!466 = !DILocation(line: 394, column: 64, scope: !283)
!467 = !DILocation(line: 394, column: 63, scope: !283)
!468 = !DILocation(line: 394, column: 55, scope: !283)
!469 = !DILocation(line: 394, column: 17, scope: !283)
!470 = !DILocation(line: 394, column: 23, scope: !283)
!471 = !DILocation(line: 394, column: 31, scope: !283)
!472 = !DILocation(line: 394, column: 37, scope: !283)
!473 = !DILocation(line: 394, column: 47, scope: !283)
!474 = !DILocation(line: 394, column: 49, scope: !283)
!475 = !DILocation(line: 394, column: 53, scope: !283)
!476 = !DILocation(line: 395, column: 13, scope: !284)
!477 = !DILocation(line: 395, column: 13, scope: !283)
!478 = !DILocation(line: 392, column: 35, scope: !284)
!479 = !DILocation(line: 392, column: 13, scope: !284)
!480 = distinct !{!480, !457, !481, !443, !444}
!481 = !DILocation(line: 395, column: 13, scope: !285)
!482 = !DILocation(line: 396, column: 9, scope: !280)
!483 = !DILocation(line: 396, column: 9, scope: !279)
!484 = !DILocation(line: 390, column: 33, scope: !280)
!485 = !DILocation(line: 390, column: 9, scope: !280)
!486 = distinct !{!486, !450, !487, !443, !444}
!487 = !DILocation(line: 396, column: 9, scope: !281)
!488 = !DILocation(line: 397, column: 9, scope: !269)
!489 = !DILocation(line: 397, column: 16, scope: !289)
!490 = !DILocation(line: 397, column: 25, scope: !289)
!491 = !DILocation(line: 397, column: 18, scope: !289)
!492 = !DILocation(line: 397, column: 9, scope: !290)
!493 = !DILocation(line: 398, column: 13, scope: !288)
!494 = !DILocation(line: 398, column: 26, scope: !288)
!495 = !DILocation(line: 398, column: 30, scope: !288)
!496 = !DILocation(line: 398, column: 36, scope: !288)
!497 = !DILocation(line: 398, column: 47, scope: !288)
!498 = !DILocation(line: 399, column: 57, scope: !288)
!499 = !DILocation(line: 399, column: 51, scope: !288)
!500 = !DILocation(line: 399, column: 13, scope: !288)
!501 = !DILocation(line: 399, column: 19, scope: !288)
!502 = !DILocation(line: 399, column: 27, scope: !288)
!503 = !DILocation(line: 399, column: 33, scope: !288)
!504 = !DILocation(line: 399, column: 43, scope: !288)
!505 = !DILocation(line: 399, column: 45, scope: !288)
!506 = !DILocation(line: 399, column: 49, scope: !288)
!507 = !DILocation(line: 400, column: 9, scope: !289)
!508 = !DILocation(line: 400, column: 9, scope: !288)
!509 = !DILocation(line: 397, column: 36, scope: !289)
!510 = !DILocation(line: 397, column: 9, scope: !289)
!511 = distinct !{!511, !492, !512, !443, !444}
!512 = !DILocation(line: 400, column: 9, scope: !290)
!513 = !DILocation(line: 401, column: 5, scope: !238)
!514 = !DILocation(line: 410, column: 9, scope: !292)
!515 = !DILocation(line: 410, column: 13, scope: !292)
!516 = !DILocation(line: 411, column: 9, scope: !292)
!517 = !DILocation(line: 411, column: 13, scope: !292)
!518 = !DILocation(line: 411, column: 20, scope: !292)
!519 = !DILocation(line: 411, column: 26, scope: !292)
!520 = !DILocation(line: 412, column: 9, scope: !292)
!521 = !DILocation(line: 412, column: 13, scope: !292)
!522 = !DILocation(line: 413, column: 15, scope: !298)
!523 = !DILocation(line: 413, column: 14, scope: !298)
!524 = !DILocation(line: 413, column: 19, scope: !297)
!525 = !DILocation(line: 413, column: 21, scope: !297)
!526 = !DILocation(line: 413, column: 29, scope: !297)
!527 = !DILocation(line: 413, column: 20, scope: !297)
!528 = !DILocation(line: 413, column: 9, scope: !298)
!529 = !DILocation(line: 414, column: 13, scope: !296)
!530 = !DILocation(line: 414, column: 23, scope: !296)
!531 = !DILocation(line: 414, column: 37, scope: !296)
!532 = !DILocation(line: 414, column: 43, scope: !296)
!533 = !DILocation(line: 414, column: 51, scope: !296)
!534 = !DILocation(line: 415, column: 13, scope: !296)
!535 = !DILocation(line: 415, column: 23, scope: !296)
!536 = !DILocation(line: 415, column: 38, scope: !296)
!537 = !DILocation(line: 415, column: 35, scope: !296)
!538 = !DILocation(line: 415, column: 41, scope: !296)
!539 = !DILocation(line: 416, column: 13, scope: !296)
!540 = !DILocation(line: 416, column: 17, scope: !296)
!541 = !DILocation(line: 416, column: 26, scope: !296)
!542 = !DILocation(line: 417, column: 13, scope: !296)
!543 = !DILocation(line: 417, column: 24, scope: !296)
!544 = !DILocation(line: 417, column: 40, scope: !296)
!545 = !DILocation(line: 417, column: 49, scope: !296)
!546 = !DILocation(line: 417, column: 55, scope: !296)
!547 = !DILocation(line: 417, column: 53, scope: !296)
!548 = !DILocation(line: 417, column: 33, scope: !296)
!549 = !DILocation(line: 418, column: 13, scope: !296)
!550 = !DILocation(line: 418, column: 17, scope: !296)
!551 = !DILocation(line: 419, column: 13, scope: !296)
!552 = !DILocation(line: 419, column: 17, scope: !296)
!553 = !DILocation(line: 420, column: 21, scope: !296)
!554 = !DILocation(line: 420, column: 13, scope: !296)
!555 = !DILocation(line: 422, column: 23, scope: !307)
!556 = !DILocation(line: 422, column: 22, scope: !307)
!557 = !DILocation(line: 422, column: 27, scope: !306)
!558 = !DILocation(line: 422, column: 29, scope: !306)
!559 = !DILocation(line: 422, column: 28, scope: !306)
!560 = !DILocation(line: 422, column: 17, scope: !307)
!561 = !DILocation(line: 423, column: 21, scope: !305)
!562 = !DILocation(line: 423, column: 32, scope: !305)
!563 = !DILocation(line: 424, column: 30, scope: !305)
!564 = !DILocation(line: 424, column: 36, scope: !305)
!565 = !DILocation(line: 424, column: 44, scope: !305)
!566 = !DILocation(line: 424, column: 53, scope: !305)
!567 = !DILocation(line: 424, column: 51, scope: !305)
!568 = !DILocation(line: 424, column: 23, scope: !305)
!569 = !DILocation(line: 424, column: 28, scope: !305)
!570 = !DILocation(line: 425, column: 32, scope: !305)
!571 = !DILocation(line: 425, column: 23, scope: !305)
!572 = !DILocation(line: 425, column: 30, scope: !305)
!573 = !DILocation(line: 426, column: 21, scope: !305)
!574 = !DILocation(line: 426, column: 24, scope: !305)
!575 = !DILocation(line: 426, column: 34, scope: !305)
!576 = !DILocation(line: 427, column: 28, scope: !305)
!577 = !DILocation(line: 428, column: 17, scope: !306)
!578 = !DILocation(line: 428, column: 17, scope: !305)
!579 = !DILocation(line: 422, column: 42, scope: !306)
!580 = !DILocation(line: 422, column: 17, scope: !306)
!581 = distinct !{!581, !560, !582, !443, !444}
!582 = !DILocation(line: 428, column: 17, scope: !307)
!583 = !DILocation(line: 429, column: 17, scope: !308)
!584 = !DILocation(line: 431, column: 23, scope: !312)
!585 = !DILocation(line: 431, column: 22, scope: !312)
!586 = !DILocation(line: 431, column: 27, scope: !311)
!587 = !DILocation(line: 431, column: 29, scope: !311)
!588 = !DILocation(line: 431, column: 28, scope: !311)
!589 = !DILocation(line: 431, column: 17, scope: !312)
!590 = !DILocation(line: 432, column: 21, scope: !310)
!591 = !DILocation(line: 432, column: 32, scope: !310)
!592 = !DILocation(line: 433, column: 30, scope: !310)
!593 = !DILocation(line: 433, column: 36, scope: !310)
!594 = !DILocation(line: 433, column: 44, scope: !310)
!595 = !DILocation(line: 433, column: 53, scope: !310)
!596 = !DILocation(line: 433, column: 51, scope: !310)
!597 = !DILocation(line: 433, column: 23, scope: !310)
!598 = !DILocation(line: 433, column: 28, scope: !310)
!599 = !DILocation(line: 434, column: 32, scope: !310)
!600 = !DILocation(line: 434, column: 23, scope: !310)
!601 = !DILocation(line: 434, column: 30, scope: !310)
!602 = !DILocation(line: 435, column: 21, scope: !310)
!603 = !DILocation(line: 435, column: 24, scope: !310)
!604 = !DILocation(line: 435, column: 30, scope: !310)
!605 = !DILocation(line: 435, column: 36, scope: !310)
!606 = !DILocation(line: 436, column: 21, scope: !310)
!607 = !DILocation(line: 436, column: 24, scope: !310)
!608 = !DILocation(line: 436, column: 30, scope: !310)
!609 = !DILocation(line: 436, column: 36, scope: !310)
!610 = !DILocation(line: 437, column: 28, scope: !310)
!611 = !DILocation(line: 438, column: 17, scope: !311)
!612 = !DILocation(line: 438, column: 17, scope: !310)
!613 = !DILocation(line: 431, column: 42, scope: !311)
!614 = !DILocation(line: 431, column: 17, scope: !311)
!615 = distinct !{!615, !589, !616, !443, !444}
!616 = !DILocation(line: 438, column: 17, scope: !312)
!617 = !DILocation(line: 439, column: 17, scope: !308)
!618 = !DILocation(line: 441, column: 23, scope: !316)
!619 = !DILocation(line: 441, column: 22, scope: !316)
!620 = !DILocation(line: 441, column: 27, scope: !315)
!621 = !DILocation(line: 441, column: 29, scope: !315)
!622 = !DILocation(line: 441, column: 28, scope: !315)
!623 = !DILocation(line: 441, column: 17, scope: !316)
!624 = !DILocation(line: 442, column: 21, scope: !314)
!625 = !DILocation(line: 442, column: 31, scope: !314)
!626 = !DILocation(line: 442, column: 52, scope: !314)
!627 = !DILocation(line: 442, column: 58, scope: !314)
!628 = !DILocation(line: 442, column: 66, scope: !314)
!629 = !DILocation(line: 442, column: 75, scope: !314)
!630 = !DILocation(line: 442, column: 73, scope: !314)
!631 = !DILocation(line: 442, column: 79, scope: !314)
!632 = !DILocation(line: 442, column: 36, scope: !314)
!633 = !DILocation(line: 443, column: 33, scope: !314)
!634 = !DILocation(line: 443, column: 38, scope: !314)
!635 = !DILocation(line: 443, column: 36, scope: !314)
!636 = !DILocation(line: 443, column: 46, scope: !314)
!637 = !DILocation(line: 443, column: 21, scope: !314)
!638 = !DILocation(line: 444, column: 28, scope: !314)
!639 = !DILocation(line: 445, column: 17, scope: !315)
!640 = !DILocation(line: 445, column: 17, scope: !314)
!641 = !DILocation(line: 441, column: 42, scope: !315)
!642 = !DILocation(line: 441, column: 17, scope: !315)
!643 = distinct !{!643, !623, !644, !443, !444}
!644 = !DILocation(line: 445, column: 17, scope: !316)
!645 = !DILocation(line: 446, column: 17, scope: !308)
!646 = !DILocation(line: 448, column: 23, scope: !321)
!647 = !DILocation(line: 448, column: 22, scope: !321)
!648 = !DILocation(line: 448, column: 27, scope: !320)
!649 = !DILocation(line: 448, column: 29, scope: !320)
!650 = !DILocation(line: 448, column: 28, scope: !320)
!651 = !DILocation(line: 448, column: 17, scope: !321)
!652 = !DILocation(line: 449, column: 21, scope: !319)
!653 = !DILocation(line: 449, column: 31, scope: !319)
!654 = !DILocation(line: 449, column: 52, scope: !319)
!655 = !DILocation(line: 449, column: 58, scope: !319)
!656 = !DILocation(line: 449, column: 66, scope: !319)
!657 = !DILocation(line: 449, column: 75, scope: !319)
!658 = !DILocation(line: 449, column: 73, scope: !319)
!659 = !DILocation(line: 449, column: 79, scope: !319)
!660 = !DILocation(line: 449, column: 36, scope: !319)
!661 = !DILocation(line: 450, column: 33, scope: !319)
!662 = !DILocation(line: 450, column: 38, scope: !319)
!663 = !DILocation(line: 450, column: 36, scope: !319)
!664 = !DILocation(line: 450, column: 46, scope: !319)
!665 = !DILocation(line: 450, column: 21, scope: !319)
!666 = !DILocation(line: 451, column: 33, scope: !319)
!667 = !DILocation(line: 451, column: 38, scope: !319)
!668 = !DILocation(line: 451, column: 36, scope: !319)
!669 = !DILocation(line: 451, column: 45, scope: !319)
!670 = !DILocation(line: 451, column: 50, scope: !319)
!671 = !DILocation(line: 451, column: 21, scope: !319)
!672 = !DILocation(line: 452, column: 28, scope: !319)
!673 = !DILocation(line: 453, column: 17, scope: !320)
!674 = !DILocation(line: 453, column: 17, scope: !319)
!675 = !DILocation(line: 448, column: 42, scope: !320)
!676 = !DILocation(line: 448, column: 17, scope: !320)
!677 = distinct !{!677, !651, !678, !443, !444}
!678 = !DILocation(line: 453, column: 17, scope: !321)
!679 = !DILocation(line: 454, column: 17, scope: !308)
!680 = !DILocation(line: 456, column: 23, scope: !325)
!681 = !DILocation(line: 456, column: 22, scope: !325)
!682 = !DILocation(line: 456, column: 27, scope: !324)
!683 = !DILocation(line: 456, column: 29, scope: !324)
!684 = !DILocation(line: 456, column: 28, scope: !324)
!685 = !DILocation(line: 456, column: 17, scope: !325)
!686 = !DILocation(line: 457, column: 21, scope: !323)
!687 = !DILocation(line: 457, column: 31, scope: !323)
!688 = !DILocation(line: 457, column: 52, scope: !323)
!689 = !DILocation(line: 457, column: 58, scope: !323)
!690 = !DILocation(line: 457, column: 66, scope: !323)
!691 = !DILocation(line: 457, column: 75, scope: !323)
!692 = !DILocation(line: 457, column: 73, scope: !323)
!693 = !DILocation(line: 457, column: 79, scope: !323)
!694 = !DILocation(line: 457, column: 36, scope: !323)
!695 = !DILocation(line: 458, column: 27, scope: !696)
!696 = distinct !DILexicalBlock(scope: !323, file: !3, line: 458, column: 21)
!697 = !DILocation(line: 458, column: 26, scope: !696)
!698 = !DILocation(line: 458, column: 31, scope: !699)
!699 = distinct !DILexicalBlock(scope: !696, file: !3, line: 458, column: 21)
!700 = !DILocation(line: 458, column: 35, scope: !699)
!701 = !DILocation(line: 458, column: 33, scope: !699)
!702 = !DILocation(line: 458, column: 21, scope: !696)
!703 = !DILocation(line: 459, column: 37, scope: !704)
!704 = distinct !DILexicalBlock(scope: !699, file: !3, line: 458, column: 52)
!705 = !DILocation(line: 459, column: 42, scope: !704)
!706 = !DILocation(line: 459, column: 40, scope: !704)
!707 = !DILocation(line: 459, column: 51, scope: !704)
!708 = !DILocation(line: 459, column: 49, scope: !704)
!709 = !DILocation(line: 459, column: 53, scope: !704)
!710 = !DILocation(line: 459, column: 58, scope: !704)
!711 = !DILocation(line: 459, column: 25, scope: !704)
!712 = !DILocation(line: 460, column: 37, scope: !704)
!713 = !DILocation(line: 460, column: 42, scope: !704)
!714 = !DILocation(line: 460, column: 40, scope: !704)
!715 = !DILocation(line: 460, column: 51, scope: !704)
!716 = !DILocation(line: 460, column: 49, scope: !704)
!717 = !DILocation(line: 460, column: 53, scope: !704)
!718 = !DILocation(line: 460, column: 58, scope: !704)
!719 = !DILocation(line: 460, column: 25, scope: !704)
!720 = !DILocation(line: 461, column: 37, scope: !704)
!721 = !DILocation(line: 461, column: 42, scope: !704)
!722 = !DILocation(line: 461, column: 40, scope: !704)
!723 = !DILocation(line: 461, column: 51, scope: !704)
!724 = !DILocation(line: 461, column: 49, scope: !704)
!725 = !DILocation(line: 461, column: 53, scope: !704)
!726 = !DILocation(line: 461, column: 58, scope: !704)
!727 = !DILocation(line: 461, column: 25, scope: !704)
!728 = !DILocation(line: 462, column: 37, scope: !704)
!729 = !DILocation(line: 462, column: 42, scope: !704)
!730 = !DILocation(line: 462, column: 40, scope: !704)
!731 = !DILocation(line: 462, column: 51, scope: !704)
!732 = !DILocation(line: 462, column: 49, scope: !704)
!733 = !DILocation(line: 462, column: 53, scope: !704)
!734 = !DILocation(line: 462, column: 59, scope: !704)
!735 = !DILocation(line: 462, column: 25, scope: !704)
!736 = !DILocation(line: 463, column: 21, scope: !704)
!737 = !DILocation(line: 458, column: 45, scope: !699)
!738 = !DILocation(line: 458, column: 21, scope: !699)
!739 = distinct !{!739, !702, !740, !443, !444}
!740 = !DILocation(line: 463, column: 21, scope: !696)
!741 = !DILocation(line: 465, column: 31, scope: !323)
!742 = !DILocation(line: 465, column: 28, scope: !323)
!743 = !DILocation(line: 466, column: 17, scope: !324)
!744 = !DILocation(line: 466, column: 17, scope: !323)
!745 = !DILocation(line: 456, column: 42, scope: !324)
!746 = !DILocation(line: 456, column: 17, scope: !324)
!747 = distinct !{!747, !685, !748, !443, !444}
!748 = !DILocation(line: 466, column: 17, scope: !325)
!749 = !DILocation(line: 467, column: 17, scope: !308)
!750 = !DILocation(line: 469, column: 23, scope: !296)
!751 = !DILocation(line: 469, column: 20, scope: !296)
!752 = !DILocation(line: 470, column: 26, scope: !296)
!753 = !DILocation(line: 470, column: 40, scope: !296)
!754 = !DILocation(line: 470, column: 38, scope: !296)
!755 = !DILocation(line: 470, column: 23, scope: !296)
!756 = !DILocation(line: 471, column: 9, scope: !297)
!757 = !DILocation(line: 471, column: 9, scope: !296)
!758 = !DILocation(line: 413, column: 33, scope: !297)
!759 = !DILocation(line: 413, column: 9, scope: !297)
!760 = distinct !{!760, !528, !761, !443, !444}
!761 = !DILocation(line: 471, column: 9, scope: !298)
!762 = !DILocation(line: 472, column: 5, scope: !238)
!763 = !DILocation(line: 473, column: 12, scope: !238)
!764 = !DILocation(line: 473, column: 5, scope: !238)
!765 = !DILocation(line: 474, column: 1, scope: !238)
!766 = !DISubprogram(name: "HUF_readStats_wksp", scope: !219, file: !219, line: 237, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!767 = !DISubroutineType(types: !768)
!768 = !{!82, !143, !82, !769, !769, !769, !158, !82, !129, !82, !87}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!770 = distinct !DISubprogram(name: "ERR_isError", scope: !771, file: !771, line: 47, type: !772, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !774)
!771 = !DIFile(filename: "lib/zstd/decompress/../common/error_private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c1e76caf533df7af314a25a57fa92da")
!772 = !DISubroutineType(types: !773)
!773 = !{!7, !82}
!774 = !{!775}
!775 = !DILocalVariable(name: "code", arg: 1, scope: !770, file: !771, line: 47, type: !82)
!776 = !DILocation(line: 47, column: 40, scope: !770)
!777 = !DILocation(line: 47, column: 56, scope: !770)
!778 = !DILocation(line: 47, column: 61, scope: !770)
!779 = !DILocation(line: 47, column: 48, scope: !770)
!780 = distinct !DISubprogram(name: "HUF_getDTableDesc", scope: !3, file: !3, line: 130, type: !781, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !785)
!781 = !DISubroutineType(types: !782)
!782 = !{!258, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!785 = !{!786, !787}
!786 = !DILocalVariable(name: "table", arg: 1, scope: !780, file: !3, line: 130, type: !783)
!787 = !DILocalVariable(name: "dtd", scope: !780, file: !3, line: 132, type: !258)
!788 = !DILocation(line: 130, column: 55, scope: !780)
!789 = !DILocation(line: 132, column: 16, scope: !780)
!790 = !DILocation(line: 133, column: 5, scope: !780)
!791 = !DILocation(line: 134, column: 5, scope: !780)
!792 = distinct !DISubprogram(name: "HUF_rescaleStats", scope: !3, file: !3, line: 299, type: !793, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{!66, !143, !769, !66, !66, !66}
!795 = !{!796, !797, !798, !799, !800, !801, !804}
!796 = !DILocalVariable(name: "huffWeight", arg: 1, scope: !792, file: !3, line: 299, type: !143)
!797 = !DILocalVariable(name: "rankVal", arg: 2, scope: !792, file: !3, line: 299, type: !769)
!798 = !DILocalVariable(name: "nbSymbols", arg: 3, scope: !792, file: !3, line: 299, type: !66)
!799 = !DILocalVariable(name: "tableLog", arg: 4, scope: !792, file: !3, line: 299, type: !66)
!800 = !DILocalVariable(name: "targetTableLog", arg: 5, scope: !792, file: !3, line: 299, type: !66)
!801 = !DILocalVariable(name: "scale", scope: !802, file: !3, line: 304, type: !266)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 303, column: 36)
!803 = distinct !DILexicalBlock(scope: !792, file: !3, line: 303, column: 9)
!804 = !DILocalVariable(name: "s", scope: !802, file: !3, line: 305, type: !66)
!805 = !DILocation(line: 299, column: 35, scope: !792)
!806 = !DILocation(line: 299, column: 52, scope: !792)
!807 = !DILocation(line: 299, column: 65, scope: !792)
!808 = !DILocation(line: 299, column: 80, scope: !792)
!809 = !DILocation(line: 299, column: 94, scope: !792)
!810 = !DILocation(line: 301, column: 9, scope: !811)
!811 = distinct !DILexicalBlock(scope: !792, file: !3, line: 301, column: 9)
!812 = !DILocation(line: 301, column: 20, scope: !811)
!813 = !DILocation(line: 301, column: 18, scope: !811)
!814 = !DILocation(line: 301, column: 9, scope: !792)
!815 = !DILocation(line: 302, column: 16, scope: !811)
!816 = !DILocation(line: 302, column: 9, scope: !811)
!817 = !DILocation(line: 303, column: 9, scope: !803)
!818 = !DILocation(line: 303, column: 20, scope: !803)
!819 = !DILocation(line: 303, column: 18, scope: !803)
!820 = !DILocation(line: 303, column: 9, scope: !792)
!821 = !DILocation(line: 304, column: 9, scope: !802)
!822 = !DILocation(line: 304, column: 19, scope: !802)
!823 = !DILocation(line: 304, column: 27, scope: !802)
!824 = !DILocation(line: 304, column: 44, scope: !802)
!825 = !DILocation(line: 304, column: 42, scope: !802)
!826 = !DILocation(line: 305, column: 9, scope: !802)
!827 = !DILocation(line: 305, column: 13, scope: !802)
!828 = !DILocation(line: 307, column: 16, scope: !829)
!829 = distinct !DILexicalBlock(scope: !802, file: !3, line: 307, column: 9)
!830 = !DILocation(line: 307, column: 14, scope: !829)
!831 = !DILocation(line: 307, column: 21, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !3, line: 307, column: 9)
!833 = !DILocation(line: 307, column: 25, scope: !832)
!834 = !DILocation(line: 307, column: 23, scope: !832)
!835 = !DILocation(line: 307, column: 9, scope: !829)
!836 = !DILocation(line: 308, column: 38, scope: !837)
!837 = distinct !DILexicalBlock(scope: !832, file: !3, line: 307, column: 41)
!838 = !DILocation(line: 308, column: 49, scope: !837)
!839 = !DILocation(line: 308, column: 52, scope: !837)
!840 = !DILocation(line: 308, column: 37, scope: !837)
!841 = !DILocation(line: 308, column: 64, scope: !837)
!842 = !DILocation(line: 308, column: 30, scope: !837)
!843 = !DILocation(line: 308, column: 13, scope: !837)
!844 = !DILocation(line: 308, column: 24, scope: !837)
!845 = !DILocation(line: 308, column: 27, scope: !837)
!846 = !DILocation(line: 309, column: 9, scope: !837)
!847 = !DILocation(line: 307, column: 36, scope: !832)
!848 = !DILocation(line: 307, column: 9, scope: !832)
!849 = distinct !{!849, !835, !850, !443, !444}
!850 = !DILocation(line: 309, column: 9, scope: !829)
!851 = !DILocation(line: 314, column: 18, scope: !852)
!852 = distinct !DILexicalBlock(scope: !802, file: !3, line: 314, column: 9)
!853 = !DILocation(line: 314, column: 16, scope: !852)
!854 = !DILocation(line: 314, column: 14, scope: !852)
!855 = !DILocation(line: 314, column: 34, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !3, line: 314, column: 9)
!857 = !DILocation(line: 314, column: 38, scope: !856)
!858 = !DILocation(line: 314, column: 36, scope: !856)
!859 = !DILocation(line: 314, column: 9, scope: !852)
!860 = !DILocation(line: 315, column: 26, scope: !861)
!861 = distinct !DILexicalBlock(scope: !856, file: !3, line: 314, column: 50)
!862 = !DILocation(line: 315, column: 34, scope: !861)
!863 = !DILocation(line: 315, column: 38, scope: !861)
!864 = !DILocation(line: 315, column: 36, scope: !861)
!865 = !DILocation(line: 315, column: 13, scope: !861)
!866 = !DILocation(line: 315, column: 21, scope: !861)
!867 = !DILocation(line: 315, column: 24, scope: !861)
!868 = !DILocation(line: 316, column: 9, scope: !861)
!869 = !DILocation(line: 314, column: 45, scope: !856)
!870 = !DILocation(line: 314, column: 9, scope: !856)
!871 = distinct !{!871, !859, !872, !443, !444}
!872 = !DILocation(line: 316, column: 9, scope: !852)
!873 = !DILocation(line: 317, column: 18, scope: !874)
!874 = distinct !DILexicalBlock(scope: !802, file: !3, line: 317, column: 9)
!875 = !DILocation(line: 317, column: 16, scope: !874)
!876 = !DILocation(line: 317, column: 14, scope: !874)
!877 = !DILocation(line: 317, column: 25, scope: !878)
!878 = distinct !DILexicalBlock(scope: !874, file: !3, line: 317, column: 9)
!879 = !DILocation(line: 317, column: 27, scope: !878)
!880 = !DILocation(line: 317, column: 9, scope: !874)
!881 = !DILocation(line: 318, column: 13, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !3, line: 317, column: 37)
!883 = !DILocation(line: 318, column: 21, scope: !882)
!884 = !DILocation(line: 318, column: 24, scope: !882)
!885 = !DILocation(line: 319, column: 9, scope: !882)
!886 = !DILocation(line: 317, column: 32, scope: !878)
!887 = !DILocation(line: 317, column: 9, scope: !878)
!888 = distinct !{!888, !880, !889, !443, !444}
!889 = !DILocation(line: 319, column: 9, scope: !874)
!890 = !DILocation(line: 320, column: 5, scope: !803)
!891 = !DILocation(line: 320, column: 5, scope: !802)
!892 = !DILocation(line: 321, column: 12, scope: !792)
!893 = !DILocation(line: 321, column: 5, scope: !792)
!894 = !DILocation(line: 322, column: 1, scope: !792)
!895 = distinct !DISubprogram(name: "HUF_DEltX1_set4", scope: !3, file: !3, line: 283, type: !896, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !898)
!896 = !DISubroutineType(types: !897)
!897 = !{!130, !50, !50}
!898 = !{!899, !900, !901}
!899 = !DILocalVariable(name: "symbol", arg: 1, scope: !895, file: !3, line: 283, type: !50)
!900 = !DILocalVariable(name: "nbBits", arg: 2, scope: !895, file: !3, line: 283, type: !50)
!901 = !DILocalVariable(name: "D4", scope: !895, file: !3, line: 284, type: !130)
!902 = !DILocation(line: 283, column: 33, scope: !895)
!903 = !DILocation(line: 283, column: 46, scope: !895)
!904 = !DILocation(line: 284, column: 5, scope: !895)
!905 = !DILocation(line: 284, column: 9, scope: !895)
!906 = !DILocation(line: 285, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !895, file: !3, line: 285, column: 9)
!908 = !DILocation(line: 285, column: 9, scope: !895)
!909 = !DILocation(line: 286, column: 15, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !3, line: 285, column: 31)
!911 = !DILocation(line: 286, column: 22, scope: !910)
!912 = !DILocation(line: 286, column: 30, scope: !910)
!913 = !DILocation(line: 286, column: 28, scope: !910)
!914 = !DILocation(line: 286, column: 14, scope: !910)
!915 = !DILocation(line: 286, column: 12, scope: !910)
!916 = !DILocation(line: 287, column: 5, scope: !910)
!917 = !DILocation(line: 288, column: 14, scope: !918)
!918 = distinct !DILexicalBlock(scope: !907, file: !3, line: 287, column: 12)
!919 = !DILocation(line: 288, column: 24, scope: !918)
!920 = !DILocation(line: 288, column: 31, scope: !918)
!921 = !DILocation(line: 288, column: 21, scope: !918)
!922 = !DILocation(line: 288, column: 12, scope: !918)
!923 = !DILocation(line: 290, column: 8, scope: !895)
!924 = !DILocation(line: 291, column: 12, scope: !895)
!925 = !DILocation(line: 292, column: 1, scope: !895)
!926 = !DILocation(line: 291, column: 5, scope: !895)
!927 = !DILocation(line: 141, column: 35, scope: !126)
!928 = !DILocation(line: 141, column: 47, scope: !126)
!929 = !DILocation(line: 143, column: 5, scope: !126)
!930 = !DILocation(line: 143, column: 5, scope: !139)
!931 = !DILocation(line: 144, column: 1, scope: !126)
!932 = distinct !DISubprogram(name: "HUF_decompress1X1_usingDTable", scope: !3, file: !3, line: 749, type: !933, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{!82, !129, !82, !158, !82, !783}
!935 = !{!936, !937, !938, !939, !940, !941}
!936 = !DILocalVariable(name: "dst", arg: 1, scope: !932, file: !3, line: 750, type: !129)
!937 = !DILocalVariable(name: "dstSize", arg: 2, scope: !932, file: !3, line: 750, type: !82)
!938 = !DILocalVariable(name: "cSrc", arg: 3, scope: !932, file: !3, line: 751, type: !158)
!939 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !932, file: !3, line: 751, type: !82)
!940 = !DILocalVariable(name: "DTable", arg: 5, scope: !932, file: !3, line: 752, type: !783)
!941 = !DILocalVariable(name: "dtd", scope: !932, file: !3, line: 754, type: !258)
!942 = !DILocation(line: 750, column: 17, scope: !932)
!943 = !DILocation(line: 750, column: 30, scope: !932)
!944 = !DILocation(line: 751, column: 17, scope: !932)
!945 = !DILocation(line: 751, column: 30, scope: !932)
!946 = !DILocation(line: 752, column: 23, scope: !932)
!947 = !DILocation(line: 754, column: 5, scope: !932)
!948 = !DILocation(line: 754, column: 16, scope: !932)
!949 = !DILocation(line: 754, column: 40, scope: !932)
!950 = !DILocation(line: 754, column: 22, scope: !932)
!951 = !DILocation(line: 755, column: 13, scope: !952)
!952 = distinct !DILexicalBlock(scope: !932, file: !3, line: 755, column: 9)
!953 = !DILocation(line: 755, column: 9, scope: !952)
!954 = !DILocation(line: 755, column: 23, scope: !952)
!955 = !DILocation(line: 755, column: 9, scope: !932)
!956 = !DILocation(line: 755, column: 29, scope: !952)
!957 = !DILocation(line: 756, column: 51, scope: !932)
!958 = !DILocation(line: 756, column: 56, scope: !932)
!959 = !DILocation(line: 756, column: 65, scope: !932)
!960 = !DILocation(line: 756, column: 71, scope: !932)
!961 = !DILocation(line: 756, column: 81, scope: !932)
!962 = !DILocation(line: 756, column: 12, scope: !932)
!963 = !DILocation(line: 756, column: 5, scope: !932)
!964 = !DILocation(line: 757, column: 1, scope: !932)
!965 = distinct !DISubprogram(name: "HUF_decompress1X1_usingDTable_internal", scope: !3, file: !3, line: 724, type: !966, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!82, !129, !82, !158, !82, !783, !87}
!968 = !{!969, !970, !971, !972, !973, !974}
!969 = !DILocalVariable(name: "dst", arg: 1, scope: !965, file: !3, line: 724, type: !129)
!970 = !DILocalVariable(name: "dstSize", arg: 2, scope: !965, file: !3, line: 724, type: !82)
!971 = !DILocalVariable(name: "cSrc", arg: 3, scope: !965, file: !3, line: 724, type: !158)
!972 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !965, file: !3, line: 724, type: !82)
!973 = !DILocalVariable(name: "DTable", arg: 5, scope: !965, file: !3, line: 724, type: !783)
!974 = !DILocalVariable(name: "bmi2", arg: 6, scope: !965, file: !3, line: 724, type: !87)
!975 = !DILocation(line: 724, column: 1, scope: !965)
!976 = !DILocation(line: 724, column: 1, scope: !977)
!977 = distinct !DILexicalBlock(scope: !965, file: !3, line: 724, column: 1)
!978 = !DILocation(line: 724, column: 1, scope: !979)
!979 = distinct !DILexicalBlock(scope: !977, file: !3, line: 724, column: 1)
!980 = distinct !DISubprogram(name: "HUF_decompress1X1_DCtx_wksp", scope: !3, file: !3, line: 759, type: !981, scopeLine: 762, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{!82, !217, !129, !82, !158, !82, !129, !82}
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991, !992}
!984 = !DILocalVariable(name: "DCtx", arg: 1, scope: !980, file: !3, line: 759, type: !217)
!985 = !DILocalVariable(name: "dst", arg: 2, scope: !980, file: !3, line: 759, type: !129)
!986 = !DILocalVariable(name: "dstSize", arg: 3, scope: !980, file: !3, line: 759, type: !82)
!987 = !DILocalVariable(name: "cSrc", arg: 4, scope: !980, file: !3, line: 760, type: !158)
!988 = !DILocalVariable(name: "cSrcSize", arg: 5, scope: !980, file: !3, line: 760, type: !82)
!989 = !DILocalVariable(name: "workSpace", arg: 6, scope: !980, file: !3, line: 761, type: !129)
!990 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !980, file: !3, line: 761, type: !82)
!991 = !DILocalVariable(name: "ip", scope: !980, file: !3, line: 763, type: !88)
!992 = !DILocalVariable(name: "hSize", scope: !980, file: !3, line: 765, type: !286)
!993 = !DILocation(line: 759, column: 48, scope: !980)
!994 = !DILocation(line: 759, column: 60, scope: !980)
!995 = !DILocation(line: 759, column: 72, scope: !980)
!996 = !DILocation(line: 760, column: 48, scope: !980)
!997 = !DILocation(line: 760, column: 61, scope: !980)
!998 = !DILocation(line: 761, column: 42, scope: !980)
!999 = !DILocation(line: 761, column: 60, scope: !980)
!1000 = !DILocation(line: 763, column: 5, scope: !980)
!1001 = !DILocation(line: 763, column: 17, scope: !980)
!1002 = !DILocation(line: 763, column: 36, scope: !980)
!1003 = !DILocation(line: 765, column: 5, scope: !980)
!1004 = !DILocation(line: 765, column: 18, scope: !980)
!1005 = !DILocation(line: 765, column: 48, scope: !980)
!1006 = !DILocation(line: 765, column: 54, scope: !980)
!1007 = !DILocation(line: 765, column: 60, scope: !980)
!1008 = !DILocation(line: 765, column: 70, scope: !980)
!1009 = !DILocation(line: 765, column: 81, scope: !980)
!1010 = !DILocation(line: 765, column: 26, scope: !980)
!1011 = !DILocation(line: 766, column: 21, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !980, file: !3, line: 766, column: 9)
!1013 = !DILocation(line: 766, column: 9, scope: !1012)
!1014 = !DILocation(line: 766, column: 9, scope: !980)
!1015 = !DILocation(line: 766, column: 36, scope: !1012)
!1016 = !DILocation(line: 766, column: 29, scope: !1012)
!1017 = !DILocation(line: 767, column: 9, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !980, file: !3, line: 767, column: 9)
!1019 = !DILocation(line: 767, column: 18, scope: !1018)
!1020 = !DILocation(line: 767, column: 15, scope: !1018)
!1021 = !DILocation(line: 767, column: 9, scope: !980)
!1022 = !DILocation(line: 767, column: 28, scope: !1018)
!1023 = !DILocation(line: 768, column: 11, scope: !980)
!1024 = !DILocation(line: 768, column: 8, scope: !980)
!1025 = !DILocation(line: 768, column: 30, scope: !980)
!1026 = !DILocation(line: 768, column: 27, scope: !980)
!1027 = !DILocation(line: 770, column: 51, scope: !980)
!1028 = !DILocation(line: 770, column: 56, scope: !980)
!1029 = !DILocation(line: 770, column: 65, scope: !980)
!1030 = !DILocation(line: 770, column: 69, scope: !980)
!1031 = !DILocation(line: 770, column: 79, scope: !980)
!1032 = !DILocation(line: 770, column: 12, scope: !980)
!1033 = !DILocation(line: 770, column: 5, scope: !980)
!1034 = !DILocation(line: 771, column: 1, scope: !980)
!1035 = distinct !DISubprogram(name: "HUF_decompress4X1_usingDTable", scope: !3, file: !3, line: 774, type: !933, scopeLine: 778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042}
!1037 = !DILocalVariable(name: "dst", arg: 1, scope: !1035, file: !3, line: 775, type: !129)
!1038 = !DILocalVariable(name: "dstSize", arg: 2, scope: !1035, file: !3, line: 775, type: !82)
!1039 = !DILocalVariable(name: "cSrc", arg: 3, scope: !1035, file: !3, line: 776, type: !158)
!1040 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !1035, file: !3, line: 776, type: !82)
!1041 = !DILocalVariable(name: "DTable", arg: 5, scope: !1035, file: !3, line: 777, type: !783)
!1042 = !DILocalVariable(name: "dtd", scope: !1035, file: !3, line: 779, type: !258)
!1043 = !DILocation(line: 775, column: 17, scope: !1035)
!1044 = !DILocation(line: 775, column: 30, scope: !1035)
!1045 = !DILocation(line: 776, column: 17, scope: !1035)
!1046 = !DILocation(line: 776, column: 30, scope: !1035)
!1047 = !DILocation(line: 777, column: 23, scope: !1035)
!1048 = !DILocation(line: 779, column: 5, scope: !1035)
!1049 = !DILocation(line: 779, column: 16, scope: !1035)
!1050 = !DILocation(line: 779, column: 40, scope: !1035)
!1051 = !DILocation(line: 779, column: 22, scope: !1035)
!1052 = !DILocation(line: 780, column: 13, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 780, column: 9)
!1054 = !DILocation(line: 780, column: 9, scope: !1053)
!1055 = !DILocation(line: 780, column: 23, scope: !1053)
!1056 = !DILocation(line: 780, column: 9, scope: !1035)
!1057 = !DILocation(line: 780, column: 29, scope: !1053)
!1058 = !DILocation(line: 781, column: 51, scope: !1035)
!1059 = !DILocation(line: 781, column: 56, scope: !1035)
!1060 = !DILocation(line: 781, column: 65, scope: !1035)
!1061 = !DILocation(line: 781, column: 71, scope: !1035)
!1062 = !DILocation(line: 781, column: 81, scope: !1035)
!1063 = !DILocation(line: 781, column: 12, scope: !1035)
!1064 = !DILocation(line: 781, column: 5, scope: !1035)
!1065 = !DILocation(line: 782, column: 1, scope: !1035)
!1066 = distinct !DISubprogram(name: "HUF_decompress4X1_usingDTable_internal", scope: !3, file: !3, line: 726, type: !966, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073}
!1068 = !DILocalVariable(name: "dst", arg: 1, scope: !1066, file: !3, line: 726, type: !129)
!1069 = !DILocalVariable(name: "dstSize", arg: 2, scope: !1066, file: !3, line: 726, type: !82)
!1070 = !DILocalVariable(name: "cSrc", arg: 3, scope: !1066, file: !3, line: 726, type: !158)
!1071 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !1066, file: !3, line: 727, type: !82)
!1072 = !DILocalVariable(name: "DTable", arg: 5, scope: !1066, file: !3, line: 727, type: !783)
!1073 = !DILocalVariable(name: "bmi2", arg: 6, scope: !1066, file: !3, line: 727, type: !87)
!1074 = !DILocation(line: 726, column: 60, scope: !1066)
!1075 = !DILocation(line: 726, column: 72, scope: !1066)
!1076 = !DILocation(line: 726, column: 93, scope: !1066)
!1077 = !DILocation(line: 727, column: 28, scope: !1066)
!1078 = !DILocation(line: 727, column: 56, scope: !1066)
!1079 = !DILocation(line: 727, column: 68, scope: !1066)
!1080 = !DILocation(line: 730, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 730, column: 9)
!1082 = !DILocation(line: 730, column: 9, scope: !1066)
!1083 = !DILocation(line: 734, column: 60, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 730, column: 15)
!1085 = !DILocation(line: 734, column: 65, scope: !1084)
!1086 = !DILocation(line: 734, column: 74, scope: !1084)
!1087 = !DILocation(line: 734, column: 80, scope: !1084)
!1088 = !DILocation(line: 734, column: 90, scope: !1084)
!1089 = !DILocation(line: 734, column: 16, scope: !1084)
!1090 = !DILocation(line: 734, column: 9, scope: !1084)
!1091 = !DILocation(line: 744, column: 59, scope: !1066)
!1092 = !DILocation(line: 744, column: 64, scope: !1066)
!1093 = !DILocation(line: 744, column: 73, scope: !1066)
!1094 = !DILocation(line: 744, column: 79, scope: !1066)
!1095 = !DILocation(line: 744, column: 89, scope: !1066)
!1096 = !DILocation(line: 744, column: 12, scope: !1066)
!1097 = !DILocation(line: 744, column: 5, scope: !1066)
!1098 = !DILocation(line: 746, column: 1, scope: !1066)
!1099 = distinct !DISubprogram(name: "HUF_decompress4X1_DCtx_wksp", scope: !3, file: !3, line: 798, type: !981, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1105, !1106, !1107}
!1101 = !DILocalVariable(name: "dctx", arg: 1, scope: !1099, file: !3, line: 798, type: !217)
!1102 = !DILocalVariable(name: "dst", arg: 2, scope: !1099, file: !3, line: 798, type: !129)
!1103 = !DILocalVariable(name: "dstSize", arg: 3, scope: !1099, file: !3, line: 798, type: !82)
!1104 = !DILocalVariable(name: "cSrc", arg: 4, scope: !1099, file: !3, line: 799, type: !158)
!1105 = !DILocalVariable(name: "cSrcSize", arg: 5, scope: !1099, file: !3, line: 799, type: !82)
!1106 = !DILocalVariable(name: "workSpace", arg: 6, scope: !1099, file: !3, line: 800, type: !129)
!1107 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !1099, file: !3, line: 800, type: !82)
!1108 = !DILocation(line: 798, column: 48, scope: !1099)
!1109 = !DILocation(line: 798, column: 60, scope: !1099)
!1110 = !DILocation(line: 798, column: 72, scope: !1099)
!1111 = !DILocation(line: 799, column: 48, scope: !1099)
!1112 = !DILocation(line: 799, column: 61, scope: !1099)
!1113 = !DILocation(line: 800, column: 42, scope: !1099)
!1114 = !DILocation(line: 800, column: 60, scope: !1099)
!1115 = !DILocation(line: 802, column: 45, scope: !1099)
!1116 = !DILocation(line: 802, column: 51, scope: !1099)
!1117 = !DILocation(line: 802, column: 56, scope: !1099)
!1118 = !DILocation(line: 802, column: 65, scope: !1099)
!1119 = !DILocation(line: 802, column: 71, scope: !1099)
!1120 = !DILocation(line: 802, column: 81, scope: !1099)
!1121 = !DILocation(line: 802, column: 92, scope: !1099)
!1122 = !DILocation(line: 802, column: 12, scope: !1099)
!1123 = !DILocation(line: 802, column: 5, scope: !1099)
!1124 = distinct !DISubprogram(name: "HUF_decompress4X1_DCtx_wksp_bmi2", scope: !3, file: !3, line: 784, type: !1125, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!82, !217, !129, !82, !158, !82, !129, !82, !87}
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137}
!1128 = !DILocalVariable(name: "dctx", arg: 1, scope: !1124, file: !3, line: 784, type: !217)
!1129 = !DILocalVariable(name: "dst", arg: 2, scope: !1124, file: !3, line: 784, type: !129)
!1130 = !DILocalVariable(name: "dstSize", arg: 3, scope: !1124, file: !3, line: 784, type: !82)
!1131 = !DILocalVariable(name: "cSrc", arg: 4, scope: !1124, file: !3, line: 785, type: !158)
!1132 = !DILocalVariable(name: "cSrcSize", arg: 5, scope: !1124, file: !3, line: 785, type: !82)
!1133 = !DILocalVariable(name: "workSpace", arg: 6, scope: !1124, file: !3, line: 786, type: !129)
!1134 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !1124, file: !3, line: 786, type: !82)
!1135 = !DILocalVariable(name: "bmi2", arg: 8, scope: !1124, file: !3, line: 786, type: !87)
!1136 = !DILocalVariable(name: "ip", scope: !1124, file: !3, line: 788, type: !88)
!1137 = !DILocalVariable(name: "hSize", scope: !1124, file: !3, line: 790, type: !286)
!1138 = !DILocation(line: 784, column: 60, scope: !1124)
!1139 = !DILocation(line: 784, column: 72, scope: !1124)
!1140 = !DILocation(line: 784, column: 84, scope: !1124)
!1141 = !DILocation(line: 785, column: 48, scope: !1124)
!1142 = !DILocation(line: 785, column: 61, scope: !1124)
!1143 = !DILocation(line: 786, column: 42, scope: !1124)
!1144 = !DILocation(line: 786, column: 60, scope: !1124)
!1145 = !DILocation(line: 786, column: 74, scope: !1124)
!1146 = !DILocation(line: 788, column: 5, scope: !1124)
!1147 = !DILocation(line: 788, column: 17, scope: !1124)
!1148 = !DILocation(line: 788, column: 36, scope: !1124)
!1149 = !DILocation(line: 790, column: 5, scope: !1124)
!1150 = !DILocation(line: 790, column: 18, scope: !1124)
!1151 = !DILocation(line: 790, column: 53, scope: !1124)
!1152 = !DILocation(line: 790, column: 59, scope: !1124)
!1153 = !DILocation(line: 790, column: 65, scope: !1124)
!1154 = !DILocation(line: 790, column: 75, scope: !1124)
!1155 = !DILocation(line: 790, column: 86, scope: !1124)
!1156 = !DILocation(line: 790, column: 96, scope: !1124)
!1157 = !DILocation(line: 790, column: 26, scope: !1124)
!1158 = !DILocation(line: 791, column: 21, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 791, column: 9)
!1160 = !DILocation(line: 791, column: 9, scope: !1159)
!1161 = !DILocation(line: 791, column: 9, scope: !1124)
!1162 = !DILocation(line: 791, column: 36, scope: !1159)
!1163 = !DILocation(line: 791, column: 29, scope: !1159)
!1164 = !DILocation(line: 792, column: 9, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 792, column: 9)
!1166 = !DILocation(line: 792, column: 18, scope: !1165)
!1167 = !DILocation(line: 792, column: 15, scope: !1165)
!1168 = !DILocation(line: 792, column: 9, scope: !1124)
!1169 = !DILocation(line: 792, column: 28, scope: !1165)
!1170 = !DILocation(line: 793, column: 11, scope: !1124)
!1171 = !DILocation(line: 793, column: 8, scope: !1124)
!1172 = !DILocation(line: 793, column: 30, scope: !1124)
!1173 = !DILocation(line: 793, column: 27, scope: !1124)
!1174 = !DILocation(line: 795, column: 51, scope: !1124)
!1175 = !DILocation(line: 795, column: 56, scope: !1124)
!1176 = !DILocation(line: 795, column: 65, scope: !1124)
!1177 = !DILocation(line: 795, column: 69, scope: !1124)
!1178 = !DILocation(line: 795, column: 79, scope: !1124)
!1179 = !DILocation(line: 795, column: 85, scope: !1124)
!1180 = !DILocation(line: 795, column: 12, scope: !1124)
!1181 = !DILocation(line: 795, column: 5, scope: !1124)
!1182 = !DILocation(line: 796, column: 1, scope: !1124)
!1183 = distinct !DISubprogram(name: "HUF_readDTableX2_wksp", scope: !3, file: !3, line: 1041, type: !215, scopeLine: 1044, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189}
!1185 = !DILocalVariable(name: "DTable", arg: 1, scope: !1183, file: !3, line: 1041, type: !217)
!1186 = !DILocalVariable(name: "src", arg: 2, scope: !1183, file: !3, line: 1042, type: !158)
!1187 = !DILocalVariable(name: "srcSize", arg: 3, scope: !1183, file: !3, line: 1042, type: !82)
!1188 = !DILocalVariable(name: "workSpace", arg: 4, scope: !1183, file: !3, line: 1043, type: !129)
!1189 = !DILocalVariable(name: "wkspSize", arg: 5, scope: !1183, file: !3, line: 1043, type: !82)
!1190 = !DILocation(line: 1041, column: 42, scope: !1183)
!1191 = !DILocation(line: 1042, column: 36, scope: !1183)
!1192 = !DILocation(line: 1042, column: 48, scope: !1183)
!1193 = !DILocation(line: 1043, column: 36, scope: !1183)
!1194 = !DILocation(line: 1043, column: 54, scope: !1183)
!1195 = !DILocation(line: 1045, column: 39, scope: !1183)
!1196 = !DILocation(line: 1045, column: 47, scope: !1183)
!1197 = !DILocation(line: 1045, column: 52, scope: !1183)
!1198 = !DILocation(line: 1045, column: 61, scope: !1183)
!1199 = !DILocation(line: 1045, column: 72, scope: !1183)
!1200 = !DILocation(line: 1045, column: 12, scope: !1183)
!1201 = !DILocation(line: 1045, column: 5, scope: !1183)
!1202 = distinct !DISubprogram(name: "HUF_readDTableX2_wksp_bmi2", scope: !3, file: !3, line: 1048, type: !239, scopeLine: 1051, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1203)
!1203 = !{!1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1219, !1220, !1222, !1224, !1225, !1229, !1231, !1235, !1236, !1239, !1241, !1242, !1243, !1247, !1249, !1250, !1254}
!1204 = !DILocalVariable(name: "DTable", arg: 1, scope: !1202, file: !3, line: 1048, type: !217)
!1205 = !DILocalVariable(name: "src", arg: 2, scope: !1202, file: !3, line: 1049, type: !158)
!1206 = !DILocalVariable(name: "srcSize", arg: 3, scope: !1202, file: !3, line: 1049, type: !82)
!1207 = !DILocalVariable(name: "workSpace", arg: 4, scope: !1202, file: !3, line: 1050, type: !129)
!1208 = !DILocalVariable(name: "wkspSize", arg: 5, scope: !1202, file: !3, line: 1050, type: !82)
!1209 = !DILocalVariable(name: "bmi2", arg: 6, scope: !1202, file: !3, line: 1050, type: !87)
!1210 = !DILocalVariable(name: "tableLog", scope: !1202, file: !3, line: 1052, type: !66)
!1211 = !DILocalVariable(name: "maxW", scope: !1202, file: !3, line: 1052, type: !66)
!1212 = !DILocalVariable(name: "nbSymbols", scope: !1202, file: !3, line: 1052, type: !66)
!1213 = !DILocalVariable(name: "dtd", scope: !1202, file: !3, line: 1053, type: !258)
!1214 = !DILocalVariable(name: "maxTableLog", scope: !1202, file: !3, line: 1054, type: !66)
!1215 = !DILocalVariable(name: "iSize", scope: !1202, file: !3, line: 1055, type: !82)
!1216 = !DILocalVariable(name: "dtPtr", scope: !1202, file: !3, line: 1056, type: !129)
!1217 = !DILocalVariable(name: "dt", scope: !1202, file: !3, line: 1057, type: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1219 = !DILocalVariable(name: "rankStart", scope: !1202, file: !3, line: 1058, type: !769)
!1220 = !DILocalVariable(name: "wksp", scope: !1202, file: !3, line: 1060, type: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!1222 = !DILocalVariable(name: "w", scope: !1223, file: !3, line: 1083, type: !66)
!1223 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1083, column: 5)
!1224 = !DILocalVariable(name: "nextRankStart", scope: !1223, file: !3, line: 1083, type: !66)
!1225 = !DILocalVariable(name: "curr", scope: !1226, file: !3, line: 1085, type: !66)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 1084, column: 34)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 1084, column: 9)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1084, column: 9)
!1229 = !DILocalVariable(name: "s", scope: !1230, file: !3, line: 1094, type: !66)
!1230 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1094, column: 5)
!1231 = !DILocalVariable(name: "w", scope: !1232, file: !3, line: 1096, type: !266)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 1095, column: 37)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 1095, column: 9)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 1095, column: 9)
!1235 = !DILocalVariable(name: "r", scope: !1232, file: !3, line: 1097, type: !266)
!1236 = !DILocalVariable(name: "rankVal0", scope: !1237, file: !3, line: 1104, type: !1238)
!1237 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1104, column: 5)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!1239 = !DILocalVariable(name: "rescale", scope: !1240, file: !3, line: 1105, type: !272)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1105, column: 9)
!1241 = !DILocalVariable(name: "nextRankVal", scope: !1240, file: !3, line: 1106, type: !66)
!1242 = !DILocalVariable(name: "w", scope: !1240, file: !3, line: 1107, type: !66)
!1243 = !DILocalVariable(name: "curr", scope: !1244, file: !3, line: 1109, type: !66)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 1108, column: 38)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 1108, column: 13)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1108, column: 13)
!1247 = !DILocalVariable(name: "minBits", scope: !1248, file: !3, line: 1113, type: !266)
!1248 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1113, column: 9)
!1249 = !DILocalVariable(name: "consumed", scope: !1248, file: !3, line: 1114, type: !66)
!1250 = !DILocalVariable(name: "rankValPtr", scope: !1251, file: !3, line: 1116, type: !1238)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 1115, column: 88)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 1115, column: 13)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1115, column: 13)
!1254 = !DILocalVariable(name: "w", scope: !1251, file: !3, line: 1117, type: !66)
!1255 = !DILocation(line: 1048, column: 47, scope: !1202)
!1256 = !DILocation(line: 1049, column: 36, scope: !1202)
!1257 = !DILocation(line: 1049, column: 48, scope: !1202)
!1258 = !DILocation(line: 1050, column: 36, scope: !1202)
!1259 = !DILocation(line: 1050, column: 54, scope: !1202)
!1260 = !DILocation(line: 1050, column: 68, scope: !1202)
!1261 = !DILocation(line: 1052, column: 5, scope: !1202)
!1262 = !DILocation(line: 1052, column: 9, scope: !1202)
!1263 = !DILocation(line: 1052, column: 19, scope: !1202)
!1264 = !DILocation(line: 1052, column: 25, scope: !1202)
!1265 = !DILocation(line: 1053, column: 5, scope: !1202)
!1266 = !DILocation(line: 1053, column: 16, scope: !1202)
!1267 = !DILocation(line: 1053, column: 40, scope: !1202)
!1268 = !DILocation(line: 1053, column: 22, scope: !1202)
!1269 = !DILocation(line: 1054, column: 5, scope: !1202)
!1270 = !DILocation(line: 1054, column: 9, scope: !1202)
!1271 = !DILocation(line: 1054, column: 27, scope: !1202)
!1272 = !DILocation(line: 1054, column: 23, scope: !1202)
!1273 = !DILocation(line: 1055, column: 5, scope: !1202)
!1274 = !DILocation(line: 1055, column: 12, scope: !1202)
!1275 = !DILocation(line: 1056, column: 5, scope: !1202)
!1276 = !DILocation(line: 1056, column: 11, scope: !1202)
!1277 = !DILocation(line: 1056, column: 19, scope: !1202)
!1278 = !DILocation(line: 1056, column: 25, scope: !1202)
!1279 = !DILocation(line: 1057, column: 5, scope: !1202)
!1280 = !DILocation(line: 1057, column: 23, scope: !1202)
!1281 = !DILocation(line: 1057, column: 41, scope: !1202)
!1282 = !DILocation(line: 1058, column: 5, scope: !1202)
!1283 = !DILocation(line: 1058, column: 10, scope: !1202)
!1284 = !DILocation(line: 1060, column: 5, scope: !1202)
!1285 = !DILocation(line: 1060, column: 39, scope: !1202)
!1286 = !DILocation(line: 1060, column: 75, scope: !1202)
!1287 = !DILocation(line: 1062, column: 25, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1062, column: 9)
!1289 = !DILocation(line: 1062, column: 23, scope: !1288)
!1290 = !DILocation(line: 1062, column: 9, scope: !1202)
!1291 = !DILocation(line: 1062, column: 35, scope: !1288)
!1292 = !DILocation(line: 1064, column: 17, scope: !1202)
!1293 = !DILocation(line: 1064, column: 23, scope: !1202)
!1294 = !DILocation(line: 1064, column: 34, scope: !1202)
!1295 = !DILocation(line: 1064, column: 15, scope: !1202)
!1296 = !DILocation(line: 1065, column: 5, scope: !1202)
!1297 = !DILocation(line: 1066, column: 5, scope: !1202)
!1298 = !DILocation(line: 1069, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1069, column: 9)
!1300 = !DILocation(line: 1069, column: 21, scope: !1299)
!1301 = !DILocation(line: 1069, column: 9, scope: !1202)
!1302 = !DILocation(line: 1069, column: 41, scope: !1299)
!1303 = !DILocation(line: 1072, column: 32, scope: !1202)
!1304 = !DILocation(line: 1072, column: 38, scope: !1202)
!1305 = !DILocation(line: 1072, column: 75, scope: !1202)
!1306 = !DILocation(line: 1072, column: 81, scope: !1202)
!1307 = !DILocation(line: 1072, column: 115, scope: !1202)
!1308 = !DILocation(line: 1072, column: 120, scope: !1202)
!1309 = !DILocation(line: 1072, column: 129, scope: !1202)
!1310 = !DILocation(line: 1072, column: 135, scope: !1202)
!1311 = !DILocation(line: 1072, column: 173, scope: !1202)
!1312 = !DILocation(line: 1072, column: 13, scope: !1202)
!1313 = !DILocation(line: 1072, column: 11, scope: !1202)
!1314 = !DILocation(line: 1073, column: 21, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1073, column: 9)
!1316 = !DILocation(line: 1073, column: 9, scope: !1315)
!1317 = !DILocation(line: 1073, column: 9, scope: !1202)
!1318 = !DILocation(line: 1073, column: 36, scope: !1315)
!1319 = !DILocation(line: 1073, column: 29, scope: !1315)
!1320 = !DILocation(line: 1076, column: 9, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1076, column: 9)
!1322 = !DILocation(line: 1076, column: 20, scope: !1321)
!1323 = !DILocation(line: 1076, column: 18, scope: !1321)
!1324 = !DILocation(line: 1076, column: 9, scope: !1202)
!1325 = !DILocation(line: 1076, column: 33, scope: !1321)
!1326 = !DILocation(line: 1077, column: 9, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1077, column: 9)
!1328 = !DILocation(line: 1077, column: 18, scope: !1327)
!1329 = !DILocation(line: 1077, column: 47, scope: !1327)
!1330 = !DILocation(line: 1077, column: 50, scope: !1327)
!1331 = !DILocation(line: 1077, column: 62, scope: !1327)
!1332 = !DILocation(line: 1077, column: 9, scope: !1202)
!1333 = !DILocation(line: 1077, column: 103, scope: !1327)
!1334 = !DILocation(line: 1077, column: 91, scope: !1327)
!1335 = !DILocation(line: 1080, column: 17, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1080, column: 5)
!1337 = !DILocation(line: 1080, column: 15, scope: !1336)
!1338 = !DILocation(line: 1080, column: 10, scope: !1336)
!1339 = !DILocation(line: 1080, column: 27, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 1080, column: 5)
!1341 = !DILocation(line: 1080, column: 33, scope: !1340)
!1342 = !DILocation(line: 1080, column: 43, scope: !1340)
!1343 = !DILocation(line: 1080, column: 48, scope: !1340)
!1344 = !DILocation(line: 1080, column: 5, scope: !1336)
!1345 = !DILocation(line: 1080, column: 62, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 1080, column: 61)
!1347 = !DILocation(line: 1080, column: 57, scope: !1340)
!1348 = !DILocation(line: 1080, column: 5, scope: !1340)
!1349 = distinct !{!1349, !1344, !1350, !443, !444}
!1350 = !DILocation(line: 1080, column: 62, scope: !1336)
!1351 = !DILocation(line: 1083, column: 9, scope: !1223)
!1352 = !DILocation(line: 1083, column: 13, scope: !1223)
!1353 = !DILocation(line: 1083, column: 16, scope: !1223)
!1354 = !DILocation(line: 1084, column: 15, scope: !1228)
!1355 = !DILocation(line: 1084, column: 14, scope: !1228)
!1356 = !DILocation(line: 1084, column: 19, scope: !1227)
!1357 = !DILocation(line: 1084, column: 21, scope: !1227)
!1358 = !DILocation(line: 1084, column: 25, scope: !1227)
!1359 = !DILocation(line: 1084, column: 20, scope: !1227)
!1360 = !DILocation(line: 1084, column: 9, scope: !1228)
!1361 = !DILocation(line: 1085, column: 13, scope: !1226)
!1362 = !DILocation(line: 1085, column: 17, scope: !1226)
!1363 = !DILocation(line: 1085, column: 24, scope: !1226)
!1364 = !DILocation(line: 1086, column: 30, scope: !1226)
!1365 = !DILocation(line: 1086, column: 36, scope: !1226)
!1366 = !DILocation(line: 1086, column: 46, scope: !1226)
!1367 = !DILocation(line: 1086, column: 27, scope: !1226)
!1368 = !DILocation(line: 1087, column: 28, scope: !1226)
!1369 = !DILocation(line: 1087, column: 13, scope: !1226)
!1370 = !DILocation(line: 1087, column: 23, scope: !1226)
!1371 = !DILocation(line: 1087, column: 26, scope: !1226)
!1372 = !DILocation(line: 1088, column: 9, scope: !1227)
!1373 = !DILocation(line: 1088, column: 9, scope: !1226)
!1374 = !DILocation(line: 1084, column: 30, scope: !1227)
!1375 = !DILocation(line: 1084, column: 9, scope: !1227)
!1376 = distinct !{!1376, !1360, !1377, !443, !444}
!1377 = !DILocation(line: 1088, column: 9, scope: !1228)
!1378 = !DILocation(line: 1089, column: 24, scope: !1223)
!1379 = !DILocation(line: 1089, column: 9, scope: !1223)
!1380 = !DILocation(line: 1089, column: 22, scope: !1223)
!1381 = !DILocation(line: 1090, column: 29, scope: !1223)
!1382 = !DILocation(line: 1090, column: 9, scope: !1223)
!1383 = !DILocation(line: 1090, column: 19, scope: !1223)
!1384 = !DILocation(line: 1090, column: 23, scope: !1223)
!1385 = !DILocation(line: 1090, column: 27, scope: !1223)
!1386 = !DILocation(line: 1091, column: 5, scope: !1202)
!1387 = !DILocation(line: 1094, column: 9, scope: !1230)
!1388 = !DILocation(line: 1094, column: 13, scope: !1230)
!1389 = !DILocation(line: 1095, column: 15, scope: !1234)
!1390 = !DILocation(line: 1095, column: 14, scope: !1234)
!1391 = !DILocation(line: 1095, column: 19, scope: !1233)
!1392 = !DILocation(line: 1095, column: 21, scope: !1233)
!1393 = !DILocation(line: 1095, column: 20, scope: !1233)
!1394 = !DILocation(line: 1095, column: 9, scope: !1234)
!1395 = !DILocation(line: 1096, column: 13, scope: !1232)
!1396 = !DILocation(line: 1096, column: 23, scope: !1232)
!1397 = !DILocation(line: 1096, column: 27, scope: !1232)
!1398 = !DILocation(line: 1096, column: 33, scope: !1232)
!1399 = !DILocation(line: 1096, column: 44, scope: !1232)
!1400 = !DILocation(line: 1097, column: 13, scope: !1232)
!1401 = !DILocation(line: 1097, column: 23, scope: !1232)
!1402 = !DILocation(line: 1097, column: 27, scope: !1232)
!1403 = !DILocation(line: 1097, column: 37, scope: !1232)
!1404 = !DILocation(line: 1097, column: 39, scope: !1232)
!1405 = !DILocation(line: 1098, column: 50, scope: !1232)
!1406 = !DILocation(line: 1098, column: 44, scope: !1232)
!1407 = !DILocation(line: 1098, column: 13, scope: !1232)
!1408 = !DILocation(line: 1098, column: 19, scope: !1232)
!1409 = !DILocation(line: 1098, column: 32, scope: !1232)
!1410 = !DILocation(line: 1098, column: 35, scope: !1232)
!1411 = !DILocation(line: 1098, column: 42, scope: !1232)
!1412 = !DILocation(line: 1099, column: 9, scope: !1233)
!1413 = !DILocation(line: 1099, column: 9, scope: !1232)
!1414 = !DILocation(line: 1095, column: 33, scope: !1233)
!1415 = !DILocation(line: 1095, column: 9, scope: !1233)
!1416 = distinct !{!1416, !1394, !1417, !443, !444}
!1417 = !DILocation(line: 1099, column: 9, scope: !1234)
!1418 = !DILocation(line: 1100, column: 9, scope: !1230)
!1419 = !DILocation(line: 1100, column: 22, scope: !1230)
!1420 = !DILocation(line: 1101, column: 5, scope: !1202)
!1421 = !DILocation(line: 1104, column: 9, scope: !1237)
!1422 = !DILocation(line: 1104, column: 20, scope: !1237)
!1423 = !DILocation(line: 1104, column: 31, scope: !1237)
!1424 = !DILocation(line: 1104, column: 37, scope: !1237)
!1425 = !DILocation(line: 1105, column: 13, scope: !1240)
!1426 = !DILocation(line: 1105, column: 23, scope: !1240)
!1427 = !DILocation(line: 1105, column: 34, scope: !1240)
!1428 = !DILocation(line: 1105, column: 46, scope: !1240)
!1429 = !DILocation(line: 1105, column: 45, scope: !1240)
!1430 = !DILocation(line: 1105, column: 56, scope: !1240)
!1431 = !DILocation(line: 1106, column: 13, scope: !1240)
!1432 = !DILocation(line: 1106, column: 17, scope: !1240)
!1433 = !DILocation(line: 1107, column: 13, scope: !1240)
!1434 = !DILocation(line: 1107, column: 17, scope: !1240)
!1435 = !DILocation(line: 1108, column: 19, scope: !1246)
!1436 = !DILocation(line: 1108, column: 18, scope: !1246)
!1437 = !DILocation(line: 1108, column: 23, scope: !1245)
!1438 = !DILocation(line: 1108, column: 25, scope: !1245)
!1439 = !DILocation(line: 1108, column: 29, scope: !1245)
!1440 = !DILocation(line: 1108, column: 24, scope: !1245)
!1441 = !DILocation(line: 1108, column: 13, scope: !1246)
!1442 = !DILocation(line: 1109, column: 17, scope: !1244)
!1443 = !DILocation(line: 1109, column: 21, scope: !1244)
!1444 = !DILocation(line: 1109, column: 28, scope: !1244)
!1445 = !DILocation(line: 1110, column: 32, scope: !1244)
!1446 = !DILocation(line: 1110, column: 38, scope: !1244)
!1447 = !DILocation(line: 1110, column: 48, scope: !1244)
!1448 = !DILocation(line: 1110, column: 55, scope: !1244)
!1449 = !DILocation(line: 1110, column: 57, scope: !1244)
!1450 = !DILocation(line: 1110, column: 56, scope: !1244)
!1451 = !DILocation(line: 1110, column: 51, scope: !1244)
!1452 = !DILocation(line: 1110, column: 29, scope: !1244)
!1453 = !DILocation(line: 1111, column: 31, scope: !1244)
!1454 = !DILocation(line: 1111, column: 17, scope: !1244)
!1455 = !DILocation(line: 1111, column: 26, scope: !1244)
!1456 = !DILocation(line: 1111, column: 29, scope: !1244)
!1457 = !DILocation(line: 1112, column: 9, scope: !1245)
!1458 = !DILocation(line: 1112, column: 9, scope: !1244)
!1459 = !DILocation(line: 1108, column: 34, scope: !1245)
!1460 = !DILocation(line: 1108, column: 13, scope: !1245)
!1461 = distinct !{!1461, !1441, !1462, !443, !444}
!1462 = !DILocation(line: 1112, column: 9, scope: !1246)
!1463 = !DILocation(line: 1112, column: 13, scope: !1237)
!1464 = !DILocation(line: 1113, column: 13, scope: !1248)
!1465 = !DILocation(line: 1113, column: 23, scope: !1248)
!1466 = !DILocation(line: 1113, column: 33, scope: !1248)
!1467 = !DILocation(line: 1113, column: 41, scope: !1248)
!1468 = !DILocation(line: 1113, column: 46, scope: !1248)
!1469 = !DILocation(line: 1113, column: 44, scope: !1248)
!1470 = !DILocation(line: 1114, column: 13, scope: !1248)
!1471 = !DILocation(line: 1114, column: 17, scope: !1248)
!1472 = !DILocation(line: 1115, column: 29, scope: !1253)
!1473 = !DILocation(line: 1115, column: 27, scope: !1253)
!1474 = !DILocation(line: 1115, column: 18, scope: !1253)
!1475 = !DILocation(line: 1115, column: 38, scope: !1252)
!1476 = !DILocation(line: 1115, column: 49, scope: !1252)
!1477 = !DILocation(line: 1115, column: 63, scope: !1252)
!1478 = !DILocation(line: 1115, column: 61, scope: !1252)
!1479 = !DILocation(line: 1115, column: 71, scope: !1252)
!1480 = !DILocation(line: 1115, column: 47, scope: !1252)
!1481 = !DILocation(line: 1115, column: 13, scope: !1253)
!1482 = !DILocation(line: 1116, column: 17, scope: !1251)
!1483 = !DILocation(line: 1116, column: 28, scope: !1251)
!1484 = !DILocation(line: 1116, column: 41, scope: !1251)
!1485 = !DILocation(line: 1116, column: 47, scope: !1251)
!1486 = !DILocation(line: 1116, column: 55, scope: !1251)
!1487 = !DILocation(line: 1117, column: 17, scope: !1251)
!1488 = !DILocation(line: 1117, column: 21, scope: !1251)
!1489 = !DILocation(line: 1118, column: 24, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1118, column: 17)
!1491 = !DILocation(line: 1118, column: 22, scope: !1490)
!1492 = !DILocation(line: 1118, column: 29, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 1118, column: 17)
!1494 = !DILocation(line: 1118, column: 33, scope: !1493)
!1495 = !DILocation(line: 1118, column: 37, scope: !1493)
!1496 = !DILocation(line: 1118, column: 31, scope: !1493)
!1497 = !DILocation(line: 1118, column: 17, scope: !1490)
!1498 = !DILocation(line: 1119, column: 37, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1118, column: 46)
!1500 = !DILocation(line: 1119, column: 46, scope: !1499)
!1501 = !DILocation(line: 1119, column: 52, scope: !1499)
!1502 = !DILocation(line: 1119, column: 49, scope: !1499)
!1503 = !DILocation(line: 1119, column: 21, scope: !1499)
!1504 = !DILocation(line: 1119, column: 32, scope: !1499)
!1505 = !DILocation(line: 1119, column: 35, scope: !1499)
!1506 = !DILocation(line: 1120, column: 5, scope: !1499)
!1507 = !DILocation(line: 1118, column: 42, scope: !1493)
!1508 = !DILocation(line: 1118, column: 17, scope: !1493)
!1509 = distinct !{!1509, !1497, !1510, !443, !444}
!1510 = !DILocation(line: 1120, column: 5, scope: !1490)
!1511 = !DILocation(line: 1120, column: 9, scope: !1252)
!1512 = !DILocation(line: 1120, column: 9, scope: !1251)
!1513 = !DILocation(line: 1115, column: 84, scope: !1252)
!1514 = !DILocation(line: 1115, column: 13, scope: !1252)
!1515 = distinct !{!1515, !1481, !1516, !443, !444}
!1516 = !DILocation(line: 1120, column: 9, scope: !1253)
!1517 = !DILocation(line: 1120, column: 13, scope: !1237)
!1518 = !DILocation(line: 1120, column: 17, scope: !1202)
!1519 = !DILocation(line: 1122, column: 22, scope: !1202)
!1520 = !DILocation(line: 1122, column: 26, scope: !1202)
!1521 = !DILocation(line: 1123, column: 20, scope: !1202)
!1522 = !DILocation(line: 1123, column: 26, scope: !1202)
!1523 = !DILocation(line: 1124, column: 20, scope: !1202)
!1524 = !DILocation(line: 1124, column: 26, scope: !1202)
!1525 = !DILocation(line: 1124, column: 38, scope: !1202)
!1526 = !DILocation(line: 1124, column: 44, scope: !1202)
!1527 = !DILocation(line: 1124, column: 53, scope: !1202)
!1528 = !DILocation(line: 1125, column: 20, scope: !1202)
!1529 = !DILocation(line: 1125, column: 28, scope: !1202)
!1530 = !DILocation(line: 1122, column: 5, scope: !1202)
!1531 = !DILocation(line: 1127, column: 26, scope: !1202)
!1532 = !DILocation(line: 1127, column: 20, scope: !1202)
!1533 = !DILocation(line: 1127, column: 9, scope: !1202)
!1534 = !DILocation(line: 1127, column: 18, scope: !1202)
!1535 = !DILocation(line: 1128, column: 9, scope: !1202)
!1536 = !DILocation(line: 1128, column: 19, scope: !1202)
!1537 = !DILocation(line: 1129, column: 5, scope: !1202)
!1538 = !DILocation(line: 1130, column: 12, scope: !1202)
!1539 = !DILocation(line: 1130, column: 5, scope: !1202)
!1540 = !DILocation(line: 1131, column: 1, scope: !1202)
!1541 = distinct !DISubprogram(name: "HUF_fillDTableX2", scope: !3, file: !3, line: 986, type: !1542, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1548)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !90, !266, !1544, !1546, !1547, !266, !266}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1565, !1566, !1567, !1570, !1571, !1572}
!1549 = !DILocalVariable(name: "DTable", arg: 1, scope: !1541, file: !3, line: 986, type: !90)
!1550 = !DILocalVariable(name: "targetLog", arg: 2, scope: !1541, file: !3, line: 986, type: !266)
!1551 = !DILocalVariable(name: "sortedList", arg: 3, scope: !1541, file: !3, line: 987, type: !1544)
!1552 = !DILocalVariable(name: "rankStart", arg: 4, scope: !1541, file: !3, line: 988, type: !1546)
!1553 = !DILocalVariable(name: "rankValOrigin", arg: 5, scope: !1541, file: !3, line: 988, type: !1547)
!1554 = !DILocalVariable(name: "maxWeight", arg: 6, scope: !1541, file: !3, line: 988, type: !266)
!1555 = !DILocalVariable(name: "nbBitsBaseline", arg: 7, scope: !1541, file: !3, line: 989, type: !266)
!1556 = !DILocalVariable(name: "rankVal", scope: !1541, file: !3, line: 991, type: !1238)
!1557 = !DILocalVariable(name: "scaleLog", scope: !1541, file: !3, line: 992, type: !272)
!1558 = !DILocalVariable(name: "minBits", scope: !1541, file: !3, line: 993, type: !266)
!1559 = !DILocalVariable(name: "w", scope: !1541, file: !3, line: 994, type: !87)
!1560 = !DILocalVariable(name: "wEnd", scope: !1541, file: !3, line: 995, type: !272)
!1561 = !DILocalVariable(name: "begin", scope: !1562, file: !3, line: 999, type: !272)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 998, column: 32)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 998, column: 5)
!1564 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 998, column: 5)
!1565 = !DILocalVariable(name: "end", scope: !1562, file: !3, line: 1000, type: !272)
!1566 = !DILocalVariable(name: "nbBits", scope: !1562, file: !3, line: 1001, type: !266)
!1567 = !DILocalVariable(name: "start", scope: !1568, file: !3, line: 1005, type: !87)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 1003, column: 42)
!1569 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 1003, column: 13)
!1570 = !DILocalVariable(name: "length", scope: !1568, file: !3, line: 1006, type: !266)
!1571 = !DILocalVariable(name: "minWeight", scope: !1568, file: !3, line: 1007, type: !87)
!1572 = !DILocalVariable(name: "s", scope: !1568, file: !3, line: 1008, type: !87)
!1573 = !DILocation(line: 986, column: 42, scope: !1541)
!1574 = !DILocation(line: 986, column: 60, scope: !1541)
!1575 = !DILocation(line: 987, column: 50, scope: !1541)
!1576 = !DILocation(line: 988, column: 39, scope: !1541)
!1577 = !DILocation(line: 988, column: 64, scope: !1541)
!1578 = !DILocation(line: 988, column: 89, scope: !1541)
!1579 = !DILocation(line: 989, column: 38, scope: !1541)
!1580 = !DILocation(line: 991, column: 5, scope: !1541)
!1581 = !DILocation(line: 991, column: 16, scope: !1541)
!1582 = !DILocation(line: 991, column: 26, scope: !1541)
!1583 = !DILocation(line: 992, column: 5, scope: !1541)
!1584 = !DILocation(line: 992, column: 15, scope: !1541)
!1585 = !DILocation(line: 992, column: 26, scope: !1541)
!1586 = !DILocation(line: 992, column: 43, scope: !1541)
!1587 = !DILocation(line: 992, column: 41, scope: !1541)
!1588 = !DILocation(line: 993, column: 5, scope: !1541)
!1589 = !DILocation(line: 993, column: 15, scope: !1541)
!1590 = !DILocation(line: 993, column: 26, scope: !1541)
!1591 = !DILocation(line: 993, column: 43, scope: !1541)
!1592 = !DILocation(line: 993, column: 41, scope: !1541)
!1593 = !DILocation(line: 994, column: 5, scope: !1541)
!1594 = !DILocation(line: 994, column: 9, scope: !1541)
!1595 = !DILocation(line: 995, column: 5, scope: !1541)
!1596 = !DILocation(line: 995, column: 15, scope: !1541)
!1597 = !DILocation(line: 995, column: 27, scope: !1541)
!1598 = !DILocation(line: 995, column: 37, scope: !1541)
!1599 = !DILocation(line: 998, column: 12, scope: !1564)
!1600 = !DILocation(line: 998, column: 10, scope: !1564)
!1601 = !DILocation(line: 998, column: 17, scope: !1563)
!1602 = !DILocation(line: 998, column: 21, scope: !1563)
!1603 = !DILocation(line: 998, column: 19, scope: !1563)
!1604 = !DILocation(line: 998, column: 5, scope: !1564)
!1605 = !DILocation(line: 999, column: 9, scope: !1562)
!1606 = !DILocation(line: 999, column: 19, scope: !1562)
!1607 = !DILocation(line: 999, column: 32, scope: !1562)
!1608 = !DILocation(line: 999, column: 42, scope: !1562)
!1609 = !DILocation(line: 1000, column: 9, scope: !1562)
!1610 = !DILocation(line: 1000, column: 19, scope: !1562)
!1611 = !DILocation(line: 1000, column: 30, scope: !1562)
!1612 = !DILocation(line: 1000, column: 40, scope: !1562)
!1613 = !DILocation(line: 1000, column: 41, scope: !1562)
!1614 = !DILocation(line: 1001, column: 9, scope: !1562)
!1615 = !DILocation(line: 1001, column: 19, scope: !1562)
!1616 = !DILocation(line: 1001, column: 28, scope: !1562)
!1617 = !DILocation(line: 1001, column: 45, scope: !1562)
!1618 = !DILocation(line: 1001, column: 43, scope: !1562)
!1619 = !DILocation(line: 1003, column: 13, scope: !1569)
!1620 = !DILocation(line: 1003, column: 23, scope: !1569)
!1621 = !DILocation(line: 1003, column: 22, scope: !1569)
!1622 = !DILocation(line: 1003, column: 33, scope: !1569)
!1623 = !DILocation(line: 1003, column: 30, scope: !1569)
!1624 = !DILocation(line: 1003, column: 13, scope: !1562)
!1625 = !DILocation(line: 1005, column: 13, scope: !1568)
!1626 = !DILocation(line: 1005, column: 17, scope: !1568)
!1627 = !DILocation(line: 1005, column: 25, scope: !1568)
!1628 = !DILocation(line: 1005, column: 33, scope: !1568)
!1629 = !DILocation(line: 1006, column: 13, scope: !1568)
!1630 = !DILocation(line: 1006, column: 23, scope: !1568)
!1631 = !DILocation(line: 1006, column: 40, scope: !1568)
!1632 = !DILocation(line: 1006, column: 52, scope: !1568)
!1633 = !DILocation(line: 1006, column: 50, scope: !1568)
!1634 = !DILocation(line: 1006, column: 60, scope: !1568)
!1635 = !DILocation(line: 1006, column: 35, scope: !1568)
!1636 = !DILocation(line: 1007, column: 13, scope: !1568)
!1637 = !DILocation(line: 1007, column: 17, scope: !1568)
!1638 = !DILocation(line: 1007, column: 29, scope: !1568)
!1639 = !DILocation(line: 1007, column: 38, scope: !1568)
!1640 = !DILocation(line: 1007, column: 36, scope: !1568)
!1641 = !DILocation(line: 1008, column: 13, scope: !1568)
!1642 = !DILocation(line: 1008, column: 17, scope: !1568)
!1643 = !DILocation(line: 1009, column: 17, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 1009, column: 17)
!1645 = !DILocation(line: 1009, column: 27, scope: !1644)
!1646 = !DILocation(line: 1009, column: 17, scope: !1568)
!1647 = !DILocation(line: 1009, column: 42, scope: !1644)
!1648 = !DILocation(line: 1009, column: 32, scope: !1644)
!1649 = !DILocation(line: 1013, column: 22, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 1013, column: 13)
!1651 = !DILocation(line: 1013, column: 20, scope: !1650)
!1652 = !DILocation(line: 1013, column: 18, scope: !1650)
!1653 = !DILocation(line: 1013, column: 29, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 1013, column: 13)
!1655 = !DILocation(line: 1013, column: 34, scope: !1654)
!1656 = !DILocation(line: 1013, column: 31, scope: !1654)
!1657 = !DILocation(line: 1013, column: 13, scope: !1650)
!1658 = !DILocation(line: 1015, column: 21, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 1013, column: 44)
!1660 = !DILocation(line: 1015, column: 30, scope: !1659)
!1661 = !DILocation(line: 1015, column: 28, scope: !1659)
!1662 = !DILocation(line: 1015, column: 37, scope: !1659)
!1663 = !DILocation(line: 1015, column: 48, scope: !1659)
!1664 = !DILocation(line: 1016, column: 21, scope: !1659)
!1665 = !DILocation(line: 1016, column: 35, scope: !1659)
!1666 = !DILocation(line: 1016, column: 44, scope: !1659)
!1667 = !DILocation(line: 1016, column: 55, scope: !1659)
!1668 = !DILocation(line: 1017, column: 21, scope: !1659)
!1669 = !DILocation(line: 1017, column: 33, scope: !1659)
!1670 = !DILocation(line: 1018, column: 21, scope: !1659)
!1671 = !DILocation(line: 1018, column: 37, scope: !1659)
!1672 = !DILocation(line: 1018, column: 48, scope: !1659)
!1673 = !DILocation(line: 1018, column: 51, scope: !1659)
!1674 = !DILocation(line: 1014, column: 17, scope: !1659)
!1675 = !DILocation(line: 1019, column: 26, scope: !1659)
!1676 = !DILocation(line: 1019, column: 23, scope: !1659)
!1677 = !DILocation(line: 1020, column: 13, scope: !1659)
!1678 = !DILocation(line: 1013, column: 39, scope: !1654)
!1679 = !DILocation(line: 1013, column: 13, scope: !1654)
!1680 = distinct !{!1680, !1657, !1681, !443, !444}
!1681 = !DILocation(line: 1020, column: 13, scope: !1650)
!1682 = !DILocation(line: 1021, column: 9, scope: !1569)
!1683 = !DILocation(line: 1021, column: 9, scope: !1568)
!1684 = !DILocation(line: 1024, column: 17, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 1021, column: 16)
!1686 = !DILocation(line: 1024, column: 26, scope: !1685)
!1687 = !DILocation(line: 1024, column: 34, scope: !1685)
!1688 = !DILocation(line: 1024, column: 24, scope: !1685)
!1689 = !DILocation(line: 1025, column: 17, scope: !1685)
!1690 = !DILocation(line: 1025, column: 30, scope: !1685)
!1691 = !DILocation(line: 1025, column: 28, scope: !1685)
!1692 = !DILocation(line: 1025, column: 37, scope: !1685)
!1693 = !DILocation(line: 1025, column: 50, scope: !1685)
!1694 = !DILocation(line: 1025, column: 48, scope: !1685)
!1695 = !DILocation(line: 1026, column: 17, scope: !1685)
!1696 = !DILocation(line: 1026, column: 25, scope: !1685)
!1697 = !DILocation(line: 1023, column: 13, scope: !1685)
!1698 = !DILocation(line: 1029, column: 5, scope: !1563)
!1699 = !DILocation(line: 1029, column: 5, scope: !1562)
!1700 = !DILocation(line: 998, column: 27, scope: !1563)
!1701 = !DILocation(line: 998, column: 5, scope: !1563)
!1702 = distinct !{!1702, !1604, !1703, !443, !444}
!1703 = !DILocation(line: 1029, column: 5, scope: !1564)
!1704 = !DILocation(line: 1030, column: 1, scope: !1541)
!1705 = distinct !DISubprogram(name: "HUF_decompress1X2_usingDTable", scope: !3, file: !3, line: 1455, type: !933, scopeLine: 1459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712}
!1707 = !DILocalVariable(name: "dst", arg: 1, scope: !1705, file: !3, line: 1456, type: !129)
!1708 = !DILocalVariable(name: "dstSize", arg: 2, scope: !1705, file: !3, line: 1456, type: !82)
!1709 = !DILocalVariable(name: "cSrc", arg: 3, scope: !1705, file: !3, line: 1457, type: !158)
!1710 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !1705, file: !3, line: 1457, type: !82)
!1711 = !DILocalVariable(name: "DTable", arg: 5, scope: !1705, file: !3, line: 1458, type: !783)
!1712 = !DILocalVariable(name: "dtd", scope: !1705, file: !3, line: 1460, type: !258)
!1713 = !DILocation(line: 1456, column: 17, scope: !1705)
!1714 = !DILocation(line: 1456, column: 30, scope: !1705)
!1715 = !DILocation(line: 1457, column: 17, scope: !1705)
!1716 = !DILocation(line: 1457, column: 30, scope: !1705)
!1717 = !DILocation(line: 1458, column: 23, scope: !1705)
!1718 = !DILocation(line: 1460, column: 5, scope: !1705)
!1719 = !DILocation(line: 1460, column: 16, scope: !1705)
!1720 = !DILocation(line: 1460, column: 40, scope: !1705)
!1721 = !DILocation(line: 1460, column: 22, scope: !1705)
!1722 = !DILocation(line: 1461, column: 13, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 1461, column: 9)
!1724 = !DILocation(line: 1461, column: 9, scope: !1723)
!1725 = !DILocation(line: 1461, column: 23, scope: !1723)
!1726 = !DILocation(line: 1461, column: 9, scope: !1705)
!1727 = !DILocation(line: 1461, column: 29, scope: !1723)
!1728 = !DILocation(line: 1462, column: 51, scope: !1705)
!1729 = !DILocation(line: 1462, column: 56, scope: !1705)
!1730 = !DILocation(line: 1462, column: 65, scope: !1705)
!1731 = !DILocation(line: 1462, column: 71, scope: !1705)
!1732 = !DILocation(line: 1462, column: 81, scope: !1705)
!1733 = !DILocation(line: 1462, column: 12, scope: !1705)
!1734 = !DILocation(line: 1462, column: 5, scope: !1705)
!1735 = !DILocation(line: 1463, column: 1, scope: !1705)
!1736 = distinct !DISubprogram(name: "HUF_decompress1X2_usingDTable_internal", scope: !3, file: !3, line: 1453, type: !966, scopeLine: 1453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1737)
!1737 = !{!1738, !1739, !1740, !1741, !1742, !1743}
!1738 = !DILocalVariable(name: "dst", arg: 1, scope: !1736, file: !3, line: 1453, type: !129)
!1739 = !DILocalVariable(name: "dstSize", arg: 2, scope: !1736, file: !3, line: 1453, type: !82)
!1740 = !DILocalVariable(name: "cSrc", arg: 3, scope: !1736, file: !3, line: 1453, type: !158)
!1741 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !1736, file: !3, line: 1453, type: !82)
!1742 = !DILocalVariable(name: "DTable", arg: 5, scope: !1736, file: !3, line: 1453, type: !783)
!1743 = !DILocalVariable(name: "bmi2", arg: 6, scope: !1736, file: !3, line: 1453, type: !87)
!1744 = !DILocation(line: 1453, column: 1, scope: !1736)
!1745 = !DILocation(line: 1453, column: 1, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 1453, column: 1)
!1747 = !DILocation(line: 1453, column: 1, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 1453, column: 1)
!1749 = distinct !DISubprogram(name: "HUF_decompress1X2_DCtx_wksp", scope: !3, file: !3, line: 1465, type: !981, scopeLine: 1468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1750)
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759}
!1751 = !DILocalVariable(name: "DCtx", arg: 1, scope: !1749, file: !3, line: 1465, type: !217)
!1752 = !DILocalVariable(name: "dst", arg: 2, scope: !1749, file: !3, line: 1465, type: !129)
!1753 = !DILocalVariable(name: "dstSize", arg: 3, scope: !1749, file: !3, line: 1465, type: !82)
!1754 = !DILocalVariable(name: "cSrc", arg: 4, scope: !1749, file: !3, line: 1466, type: !158)
!1755 = !DILocalVariable(name: "cSrcSize", arg: 5, scope: !1749, file: !3, line: 1466, type: !82)
!1756 = !DILocalVariable(name: "workSpace", arg: 6, scope: !1749, file: !3, line: 1467, type: !129)
!1757 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !1749, file: !3, line: 1467, type: !82)
!1758 = !DILocalVariable(name: "ip", scope: !1749, file: !3, line: 1469, type: !88)
!1759 = !DILocalVariable(name: "hSize", scope: !1749, file: !3, line: 1471, type: !286)
!1760 = !DILocation(line: 1465, column: 48, scope: !1749)
!1761 = !DILocation(line: 1465, column: 60, scope: !1749)
!1762 = !DILocation(line: 1465, column: 72, scope: !1749)
!1763 = !DILocation(line: 1466, column: 48, scope: !1749)
!1764 = !DILocation(line: 1466, column: 61, scope: !1749)
!1765 = !DILocation(line: 1467, column: 42, scope: !1749)
!1766 = !DILocation(line: 1467, column: 60, scope: !1749)
!1767 = !DILocation(line: 1469, column: 5, scope: !1749)
!1768 = !DILocation(line: 1469, column: 17, scope: !1749)
!1769 = !DILocation(line: 1469, column: 36, scope: !1749)
!1770 = !DILocation(line: 1471, column: 5, scope: !1749)
!1771 = !DILocation(line: 1471, column: 18, scope: !1749)
!1772 = !DILocation(line: 1471, column: 48, scope: !1749)
!1773 = !DILocation(line: 1471, column: 54, scope: !1749)
!1774 = !DILocation(line: 1471, column: 60, scope: !1749)
!1775 = !DILocation(line: 1472, column: 48, scope: !1749)
!1776 = !DILocation(line: 1472, column: 59, scope: !1749)
!1777 = !DILocation(line: 1471, column: 26, scope: !1749)
!1778 = !DILocation(line: 1473, column: 21, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 1473, column: 9)
!1780 = !DILocation(line: 1473, column: 9, scope: !1779)
!1781 = !DILocation(line: 1473, column: 9, scope: !1749)
!1782 = !DILocation(line: 1473, column: 36, scope: !1779)
!1783 = !DILocation(line: 1473, column: 29, scope: !1779)
!1784 = !DILocation(line: 1474, column: 9, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 1474, column: 9)
!1786 = !DILocation(line: 1474, column: 18, scope: !1785)
!1787 = !DILocation(line: 1474, column: 15, scope: !1785)
!1788 = !DILocation(line: 1474, column: 9, scope: !1749)
!1789 = !DILocation(line: 1474, column: 28, scope: !1785)
!1790 = !DILocation(line: 1475, column: 11, scope: !1749)
!1791 = !DILocation(line: 1475, column: 8, scope: !1749)
!1792 = !DILocation(line: 1475, column: 30, scope: !1749)
!1793 = !DILocation(line: 1475, column: 27, scope: !1749)
!1794 = !DILocation(line: 1477, column: 51, scope: !1749)
!1795 = !DILocation(line: 1477, column: 56, scope: !1749)
!1796 = !DILocation(line: 1477, column: 65, scope: !1749)
!1797 = !DILocation(line: 1477, column: 69, scope: !1749)
!1798 = !DILocation(line: 1477, column: 79, scope: !1749)
!1799 = !DILocation(line: 1477, column: 12, scope: !1749)
!1800 = !DILocation(line: 1477, column: 5, scope: !1749)
!1801 = !DILocation(line: 1478, column: 1, scope: !1749)
!1802 = distinct !DISubprogram(name: "HUF_decompress4X2_usingDTable", scope: !3, file: !3, line: 1481, type: !933, scopeLine: 1485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1803)
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809}
!1804 = !DILocalVariable(name: "dst", arg: 1, scope: !1802, file: !3, line: 1482, type: !129)
!1805 = !DILocalVariable(name: "dstSize", arg: 2, scope: !1802, file: !3, line: 1482, type: !82)
!1806 = !DILocalVariable(name: "cSrc", arg: 3, scope: !1802, file: !3, line: 1483, type: !158)
!1807 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !1802, file: !3, line: 1483, type: !82)
!1808 = !DILocalVariable(name: "DTable", arg: 5, scope: !1802, file: !3, line: 1484, type: !783)
!1809 = !DILocalVariable(name: "dtd", scope: !1802, file: !3, line: 1486, type: !258)
!1810 = !DILocation(line: 1482, column: 17, scope: !1802)
!1811 = !DILocation(line: 1482, column: 30, scope: !1802)
!1812 = !DILocation(line: 1483, column: 17, scope: !1802)
!1813 = !DILocation(line: 1483, column: 30, scope: !1802)
!1814 = !DILocation(line: 1484, column: 23, scope: !1802)
!1815 = !DILocation(line: 1486, column: 5, scope: !1802)
!1816 = !DILocation(line: 1486, column: 16, scope: !1802)
!1817 = !DILocation(line: 1486, column: 40, scope: !1802)
!1818 = !DILocation(line: 1486, column: 22, scope: !1802)
!1819 = !DILocation(line: 1487, column: 13, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 1487, column: 9)
!1821 = !DILocation(line: 1487, column: 9, scope: !1820)
!1822 = !DILocation(line: 1487, column: 23, scope: !1820)
!1823 = !DILocation(line: 1487, column: 9, scope: !1802)
!1824 = !DILocation(line: 1487, column: 29, scope: !1820)
!1825 = !DILocation(line: 1488, column: 51, scope: !1802)
!1826 = !DILocation(line: 1488, column: 56, scope: !1802)
!1827 = !DILocation(line: 1488, column: 65, scope: !1802)
!1828 = !DILocation(line: 1488, column: 71, scope: !1802)
!1829 = !DILocation(line: 1488, column: 81, scope: !1802)
!1830 = !DILocation(line: 1488, column: 12, scope: !1802)
!1831 = !DILocation(line: 1488, column: 5, scope: !1802)
!1832 = !DILocation(line: 1489, column: 1, scope: !1802)
!1833 = distinct !DISubprogram(name: "HUF_decompress4X2_usingDTable_internal", scope: !3, file: !3, line: 1431, type: !966, scopeLine: 1433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1834)
!1834 = !{!1835, !1836, !1837, !1838, !1839, !1840}
!1835 = !DILocalVariable(name: "dst", arg: 1, scope: !1833, file: !3, line: 1431, type: !129)
!1836 = !DILocalVariable(name: "dstSize", arg: 2, scope: !1833, file: !3, line: 1431, type: !82)
!1837 = !DILocalVariable(name: "cSrc", arg: 3, scope: !1833, file: !3, line: 1431, type: !158)
!1838 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !1833, file: !3, line: 1432, type: !82)
!1839 = !DILocalVariable(name: "DTable", arg: 5, scope: !1833, file: !3, line: 1432, type: !783)
!1840 = !DILocalVariable(name: "bmi2", arg: 6, scope: !1833, file: !3, line: 1432, type: !87)
!1841 = !DILocation(line: 1431, column: 60, scope: !1833)
!1842 = !DILocation(line: 1431, column: 72, scope: !1833)
!1843 = !DILocation(line: 1431, column: 93, scope: !1833)
!1844 = !DILocation(line: 1432, column: 28, scope: !1833)
!1845 = !DILocation(line: 1432, column: 56, scope: !1833)
!1846 = !DILocation(line: 1432, column: 68, scope: !1833)
!1847 = !DILocation(line: 1435, column: 9, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 1435, column: 9)
!1849 = !DILocation(line: 1435, column: 9, scope: !1833)
!1850 = !DILocation(line: 1439, column: 60, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 1435, column: 15)
!1852 = !DILocation(line: 1439, column: 65, scope: !1851)
!1853 = !DILocation(line: 1439, column: 74, scope: !1851)
!1854 = !DILocation(line: 1439, column: 80, scope: !1851)
!1855 = !DILocation(line: 1439, column: 90, scope: !1851)
!1856 = !DILocation(line: 1439, column: 16, scope: !1851)
!1857 = !DILocation(line: 1439, column: 9, scope: !1851)
!1858 = !DILocation(line: 1449, column: 59, scope: !1833)
!1859 = !DILocation(line: 1449, column: 64, scope: !1833)
!1860 = !DILocation(line: 1449, column: 73, scope: !1833)
!1861 = !DILocation(line: 1449, column: 79, scope: !1833)
!1862 = !DILocation(line: 1449, column: 89, scope: !1833)
!1863 = !DILocation(line: 1449, column: 12, scope: !1833)
!1864 = !DILocation(line: 1449, column: 5, scope: !1833)
!1865 = !DILocation(line: 1451, column: 1, scope: !1833)
!1866 = distinct !DISubprogram(name: "HUF_decompress4X2_DCtx_wksp", scope: !3, file: !3, line: 1506, type: !981, scopeLine: 1509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1867)
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873, !1874}
!1868 = !DILocalVariable(name: "dctx", arg: 1, scope: !1866, file: !3, line: 1506, type: !217)
!1869 = !DILocalVariable(name: "dst", arg: 2, scope: !1866, file: !3, line: 1506, type: !129)
!1870 = !DILocalVariable(name: "dstSize", arg: 3, scope: !1866, file: !3, line: 1506, type: !82)
!1871 = !DILocalVariable(name: "cSrc", arg: 4, scope: !1866, file: !3, line: 1507, type: !158)
!1872 = !DILocalVariable(name: "cSrcSize", arg: 5, scope: !1866, file: !3, line: 1507, type: !82)
!1873 = !DILocalVariable(name: "workSpace", arg: 6, scope: !1866, file: !3, line: 1508, type: !129)
!1874 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !1866, file: !3, line: 1508, type: !82)
!1875 = !DILocation(line: 1506, column: 48, scope: !1866)
!1876 = !DILocation(line: 1506, column: 60, scope: !1866)
!1877 = !DILocation(line: 1506, column: 72, scope: !1866)
!1878 = !DILocation(line: 1507, column: 48, scope: !1866)
!1879 = !DILocation(line: 1507, column: 61, scope: !1866)
!1880 = !DILocation(line: 1508, column: 42, scope: !1866)
!1881 = !DILocation(line: 1508, column: 60, scope: !1866)
!1882 = !DILocation(line: 1510, column: 45, scope: !1866)
!1883 = !DILocation(line: 1510, column: 51, scope: !1866)
!1884 = !DILocation(line: 1510, column: 56, scope: !1866)
!1885 = !DILocation(line: 1510, column: 65, scope: !1866)
!1886 = !DILocation(line: 1510, column: 71, scope: !1866)
!1887 = !DILocation(line: 1510, column: 81, scope: !1866)
!1888 = !DILocation(line: 1510, column: 92, scope: !1866)
!1889 = !DILocation(line: 1510, column: 12, scope: !1866)
!1890 = !DILocation(line: 1510, column: 5, scope: !1866)
!1891 = distinct !DISubprogram(name: "HUF_decompress4X2_DCtx_wksp_bmi2", scope: !3, file: !3, line: 1491, type: !1125, scopeLine: 1494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1892)
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902}
!1893 = !DILocalVariable(name: "dctx", arg: 1, scope: !1891, file: !3, line: 1491, type: !217)
!1894 = !DILocalVariable(name: "dst", arg: 2, scope: !1891, file: !3, line: 1491, type: !129)
!1895 = !DILocalVariable(name: "dstSize", arg: 3, scope: !1891, file: !3, line: 1491, type: !82)
!1896 = !DILocalVariable(name: "cSrc", arg: 4, scope: !1891, file: !3, line: 1492, type: !158)
!1897 = !DILocalVariable(name: "cSrcSize", arg: 5, scope: !1891, file: !3, line: 1492, type: !82)
!1898 = !DILocalVariable(name: "workSpace", arg: 6, scope: !1891, file: !3, line: 1493, type: !129)
!1899 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !1891, file: !3, line: 1493, type: !82)
!1900 = !DILocalVariable(name: "bmi2", arg: 8, scope: !1891, file: !3, line: 1493, type: !87)
!1901 = !DILocalVariable(name: "ip", scope: !1891, file: !3, line: 1495, type: !88)
!1902 = !DILocalVariable(name: "hSize", scope: !1891, file: !3, line: 1497, type: !82)
!1903 = !DILocation(line: 1491, column: 60, scope: !1891)
!1904 = !DILocation(line: 1491, column: 72, scope: !1891)
!1905 = !DILocation(line: 1491, column: 84, scope: !1891)
!1906 = !DILocation(line: 1492, column: 48, scope: !1891)
!1907 = !DILocation(line: 1492, column: 61, scope: !1891)
!1908 = !DILocation(line: 1493, column: 42, scope: !1891)
!1909 = !DILocation(line: 1493, column: 60, scope: !1891)
!1910 = !DILocation(line: 1493, column: 74, scope: !1891)
!1911 = !DILocation(line: 1495, column: 5, scope: !1891)
!1912 = !DILocation(line: 1495, column: 17, scope: !1891)
!1913 = !DILocation(line: 1495, column: 36, scope: !1891)
!1914 = !DILocation(line: 1497, column: 5, scope: !1891)
!1915 = !DILocation(line: 1497, column: 12, scope: !1891)
!1916 = !DILocation(line: 1497, column: 42, scope: !1891)
!1917 = !DILocation(line: 1497, column: 48, scope: !1891)
!1918 = !DILocation(line: 1497, column: 54, scope: !1891)
!1919 = !DILocation(line: 1498, column: 42, scope: !1891)
!1920 = !DILocation(line: 1498, column: 53, scope: !1891)
!1921 = !DILocation(line: 1497, column: 20, scope: !1891)
!1922 = !DILocation(line: 1499, column: 21, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 1499, column: 9)
!1924 = !DILocation(line: 1499, column: 9, scope: !1923)
!1925 = !DILocation(line: 1499, column: 9, scope: !1891)
!1926 = !DILocation(line: 1499, column: 36, scope: !1923)
!1927 = !DILocation(line: 1499, column: 29, scope: !1923)
!1928 = !DILocation(line: 1500, column: 9, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 1500, column: 9)
!1930 = !DILocation(line: 1500, column: 18, scope: !1929)
!1931 = !DILocation(line: 1500, column: 15, scope: !1929)
!1932 = !DILocation(line: 1500, column: 9, scope: !1891)
!1933 = !DILocation(line: 1500, column: 28, scope: !1929)
!1934 = !DILocation(line: 1501, column: 11, scope: !1891)
!1935 = !DILocation(line: 1501, column: 8, scope: !1891)
!1936 = !DILocation(line: 1501, column: 30, scope: !1891)
!1937 = !DILocation(line: 1501, column: 27, scope: !1891)
!1938 = !DILocation(line: 1503, column: 51, scope: !1891)
!1939 = !DILocation(line: 1503, column: 56, scope: !1891)
!1940 = !DILocation(line: 1503, column: 65, scope: !1891)
!1941 = !DILocation(line: 1503, column: 69, scope: !1891)
!1942 = !DILocation(line: 1503, column: 79, scope: !1891)
!1943 = !DILocation(line: 1503, column: 85, scope: !1891)
!1944 = !DILocation(line: 1503, column: 12, scope: !1891)
!1945 = !DILocation(line: 1503, column: 5, scope: !1891)
!1946 = !DILocation(line: 1504, column: 1, scope: !1891)
!1947 = distinct !DISubprogram(name: "HUF_decompress1X_usingDTable", scope: !3, file: !3, line: 1521, type: !933, scopeLine: 1524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1948)
!1948 = !{!1949, !1950, !1951, !1952, !1953, !1954}
!1949 = !DILocalVariable(name: "dst", arg: 1, scope: !1947, file: !3, line: 1521, type: !129)
!1950 = !DILocalVariable(name: "maxDstSize", arg: 2, scope: !1947, file: !3, line: 1521, type: !82)
!1951 = !DILocalVariable(name: "cSrc", arg: 3, scope: !1947, file: !3, line: 1522, type: !158)
!1952 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !1947, file: !3, line: 1522, type: !82)
!1953 = !DILocalVariable(name: "DTable", arg: 5, scope: !1947, file: !3, line: 1523, type: !783)
!1954 = !DILocalVariable(name: "dtd", scope: !1947, file: !3, line: 1525, type: !1955)
!1955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!1956 = !DILocation(line: 1521, column: 43, scope: !1947)
!1957 = !DILocation(line: 1521, column: 55, scope: !1947)
!1958 = !DILocation(line: 1522, column: 49, scope: !1947)
!1959 = !DILocation(line: 1522, column: 62, scope: !1947)
!1960 = !DILocation(line: 1523, column: 55, scope: !1947)
!1961 = !DILocation(line: 1525, column: 5, scope: !1947)
!1962 = !DILocation(line: 1525, column: 22, scope: !1947)
!1963 = !DILocation(line: 1525, column: 46, scope: !1947)
!1964 = !DILocation(line: 1525, column: 28, scope: !1947)
!1965 = !DILocation(line: 1535, column: 16, scope: !1947)
!1966 = !DILocation(line: 1535, column: 12, scope: !1947)
!1967 = !DILocation(line: 1535, column: 67, scope: !1947)
!1968 = !DILocation(line: 1535, column: 72, scope: !1947)
!1969 = !DILocation(line: 1535, column: 84, scope: !1947)
!1970 = !DILocation(line: 1535, column: 90, scope: !1947)
!1971 = !DILocation(line: 1535, column: 100, scope: !1947)
!1972 = !DILocation(line: 1535, column: 28, scope: !1947)
!1973 = !DILocation(line: 1536, column: 67, scope: !1947)
!1974 = !DILocation(line: 1536, column: 72, scope: !1947)
!1975 = !DILocation(line: 1536, column: 84, scope: !1947)
!1976 = !DILocation(line: 1536, column: 90, scope: !1947)
!1977 = !DILocation(line: 1536, column: 100, scope: !1947)
!1978 = !DILocation(line: 1536, column: 28, scope: !1947)
!1979 = !DILocation(line: 1538, column: 1, scope: !1947)
!1980 = !DILocation(line: 1535, column: 5, scope: !1947)
!1981 = distinct !DISubprogram(name: "HUF_decompress4X_usingDTable", scope: !3, file: !3, line: 1540, type: !933, scopeLine: 1543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1982)
!1982 = !{!1983, !1984, !1985, !1986, !1987, !1988}
!1983 = !DILocalVariable(name: "dst", arg: 1, scope: !1981, file: !3, line: 1540, type: !129)
!1984 = !DILocalVariable(name: "maxDstSize", arg: 2, scope: !1981, file: !3, line: 1540, type: !82)
!1985 = !DILocalVariable(name: "cSrc", arg: 3, scope: !1981, file: !3, line: 1541, type: !158)
!1986 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !1981, file: !3, line: 1541, type: !82)
!1987 = !DILocalVariable(name: "DTable", arg: 5, scope: !1981, file: !3, line: 1542, type: !783)
!1988 = !DILocalVariable(name: "dtd", scope: !1981, file: !3, line: 1544, type: !1955)
!1989 = !DILocation(line: 1540, column: 43, scope: !1981)
!1990 = !DILocation(line: 1540, column: 55, scope: !1981)
!1991 = !DILocation(line: 1541, column: 49, scope: !1981)
!1992 = !DILocation(line: 1541, column: 62, scope: !1981)
!1993 = !DILocation(line: 1542, column: 55, scope: !1981)
!1994 = !DILocation(line: 1544, column: 5, scope: !1981)
!1995 = !DILocation(line: 1544, column: 22, scope: !1981)
!1996 = !DILocation(line: 1544, column: 46, scope: !1981)
!1997 = !DILocation(line: 1544, column: 28, scope: !1981)
!1998 = !DILocation(line: 1554, column: 16, scope: !1981)
!1999 = !DILocation(line: 1554, column: 12, scope: !1981)
!2000 = !DILocation(line: 1554, column: 67, scope: !1981)
!2001 = !DILocation(line: 1554, column: 72, scope: !1981)
!2002 = !DILocation(line: 1554, column: 84, scope: !1981)
!2003 = !DILocation(line: 1554, column: 90, scope: !1981)
!2004 = !DILocation(line: 1554, column: 100, scope: !1981)
!2005 = !DILocation(line: 1554, column: 28, scope: !1981)
!2006 = !DILocation(line: 1555, column: 67, scope: !1981)
!2007 = !DILocation(line: 1555, column: 72, scope: !1981)
!2008 = !DILocation(line: 1555, column: 84, scope: !1981)
!2009 = !DILocation(line: 1555, column: 90, scope: !1981)
!2010 = !DILocation(line: 1555, column: 100, scope: !1981)
!2011 = !DILocation(line: 1555, column: 28, scope: !1981)
!2012 = !DILocation(line: 1557, column: 1, scope: !1981)
!2013 = !DILocation(line: 1554, column: 5, scope: !1981)
!2014 = distinct !DISubprogram(name: "HUF_selectDecoder", scope: !3, file: !3, line: 1589, type: !2015, scopeLine: 1590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!66, !82, !82}
!2017 = !{!2018, !2019, !2020, !2022, !2023, !2024}
!2018 = !DILocalVariable(name: "dstSize", arg: 1, scope: !2014, file: !3, line: 1589, type: !82)
!2019 = !DILocalVariable(name: "cSrcSize", arg: 2, scope: !2014, file: !3, line: 1589, type: !82)
!2020 = !DILocalVariable(name: "Q", scope: !2021, file: !3, line: 1603, type: !266)
!2021 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 1603, column: 5)
!2022 = !DILocalVariable(name: "D256", scope: !2021, file: !3, line: 1604, type: !266)
!2023 = !DILocalVariable(name: "DTime0", scope: !2021, file: !3, line: 1605, type: !266)
!2024 = !DILocalVariable(name: "DTime1", scope: !2021, file: !3, line: 1606, type: !66)
!2025 = !DILocation(line: 1589, column: 31, scope: !2014)
!2026 = !DILocation(line: 1589, column: 47, scope: !2014)
!2027 = !DILocation(line: 1603, column: 9, scope: !2021)
!2028 = !DILocation(line: 1603, column: 19, scope: !2021)
!2029 = !DILocation(line: 1603, column: 24, scope: !2021)
!2030 = !DILocation(line: 1603, column: 36, scope: !2021)
!2031 = !DILocation(line: 1603, column: 33, scope: !2021)
!2032 = !DILocation(line: 1603, column: 23, scope: !2021)
!2033 = !DILocation(line: 1603, column: 58, scope: !2021)
!2034 = !DILocation(line: 1603, column: 67, scope: !2021)
!2035 = !DILocation(line: 1603, column: 74, scope: !2021)
!2036 = !DILocation(line: 1603, column: 72, scope: !2021)
!2037 = !DILocation(line: 1603, column: 52, scope: !2021)
!2038 = !DILocation(line: 1604, column: 9, scope: !2021)
!2039 = !DILocation(line: 1604, column: 19, scope: !2021)
!2040 = !DILocation(line: 1604, column: 32, scope: !2021)
!2041 = !DILocation(line: 1604, column: 40, scope: !2021)
!2042 = !DILocation(line: 1604, column: 26, scope: !2021)
!2043 = !DILocation(line: 1605, column: 9, scope: !2021)
!2044 = !DILocation(line: 1605, column: 19, scope: !2021)
!2045 = !DILocation(line: 1605, column: 37, scope: !2021)
!2046 = !DILocation(line: 1605, column: 28, scope: !2021)
!2047 = !DILocation(line: 1605, column: 43, scope: !2021)
!2048 = !DILocation(line: 1605, column: 65, scope: !2021)
!2049 = !DILocation(line: 1605, column: 56, scope: !2021)
!2050 = !DILocation(line: 1605, column: 71, scope: !2021)
!2051 = !DILocation(line: 1605, column: 87, scope: !2021)
!2052 = !DILocation(line: 1605, column: 85, scope: !2021)
!2053 = !DILocation(line: 1605, column: 53, scope: !2021)
!2054 = !DILocation(line: 1606, column: 9, scope: !2021)
!2055 = !DILocation(line: 1606, column: 13, scope: !2021)
!2056 = !DILocation(line: 1606, column: 31, scope: !2021)
!2057 = !DILocation(line: 1606, column: 22, scope: !2021)
!2058 = !DILocation(line: 1606, column: 37, scope: !2021)
!2059 = !DILocation(line: 1606, column: 59, scope: !2021)
!2060 = !DILocation(line: 1606, column: 50, scope: !2021)
!2061 = !DILocation(line: 1606, column: 65, scope: !2021)
!2062 = !DILocation(line: 1606, column: 81, scope: !2021)
!2063 = !DILocation(line: 1606, column: 79, scope: !2021)
!2064 = !DILocation(line: 1606, column: 47, scope: !2021)
!2065 = !DILocation(line: 1607, column: 19, scope: !2021)
!2066 = !DILocation(line: 1607, column: 26, scope: !2021)
!2067 = !DILocation(line: 1607, column: 16, scope: !2021)
!2068 = !DILocation(line: 1608, column: 16, scope: !2021)
!2069 = !DILocation(line: 1608, column: 25, scope: !2021)
!2070 = !DILocation(line: 1608, column: 23, scope: !2021)
!2071 = !DILocation(line: 1609, column: 5, scope: !2014)
!2072 = !DILocation(line: 1608, column: 9, scope: !2021)
!2073 = distinct !DISubprogram(name: "HUF_decompress4X_hufOnly_wksp", scope: !3, file: !3, line: 1614, type: !981, scopeLine: 1618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2074)
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082}
!2075 = !DILocalVariable(name: "dctx", arg: 1, scope: !2073, file: !3, line: 1614, type: !217)
!2076 = !DILocalVariable(name: "dst", arg: 2, scope: !2073, file: !3, line: 1614, type: !129)
!2077 = !DILocalVariable(name: "dstSize", arg: 3, scope: !2073, file: !3, line: 1615, type: !82)
!2078 = !DILocalVariable(name: "cSrc", arg: 4, scope: !2073, file: !3, line: 1615, type: !158)
!2079 = !DILocalVariable(name: "cSrcSize", arg: 5, scope: !2073, file: !3, line: 1616, type: !82)
!2080 = !DILocalVariable(name: "workSpace", arg: 6, scope: !2073, file: !3, line: 1616, type: !129)
!2081 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !2073, file: !3, line: 1617, type: !82)
!2082 = !DILocalVariable(name: "algoNb", scope: !2083, file: !3, line: 1623, type: !266)
!2083 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 1623, column: 5)
!2084 = !DILocation(line: 1614, column: 50, scope: !2073)
!2085 = !DILocation(line: 1614, column: 62, scope: !2073)
!2086 = !DILocation(line: 1615, column: 45, scope: !2073)
!2087 = !DILocation(line: 1615, column: 66, scope: !2073)
!2088 = !DILocation(line: 1616, column: 45, scope: !2073)
!2089 = !DILocation(line: 1616, column: 61, scope: !2073)
!2090 = !DILocation(line: 1617, column: 45, scope: !2073)
!2091 = !DILocation(line: 1620, column: 9, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 1620, column: 9)
!2093 = !DILocation(line: 1620, column: 17, scope: !2092)
!2094 = !DILocation(line: 1620, column: 9, scope: !2073)
!2095 = !DILocation(line: 1620, column: 23, scope: !2092)
!2096 = !DILocation(line: 1621, column: 9, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 1621, column: 9)
!2098 = !DILocation(line: 1621, column: 18, scope: !2097)
!2099 = !DILocation(line: 1621, column: 9, scope: !2073)
!2100 = !DILocation(line: 1621, column: 24, scope: !2097)
!2101 = !DILocation(line: 1623, column: 9, scope: !2083)
!2102 = !DILocation(line: 1623, column: 19, scope: !2083)
!2103 = !DILocation(line: 1623, column: 46, scope: !2083)
!2104 = !DILocation(line: 1623, column: 55, scope: !2083)
!2105 = !DILocation(line: 1623, column: 28, scope: !2083)
!2106 = !DILocation(line: 1633, column: 16, scope: !2083)
!2107 = !DILocation(line: 1633, column: 53, scope: !2083)
!2108 = !DILocation(line: 1633, column: 59, scope: !2083)
!2109 = !DILocation(line: 1633, column: 64, scope: !2083)
!2110 = !DILocation(line: 1633, column: 73, scope: !2083)
!2111 = !DILocation(line: 1634, column: 29, scope: !2083)
!2112 = !DILocation(line: 1634, column: 39, scope: !2083)
!2113 = !DILocation(line: 1634, column: 50, scope: !2083)
!2114 = !DILocation(line: 1633, column: 25, scope: !2083)
!2115 = !DILocation(line: 1635, column: 53, scope: !2083)
!2116 = !DILocation(line: 1635, column: 59, scope: !2083)
!2117 = !DILocation(line: 1635, column: 64, scope: !2083)
!2118 = !DILocation(line: 1635, column: 73, scope: !2083)
!2119 = !DILocation(line: 1635, column: 79, scope: !2083)
!2120 = !DILocation(line: 1635, column: 89, scope: !2083)
!2121 = !DILocation(line: 1635, column: 100, scope: !2083)
!2122 = !DILocation(line: 1635, column: 25, scope: !2083)
!2123 = !DILocation(line: 1633, column: 9, scope: !2083)
!2124 = !DILocation(line: 1637, column: 5, scope: !2073)
!2125 = !DILocation(line: 1638, column: 1, scope: !2073)
!2126 = distinct !DISubprogram(name: "HUF_decompress1X_DCtx_wksp", scope: !3, file: !3, line: 1640, type: !981, scopeLine: 1643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2127 = !{!2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135}
!2128 = !DILocalVariable(name: "dctx", arg: 1, scope: !2126, file: !3, line: 1640, type: !217)
!2129 = !DILocalVariable(name: "dst", arg: 2, scope: !2126, file: !3, line: 1640, type: !129)
!2130 = !DILocalVariable(name: "dstSize", arg: 3, scope: !2126, file: !3, line: 1640, type: !82)
!2131 = !DILocalVariable(name: "cSrc", arg: 4, scope: !2126, file: !3, line: 1641, type: !158)
!2132 = !DILocalVariable(name: "cSrcSize", arg: 5, scope: !2126, file: !3, line: 1641, type: !82)
!2133 = !DILocalVariable(name: "workSpace", arg: 6, scope: !2126, file: !3, line: 1642, type: !129)
!2134 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !2126, file: !3, line: 1642, type: !82)
!2135 = !DILocalVariable(name: "algoNb", scope: !2136, file: !3, line: 1650, type: !266)
!2136 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 1650, column: 5)
!2137 = !DILocation(line: 1640, column: 47, scope: !2126)
!2138 = !DILocation(line: 1640, column: 59, scope: !2126)
!2139 = !DILocation(line: 1640, column: 71, scope: !2126)
!2140 = !DILocation(line: 1641, column: 47, scope: !2126)
!2141 = !DILocation(line: 1641, column: 60, scope: !2126)
!2142 = !DILocation(line: 1642, column: 41, scope: !2126)
!2143 = !DILocation(line: 1642, column: 59, scope: !2126)
!2144 = !DILocation(line: 1645, column: 9, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 1645, column: 9)
!2146 = !DILocation(line: 1645, column: 17, scope: !2145)
!2147 = !DILocation(line: 1645, column: 9, scope: !2126)
!2148 = !DILocation(line: 1645, column: 23, scope: !2145)
!2149 = !DILocation(line: 1646, column: 9, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 1646, column: 9)
!2151 = !DILocation(line: 1646, column: 20, scope: !2150)
!2152 = !DILocation(line: 1646, column: 18, scope: !2150)
!2153 = !DILocation(line: 1646, column: 9, scope: !2126)
!2154 = !DILocation(line: 1646, column: 29, scope: !2150)
!2155 = !DILocation(line: 1647, column: 9, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 1647, column: 9)
!2157 = !DILocation(line: 1647, column: 21, scope: !2156)
!2158 = !DILocation(line: 1647, column: 18, scope: !2156)
!2159 = !DILocation(line: 1647, column: 9, scope: !2126)
!2160 = !DILocation(line: 1647, column: 32, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 1647, column: 30)
!2162 = !DILocation(line: 1647, column: 72, scope: !2161)
!2163 = !DILocation(line: 1647, column: 65, scope: !2161)
!2164 = !DILocation(line: 1648, column: 9, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 1648, column: 9)
!2166 = !DILocation(line: 1648, column: 18, scope: !2165)
!2167 = !DILocation(line: 1648, column: 9, scope: !2126)
!2168 = !DILocation(line: 1648, column: 26, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 1648, column: 24)
!2170 = !DILocation(line: 1648, column: 80, scope: !2169)
!2171 = !DILocation(line: 1648, column: 73, scope: !2169)
!2172 = !DILocation(line: 1650, column: 9, scope: !2136)
!2173 = !DILocation(line: 1650, column: 19, scope: !2136)
!2174 = !DILocation(line: 1650, column: 46, scope: !2136)
!2175 = !DILocation(line: 1650, column: 55, scope: !2136)
!2176 = !DILocation(line: 1650, column: 28, scope: !2136)
!2177 = !DILocation(line: 1662, column: 16, scope: !2136)
!2178 = !DILocation(line: 1662, column: 53, scope: !2136)
!2179 = !DILocation(line: 1662, column: 59, scope: !2136)
!2180 = !DILocation(line: 1662, column: 64, scope: !2136)
!2181 = !DILocation(line: 1662, column: 73, scope: !2136)
!2182 = !DILocation(line: 1663, column: 33, scope: !2136)
!2183 = !DILocation(line: 1663, column: 43, scope: !2136)
!2184 = !DILocation(line: 1663, column: 54, scope: !2136)
!2185 = !DILocation(line: 1662, column: 25, scope: !2136)
!2186 = !DILocation(line: 1664, column: 53, scope: !2136)
!2187 = !DILocation(line: 1664, column: 59, scope: !2136)
!2188 = !DILocation(line: 1664, column: 64, scope: !2136)
!2189 = !DILocation(line: 1664, column: 73, scope: !2136)
!2190 = !DILocation(line: 1665, column: 33, scope: !2136)
!2191 = !DILocation(line: 1665, column: 43, scope: !2136)
!2192 = !DILocation(line: 1665, column: 54, scope: !2136)
!2193 = !DILocation(line: 1664, column: 25, scope: !2136)
!2194 = !DILocation(line: 1662, column: 9, scope: !2136)
!2195 = !DILocation(line: 1667, column: 5, scope: !2126)
!2196 = !DILocation(line: 1668, column: 1, scope: !2126)
!2197 = distinct !DISubprogram(name: "HUF_decompress1X_usingDTable_bmi2", scope: !3, file: !3, line: 1671, type: !966, scopeLine: 1672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2198)
!2198 = !{!2199, !2200, !2201, !2202, !2203, !2204, !2205}
!2199 = !DILocalVariable(name: "dst", arg: 1, scope: !2197, file: !3, line: 1671, type: !129)
!2200 = !DILocalVariable(name: "maxDstSize", arg: 2, scope: !2197, file: !3, line: 1671, type: !82)
!2201 = !DILocalVariable(name: "cSrc", arg: 3, scope: !2197, file: !3, line: 1671, type: !158)
!2202 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !2197, file: !3, line: 1671, type: !82)
!2203 = !DILocalVariable(name: "DTable", arg: 5, scope: !2197, file: !3, line: 1671, type: !783)
!2204 = !DILocalVariable(name: "bmi2", arg: 6, scope: !2197, file: !3, line: 1671, type: !87)
!2205 = !DILocalVariable(name: "dtd", scope: !2197, file: !3, line: 1673, type: !1955)
!2206 = !DILocation(line: 1671, column: 48, scope: !2197)
!2207 = !DILocation(line: 1671, column: 60, scope: !2197)
!2208 = !DILocation(line: 1671, column: 84, scope: !2197)
!2209 = !DILocation(line: 1671, column: 97, scope: !2197)
!2210 = !DILocation(line: 1671, column: 125, scope: !2197)
!2211 = !DILocation(line: 1671, column: 137, scope: !2197)
!2212 = !DILocation(line: 1673, column: 5, scope: !2197)
!2213 = !DILocation(line: 1673, column: 22, scope: !2197)
!2214 = !DILocation(line: 1673, column: 46, scope: !2197)
!2215 = !DILocation(line: 1673, column: 28, scope: !2197)
!2216 = !DILocation(line: 1683, column: 16, scope: !2197)
!2217 = !DILocation(line: 1683, column: 12, scope: !2197)
!2218 = !DILocation(line: 1683, column: 67, scope: !2197)
!2219 = !DILocation(line: 1683, column: 72, scope: !2197)
!2220 = !DILocation(line: 1683, column: 84, scope: !2197)
!2221 = !DILocation(line: 1683, column: 90, scope: !2197)
!2222 = !DILocation(line: 1683, column: 100, scope: !2197)
!2223 = !DILocation(line: 1683, column: 108, scope: !2197)
!2224 = !DILocation(line: 1683, column: 28, scope: !2197)
!2225 = !DILocation(line: 1684, column: 67, scope: !2197)
!2226 = !DILocation(line: 1684, column: 72, scope: !2197)
!2227 = !DILocation(line: 1684, column: 84, scope: !2197)
!2228 = !DILocation(line: 1684, column: 90, scope: !2197)
!2229 = !DILocation(line: 1684, column: 100, scope: !2197)
!2230 = !DILocation(line: 1684, column: 108, scope: !2197)
!2231 = !DILocation(line: 1684, column: 28, scope: !2197)
!2232 = !DILocation(line: 1686, column: 1, scope: !2197)
!2233 = !DILocation(line: 1683, column: 5, scope: !2197)
!2234 = distinct !DISubprogram(name: "HUF_decompress1X1_DCtx_wksp_bmi2", scope: !3, file: !3, line: 1689, type: !1125, scopeLine: 1690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245}
!2236 = !DILocalVariable(name: "dctx", arg: 1, scope: !2234, file: !3, line: 1689, type: !217)
!2237 = !DILocalVariable(name: "dst", arg: 2, scope: !2234, file: !3, line: 1689, type: !129)
!2238 = !DILocalVariable(name: "dstSize", arg: 3, scope: !2234, file: !3, line: 1689, type: !82)
!2239 = !DILocalVariable(name: "cSrc", arg: 4, scope: !2234, file: !3, line: 1689, type: !158)
!2240 = !DILocalVariable(name: "cSrcSize", arg: 5, scope: !2234, file: !3, line: 1689, type: !82)
!2241 = !DILocalVariable(name: "workSpace", arg: 6, scope: !2234, file: !3, line: 1689, type: !129)
!2242 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !2234, file: !3, line: 1689, type: !82)
!2243 = !DILocalVariable(name: "bmi2", arg: 8, scope: !2234, file: !3, line: 1689, type: !87)
!2244 = !DILocalVariable(name: "ip", scope: !2234, file: !3, line: 1691, type: !88)
!2245 = !DILocalVariable(name: "hSize", scope: !2234, file: !3, line: 1693, type: !286)
!2246 = !DILocation(line: 1689, column: 53, scope: !2234)
!2247 = !DILocation(line: 1689, column: 65, scope: !2234)
!2248 = !DILocation(line: 1689, column: 77, scope: !2234)
!2249 = !DILocation(line: 1689, column: 98, scope: !2234)
!2250 = !DILocation(line: 1689, column: 111, scope: !2234)
!2251 = !DILocation(line: 1689, column: 127, scope: !2234)
!2252 = !DILocation(line: 1689, column: 145, scope: !2234)
!2253 = !DILocation(line: 1689, column: 159, scope: !2234)
!2254 = !DILocation(line: 1691, column: 5, scope: !2234)
!2255 = !DILocation(line: 1691, column: 17, scope: !2234)
!2256 = !DILocation(line: 1691, column: 36, scope: !2234)
!2257 = !DILocation(line: 1693, column: 5, scope: !2234)
!2258 = !DILocation(line: 1693, column: 18, scope: !2234)
!2259 = !DILocation(line: 1693, column: 53, scope: !2234)
!2260 = !DILocation(line: 1693, column: 59, scope: !2234)
!2261 = !DILocation(line: 1693, column: 65, scope: !2234)
!2262 = !DILocation(line: 1693, column: 75, scope: !2234)
!2263 = !DILocation(line: 1693, column: 86, scope: !2234)
!2264 = !DILocation(line: 1693, column: 96, scope: !2234)
!2265 = !DILocation(line: 1693, column: 26, scope: !2234)
!2266 = !DILocation(line: 1694, column: 21, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 1694, column: 9)
!2268 = !DILocation(line: 1694, column: 9, scope: !2267)
!2269 = !DILocation(line: 1694, column: 9, scope: !2234)
!2270 = !DILocation(line: 1694, column: 36, scope: !2267)
!2271 = !DILocation(line: 1694, column: 29, scope: !2267)
!2272 = !DILocation(line: 1695, column: 9, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 1695, column: 9)
!2274 = !DILocation(line: 1695, column: 18, scope: !2273)
!2275 = !DILocation(line: 1695, column: 15, scope: !2273)
!2276 = !DILocation(line: 1695, column: 9, scope: !2234)
!2277 = !DILocation(line: 1695, column: 28, scope: !2273)
!2278 = !DILocation(line: 1696, column: 11, scope: !2234)
!2279 = !DILocation(line: 1696, column: 8, scope: !2234)
!2280 = !DILocation(line: 1696, column: 30, scope: !2234)
!2281 = !DILocation(line: 1696, column: 27, scope: !2234)
!2282 = !DILocation(line: 1698, column: 51, scope: !2234)
!2283 = !DILocation(line: 1698, column: 56, scope: !2234)
!2284 = !DILocation(line: 1698, column: 65, scope: !2234)
!2285 = !DILocation(line: 1698, column: 69, scope: !2234)
!2286 = !DILocation(line: 1698, column: 79, scope: !2234)
!2287 = !DILocation(line: 1698, column: 85, scope: !2234)
!2288 = !DILocation(line: 1698, column: 12, scope: !2234)
!2289 = !DILocation(line: 1698, column: 5, scope: !2234)
!2290 = !DILocation(line: 1699, column: 1, scope: !2234)
!2291 = distinct !DISubprogram(name: "HUF_decompress4X_usingDTable_bmi2", scope: !3, file: !3, line: 1702, type: !966, scopeLine: 1703, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2292)
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2298, !2299}
!2293 = !DILocalVariable(name: "dst", arg: 1, scope: !2291, file: !3, line: 1702, type: !129)
!2294 = !DILocalVariable(name: "maxDstSize", arg: 2, scope: !2291, file: !3, line: 1702, type: !82)
!2295 = !DILocalVariable(name: "cSrc", arg: 3, scope: !2291, file: !3, line: 1702, type: !158)
!2296 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !2291, file: !3, line: 1702, type: !82)
!2297 = !DILocalVariable(name: "DTable", arg: 5, scope: !2291, file: !3, line: 1702, type: !783)
!2298 = !DILocalVariable(name: "bmi2", arg: 6, scope: !2291, file: !3, line: 1702, type: !87)
!2299 = !DILocalVariable(name: "dtd", scope: !2291, file: !3, line: 1704, type: !1955)
!2300 = !DILocation(line: 1702, column: 48, scope: !2291)
!2301 = !DILocation(line: 1702, column: 60, scope: !2291)
!2302 = !DILocation(line: 1702, column: 84, scope: !2291)
!2303 = !DILocation(line: 1702, column: 97, scope: !2291)
!2304 = !DILocation(line: 1702, column: 125, scope: !2291)
!2305 = !DILocation(line: 1702, column: 137, scope: !2291)
!2306 = !DILocation(line: 1704, column: 5, scope: !2291)
!2307 = !DILocation(line: 1704, column: 22, scope: !2291)
!2308 = !DILocation(line: 1704, column: 46, scope: !2291)
!2309 = !DILocation(line: 1704, column: 28, scope: !2291)
!2310 = !DILocation(line: 1714, column: 16, scope: !2291)
!2311 = !DILocation(line: 1714, column: 12, scope: !2291)
!2312 = !DILocation(line: 1714, column: 67, scope: !2291)
!2313 = !DILocation(line: 1714, column: 72, scope: !2291)
!2314 = !DILocation(line: 1714, column: 84, scope: !2291)
!2315 = !DILocation(line: 1714, column: 90, scope: !2291)
!2316 = !DILocation(line: 1714, column: 100, scope: !2291)
!2317 = !DILocation(line: 1714, column: 108, scope: !2291)
!2318 = !DILocation(line: 1714, column: 28, scope: !2291)
!2319 = !DILocation(line: 1715, column: 67, scope: !2291)
!2320 = !DILocation(line: 1715, column: 72, scope: !2291)
!2321 = !DILocation(line: 1715, column: 84, scope: !2291)
!2322 = !DILocation(line: 1715, column: 90, scope: !2291)
!2323 = !DILocation(line: 1715, column: 100, scope: !2291)
!2324 = !DILocation(line: 1715, column: 108, scope: !2291)
!2325 = !DILocation(line: 1715, column: 28, scope: !2291)
!2326 = !DILocation(line: 1717, column: 1, scope: !2291)
!2327 = !DILocation(line: 1714, column: 5, scope: !2291)
!2328 = distinct !DISubprogram(name: "HUF_decompress4X_hufOnly_wksp_bmi2", scope: !3, file: !3, line: 1719, type: !1125, scopeLine: 1720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2329)
!2329 = !{!2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338}
!2330 = !DILocalVariable(name: "dctx", arg: 1, scope: !2328, file: !3, line: 1719, type: !217)
!2331 = !DILocalVariable(name: "dst", arg: 2, scope: !2328, file: !3, line: 1719, type: !129)
!2332 = !DILocalVariable(name: "dstSize", arg: 3, scope: !2328, file: !3, line: 1719, type: !82)
!2333 = !DILocalVariable(name: "cSrc", arg: 4, scope: !2328, file: !3, line: 1719, type: !158)
!2334 = !DILocalVariable(name: "cSrcSize", arg: 5, scope: !2328, file: !3, line: 1719, type: !82)
!2335 = !DILocalVariable(name: "workSpace", arg: 6, scope: !2328, file: !3, line: 1719, type: !129)
!2336 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !2328, file: !3, line: 1719, type: !82)
!2337 = !DILocalVariable(name: "bmi2", arg: 8, scope: !2328, file: !3, line: 1719, type: !87)
!2338 = !DILocalVariable(name: "algoNb", scope: !2339, file: !3, line: 1725, type: !266)
!2339 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 1725, column: 5)
!2340 = !DILocation(line: 1719, column: 55, scope: !2328)
!2341 = !DILocation(line: 1719, column: 67, scope: !2328)
!2342 = !DILocation(line: 1719, column: 79, scope: !2328)
!2343 = !DILocation(line: 1719, column: 100, scope: !2328)
!2344 = !DILocation(line: 1719, column: 113, scope: !2328)
!2345 = !DILocation(line: 1719, column: 129, scope: !2328)
!2346 = !DILocation(line: 1719, column: 147, scope: !2328)
!2347 = !DILocation(line: 1719, column: 161, scope: !2328)
!2348 = !DILocation(line: 1722, column: 9, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 1722, column: 9)
!2350 = !DILocation(line: 1722, column: 17, scope: !2349)
!2351 = !DILocation(line: 1722, column: 9, scope: !2328)
!2352 = !DILocation(line: 1722, column: 23, scope: !2349)
!2353 = !DILocation(line: 1723, column: 9, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 1723, column: 9)
!2355 = !DILocation(line: 1723, column: 18, scope: !2354)
!2356 = !DILocation(line: 1723, column: 9, scope: !2328)
!2357 = !DILocation(line: 1723, column: 24, scope: !2354)
!2358 = !DILocation(line: 1725, column: 9, scope: !2339)
!2359 = !DILocation(line: 1725, column: 19, scope: !2339)
!2360 = !DILocation(line: 1725, column: 46, scope: !2339)
!2361 = !DILocation(line: 1725, column: 55, scope: !2339)
!2362 = !DILocation(line: 1725, column: 28, scope: !2339)
!2363 = !DILocation(line: 1735, column: 16, scope: !2339)
!2364 = !DILocation(line: 1735, column: 58, scope: !2339)
!2365 = !DILocation(line: 1735, column: 64, scope: !2339)
!2366 = !DILocation(line: 1735, column: 69, scope: !2339)
!2367 = !DILocation(line: 1735, column: 78, scope: !2339)
!2368 = !DILocation(line: 1735, column: 84, scope: !2339)
!2369 = !DILocation(line: 1735, column: 94, scope: !2339)
!2370 = !DILocation(line: 1735, column: 105, scope: !2339)
!2371 = !DILocation(line: 1735, column: 115, scope: !2339)
!2372 = !DILocation(line: 1735, column: 25, scope: !2339)
!2373 = !DILocation(line: 1736, column: 58, scope: !2339)
!2374 = !DILocation(line: 1736, column: 64, scope: !2339)
!2375 = !DILocation(line: 1736, column: 69, scope: !2339)
!2376 = !DILocation(line: 1736, column: 78, scope: !2339)
!2377 = !DILocation(line: 1736, column: 84, scope: !2339)
!2378 = !DILocation(line: 1736, column: 94, scope: !2339)
!2379 = !DILocation(line: 1736, column: 105, scope: !2339)
!2380 = !DILocation(line: 1736, column: 115, scope: !2339)
!2381 = !DILocation(line: 1736, column: 25, scope: !2339)
!2382 = !DILocation(line: 1735, column: 9, scope: !2339)
!2383 = !DILocation(line: 1738, column: 5, scope: !2328)
!2384 = !DILocation(line: 1739, column: 1, scope: !2328)
!2385 = distinct !DISubprogram(name: "MEM_isLittleEndian", scope: !51, file: !51, line: 106, type: !2386, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!7}
!2388 = !DILocation(line: 108, column: 5, scope: !2385)
!2389 = distinct !DISubprogram(name: "HUF_decompress1X1_usingDTable_internal_bmi2", scope: !3, file: !3, line: 724, type: !933, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2390)
!2390 = !{!2391, !2392, !2393, !2394, !2395}
!2391 = !DILocalVariable(name: "dst", arg: 1, scope: !2389, file: !3, line: 724, type: !129)
!2392 = !DILocalVariable(name: "dstSize", arg: 2, scope: !2389, file: !3, line: 724, type: !82)
!2393 = !DILocalVariable(name: "cSrc", arg: 3, scope: !2389, file: !3, line: 724, type: !158)
!2394 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !2389, file: !3, line: 724, type: !82)
!2395 = !DILocalVariable(name: "DTable", arg: 5, scope: !2389, file: !3, line: 724, type: !783)
!2396 = !DILocation(line: 724, column: 1, scope: !2389)
!2397 = distinct !DISubprogram(name: "HUF_decompress1X1_usingDTable_internal_default", scope: !3, file: !3, line: 724, type: !933, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2398)
!2398 = !{!2399, !2400, !2401, !2402, !2403}
!2399 = !DILocalVariable(name: "dst", arg: 1, scope: !2397, file: !3, line: 724, type: !129)
!2400 = !DILocalVariable(name: "dstSize", arg: 2, scope: !2397, file: !3, line: 724, type: !82)
!2401 = !DILocalVariable(name: "cSrc", arg: 3, scope: !2397, file: !3, line: 724, type: !158)
!2402 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !2397, file: !3, line: 724, type: !82)
!2403 = !DILocalVariable(name: "DTable", arg: 5, scope: !2397, file: !3, line: 724, type: !783)
!2404 = !DILocation(line: 724, column: 1, scope: !2397)
!2405 = distinct !DISubprogram(name: "HUF_decompress1X1_usingDTable_internal_body", scope: !3, file: !3, line: 526, type: !933, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2406)
!2406 = !{!2407, !2408, !2409, !2410, !2411, !2412, !2413, !2415, !2416, !2418, !2427, !2428, !2429}
!2407 = !DILocalVariable(name: "dst", arg: 1, scope: !2405, file: !3, line: 527, type: !129)
!2408 = !DILocalVariable(name: "dstSize", arg: 2, scope: !2405, file: !3, line: 527, type: !82)
!2409 = !DILocalVariable(name: "cSrc", arg: 3, scope: !2405, file: !3, line: 528, type: !158)
!2410 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !2405, file: !3, line: 528, type: !82)
!2411 = !DILocalVariable(name: "DTable", arg: 5, scope: !2405, file: !3, line: 529, type: !783)
!2412 = !DILocalVariable(name: "op", scope: !2405, file: !3, line: 531, type: !143)
!2413 = !DILocalVariable(name: "oend", scope: !2405, file: !3, line: 532, type: !2414)
!2414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!2415 = !DILocalVariable(name: "dtPtr", scope: !2405, file: !3, line: 533, type: !158)
!2416 = !DILocalVariable(name: "dt", scope: !2405, file: !3, line: 534, type: !2417)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!2418 = !DILocalVariable(name: "bitD", scope: !2405, file: !3, line: 535, type: !2419)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIT_DStream_t", file: !38, line: 88, baseType: !2420)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 82, size: 320, elements: !2421)
!2421 = !{!2422, !2423, !2424, !2425, !2426}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "bitContainer", scope: !2420, file: !38, line: 83, baseType: !82, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "bitsConsumed", scope: !2420, file: !38, line: 84, baseType: !7, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2420, file: !38, line: 85, baseType: !146, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2420, file: !38, line: 86, baseType: !146, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "limitPtr", scope: !2420, file: !38, line: 87, baseType: !146, size: 64, offset: 256)
!2427 = !DILocalVariable(name: "dtd", scope: !2405, file: !3, line: 536, type: !1955)
!2428 = !DILocalVariable(name: "dtLog", scope: !2405, file: !3, line: 537, type: !266)
!2429 = !DILocalVariable(name: "_var_err__", scope: !2430, file: !3, line: 539, type: !286)
!2430 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 539, column: 5)
!2431 = !DILocation(line: 527, column: 17, scope: !2405)
!2432 = !DILocation(line: 527, column: 30, scope: !2405)
!2433 = !DILocation(line: 528, column: 17, scope: !2405)
!2434 = !DILocation(line: 528, column: 30, scope: !2405)
!2435 = !DILocation(line: 529, column: 23, scope: !2405)
!2436 = !DILocation(line: 531, column: 5, scope: !2405)
!2437 = !DILocation(line: 531, column: 11, scope: !2405)
!2438 = !DILocation(line: 531, column: 23, scope: !2405)
!2439 = !DILocation(line: 532, column: 5, scope: !2405)
!2440 = !DILocation(line: 532, column: 17, scope: !2405)
!2441 = !DILocation(line: 532, column: 24, scope: !2405)
!2442 = !DILocation(line: 532, column: 29, scope: !2405)
!2443 = !DILocation(line: 532, column: 27, scope: !2405)
!2444 = !DILocation(line: 533, column: 5, scope: !2405)
!2445 = !DILocation(line: 533, column: 17, scope: !2405)
!2446 = !DILocation(line: 533, column: 25, scope: !2405)
!2447 = !DILocation(line: 533, column: 32, scope: !2405)
!2448 = !DILocation(line: 534, column: 5, scope: !2405)
!2449 = !DILocation(line: 534, column: 29, scope: !2405)
!2450 = !DILocation(line: 534, column: 53, scope: !2405)
!2451 = !DILocation(line: 535, column: 5, scope: !2405)
!2452 = !DILocation(line: 535, column: 19, scope: !2405)
!2453 = !DILocation(line: 536, column: 5, scope: !2405)
!2454 = !DILocation(line: 536, column: 22, scope: !2405)
!2455 = !DILocation(line: 536, column: 46, scope: !2405)
!2456 = !DILocation(line: 536, column: 28, scope: !2405)
!2457 = !DILocation(line: 537, column: 5, scope: !2405)
!2458 = !DILocation(line: 537, column: 15, scope: !2405)
!2459 = !DILocation(line: 537, column: 27, scope: !2405)
!2460 = !DILocation(line: 537, column: 23, scope: !2405)
!2461 = !DILocation(line: 539, column: 5, scope: !2430)
!2462 = !DILocation(line: 539, column: 5, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 539, column: 5)
!2464 = !DILocation(line: 539, column: 5, scope: !2405)
!2465 = !DILocation(line: 541, column: 24, scope: !2405)
!2466 = !DILocation(line: 541, column: 35, scope: !2405)
!2467 = !DILocation(line: 541, column: 41, scope: !2405)
!2468 = !DILocation(line: 541, column: 45, scope: !2405)
!2469 = !DILocation(line: 541, column: 5, scope: !2405)
!2470 = !DILocation(line: 543, column: 10, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 543, column: 9)
!2472 = !DILocation(line: 543, column: 9, scope: !2405)
!2473 = !DILocation(line: 543, column: 35, scope: !2471)
!2474 = !DILocation(line: 545, column: 12, scope: !2405)
!2475 = !DILocation(line: 545, column: 5, scope: !2405)
!2476 = !DILocation(line: 546, column: 1, scope: !2405)
!2477 = distinct !DISubprogram(name: "BIT_initDStream", scope: !38, file: !38, line: 258, type: !2478, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2481)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!82, !2480, !158, !82}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2481 = !{!2482, !2483, !2484, !2485, !2489}
!2482 = !DILocalVariable(name: "bitD", arg: 1, scope: !2477, file: !38, line: 258, type: !2480)
!2483 = !DILocalVariable(name: "srcBuffer", arg: 2, scope: !2477, file: !38, line: 258, type: !158)
!2484 = !DILocalVariable(name: "srcSize", arg: 3, scope: !2477, file: !38, line: 258, type: !82)
!2485 = !DILocalVariable(name: "lastByte", scope: !2486, file: !38, line: 268, type: !89)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !38, line: 268, column: 9)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !38, line: 265, column: 49)
!2488 = distinct !DILexicalBlock(scope: !2477, file: !38, line: 265, column: 9)
!2489 = !DILocalVariable(name: "lastByte", scope: !2490, file: !38, line: 296, type: !89)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !38, line: 296, column: 9)
!2491 = distinct !DILexicalBlock(scope: !2488, file: !38, line: 271, column: 12)
!2492 = !DILocation(line: 258, column: 50, scope: !2477)
!2493 = !DILocation(line: 258, column: 68, scope: !2477)
!2494 = !DILocation(line: 258, column: 86, scope: !2477)
!2495 = !DILocation(line: 260, column: 9, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2477, file: !38, line: 260, column: 9)
!2497 = !DILocation(line: 260, column: 17, scope: !2496)
!2498 = !DILocation(line: 260, column: 9, scope: !2477)
!2499 = !DILocation(line: 260, column: 24, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !38, line: 260, column: 22)
!2501 = !DILocation(line: 260, column: 61, scope: !2500)
!2502 = !DILocation(line: 262, column: 32, scope: !2477)
!2503 = !DILocation(line: 262, column: 5, scope: !2477)
!2504 = !DILocation(line: 262, column: 11, scope: !2477)
!2505 = !DILocation(line: 262, column: 17, scope: !2477)
!2506 = !DILocation(line: 263, column: 22, scope: !2477)
!2507 = !DILocation(line: 263, column: 28, scope: !2477)
!2508 = !DILocation(line: 263, column: 34, scope: !2477)
!2509 = !DILocation(line: 263, column: 5, scope: !2477)
!2510 = !DILocation(line: 263, column: 11, scope: !2477)
!2511 = !DILocation(line: 263, column: 20, scope: !2477)
!2512 = !DILocation(line: 265, column: 9, scope: !2488)
!2513 = !DILocation(line: 265, column: 17, scope: !2488)
!2514 = !DILocation(line: 265, column: 9, scope: !2477)
!2515 = !DILocation(line: 266, column: 36, scope: !2487)
!2516 = !DILocation(line: 266, column: 48, scope: !2487)
!2517 = !DILocation(line: 266, column: 46, scope: !2487)
!2518 = !DILocation(line: 266, column: 56, scope: !2487)
!2519 = !DILocation(line: 266, column: 9, scope: !2487)
!2520 = !DILocation(line: 266, column: 15, scope: !2487)
!2521 = !DILocation(line: 266, column: 21, scope: !2487)
!2522 = !DILocation(line: 267, column: 43, scope: !2487)
!2523 = !DILocation(line: 267, column: 49, scope: !2487)
!2524 = !DILocation(line: 267, column: 30, scope: !2487)
!2525 = !DILocation(line: 267, column: 9, scope: !2487)
!2526 = !DILocation(line: 267, column: 15, scope: !2487)
!2527 = !DILocation(line: 267, column: 28, scope: !2487)
!2528 = !DILocation(line: 268, column: 11, scope: !2486)
!2529 = !DILocation(line: 268, column: 22, scope: !2486)
!2530 = !DILocation(line: 268, column: 47, scope: !2486)
!2531 = !DILocation(line: 268, column: 58, scope: !2486)
!2532 = !DILocation(line: 268, column: 65, scope: !2486)
!2533 = !DILocation(line: 268, column: 33, scope: !2486)
!2534 = !DILocation(line: 269, column: 32, scope: !2486)
!2535 = !DILocation(line: 269, column: 61, scope: !2486)
!2536 = !DILocation(line: 269, column: 47, scope: !2486)
!2537 = !DILocation(line: 269, column: 45, scope: !2486)
!2538 = !DILocation(line: 269, column: 11, scope: !2486)
!2539 = !DILocation(line: 269, column: 17, scope: !2486)
!2540 = !DILocation(line: 269, column: 30, scope: !2486)
!2541 = !DILocation(line: 270, column: 15, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2486, file: !38, line: 270, column: 15)
!2543 = !DILocation(line: 270, column: 24, scope: !2542)
!2544 = !DILocation(line: 270, column: 15, scope: !2486)
!2545 = !DILocation(line: 270, column: 30, scope: !2542)
!2546 = !DILocation(line: 270, column: 79, scope: !2487)
!2547 = !DILocation(line: 271, column: 5, scope: !2487)
!2548 = !DILocation(line: 272, column: 23, scope: !2491)
!2549 = !DILocation(line: 272, column: 29, scope: !2491)
!2550 = !DILocation(line: 272, column: 9, scope: !2491)
!2551 = !DILocation(line: 272, column: 15, scope: !2491)
!2552 = !DILocation(line: 272, column: 21, scope: !2491)
!2553 = !DILocation(line: 273, column: 45, scope: !2491)
!2554 = !DILocation(line: 273, column: 51, scope: !2491)
!2555 = !DILocation(line: 273, column: 30, scope: !2491)
!2556 = !DILocation(line: 273, column: 9, scope: !2491)
!2557 = !DILocation(line: 273, column: 15, scope: !2491)
!2558 = !DILocation(line: 273, column: 28, scope: !2491)
!2559 = !DILocation(line: 274, column: 16, scope: !2491)
!2560 = !DILocation(line: 274, column: 9, scope: !2491)
!2561 = !DILocation(line: 276, column: 63, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2491, file: !38, line: 275, column: 9)
!2563 = !DILocation(line: 276, column: 48, scope: !2562)
!2564 = !DILocation(line: 276, column: 39, scope: !2562)
!2565 = !DILocation(line: 276, column: 79, scope: !2562)
!2566 = !DILocation(line: 276, column: 17, scope: !2562)
!2567 = !DILocation(line: 276, column: 23, scope: !2562)
!2568 = !DILocation(line: 276, column: 36, scope: !2562)
!2569 = !DILocation(line: 279, column: 63, scope: !2562)
!2570 = !DILocation(line: 279, column: 48, scope: !2562)
!2571 = !DILocation(line: 279, column: 39, scope: !2562)
!2572 = !DILocation(line: 279, column: 79, scope: !2562)
!2573 = !DILocation(line: 279, column: 17, scope: !2562)
!2574 = !DILocation(line: 279, column: 23, scope: !2562)
!2575 = !DILocation(line: 279, column: 36, scope: !2562)
!2576 = !DILocation(line: 282, column: 63, scope: !2562)
!2577 = !DILocation(line: 282, column: 48, scope: !2562)
!2578 = !DILocation(line: 282, column: 39, scope: !2562)
!2579 = !DILocation(line: 282, column: 79, scope: !2562)
!2580 = !DILocation(line: 282, column: 17, scope: !2562)
!2581 = !DILocation(line: 282, column: 23, scope: !2562)
!2582 = !DILocation(line: 282, column: 36, scope: !2562)
!2583 = !DILocation(line: 285, column: 63, scope: !2562)
!2584 = !DILocation(line: 285, column: 48, scope: !2562)
!2585 = !DILocation(line: 285, column: 39, scope: !2562)
!2586 = !DILocation(line: 285, column: 79, scope: !2562)
!2587 = !DILocation(line: 285, column: 17, scope: !2562)
!2588 = !DILocation(line: 285, column: 23, scope: !2562)
!2589 = !DILocation(line: 285, column: 36, scope: !2562)
!2590 = !DILocation(line: 288, column: 63, scope: !2562)
!2591 = !DILocation(line: 288, column: 48, scope: !2562)
!2592 = !DILocation(line: 288, column: 39, scope: !2562)
!2593 = !DILocation(line: 288, column: 79, scope: !2562)
!2594 = !DILocation(line: 288, column: 17, scope: !2562)
!2595 = !DILocation(line: 288, column: 23, scope: !2562)
!2596 = !DILocation(line: 288, column: 36, scope: !2562)
!2597 = !DILocation(line: 291, column: 63, scope: !2562)
!2598 = !DILocation(line: 291, column: 48, scope: !2562)
!2599 = !DILocation(line: 291, column: 39, scope: !2562)
!2600 = !DILocation(line: 291, column: 79, scope: !2562)
!2601 = !DILocation(line: 291, column: 17, scope: !2562)
!2602 = !DILocation(line: 291, column: 23, scope: !2562)
!2603 = !DILocation(line: 291, column: 36, scope: !2562)
!2604 = !DILocation(line: 294, column: 18, scope: !2562)
!2605 = !DILocation(line: 296, column: 13, scope: !2490)
!2606 = !DILocation(line: 296, column: 24, scope: !2490)
!2607 = !DILocation(line: 296, column: 49, scope: !2490)
!2608 = !DILocation(line: 296, column: 60, scope: !2490)
!2609 = !DILocation(line: 296, column: 67, scope: !2490)
!2610 = !DILocation(line: 296, column: 35, scope: !2490)
!2611 = !DILocation(line: 297, column: 34, scope: !2490)
!2612 = !DILocation(line: 297, column: 63, scope: !2490)
!2613 = !DILocation(line: 297, column: 49, scope: !2490)
!2614 = !DILocation(line: 297, column: 47, scope: !2490)
!2615 = !DILocation(line: 297, column: 13, scope: !2490)
!2616 = !DILocation(line: 297, column: 19, scope: !2490)
!2617 = !DILocation(line: 297, column: 32, scope: !2490)
!2618 = !DILocation(line: 298, column: 17, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2490, file: !38, line: 298, column: 17)
!2620 = !DILocation(line: 298, column: 26, scope: !2619)
!2621 = !DILocation(line: 298, column: 17, scope: !2490)
!2622 = !DILocation(line: 298, column: 32, scope: !2619)
!2623 = !DILocation(line: 299, column: 9, scope: !2491)
!2624 = !DILocation(line: 300, column: 66, scope: !2491)
!2625 = !DILocation(line: 300, column: 64, scope: !2491)
!2626 = !DILocation(line: 300, column: 31, scope: !2491)
!2627 = !DILocation(line: 300, column: 74, scope: !2491)
!2628 = !DILocation(line: 300, column: 9, scope: !2491)
!2629 = !DILocation(line: 300, column: 15, scope: !2491)
!2630 = !DILocation(line: 300, column: 28, scope: !2491)
!2631 = !DILocation(line: 303, column: 12, scope: !2477)
!2632 = !DILocation(line: 303, column: 5, scope: !2477)
!2633 = !DILocation(line: 304, column: 1, scope: !2477)
!2634 = distinct !DISubprogram(name: "HUF_decodeStreamX1", scope: !3, file: !3, line: 497, type: !2635, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2638)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!82, !143, !2637, !2414, !2417, !266}
!2637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2480)
!2638 = !{!2639, !2640, !2641, !2642, !2643, !2644}
!2639 = !DILocalVariable(name: "p", arg: 1, scope: !2634, file: !3, line: 497, type: !143)
!2640 = !DILocalVariable(name: "bitDPtr", arg: 2, scope: !2634, file: !3, line: 497, type: !2637)
!2641 = !DILocalVariable(name: "pEnd", arg: 3, scope: !2634, file: !3, line: 497, type: !2414)
!2642 = !DILocalVariable(name: "dt", arg: 4, scope: !2634, file: !3, line: 497, type: !2417)
!2643 = !DILocalVariable(name: "dtLog", arg: 5, scope: !2634, file: !3, line: 497, type: !266)
!2644 = !DILocalVariable(name: "pStart", scope: !2634, file: !3, line: 499, type: !2414)
!2645 = !DILocation(line: 497, column: 26, scope: !2634)
!2646 = !DILocation(line: 497, column: 50, scope: !2634)
!2647 = !DILocation(line: 497, column: 71, scope: !2634)
!2648 = !DILocation(line: 497, column: 101, scope: !2634)
!2649 = !DILocation(line: 497, column: 115, scope: !2634)
!2650 = !DILocation(line: 499, column: 5, scope: !2634)
!2651 = !DILocation(line: 499, column: 17, scope: !2634)
!2652 = !DILocation(line: 499, column: 26, scope: !2634)
!2653 = !DILocation(line: 502, column: 10, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 502, column: 9)
!2655 = !DILocation(line: 502, column: 17, scope: !2654)
!2656 = !DILocation(line: 502, column: 15, scope: !2654)
!2657 = !DILocation(line: 502, column: 20, scope: !2654)
!2658 = !DILocation(line: 502, column: 9, scope: !2634)
!2659 = !DILocation(line: 503, column: 9, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 502, column: 25)
!2661 = !DILocation(line: 503, column: 35, scope: !2660)
!2662 = !DILocation(line: 503, column: 17, scope: !2660)
!2663 = !DILocation(line: 503, column: 44, scope: !2660)
!2664 = !DILocation(line: 503, column: 74, scope: !2660)
!2665 = !DILocation(line: 503, column: 78, scope: !2660)
!2666 = !DILocation(line: 503, column: 82, scope: !2660)
!2667 = !DILocation(line: 503, column: 76, scope: !2660)
!2668 = !DILocation(line: 503, column: 71, scope: !2660)
!2669 = !DILocation(line: 504, column: 13, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 504, column: 13)
!2671 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 503, column: 87)
!2672 = !DILocation(line: 504, column: 13, scope: !2671)
!2673 = !DILocation(line: 505, column: 13, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 505, column: 13)
!2675 = !DILocation(line: 505, column: 13, scope: !2671)
!2676 = !DILocation(line: 506, column: 13, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 506, column: 13)
!2678 = !DILocation(line: 506, column: 13, scope: !2671)
!2679 = !DILocation(line: 507, column: 13, scope: !2671)
!2680 = distinct !{!2680, !2659, !2681, !443, !444}
!2681 = !DILocation(line: 508, column: 9, scope: !2660)
!2682 = !DILocation(line: 509, column: 5, scope: !2660)
!2683 = !DILocation(line: 510, column: 27, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 509, column: 12)
!2685 = !DILocation(line: 510, column: 9, scope: !2684)
!2686 = !DILocation(line: 514, column: 9, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 514, column: 9)
!2688 = !DILocation(line: 514, column: 9, scope: !2634)
!2689 = !DILocation(line: 515, column: 9, scope: !2687)
!2690 = !DILocation(line: 515, column: 35, scope: !2687)
!2691 = !DILocation(line: 515, column: 17, scope: !2687)
!2692 = !DILocation(line: 515, column: 44, scope: !2687)
!2693 = !DILocation(line: 515, column: 74, scope: !2687)
!2694 = !DILocation(line: 515, column: 78, scope: !2687)
!2695 = !DILocation(line: 515, column: 76, scope: !2687)
!2696 = !DILocation(line: 515, column: 71, scope: !2687)
!2697 = !DILocation(line: 516, column: 13, scope: !2687)
!2698 = distinct !{!2698, !2689, !2697, !443, !444}
!2699 = !DILocation(line: 519, column: 5, scope: !2634)
!2700 = !DILocation(line: 519, column: 12, scope: !2634)
!2701 = !DILocation(line: 519, column: 16, scope: !2634)
!2702 = !DILocation(line: 519, column: 14, scope: !2634)
!2703 = !DILocation(line: 520, column: 9, scope: !2634)
!2704 = distinct !{!2704, !2699, !2703, !443, !444}
!2705 = !DILocation(line: 522, column: 12, scope: !2634)
!2706 = !DILocation(line: 522, column: 17, scope: !2634)
!2707 = !DILocation(line: 522, column: 16, scope: !2634)
!2708 = !DILocation(line: 523, column: 1, scope: !2634)
!2709 = !DILocation(line: 522, column: 5, scope: !2634)
!2710 = distinct !DISubprogram(name: "BIT_endOfDStream", scope: !38, file: !38, line: 440, type: !2711, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2715)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!7, !2713}
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2419)
!2715 = !{!2716}
!2716 = !DILocalVariable(name: "DStream", arg: 1, scope: !2710, file: !38, line: 440, type: !2713)
!2717 = !DILocation(line: 440, column: 59, scope: !2710)
!2718 = !DILocation(line: 442, column: 14, scope: !2710)
!2719 = !DILocation(line: 442, column: 23, scope: !2710)
!2720 = !DILocation(line: 442, column: 30, scope: !2710)
!2721 = !DILocation(line: 442, column: 39, scope: !2710)
!2722 = !DILocation(line: 442, column: 27, scope: !2710)
!2723 = !DILocation(line: 442, column: 46, scope: !2710)
!2724 = !DILocation(line: 442, column: 50, scope: !2710)
!2725 = !DILocation(line: 442, column: 59, scope: !2710)
!2726 = !DILocation(line: 442, column: 72, scope: !2710)
!2727 = !DILocation(line: 0, scope: !2710)
!2728 = !DILocation(line: 442, column: 5, scope: !2710)
!2729 = distinct !DISubprogram(name: "MEM_readLEST", scope: !51, file: !51, line: 189, type: !2730, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!82, !158}
!2732 = !{!2733}
!2733 = !DILocalVariable(name: "memPtr", arg: 1, scope: !2729, file: !51, line: 189, type: !158)
!2734 = !DILocation(line: 189, column: 44, scope: !2729)
!2735 = !DILocation(line: 191, column: 6, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2729, file: !51, line: 191, column: 6)
!2737 = !DILocation(line: 191, column: 6, scope: !2729)
!2738 = !DILocation(line: 192, column: 31, scope: !2736)
!2739 = !DILocation(line: 192, column: 18, scope: !2736)
!2740 = !DILocation(line: 192, column: 10, scope: !2736)
!2741 = !DILocation(line: 192, column: 3, scope: !2736)
!2742 = !DILocation(line: 194, column: 31, scope: !2736)
!2743 = !DILocation(line: 194, column: 18, scope: !2736)
!2744 = !DILocation(line: 194, column: 3, scope: !2736)
!2745 = !DILocation(line: 195, column: 1, scope: !2729)
!2746 = distinct !DISubprogram(name: "BIT_highbit32", scope: !38, file: !38, line: 130, type: !2747, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!7, !66}
!2749 = !{!2750}
!2750 = !DILocalVariable(name: "val", arg: 1, scope: !2746, file: !38, line: 130, type: !66)
!2751 = !DILocation(line: 130, column: 40, scope: !2746)
!2752 = !DILocation(line: 135, column: 31, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2746, file: !38, line: 133, column: 5)
!2754 = !DILocation(line: 135, column: 16, scope: !2753)
!2755 = !DILocation(line: 135, column: 36, scope: !2753)
!2756 = !DILocation(line: 135, column: 9, scope: !2753)
!2757 = distinct !DISubprogram(name: "MEM_32bits", scope: !51, file: !51, line: 90, type: !2386, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2758 = !DILocation(line: 92, column: 5, scope: !2757)
!2759 = distinct !DISubprogram(name: "MEM_readLE32", scope: !51, file: !51, line: 169, type: !2760, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!66, !158}
!2762 = !{!2763}
!2763 = !DILocalVariable(name: "memPtr", arg: 1, scope: !2759, file: !51, line: 169, type: !158)
!2764 = !DILocation(line: 169, column: 41, scope: !2759)
!2765 = !DILocation(line: 171, column: 31, scope: !2759)
!2766 = !DILocation(line: 171, column: 12, scope: !2759)
!2767 = !DILocation(line: 171, column: 5, scope: !2759)
!2768 = distinct !DISubprogram(name: "MEM_readLE64", scope: !51, file: !51, line: 179, type: !2769, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!130, !158}
!2771 = !{!2772}
!2772 = !DILocalVariable(name: "memPtr", arg: 1, scope: !2768, file: !51, line: 179, type: !158)
!2773 = !DILocation(line: 179, column: 41, scope: !2768)
!2774 = !DILocation(line: 181, column: 31, scope: !2768)
!2775 = !DILocation(line: 181, column: 12, scope: !2768)
!2776 = !DILocation(line: 181, column: 5, scope: !2768)
!2777 = !DILocation(line: 30, column: 50, scope: !155)
!2778 = !DILocation(line: 32, column: 9, scope: !163)
!2779 = !DILocation(line: 32, column: 9, scope: !155)
!2780 = !DILocation(line: 32, column: 2, scope: !155)
!2781 = !DILocation(line: 35, column: 50, scope: !170)
!2782 = !DILocation(line: 37, column: 9, scope: !176)
!2783 = !DILocation(line: 37, column: 9, scope: !170)
!2784 = !DILocation(line: 37, column: 2, scope: !170)
!2785 = distinct !DISubprogram(name: "BIT_reloadDStream", scope: !38, file: !38, line: 411, type: !2786, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2789)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!2788, !2480}
!2788 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIT_DStream_status", file: !38, line: 93, baseType: !37)
!2789 = !{!2790, !2791, !2793}
!2790 = !DILocalVariable(name: "bitD", arg: 1, scope: !2785, file: !38, line: 411, type: !2480)
!2791 = !DILocalVariable(name: "nbBytes", scope: !2792, file: !38, line: 424, type: !66)
!2792 = distinct !DILexicalBlock(scope: !2785, file: !38, line: 424, column: 5)
!2793 = !DILocalVariable(name: "result", scope: !2792, file: !38, line: 425, type: !2788)
!2794 = !DILocation(line: 411, column: 64, scope: !2785)
!2795 = !DILocation(line: 413, column: 9, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2785, file: !38, line: 413, column: 9)
!2797 = !DILocation(line: 413, column: 15, scope: !2796)
!2798 = !DILocation(line: 413, column: 28, scope: !2796)
!2799 = !DILocation(line: 413, column: 9, scope: !2785)
!2800 = !DILocation(line: 414, column: 9, scope: !2796)
!2801 = !DILocation(line: 416, column: 9, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2785, file: !38, line: 416, column: 9)
!2803 = !DILocation(line: 416, column: 15, scope: !2802)
!2804 = !DILocation(line: 416, column: 22, scope: !2802)
!2805 = !DILocation(line: 416, column: 28, scope: !2802)
!2806 = !DILocation(line: 416, column: 19, scope: !2802)
!2807 = !DILocation(line: 416, column: 9, scope: !2785)
!2808 = !DILocation(line: 417, column: 38, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2802, file: !38, line: 416, column: 38)
!2810 = !DILocation(line: 417, column: 16, scope: !2809)
!2811 = !DILocation(line: 417, column: 9, scope: !2809)
!2812 = !DILocation(line: 419, column: 9, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2785, file: !38, line: 419, column: 9)
!2814 = !DILocation(line: 419, column: 15, scope: !2813)
!2815 = !DILocation(line: 419, column: 22, scope: !2813)
!2816 = !DILocation(line: 419, column: 28, scope: !2813)
!2817 = !DILocation(line: 419, column: 19, scope: !2813)
!2818 = !DILocation(line: 419, column: 9, scope: !2785)
!2819 = !DILocation(line: 420, column: 13, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !38, line: 420, column: 13)
!2821 = distinct !DILexicalBlock(scope: !2813, file: !38, line: 419, column: 35)
!2822 = !DILocation(line: 420, column: 19, scope: !2820)
!2823 = !DILocation(line: 420, column: 32, scope: !2820)
!2824 = !DILocation(line: 420, column: 13, scope: !2821)
!2825 = !DILocation(line: 420, column: 64, scope: !2820)
!2826 = !DILocation(line: 421, column: 9, scope: !2821)
!2827 = !DILocation(line: 424, column: 9, scope: !2792)
!2828 = !DILocation(line: 424, column: 13, scope: !2792)
!2829 = !DILocation(line: 424, column: 23, scope: !2792)
!2830 = !DILocation(line: 424, column: 29, scope: !2792)
!2831 = !DILocation(line: 424, column: 42, scope: !2792)
!2832 = !DILocation(line: 425, column: 9, scope: !2792)
!2833 = !DILocation(line: 425, column: 28, scope: !2792)
!2834 = !DILocation(line: 426, column: 13, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2792, file: !38, line: 426, column: 13)
!2836 = !DILocation(line: 426, column: 19, scope: !2835)
!2837 = !DILocation(line: 426, column: 25, scope: !2835)
!2838 = !DILocation(line: 426, column: 23, scope: !2835)
!2839 = !DILocation(line: 426, column: 35, scope: !2835)
!2840 = !DILocation(line: 426, column: 41, scope: !2835)
!2841 = !DILocation(line: 426, column: 33, scope: !2835)
!2842 = !DILocation(line: 426, column: 13, scope: !2792)
!2843 = !DILocation(line: 427, column: 29, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2835, file: !38, line: 426, column: 48)
!2845 = !DILocation(line: 427, column: 35, scope: !2844)
!2846 = !DILocation(line: 427, column: 41, scope: !2844)
!2847 = !DILocation(line: 427, column: 47, scope: !2844)
!2848 = !DILocation(line: 427, column: 39, scope: !2844)
!2849 = !DILocation(line: 427, column: 23, scope: !2844)
!2850 = !DILocation(line: 427, column: 21, scope: !2844)
!2851 = !DILocation(line: 428, column: 20, scope: !2844)
!2852 = !DILocation(line: 429, column: 9, scope: !2844)
!2853 = !DILocation(line: 430, column: 22, scope: !2792)
!2854 = !DILocation(line: 430, column: 9, scope: !2792)
!2855 = !DILocation(line: 430, column: 15, scope: !2792)
!2856 = !DILocation(line: 430, column: 19, scope: !2792)
!2857 = !DILocation(line: 431, column: 31, scope: !2792)
!2858 = !DILocation(line: 431, column: 38, scope: !2792)
!2859 = !DILocation(line: 431, column: 9, scope: !2792)
!2860 = !DILocation(line: 431, column: 15, scope: !2792)
!2861 = !DILocation(line: 431, column: 28, scope: !2792)
!2862 = !DILocation(line: 432, column: 43, scope: !2792)
!2863 = !DILocation(line: 432, column: 49, scope: !2792)
!2864 = !DILocation(line: 432, column: 30, scope: !2792)
!2865 = !DILocation(line: 432, column: 9, scope: !2792)
!2866 = !DILocation(line: 432, column: 15, scope: !2792)
!2867 = !DILocation(line: 432, column: 28, scope: !2792)
!2868 = !DILocation(line: 433, column: 16, scope: !2792)
!2869 = !DILocation(line: 433, column: 9, scope: !2792)
!2870 = !DILocation(line: 434, column: 5, scope: !2785)
!2871 = !DILocation(line: 435, column: 1, scope: !2785)
!2872 = distinct !DISubprogram(name: "MEM_64bits", scope: !51, file: !51, line: 95, type: !2386, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2873 = !DILocation(line: 97, column: 5, scope: !2872)
!2874 = distinct !DISubprogram(name: "HUF_decodeSymbolX1", scope: !3, file: !3, line: 477, type: !2875, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!50, !2480, !144, !266}
!2877 = !{!2878, !2879, !2880, !2881, !2882}
!2878 = !DILocalVariable(name: "Dstream", arg: 1, scope: !2874, file: !3, line: 477, type: !2480)
!2879 = !DILocalVariable(name: "dt", arg: 2, scope: !2874, file: !3, line: 477, type: !144)
!2880 = !DILocalVariable(name: "dtLog", arg: 3, scope: !2874, file: !3, line: 477, type: !266)
!2881 = !DILocalVariable(name: "val", scope: !2874, file: !3, line: 479, type: !286)
!2882 = !DILocalVariable(name: "c", scope: !2874, file: !3, line: 480, type: !89)
!2883 = !DILocation(line: 477, column: 35, scope: !2874)
!2884 = !DILocation(line: 477, column: 62, scope: !2874)
!2885 = !DILocation(line: 477, column: 76, scope: !2874)
!2886 = !DILocation(line: 479, column: 5, scope: !2874)
!2887 = !DILocation(line: 479, column: 18, scope: !2874)
!2888 = !DILocation(line: 479, column: 41, scope: !2874)
!2889 = !DILocation(line: 479, column: 50, scope: !2874)
!2890 = !DILocation(line: 479, column: 24, scope: !2874)
!2891 = !DILocation(line: 480, column: 5, scope: !2874)
!2892 = !DILocation(line: 480, column: 16, scope: !2874)
!2893 = !DILocation(line: 480, column: 20, scope: !2874)
!2894 = !DILocation(line: 480, column: 23, scope: !2874)
!2895 = !DILocation(line: 480, column: 28, scope: !2874)
!2896 = !DILocation(line: 481, column: 18, scope: !2874)
!2897 = !DILocation(line: 481, column: 27, scope: !2874)
!2898 = !DILocation(line: 481, column: 30, scope: !2874)
!2899 = !DILocation(line: 481, column: 35, scope: !2874)
!2900 = !DILocation(line: 481, column: 5, scope: !2874)
!2901 = !DILocation(line: 482, column: 12, scope: !2874)
!2902 = !DILocation(line: 483, column: 1, scope: !2874)
!2903 = !DILocation(line: 482, column: 5, scope: !2874)
!2904 = distinct !DISubprogram(name: "BIT_reloadDStreamFast", scope: !38, file: !38, line: 395, type: !2786, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2905)
!2905 = !{!2906}
!2906 = !DILocalVariable(name: "bitD", arg: 1, scope: !2904, file: !38, line: 395, type: !2480)
!2907 = !DILocation(line: 395, column: 68, scope: !2904)
!2908 = !DILocation(line: 397, column: 9, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2904, file: !38, line: 397, column: 9)
!2910 = !DILocation(line: 397, column: 9, scope: !2904)
!2911 = !DILocation(line: 398, column: 9, scope: !2909)
!2912 = !DILocation(line: 400, column: 18, scope: !2904)
!2913 = !DILocation(line: 400, column: 24, scope: !2904)
!2914 = !DILocation(line: 400, column: 37, scope: !2904)
!2915 = !DILocation(line: 400, column: 5, scope: !2904)
!2916 = !DILocation(line: 400, column: 11, scope: !2904)
!2917 = !DILocation(line: 400, column: 15, scope: !2904)
!2918 = !DILocation(line: 401, column: 5, scope: !2904)
!2919 = !DILocation(line: 401, column: 11, scope: !2904)
!2920 = !DILocation(line: 401, column: 24, scope: !2904)
!2921 = !DILocation(line: 402, column: 39, scope: !2904)
!2922 = !DILocation(line: 402, column: 45, scope: !2904)
!2923 = !DILocation(line: 402, column: 26, scope: !2904)
!2924 = !DILocation(line: 402, column: 5, scope: !2904)
!2925 = !DILocation(line: 402, column: 11, scope: !2904)
!2926 = !DILocation(line: 402, column: 24, scope: !2904)
!2927 = !DILocation(line: 403, column: 5, scope: !2904)
!2928 = !DILocation(line: 404, column: 1, scope: !2904)
!2929 = distinct !DISubprogram(name: "BIT_lookBitsFast", scope: !38, file: !38, line: 356, type: !2930, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!82, !2713, !66}
!2932 = !{!2933, !2934, !2935}
!2933 = !DILocalVariable(name: "bitD", arg: 1, scope: !2929, file: !38, line: 356, type: !2713)
!2934 = !DILocalVariable(name: "nbBits", arg: 2, scope: !2929, file: !38, line: 356, type: !66)
!2935 = !DILocalVariable(name: "regMask", scope: !2929, file: !38, line: 358, type: !266)
!2936 = !DILocation(line: 356, column: 57, scope: !2929)
!2937 = !DILocation(line: 356, column: 67, scope: !2929)
!2938 = !DILocation(line: 358, column: 5, scope: !2929)
!2939 = !DILocation(line: 358, column: 15, scope: !2929)
!2940 = !DILocation(line: 360, column: 13, scope: !2929)
!2941 = !DILocation(line: 360, column: 19, scope: !2929)
!2942 = !DILocation(line: 360, column: 36, scope: !2929)
!2943 = !DILocation(line: 360, column: 42, scope: !2929)
!2944 = !DILocation(line: 360, column: 55, scope: !2929)
!2945 = !DILocation(line: 360, column: 32, scope: !2929)
!2946 = !DILocation(line: 360, column: 84, scope: !2929)
!2947 = !DILocation(line: 360, column: 83, scope: !2929)
!2948 = !DILocation(line: 360, column: 92, scope: !2929)
!2949 = !DILocation(line: 360, column: 67, scope: !2929)
!2950 = !DILocation(line: 361, column: 1, scope: !2929)
!2951 = !DILocation(line: 360, column: 5, scope: !2929)
!2952 = distinct !DISubprogram(name: "BIT_skipBits", scope: !38, file: !38, line: 363, type: !2953, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2480, !66}
!2955 = !{!2956, !2957}
!2956 = !DILocalVariable(name: "bitD", arg: 1, scope: !2952, file: !38, line: 363, type: !2480)
!2957 = !DILocalVariable(name: "nbBits", arg: 2, scope: !2952, file: !38, line: 363, type: !66)
!2958 = !DILocation(line: 363, column: 63, scope: !2952)
!2959 = !DILocation(line: 363, column: 73, scope: !2952)
!2960 = !DILocation(line: 365, column: 27, scope: !2952)
!2961 = !DILocation(line: 365, column: 5, scope: !2952)
!2962 = !DILocation(line: 365, column: 11, scope: !2952)
!2963 = !DILocation(line: 365, column: 24, scope: !2952)
!2964 = !DILocation(line: 366, column: 1, scope: !2952)
!2965 = distinct !DISubprogram(name: "HUF_decompress4X1_usingDTable_internal_bmi2", scope: !3, file: !3, line: 647, type: !933, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2966)
!2966 = !{!2967, !2968, !2969, !2970, !2971}
!2967 = !DILocalVariable(name: "dst", arg: 1, scope: !2965, file: !3, line: 647, type: !129)
!2968 = !DILocalVariable(name: "dstSize", arg: 2, scope: !2965, file: !3, line: 647, type: !82)
!2969 = !DILocalVariable(name: "cSrc", arg: 3, scope: !2965, file: !3, line: 647, type: !158)
!2970 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !2965, file: !3, line: 648, type: !82)
!2971 = !DILocalVariable(name: "DTable", arg: 5, scope: !2965, file: !3, line: 648, type: !783)
!2972 = !DILocation(line: 647, column: 58, scope: !2965)
!2973 = !DILocation(line: 647, column: 70, scope: !2965)
!2974 = !DILocation(line: 647, column: 91, scope: !2965)
!2975 = !DILocation(line: 648, column: 28, scope: !2965)
!2976 = !DILocation(line: 648, column: 56, scope: !2965)
!2977 = !DILocation(line: 649, column: 56, scope: !2965)
!2978 = !DILocation(line: 649, column: 61, scope: !2965)
!2979 = !DILocation(line: 649, column: 70, scope: !2965)
!2980 = !DILocation(line: 649, column: 76, scope: !2965)
!2981 = !DILocation(line: 649, column: 86, scope: !2965)
!2982 = !DILocation(line: 649, column: 12, scope: !2965)
!2983 = !DILocation(line: 649, column: 5, scope: !2965)
!2984 = distinct !DISubprogram(name: "HUF_decompress4X1_usingDTable_internal_default", scope: !3, file: !3, line: 655, type: !933, scopeLine: 656, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2985)
!2985 = !{!2986, !2987, !2988, !2989, !2990}
!2986 = !DILocalVariable(name: "dst", arg: 1, scope: !2984, file: !3, line: 655, type: !129)
!2987 = !DILocalVariable(name: "dstSize", arg: 2, scope: !2984, file: !3, line: 655, type: !82)
!2988 = !DILocalVariable(name: "cSrc", arg: 3, scope: !2984, file: !3, line: 655, type: !158)
!2989 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !2984, file: !3, line: 656, type: !82)
!2990 = !DILocalVariable(name: "DTable", arg: 5, scope: !2984, file: !3, line: 656, type: !783)
!2991 = !DILocation(line: 655, column: 61, scope: !2984)
!2992 = !DILocation(line: 655, column: 73, scope: !2984)
!2993 = !DILocation(line: 655, column: 94, scope: !2984)
!2994 = !DILocation(line: 656, column: 28, scope: !2984)
!2995 = !DILocation(line: 656, column: 56, scope: !2984)
!2996 = !DILocation(line: 657, column: 56, scope: !2984)
!2997 = !DILocation(line: 657, column: 61, scope: !2984)
!2998 = !DILocation(line: 657, column: 70, scope: !2984)
!2999 = !DILocation(line: 657, column: 76, scope: !2984)
!3000 = !DILocation(line: 657, column: 86, scope: !2984)
!3001 = !DILocation(line: 657, column: 12, scope: !2984)
!3002 = !DILocation(line: 657, column: 5, scope: !2984)
!3003 = distinct !DISubprogram(name: "HUF_decompress4X1_usingDTable_internal_body", scope: !3, file: !3, line: 549, type: !933, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3004)
!3004 = !{!3005, !3006, !3007, !3008, !3009, !3010, !3013, !3014, !3015, !3016, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3044, !3046, !3048, !3050}
!3005 = !DILocalVariable(name: "dst", arg: 1, scope: !3003, file: !3, line: 550, type: !129)
!3006 = !DILocalVariable(name: "dstSize", arg: 2, scope: !3003, file: !3, line: 550, type: !82)
!3007 = !DILocalVariable(name: "cSrc", arg: 3, scope: !3003, file: !3, line: 551, type: !158)
!3008 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !3003, file: !3, line: 551, type: !82)
!3009 = !DILocalVariable(name: "DTable", arg: 5, scope: !3003, file: !3, line: 552, type: !783)
!3010 = !DILocalVariable(name: "istart", scope: !3011, file: !3, line: 557, type: !3012)
!3011 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 557, column: 5)
!3012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!3013 = !DILocalVariable(name: "ostart", scope: !3011, file: !3, line: 558, type: !2414)
!3014 = !DILocalVariable(name: "oend", scope: !3011, file: !3, line: 559, type: !2414)
!3015 = !DILocalVariable(name: "olimit", scope: !3011, file: !3, line: 560, type: !2414)
!3016 = !DILocalVariable(name: "dtPtr", scope: !3011, file: !3, line: 561, type: !3017)
!3017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!3018 = !DILocalVariable(name: "dt", scope: !3011, file: !3, line: 562, type: !2417)
!3019 = !DILocalVariable(name: "bitD1", scope: !3011, file: !3, line: 565, type: !2419)
!3020 = !DILocalVariable(name: "bitD2", scope: !3011, file: !3, line: 566, type: !2419)
!3021 = !DILocalVariable(name: "bitD3", scope: !3011, file: !3, line: 567, type: !2419)
!3022 = !DILocalVariable(name: "bitD4", scope: !3011, file: !3, line: 568, type: !2419)
!3023 = !DILocalVariable(name: "length1", scope: !3011, file: !3, line: 569, type: !286)
!3024 = !DILocalVariable(name: "length2", scope: !3011, file: !3, line: 570, type: !286)
!3025 = !DILocalVariable(name: "length3", scope: !3011, file: !3, line: 571, type: !286)
!3026 = !DILocalVariable(name: "length4", scope: !3011, file: !3, line: 572, type: !286)
!3027 = !DILocalVariable(name: "istart1", scope: !3011, file: !3, line: 573, type: !3012)
!3028 = !DILocalVariable(name: "istart2", scope: !3011, file: !3, line: 574, type: !3012)
!3029 = !DILocalVariable(name: "istart3", scope: !3011, file: !3, line: 575, type: !3012)
!3030 = !DILocalVariable(name: "istart4", scope: !3011, file: !3, line: 576, type: !3012)
!3031 = !DILocalVariable(name: "segmentSize", scope: !3011, file: !3, line: 577, type: !286)
!3032 = !DILocalVariable(name: "opStart2", scope: !3011, file: !3, line: 578, type: !2414)
!3033 = !DILocalVariable(name: "opStart3", scope: !3011, file: !3, line: 579, type: !2414)
!3034 = !DILocalVariable(name: "opStart4", scope: !3011, file: !3, line: 580, type: !2414)
!3035 = !DILocalVariable(name: "op1", scope: !3011, file: !3, line: 581, type: !143)
!3036 = !DILocalVariable(name: "op2", scope: !3011, file: !3, line: 582, type: !143)
!3037 = !DILocalVariable(name: "op3", scope: !3011, file: !3, line: 583, type: !143)
!3038 = !DILocalVariable(name: "op4", scope: !3011, file: !3, line: 584, type: !143)
!3039 = !DILocalVariable(name: "dtd", scope: !3011, file: !3, line: 585, type: !1955)
!3040 = !DILocalVariable(name: "dtLog", scope: !3011, file: !3, line: 586, type: !266)
!3041 = !DILocalVariable(name: "endSignal", scope: !3011, file: !3, line: 587, type: !66)
!3042 = !DILocalVariable(name: "_var_err__", scope: !3043, file: !3, line: 591, type: !286)
!3043 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 591, column: 9)
!3044 = !DILocalVariable(name: "_var_err__", scope: !3045, file: !3, line: 592, type: !286)
!3045 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 592, column: 9)
!3046 = !DILocalVariable(name: "_var_err__", scope: !3047, file: !3, line: 593, type: !286)
!3047 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 593, column: 9)
!3048 = !DILocalVariable(name: "_var_err__", scope: !3049, file: !3, line: 594, type: !286)
!3049 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 594, column: 9)
!3050 = !DILocalVariable(name: "endCheck", scope: !3051, file: !3, line: 637, type: !266)
!3051 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 637, column: 9)
!3052 = !DILocation(line: 550, column: 17, scope: !3003)
!3053 = !DILocation(line: 550, column: 30, scope: !3003)
!3054 = !DILocation(line: 551, column: 17, scope: !3003)
!3055 = !DILocation(line: 551, column: 30, scope: !3003)
!3056 = !DILocation(line: 552, column: 23, scope: !3003)
!3057 = !DILocation(line: 555, column: 9, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 555, column: 9)
!3059 = !DILocation(line: 555, column: 18, scope: !3058)
!3060 = !DILocation(line: 555, column: 9, scope: !3003)
!3061 = !DILocation(line: 555, column: 24, scope: !3058)
!3062 = !DILocation(line: 557, column: 9, scope: !3011)
!3063 = !DILocation(line: 557, column: 27, scope: !3011)
!3064 = !DILocation(line: 557, column: 50, scope: !3011)
!3065 = !DILocation(line: 558, column: 9, scope: !3011)
!3066 = !DILocation(line: 558, column: 21, scope: !3011)
!3067 = !DILocation(line: 558, column: 38, scope: !3011)
!3068 = !DILocation(line: 559, column: 9, scope: !3011)
!3069 = !DILocation(line: 559, column: 21, scope: !3011)
!3070 = !DILocation(line: 559, column: 28, scope: !3011)
!3071 = !DILocation(line: 559, column: 37, scope: !3011)
!3072 = !DILocation(line: 559, column: 35, scope: !3011)
!3073 = !DILocation(line: 560, column: 9, scope: !3011)
!3074 = !DILocation(line: 560, column: 21, scope: !3011)
!3075 = !DILocation(line: 560, column: 30, scope: !3011)
!3076 = !DILocation(line: 560, column: 35, scope: !3011)
!3077 = !DILocation(line: 561, column: 9, scope: !3011)
!3078 = !DILocation(line: 561, column: 27, scope: !3011)
!3079 = !DILocation(line: 561, column: 35, scope: !3011)
!3080 = !DILocation(line: 561, column: 42, scope: !3011)
!3081 = !DILocation(line: 562, column: 9, scope: !3011)
!3082 = !DILocation(line: 562, column: 33, scope: !3011)
!3083 = !DILocation(line: 562, column: 57, scope: !3011)
!3084 = !DILocation(line: 565, column: 9, scope: !3011)
!3085 = !DILocation(line: 565, column: 23, scope: !3011)
!3086 = !DILocation(line: 566, column: 9, scope: !3011)
!3087 = !DILocation(line: 566, column: 23, scope: !3011)
!3088 = !DILocation(line: 567, column: 9, scope: !3011)
!3089 = !DILocation(line: 567, column: 23, scope: !3011)
!3090 = !DILocation(line: 568, column: 9, scope: !3011)
!3091 = !DILocation(line: 568, column: 23, scope: !3011)
!3092 = !DILocation(line: 569, column: 9, scope: !3011)
!3093 = !DILocation(line: 569, column: 22, scope: !3011)
!3094 = !DILocation(line: 569, column: 45, scope: !3011)
!3095 = !DILocation(line: 569, column: 32, scope: !3011)
!3096 = !DILocation(line: 570, column: 9, scope: !3011)
!3097 = !DILocation(line: 570, column: 22, scope: !3011)
!3098 = !DILocation(line: 570, column: 45, scope: !3011)
!3099 = !DILocation(line: 570, column: 51, scope: !3011)
!3100 = !DILocation(line: 570, column: 32, scope: !3011)
!3101 = !DILocation(line: 571, column: 9, scope: !3011)
!3102 = !DILocation(line: 571, column: 22, scope: !3011)
!3103 = !DILocation(line: 571, column: 45, scope: !3011)
!3104 = !DILocation(line: 571, column: 51, scope: !3011)
!3105 = !DILocation(line: 571, column: 32, scope: !3011)
!3106 = !DILocation(line: 572, column: 9, scope: !3011)
!3107 = !DILocation(line: 572, column: 22, scope: !3011)
!3108 = !DILocation(line: 572, column: 32, scope: !3011)
!3109 = !DILocation(line: 572, column: 44, scope: !3011)
!3110 = !DILocation(line: 572, column: 54, scope: !3011)
!3111 = !DILocation(line: 572, column: 52, scope: !3011)
!3112 = !DILocation(line: 572, column: 64, scope: !3011)
!3113 = !DILocation(line: 572, column: 62, scope: !3011)
!3114 = !DILocation(line: 572, column: 72, scope: !3011)
!3115 = !DILocation(line: 572, column: 41, scope: !3011)
!3116 = !DILocation(line: 573, column: 9, scope: !3011)
!3117 = !DILocation(line: 573, column: 27, scope: !3011)
!3118 = !DILocation(line: 573, column: 37, scope: !3011)
!3119 = !DILocation(line: 573, column: 44, scope: !3011)
!3120 = !DILocation(line: 574, column: 9, scope: !3011)
!3121 = !DILocation(line: 574, column: 27, scope: !3011)
!3122 = !DILocation(line: 574, column: 37, scope: !3011)
!3123 = !DILocation(line: 574, column: 47, scope: !3011)
!3124 = !DILocation(line: 574, column: 45, scope: !3011)
!3125 = !DILocation(line: 575, column: 9, scope: !3011)
!3126 = !DILocation(line: 575, column: 27, scope: !3011)
!3127 = !DILocation(line: 575, column: 37, scope: !3011)
!3128 = !DILocation(line: 575, column: 47, scope: !3011)
!3129 = !DILocation(line: 575, column: 45, scope: !3011)
!3130 = !DILocation(line: 576, column: 9, scope: !3011)
!3131 = !DILocation(line: 576, column: 27, scope: !3011)
!3132 = !DILocation(line: 576, column: 37, scope: !3011)
!3133 = !DILocation(line: 576, column: 47, scope: !3011)
!3134 = !DILocation(line: 576, column: 45, scope: !3011)
!3135 = !DILocation(line: 577, column: 9, scope: !3011)
!3136 = !DILocation(line: 577, column: 22, scope: !3011)
!3137 = !DILocation(line: 577, column: 37, scope: !3011)
!3138 = !DILocation(line: 577, column: 44, scope: !3011)
!3139 = !DILocation(line: 577, column: 48, scope: !3011)
!3140 = !DILocation(line: 578, column: 9, scope: !3011)
!3141 = !DILocation(line: 578, column: 21, scope: !3011)
!3142 = !DILocation(line: 578, column: 32, scope: !3011)
!3143 = !DILocation(line: 578, column: 41, scope: !3011)
!3144 = !DILocation(line: 578, column: 39, scope: !3011)
!3145 = !DILocation(line: 579, column: 9, scope: !3011)
!3146 = !DILocation(line: 579, column: 21, scope: !3011)
!3147 = !DILocation(line: 579, column: 32, scope: !3011)
!3148 = !DILocation(line: 579, column: 43, scope: !3011)
!3149 = !DILocation(line: 579, column: 41, scope: !3011)
!3150 = !DILocation(line: 580, column: 9, scope: !3011)
!3151 = !DILocation(line: 580, column: 21, scope: !3011)
!3152 = !DILocation(line: 580, column: 32, scope: !3011)
!3153 = !DILocation(line: 580, column: 43, scope: !3011)
!3154 = !DILocation(line: 580, column: 41, scope: !3011)
!3155 = !DILocation(line: 581, column: 9, scope: !3011)
!3156 = !DILocation(line: 581, column: 15, scope: !3011)
!3157 = !DILocation(line: 581, column: 21, scope: !3011)
!3158 = !DILocation(line: 582, column: 9, scope: !3011)
!3159 = !DILocation(line: 582, column: 15, scope: !3011)
!3160 = !DILocation(line: 582, column: 21, scope: !3011)
!3161 = !DILocation(line: 583, column: 9, scope: !3011)
!3162 = !DILocation(line: 583, column: 15, scope: !3011)
!3163 = !DILocation(line: 583, column: 21, scope: !3011)
!3164 = !DILocation(line: 584, column: 9, scope: !3011)
!3165 = !DILocation(line: 584, column: 15, scope: !3011)
!3166 = !DILocation(line: 584, column: 21, scope: !3011)
!3167 = !DILocation(line: 585, column: 9, scope: !3011)
!3168 = !DILocation(line: 585, column: 26, scope: !3011)
!3169 = !DILocation(line: 585, column: 50, scope: !3011)
!3170 = !DILocation(line: 585, column: 32, scope: !3011)
!3171 = !DILocation(line: 586, column: 9, scope: !3011)
!3172 = !DILocation(line: 586, column: 19, scope: !3011)
!3173 = !DILocation(line: 586, column: 31, scope: !3011)
!3174 = !DILocation(line: 586, column: 27, scope: !3011)
!3175 = !DILocation(line: 587, column: 9, scope: !3011)
!3176 = !DILocation(line: 587, column: 13, scope: !3011)
!3177 = !DILocation(line: 589, column: 13, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 589, column: 13)
!3179 = !DILocation(line: 589, column: 23, scope: !3178)
!3180 = !DILocation(line: 589, column: 21, scope: !3178)
!3181 = !DILocation(line: 589, column: 13, scope: !3011)
!3182 = !DILocation(line: 589, column: 33, scope: !3178)
!3183 = !DILocation(line: 590, column: 13, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 590, column: 13)
!3185 = !DILocation(line: 590, column: 24, scope: !3184)
!3186 = !DILocation(line: 590, column: 22, scope: !3184)
!3187 = !DILocation(line: 590, column: 13, scope: !3011)
!3188 = !DILocation(line: 590, column: 30, scope: !3184)
!3189 = !DILocation(line: 591, column: 9, scope: !3043)
!3190 = !DILocation(line: 591, column: 9, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 591, column: 9)
!3192 = !DILocation(line: 591, column: 9, scope: !3011)
!3193 = !DILocation(line: 592, column: 9, scope: !3045)
!3194 = !DILocation(line: 592, column: 9, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 592, column: 9)
!3196 = !DILocation(line: 592, column: 9, scope: !3011)
!3197 = !DILocation(line: 593, column: 9, scope: !3047)
!3198 = !DILocation(line: 593, column: 9, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 593, column: 9)
!3200 = !DILocation(line: 593, column: 9, scope: !3011)
!3201 = !DILocation(line: 594, column: 9, scope: !3049)
!3202 = !DILocation(line: 594, column: 9, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 594, column: 9)
!3204 = !DILocation(line: 594, column: 9, scope: !3011)
!3205 = !DILocation(line: 597, column: 22, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 597, column: 13)
!3207 = !DILocation(line: 597, column: 29, scope: !3206)
!3208 = !DILocation(line: 597, column: 27, scope: !3206)
!3209 = !DILocation(line: 597, column: 34, scope: !3206)
!3210 = !DILocation(line: 597, column: 13, scope: !3011)
!3211 = !DILocation(line: 598, column: 13, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 597, column: 53)
!3213 = !DILocation(line: 598, column: 22, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 598, column: 13)
!3215 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 598, column: 13)
!3216 = !DILocation(line: 598, column: 36, scope: !3214)
!3217 = !DILocation(line: 598, column: 42, scope: !3214)
!3218 = !DILocation(line: 598, column: 40, scope: !3214)
!3219 = !DILocation(line: 598, column: 33, scope: !3214)
!3220 = !DILocation(line: 598, column: 13, scope: !3215)
!3221 = !DILocation(line: 599, column: 17, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 599, column: 17)
!3223 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 598, column: 54)
!3224 = !DILocation(line: 599, column: 17, scope: !3223)
!3225 = !DILocation(line: 600, column: 17, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 600, column: 17)
!3227 = !DILocation(line: 600, column: 17, scope: !3223)
!3228 = !DILocation(line: 601, column: 17, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 601, column: 17)
!3230 = !DILocation(line: 601, column: 17, scope: !3223)
!3231 = !DILocation(line: 602, column: 17, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 602, column: 17)
!3233 = !DILocation(line: 602, column: 17, scope: !3223)
!3234 = !DILocation(line: 603, column: 17, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 603, column: 17)
!3236 = !DILocation(line: 603, column: 17, scope: !3223)
!3237 = !DILocation(line: 604, column: 17, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 604, column: 17)
!3239 = !DILocation(line: 604, column: 17, scope: !3223)
!3240 = !DILocation(line: 605, column: 17, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 605, column: 17)
!3242 = !DILocation(line: 605, column: 17, scope: !3223)
!3243 = !DILocation(line: 606, column: 17, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 606, column: 17)
!3245 = !DILocation(line: 606, column: 17, scope: !3223)
!3246 = !DILocation(line: 607, column: 17, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 607, column: 17)
!3248 = !DILocation(line: 607, column: 17, scope: !3223)
!3249 = !DILocation(line: 608, column: 17, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 608, column: 17)
!3251 = !DILocation(line: 608, column: 17, scope: !3223)
!3252 = !DILocation(line: 609, column: 17, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 609, column: 17)
!3254 = !DILocation(line: 609, column: 17, scope: !3223)
!3255 = !DILocation(line: 610, column: 17, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 610, column: 17)
!3257 = !DILocation(line: 610, column: 17, scope: !3223)
!3258 = !DILocation(line: 611, column: 17, scope: !3223)
!3259 = !DILocation(line: 612, column: 17, scope: !3223)
!3260 = !DILocation(line: 613, column: 17, scope: !3223)
!3261 = !DILocation(line: 614, column: 17, scope: !3223)
!3262 = !DILocation(line: 615, column: 30, scope: !3223)
!3263 = !DILocation(line: 615, column: 60, scope: !3223)
!3264 = !DILocation(line: 615, column: 27, scope: !3223)
!3265 = !DILocation(line: 616, column: 30, scope: !3223)
!3266 = !DILocation(line: 616, column: 60, scope: !3223)
!3267 = !DILocation(line: 616, column: 27, scope: !3223)
!3268 = !DILocation(line: 617, column: 30, scope: !3223)
!3269 = !DILocation(line: 617, column: 60, scope: !3223)
!3270 = !DILocation(line: 617, column: 27, scope: !3223)
!3271 = !DILocation(line: 618, column: 30, scope: !3223)
!3272 = !DILocation(line: 618, column: 60, scope: !3223)
!3273 = !DILocation(line: 618, column: 27, scope: !3223)
!3274 = !DILocation(line: 598, column: 13, scope: !3214)
!3275 = distinct !{!3275, !3220, !3276, !443, !444}
!3276 = !DILocation(line: 619, column: 13, scope: !3215)
!3277 = !DILocation(line: 620, column: 9, scope: !3212)
!3278 = !DILocation(line: 625, column: 13, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 625, column: 13)
!3280 = !DILocation(line: 625, column: 19, scope: !3279)
!3281 = !DILocation(line: 625, column: 17, scope: !3279)
!3282 = !DILocation(line: 625, column: 13, scope: !3011)
!3283 = !DILocation(line: 625, column: 29, scope: !3279)
!3284 = !DILocation(line: 626, column: 13, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 626, column: 13)
!3286 = !DILocation(line: 626, column: 19, scope: !3285)
!3287 = !DILocation(line: 626, column: 17, scope: !3285)
!3288 = !DILocation(line: 626, column: 13, scope: !3011)
!3289 = !DILocation(line: 626, column: 29, scope: !3285)
!3290 = !DILocation(line: 627, column: 13, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 627, column: 13)
!3292 = !DILocation(line: 627, column: 19, scope: !3291)
!3293 = !DILocation(line: 627, column: 17, scope: !3291)
!3294 = !DILocation(line: 627, column: 13, scope: !3011)
!3295 = !DILocation(line: 627, column: 29, scope: !3291)
!3296 = !DILocation(line: 631, column: 28, scope: !3011)
!3297 = !DILocation(line: 631, column: 41, scope: !3011)
!3298 = !DILocation(line: 631, column: 51, scope: !3011)
!3299 = !DILocation(line: 631, column: 55, scope: !3011)
!3300 = !DILocation(line: 631, column: 9, scope: !3011)
!3301 = !DILocation(line: 632, column: 28, scope: !3011)
!3302 = !DILocation(line: 632, column: 41, scope: !3011)
!3303 = !DILocation(line: 632, column: 51, scope: !3011)
!3304 = !DILocation(line: 632, column: 55, scope: !3011)
!3305 = !DILocation(line: 632, column: 9, scope: !3011)
!3306 = !DILocation(line: 633, column: 28, scope: !3011)
!3307 = !DILocation(line: 633, column: 41, scope: !3011)
!3308 = !DILocation(line: 633, column: 51, scope: !3011)
!3309 = !DILocation(line: 633, column: 55, scope: !3011)
!3310 = !DILocation(line: 633, column: 9, scope: !3011)
!3311 = !DILocation(line: 634, column: 28, scope: !3011)
!3312 = !DILocation(line: 634, column: 41, scope: !3011)
!3313 = !DILocation(line: 634, column: 51, scope: !3011)
!3314 = !DILocation(line: 634, column: 55, scope: !3011)
!3315 = !DILocation(line: 634, column: 9, scope: !3011)
!3316 = !DILocation(line: 637, column: 11, scope: !3051)
!3317 = !DILocation(line: 637, column: 21, scope: !3051)
!3318 = !DILocation(line: 637, column: 32, scope: !3051)
!3319 = !DILocation(line: 637, column: 59, scope: !3051)
!3320 = !DILocation(line: 637, column: 57, scope: !3051)
!3321 = !DILocation(line: 637, column: 86, scope: !3051)
!3322 = !DILocation(line: 637, column: 84, scope: !3051)
!3323 = !DILocation(line: 637, column: 113, scope: !3051)
!3324 = !DILocation(line: 637, column: 111, scope: !3051)
!3325 = !DILocation(line: 638, column: 16, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 638, column: 15)
!3327 = !DILocation(line: 638, column: 15, scope: !3051)
!3328 = !DILocation(line: 638, column: 26, scope: !3326)
!3329 = !DILocation(line: 638, column: 61, scope: !3011)
!3330 = !DILocation(line: 641, column: 16, scope: !3011)
!3331 = !DILocation(line: 641, column: 9, scope: !3011)
!3332 = !DILocation(line: 642, column: 5, scope: !3003)
!3333 = !DILocation(line: 643, column: 1, scope: !3003)
!3334 = distinct !DISubprogram(name: "MEM_readLE16", scope: !51, file: !51, line: 148, type: !3335, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3337)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!95, !158}
!3337 = !{!3338}
!3338 = !DILocalVariable(name: "memPtr", arg: 1, scope: !3334, file: !51, line: 148, type: !158)
!3339 = !DILocation(line: 148, column: 41, scope: !3334)
!3340 = !DILocation(line: 150, column: 31, scope: !3334)
!3341 = !DILocation(line: 150, column: 12, scope: !3334)
!3342 = !DILocation(line: 150, column: 5, scope: !3334)
!3343 = !DILocation(line: 25, column: 50, scope: !183)
!3344 = !DILocation(line: 27, column: 9, scope: !189)
!3345 = !DILocation(line: 27, column: 9, scope: !183)
!3346 = !DILocation(line: 27, column: 2, scope: !183)
!3347 = distinct !DISubprogram(name: "HUF_fillDTableX2Level2", scope: !3, file: !3, line: 931, type: !3348, scopeLine: 935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !90, !66, !266, !1546, !272, !272, !1544, !1546, !66, !95}
!3350 = !{!3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3364, !3365, !3366, !3369, !3371, !3375, !3376, !3377}
!3351 = !DILocalVariable(name: "DTable", arg: 1, scope: !3347, file: !3, line: 931, type: !90)
!3352 = !DILocalVariable(name: "targetLog", arg: 2, scope: !3347, file: !3, line: 931, type: !66)
!3353 = !DILocalVariable(name: "consumedBits", arg: 3, scope: !3347, file: !3, line: 931, type: !266)
!3354 = !DILocalVariable(name: "rankVal", arg: 4, scope: !3347, file: !3, line: 932, type: !1546)
!3355 = !DILocalVariable(name: "minWeight", arg: 5, scope: !3347, file: !3, line: 932, type: !272)
!3356 = !DILocalVariable(name: "maxWeight1", arg: 6, scope: !3347, file: !3, line: 932, type: !272)
!3357 = !DILocalVariable(name: "sortedSymbols", arg: 7, scope: !3347, file: !3, line: 933, type: !1544)
!3358 = !DILocalVariable(name: "rankStart", arg: 8, scope: !3347, file: !3, line: 933, type: !1546)
!3359 = !DILocalVariable(name: "nbBitsBaseline", arg: 9, scope: !3347, file: !3, line: 934, type: !66)
!3360 = !DILocalVariable(name: "baseSeq", arg: 10, scope: !3347, file: !3, line: 934, type: !95)
!3361 = !DILocalVariable(name: "length", scope: !3362, file: !3, line: 941, type: !266)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 940, column: 22)
!3363 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 940, column: 9)
!3364 = !DILocalVariable(name: "DEltX2", scope: !3362, file: !3, line: 942, type: !317)
!3365 = !DILocalVariable(name: "skipSize", scope: !3362, file: !3, line: 943, type: !272)
!3366 = !DILocalVariable(name: "i", scope: !3367, file: !3, line: 958, type: !87)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 957, column: 13)
!3368 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 946, column: 25)
!3369 = !DILocalVariable(name: "w", scope: !3370, file: !3, line: 971, type: !87)
!3370 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 970, column: 5)
!3371 = !DILocalVariable(name: "begin", scope: !3372, file: !3, line: 973, type: !272)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 972, column: 50)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 972, column: 9)
!3374 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 972, column: 9)
!3375 = !DILocalVariable(name: "end", scope: !3372, file: !3, line: 974, type: !272)
!3376 = !DILocalVariable(name: "nbBits", scope: !3372, file: !3, line: 975, type: !266)
!3377 = !DILocalVariable(name: "totalBits", scope: !3372, file: !3, line: 976, type: !266)
!3378 = !DILocation(line: 931, column: 48, scope: !3347)
!3379 = !DILocation(line: 931, column: 60, scope: !3347)
!3380 = !DILocation(line: 931, column: 81, scope: !3347)
!3381 = !DILocation(line: 932, column: 39, scope: !3347)
!3382 = !DILocation(line: 932, column: 58, scope: !3347)
!3383 = !DILocation(line: 932, column: 79, scope: !3347)
!3384 = !DILocation(line: 933, column: 50, scope: !3347)
!3385 = !DILocation(line: 933, column: 76, scope: !3347)
!3386 = !DILocation(line: 934, column: 32, scope: !3347)
!3387 = !DILocation(line: 934, column: 52, scope: !3347)
!3388 = !DILocation(line: 940, column: 9, scope: !3363)
!3389 = !DILocation(line: 940, column: 18, scope: !3363)
!3390 = !DILocation(line: 940, column: 9, scope: !3347)
!3391 = !DILocation(line: 941, column: 9, scope: !3362)
!3392 = !DILocation(line: 941, column: 19, scope: !3362)
!3393 = !DILocation(line: 941, column: 36, scope: !3362)
!3394 = !DILocation(line: 941, column: 48, scope: !3362)
!3395 = !DILocation(line: 941, column: 46, scope: !3362)
!3396 = !DILocation(line: 941, column: 62, scope: !3362)
!3397 = !DILocation(line: 941, column: 31, scope: !3362)
!3398 = !DILocation(line: 942, column: 9, scope: !3362)
!3399 = !DILocation(line: 942, column: 19, scope: !3362)
!3400 = !DILocation(line: 942, column: 47, scope: !3362)
!3401 = !DILocation(line: 942, column: 56, scope: !3362)
!3402 = !DILocation(line: 942, column: 28, scope: !3362)
!3403 = !DILocation(line: 943, column: 9, scope: !3362)
!3404 = !DILocation(line: 943, column: 19, scope: !3362)
!3405 = !DILocation(line: 943, column: 30, scope: !3362)
!3406 = !DILocation(line: 943, column: 38, scope: !3362)
!3407 = !DILocation(line: 946, column: 17, scope: !3362)
!3408 = !DILocation(line: 946, column: 9, scope: !3362)
!3409 = !DILocation(line: 949, column: 13, scope: !3368)
!3410 = !DILocation(line: 950, column: 13, scope: !3368)
!3411 = !DILocation(line: 953, column: 13, scope: !3368)
!3412 = !DILocation(line: 954, column: 13, scope: !3368)
!3413 = !DILocation(line: 955, column: 13, scope: !3368)
!3414 = !DILocation(line: 958, column: 17, scope: !3367)
!3415 = !DILocation(line: 958, column: 21, scope: !3367)
!3416 = !DILocation(line: 959, column: 24, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 959, column: 17)
!3418 = !DILocation(line: 959, column: 22, scope: !3417)
!3419 = !DILocation(line: 959, column: 29, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 959, column: 17)
!3421 = !DILocation(line: 959, column: 33, scope: !3420)
!3422 = !DILocation(line: 959, column: 31, scope: !3420)
!3423 = !DILocation(line: 959, column: 17, scope: !3417)
!3424 = !DILocation(line: 960, column: 21, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 959, column: 51)
!3426 = !DILocation(line: 961, column: 21, scope: !3425)
!3427 = !DILocation(line: 962, column: 21, scope: !3425)
!3428 = !DILocation(line: 963, column: 21, scope: !3425)
!3429 = !DILocation(line: 964, column: 17, scope: !3425)
!3430 = !DILocation(line: 959, column: 45, scope: !3420)
!3431 = !DILocation(line: 959, column: 17, scope: !3420)
!3432 = distinct !{!3432, !3423, !3433, !443, !444}
!3433 = !DILocation(line: 964, column: 17, scope: !3417)
!3434 = !DILocation(line: 965, column: 13, scope: !3368)
!3435 = !DILocation(line: 966, column: 9, scope: !3368)
!3436 = !DILocation(line: 967, column: 5, scope: !3363)
!3437 = !DILocation(line: 967, column: 5, scope: !3362)
!3438 = !DILocation(line: 971, column: 9, scope: !3370)
!3439 = !DILocation(line: 971, column: 13, scope: !3370)
!3440 = !DILocation(line: 972, column: 18, scope: !3374)
!3441 = !DILocation(line: 972, column: 16, scope: !3374)
!3442 = !DILocation(line: 972, column: 14, scope: !3374)
!3443 = !DILocation(line: 972, column: 29, scope: !3373)
!3444 = !DILocation(line: 972, column: 33, scope: !3373)
!3445 = !DILocation(line: 972, column: 31, scope: !3373)
!3446 = !DILocation(line: 972, column: 9, scope: !3374)
!3447 = !DILocation(line: 973, column: 13, scope: !3372)
!3448 = !DILocation(line: 973, column: 23, scope: !3372)
!3449 = !DILocation(line: 973, column: 31, scope: !3372)
!3450 = !DILocation(line: 973, column: 41, scope: !3372)
!3451 = !DILocation(line: 974, column: 13, scope: !3372)
!3452 = !DILocation(line: 974, column: 23, scope: !3372)
!3453 = !DILocation(line: 974, column: 29, scope: !3372)
!3454 = !DILocation(line: 974, column: 39, scope: !3372)
!3455 = !DILocation(line: 974, column: 40, scope: !3372)
!3456 = !DILocation(line: 975, column: 13, scope: !3372)
!3457 = !DILocation(line: 975, column: 23, scope: !3372)
!3458 = !DILocation(line: 975, column: 32, scope: !3372)
!3459 = !DILocation(line: 975, column: 49, scope: !3372)
!3460 = !DILocation(line: 975, column: 47, scope: !3372)
!3461 = !DILocation(line: 976, column: 13, scope: !3372)
!3462 = !DILocation(line: 976, column: 23, scope: !3372)
!3463 = !DILocation(line: 976, column: 35, scope: !3372)
!3464 = !DILocation(line: 976, column: 44, scope: !3372)
!3465 = !DILocation(line: 976, column: 42, scope: !3372)
!3466 = !DILocation(line: 978, column: 17, scope: !3372)
!3467 = !DILocation(line: 978, column: 26, scope: !3372)
!3468 = !DILocation(line: 978, column: 34, scope: !3372)
!3469 = !DILocation(line: 978, column: 24, scope: !3372)
!3470 = !DILocation(line: 979, column: 17, scope: !3372)
!3471 = !DILocation(line: 979, column: 33, scope: !3372)
!3472 = !DILocation(line: 979, column: 31, scope: !3372)
!3473 = !DILocation(line: 979, column: 40, scope: !3372)
!3474 = !DILocation(line: 979, column: 56, scope: !3372)
!3475 = !DILocation(line: 979, column: 54, scope: !3372)
!3476 = !DILocation(line: 980, column: 17, scope: !3372)
!3477 = !DILocation(line: 980, column: 28, scope: !3372)
!3478 = !DILocation(line: 981, column: 17, scope: !3372)
!3479 = !DILocation(line: 977, column: 13, scope: !3372)
!3480 = !DILocation(line: 982, column: 9, scope: !3373)
!3481 = !DILocation(line: 982, column: 9, scope: !3372)
!3482 = !DILocation(line: 972, column: 45, scope: !3373)
!3483 = !DILocation(line: 972, column: 9, scope: !3373)
!3484 = distinct !{!3484, !3446, !3485, !443, !444}
!3485 = !DILocation(line: 982, column: 9, scope: !3374)
!3486 = !DILocation(line: 983, column: 5, scope: !3347)
!3487 = !DILocation(line: 984, column: 1, scope: !3347)
!3488 = distinct !DISubprogram(name: "HUF_fillDTableX2ForWeight", scope: !3, file: !3, line: 872, type: !3489, scopeLine: 877, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3491)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !90, !1544, !1544, !66, !66, !95, !272}
!3491 = !{!3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3506, !3510, !3514, !3518, !3522}
!3492 = !DILocalVariable(name: "DTableRank", arg: 1, scope: !3488, file: !3, line: 873, type: !90)
!3493 = !DILocalVariable(name: "begin", arg: 2, scope: !3488, file: !3, line: 874, type: !1544)
!3494 = !DILocalVariable(name: "end", arg: 3, scope: !3488, file: !3, line: 874, type: !1544)
!3495 = !DILocalVariable(name: "nbBits", arg: 4, scope: !3488, file: !3, line: 875, type: !66)
!3496 = !DILocalVariable(name: "tableLog", arg: 5, scope: !3488, file: !3, line: 875, type: !66)
!3497 = !DILocalVariable(name: "baseSeq", arg: 6, scope: !3488, file: !3, line: 876, type: !95)
!3498 = !DILocalVariable(name: "level", arg: 7, scope: !3488, file: !3, line: 876, type: !272)
!3499 = !DILocalVariable(name: "length", scope: !3488, file: !3, line: 878, type: !266)
!3500 = !DILocalVariable(name: "ptr", scope: !3488, file: !3, line: 879, type: !1544)
!3501 = !DILocalVariable(name: "DElt", scope: !3502, file: !3, line: 884, type: !193)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 883, column: 46)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 883, column: 9)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 883, column: 9)
!3505 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 881, column: 21)
!3506 = !DILocalVariable(name: "DElt", scope: !3507, file: !3, line: 890, type: !193)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 889, column: 46)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 889, column: 9)
!3509 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 889, column: 9)
!3510 = !DILocalVariable(name: "DEltX2", scope: !3511, file: !3, line: 898, type: !317)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 897, column: 46)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 897, column: 9)
!3513 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 897, column: 9)
!3514 = !DILocalVariable(name: "DEltX2", scope: !3515, file: !3, line: 906, type: !317)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 905, column: 46)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 905, column: 9)
!3517 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 905, column: 9)
!3518 = !DILocalVariable(name: "DEltX2", scope: !3519, file: !3, line: 916, type: !317)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !3, line: 915, column: 46)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !3, line: 915, column: 9)
!3521 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 915, column: 9)
!3522 = !DILocalVariable(name: "DTableRankEnd", scope: !3519, file: !3, line: 917, type: !1218)
!3523 = !DILocation(line: 873, column: 17, scope: !3488)
!3524 = !DILocation(line: 874, column: 27, scope: !3488)
!3525 = !DILocation(line: 874, column: 56, scope: !3488)
!3526 = !DILocation(line: 875, column: 9, scope: !3488)
!3527 = !DILocation(line: 875, column: 21, scope: !3488)
!3528 = !DILocation(line: 876, column: 9, scope: !3488)
!3529 = !DILocation(line: 876, column: 28, scope: !3488)
!3530 = !DILocation(line: 878, column: 5, scope: !3488)
!3531 = !DILocation(line: 878, column: 15, scope: !3488)
!3532 = !DILocation(line: 878, column: 32, scope: !3488)
!3533 = !DILocation(line: 878, column: 43, scope: !3488)
!3534 = !DILocation(line: 878, column: 41, scope: !3488)
!3535 = !DILocation(line: 878, column: 51, scope: !3488)
!3536 = !DILocation(line: 878, column: 27, scope: !3488)
!3537 = !DILocation(line: 879, column: 5, scope: !3488)
!3538 = !DILocation(line: 879, column: 27, scope: !3488)
!3539 = !DILocation(line: 881, column: 13, scope: !3488)
!3540 = !DILocation(line: 881, column: 5, scope: !3488)
!3541 = !DILocation(line: 883, column: 20, scope: !3504)
!3542 = !DILocation(line: 883, column: 18, scope: !3504)
!3543 = !DILocation(line: 883, column: 14, scope: !3504)
!3544 = !DILocation(line: 883, column: 27, scope: !3503)
!3545 = !DILocation(line: 883, column: 34, scope: !3503)
!3546 = !DILocation(line: 883, column: 31, scope: !3503)
!3547 = !DILocation(line: 883, column: 9, scope: !3504)
!3548 = !DILocation(line: 884, column: 13, scope: !3502)
!3549 = !DILocation(line: 884, column: 30, scope: !3502)
!3550 = !DILocation(line: 884, column: 53, scope: !3502)
!3551 = !DILocation(line: 884, column: 58, scope: !3502)
!3552 = !DILocation(line: 884, column: 66, scope: !3502)
!3553 = !DILocation(line: 884, column: 74, scope: !3502)
!3554 = !DILocation(line: 884, column: 83, scope: !3502)
!3555 = !DILocation(line: 884, column: 37, scope: !3502)
!3556 = !DILocation(line: 885, column: 24, scope: !3502)
!3557 = !DILocation(line: 885, column: 29, scope: !3502)
!3558 = !DILocation(line: 886, column: 9, scope: !3503)
!3559 = !DILocation(line: 886, column: 9, scope: !3502)
!3560 = !DILocation(line: 883, column: 39, scope: !3503)
!3561 = !DILocation(line: 883, column: 9, scope: !3503)
!3562 = distinct !{!3562, !3547, !3563, !443, !444}
!3563 = !DILocation(line: 886, column: 9, scope: !3504)
!3564 = !DILocation(line: 887, column: 9, scope: !3505)
!3565 = !DILocation(line: 889, column: 20, scope: !3509)
!3566 = !DILocation(line: 889, column: 18, scope: !3509)
!3567 = !DILocation(line: 889, column: 14, scope: !3509)
!3568 = !DILocation(line: 889, column: 27, scope: !3508)
!3569 = !DILocation(line: 889, column: 34, scope: !3508)
!3570 = !DILocation(line: 889, column: 31, scope: !3508)
!3571 = !DILocation(line: 889, column: 9, scope: !3509)
!3572 = !DILocation(line: 890, column: 13, scope: !3507)
!3573 = !DILocation(line: 890, column: 30, scope: !3507)
!3574 = !DILocation(line: 890, column: 53, scope: !3507)
!3575 = !DILocation(line: 890, column: 58, scope: !3507)
!3576 = !DILocation(line: 890, column: 66, scope: !3507)
!3577 = !DILocation(line: 890, column: 74, scope: !3507)
!3578 = !DILocation(line: 890, column: 83, scope: !3507)
!3579 = !DILocation(line: 890, column: 37, scope: !3507)
!3580 = !DILocation(line: 891, column: 13, scope: !3507)
!3581 = !DILocation(line: 891, column: 29, scope: !3507)
!3582 = !DILocation(line: 892, column: 13, scope: !3507)
!3583 = !DILocation(line: 892, column: 29, scope: !3507)
!3584 = !DILocation(line: 893, column: 24, scope: !3507)
!3585 = !DILocation(line: 894, column: 9, scope: !3508)
!3586 = !DILocation(line: 894, column: 9, scope: !3507)
!3587 = !DILocation(line: 889, column: 39, scope: !3508)
!3588 = !DILocation(line: 889, column: 9, scope: !3508)
!3589 = distinct !{!3589, !3571, !3590, !443, !444}
!3590 = !DILocation(line: 894, column: 9, scope: !3509)
!3591 = !DILocation(line: 895, column: 9, scope: !3505)
!3592 = !DILocation(line: 897, column: 20, scope: !3513)
!3593 = !DILocation(line: 897, column: 18, scope: !3513)
!3594 = !DILocation(line: 897, column: 14, scope: !3513)
!3595 = !DILocation(line: 897, column: 27, scope: !3512)
!3596 = !DILocation(line: 897, column: 34, scope: !3512)
!3597 = !DILocation(line: 897, column: 31, scope: !3512)
!3598 = !DILocation(line: 897, column: 9, scope: !3513)
!3599 = !DILocation(line: 898, column: 13, scope: !3511)
!3600 = !DILocation(line: 898, column: 23, scope: !3511)
!3601 = !DILocation(line: 898, column: 51, scope: !3511)
!3602 = !DILocation(line: 898, column: 56, scope: !3511)
!3603 = !DILocation(line: 898, column: 64, scope: !3511)
!3604 = !DILocation(line: 898, column: 72, scope: !3511)
!3605 = !DILocation(line: 898, column: 81, scope: !3511)
!3606 = !DILocation(line: 898, column: 32, scope: !3511)
!3607 = !DILocation(line: 899, column: 13, scope: !3511)
!3608 = !DILocation(line: 900, column: 13, scope: !3511)
!3609 = !DILocation(line: 901, column: 24, scope: !3511)
!3610 = !DILocation(line: 902, column: 9, scope: !3512)
!3611 = !DILocation(line: 902, column: 9, scope: !3511)
!3612 = !DILocation(line: 897, column: 39, scope: !3512)
!3613 = !DILocation(line: 897, column: 9, scope: !3512)
!3614 = distinct !{!3614, !3598, !3615, !443, !444}
!3615 = !DILocation(line: 902, column: 9, scope: !3513)
!3616 = !DILocation(line: 903, column: 9, scope: !3505)
!3617 = !DILocation(line: 905, column: 20, scope: !3517)
!3618 = !DILocation(line: 905, column: 18, scope: !3517)
!3619 = !DILocation(line: 905, column: 14, scope: !3517)
!3620 = !DILocation(line: 905, column: 27, scope: !3516)
!3621 = !DILocation(line: 905, column: 34, scope: !3516)
!3622 = !DILocation(line: 905, column: 31, scope: !3516)
!3623 = !DILocation(line: 905, column: 9, scope: !3517)
!3624 = !DILocation(line: 906, column: 13, scope: !3515)
!3625 = !DILocation(line: 906, column: 23, scope: !3515)
!3626 = !DILocation(line: 906, column: 51, scope: !3515)
!3627 = !DILocation(line: 906, column: 56, scope: !3515)
!3628 = !DILocation(line: 906, column: 64, scope: !3515)
!3629 = !DILocation(line: 906, column: 72, scope: !3515)
!3630 = !DILocation(line: 906, column: 81, scope: !3515)
!3631 = !DILocation(line: 906, column: 32, scope: !3515)
!3632 = !DILocation(line: 907, column: 13, scope: !3515)
!3633 = !DILocation(line: 908, column: 13, scope: !3515)
!3634 = !DILocation(line: 909, column: 13, scope: !3515)
!3635 = !DILocation(line: 910, column: 13, scope: !3515)
!3636 = !DILocation(line: 911, column: 24, scope: !3515)
!3637 = !DILocation(line: 912, column: 9, scope: !3516)
!3638 = !DILocation(line: 912, column: 9, scope: !3515)
!3639 = !DILocation(line: 905, column: 39, scope: !3516)
!3640 = !DILocation(line: 905, column: 9, scope: !3516)
!3641 = distinct !{!3641, !3623, !3642, !443, !444}
!3642 = !DILocation(line: 912, column: 9, scope: !3517)
!3643 = !DILocation(line: 913, column: 9, scope: !3505)
!3644 = !DILocation(line: 915, column: 20, scope: !3521)
!3645 = !DILocation(line: 915, column: 18, scope: !3521)
!3646 = !DILocation(line: 915, column: 14, scope: !3521)
!3647 = !DILocation(line: 915, column: 27, scope: !3520)
!3648 = !DILocation(line: 915, column: 34, scope: !3520)
!3649 = !DILocation(line: 915, column: 31, scope: !3520)
!3650 = !DILocation(line: 915, column: 9, scope: !3521)
!3651 = !DILocation(line: 916, column: 13, scope: !3519)
!3652 = !DILocation(line: 916, column: 23, scope: !3519)
!3653 = !DILocation(line: 916, column: 51, scope: !3519)
!3654 = !DILocation(line: 916, column: 56, scope: !3519)
!3655 = !DILocation(line: 916, column: 64, scope: !3519)
!3656 = !DILocation(line: 916, column: 72, scope: !3519)
!3657 = !DILocation(line: 916, column: 81, scope: !3519)
!3658 = !DILocation(line: 916, column: 32, scope: !3519)
!3659 = !DILocation(line: 917, column: 13, scope: !3519)
!3660 = !DILocation(line: 917, column: 31, scope: !3519)
!3661 = !DILocation(line: 917, column: 47, scope: !3519)
!3662 = !DILocation(line: 917, column: 60, scope: !3519)
!3663 = !DILocation(line: 917, column: 58, scope: !3519)
!3664 = !DILocation(line: 918, column: 13, scope: !3519)
!3665 = !DILocation(line: 918, column: 20, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 918, column: 13)
!3667 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 918, column: 13)
!3668 = !DILocation(line: 918, column: 34, scope: !3666)
!3669 = !DILocation(line: 918, column: 31, scope: !3666)
!3670 = !DILocation(line: 918, column: 13, scope: !3667)
!3671 = !DILocation(line: 919, column: 17, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 918, column: 66)
!3673 = !DILocation(line: 920, column: 17, scope: !3672)
!3674 = !DILocation(line: 921, column: 17, scope: !3672)
!3675 = !DILocation(line: 922, column: 17, scope: !3672)
!3676 = !DILocation(line: 923, column: 13, scope: !3672)
!3677 = !DILocation(line: 918, column: 60, scope: !3666)
!3678 = !DILocation(line: 918, column: 13, scope: !3666)
!3679 = distinct !{!3679, !3670, !3680, !443, !444}
!3680 = !DILocation(line: 923, column: 13, scope: !3667)
!3681 = !DILocation(line: 924, column: 9, scope: !3520)
!3682 = !DILocation(line: 924, column: 9, scope: !3519)
!3683 = !DILocation(line: 915, column: 39, scope: !3520)
!3684 = !DILocation(line: 915, column: 9, scope: !3520)
!3685 = distinct !{!3685, !3650, !3686, !443, !444}
!3686 = !DILocation(line: 924, column: 9, scope: !3521)
!3687 = !DILocation(line: 925, column: 9, scope: !3505)
!3688 = !DILocation(line: 927, column: 1, scope: !3488)
!3689 = distinct !DISubprogram(name: "HUF_buildDEltX2U64", scope: !3, file: !3, line: 854, type: !3690, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!130, !66, !66, !95, !87}
!3692 = !{!3693, !3694, !3695, !3696, !3697}
!3693 = !DILocalVariable(name: "symbol", arg: 1, scope: !3689, file: !3, line: 854, type: !66)
!3694 = !DILocalVariable(name: "nbBits", arg: 2, scope: !3689, file: !3, line: 854, type: !66)
!3695 = !DILocalVariable(name: "baseSeq", arg: 3, scope: !3689, file: !3, line: 854, type: !95)
!3696 = !DILocalVariable(name: "level", arg: 4, scope: !3689, file: !3, line: 854, type: !87)
!3697 = !DILocalVariable(name: "DElt", scope: !3689, file: !3, line: 856, type: !66)
!3698 = !DILocation(line: 854, column: 35, scope: !3689)
!3699 = !DILocation(line: 854, column: 47, scope: !3689)
!3700 = !DILocation(line: 854, column: 59, scope: !3689)
!3701 = !DILocation(line: 854, column: 72, scope: !3689)
!3702 = !DILocation(line: 856, column: 5, scope: !3689)
!3703 = !DILocation(line: 856, column: 9, scope: !3689)
!3704 = !DILocation(line: 856, column: 35, scope: !3689)
!3705 = !DILocation(line: 856, column: 43, scope: !3689)
!3706 = !DILocation(line: 856, column: 51, scope: !3689)
!3707 = !DILocation(line: 856, column: 60, scope: !3689)
!3708 = !DILocation(line: 856, column: 16, scope: !3689)
!3709 = !DILocation(line: 857, column: 17, scope: !3689)
!3710 = !DILocation(line: 857, column: 12, scope: !3689)
!3711 = !DILocation(line: 857, column: 30, scope: !3689)
!3712 = !DILocation(line: 857, column: 25, scope: !3689)
!3713 = !DILocation(line: 857, column: 35, scope: !3689)
!3714 = !DILocation(line: 857, column: 22, scope: !3689)
!3715 = !DILocation(line: 858, column: 1, scope: !3689)
!3716 = !DILocation(line: 857, column: 5, scope: !3689)
!3717 = distinct !DISubprogram(name: "HUF_buildDEltX2U32", scope: !3, file: !3, line: 823, type: !3718, scopeLine: 824, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3720)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!66, !66, !66, !66, !87}
!3720 = !{!3721, !3722, !3723, !3724, !3725}
!3721 = !DILocalVariable(name: "symbol", arg: 1, scope: !3717, file: !3, line: 823, type: !66)
!3722 = !DILocalVariable(name: "nbBits", arg: 2, scope: !3717, file: !3, line: 823, type: !66)
!3723 = !DILocalVariable(name: "baseSeq", arg: 3, scope: !3717, file: !3, line: 823, type: !66)
!3724 = !DILocalVariable(name: "level", arg: 4, scope: !3717, file: !3, line: 823, type: !87)
!3725 = !DILocalVariable(name: "seq", scope: !3717, file: !3, line: 825, type: !66)
!3726 = !DILocation(line: 823, column: 35, scope: !3717)
!3727 = !DILocation(line: 823, column: 47, scope: !3717)
!3728 = !DILocation(line: 823, column: 59, scope: !3717)
!3729 = !DILocation(line: 823, column: 72, scope: !3717)
!3730 = !DILocation(line: 825, column: 5, scope: !3717)
!3731 = !DILocation(line: 825, column: 9, scope: !3717)
!3732 = !DILocation(line: 830, column: 9, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 830, column: 9)
!3734 = !DILocation(line: 830, column: 9, scope: !3717)
!3735 = !DILocation(line: 831, column: 15, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 830, column: 31)
!3737 = !DILocation(line: 831, column: 21, scope: !3736)
!3738 = !DILocation(line: 831, column: 28, scope: !3736)
!3739 = !DILocation(line: 831, column: 38, scope: !3736)
!3740 = !DILocation(line: 831, column: 49, scope: !3736)
!3741 = !DILocation(line: 831, column: 56, scope: !3736)
!3742 = !DILocation(line: 831, column: 46, scope: !3736)
!3743 = !DILocation(line: 831, column: 13, scope: !3736)
!3744 = !DILocation(line: 832, column: 16, scope: !3736)
!3745 = !DILocation(line: 832, column: 23, scope: !3736)
!3746 = !DILocation(line: 832, column: 30, scope: !3736)
!3747 = !DILocation(line: 832, column: 20, scope: !3736)
!3748 = !DILocation(line: 832, column: 45, scope: !3736)
!3749 = !DILocation(line: 832, column: 51, scope: !3736)
!3750 = !DILocation(line: 832, column: 37, scope: !3736)
!3751 = !DILocation(line: 832, column: 9, scope: !3736)
!3752 = !DILocation(line: 834, column: 15, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 833, column: 12)
!3754 = !DILocation(line: 834, column: 21, scope: !3753)
!3755 = !DILocation(line: 834, column: 29, scope: !3753)
!3756 = !DILocation(line: 834, column: 36, scope: !3753)
!3757 = !DILocation(line: 834, column: 46, scope: !3753)
!3758 = !DILocation(line: 834, column: 54, scope: !3753)
!3759 = !DILocation(line: 834, column: 62, scope: !3753)
!3760 = !DILocation(line: 834, column: 60, scope: !3753)
!3761 = !DILocation(line: 834, column: 13, scope: !3753)
!3762 = !DILocation(line: 835, column: 17, scope: !3753)
!3763 = !DILocation(line: 835, column: 21, scope: !3753)
!3764 = !DILocation(line: 835, column: 31, scope: !3753)
!3765 = !DILocation(line: 835, column: 38, scope: !3753)
!3766 = !DILocation(line: 835, column: 28, scope: !3753)
!3767 = !DILocation(line: 835, column: 51, scope: !3753)
!3768 = !DILocation(line: 835, column: 44, scope: !3753)
!3769 = !DILocation(line: 835, column: 9, scope: !3753)
!3770 = !DILocation(line: 837, column: 1, scope: !3717)
!3771 = distinct !DISubprogram(name: "HUF_buildDEltX2", scope: !3, file: !3, line: 842, type: !3772, scopeLine: 843, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3774)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!91, !66, !66, !66, !87}
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780}
!3775 = !DILocalVariable(name: "symbol", arg: 1, scope: !3771, file: !3, line: 842, type: !66)
!3776 = !DILocalVariable(name: "nbBits", arg: 2, scope: !3771, file: !3, line: 842, type: !66)
!3777 = !DILocalVariable(name: "baseSeq", arg: 3, scope: !3771, file: !3, line: 842, type: !66)
!3778 = !DILocalVariable(name: "level", arg: 4, scope: !3771, file: !3, line: 842, type: !87)
!3779 = !DILocalVariable(name: "DElt", scope: !3771, file: !3, line: 844, type: !91)
!3780 = !DILocalVariable(name: "val", scope: !3771, file: !3, line: 845, type: !266)
!3781 = !DILocation(line: 842, column: 39, scope: !3771)
!3782 = !DILocation(line: 842, column: 51, scope: !3771)
!3783 = !DILocation(line: 842, column: 63, scope: !3771)
!3784 = !DILocation(line: 842, column: 76, scope: !3771)
!3785 = !DILocation(line: 844, column: 16, scope: !3771)
!3786 = !DILocation(line: 845, column: 5, scope: !3771)
!3787 = !DILocation(line: 845, column: 15, scope: !3771)
!3788 = !DILocation(line: 845, column: 40, scope: !3771)
!3789 = !DILocation(line: 845, column: 48, scope: !3771)
!3790 = !DILocation(line: 845, column: 56, scope: !3771)
!3791 = !DILocation(line: 845, column: 65, scope: !3771)
!3792 = !DILocation(line: 845, column: 21, scope: !3771)
!3793 = !DILocation(line: 847, column: 5, scope: !3771)
!3794 = !DILocation(line: 849, column: 1, scope: !3771)
!3795 = distinct !DISubprogram(name: "HUF_decompress1X2_usingDTable_internal_bmi2", scope: !3, file: !3, line: 1453, type: !933, scopeLine: 1453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3796)
!3796 = !{!3797, !3798, !3799, !3800, !3801}
!3797 = !DILocalVariable(name: "dst", arg: 1, scope: !3795, file: !3, line: 1453, type: !129)
!3798 = !DILocalVariable(name: "dstSize", arg: 2, scope: !3795, file: !3, line: 1453, type: !82)
!3799 = !DILocalVariable(name: "cSrc", arg: 3, scope: !3795, file: !3, line: 1453, type: !158)
!3800 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !3795, file: !3, line: 1453, type: !82)
!3801 = !DILocalVariable(name: "DTable", arg: 5, scope: !3795, file: !3, line: 1453, type: !783)
!3802 = !DILocation(line: 1453, column: 1, scope: !3795)
!3803 = distinct !DISubprogram(name: "HUF_decompress1X2_usingDTable_internal_default", scope: !3, file: !3, line: 1453, type: !933, scopeLine: 1453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3804)
!3804 = !{!3805, !3806, !3807, !3808, !3809}
!3805 = !DILocalVariable(name: "dst", arg: 1, scope: !3803, file: !3, line: 1453, type: !129)
!3806 = !DILocalVariable(name: "dstSize", arg: 2, scope: !3803, file: !3, line: 1453, type: !82)
!3807 = !DILocalVariable(name: "cSrc", arg: 3, scope: !3803, file: !3, line: 1453, type: !158)
!3808 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !3803, file: !3, line: 1453, type: !82)
!3809 = !DILocalVariable(name: "DTable", arg: 5, scope: !3803, file: !3, line: 1453, type: !783)
!3810 = !DILocation(line: 1453, column: 1, scope: !3803)
!3811 = distinct !DISubprogram(name: "HUF_decompress1X2_usingDTable_internal_body", scope: !3, file: !3, line: 1218, type: !933, scopeLine: 1222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3812)
!3812 = !{!3813, !3814, !3815, !3816, !3817, !3818, !3819, !3821, !3823, !3824, !3825, !3827}
!3813 = !DILocalVariable(name: "dst", arg: 1, scope: !3811, file: !3, line: 1219, type: !129)
!3814 = !DILocalVariable(name: "dstSize", arg: 2, scope: !3811, file: !3, line: 1219, type: !82)
!3815 = !DILocalVariable(name: "cSrc", arg: 3, scope: !3811, file: !3, line: 1220, type: !158)
!3816 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !3811, file: !3, line: 1220, type: !82)
!3817 = !DILocalVariable(name: "DTable", arg: 5, scope: !3811, file: !3, line: 1221, type: !783)
!3818 = !DILocalVariable(name: "bitD", scope: !3811, file: !3, line: 1223, type: !2419)
!3819 = !DILocalVariable(name: "_var_err__", scope: !3820, file: !3, line: 1226, type: !286)
!3820 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 1226, column: 5)
!3821 = !DILocalVariable(name: "ostart", scope: !3822, file: !3, line: 1229, type: !2414)
!3822 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 1229, column: 5)
!3823 = !DILocalVariable(name: "oend", scope: !3822, file: !3, line: 1230, type: !2414)
!3824 = !DILocalVariable(name: "dtPtr", scope: !3822, file: !3, line: 1231, type: !3017)
!3825 = !DILocalVariable(name: "dt", scope: !3822, file: !3, line: 1232, type: !3826)
!3826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!3827 = !DILocalVariable(name: "dtd", scope: !3822, file: !3, line: 1233, type: !1955)
!3828 = !DILocation(line: 1219, column: 17, scope: !3811)
!3829 = !DILocation(line: 1219, column: 30, scope: !3811)
!3830 = !DILocation(line: 1220, column: 17, scope: !3811)
!3831 = !DILocation(line: 1220, column: 30, scope: !3811)
!3832 = !DILocation(line: 1221, column: 23, scope: !3811)
!3833 = !DILocation(line: 1223, column: 5, scope: !3811)
!3834 = !DILocation(line: 1223, column: 19, scope: !3811)
!3835 = !DILocation(line: 1226, column: 5, scope: !3820)
!3836 = !DILocation(line: 1226, column: 5, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 1226, column: 5)
!3838 = !DILocation(line: 1226, column: 5, scope: !3811)
!3839 = !DILocation(line: 1229, column: 9, scope: !3822)
!3840 = !DILocation(line: 1229, column: 21, scope: !3822)
!3841 = !DILocation(line: 1229, column: 38, scope: !3822)
!3842 = !DILocation(line: 1230, column: 9, scope: !3822)
!3843 = !DILocation(line: 1230, column: 21, scope: !3822)
!3844 = !DILocation(line: 1230, column: 28, scope: !3822)
!3845 = !DILocation(line: 1230, column: 37, scope: !3822)
!3846 = !DILocation(line: 1230, column: 35, scope: !3822)
!3847 = !DILocation(line: 1231, column: 9, scope: !3822)
!3848 = !DILocation(line: 1231, column: 27, scope: !3822)
!3849 = !DILocation(line: 1231, column: 35, scope: !3822)
!3850 = !DILocation(line: 1231, column: 41, scope: !3822)
!3851 = !DILocation(line: 1232, column: 9, scope: !3822)
!3852 = !DILocation(line: 1232, column: 33, scope: !3822)
!3853 = !DILocation(line: 1232, column: 57, scope: !3822)
!3854 = !DILocation(line: 1233, column: 9, scope: !3822)
!3855 = !DILocation(line: 1233, column: 26, scope: !3822)
!3856 = !DILocation(line: 1233, column: 50, scope: !3822)
!3857 = !DILocation(line: 1233, column: 32, scope: !3822)
!3858 = !DILocation(line: 1234, column: 28, scope: !3822)
!3859 = !DILocation(line: 1234, column: 43, scope: !3822)
!3860 = !DILocation(line: 1234, column: 49, scope: !3822)
!3861 = !DILocation(line: 1234, column: 57, scope: !3822)
!3862 = !DILocation(line: 1234, column: 53, scope: !3822)
!3863 = !DILocation(line: 1234, column: 9, scope: !3822)
!3864 = !DILocation(line: 1235, column: 5, scope: !3811)
!3865 = !DILocation(line: 1238, column: 10, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 1238, column: 9)
!3867 = !DILocation(line: 1238, column: 9, scope: !3811)
!3868 = !DILocation(line: 1238, column: 35, scope: !3866)
!3869 = !DILocation(line: 1241, column: 12, scope: !3811)
!3870 = !DILocation(line: 1241, column: 5, scope: !3811)
!3871 = !DILocation(line: 1242, column: 1, scope: !3811)
!3872 = distinct !DISubprogram(name: "HUF_decodeStreamX2", scope: !3, file: !3, line: 1173, type: !3873, scopeLine: 1175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!82, !143, !2480, !2414, !3826, !266}
!3875 = !{!3876, !3877, !3878, !3879, !3880, !3881}
!3876 = !DILocalVariable(name: "p", arg: 1, scope: !3872, file: !3, line: 1173, type: !143)
!3877 = !DILocalVariable(name: "bitDPtr", arg: 2, scope: !3872, file: !3, line: 1173, type: !2480)
!3878 = !DILocalVariable(name: "pEnd", arg: 3, scope: !3872, file: !3, line: 1173, type: !2414)
!3879 = !DILocalVariable(name: "dt", arg: 4, scope: !3872, file: !3, line: 1174, type: !3826)
!3880 = !DILocalVariable(name: "dtLog", arg: 5, scope: !3872, file: !3, line: 1174, type: !266)
!3881 = !DILocalVariable(name: "pStart", scope: !3872, file: !3, line: 1176, type: !2414)
!3882 = !DILocation(line: 1173, column: 26, scope: !3872)
!3883 = !DILocation(line: 1173, column: 44, scope: !3872)
!3884 = !DILocation(line: 1173, column: 65, scope: !3872)
!3885 = !DILocation(line: 1174, column: 41, scope: !3872)
!3886 = !DILocation(line: 1174, column: 55, scope: !3872)
!3887 = !DILocation(line: 1176, column: 5, scope: !3872)
!3888 = !DILocation(line: 1176, column: 17, scope: !3872)
!3889 = !DILocation(line: 1176, column: 26, scope: !3872)
!3890 = !DILocation(line: 1179, column: 18, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 1179, column: 9)
!3892 = !DILocation(line: 1179, column: 25, scope: !3891)
!3893 = !DILocation(line: 1179, column: 23, scope: !3891)
!3894 = !DILocation(line: 1179, column: 28, scope: !3891)
!3895 = !DILocation(line: 1179, column: 9, scope: !3872)
!3896 = !DILocation(line: 1180, column: 13, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 1180, column: 13)
!3898 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 1179, column: 62)
!3899 = !DILocation(line: 1180, column: 19, scope: !3897)
!3900 = !DILocation(line: 1180, column: 25, scope: !3897)
!3901 = !DILocation(line: 1180, column: 28, scope: !3897)
!3902 = !DILocation(line: 1180, column: 13, scope: !3898)
!3903 = !DILocation(line: 1182, column: 13, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 1180, column: 42)
!3905 = !DILocation(line: 1182, column: 39, scope: !3904)
!3906 = !DILocation(line: 1182, column: 21, scope: !3904)
!3907 = !DILocation(line: 1182, column: 48, scope: !3904)
!3908 = !DILocation(line: 1182, column: 78, scope: !3904)
!3909 = !DILocation(line: 1182, column: 82, scope: !3904)
!3910 = !DILocation(line: 1182, column: 86, scope: !3904)
!3911 = !DILocation(line: 1182, column: 80, scope: !3904)
!3912 = !DILocation(line: 1182, column: 75, scope: !3904)
!3913 = !DILocation(line: 1183, column: 17, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 1182, column: 91)
!3915 = !DILocation(line: 1184, column: 17, scope: !3914)
!3916 = !DILocation(line: 1185, column: 17, scope: !3914)
!3917 = !DILocation(line: 1186, column: 17, scope: !3914)
!3918 = !DILocation(line: 1187, column: 17, scope: !3914)
!3919 = distinct !{!3919, !3903, !3920, !443, !444}
!3920 = !DILocation(line: 1188, column: 13, scope: !3904)
!3921 = !DILocation(line: 1189, column: 9, scope: !3904)
!3922 = !DILocation(line: 1191, column: 13, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 1189, column: 16)
!3924 = !DILocation(line: 1191, column: 39, scope: !3923)
!3925 = !DILocation(line: 1191, column: 21, scope: !3923)
!3926 = !DILocation(line: 1191, column: 48, scope: !3923)
!3927 = !DILocation(line: 1191, column: 78, scope: !3923)
!3928 = !DILocation(line: 1191, column: 82, scope: !3923)
!3929 = !DILocation(line: 1191, column: 86, scope: !3923)
!3930 = !DILocation(line: 1191, column: 80, scope: !3923)
!3931 = !DILocation(line: 1191, column: 75, scope: !3923)
!3932 = !DILocation(line: 1192, column: 17, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 1192, column: 17)
!3934 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 1191, column: 123)
!3935 = !DILocation(line: 1192, column: 17, scope: !3934)
!3936 = !DILocation(line: 1193, column: 17, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 1193, column: 17)
!3938 = !DILocation(line: 1193, column: 17, scope: !3934)
!3939 = !DILocation(line: 1194, column: 17, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 1194, column: 17)
!3941 = !DILocation(line: 1194, column: 17, scope: !3934)
!3942 = !DILocation(line: 1195, column: 17, scope: !3934)
!3943 = distinct !{!3943, !3922, !3944, !443, !444}
!3944 = !DILocation(line: 1196, column: 13, scope: !3923)
!3945 = !DILocation(line: 1198, column: 5, scope: !3898)
!3946 = !DILocation(line: 1199, column: 27, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 1198, column: 12)
!3948 = !DILocation(line: 1199, column: 9, scope: !3947)
!3949 = !DILocation(line: 1203, column: 18, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 1203, column: 9)
!3951 = !DILocation(line: 1203, column: 25, scope: !3950)
!3952 = !DILocation(line: 1203, column: 23, scope: !3950)
!3953 = !DILocation(line: 1203, column: 28, scope: !3950)
!3954 = !DILocation(line: 1203, column: 9, scope: !3872)
!3955 = !DILocation(line: 1204, column: 9, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 1203, column: 34)
!3957 = !DILocation(line: 1204, column: 35, scope: !3956)
!3958 = !DILocation(line: 1204, column: 17, scope: !3956)
!3959 = !DILocation(line: 1204, column: 44, scope: !3956)
!3960 = !DILocation(line: 1204, column: 74, scope: !3956)
!3961 = !DILocation(line: 1204, column: 79, scope: !3956)
!3962 = !DILocation(line: 1204, column: 83, scope: !3956)
!3963 = !DILocation(line: 1204, column: 76, scope: !3956)
!3964 = !DILocation(line: 1204, column: 71, scope: !3956)
!3965 = !DILocation(line: 1205, column: 13, scope: !3956)
!3966 = distinct !{!3966, !3955, !3965, !443, !444}
!3967 = !DILocation(line: 1207, column: 9, scope: !3956)
!3968 = !DILocation(line: 1207, column: 16, scope: !3956)
!3969 = !DILocation(line: 1207, column: 21, scope: !3956)
!3970 = !DILocation(line: 1207, column: 25, scope: !3956)
!3971 = !DILocation(line: 1207, column: 18, scope: !3956)
!3972 = !DILocation(line: 1208, column: 13, scope: !3956)
!3973 = distinct !{!3973, !3967, !3972, !443, !444}
!3974 = !DILocation(line: 1209, column: 5, scope: !3956)
!3975 = !DILocation(line: 1211, column: 9, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 1211, column: 9)
!3977 = !DILocation(line: 1211, column: 13, scope: !3976)
!3978 = !DILocation(line: 1211, column: 11, scope: !3976)
!3979 = !DILocation(line: 1211, column: 9, scope: !3872)
!3980 = !DILocation(line: 1212, column: 37, scope: !3976)
!3981 = !DILocation(line: 1212, column: 40, scope: !3976)
!3982 = !DILocation(line: 1212, column: 49, scope: !3976)
!3983 = !DILocation(line: 1212, column: 53, scope: !3976)
!3984 = !DILocation(line: 1212, column: 14, scope: !3976)
!3985 = !DILocation(line: 1212, column: 11, scope: !3976)
!3986 = !DILocation(line: 1212, column: 9, scope: !3976)
!3987 = !DILocation(line: 1214, column: 12, scope: !3872)
!3988 = !DILocation(line: 1214, column: 14, scope: !3872)
!3989 = !DILocation(line: 1214, column: 13, scope: !3872)
!3990 = !DILocation(line: 1215, column: 1, scope: !3872)
!3991 = !DILocation(line: 1214, column: 5, scope: !3872)
!3992 = distinct !DISubprogram(name: "HUF_decodeSymbolX2", scope: !3, file: !3, line: 1135, type: !3993, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!66, !129, !2480, !192, !266}
!3995 = !{!3996, !3997, !3998, !3999, !4000}
!3996 = !DILocalVariable(name: "op", arg: 1, scope: !3992, file: !3, line: 1135, type: !129)
!3997 = !DILocalVariable(name: "DStream", arg: 2, scope: !3992, file: !3, line: 1135, type: !2480)
!3998 = !DILocalVariable(name: "dt", arg: 3, scope: !3992, file: !3, line: 1135, type: !192)
!3999 = !DILocalVariable(name: "dtLog", arg: 4, scope: !3992, file: !3, line: 1135, type: !266)
!4000 = !DILocalVariable(name: "val", scope: !3992, file: !3, line: 1137, type: !286)
!4001 = !DILocation(line: 1135, column: 26, scope: !3992)
!4002 = !DILocation(line: 1135, column: 45, scope: !3992)
!4003 = !DILocation(line: 1135, column: 72, scope: !3992)
!4004 = !DILocation(line: 1135, column: 86, scope: !3992)
!4005 = !DILocation(line: 1137, column: 5, scope: !3992)
!4006 = !DILocation(line: 1137, column: 18, scope: !3992)
!4007 = !DILocation(line: 1137, column: 41, scope: !3992)
!4008 = !DILocation(line: 1137, column: 50, scope: !3992)
!4009 = !DILocation(line: 1137, column: 24, scope: !3992)
!4010 = !DILocation(line: 1138, column: 5, scope: !3992)
!4011 = !DILocation(line: 1139, column: 18, scope: !3992)
!4012 = !DILocation(line: 1139, column: 27, scope: !3992)
!4013 = !DILocation(line: 1139, column: 30, scope: !3992)
!4014 = !DILocation(line: 1139, column: 35, scope: !3992)
!4015 = !DILocation(line: 1139, column: 5, scope: !3992)
!4016 = !DILocation(line: 1140, column: 12, scope: !3992)
!4017 = !DILocation(line: 1140, column: 15, scope: !3992)
!4018 = !DILocation(line: 1140, column: 20, scope: !3992)
!4019 = !DILocation(line: 1141, column: 1, scope: !3992)
!4020 = !DILocation(line: 1140, column: 5, scope: !3992)
!4021 = distinct !DISubprogram(name: "HUF_decodeLastSymbolX2", scope: !3, file: !3, line: 1144, type: !3993, scopeLine: 1145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4022)
!4022 = !{!4023, !4024, !4025, !4026, !4027}
!4023 = !DILocalVariable(name: "op", arg: 1, scope: !4021, file: !3, line: 1144, type: !129)
!4024 = !DILocalVariable(name: "DStream", arg: 2, scope: !4021, file: !3, line: 1144, type: !2480)
!4025 = !DILocalVariable(name: "dt", arg: 3, scope: !4021, file: !3, line: 1144, type: !192)
!4026 = !DILocalVariable(name: "dtLog", arg: 4, scope: !4021, file: !3, line: 1144, type: !266)
!4027 = !DILocalVariable(name: "val", scope: !4021, file: !3, line: 1146, type: !286)
!4028 = !DILocation(line: 1144, column: 30, scope: !4021)
!4029 = !DILocation(line: 1144, column: 49, scope: !4021)
!4030 = !DILocation(line: 1144, column: 76, scope: !4021)
!4031 = !DILocation(line: 1144, column: 90, scope: !4021)
!4032 = !DILocation(line: 1146, column: 5, scope: !4021)
!4033 = !DILocation(line: 1146, column: 18, scope: !4021)
!4034 = !DILocation(line: 1146, column: 41, scope: !4021)
!4035 = !DILocation(line: 1146, column: 50, scope: !4021)
!4036 = !DILocation(line: 1146, column: 24, scope: !4021)
!4037 = !DILocation(line: 1147, column: 5, scope: !4021)
!4038 = !DILocation(line: 1148, column: 9, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 1148, column: 9)
!4040 = !DILocation(line: 1148, column: 12, scope: !4039)
!4041 = !DILocation(line: 1148, column: 17, scope: !4039)
!4042 = !DILocation(line: 1148, column: 23, scope: !4039)
!4043 = !DILocation(line: 1148, column: 9, scope: !4021)
!4044 = !DILocation(line: 1149, column: 22, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 1148, column: 28)
!4046 = !DILocation(line: 1149, column: 31, scope: !4045)
!4047 = !DILocation(line: 1149, column: 34, scope: !4045)
!4048 = !DILocation(line: 1149, column: 39, scope: !4045)
!4049 = !DILocation(line: 1149, column: 9, scope: !4045)
!4050 = !DILocation(line: 1150, column: 5, scope: !4045)
!4051 = !DILocation(line: 1151, column: 13, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 1151, column: 13)
!4053 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 1150, column: 12)
!4054 = !DILocation(line: 1151, column: 22, scope: !4052)
!4055 = !DILocation(line: 1151, column: 35, scope: !4052)
!4056 = !DILocation(line: 1151, column: 13, scope: !4053)
!4057 = !DILocation(line: 1152, column: 26, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 1151, column: 72)
!4059 = !DILocation(line: 1152, column: 35, scope: !4058)
!4060 = !DILocation(line: 1152, column: 38, scope: !4058)
!4061 = !DILocation(line: 1152, column: 43, scope: !4058)
!4062 = !DILocation(line: 1152, column: 13, scope: !4058)
!4063 = !DILocation(line: 1153, column: 17, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 1153, column: 17)
!4065 = !DILocation(line: 1153, column: 26, scope: !4064)
!4066 = !DILocation(line: 1153, column: 39, scope: !4064)
!4067 = !DILocation(line: 1153, column: 17, scope: !4058)
!4068 = !DILocation(line: 1155, column: 17, scope: !4064)
!4069 = !DILocation(line: 1155, column: 26, scope: !4064)
!4070 = !DILocation(line: 1155, column: 39, scope: !4064)
!4071 = !DILocation(line: 1156, column: 9, scope: !4058)
!4072 = !DILocation(line: 1159, column: 1, scope: !4021)
!4073 = !DILocation(line: 1158, column: 5, scope: !4021)
!4074 = distinct !DISubprogram(name: "HUF_decompress4X2_usingDTable_internal_bmi2", scope: !3, file: !3, line: 1363, type: !933, scopeLine: 1364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4075)
!4075 = !{!4076, !4077, !4078, !4079, !4080}
!4076 = !DILocalVariable(name: "dst", arg: 1, scope: !4074, file: !3, line: 1363, type: !129)
!4077 = !DILocalVariable(name: "dstSize", arg: 2, scope: !4074, file: !3, line: 1363, type: !82)
!4078 = !DILocalVariable(name: "cSrc", arg: 3, scope: !4074, file: !3, line: 1363, type: !158)
!4079 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !4074, file: !3, line: 1364, type: !82)
!4080 = !DILocalVariable(name: "DTable", arg: 5, scope: !4074, file: !3, line: 1364, type: !783)
!4081 = !DILocation(line: 1363, column: 58, scope: !4074)
!4082 = !DILocation(line: 1363, column: 70, scope: !4074)
!4083 = !DILocation(line: 1363, column: 91, scope: !4074)
!4084 = !DILocation(line: 1364, column: 28, scope: !4074)
!4085 = !DILocation(line: 1364, column: 56, scope: !4074)
!4086 = !DILocation(line: 1365, column: 56, scope: !4074)
!4087 = !DILocation(line: 1365, column: 61, scope: !4074)
!4088 = !DILocation(line: 1365, column: 70, scope: !4074)
!4089 = !DILocation(line: 1365, column: 76, scope: !4074)
!4090 = !DILocation(line: 1365, column: 86, scope: !4074)
!4091 = !DILocation(line: 1365, column: 12, scope: !4074)
!4092 = !DILocation(line: 1365, column: 5, scope: !4074)
!4093 = distinct !DISubprogram(name: "HUF_decompress4X2_usingDTable_internal_default", scope: !3, file: !3, line: 1371, type: !933, scopeLine: 1372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099}
!4095 = !DILocalVariable(name: "dst", arg: 1, scope: !4093, file: !3, line: 1371, type: !129)
!4096 = !DILocalVariable(name: "dstSize", arg: 2, scope: !4093, file: !3, line: 1371, type: !82)
!4097 = !DILocalVariable(name: "cSrc", arg: 3, scope: !4093, file: !3, line: 1371, type: !158)
!4098 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !4093, file: !3, line: 1372, type: !82)
!4099 = !DILocalVariable(name: "DTable", arg: 5, scope: !4093, file: !3, line: 1372, type: !783)
!4100 = !DILocation(line: 1371, column: 61, scope: !4093)
!4101 = !DILocation(line: 1371, column: 73, scope: !4093)
!4102 = !DILocation(line: 1371, column: 94, scope: !4093)
!4103 = !DILocation(line: 1372, column: 28, scope: !4093)
!4104 = !DILocation(line: 1372, column: 56, scope: !4093)
!4105 = !DILocation(line: 1373, column: 56, scope: !4093)
!4106 = !DILocation(line: 1373, column: 61, scope: !4093)
!4107 = !DILocation(line: 1373, column: 70, scope: !4093)
!4108 = !DILocation(line: 1373, column: 76, scope: !4093)
!4109 = !DILocation(line: 1373, column: 86, scope: !4093)
!4110 = !DILocation(line: 1373, column: 12, scope: !4093)
!4111 = !DILocation(line: 1373, column: 5, scope: !4093)
!4112 = distinct !DISubprogram(name: "HUF_decompress4X2_usingDTable_internal_body", scope: !3, file: !3, line: 1244, type: !933, scopeLine: 1248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4113)
!4113 = !{!4114, !4115, !4116, !4117, !4118, !4119, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4151, !4153, !4155, !4157}
!4114 = !DILocalVariable(name: "dst", arg: 1, scope: !4112, file: !3, line: 1245, type: !129)
!4115 = !DILocalVariable(name: "dstSize", arg: 2, scope: !4112, file: !3, line: 1245, type: !82)
!4116 = !DILocalVariable(name: "cSrc", arg: 3, scope: !4112, file: !3, line: 1246, type: !158)
!4117 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !4112, file: !3, line: 1246, type: !82)
!4118 = !DILocalVariable(name: "DTable", arg: 5, scope: !4112, file: !3, line: 1247, type: !783)
!4119 = !DILocalVariable(name: "istart", scope: !4120, file: !3, line: 1251, type: !3012)
!4120 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 1251, column: 5)
!4121 = !DILocalVariable(name: "ostart", scope: !4120, file: !3, line: 1252, type: !2414)
!4122 = !DILocalVariable(name: "oend", scope: !4120, file: !3, line: 1253, type: !2414)
!4123 = !DILocalVariable(name: "olimit", scope: !4120, file: !3, line: 1254, type: !2414)
!4124 = !DILocalVariable(name: "dtPtr", scope: !4120, file: !3, line: 1255, type: !3017)
!4125 = !DILocalVariable(name: "dt", scope: !4120, file: !3, line: 1256, type: !3826)
!4126 = !DILocalVariable(name: "bitD1", scope: !4120, file: !3, line: 1259, type: !2419)
!4127 = !DILocalVariable(name: "bitD2", scope: !4120, file: !3, line: 1260, type: !2419)
!4128 = !DILocalVariable(name: "bitD3", scope: !4120, file: !3, line: 1261, type: !2419)
!4129 = !DILocalVariable(name: "bitD4", scope: !4120, file: !3, line: 1262, type: !2419)
!4130 = !DILocalVariable(name: "length1", scope: !4120, file: !3, line: 1263, type: !286)
!4131 = !DILocalVariable(name: "length2", scope: !4120, file: !3, line: 1264, type: !286)
!4132 = !DILocalVariable(name: "length3", scope: !4120, file: !3, line: 1265, type: !286)
!4133 = !DILocalVariable(name: "length4", scope: !4120, file: !3, line: 1266, type: !286)
!4134 = !DILocalVariable(name: "istart1", scope: !4120, file: !3, line: 1267, type: !3012)
!4135 = !DILocalVariable(name: "istart2", scope: !4120, file: !3, line: 1268, type: !3012)
!4136 = !DILocalVariable(name: "istart3", scope: !4120, file: !3, line: 1269, type: !3012)
!4137 = !DILocalVariable(name: "istart4", scope: !4120, file: !3, line: 1270, type: !3012)
!4138 = !DILocalVariable(name: "segmentSize", scope: !4120, file: !3, line: 1271, type: !286)
!4139 = !DILocalVariable(name: "opStart2", scope: !4120, file: !3, line: 1272, type: !2414)
!4140 = !DILocalVariable(name: "opStart3", scope: !4120, file: !3, line: 1273, type: !2414)
!4141 = !DILocalVariable(name: "opStart4", scope: !4120, file: !3, line: 1274, type: !2414)
!4142 = !DILocalVariable(name: "op1", scope: !4120, file: !3, line: 1275, type: !143)
!4143 = !DILocalVariable(name: "op2", scope: !4120, file: !3, line: 1276, type: !143)
!4144 = !DILocalVariable(name: "op3", scope: !4120, file: !3, line: 1277, type: !143)
!4145 = !DILocalVariable(name: "op4", scope: !4120, file: !3, line: 1278, type: !143)
!4146 = !DILocalVariable(name: "endSignal", scope: !4120, file: !3, line: 1279, type: !66)
!4147 = !DILocalVariable(name: "dtd", scope: !4120, file: !3, line: 1280, type: !1955)
!4148 = !DILocalVariable(name: "dtLog", scope: !4120, file: !3, line: 1281, type: !266)
!4149 = !DILocalVariable(name: "_var_err__", scope: !4150, file: !3, line: 1285, type: !286)
!4150 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1285, column: 9)
!4151 = !DILocalVariable(name: "_var_err__", scope: !4152, file: !3, line: 1286, type: !286)
!4152 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1286, column: 9)
!4153 = !DILocalVariable(name: "_var_err__", scope: !4154, file: !3, line: 1287, type: !286)
!4154 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1287, column: 9)
!4155 = !DILocalVariable(name: "_var_err__", scope: !4156, file: !3, line: 1288, type: !286)
!4156 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1288, column: 9)
!4157 = !DILocalVariable(name: "endCheck", scope: !4158, file: !3, line: 1353, type: !266)
!4158 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1353, column: 9)
!4159 = !DILocation(line: 1245, column: 17, scope: !4112)
!4160 = !DILocation(line: 1245, column: 30, scope: !4112)
!4161 = !DILocation(line: 1246, column: 17, scope: !4112)
!4162 = !DILocation(line: 1246, column: 30, scope: !4112)
!4163 = !DILocation(line: 1247, column: 23, scope: !4112)
!4164 = !DILocation(line: 1249, column: 9, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 1249, column: 9)
!4166 = !DILocation(line: 1249, column: 18, scope: !4165)
!4167 = !DILocation(line: 1249, column: 9, scope: !4112)
!4168 = !DILocation(line: 1249, column: 24, scope: !4165)
!4169 = !DILocation(line: 1251, column: 9, scope: !4120)
!4170 = !DILocation(line: 1251, column: 27, scope: !4120)
!4171 = !DILocation(line: 1251, column: 50, scope: !4120)
!4172 = !DILocation(line: 1252, column: 9, scope: !4120)
!4173 = !DILocation(line: 1252, column: 21, scope: !4120)
!4174 = !DILocation(line: 1252, column: 38, scope: !4120)
!4175 = !DILocation(line: 1253, column: 9, scope: !4120)
!4176 = !DILocation(line: 1253, column: 21, scope: !4120)
!4177 = !DILocation(line: 1253, column: 28, scope: !4120)
!4178 = !DILocation(line: 1253, column: 37, scope: !4120)
!4179 = !DILocation(line: 1253, column: 35, scope: !4120)
!4180 = !DILocation(line: 1254, column: 9, scope: !4120)
!4181 = !DILocation(line: 1254, column: 21, scope: !4120)
!4182 = !DILocation(line: 1254, column: 30, scope: !4120)
!4183 = !DILocation(line: 1254, column: 35, scope: !4120)
!4184 = !DILocation(line: 1255, column: 9, scope: !4120)
!4185 = !DILocation(line: 1255, column: 27, scope: !4120)
!4186 = !DILocation(line: 1255, column: 35, scope: !4120)
!4187 = !DILocation(line: 1255, column: 41, scope: !4120)
!4188 = !DILocation(line: 1256, column: 9, scope: !4120)
!4189 = !DILocation(line: 1256, column: 33, scope: !4120)
!4190 = !DILocation(line: 1256, column: 57, scope: !4120)
!4191 = !DILocation(line: 1259, column: 9, scope: !4120)
!4192 = !DILocation(line: 1259, column: 23, scope: !4120)
!4193 = !DILocation(line: 1260, column: 9, scope: !4120)
!4194 = !DILocation(line: 1260, column: 23, scope: !4120)
!4195 = !DILocation(line: 1261, column: 9, scope: !4120)
!4196 = !DILocation(line: 1261, column: 23, scope: !4120)
!4197 = !DILocation(line: 1262, column: 9, scope: !4120)
!4198 = !DILocation(line: 1262, column: 23, scope: !4120)
!4199 = !DILocation(line: 1263, column: 9, scope: !4120)
!4200 = !DILocation(line: 1263, column: 22, scope: !4120)
!4201 = !DILocation(line: 1263, column: 45, scope: !4120)
!4202 = !DILocation(line: 1263, column: 32, scope: !4120)
!4203 = !DILocation(line: 1264, column: 9, scope: !4120)
!4204 = !DILocation(line: 1264, column: 22, scope: !4120)
!4205 = !DILocation(line: 1264, column: 45, scope: !4120)
!4206 = !DILocation(line: 1264, column: 51, scope: !4120)
!4207 = !DILocation(line: 1264, column: 32, scope: !4120)
!4208 = !DILocation(line: 1265, column: 9, scope: !4120)
!4209 = !DILocation(line: 1265, column: 22, scope: !4120)
!4210 = !DILocation(line: 1265, column: 45, scope: !4120)
!4211 = !DILocation(line: 1265, column: 51, scope: !4120)
!4212 = !DILocation(line: 1265, column: 32, scope: !4120)
!4213 = !DILocation(line: 1266, column: 9, scope: !4120)
!4214 = !DILocation(line: 1266, column: 22, scope: !4120)
!4215 = !DILocation(line: 1266, column: 32, scope: !4120)
!4216 = !DILocation(line: 1266, column: 44, scope: !4120)
!4217 = !DILocation(line: 1266, column: 54, scope: !4120)
!4218 = !DILocation(line: 1266, column: 52, scope: !4120)
!4219 = !DILocation(line: 1266, column: 64, scope: !4120)
!4220 = !DILocation(line: 1266, column: 62, scope: !4120)
!4221 = !DILocation(line: 1266, column: 72, scope: !4120)
!4222 = !DILocation(line: 1266, column: 41, scope: !4120)
!4223 = !DILocation(line: 1267, column: 9, scope: !4120)
!4224 = !DILocation(line: 1267, column: 27, scope: !4120)
!4225 = !DILocation(line: 1267, column: 37, scope: !4120)
!4226 = !DILocation(line: 1267, column: 44, scope: !4120)
!4227 = !DILocation(line: 1268, column: 9, scope: !4120)
!4228 = !DILocation(line: 1268, column: 27, scope: !4120)
!4229 = !DILocation(line: 1268, column: 37, scope: !4120)
!4230 = !DILocation(line: 1268, column: 47, scope: !4120)
!4231 = !DILocation(line: 1268, column: 45, scope: !4120)
!4232 = !DILocation(line: 1269, column: 9, scope: !4120)
!4233 = !DILocation(line: 1269, column: 27, scope: !4120)
!4234 = !DILocation(line: 1269, column: 37, scope: !4120)
!4235 = !DILocation(line: 1269, column: 47, scope: !4120)
!4236 = !DILocation(line: 1269, column: 45, scope: !4120)
!4237 = !DILocation(line: 1270, column: 9, scope: !4120)
!4238 = !DILocation(line: 1270, column: 27, scope: !4120)
!4239 = !DILocation(line: 1270, column: 37, scope: !4120)
!4240 = !DILocation(line: 1270, column: 47, scope: !4120)
!4241 = !DILocation(line: 1270, column: 45, scope: !4120)
!4242 = !DILocation(line: 1271, column: 9, scope: !4120)
!4243 = !DILocation(line: 1271, column: 22, scope: !4120)
!4244 = !DILocation(line: 1271, column: 37, scope: !4120)
!4245 = !DILocation(line: 1271, column: 44, scope: !4120)
!4246 = !DILocation(line: 1271, column: 48, scope: !4120)
!4247 = !DILocation(line: 1272, column: 9, scope: !4120)
!4248 = !DILocation(line: 1272, column: 21, scope: !4120)
!4249 = !DILocation(line: 1272, column: 32, scope: !4120)
!4250 = !DILocation(line: 1272, column: 41, scope: !4120)
!4251 = !DILocation(line: 1272, column: 39, scope: !4120)
!4252 = !DILocation(line: 1273, column: 9, scope: !4120)
!4253 = !DILocation(line: 1273, column: 21, scope: !4120)
!4254 = !DILocation(line: 1273, column: 32, scope: !4120)
!4255 = !DILocation(line: 1273, column: 43, scope: !4120)
!4256 = !DILocation(line: 1273, column: 41, scope: !4120)
!4257 = !DILocation(line: 1274, column: 9, scope: !4120)
!4258 = !DILocation(line: 1274, column: 21, scope: !4120)
!4259 = !DILocation(line: 1274, column: 32, scope: !4120)
!4260 = !DILocation(line: 1274, column: 43, scope: !4120)
!4261 = !DILocation(line: 1274, column: 41, scope: !4120)
!4262 = !DILocation(line: 1275, column: 9, scope: !4120)
!4263 = !DILocation(line: 1275, column: 15, scope: !4120)
!4264 = !DILocation(line: 1275, column: 21, scope: !4120)
!4265 = !DILocation(line: 1276, column: 9, scope: !4120)
!4266 = !DILocation(line: 1276, column: 15, scope: !4120)
!4267 = !DILocation(line: 1276, column: 21, scope: !4120)
!4268 = !DILocation(line: 1277, column: 9, scope: !4120)
!4269 = !DILocation(line: 1277, column: 15, scope: !4120)
!4270 = !DILocation(line: 1277, column: 21, scope: !4120)
!4271 = !DILocation(line: 1278, column: 9, scope: !4120)
!4272 = !DILocation(line: 1278, column: 15, scope: !4120)
!4273 = !DILocation(line: 1278, column: 21, scope: !4120)
!4274 = !DILocation(line: 1279, column: 9, scope: !4120)
!4275 = !DILocation(line: 1279, column: 13, scope: !4120)
!4276 = !DILocation(line: 1280, column: 9, scope: !4120)
!4277 = !DILocation(line: 1280, column: 26, scope: !4120)
!4278 = !DILocation(line: 1280, column: 50, scope: !4120)
!4279 = !DILocation(line: 1280, column: 32, scope: !4120)
!4280 = !DILocation(line: 1281, column: 9, scope: !4120)
!4281 = !DILocation(line: 1281, column: 19, scope: !4120)
!4282 = !DILocation(line: 1281, column: 31, scope: !4120)
!4283 = !DILocation(line: 1281, column: 27, scope: !4120)
!4284 = !DILocation(line: 1283, column: 13, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1283, column: 13)
!4286 = !DILocation(line: 1283, column: 23, scope: !4285)
!4287 = !DILocation(line: 1283, column: 21, scope: !4285)
!4288 = !DILocation(line: 1283, column: 13, scope: !4120)
!4289 = !DILocation(line: 1283, column: 33, scope: !4285)
!4290 = !DILocation(line: 1284, column: 13, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1284, column: 13)
!4292 = !DILocation(line: 1284, column: 24, scope: !4291)
!4293 = !DILocation(line: 1284, column: 22, scope: !4291)
!4294 = !DILocation(line: 1284, column: 13, scope: !4120)
!4295 = !DILocation(line: 1284, column: 30, scope: !4291)
!4296 = !DILocation(line: 1285, column: 9, scope: !4150)
!4297 = !DILocation(line: 1285, column: 9, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 1285, column: 9)
!4299 = !DILocation(line: 1285, column: 9, scope: !4120)
!4300 = !DILocation(line: 1286, column: 9, scope: !4152)
!4301 = !DILocation(line: 1286, column: 9, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 1286, column: 9)
!4303 = !DILocation(line: 1286, column: 9, scope: !4120)
!4304 = !DILocation(line: 1287, column: 9, scope: !4154)
!4305 = !DILocation(line: 1287, column: 9, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 1287, column: 9)
!4307 = !DILocation(line: 1287, column: 9, scope: !4120)
!4308 = !DILocation(line: 1288, column: 9, scope: !4156)
!4309 = !DILocation(line: 1288, column: 9, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 1288, column: 9)
!4311 = !DILocation(line: 1288, column: 9, scope: !4120)
!4312 = !DILocation(line: 1291, column: 22, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1291, column: 13)
!4314 = !DILocation(line: 1291, column: 29, scope: !4313)
!4315 = !DILocation(line: 1291, column: 27, scope: !4313)
!4316 = !DILocation(line: 1291, column: 34, scope: !4313)
!4317 = !DILocation(line: 1291, column: 13, scope: !4120)
!4318 = !DILocation(line: 1292, column: 13, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 1291, column: 53)
!4320 = !DILocation(line: 1292, column: 22, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 1292, column: 13)
!4322 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 1292, column: 13)
!4323 = !DILocation(line: 1292, column: 36, scope: !4321)
!4324 = !DILocation(line: 1292, column: 42, scope: !4321)
!4325 = !DILocation(line: 1292, column: 40, scope: !4321)
!4326 = !DILocation(line: 1292, column: 33, scope: !4321)
!4327 = !DILocation(line: 1292, column: 13, scope: !4322)
!4328 = !DILocation(line: 1294, column: 17, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1294, column: 17)
!4330 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 1292, column: 53)
!4331 = !DILocation(line: 1294, column: 17, scope: !4330)
!4332 = !DILocation(line: 1295, column: 17, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1295, column: 17)
!4334 = !DILocation(line: 1295, column: 17, scope: !4330)
!4335 = !DILocation(line: 1296, column: 17, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1296, column: 17)
!4337 = !DILocation(line: 1296, column: 17, scope: !4330)
!4338 = !DILocation(line: 1297, column: 17, scope: !4330)
!4339 = !DILocation(line: 1298, column: 17, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1298, column: 17)
!4341 = !DILocation(line: 1298, column: 17, scope: !4330)
!4342 = !DILocation(line: 1299, column: 17, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1299, column: 17)
!4344 = !DILocation(line: 1299, column: 17, scope: !4330)
!4345 = !DILocation(line: 1300, column: 17, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1300, column: 17)
!4347 = !DILocation(line: 1300, column: 17, scope: !4330)
!4348 = !DILocation(line: 1301, column: 17, scope: !4330)
!4349 = !DILocation(line: 1302, column: 30, scope: !4330)
!4350 = !DILocation(line: 1302, column: 60, scope: !4330)
!4351 = !DILocation(line: 1302, column: 27, scope: !4330)
!4352 = !DILocation(line: 1303, column: 30, scope: !4330)
!4353 = !DILocation(line: 1303, column: 60, scope: !4330)
!4354 = !DILocation(line: 1303, column: 27, scope: !4330)
!4355 = !DILocation(line: 1304, column: 17, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1304, column: 17)
!4357 = !DILocation(line: 1304, column: 17, scope: !4330)
!4358 = !DILocation(line: 1305, column: 17, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1305, column: 17)
!4360 = !DILocation(line: 1305, column: 17, scope: !4330)
!4361 = !DILocation(line: 1306, column: 17, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1306, column: 17)
!4363 = !DILocation(line: 1306, column: 17, scope: !4330)
!4364 = !DILocation(line: 1307, column: 17, scope: !4330)
!4365 = !DILocation(line: 1308, column: 17, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1308, column: 17)
!4367 = !DILocation(line: 1308, column: 17, scope: !4330)
!4368 = !DILocation(line: 1309, column: 17, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1309, column: 17)
!4370 = !DILocation(line: 1309, column: 17, scope: !4330)
!4371 = !DILocation(line: 1310, column: 17, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 1310, column: 17)
!4373 = !DILocation(line: 1310, column: 17, scope: !4330)
!4374 = !DILocation(line: 1311, column: 17, scope: !4330)
!4375 = !DILocation(line: 1312, column: 30, scope: !4330)
!4376 = !DILocation(line: 1312, column: 60, scope: !4330)
!4377 = !DILocation(line: 1312, column: 27, scope: !4330)
!4378 = !DILocation(line: 1313, column: 30, scope: !4330)
!4379 = !DILocation(line: 1313, column: 60, scope: !4330)
!4380 = !DILocation(line: 1313, column: 27, scope: !4330)
!4381 = !DILocation(line: 1292, column: 13, scope: !4321)
!4382 = distinct !{!4382, !4327, !4383, !443, !444}
!4383 = !DILocation(line: 1337, column: 13, scope: !4322)
!4384 = !DILocation(line: 1338, column: 9, scope: !4319)
!4385 = !DILocation(line: 1341, column: 13, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1341, column: 13)
!4387 = !DILocation(line: 1341, column: 19, scope: !4386)
!4388 = !DILocation(line: 1341, column: 17, scope: !4386)
!4389 = !DILocation(line: 1341, column: 13, scope: !4120)
!4390 = !DILocation(line: 1341, column: 29, scope: !4386)
!4391 = !DILocation(line: 1342, column: 13, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1342, column: 13)
!4393 = !DILocation(line: 1342, column: 19, scope: !4392)
!4394 = !DILocation(line: 1342, column: 17, scope: !4392)
!4395 = !DILocation(line: 1342, column: 13, scope: !4120)
!4396 = !DILocation(line: 1342, column: 29, scope: !4392)
!4397 = !DILocation(line: 1343, column: 13, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1343, column: 13)
!4399 = !DILocation(line: 1343, column: 19, scope: !4398)
!4400 = !DILocation(line: 1343, column: 17, scope: !4398)
!4401 = !DILocation(line: 1343, column: 13, scope: !4120)
!4402 = !DILocation(line: 1343, column: 29, scope: !4398)
!4403 = !DILocation(line: 1347, column: 28, scope: !4120)
!4404 = !DILocation(line: 1347, column: 41, scope: !4120)
!4405 = !DILocation(line: 1347, column: 51, scope: !4120)
!4406 = !DILocation(line: 1347, column: 55, scope: !4120)
!4407 = !DILocation(line: 1347, column: 9, scope: !4120)
!4408 = !DILocation(line: 1348, column: 28, scope: !4120)
!4409 = !DILocation(line: 1348, column: 41, scope: !4120)
!4410 = !DILocation(line: 1348, column: 51, scope: !4120)
!4411 = !DILocation(line: 1348, column: 55, scope: !4120)
!4412 = !DILocation(line: 1348, column: 9, scope: !4120)
!4413 = !DILocation(line: 1349, column: 28, scope: !4120)
!4414 = !DILocation(line: 1349, column: 41, scope: !4120)
!4415 = !DILocation(line: 1349, column: 51, scope: !4120)
!4416 = !DILocation(line: 1349, column: 55, scope: !4120)
!4417 = !DILocation(line: 1349, column: 9, scope: !4120)
!4418 = !DILocation(line: 1350, column: 28, scope: !4120)
!4419 = !DILocation(line: 1350, column: 41, scope: !4120)
!4420 = !DILocation(line: 1350, column: 51, scope: !4120)
!4421 = !DILocation(line: 1350, column: 55, scope: !4120)
!4422 = !DILocation(line: 1350, column: 9, scope: !4120)
!4423 = !DILocation(line: 1353, column: 11, scope: !4158)
!4424 = !DILocation(line: 1353, column: 21, scope: !4158)
!4425 = !DILocation(line: 1353, column: 32, scope: !4158)
!4426 = !DILocation(line: 1353, column: 59, scope: !4158)
!4427 = !DILocation(line: 1353, column: 57, scope: !4158)
!4428 = !DILocation(line: 1353, column: 86, scope: !4158)
!4429 = !DILocation(line: 1353, column: 84, scope: !4158)
!4430 = !DILocation(line: 1353, column: 113, scope: !4158)
!4431 = !DILocation(line: 1353, column: 111, scope: !4158)
!4432 = !DILocation(line: 1354, column: 16, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 1354, column: 15)
!4434 = !DILocation(line: 1354, column: 15, scope: !4158)
!4435 = !DILocation(line: 1354, column: 26, scope: !4433)
!4436 = !DILocation(line: 1354, column: 61, scope: !4120)
!4437 = !DILocation(line: 1357, column: 16, scope: !4120)
!4438 = !DILocation(line: 1357, column: 9, scope: !4120)
!4439 = !DILocation(line: 1358, column: 5, scope: !4112)
!4440 = !DILocation(line: 1359, column: 1, scope: !4112)
