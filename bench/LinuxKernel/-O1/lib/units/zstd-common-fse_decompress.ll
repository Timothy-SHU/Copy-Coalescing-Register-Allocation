; ModuleID = 'lib/zstd/common/fse_decompress.c'
source_filename = "lib/zstd/common/fse_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FSE_DTableHeader = type { i16, i16 }
%struct.FSE_decode_t = type { i16, i8, i8 }
%struct.BIT_DStream_t = type { i64, i32, ptr, ptr, ptr }
%struct.FSE_DState_t = type { i64, ptr }
%struct.anon = type { i64 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i64 }
%struct.FSE_DecompressWksp = type { [256 x i16], [0 x i32] }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @FSE_createDTable(i32 noundef %tableLog) #0 align 16 !dbg !168 {
entry:
  %tableLog.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %tableLog, ptr %tableLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tableLog.addr, metadata !172, metadata !DIExpression()), !dbg !173
  %0 = load i32, ptr %tableLog.addr, align 4, !dbg !174
  %cmp = icmp ugt i32 %0, 15, !dbg !176
  br i1 %cmp, label %if.then, label %if.end, !dbg !177

if.then:                                          ; preds = %entry
  store i32 15, ptr %tableLog.addr, align 4, !dbg !178
  br label %if.end, !dbg !179

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %tableLog.addr, align 4, !dbg !180
  %shl = shl i32 1, %1, !dbg !180
  %add = add i32 1, %shl, !dbg !180
  %conv = sext i32 %add to i64, !dbg !180
  %mul = mul i64 %conv, 4, !dbg !180
  store ptr null, ptr %tmp, align 8, !dbg !180
  %2 = load ptr, ptr %tmp, align 8, !dbg !180
  ret ptr %2, !dbg !182
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @FSE_freeDTable(ptr noundef %dt) #0 align 16 !dbg !183 {
entry:
  %dt.addr = alloca ptr, align 8
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = load ptr, ptr %dt.addr, align 8, !dbg !189
  ret void, !dbg !190
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @FSE_buildDTable_wksp(ptr noundef %dt, ptr noundef %normalizedCounter, i32 noundef %maxSymbolValue, i32 noundef %tableLog, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !191 {
entry:
  %dt.addr = alloca ptr, align 8
  %normalizedCounter.addr = alloca ptr, align 8
  %maxSymbolValue.addr = alloca i32, align 4
  %tableLog.addr = alloca i32, align 4
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !197, metadata !DIExpression()), !dbg !203
  store ptr %normalizedCounter, ptr %normalizedCounter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %normalizedCounter.addr, metadata !198, metadata !DIExpression()), !dbg !204
  store i32 %maxSymbolValue, ptr %maxSymbolValue.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxSymbolValue.addr, metadata !199, metadata !DIExpression()), !dbg !205
  store i32 %tableLog, ptr %tableLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tableLog.addr, metadata !200, metadata !DIExpression()), !dbg !206
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !201, metadata !DIExpression()), !dbg !207
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !202, metadata !DIExpression()), !dbg !208
  %0 = load ptr, ptr %dt.addr, align 8, !dbg !209
  %1 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !210
  %2 = load i32, ptr %maxSymbolValue.addr, align 4, !dbg !211
  %3 = load i32, ptr %tableLog.addr, align 4, !dbg !212
  %4 = load ptr, ptr %workSpace.addr, align 8, !dbg !213
  %5 = load i64, ptr %wkspSize.addr, align 8, !dbg !214
  %call = call i64 @FSE_buildDTable_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) #10, !dbg !215
  ret i64 %call, !dbg !216
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @FSE_buildDTable_internal(ptr noundef %dt, ptr noundef %normalizedCounter, i32 noundef %maxSymbolValue, i32 noundef %tableLog, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !217 {
entry:
  %retval = alloca i64, align 8
  %dt.addr = alloca ptr, align 8
  %normalizedCounter.addr = alloca ptr, align 8
  %maxSymbolValue.addr = alloca i32, align 4
  %tableLog.addr = alloca i32, align 4
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %tdPtr = alloca ptr, align 8
  %tableDecode = alloca ptr, align 8
  %symbolNext = alloca ptr, align 8
  %spread = alloca ptr, align 8
  %maxSV1 = alloca i32, align 4
  %tableSize = alloca i32, align 4
  %highThreshold = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %DTableH = alloca %struct.FSE_DTableHeader, align 2
  %largeLimit = alloca i16, align 2
  %s = alloca i32, align 4
  %tableMask = alloca i64, align 8
  %step = alloca i64, align 8
  %add56 = alloca i64, align 8
  %pos = alloca i64, align 8
  %sv = alloca i64, align 8
  %s57 = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %position = alloca i64, align 8
  %s82 = alloca i64, align 8
  %unroll = alloca i64, align 8
  %u = alloca i64, align 8
  %uPosition = alloca i64, align 8
  %tableMask108 = alloca i32, align 4
  %step110 = alloca i32, align 4
  %s115 = alloca i32, align 4
  %position116 = alloca i32, align 4
  %i121 = alloca i32, align 4
  %u153 = alloca i32, align 4
  %symbol158 = alloca i8, align 1
  %nextState = alloca i32, align 4
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !219, metadata !DIExpression()), !dbg !287
  store ptr %normalizedCounter, ptr %normalizedCounter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %normalizedCounter.addr, metadata !220, metadata !DIExpression()), !dbg !288
  store i32 %maxSymbolValue, ptr %maxSymbolValue.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxSymbolValue.addr, metadata !221, metadata !DIExpression()), !dbg !289
  store i32 %tableLog, ptr %tableLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tableLog.addr, metadata !222, metadata !DIExpression()), !dbg !290
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !223, metadata !DIExpression()), !dbg !291
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !224, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 8, ptr %tdPtr) #11, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %tdPtr, metadata !225, metadata !DIExpression()), !dbg !294
  %0 = load ptr, ptr %dt.addr, align 8, !dbg !295
  %add.ptr = getelementptr i32, ptr %0, i64 1, !dbg !296
  store ptr %add.ptr, ptr %tdPtr, align 8, !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %tableDecode) #11, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %tableDecode, metadata !227, metadata !DIExpression()), !dbg !298
  %1 = load ptr, ptr %tdPtr, align 8, !dbg !299
  store ptr %1, ptr %tableDecode, align 8, !dbg !298
  call void @llvm.lifetime.start.p0(i64 8, ptr %symbolNext) #11, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %symbolNext, metadata !229, metadata !DIExpression()), !dbg !301
  %2 = load ptr, ptr %workSpace.addr, align 8, !dbg !302
  store ptr %2, ptr %symbolNext, align 8, !dbg !301
  call void @llvm.lifetime.start.p0(i64 8, ptr %spread) #11, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %spread, metadata !230, metadata !DIExpression()), !dbg !304
  %3 = load ptr, ptr %symbolNext, align 8, !dbg !305
  %4 = load i32, ptr %maxSymbolValue.addr, align 4, !dbg !306
  %idx.ext = zext i32 %4 to i64, !dbg !307
  %add.ptr1 = getelementptr i16, ptr %3, i64 %idx.ext, !dbg !307
  %add.ptr2 = getelementptr i16, ptr %add.ptr1, i64 1, !dbg !308
  store ptr %add.ptr2, ptr %spread, align 8, !dbg !304
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxSV1) #11, !dbg !309
  call void @llvm.dbg.declare(metadata ptr %maxSV1, metadata !231, metadata !DIExpression()), !dbg !310
  %5 = load i32, ptr %maxSymbolValue.addr, align 4, !dbg !311
  %add = add i32 %5, 1, !dbg !312
  store i32 %add, ptr %maxSV1, align 4, !dbg !310
  call void @llvm.lifetime.start.p0(i64 4, ptr %tableSize) #11, !dbg !313
  call void @llvm.dbg.declare(metadata ptr %tableSize, metadata !233, metadata !DIExpression()), !dbg !314
  %6 = load i32, ptr %tableLog.addr, align 4, !dbg !315
  %shl = shl i32 1, %6, !dbg !316
  store i32 %shl, ptr %tableSize, align 4, !dbg !314
  call void @llvm.lifetime.start.p0(i64 4, ptr %highThreshold) #11, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %highThreshold, metadata !234, metadata !DIExpression()), !dbg !318
  %7 = load i32, ptr %tableSize, align 4, !dbg !319
  %sub = sub i32 %7, 1, !dbg !320
  store i32 %sub, ptr %highThreshold, align 4, !dbg !318
  %8 = load i32, ptr %maxSymbolValue.addr, align 4, !dbg !321
  %add3 = add i32 %8, 1, !dbg !321
  %conv = zext i32 %add3 to i64, !dbg !321
  %mul = mul i64 2, %conv, !dbg !321
  %9 = load i32, ptr %tableLog.addr, align 4, !dbg !321
  %sh_prom = zext i32 %9 to i64, !dbg !321
  %shl4 = shl i64 1, %sh_prom, !dbg !321
  %add5 = add i64 %mul, %shl4, !dbg !321
  %add6 = add i64 %add5, 8, !dbg !321
  %10 = load i64, ptr %wkspSize.addr, align 8, !dbg !323
  %cmp = icmp ugt i64 %add6, %10, !dbg !324
  br i1 %cmp, label %if.then, label %if.end, !dbg !325

if.then:                                          ; preds = %entry
  store i64 -46, ptr %retval, align 8, !dbg !326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup182, !dbg !326

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %maxSymbolValue.addr, align 4, !dbg !327
  %cmp8 = icmp ugt i32 %11, 255, !dbg !329
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !330

if.then10:                                        ; preds = %if.end
  store i64 -46, ptr %retval, align 8, !dbg !331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup182, !dbg !331

if.end11:                                         ; preds = %if.end
  %12 = load i32, ptr %tableLog.addr, align 4, !dbg !332
  %cmp12 = icmp ugt i32 %12, 12, !dbg !334
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !335

if.then14:                                        ; preds = %if.end11
  store i64 -44, ptr %retval, align 8, !dbg !336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup182, !dbg !336

if.end15:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr %DTableH) #11, !dbg !337
  call void @llvm.dbg.declare(metadata ptr %DTableH, metadata !235, metadata !DIExpression()), !dbg !338
  %13 = load i32, ptr %tableLog.addr, align 4, !dbg !339
  %conv16 = trunc i32 %13 to i16, !dbg !340
  %tableLog17 = getelementptr inbounds %struct.FSE_DTableHeader, ptr %DTableH, i32 0, i32 0, !dbg !341
  store i16 %conv16, ptr %tableLog17, align 2, !dbg !342
  %fastMode = getelementptr inbounds %struct.FSE_DTableHeader, ptr %DTableH, i32 0, i32 1, !dbg !343
  store i16 1, ptr %fastMode, align 2, !dbg !344
  call void @llvm.lifetime.start.p0(i64 2, ptr %largeLimit) #11, !dbg !345
  call void @llvm.dbg.declare(metadata ptr %largeLimit, metadata !237, metadata !DIExpression()), !dbg !346
  %14 = load i32, ptr %tableLog.addr, align 4, !dbg !347
  %sub18 = sub i32 %14, 1, !dbg !348
  %shl19 = shl i32 1, %sub18, !dbg !349
  %conv20 = trunc i32 %shl19 to i16, !dbg !350
  store i16 %conv20, ptr %largeLimit, align 2, !dbg !346
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #11, !dbg !351
  call void @llvm.dbg.declare(metadata ptr %s, metadata !240, metadata !DIExpression()), !dbg !352
  store i32 0, ptr %s, align 4, !dbg !353
  br label %for.cond, !dbg !355

for.cond:                                         ; preds = %for.inc, %if.end15
  %15 = load i32, ptr %s, align 4, !dbg !356
  %16 = load i32, ptr %maxSV1, align 4, !dbg !358
  %cmp21 = icmp ult i32 %15, %16, !dbg !359
  br i1 %cmp21, label %for.body, label %for.end, !dbg !360

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !361
  %18 = load i32, ptr %s, align 4, !dbg !364
  %idxprom = zext i32 %18 to i64, !dbg !361
  %arrayidx = getelementptr i16, ptr %17, i64 %idxprom, !dbg !361
  %19 = load i16, ptr %arrayidx, align 2, !dbg !361
  %conv23 = sext i16 %19 to i32, !dbg !361
  %cmp24 = icmp eq i32 %conv23, -1, !dbg !365
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !366

if.then26:                                        ; preds = %for.body
  %20 = load i32, ptr %s, align 4, !dbg !367
  %conv27 = trunc i32 %20 to i8, !dbg !369
  %21 = load ptr, ptr %tableDecode, align 8, !dbg !370
  %22 = load i32, ptr %highThreshold, align 4, !dbg !371
  %dec = add i32 %22, -1, !dbg !371
  store i32 %dec, ptr %highThreshold, align 4, !dbg !371
  %idxprom28 = zext i32 %22 to i64, !dbg !370
  %arrayidx29 = getelementptr %struct.FSE_decode_t, ptr %21, i64 %idxprom28, !dbg !370
  %symbol = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx29, i32 0, i32 1, !dbg !372
  store i8 %conv27, ptr %symbol, align 2, !dbg !373
  %23 = load ptr, ptr %symbolNext, align 8, !dbg !374
  %24 = load i32, ptr %s, align 4, !dbg !375
  %idxprom30 = zext i32 %24 to i64, !dbg !374
  %arrayidx31 = getelementptr i16, ptr %23, i64 %idxprom30, !dbg !374
  store i16 1, ptr %arrayidx31, align 2, !dbg !376
  br label %if.end45, !dbg !377

if.else:                                          ; preds = %for.body
  %25 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !378
  %26 = load i32, ptr %s, align 4, !dbg !381
  %idxprom32 = zext i32 %26 to i64, !dbg !378
  %arrayidx33 = getelementptr i16, ptr %25, i64 %idxprom32, !dbg !378
  %27 = load i16, ptr %arrayidx33, align 2, !dbg !378
  %conv34 = sext i16 %27 to i32, !dbg !378
  %28 = load i16, ptr %largeLimit, align 2, !dbg !382
  %conv35 = sext i16 %28 to i32, !dbg !382
  %cmp36 = icmp sge i32 %conv34, %conv35, !dbg !383
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !384

if.then38:                                        ; preds = %if.else
  %fastMode39 = getelementptr inbounds %struct.FSE_DTableHeader, ptr %DTableH, i32 0, i32 1, !dbg !385
  store i16 0, ptr %fastMode39, align 2, !dbg !386
  br label %if.end40, !dbg !387

if.end40:                                         ; preds = %if.then38, %if.else
  %29 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !388
  %30 = load i32, ptr %s, align 4, !dbg !389
  %idxprom41 = zext i32 %30 to i64, !dbg !388
  %arrayidx42 = getelementptr i16, ptr %29, i64 %idxprom41, !dbg !388
  %31 = load i16, ptr %arrayidx42, align 2, !dbg !388
  %32 = load ptr, ptr %symbolNext, align 8, !dbg !390
  %33 = load i32, ptr %s, align 4, !dbg !391
  %idxprom43 = zext i32 %33 to i64, !dbg !390
  %arrayidx44 = getelementptr i16, ptr %32, i64 %idxprom43, !dbg !390
  store i16 %31, ptr %arrayidx44, align 2, !dbg !392
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %if.then26
  br label %for.inc, !dbg !393

for.inc:                                          ; preds = %if.end45
  %34 = load i32, ptr %s, align 4, !dbg !394
  %inc = add i32 %34, 1, !dbg !394
  store i32 %inc, ptr %s, align 4, !dbg !394
  br label %for.cond, !dbg !395, !llvm.loop !396

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #11, !dbg !400
  call void @llvm.lifetime.end.p0(i64 2, ptr %largeLimit) #11, !dbg !400
  %35 = load ptr, ptr %dt.addr, align 8, !dbg !401
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %35, ptr align 2 %DTableH, i64 4, i1 false), !dbg !401
  call void @llvm.lifetime.end.p0(i64 4, ptr %DTableH) #11, !dbg !402
  %36 = load i32, ptr %highThreshold, align 4, !dbg !403
  %37 = load i32, ptr %tableSize, align 4, !dbg !404
  %sub46 = sub i32 %37, 1, !dbg !405
  %cmp47 = icmp eq i32 %36, %sub46, !dbg !406
  br i1 %cmp47, label %if.then49, label %if.else107, !dbg !407

if.then49:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tableMask) #11, !dbg !408
  call void @llvm.dbg.declare(metadata ptr %tableMask, metadata !241, metadata !DIExpression()), !dbg !409
  %38 = load i32, ptr %tableSize, align 4, !dbg !410
  %sub50 = sub i32 %38, 1, !dbg !411
  %conv51 = zext i32 %sub50 to i64, !dbg !410
  store i64 %conv51, ptr %tableMask, align 8, !dbg !409
  call void @llvm.lifetime.start.p0(i64 8, ptr %step) #11, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %step, metadata !245, metadata !DIExpression()), !dbg !413
  %39 = load i32, ptr %tableSize, align 4, !dbg !414
  %shr = lshr i32 %39, 1, !dbg !414
  %40 = load i32, ptr %tableSize, align 4, !dbg !414
  %shr52 = lshr i32 %40, 3, !dbg !414
  %add53 = add i32 %shr, %shr52, !dbg !414
  %add54 = add i32 %add53, 3, !dbg !414
  %conv55 = zext i32 %add54 to i64, !dbg !414
  store i64 %conv55, ptr %step, align 8, !dbg !413
  call void @llvm.lifetime.start.p0(i64 8, ptr %add56) #11, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %add56, metadata !246, metadata !DIExpression()), !dbg !416
  store i64 72340172838076673, ptr %add56, align 8, !dbg !416
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #11, !dbg !417
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !249, metadata !DIExpression()), !dbg !418
  store i64 0, ptr %pos, align 8, !dbg !418
  call void @llvm.lifetime.start.p0(i64 8, ptr %sv) #11, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %sv, metadata !250, metadata !DIExpression()), !dbg !420
  store i64 0, ptr %sv, align 8, !dbg !420
  call void @llvm.lifetime.start.p0(i64 4, ptr %s57) #11, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %s57, metadata !251, metadata !DIExpression()), !dbg !422
  store i32 0, ptr %s57, align 4, !dbg !423
  br label %for.cond58, !dbg !424

for.cond58:                                       ; preds = %for.inc78, %if.then49
  %41 = load i32, ptr %s57, align 4, !dbg !425
  %42 = load i32, ptr %maxSV1, align 4, !dbg !426
  %cmp59 = icmp ult i32 %41, %42, !dbg !427
  br i1 %cmp59, label %for.body61, label %for.end81, !dbg !428

for.body61:                                       ; preds = %for.cond58
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !429
  call void @llvm.dbg.declare(metadata ptr %i, metadata !252, metadata !DIExpression()), !dbg !430
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #11, !dbg !431
  call void @llvm.dbg.declare(metadata ptr %n, metadata !257, metadata !DIExpression()), !dbg !432
  %43 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !433
  %44 = load i32, ptr %s57, align 4, !dbg !434
  %idxprom62 = zext i32 %44 to i64, !dbg !433
  %arrayidx63 = getelementptr i16, ptr %43, i64 %idxprom62, !dbg !433
  %45 = load i16, ptr %arrayidx63, align 2, !dbg !433
  %conv64 = sext i16 %45 to i32, !dbg !433
  store i32 %conv64, ptr %n, align 4, !dbg !432
  %46 = load ptr, ptr %spread, align 8, !dbg !435
  %47 = load i64, ptr %pos, align 8, !dbg !436
  %add.ptr65 = getelementptr i8, ptr %46, i64 %47, !dbg !437
  %48 = load i64, ptr %sv, align 8, !dbg !438
  call void @MEM_write64(ptr noundef %add.ptr65, i64 noundef %48) #10, !dbg !439
  store i32 8, ptr %i, align 4, !dbg !440
  br label %for.cond66, !dbg !442

for.cond66:                                       ; preds = %for.inc73, %for.body61
  %49 = load i32, ptr %i, align 4, !dbg !443
  %50 = load i32, ptr %n, align 4, !dbg !445
  %cmp67 = icmp slt i32 %49, %50, !dbg !446
  br i1 %cmp67, label %for.body69, label %for.end75, !dbg !447

for.body69:                                       ; preds = %for.cond66
  %51 = load ptr, ptr %spread, align 8, !dbg !448
  %52 = load i64, ptr %pos, align 8, !dbg !450
  %add.ptr70 = getelementptr i8, ptr %51, i64 %52, !dbg !451
  %53 = load i32, ptr %i, align 4, !dbg !452
  %idx.ext71 = sext i32 %53 to i64, !dbg !453
  %add.ptr72 = getelementptr i8, ptr %add.ptr70, i64 %idx.ext71, !dbg !453
  %54 = load i64, ptr %sv, align 8, !dbg !454
  call void @MEM_write64(ptr noundef %add.ptr72, i64 noundef %54) #10, !dbg !455
  br label %for.inc73, !dbg !456

for.inc73:                                        ; preds = %for.body69
  %55 = load i32, ptr %i, align 4, !dbg !457
  %add74 = add i32 %55, 8, !dbg !457
  store i32 %add74, ptr %i, align 4, !dbg !457
  br label %for.cond66, !dbg !458, !llvm.loop !459

for.end75:                                        ; preds = %for.cond66
  %56 = load i32, ptr %n, align 4, !dbg !461
  %conv76 = sext i32 %56 to i64, !dbg !461
  %57 = load i64, ptr %pos, align 8, !dbg !462
  %add77 = add i64 %57, %conv76, !dbg !462
  store i64 %add77, ptr %pos, align 8, !dbg !462
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #11, !dbg !463
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !463
  br label %for.inc78, !dbg !464

for.inc78:                                        ; preds = %for.end75
  %58 = load i32, ptr %s57, align 4, !dbg !465
  %inc79 = add i32 %58, 1, !dbg !465
  store i32 %inc79, ptr %s57, align 4, !dbg !465
  %59 = load i64, ptr %sv, align 8, !dbg !466
  %add80 = add i64 %59, 72340172838076673, !dbg !466
  store i64 %add80, ptr %sv, align 8, !dbg !466
  br label %for.cond58, !dbg !467, !llvm.loop !468

for.end81:                                        ; preds = %for.cond58
  call void @llvm.lifetime.end.p0(i64 4, ptr %s57) #11, !dbg !470
  call void @llvm.lifetime.end.p0(i64 8, ptr %sv) #11, !dbg !470
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #11, !dbg !470
  call void @llvm.lifetime.end.p0(i64 8, ptr %add56) #11, !dbg !470
  call void @llvm.lifetime.start.p0(i64 8, ptr %position) #11, !dbg !471
  call void @llvm.dbg.declare(metadata ptr %position, metadata !259, metadata !DIExpression()), !dbg !472
  store i64 0, ptr %position, align 8, !dbg !472
  call void @llvm.lifetime.start.p0(i64 8, ptr %s82) #11, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %s82, metadata !261, metadata !DIExpression()), !dbg !474
  call void @llvm.lifetime.start.p0(i64 8, ptr %unroll) #11, !dbg !475
  call void @llvm.dbg.declare(metadata ptr %unroll, metadata !262, metadata !DIExpression()), !dbg !476
  store i64 2, ptr %unroll, align 8, !dbg !476
  store i64 0, ptr %s82, align 8, !dbg !477
  br label %for.cond83, !dbg !478

for.cond83:                                       ; preds = %for.inc104, %for.end81
  %60 = load i64, ptr %s82, align 8, !dbg !479
  %61 = load i32, ptr %tableSize, align 4, !dbg !480
  %conv84 = zext i32 %61 to i64, !dbg !481
  %cmp85 = icmp ult i64 %60, %conv84, !dbg !482
  br i1 %cmp85, label %for.body87, label %for.end106, !dbg !483

for.body87:                                       ; preds = %for.cond83
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #11, !dbg !484
  call void @llvm.dbg.declare(metadata ptr %u, metadata !263, metadata !DIExpression()), !dbg !485
  store i64 0, ptr %u, align 8, !dbg !486
  br label %for.cond88, !dbg !487

for.cond88:                                       ; preds = %for.inc98, %for.body87
  %62 = load i64, ptr %u, align 8, !dbg !488
  %cmp89 = icmp ult i64 %62, 2, !dbg !489
  br i1 %cmp89, label %for.body91, label %for.end100, !dbg !490

for.body91:                                       ; preds = %for.cond88
  call void @llvm.lifetime.start.p0(i64 8, ptr %uPosition) #11, !dbg !491
  call void @llvm.dbg.declare(metadata ptr %uPosition, metadata !267, metadata !DIExpression()), !dbg !492
  %63 = load i64, ptr %position, align 8, !dbg !493
  %64 = load i64, ptr %u, align 8, !dbg !494
  %65 = load i64, ptr %step, align 8, !dbg !495
  %mul92 = mul i64 %64, %65, !dbg !496
  %add93 = add i64 %63, %mul92, !dbg !497
  %66 = load i64, ptr %tableMask, align 8, !dbg !498
  %and = and i64 %add93, %66, !dbg !499
  store i64 %and, ptr %uPosition, align 8, !dbg !492
  %67 = load ptr, ptr %spread, align 8, !dbg !500
  %68 = load i64, ptr %s82, align 8, !dbg !501
  %69 = load i64, ptr %u, align 8, !dbg !502
  %add94 = add i64 %68, %69, !dbg !503
  %arrayidx95 = getelementptr i8, ptr %67, i64 %add94, !dbg !500
  %70 = load i8, ptr %arrayidx95, align 1, !dbg !500
  %71 = load ptr, ptr %tableDecode, align 8, !dbg !504
  %72 = load i64, ptr %uPosition, align 8, !dbg !505
  %arrayidx96 = getelementptr %struct.FSE_decode_t, ptr %71, i64 %72, !dbg !504
  %symbol97 = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx96, i32 0, i32 1, !dbg !506
  store i8 %70, ptr %symbol97, align 2, !dbg !507
  call void @llvm.lifetime.end.p0(i64 8, ptr %uPosition) #11, !dbg !508
  br label %for.inc98, !dbg !509

for.inc98:                                        ; preds = %for.body91
  %73 = load i64, ptr %u, align 8, !dbg !510
  %inc99 = add i64 %73, 1, !dbg !510
  store i64 %inc99, ptr %u, align 8, !dbg !510
  br label %for.cond88, !dbg !511, !llvm.loop !512

for.end100:                                       ; preds = %for.cond88
  %74 = load i64, ptr %position, align 8, !dbg !514
  %75 = load i64, ptr %step, align 8, !dbg !515
  %mul101 = mul i64 2, %75, !dbg !516
  %add102 = add i64 %74, %mul101, !dbg !517
  %76 = load i64, ptr %tableMask, align 8, !dbg !518
  %and103 = and i64 %add102, %76, !dbg !519
  store i64 %and103, ptr %position, align 8, !dbg !520
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #11, !dbg !521
  br label %for.inc104, !dbg !522

for.inc104:                                       ; preds = %for.end100
  %77 = load i64, ptr %s82, align 8, !dbg !523
  %add105 = add i64 %77, 2, !dbg !523
  store i64 %add105, ptr %s82, align 8, !dbg !523
  br label %for.cond83, !dbg !524, !llvm.loop !525

for.end106:                                       ; preds = %for.cond83
  call void @llvm.lifetime.end.p0(i64 8, ptr %unroll) #11, !dbg !527
  call void @llvm.lifetime.end.p0(i64 8, ptr %s82) #11, !dbg !527
  call void @llvm.lifetime.end.p0(i64 8, ptr %position) #11, !dbg !527
  call void @llvm.lifetime.end.p0(i64 8, ptr %step) #11, !dbg !528
  call void @llvm.lifetime.end.p0(i64 8, ptr %tableMask) #11, !dbg !528
  br label %if.end152, !dbg !529

if.else107:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %tableMask108) #11, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %tableMask108, metadata !271, metadata !DIExpression()), !dbg !531
  %78 = load i32, ptr %tableSize, align 4, !dbg !532
  %sub109 = sub i32 %78, 1, !dbg !533
  store i32 %sub109, ptr %tableMask108, align 4, !dbg !531
  call void @llvm.lifetime.start.p0(i64 4, ptr %step110) #11, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %step110, metadata !273, metadata !DIExpression()), !dbg !535
  %79 = load i32, ptr %tableSize, align 4, !dbg !536
  %shr111 = lshr i32 %79, 1, !dbg !536
  %80 = load i32, ptr %tableSize, align 4, !dbg !536
  %shr112 = lshr i32 %80, 3, !dbg !536
  %add113 = add i32 %shr111, %shr112, !dbg !536
  %add114 = add i32 %add113, 3, !dbg !536
  store i32 %add114, ptr %step110, align 4, !dbg !535
  call void @llvm.lifetime.start.p0(i64 4, ptr %s115) #11, !dbg !537
  call void @llvm.dbg.declare(metadata ptr %s115, metadata !274, metadata !DIExpression()), !dbg !538
  call void @llvm.lifetime.start.p0(i64 4, ptr %position116) #11, !dbg !537
  call void @llvm.dbg.declare(metadata ptr %position116, metadata !275, metadata !DIExpression()), !dbg !539
  store i32 0, ptr %position116, align 4, !dbg !539
  store i32 0, ptr %s115, align 4, !dbg !540
  br label %for.cond117, !dbg !541

for.cond117:                                      ; preds = %for.inc142, %if.else107
  %81 = load i32, ptr %s115, align 4, !dbg !542
  %82 = load i32, ptr %maxSV1, align 4, !dbg !543
  %cmp118 = icmp ult i32 %81, %82, !dbg !544
  br i1 %cmp118, label %for.body120, label %for.end144, !dbg !545

for.body120:                                      ; preds = %for.cond117
  call void @llvm.lifetime.start.p0(i64 4, ptr %i121) #11, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %i121, metadata !276, metadata !DIExpression()), !dbg !547
  store i32 0, ptr %i121, align 4, !dbg !548
  br label %for.cond122, !dbg !550

for.cond122:                                      ; preds = %for.inc139, %for.body120
  %83 = load i32, ptr %i121, align 4, !dbg !551
  %84 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !553
  %85 = load i32, ptr %s115, align 4, !dbg !554
  %idxprom123 = zext i32 %85 to i64, !dbg !553
  %arrayidx124 = getelementptr i16, ptr %84, i64 %idxprom123, !dbg !553
  %86 = load i16, ptr %arrayidx124, align 2, !dbg !553
  %conv125 = sext i16 %86 to i32, !dbg !553
  %cmp126 = icmp slt i32 %83, %conv125, !dbg !555
  br i1 %cmp126, label %for.body128, label %for.end141, !dbg !556

for.body128:                                      ; preds = %for.cond122
  %87 = load i32, ptr %s115, align 4, !dbg !557
  %conv129 = trunc i32 %87 to i8, !dbg !559
  %88 = load ptr, ptr %tableDecode, align 8, !dbg !560
  %89 = load i32, ptr %position116, align 4, !dbg !561
  %idxprom130 = zext i32 %89 to i64, !dbg !560
  %arrayidx131 = getelementptr %struct.FSE_decode_t, ptr %88, i64 %idxprom130, !dbg !560
  %symbol132 = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx131, i32 0, i32 1, !dbg !562
  store i8 %conv129, ptr %symbol132, align 2, !dbg !563
  %90 = load i32, ptr %position116, align 4, !dbg !564
  %91 = load i32, ptr %step110, align 4, !dbg !565
  %add133 = add i32 %90, %91, !dbg !566
  %92 = load i32, ptr %tableMask108, align 4, !dbg !567
  %and134 = and i32 %add133, %92, !dbg !568
  store i32 %and134, ptr %position116, align 4, !dbg !569
  br label %while.cond, !dbg !570

while.cond:                                       ; preds = %while.body, %for.body128
  %93 = load i32, ptr %position116, align 4, !dbg !571
  %94 = load i32, ptr %highThreshold, align 4, !dbg !572
  %cmp135 = icmp ugt i32 %93, %94, !dbg !573
  br i1 %cmp135, label %while.body, label %while.end, !dbg !570

while.body:                                       ; preds = %while.cond
  %95 = load i32, ptr %position116, align 4, !dbg !574
  %96 = load i32, ptr %step110, align 4, !dbg !575
  %add137 = add i32 %95, %96, !dbg !576
  %97 = load i32, ptr %tableMask108, align 4, !dbg !577
  %and138 = and i32 %add137, %97, !dbg !578
  store i32 %and138, ptr %position116, align 4, !dbg !579
  br label %while.cond, !dbg !570, !llvm.loop !580

while.end:                                        ; preds = %while.cond
  br label %for.inc139, !dbg !581

for.inc139:                                       ; preds = %while.end
  %98 = load i32, ptr %i121, align 4, !dbg !582
  %inc140 = add i32 %98, 1, !dbg !582
  store i32 %inc140, ptr %i121, align 4, !dbg !582
  br label %for.cond122, !dbg !583, !llvm.loop !584

for.end141:                                       ; preds = %for.cond122
  call void @llvm.lifetime.end.p0(i64 4, ptr %i121) #11, !dbg !586
  br label %for.inc142, !dbg !587

for.inc142:                                       ; preds = %for.end141
  %99 = load i32, ptr %s115, align 4, !dbg !588
  %inc143 = add i32 %99, 1, !dbg !588
  store i32 %inc143, ptr %s115, align 4, !dbg !588
  br label %for.cond117, !dbg !589, !llvm.loop !590

for.end144:                                       ; preds = %for.cond117
  %100 = load i32, ptr %position116, align 4, !dbg !592
  %cmp145 = icmp ne i32 %100, 0, !dbg !594
  br i1 %cmp145, label %if.then147, label %if.end148, !dbg !595

if.then147:                                       ; preds = %for.end144
  store i64 -1, ptr %retval, align 8, !dbg !596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !596

if.end148:                                        ; preds = %for.end144
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !597
  br label %cleanup, !dbg !597

cleanup:                                          ; preds = %if.end148, %if.then147
  call void @llvm.lifetime.end.p0(i64 4, ptr %position116) #11, !dbg !597
  call void @llvm.lifetime.end.p0(i64 4, ptr %s115) #11, !dbg !597
  call void @llvm.lifetime.end.p0(i64 4, ptr %step110) #11, !dbg !597
  call void @llvm.lifetime.end.p0(i64 4, ptr %tableMask108) #11, !dbg !597
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup182 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end152

if.end152:                                        ; preds = %cleanup.cont, %for.end106
  call void @llvm.lifetime.start.p0(i64 4, ptr %u153) #11, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %u153, metadata !280, metadata !DIExpression()), !dbg !599
  store i32 0, ptr %u153, align 4, !dbg !600
  br label %for.cond154, !dbg !601

for.cond154:                                      ; preds = %for.inc179, %if.end152
  %101 = load i32, ptr %u153, align 4, !dbg !602
  %102 = load i32, ptr %tableSize, align 4, !dbg !603
  %cmp155 = icmp ult i32 %101, %102, !dbg !604
  br i1 %cmp155, label %for.body157, label %for.end181, !dbg !605

for.body157:                                      ; preds = %for.cond154
  call void @llvm.lifetime.start.p0(i64 1, ptr %symbol158) #11, !dbg !606
  call void @llvm.dbg.declare(metadata ptr %symbol158, metadata !282, metadata !DIExpression()), !dbg !607
  %103 = load ptr, ptr %tableDecode, align 8, !dbg !608
  %104 = load i32, ptr %u153, align 4, !dbg !609
  %idxprom159 = zext i32 %104 to i64, !dbg !608
  %arrayidx160 = getelementptr %struct.FSE_decode_t, ptr %103, i64 %idxprom159, !dbg !608
  %symbol161 = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx160, i32 0, i32 1, !dbg !610
  %105 = load i8, ptr %symbol161, align 2, !dbg !610
  store i8 %105, ptr %symbol158, align 1, !dbg !607
  call void @llvm.lifetime.start.p0(i64 4, ptr %nextState) #11, !dbg !611
  call void @llvm.dbg.declare(metadata ptr %nextState, metadata !286, metadata !DIExpression()), !dbg !612
  %106 = load ptr, ptr %symbolNext, align 8, !dbg !613
  %107 = load i8, ptr %symbol158, align 1, !dbg !614
  %idxprom162 = zext i8 %107 to i64, !dbg !613
  %arrayidx163 = getelementptr i16, ptr %106, i64 %idxprom162, !dbg !613
  %108 = load i16, ptr %arrayidx163, align 2, !dbg !615
  %inc164 = add i16 %108, 1, !dbg !615
  store i16 %inc164, ptr %arrayidx163, align 2, !dbg !615
  %conv165 = zext i16 %108 to i32, !dbg !613
  store i32 %conv165, ptr %nextState, align 4, !dbg !612
  %109 = load i32, ptr %tableLog.addr, align 4, !dbg !616
  %110 = load i32, ptr %nextState, align 4, !dbg !617
  %call = call i32 @BIT_highbit32(i32 noundef %110) #10, !dbg !618
  %sub166 = sub i32 %109, %call, !dbg !619
  %conv167 = trunc i32 %sub166 to i8, !dbg !620
  %111 = load ptr, ptr %tableDecode, align 8, !dbg !621
  %112 = load i32, ptr %u153, align 4, !dbg !622
  %idxprom168 = zext i32 %112 to i64, !dbg !621
  %arrayidx169 = getelementptr %struct.FSE_decode_t, ptr %111, i64 %idxprom168, !dbg !621
  %nbBits = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx169, i32 0, i32 2, !dbg !623
  store i8 %conv167, ptr %nbBits, align 1, !dbg !624
  %113 = load i32, ptr %nextState, align 4, !dbg !625
  %114 = load ptr, ptr %tableDecode, align 8, !dbg !626
  %115 = load i32, ptr %u153, align 4, !dbg !627
  %idxprom170 = zext i32 %115 to i64, !dbg !626
  %arrayidx171 = getelementptr %struct.FSE_decode_t, ptr %114, i64 %idxprom170, !dbg !626
  %nbBits172 = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx171, i32 0, i32 2, !dbg !628
  %116 = load i8, ptr %nbBits172, align 1, !dbg !628
  %conv173 = zext i8 %116 to i32, !dbg !626
  %shl174 = shl i32 %113, %conv173, !dbg !629
  %117 = load i32, ptr %tableSize, align 4, !dbg !630
  %sub175 = sub i32 %shl174, %117, !dbg !631
  %conv176 = trunc i32 %sub175 to i16, !dbg !632
  %118 = load ptr, ptr %tableDecode, align 8, !dbg !633
  %119 = load i32, ptr %u153, align 4, !dbg !634
  %idxprom177 = zext i32 %119 to i64, !dbg !633
  %arrayidx178 = getelementptr %struct.FSE_decode_t, ptr %118, i64 %idxprom177, !dbg !633
  %newState = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx178, i32 0, i32 0, !dbg !635
  store i16 %conv176, ptr %newState, align 2, !dbg !636
  call void @llvm.lifetime.end.p0(i64 4, ptr %nextState) #11, !dbg !637
  call void @llvm.lifetime.end.p0(i64 1, ptr %symbol158) #11, !dbg !637
  br label %for.inc179, !dbg !638

for.inc179:                                       ; preds = %for.body157
  %120 = load i32, ptr %u153, align 4, !dbg !639
  %inc180 = add i32 %120, 1, !dbg !639
  store i32 %inc180, ptr %u153, align 4, !dbg !639
  br label %for.cond154, !dbg !640, !llvm.loop !641

for.end181:                                       ; preds = %for.cond154
  call void @llvm.lifetime.end.p0(i64 4, ptr %u153) #11, !dbg !643
  store i64 0, ptr %retval, align 8, !dbg !644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup182, !dbg !644

cleanup182:                                       ; preds = %for.end181, %cleanup, %if.then14, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %highThreshold) #11, !dbg !645
  call void @llvm.lifetime.end.p0(i64 4, ptr %tableSize) #11, !dbg !645
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxSV1) #11, !dbg !645
  call void @llvm.lifetime.end.p0(i64 8, ptr %spread) #11, !dbg !645
  call void @llvm.lifetime.end.p0(i64 8, ptr %symbolNext) #11, !dbg !645
  call void @llvm.lifetime.end.p0(i64 8, ptr %tableDecode) #11, !dbg !645
  call void @llvm.lifetime.end.p0(i64 8, ptr %tdPtr) #11, !dbg !645
  %121 = load i64, ptr %retval, align 8, !dbg !645
  ret i64 %121, !dbg !645
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @FSE_buildDTable_rle(ptr noundef %dt, i8 noundef zeroext %symbolValue) #0 align 16 !dbg !646 {
entry:
  %dt.addr = alloca ptr, align 8
  %symbolValue.addr = alloca i8, align 1
  %ptr = alloca ptr, align 8
  %DTableH = alloca ptr, align 8
  %dPtr = alloca ptr, align 8
  %cell = alloca ptr, align 8
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !650, metadata !DIExpression()), !dbg !657
  store i8 %symbolValue, ptr %symbolValue.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %symbolValue.addr, metadata !651, metadata !DIExpression()), !dbg !658
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #11, !dbg !659
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !652, metadata !DIExpression()), !dbg !660
  %0 = load ptr, ptr %dt.addr, align 8, !dbg !661
  store ptr %0, ptr %ptr, align 8, !dbg !660
  call void @llvm.lifetime.start.p0(i64 8, ptr %DTableH) #11, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %DTableH, metadata !653, metadata !DIExpression()), !dbg !663
  %1 = load ptr, ptr %ptr, align 8, !dbg !664
  store ptr %1, ptr %DTableH, align 8, !dbg !663
  call void @llvm.lifetime.start.p0(i64 8, ptr %dPtr) #11, !dbg !665
  call void @llvm.dbg.declare(metadata ptr %dPtr, metadata !655, metadata !DIExpression()), !dbg !666
  %2 = load ptr, ptr %dt.addr, align 8, !dbg !667
  %add.ptr = getelementptr i32, ptr %2, i64 1, !dbg !668
  store ptr %add.ptr, ptr %dPtr, align 8, !dbg !666
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #11, !dbg !669
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !656, metadata !DIExpression()), !dbg !670
  %3 = load ptr, ptr %dPtr, align 8, !dbg !671
  store ptr %3, ptr %cell, align 8, !dbg !670
  %4 = load ptr, ptr %DTableH, align 8, !dbg !672
  %tableLog = getelementptr inbounds %struct.FSE_DTableHeader, ptr %4, i32 0, i32 0, !dbg !673
  store i16 0, ptr %tableLog, align 2, !dbg !674
  %5 = load ptr, ptr %DTableH, align 8, !dbg !675
  %fastMode = getelementptr inbounds %struct.FSE_DTableHeader, ptr %5, i32 0, i32 1, !dbg !676
  store i16 0, ptr %fastMode, align 2, !dbg !677
  %6 = load ptr, ptr %cell, align 8, !dbg !678
  %newState = getelementptr inbounds %struct.FSE_decode_t, ptr %6, i32 0, i32 0, !dbg !679
  store i16 0, ptr %newState, align 2, !dbg !680
  %7 = load i8, ptr %symbolValue.addr, align 1, !dbg !681
  %8 = load ptr, ptr %cell, align 8, !dbg !682
  %symbol = getelementptr inbounds %struct.FSE_decode_t, ptr %8, i32 0, i32 1, !dbg !683
  store i8 %7, ptr %symbol, align 2, !dbg !684
  %9 = load ptr, ptr %cell, align 8, !dbg !685
  %nbBits = getelementptr inbounds %struct.FSE_decode_t, ptr %9, i32 0, i32 2, !dbg !686
  store i8 0, ptr %nbBits, align 1, !dbg !687
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #11, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %dPtr) #11, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %DTableH) #11, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #11, !dbg !688
  ret i64 0, !dbg !689
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @FSE_buildDTable_raw(ptr noundef %dt, i32 noundef %nbBits) #0 align 16 !dbg !690 {
entry:
  %retval = alloca i64, align 8
  %dt.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %DTableH = alloca ptr, align 8
  %dPtr = alloca ptr, align 8
  %dinfo = alloca ptr, align 8
  %tableSize = alloca i32, align 4
  %tableMask = alloca i32, align 4
  %maxSV1 = alloca i32, align 4
  %s = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !694, metadata !DIExpression()), !dbg !705
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !695, metadata !DIExpression()), !dbg !706
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #11, !dbg !707
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !696, metadata !DIExpression()), !dbg !708
  %0 = load ptr, ptr %dt.addr, align 8, !dbg !709
  store ptr %0, ptr %ptr, align 8, !dbg !708
  call void @llvm.lifetime.start.p0(i64 8, ptr %DTableH) #11, !dbg !710
  call void @llvm.dbg.declare(metadata ptr %DTableH, metadata !697, metadata !DIExpression()), !dbg !711
  %1 = load ptr, ptr %ptr, align 8, !dbg !712
  store ptr %1, ptr %DTableH, align 8, !dbg !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %dPtr) #11, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %dPtr, metadata !698, metadata !DIExpression()), !dbg !714
  %2 = load ptr, ptr %dt.addr, align 8, !dbg !715
  %add.ptr = getelementptr i32, ptr %2, i64 1, !dbg !716
  store ptr %add.ptr, ptr %dPtr, align 8, !dbg !714
  call void @llvm.lifetime.start.p0(i64 8, ptr %dinfo) #11, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %dinfo, metadata !699, metadata !DIExpression()), !dbg !718
  %3 = load ptr, ptr %dPtr, align 8, !dbg !719
  store ptr %3, ptr %dinfo, align 8, !dbg !718
  call void @llvm.lifetime.start.p0(i64 4, ptr %tableSize) #11, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %tableSize, metadata !700, metadata !DIExpression()), !dbg !721
  %4 = load i32, ptr %nbBits.addr, align 4, !dbg !722
  %shl = shl i32 1, %4, !dbg !723
  store i32 %shl, ptr %tableSize, align 4, !dbg !721
  call void @llvm.lifetime.start.p0(i64 4, ptr %tableMask) #11, !dbg !724
  call void @llvm.dbg.declare(metadata ptr %tableMask, metadata !702, metadata !DIExpression()), !dbg !725
  %5 = load i32, ptr %tableSize, align 4, !dbg !726
  %sub = sub i32 %5, 1, !dbg !727
  store i32 %sub, ptr %tableMask, align 4, !dbg !725
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxSV1) #11, !dbg !728
  call void @llvm.dbg.declare(metadata ptr %maxSV1, metadata !703, metadata !DIExpression()), !dbg !729
  %6 = load i32, ptr %tableMask, align 4, !dbg !730
  %add = add i32 %6, 1, !dbg !731
  store i32 %add, ptr %maxSV1, align 4, !dbg !729
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #11, !dbg !732
  call void @llvm.dbg.declare(metadata ptr %s, metadata !704, metadata !DIExpression()), !dbg !733
  %7 = load i32, ptr %nbBits.addr, align 4, !dbg !734
  %cmp = icmp ult i32 %7, 1, !dbg !736
  br i1 %cmp, label %if.then, label %if.end, !dbg !737

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !738

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %nbBits.addr, align 4, !dbg !739
  %conv = trunc i32 %8 to i16, !dbg !740
  %9 = load ptr, ptr %DTableH, align 8, !dbg !741
  %tableLog = getelementptr inbounds %struct.FSE_DTableHeader, ptr %9, i32 0, i32 0, !dbg !742
  store i16 %conv, ptr %tableLog, align 2, !dbg !743
  %10 = load ptr, ptr %DTableH, align 8, !dbg !744
  %fastMode = getelementptr inbounds %struct.FSE_DTableHeader, ptr %10, i32 0, i32 1, !dbg !745
  store i16 1, ptr %fastMode, align 2, !dbg !746
  store i32 0, ptr %s, align 4, !dbg !747
  br label %for.cond, !dbg !749

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %s, align 4, !dbg !750
  %12 = load i32, ptr %maxSV1, align 4, !dbg !752
  %cmp1 = icmp ult i32 %11, %12, !dbg !753
  br i1 %cmp1, label %for.body, label %for.end, !dbg !754

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %dinfo, align 8, !dbg !755
  %14 = load i32, ptr %s, align 4, !dbg !757
  %idxprom = zext i32 %14 to i64, !dbg !755
  %arrayidx = getelementptr %struct.FSE_decode_t, ptr %13, i64 %idxprom, !dbg !755
  %newState = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx, i32 0, i32 0, !dbg !758
  store i16 0, ptr %newState, align 2, !dbg !759
  %15 = load i32, ptr %s, align 4, !dbg !760
  %conv3 = trunc i32 %15 to i8, !dbg !761
  %16 = load ptr, ptr %dinfo, align 8, !dbg !762
  %17 = load i32, ptr %s, align 4, !dbg !763
  %idxprom4 = zext i32 %17 to i64, !dbg !762
  %arrayidx5 = getelementptr %struct.FSE_decode_t, ptr %16, i64 %idxprom4, !dbg !762
  %symbol = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx5, i32 0, i32 1, !dbg !764
  store i8 %conv3, ptr %symbol, align 2, !dbg !765
  %18 = load i32, ptr %nbBits.addr, align 4, !dbg !766
  %conv6 = trunc i32 %18 to i8, !dbg !767
  %19 = load ptr, ptr %dinfo, align 8, !dbg !768
  %20 = load i32, ptr %s, align 4, !dbg !769
  %idxprom7 = zext i32 %20 to i64, !dbg !768
  %arrayidx8 = getelementptr %struct.FSE_decode_t, ptr %19, i64 %idxprom7, !dbg !768
  %nbBits9 = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx8, i32 0, i32 2, !dbg !770
  store i8 %conv6, ptr %nbBits9, align 1, !dbg !771
  br label %for.inc, !dbg !772

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %s, align 4, !dbg !773
  %inc = add i32 %21, 1, !dbg !773
  store i32 %inc, ptr %s, align 4, !dbg !773
  br label %for.cond, !dbg !774, !llvm.loop !775

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %retval, align 8, !dbg !777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !777

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #11, !dbg !778
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxSV1) #11, !dbg !778
  call void @llvm.lifetime.end.p0(i64 4, ptr %tableMask) #11, !dbg !778
  call void @llvm.lifetime.end.p0(i64 4, ptr %tableSize) #11, !dbg !778
  call void @llvm.lifetime.end.p0(i64 8, ptr %dinfo) #11, !dbg !778
  call void @llvm.lifetime.end.p0(i64 8, ptr %dPtr) #11, !dbg !778
  call void @llvm.lifetime.end.p0(i64 8, ptr %DTableH) #11, !dbg !778
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #11, !dbg !778
  %22 = load i64, ptr %retval, align 8, !dbg !778
  ret i64 %22, !dbg !778
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @FSE_decompress_usingDTable(ptr noundef %dst, i64 noundef %originalSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %dt) #0 align 16 !dbg !779 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %originalSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %dt.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %DTableH = alloca ptr, align 8
  %fastMode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !785, metadata !DIExpression()), !dbg !793
  store i64 %originalSize, ptr %originalSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %originalSize.addr, metadata !786, metadata !DIExpression()), !dbg !794
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !787, metadata !DIExpression()), !dbg !795
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !788, metadata !DIExpression()), !dbg !796
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !789, metadata !DIExpression()), !dbg !797
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #11, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !790, metadata !DIExpression()), !dbg !799
  %0 = load ptr, ptr %dt.addr, align 8, !dbg !800
  store ptr %0, ptr %ptr, align 8, !dbg !799
  call void @llvm.lifetime.start.p0(i64 8, ptr %DTableH) #11, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %DTableH, metadata !791, metadata !DIExpression()), !dbg !802
  %1 = load ptr, ptr %ptr, align 8, !dbg !803
  store ptr %1, ptr %DTableH, align 8, !dbg !802
  call void @llvm.lifetime.start.p0(i64 4, ptr %fastMode) #11, !dbg !804
  call void @llvm.dbg.declare(metadata ptr %fastMode, metadata !792, metadata !DIExpression()), !dbg !805
  %2 = load ptr, ptr %DTableH, align 8, !dbg !806
  %fastMode1 = getelementptr inbounds %struct.FSE_DTableHeader, ptr %2, i32 0, i32 1, !dbg !807
  %3 = load i16, ptr %fastMode1, align 2, !dbg !807
  %conv = zext i16 %3 to i32, !dbg !806
  store i32 %conv, ptr %fastMode, align 4, !dbg !805
  %4 = load i32, ptr %fastMode, align 4, !dbg !808
  %tobool = icmp ne i32 %4, 0, !dbg !808
  br i1 %tobool, label %if.then, label %if.end, !dbg !810

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !811
  %6 = load i64, ptr %originalSize.addr, align 8, !dbg !812
  %7 = load ptr, ptr %cSrc.addr, align 8, !dbg !813
  %8 = load i64, ptr %cSrcSize.addr, align 8, !dbg !814
  %9 = load ptr, ptr %dt.addr, align 8, !dbg !815
  %call = call i64 @FSE_decompress_usingDTable_generic(ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i32 noundef 1) #10, !dbg !816
  store i64 %call, ptr %retval, align 8, !dbg !817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !817

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !818
  %11 = load i64, ptr %originalSize.addr, align 8, !dbg !819
  %12 = load ptr, ptr %cSrc.addr, align 8, !dbg !820
  %13 = load i64, ptr %cSrcSize.addr, align 8, !dbg !821
  %14 = load ptr, ptr %dt.addr, align 8, !dbg !822
  %call2 = call i64 @FSE_decompress_usingDTable_generic(ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i32 noundef 0) #10, !dbg !823
  store i64 %call2, ptr %retval, align 8, !dbg !824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !824

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fastMode) #11, !dbg !825
  call void @llvm.lifetime.end.p0(i64 8, ptr %DTableH) #11, !dbg !825
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #11, !dbg !825
  %15 = load i64, ptr %retval, align 8, !dbg !825
  ret i64 %15, !dbg !825
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @FSE_decompress_usingDTable_generic(ptr noundef %dst, i64 noundef %maxDstSize, ptr noundef %cSrc, i64 noundef %cSrcSize, ptr noundef %dt, i32 noundef %fast) #3 align 16 !dbg !826 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %maxDstSize.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %dt.addr = alloca ptr, align 8
  %fast.addr = alloca i32, align 4
  %ostart = alloca ptr, align 8
  %op = alloca ptr, align 8
  %omax = alloca ptr, align 8
  %olimit = alloca ptr, align 8
  %bitD = alloca %struct.BIT_DStream_t, align 8
  %state1 = alloca %struct.FSE_DState_t, align 8
  %state2 = alloca %struct.FSE_DState_t, align 8
  %_var_err__ = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !830, metadata !DIExpression()), !dbg !859
  store i64 %maxDstSize, ptr %maxDstSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxDstSize.addr, metadata !831, metadata !DIExpression()), !dbg !860
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !832, metadata !DIExpression()), !dbg !861
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !833, metadata !DIExpression()), !dbg !862
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !834, metadata !DIExpression()), !dbg !863
  store i32 %fast, ptr %fast.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fast.addr, metadata !835, metadata !DIExpression()), !dbg !864
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #11, !dbg !865
  call void @llvm.dbg.declare(metadata ptr %ostart, metadata !836, metadata !DIExpression()), !dbg !866
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !867
  store ptr %0, ptr %ostart, align 8, !dbg !866
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #11, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %op, metadata !838, metadata !DIExpression()), !dbg !869
  %1 = load ptr, ptr %ostart, align 8, !dbg !870
  store ptr %1, ptr %op, align 8, !dbg !869
  call void @llvm.lifetime.start.p0(i64 8, ptr %omax) #11, !dbg !871
  call void @llvm.dbg.declare(metadata ptr %omax, metadata !839, metadata !DIExpression()), !dbg !872
  %2 = load ptr, ptr %op, align 8, !dbg !873
  %3 = load i64, ptr %maxDstSize.addr, align 8, !dbg !874
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !875
  store ptr %add.ptr, ptr %omax, align 8, !dbg !872
  call void @llvm.lifetime.start.p0(i64 8, ptr %olimit) #11, !dbg !876
  call void @llvm.dbg.declare(metadata ptr %olimit, metadata !840, metadata !DIExpression()), !dbg !877
  %4 = load ptr, ptr %omax, align 8, !dbg !878
  %add.ptr1 = getelementptr i8, ptr %4, i64 -3, !dbg !879
  store ptr %add.ptr1, ptr %olimit, align 8, !dbg !877
  call void @llvm.lifetime.start.p0(i64 40, ptr %bitD) #11, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %bitD, metadata !841, metadata !DIExpression()), !dbg !881
  call void @llvm.lifetime.start.p0(i64 16, ptr %state1) #11, !dbg !882
  call void @llvm.dbg.declare(metadata ptr %state1, metadata !850, metadata !DIExpression()), !dbg !883
  call void @llvm.lifetime.start.p0(i64 16, ptr %state2) #11, !dbg !884
  call void @llvm.dbg.declare(metadata ptr %state2, metadata !856, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 8, ptr %_var_err__) #11, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %_var_err__, metadata !857, metadata !DIExpression()), !dbg !886
  %5 = load ptr, ptr %cSrc.addr, align 8, !dbg !886
  %6 = load i64, ptr %cSrcSize.addr, align 8, !dbg !886
  %call = call i64 @BIT_initDStream(ptr noundef %bitD, ptr noundef %5, i64 noundef %6) #10, !dbg !886
  store i64 %call, ptr %_var_err__, align 8, !dbg !886
  %7 = load i64, ptr %_var_err__, align 8, !dbg !887
  %call2 = call i32 @ERR_isError(i64 noundef %7) #10, !dbg !887
  %tobool = icmp ne i32 %call2, 0, !dbg !887
  br i1 %tobool, label %if.then, label %if.end, !dbg !886

if.then:                                          ; preds = %entry
  %8 = load i64, ptr %_var_err__, align 8, !dbg !887
  store i64 %8, ptr %retval, align 8, !dbg !887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !887

if.end:                                           ; preds = %entry
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !889
  br label %cleanup, !dbg !889

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %_var_err__) #11, !dbg !889
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup110 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %9 = load ptr, ptr %dt.addr, align 8, !dbg !890
  call void @FSE_initDState(ptr noundef %state1, ptr noundef %bitD, ptr noundef %9) #10, !dbg !891
  %10 = load ptr, ptr %dt.addr, align 8, !dbg !892
  call void @FSE_initDState(ptr noundef %state2, ptr noundef %bitD, ptr noundef %10) #10, !dbg !893
  br label %for.cond, !dbg !894

for.cond:                                         ; preds = %for.inc, %cleanup.cont
  %call3 = call i32 @BIT_reloadDStream(ptr noundef %bitD) #10, !dbg !895
  %cmp = icmp eq i32 %call3, 0, !dbg !898
  %conv = zext i1 %cmp to i32, !dbg !898
  %11 = load ptr, ptr %op, align 8, !dbg !899
  %12 = load ptr, ptr %olimit, align 8, !dbg !900
  %cmp4 = icmp ult ptr %11, %12, !dbg !901
  %conv5 = zext i1 %cmp4 to i32, !dbg !901
  %and = and i32 %conv, %conv5, !dbg !902
  %tobool6 = icmp ne i32 %and, 0, !dbg !903
  br i1 %tobool6, label %for.body, label %for.end, !dbg !903

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %fast.addr, align 4, !dbg !904
  %tobool7 = icmp ne i32 %13, 0, !dbg !904
  br i1 %tobool7, label %cond.true, label %cond.false, !dbg !904

cond.true:                                        ; preds = %for.body
  %call8 = call zeroext i8 @FSE_decodeSymbolFast(ptr noundef %state1, ptr noundef %bitD) #10, !dbg !904
  %conv9 = zext i8 %call8 to i32, !dbg !904
  br label %cond.end, !dbg !904

cond.false:                                       ; preds = %for.body
  %call10 = call zeroext i8 @FSE_decodeSymbol(ptr noundef %state1, ptr noundef %bitD) #10, !dbg !904
  %conv11 = zext i8 %call10 to i32, !dbg !904
  br label %cond.end, !dbg !904

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv11, %cond.false ], !dbg !904
  %conv12 = trunc i32 %cond to i8, !dbg !904
  %14 = load ptr, ptr %op, align 8, !dbg !906
  %arrayidx = getelementptr i8, ptr %14, i64 0, !dbg !906
  store i8 %conv12, ptr %arrayidx, align 1, !dbg !907
  %15 = load i32, ptr %fast.addr, align 4, !dbg !908
  %tobool13 = icmp ne i32 %15, 0, !dbg !908
  br i1 %tobool13, label %cond.true14, label %cond.false17, !dbg !908

cond.true14:                                      ; preds = %cond.end
  %call15 = call zeroext i8 @FSE_decodeSymbolFast(ptr noundef %state2, ptr noundef %bitD) #10, !dbg !908
  %conv16 = zext i8 %call15 to i32, !dbg !908
  br label %cond.end20, !dbg !908

cond.false17:                                     ; preds = %cond.end
  %call18 = call zeroext i8 @FSE_decodeSymbol(ptr noundef %state2, ptr noundef %bitD) #10, !dbg !908
  %conv19 = zext i8 %call18 to i32, !dbg !908
  br label %cond.end20, !dbg !908

cond.end20:                                       ; preds = %cond.false17, %cond.true14
  %cond21 = phi i32 [ %conv16, %cond.true14 ], [ %conv19, %cond.false17 ], !dbg !908
  %conv22 = trunc i32 %cond21 to i8, !dbg !908
  %16 = load ptr, ptr %op, align 8, !dbg !909
  %arrayidx23 = getelementptr i8, ptr %16, i64 1, !dbg !909
  store i8 %conv22, ptr %arrayidx23, align 1, !dbg !910
  %17 = load i32, ptr %fast.addr, align 4, !dbg !911
  %tobool24 = icmp ne i32 %17, 0, !dbg !911
  br i1 %tobool24, label %cond.true25, label %cond.false28, !dbg !911

cond.true25:                                      ; preds = %cond.end20
  %call26 = call zeroext i8 @FSE_decodeSymbolFast(ptr noundef %state1, ptr noundef %bitD) #10, !dbg !911
  %conv27 = zext i8 %call26 to i32, !dbg !911
  br label %cond.end31, !dbg !911

cond.false28:                                     ; preds = %cond.end20
  %call29 = call zeroext i8 @FSE_decodeSymbol(ptr noundef %state1, ptr noundef %bitD) #10, !dbg !911
  %conv30 = zext i8 %call29 to i32, !dbg !911
  br label %cond.end31, !dbg !911

cond.end31:                                       ; preds = %cond.false28, %cond.true25
  %cond32 = phi i32 [ %conv27, %cond.true25 ], [ %conv30, %cond.false28 ], !dbg !911
  %conv33 = trunc i32 %cond32 to i8, !dbg !911
  %18 = load ptr, ptr %op, align 8, !dbg !912
  %arrayidx34 = getelementptr i8, ptr %18, i64 2, !dbg !912
  store i8 %conv33, ptr %arrayidx34, align 1, !dbg !913
  %19 = load i32, ptr %fast.addr, align 4, !dbg !914
  %tobool35 = icmp ne i32 %19, 0, !dbg !914
  br i1 %tobool35, label %cond.true36, label %cond.false39, !dbg !914

cond.true36:                                      ; preds = %cond.end31
  %call37 = call zeroext i8 @FSE_decodeSymbolFast(ptr noundef %state2, ptr noundef %bitD) #10, !dbg !914
  %conv38 = zext i8 %call37 to i32, !dbg !914
  br label %cond.end42, !dbg !914

cond.false39:                                     ; preds = %cond.end31
  %call40 = call zeroext i8 @FSE_decodeSymbol(ptr noundef %state2, ptr noundef %bitD) #10, !dbg !914
  %conv41 = zext i8 %call40 to i32, !dbg !914
  br label %cond.end42, !dbg !914

cond.end42:                                       ; preds = %cond.false39, %cond.true36
  %cond43 = phi i32 [ %conv38, %cond.true36 ], [ %conv41, %cond.false39 ], !dbg !914
  %conv44 = trunc i32 %cond43 to i8, !dbg !914
  %20 = load ptr, ptr %op, align 8, !dbg !915
  %arrayidx45 = getelementptr i8, ptr %20, i64 3, !dbg !915
  store i8 %conv44, ptr %arrayidx45, align 1, !dbg !916
  br label %for.inc, !dbg !917

for.inc:                                          ; preds = %cond.end42
  %21 = load ptr, ptr %op, align 8, !dbg !918
  %add.ptr46 = getelementptr i8, ptr %21, i64 4, !dbg !918
  store ptr %add.ptr46, ptr %op, align 8, !dbg !918
  br label %for.cond, !dbg !919, !llvm.loop !920

for.end:                                          ; preds = %for.cond
  br label %while.cond, !dbg !922

while.cond:                                       ; preds = %if.end109, %for.end
  br label %while.body, !dbg !922

while.body:                                       ; preds = %while.cond
  %22 = load ptr, ptr %op, align 8, !dbg !923
  %23 = load ptr, ptr %omax, align 8, !dbg !926
  %add.ptr47 = getelementptr i8, ptr %23, i64 -2, !dbg !927
  %cmp48 = icmp ugt ptr %22, %add.ptr47, !dbg !928
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !929

if.then50:                                        ; preds = %while.body
  store i64 -70, ptr %retval, align 8, !dbg !930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup110, !dbg !930

if.end51:                                         ; preds = %while.body
  %24 = load i32, ptr %fast.addr, align 4, !dbg !931
  %tobool52 = icmp ne i32 %24, 0, !dbg !931
  br i1 %tobool52, label %cond.true53, label %cond.false56, !dbg !931

cond.true53:                                      ; preds = %if.end51
  %call54 = call zeroext i8 @FSE_decodeSymbolFast(ptr noundef %state1, ptr noundef %bitD) #10, !dbg !931
  %conv55 = zext i8 %call54 to i32, !dbg !931
  br label %cond.end59, !dbg !931

cond.false56:                                     ; preds = %if.end51
  %call57 = call zeroext i8 @FSE_decodeSymbol(ptr noundef %state1, ptr noundef %bitD) #10, !dbg !931
  %conv58 = zext i8 %call57 to i32, !dbg !931
  br label %cond.end59, !dbg !931

cond.end59:                                       ; preds = %cond.false56, %cond.true53
  %cond60 = phi i32 [ %conv55, %cond.true53 ], [ %conv58, %cond.false56 ], !dbg !931
  %conv61 = trunc i32 %cond60 to i8, !dbg !931
  %25 = load ptr, ptr %op, align 8, !dbg !932
  %incdec.ptr = getelementptr i8, ptr %25, i32 1, !dbg !932
  store ptr %incdec.ptr, ptr %op, align 8, !dbg !932
  store i8 %conv61, ptr %25, align 1, !dbg !933
  %call62 = call i32 @BIT_reloadDStream(ptr noundef %bitD) #10, !dbg !934
  %cmp63 = icmp eq i32 %call62, 3, !dbg !936
  br i1 %cmp63, label %if.then65, label %if.end77, !dbg !937

if.then65:                                        ; preds = %cond.end59
  %26 = load i32, ptr %fast.addr, align 4, !dbg !938
  %tobool66 = icmp ne i32 %26, 0, !dbg !938
  br i1 %tobool66, label %cond.true67, label %cond.false70, !dbg !938

cond.true67:                                      ; preds = %if.then65
  %call68 = call zeroext i8 @FSE_decodeSymbolFast(ptr noundef %state2, ptr noundef %bitD) #10, !dbg !938
  %conv69 = zext i8 %call68 to i32, !dbg !938
  br label %cond.end73, !dbg !938

cond.false70:                                     ; preds = %if.then65
  %call71 = call zeroext i8 @FSE_decodeSymbol(ptr noundef %state2, ptr noundef %bitD) #10, !dbg !938
  %conv72 = zext i8 %call71 to i32, !dbg !938
  br label %cond.end73, !dbg !938

cond.end73:                                       ; preds = %cond.false70, %cond.true67
  %cond74 = phi i32 [ %conv69, %cond.true67 ], [ %conv72, %cond.false70 ], !dbg !938
  %conv75 = trunc i32 %cond74 to i8, !dbg !938
  %27 = load ptr, ptr %op, align 8, !dbg !940
  %incdec.ptr76 = getelementptr i8, ptr %27, i32 1, !dbg !940
  store ptr %incdec.ptr76, ptr %op, align 8, !dbg !940
  store i8 %conv75, ptr %27, align 1, !dbg !941
  br label %while.end, !dbg !942

if.end77:                                         ; preds = %cond.end59
  %28 = load ptr, ptr %op, align 8, !dbg !943
  %29 = load ptr, ptr %omax, align 8, !dbg !945
  %add.ptr78 = getelementptr i8, ptr %29, i64 -2, !dbg !946
  %cmp79 = icmp ugt ptr %28, %add.ptr78, !dbg !947
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !948

if.then81:                                        ; preds = %if.end77
  store i64 -70, ptr %retval, align 8, !dbg !949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup110, !dbg !949

if.end82:                                         ; preds = %if.end77
  %30 = load i32, ptr %fast.addr, align 4, !dbg !950
  %tobool83 = icmp ne i32 %30, 0, !dbg !950
  br i1 %tobool83, label %cond.true84, label %cond.false87, !dbg !950

cond.true84:                                      ; preds = %if.end82
  %call85 = call zeroext i8 @FSE_decodeSymbolFast(ptr noundef %state2, ptr noundef %bitD) #10, !dbg !950
  %conv86 = zext i8 %call85 to i32, !dbg !950
  br label %cond.end90, !dbg !950

cond.false87:                                     ; preds = %if.end82
  %call88 = call zeroext i8 @FSE_decodeSymbol(ptr noundef %state2, ptr noundef %bitD) #10, !dbg !950
  %conv89 = zext i8 %call88 to i32, !dbg !950
  br label %cond.end90, !dbg !950

cond.end90:                                       ; preds = %cond.false87, %cond.true84
  %cond91 = phi i32 [ %conv86, %cond.true84 ], [ %conv89, %cond.false87 ], !dbg !950
  %conv92 = trunc i32 %cond91 to i8, !dbg !950
  %31 = load ptr, ptr %op, align 8, !dbg !951
  %incdec.ptr93 = getelementptr i8, ptr %31, i32 1, !dbg !951
  store ptr %incdec.ptr93, ptr %op, align 8, !dbg !951
  store i8 %conv92, ptr %31, align 1, !dbg !952
  %call94 = call i32 @BIT_reloadDStream(ptr noundef %bitD) #10, !dbg !953
  %cmp95 = icmp eq i32 %call94, 3, !dbg !955
  br i1 %cmp95, label %if.then97, label %if.end109, !dbg !956

if.then97:                                        ; preds = %cond.end90
  %32 = load i32, ptr %fast.addr, align 4, !dbg !957
  %tobool98 = icmp ne i32 %32, 0, !dbg !957
  br i1 %tobool98, label %cond.true99, label %cond.false102, !dbg !957

cond.true99:                                      ; preds = %if.then97
  %call100 = call zeroext i8 @FSE_decodeSymbolFast(ptr noundef %state1, ptr noundef %bitD) #10, !dbg !957
  %conv101 = zext i8 %call100 to i32, !dbg !957
  br label %cond.end105, !dbg !957

cond.false102:                                    ; preds = %if.then97
  %call103 = call zeroext i8 @FSE_decodeSymbol(ptr noundef %state1, ptr noundef %bitD) #10, !dbg !957
  %conv104 = zext i8 %call103 to i32, !dbg !957
  br label %cond.end105, !dbg !957

cond.end105:                                      ; preds = %cond.false102, %cond.true99
  %cond106 = phi i32 [ %conv101, %cond.true99 ], [ %conv104, %cond.false102 ], !dbg !957
  %conv107 = trunc i32 %cond106 to i8, !dbg !957
  %33 = load ptr, ptr %op, align 8, !dbg !959
  %incdec.ptr108 = getelementptr i8, ptr %33, i32 1, !dbg !959
  store ptr %incdec.ptr108, ptr %op, align 8, !dbg !959
  store i8 %conv107, ptr %33, align 1, !dbg !960
  br label %while.end, !dbg !961

if.end109:                                        ; preds = %cond.end90
  br label %while.cond, !dbg !922, !llvm.loop !962

while.end:                                        ; preds = %cond.end105, %cond.end73
  %34 = load ptr, ptr %op, align 8, !dbg !964
  %35 = load ptr, ptr %ostart, align 8, !dbg !965
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i64, !dbg !966
  %sub.ptr.rhs.cast = ptrtoint ptr %35 to i64, !dbg !966
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !966
  store i64 %sub.ptr.sub, ptr %retval, align 8, !dbg !967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup110, !dbg !967

cleanup110:                                       ; preds = %while.end, %if.then81, %if.then50, %cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr %state2) #11, !dbg !968
  call void @llvm.lifetime.end.p0(i64 16, ptr %state1) #11, !dbg !968
  call void @llvm.lifetime.end.p0(i64 40, ptr %bitD) #11, !dbg !968
  call void @llvm.lifetime.end.p0(i64 8, ptr %olimit) #11, !dbg !968
  call void @llvm.lifetime.end.p0(i64 8, ptr %omax) #11, !dbg !968
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #11, !dbg !968
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #11, !dbg !968
  %36 = load i64, ptr %retval, align 8, !dbg !968
  ret i64 %36, !dbg !968
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @FSE_decompress_wksp(ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %cSrc, i64 noundef %cSrcSize, i32 noundef %maxLog, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !969 {
entry:
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %maxLog.addr = alloca i32, align 4
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !973, metadata !DIExpression()), !dbg !980
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !974, metadata !DIExpression()), !dbg !981
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !975, metadata !DIExpression()), !dbg !982
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !976, metadata !DIExpression()), !dbg !983
  store i32 %maxLog, ptr %maxLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxLog.addr, metadata !977, metadata !DIExpression()), !dbg !984
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !978, metadata !DIExpression()), !dbg !985
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !979, metadata !DIExpression()), !dbg !986
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !987
  %1 = load i64, ptr %dstCapacity.addr, align 8, !dbg !988
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !989
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !990
  %4 = load i32, ptr %maxLog.addr, align 4, !dbg !991
  %5 = load ptr, ptr %workSpace.addr, align 8, !dbg !992
  %6 = load i64, ptr %wkspSize.addr, align 8, !dbg !993
  %call = call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef 0) #10, !dbg !994
  ret i64 %call, !dbg !995
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @FSE_decompress_wksp_bmi2(ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %cSrc, i64 noundef %cSrcSize, i32 noundef %maxLog, ptr noundef %workSpace, i64 noundef %wkspSize, i32 noundef %bmi2) #0 align 16 !dbg !996 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %maxLog.addr = alloca i32, align 4
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1000, metadata !DIExpression()), !dbg !1008
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1001, metadata !DIExpression()), !dbg !1009
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1002, metadata !DIExpression()), !dbg !1010
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1003, metadata !DIExpression()), !dbg !1011
  store i32 %maxLog, ptr %maxLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxLog.addr, metadata !1004, metadata !DIExpression()), !dbg !1012
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !1005, metadata !DIExpression()), !dbg !1013
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1006, metadata !DIExpression()), !dbg !1014
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !1007, metadata !DIExpression()), !dbg !1015
  %0 = load i32, ptr %bmi2.addr, align 4, !dbg !1016
  %tobool = icmp ne i32 %0, 0, !dbg !1016
  br i1 %tobool, label %if.then, label %if.end, !dbg !1018

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !1019
  %2 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1021
  %3 = load ptr, ptr %cSrc.addr, align 8, !dbg !1022
  %4 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1023
  %5 = load i32, ptr %maxLog.addr, align 4, !dbg !1024
  %6 = load ptr, ptr %workSpace.addr, align 8, !dbg !1025
  %7 = load i64, ptr %wkspSize.addr, align 8, !dbg !1026
  %call = call i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7) #10, !dbg !1027
  store i64 %call, ptr %retval, align 8, !dbg !1028
  br label %return, !dbg !1028

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %bmi2.addr, align 4, !dbg !1029
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !1030
  %10 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1031
  %11 = load ptr, ptr %cSrc.addr, align 8, !dbg !1032
  %12 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1033
  %13 = load i32, ptr %maxLog.addr, align 4, !dbg !1034
  %14 = load ptr, ptr %workSpace.addr, align 8, !dbg !1035
  %15 = load i64, ptr %wkspSize.addr, align 8, !dbg !1036
  %call1 = call i64 @FSE_decompress_wksp_body_default(ptr noundef %9, i64 noundef %10, ptr noundef %11, i64 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15) #10, !dbg !1037
  store i64 %call1, ptr %retval, align 8, !dbg !1038
  br label %return, !dbg !1038

return:                                           ; preds = %if.end, %if.then
  %16 = load i64, ptr %retval, align 8, !dbg !1039
  ret i64 %16, !dbg !1039
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @FSE_decompress_wksp_body_bmi2(ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %cSrc, i64 noundef %cSrcSize, i32 noundef %maxLog, ptr noundef %workSpace, i64 noundef %wkspSize) #4 align 16 !dbg !1040 {
entry:
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %maxLog.addr = alloca i32, align 4
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1042, metadata !DIExpression()), !dbg !1049
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1043, metadata !DIExpression()), !dbg !1050
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1044, metadata !DIExpression()), !dbg !1051
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1045, metadata !DIExpression()), !dbg !1052
  store i32 %maxLog, ptr %maxLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxLog.addr, metadata !1046, metadata !DIExpression()), !dbg !1053
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !1047, metadata !DIExpression()), !dbg !1054
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1048, metadata !DIExpression()), !dbg !1055
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1056
  %1 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1057
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !1058
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1059
  %4 = load i32, ptr %maxLog.addr, align 4, !dbg !1060
  %5 = load ptr, ptr %workSpace.addr, align 8, !dbg !1061
  %6 = load i64, ptr %wkspSize.addr, align 8, !dbg !1062
  %call = call i64 @FSE_decompress_wksp_body(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef 1) #10, !dbg !1063
  ret i64 %call, !dbg !1064
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @FSE_decompress_wksp_body_default(ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %cSrc, i64 noundef %cSrcSize, i32 noundef %maxLog, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !1065 {
entry:
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %maxLog.addr = alloca i32, align 4
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1067, metadata !DIExpression()), !dbg !1074
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1068, metadata !DIExpression()), !dbg !1075
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1069, metadata !DIExpression()), !dbg !1076
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1070, metadata !DIExpression()), !dbg !1077
  store i32 %maxLog, ptr %maxLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxLog.addr, metadata !1071, metadata !DIExpression()), !dbg !1078
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !1072, metadata !DIExpression()), !dbg !1079
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1073, metadata !DIExpression()), !dbg !1080
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1081
  %1 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1082
  %2 = load ptr, ptr %cSrc.addr, align 8, !dbg !1083
  %3 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1084
  %4 = load i32, ptr %maxLog.addr, align 4, !dbg !1085
  %5 = load ptr, ptr %workSpace.addr, align 8, !dbg !1086
  %6 = load i64, ptr %wkspSize.addr, align 8, !dbg !1087
  %call = call i64 @FSE_decompress_wksp_body(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef 0) #10, !dbg !1088
  ret i64 %call, !dbg !1089
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @MEM_write64(ptr noundef %memPtr, i64 noundef %value) #6 align 16 !dbg !90 {
entry:
  %memPtr.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %__pptr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !99, metadata !DIExpression()), !dbg !1090
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !100, metadata !DIExpression()), !dbg !1091
  br label %do.body, !dbg !1092

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #11, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !101, metadata !DIExpression()), !dbg !1093
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !1093
  store ptr %0, ptr %__pptr, align 8, !dbg !1093
  %1 = load i64, ptr %value.addr, align 8, !dbg !1093
  %2 = load ptr, ptr %__pptr, align 8, !dbg !1093
  %x = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0, !dbg !1093
  store i64 %1, ptr %x, align 1, !dbg !1093
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #11, !dbg !1092
  br label %do.end, !dbg !1093

do.end:                                           ; preds = %do.body
  ret void, !dbg !1094
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @BIT_highbit32(i32 noundef %val) #6 align 16 !dbg !1095 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1099, metadata !DIExpression()), !dbg !1100
  %0 = load i32, ptr %val.addr, align 4, !dbg !1101
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !dbg !1103
  %xor = xor i32 %1, 31, !dbg !1104
  ret i32 %xor, !dbg !1105
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_initDStream(ptr noundef %bitD, ptr noundef %srcBuffer, i64 noundef %srcSize) #6 align 16 !dbg !1106 {
entry:
  %retval = alloca i64, align 8
  %bitD.addr = alloca ptr, align 8
  %srcBuffer.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %lastByte = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %lastByte53 = alloca i8, align 1
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !1111, metadata !DIExpression()), !dbg !1121
  store ptr %srcBuffer, ptr %srcBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcBuffer.addr, metadata !1112, metadata !DIExpression()), !dbg !1122
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1113, metadata !DIExpression()), !dbg !1123
  %0 = load i64, ptr %srcSize.addr, align 8, !dbg !1124
  %cmp = icmp ult i64 %0, 1, !dbg !1126
  br i1 %cmp, label %if.then, label %if.end, !dbg !1127

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bitD.addr, align 8, !dbg !1128
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 40, i1 false), !dbg !1128
  store i64 -72, ptr %retval, align 8, !dbg !1130
  br label %return, !dbg !1130

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !1131
  %3 = load ptr, ptr %bitD.addr, align 8, !dbg !1132
  %start = getelementptr inbounds %struct.BIT_DStream_t, ptr %3, i32 0, i32 3, !dbg !1133
  store ptr %2, ptr %start, align 8, !dbg !1134
  %4 = load ptr, ptr %bitD.addr, align 8, !dbg !1135
  %start1 = getelementptr inbounds %struct.BIT_DStream_t, ptr %4, i32 0, i32 3, !dbg !1136
  %5 = load ptr, ptr %start1, align 8, !dbg !1136
  %add.ptr = getelementptr i8, ptr %5, i64 8, !dbg !1137
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !1138
  %limitPtr = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 4, !dbg !1139
  store ptr %add.ptr, ptr %limitPtr, align 8, !dbg !1140
  %7 = load i64, ptr %srcSize.addr, align 8, !dbg !1141
  %cmp2 = icmp uge i64 %7, 8, !dbg !1142
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !1143

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !1144
  %9 = load i64, ptr %srcSize.addr, align 8, !dbg !1145
  %add.ptr4 = getelementptr i8, ptr %8, i64 %9, !dbg !1146
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i64 -8, !dbg !1147
  %10 = load ptr, ptr %bitD.addr, align 8, !dbg !1148
  %ptr = getelementptr inbounds %struct.BIT_DStream_t, ptr %10, i32 0, i32 2, !dbg !1149
  store ptr %add.ptr5, ptr %ptr, align 8, !dbg !1150
  %11 = load ptr, ptr %bitD.addr, align 8, !dbg !1151
  %ptr6 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i32 0, i32 2, !dbg !1152
  %12 = load ptr, ptr %ptr6, align 8, !dbg !1152
  %call = call i64 @MEM_readLEST(ptr noundef %12) #10, !dbg !1153
  %13 = load ptr, ptr %bitD.addr, align 8, !dbg !1154
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %13, i32 0, i32 0, !dbg !1155
  store i64 %call, ptr %bitContainer, align 8, !dbg !1156
  call void @llvm.lifetime.start.p0(i64 1, ptr %lastByte) #11, !dbg !1157
  call void @llvm.dbg.declare(metadata ptr %lastByte, metadata !1114, metadata !DIExpression()), !dbg !1158
  %14 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !1159
  %15 = load i64, ptr %srcSize.addr, align 8, !dbg !1160
  %sub = sub i64 %15, 1, !dbg !1161
  %arrayidx = getelementptr i8, ptr %14, i64 %sub, !dbg !1162
  %16 = load i8, ptr %arrayidx, align 1, !dbg !1162
  store i8 %16, ptr %lastByte, align 1, !dbg !1158
  %17 = load i8, ptr %lastByte, align 1, !dbg !1163
  %conv = zext i8 %17 to i32, !dbg !1163
  %tobool = icmp ne i32 %conv, 0, !dbg !1163
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1163

cond.true:                                        ; preds = %if.then3
  %18 = load i8, ptr %lastByte, align 1, !dbg !1164
  %conv7 = zext i8 %18 to i32, !dbg !1164
  %call8 = call i32 @BIT_highbit32(i32 noundef %conv7) #10, !dbg !1165
  %sub9 = sub i32 8, %call8, !dbg !1166
  br label %cond.end, !dbg !1163

cond.false:                                       ; preds = %if.then3
  br label %cond.end, !dbg !1163

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub9, %cond.true ], [ 0, %cond.false ], !dbg !1163
  %19 = load ptr, ptr %bitD.addr, align 8, !dbg !1167
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %19, i32 0, i32 1, !dbg !1168
  store i32 %cond, ptr %bitsConsumed, align 8, !dbg !1169
  %20 = load i8, ptr %lastByte, align 1, !dbg !1170
  %conv10 = zext i8 %20 to i32, !dbg !1170
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !1172
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !1173

if.then13:                                        ; preds = %cond.end
  store i64 -1, ptr %retval, align 8, !dbg !1174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1174

if.end14:                                         ; preds = %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1175
  br label %cleanup, !dbg !1175

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 1, ptr %lastByte) #11, !dbg !1175
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end78, !dbg !1176

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %bitD.addr, align 8, !dbg !1177
  %start15 = getelementptr inbounds %struct.BIT_DStream_t, ptr %21, i32 0, i32 3, !dbg !1178
  %22 = load ptr, ptr %start15, align 8, !dbg !1178
  %23 = load ptr, ptr %bitD.addr, align 8, !dbg !1179
  %ptr16 = getelementptr inbounds %struct.BIT_DStream_t, ptr %23, i32 0, i32 2, !dbg !1180
  store ptr %22, ptr %ptr16, align 8, !dbg !1181
  %24 = load ptr, ptr %bitD.addr, align 8, !dbg !1182
  %start17 = getelementptr inbounds %struct.BIT_DStream_t, ptr %24, i32 0, i32 3, !dbg !1183
  %25 = load ptr, ptr %start17, align 8, !dbg !1183
  %26 = load i8, ptr %25, align 1, !dbg !1184
  %conv18 = zext i8 %26 to i64, !dbg !1184
  %27 = load ptr, ptr %bitD.addr, align 8, !dbg !1185
  %bitContainer19 = getelementptr inbounds %struct.BIT_DStream_t, ptr %27, i32 0, i32 0, !dbg !1186
  store i64 %conv18, ptr %bitContainer19, align 8, !dbg !1187
  %28 = load i64, ptr %srcSize.addr, align 8, !dbg !1188
  switch i64 %28, label %sw.default [
    i64 7, label %sw.bb
    i64 6, label %sw.bb23
    i64 5, label %sw.bb29
    i64 4, label %sw.bb35
    i64 3, label %sw.bb41
    i64 2, label %sw.bb47
  ], !dbg !1189

sw.bb:                                            ; preds = %if.else
  %29 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !1190
  %arrayidx20 = getelementptr i8, ptr %29, i64 6, !dbg !1192
  %30 = load i8, ptr %arrayidx20, align 1, !dbg !1192
  %conv21 = zext i8 %30 to i64, !dbg !1193
  %shl = shl i64 %conv21, 48, !dbg !1194
  %31 = load ptr, ptr %bitD.addr, align 8, !dbg !1195
  %bitContainer22 = getelementptr inbounds %struct.BIT_DStream_t, ptr %31, i32 0, i32 0, !dbg !1196
  %32 = load i64, ptr %bitContainer22, align 8, !dbg !1197
  %add = add i64 %32, %shl, !dbg !1197
  store i64 %add, ptr %bitContainer22, align 8, !dbg !1197
  br label %sw.bb23, !dbg !1195

sw.bb23:                                          ; preds = %if.else, %sw.bb
  %33 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !1198
  %arrayidx24 = getelementptr i8, ptr %33, i64 5, !dbg !1199
  %34 = load i8, ptr %arrayidx24, align 1, !dbg !1199
  %conv25 = zext i8 %34 to i64, !dbg !1200
  %shl26 = shl i64 %conv25, 40, !dbg !1201
  %35 = load ptr, ptr %bitD.addr, align 8, !dbg !1202
  %bitContainer27 = getelementptr inbounds %struct.BIT_DStream_t, ptr %35, i32 0, i32 0, !dbg !1203
  %36 = load i64, ptr %bitContainer27, align 8, !dbg !1204
  %add28 = add i64 %36, %shl26, !dbg !1204
  store i64 %add28, ptr %bitContainer27, align 8, !dbg !1204
  br label %sw.bb29, !dbg !1202

sw.bb29:                                          ; preds = %if.else, %sw.bb23
  %37 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !1205
  %arrayidx30 = getelementptr i8, ptr %37, i64 4, !dbg !1206
  %38 = load i8, ptr %arrayidx30, align 1, !dbg !1206
  %conv31 = zext i8 %38 to i64, !dbg !1207
  %shl32 = shl i64 %conv31, 32, !dbg !1208
  %39 = load ptr, ptr %bitD.addr, align 8, !dbg !1209
  %bitContainer33 = getelementptr inbounds %struct.BIT_DStream_t, ptr %39, i32 0, i32 0, !dbg !1210
  %40 = load i64, ptr %bitContainer33, align 8, !dbg !1211
  %add34 = add i64 %40, %shl32, !dbg !1211
  store i64 %add34, ptr %bitContainer33, align 8, !dbg !1211
  br label %sw.bb35, !dbg !1209

sw.bb35:                                          ; preds = %if.else, %sw.bb29
  %41 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !1212
  %arrayidx36 = getelementptr i8, ptr %41, i64 3, !dbg !1213
  %42 = load i8, ptr %arrayidx36, align 1, !dbg !1213
  %conv37 = zext i8 %42 to i64, !dbg !1214
  %shl38 = shl i64 %conv37, 24, !dbg !1215
  %43 = load ptr, ptr %bitD.addr, align 8, !dbg !1216
  %bitContainer39 = getelementptr inbounds %struct.BIT_DStream_t, ptr %43, i32 0, i32 0, !dbg !1217
  %44 = load i64, ptr %bitContainer39, align 8, !dbg !1218
  %add40 = add i64 %44, %shl38, !dbg !1218
  store i64 %add40, ptr %bitContainer39, align 8, !dbg !1218
  br label %sw.bb41, !dbg !1216

sw.bb41:                                          ; preds = %if.else, %sw.bb35
  %45 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !1219
  %arrayidx42 = getelementptr i8, ptr %45, i64 2, !dbg !1220
  %46 = load i8, ptr %arrayidx42, align 1, !dbg !1220
  %conv43 = zext i8 %46 to i64, !dbg !1221
  %shl44 = shl i64 %conv43, 16, !dbg !1222
  %47 = load ptr, ptr %bitD.addr, align 8, !dbg !1223
  %bitContainer45 = getelementptr inbounds %struct.BIT_DStream_t, ptr %47, i32 0, i32 0, !dbg !1224
  %48 = load i64, ptr %bitContainer45, align 8, !dbg !1225
  %add46 = add i64 %48, %shl44, !dbg !1225
  store i64 %add46, ptr %bitContainer45, align 8, !dbg !1225
  br label %sw.bb47, !dbg !1223

sw.bb47:                                          ; preds = %if.else, %sw.bb41
  %49 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !1226
  %arrayidx48 = getelementptr i8, ptr %49, i64 1, !dbg !1227
  %50 = load i8, ptr %arrayidx48, align 1, !dbg !1227
  %conv49 = zext i8 %50 to i64, !dbg !1228
  %shl50 = shl i64 %conv49, 8, !dbg !1229
  %51 = load ptr, ptr %bitD.addr, align 8, !dbg !1230
  %bitContainer51 = getelementptr inbounds %struct.BIT_DStream_t, ptr %51, i32 0, i32 0, !dbg !1231
  %52 = load i64, ptr %bitContainer51, align 8, !dbg !1232
  %add52 = add i64 %52, %shl50, !dbg !1232
  store i64 %add52, ptr %bitContainer51, align 8, !dbg !1232
  br label %sw.default, !dbg !1230

sw.default:                                       ; preds = %if.else, %sw.bb47
  br label %sw.epilog, !dbg !1233

sw.epilog:                                        ; preds = %sw.default
  call void @llvm.lifetime.start.p0(i64 1, ptr %lastByte53) #11, !dbg !1234
  call void @llvm.dbg.declare(metadata ptr %lastByte53, metadata !1118, metadata !DIExpression()), !dbg !1235
  %53 = load ptr, ptr %srcBuffer.addr, align 8, !dbg !1236
  %54 = load i64, ptr %srcSize.addr, align 8, !dbg !1237
  %sub54 = sub i64 %54, 1, !dbg !1238
  %arrayidx55 = getelementptr i8, ptr %53, i64 %sub54, !dbg !1239
  %55 = load i8, ptr %arrayidx55, align 1, !dbg !1239
  store i8 %55, ptr %lastByte53, align 1, !dbg !1235
  %56 = load i8, ptr %lastByte53, align 1, !dbg !1240
  %conv56 = zext i8 %56 to i32, !dbg !1240
  %tobool57 = icmp ne i32 %conv56, 0, !dbg !1240
  br i1 %tobool57, label %cond.true58, label %cond.false62, !dbg !1240

cond.true58:                                      ; preds = %sw.epilog
  %57 = load i8, ptr %lastByte53, align 1, !dbg !1241
  %conv59 = zext i8 %57 to i32, !dbg !1241
  %call60 = call i32 @BIT_highbit32(i32 noundef %conv59) #10, !dbg !1242
  %sub61 = sub i32 8, %call60, !dbg !1243
  br label %cond.end63, !dbg !1240

cond.false62:                                     ; preds = %sw.epilog
  br label %cond.end63, !dbg !1240

cond.end63:                                       ; preds = %cond.false62, %cond.true58
  %cond64 = phi i32 [ %sub61, %cond.true58 ], [ 0, %cond.false62 ], !dbg !1240
  %58 = load ptr, ptr %bitD.addr, align 8, !dbg !1244
  %bitsConsumed65 = getelementptr inbounds %struct.BIT_DStream_t, ptr %58, i32 0, i32 1, !dbg !1245
  store i32 %cond64, ptr %bitsConsumed65, align 8, !dbg !1246
  %59 = load i8, ptr %lastByte53, align 1, !dbg !1247
  %conv66 = zext i8 %59 to i32, !dbg !1247
  %cmp67 = icmp eq i32 %conv66, 0, !dbg !1249
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !1250

if.then69:                                        ; preds = %cond.end63
  store i64 -20, ptr %retval, align 8, !dbg !1251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !1251

if.end70:                                         ; preds = %cond.end63
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1252
  br label %cleanup71, !dbg !1252

cleanup71:                                        ; preds = %if.end70, %if.then69
  call void @llvm.lifetime.end.p0(i64 1, ptr %lastByte53) #11, !dbg !1252
  %cleanup.dest72 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest72, label %unreachable [
    i32 0, label %cleanup.cont73
    i32 1, label %return
  ]

cleanup.cont73:                                   ; preds = %cleanup71
  %60 = load i64, ptr %srcSize.addr, align 8, !dbg !1253
  %sub74 = sub i64 8, %60, !dbg !1254
  %conv75 = trunc i64 %sub74 to i32, !dbg !1255
  %mul = mul i32 %conv75, 8, !dbg !1256
  %61 = load ptr, ptr %bitD.addr, align 8, !dbg !1257
  %bitsConsumed76 = getelementptr inbounds %struct.BIT_DStream_t, ptr %61, i32 0, i32 1, !dbg !1258
  %62 = load i32, ptr %bitsConsumed76, align 8, !dbg !1259
  %add77 = add i32 %62, %mul, !dbg !1259
  store i32 %add77, ptr %bitsConsumed76, align 8, !dbg !1259
  br label %if.end78

if.end78:                                         ; preds = %cleanup.cont73, %cleanup.cont
  %63 = load i64, ptr %srcSize.addr, align 8, !dbg !1260
  store i64 %63, ptr %retval, align 8, !dbg !1261
  br label %return, !dbg !1261

return:                                           ; preds = %if.end78, %cleanup71, %cleanup, %if.then
  %64 = load i64, ptr %retval, align 8, !dbg !1262
  ret i64 %64, !dbg !1262

unreachable:                                      ; preds = %cleanup71, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ERR_isError(i64 noundef %code) #0 align 16 !dbg !1263 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !1268, metadata !DIExpression()), !dbg !1269
  %0 = load i64, ptr %code.addr, align 8, !dbg !1270
  %cmp = icmp ugt i64 %0, -120, !dbg !1271
  %conv = zext i1 %cmp to i32, !dbg !1271
  ret i32 %conv, !dbg !1272
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @FSE_initDState(ptr noundef %DStatePtr, ptr noundef %bitD, ptr noundef %dt) #6 align 16 !dbg !1273 {
entry:
  %DStatePtr.addr = alloca ptr, align 8
  %bitD.addr = alloca ptr, align 8
  %dt.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %DTableH = alloca ptr, align 8
  store ptr %DStatePtr, ptr %DStatePtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DStatePtr.addr, metadata !1278, metadata !DIExpression()), !dbg !1284
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !1279, metadata !DIExpression()), !dbg !1285
  store ptr %dt, ptr %dt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dt.addr, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #11, !dbg !1287
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !1281, metadata !DIExpression()), !dbg !1288
  %0 = load ptr, ptr %dt.addr, align 8, !dbg !1289
  store ptr %0, ptr %ptr, align 8, !dbg !1288
  call void @llvm.lifetime.start.p0(i64 8, ptr %DTableH) #11, !dbg !1290
  call void @llvm.dbg.declare(metadata ptr %DTableH, metadata !1282, metadata !DIExpression()), !dbg !1291
  %1 = load ptr, ptr %ptr, align 8, !dbg !1292
  store ptr %1, ptr %DTableH, align 8, !dbg !1291
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !1293
  %3 = load ptr, ptr %DTableH, align 8, !dbg !1294
  %tableLog = getelementptr inbounds %struct.FSE_DTableHeader, ptr %3, i32 0, i32 0, !dbg !1295
  %4 = load i16, ptr %tableLog, align 2, !dbg !1295
  %conv = zext i16 %4 to i32, !dbg !1294
  %call = call i64 @BIT_readBits(ptr noundef %2, i32 noundef %conv) #10, !dbg !1296
  %5 = load ptr, ptr %DStatePtr.addr, align 8, !dbg !1297
  %state = getelementptr inbounds %struct.FSE_DState_t, ptr %5, i32 0, i32 0, !dbg !1298
  store i64 %call, ptr %state, align 8, !dbg !1299
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !1300
  %call1 = call i32 @BIT_reloadDStream(ptr noundef %6) #10, !dbg !1301
  %7 = load ptr, ptr %dt.addr, align 8, !dbg !1302
  %add.ptr = getelementptr i32, ptr %7, i64 1, !dbg !1303
  %8 = load ptr, ptr %DStatePtr.addr, align 8, !dbg !1304
  %table = getelementptr inbounds %struct.FSE_DState_t, ptr %8, i32 0, i32 1, !dbg !1305
  store ptr %add.ptr, ptr %table, align 8, !dbg !1306
  call void @llvm.lifetime.end.p0(i64 8, ptr %DTableH) #11, !dbg !1307
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #11, !dbg !1307
  ret void, !dbg !1307
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @BIT_reloadDStream(ptr noundef %bitD) #6 align 16 !dbg !1308 {
entry:
  %retval = alloca i32, align 4
  %bitD.addr = alloca ptr, align 8
  %nbBytes = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !1313, metadata !DIExpression()), !dbg !1317
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !1318
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 1, !dbg !1320
  %1 = load i32, ptr %bitsConsumed, align 8, !dbg !1320
  %conv = zext i32 %1 to i64, !dbg !1318
  %cmp = icmp ugt i64 %conv, 64, !dbg !1321
  br i1 %cmp, label %if.then, label %if.end, !dbg !1322

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !1323
  br label %return, !dbg !1323

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !1324
  %ptr = getelementptr inbounds %struct.BIT_DStream_t, ptr %2, i32 0, i32 2, !dbg !1326
  %3 = load ptr, ptr %ptr, align 8, !dbg !1326
  %4 = load ptr, ptr %bitD.addr, align 8, !dbg !1327
  %limitPtr = getelementptr inbounds %struct.BIT_DStream_t, ptr %4, i32 0, i32 4, !dbg !1328
  %5 = load ptr, ptr %limitPtr, align 8, !dbg !1328
  %cmp2 = icmp uge ptr %3, %5, !dbg !1329
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1330

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !1331
  %call = call i32 @BIT_reloadDStreamFast(ptr noundef %6) #10, !dbg !1333
  store i32 %call, ptr %retval, align 4, !dbg !1334
  br label %return, !dbg !1334

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %bitD.addr, align 8, !dbg !1335
  %ptr6 = getelementptr inbounds %struct.BIT_DStream_t, ptr %7, i32 0, i32 2, !dbg !1337
  %8 = load ptr, ptr %ptr6, align 8, !dbg !1337
  %9 = load ptr, ptr %bitD.addr, align 8, !dbg !1338
  %start = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 3, !dbg !1339
  %10 = load ptr, ptr %start, align 8, !dbg !1339
  %cmp7 = icmp eq ptr %8, %10, !dbg !1340
  br i1 %cmp7, label %if.then9, label %if.end16, !dbg !1341

if.then9:                                         ; preds = %if.end5
  %11 = load ptr, ptr %bitD.addr, align 8, !dbg !1342
  %bitsConsumed10 = getelementptr inbounds %struct.BIT_DStream_t, ptr %11, i32 0, i32 1, !dbg !1345
  %12 = load i32, ptr %bitsConsumed10, align 8, !dbg !1345
  %conv11 = zext i32 %12 to i64, !dbg !1342
  %cmp12 = icmp ult i64 %conv11, 64, !dbg !1346
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1347

if.then14:                                        ; preds = %if.then9
  store i32 1, ptr %retval, align 4, !dbg !1348
  br label %return, !dbg !1348

if.end15:                                         ; preds = %if.then9
  store i32 2, ptr %retval, align 4, !dbg !1349
  br label %return, !dbg !1349

if.end16:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbBytes) #11, !dbg !1350
  call void @llvm.dbg.declare(metadata ptr %nbBytes, metadata !1314, metadata !DIExpression()), !dbg !1351
  %13 = load ptr, ptr %bitD.addr, align 8, !dbg !1352
  %bitsConsumed17 = getelementptr inbounds %struct.BIT_DStream_t, ptr %13, i32 0, i32 1, !dbg !1353
  %14 = load i32, ptr %bitsConsumed17, align 8, !dbg !1353
  %shr = lshr i32 %14, 3, !dbg !1354
  store i32 %shr, ptr %nbBytes, align 4, !dbg !1351
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !1355
  call void @llvm.dbg.declare(metadata ptr %result, metadata !1316, metadata !DIExpression()), !dbg !1356
  store i32 0, ptr %result, align 4, !dbg !1356
  %15 = load ptr, ptr %bitD.addr, align 8, !dbg !1357
  %ptr18 = getelementptr inbounds %struct.BIT_DStream_t, ptr %15, i32 0, i32 2, !dbg !1359
  %16 = load ptr, ptr %ptr18, align 8, !dbg !1359
  %17 = load i32, ptr %nbBytes, align 4, !dbg !1360
  %idx.ext = zext i32 %17 to i64, !dbg !1361
  %idx.neg = sub i64 0, %idx.ext, !dbg !1361
  %add.ptr = getelementptr i8, ptr %16, i64 %idx.neg, !dbg !1361
  %18 = load ptr, ptr %bitD.addr, align 8, !dbg !1362
  %start19 = getelementptr inbounds %struct.BIT_DStream_t, ptr %18, i32 0, i32 3, !dbg !1363
  %19 = load ptr, ptr %start19, align 8, !dbg !1363
  %cmp20 = icmp ult ptr %add.ptr, %19, !dbg !1364
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !1365

if.then22:                                        ; preds = %if.end16
  %20 = load ptr, ptr %bitD.addr, align 8, !dbg !1366
  %ptr23 = getelementptr inbounds %struct.BIT_DStream_t, ptr %20, i32 0, i32 2, !dbg !1368
  %21 = load ptr, ptr %ptr23, align 8, !dbg !1368
  %22 = load ptr, ptr %bitD.addr, align 8, !dbg !1369
  %start24 = getelementptr inbounds %struct.BIT_DStream_t, ptr %22, i32 0, i32 3, !dbg !1370
  %23 = load ptr, ptr %start24, align 8, !dbg !1370
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i64, !dbg !1371
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i64, !dbg !1371
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1371
  %conv25 = trunc i64 %sub.ptr.sub to i32, !dbg !1372
  store i32 %conv25, ptr %nbBytes, align 4, !dbg !1373
  store i32 1, ptr %result, align 4, !dbg !1374
  br label %if.end26, !dbg !1375

if.end26:                                         ; preds = %if.then22, %if.end16
  %24 = load i32, ptr %nbBytes, align 4, !dbg !1376
  %25 = load ptr, ptr %bitD.addr, align 8, !dbg !1377
  %ptr27 = getelementptr inbounds %struct.BIT_DStream_t, ptr %25, i32 0, i32 2, !dbg !1378
  %26 = load ptr, ptr %ptr27, align 8, !dbg !1379
  %idx.ext28 = zext i32 %24 to i64, !dbg !1379
  %idx.neg29 = sub i64 0, %idx.ext28, !dbg !1379
  %add.ptr30 = getelementptr i8, ptr %26, i64 %idx.neg29, !dbg !1379
  store ptr %add.ptr30, ptr %ptr27, align 8, !dbg !1379
  %27 = load i32, ptr %nbBytes, align 4, !dbg !1380
  %mul = mul i32 %27, 8, !dbg !1381
  %28 = load ptr, ptr %bitD.addr, align 8, !dbg !1382
  %bitsConsumed31 = getelementptr inbounds %struct.BIT_DStream_t, ptr %28, i32 0, i32 1, !dbg !1383
  %29 = load i32, ptr %bitsConsumed31, align 8, !dbg !1384
  %sub = sub i32 %29, %mul, !dbg !1384
  store i32 %sub, ptr %bitsConsumed31, align 8, !dbg !1384
  %30 = load ptr, ptr %bitD.addr, align 8, !dbg !1385
  %ptr32 = getelementptr inbounds %struct.BIT_DStream_t, ptr %30, i32 0, i32 2, !dbg !1386
  %31 = load ptr, ptr %ptr32, align 8, !dbg !1386
  %call33 = call i64 @MEM_readLEST(ptr noundef %31) #10, !dbg !1387
  %32 = load ptr, ptr %bitD.addr, align 8, !dbg !1388
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %32, i32 0, i32 0, !dbg !1389
  store i64 %call33, ptr %bitContainer, align 8, !dbg !1390
  %33 = load i32, ptr %result, align 4, !dbg !1391
  store i32 %33, ptr %retval, align 4, !dbg !1392
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbBytes) #11, !dbg !1393
  br label %return

return:                                           ; preds = %if.end26, %if.end15, %if.then14, %if.then4, %if.then
  %34 = load i32, ptr %retval, align 4, !dbg !1394
  ret i32 %34, !dbg !1394
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @FSE_decodeSymbolFast(ptr noundef %DStatePtr, ptr noundef %bitD) #6 align 16 !dbg !1395 {
entry:
  %DStatePtr.addr = alloca ptr, align 8
  %bitD.addr = alloca ptr, align 8
  %DInfo = alloca %struct.FSE_decode_t, align 2
  %nbBits = alloca i32, align 4
  %symbol = alloca i8, align 1
  %lowBits = alloca i64, align 8
  store ptr %DStatePtr, ptr %DStatePtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DStatePtr.addr, metadata !1399, metadata !DIExpression()), !dbg !1405
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !1400, metadata !DIExpression()), !dbg !1406
  call void @llvm.lifetime.start.p0(i64 4, ptr %DInfo) #11, !dbg !1407
  call void @llvm.dbg.declare(metadata ptr %DInfo, metadata !1401, metadata !DIExpression()), !dbg !1408
  %0 = load ptr, ptr %DStatePtr.addr, align 8, !dbg !1409
  %table = getelementptr inbounds %struct.FSE_DState_t, ptr %0, i32 0, i32 1, !dbg !1410
  %1 = load ptr, ptr %table, align 8, !dbg !1410
  %2 = load ptr, ptr %DStatePtr.addr, align 8, !dbg !1411
  %state = getelementptr inbounds %struct.FSE_DState_t, ptr %2, i32 0, i32 0, !dbg !1412
  %3 = load i64, ptr %state, align 8, !dbg !1412
  %arrayidx = getelementptr %struct.FSE_decode_t, ptr %1, i64 %3, !dbg !1413
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %DInfo, ptr align 2 %arrayidx, i64 4, i1 false), !dbg !1413
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbBits) #11, !dbg !1414
  call void @llvm.dbg.declare(metadata ptr %nbBits, metadata !1402, metadata !DIExpression()), !dbg !1415
  %nbBits1 = getelementptr inbounds %struct.FSE_decode_t, ptr %DInfo, i32 0, i32 2, !dbg !1416
  %4 = load i8, ptr %nbBits1, align 1, !dbg !1416
  %conv = zext i8 %4 to i32, !dbg !1417
  store i32 %conv, ptr %nbBits, align 4, !dbg !1415
  call void @llvm.lifetime.start.p0(i64 1, ptr %symbol) #11, !dbg !1418
  call void @llvm.dbg.declare(metadata ptr %symbol, metadata !1403, metadata !DIExpression()), !dbg !1419
  %symbol2 = getelementptr inbounds %struct.FSE_decode_t, ptr %DInfo, i32 0, i32 1, !dbg !1420
  %5 = load i8, ptr %symbol2, align 2, !dbg !1420
  store i8 %5, ptr %symbol, align 1, !dbg !1419
  call void @llvm.lifetime.start.p0(i64 8, ptr %lowBits) #11, !dbg !1421
  call void @llvm.dbg.declare(metadata ptr %lowBits, metadata !1404, metadata !DIExpression()), !dbg !1422
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !1423
  %7 = load i32, ptr %nbBits, align 4, !dbg !1424
  %call = call i64 @BIT_readBitsFast(ptr noundef %6, i32 noundef %7) #10, !dbg !1425
  store i64 %call, ptr %lowBits, align 8, !dbg !1422
  %newState = getelementptr inbounds %struct.FSE_decode_t, ptr %DInfo, i32 0, i32 0, !dbg !1426
  %8 = load i16, ptr %newState, align 2, !dbg !1426
  %conv3 = zext i16 %8 to i64, !dbg !1427
  %9 = load i64, ptr %lowBits, align 8, !dbg !1428
  %add = add i64 %conv3, %9, !dbg !1429
  %10 = load ptr, ptr %DStatePtr.addr, align 8, !dbg !1430
  %state4 = getelementptr inbounds %struct.FSE_DState_t, ptr %10, i32 0, i32 0, !dbg !1431
  store i64 %add, ptr %state4, align 8, !dbg !1432
  %11 = load i8, ptr %symbol, align 1, !dbg !1433
  call void @llvm.lifetime.end.p0(i64 8, ptr %lowBits) #11, !dbg !1434
  call void @llvm.lifetime.end.p0(i64 1, ptr %symbol) #11, !dbg !1434
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbBits) #11, !dbg !1434
  call void @llvm.lifetime.end.p0(i64 4, ptr %DInfo) #11, !dbg !1434
  ret i8 %11, !dbg !1435
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @FSE_decodeSymbol(ptr noundef %DStatePtr, ptr noundef %bitD) #6 align 16 !dbg !1436 {
entry:
  %DStatePtr.addr = alloca ptr, align 8
  %bitD.addr = alloca ptr, align 8
  %DInfo = alloca %struct.FSE_decode_t, align 2
  %nbBits = alloca i32, align 4
  %symbol = alloca i8, align 1
  %lowBits = alloca i64, align 8
  store ptr %DStatePtr, ptr %DStatePtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %DStatePtr.addr, metadata !1438, metadata !DIExpression()), !dbg !1444
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !1439, metadata !DIExpression()), !dbg !1445
  call void @llvm.lifetime.start.p0(i64 4, ptr %DInfo) #11, !dbg !1446
  call void @llvm.dbg.declare(metadata ptr %DInfo, metadata !1440, metadata !DIExpression()), !dbg !1447
  %0 = load ptr, ptr %DStatePtr.addr, align 8, !dbg !1448
  %table = getelementptr inbounds %struct.FSE_DState_t, ptr %0, i32 0, i32 1, !dbg !1449
  %1 = load ptr, ptr %table, align 8, !dbg !1449
  %2 = load ptr, ptr %DStatePtr.addr, align 8, !dbg !1450
  %state = getelementptr inbounds %struct.FSE_DState_t, ptr %2, i32 0, i32 0, !dbg !1451
  %3 = load i64, ptr %state, align 8, !dbg !1451
  %arrayidx = getelementptr %struct.FSE_decode_t, ptr %1, i64 %3, !dbg !1452
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %DInfo, ptr align 2 %arrayidx, i64 4, i1 false), !dbg !1452
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbBits) #11, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %nbBits, metadata !1441, metadata !DIExpression()), !dbg !1454
  %nbBits1 = getelementptr inbounds %struct.FSE_decode_t, ptr %DInfo, i32 0, i32 2, !dbg !1455
  %4 = load i8, ptr %nbBits1, align 1, !dbg !1455
  %conv = zext i8 %4 to i32, !dbg !1456
  store i32 %conv, ptr %nbBits, align 4, !dbg !1454
  call void @llvm.lifetime.start.p0(i64 1, ptr %symbol) #11, !dbg !1457
  call void @llvm.dbg.declare(metadata ptr %symbol, metadata !1442, metadata !DIExpression()), !dbg !1458
  %symbol2 = getelementptr inbounds %struct.FSE_decode_t, ptr %DInfo, i32 0, i32 1, !dbg !1459
  %5 = load i8, ptr %symbol2, align 2, !dbg !1459
  store i8 %5, ptr %symbol, align 1, !dbg !1458
  call void @llvm.lifetime.start.p0(i64 8, ptr %lowBits) #11, !dbg !1460
  call void @llvm.dbg.declare(metadata ptr %lowBits, metadata !1443, metadata !DIExpression()), !dbg !1461
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !1462
  %7 = load i32, ptr %nbBits, align 4, !dbg !1463
  %call = call i64 @BIT_readBits(ptr noundef %6, i32 noundef %7) #10, !dbg !1464
  store i64 %call, ptr %lowBits, align 8, !dbg !1461
  %newState = getelementptr inbounds %struct.FSE_decode_t, ptr %DInfo, i32 0, i32 0, !dbg !1465
  %8 = load i16, ptr %newState, align 2, !dbg !1465
  %conv3 = zext i16 %8 to i64, !dbg !1466
  %9 = load i64, ptr %lowBits, align 8, !dbg !1467
  %add = add i64 %conv3, %9, !dbg !1468
  %10 = load ptr, ptr %DStatePtr.addr, align 8, !dbg !1469
  %state4 = getelementptr inbounds %struct.FSE_DState_t, ptr %10, i32 0, i32 0, !dbg !1470
  store i64 %add, ptr %state4, align 8, !dbg !1471
  %11 = load i8, ptr %symbol, align 1, !dbg !1472
  call void @llvm.lifetime.end.p0(i64 8, ptr %lowBits) #11, !dbg !1473
  call void @llvm.lifetime.end.p0(i64 1, ptr %symbol) #11, !dbg !1473
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbBits) #11, !dbg !1473
  call void @llvm.lifetime.end.p0(i64 4, ptr %DInfo) #11, !dbg !1473
  ret i8 %11, !dbg !1474
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @MEM_readLEST(ptr noundef %memPtr) #6 align 16 !dbg !1475 {
entry:
  %retval = alloca i64, align 8
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !1479, metadata !DIExpression()), !dbg !1480
  %call = call i32 @MEM_32bits() #10, !dbg !1481
  %tobool = icmp ne i32 %call, 0, !dbg !1481
  br i1 %tobool, label %if.then, label %if.else, !dbg !1483

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !1484
  %call1 = call i32 @MEM_readLE32(ptr noundef %0) #10, !dbg !1485
  %conv = zext i32 %call1 to i64, !dbg !1486
  store i64 %conv, ptr %retval, align 8, !dbg !1487
  br label %return, !dbg !1487

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %memPtr.addr, align 8, !dbg !1488
  %call2 = call i64 @MEM_readLE64(ptr noundef %1) #10, !dbg !1489
  store i64 %call2, ptr %retval, align 8, !dbg !1490
  br label %return, !dbg !1490

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, ptr %retval, align 8, !dbg !1491
  ret i64 %2, !dbg !1491
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_32bits() #6 align 16 !dbg !1492 {
entry:
  ret i32 0, !dbg !1495
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_readLE32(ptr noundef %memPtr) #6 align 16 !dbg !1496 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !1500, metadata !DIExpression()), !dbg !1501
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !1502
  %call = call i32 @get_unaligned_le32(ptr noundef %0) #10, !dbg !1503
  ret i32 %call, !dbg !1504
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @MEM_readLE64(ptr noundef %memPtr) #6 align 16 !dbg !1505 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !1509, metadata !DIExpression()), !dbg !1510
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !1511
  %call = call i64 @get_unaligned_le64(ptr noundef %0) #10, !dbg !1512
  ret i64 %call, !dbg !1513
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #6 align 16 !dbg !121 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !127, metadata !DIExpression()), !dbg !1514
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #11, !dbg !1515
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !128, metadata !DIExpression()), !dbg !1515
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1515
  store ptr %0, ptr %__pptr, align 8, !dbg !1515
  %1 = load ptr, ptr %__pptr, align 8, !dbg !1515
  %x = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 0, !dbg !1515
  %2 = load i32, ptr %x, align 1, !dbg !1515
  store i32 %2, ptr %tmp, align 4, !dbg !1515
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #11, !dbg !1516
  %3 = load i32, ptr %tmp, align 4, !dbg !1515
  ret i32 %3, !dbg !1517
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_unaligned_le64(ptr noundef %p) #6 align 16 !dbg !136 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !140, metadata !DIExpression()), !dbg !1518
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #11, !dbg !1519
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !141, metadata !DIExpression()), !dbg !1519
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1519
  store ptr %0, ptr %__pptr, align 8, !dbg !1519
  %1 = load ptr, ptr %__pptr, align 8, !dbg !1519
  %x = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 0, !dbg !1519
  %2 = load i64, ptr %x, align 1, !dbg !1519
  store i64 %2, ptr %tmp, align 8, !dbg !1519
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #11, !dbg !1520
  %3 = load i64, ptr %tmp, align 8, !dbg !1519
  ret i64 %3, !dbg !1521
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_readBits(ptr noundef %bitD, i32 noundef %nbBits) #3 align 16 !dbg !1522 {
entry:
  %bitD.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  %value = alloca i64, align 8
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !1526, metadata !DIExpression()), !dbg !1529
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !1527, metadata !DIExpression()), !dbg !1530
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #11, !dbg !1531
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1528, metadata !DIExpression()), !dbg !1532
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !1533
  %1 = load i32, ptr %nbBits.addr, align 4, !dbg !1534
  %call = call i64 @BIT_lookBits(ptr noundef %0, i32 noundef %1) #10, !dbg !1535
  store i64 %call, ptr %value, align 8, !dbg !1532
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !1536
  %3 = load i32, ptr %nbBits.addr, align 4, !dbg !1537
  call void @BIT_skipBits(ptr noundef %2, i32 noundef %3) #10, !dbg !1538
  %4 = load i64, ptr %value, align 8, !dbg !1539
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #11, !dbg !1540
  ret i64 %4, !dbg !1541
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_lookBits(ptr noundef %bitD, i32 noundef %nbBits) #3 align 16 !dbg !1542 {
entry:
  %bitD.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !1548, metadata !DIExpression()), !dbg !1550
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !1549, metadata !DIExpression()), !dbg !1551
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !1552
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 0, !dbg !1553
  %1 = load i64, ptr %bitContainer, align 8, !dbg !1553
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !1554
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %2, i32 0, i32 1, !dbg !1555
  %3 = load i32, ptr %bitsConsumed, align 8, !dbg !1555
  %conv = zext i32 %3 to i64, !dbg !1554
  %sub = sub i64 64, %conv, !dbg !1556
  %4 = load i32, ptr %nbBits.addr, align 4, !dbg !1557
  %conv1 = zext i32 %4 to i64, !dbg !1557
  %sub2 = sub i64 %sub, %conv1, !dbg !1558
  %conv3 = trunc i64 %sub2 to i32, !dbg !1559
  %5 = load i32, ptr %nbBits.addr, align 4, !dbg !1560
  %call = call i64 @BIT_getMiddleBits(i64 noundef %1, i32 noundef %conv3, i32 noundef %5) #10, !dbg !1561
  ret i64 %call, !dbg !1562
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @BIT_skipBits(ptr noundef %bitD, i32 noundef %nbBits) #3 align 16 !dbg !1563 {
entry:
  %bitD.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !1567, metadata !DIExpression()), !dbg !1569
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !1568, metadata !DIExpression()), !dbg !1570
  %0 = load i32, ptr %nbBits.addr, align 4, !dbg !1571
  %1 = load ptr, ptr %bitD.addr, align 8, !dbg !1572
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %1, i32 0, i32 1, !dbg !1573
  %2 = load i32, ptr %bitsConsumed, align 8, !dbg !1574
  %add = add i32 %2, %0, !dbg !1574
  store i32 %add, ptr %bitsConsumed, align 8, !dbg !1574
  ret void, !dbg !1575
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_getMiddleBits(i64 noundef %bitContainer, i32 noundef %start, i32 noundef %nbBits) #3 align 16 !dbg !1576 {
entry:
  %bitContainer.addr = alloca i64, align 8
  %start.addr = alloca i32, align 4
  %nbBits.addr = alloca i32, align 4
  %regMask = alloca i32, align 4
  store i64 %bitContainer, ptr %bitContainer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitContainer.addr, metadata !1580, metadata !DIExpression()), !dbg !1584
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1581, metadata !DIExpression()), !dbg !1585
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !1582, metadata !DIExpression()), !dbg !1586
  call void @llvm.lifetime.start.p0(i64 4, ptr %regMask) #11, !dbg !1587
  call void @llvm.dbg.declare(metadata ptr %regMask, metadata !1583, metadata !DIExpression()), !dbg !1588
  store i32 63, ptr %regMask, align 4, !dbg !1588
  %0 = load i64, ptr %bitContainer.addr, align 8, !dbg !1589
  %1 = load i32, ptr %start.addr, align 4, !dbg !1590
  %and = and i32 %1, 63, !dbg !1591
  %sh_prom = zext i32 %and to i64, !dbg !1592
  %shr = lshr i64 %0, %sh_prom, !dbg !1592
  %2 = load i32, ptr %nbBits.addr, align 4, !dbg !1593
  %sh_prom1 = zext i32 %2 to i64, !dbg !1594
  %shl = shl i64 1, %sh_prom1, !dbg !1594
  %sub = sub i64 %shl, 1, !dbg !1595
  %and2 = and i64 %shr, %sub, !dbg !1596
  call void @llvm.lifetime.end.p0(i64 4, ptr %regMask) #11, !dbg !1597
  ret i64 %and2, !dbg !1598
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @BIT_reloadDStreamFast(ptr noundef %bitD) #6 align 16 !dbg !1599 {
entry:
  %retval = alloca i32, align 4
  %bitD.addr = alloca ptr, align 8
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !1601, metadata !DIExpression()), !dbg !1602
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !1603
  %ptr = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 2, !dbg !1603
  %1 = load ptr, ptr %ptr, align 8, !dbg !1603
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !1603
  %limitPtr = getelementptr inbounds %struct.BIT_DStream_t, ptr %2, i32 0, i32 4, !dbg !1603
  %3 = load ptr, ptr %limitPtr, align 8, !dbg !1603
  %cmp = icmp ult ptr %1, %3, !dbg !1603
  %conv = zext i1 %cmp to i32, !dbg !1603
  %conv1 = sext i32 %conv to i64, !dbg !1603
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1603
  %tobool = icmp ne i64 %expval, 0, !dbg !1603
  br i1 %tobool, label %if.then, label %if.end, !dbg !1605

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !1606
  br label %return, !dbg !1606

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %bitD.addr, align 8, !dbg !1607
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %4, i32 0, i32 1, !dbg !1608
  %5 = load i32, ptr %bitsConsumed, align 8, !dbg !1608
  %shr = lshr i32 %5, 3, !dbg !1609
  %6 = load ptr, ptr %bitD.addr, align 8, !dbg !1610
  %ptr2 = getelementptr inbounds %struct.BIT_DStream_t, ptr %6, i32 0, i32 2, !dbg !1611
  %7 = load ptr, ptr %ptr2, align 8, !dbg !1612
  %idx.ext = zext i32 %shr to i64, !dbg !1612
  %idx.neg = sub i64 0, %idx.ext, !dbg !1612
  %add.ptr = getelementptr i8, ptr %7, i64 %idx.neg, !dbg !1612
  store ptr %add.ptr, ptr %ptr2, align 8, !dbg !1612
  %8 = load ptr, ptr %bitD.addr, align 8, !dbg !1613
  %bitsConsumed3 = getelementptr inbounds %struct.BIT_DStream_t, ptr %8, i32 0, i32 1, !dbg !1614
  %9 = load i32, ptr %bitsConsumed3, align 8, !dbg !1615
  %and = and i32 %9, 7, !dbg !1615
  store i32 %and, ptr %bitsConsumed3, align 8, !dbg !1615
  %10 = load ptr, ptr %bitD.addr, align 8, !dbg !1616
  %ptr4 = getelementptr inbounds %struct.BIT_DStream_t, ptr %10, i32 0, i32 2, !dbg !1617
  %11 = load ptr, ptr %ptr4, align 8, !dbg !1617
  %call = call i64 @MEM_readLEST(ptr noundef %11) #10, !dbg !1618
  %12 = load ptr, ptr %bitD.addr, align 8, !dbg !1619
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %12, i32 0, i32 0, !dbg !1620
  store i64 %call, ptr %bitContainer, align 8, !dbg !1621
  store i32 0, ptr %retval, align 4, !dbg !1622
  br label %return, !dbg !1622

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !1623
  ret i32 %13, !dbg !1623
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_readBitsFast(ptr noundef %bitD, i32 noundef %nbBits) #6 align 16 !dbg !1624 {
entry:
  %bitD.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  %value = alloca i64, align 8
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !1626, metadata !DIExpression()), !dbg !1629
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !1627, metadata !DIExpression()), !dbg !1630
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #11, !dbg !1631
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1628, metadata !DIExpression()), !dbg !1632
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !1633
  %1 = load i32, ptr %nbBits.addr, align 4, !dbg !1634
  %call = call i64 @BIT_lookBitsFast(ptr noundef %0, i32 noundef %1) #10, !dbg !1635
  store i64 %call, ptr %value, align 8, !dbg !1632
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !1636
  %3 = load i32, ptr %nbBits.addr, align 4, !dbg !1637
  call void @BIT_skipBits(ptr noundef %2, i32 noundef %3) #10, !dbg !1638
  %4 = load i64, ptr %value, align 8, !dbg !1639
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #11, !dbg !1640
  ret i64 %4, !dbg !1641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @BIT_lookBitsFast(ptr noundef %bitD, i32 noundef %nbBits) #6 align 16 !dbg !1642 {
entry:
  %bitD.addr = alloca ptr, align 8
  %nbBits.addr = alloca i32, align 4
  %regMask = alloca i32, align 4
  store ptr %bitD, ptr %bitD.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitD.addr, metadata !1644, metadata !DIExpression()), !dbg !1647
  store i32 %nbBits, ptr %nbBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbBits.addr, metadata !1645, metadata !DIExpression()), !dbg !1648
  call void @llvm.lifetime.start.p0(i64 4, ptr %regMask) #11, !dbg !1649
  call void @llvm.dbg.declare(metadata ptr %regMask, metadata !1646, metadata !DIExpression()), !dbg !1650
  store i32 63, ptr %regMask, align 4, !dbg !1650
  %0 = load ptr, ptr %bitD.addr, align 8, !dbg !1651
  %bitContainer = getelementptr inbounds %struct.BIT_DStream_t, ptr %0, i32 0, i32 0, !dbg !1652
  %1 = load i64, ptr %bitContainer, align 8, !dbg !1652
  %2 = load ptr, ptr %bitD.addr, align 8, !dbg !1653
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %2, i32 0, i32 1, !dbg !1654
  %3 = load i32, ptr %bitsConsumed, align 8, !dbg !1654
  %and = and i32 %3, 63, !dbg !1655
  %sh_prom = zext i32 %and to i64, !dbg !1656
  %shl = shl i64 %1, %sh_prom, !dbg !1656
  %4 = load i32, ptr %nbBits.addr, align 4, !dbg !1657
  %sub = sub i32 64, %4, !dbg !1658
  %and1 = and i32 %sub, 63, !dbg !1659
  %sh_prom2 = zext i32 %and1 to i64, !dbg !1660
  %shr = lshr i64 %shl, %sh_prom2, !dbg !1660
  call void @llvm.lifetime.end.p0(i64 4, ptr %regMask) #11, !dbg !1661
  ret i64 %shr, !dbg !1662
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @FSE_decompress_wksp_body(ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %cSrc, i64 noundef %cSrcSize, i32 noundef %maxLog, ptr noundef %workSpace, i64 noundef %wkspSize, i32 noundef %bmi2) #3 align 16 !dbg !1663 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %cSrc.addr = alloca ptr, align 8
  %cSrcSize.addr = alloca i64, align 8
  %maxLog.addr = alloca i32, align 4
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  %istart = alloca ptr, align 8
  %ip = alloca ptr, align 8
  %tableLog = alloca i32, align 4
  %maxSymbolValue = alloca i32, align 4
  %wksp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %NCountLength = alloca i64, align 8
  %_var_err__ = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %DTableH = alloca ptr, align 8
  %fastMode = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1665, metadata !DIExpression()), !dbg !1688
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1666, metadata !DIExpression()), !dbg !1689
  store ptr %cSrc, ptr %cSrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrc.addr, metadata !1667, metadata !DIExpression()), !dbg !1690
  store i64 %cSrcSize, ptr %cSrcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cSrcSize.addr, metadata !1668, metadata !DIExpression()), !dbg !1691
  store i32 %maxLog, ptr %maxLog.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxLog.addr, metadata !1669, metadata !DIExpression()), !dbg !1692
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !1670, metadata !DIExpression()), !dbg !1693
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !1671, metadata !DIExpression()), !dbg !1694
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !1672, metadata !DIExpression()), !dbg !1695
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart) #11, !dbg !1696
  call void @llvm.dbg.declare(metadata ptr %istart, metadata !1673, metadata !DIExpression()), !dbg !1697
  %0 = load ptr, ptr %cSrc.addr, align 8, !dbg !1698
  store ptr %0, ptr %istart, align 8, !dbg !1697
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #11, !dbg !1699
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !1675, metadata !DIExpression()), !dbg !1700
  %1 = load ptr, ptr %istart, align 8, !dbg !1701
  store ptr %1, ptr %ip, align 8, !dbg !1700
  call void @llvm.lifetime.start.p0(i64 4, ptr %tableLog) #11, !dbg !1702
  call void @llvm.dbg.declare(metadata ptr %tableLog, metadata !1676, metadata !DIExpression()), !dbg !1703
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxSymbolValue) #11, !dbg !1704
  call void @llvm.dbg.declare(metadata ptr %maxSymbolValue, metadata !1677, metadata !DIExpression()), !dbg !1705
  store i32 255, ptr %maxSymbolValue, align 4, !dbg !1705
  call void @llvm.lifetime.start.p0(i64 8, ptr %wksp) #11, !dbg !1706
  call void @llvm.dbg.declare(metadata ptr %wksp, metadata !1678, metadata !DIExpression()), !dbg !1707
  %2 = load ptr, ptr %workSpace.addr, align 8, !dbg !1708
  store ptr %2, ptr %wksp, align 8, !dbg !1707
  %3 = load i64, ptr %wkspSize.addr, align 8, !dbg !1709
  %cmp = icmp ult i64 %3, 512, !dbg !1711
  br i1 %cmp, label %if.then, label %if.end, !dbg !1712

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1713
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !1713

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %NCountLength) #11, !dbg !1714
  call void @llvm.dbg.declare(metadata ptr %NCountLength, metadata !1680, metadata !DIExpression()), !dbg !1715
  %4 = load ptr, ptr %wksp, align 8, !dbg !1716
  %ncount = getelementptr inbounds %struct.FSE_DecompressWksp, ptr %4, i32 0, i32 0, !dbg !1717
  %arraydecay = getelementptr inbounds [256 x i16], ptr %ncount, i64 0, i64 0, !dbg !1716
  %5 = load ptr, ptr %istart, align 8, !dbg !1718
  %6 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1719
  %7 = load i32, ptr %bmi2.addr, align 4, !dbg !1720
  %call = call i64 @FSE_readNCount_bmi2(ptr noundef %arraydecay, ptr noundef %maxSymbolValue, ptr noundef %tableLog, ptr noundef %5, i64 noundef %6, i32 noundef %7) #10, !dbg !1721
  store i64 %call, ptr %NCountLength, align 8, !dbg !1715
  %8 = load i64, ptr %NCountLength, align 8, !dbg !1722
  %call1 = call i32 @ERR_isError(i64 noundef %8) #10, !dbg !1724
  %tobool = icmp ne i32 %call1, 0, !dbg !1724
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !1725

if.then2:                                         ; preds = %if.end
  %9 = load i64, ptr %NCountLength, align 8, !dbg !1726
  store i64 %9, ptr %retval, align 8, !dbg !1727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1727

if.end3:                                          ; preds = %if.end
  %10 = load i32, ptr %tableLog, align 4, !dbg !1728
  %11 = load i32, ptr %maxLog.addr, align 4, !dbg !1730
  %cmp4 = icmp ugt i32 %10, %11, !dbg !1731
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1732

if.then5:                                         ; preds = %if.end3
  store i64 -44, ptr %retval, align 8, !dbg !1733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1733

if.end6:                                          ; preds = %if.end3
  %12 = load i64, ptr %NCountLength, align 8, !dbg !1734
  %13 = load ptr, ptr %ip, align 8, !dbg !1735
  %add.ptr = getelementptr i8, ptr %13, i64 %12, !dbg !1735
  store ptr %add.ptr, ptr %ip, align 8, !dbg !1735
  %14 = load i64, ptr %NCountLength, align 8, !dbg !1736
  %15 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1737
  %sub = sub i64 %15, %14, !dbg !1737
  store i64 %sub, ptr %cSrcSize.addr, align 8, !dbg !1737
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1738
  br label %cleanup, !dbg !1738

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %NCountLength) #11, !dbg !1738
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup60 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %16 = load i32, ptr %tableLog, align 4, !dbg !1739
  %shl = shl i32 1, %16, !dbg !1739
  %add = add i32 1, %shl, !dbg !1739
  %conv = sext i32 %add to i64, !dbg !1739
  %17 = load i32, ptr %maxSymbolValue, align 4, !dbg !1739
  %add7 = add i32 %17, 1, !dbg !1739
  %conv8 = zext i32 %add7 to i64, !dbg !1739
  %mul = mul i64 2, %conv8, !dbg !1739
  %18 = load i32, ptr %tableLog, align 4, !dbg !1739
  %sh_prom = zext i32 %18 to i64, !dbg !1739
  %shl9 = shl i64 1, %sh_prom, !dbg !1739
  %add10 = add i64 %mul, %shl9, !dbg !1739
  %add11 = add i64 %add10, 8, !dbg !1739
  %add12 = add i64 %add11, 4, !dbg !1739
  %sub13 = sub i64 %add12, 1, !dbg !1739
  %div = udiv i64 %sub13, 4, !dbg !1739
  %add14 = add i64 %conv, %div, !dbg !1739
  %add15 = add i64 %add14, 128, !dbg !1739
  %add16 = add i64 %add15, 1, !dbg !1739
  %mul17 = mul i64 %add16, 4, !dbg !1739
  %19 = load i64, ptr %wkspSize.addr, align 8, !dbg !1741
  %cmp18 = icmp ugt i64 %mul17, %19, !dbg !1742
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !1743

if.then20:                                        ; preds = %cleanup.cont
  store i64 -44, ptr %retval, align 8, !dbg !1744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !1744

if.end21:                                         ; preds = %cleanup.cont
  %20 = load ptr, ptr %wksp, align 8, !dbg !1745
  %dtable = getelementptr inbounds %struct.FSE_DecompressWksp, ptr %20, i32 0, i32 1, !dbg !1746
  %arraydecay22 = getelementptr inbounds [0 x i32], ptr %dtable, i64 0, i64 0, !dbg !1745
  %21 = load i32, ptr %tableLog, align 4, !dbg !1747
  %shl23 = shl i32 1, %21, !dbg !1747
  %add24 = add i32 1, %shl23, !dbg !1747
  %idx.ext = sext i32 %add24 to i64, !dbg !1748
  %add.ptr25 = getelementptr i32, ptr %arraydecay22, i64 %idx.ext, !dbg !1748
  store ptr %add.ptr25, ptr %workSpace.addr, align 8, !dbg !1749
  %22 = load i32, ptr %tableLog, align 4, !dbg !1750
  %shl26 = shl i32 1, %22, !dbg !1750
  %add27 = add i32 1, %shl26, !dbg !1750
  %conv28 = sext i32 %add27 to i64, !dbg !1750
  %mul29 = mul i64 %conv28, 4, !dbg !1750
  %add30 = add i64 512, %mul29, !dbg !1751
  %23 = load i64, ptr %wkspSize.addr, align 8, !dbg !1752
  %sub31 = sub i64 %23, %add30, !dbg !1752
  store i64 %sub31, ptr %wkspSize.addr, align 8, !dbg !1752
  call void @llvm.lifetime.start.p0(i64 8, ptr %_var_err__) #11, !dbg !1753
  call void @llvm.dbg.declare(metadata ptr %_var_err__, metadata !1682, metadata !DIExpression()), !dbg !1753
  %24 = load ptr, ptr %wksp, align 8, !dbg !1753
  %dtable32 = getelementptr inbounds %struct.FSE_DecompressWksp, ptr %24, i32 0, i32 1, !dbg !1753
  %arraydecay33 = getelementptr inbounds [0 x i32], ptr %dtable32, i64 0, i64 0, !dbg !1753
  %25 = load ptr, ptr %wksp, align 8, !dbg !1753
  %ncount34 = getelementptr inbounds %struct.FSE_DecompressWksp, ptr %25, i32 0, i32 0, !dbg !1753
  %arraydecay35 = getelementptr inbounds [256 x i16], ptr %ncount34, i64 0, i64 0, !dbg !1753
  %26 = load i32, ptr %maxSymbolValue, align 4, !dbg !1753
  %27 = load i32, ptr %tableLog, align 4, !dbg !1753
  %28 = load ptr, ptr %workSpace.addr, align 8, !dbg !1753
  %29 = load i64, ptr %wkspSize.addr, align 8, !dbg !1753
  %call36 = call i64 @FSE_buildDTable_internal(ptr noundef %arraydecay33, ptr noundef %arraydecay35, i32 noundef %26, i32 noundef %27, ptr noundef %28, i64 noundef %29) #10, !dbg !1753
  store i64 %call36, ptr %_var_err__, align 8, !dbg !1753
  %30 = load i64, ptr %_var_err__, align 8, !dbg !1754
  %call37 = call i32 @ERR_isError(i64 noundef %30) #10, !dbg !1754
  %tobool38 = icmp ne i32 %call37, 0, !dbg !1754
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !1753

if.then39:                                        ; preds = %if.end21
  %31 = load i64, ptr %_var_err__, align 8, !dbg !1754
  store i64 %31, ptr %retval, align 8, !dbg !1754
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1754

if.end40:                                         ; preds = %if.end21
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1756
  br label %cleanup41, !dbg !1756

cleanup41:                                        ; preds = %if.end40, %if.then39
  call void @llvm.lifetime.end.p0(i64 8, ptr %_var_err__) #11, !dbg !1756
  %cleanup.dest42 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest42, label %cleanup60 [
    i32 0, label %cleanup.cont43
  ]

cleanup.cont43:                                   ; preds = %cleanup41
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #11, !dbg !1757
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !1684, metadata !DIExpression()), !dbg !1758
  %32 = load ptr, ptr %wksp, align 8, !dbg !1759
  %dtable44 = getelementptr inbounds %struct.FSE_DecompressWksp, ptr %32, i32 0, i32 1, !dbg !1760
  %arraydecay45 = getelementptr inbounds [0 x i32], ptr %dtable44, i64 0, i64 0, !dbg !1759
  store ptr %arraydecay45, ptr %ptr, align 8, !dbg !1758
  call void @llvm.lifetime.start.p0(i64 8, ptr %DTableH) #11, !dbg !1761
  call void @llvm.dbg.declare(metadata ptr %DTableH, metadata !1686, metadata !DIExpression()), !dbg !1762
  %33 = load ptr, ptr %ptr, align 8, !dbg !1763
  store ptr %33, ptr %DTableH, align 8, !dbg !1762
  call void @llvm.lifetime.start.p0(i64 4, ptr %fastMode) #11, !dbg !1764
  call void @llvm.dbg.declare(metadata ptr %fastMode, metadata !1687, metadata !DIExpression()), !dbg !1765
  %34 = load ptr, ptr %DTableH, align 8, !dbg !1766
  %fastMode46 = getelementptr inbounds %struct.FSE_DTableHeader, ptr %34, i32 0, i32 1, !dbg !1767
  %35 = load i16, ptr %fastMode46, align 2, !dbg !1767
  %conv47 = zext i16 %35 to i32, !dbg !1766
  store i32 %conv47, ptr %fastMode, align 4, !dbg !1765
  %36 = load i32, ptr %fastMode, align 4, !dbg !1768
  %tobool48 = icmp ne i32 %36, 0, !dbg !1768
  br i1 %tobool48, label %if.then49, label %if.end53, !dbg !1770

if.then49:                                        ; preds = %cleanup.cont43
  %37 = load ptr, ptr %dst.addr, align 8, !dbg !1771
  %38 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1772
  %39 = load ptr, ptr %ip, align 8, !dbg !1773
  %40 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1774
  %41 = load ptr, ptr %wksp, align 8, !dbg !1775
  %dtable50 = getelementptr inbounds %struct.FSE_DecompressWksp, ptr %41, i32 0, i32 1, !dbg !1776
  %arraydecay51 = getelementptr inbounds [0 x i32], ptr %dtable50, i64 0, i64 0, !dbg !1775
  %call52 = call i64 @FSE_decompress_usingDTable_generic(ptr noundef %37, i64 noundef %38, ptr noundef %39, i64 noundef %40, ptr noundef %arraydecay51, i32 noundef 1) #10, !dbg !1777
  store i64 %call52, ptr %retval, align 8, !dbg !1778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !1778

if.end53:                                         ; preds = %cleanup.cont43
  %42 = load ptr, ptr %dst.addr, align 8, !dbg !1779
  %43 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1780
  %44 = load ptr, ptr %ip, align 8, !dbg !1781
  %45 = load i64, ptr %cSrcSize.addr, align 8, !dbg !1782
  %46 = load ptr, ptr %wksp, align 8, !dbg !1783
  %dtable54 = getelementptr inbounds %struct.FSE_DecompressWksp, ptr %46, i32 0, i32 1, !dbg !1784
  %arraydecay55 = getelementptr inbounds [0 x i32], ptr %dtable54, i64 0, i64 0, !dbg !1783
  %call56 = call i64 @FSE_decompress_usingDTable_generic(ptr noundef %42, i64 noundef %43, ptr noundef %44, i64 noundef %45, ptr noundef %arraydecay55, i32 noundef 0) #10, !dbg !1785
  store i64 %call56, ptr %retval, align 8, !dbg !1786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !1786

cleanup57:                                        ; preds = %if.end53, %if.then49
  call void @llvm.lifetime.end.p0(i64 4, ptr %fastMode) #11, !dbg !1787
  call void @llvm.lifetime.end.p0(i64 8, ptr %DTableH) #11, !dbg !1787
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #11, !dbg !1787
  br label %cleanup60

cleanup60:                                        ; preds = %cleanup57, %cleanup41, %if.then20, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %wksp) #11, !dbg !1788
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxSymbolValue) #11, !dbg !1788
  call void @llvm.lifetime.end.p0(i64 4, ptr %tableLog) #11, !dbg !1788
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #11, !dbg !1788
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart) #11, !dbg !1788
  %47 = load i64, ptr %retval, align 8, !dbg !1788
  ret i64 %47, !dbg !1788
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1789 dso_local i64 @FSE_readNCount_bmi2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zstd/common/.fse_decompress.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zstd/zstd_common\22 -D KBUILD_BASENAME=\22fse_decompress\22 -D KBUILD_MODNAME=\22zstd_common\22 -D __KBUILD_MODNAME=kmod_zstd_common -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zstd/common/fse_decompress.ll lib/zstd/common/fse_decompress.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !42, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/zstd/common/fse_decompress.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4ec016caa74bc738e791a6fdfee8707c")
!2 = !{!3, !35}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 37, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/zstd_errors.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b65e56a0777f4855c2ba6522d04d0e69")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!7 = !DIEnumerator(name: "ZSTD_error_no_error", value: 0)
!8 = !DIEnumerator(name: "ZSTD_error_GENERIC", value: 1)
!9 = !DIEnumerator(name: "ZSTD_error_prefix_unknown", value: 10)
!10 = !DIEnumerator(name: "ZSTD_error_version_unsupported", value: 12)
!11 = !DIEnumerator(name: "ZSTD_error_frameParameter_unsupported", value: 14)
!12 = !DIEnumerator(name: "ZSTD_error_frameParameter_windowTooLarge", value: 16)
!13 = !DIEnumerator(name: "ZSTD_error_corruption_detected", value: 20)
!14 = !DIEnumerator(name: "ZSTD_error_checksum_wrong", value: 22)
!15 = !DIEnumerator(name: "ZSTD_error_dictionary_corrupted", value: 30)
!16 = !DIEnumerator(name: "ZSTD_error_dictionary_wrong", value: 32)
!17 = !DIEnumerator(name: "ZSTD_error_dictionaryCreation_failed", value: 34)
!18 = !DIEnumerator(name: "ZSTD_error_parameter_unsupported", value: 40)
!19 = !DIEnumerator(name: "ZSTD_error_parameter_outOfBound", value: 42)
!20 = !DIEnumerator(name: "ZSTD_error_tableLog_tooLarge", value: 44)
!21 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooLarge", value: 46)
!22 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooSmall", value: 48)
!23 = !DIEnumerator(name: "ZSTD_error_stage_wrong", value: 60)
!24 = !DIEnumerator(name: "ZSTD_error_init_missing", value: 62)
!25 = !DIEnumerator(name: "ZSTD_error_memory_allocation", value: 64)
!26 = !DIEnumerator(name: "ZSTD_error_workSpace_tooSmall", value: 66)
!27 = !DIEnumerator(name: "ZSTD_error_dstSize_tooSmall", value: 70)
!28 = !DIEnumerator(name: "ZSTD_error_srcSize_wrong", value: 72)
!29 = !DIEnumerator(name: "ZSTD_error_dstBuffer_null", value: 74)
!30 = !DIEnumerator(name: "ZSTD_error_frameIndex_tooLarge", value: 100)
!31 = !DIEnumerator(name: "ZSTD_error_seekableIO", value: 102)
!32 = !DIEnumerator(name: "ZSTD_error_dstBuffer_wrong", value: 104)
!33 = !DIEnumerator(name: "ZSTD_error_srcBuffer_wrong", value: 105)
!34 = !DIEnumerator(name: "ZSTD_error_maxCode", value: 120)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 90, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "lib/zstd/common/bitstream.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1506eb3bcf17fe963e7dde55b0cfcb8f")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "BIT_DStream_unfinished", value: 0)
!39 = !DIEnumerator(name: "BIT_DStream_endOfBuffer", value: 1)
!40 = !DIEnumerator(name: "BIT_DStream_completed", value: 2)
!41 = !DIEnumerator(name: "BIT_DStream_overflow", value: 3)
!42 = !{!43, !46, !47, !62, !70, !52, !75, !79, !81, !82, !83, !88, !105, !106, !109, !111, !114, !115, !117, !96, !132, !133, !93, !145, !147}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSE_DTable", file: !45, line: 243, baseType: !5)
!45 = !DIFile(filename: "lib/zstd/common/fse.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7594268659e4334b0d9568eded0c0606")
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSE_DTableHeader", file: !45, line: 591, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 588, size: 32, elements: !50)
!50 = !{!51, !61}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tableLog", scope: !49, file: !45, line: 589, baseType: !52, size: 16)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !53, line: 35, baseType: !54)
!53 = !DIFile(filename: "lib/zstd/common/mem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ecad453ab26990e649f823cad6e0e9a6")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !55, line: 109, baseType: !56)
!55 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !57, line: 19, baseType: !58)
!57 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !59, line: 24, baseType: !60)
!59 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "fastMode", scope: !49, file: !45, line: 590, baseType: !52, size: 16, offset: 16)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSE_decode_t", file: !45, line: 598, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 593, size: 32, elements: !65)
!65 = !{!66, !67, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "newState", scope: !64, file: !45, line: 595, baseType: !60, size: 16)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "symbol", scope: !64, file: !45, line: 596, baseType: !68, size: 8, offset: 16)
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "nbBits", scope: !64, file: !45, line: 597, baseType: !68, size: 8, offset: 24)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 61, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !72, line: 72, baseType: !73)
!72 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !72, line: 16, baseType: !74)
!74 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !53, line: 32, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !55, line: 108, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !57, line: 17, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !59, line: 21, baseType: !68)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "S16", file: !53, line: 36, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !55, line: 102, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !57, line: 18, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !59, line: 23, baseType: !87)
!87 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !90, file: !53, line: 143, size: 64, elements: !103)
!90 = distinct !DISubprogram(name: "MEM_write64", scope: !53, file: !53, line: 141, type: !91, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !98)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !46, !93}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "U64", file: !53, line: 39, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !55, line: 113, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !57, line: 23, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !59, line: 31, baseType: !97)
!97 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!98 = !{!99, !100, !101}
!99 = !DILocalVariable(name: "memPtr", arg: 1, scope: !90, file: !53, line: 141, type: !46)
!100 = !DILocalVariable(name: "value", arg: 2, scope: !90, file: !53, line: 141, type: !93)
!101 = !DILocalVariable(name: "__pptr", scope: !102, file: !53, line: 143, type: !88)
!102 = distinct !DILexicalBlock(scope: !90, file: !53, line: 143, column: 5)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !89, file: !53, line: 143, baseType: !93, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !53, line: 37, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !55, line: 110, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !57, line: 21, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !59, line: 27, baseType: !5)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !116, line: 38, baseType: !114)
!116 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !121, file: !120, line: 32, size: 32, elements: !130)
!120 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!121 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !120, file: !120, line: 30, type: !122, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!122 = !DISubroutineType(types: !123)
!123 = !{!113, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!126 = !{!127, !128}
!127 = !DILocalVariable(name: "p", arg: 1, scope: !121, file: !120, line: 30, type: !124)
!128 = !DILocalVariable(name: "__pptr", scope: !129, file: !120, line: 32, type: !117)
!129 = distinct !DILexicalBlock(scope: !121, file: !120, line: 32, column: 9)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !119, file: !120, line: 32, baseType: !115, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !116, line: 40, baseType: !96)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 37, size: 64, elements: !143)
!136 = distinct !DISubprogram(name: "get_unaligned_le64", scope: !120, file: !120, line: 35, type: !137, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{!95, !124}
!139 = !{!140, !141}
!140 = !DILocalVariable(name: "p", arg: 1, scope: !136, file: !120, line: 35, type: !124)
!141 = !DILocalVariable(name: "__pptr", scope: !142, file: !120, line: 37, type: !133)
!142 = distinct !DILexicalBlock(scope: !136, file: !120, line: 37, column: 9)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !135, file: !120, line: 37, baseType: !132, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSE_DecompressWksp", file: !1, line: 316, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 313, size: 4096, elements: !150)
!150 = !{!151, !155}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ncount", scope: !149, file: !1, line: 314, baseType: !152, size: 4096)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 4096, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "dtable", scope: !149, file: !1, line: 315, baseType: !156, offset: 4096)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: -1)
!159 = !{i32 7, !"Dwarf Version", i32 5}
!160 = !{i32 2, !"Debug Info Version", i32 3}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 8, !"cf-protection-branch", i32 1}
!163 = !{i32 4, !"function_return_thunk_extern", i32 1}
!164 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!165 = !{i32 1, !"Code Model", i32 2}
!166 = !{i32 1, !"override-stack-alignment", i32 8}
!167 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!168 = distinct !DISubprogram(name: "FSE_createDTable", scope: !1, file: !1, line: 60, type: !169, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !171)
!169 = !DISubroutineType(types: !170)
!170 = !{!43, !5}
!171 = !{!172}
!172 = !DILocalVariable(name: "tableLog", arg: 1, scope: !168, file: !1, line: 60, type: !5)
!173 = !DILocation(line: 60, column: 40, scope: !168)
!174 = !DILocation(line: 62, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !168, file: !1, line: 62, column: 9)
!176 = !DILocation(line: 62, column: 18, scope: !175)
!177 = !DILocation(line: 62, column: 9, scope: !168)
!178 = !DILocation(line: 62, column: 56, scope: !175)
!179 = !DILocation(line: 62, column: 47, scope: !175)
!180 = !DILocation(line: 63, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !168, file: !1, line: 63, column: 25)
!182 = !DILocation(line: 63, column: 5, scope: !168)
!183 = distinct !DISubprogram(name: "FSE_freeDTable", scope: !1, file: !1, line: 66, type: !184, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !186)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !43}
!186 = !{!187}
!187 = !DILocalVariable(name: "dt", arg: 1, scope: !183, file: !1, line: 66, type: !43)
!188 = !DILocation(line: 66, column: 34, scope: !183)
!189 = !DILocation(line: 68, column: 5, scope: !183)
!190 = !DILocation(line: 69, column: 1, scope: !183)
!191 = distinct !DISubprogram(name: "FSE_buildDTable_wksp", scope: !1, file: !1, line: 176, type: !192, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !196)
!192 = !DISubroutineType(types: !193)
!193 = !{!70, !43, !194, !5, !5, !46, !70}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!196 = !{!197, !198, !199, !200, !201, !202}
!197 = !DILocalVariable(name: "dt", arg: 1, scope: !191, file: !1, line: 176, type: !43)
!198 = !DILocalVariable(name: "normalizedCounter", arg: 2, scope: !191, file: !1, line: 176, type: !194)
!199 = !DILocalVariable(name: "maxSymbolValue", arg: 3, scope: !191, file: !1, line: 176, type: !5)
!200 = !DILocalVariable(name: "tableLog", arg: 4, scope: !191, file: !1, line: 176, type: !5)
!201 = !DILocalVariable(name: "workSpace", arg: 5, scope: !191, file: !1, line: 176, type: !46)
!202 = !DILocalVariable(name: "wkspSize", arg: 6, scope: !191, file: !1, line: 176, type: !70)
!203 = !DILocation(line: 176, column: 41, scope: !191)
!204 = !DILocation(line: 176, column: 58, scope: !191)
!205 = !DILocation(line: 176, column: 86, scope: !191)
!206 = !DILocation(line: 176, column: 111, scope: !191)
!207 = !DILocation(line: 176, column: 127, scope: !191)
!208 = !DILocation(line: 176, column: 145, scope: !191)
!209 = !DILocation(line: 178, column: 37, scope: !191)
!210 = !DILocation(line: 178, column: 41, scope: !191)
!211 = !DILocation(line: 178, column: 60, scope: !191)
!212 = !DILocation(line: 178, column: 76, scope: !191)
!213 = !DILocation(line: 178, column: 86, scope: !191)
!214 = !DILocation(line: 178, column: 97, scope: !191)
!215 = !DILocation(line: 178, column: 12, scope: !191)
!216 = !DILocation(line: 178, column: 5, scope: !191)
!217 = distinct !DISubprogram(name: "FSE_buildDTable_internal", scope: !1, file: !1, line: 71, type: !192, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !227, !229, !230, !231, !233, !234, !235, !237, !240, !241, !245, !246, !249, !250, !251, !252, !257, !259, !261, !262, !263, !267, !271, !273, !274, !275, !276, !280, !282, !286}
!219 = !DILocalVariable(name: "dt", arg: 1, scope: !217, file: !1, line: 71, type: !43)
!220 = !DILocalVariable(name: "normalizedCounter", arg: 2, scope: !217, file: !1, line: 71, type: !194)
!221 = !DILocalVariable(name: "maxSymbolValue", arg: 3, scope: !217, file: !1, line: 71, type: !5)
!222 = !DILocalVariable(name: "tableLog", arg: 4, scope: !217, file: !1, line: 71, type: !5)
!223 = !DILocalVariable(name: "workSpace", arg: 5, scope: !217, file: !1, line: 71, type: !46)
!224 = !DILocalVariable(name: "wkspSize", arg: 6, scope: !217, file: !1, line: 71, type: !70)
!225 = !DILocalVariable(name: "tdPtr", scope: !217, file: !1, line: 73, type: !226)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!227 = !DILocalVariable(name: "tableDecode", scope: !217, file: !1, line: 74, type: !228)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!229 = !DILocalVariable(name: "symbolNext", scope: !217, file: !1, line: 75, type: !81)
!230 = !DILocalVariable(name: "spread", scope: !217, file: !1, line: 76, type: !82)
!231 = !DILocalVariable(name: "maxSV1", scope: !217, file: !1, line: 78, type: !232)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!233 = !DILocalVariable(name: "tableSize", scope: !217, file: !1, line: 79, type: !232)
!234 = !DILocalVariable(name: "highThreshold", scope: !217, file: !1, line: 80, type: !111)
!235 = !DILocalVariable(name: "DTableH", scope: !236, file: !1, line: 88, type: !48)
!236 = distinct !DILexicalBlock(scope: !217, file: !1, line: 88, column: 5)
!237 = !DILocalVariable(name: "largeLimit", scope: !238, file: !1, line: 91, type: !239)
!238 = distinct !DILexicalBlock(scope: !236, file: !1, line: 91, column: 9)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!240 = !DILocalVariable(name: "s", scope: !238, file: !1, line: 92, type: !111)
!241 = !DILocalVariable(name: "tableMask", scope: !242, file: !1, line: 106, type: !244)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 105, column: 41)
!243 = distinct !DILexicalBlock(scope: !217, file: !1, line: 105, column: 9)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!245 = !DILocalVariable(name: "step", scope: !242, file: !1, line: 107, type: !244)
!246 = !DILocalVariable(name: "add", scope: !247, file: !1, line: 115, type: !248)
!247 = distinct !DILexicalBlock(scope: !242, file: !1, line: 114, column: 9)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!249 = !DILocalVariable(name: "pos", scope: !247, file: !1, line: 116, type: !70)
!250 = !DILocalVariable(name: "sv", scope: !247, file: !1, line: 117, type: !93)
!251 = !DILocalVariable(name: "s", scope: !247, file: !1, line: 118, type: !111)
!252 = !DILocalVariable(name: "i", scope: !253, file: !1, line: 120, type: !256)
!253 = distinct !DILexicalBlock(scope: !254, file: !1, line: 119, column: 49)
!254 = distinct !DILexicalBlock(scope: !255, file: !1, line: 119, column: 13)
!255 = distinct !DILexicalBlock(scope: !247, file: !1, line: 119, column: 13)
!256 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!257 = !DILocalVariable(name: "n", scope: !253, file: !1, line: 121, type: !258)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!259 = !DILocalVariable(name: "position", scope: !260, file: !1, line: 136, type: !70)
!260 = distinct !DILexicalBlock(scope: !242, file: !1, line: 135, column: 9)
!261 = !DILocalVariable(name: "s", scope: !260, file: !1, line: 137, type: !70)
!262 = !DILocalVariable(name: "unroll", scope: !260, file: !1, line: 138, type: !244)
!263 = !DILocalVariable(name: "u", scope: !264, file: !1, line: 141, type: !70)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 140, column: 61)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 140, column: 13)
!266 = distinct !DILexicalBlock(scope: !260, file: !1, line: 140, column: 13)
!267 = !DILocalVariable(name: "uPosition", scope: !268, file: !1, line: 143, type: !244)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 142, column: 46)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 142, column: 17)
!270 = distinct !DILexicalBlock(scope: !264, file: !1, line: 142, column: 17)
!271 = !DILocalVariable(name: "tableMask", scope: !272, file: !1, line: 151, type: !232)
!272 = distinct !DILexicalBlock(scope: !243, file: !1, line: 150, column: 12)
!273 = !DILocalVariable(name: "step", scope: !272, file: !1, line: 152, type: !232)
!274 = !DILocalVariable(name: "s", scope: !272, file: !1, line: 153, type: !111)
!275 = !DILocalVariable(name: "position", scope: !272, file: !1, line: 153, type: !111)
!276 = !DILocalVariable(name: "i", scope: !277, file: !1, line: 155, type: !256)
!277 = distinct !DILexicalBlock(scope: !278, file: !1, line: 154, column: 34)
!278 = distinct !DILexicalBlock(scope: !279, file: !1, line: 154, column: 9)
!279 = distinct !DILexicalBlock(scope: !272, file: !1, line: 154, column: 9)
!280 = !DILocalVariable(name: "u", scope: !281, file: !1, line: 165, type: !111)
!281 = distinct !DILexicalBlock(scope: !217, file: !1, line: 165, column: 5)
!282 = !DILocalVariable(name: "symbol", scope: !283, file: !1, line: 167, type: !110)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 166, column: 37)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 166, column: 9)
!285 = distinct !DILexicalBlock(scope: !281, file: !1, line: 166, column: 9)
!286 = !DILocalVariable(name: "nextState", scope: !283, file: !1, line: 168, type: !232)
!287 = !DILocation(line: 71, column: 52, scope: !217)
!288 = !DILocation(line: 71, column: 69, scope: !217)
!289 = !DILocation(line: 71, column: 97, scope: !217)
!290 = !DILocation(line: 71, column: 122, scope: !217)
!291 = !DILocation(line: 71, column: 138, scope: !217)
!292 = !DILocation(line: 71, column: 156, scope: !217)
!293 = !DILocation(line: 73, column: 5, scope: !217)
!294 = !DILocation(line: 73, column: 17, scope: !217)
!295 = !DILocation(line: 73, column: 25, scope: !217)
!296 = !DILocation(line: 73, column: 27, scope: !217)
!297 = !DILocation(line: 74, column: 5, scope: !217)
!298 = !DILocation(line: 74, column: 28, scope: !217)
!299 = !DILocation(line: 74, column: 62, scope: !217)
!300 = !DILocation(line: 75, column: 5, scope: !217)
!301 = !DILocation(line: 75, column: 10, scope: !217)
!302 = !DILocation(line: 75, column: 29, scope: !217)
!303 = !DILocation(line: 76, column: 5, scope: !217)
!304 = !DILocation(line: 76, column: 11, scope: !217)
!305 = !DILocation(line: 76, column: 28, scope: !217)
!306 = !DILocation(line: 76, column: 41, scope: !217)
!307 = !DILocation(line: 76, column: 39, scope: !217)
!308 = !DILocation(line: 76, column: 56, scope: !217)
!309 = !DILocation(line: 78, column: 5, scope: !217)
!310 = !DILocation(line: 78, column: 15, scope: !217)
!311 = !DILocation(line: 78, column: 24, scope: !217)
!312 = !DILocation(line: 78, column: 39, scope: !217)
!313 = !DILocation(line: 79, column: 5, scope: !217)
!314 = !DILocation(line: 79, column: 15, scope: !217)
!315 = !DILocation(line: 79, column: 32, scope: !217)
!316 = !DILocation(line: 79, column: 29, scope: !217)
!317 = !DILocation(line: 80, column: 5, scope: !217)
!318 = !DILocation(line: 80, column: 9, scope: !217)
!319 = !DILocation(line: 80, column: 25, scope: !217)
!320 = !DILocation(line: 80, column: 34, scope: !217)
!321 = !DILocation(line: 83, column: 9, scope: !322)
!322 = distinct !DILexicalBlock(scope: !217, file: !1, line: 83, column: 9)
!323 = !DILocation(line: 83, column: 64, scope: !322)
!324 = !DILocation(line: 83, column: 62, scope: !322)
!325 = !DILocation(line: 83, column: 9, scope: !217)
!326 = !DILocation(line: 83, column: 74, scope: !322)
!327 = !DILocation(line: 84, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !217, file: !1, line: 84, column: 9)
!329 = !DILocation(line: 84, column: 24, scope: !328)
!330 = !DILocation(line: 84, column: 9, scope: !217)
!331 = !DILocation(line: 84, column: 48, scope: !328)
!332 = !DILocation(line: 85, column: 9, scope: !333)
!333 = distinct !DILexicalBlock(scope: !217, file: !1, line: 85, column: 9)
!334 = !DILocation(line: 85, column: 18, scope: !333)
!335 = !DILocation(line: 85, column: 9, scope: !217)
!336 = !DILocation(line: 85, column: 38, scope: !333)
!337 = !DILocation(line: 88, column: 9, scope: !236)
!338 = !DILocation(line: 88, column: 26, scope: !236)
!339 = !DILocation(line: 89, column: 33, scope: !236)
!340 = !DILocation(line: 89, column: 28, scope: !236)
!341 = !DILocation(line: 89, column: 17, scope: !236)
!342 = !DILocation(line: 89, column: 26, scope: !236)
!343 = !DILocation(line: 90, column: 17, scope: !236)
!344 = !DILocation(line: 90, column: 26, scope: !236)
!345 = !DILocation(line: 91, column: 13, scope: !238)
!346 = !DILocation(line: 91, column: 23, scope: !238)
!347 = !DILocation(line: 91, column: 47, scope: !238)
!348 = !DILocation(line: 91, column: 55, scope: !238)
!349 = !DILocation(line: 91, column: 43, scope: !238)
!350 = !DILocation(line: 91, column: 35, scope: !238)
!351 = !DILocation(line: 92, column: 13, scope: !238)
!352 = !DILocation(line: 92, column: 17, scope: !238)
!353 = !DILocation(line: 93, column: 19, scope: !354)
!354 = distinct !DILexicalBlock(scope: !238, file: !1, line: 93, column: 13)
!355 = !DILocation(line: 93, column: 18, scope: !354)
!356 = !DILocation(line: 93, column: 23, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !1, line: 93, column: 13)
!358 = !DILocation(line: 93, column: 25, scope: !357)
!359 = !DILocation(line: 93, column: 24, scope: !357)
!360 = !DILocation(line: 93, column: 13, scope: !354)
!361 = !DILocation(line: 94, column: 21, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 94, column: 21)
!363 = distinct !DILexicalBlock(scope: !357, file: !1, line: 93, column: 38)
!364 = !DILocation(line: 94, column: 39, scope: !362)
!365 = !DILocation(line: 94, column: 41, scope: !362)
!366 = !DILocation(line: 94, column: 21, scope: !363)
!367 = !DILocation(line: 95, column: 78, scope: !368)
!368 = distinct !DILexicalBlock(scope: !362, file: !1, line: 94, column: 47)
!369 = !DILocation(line: 95, column: 59, scope: !368)
!370 = !DILocation(line: 95, column: 21, scope: !368)
!371 = !DILocation(line: 95, column: 46, scope: !368)
!372 = !DILocation(line: 95, column: 50, scope: !368)
!373 = !DILocation(line: 95, column: 57, scope: !368)
!374 = !DILocation(line: 96, column: 21, scope: !368)
!375 = !DILocation(line: 96, column: 32, scope: !368)
!376 = !DILocation(line: 96, column: 35, scope: !368)
!377 = !DILocation(line: 97, column: 17, scope: !368)
!378 = !DILocation(line: 98, column: 25, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !1, line: 98, column: 25)
!380 = distinct !DILexicalBlock(scope: !362, file: !1, line: 97, column: 24)
!381 = !DILocation(line: 98, column: 43, scope: !379)
!382 = !DILocation(line: 98, column: 49, scope: !379)
!383 = !DILocation(line: 98, column: 46, scope: !379)
!384 = !DILocation(line: 98, column: 25, scope: !380)
!385 = !DILocation(line: 98, column: 69, scope: !379)
!386 = !DILocation(line: 98, column: 77, scope: !379)
!387 = !DILocation(line: 98, column: 61, scope: !379)
!388 = !DILocation(line: 99, column: 37, scope: !380)
!389 = !DILocation(line: 99, column: 55, scope: !380)
!390 = !DILocation(line: 99, column: 21, scope: !380)
!391 = !DILocation(line: 99, column: 32, scope: !380)
!392 = !DILocation(line: 99, column: 35, scope: !380)
!393 = !DILocation(line: 100, column: 13, scope: !363)
!394 = !DILocation(line: 93, column: 34, scope: !357)
!395 = !DILocation(line: 93, column: 13, scope: !357)
!396 = distinct !{!396, !360, !397, !398, !399}
!397 = !DILocation(line: 100, column: 13, scope: !354)
!398 = !{!"llvm.loop.mustprogress"}
!399 = !{!"llvm.loop.unroll.disable"}
!400 = !DILocation(line: 100, column: 17, scope: !236)
!401 = !DILocation(line: 101, column: 9, scope: !236)
!402 = !DILocation(line: 102, column: 5, scope: !217)
!403 = !DILocation(line: 105, column: 9, scope: !243)
!404 = !DILocation(line: 105, column: 26, scope: !243)
!405 = !DILocation(line: 105, column: 36, scope: !243)
!406 = !DILocation(line: 105, column: 23, scope: !243)
!407 = !DILocation(line: 105, column: 9, scope: !217)
!408 = !DILocation(line: 106, column: 9, scope: !242)
!409 = !DILocation(line: 106, column: 22, scope: !242)
!410 = !DILocation(line: 106, column: 34, scope: !242)
!411 = !DILocation(line: 106, column: 43, scope: !242)
!412 = !DILocation(line: 107, column: 9, scope: !242)
!413 = !DILocation(line: 107, column: 22, scope: !242)
!414 = !DILocation(line: 107, column: 29, scope: !242)
!415 = !DILocation(line: 115, column: 13, scope: !247)
!416 = !DILocation(line: 115, column: 23, scope: !247)
!417 = !DILocation(line: 116, column: 13, scope: !247)
!418 = !DILocation(line: 116, column: 20, scope: !247)
!419 = !DILocation(line: 117, column: 13, scope: !247)
!420 = !DILocation(line: 117, column: 17, scope: !247)
!421 = !DILocation(line: 118, column: 13, scope: !247)
!422 = !DILocation(line: 118, column: 17, scope: !247)
!423 = !DILocation(line: 119, column: 19, scope: !255)
!424 = !DILocation(line: 119, column: 18, scope: !255)
!425 = !DILocation(line: 119, column: 23, scope: !254)
!426 = !DILocation(line: 119, column: 25, scope: !254)
!427 = !DILocation(line: 119, column: 24, scope: !254)
!428 = !DILocation(line: 119, column: 13, scope: !255)
!429 = !DILocation(line: 120, column: 17, scope: !253)
!430 = !DILocation(line: 120, column: 21, scope: !253)
!431 = !DILocation(line: 121, column: 17, scope: !253)
!432 = !DILocation(line: 121, column: 27, scope: !253)
!433 = !DILocation(line: 121, column: 31, scope: !253)
!434 = !DILocation(line: 121, column: 49, scope: !253)
!435 = !DILocation(line: 122, column: 29, scope: !253)
!436 = !DILocation(line: 122, column: 38, scope: !253)
!437 = !DILocation(line: 122, column: 36, scope: !253)
!438 = !DILocation(line: 122, column: 43, scope: !253)
!439 = !DILocation(line: 122, column: 17, scope: !253)
!440 = !DILocation(line: 123, column: 24, scope: !441)
!441 = distinct !DILexicalBlock(scope: !253, file: !1, line: 123, column: 17)
!442 = !DILocation(line: 123, column: 22, scope: !441)
!443 = !DILocation(line: 123, column: 29, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !1, line: 123, column: 17)
!445 = !DILocation(line: 123, column: 33, scope: !444)
!446 = !DILocation(line: 123, column: 31, scope: !444)
!447 = !DILocation(line: 123, column: 17, scope: !441)
!448 = !DILocation(line: 124, column: 33, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !1, line: 123, column: 44)
!450 = !DILocation(line: 124, column: 42, scope: !449)
!451 = !DILocation(line: 124, column: 40, scope: !449)
!452 = !DILocation(line: 124, column: 48, scope: !449)
!453 = !DILocation(line: 124, column: 46, scope: !449)
!454 = !DILocation(line: 124, column: 51, scope: !449)
!455 = !DILocation(line: 124, column: 21, scope: !449)
!456 = !DILocation(line: 125, column: 17, scope: !449)
!457 = !DILocation(line: 123, column: 38, scope: !444)
!458 = !DILocation(line: 123, column: 17, scope: !444)
!459 = distinct !{!459, !447, !460, !398, !399}
!460 = !DILocation(line: 125, column: 17, scope: !441)
!461 = !DILocation(line: 126, column: 24, scope: !253)
!462 = !DILocation(line: 126, column: 21, scope: !253)
!463 = !DILocation(line: 127, column: 13, scope: !254)
!464 = !DILocation(line: 127, column: 13, scope: !253)
!465 = !DILocation(line: 119, column: 33, scope: !254)
!466 = !DILocation(line: 119, column: 41, scope: !254)
!467 = !DILocation(line: 119, column: 13, scope: !254)
!468 = distinct !{!468, !428, !469, !398, !399}
!469 = !DILocation(line: 127, column: 13, scope: !255)
!470 = !DILocation(line: 128, column: 9, scope: !242)
!471 = !DILocation(line: 136, column: 13, scope: !260)
!472 = !DILocation(line: 136, column: 20, scope: !260)
!473 = !DILocation(line: 137, column: 13, scope: !260)
!474 = !DILocation(line: 137, column: 20, scope: !260)
!475 = !DILocation(line: 138, column: 13, scope: !260)
!476 = !DILocation(line: 138, column: 26, scope: !260)
!477 = !DILocation(line: 140, column: 20, scope: !266)
!478 = !DILocation(line: 140, column: 18, scope: !266)
!479 = !DILocation(line: 140, column: 25, scope: !265)
!480 = !DILocation(line: 140, column: 37, scope: !265)
!481 = !DILocation(line: 140, column: 29, scope: !265)
!482 = !DILocation(line: 140, column: 27, scope: !265)
!483 = !DILocation(line: 140, column: 13, scope: !266)
!484 = !DILocation(line: 141, column: 17, scope: !264)
!485 = !DILocation(line: 141, column: 24, scope: !264)
!486 = !DILocation(line: 142, column: 24, scope: !270)
!487 = !DILocation(line: 142, column: 22, scope: !270)
!488 = !DILocation(line: 142, column: 29, scope: !269)
!489 = !DILocation(line: 142, column: 31, scope: !269)
!490 = !DILocation(line: 142, column: 17, scope: !270)
!491 = !DILocation(line: 143, column: 21, scope: !268)
!492 = !DILocation(line: 143, column: 34, scope: !268)
!493 = !DILocation(line: 143, column: 47, scope: !268)
!494 = !DILocation(line: 143, column: 59, scope: !268)
!495 = !DILocation(line: 143, column: 63, scope: !268)
!496 = !DILocation(line: 143, column: 61, scope: !268)
!497 = !DILocation(line: 143, column: 56, scope: !268)
!498 = !DILocation(line: 143, column: 72, scope: !268)
!499 = !DILocation(line: 143, column: 70, scope: !268)
!500 = !DILocation(line: 144, column: 53, scope: !268)
!501 = !DILocation(line: 144, column: 60, scope: !268)
!502 = !DILocation(line: 144, column: 64, scope: !268)
!503 = !DILocation(line: 144, column: 62, scope: !268)
!504 = !DILocation(line: 144, column: 21, scope: !268)
!505 = !DILocation(line: 144, column: 33, scope: !268)
!506 = !DILocation(line: 144, column: 44, scope: !268)
!507 = !DILocation(line: 144, column: 51, scope: !268)
!508 = !DILocation(line: 145, column: 17, scope: !269)
!509 = !DILocation(line: 145, column: 17, scope: !268)
!510 = !DILocation(line: 142, column: 41, scope: !269)
!511 = !DILocation(line: 142, column: 17, scope: !269)
!512 = distinct !{!512, !490, !513, !398, !399}
!513 = !DILocation(line: 145, column: 17, scope: !270)
!514 = !DILocation(line: 146, column: 29, scope: !264)
!515 = !DILocation(line: 146, column: 50, scope: !264)
!516 = !DILocation(line: 146, column: 48, scope: !264)
!517 = !DILocation(line: 146, column: 38, scope: !264)
!518 = !DILocation(line: 146, column: 59, scope: !264)
!519 = !DILocation(line: 146, column: 57, scope: !264)
!520 = !DILocation(line: 146, column: 26, scope: !264)
!521 = !DILocation(line: 147, column: 13, scope: !265)
!522 = !DILocation(line: 147, column: 13, scope: !264)
!523 = !DILocation(line: 140, column: 50, scope: !265)
!524 = !DILocation(line: 140, column: 13, scope: !265)
!525 = distinct !{!525, !483, !526, !398, !399}
!526 = !DILocation(line: 147, column: 13, scope: !266)
!527 = !DILocation(line: 149, column: 9, scope: !242)
!528 = !DILocation(line: 150, column: 5, scope: !243)
!529 = !DILocation(line: 150, column: 5, scope: !242)
!530 = !DILocation(line: 151, column: 9, scope: !272)
!531 = !DILocation(line: 151, column: 19, scope: !272)
!532 = !DILocation(line: 151, column: 31, scope: !272)
!533 = !DILocation(line: 151, column: 40, scope: !272)
!534 = !DILocation(line: 152, column: 9, scope: !272)
!535 = !DILocation(line: 152, column: 19, scope: !272)
!536 = !DILocation(line: 152, column: 26, scope: !272)
!537 = !DILocation(line: 153, column: 9, scope: !272)
!538 = !DILocation(line: 153, column: 13, scope: !272)
!539 = !DILocation(line: 153, column: 16, scope: !272)
!540 = !DILocation(line: 154, column: 15, scope: !279)
!541 = !DILocation(line: 154, column: 14, scope: !279)
!542 = !DILocation(line: 154, column: 19, scope: !278)
!543 = !DILocation(line: 154, column: 21, scope: !278)
!544 = !DILocation(line: 154, column: 20, scope: !278)
!545 = !DILocation(line: 154, column: 9, scope: !279)
!546 = !DILocation(line: 155, column: 13, scope: !277)
!547 = !DILocation(line: 155, column: 17, scope: !277)
!548 = !DILocation(line: 156, column: 19, scope: !549)
!549 = distinct !DILexicalBlock(scope: !277, file: !1, line: 156, column: 13)
!550 = !DILocation(line: 156, column: 18, scope: !549)
!551 = !DILocation(line: 156, column: 23, scope: !552)
!552 = distinct !DILexicalBlock(scope: !549, file: !1, line: 156, column: 13)
!553 = !DILocation(line: 156, column: 25, scope: !552)
!554 = !DILocation(line: 156, column: 43, scope: !552)
!555 = !DILocation(line: 156, column: 24, scope: !552)
!556 = !DILocation(line: 156, column: 13, scope: !549)
!557 = !DILocation(line: 157, column: 67, scope: !558)
!558 = distinct !DILexicalBlock(scope: !552, file: !1, line: 156, column: 52)
!559 = !DILocation(line: 157, column: 48, scope: !558)
!560 = !DILocation(line: 157, column: 17, scope: !558)
!561 = !DILocation(line: 157, column: 29, scope: !558)
!562 = !DILocation(line: 157, column: 39, scope: !558)
!563 = !DILocation(line: 157, column: 46, scope: !558)
!564 = !DILocation(line: 158, column: 29, scope: !558)
!565 = !DILocation(line: 158, column: 40, scope: !558)
!566 = !DILocation(line: 158, column: 38, scope: !558)
!567 = !DILocation(line: 158, column: 48, scope: !558)
!568 = !DILocation(line: 158, column: 46, scope: !558)
!569 = !DILocation(line: 158, column: 26, scope: !558)
!570 = !DILocation(line: 159, column: 17, scope: !558)
!571 = !DILocation(line: 159, column: 24, scope: !558)
!572 = !DILocation(line: 159, column: 35, scope: !558)
!573 = !DILocation(line: 159, column: 33, scope: !558)
!574 = !DILocation(line: 159, column: 62, scope: !558)
!575 = !DILocation(line: 159, column: 73, scope: !558)
!576 = !DILocation(line: 159, column: 71, scope: !558)
!577 = !DILocation(line: 159, column: 81, scope: !558)
!578 = !DILocation(line: 159, column: 79, scope: !558)
!579 = !DILocation(line: 159, column: 59, scope: !558)
!580 = distinct !{!580, !570, !577, !398, !399}
!581 = !DILocation(line: 160, column: 9, scope: !558)
!582 = !DILocation(line: 156, column: 48, scope: !552)
!583 = !DILocation(line: 156, column: 13, scope: !552)
!584 = distinct !{!584, !556, !585, !398, !399}
!585 = !DILocation(line: 160, column: 9, scope: !549)
!586 = !DILocation(line: 160, column: 13, scope: !278)
!587 = !DILocation(line: 160, column: 13, scope: !277)
!588 = !DILocation(line: 154, column: 30, scope: !278)
!589 = !DILocation(line: 154, column: 9, scope: !278)
!590 = distinct !{!590, !545, !591, !398, !399}
!591 = !DILocation(line: 160, column: 13, scope: !279)
!592 = !DILocation(line: 161, column: 13, scope: !593)
!593 = distinct !DILexicalBlock(scope: !272, file: !1, line: 161, column: 13)
!594 = !DILocation(line: 161, column: 21, scope: !593)
!595 = !DILocation(line: 161, column: 13, scope: !272)
!596 = !DILocation(line: 161, column: 26, scope: !593)
!597 = !DILocation(line: 162, column: 5, scope: !243)
!598 = !DILocation(line: 165, column: 9, scope: !281)
!599 = !DILocation(line: 165, column: 13, scope: !281)
!600 = !DILocation(line: 166, column: 15, scope: !285)
!601 = !DILocation(line: 166, column: 14, scope: !285)
!602 = !DILocation(line: 166, column: 19, scope: !284)
!603 = !DILocation(line: 166, column: 21, scope: !284)
!604 = !DILocation(line: 166, column: 20, scope: !284)
!605 = !DILocation(line: 166, column: 9, scope: !285)
!606 = !DILocation(line: 167, column: 13, scope: !283)
!607 = !DILocation(line: 167, column: 37, scope: !283)
!608 = !DILocation(line: 167, column: 66, scope: !283)
!609 = !DILocation(line: 167, column: 78, scope: !283)
!610 = !DILocation(line: 167, column: 81, scope: !283)
!611 = !DILocation(line: 168, column: 13, scope: !283)
!612 = !DILocation(line: 168, column: 23, scope: !283)
!613 = !DILocation(line: 168, column: 35, scope: !283)
!614 = !DILocation(line: 168, column: 46, scope: !283)
!615 = !DILocation(line: 168, column: 53, scope: !283)
!616 = !DILocation(line: 169, column: 45, scope: !283)
!617 = !DILocation(line: 169, column: 70, scope: !283)
!618 = !DILocation(line: 169, column: 56, scope: !283)
!619 = !DILocation(line: 169, column: 54, scope: !283)
!620 = !DILocation(line: 169, column: 37, scope: !283)
!621 = !DILocation(line: 169, column: 13, scope: !283)
!622 = !DILocation(line: 169, column: 25, scope: !283)
!623 = !DILocation(line: 169, column: 28, scope: !283)
!624 = !DILocation(line: 169, column: 35, scope: !283)
!625 = !DILocation(line: 170, column: 48, scope: !283)
!626 = !DILocation(line: 170, column: 61, scope: !283)
!627 = !DILocation(line: 170, column: 73, scope: !283)
!628 = !DILocation(line: 170, column: 76, scope: !283)
!629 = !DILocation(line: 170, column: 58, scope: !283)
!630 = !DILocation(line: 170, column: 86, scope: !283)
!631 = !DILocation(line: 170, column: 84, scope: !283)
!632 = !DILocation(line: 170, column: 39, scope: !283)
!633 = !DILocation(line: 170, column: 13, scope: !283)
!634 = !DILocation(line: 170, column: 25, scope: !283)
!635 = !DILocation(line: 170, column: 28, scope: !283)
!636 = !DILocation(line: 170, column: 37, scope: !283)
!637 = !DILocation(line: 171, column: 5, scope: !284)
!638 = !DILocation(line: 171, column: 5, scope: !283)
!639 = !DILocation(line: 166, column: 33, scope: !284)
!640 = !DILocation(line: 166, column: 9, scope: !284)
!641 = distinct !{!641, !605, !642, !398, !399}
!642 = !DILocation(line: 171, column: 5, scope: !285)
!643 = !DILocation(line: 171, column: 9, scope: !217)
!644 = !DILocation(line: 173, column: 5, scope: !217)
!645 = !DILocation(line: 174, column: 1, scope: !217)
!646 = distinct !DISubprogram(name: "FSE_buildDTable_rle", scope: !1, file: !1, line: 187, type: !647, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{!70, !43, !75}
!649 = !{!650, !651, !652, !653, !655, !656}
!650 = !DILocalVariable(name: "dt", arg: 1, scope: !646, file: !1, line: 187, type: !43)
!651 = !DILocalVariable(name: "symbolValue", arg: 2, scope: !646, file: !1, line: 187, type: !75)
!652 = !DILocalVariable(name: "ptr", scope: !646, file: !1, line: 189, type: !46)
!653 = !DILocalVariable(name: "DTableH", scope: !646, file: !1, line: 190, type: !654)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!655 = !DILocalVariable(name: "dPtr", scope: !646, file: !1, line: 191, type: !46)
!656 = !DILocalVariable(name: "cell", scope: !646, file: !1, line: 192, type: !228)
!657 = !DILocation(line: 187, column: 41, scope: !646)
!658 = !DILocation(line: 187, column: 50, scope: !646)
!659 = !DILocation(line: 189, column: 5, scope: !646)
!660 = !DILocation(line: 189, column: 11, scope: !646)
!661 = !DILocation(line: 189, column: 17, scope: !646)
!662 = !DILocation(line: 190, column: 5, scope: !646)
!663 = !DILocation(line: 190, column: 29, scope: !646)
!664 = !DILocation(line: 190, column: 58, scope: !646)
!665 = !DILocation(line: 191, column: 5, scope: !646)
!666 = !DILocation(line: 191, column: 11, scope: !646)
!667 = !DILocation(line: 191, column: 18, scope: !646)
!668 = !DILocation(line: 191, column: 21, scope: !646)
!669 = !DILocation(line: 192, column: 5, scope: !646)
!670 = !DILocation(line: 192, column: 25, scope: !646)
!671 = !DILocation(line: 192, column: 47, scope: !646)
!672 = !DILocation(line: 194, column: 5, scope: !646)
!673 = !DILocation(line: 194, column: 14, scope: !646)
!674 = !DILocation(line: 194, column: 23, scope: !646)
!675 = !DILocation(line: 195, column: 5, scope: !646)
!676 = !DILocation(line: 195, column: 14, scope: !646)
!677 = !DILocation(line: 195, column: 23, scope: !646)
!678 = !DILocation(line: 197, column: 5, scope: !646)
!679 = !DILocation(line: 197, column: 11, scope: !646)
!680 = !DILocation(line: 197, column: 20, scope: !646)
!681 = !DILocation(line: 198, column: 20, scope: !646)
!682 = !DILocation(line: 198, column: 5, scope: !646)
!683 = !DILocation(line: 198, column: 11, scope: !646)
!684 = !DILocation(line: 198, column: 18, scope: !646)
!685 = !DILocation(line: 199, column: 5, scope: !646)
!686 = !DILocation(line: 199, column: 11, scope: !646)
!687 = !DILocation(line: 199, column: 18, scope: !646)
!688 = !DILocation(line: 202, column: 1, scope: !646)
!689 = !DILocation(line: 201, column: 5, scope: !646)
!690 = distinct !DISubprogram(name: "FSE_buildDTable_raw", scope: !1, file: !1, line: 205, type: !691, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !693)
!691 = !DISubroutineType(types: !692)
!692 = !{!70, !43, !5}
!693 = !{!694, !695, !696, !697, !698, !699, !700, !702, !703, !704}
!694 = !DILocalVariable(name: "dt", arg: 1, scope: !690, file: !1, line: 205, type: !43)
!695 = !DILocalVariable(name: "nbBits", arg: 2, scope: !690, file: !1, line: 205, type: !5)
!696 = !DILocalVariable(name: "ptr", scope: !690, file: !1, line: 207, type: !46)
!697 = !DILocalVariable(name: "DTableH", scope: !690, file: !1, line: 208, type: !654)
!698 = !DILocalVariable(name: "dPtr", scope: !690, file: !1, line: 209, type: !46)
!699 = !DILocalVariable(name: "dinfo", scope: !690, file: !1, line: 210, type: !228)
!700 = !DILocalVariable(name: "tableSize", scope: !690, file: !1, line: 211, type: !701)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!702 = !DILocalVariable(name: "tableMask", scope: !690, file: !1, line: 212, type: !701)
!703 = !DILocalVariable(name: "maxSV1", scope: !690, file: !1, line: 213, type: !701)
!704 = !DILocalVariable(name: "s", scope: !690, file: !1, line: 214, type: !5)
!705 = !DILocation(line: 205, column: 41, scope: !690)
!706 = !DILocation(line: 205, column: 54, scope: !690)
!707 = !DILocation(line: 207, column: 5, scope: !690)
!708 = !DILocation(line: 207, column: 11, scope: !690)
!709 = !DILocation(line: 207, column: 17, scope: !690)
!710 = !DILocation(line: 208, column: 5, scope: !690)
!711 = !DILocation(line: 208, column: 29, scope: !690)
!712 = !DILocation(line: 208, column: 58, scope: !690)
!713 = !DILocation(line: 209, column: 5, scope: !690)
!714 = !DILocation(line: 209, column: 11, scope: !690)
!715 = !DILocation(line: 209, column: 18, scope: !690)
!716 = !DILocation(line: 209, column: 21, scope: !690)
!717 = !DILocation(line: 210, column: 5, scope: !690)
!718 = !DILocation(line: 210, column: 25, scope: !690)
!719 = !DILocation(line: 210, column: 48, scope: !690)
!720 = !DILocation(line: 211, column: 5, scope: !690)
!721 = !DILocation(line: 211, column: 20, scope: !690)
!722 = !DILocation(line: 211, column: 37, scope: !690)
!723 = !DILocation(line: 211, column: 34, scope: !690)
!724 = !DILocation(line: 212, column: 5, scope: !690)
!725 = !DILocation(line: 212, column: 20, scope: !690)
!726 = !DILocation(line: 212, column: 32, scope: !690)
!727 = !DILocation(line: 212, column: 42, scope: !690)
!728 = !DILocation(line: 213, column: 5, scope: !690)
!729 = !DILocation(line: 213, column: 20, scope: !690)
!730 = !DILocation(line: 213, column: 29, scope: !690)
!731 = !DILocation(line: 213, column: 38, scope: !690)
!732 = !DILocation(line: 214, column: 5, scope: !690)
!733 = !DILocation(line: 214, column: 14, scope: !690)
!734 = !DILocation(line: 217, column: 9, scope: !735)
!735 = distinct !DILexicalBlock(scope: !690, file: !1, line: 217, column: 9)
!736 = !DILocation(line: 217, column: 16, scope: !735)
!737 = !DILocation(line: 217, column: 9, scope: !690)
!738 = !DILocation(line: 217, column: 21, scope: !735)
!739 = !DILocation(line: 220, column: 30, scope: !690)
!740 = !DILocation(line: 220, column: 25, scope: !690)
!741 = !DILocation(line: 220, column: 5, scope: !690)
!742 = !DILocation(line: 220, column: 14, scope: !690)
!743 = !DILocation(line: 220, column: 23, scope: !690)
!744 = !DILocation(line: 221, column: 5, scope: !690)
!745 = !DILocation(line: 221, column: 14, scope: !690)
!746 = !DILocation(line: 221, column: 23, scope: !690)
!747 = !DILocation(line: 222, column: 11, scope: !748)
!748 = distinct !DILexicalBlock(scope: !690, file: !1, line: 222, column: 5)
!749 = !DILocation(line: 222, column: 10, scope: !748)
!750 = !DILocation(line: 222, column: 15, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !1, line: 222, column: 5)
!752 = !DILocation(line: 222, column: 17, scope: !751)
!753 = !DILocation(line: 222, column: 16, scope: !751)
!754 = !DILocation(line: 222, column: 5, scope: !748)
!755 = !DILocation(line: 223, column: 9, scope: !756)
!756 = distinct !DILexicalBlock(scope: !751, file: !1, line: 222, column: 30)
!757 = !DILocation(line: 223, column: 15, scope: !756)
!758 = !DILocation(line: 223, column: 18, scope: !756)
!759 = !DILocation(line: 223, column: 27, scope: !756)
!760 = !DILocation(line: 224, column: 33, scope: !756)
!761 = !DILocation(line: 224, column: 27, scope: !756)
!762 = !DILocation(line: 224, column: 9, scope: !756)
!763 = !DILocation(line: 224, column: 15, scope: !756)
!764 = !DILocation(line: 224, column: 18, scope: !756)
!765 = !DILocation(line: 224, column: 25, scope: !756)
!766 = !DILocation(line: 225, column: 33, scope: !756)
!767 = !DILocation(line: 225, column: 27, scope: !756)
!768 = !DILocation(line: 225, column: 9, scope: !756)
!769 = !DILocation(line: 225, column: 15, scope: !756)
!770 = !DILocation(line: 225, column: 18, scope: !756)
!771 = !DILocation(line: 225, column: 25, scope: !756)
!772 = !DILocation(line: 226, column: 5, scope: !756)
!773 = !DILocation(line: 222, column: 26, scope: !751)
!774 = !DILocation(line: 222, column: 5, scope: !751)
!775 = distinct !{!775, !754, !776, !398, !399}
!776 = !DILocation(line: 226, column: 5, scope: !748)
!777 = !DILocation(line: 228, column: 5, scope: !690)
!778 = !DILocation(line: 229, column: 1, scope: !690)
!779 = distinct !DISubprogram(name: "FSE_decompress_usingDTable", scope: !1, file: !1, line: 294, type: !780, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !784)
!780 = !DISubroutineType(types: !781)
!781 = !{!70, !46, !70, !124, !70, !782}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792}
!785 = !DILocalVariable(name: "dst", arg: 1, scope: !779, file: !1, line: 294, type: !46)
!786 = !DILocalVariable(name: "originalSize", arg: 2, scope: !779, file: !1, line: 294, type: !70)
!787 = !DILocalVariable(name: "cSrc", arg: 3, scope: !779, file: !1, line: 295, type: !124)
!788 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !779, file: !1, line: 295, type: !70)
!789 = !DILocalVariable(name: "dt", arg: 5, scope: !779, file: !1, line: 296, type: !782)
!790 = !DILocalVariable(name: "ptr", scope: !779, file: !1, line: 298, type: !124)
!791 = !DILocalVariable(name: "DTableH", scope: !779, file: !1, line: 299, type: !79)
!792 = !DILocalVariable(name: "fastMode", scope: !779, file: !1, line: 300, type: !232)
!793 = !DILocation(line: 294, column: 41, scope: !779)
!794 = !DILocation(line: 294, column: 53, scope: !779)
!795 = !DILocation(line: 295, column: 41, scope: !779)
!796 = !DILocation(line: 295, column: 54, scope: !779)
!797 = !DILocation(line: 296, column: 47, scope: !779)
!798 = !DILocation(line: 298, column: 5, scope: !779)
!799 = !DILocation(line: 298, column: 17, scope: !779)
!800 = !DILocation(line: 298, column: 23, scope: !779)
!801 = !DILocation(line: 299, column: 5, scope: !779)
!802 = !DILocation(line: 299, column: 29, scope: !779)
!803 = !DILocation(line: 299, column: 64, scope: !779)
!804 = !DILocation(line: 300, column: 5, scope: !779)
!805 = !DILocation(line: 300, column: 15, scope: !779)
!806 = !DILocation(line: 300, column: 26, scope: !779)
!807 = !DILocation(line: 300, column: 35, scope: !779)
!808 = !DILocation(line: 303, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !779, file: !1, line: 303, column: 9)
!810 = !DILocation(line: 303, column: 9, scope: !779)
!811 = !DILocation(line: 303, column: 61, scope: !809)
!812 = !DILocation(line: 303, column: 66, scope: !809)
!813 = !DILocation(line: 303, column: 80, scope: !809)
!814 = !DILocation(line: 303, column: 86, scope: !809)
!815 = !DILocation(line: 303, column: 96, scope: !809)
!816 = !DILocation(line: 303, column: 26, scope: !809)
!817 = !DILocation(line: 303, column: 19, scope: !809)
!818 = !DILocation(line: 304, column: 47, scope: !779)
!819 = !DILocation(line: 304, column: 52, scope: !779)
!820 = !DILocation(line: 304, column: 66, scope: !779)
!821 = !DILocation(line: 304, column: 72, scope: !779)
!822 = !DILocation(line: 304, column: 82, scope: !779)
!823 = !DILocation(line: 304, column: 12, scope: !779)
!824 = !DILocation(line: 304, column: 5, scope: !779)
!825 = !DILocation(line: 305, column: 1, scope: !779)
!826 = distinct !DISubprogram(name: "FSE_decompress_usingDTable_generic", scope: !1, file: !1, line: 231, type: !827, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !829)
!827 = !DISubroutineType(types: !828)
!828 = !{!70, !46, !70, !124, !70, !782, !701}
!829 = !{!830, !831, !832, !833, !834, !835, !836, !838, !839, !840, !841, !850, !856, !857}
!830 = !DILocalVariable(name: "dst", arg: 1, scope: !826, file: !1, line: 232, type: !46)
!831 = !DILocalVariable(name: "maxDstSize", arg: 2, scope: !826, file: !1, line: 232, type: !70)
!832 = !DILocalVariable(name: "cSrc", arg: 3, scope: !826, file: !1, line: 233, type: !124)
!833 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !826, file: !1, line: 233, type: !70)
!834 = !DILocalVariable(name: "dt", arg: 5, scope: !826, file: !1, line: 234, type: !782)
!835 = !DILocalVariable(name: "fast", arg: 6, scope: !826, file: !1, line: 234, type: !701)
!836 = !DILocalVariable(name: "ostart", scope: !826, file: !1, line: 236, type: !837)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!838 = !DILocalVariable(name: "op", scope: !826, file: !1, line: 237, type: !82)
!839 = !DILocalVariable(name: "omax", scope: !826, file: !1, line: 238, type: !837)
!840 = !DILocalVariable(name: "olimit", scope: !826, file: !1, line: 239, type: !837)
!841 = !DILocalVariable(name: "bitD", scope: !826, file: !1, line: 241, type: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIT_DStream_t", file: !36, line: 88, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 82, size: 320, elements: !844)
!844 = !{!845, !846, !847, !848, !849}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "bitContainer", scope: !843, file: !36, line: 83, baseType: !70, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "bitsConsumed", scope: !843, file: !36, line: 84, baseType: !5, size: 32, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !843, file: !36, line: 85, baseType: !106, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !843, file: !36, line: 86, baseType: !106, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "limitPtr", scope: !843, file: !36, line: 87, baseType: !106, size: 64, offset: 256)
!850 = !DILocalVariable(name: "state1", scope: !826, file: !1, line: 242, type: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSE_DState_t", file: !45, line: 437, baseType: !852)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 434, size: 128, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !852, file: !45, line: 435, baseType: !70, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !852, file: !45, line: 436, baseType: !124, size: 64, offset: 64)
!856 = !DILocalVariable(name: "state2", scope: !826, file: !1, line: 243, type: !851)
!857 = !DILocalVariable(name: "_var_err__", scope: !858, file: !1, line: 246, type: !244)
!858 = distinct !DILexicalBlock(scope: !826, file: !1, line: 246, column: 5)
!859 = !DILocation(line: 232, column: 17, scope: !826)
!860 = !DILocation(line: 232, column: 29, scope: !826)
!861 = !DILocation(line: 233, column: 17, scope: !826)
!862 = !DILocation(line: 233, column: 30, scope: !826)
!863 = !DILocation(line: 234, column: 23, scope: !826)
!864 = !DILocation(line: 234, column: 42, scope: !826)
!865 = !DILocation(line: 236, column: 5, scope: !826)
!866 = !DILocation(line: 236, column: 17, scope: !826)
!867 = !DILocation(line: 236, column: 34, scope: !826)
!868 = !DILocation(line: 237, column: 5, scope: !826)
!869 = !DILocation(line: 237, column: 11, scope: !826)
!870 = !DILocation(line: 237, column: 16, scope: !826)
!871 = !DILocation(line: 238, column: 5, scope: !826)
!872 = !DILocation(line: 238, column: 17, scope: !826)
!873 = !DILocation(line: 238, column: 24, scope: !826)
!874 = !DILocation(line: 238, column: 29, scope: !826)
!875 = !DILocation(line: 238, column: 27, scope: !826)
!876 = !DILocation(line: 239, column: 5, scope: !826)
!877 = !DILocation(line: 239, column: 17, scope: !826)
!878 = !DILocation(line: 239, column: 26, scope: !826)
!879 = !DILocation(line: 239, column: 30, scope: !826)
!880 = !DILocation(line: 241, column: 5, scope: !826)
!881 = !DILocation(line: 241, column: 19, scope: !826)
!882 = !DILocation(line: 242, column: 5, scope: !826)
!883 = !DILocation(line: 242, column: 18, scope: !826)
!884 = !DILocation(line: 243, column: 5, scope: !826)
!885 = !DILocation(line: 243, column: 18, scope: !826)
!886 = !DILocation(line: 246, column: 5, scope: !858)
!887 = !DILocation(line: 246, column: 5, scope: !888)
!888 = distinct !DILexicalBlock(scope: !858, file: !1, line: 246, column: 5)
!889 = !DILocation(line: 246, column: 5, scope: !826)
!890 = !DILocation(line: 248, column: 36, scope: !826)
!891 = !DILocation(line: 248, column: 5, scope: !826)
!892 = !DILocation(line: 249, column: 36, scope: !826)
!893 = !DILocation(line: 249, column: 5, scope: !826)
!894 = !DILocation(line: 254, column: 5, scope: !826)
!895 = !DILocation(line: 254, column: 14, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !1, line: 254, column: 5)
!897 = distinct !DILexicalBlock(scope: !826, file: !1, line: 254, column: 5)
!898 = !DILocation(line: 254, column: 38, scope: !896)
!899 = !DILocation(line: 254, column: 67, scope: !896)
!900 = !DILocation(line: 254, column: 70, scope: !896)
!901 = !DILocation(line: 254, column: 69, scope: !896)
!902 = !DILocation(line: 254, column: 64, scope: !896)
!903 = !DILocation(line: 254, column: 5, scope: !897)
!904 = !DILocation(line: 255, column: 17, scope: !905)
!905 = distinct !DILexicalBlock(scope: !896, file: !1, line: 254, column: 87)
!906 = !DILocation(line: 255, column: 9, scope: !905)
!907 = !DILocation(line: 255, column: 15, scope: !905)
!908 = !DILocation(line: 260, column: 17, scope: !905)
!909 = !DILocation(line: 260, column: 9, scope: !905)
!910 = !DILocation(line: 260, column: 15, scope: !905)
!911 = !DILocation(line: 265, column: 17, scope: !905)
!912 = !DILocation(line: 265, column: 9, scope: !905)
!913 = !DILocation(line: 265, column: 15, scope: !905)
!914 = !DILocation(line: 270, column: 17, scope: !905)
!915 = !DILocation(line: 270, column: 9, scope: !905)
!916 = !DILocation(line: 270, column: 15, scope: !905)
!917 = !DILocation(line: 271, column: 5, scope: !905)
!918 = !DILocation(line: 254, column: 82, scope: !896)
!919 = !DILocation(line: 254, column: 5, scope: !896)
!920 = distinct !{!920, !903, !921, !398, !399}
!921 = !DILocation(line: 271, column: 5, scope: !897)
!922 = !DILocation(line: 275, column: 5, scope: !826)
!923 = !DILocation(line: 276, column: 13, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !1, line: 276, column: 13)
!925 = distinct !DILexicalBlock(scope: !826, file: !1, line: 275, column: 15)
!926 = !DILocation(line: 276, column: 17, scope: !924)
!927 = !DILocation(line: 276, column: 21, scope: !924)
!928 = !DILocation(line: 276, column: 15, scope: !924)
!929 = !DILocation(line: 276, column: 13, scope: !925)
!930 = !DILocation(line: 276, column: 26, scope: !924)
!931 = !DILocation(line: 277, column: 17, scope: !925)
!932 = !DILocation(line: 277, column: 12, scope: !925)
!933 = !DILocation(line: 277, column: 15, scope: !925)
!934 = !DILocation(line: 278, column: 13, scope: !935)
!935 = distinct !DILexicalBlock(scope: !925, file: !1, line: 278, column: 13)
!936 = !DILocation(line: 278, column: 37, scope: !935)
!937 = !DILocation(line: 278, column: 13, scope: !925)
!938 = !DILocation(line: 279, column: 21, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !1, line: 278, column: 61)
!940 = !DILocation(line: 279, column: 16, scope: !939)
!941 = !DILocation(line: 279, column: 19, scope: !939)
!942 = !DILocation(line: 280, column: 13, scope: !939)
!943 = !DILocation(line: 283, column: 13, scope: !944)
!944 = distinct !DILexicalBlock(scope: !925, file: !1, line: 283, column: 13)
!945 = !DILocation(line: 283, column: 17, scope: !944)
!946 = !DILocation(line: 283, column: 21, scope: !944)
!947 = !DILocation(line: 283, column: 15, scope: !944)
!948 = !DILocation(line: 283, column: 13, scope: !925)
!949 = !DILocation(line: 283, column: 26, scope: !944)
!950 = !DILocation(line: 284, column: 17, scope: !925)
!951 = !DILocation(line: 284, column: 12, scope: !925)
!952 = !DILocation(line: 284, column: 15, scope: !925)
!953 = !DILocation(line: 285, column: 13, scope: !954)
!954 = distinct !DILexicalBlock(scope: !925, file: !1, line: 285, column: 13)
!955 = !DILocation(line: 285, column: 37, scope: !954)
!956 = !DILocation(line: 285, column: 13, scope: !925)
!957 = !DILocation(line: 286, column: 21, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !1, line: 285, column: 61)
!959 = !DILocation(line: 286, column: 16, scope: !958)
!960 = !DILocation(line: 286, column: 19, scope: !958)
!961 = !DILocation(line: 287, column: 13, scope: !958)
!962 = distinct !{!962, !922, !963, !399}
!963 = !DILocation(line: 288, column: 9, scope: !826)
!964 = !DILocation(line: 290, column: 12, scope: !826)
!965 = !DILocation(line: 290, column: 15, scope: !826)
!966 = !DILocation(line: 290, column: 14, scope: !826)
!967 = !DILocation(line: 290, column: 5, scope: !826)
!968 = !DILocation(line: 291, column: 1, scope: !826)
!969 = distinct !DISubprogram(name: "FSE_decompress_wksp", scope: !1, file: !1, line: 308, type: !970, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{!70, !46, !70, !124, !70, !5, !46, !70}
!972 = !{!973, !974, !975, !976, !977, !978, !979}
!973 = !DILocalVariable(name: "dst", arg: 1, scope: !969, file: !1, line: 308, type: !46)
!974 = !DILocalVariable(name: "dstCapacity", arg: 2, scope: !969, file: !1, line: 308, type: !70)
!975 = !DILocalVariable(name: "cSrc", arg: 3, scope: !969, file: !1, line: 308, type: !124)
!976 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !969, file: !1, line: 308, type: !70)
!977 = !DILocalVariable(name: "maxLog", arg: 5, scope: !969, file: !1, line: 308, type: !5)
!978 = !DILocalVariable(name: "workSpace", arg: 6, scope: !969, file: !1, line: 308, type: !46)
!979 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !969, file: !1, line: 308, type: !70)
!980 = !DILocation(line: 308, column: 34, scope: !969)
!981 = !DILocation(line: 308, column: 46, scope: !969)
!982 = !DILocation(line: 308, column: 71, scope: !969)
!983 = !DILocation(line: 308, column: 84, scope: !969)
!984 = !DILocation(line: 308, column: 103, scope: !969)
!985 = !DILocation(line: 308, column: 117, scope: !969)
!986 = !DILocation(line: 308, column: 135, scope: !969)
!987 = !DILocation(line: 310, column: 37, scope: !969)
!988 = !DILocation(line: 310, column: 42, scope: !969)
!989 = !DILocation(line: 310, column: 55, scope: !969)
!990 = !DILocation(line: 310, column: 61, scope: !969)
!991 = !DILocation(line: 310, column: 71, scope: !969)
!992 = !DILocation(line: 310, column: 79, scope: !969)
!993 = !DILocation(line: 310, column: 90, scope: !969)
!994 = !DILocation(line: 310, column: 12, scope: !969)
!995 = !DILocation(line: 310, column: 5, scope: !969)
!996 = distinct !DISubprogram(name: "FSE_decompress_wksp_bmi2", scope: !1, file: !1, line: 374, type: !997, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !999)
!997 = !DISubroutineType(types: !998)
!998 = !{!70, !46, !70, !124, !70, !5, !46, !70, !256}
!999 = !{!1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007}
!1000 = !DILocalVariable(name: "dst", arg: 1, scope: !996, file: !1, line: 374, type: !46)
!1001 = !DILocalVariable(name: "dstCapacity", arg: 2, scope: !996, file: !1, line: 374, type: !70)
!1002 = !DILocalVariable(name: "cSrc", arg: 3, scope: !996, file: !1, line: 374, type: !124)
!1003 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !996, file: !1, line: 374, type: !70)
!1004 = !DILocalVariable(name: "maxLog", arg: 5, scope: !996, file: !1, line: 374, type: !5)
!1005 = !DILocalVariable(name: "workSpace", arg: 6, scope: !996, file: !1, line: 374, type: !46)
!1006 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !996, file: !1, line: 374, type: !70)
!1007 = !DILocalVariable(name: "bmi2", arg: 8, scope: !996, file: !1, line: 374, type: !256)
!1008 = !DILocation(line: 374, column: 39, scope: !996)
!1009 = !DILocation(line: 374, column: 51, scope: !996)
!1010 = !DILocation(line: 374, column: 76, scope: !996)
!1011 = !DILocation(line: 374, column: 89, scope: !996)
!1012 = !DILocation(line: 374, column: 108, scope: !996)
!1013 = !DILocation(line: 374, column: 122, scope: !996)
!1014 = !DILocation(line: 374, column: 140, scope: !996)
!1015 = !DILocation(line: 374, column: 154, scope: !996)
!1016 = !DILocation(line: 377, column: 9, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !996, file: !1, line: 377, column: 9)
!1018 = !DILocation(line: 377, column: 9, scope: !996)
!1019 = !DILocation(line: 378, column: 46, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 377, column: 15)
!1021 = !DILocation(line: 378, column: 51, scope: !1020)
!1022 = !DILocation(line: 378, column: 64, scope: !1020)
!1023 = !DILocation(line: 378, column: 70, scope: !1020)
!1024 = !DILocation(line: 378, column: 80, scope: !1020)
!1025 = !DILocation(line: 378, column: 88, scope: !1020)
!1026 = !DILocation(line: 378, column: 99, scope: !1020)
!1027 = !DILocation(line: 378, column: 16, scope: !1020)
!1028 = !DILocation(line: 378, column: 9, scope: !1020)
!1029 = !DILocation(line: 381, column: 11, scope: !996)
!1030 = !DILocation(line: 382, column: 45, scope: !996)
!1031 = !DILocation(line: 382, column: 50, scope: !996)
!1032 = !DILocation(line: 382, column: 63, scope: !996)
!1033 = !DILocation(line: 382, column: 69, scope: !996)
!1034 = !DILocation(line: 382, column: 79, scope: !996)
!1035 = !DILocation(line: 382, column: 87, scope: !996)
!1036 = !DILocation(line: 382, column: 98, scope: !996)
!1037 = !DILocation(line: 382, column: 12, scope: !996)
!1038 = !DILocation(line: 382, column: 5, scope: !996)
!1039 = !DILocation(line: 383, column: 1, scope: !996)
!1040 = distinct !DISubprogram(name: "FSE_decompress_wksp_body_bmi2", scope: !1, file: !1, line: 368, type: !970, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047, !1048}
!1042 = !DILocalVariable(name: "dst", arg: 1, scope: !1040, file: !1, line: 368, type: !46)
!1043 = !DILocalVariable(name: "dstCapacity", arg: 2, scope: !1040, file: !1, line: 368, type: !70)
!1044 = !DILocalVariable(name: "cSrc", arg: 3, scope: !1040, file: !1, line: 368, type: !124)
!1045 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !1040, file: !1, line: 368, type: !70)
!1046 = !DILocalVariable(name: "maxLog", arg: 5, scope: !1040, file: !1, line: 368, type: !5)
!1047 = !DILocalVariable(name: "workSpace", arg: 6, scope: !1040, file: !1, line: 368, type: !46)
!1048 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !1040, file: !1, line: 368, type: !70)
!1049 = !DILocation(line: 368, column: 73, scope: !1040)
!1050 = !DILocation(line: 368, column: 85, scope: !1040)
!1051 = !DILocation(line: 368, column: 110, scope: !1040)
!1052 = !DILocation(line: 368, column: 123, scope: !1040)
!1053 = !DILocation(line: 368, column: 142, scope: !1040)
!1054 = !DILocation(line: 368, column: 156, scope: !1040)
!1055 = !DILocation(line: 368, column: 174, scope: !1040)
!1056 = !DILocation(line: 370, column: 37, scope: !1040)
!1057 = !DILocation(line: 370, column: 42, scope: !1040)
!1058 = !DILocation(line: 370, column: 55, scope: !1040)
!1059 = !DILocation(line: 370, column: 61, scope: !1040)
!1060 = !DILocation(line: 370, column: 71, scope: !1040)
!1061 = !DILocation(line: 370, column: 79, scope: !1040)
!1062 = !DILocation(line: 370, column: 90, scope: !1040)
!1063 = !DILocation(line: 370, column: 12, scope: !1040)
!1064 = !DILocation(line: 370, column: 5, scope: !1040)
!1065 = distinct !DISubprogram(name: "FSE_decompress_wksp_body_default", scope: !1, file: !1, line: 362, type: !970, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073}
!1067 = !DILocalVariable(name: "dst", arg: 1, scope: !1065, file: !1, line: 362, type: !46)
!1068 = !DILocalVariable(name: "dstCapacity", arg: 2, scope: !1065, file: !1, line: 362, type: !70)
!1069 = !DILocalVariable(name: "cSrc", arg: 3, scope: !1065, file: !1, line: 362, type: !124)
!1070 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !1065, file: !1, line: 362, type: !70)
!1071 = !DILocalVariable(name: "maxLog", arg: 5, scope: !1065, file: !1, line: 362, type: !5)
!1072 = !DILocalVariable(name: "workSpace", arg: 6, scope: !1065, file: !1, line: 362, type: !46)
!1073 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !1065, file: !1, line: 362, type: !70)
!1074 = !DILocation(line: 362, column: 54, scope: !1065)
!1075 = !DILocation(line: 362, column: 66, scope: !1065)
!1076 = !DILocation(line: 362, column: 91, scope: !1065)
!1077 = !DILocation(line: 362, column: 104, scope: !1065)
!1078 = !DILocation(line: 362, column: 123, scope: !1065)
!1079 = !DILocation(line: 362, column: 137, scope: !1065)
!1080 = !DILocation(line: 362, column: 155, scope: !1065)
!1081 = !DILocation(line: 364, column: 37, scope: !1065)
!1082 = !DILocation(line: 364, column: 42, scope: !1065)
!1083 = !DILocation(line: 364, column: 55, scope: !1065)
!1084 = !DILocation(line: 364, column: 61, scope: !1065)
!1085 = !DILocation(line: 364, column: 71, scope: !1065)
!1086 = !DILocation(line: 364, column: 79, scope: !1065)
!1087 = !DILocation(line: 364, column: 90, scope: !1065)
!1088 = !DILocation(line: 364, column: 12, scope: !1065)
!1089 = !DILocation(line: 364, column: 5, scope: !1065)
!1090 = !DILocation(line: 141, column: 35, scope: !90)
!1091 = !DILocation(line: 141, column: 47, scope: !90)
!1092 = !DILocation(line: 143, column: 5, scope: !90)
!1093 = !DILocation(line: 143, column: 5, scope: !102)
!1094 = !DILocation(line: 144, column: 1, scope: !90)
!1095 = distinct !DISubprogram(name: "BIT_highbit32", scope: !36, file: !36, line: 130, type: !1096, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!5, !111}
!1098 = !{!1099}
!1099 = !DILocalVariable(name: "val", arg: 1, scope: !1095, file: !36, line: 130, type: !111)
!1100 = !DILocation(line: 130, column: 40, scope: !1095)
!1101 = !DILocation(line: 135, column: 31, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1095, file: !36, line: 133, column: 5)
!1103 = !DILocation(line: 135, column: 16, scope: !1102)
!1104 = !DILocation(line: 135, column: 36, scope: !1102)
!1105 = !DILocation(line: 135, column: 9, scope: !1102)
!1106 = distinct !DISubprogram(name: "BIT_initDStream", scope: !36, file: !36, line: 258, type: !1107, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1110)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!70, !1109, !124, !70}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!1110 = !{!1111, !1112, !1113, !1114, !1118}
!1111 = !DILocalVariable(name: "bitD", arg: 1, scope: !1106, file: !36, line: 258, type: !1109)
!1112 = !DILocalVariable(name: "srcBuffer", arg: 2, scope: !1106, file: !36, line: 258, type: !124)
!1113 = !DILocalVariable(name: "srcSize", arg: 3, scope: !1106, file: !36, line: 258, type: !70)
!1114 = !DILocalVariable(name: "lastByte", scope: !1115, file: !36, line: 268, type: !110)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !36, line: 268, column: 9)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !36, line: 265, column: 49)
!1117 = distinct !DILexicalBlock(scope: !1106, file: !36, line: 265, column: 9)
!1118 = !DILocalVariable(name: "lastByte", scope: !1119, file: !36, line: 296, type: !110)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !36, line: 296, column: 9)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !36, line: 271, column: 12)
!1121 = !DILocation(line: 258, column: 50, scope: !1106)
!1122 = !DILocation(line: 258, column: 68, scope: !1106)
!1123 = !DILocation(line: 258, column: 86, scope: !1106)
!1124 = !DILocation(line: 260, column: 9, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1106, file: !36, line: 260, column: 9)
!1126 = !DILocation(line: 260, column: 17, scope: !1125)
!1127 = !DILocation(line: 260, column: 9, scope: !1106)
!1128 = !DILocation(line: 260, column: 24, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !36, line: 260, column: 22)
!1130 = !DILocation(line: 260, column: 61, scope: !1129)
!1131 = !DILocation(line: 262, column: 32, scope: !1106)
!1132 = !DILocation(line: 262, column: 5, scope: !1106)
!1133 = !DILocation(line: 262, column: 11, scope: !1106)
!1134 = !DILocation(line: 262, column: 17, scope: !1106)
!1135 = !DILocation(line: 263, column: 22, scope: !1106)
!1136 = !DILocation(line: 263, column: 28, scope: !1106)
!1137 = !DILocation(line: 263, column: 34, scope: !1106)
!1138 = !DILocation(line: 263, column: 5, scope: !1106)
!1139 = !DILocation(line: 263, column: 11, scope: !1106)
!1140 = !DILocation(line: 263, column: 20, scope: !1106)
!1141 = !DILocation(line: 265, column: 9, scope: !1117)
!1142 = !DILocation(line: 265, column: 17, scope: !1117)
!1143 = !DILocation(line: 265, column: 9, scope: !1106)
!1144 = !DILocation(line: 266, column: 36, scope: !1116)
!1145 = !DILocation(line: 266, column: 48, scope: !1116)
!1146 = !DILocation(line: 266, column: 46, scope: !1116)
!1147 = !DILocation(line: 266, column: 56, scope: !1116)
!1148 = !DILocation(line: 266, column: 9, scope: !1116)
!1149 = !DILocation(line: 266, column: 15, scope: !1116)
!1150 = !DILocation(line: 266, column: 21, scope: !1116)
!1151 = !DILocation(line: 267, column: 43, scope: !1116)
!1152 = !DILocation(line: 267, column: 49, scope: !1116)
!1153 = !DILocation(line: 267, column: 30, scope: !1116)
!1154 = !DILocation(line: 267, column: 9, scope: !1116)
!1155 = !DILocation(line: 267, column: 15, scope: !1116)
!1156 = !DILocation(line: 267, column: 28, scope: !1116)
!1157 = !DILocation(line: 268, column: 11, scope: !1115)
!1158 = !DILocation(line: 268, column: 22, scope: !1115)
!1159 = !DILocation(line: 268, column: 47, scope: !1115)
!1160 = !DILocation(line: 268, column: 58, scope: !1115)
!1161 = !DILocation(line: 268, column: 65, scope: !1115)
!1162 = !DILocation(line: 268, column: 33, scope: !1115)
!1163 = !DILocation(line: 269, column: 32, scope: !1115)
!1164 = !DILocation(line: 269, column: 61, scope: !1115)
!1165 = !DILocation(line: 269, column: 47, scope: !1115)
!1166 = !DILocation(line: 269, column: 45, scope: !1115)
!1167 = !DILocation(line: 269, column: 11, scope: !1115)
!1168 = !DILocation(line: 269, column: 17, scope: !1115)
!1169 = !DILocation(line: 269, column: 30, scope: !1115)
!1170 = !DILocation(line: 270, column: 15, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1115, file: !36, line: 270, column: 15)
!1172 = !DILocation(line: 270, column: 24, scope: !1171)
!1173 = !DILocation(line: 270, column: 15, scope: !1115)
!1174 = !DILocation(line: 270, column: 30, scope: !1171)
!1175 = !DILocation(line: 270, column: 79, scope: !1116)
!1176 = !DILocation(line: 271, column: 5, scope: !1116)
!1177 = !DILocation(line: 272, column: 23, scope: !1120)
!1178 = !DILocation(line: 272, column: 29, scope: !1120)
!1179 = !DILocation(line: 272, column: 9, scope: !1120)
!1180 = !DILocation(line: 272, column: 15, scope: !1120)
!1181 = !DILocation(line: 272, column: 21, scope: !1120)
!1182 = !DILocation(line: 273, column: 45, scope: !1120)
!1183 = !DILocation(line: 273, column: 51, scope: !1120)
!1184 = !DILocation(line: 273, column: 30, scope: !1120)
!1185 = !DILocation(line: 273, column: 9, scope: !1120)
!1186 = !DILocation(line: 273, column: 15, scope: !1120)
!1187 = !DILocation(line: 273, column: 28, scope: !1120)
!1188 = !DILocation(line: 274, column: 16, scope: !1120)
!1189 = !DILocation(line: 274, column: 9, scope: !1120)
!1190 = !DILocation(line: 276, column: 63, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1120, file: !36, line: 275, column: 9)
!1192 = !DILocation(line: 276, column: 48, scope: !1191)
!1193 = !DILocation(line: 276, column: 39, scope: !1191)
!1194 = !DILocation(line: 276, column: 79, scope: !1191)
!1195 = !DILocation(line: 276, column: 17, scope: !1191)
!1196 = !DILocation(line: 276, column: 23, scope: !1191)
!1197 = !DILocation(line: 276, column: 36, scope: !1191)
!1198 = !DILocation(line: 279, column: 63, scope: !1191)
!1199 = !DILocation(line: 279, column: 48, scope: !1191)
!1200 = !DILocation(line: 279, column: 39, scope: !1191)
!1201 = !DILocation(line: 279, column: 79, scope: !1191)
!1202 = !DILocation(line: 279, column: 17, scope: !1191)
!1203 = !DILocation(line: 279, column: 23, scope: !1191)
!1204 = !DILocation(line: 279, column: 36, scope: !1191)
!1205 = !DILocation(line: 282, column: 63, scope: !1191)
!1206 = !DILocation(line: 282, column: 48, scope: !1191)
!1207 = !DILocation(line: 282, column: 39, scope: !1191)
!1208 = !DILocation(line: 282, column: 79, scope: !1191)
!1209 = !DILocation(line: 282, column: 17, scope: !1191)
!1210 = !DILocation(line: 282, column: 23, scope: !1191)
!1211 = !DILocation(line: 282, column: 36, scope: !1191)
!1212 = !DILocation(line: 285, column: 63, scope: !1191)
!1213 = !DILocation(line: 285, column: 48, scope: !1191)
!1214 = !DILocation(line: 285, column: 39, scope: !1191)
!1215 = !DILocation(line: 285, column: 79, scope: !1191)
!1216 = !DILocation(line: 285, column: 17, scope: !1191)
!1217 = !DILocation(line: 285, column: 23, scope: !1191)
!1218 = !DILocation(line: 285, column: 36, scope: !1191)
!1219 = !DILocation(line: 288, column: 63, scope: !1191)
!1220 = !DILocation(line: 288, column: 48, scope: !1191)
!1221 = !DILocation(line: 288, column: 39, scope: !1191)
!1222 = !DILocation(line: 288, column: 79, scope: !1191)
!1223 = !DILocation(line: 288, column: 17, scope: !1191)
!1224 = !DILocation(line: 288, column: 23, scope: !1191)
!1225 = !DILocation(line: 288, column: 36, scope: !1191)
!1226 = !DILocation(line: 291, column: 63, scope: !1191)
!1227 = !DILocation(line: 291, column: 48, scope: !1191)
!1228 = !DILocation(line: 291, column: 39, scope: !1191)
!1229 = !DILocation(line: 291, column: 79, scope: !1191)
!1230 = !DILocation(line: 291, column: 17, scope: !1191)
!1231 = !DILocation(line: 291, column: 23, scope: !1191)
!1232 = !DILocation(line: 291, column: 36, scope: !1191)
!1233 = !DILocation(line: 294, column: 18, scope: !1191)
!1234 = !DILocation(line: 296, column: 13, scope: !1119)
!1235 = !DILocation(line: 296, column: 24, scope: !1119)
!1236 = !DILocation(line: 296, column: 49, scope: !1119)
!1237 = !DILocation(line: 296, column: 60, scope: !1119)
!1238 = !DILocation(line: 296, column: 67, scope: !1119)
!1239 = !DILocation(line: 296, column: 35, scope: !1119)
!1240 = !DILocation(line: 297, column: 34, scope: !1119)
!1241 = !DILocation(line: 297, column: 63, scope: !1119)
!1242 = !DILocation(line: 297, column: 49, scope: !1119)
!1243 = !DILocation(line: 297, column: 47, scope: !1119)
!1244 = !DILocation(line: 297, column: 13, scope: !1119)
!1245 = !DILocation(line: 297, column: 19, scope: !1119)
!1246 = !DILocation(line: 297, column: 32, scope: !1119)
!1247 = !DILocation(line: 298, column: 17, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1119, file: !36, line: 298, column: 17)
!1249 = !DILocation(line: 298, column: 26, scope: !1248)
!1250 = !DILocation(line: 298, column: 17, scope: !1119)
!1251 = !DILocation(line: 298, column: 32, scope: !1248)
!1252 = !DILocation(line: 299, column: 9, scope: !1120)
!1253 = !DILocation(line: 300, column: 66, scope: !1120)
!1254 = !DILocation(line: 300, column: 64, scope: !1120)
!1255 = !DILocation(line: 300, column: 31, scope: !1120)
!1256 = !DILocation(line: 300, column: 74, scope: !1120)
!1257 = !DILocation(line: 300, column: 9, scope: !1120)
!1258 = !DILocation(line: 300, column: 15, scope: !1120)
!1259 = !DILocation(line: 300, column: 28, scope: !1120)
!1260 = !DILocation(line: 303, column: 12, scope: !1106)
!1261 = !DILocation(line: 303, column: 5, scope: !1106)
!1262 = !DILocation(line: 304, column: 1, scope: !1106)
!1263 = distinct !DISubprogram(name: "ERR_isError", scope: !1264, file: !1264, line: 47, type: !1265, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1267)
!1264 = !DIFile(filename: "lib/zstd/common/error_private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c1e76caf533df7af314a25a57fa92da")
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!5, !70}
!1267 = !{!1268}
!1268 = !DILocalVariable(name: "code", arg: 1, scope: !1263, file: !1264, line: 47, type: !70)
!1269 = !DILocation(line: 47, column: 40, scope: !1263)
!1270 = !DILocation(line: 47, column: 56, scope: !1263)
!1271 = !DILocation(line: 47, column: 61, scope: !1263)
!1272 = !DILocation(line: 47, column: 48, scope: !1263)
!1273 = distinct !DISubprogram(name: "FSE_initDState", scope: !45, file: !45, line: 600, type: !1274, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1277)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !1276, !1109, !782}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!1277 = !{!1278, !1279, !1280, !1281, !1282}
!1278 = !DILocalVariable(name: "DStatePtr", arg: 1, scope: !1273, file: !45, line: 600, type: !1276)
!1279 = !DILocalVariable(name: "bitD", arg: 2, scope: !1273, file: !45, line: 600, type: !1109)
!1280 = !DILocalVariable(name: "dt", arg: 3, scope: !1273, file: !45, line: 600, type: !782)
!1281 = !DILocalVariable(name: "ptr", scope: !1273, file: !45, line: 602, type: !124)
!1282 = !DILocalVariable(name: "DTableH", scope: !1273, file: !45, line: 603, type: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1284 = !DILocation(line: 600, column: 46, scope: !1273)
!1285 = !DILocation(line: 600, column: 72, scope: !1273)
!1286 = !DILocation(line: 600, column: 96, scope: !1273)
!1287 = !DILocation(line: 602, column: 5, scope: !1273)
!1288 = !DILocation(line: 602, column: 17, scope: !1273)
!1289 = !DILocation(line: 602, column: 23, scope: !1273)
!1290 = !DILocation(line: 603, column: 5, scope: !1273)
!1291 = !DILocation(line: 603, column: 35, scope: !1273)
!1292 = !DILocation(line: 603, column: 70, scope: !1273)
!1293 = !DILocation(line: 604, column: 37, scope: !1273)
!1294 = !DILocation(line: 604, column: 43, scope: !1273)
!1295 = !DILocation(line: 604, column: 52, scope: !1273)
!1296 = !DILocation(line: 604, column: 24, scope: !1273)
!1297 = !DILocation(line: 604, column: 5, scope: !1273)
!1298 = !DILocation(line: 604, column: 16, scope: !1273)
!1299 = !DILocation(line: 604, column: 22, scope: !1273)
!1300 = !DILocation(line: 605, column: 23, scope: !1273)
!1301 = !DILocation(line: 605, column: 5, scope: !1273)
!1302 = !DILocation(line: 606, column: 24, scope: !1273)
!1303 = !DILocation(line: 606, column: 27, scope: !1273)
!1304 = !DILocation(line: 606, column: 5, scope: !1273)
!1305 = !DILocation(line: 606, column: 16, scope: !1273)
!1306 = !DILocation(line: 606, column: 22, scope: !1273)
!1307 = !DILocation(line: 607, column: 1, scope: !1273)
!1308 = distinct !DISubprogram(name: "BIT_reloadDStream", scope: !36, file: !36, line: 411, type: !1309, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1312)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!1311, !1109}
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIT_DStream_status", file: !36, line: 93, baseType: !35)
!1312 = !{!1313, !1314, !1316}
!1313 = !DILocalVariable(name: "bitD", arg: 1, scope: !1308, file: !36, line: 411, type: !1109)
!1314 = !DILocalVariable(name: "nbBytes", scope: !1315, file: !36, line: 424, type: !111)
!1315 = distinct !DILexicalBlock(scope: !1308, file: !36, line: 424, column: 5)
!1316 = !DILocalVariable(name: "result", scope: !1315, file: !36, line: 425, type: !1311)
!1317 = !DILocation(line: 411, column: 64, scope: !1308)
!1318 = !DILocation(line: 413, column: 9, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1308, file: !36, line: 413, column: 9)
!1320 = !DILocation(line: 413, column: 15, scope: !1319)
!1321 = !DILocation(line: 413, column: 28, scope: !1319)
!1322 = !DILocation(line: 413, column: 9, scope: !1308)
!1323 = !DILocation(line: 414, column: 9, scope: !1319)
!1324 = !DILocation(line: 416, column: 9, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1308, file: !36, line: 416, column: 9)
!1326 = !DILocation(line: 416, column: 15, scope: !1325)
!1327 = !DILocation(line: 416, column: 22, scope: !1325)
!1328 = !DILocation(line: 416, column: 28, scope: !1325)
!1329 = !DILocation(line: 416, column: 19, scope: !1325)
!1330 = !DILocation(line: 416, column: 9, scope: !1308)
!1331 = !DILocation(line: 417, column: 38, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1325, file: !36, line: 416, column: 38)
!1333 = !DILocation(line: 417, column: 16, scope: !1332)
!1334 = !DILocation(line: 417, column: 9, scope: !1332)
!1335 = !DILocation(line: 419, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1308, file: !36, line: 419, column: 9)
!1337 = !DILocation(line: 419, column: 15, scope: !1336)
!1338 = !DILocation(line: 419, column: 22, scope: !1336)
!1339 = !DILocation(line: 419, column: 28, scope: !1336)
!1340 = !DILocation(line: 419, column: 19, scope: !1336)
!1341 = !DILocation(line: 419, column: 9, scope: !1308)
!1342 = !DILocation(line: 420, column: 13, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !36, line: 420, column: 13)
!1344 = distinct !DILexicalBlock(scope: !1336, file: !36, line: 419, column: 35)
!1345 = !DILocation(line: 420, column: 19, scope: !1343)
!1346 = !DILocation(line: 420, column: 32, scope: !1343)
!1347 = !DILocation(line: 420, column: 13, scope: !1344)
!1348 = !DILocation(line: 420, column: 64, scope: !1343)
!1349 = !DILocation(line: 421, column: 9, scope: !1344)
!1350 = !DILocation(line: 424, column: 9, scope: !1315)
!1351 = !DILocation(line: 424, column: 13, scope: !1315)
!1352 = !DILocation(line: 424, column: 23, scope: !1315)
!1353 = !DILocation(line: 424, column: 29, scope: !1315)
!1354 = !DILocation(line: 424, column: 42, scope: !1315)
!1355 = !DILocation(line: 425, column: 9, scope: !1315)
!1356 = !DILocation(line: 425, column: 28, scope: !1315)
!1357 = !DILocation(line: 426, column: 13, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1315, file: !36, line: 426, column: 13)
!1359 = !DILocation(line: 426, column: 19, scope: !1358)
!1360 = !DILocation(line: 426, column: 25, scope: !1358)
!1361 = !DILocation(line: 426, column: 23, scope: !1358)
!1362 = !DILocation(line: 426, column: 35, scope: !1358)
!1363 = !DILocation(line: 426, column: 41, scope: !1358)
!1364 = !DILocation(line: 426, column: 33, scope: !1358)
!1365 = !DILocation(line: 426, column: 13, scope: !1315)
!1366 = !DILocation(line: 427, column: 29, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1358, file: !36, line: 426, column: 48)
!1368 = !DILocation(line: 427, column: 35, scope: !1367)
!1369 = !DILocation(line: 427, column: 41, scope: !1367)
!1370 = !DILocation(line: 427, column: 47, scope: !1367)
!1371 = !DILocation(line: 427, column: 39, scope: !1367)
!1372 = !DILocation(line: 427, column: 23, scope: !1367)
!1373 = !DILocation(line: 427, column: 21, scope: !1367)
!1374 = !DILocation(line: 428, column: 20, scope: !1367)
!1375 = !DILocation(line: 429, column: 9, scope: !1367)
!1376 = !DILocation(line: 430, column: 22, scope: !1315)
!1377 = !DILocation(line: 430, column: 9, scope: !1315)
!1378 = !DILocation(line: 430, column: 15, scope: !1315)
!1379 = !DILocation(line: 430, column: 19, scope: !1315)
!1380 = !DILocation(line: 431, column: 31, scope: !1315)
!1381 = !DILocation(line: 431, column: 38, scope: !1315)
!1382 = !DILocation(line: 431, column: 9, scope: !1315)
!1383 = !DILocation(line: 431, column: 15, scope: !1315)
!1384 = !DILocation(line: 431, column: 28, scope: !1315)
!1385 = !DILocation(line: 432, column: 43, scope: !1315)
!1386 = !DILocation(line: 432, column: 49, scope: !1315)
!1387 = !DILocation(line: 432, column: 30, scope: !1315)
!1388 = !DILocation(line: 432, column: 9, scope: !1315)
!1389 = !DILocation(line: 432, column: 15, scope: !1315)
!1390 = !DILocation(line: 432, column: 28, scope: !1315)
!1391 = !DILocation(line: 433, column: 16, scope: !1315)
!1392 = !DILocation(line: 433, column: 9, scope: !1315)
!1393 = !DILocation(line: 434, column: 5, scope: !1308)
!1394 = !DILocation(line: 435, column: 1, scope: !1308)
!1395 = distinct !DISubprogram(name: "FSE_decodeSymbolFast", scope: !45, file: !45, line: 636, type: !1396, scopeLine: 637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!68, !1276, !1109}
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404}
!1399 = !DILocalVariable(name: "DStatePtr", arg: 1, scope: !1395, file: !45, line: 636, type: !1276)
!1400 = !DILocalVariable(name: "bitD", arg: 2, scope: !1395, file: !45, line: 636, type: !1109)
!1401 = !DILocalVariable(name: "DInfo", scope: !1395, file: !45, line: 638, type: !146)
!1402 = !DILocalVariable(name: "nbBits", scope: !1395, file: !45, line: 639, type: !232)
!1403 = !DILocalVariable(name: "symbol", scope: !1395, file: !45, line: 640, type: !110)
!1404 = !DILocalVariable(name: "lowBits", scope: !1395, file: !45, line: 641, type: !244)
!1405 = !DILocation(line: 636, column: 52, scope: !1395)
!1406 = !DILocation(line: 636, column: 78, scope: !1395)
!1407 = !DILocation(line: 638, column: 5, scope: !1395)
!1408 = !DILocation(line: 638, column: 24, scope: !1395)
!1409 = !DILocation(line: 638, column: 55, scope: !1395)
!1410 = !DILocation(line: 638, column: 66, scope: !1395)
!1411 = !DILocation(line: 638, column: 74, scope: !1395)
!1412 = !DILocation(line: 638, column: 85, scope: !1395)
!1413 = !DILocation(line: 638, column: 32, scope: !1395)
!1414 = !DILocation(line: 639, column: 5, scope: !1395)
!1415 = !DILocation(line: 639, column: 15, scope: !1395)
!1416 = !DILocation(line: 639, column: 30, scope: !1395)
!1417 = !DILocation(line: 639, column: 24, scope: !1395)
!1418 = !DILocation(line: 640, column: 5, scope: !1395)
!1419 = !DILocation(line: 640, column: 16, scope: !1395)
!1420 = !DILocation(line: 640, column: 31, scope: !1395)
!1421 = !DILocation(line: 641, column: 5, scope: !1395)
!1422 = !DILocation(line: 641, column: 18, scope: !1395)
!1423 = !DILocation(line: 641, column: 45, scope: !1395)
!1424 = !DILocation(line: 641, column: 51, scope: !1395)
!1425 = !DILocation(line: 641, column: 28, scope: !1395)
!1426 = !DILocation(line: 643, column: 30, scope: !1395)
!1427 = !DILocation(line: 643, column: 24, scope: !1395)
!1428 = !DILocation(line: 643, column: 41, scope: !1395)
!1429 = !DILocation(line: 643, column: 39, scope: !1395)
!1430 = !DILocation(line: 643, column: 5, scope: !1395)
!1431 = !DILocation(line: 643, column: 16, scope: !1395)
!1432 = !DILocation(line: 643, column: 22, scope: !1395)
!1433 = !DILocation(line: 644, column: 12, scope: !1395)
!1434 = !DILocation(line: 645, column: 1, scope: !1395)
!1435 = !DILocation(line: 644, column: 5, scope: !1395)
!1436 = distinct !DISubprogram(name: "FSE_decodeSymbol", scope: !45, file: !45, line: 623, type: !1396, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1437)
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443}
!1438 = !DILocalVariable(name: "DStatePtr", arg: 1, scope: !1436, file: !45, line: 623, type: !1276)
!1439 = !DILocalVariable(name: "bitD", arg: 2, scope: !1436, file: !45, line: 623, type: !1109)
!1440 = !DILocalVariable(name: "DInfo", scope: !1436, file: !45, line: 625, type: !146)
!1441 = !DILocalVariable(name: "nbBits", scope: !1436, file: !45, line: 626, type: !232)
!1442 = !DILocalVariable(name: "symbol", scope: !1436, file: !45, line: 627, type: !110)
!1443 = !DILocalVariable(name: "lowBits", scope: !1436, file: !45, line: 628, type: !244)
!1444 = !DILocation(line: 623, column: 48, scope: !1436)
!1445 = !DILocation(line: 623, column: 74, scope: !1436)
!1446 = !DILocation(line: 625, column: 5, scope: !1436)
!1447 = !DILocation(line: 625, column: 24, scope: !1436)
!1448 = !DILocation(line: 625, column: 55, scope: !1436)
!1449 = !DILocation(line: 625, column: 66, scope: !1436)
!1450 = !DILocation(line: 625, column: 74, scope: !1436)
!1451 = !DILocation(line: 625, column: 85, scope: !1436)
!1452 = !DILocation(line: 625, column: 32, scope: !1436)
!1453 = !DILocation(line: 626, column: 5, scope: !1436)
!1454 = !DILocation(line: 626, column: 15, scope: !1436)
!1455 = !DILocation(line: 626, column: 30, scope: !1436)
!1456 = !DILocation(line: 626, column: 24, scope: !1436)
!1457 = !DILocation(line: 627, column: 5, scope: !1436)
!1458 = !DILocation(line: 627, column: 16, scope: !1436)
!1459 = !DILocation(line: 627, column: 31, scope: !1436)
!1460 = !DILocation(line: 628, column: 5, scope: !1436)
!1461 = !DILocation(line: 628, column: 18, scope: !1436)
!1462 = !DILocation(line: 628, column: 41, scope: !1436)
!1463 = !DILocation(line: 628, column: 47, scope: !1436)
!1464 = !DILocation(line: 628, column: 28, scope: !1436)
!1465 = !DILocation(line: 630, column: 30, scope: !1436)
!1466 = !DILocation(line: 630, column: 24, scope: !1436)
!1467 = !DILocation(line: 630, column: 41, scope: !1436)
!1468 = !DILocation(line: 630, column: 39, scope: !1436)
!1469 = !DILocation(line: 630, column: 5, scope: !1436)
!1470 = !DILocation(line: 630, column: 16, scope: !1436)
!1471 = !DILocation(line: 630, column: 22, scope: !1436)
!1472 = !DILocation(line: 631, column: 12, scope: !1436)
!1473 = !DILocation(line: 632, column: 1, scope: !1436)
!1474 = !DILocation(line: 631, column: 5, scope: !1436)
!1475 = distinct !DISubprogram(name: "MEM_readLEST", scope: !53, file: !53, line: 189, type: !1476, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!70, !124}
!1478 = !{!1479}
!1479 = !DILocalVariable(name: "memPtr", arg: 1, scope: !1475, file: !53, line: 189, type: !124)
!1480 = !DILocation(line: 189, column: 44, scope: !1475)
!1481 = !DILocation(line: 191, column: 6, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1475, file: !53, line: 191, column: 6)
!1483 = !DILocation(line: 191, column: 6, scope: !1475)
!1484 = !DILocation(line: 192, column: 31, scope: !1482)
!1485 = !DILocation(line: 192, column: 18, scope: !1482)
!1486 = !DILocation(line: 192, column: 10, scope: !1482)
!1487 = !DILocation(line: 192, column: 3, scope: !1482)
!1488 = !DILocation(line: 194, column: 31, scope: !1482)
!1489 = !DILocation(line: 194, column: 18, scope: !1482)
!1490 = !DILocation(line: 194, column: 3, scope: !1482)
!1491 = !DILocation(line: 195, column: 1, scope: !1475)
!1492 = distinct !DISubprogram(name: "MEM_32bits", scope: !53, file: !53, line: 90, type: !1493, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!5}
!1495 = !DILocation(line: 92, column: 5, scope: !1492)
!1496 = distinct !DISubprogram(name: "MEM_readLE32", scope: !53, file: !53, line: 169, type: !1497, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!111, !124}
!1499 = !{!1500}
!1500 = !DILocalVariable(name: "memPtr", arg: 1, scope: !1496, file: !53, line: 169, type: !124)
!1501 = !DILocation(line: 169, column: 41, scope: !1496)
!1502 = !DILocation(line: 171, column: 31, scope: !1496)
!1503 = !DILocation(line: 171, column: 12, scope: !1496)
!1504 = !DILocation(line: 171, column: 5, scope: !1496)
!1505 = distinct !DISubprogram(name: "MEM_readLE64", scope: !53, file: !53, line: 179, type: !1506, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!93, !124}
!1508 = !{!1509}
!1509 = !DILocalVariable(name: "memPtr", arg: 1, scope: !1505, file: !53, line: 179, type: !124)
!1510 = !DILocation(line: 179, column: 41, scope: !1505)
!1511 = !DILocation(line: 181, column: 31, scope: !1505)
!1512 = !DILocation(line: 181, column: 12, scope: !1505)
!1513 = !DILocation(line: 181, column: 5, scope: !1505)
!1514 = !DILocation(line: 30, column: 50, scope: !121)
!1515 = !DILocation(line: 32, column: 9, scope: !129)
!1516 = !DILocation(line: 32, column: 9, scope: !121)
!1517 = !DILocation(line: 32, column: 2, scope: !121)
!1518 = !DILocation(line: 35, column: 50, scope: !136)
!1519 = !DILocation(line: 37, column: 9, scope: !142)
!1520 = !DILocation(line: 37, column: 9, scope: !136)
!1521 = !DILocation(line: 37, column: 2, scope: !136)
!1522 = distinct !DISubprogram(name: "BIT_readBits", scope: !36, file: !36, line: 372, type: !1523, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1525)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!70, !1109, !5}
!1525 = !{!1526, !1527, !1528}
!1526 = !DILocalVariable(name: "bitD", arg: 1, scope: !1522, file: !36, line: 372, type: !1109)
!1527 = !DILocalVariable(name: "nbBits", arg: 2, scope: !1522, file: !36, line: 372, type: !5)
!1528 = !DILocalVariable(name: "value", scope: !1522, file: !36, line: 374, type: !244)
!1529 = !DILocation(line: 372, column: 65, scope: !1522)
!1530 = !DILocation(line: 372, column: 80, scope: !1522)
!1531 = !DILocation(line: 374, column: 5, scope: !1522)
!1532 = !DILocation(line: 374, column: 18, scope: !1522)
!1533 = !DILocation(line: 374, column: 39, scope: !1522)
!1534 = !DILocation(line: 374, column: 45, scope: !1522)
!1535 = !DILocation(line: 374, column: 26, scope: !1522)
!1536 = !DILocation(line: 375, column: 18, scope: !1522)
!1537 = !DILocation(line: 375, column: 24, scope: !1522)
!1538 = !DILocation(line: 375, column: 5, scope: !1522)
!1539 = !DILocation(line: 376, column: 12, scope: !1522)
!1540 = !DILocation(line: 377, column: 1, scope: !1522)
!1541 = !DILocation(line: 376, column: 5, scope: !1522)
!1542 = distinct !DISubprogram(name: "BIT_lookBits", scope: !36, file: !36, line: 340, type: !1543, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1547)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!70, !1545, !111}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!1547 = !{!1548, !1549}
!1548 = !DILocalVariable(name: "bitD", arg: 1, scope: !1542, file: !36, line: 340, type: !1545)
!1549 = !DILocalVariable(name: "nbBits", arg: 2, scope: !1542, file: !36, line: 340, type: !111)
!1550 = !DILocation(line: 340, column: 73, scope: !1542)
!1551 = !DILocation(line: 340, column: 83, scope: !1542)
!1552 = !DILocation(line: 346, column: 30, scope: !1542)
!1553 = !DILocation(line: 346, column: 36, scope: !1542)
!1554 = !DILocation(line: 346, column: 83, scope: !1542)
!1555 = !DILocation(line: 346, column: 89, scope: !1542)
!1556 = !DILocation(line: 346, column: 81, scope: !1542)
!1557 = !DILocation(line: 346, column: 104, scope: !1542)
!1558 = !DILocation(line: 346, column: 102, scope: !1542)
!1559 = !DILocation(line: 346, column: 50, scope: !1542)
!1560 = !DILocation(line: 346, column: 112, scope: !1542)
!1561 = !DILocation(line: 346, column: 12, scope: !1542)
!1562 = !DILocation(line: 346, column: 5, scope: !1542)
!1563 = distinct !DISubprogram(name: "BIT_skipBits", scope: !36, file: !36, line: 363, type: !1564, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !1109, !111}
!1566 = !{!1567, !1568}
!1567 = !DILocalVariable(name: "bitD", arg: 1, scope: !1563, file: !36, line: 363, type: !1109)
!1568 = !DILocalVariable(name: "nbBits", arg: 2, scope: !1563, file: !36, line: 363, type: !111)
!1569 = !DILocation(line: 363, column: 63, scope: !1563)
!1570 = !DILocation(line: 363, column: 73, scope: !1563)
!1571 = !DILocation(line: 365, column: 27, scope: !1563)
!1572 = !DILocation(line: 365, column: 5, scope: !1563)
!1573 = !DILocation(line: 365, column: 11, scope: !1563)
!1574 = !DILocation(line: 365, column: 24, scope: !1563)
!1575 = !DILocation(line: 366, column: 1, scope: !1563)
!1576 = distinct !DISubprogram(name: "BIT_getMiddleBits", scope: !36, file: !36, line: 311, type: !1577, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!70, !70, !232, !232}
!1579 = !{!1580, !1581, !1582, !1583}
!1580 = !DILocalVariable(name: "bitContainer", arg: 1, scope: !1576, file: !36, line: 311, type: !70)
!1581 = !DILocalVariable(name: "start", arg: 2, scope: !1576, file: !36, line: 311, type: !232)
!1582 = !DILocalVariable(name: "nbBits", arg: 3, scope: !1576, file: !36, line: 311, type: !232)
!1583 = !DILocalVariable(name: "regMask", scope: !1576, file: !36, line: 313, type: !232)
!1584 = !DILocation(line: 311, column: 62, scope: !1576)
!1585 = !DILocation(line: 311, column: 86, scope: !1576)
!1586 = !DILocation(line: 311, column: 103, scope: !1576)
!1587 = !DILocation(line: 313, column: 5, scope: !1576)
!1588 = !DILocation(line: 313, column: 15, scope: !1576)
!1589 = !DILocation(line: 322, column: 13, scope: !1576)
!1590 = !DILocation(line: 322, column: 30, scope: !1576)
!1591 = !DILocation(line: 322, column: 36, scope: !1576)
!1592 = !DILocation(line: 322, column: 26, scope: !1576)
!1593 = !DILocation(line: 322, column: 64, scope: !1576)
!1594 = !DILocation(line: 322, column: 61, scope: !1576)
!1595 = !DILocation(line: 322, column: 72, scope: !1576)
!1596 = !DILocation(line: 322, column: 48, scope: !1576)
!1597 = !DILocation(line: 326, column: 1, scope: !1576)
!1598 = !DILocation(line: 322, column: 5, scope: !1576)
!1599 = distinct !DISubprogram(name: "BIT_reloadDStreamFast", scope: !36, file: !36, line: 395, type: !1309, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1600)
!1600 = !{!1601}
!1601 = !DILocalVariable(name: "bitD", arg: 1, scope: !1599, file: !36, line: 395, type: !1109)
!1602 = !DILocation(line: 395, column: 68, scope: !1599)
!1603 = !DILocation(line: 397, column: 9, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !36, line: 397, column: 9)
!1605 = !DILocation(line: 397, column: 9, scope: !1599)
!1606 = !DILocation(line: 398, column: 9, scope: !1604)
!1607 = !DILocation(line: 400, column: 18, scope: !1599)
!1608 = !DILocation(line: 400, column: 24, scope: !1599)
!1609 = !DILocation(line: 400, column: 37, scope: !1599)
!1610 = !DILocation(line: 400, column: 5, scope: !1599)
!1611 = !DILocation(line: 400, column: 11, scope: !1599)
!1612 = !DILocation(line: 400, column: 15, scope: !1599)
!1613 = !DILocation(line: 401, column: 5, scope: !1599)
!1614 = !DILocation(line: 401, column: 11, scope: !1599)
!1615 = !DILocation(line: 401, column: 24, scope: !1599)
!1616 = !DILocation(line: 402, column: 39, scope: !1599)
!1617 = !DILocation(line: 402, column: 45, scope: !1599)
!1618 = !DILocation(line: 402, column: 26, scope: !1599)
!1619 = !DILocation(line: 402, column: 5, scope: !1599)
!1620 = !DILocation(line: 402, column: 11, scope: !1599)
!1621 = !DILocation(line: 402, column: 24, scope: !1599)
!1622 = !DILocation(line: 403, column: 5, scope: !1599)
!1623 = !DILocation(line: 404, column: 1, scope: !1599)
!1624 = distinct !DISubprogram(name: "BIT_readBitsFast", scope: !36, file: !36, line: 381, type: !1523, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1625)
!1625 = !{!1626, !1627, !1628}
!1626 = !DILocalVariable(name: "bitD", arg: 1, scope: !1624, file: !36, line: 381, type: !1109)
!1627 = !DILocalVariable(name: "nbBits", arg: 2, scope: !1624, file: !36, line: 381, type: !5)
!1628 = !DILocalVariable(name: "value", scope: !1624, file: !36, line: 383, type: !244)
!1629 = !DILocation(line: 381, column: 51, scope: !1624)
!1630 = !DILocation(line: 381, column: 66, scope: !1624)
!1631 = !DILocation(line: 383, column: 5, scope: !1624)
!1632 = !DILocation(line: 383, column: 18, scope: !1624)
!1633 = !DILocation(line: 383, column: 43, scope: !1624)
!1634 = !DILocation(line: 383, column: 49, scope: !1624)
!1635 = !DILocation(line: 383, column: 26, scope: !1624)
!1636 = !DILocation(line: 385, column: 18, scope: !1624)
!1637 = !DILocation(line: 385, column: 24, scope: !1624)
!1638 = !DILocation(line: 385, column: 5, scope: !1624)
!1639 = !DILocation(line: 386, column: 12, scope: !1624)
!1640 = !DILocation(line: 387, column: 1, scope: !1624)
!1641 = !DILocation(line: 386, column: 5, scope: !1624)
!1642 = distinct !DISubprogram(name: "BIT_lookBitsFast", scope: !36, file: !36, line: 356, type: !1543, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1643)
!1643 = !{!1644, !1645, !1646}
!1644 = !DILocalVariable(name: "bitD", arg: 1, scope: !1642, file: !36, line: 356, type: !1545)
!1645 = !DILocalVariable(name: "nbBits", arg: 2, scope: !1642, file: !36, line: 356, type: !111)
!1646 = !DILocalVariable(name: "regMask", scope: !1642, file: !36, line: 358, type: !232)
!1647 = !DILocation(line: 356, column: 57, scope: !1642)
!1648 = !DILocation(line: 356, column: 67, scope: !1642)
!1649 = !DILocation(line: 358, column: 5, scope: !1642)
!1650 = !DILocation(line: 358, column: 15, scope: !1642)
!1651 = !DILocation(line: 360, column: 13, scope: !1642)
!1652 = !DILocation(line: 360, column: 19, scope: !1642)
!1653 = !DILocation(line: 360, column: 36, scope: !1642)
!1654 = !DILocation(line: 360, column: 42, scope: !1642)
!1655 = !DILocation(line: 360, column: 55, scope: !1642)
!1656 = !DILocation(line: 360, column: 32, scope: !1642)
!1657 = !DILocation(line: 360, column: 84, scope: !1642)
!1658 = !DILocation(line: 360, column: 83, scope: !1642)
!1659 = !DILocation(line: 360, column: 92, scope: !1642)
!1660 = !DILocation(line: 360, column: 67, scope: !1642)
!1661 = !DILocation(line: 361, column: 1, scope: !1642)
!1662 = !DILocation(line: 360, column: 5, scope: !1642)
!1663 = distinct !DISubprogram(name: "FSE_decompress_wksp_body", scope: !1, file: !1, line: 319, type: !997, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1664)
!1664 = !{!1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1675, !1676, !1677, !1678, !1680, !1682, !1684, !1686, !1687}
!1665 = !DILocalVariable(name: "dst", arg: 1, scope: !1663, file: !1, line: 320, type: !46)
!1666 = !DILocalVariable(name: "dstCapacity", arg: 2, scope: !1663, file: !1, line: 320, type: !70)
!1667 = !DILocalVariable(name: "cSrc", arg: 3, scope: !1663, file: !1, line: 321, type: !124)
!1668 = !DILocalVariable(name: "cSrcSize", arg: 4, scope: !1663, file: !1, line: 321, type: !70)
!1669 = !DILocalVariable(name: "maxLog", arg: 5, scope: !1663, file: !1, line: 322, type: !5)
!1670 = !DILocalVariable(name: "workSpace", arg: 6, scope: !1663, file: !1, line: 322, type: !46)
!1671 = !DILocalVariable(name: "wkspSize", arg: 7, scope: !1663, file: !1, line: 322, type: !70)
!1672 = !DILocalVariable(name: "bmi2", arg: 8, scope: !1663, file: !1, line: 323, type: !256)
!1673 = !DILocalVariable(name: "istart", scope: !1663, file: !1, line: 325, type: !1674)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1675 = !DILocalVariable(name: "ip", scope: !1663, file: !1, line: 326, type: !109)
!1676 = !DILocalVariable(name: "tableLog", scope: !1663, file: !1, line: 327, type: !5)
!1677 = !DILocalVariable(name: "maxSymbolValue", scope: !1663, file: !1, line: 328, type: !5)
!1678 = !DILocalVariable(name: "wksp", scope: !1663, file: !1, line: 329, type: !1679)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1680 = !DILocalVariable(name: "NCountLength", scope: !1681, file: !1, line: 336, type: !244)
!1681 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 335, column: 5)
!1682 = !DILocalVariable(name: "_var_err__", scope: !1683, file: !1, line: 348, type: !244)
!1683 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 348, column: 5)
!1684 = !DILocalVariable(name: "ptr", scope: !1685, file: !1, line: 351, type: !124)
!1685 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 350, column: 5)
!1686 = !DILocalVariable(name: "DTableH", scope: !1685, file: !1, line: 352, type: !79)
!1687 = !DILocalVariable(name: "fastMode", scope: !1685, file: !1, line: 353, type: !232)
!1688 = !DILocation(line: 320, column: 15, scope: !1663)
!1689 = !DILocation(line: 320, column: 27, scope: !1663)
!1690 = !DILocation(line: 321, column: 21, scope: !1663)
!1691 = !DILocation(line: 321, column: 34, scope: !1663)
!1692 = !DILocation(line: 322, column: 18, scope: !1663)
!1693 = !DILocation(line: 322, column: 32, scope: !1663)
!1694 = !DILocation(line: 322, column: 50, scope: !1663)
!1695 = !DILocation(line: 323, column: 13, scope: !1663)
!1696 = !DILocation(line: 325, column: 5, scope: !1663)
!1697 = !DILocation(line: 325, column: 23, scope: !1663)
!1698 = !DILocation(line: 325, column: 45, scope: !1663)
!1699 = !DILocation(line: 326, column: 5, scope: !1663)
!1700 = !DILocation(line: 326, column: 17, scope: !1663)
!1701 = !DILocation(line: 326, column: 22, scope: !1663)
!1702 = !DILocation(line: 327, column: 5, scope: !1663)
!1703 = !DILocation(line: 327, column: 14, scope: !1663)
!1704 = !DILocation(line: 328, column: 5, scope: !1663)
!1705 = !DILocation(line: 328, column: 14, scope: !1663)
!1706 = !DILocation(line: 329, column: 5, scope: !1663)
!1707 = !DILocation(line: 329, column: 31, scope: !1663)
!1708 = !DILocation(line: 329, column: 59, scope: !1663)
!1709 = !DILocation(line: 332, column: 9, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 332, column: 9)
!1711 = !DILocation(line: 332, column: 18, scope: !1710)
!1712 = !DILocation(line: 332, column: 9, scope: !1663)
!1713 = !DILocation(line: 332, column: 35, scope: !1710)
!1714 = !DILocation(line: 336, column: 9, scope: !1681)
!1715 = !DILocation(line: 336, column: 22, scope: !1681)
!1716 = !DILocation(line: 336, column: 57, scope: !1681)
!1717 = !DILocation(line: 336, column: 63, scope: !1681)
!1718 = !DILocation(line: 336, column: 99, scope: !1681)
!1719 = !DILocation(line: 336, column: 107, scope: !1681)
!1720 = !DILocation(line: 336, column: 117, scope: !1681)
!1721 = !DILocation(line: 336, column: 37, scope: !1681)
!1722 = !DILocation(line: 337, column: 25, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1681, file: !1, line: 337, column: 13)
!1724 = !DILocation(line: 337, column: 13, scope: !1723)
!1725 = !DILocation(line: 337, column: 13, scope: !1681)
!1726 = !DILocation(line: 337, column: 47, scope: !1723)
!1727 = !DILocation(line: 337, column: 40, scope: !1723)
!1728 = !DILocation(line: 338, column: 13, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1681, file: !1, line: 338, column: 13)
!1730 = !DILocation(line: 338, column: 24, scope: !1729)
!1731 = !DILocation(line: 338, column: 22, scope: !1729)
!1732 = !DILocation(line: 338, column: 13, scope: !1681)
!1733 = !DILocation(line: 338, column: 32, scope: !1729)
!1734 = !DILocation(line: 340, column: 15, scope: !1681)
!1735 = !DILocation(line: 340, column: 12, scope: !1681)
!1736 = !DILocation(line: 341, column: 21, scope: !1681)
!1737 = !DILocation(line: 341, column: 18, scope: !1681)
!1738 = !DILocation(line: 342, column: 5, scope: !1663)
!1739 = !DILocation(line: 344, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 344, column: 9)
!1741 = !DILocation(line: 344, column: 62, scope: !1740)
!1742 = !DILocation(line: 344, column: 60, scope: !1740)
!1743 = !DILocation(line: 344, column: 9, scope: !1663)
!1744 = !DILocation(line: 344, column: 72, scope: !1740)
!1745 = !DILocation(line: 345, column: 17, scope: !1663)
!1746 = !DILocation(line: 345, column: 23, scope: !1663)
!1747 = !DILocation(line: 345, column: 32, scope: !1663)
!1748 = !DILocation(line: 345, column: 30, scope: !1663)
!1749 = !DILocation(line: 345, column: 15, scope: !1663)
!1750 = !DILocation(line: 346, column: 33, scope: !1663)
!1751 = !DILocation(line: 346, column: 31, scope: !1663)
!1752 = !DILocation(line: 346, column: 14, scope: !1663)
!1753 = !DILocation(line: 348, column: 5, scope: !1683)
!1754 = !DILocation(line: 348, column: 5, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1683, file: !1, line: 348, column: 5)
!1756 = !DILocation(line: 348, column: 5, scope: !1663)
!1757 = !DILocation(line: 351, column: 9, scope: !1685)
!1758 = !DILocation(line: 351, column: 21, scope: !1685)
!1759 = !DILocation(line: 351, column: 27, scope: !1685)
!1760 = !DILocation(line: 351, column: 33, scope: !1685)
!1761 = !DILocation(line: 352, column: 9, scope: !1685)
!1762 = !DILocation(line: 352, column: 33, scope: !1685)
!1763 = !DILocation(line: 352, column: 68, scope: !1685)
!1764 = !DILocation(line: 353, column: 9, scope: !1685)
!1765 = !DILocation(line: 353, column: 19, scope: !1685)
!1766 = !DILocation(line: 353, column: 30, scope: !1685)
!1767 = !DILocation(line: 353, column: 39, scope: !1685)
!1768 = !DILocation(line: 356, column: 13, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 356, column: 13)
!1770 = !DILocation(line: 356, column: 13, scope: !1685)
!1771 = !DILocation(line: 356, column: 65, scope: !1769)
!1772 = !DILocation(line: 356, column: 70, scope: !1769)
!1773 = !DILocation(line: 356, column: 83, scope: !1769)
!1774 = !DILocation(line: 356, column: 87, scope: !1769)
!1775 = !DILocation(line: 356, column: 97, scope: !1769)
!1776 = !DILocation(line: 356, column: 103, scope: !1769)
!1777 = !DILocation(line: 356, column: 30, scope: !1769)
!1778 = !DILocation(line: 356, column: 23, scope: !1769)
!1779 = !DILocation(line: 357, column: 51, scope: !1685)
!1780 = !DILocation(line: 357, column: 56, scope: !1685)
!1781 = !DILocation(line: 357, column: 69, scope: !1685)
!1782 = !DILocation(line: 357, column: 73, scope: !1685)
!1783 = !DILocation(line: 357, column: 83, scope: !1685)
!1784 = !DILocation(line: 357, column: 89, scope: !1685)
!1785 = !DILocation(line: 357, column: 16, scope: !1685)
!1786 = !DILocation(line: 357, column: 9, scope: !1685)
!1787 = !DILocation(line: 358, column: 5, scope: !1663)
!1788 = !DILocation(line: 359, column: 1, scope: !1663)
!1789 = !DISubprogram(name: "FSE_readNCount_bmi2", scope: !45, file: !45, line: 237, type: !1790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!70, !1792, !1793, !1793, !124, !70, !256}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
