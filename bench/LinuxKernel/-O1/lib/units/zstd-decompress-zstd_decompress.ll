; ModuleID = 'lib/zstd/decompress/zstd_decompress.c'
source_filename = "lib/zstd/decompress/zstd_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_DCtx_s = type { ptr, ptr, ptr, ptr, %struct.ZSTD_entropyDTables_t, [640 x i32], ptr, ptr, ptr, ptr, i64, %struct.ZSTD_frameHeader, i64, i64, i32, i32, i32, i32, %struct.xxh64_state, i64, i32, i32, i32, ptr, %struct.ZSTD_customMem, i64, i64, i64, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, i32, i32, i32, %struct.ZSTD_outBuffer_s, ptr, ptr, i32, [65568 x i8], [18 x i8], i64 }
%struct.ZSTD_entropyDTables_t = type { [513 x %struct.ZSTD_seqSymbol], [257 x %struct.ZSTD_seqSymbol], [513 x %struct.ZSTD_seqSymbol], [4097 x i32], [3 x i32], [157 x i32] }
%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
%struct.ZSTD_frameHeader = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_DDictHashSet = type { ptr, i64, i64 }
%struct.ZSTD_frameSizeInfo = type { i64, i64 }
%struct.blockProperties_t = type { i32, i32, i32 }
%struct.ZSTD_bounds = type { i64, i32, i32 }
%struct.ZSTD_inBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_cpuid_t = type { i32, i32, i32, i32 }
%struct.anon = type { i32 }
%struct.anon.0 = type { i16 }
%struct.anon.1 = type { i64 }

@ZSTD_defaultCMem = internal constant %struct.ZSTD_customMem zeroinitializer, align 8, !dbg !0
@OF_base = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 5, i32 13, i32 29, i32 61, i32 125, i32 253, i32 509, i32 1021, i32 2045, i32 4093, i32 8189, i32 16381, i32 32765, i32 65533, i32 131069, i32 262141, i32 524285, i32 1048573, i32 2097149, i32 4194301, i32 8388605, i32 16777213, i32 33554429, i32 67108861, i32 134217725, i32 268435453, i32 536870909, i32 1073741821, i32 2147483645], align 16, !dbg !389
@OF_bits = internal constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16, !dbg !395
@ML_base = internal constant [53 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 37, i32 39, i32 41, i32 43, i32 47, i32 51, i32 59, i32 67, i32 83, i32 99, i32 131, i32 259, i32 515, i32 1027, i32 2051, i32 4099, i32 8195, i32 16387, i32 32771, i32 65539], align 16, !dbg !400
@ML_bits = internal constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16, !dbg !405
@LL_base = internal constant [36 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 18, i32 20, i32 22, i32 24, i32 28, i32 32, i32 40, i32 48, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], align 16, !dbg !408
@LL_bits = internal constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16, !dbg !413
@repStartValue = internal constant [3 x i32] [i32 1, i32 4, i32 8], align 4, !dbg !416
@ZSTD_did_fieldSize = internal constant [4 x i64] [i64 0, i64 1, i64 2, i64 4], align 16, !dbg !384
@ZSTD_fcs_fieldSize = internal constant [4 x i64] [i64 0, i64 2, i64 4, i64 8], align 16, !dbg !387

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_sizeof_DCtx(ptr noundef %dctx) #0 align 16 !dbg !429 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !437
  %cmp = icmp eq ptr %0, null, !dbg !439
  br i1 %cmp, label %if.then, label %if.end, !dbg !440

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !441
  br label %return, !dbg !441

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !442
  %ddictLocal = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 29, !dbg !443
  %2 = load ptr, ptr %ddictLocal, align 8, !dbg !443
  %call = call i64 @ZSTD_sizeof_DDict(ptr noundef %2) #7, !dbg !444
  %add = add i64 95944, %call, !dbg !445
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !446
  %inBuffSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 38, !dbg !447
  %4 = load i64, ptr %inBuffSize, align 8, !dbg !447
  %add1 = add i64 %add, %4, !dbg !448
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !449
  %outBuffSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 42, !dbg !450
  %6 = load i64, ptr %outBuffSize, align 8, !dbg !450
  %add2 = add i64 %add1, %6, !dbg !451
  store i64 %add2, ptr %retval, align 8, !dbg !452
  br label %return, !dbg !452

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, ptr %retval, align 8, !dbg !453
  ret i64 %7, !dbg !453
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !454 dso_local i64 @ZSTD_sizeof_DDict(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_estimateDCtxSize() #0 align 16 !dbg !457 {
entry:
  ret i64 95944, !dbg !460
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ZSTD_initStaticDCtx(ptr noundef %workspace, i64 noundef %workspaceSize) #0 align 16 !dbg !461 {
entry:
  %retval = alloca ptr, align 8
  %workspace.addr = alloca ptr, align 8
  %workspaceSize.addr = alloca i64, align 8
  %dctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %workspace, ptr %workspace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workspace.addr, metadata !465, metadata !DIExpression()), !dbg !469
  store i64 %workspaceSize, ptr %workspaceSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workspaceSize.addr, metadata !466, metadata !DIExpression()), !dbg !470
  call void @llvm.lifetime.start.p0(i64 8, ptr %dctx) #8, !dbg !471
  call void @llvm.dbg.declare(metadata ptr %dctx, metadata !467, metadata !DIExpression()), !dbg !472
  %0 = load ptr, ptr %workspace.addr, align 8, !dbg !473
  store ptr %0, ptr %dctx, align 8, !dbg !472
  %1 = load ptr, ptr %workspace.addr, align 8, !dbg !474
  %2 = ptrtoint ptr %1 to i64, !dbg !476
  %and = and i64 %2, 7, !dbg !477
  %tobool = icmp ne i64 %and, 0, !dbg !477
  br i1 %tobool, label %if.then, label %if.end, !dbg !478

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !479

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %workspaceSize.addr, align 8, !dbg !480
  %cmp = icmp ult i64 %3, 95944, !dbg !482
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !483

if.then1:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !484

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %dctx, align 8, !dbg !485
  call void @ZSTD_initDCtx_internal(ptr noundef %4) #7, !dbg !486
  %5 = load i64, ptr %workspaceSize.addr, align 8, !dbg !487
  %6 = load ptr, ptr %dctx, align 8, !dbg !488
  %staticSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 27, !dbg !489
  store i64 %5, ptr %staticSize, align 8, !dbg !490
  %7 = load ptr, ptr %dctx, align 8, !dbg !491
  %add.ptr = getelementptr %struct.ZSTD_DCtx_s, ptr %7, i64 1, !dbg !492
  %8 = load ptr, ptr %dctx, align 8, !dbg !493
  %inBuff = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 37, !dbg !494
  store ptr %add.ptr, ptr %inBuff, align 8, !dbg !495
  %9 = load ptr, ptr %dctx, align 8, !dbg !496
  store ptr %9, ptr %retval, align 8, !dbg !497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !497

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dctx) #8, !dbg !498
  %10 = load ptr, ptr %retval, align 8, !dbg !498
  ret ptr %10, !dbg !498
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_initDCtx_internal(ptr noundef %dctx) #0 align 16 !dbg !499 {
entry:
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !503, metadata !DIExpression()), !dbg !504
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !505
  %staticSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 27, !dbg !506
  store i64 0, ptr %staticSize, align 8, !dbg !507
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !508
  %ddict = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 30, !dbg !509
  store ptr null, ptr %ddict, align 8, !dbg !510
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !511
  %ddictLocal = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %2, i32 0, i32 29, !dbg !512
  store ptr null, ptr %ddictLocal, align 8, !dbg !513
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !514
  %dictEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 9, !dbg !515
  store ptr null, ptr %dictEnd, align 8, !dbg !516
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !517
  %ddictIsCold = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 32, !dbg !518
  store i32 0, ptr %ddictIsCold, align 4, !dbg !519
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !520
  %dictUses = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 33, !dbg !521
  store i32 0, ptr %dictUses, align 8, !dbg !522
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !523
  %inBuff = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 37, !dbg !524
  store ptr null, ptr %inBuff, align 8, !dbg !525
  %7 = load ptr, ptr %dctx.addr, align 8, !dbg !526
  %inBuffSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %7, i32 0, i32 38, !dbg !527
  store i64 0, ptr %inBuffSize, align 8, !dbg !528
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !529
  %outBuffSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 42, !dbg !530
  store i64 0, ptr %outBuffSize, align 8, !dbg !531
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !532
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %9, i32 0, i32 36, !dbg !533
  store i32 0, ptr %streamStage, align 4, !dbg !534
  %10 = load ptr, ptr %dctx.addr, align 8, !dbg !535
  %noForwardProgress = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %10, i32 0, i32 47, !dbg !536
  store i32 0, ptr %noForwardProgress, align 4, !dbg !537
  %11 = load ptr, ptr %dctx.addr, align 8, !dbg !538
  %oversizedDuration = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 55, !dbg !539
  store i64 0, ptr %oversizedDuration, align 8, !dbg !540
  %call = call i32 @ZSTD_cpuSupportsBmi2() #7, !dbg !541
  %12 = load ptr, ptr %dctx.addr, align 8, !dbg !542
  %bmi2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %12, i32 0, i32 28, !dbg !543
  store i32 %call, ptr %bmi2, align 8, !dbg !544
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !545
  %ddictSet = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %13, i32 0, i32 34, !dbg !546
  store ptr null, ptr %ddictSet, align 8, !dbg !547
  %14 = load ptr, ptr %dctx.addr, align 8, !dbg !548
  call void @ZSTD_DCtx_resetParameters(ptr noundef %14) #7, !dbg !549
  ret void, !dbg !550
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ZSTD_createDCtx_advanced(ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #0 align 16 !dbg !551 {
entry:
  call void @llvm.dbg.declare(metadata ptr %customMem, metadata !555, metadata !DIExpression()), !dbg !556
  %call = call ptr @ZSTD_createDCtx_internal(ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !557
  ret ptr %call, !dbg !558
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ZSTD_createDCtx_internal(ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #0 align 16 !dbg !559 {
entry:
  %retval = alloca ptr, align 8
  %dctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %customMem, metadata !561, metadata !DIExpression()), !dbg !564
  %customAlloc = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 0, !dbg !565
  %0 = load ptr, ptr %customAlloc, align 8, !dbg !565
  %tobool = icmp ne ptr %0, null, !dbg !567
  %lnot = xor i1 %tobool, true, !dbg !567
  %lnot.ext = zext i1 %lnot to i32, !dbg !567
  %customFree = getelementptr inbounds %struct.ZSTD_customMem, ptr %customMem, i32 0, i32 1, !dbg !568
  %1 = load ptr, ptr %customFree, align 8, !dbg !568
  %tobool1 = icmp ne ptr %1, null, !dbg !569
  %lnot2 = xor i1 %tobool1, true, !dbg !569
  %lnot.ext3 = zext i1 %lnot2 to i32, !dbg !569
  %xor = xor i32 %lnot.ext, %lnot.ext3, !dbg !570
  %tobool4 = icmp ne i32 %xor, 0, !dbg !570
  br i1 %tobool4, label %if.then, label %if.end, !dbg !571

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !572
  br label %return, !dbg !572

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %dctx) #8, !dbg !573
  call void @llvm.dbg.declare(metadata ptr %dctx, metadata !562, metadata !DIExpression()), !dbg !574
  %call = call ptr @ZSTD_customMalloc(i64 noundef 95944, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !575
  store ptr %call, ptr %dctx, align 8, !dbg !574
  %2 = load ptr, ptr %dctx, align 8, !dbg !576
  %tobool5 = icmp ne ptr %2, null, !dbg !576
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !578

if.then6:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !579

if.end7:                                          ; preds = %if.end
  %3 = load ptr, ptr %dctx, align 8, !dbg !580
  %customMem8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 24, !dbg !581
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %customMem8, ptr align 8 %customMem, i64 24, i1 false), !dbg !582
  %4 = load ptr, ptr %dctx, align 8, !dbg !583
  call void @ZSTD_initDCtx_internal(ptr noundef %4) #7, !dbg !584
  %5 = load ptr, ptr %dctx, align 8, !dbg !585
  store ptr %5, ptr %retval, align 8, !dbg !586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !586

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %dctx) #8, !dbg !587
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !588
  ret ptr %6, !dbg !588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ZSTD_createDCtx() #0 align 16 !dbg !589 {
entry:
  %call = call ptr @ZSTD_createDCtx_internal(ptr noundef byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem) #7, !dbg !592
  ret ptr %call, !dbg !593
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_freeDCtx(ptr noundef %dctx) #0 align 16 !dbg !594 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %cMem = alloca %struct.ZSTD_customMem, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !598, metadata !DIExpression()), !dbg !601
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !602
  %cmp = icmp eq ptr %0, null, !dbg !604
  br i1 %cmp, label %if.then, label %if.end, !dbg !605

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !606
  br label %return, !dbg !606

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !607
  %staticSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 27, !dbg !607
  %2 = load i64, ptr %staticSize, align 8, !dbg !607
  %tobool = icmp ne i64 %2, 0, !dbg !607
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !609

if.then1:                                         ; preds = %if.end
  store i64 -64, ptr %retval, align 8, !dbg !610
  br label %return, !dbg !610

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %cMem) #8, !dbg !612
  call void @llvm.dbg.declare(metadata ptr %cMem, metadata !599, metadata !DIExpression()), !dbg !613
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !614
  %customMem = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 24, !dbg !615
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cMem, ptr align 8 %customMem, i64 24, i1 false), !dbg !615
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !616
  call void @ZSTD_clearDict(ptr noundef %4) #7, !dbg !617
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !618
  %inBuff = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 37, !dbg !619
  %6 = load ptr, ptr %inBuff, align 8, !dbg !619
  call void @ZSTD_customFree(ptr noundef %6, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem) #7, !dbg !620
  %7 = load ptr, ptr %dctx.addr, align 8, !dbg !621
  %inBuff3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %7, i32 0, i32 37, !dbg !622
  store ptr null, ptr %inBuff3, align 8, !dbg !623
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !624
  %ddictSet = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 34, !dbg !626
  %9 = load ptr, ptr %ddictSet, align 8, !dbg !626
  %tobool4 = icmp ne ptr %9, null, !dbg !624
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !627

if.then5:                                         ; preds = %if.end2
  %10 = load ptr, ptr %dctx.addr, align 8, !dbg !628
  %ddictSet6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %10, i32 0, i32 34, !dbg !630
  %11 = load ptr, ptr %ddictSet6, align 8, !dbg !630
  call void @ZSTD_freeDDictHashSet(ptr noundef %11, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem) #7, !dbg !631
  %12 = load ptr, ptr %dctx.addr, align 8, !dbg !632
  %ddictSet7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %12, i32 0, i32 34, !dbg !633
  store ptr null, ptr %ddictSet7, align 8, !dbg !634
  br label %if.end8, !dbg !635

if.end8:                                          ; preds = %if.then5, %if.end2
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !636
  call void @ZSTD_customFree(ptr noundef %13, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem) #7, !dbg !637
  store i64 0, ptr %retval, align 8, !dbg !638
  call void @llvm.lifetime.end.p0(i64 24, ptr %cMem) #8, !dbg !639
  br label %return

return:                                           ; preds = %if.end8, %if.then1, %if.then
  %14 = load i64, ptr %retval, align 8, !dbg !640
  ret i64 %14, !dbg !640
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_clearDict(ptr noundef %dctx) #0 align 16 !dbg !641 {
entry:
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !643, metadata !DIExpression()), !dbg !644
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !645
  %ddictLocal = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29, !dbg !646
  %1 = load ptr, ptr %ddictLocal, align 8, !dbg !646
  %call = call i64 @ZSTD_freeDDict(ptr noundef %1) #7, !dbg !647
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !648
  %ddictLocal1 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %2, i32 0, i32 29, !dbg !649
  store ptr null, ptr %ddictLocal1, align 8, !dbg !650
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !651
  %ddict = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 30, !dbg !652
  store ptr null, ptr %ddict, align 8, !dbg !653
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !654
  %dictUses = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 33, !dbg !655
  store i32 0, ptr %dictUses, align 8, !dbg !656
  ret void, !dbg !657
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !658 dso_local void @ZSTD_customFree(ptr noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_freeDDictHashSet(ptr noundef %hashSet, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #0 align 16 !dbg !661 {
entry:
  %hashSet.addr = alloca ptr, align 8
  store ptr %hashSet, ptr %hashSet.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hashSet.addr, metadata !665, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.declare(metadata ptr %customMem, metadata !666, metadata !DIExpression()), !dbg !668
  %0 = load ptr, ptr %hashSet.addr, align 8, !dbg !669
  %tobool = icmp ne ptr %0, null, !dbg !669
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !671

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %hashSet.addr, align 8, !dbg !672
  %ddictPtrTable = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %1, i32 0, i32 0, !dbg !673
  %2 = load ptr, ptr %ddictPtrTable, align 8, !dbg !673
  %tobool1 = icmp ne ptr %2, null, !dbg !672
  br i1 %tobool1, label %if.then, label %if.end, !dbg !674

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %hashSet.addr, align 8, !dbg !675
  %ddictPtrTable2 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %3, i32 0, i32 0, !dbg !677
  %4 = load ptr, ptr %ddictPtrTable2, align 8, !dbg !677
  call void @ZSTD_customFree(ptr noundef %4, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !678
  br label %if.end, !dbg !679

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load ptr, ptr %hashSet.addr, align 8, !dbg !680
  %tobool3 = icmp ne ptr %5, null, !dbg !680
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !682

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %hashSet.addr, align 8, !dbg !683
  call void @ZSTD_customFree(ptr noundef %6, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !685
  br label %if.end5, !dbg !686

if.end5:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !687
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ZSTD_copyDCtx(ptr noundef %dstDCtx, ptr noundef %srcDCtx) #0 align 16 !dbg !688 {
entry:
  %dstDCtx.addr = alloca ptr, align 8
  %srcDCtx.addr = alloca ptr, align 8
  %toCopy = alloca i64, align 8
  store ptr %dstDCtx, ptr %dstDCtx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstDCtx.addr, metadata !692, metadata !DIExpression()), !dbg !695
  store ptr %srcDCtx, ptr %srcDCtx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcDCtx.addr, metadata !693, metadata !DIExpression()), !dbg !696
  call void @llvm.lifetime.start.p0(i64 8, ptr %toCopy) #8, !dbg !697
  call void @llvm.dbg.declare(metadata ptr %toCopy, metadata !694, metadata !DIExpression()), !dbg !698
  %0 = load ptr, ptr %dstDCtx.addr, align 8, !dbg !699
  %inBuff = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 37, !dbg !700
  %1 = load ptr, ptr %dstDCtx.addr, align 8, !dbg !701
  %sub.ptr.lhs.cast = ptrtoint ptr %inBuff to i64, !dbg !702
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !702
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !702
  store i64 %sub.ptr.sub, ptr %toCopy, align 8, !dbg !698
  %2 = load ptr, ptr %dstDCtx.addr, align 8, !dbg !703
  %3 = load ptr, ptr %srcDCtx.addr, align 8, !dbg !703
  %4 = load i64, ptr %toCopy, align 8, !dbg !703
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 %4, i1 false), !dbg !703
  call void @llvm.lifetime.end.p0(i64 8, ptr %toCopy) #8, !dbg !704
  ret void, !dbg !704
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ZSTD_isFrame(ptr noundef %buffer, i64 noundef %size) #0 align 16 !dbg !705 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %magic = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !709, metadata !DIExpression()), !dbg !713
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !710, metadata !DIExpression()), !dbg !714
  %0 = load i64, ptr %size.addr, align 8, !dbg !715
  %cmp = icmp ult i64 %0, 4, !dbg !717
  br i1 %cmp, label %if.then, label %if.end, !dbg !718

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !719
  br label %return, !dbg !719

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %magic) #8, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %magic, metadata !711, metadata !DIExpression()), !dbg !721
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !722
  %call = call i32 @MEM_readLE32(ptr noundef %1) #7, !dbg !723
  store i32 %call, ptr %magic, align 4, !dbg !721
  %2 = load i32, ptr %magic, align 4, !dbg !724
  %cmp1 = icmp eq i32 %2, -47205080, !dbg !726
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !727

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !728

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %magic, align 4, !dbg !729
  %and = and i32 %3, -16, !dbg !731
  %cmp4 = icmp eq i32 %and, 407710288, !dbg !732
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !733

if.then5:                                         ; preds = %if.end3
  store i32 1, ptr %retval, align 4, !dbg !734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !734

if.end6:                                          ; preds = %if.end3
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !735
  br label %cleanup, !dbg !735

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %magic) #8, !dbg !735
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, ptr %retval, align 4, !dbg !736
  br label %return, !dbg !736

return:                                           ; preds = %cleanup.cont, %cleanup, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !737
  ret i32 %4, !dbg !737

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_readLE32(ptr noundef %memPtr) #5 align 16 !dbg !738 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !742, metadata !DIExpression()), !dbg !743
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !744
  %call = call i32 @get_unaligned_le32(ptr noundef %0) #7, !dbg !745
  ret i32 %call, !dbg !746
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ZSTD_isSkippableFrame(ptr noundef %buffer, i64 noundef %size) #0 align 16 !dbg !747 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %magic = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !749, metadata !DIExpression()), !dbg !753
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !750, metadata !DIExpression()), !dbg !754
  %0 = load i64, ptr %size.addr, align 8, !dbg !755
  %cmp = icmp ult i64 %0, 4, !dbg !757
  br i1 %cmp, label %if.then, label %if.end, !dbg !758

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !759
  br label %return, !dbg !759

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %magic) #8, !dbg !760
  call void @llvm.dbg.declare(metadata ptr %magic, metadata !751, metadata !DIExpression()), !dbg !761
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !762
  %call = call i32 @MEM_readLE32(ptr noundef %1) #7, !dbg !763
  store i32 %call, ptr %magic, align 4, !dbg !761
  %2 = load i32, ptr %magic, align 4, !dbg !764
  %and = and i32 %2, -16, !dbg !766
  %cmp1 = icmp eq i32 %and, 407710288, !dbg !767
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !768

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !769

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !770
  br label %cleanup, !dbg !770

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %magic) #8, !dbg !770
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, ptr %retval, align 4, !dbg !771
  br label %return, !dbg !771

return:                                           ; preds = %cleanup.cont, %cleanup, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !772
  ret i32 %3, !dbg !772

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_frameHeaderSize(ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !773 {
entry:
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !777, metadata !DIExpression()), !dbg !779
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !778, metadata !DIExpression()), !dbg !780
  %0 = load ptr, ptr %src.addr, align 8, !dbg !781
  %1 = load i64, ptr %srcSize.addr, align 8, !dbg !782
  %call = call i64 @ZSTD_frameHeaderSize_internal(ptr noundef %0, i64 noundef %1, i32 noundef 0) #7, !dbg !783
  ret i64 %call, !dbg !784
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_frameHeaderSize_internal(ptr noundef %src, i64 noundef %srcSize, i32 noundef %format) #0 align 16 !dbg !785 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %format.addr = alloca i32, align 4
  %minInputSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %fhd = alloca i8, align 1
  %dictID = alloca i32, align 4
  %singleSegment = alloca i32, align 4
  %fcsId = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !789, metadata !DIExpression()), !dbg !798
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !790, metadata !DIExpression()), !dbg !799
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !791, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 8, ptr %minInputSize) #8, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %minInputSize, metadata !792, metadata !DIExpression()), !dbg !802
  %0 = load i32, ptr %format.addr, align 4, !dbg !803
  %call = call i64 @ZSTD_startingInputLength(i32 noundef %0) #7, !dbg !804
  store i64 %call, ptr %minInputSize, align 8, !dbg !802
  %1 = load i64, ptr %srcSize.addr, align 8, !dbg !805
  %2 = load i64, ptr %minInputSize, align 8, !dbg !805
  %cmp = icmp ult i64 %1, %2, !dbg !805
  br i1 %cmp, label %if.then, label %if.end, !dbg !807

if.then:                                          ; preds = %entry
  store i64 -72, ptr %retval, align 8, !dbg !808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !808

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %fhd) #8, !dbg !810
  call void @llvm.dbg.declare(metadata ptr %fhd, metadata !793, metadata !DIExpression()), !dbg !811
  %3 = load ptr, ptr %src.addr, align 8, !dbg !812
  %4 = load i64, ptr %minInputSize, align 8, !dbg !813
  %sub = sub i64 %4, 1, !dbg !814
  %arrayidx = getelementptr i8, ptr %3, i64 %sub, !dbg !815
  %5 = load i8, ptr %arrayidx, align 1, !dbg !815
  store i8 %5, ptr %fhd, align 1, !dbg !811
  call void @llvm.lifetime.start.p0(i64 4, ptr %dictID) #8, !dbg !816
  call void @llvm.dbg.declare(metadata ptr %dictID, metadata !795, metadata !DIExpression()), !dbg !817
  %6 = load i8, ptr %fhd, align 1, !dbg !818
  %conv = zext i8 %6 to i32, !dbg !818
  %and = and i32 %conv, 3, !dbg !819
  store i32 %and, ptr %dictID, align 4, !dbg !817
  call void @llvm.lifetime.start.p0(i64 4, ptr %singleSegment) #8, !dbg !820
  call void @llvm.dbg.declare(metadata ptr %singleSegment, metadata !796, metadata !DIExpression()), !dbg !821
  %7 = load i8, ptr %fhd, align 1, !dbg !822
  %conv1 = zext i8 %7 to i32, !dbg !822
  %shr = ashr i32 %conv1, 5, !dbg !823
  %and2 = and i32 %shr, 1, !dbg !824
  store i32 %and2, ptr %singleSegment, align 4, !dbg !821
  call void @llvm.lifetime.start.p0(i64 4, ptr %fcsId) #8, !dbg !825
  call void @llvm.dbg.declare(metadata ptr %fcsId, metadata !797, metadata !DIExpression()), !dbg !826
  %8 = load i8, ptr %fhd, align 1, !dbg !827
  %conv3 = zext i8 %8 to i32, !dbg !827
  %shr4 = ashr i32 %conv3, 6, !dbg !828
  store i32 %shr4, ptr %fcsId, align 4, !dbg !826
  %9 = load i64, ptr %minInputSize, align 8, !dbg !829
  %10 = load i32, ptr %singleSegment, align 4, !dbg !830
  %tobool = icmp ne i32 %10, 0, !dbg !831
  %lnot = xor i1 %tobool, true, !dbg !831
  %lnot.ext = zext i1 %lnot to i32, !dbg !831
  %conv5 = sext i32 %lnot.ext to i64, !dbg !831
  %add = add i64 %9, %conv5, !dbg !832
  %11 = load i32, ptr %dictID, align 4, !dbg !833
  %idxprom = zext i32 %11 to i64, !dbg !834
  %arrayidx6 = getelementptr [4 x i64], ptr @ZSTD_did_fieldSize, i64 0, i64 %idxprom, !dbg !834
  %12 = load i64, ptr %arrayidx6, align 8, !dbg !834
  %add7 = add i64 %add, %12, !dbg !835
  %13 = load i32, ptr %fcsId, align 4, !dbg !836
  %idxprom8 = zext i32 %13 to i64, !dbg !837
  %arrayidx9 = getelementptr [4 x i64], ptr @ZSTD_fcs_fieldSize, i64 0, i64 %idxprom8, !dbg !837
  %14 = load i64, ptr %arrayidx9, align 8, !dbg !837
  %add10 = add i64 %add7, %14, !dbg !838
  %15 = load i32, ptr %singleSegment, align 4, !dbg !839
  %tobool11 = icmp ne i32 %15, 0, !dbg !839
  br i1 %tobool11, label %land.rhs, label %land.end, !dbg !840

land.rhs:                                         ; preds = %if.end
  %16 = load i32, ptr %fcsId, align 4, !dbg !841
  %tobool12 = icmp ne i32 %16, 0, !dbg !842
  %lnot13 = xor i1 %tobool12, true, !dbg !842
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %17 = phi i1 [ false, %if.end ], [ %lnot13, %land.rhs ], !dbg !843
  %land.ext = zext i1 %17 to i32, !dbg !840
  %conv15 = sext i32 %land.ext to i64, !dbg !844
  %add16 = add i64 %add10, %conv15, !dbg !845
  store i64 %add16, ptr %retval, align 8, !dbg !846
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %fcsId) #8, !dbg !847
  call void @llvm.lifetime.end.p0(i64 4, ptr %singleSegment) #8, !dbg !847
  call void @llvm.lifetime.end.p0(i64 4, ptr %dictID) #8, !dbg !847
  call void @llvm.lifetime.end.p0(i64 1, ptr %fhd) #8, !dbg !847
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %minInputSize) #8, !dbg !848
  %18 = load i64, ptr %retval, align 8, !dbg !848
  ret i64 %18, !dbg !848
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_getFrameHeader_advanced(ptr noundef %zfhPtr, ptr noundef %src, i64 noundef %srcSize, i32 noundef %format) #0 align 16 !dbg !849 {
entry:
  %retval = alloca i64, align 8
  %zfhPtr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %format.addr = alloca i32, align 4
  %ip = alloca ptr, align 8
  %minInputSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %fhsize = alloca i64, align 8
  %fhdByte = alloca i8, align 1
  %pos = alloca i64, align 8
  %dictIDSizeCode = alloca i32, align 4
  %checksumFlag = alloca i32, align 4
  %singleSegment = alloca i32, align 4
  %fcsID = alloca i32, align 4
  %windowSize = alloca i64, align 8
  %dictID = alloca i32, align 4
  %frameContentSize32 = alloca i64, align 8
  %wlByte = alloca i8, align 1
  %windowLog = alloca i32, align 4
  store ptr %zfhPtr, ptr %zfhPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zfhPtr.addr, metadata !854, metadata !DIExpression()), !dbg !876
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !855, metadata !DIExpression()), !dbg !877
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !856, metadata !DIExpression()), !dbg !878
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !857, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #8, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !858, metadata !DIExpression()), !dbg !881
  %0 = load ptr, ptr %src.addr, align 8, !dbg !882
  store ptr %0, ptr %ip, align 8, !dbg !881
  call void @llvm.lifetime.start.p0(i64 8, ptr %minInputSize) #8, !dbg !883
  call void @llvm.dbg.declare(metadata ptr %minInputSize, metadata !859, metadata !DIExpression()), !dbg !884
  %1 = load i32, ptr %format.addr, align 4, !dbg !885
  %call = call i64 @ZSTD_startingInputLength(i32 noundef %1) #7, !dbg !886
  store i64 %call, ptr %minInputSize, align 8, !dbg !884
  %2 = load ptr, ptr %zfhPtr.addr, align 8, !dbg !887
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 40, i1 false), !dbg !887
  %3 = load i64, ptr %srcSize.addr, align 8, !dbg !888
  %4 = load i64, ptr %minInputSize, align 8, !dbg !890
  %cmp = icmp ult i64 %3, %4, !dbg !891
  br i1 %cmp, label %if.then, label %if.end, !dbg !892

if.then:                                          ; preds = %entry
  %5 = load i64, ptr %minInputSize, align 8, !dbg !893
  store i64 %5, ptr %retval, align 8, !dbg !894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !894

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %src.addr, align 8, !dbg !895
  %cmp1 = icmp eq ptr %6, null, !dbg !895
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !897

if.then2:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8, !dbg !898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !898

if.end3:                                          ; preds = %if.end
  %7 = load i32, ptr %format.addr, align 4, !dbg !900
  %cmp4 = icmp ne i32 %7, 1, !dbg !902
  br i1 %cmp4, label %land.lhs.true, label %if.end16, !dbg !903

land.lhs.true:                                    ; preds = %if.end3
  %8 = load ptr, ptr %src.addr, align 8, !dbg !904
  %call5 = call i32 @MEM_readLE32(ptr noundef %8) #7, !dbg !905
  %cmp6 = icmp ne i32 %call5, -47205080, !dbg !906
  br i1 %cmp6, label %if.then7, label %if.end16, !dbg !907

if.then7:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %src.addr, align 8, !dbg !908
  %call8 = call i32 @MEM_readLE32(ptr noundef %9) #7, !dbg !911
  %and = and i32 %call8, -16, !dbg !912
  %cmp9 = icmp eq i32 %and, 407710288, !dbg !913
  br i1 %cmp9, label %if.then10, label %if.end15, !dbg !914

if.then10:                                        ; preds = %if.then7
  %10 = load i64, ptr %srcSize.addr, align 8, !dbg !915
  %cmp11 = icmp ult i64 %10, 8, !dbg !918
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !919

if.then12:                                        ; preds = %if.then10
  store i64 8, ptr %retval, align 8, !dbg !920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !920

if.end13:                                         ; preds = %if.then10
  %11 = load ptr, ptr %zfhPtr.addr, align 8, !dbg !921
  call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 40, i1 false), !dbg !921
  %12 = load ptr, ptr %src.addr, align 8, !dbg !922
  %add.ptr = getelementptr i8, ptr %12, i64 4, !dbg !923
  %call14 = call i32 @MEM_readLE32(ptr noundef %add.ptr) #7, !dbg !924
  %conv = zext i32 %call14 to i64, !dbg !924
  %13 = load ptr, ptr %zfhPtr.addr, align 8, !dbg !925
  %frameContentSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %13, i32 0, i32 0, !dbg !926
  store i64 %conv, ptr %frameContentSize, align 8, !dbg !927
  %14 = load ptr, ptr %zfhPtr.addr, align 8, !dbg !928
  %frameType = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %14, i32 0, i32 3, !dbg !929
  store i32 1, ptr %frameType, align 4, !dbg !930
  store i64 0, ptr %retval, align 8, !dbg !931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !931

if.end15:                                         ; preds = %if.then7
  br label %do.body, !dbg !932

do.body:                                          ; preds = %if.end15
  store i64 -10, ptr %retval, align 8, !dbg !933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !933

do.cond:                                          ; No predecessors!
  br label %do.end, !dbg !933

do.end:                                           ; preds = %do.cond
  br label %if.end16, !dbg !935

if.end16:                                         ; preds = %do.end, %land.lhs.true, %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %fhsize) #8, !dbg !936
  call void @llvm.dbg.declare(metadata ptr %fhsize, metadata !860, metadata !DIExpression()), !dbg !937
  %15 = load ptr, ptr %src.addr, align 8, !dbg !938
  %16 = load i64, ptr %srcSize.addr, align 8, !dbg !939
  %17 = load i32, ptr %format.addr, align 4, !dbg !940
  %call17 = call i64 @ZSTD_frameHeaderSize_internal(ptr noundef %15, i64 noundef %16, i32 noundef %17) #7, !dbg !941
  store i64 %call17, ptr %fhsize, align 8, !dbg !937
  %18 = load i64, ptr %srcSize.addr, align 8, !dbg !942
  %19 = load i64, ptr %fhsize, align 8, !dbg !944
  %cmp18 = icmp ult i64 %18, %19, !dbg !945
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !946

if.then20:                                        ; preds = %if.end16
  %20 = load i64, ptr %fhsize, align 8, !dbg !947
  store i64 %20, ptr %retval, align 8, !dbg !948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !948

if.end21:                                         ; preds = %if.end16
  %21 = load i64, ptr %fhsize, align 8, !dbg !949
  %conv22 = trunc i64 %21 to i32, !dbg !950
  %22 = load ptr, ptr %zfhPtr.addr, align 8, !dbg !951
  %headerSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %22, i32 0, i32 4, !dbg !952
  store i32 %conv22, ptr %headerSize, align 8, !dbg !953
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !954
  br label %cleanup, !dbg !954

cleanup:                                          ; preds = %if.end21, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %fhsize) #8, !dbg !954
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup112 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 1, ptr %fhdByte) #8, !dbg !955
  call void @llvm.dbg.declare(metadata ptr %fhdByte, metadata !862, metadata !DIExpression()), !dbg !956
  %23 = load ptr, ptr %ip, align 8, !dbg !957
  %24 = load i64, ptr %minInputSize, align 8, !dbg !958
  %sub = sub i64 %24, 1, !dbg !959
  %arrayidx = getelementptr i8, ptr %23, i64 %sub, !dbg !957
  %25 = load i8, ptr %arrayidx, align 1, !dbg !957
  store i8 %25, ptr %fhdByte, align 1, !dbg !956
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #8, !dbg !960
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !864, metadata !DIExpression()), !dbg !961
  %26 = load i64, ptr %minInputSize, align 8, !dbg !962
  store i64 %26, ptr %pos, align 8, !dbg !961
  call void @llvm.lifetime.start.p0(i64 4, ptr %dictIDSizeCode) #8, !dbg !963
  call void @llvm.dbg.declare(metadata ptr %dictIDSizeCode, metadata !865, metadata !DIExpression()), !dbg !964
  %27 = load i8, ptr %fhdByte, align 1, !dbg !965
  %conv23 = zext i8 %27 to i32, !dbg !965
  %and24 = and i32 %conv23, 3, !dbg !966
  store i32 %and24, ptr %dictIDSizeCode, align 4, !dbg !964
  call void @llvm.lifetime.start.p0(i64 4, ptr %checksumFlag) #8, !dbg !967
  call void @llvm.dbg.declare(metadata ptr %checksumFlag, metadata !866, metadata !DIExpression()), !dbg !968
  %28 = load i8, ptr %fhdByte, align 1, !dbg !969
  %conv25 = zext i8 %28 to i32, !dbg !969
  %shr = ashr i32 %conv25, 2, !dbg !970
  %and26 = and i32 %shr, 1, !dbg !971
  store i32 %and26, ptr %checksumFlag, align 4, !dbg !968
  call void @llvm.lifetime.start.p0(i64 4, ptr %singleSegment) #8, !dbg !972
  call void @llvm.dbg.declare(metadata ptr %singleSegment, metadata !867, metadata !DIExpression()), !dbg !973
  %29 = load i8, ptr %fhdByte, align 1, !dbg !974
  %conv27 = zext i8 %29 to i32, !dbg !974
  %shr28 = ashr i32 %conv27, 5, !dbg !975
  %and29 = and i32 %shr28, 1, !dbg !976
  store i32 %and29, ptr %singleSegment, align 4, !dbg !973
  call void @llvm.lifetime.start.p0(i64 4, ptr %fcsID) #8, !dbg !977
  call void @llvm.dbg.declare(metadata ptr %fcsID, metadata !868, metadata !DIExpression()), !dbg !978
  %30 = load i8, ptr %fhdByte, align 1, !dbg !979
  %conv30 = zext i8 %30 to i32, !dbg !979
  %shr31 = ashr i32 %conv30, 6, !dbg !980
  store i32 %shr31, ptr %fcsID, align 4, !dbg !978
  call void @llvm.lifetime.start.p0(i64 8, ptr %windowSize) #8, !dbg !981
  call void @llvm.dbg.declare(metadata ptr %windowSize, metadata !869, metadata !DIExpression()), !dbg !982
  store i64 0, ptr %windowSize, align 8, !dbg !982
  call void @llvm.lifetime.start.p0(i64 4, ptr %dictID) #8, !dbg !983
  call void @llvm.dbg.declare(metadata ptr %dictID, metadata !870, metadata !DIExpression()), !dbg !984
  store i32 0, ptr %dictID, align 4, !dbg !984
  call void @llvm.lifetime.start.p0(i64 8, ptr %frameContentSize32) #8, !dbg !985
  call void @llvm.dbg.declare(metadata ptr %frameContentSize32, metadata !871, metadata !DIExpression()), !dbg !986
  store i64 -1, ptr %frameContentSize32, align 8, !dbg !986
  %31 = load i8, ptr %fhdByte, align 1, !dbg !987
  %conv33 = zext i8 %31 to i32, !dbg !987
  %and34 = and i32 %conv33, 8, !dbg !987
  %cmp35 = icmp ne i32 %and34, 0, !dbg !987
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !989

if.then37:                                        ; preds = %cleanup.cont
  store i64 -14, ptr %retval, align 8, !dbg !990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup101, !dbg !990

if.end38:                                         ; preds = %cleanup.cont
  %32 = load i32, ptr %singleSegment, align 4, !dbg !992
  %tobool = icmp ne i32 %32, 0, !dbg !992
  br i1 %tobool, label %if.end56, label %if.then39, !dbg !993

if.then39:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 1, ptr %wlByte) #8, !dbg !994
  call void @llvm.dbg.declare(metadata ptr %wlByte, metadata !872, metadata !DIExpression()), !dbg !995
  %33 = load ptr, ptr %ip, align 8, !dbg !996
  %34 = load i64, ptr %pos, align 8, !dbg !997
  %inc = add i64 %34, 1, !dbg !997
  store i64 %inc, ptr %pos, align 8, !dbg !997
  %arrayidx40 = getelementptr i8, ptr %33, i64 %34, !dbg !996
  %35 = load i8, ptr %arrayidx40, align 1, !dbg !996
  store i8 %35, ptr %wlByte, align 1, !dbg !995
  call void @llvm.lifetime.start.p0(i64 4, ptr %windowLog) #8, !dbg !998
  call void @llvm.dbg.declare(metadata ptr %windowLog, metadata !875, metadata !DIExpression()), !dbg !999
  %36 = load i8, ptr %wlByte, align 1, !dbg !1000
  %conv41 = zext i8 %36 to i32, !dbg !1000
  %shr42 = ashr i32 %conv41, 3, !dbg !1001
  %add = add i32 %shr42, 10, !dbg !1002
  store i32 %add, ptr %windowLog, align 4, !dbg !999
  %37 = load i32, ptr %windowLog, align 4, !dbg !1003
  %cmp43 = icmp ugt i32 %37, 31, !dbg !1003
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !1005

if.then45:                                        ; preds = %if.then39
  store i64 -16, ptr %retval, align 8, !dbg !1006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup52, !dbg !1006

if.end46:                                         ; preds = %if.then39
  %38 = load i32, ptr %windowLog, align 4, !dbg !1008
  %sh_prom = zext i32 %38 to i64, !dbg !1009
  %shl = shl i64 1, %sh_prom, !dbg !1009
  store i64 %shl, ptr %windowSize, align 8, !dbg !1010
  %39 = load i64, ptr %windowSize, align 8, !dbg !1011
  %shr47 = lshr i64 %39, 3, !dbg !1012
  %40 = load i8, ptr %wlByte, align 1, !dbg !1013
  %conv48 = zext i8 %40 to i32, !dbg !1013
  %and49 = and i32 %conv48, 7, !dbg !1014
  %conv50 = sext i32 %and49 to i64, !dbg !1015
  %mul = mul i64 %shr47, %conv50, !dbg !1016
  %41 = load i64, ptr %windowSize, align 8, !dbg !1017
  %add51 = add i64 %41, %mul, !dbg !1017
  store i64 %add51, ptr %windowSize, align 8, !dbg !1017
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1018
  br label %cleanup52, !dbg !1018

cleanup52:                                        ; preds = %if.end46, %if.then45
  call void @llvm.lifetime.end.p0(i64 4, ptr %windowLog) #8, !dbg !1018
  call void @llvm.lifetime.end.p0(i64 1, ptr %wlByte) #8, !dbg !1018
  %cleanup.dest54 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest54, label %cleanup101 [
    i32 0, label %cleanup.cont55
  ]

cleanup.cont55:                                   ; preds = %cleanup52
  br label %if.end56, !dbg !1019

if.end56:                                         ; preds = %cleanup.cont55, %if.end38
  %42 = load i32, ptr %dictIDSizeCode, align 4, !dbg !1020
  switch i32 %42, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb60
    i32 3, label %sw.bb65
  ], !dbg !1021

sw.default:                                       ; preds = %if.end56
  br label %sw.epilog, !dbg !1022

sw.bb:                                            ; preds = %if.end56
  %43 = load ptr, ptr %ip, align 8, !dbg !1024
  %44 = load i64, ptr %pos, align 8, !dbg !1025
  %arrayidx57 = getelementptr i8, ptr %43, i64 %44, !dbg !1024
  %45 = load i8, ptr %arrayidx57, align 1, !dbg !1024
  %conv58 = zext i8 %45 to i32, !dbg !1024
  store i32 %conv58, ptr %dictID, align 4, !dbg !1026
  %46 = load i64, ptr %pos, align 8, !dbg !1027
  %inc59 = add i64 %46, 1, !dbg !1027
  store i64 %inc59, ptr %pos, align 8, !dbg !1027
  br label %sw.epilog, !dbg !1028

sw.bb60:                                          ; preds = %if.end56
  %47 = load ptr, ptr %ip, align 8, !dbg !1029
  %48 = load i64, ptr %pos, align 8, !dbg !1030
  %add.ptr61 = getelementptr i8, ptr %47, i64 %48, !dbg !1031
  %call62 = call zeroext i16 @MEM_readLE16(ptr noundef %add.ptr61) #7, !dbg !1032
  %conv63 = zext i16 %call62 to i32, !dbg !1032
  store i32 %conv63, ptr %dictID, align 4, !dbg !1033
  %49 = load i64, ptr %pos, align 8, !dbg !1034
  %add64 = add i64 %49, 2, !dbg !1034
  store i64 %add64, ptr %pos, align 8, !dbg !1034
  br label %sw.epilog, !dbg !1035

sw.bb65:                                          ; preds = %if.end56
  %50 = load ptr, ptr %ip, align 8, !dbg !1036
  %51 = load i64, ptr %pos, align 8, !dbg !1037
  %add.ptr66 = getelementptr i8, ptr %50, i64 %51, !dbg !1038
  %call67 = call i32 @MEM_readLE32(ptr noundef %add.ptr66) #7, !dbg !1039
  store i32 %call67, ptr %dictID, align 4, !dbg !1040
  %52 = load i64, ptr %pos, align 8, !dbg !1041
  %add68 = add i64 %52, 4, !dbg !1041
  store i64 %add68, ptr %pos, align 8, !dbg !1041
  br label %sw.epilog, !dbg !1042

sw.epilog:                                        ; preds = %sw.bb65, %sw.bb60, %sw.bb, %sw.default, %if.end56
  %53 = load i32, ptr %fcsID, align 4, !dbg !1043
  switch i32 %53, label %sw.default69 [
    i32 0, label %sw.bb70
    i32 1, label %sw.bb76
    i32 2, label %sw.bb82
    i32 3, label %sw.bb86
  ], !dbg !1044

sw.default69:                                     ; preds = %sw.epilog
  br label %sw.bb70, !dbg !1045

sw.bb70:                                          ; preds = %sw.epilog, %sw.default69
  %54 = load i32, ptr %singleSegment, align 4, !dbg !1047
  %tobool71 = icmp ne i32 %54, 0, !dbg !1047
  br i1 %tobool71, label %if.then72, label %if.end75, !dbg !1049

if.then72:                                        ; preds = %sw.bb70
  %55 = load ptr, ptr %ip, align 8, !dbg !1050
  %56 = load i64, ptr %pos, align 8, !dbg !1051
  %arrayidx73 = getelementptr i8, ptr %55, i64 %56, !dbg !1050
  %57 = load i8, ptr %arrayidx73, align 1, !dbg !1050
  %conv74 = zext i8 %57 to i64, !dbg !1050
  store i64 %conv74, ptr %frameContentSize32, align 8, !dbg !1052
  br label %if.end75, !dbg !1053

if.end75:                                         ; preds = %if.then72, %sw.bb70
  br label %sw.epilog89, !dbg !1054

sw.bb76:                                          ; preds = %sw.epilog
  %58 = load ptr, ptr %ip, align 8, !dbg !1055
  %59 = load i64, ptr %pos, align 8, !dbg !1056
  %add.ptr77 = getelementptr i8, ptr %58, i64 %59, !dbg !1057
  %call78 = call zeroext i16 @MEM_readLE16(ptr noundef %add.ptr77) #7, !dbg !1058
  %conv79 = zext i16 %call78 to i32, !dbg !1058
  %add80 = add i32 %conv79, 256, !dbg !1059
  %conv81 = sext i32 %add80 to i64, !dbg !1058
  store i64 %conv81, ptr %frameContentSize32, align 8, !dbg !1060
  br label %sw.epilog89, !dbg !1061

sw.bb82:                                          ; preds = %sw.epilog
  %60 = load ptr, ptr %ip, align 8, !dbg !1062
  %61 = load i64, ptr %pos, align 8, !dbg !1063
  %add.ptr83 = getelementptr i8, ptr %60, i64 %61, !dbg !1064
  %call84 = call i32 @MEM_readLE32(ptr noundef %add.ptr83) #7, !dbg !1065
  %conv85 = zext i32 %call84 to i64, !dbg !1065
  store i64 %conv85, ptr %frameContentSize32, align 8, !dbg !1066
  br label %sw.epilog89, !dbg !1067

sw.bb86:                                          ; preds = %sw.epilog
  %62 = load ptr, ptr %ip, align 8, !dbg !1068
  %63 = load i64, ptr %pos, align 8, !dbg !1069
  %add.ptr87 = getelementptr i8, ptr %62, i64 %63, !dbg !1070
  %call88 = call i64 @MEM_readLE64(ptr noundef %add.ptr87) #7, !dbg !1071
  store i64 %call88, ptr %frameContentSize32, align 8, !dbg !1072
  br label %sw.epilog89, !dbg !1073

sw.epilog89:                                      ; preds = %sw.bb86, %sw.bb82, %sw.bb76, %if.end75
  %64 = load i32, ptr %singleSegment, align 4, !dbg !1074
  %tobool90 = icmp ne i32 %64, 0, !dbg !1074
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !1076

if.then91:                                        ; preds = %sw.epilog89
  %65 = load i64, ptr %frameContentSize32, align 8, !dbg !1077
  store i64 %65, ptr %windowSize, align 8, !dbg !1078
  br label %if.end92, !dbg !1079

if.end92:                                         ; preds = %if.then91, %sw.epilog89
  %66 = load ptr, ptr %zfhPtr.addr, align 8, !dbg !1080
  %frameType93 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %66, i32 0, i32 3, !dbg !1081
  store i32 0, ptr %frameType93, align 4, !dbg !1082
  %67 = load i64, ptr %frameContentSize32, align 8, !dbg !1083
  %68 = load ptr, ptr %zfhPtr.addr, align 8, !dbg !1084
  %frameContentSize94 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %68, i32 0, i32 0, !dbg !1085
  store i64 %67, ptr %frameContentSize94, align 8, !dbg !1086
  %69 = load i64, ptr %windowSize, align 8, !dbg !1087
  %70 = load ptr, ptr %zfhPtr.addr, align 8, !dbg !1088
  %windowSize95 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %70, i32 0, i32 1, !dbg !1089
  store i64 %69, ptr %windowSize95, align 8, !dbg !1090
  %71 = load i64, ptr %windowSize, align 8, !dbg !1091
  %cmp96 = icmp ult i64 %71, 131072, !dbg !1091
  br i1 %cmp96, label %cond.true, label %cond.false, !dbg !1091

cond.true:                                        ; preds = %if.end92
  %72 = load i64, ptr %windowSize, align 8, !dbg !1091
  br label %cond.end, !dbg !1091

cond.false:                                       ; preds = %if.end92
  br label %cond.end, !dbg !1091

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %72, %cond.true ], [ 131072, %cond.false ], !dbg !1091
  %conv98 = trunc i64 %cond to i32, !dbg !1092
  %73 = load ptr, ptr %zfhPtr.addr, align 8, !dbg !1093
  %blockSizeMax = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %73, i32 0, i32 2, !dbg !1094
  store i32 %conv98, ptr %blockSizeMax, align 8, !dbg !1095
  %74 = load i32, ptr %dictID, align 4, !dbg !1096
  %75 = load ptr, ptr %zfhPtr.addr, align 8, !dbg !1097
  %dictID99 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %75, i32 0, i32 5, !dbg !1098
  store i32 %74, ptr %dictID99, align 4, !dbg !1099
  %76 = load i32, ptr %checksumFlag, align 4, !dbg !1100
  %77 = load ptr, ptr %zfhPtr.addr, align 8, !dbg !1101
  %checksumFlag100 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %77, i32 0, i32 6, !dbg !1102
  store i32 %76, ptr %checksumFlag100, align 8, !dbg !1103
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1104
  br label %cleanup101, !dbg !1104

cleanup101:                                       ; preds = %cond.end, %cleanup52, %if.then37
  call void @llvm.lifetime.end.p0(i64 8, ptr %frameContentSize32) #8, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 4, ptr %dictID) #8, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 8, ptr %windowSize) #8, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 4, ptr %fcsID) #8, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 4, ptr %singleSegment) #8, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 4, ptr %checksumFlag) #8, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 4, ptr %dictIDSizeCode) #8, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #8, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 1, ptr %fhdByte) #8, !dbg !1104
  %cleanup.dest110 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest110, label %cleanup112 [
    i32 0, label %cleanup.cont111
  ]

cleanup.cont111:                                  ; preds = %cleanup101
  store i64 0, ptr %retval, align 8, !dbg !1105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !1105

cleanup112:                                       ; preds = %cleanup.cont111, %cleanup101, %cleanup, %do.body, %if.end13, %if.then12, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %minInputSize) #8, !dbg !1106
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #8, !dbg !1106
  %78 = load i64, ptr %retval, align 8, !dbg !1106
  ret i64 %78, !dbg !1106
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_startingInputLength(i32 noundef %format) #0 align 16 !dbg !1107 {
entry:
  %format.addr = alloca i32, align 4
  %startingInputLength = alloca i64, align 8
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !1111, metadata !DIExpression()), !dbg !1113
  call void @llvm.lifetime.start.p0(i64 8, ptr %startingInputLength) #8, !dbg !1114
  call void @llvm.dbg.declare(metadata ptr %startingInputLength, metadata !1112, metadata !DIExpression()), !dbg !1115
  %0 = load i32, ptr %format.addr, align 4, !dbg !1116
  %cmp = icmp eq i32 %0, 0, !dbg !1116
  %1 = zext i1 %cmp to i64, !dbg !1116
  %cond = select i1 %cmp, i32 5, i32 1, !dbg !1116
  %conv = sext i32 %cond to i64, !dbg !1116
  store i64 %conv, ptr %startingInputLength, align 8, !dbg !1115
  %2 = load i64, ptr %startingInputLength, align 8, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 8, ptr %startingInputLength) #8, !dbg !1118
  ret i64 %2, !dbg !1119
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @MEM_readLE16(ptr noundef %memPtr) #5 align 16 !dbg !1120 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !1124, metadata !DIExpression()), !dbg !1125
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !1126
  %call = call zeroext i16 @get_unaligned_le16(ptr noundef %0) #7, !dbg !1127
  ret i16 %call, !dbg !1128
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @MEM_readLE64(ptr noundef %memPtr) #5 align 16 !dbg !1129 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !1133, metadata !DIExpression()), !dbg !1134
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !1135
  %call = call i64 @get_unaligned_le64(ptr noundef %0) #7, !dbg !1136
  ret i64 %call, !dbg !1137
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_getFrameHeader(ptr noundef %zfhPtr, ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1138 {
entry:
  %zfhPtr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  store ptr %zfhPtr, ptr %zfhPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zfhPtr.addr, metadata !1142, metadata !DIExpression()), !dbg !1145
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1143, metadata !DIExpression()), !dbg !1146
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1144, metadata !DIExpression()), !dbg !1147
  %0 = load ptr, ptr %zfhPtr.addr, align 8, !dbg !1148
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1149
  %2 = load i64, ptr %srcSize.addr, align 8, !dbg !1150
  %call = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #7, !dbg !1151
  ret i64 %call, !dbg !1152
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_getFrameContentSize(ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1153 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %zfh = alloca %struct.ZSTD_frameHeader, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1157, metadata !DIExpression()), !dbg !1161
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1158, metadata !DIExpression()), !dbg !1162
  call void @llvm.lifetime.start.p0(i64 40, ptr %zfh) #8, !dbg !1163
  call void @llvm.dbg.declare(metadata ptr %zfh, metadata !1159, metadata !DIExpression()), !dbg !1164
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1165
  %1 = load i64, ptr %srcSize.addr, align 8, !dbg !1167
  %call = call i64 @ZSTD_getFrameHeader(ptr noundef %zfh, ptr noundef %0, i64 noundef %1) #7, !dbg !1168
  %cmp = icmp ne i64 %call, 0, !dbg !1169
  br i1 %cmp, label %if.then, label %if.end, !dbg !1170

if.then:                                          ; preds = %entry
  store i64 -2, ptr %retval, align 8, !dbg !1171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1171

if.end:                                           ; preds = %entry
  %frameType = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 3, !dbg !1172
  %2 = load i32, ptr %frameType, align 4, !dbg !1172
  %cmp1 = icmp eq i32 %2, 1, !dbg !1174
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !1175

if.then2:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !1176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1176

if.else:                                          ; preds = %if.end
  %frameContentSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 0, !dbg !1178
  %3 = load i64, ptr %frameContentSize, align 8, !dbg !1178
  store i64 %3, ptr %retval, align 8, !dbg !1180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1180

cleanup:                                          ; preds = %if.else, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %zfh) #8, !dbg !1181
  %4 = load i64, ptr %retval, align 8, !dbg !1182
  ret i64 %4, !dbg !1182
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_readSkippableFrame(ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %magicVariant, ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1183 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %magicVariant.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %magicNumber = alloca i32, align 4
  %skippableFrameSize = alloca i64, align 8
  %skippableContentSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1188, metadata !DIExpression()), !dbg !1196
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1189, metadata !DIExpression()), !dbg !1197
  store ptr %magicVariant, ptr %magicVariant.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %magicVariant.addr, metadata !1190, metadata !DIExpression()), !dbg !1198
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1191, metadata !DIExpression()), !dbg !1199
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1192, metadata !DIExpression()), !dbg !1200
  call void @llvm.lifetime.start.p0(i64 4, ptr %magicNumber) #8, !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %magicNumber, metadata !1193, metadata !DIExpression()), !dbg !1202
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1203
  %call = call i32 @MEM_readLE32(ptr noundef %0) #7, !dbg !1204
  store i32 %call, ptr %magicNumber, align 4, !dbg !1202
  call void @llvm.lifetime.start.p0(i64 8, ptr %skippableFrameSize) #8, !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %skippableFrameSize, metadata !1194, metadata !DIExpression()), !dbg !1206
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1207
  %2 = load i64, ptr %srcSize.addr, align 8, !dbg !1208
  %call1 = call i64 @readSkippableFrameSize(ptr noundef %1, i64 noundef %2) #7, !dbg !1209
  store i64 %call1, ptr %skippableFrameSize, align 8, !dbg !1206
  call void @llvm.lifetime.start.p0(i64 8, ptr %skippableContentSize) #8, !dbg !1210
  call void @llvm.dbg.declare(metadata ptr %skippableContentSize, metadata !1195, metadata !DIExpression()), !dbg !1211
  %3 = load i64, ptr %skippableFrameSize, align 8, !dbg !1212
  %sub = sub i64 %3, 8, !dbg !1213
  store i64 %sub, ptr %skippableContentSize, align 8, !dbg !1211
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1214
  %5 = load i64, ptr %srcSize.addr, align 8, !dbg !1214
  %call2 = call i32 @ZSTD_isSkippableFrame(ptr noundef %4, i64 noundef %5) #7, !dbg !1214
  %tobool = icmp ne i32 %call2, 0, !dbg !1214
  br i1 %tobool, label %if.end, label %if.then, !dbg !1216

if.then:                                          ; preds = %entry
  store i64 -14, ptr %retval, align 8, !dbg !1217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1217

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %skippableFrameSize, align 8, !dbg !1219
  %cmp = icmp ult i64 %6, 8, !dbg !1219
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !1219

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i64, ptr %skippableFrameSize, align 8, !dbg !1219
  %8 = load i64, ptr %srcSize.addr, align 8, !dbg !1219
  %cmp3 = icmp ugt i64 %7, %8, !dbg !1219
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1221

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i64 -72, ptr %retval, align 8, !dbg !1222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1222

if.end5:                                          ; preds = %lor.lhs.false
  %9 = load i64, ptr %skippableContentSize, align 8, !dbg !1224
  %10 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1224
  %cmp6 = icmp ugt i64 %9, %10, !dbg !1224
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1226

if.then7:                                         ; preds = %if.end5
  store i64 -70, ptr %retval, align 8, !dbg !1227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1227

if.end8:                                          ; preds = %if.end5
  %11 = load i64, ptr %skippableContentSize, align 8, !dbg !1229
  %cmp9 = icmp ugt i64 %11, 0, !dbg !1231
  br i1 %cmp9, label %land.lhs.true, label %if.end12, !dbg !1232

land.lhs.true:                                    ; preds = %if.end8
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !1233
  %cmp10 = icmp ne ptr %12, null, !dbg !1234
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1235

if.then11:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %dst.addr, align 8, !dbg !1236
  %14 = load ptr, ptr %src.addr, align 8, !dbg !1236
  %add.ptr = getelementptr i8, ptr %14, i64 8, !dbg !1236
  %15 = load i64, ptr %skippableContentSize, align 8, !dbg !1236
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %add.ptr, i64 %15, i1 false), !dbg !1236
  br label %if.end12, !dbg !1236

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %if.end8
  %16 = load ptr, ptr %magicVariant.addr, align 8, !dbg !1237
  %cmp13 = icmp ne ptr %16, null, !dbg !1239
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !1240

if.then14:                                        ; preds = %if.end12
  %17 = load i32, ptr %magicNumber, align 4, !dbg !1241
  %sub15 = sub i32 %17, 407710288, !dbg !1242
  %18 = load ptr, ptr %magicVariant.addr, align 8, !dbg !1243
  store i32 %sub15, ptr %18, align 4, !dbg !1244
  br label %if.end16, !dbg !1245

if.end16:                                         ; preds = %if.then14, %if.end12
  %19 = load i64, ptr %skippableContentSize, align 8, !dbg !1246
  store i64 %19, ptr %retval, align 8, !dbg !1247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1247

cleanup:                                          ; preds = %if.end16, %if.then7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %skippableContentSize) #8, !dbg !1248
  call void @llvm.lifetime.end.p0(i64 8, ptr %skippableFrameSize) #8, !dbg !1248
  call void @llvm.lifetime.end.p0(i64 4, ptr %magicNumber) #8, !dbg !1248
  %20 = load i64, ptr %retval, align 8, !dbg !1248
  ret i64 %20, !dbg !1248
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @readSkippableFrameSize(ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1249 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %skippableHeaderSize = alloca i64, align 8
  %sizeU32 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %skippableSize = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1251, metadata !DIExpression()), !dbg !1257
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1252, metadata !DIExpression()), !dbg !1258
  call void @llvm.lifetime.start.p0(i64 8, ptr %skippableHeaderSize) #8, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %skippableHeaderSize, metadata !1253, metadata !DIExpression()), !dbg !1260
  store i64 8, ptr %skippableHeaderSize, align 8, !dbg !1260
  call void @llvm.lifetime.start.p0(i64 4, ptr %sizeU32) #8, !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %sizeU32, metadata !1254, metadata !DIExpression()), !dbg !1262
  %0 = load i64, ptr %srcSize.addr, align 8, !dbg !1263
  %cmp = icmp ult i64 %0, 8, !dbg !1263
  br i1 %cmp, label %if.then, label %if.end, !dbg !1265

if.then:                                          ; preds = %entry
  store i64 -72, ptr %retval, align 8, !dbg !1266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !1266

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1268
  %add.ptr = getelementptr i8, ptr %1, i64 4, !dbg !1269
  %call = call i32 @MEM_readLE32(ptr noundef %add.ptr) #7, !dbg !1270
  store i32 %call, ptr %sizeU32, align 4, !dbg !1271
  %2 = load i32, ptr %sizeU32, align 4, !dbg !1272
  %add = add i32 %2, 8, !dbg !1272
  %3 = load i32, ptr %sizeU32, align 4, !dbg !1272
  %cmp1 = icmp ult i32 %add, %3, !dbg !1272
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1274

if.then2:                                         ; preds = %if.end
  store i64 -14, ptr %retval, align 8, !dbg !1275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !1275

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %skippableSize) #8, !dbg !1277
  call void @llvm.dbg.declare(metadata ptr %skippableSize, metadata !1255, metadata !DIExpression()), !dbg !1278
  %4 = load i32, ptr %sizeU32, align 4, !dbg !1279
  %conv = zext i32 %4 to i64, !dbg !1279
  %add4 = add i64 8, %conv, !dbg !1280
  store i64 %add4, ptr %skippableSize, align 8, !dbg !1278
  %5 = load i64, ptr %skippableSize, align 8, !dbg !1281
  %6 = load i64, ptr %srcSize.addr, align 8, !dbg !1281
  %cmp5 = icmp ugt i64 %5, %6, !dbg !1281
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !1283

if.then7:                                         ; preds = %if.end3
  store i64 -72, ptr %retval, align 8, !dbg !1284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1284

if.end8:                                          ; preds = %if.end3
  %7 = load i64, ptr %skippableSize, align 8, !dbg !1286
  store i64 %7, ptr %retval, align 8, !dbg !1287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1287

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %skippableSize) #8, !dbg !1288
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sizeU32) #8, !dbg !1289
  call void @llvm.lifetime.end.p0(i64 8, ptr %skippableHeaderSize) #8, !dbg !1289
  %8 = load i64, ptr %retval, align 8, !dbg !1289
  ret i64 %8, !dbg !1289
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_findDecompressedSize(ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1290 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %totalDstSize = alloca i64, align 8
  %magicNumber = alloca i32, align 4
  %skippableSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ret = alloca i64, align 8
  %frameSrcSize = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1292, metadata !DIExpression()), !dbg !1305
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1293, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 8, ptr %totalDstSize) #8, !dbg !1307
  call void @llvm.dbg.declare(metadata ptr %totalDstSize, metadata !1294, metadata !DIExpression()), !dbg !1308
  store i64 0, ptr %totalDstSize, align 8, !dbg !1308
  br label %while.cond, !dbg !1309

while.cond:                                       ; preds = %cleanup.cont28, %cleanup26, %entry
  %0 = load i64, ptr %srcSize.addr, align 8, !dbg !1310
  %call = call i64 @ZSTD_startingInputLength(i32 noundef 0) #7, !dbg !1311
  %cmp = icmp uge i64 %0, %call, !dbg !1312
  br i1 %cmp, label %while.body, label %while.end, !dbg !1309

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %magicNumber) #8, !dbg !1313
  call void @llvm.dbg.declare(metadata ptr %magicNumber, metadata !1295, metadata !DIExpression()), !dbg !1314
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1315
  %call1 = call i32 @MEM_readLE32(ptr noundef %1) #7, !dbg !1316
  store i32 %call1, ptr %magicNumber, align 4, !dbg !1314
  %2 = load i32, ptr %magicNumber, align 4, !dbg !1317
  %and = and i32 %2, -16, !dbg !1318
  %cmp2 = icmp eq i32 %and, 407710288, !dbg !1319
  br i1 %cmp2, label %if.then, label %if.end6, !dbg !1320

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %skippableSize) #8, !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %skippableSize, metadata !1297, metadata !DIExpression()), !dbg !1322
  %3 = load ptr, ptr %src.addr, align 8, !dbg !1323
  %4 = load i64, ptr %srcSize.addr, align 8, !dbg !1324
  %call3 = call i64 @readSkippableFrameSize(ptr noundef %3, i64 noundef %4) #7, !dbg !1325
  store i64 %call3, ptr %skippableSize, align 8, !dbg !1322
  %5 = load i64, ptr %skippableSize, align 8, !dbg !1326
  %call4 = call i32 @ERR_isError(i64 noundef %5) #7, !dbg !1328
  %tobool = icmp ne i32 %call4, 0, !dbg !1328
  br i1 %tobool, label %if.then5, label %if.end, !dbg !1329

if.then5:                                         ; preds = %if.then
  store i64 -2, ptr %retval, align 8, !dbg !1330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1330

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %src.addr, align 8, !dbg !1332
  %7 = load i64, ptr %skippableSize, align 8, !dbg !1333
  %add.ptr = getelementptr i8, ptr %6, i64 %7, !dbg !1334
  store ptr %add.ptr, ptr %src.addr, align 8, !dbg !1335
  %8 = load i64, ptr %skippableSize, align 8, !dbg !1336
  %9 = load i64, ptr %srcSize.addr, align 8, !dbg !1337
  %sub = sub i64 %9, %8, !dbg !1337
  store i64 %sub, ptr %srcSize.addr, align 8, !dbg !1337
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1338, !llvm.loop !1339

cleanup:                                          ; preds = %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %skippableSize) #8, !dbg !1343
  br label %cleanup26

if.end6:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !1344
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1300, metadata !DIExpression()), !dbg !1345
  %10 = load ptr, ptr %src.addr, align 8, !dbg !1346
  %11 = load i64, ptr %srcSize.addr, align 8, !dbg !1347
  %call7 = call i64 @ZSTD_getFrameContentSize(ptr noundef %10, i64 noundef %11) #7, !dbg !1348
  store i64 %call7, ptr %ret, align 8, !dbg !1345
  %12 = load i64, ptr %ret, align 8, !dbg !1349
  %cmp8 = icmp uge i64 %12, -2, !dbg !1351
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1352

if.then9:                                         ; preds = %if.end6
  %13 = load i64, ptr %ret, align 8, !dbg !1353
  store i64 %13, ptr %retval, align 8, !dbg !1354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !1354

if.end10:                                         ; preds = %if.end6
  %14 = load i64, ptr %totalDstSize, align 8, !dbg !1355
  %15 = load i64, ptr %ret, align 8, !dbg !1357
  %add = add i64 %14, %15, !dbg !1358
  %16 = load i64, ptr %totalDstSize, align 8, !dbg !1359
  %cmp11 = icmp ult i64 %add, %16, !dbg !1360
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1361

if.then12:                                        ; preds = %if.end10
  store i64 -2, ptr %retval, align 8, !dbg !1362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !1362

if.end13:                                         ; preds = %if.end10
  %17 = load i64, ptr %ret, align 8, !dbg !1363
  %18 = load i64, ptr %totalDstSize, align 8, !dbg !1364
  %add14 = add i64 %18, %17, !dbg !1364
  store i64 %add14, ptr %totalDstSize, align 8, !dbg !1364
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1365
  br label %cleanup15, !dbg !1365

cleanup15:                                        ; preds = %if.end13, %if.then12, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !1365
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup15
  call void @llvm.lifetime.start.p0(i64 8, ptr %frameSrcSize) #8, !dbg !1366
  call void @llvm.dbg.declare(metadata ptr %frameSrcSize, metadata !1303, metadata !DIExpression()), !dbg !1367
  %19 = load ptr, ptr %src.addr, align 8, !dbg !1368
  %20 = load i64, ptr %srcSize.addr, align 8, !dbg !1369
  %call16 = call i64 @ZSTD_findFrameCompressedSize(ptr noundef %19, i64 noundef %20) #7, !dbg !1370
  store i64 %call16, ptr %frameSrcSize, align 8, !dbg !1367
  %21 = load i64, ptr %frameSrcSize, align 8, !dbg !1371
  %call17 = call i32 @ERR_isError(i64 noundef %21) #7, !dbg !1373
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1373
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1374

if.then19:                                        ; preds = %cleanup.cont
  store i64 -2, ptr %retval, align 8, !dbg !1375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !1375

if.end20:                                         ; preds = %cleanup.cont
  %22 = load ptr, ptr %src.addr, align 8, !dbg !1377
  %23 = load i64, ptr %frameSrcSize, align 8, !dbg !1378
  %add.ptr21 = getelementptr i8, ptr %22, i64 %23, !dbg !1379
  store ptr %add.ptr21, ptr %src.addr, align 8, !dbg !1380
  %24 = load i64, ptr %frameSrcSize, align 8, !dbg !1381
  %25 = load i64, ptr %srcSize.addr, align 8, !dbg !1382
  %sub22 = sub i64 %25, %24, !dbg !1382
  store i64 %sub22, ptr %srcSize.addr, align 8, !dbg !1382
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1383
  br label %cleanup23, !dbg !1383

cleanup23:                                        ; preds = %if.end20, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %frameSrcSize) #8, !dbg !1383
  %cleanup.dest24 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest24, label %cleanup26 [
    i32 0, label %cleanup.cont25
  ]

cleanup.cont25:                                   ; preds = %cleanup23
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1340
  br label %cleanup26, !dbg !1340

cleanup26:                                        ; preds = %cleanup.cont25, %cleanup23, %cleanup15, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %magicNumber) #8, !dbg !1340
  %cleanup.dest27 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest27, label %cleanup32 [
    i32 0, label %cleanup.cont28
    i32 2, label %while.cond
  ]

cleanup.cont28:                                   ; preds = %cleanup26
  br label %while.cond, !dbg !1309, !llvm.loop !1339

while.end:                                        ; preds = %while.cond
  %26 = load i64, ptr %srcSize.addr, align 8, !dbg !1384
  %tobool29 = icmp ne i64 %26, 0, !dbg !1384
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !1386

if.then30:                                        ; preds = %while.end
  store i64 -2, ptr %retval, align 8, !dbg !1387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1387

if.end31:                                         ; preds = %while.end
  %27 = load i64, ptr %totalDstSize, align 8, !dbg !1388
  store i64 %27, ptr %retval, align 8, !dbg !1389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1389

cleanup32:                                        ; preds = %if.end31, %if.then30, %cleanup26
  call void @llvm.lifetime.end.p0(i64 8, ptr %totalDstSize) #8, !dbg !1390
  %28 = load i64, ptr %retval, align 8, !dbg !1390
  ret i64 %28, !dbg !1390
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ERR_isError(i64 noundef %code) #0 align 16 !dbg !1391 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !1396, metadata !DIExpression()), !dbg !1397
  %0 = load i64, ptr %code.addr, align 8, !dbg !1398
  %cmp = icmp ugt i64 %0, -120, !dbg !1399
  %conv = zext i1 %cmp to i32, !dbg !1399
  ret i32 %conv, !dbg !1400
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_findFrameCompressedSize(ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1401 {
entry:
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %frameSizeInfo = alloca %struct.ZSTD_frameSizeInfo, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1403, metadata !DIExpression()), !dbg !1412
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1404, metadata !DIExpression()), !dbg !1413
  call void @llvm.lifetime.start.p0(i64 16, ptr %frameSizeInfo) #8, !dbg !1414
  call void @llvm.dbg.declare(metadata ptr %frameSizeInfo, metadata !1405, metadata !DIExpression()), !dbg !1415
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1416
  %1 = load i64, ptr %srcSize.addr, align 8, !dbg !1417
  %call = call { i64, i64 } @ZSTD_findFrameSizeInfo(ptr noundef %0, i64 noundef %1) #7, !dbg !1418
  %2 = getelementptr inbounds { i64, i64 }, ptr %frameSizeInfo, i32 0, i32 0, !dbg !1418
  %3 = extractvalue { i64, i64 } %call, 0, !dbg !1418
  store i64 %3, ptr %2, align 8, !dbg !1418
  %4 = getelementptr inbounds { i64, i64 }, ptr %frameSizeInfo, i32 0, i32 1, !dbg !1418
  %5 = extractvalue { i64, i64 } %call, 1, !dbg !1418
  store i64 %5, ptr %4, align 8, !dbg !1418
  %compressedSize = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %frameSizeInfo, i32 0, i32 0, !dbg !1419
  %6 = load i64, ptr %compressedSize, align 8, !dbg !1419
  call void @llvm.lifetime.end.p0(i64 16, ptr %frameSizeInfo) #8, !dbg !1420
  ret i64 %6, !dbg !1421
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_getDecompressedSize(ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1422 {
entry:
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1424, metadata !DIExpression()), !dbg !1427
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1425, metadata !DIExpression()), !dbg !1428
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !1429
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1426, metadata !DIExpression()), !dbg !1430
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1431
  %1 = load i64, ptr %srcSize.addr, align 8, !dbg !1432
  %call = call i64 @ZSTD_getFrameContentSize(ptr noundef %0, i64 noundef %1) #7, !dbg !1433
  store i64 %call, ptr %ret, align 8, !dbg !1430
  %2 = load i64, ptr %ret, align 8, !dbg !1434
  %cmp = icmp uge i64 %2, -2, !dbg !1435
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1436

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1436

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %ret, align 8, !dbg !1437
  br label %cond.end, !dbg !1436

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %3, %cond.false ], !dbg !1436
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !1438
  ret i64 %cond, !dbg !1439
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @ZSTD_findFrameSizeInfo(ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1440 {
entry:
  %retval = alloca %struct.ZSTD_frameSizeInfo, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %frameSizeInfo = alloca %struct.ZSTD_frameSizeInfo, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ip = alloca ptr, align 8
  %ipstart = alloca ptr, align 8
  %remainingSize = alloca i64, align 8
  %nbBlocks = alloca i64, align 8
  %zfh = alloca %struct.ZSTD_frameHeader, align 8
  %ret = alloca i64, align 8
  %blockProperties = alloca %struct.blockProperties_t, align 4
  %cBlockSize = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1444, metadata !DIExpression()), !dbg !1466
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1445, metadata !DIExpression()), !dbg !1467
  call void @llvm.lifetime.start.p0(i64 16, ptr %frameSizeInfo) #8, !dbg !1468
  call void @llvm.dbg.declare(metadata ptr %frameSizeInfo, metadata !1446, metadata !DIExpression()), !dbg !1469
  call void @llvm.memset.p0.i64(ptr align 8 %frameSizeInfo, i8 0, i64 16, i1 false), !dbg !1470
  %0 = load i64, ptr %srcSize.addr, align 8, !dbg !1471
  %cmp = icmp uge i64 %0, 8, !dbg !1472
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1473

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1474
  %call = call i32 @MEM_readLE32(ptr noundef %1) #7, !dbg !1475
  %and = and i32 %call, -16, !dbg !1476
  %cmp1 = icmp eq i32 %and, 407710288, !dbg !1477
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1478

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %src.addr, align 8, !dbg !1479
  %3 = load i64, ptr %srcSize.addr, align 8, !dbg !1481
  %call2 = call i64 @readSkippableFrameSize(ptr noundef %2, i64 noundef %3) #7, !dbg !1482
  %compressedSize = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %frameSizeInfo, i32 0, i32 0, !dbg !1483
  store i64 %call2, ptr %compressedSize, align 8, !dbg !1484
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %frameSizeInfo, i64 16, i1 false), !dbg !1485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup53, !dbg !1486

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #8, !dbg !1487
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !1447, metadata !DIExpression()), !dbg !1488
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1489
  store ptr %4, ptr %ip, align 8, !dbg !1488
  call void @llvm.lifetime.start.p0(i64 8, ptr %ipstart) #8, !dbg !1490
  call void @llvm.dbg.declare(metadata ptr %ipstart, metadata !1450, metadata !DIExpression()), !dbg !1491
  %5 = load ptr, ptr %ip, align 8, !dbg !1492
  store ptr %5, ptr %ipstart, align 8, !dbg !1491
  call void @llvm.lifetime.start.p0(i64 8, ptr %remainingSize) #8, !dbg !1493
  call void @llvm.dbg.declare(metadata ptr %remainingSize, metadata !1452, metadata !DIExpression()), !dbg !1494
  %6 = load i64, ptr %srcSize.addr, align 8, !dbg !1495
  store i64 %6, ptr %remainingSize, align 8, !dbg !1494
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbBlocks) #8, !dbg !1496
  call void @llvm.dbg.declare(metadata ptr %nbBlocks, metadata !1453, metadata !DIExpression()), !dbg !1497
  store i64 0, ptr %nbBlocks, align 8, !dbg !1497
  call void @llvm.lifetime.start.p0(i64 40, ptr %zfh) #8, !dbg !1498
  call void @llvm.dbg.declare(metadata ptr %zfh, metadata !1454, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1455, metadata !DIExpression()), !dbg !1501
  %7 = load ptr, ptr %src.addr, align 8, !dbg !1502
  %8 = load i64, ptr %srcSize.addr, align 8, !dbg !1503
  %call3 = call i64 @ZSTD_getFrameHeader(ptr noundef %zfh, ptr noundef %7, i64 noundef %8) #7, !dbg !1504
  store i64 %call3, ptr %ret, align 8, !dbg !1501
  %9 = load i64, ptr %ret, align 8, !dbg !1505
  %call4 = call i32 @ERR_isError(i64 noundef %9) #7, !dbg !1507
  %tobool = icmp ne i32 %call4, 0, !dbg !1507
  br i1 %tobool, label %if.then5, label %if.end, !dbg !1508

if.then5:                                         ; preds = %if.else
  %10 = load i64, ptr %ret, align 8, !dbg !1509
  %call6 = call { i64, i64 } @ZSTD_errorFrameSizeInfo(i64 noundef %10) #7, !dbg !1510
  %11 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 0, !dbg !1510
  %12 = extractvalue { i64, i64 } %call6, 0, !dbg !1510
  store i64 %12, ptr %11, align 8, !dbg !1510
  %13 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 1, !dbg !1510
  %14 = extractvalue { i64, i64 } %call6, 1, !dbg !1510
  store i64 %14, ptr %13, align 8, !dbg !1510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1511

if.end:                                           ; preds = %if.else
  %15 = load i64, ptr %ret, align 8, !dbg !1512
  %cmp7 = icmp ugt i64 %15, 0, !dbg !1514
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !1515

if.then8:                                         ; preds = %if.end
  %call9 = call { i64, i64 } @ZSTD_errorFrameSizeInfo(i64 noundef -72) #7, !dbg !1516
  %16 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 0, !dbg !1516
  %17 = extractvalue { i64, i64 } %call9, 0, !dbg !1516
  store i64 %17, ptr %16, align 8, !dbg !1516
  %18 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 1, !dbg !1516
  %19 = extractvalue { i64, i64 } %call9, 1, !dbg !1516
  store i64 %19, ptr %18, align 8, !dbg !1516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1517

if.end10:                                         ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1518
  br label %cleanup, !dbg !1518

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !1518
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup48 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %headerSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 4, !dbg !1519
  %20 = load i32, ptr %headerSize, align 8, !dbg !1519
  %21 = load ptr, ptr %ip, align 8, !dbg !1520
  %idx.ext = zext i32 %20 to i64, !dbg !1520
  %add.ptr = getelementptr i8, ptr %21, i64 %idx.ext, !dbg !1520
  store ptr %add.ptr, ptr %ip, align 8, !dbg !1520
  %headerSize11 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 4, !dbg !1521
  %22 = load i32, ptr %headerSize11, align 8, !dbg !1521
  %conv = zext i32 %22 to i64, !dbg !1522
  %23 = load i64, ptr %remainingSize, align 8, !dbg !1523
  %sub = sub i64 %23, %conv, !dbg !1523
  store i64 %sub, ptr %remainingSize, align 8, !dbg !1523
  br label %while.cond, !dbg !1524

while.cond:                                       ; preds = %cleanup.cont33, %cleanup.cont
  br label %while.body, !dbg !1524

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 12, ptr %blockProperties) #8, !dbg !1525
  call void @llvm.dbg.declare(metadata ptr %blockProperties, metadata !1457, metadata !DIExpression()), !dbg !1526
  call void @llvm.lifetime.start.p0(i64 8, ptr %cBlockSize) #8, !dbg !1527
  call void @llvm.dbg.declare(metadata ptr %cBlockSize, metadata !1465, metadata !DIExpression()), !dbg !1528
  %24 = load ptr, ptr %ip, align 8, !dbg !1529
  %25 = load i64, ptr %remainingSize, align 8, !dbg !1530
  %call12 = call i64 @ZSTD_getcBlockSize(ptr noundef %24, i64 noundef %25, ptr noundef %blockProperties) #7, !dbg !1531
  store i64 %call12, ptr %cBlockSize, align 8, !dbg !1528
  %26 = load i64, ptr %cBlockSize, align 8, !dbg !1532
  %call13 = call i32 @ERR_isError(i64 noundef %26) #7, !dbg !1534
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1534
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !1535

if.then15:                                        ; preds = %while.body
  %27 = load i64, ptr %cBlockSize, align 8, !dbg !1536
  %call16 = call { i64, i64 } @ZSTD_errorFrameSizeInfo(i64 noundef %27) #7, !dbg !1537
  %28 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 0, !dbg !1537
  %29 = extractvalue { i64, i64 } %call16, 0, !dbg !1537
  store i64 %29, ptr %28, align 8, !dbg !1537
  %30 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 1, !dbg !1537
  %31 = extractvalue { i64, i64 } %call16, 1, !dbg !1537
  store i64 %31, ptr %30, align 8, !dbg !1537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !1538

if.end17:                                         ; preds = %while.body
  %32 = load i64, ptr %cBlockSize, align 8, !dbg !1539
  %add = add i64 3, %32, !dbg !1541
  %33 = load i64, ptr %remainingSize, align 8, !dbg !1542
  %cmp18 = icmp ugt i64 %add, %33, !dbg !1543
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !1544

if.then20:                                        ; preds = %if.end17
  %call21 = call { i64, i64 } @ZSTD_errorFrameSizeInfo(i64 noundef -72) #7, !dbg !1545
  %34 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 0, !dbg !1545
  %35 = extractvalue { i64, i64 } %call21, 0, !dbg !1545
  store i64 %35, ptr %34, align 8, !dbg !1545
  %36 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 1, !dbg !1545
  %37 = extractvalue { i64, i64 } %call21, 1, !dbg !1545
  store i64 %37, ptr %36, align 8, !dbg !1545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !1546

if.end22:                                         ; preds = %if.end17
  %38 = load i64, ptr %cBlockSize, align 8, !dbg !1547
  %add23 = add i64 3, %38, !dbg !1548
  %39 = load ptr, ptr %ip, align 8, !dbg !1549
  %add.ptr24 = getelementptr i8, ptr %39, i64 %add23, !dbg !1549
  store ptr %add.ptr24, ptr %ip, align 8, !dbg !1549
  %40 = load i64, ptr %cBlockSize, align 8, !dbg !1550
  %add25 = add i64 3, %40, !dbg !1551
  %41 = load i64, ptr %remainingSize, align 8, !dbg !1552
  %sub26 = sub i64 %41, %add25, !dbg !1552
  store i64 %sub26, ptr %remainingSize, align 8, !dbg !1552
  %42 = load i64, ptr %nbBlocks, align 8, !dbg !1553
  %inc = add i64 %42, 1, !dbg !1553
  store i64 %inc, ptr %nbBlocks, align 8, !dbg !1553
  %lastBlock = getelementptr inbounds %struct.blockProperties_t, ptr %blockProperties, i32 0, i32 1, !dbg !1554
  %43 = load i32, ptr %lastBlock, align 4, !dbg !1554
  %tobool27 = icmp ne i32 %43, 0, !dbg !1556
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !1557

if.then28:                                        ; preds = %if.end22
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !1558

if.end29:                                         ; preds = %if.end22
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1559
  br label %cleanup30, !dbg !1559

cleanup30:                                        ; preds = %if.end29, %if.then28, %if.then20, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %cBlockSize) #8, !dbg !1559
  call void @llvm.lifetime.end.p0(i64 12, ptr %blockProperties) #8, !dbg !1559
  %cleanup.dest32 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest32, label %cleanup48 [
    i32 0, label %cleanup.cont33
    i32 3, label %while.end
  ]

cleanup.cont33:                                   ; preds = %cleanup30
  br label %while.cond, !dbg !1524, !llvm.loop !1560

while.end:                                        ; preds = %cleanup30
  %checksumFlag = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 6, !dbg !1561
  %44 = load i32, ptr %checksumFlag, align 8, !dbg !1561
  %tobool34 = icmp ne i32 %44, 0, !dbg !1563
  br i1 %tobool34, label %if.then35, label %if.end42, !dbg !1564

if.then35:                                        ; preds = %while.end
  %45 = load i64, ptr %remainingSize, align 8, !dbg !1565
  %cmp36 = icmp ult i64 %45, 4, !dbg !1568
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !1569

if.then38:                                        ; preds = %if.then35
  %call39 = call { i64, i64 } @ZSTD_errorFrameSizeInfo(i64 noundef -72) #7, !dbg !1570
  %46 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 0, !dbg !1570
  %47 = extractvalue { i64, i64 } %call39, 0, !dbg !1570
  store i64 %47, ptr %46, align 8, !dbg !1570
  %48 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 1, !dbg !1570
  %49 = extractvalue { i64, i64 } %call39, 1, !dbg !1570
  store i64 %49, ptr %48, align 8, !dbg !1570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !1571

if.end40:                                         ; preds = %if.then35
  %50 = load ptr, ptr %ip, align 8, !dbg !1572
  %add.ptr41 = getelementptr i8, ptr %50, i64 4, !dbg !1572
  store ptr %add.ptr41, ptr %ip, align 8, !dbg !1572
  br label %if.end42, !dbg !1573

if.end42:                                         ; preds = %if.end40, %while.end
  %51 = load ptr, ptr %ip, align 8, !dbg !1574
  %52 = load ptr, ptr %ipstart, align 8, !dbg !1575
  %sub.ptr.lhs.cast = ptrtoint ptr %51 to i64, !dbg !1576
  %sub.ptr.rhs.cast = ptrtoint ptr %52 to i64, !dbg !1576
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1576
  %compressedSize43 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %frameSizeInfo, i32 0, i32 0, !dbg !1577
  store i64 %sub.ptr.sub, ptr %compressedSize43, align 8, !dbg !1578
  %frameContentSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 0, !dbg !1579
  %53 = load i64, ptr %frameContentSize, align 8, !dbg !1579
  %cmp44 = icmp ne i64 %53, -1, !dbg !1580
  br i1 %cmp44, label %cond.true, label %cond.false, !dbg !1581

cond.true:                                        ; preds = %if.end42
  %frameContentSize46 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 0, !dbg !1582
  %54 = load i64, ptr %frameContentSize46, align 8, !dbg !1582
  br label %cond.end, !dbg !1581

cond.false:                                       ; preds = %if.end42
  %55 = load i64, ptr %nbBlocks, align 8, !dbg !1583
  %blockSizeMax = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 2, !dbg !1584
  %56 = load i32, ptr %blockSizeMax, align 8, !dbg !1584
  %conv47 = zext i32 %56 to i64, !dbg !1585
  %mul = mul i64 %55, %conv47, !dbg !1586
  br label %cond.end, !dbg !1581

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %54, %cond.true ], [ %mul, %cond.false ], !dbg !1581
  %decompressedBound = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %frameSizeInfo, i32 0, i32 1, !dbg !1587
  store i64 %cond, ptr %decompressedBound, align 8, !dbg !1588
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %frameSizeInfo, i64 16, i1 false), !dbg !1589
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !1590

cleanup48:                                        ; preds = %cond.end, %if.then38, %cleanup30, %cleanup
  call void @llvm.lifetime.end.p0(i64 40, ptr %zfh) #8, !dbg !1591
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbBlocks) #8, !dbg !1591
  call void @llvm.lifetime.end.p0(i64 8, ptr %remainingSize) #8, !dbg !1591
  call void @llvm.lifetime.end.p0(i64 8, ptr %ipstart) #8, !dbg !1591
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #8, !dbg !1591
  br label %cleanup53

cleanup53:                                        ; preds = %cleanup48, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %frameSizeInfo) #8, !dbg !1592
  %57 = load { i64, i64 }, ptr %retval, align 8, !dbg !1592
  ret { i64, i64 } %57, !dbg !1592
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decompressBound(ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1593 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %bound = alloca i64, align 8
  %frameSizeInfo = alloca %struct.ZSTD_frameSizeInfo, align 8
  %compressedSize = alloca i64, align 8
  %decompressedBound = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1595, metadata !DIExpression()), !dbg !1602
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1596, metadata !DIExpression()), !dbg !1603
  call void @llvm.lifetime.start.p0(i64 8, ptr %bound) #8, !dbg !1604
  call void @llvm.dbg.declare(metadata ptr %bound, metadata !1597, metadata !DIExpression()), !dbg !1605
  store i64 0, ptr %bound, align 8, !dbg !1605
  br label %while.cond, !dbg !1606

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load i64, ptr %srcSize.addr, align 8, !dbg !1607
  %cmp = icmp ugt i64 %0, 0, !dbg !1608
  br i1 %cmp, label %while.body, label %while.end, !dbg !1606

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %frameSizeInfo) #8, !dbg !1609
  call void @llvm.dbg.declare(metadata ptr %frameSizeInfo, metadata !1598, metadata !DIExpression()), !dbg !1610
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1611
  %2 = load i64, ptr %srcSize.addr, align 8, !dbg !1612
  %call = call { i64, i64 } @ZSTD_findFrameSizeInfo(ptr noundef %1, i64 noundef %2) #7, !dbg !1613
  %3 = getelementptr inbounds { i64, i64 }, ptr %frameSizeInfo, i32 0, i32 0, !dbg !1613
  %4 = extractvalue { i64, i64 } %call, 0, !dbg !1613
  store i64 %4, ptr %3, align 8, !dbg !1613
  %5 = getelementptr inbounds { i64, i64 }, ptr %frameSizeInfo, i32 0, i32 1, !dbg !1613
  %6 = extractvalue { i64, i64 } %call, 1, !dbg !1613
  store i64 %6, ptr %5, align 8, !dbg !1613
  call void @llvm.lifetime.start.p0(i64 8, ptr %compressedSize) #8, !dbg !1614
  call void @llvm.dbg.declare(metadata ptr %compressedSize, metadata !1600, metadata !DIExpression()), !dbg !1615
  %compressedSize1 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %frameSizeInfo, i32 0, i32 0, !dbg !1616
  %7 = load i64, ptr %compressedSize1, align 8, !dbg !1616
  store i64 %7, ptr %compressedSize, align 8, !dbg !1615
  call void @llvm.lifetime.start.p0(i64 8, ptr %decompressedBound) #8, !dbg !1617
  call void @llvm.dbg.declare(metadata ptr %decompressedBound, metadata !1601, metadata !DIExpression()), !dbg !1618
  %decompressedBound2 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %frameSizeInfo, i32 0, i32 1, !dbg !1619
  %8 = load i64, ptr %decompressedBound2, align 8, !dbg !1619
  store i64 %8, ptr %decompressedBound, align 8, !dbg !1618
  %9 = load i64, ptr %compressedSize, align 8, !dbg !1620
  %call3 = call i32 @ERR_isError(i64 noundef %9) #7, !dbg !1622
  %tobool = icmp ne i32 %call3, 0, !dbg !1622
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1623

lor.lhs.false:                                    ; preds = %while.body
  %10 = load i64, ptr %decompressedBound, align 8, !dbg !1624
  %cmp4 = icmp eq i64 %10, -2, !dbg !1625
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1626

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i64 -2, ptr %retval, align 8, !dbg !1627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1627

if.end:                                           ; preds = %lor.lhs.false
  %11 = load ptr, ptr %src.addr, align 8, !dbg !1628
  %12 = load i64, ptr %compressedSize, align 8, !dbg !1629
  %add.ptr = getelementptr i8, ptr %11, i64 %12, !dbg !1630
  store ptr %add.ptr, ptr %src.addr, align 8, !dbg !1631
  %13 = load i64, ptr %compressedSize, align 8, !dbg !1632
  %14 = load i64, ptr %srcSize.addr, align 8, !dbg !1633
  %sub = sub i64 %14, %13, !dbg !1633
  store i64 %sub, ptr %srcSize.addr, align 8, !dbg !1633
  %15 = load i64, ptr %decompressedBound, align 8, !dbg !1634
  %16 = load i64, ptr %bound, align 8, !dbg !1635
  %add = add i64 %16, %15, !dbg !1635
  store i64 %add, ptr %bound, align 8, !dbg !1635
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1636
  br label %cleanup, !dbg !1636

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %decompressedBound) #8, !dbg !1636
  call void @llvm.lifetime.end.p0(i64 8, ptr %compressedSize) #8, !dbg !1636
  call void @llvm.lifetime.end.p0(i64 16, ptr %frameSizeInfo) #8, !dbg !1636
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1606, !llvm.loop !1637

while.end:                                        ; preds = %while.cond
  %17 = load i64, ptr %bound, align 8, !dbg !1638
  store i64 %17, ptr %retval, align 8, !dbg !1639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup7, !dbg !1639

cleanup7:                                         ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %bound) #8, !dbg !1640
  %18 = load i64, ptr %retval, align 8, !dbg !1640
  ret i64 %18, !dbg !1640
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_insertBlock(ptr noundef %dctx, ptr noundef %blockStart, i64 noundef %blockSize) #0 align 16 !dbg !1641 {
entry:
  %dctx.addr = alloca ptr, align 8
  %blockStart.addr = alloca ptr, align 8
  %blockSize.addr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1645, metadata !DIExpression()), !dbg !1648
  store ptr %blockStart, ptr %blockStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blockStart.addr, metadata !1646, metadata !DIExpression()), !dbg !1649
  store i64 %blockSize, ptr %blockSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blockSize.addr, metadata !1647, metadata !DIExpression()), !dbg !1650
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !1651
  %1 = load ptr, ptr %blockStart.addr, align 8, !dbg !1652
  %2 = load i64, ptr %blockSize.addr, align 8, !dbg !1653
  call void @ZSTD_checkContinuity(ptr noundef %0, ptr noundef %1, i64 noundef %2) #7, !dbg !1654
  %3 = load ptr, ptr %blockStart.addr, align 8, !dbg !1655
  %4 = load i64, ptr %blockSize.addr, align 8, !dbg !1656
  %add.ptr = getelementptr i8, ptr %3, i64 %4, !dbg !1657
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !1658
  %previousDstEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 6, !dbg !1659
  store ptr %add.ptr, ptr %previousDstEnd, align 8, !dbg !1660
  %6 = load i64, ptr %blockSize.addr, align 8, !dbg !1661
  ret i64 %6, !dbg !1662
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1663 dso_local void @ZSTD_checkContinuity(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decompress_usingDict(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %src, i64 noundef %srcSize, ptr noundef %dict, i64 noundef %dictSize) #0 align 16 !dbg !1666 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1670, metadata !DIExpression()), !dbg !1677
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1671, metadata !DIExpression()), !dbg !1678
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1672, metadata !DIExpression()), !dbg !1679
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1673, metadata !DIExpression()), !dbg !1680
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1674, metadata !DIExpression()), !dbg !1681
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !1675, metadata !DIExpression()), !dbg !1682
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !1676, metadata !DIExpression()), !dbg !1683
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !1684
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !1685
  %2 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1686
  %3 = load ptr, ptr %src.addr, align 8, !dbg !1687
  %4 = load i64, ptr %srcSize.addr, align 8, !dbg !1688
  %5 = load ptr, ptr %dict.addr, align 8, !dbg !1689
  %6 = load i64, ptr %dictSize.addr, align 8, !dbg !1690
  %call = call i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef null) #7, !dbg !1691
  ret i64 %call, !dbg !1692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressMultiFrame(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %src, i64 noundef %srcSize, ptr noundef %dict, i64 noundef %dictSize, ptr noundef %ddict) #0 align 16 !dbg !1693 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %ddict.addr = alloca ptr, align 8
  %dststart = alloca ptr, align 8
  %moreThan1Frame = alloca i32, align 4
  %magicNumber = alloca i32, align 4
  %skippableSize = alloca i64, align 8
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err_code19 = alloca i64, align 8
  %err_code31 = alloca i64, align 8
  %res = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1697, metadata !DIExpression()), !dbg !1725
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1698, metadata !DIExpression()), !dbg !1726
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1699, metadata !DIExpression()), !dbg !1727
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1700, metadata !DIExpression()), !dbg !1728
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1701, metadata !DIExpression()), !dbg !1729
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !1702, metadata !DIExpression()), !dbg !1730
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !1703, metadata !DIExpression()), !dbg !1731
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !1704, metadata !DIExpression()), !dbg !1732
  call void @llvm.lifetime.start.p0(i64 8, ptr %dststart) #8, !dbg !1733
  call void @llvm.dbg.declare(metadata ptr %dststart, metadata !1705, metadata !DIExpression()), !dbg !1734
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1735
  store ptr %0, ptr %dststart, align 8, !dbg !1734
  call void @llvm.lifetime.start.p0(i64 4, ptr %moreThan1Frame) #8, !dbg !1736
  call void @llvm.dbg.declare(metadata ptr %moreThan1Frame, metadata !1707, metadata !DIExpression()), !dbg !1737
  store i32 0, ptr %moreThan1Frame, align 4, !dbg !1737
  %1 = load ptr, ptr %ddict.addr, align 8, !dbg !1738
  %tobool = icmp ne ptr %1, null, !dbg !1738
  br i1 %tobool, label %if.then, label %if.end, !dbg !1740

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ddict.addr, align 8, !dbg !1741
  %call = call ptr @ZSTD_DDict_dictContent(ptr noundef %2) #7, !dbg !1743
  store ptr %call, ptr %dict.addr, align 8, !dbg !1744
  %3 = load ptr, ptr %ddict.addr, align 8, !dbg !1745
  %call1 = call i64 @ZSTD_DDict_dictSize(ptr noundef %3) #7, !dbg !1746
  store i64 %call1, ptr %dictSize.addr, align 8, !dbg !1747
  br label %if.end, !dbg !1748

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !1749

while.cond:                                       ; preds = %cleanup.cont60, %cleanup13, %if.end
  %4 = load i64, ptr %srcSize.addr, align 8, !dbg !1750
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !1751
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 20, !dbg !1752
  %6 = load i32, ptr %format, align 8, !dbg !1752
  %call2 = call i64 @ZSTD_startingInputLength(i32 noundef %6) #7, !dbg !1753
  %cmp = icmp uge i64 %4, %call2, !dbg !1754
  br i1 %cmp, label %while.body, label %while.end, !dbg !1749

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %magicNumber) #8, !dbg !1755
  call void @llvm.dbg.declare(metadata ptr %magicNumber, metadata !1708, metadata !DIExpression()), !dbg !1756
  %7 = load ptr, ptr %src.addr, align 8, !dbg !1757
  %call3 = call i32 @MEM_readLE32(ptr noundef %7) #7, !dbg !1758
  store i32 %call3, ptr %magicNumber, align 4, !dbg !1756
  %8 = load i32, ptr %magicNumber, align 4, !dbg !1759
  %and = and i32 %8, -16, !dbg !1760
  %cmp4 = icmp eq i32 %and, 407710288, !dbg !1761
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !1762

if.then5:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %skippableSize) #8, !dbg !1763
  call void @llvm.dbg.declare(metadata ptr %skippableSize, metadata !1711, metadata !DIExpression()), !dbg !1764
  %9 = load ptr, ptr %src.addr, align 8, !dbg !1765
  %10 = load i64, ptr %srcSize.addr, align 8, !dbg !1766
  %call6 = call i64 @readSkippableFrameSize(ptr noundef %9, i64 noundef %10) #7, !dbg !1767
  store i64 %call6, ptr %skippableSize, align 8, !dbg !1764
  br label %do.body, !dbg !1768

do.body:                                          ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !1769
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !1714, metadata !DIExpression()), !dbg !1769
  %11 = load i64, ptr %skippableSize, align 8, !dbg !1769
  store i64 %11, ptr %err_code, align 8, !dbg !1769
  %12 = load i64, ptr %err_code, align 8, !dbg !1770
  %call7 = call i32 @ERR_isError(i64 noundef %12) #7, !dbg !1770
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1770
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1769

if.then9:                                         ; preds = %do.body
  %13 = load i64, ptr %err_code, align 8, !dbg !1772
  store i64 %13, ptr %retval, align 8, !dbg !1772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1772

if.end10:                                         ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1768
  br label %cleanup, !dbg !1768

cleanup:                                          ; preds = %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !1768
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup11 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !1769

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end, !dbg !1769

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %src.addr, align 8, !dbg !1774
  %15 = load i64, ptr %skippableSize, align 8, !dbg !1775
  %add.ptr = getelementptr i8, ptr %14, i64 %15, !dbg !1776
  store ptr %add.ptr, ptr %src.addr, align 8, !dbg !1777
  %16 = load i64, ptr %skippableSize, align 8, !dbg !1778
  %17 = load i64, ptr %srcSize.addr, align 8, !dbg !1779
  %sub = sub i64 %17, %16, !dbg !1779
  store i64 %sub, ptr %srcSize.addr, align 8, !dbg !1779
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !1780, !llvm.loop !1781

cleanup11:                                        ; preds = %do.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %skippableSize) #8, !dbg !1783
  br label %cleanup13

if.end12:                                         ; preds = %while.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1784
  br label %cleanup13, !dbg !1784

cleanup13:                                        ; preds = %if.end12, %cleanup11
  call void @llvm.lifetime.end.p0(i64 4, ptr %magicNumber) #8, !dbg !1784
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %cleanup64 [
    i32 0, label %cleanup.cont15
    i32 2, label %while.cond
  ]

cleanup.cont15:                                   ; preds = %cleanup13
  %18 = load ptr, ptr %ddict.addr, align 8, !dbg !1785
  %tobool16 = icmp ne ptr %18, null, !dbg !1785
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !1786

if.then17:                                        ; preds = %cleanup.cont15
  br label %do.body18, !dbg !1787

do.body18:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code19) #8, !dbg !1788
  call void @llvm.dbg.declare(metadata ptr %err_code19, metadata !1716, metadata !DIExpression()), !dbg !1788
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !1788
  %20 = load ptr, ptr %ddict.addr, align 8, !dbg !1788
  %call20 = call i64 @ZSTD_decompressBegin_usingDDict(ptr noundef %19, ptr noundef %20) #7, !dbg !1788
  store i64 %call20, ptr %err_code19, align 8, !dbg !1788
  %21 = load i64, ptr %err_code19, align 8, !dbg !1789
  %call21 = call i32 @ERR_isError(i64 noundef %21) #7, !dbg !1789
  %tobool22 = icmp ne i32 %call21, 0, !dbg !1789
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !1788

if.then23:                                        ; preds = %do.body18
  %22 = load i64, ptr %err_code19, align 8, !dbg !1791
  store i64 %22, ptr %retval, align 8, !dbg !1791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !1791

if.end24:                                         ; preds = %do.body18
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1787
  br label %cleanup25, !dbg !1787

cleanup25:                                        ; preds = %if.end24, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code19) #8, !dbg !1787
  %cleanup.dest26 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest26, label %cleanup64 [
    i32 0, label %cleanup.cont27
  ]

cleanup.cont27:                                   ; preds = %cleanup25
  br label %do.cond28, !dbg !1788

do.cond28:                                        ; preds = %cleanup.cont27
  br label %do.end29, !dbg !1788

do.end29:                                         ; preds = %do.cond28
  br label %if.end42, !dbg !1793

if.else:                                          ; preds = %cleanup.cont15
  br label %do.body30, !dbg !1794

do.body30:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code31) #8, !dbg !1795
  call void @llvm.dbg.declare(metadata ptr %err_code31, metadata !1720, metadata !DIExpression()), !dbg !1795
  %23 = load ptr, ptr %dctx.addr, align 8, !dbg !1795
  %24 = load ptr, ptr %dict.addr, align 8, !dbg !1795
  %25 = load i64, ptr %dictSize.addr, align 8, !dbg !1795
  %call32 = call i64 @ZSTD_decompressBegin_usingDict(ptr noundef %23, ptr noundef %24, i64 noundef %25) #7, !dbg !1795
  store i64 %call32, ptr %err_code31, align 8, !dbg !1795
  %26 = load i64, ptr %err_code31, align 8, !dbg !1796
  %call33 = call i32 @ERR_isError(i64 noundef %26) #7, !dbg !1796
  %tobool34 = icmp ne i32 %call33, 0, !dbg !1796
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !1795

if.then35:                                        ; preds = %do.body30
  %27 = load i64, ptr %err_code31, align 8, !dbg !1798
  store i64 %27, ptr %retval, align 8, !dbg !1798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !1798

if.end36:                                         ; preds = %do.body30
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1794
  br label %cleanup37, !dbg !1794

cleanup37:                                        ; preds = %if.end36, %if.then35
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code31) #8, !dbg !1794
  %cleanup.dest38 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest38, label %cleanup64 [
    i32 0, label %cleanup.cont39
  ]

cleanup.cont39:                                   ; preds = %cleanup37
  br label %do.cond40, !dbg !1795

do.cond40:                                        ; preds = %cleanup.cont39
  br label %do.end41, !dbg !1795

do.end41:                                         ; preds = %do.cond40
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %do.end29
  %28 = load ptr, ptr %dctx.addr, align 8, !dbg !1800
  %29 = load ptr, ptr %dst.addr, align 8, !dbg !1801
  %30 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1802
  call void @ZSTD_checkContinuity(ptr noundef %28, ptr noundef %29, i64 noundef %30) #7, !dbg !1803
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #8, !dbg !1804
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1723, metadata !DIExpression()), !dbg !1805
  %31 = load ptr, ptr %dctx.addr, align 8, !dbg !1806
  %32 = load ptr, ptr %dst.addr, align 8, !dbg !1807
  %33 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1808
  %call43 = call i64 @ZSTD_decompressFrame(ptr noundef %31, ptr noundef %32, i64 noundef %33, ptr noundef %src.addr, ptr noundef %srcSize.addr) #7, !dbg !1809
  store i64 %call43, ptr %res, align 8, !dbg !1805
  %34 = load i64, ptr %res, align 8, !dbg !1810
  %call44 = call i32 @ZSTD_getErrorCode(i64 noundef %34) #7, !dbg !1810
  %cmp45 = icmp eq i32 %call44, 10, !dbg !1810
  br i1 %cmp45, label %land.lhs.true, label %if.end48, !dbg !1810

land.lhs.true:                                    ; preds = %if.end42
  %35 = load i32, ptr %moreThan1Frame, align 4, !dbg !1810
  %cmp46 = icmp eq i32 %35, 1, !dbg !1810
  br i1 %cmp46, label %if.then47, label %if.end48, !dbg !1812

if.then47:                                        ; preds = %land.lhs.true
  store i64 -72, ptr %retval, align 8, !dbg !1813
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58, !dbg !1813

if.end48:                                         ; preds = %land.lhs.true, %if.end42
  %36 = load i64, ptr %res, align 8, !dbg !1815
  %call49 = call i32 @ERR_isError(i64 noundef %36) #7, !dbg !1817
  %tobool50 = icmp ne i32 %call49, 0, !dbg !1817
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !1818

if.then51:                                        ; preds = %if.end48
  %37 = load i64, ptr %res, align 8, !dbg !1819
  store i64 %37, ptr %retval, align 8, !dbg !1820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58, !dbg !1820

if.end52:                                         ; preds = %if.end48
  %38 = load i64, ptr %res, align 8, !dbg !1821
  %cmp53 = icmp ne i64 %38, 0, !dbg !1823
  br i1 %cmp53, label %if.then54, label %if.end56, !dbg !1824

if.then54:                                        ; preds = %if.end52
  %39 = load ptr, ptr %dst.addr, align 8, !dbg !1825
  %40 = load i64, ptr %res, align 8, !dbg !1826
  %add.ptr55 = getelementptr i8, ptr %39, i64 %40, !dbg !1827
  store ptr %add.ptr55, ptr %dst.addr, align 8, !dbg !1828
  br label %if.end56, !dbg !1829

if.end56:                                         ; preds = %if.then54, %if.end52
  %41 = load i64, ptr %res, align 8, !dbg !1830
  %42 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1831
  %sub57 = sub i64 %42, %41, !dbg !1831
  store i64 %sub57, ptr %dstCapacity.addr, align 8, !dbg !1831
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1832
  br label %cleanup58, !dbg !1832

cleanup58:                                        ; preds = %if.end56, %if.then51, %if.then47
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #8, !dbg !1832
  %cleanup.dest59 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest59, label %cleanup64 [
    i32 0, label %cleanup.cont60
  ]

cleanup.cont60:                                   ; preds = %cleanup58
  store i32 1, ptr %moreThan1Frame, align 4, !dbg !1833
  br label %while.cond, !dbg !1749, !llvm.loop !1781

while.end:                                        ; preds = %while.cond
  %43 = load i64, ptr %srcSize.addr, align 8, !dbg !1834
  %tobool61 = icmp ne i64 %43, 0, !dbg !1834
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !1836

if.then62:                                        ; preds = %while.end
  store i64 -72, ptr %retval, align 8, !dbg !1837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup64, !dbg !1837

if.end63:                                         ; preds = %while.end
  %44 = load ptr, ptr %dst.addr, align 8, !dbg !1839
  %45 = load ptr, ptr %dststart, align 8, !dbg !1840
  %sub.ptr.lhs.cast = ptrtoint ptr %44 to i64, !dbg !1841
  %sub.ptr.rhs.cast = ptrtoint ptr %45 to i64, !dbg !1841
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1841
  store i64 %sub.ptr.sub, ptr %retval, align 8, !dbg !1842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup64, !dbg !1842

cleanup64:                                        ; preds = %if.end63, %if.then62, %cleanup58, %cleanup37, %cleanup25, %cleanup13
  call void @llvm.lifetime.end.p0(i64 4, ptr %moreThan1Frame) #8, !dbg !1843
  call void @llvm.lifetime.end.p0(i64 8, ptr %dststart) #8, !dbg !1843
  %46 = load i64, ptr %retval, align 8, !dbg !1843
  ret i64 %46, !dbg !1843
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decompressDCtx(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1844 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1848, metadata !DIExpression()), !dbg !1853
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1849, metadata !DIExpression()), !dbg !1854
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1850, metadata !DIExpression()), !dbg !1855
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1851, metadata !DIExpression()), !dbg !1856
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1852, metadata !DIExpression()), !dbg !1857
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !1858
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !1859
  %2 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1860
  %3 = load ptr, ptr %src.addr, align 8, !dbg !1861
  %4 = load i64, ptr %srcSize.addr, align 8, !dbg !1862
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !1863
  %call = call ptr @ZSTD_getDDict(ptr noundef %5) #7, !dbg !1864
  %call1 = call i64 @ZSTD_decompress_usingDDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %call) #7, !dbg !1865
  ret i64 %call1, !dbg !1866
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decompress_usingDDict(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %src, i64 noundef %srcSize, ptr noundef %ddict) #0 align 16 !dbg !1867 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %ddict.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1871, metadata !DIExpression()), !dbg !1877
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1872, metadata !DIExpression()), !dbg !1878
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1873, metadata !DIExpression()), !dbg !1879
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1874, metadata !DIExpression()), !dbg !1880
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1875, metadata !DIExpression()), !dbg !1881
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !1876, metadata !DIExpression()), !dbg !1882
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !1883
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !1884
  %2 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1885
  %3 = load ptr, ptr %src.addr, align 8, !dbg !1886
  %4 = load i64, ptr %srcSize.addr, align 8, !dbg !1887
  %5 = load ptr, ptr %ddict.addr, align 8, !dbg !1888
  %call = call i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, i64 noundef 0, ptr noundef %5) #7, !dbg !1889
  ret i64 %call, !dbg !1890
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ZSTD_getDDict(ptr noundef %dctx) #0 align 16 !dbg !1891 {
entry:
  %retval = alloca ptr, align 8
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1895, metadata !DIExpression()), !dbg !1896
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !1897
  %dictUses = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33, !dbg !1898
  %1 = load i32, ptr %dictUses, align 8, !dbg !1898
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 -1, label %sw.bb1
    i32 1, label %sw.bb2
  ], !dbg !1899

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !1900

sw.bb:                                            ; preds = %entry, %sw.default
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !1902
  call void @ZSTD_clearDict(ptr noundef %2) #7, !dbg !1903
  store ptr null, ptr %retval, align 8, !dbg !1904
  br label %return, !dbg !1904

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !1905
  %ddict = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 30, !dbg !1906
  %4 = load ptr, ptr %ddict, align 8, !dbg !1906
  store ptr %4, ptr %retval, align 8, !dbg !1907
  br label %return, !dbg !1907

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !1908
  %dictUses3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 33, !dbg !1909
  store i32 0, ptr %dictUses3, align 8, !dbg !1910
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !1911
  %ddict4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 30, !dbg !1912
  %7 = load ptr, ptr %ddict4, align 8, !dbg !1912
  store ptr %7, ptr %retval, align 8, !dbg !1913
  br label %return, !dbg !1913

return:                                           ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %8 = load ptr, ptr %retval, align 8, !dbg !1914
  ret ptr %8, !dbg !1914
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decompress(ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1915 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %regenSize = alloca i64, align 8
  %dctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1919, metadata !DIExpression()), !dbg !1925
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1920, metadata !DIExpression()), !dbg !1926
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1921, metadata !DIExpression()), !dbg !1927
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1922, metadata !DIExpression()), !dbg !1928
  call void @llvm.lifetime.start.p0(i64 8, ptr %regenSize) #8, !dbg !1929
  call void @llvm.dbg.declare(metadata ptr %regenSize, metadata !1923, metadata !DIExpression()), !dbg !1930
  call void @llvm.lifetime.start.p0(i64 8, ptr %dctx) #8, !dbg !1931
  call void @llvm.dbg.declare(metadata ptr %dctx, metadata !1924, metadata !DIExpression()), !dbg !1932
  %call = call ptr @ZSTD_createDCtx_internal(ptr noundef byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem) #7, !dbg !1933
  store ptr %call, ptr %dctx, align 8, !dbg !1932
  %0 = load ptr, ptr %dctx, align 8, !dbg !1934
  %cmp = icmp eq ptr %0, null, !dbg !1934
  br i1 %cmp, label %if.then, label %if.end, !dbg !1936

if.then:                                          ; preds = %entry
  store i64 -64, ptr %retval, align 8, !dbg !1937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1937

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dctx, align 8, !dbg !1939
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1940
  %3 = load i64, ptr %dstCapacity.addr, align 8, !dbg !1941
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1942
  %5 = load i64, ptr %srcSize.addr, align 8, !dbg !1943
  %call1 = call i64 @ZSTD_decompressDCtx(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) #7, !dbg !1944
  store i64 %call1, ptr %regenSize, align 8, !dbg !1945
  %6 = load ptr, ptr %dctx, align 8, !dbg !1946
  %call2 = call i64 @ZSTD_freeDCtx(ptr noundef %6) #7, !dbg !1947
  %7 = load i64, ptr %regenSize, align 8, !dbg !1948
  store i64 %7, ptr %retval, align 8, !dbg !1949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1949

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dctx) #8, !dbg !1950
  call void @llvm.lifetime.end.p0(i64 8, ptr %regenSize) #8, !dbg !1950
  %8 = load i64, ptr %retval, align 8, !dbg !1950
  ret i64 %8, !dbg !1950
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_nextSrcSizeToDecompress(ptr noundef %dctx) #0 align 16 !dbg !1951 {
entry:
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1953, metadata !DIExpression()), !dbg !1954
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !1955
  %expected = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10, !dbg !1956
  %1 = load i64, ptr %expected, align 8, !dbg !1956
  ret i64 %1, !dbg !1957
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ZSTD_nextInputType(ptr noundef %dctx) #0 align 16 !dbg !1958 {
entry:
  %retval = alloca i32, align 4
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1963, metadata !DIExpression()), !dbg !1964
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !1965
  %stage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 15, !dbg !1966
  %1 = load i32, ptr %stage, align 4, !dbg !1966
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
  ], !dbg !1967

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !1968

sw.bb:                                            ; preds = %entry, %sw.default
  br label %sw.bb1, !dbg !1968

sw.bb1:                                           ; preds = %entry, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !1970
  br label %return, !dbg !1970

sw.bb2:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1971
  br label %return, !dbg !1971

sw.bb3:                                           ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !1972
  br label %return, !dbg !1972

sw.bb4:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !1973
  br label %return, !dbg !1973

sw.bb5:                                           ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1974
  br label %return, !dbg !1974

sw.bb6:                                           ; preds = %entry
  br label %sw.bb7, !dbg !1974

sw.bb7:                                           ; preds = %entry, %sw.bb6
  store i32 5, ptr %retval, align 4, !dbg !1975
  br label %return, !dbg !1975

return:                                           ; preds = %sw.bb7, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %2 = load i32, ptr %retval, align 4, !dbg !1976
  ret i32 %2, !dbg !1976
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decompressContinue(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !1977 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %bp = alloca %struct.blockProperties_t, align 4
  %cBlockSize = alloca i64, align 8
  %rSize = alloca i64, align 8
  %err_code79 = alloca i64, align 8
  %err_code99 = alloca i64, align 8
  %h32 = alloca i32, align 4
  %check32 = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !1979, metadata !DIExpression()), !dbg !2002
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1980, metadata !DIExpression()), !dbg !2003
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !1981, metadata !DIExpression()), !dbg !2004
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1982, metadata !DIExpression()), !dbg !2005
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !1983, metadata !DIExpression()), !dbg !2006
  %0 = load i64, ptr %srcSize.addr, align 8, !dbg !2007
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !2007
  %2 = load i64, ptr %srcSize.addr, align 8, !dbg !2007
  %call = call i64 @ZSTD_nextSrcSizeToDecompressWithInputSize(ptr noundef %1, i64 noundef %2) #7, !dbg !2007
  %cmp = icmp ne i64 %0, %call, !dbg !2007
  br i1 %cmp, label %if.then, label %if.end, !dbg !2009

if.then:                                          ; preds = %entry
  store i64 -72, ptr %retval, align 8, !dbg !2010
  br label %sw.epilog198, !dbg !2010

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !2012
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !2013
  %5 = load i64, ptr %dstCapacity.addr, align 8, !dbg !2014
  call void @ZSTD_checkContinuity(ptr noundef %3, ptr noundef %4, i64 noundef %5) #7, !dbg !2015
  %6 = load i64, ptr %srcSize.addr, align 8, !dbg !2016
  %7 = load ptr, ptr %dctx.addr, align 8, !dbg !2017
  %processedCSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %7, i32 0, i32 12, !dbg !2018
  %8 = load i64, ptr %processedCSize, align 8, !dbg !2019
  %add = add i64 %8, %6, !dbg !2019
  store i64 %add, ptr %processedCSize, align 8, !dbg !2019
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !2020
  %stage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %9, i32 0, i32 15, !dbg !2021
  %10 = load i32, ptr %stage, align 4, !dbg !2021
  switch i32 %10, label %sw.default194 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb37
    i32 4, label %sw.bb71
    i32 3, label %sw.bb71
    i32 5, label %sw.bb158
    i32 6, label %sw.bb179
    i32 7, label %sw.bb191
  ], !dbg !2022

sw.bb:                                            ; preds = %if.end
  %11 = load ptr, ptr %dctx.addr, align 8, !dbg !2023
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 20, !dbg !2025
  %12 = load i32, ptr %format, align 8, !dbg !2025
  %cmp1 = icmp eq i32 %12, 0, !dbg !2026
  br i1 %cmp1, label %if.then2, label %if.end8, !dbg !2027

if.then2:                                         ; preds = %sw.bb
  %13 = load ptr, ptr %src.addr, align 8, !dbg !2028
  %call3 = call i32 @MEM_readLE32(ptr noundef %13) #7, !dbg !2031
  %and = and i32 %call3, -16, !dbg !2032
  %cmp4 = icmp eq i32 %and, 407710288, !dbg !2033
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !2034

if.then5:                                         ; preds = %if.then2
  %14 = load ptr, ptr %dctx.addr, align 8, !dbg !2035
  %headerBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %14, i32 0, i32 54, !dbg !2035
  %arraydecay = getelementptr inbounds [18 x i8], ptr %headerBuffer, i64 0, i64 0, !dbg !2035
  %15 = load ptr, ptr %src.addr, align 8, !dbg !2035
  %16 = load i64, ptr %srcSize.addr, align 8, !dbg !2035
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 1 %15, i64 %16, i1 false), !dbg !2035
  %17 = load i64, ptr %srcSize.addr, align 8, !dbg !2037
  %sub = sub i64 8, %17, !dbg !2038
  %18 = load ptr, ptr %dctx.addr, align 8, !dbg !2039
  %expected = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %18, i32 0, i32 10, !dbg !2040
  store i64 %sub, ptr %expected, align 8, !dbg !2041
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !2042
  %stage6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %19, i32 0, i32 15, !dbg !2043
  store i32 6, ptr %stage6, align 4, !dbg !2044
  store i64 0, ptr %retval, align 8, !dbg !2045
  br label %sw.epilog198, !dbg !2045

if.end7:                                          ; preds = %if.then2
  br label %if.end8, !dbg !2046

if.end8:                                          ; preds = %if.end7, %sw.bb
  %20 = load ptr, ptr %src.addr, align 8, !dbg !2047
  %21 = load i64, ptr %srcSize.addr, align 8, !dbg !2048
  %22 = load ptr, ptr %dctx.addr, align 8, !dbg !2049
  %format9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %22, i32 0, i32 20, !dbg !2050
  %23 = load i32, ptr %format9, align 8, !dbg !2050
  %call10 = call i64 @ZSTD_frameHeaderSize_internal(ptr noundef %20, i64 noundef %21, i32 noundef %23) #7, !dbg !2051
  %24 = load ptr, ptr %dctx.addr, align 8, !dbg !2052
  %headerSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %24, i32 0, i32 19, !dbg !2053
  store i64 %call10, ptr %headerSize, align 8, !dbg !2054
  %25 = load ptr, ptr %dctx.addr, align 8, !dbg !2055
  %headerSize11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %25, i32 0, i32 19, !dbg !2057
  %26 = load i64, ptr %headerSize11, align 8, !dbg !2057
  %call12 = call i32 @ERR_isError(i64 noundef %26) #7, !dbg !2058
  %tobool = icmp ne i32 %call12, 0, !dbg !2058
  br i1 %tobool, label %if.then13, label %if.end15, !dbg !2059

if.then13:                                        ; preds = %if.end8
  %27 = load ptr, ptr %dctx.addr, align 8, !dbg !2060
  %headerSize14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %27, i32 0, i32 19, !dbg !2061
  %28 = load i64, ptr %headerSize14, align 8, !dbg !2061
  store i64 %28, ptr %retval, align 8, !dbg !2062
  br label %sw.epilog198, !dbg !2062

if.end15:                                         ; preds = %if.end8
  %29 = load ptr, ptr %dctx.addr, align 8, !dbg !2063
  %headerBuffer16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %29, i32 0, i32 54, !dbg !2063
  %arraydecay17 = getelementptr inbounds [18 x i8], ptr %headerBuffer16, i64 0, i64 0, !dbg !2063
  %30 = load ptr, ptr %src.addr, align 8, !dbg !2063
  %31 = load i64, ptr %srcSize.addr, align 8, !dbg !2063
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay17, ptr align 1 %30, i64 %31, i1 false), !dbg !2063
  %32 = load ptr, ptr %dctx.addr, align 8, !dbg !2064
  %headerSize18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %32, i32 0, i32 19, !dbg !2065
  %33 = load i64, ptr %headerSize18, align 8, !dbg !2065
  %34 = load i64, ptr %srcSize.addr, align 8, !dbg !2066
  %sub19 = sub i64 %33, %34, !dbg !2067
  %35 = load ptr, ptr %dctx.addr, align 8, !dbg !2068
  %expected20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %35, i32 0, i32 10, !dbg !2069
  store i64 %sub19, ptr %expected20, align 8, !dbg !2070
  %36 = load ptr, ptr %dctx.addr, align 8, !dbg !2071
  %stage21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %36, i32 0, i32 15, !dbg !2072
  store i32 1, ptr %stage21, align 4, !dbg !2073
  store i64 0, ptr %retval, align 8, !dbg !2074
  br label %sw.epilog198, !dbg !2074

sw.bb22:                                          ; preds = %if.end
  %37 = load ptr, ptr %dctx.addr, align 8, !dbg !2075
  %headerBuffer23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %37, i32 0, i32 54, !dbg !2075
  %arraydecay24 = getelementptr inbounds [18 x i8], ptr %headerBuffer23, i64 0, i64 0, !dbg !2075
  %38 = load ptr, ptr %dctx.addr, align 8, !dbg !2075
  %headerSize25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %38, i32 0, i32 19, !dbg !2075
  %39 = load i64, ptr %headerSize25, align 8, !dbg !2075
  %40 = load i64, ptr %srcSize.addr, align 8, !dbg !2075
  %sub26 = sub i64 %39, %40, !dbg !2075
  %add.ptr = getelementptr i8, ptr %arraydecay24, i64 %sub26, !dbg !2075
  %41 = load ptr, ptr %src.addr, align 8, !dbg !2075
  %42 = load i64, ptr %srcSize.addr, align 8, !dbg !2075
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %41, i64 %42, i1 false), !dbg !2075
  br label %do.body, !dbg !2076

do.body:                                          ; preds = %sw.bb22
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !2077
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !1984, metadata !DIExpression()), !dbg !2077
  %43 = load ptr, ptr %dctx.addr, align 8, !dbg !2077
  %44 = load ptr, ptr %dctx.addr, align 8, !dbg !2077
  %headerBuffer27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %44, i32 0, i32 54, !dbg !2077
  %arraydecay28 = getelementptr inbounds [18 x i8], ptr %headerBuffer27, i64 0, i64 0, !dbg !2077
  %45 = load ptr, ptr %dctx.addr, align 8, !dbg !2077
  %headerSize29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %45, i32 0, i32 19, !dbg !2077
  %46 = load i64, ptr %headerSize29, align 8, !dbg !2077
  %call30 = call i64 @ZSTD_decodeFrameHeader(ptr noundef %43, ptr noundef %arraydecay28, i64 noundef %46) #7, !dbg !2077
  store i64 %call30, ptr %err_code, align 8, !dbg !2077
  %47 = load i64, ptr %err_code, align 8, !dbg !2078
  %call31 = call i32 @ERR_isError(i64 noundef %47) #7, !dbg !2078
  %tobool32 = icmp ne i32 %call31, 0, !dbg !2078
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !2077

if.then33:                                        ; preds = %do.body
  %48 = load i64, ptr %err_code, align 8, !dbg !2080
  store i64 %48, ptr %retval, align 8, !dbg !2080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2080

if.end34:                                         ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2076
  br label %cleanup, !dbg !2076

cleanup:                                          ; preds = %if.end34, %if.then33
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !2076
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %sw.epilog198
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !2077

do.end:                                           ; preds = %cleanup.cont
  %49 = load ptr, ptr %dctx.addr, align 8, !dbg !2082
  %expected35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %49, i32 0, i32 10, !dbg !2083
  store i64 3, ptr %expected35, align 8, !dbg !2084
  %50 = load ptr, ptr %dctx.addr, align 8, !dbg !2085
  %stage36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %50, i32 0, i32 15, !dbg !2086
  store i32 2, ptr %stage36, align 4, !dbg !2087
  store i64 0, ptr %retval, align 8, !dbg !2088
  br label %sw.epilog198, !dbg !2088

sw.bb37:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr %bp) #8, !dbg !2089
  call void @llvm.dbg.declare(metadata ptr %bp, metadata !1987, metadata !DIExpression()), !dbg !2090
  call void @llvm.lifetime.start.p0(i64 8, ptr %cBlockSize) #8, !dbg !2091
  call void @llvm.dbg.declare(metadata ptr %cBlockSize, metadata !1989, metadata !DIExpression()), !dbg !2092
  %51 = load ptr, ptr %src.addr, align 8, !dbg !2093
  %call38 = call i64 @ZSTD_getcBlockSize(ptr noundef %51, i64 noundef 3, ptr noundef %bp) #7, !dbg !2094
  store i64 %call38, ptr %cBlockSize, align 8, !dbg !2092
  %52 = load i64, ptr %cBlockSize, align 8, !dbg !2095
  %call39 = call i32 @ERR_isError(i64 noundef %52) #7, !dbg !2097
  %tobool40 = icmp ne i32 %call39, 0, !dbg !2097
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !2098

if.then41:                                        ; preds = %sw.bb37
  %53 = load i64, ptr %cBlockSize, align 8, !dbg !2099
  store i64 %53, ptr %retval, align 8, !dbg !2100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !2100

if.end42:                                         ; preds = %sw.bb37
  %54 = load i64, ptr %cBlockSize, align 8, !dbg !2101
  %55 = load ptr, ptr %dctx.addr, align 8, !dbg !2101
  %fParams = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %55, i32 0, i32 11, !dbg !2101
  %blockSizeMax = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams, i32 0, i32 2, !dbg !2101
  %56 = load i32, ptr %blockSizeMax, align 8, !dbg !2101
  %conv = zext i32 %56 to i64, !dbg !2101
  %cmp43 = icmp ugt i64 %54, %conv, !dbg !2101
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !2103

if.then45:                                        ; preds = %if.end42
  store i64 -20, ptr %retval, align 8, !dbg !2104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !2104

if.end46:                                         ; preds = %if.end42
  %57 = load i64, ptr %cBlockSize, align 8, !dbg !2106
  %58 = load ptr, ptr %dctx.addr, align 8, !dbg !2107
  %expected47 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %58, i32 0, i32 10, !dbg !2108
  store i64 %57, ptr %expected47, align 8, !dbg !2109
  %blockType = getelementptr inbounds %struct.blockProperties_t, ptr %bp, i32 0, i32 0, !dbg !2110
  %59 = load i32, ptr %blockType, align 4, !dbg !2110
  %60 = load ptr, ptr %dctx.addr, align 8, !dbg !2111
  %bType = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %60, i32 0, i32 14, !dbg !2112
  store i32 %59, ptr %bType, align 8, !dbg !2113
  %origSize = getelementptr inbounds %struct.blockProperties_t, ptr %bp, i32 0, i32 2, !dbg !2114
  %61 = load i32, ptr %origSize, align 4, !dbg !2114
  %conv48 = zext i32 %61 to i64, !dbg !2115
  %62 = load ptr, ptr %dctx.addr, align 8, !dbg !2116
  %rleSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %62, i32 0, i32 26, !dbg !2117
  store i64 %conv48, ptr %rleSize, align 8, !dbg !2118
  %63 = load i64, ptr %cBlockSize, align 8, !dbg !2119
  %tobool49 = icmp ne i64 %63, 0, !dbg !2119
  br i1 %tobool49, label %if.then50, label %if.end53, !dbg !2121

if.then50:                                        ; preds = %if.end46
  %lastBlock = getelementptr inbounds %struct.blockProperties_t, ptr %bp, i32 0, i32 1, !dbg !2122
  %64 = load i32, ptr %lastBlock, align 4, !dbg !2122
  %tobool51 = icmp ne i32 %64, 0, !dbg !2124
  %65 = zext i1 %tobool51 to i64, !dbg !2124
  %cond = select i1 %tobool51, i32 4, i32 3, !dbg !2124
  %66 = load ptr, ptr %dctx.addr, align 8, !dbg !2125
  %stage52 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %66, i32 0, i32 15, !dbg !2126
  store i32 %cond, ptr %stage52, align 4, !dbg !2127
  store i64 0, ptr %retval, align 8, !dbg !2128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !2128

if.end53:                                         ; preds = %if.end46
  %lastBlock54 = getelementptr inbounds %struct.blockProperties_t, ptr %bp, i32 0, i32 1, !dbg !2129
  %67 = load i32, ptr %lastBlock54, align 4, !dbg !2129
  %tobool55 = icmp ne i32 %67, 0, !dbg !2131
  br i1 %tobool55, label %if.then56, label %if.else65, !dbg !2132

if.then56:                                        ; preds = %if.end53
  %68 = load ptr, ptr %dctx.addr, align 8, !dbg !2133
  %fParams57 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %68, i32 0, i32 11, !dbg !2136
  %checksumFlag = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams57, i32 0, i32 6, !dbg !2137
  %69 = load i32, ptr %checksumFlag, align 8, !dbg !2137
  %tobool58 = icmp ne i32 %69, 0, !dbg !2133
  br i1 %tobool58, label %if.then59, label %if.else, !dbg !2138

if.then59:                                        ; preds = %if.then56
  %70 = load ptr, ptr %dctx.addr, align 8, !dbg !2139
  %expected60 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %70, i32 0, i32 10, !dbg !2141
  store i64 4, ptr %expected60, align 8, !dbg !2142
  %71 = load ptr, ptr %dctx.addr, align 8, !dbg !2143
  %stage61 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %71, i32 0, i32 15, !dbg !2144
  store i32 5, ptr %stage61, align 4, !dbg !2145
  br label %if.end64, !dbg !2146

if.else:                                          ; preds = %if.then56
  %72 = load ptr, ptr %dctx.addr, align 8, !dbg !2147
  %expected62 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %72, i32 0, i32 10, !dbg !2149
  store i64 0, ptr %expected62, align 8, !dbg !2150
  %73 = load ptr, ptr %dctx.addr, align 8, !dbg !2151
  %stage63 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %73, i32 0, i32 15, !dbg !2152
  store i32 0, ptr %stage63, align 4, !dbg !2153
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then59
  br label %if.end68, !dbg !2154

if.else65:                                        ; preds = %if.end53
  %74 = load ptr, ptr %dctx.addr, align 8, !dbg !2155
  %expected66 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %74, i32 0, i32 10, !dbg !2157
  store i64 3, ptr %expected66, align 8, !dbg !2158
  %75 = load ptr, ptr %dctx.addr, align 8, !dbg !2159
  %stage67 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %75, i32 0, i32 15, !dbg !2160
  store i32 2, ptr %stage67, align 4, !dbg !2161
  br label %if.end68

if.end68:                                         ; preds = %if.else65, %if.end64
  store i64 0, ptr %retval, align 8, !dbg !2162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !2162

cleanup69:                                        ; preds = %if.end68, %if.then50, %if.then45, %if.then41
  call void @llvm.lifetime.end.p0(i64 8, ptr %cBlockSize) #8, !dbg !2163
  call void @llvm.lifetime.end.p0(i64 12, ptr %bp) #8, !dbg !2163
  br label %sw.epilog198

sw.bb71:                                          ; preds = %if.end, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %rSize) #8, !dbg !2164
  call void @llvm.dbg.declare(metadata ptr %rSize, metadata !1990, metadata !DIExpression()), !dbg !2165
  %76 = load ptr, ptr %dctx.addr, align 8, !dbg !2166
  %bType72 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %76, i32 0, i32 14, !dbg !2167
  %77 = load i32, ptr %bType72, align 8, !dbg !2167
  switch i32 %77, label %sw.default [
    i32 2, label %sw.bb73
    i32 0, label %sw.bb76
    i32 1, label %sw.bb90
    i32 3, label %sw.bb94
  ], !dbg !2168

sw.bb73:                                          ; preds = %sw.bb71
  %78 = load ptr, ptr %dctx.addr, align 8, !dbg !2169
  %79 = load ptr, ptr %dst.addr, align 8, !dbg !2170
  %80 = load i64, ptr %dstCapacity.addr, align 8, !dbg !2171
  %81 = load ptr, ptr %src.addr, align 8, !dbg !2172
  %82 = load i64, ptr %srcSize.addr, align 8, !dbg !2173
  %call74 = call i64 @ZSTD_decompressBlock_internal(ptr noundef %78, ptr noundef %79, i64 noundef %80, ptr noundef %81, i64 noundef %82, i32 noundef 1, i32 noundef 1) #7, !dbg !2174
  store i64 %call74, ptr %rSize, align 8, !dbg !2175
  %83 = load ptr, ptr %dctx.addr, align 8, !dbg !2176
  %expected75 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %83, i32 0, i32 10, !dbg !2177
  store i64 0, ptr %expected75, align 8, !dbg !2178
  br label %sw.epilog, !dbg !2179

sw.bb76:                                          ; preds = %sw.bb71
  %84 = load ptr, ptr %dst.addr, align 8, !dbg !2180
  %85 = load i64, ptr %dstCapacity.addr, align 8, !dbg !2181
  %86 = load ptr, ptr %src.addr, align 8, !dbg !2182
  %87 = load i64, ptr %srcSize.addr, align 8, !dbg !2183
  %call77 = call i64 @ZSTD_copyRawBlock(ptr noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87) #7, !dbg !2184
  store i64 %call77, ptr %rSize, align 8, !dbg !2185
  br label %do.body78, !dbg !2186

do.body78:                                        ; preds = %sw.bb76
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code79) #8, !dbg !2187
  call void @llvm.dbg.declare(metadata ptr %err_code79, metadata !1992, metadata !DIExpression()), !dbg !2187
  %88 = load i64, ptr %rSize, align 8, !dbg !2187
  store i64 %88, ptr %err_code79, align 8, !dbg !2187
  %89 = load i64, ptr %err_code79, align 8, !dbg !2188
  %call80 = call i32 @ERR_isError(i64 noundef %89) #7, !dbg !2188
  %tobool81 = icmp ne i32 %call80, 0, !dbg !2188
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !2187

if.then82:                                        ; preds = %do.body78
  %90 = load i64, ptr %err_code79, align 8, !dbg !2190
  store i64 %90, ptr %retval, align 8, !dbg !2190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup84, !dbg !2190

if.end83:                                         ; preds = %do.body78
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2186
  br label %cleanup84, !dbg !2186

cleanup84:                                        ; preds = %if.end83, %if.then82
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code79) #8, !dbg !2186
  %cleanup.dest85 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest85, label %cleanup157 [
    i32 0, label %cleanup.cont86
  ]

cleanup.cont86:                                   ; preds = %cleanup84
  br label %do.cond, !dbg !2187

do.cond:                                          ; preds = %cleanup.cont86
  br label %do.end87, !dbg !2187

do.end87:                                         ; preds = %do.cond
  %91 = load i64, ptr %rSize, align 8, !dbg !2192
  %92 = load ptr, ptr %dctx.addr, align 8, !dbg !2193
  %expected88 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %92, i32 0, i32 10, !dbg !2194
  %93 = load i64, ptr %expected88, align 8, !dbg !2195
  %sub89 = sub i64 %93, %91, !dbg !2195
  store i64 %sub89, ptr %expected88, align 8, !dbg !2195
  br label %sw.epilog, !dbg !2196

sw.bb90:                                          ; preds = %sw.bb71
  %94 = load ptr, ptr %dst.addr, align 8, !dbg !2197
  %95 = load i64, ptr %dstCapacity.addr, align 8, !dbg !2198
  %96 = load ptr, ptr %src.addr, align 8, !dbg !2199
  %97 = load i8, ptr %96, align 1, !dbg !2200
  %98 = load ptr, ptr %dctx.addr, align 8, !dbg !2201
  %rleSize91 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %98, i32 0, i32 26, !dbg !2202
  %99 = load i64, ptr %rleSize91, align 8, !dbg !2202
  %call92 = call i64 @ZSTD_setRleBlock(ptr noundef %94, i64 noundef %95, i8 noundef zeroext %97, i64 noundef %99) #7, !dbg !2203
  store i64 %call92, ptr %rSize, align 8, !dbg !2204
  %100 = load ptr, ptr %dctx.addr, align 8, !dbg !2205
  %expected93 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %100, i32 0, i32 10, !dbg !2206
  store i64 0, ptr %expected93, align 8, !dbg !2207
  br label %sw.epilog, !dbg !2208

sw.bb94:                                          ; preds = %sw.bb71
  br label %sw.default, !dbg !2209

sw.default:                                       ; preds = %sw.bb71, %sw.bb94
  br label %do.body95, !dbg !2210

do.body95:                                        ; preds = %sw.default
  store i64 -20, ptr %retval, align 8, !dbg !2211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup157, !dbg !2211

do.cond96:                                        ; No predecessors!
  br label %do.end97, !dbg !2211

do.end97:                                         ; preds = %do.cond96
  br label %sw.epilog, !dbg !2213

sw.epilog:                                        ; preds = %do.end97, %sw.bb90, %do.end87, %sw.bb73
  br label %do.body98, !dbg !2214

do.body98:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code99) #8, !dbg !2215
  call void @llvm.dbg.declare(metadata ptr %err_code99, metadata !1995, metadata !DIExpression()), !dbg !2215
  %101 = load i64, ptr %rSize, align 8, !dbg !2215
  store i64 %101, ptr %err_code99, align 8, !dbg !2215
  %102 = load i64, ptr %err_code99, align 8, !dbg !2216
  %call100 = call i32 @ERR_isError(i64 noundef %102) #7, !dbg !2216
  %tobool101 = icmp ne i32 %call100, 0, !dbg !2216
  br i1 %tobool101, label %if.then102, label %if.end103, !dbg !2215

if.then102:                                       ; preds = %do.body98
  %103 = load i64, ptr %err_code99, align 8, !dbg !2218
  store i64 %103, ptr %retval, align 8, !dbg !2218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup104, !dbg !2218

if.end103:                                        ; preds = %do.body98
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2214
  br label %cleanup104, !dbg !2214

cleanup104:                                       ; preds = %if.end103, %if.then102
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code99) #8, !dbg !2214
  %cleanup.dest105 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest105, label %cleanup157 [
    i32 0, label %cleanup.cont106
  ]

cleanup.cont106:                                  ; preds = %cleanup104
  br label %do.cond107, !dbg !2215

do.cond107:                                       ; preds = %cleanup.cont106
  br label %do.end108, !dbg !2215

do.end108:                                        ; preds = %do.cond107
  %104 = load i64, ptr %rSize, align 8, !dbg !2220
  %105 = load ptr, ptr %dctx.addr, align 8, !dbg !2220
  %fParams109 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %105, i32 0, i32 11, !dbg !2220
  %blockSizeMax110 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams109, i32 0, i32 2, !dbg !2220
  %106 = load i32, ptr %blockSizeMax110, align 8, !dbg !2220
  %conv111 = zext i32 %106 to i64, !dbg !2220
  %cmp112 = icmp ugt i64 %104, %conv111, !dbg !2220
  br i1 %cmp112, label %if.then114, label %if.end115, !dbg !2222

if.then114:                                       ; preds = %do.end108
  store i64 -20, ptr %retval, align 8, !dbg !2223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup157, !dbg !2223

if.end115:                                        ; preds = %do.end108
  %107 = load i64, ptr %rSize, align 8, !dbg !2225
  %108 = load ptr, ptr %dctx.addr, align 8, !dbg !2226
  %decodedSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %108, i32 0, i32 13, !dbg !2227
  %109 = load i64, ptr %decodedSize, align 8, !dbg !2228
  %add116 = add i64 %109, %107, !dbg !2228
  store i64 %add116, ptr %decodedSize, align 8, !dbg !2228
  %110 = load ptr, ptr %dctx.addr, align 8, !dbg !2229
  %validateChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %110, i32 0, i32 22, !dbg !2231
  %111 = load i32, ptr %validateChecksum, align 8, !dbg !2231
  %tobool117 = icmp ne i32 %111, 0, !dbg !2229
  br i1 %tobool117, label %if.then118, label %if.end120, !dbg !2232

if.then118:                                       ; preds = %if.end115
  %112 = load ptr, ptr %dctx.addr, align 8, !dbg !2233
  %xxhState = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %112, i32 0, i32 18, !dbg !2234
  %113 = load ptr, ptr %dst.addr, align 8, !dbg !2235
  %114 = load i64, ptr %rSize, align 8, !dbg !2236
  %call119 = call i32 @xxh64_update(ptr noundef %xxhState, ptr noundef %113, i64 noundef %114) #7, !dbg !2237
  br label %if.end120, !dbg !2237

if.end120:                                        ; preds = %if.then118, %if.end115
  %115 = load ptr, ptr %dst.addr, align 8, !dbg !2238
  %116 = load i64, ptr %rSize, align 8, !dbg !2239
  %add.ptr121 = getelementptr i8, ptr %115, i64 %116, !dbg !2240
  %117 = load ptr, ptr %dctx.addr, align 8, !dbg !2241
  %previousDstEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %117, i32 0, i32 6, !dbg !2242
  store ptr %add.ptr121, ptr %previousDstEnd, align 8, !dbg !2243
  %118 = load ptr, ptr %dctx.addr, align 8, !dbg !2244
  %expected122 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %118, i32 0, i32 10, !dbg !2246
  %119 = load i64, ptr %expected122, align 8, !dbg !2246
  %cmp123 = icmp ugt i64 %119, 0, !dbg !2247
  br i1 %cmp123, label %if.then125, label %if.end126, !dbg !2248

if.then125:                                       ; preds = %if.end120
  %120 = load i64, ptr %rSize, align 8, !dbg !2249
  store i64 %120, ptr %retval, align 8, !dbg !2251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup157, !dbg !2251

if.end126:                                        ; preds = %if.end120
  %121 = load ptr, ptr %dctx.addr, align 8, !dbg !2252
  %stage127 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %121, i32 0, i32 15, !dbg !2254
  %122 = load i32, ptr %stage127, align 4, !dbg !2254
  %cmp128 = icmp eq i32 %122, 4, !dbg !2255
  br i1 %cmp128, label %if.then130, label %if.else153, !dbg !2256

if.then130:                                       ; preds = %if.end126
  %123 = load ptr, ptr %dctx.addr, align 8, !dbg !2257
  %fParams131 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %123, i32 0, i32 11, !dbg !2257
  %frameContentSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams131, i32 0, i32 0, !dbg !2257
  %124 = load i64, ptr %frameContentSize, align 8, !dbg !2257
  %cmp132 = icmp ne i64 %124, -1, !dbg !2257
  br i1 %cmp132, label %land.lhs.true, label %if.end140, !dbg !2257

land.lhs.true:                                    ; preds = %if.then130
  %125 = load ptr, ptr %dctx.addr, align 8, !dbg !2257
  %decodedSize134 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %125, i32 0, i32 13, !dbg !2257
  %126 = load i64, ptr %decodedSize134, align 8, !dbg !2257
  %127 = load ptr, ptr %dctx.addr, align 8, !dbg !2257
  %fParams135 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %127, i32 0, i32 11, !dbg !2257
  %frameContentSize136 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams135, i32 0, i32 0, !dbg !2257
  %128 = load i64, ptr %frameContentSize136, align 8, !dbg !2257
  %cmp137 = icmp ne i64 %126, %128, !dbg !2257
  br i1 %cmp137, label %if.then139, label %if.end140, !dbg !2260

if.then139:                                       ; preds = %land.lhs.true
  store i64 -20, ptr %retval, align 8, !dbg !2261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup157, !dbg !2261

if.end140:                                        ; preds = %land.lhs.true, %if.then130
  %129 = load ptr, ptr %dctx.addr, align 8, !dbg !2263
  %fParams141 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %129, i32 0, i32 11, !dbg !2265
  %checksumFlag142 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams141, i32 0, i32 6, !dbg !2266
  %130 = load i32, ptr %checksumFlag142, align 8, !dbg !2266
  %tobool143 = icmp ne i32 %130, 0, !dbg !2263
  br i1 %tobool143, label %if.then144, label %if.else147, !dbg !2267

if.then144:                                       ; preds = %if.end140
  %131 = load ptr, ptr %dctx.addr, align 8, !dbg !2268
  %expected145 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %131, i32 0, i32 10, !dbg !2270
  store i64 4, ptr %expected145, align 8, !dbg !2271
  %132 = load ptr, ptr %dctx.addr, align 8, !dbg !2272
  %stage146 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %132, i32 0, i32 15, !dbg !2273
  store i32 5, ptr %stage146, align 4, !dbg !2274
  br label %if.end152, !dbg !2275

if.else147:                                       ; preds = %if.end140
  %133 = load ptr, ptr %dctx.addr, align 8, !dbg !2276
  %134 = load ptr, ptr %dctx.addr, align 8, !dbg !2278
  %decodedSize148 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %134, i32 0, i32 13, !dbg !2279
  %135 = load i64, ptr %decodedSize148, align 8, !dbg !2279
  %136 = load ptr, ptr %dctx.addr, align 8, !dbg !2280
  %processedCSize149 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %136, i32 0, i32 12, !dbg !2281
  %137 = load i64, ptr %processedCSize149, align 8, !dbg !2281
  call void @ZSTD_DCtx_trace_end(ptr noundef %133, i64 noundef %135, i64 noundef %137, i32 noundef 1) #7, !dbg !2282
  %138 = load ptr, ptr %dctx.addr, align 8, !dbg !2283
  %expected150 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %138, i32 0, i32 10, !dbg !2284
  store i64 0, ptr %expected150, align 8, !dbg !2285
  %139 = load ptr, ptr %dctx.addr, align 8, !dbg !2286
  %stage151 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %139, i32 0, i32 15, !dbg !2287
  store i32 0, ptr %stage151, align 4, !dbg !2288
  br label %if.end152

if.end152:                                        ; preds = %if.else147, %if.then144
  br label %if.end156, !dbg !2289

if.else153:                                       ; preds = %if.end126
  %140 = load ptr, ptr %dctx.addr, align 8, !dbg !2290
  %stage154 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %140, i32 0, i32 15, !dbg !2292
  store i32 2, ptr %stage154, align 4, !dbg !2293
  %141 = load ptr, ptr %dctx.addr, align 8, !dbg !2294
  %expected155 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %141, i32 0, i32 10, !dbg !2295
  store i64 3, ptr %expected155, align 8, !dbg !2296
  br label %if.end156

if.end156:                                        ; preds = %if.else153, %if.end152
  %142 = load i64, ptr %rSize, align 8, !dbg !2297
  store i64 %142, ptr %retval, align 8, !dbg !2298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup157, !dbg !2298

cleanup157:                                       ; preds = %if.end156, %if.then139, %if.then125, %if.then114, %cleanup104, %do.body95, %cleanup84
  call void @llvm.lifetime.end.p0(i64 8, ptr %rSize) #8, !dbg !2299
  br label %sw.epilog198

sw.bb158:                                         ; preds = %if.end
  %143 = load ptr, ptr %dctx.addr, align 8, !dbg !2300
  %validateChecksum159 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %143, i32 0, i32 22, !dbg !2301
  %144 = load i32, ptr %validateChecksum159, align 8, !dbg !2301
  %tobool160 = icmp ne i32 %144, 0, !dbg !2300
  br i1 %tobool160, label %if.then161, label %if.end174, !dbg !2302

if.then161:                                       ; preds = %sw.bb158
  call void @llvm.lifetime.start.p0(i64 4, ptr %h32) #8, !dbg !2303
  call void @llvm.dbg.declare(metadata ptr %h32, metadata !1997, metadata !DIExpression()), !dbg !2304
  %145 = load ptr, ptr %dctx.addr, align 8, !dbg !2305
  %xxhState162 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %145, i32 0, i32 18, !dbg !2306
  %call163 = call i64 @xxh64_digest(ptr noundef %xxhState162) #7, !dbg !2307
  %conv164 = trunc i64 %call163 to i32, !dbg !2308
  store i32 %conv164, ptr %h32, align 4, !dbg !2304
  call void @llvm.lifetime.start.p0(i64 4, ptr %check32) #8, !dbg !2309
  call void @llvm.dbg.declare(metadata ptr %check32, metadata !2001, metadata !DIExpression()), !dbg !2310
  %146 = load ptr, ptr %src.addr, align 8, !dbg !2311
  %call165 = call i32 @MEM_readLE32(ptr noundef %146) #7, !dbg !2312
  store i32 %call165, ptr %check32, align 4, !dbg !2310
  %147 = load i32, ptr %check32, align 4, !dbg !2313
  %148 = load i32, ptr %h32, align 4, !dbg !2313
  %cmp166 = icmp ne i32 %147, %148, !dbg !2313
  br i1 %cmp166, label %if.then168, label %if.end169, !dbg !2315

if.then168:                                       ; preds = %if.then161
  store i64 -22, ptr %retval, align 8, !dbg !2316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup170, !dbg !2316

if.end169:                                        ; preds = %if.then161
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2318
  br label %cleanup170, !dbg !2318

cleanup170:                                       ; preds = %if.end169, %if.then168
  call void @llvm.lifetime.end.p0(i64 4, ptr %check32) #8, !dbg !2318
  call void @llvm.lifetime.end.p0(i64 4, ptr %h32) #8, !dbg !2318
  %cleanup.dest172 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest172, label %unreachable [
    i32 0, label %cleanup.cont173
    i32 1, label %sw.epilog198
  ]

cleanup.cont173:                                  ; preds = %cleanup170
  br label %if.end174, !dbg !2319

if.end174:                                        ; preds = %cleanup.cont173, %sw.bb158
  %149 = load ptr, ptr %dctx.addr, align 8, !dbg !2320
  %150 = load ptr, ptr %dctx.addr, align 8, !dbg !2321
  %decodedSize175 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %150, i32 0, i32 13, !dbg !2322
  %151 = load i64, ptr %decodedSize175, align 8, !dbg !2322
  %152 = load ptr, ptr %dctx.addr, align 8, !dbg !2323
  %processedCSize176 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %152, i32 0, i32 12, !dbg !2324
  %153 = load i64, ptr %processedCSize176, align 8, !dbg !2324
  call void @ZSTD_DCtx_trace_end(ptr noundef %149, i64 noundef %151, i64 noundef %153, i32 noundef 1) #7, !dbg !2325
  %154 = load ptr, ptr %dctx.addr, align 8, !dbg !2326
  %expected177 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %154, i32 0, i32 10, !dbg !2327
  store i64 0, ptr %expected177, align 8, !dbg !2328
  %155 = load ptr, ptr %dctx.addr, align 8, !dbg !2329
  %stage178 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %155, i32 0, i32 15, !dbg !2330
  store i32 0, ptr %stage178, align 4, !dbg !2331
  store i64 0, ptr %retval, align 8, !dbg !2332
  br label %sw.epilog198, !dbg !2332

sw.bb179:                                         ; preds = %if.end
  %156 = load ptr, ptr %dctx.addr, align 8, !dbg !2333
  %headerBuffer180 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %156, i32 0, i32 54, !dbg !2333
  %arraydecay181 = getelementptr inbounds [18 x i8], ptr %headerBuffer180, i64 0, i64 0, !dbg !2333
  %157 = load i64, ptr %srcSize.addr, align 8, !dbg !2333
  %sub182 = sub i64 8, %157, !dbg !2333
  %add.ptr183 = getelementptr i8, ptr %arraydecay181, i64 %sub182, !dbg !2333
  %158 = load ptr, ptr %src.addr, align 8, !dbg !2333
  %159 = load i64, ptr %srcSize.addr, align 8, !dbg !2333
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr183, ptr align 1 %158, i64 %159, i1 false), !dbg !2333
  %160 = load ptr, ptr %dctx.addr, align 8, !dbg !2334
  %headerBuffer184 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %160, i32 0, i32 54, !dbg !2335
  %arraydecay185 = getelementptr inbounds [18 x i8], ptr %headerBuffer184, i64 0, i64 0, !dbg !2334
  %add.ptr186 = getelementptr i8, ptr %arraydecay185, i64 4, !dbg !2336
  %call187 = call i32 @MEM_readLE32(ptr noundef %add.ptr186) #7, !dbg !2337
  %conv188 = zext i32 %call187 to i64, !dbg !2337
  %161 = load ptr, ptr %dctx.addr, align 8, !dbg !2338
  %expected189 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %161, i32 0, i32 10, !dbg !2339
  store i64 %conv188, ptr %expected189, align 8, !dbg !2340
  %162 = load ptr, ptr %dctx.addr, align 8, !dbg !2341
  %stage190 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %162, i32 0, i32 15, !dbg !2342
  store i32 7, ptr %stage190, align 4, !dbg !2343
  store i64 0, ptr %retval, align 8, !dbg !2344
  br label %sw.epilog198, !dbg !2344

sw.bb191:                                         ; preds = %if.end
  %163 = load ptr, ptr %dctx.addr, align 8, !dbg !2345
  %expected192 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %163, i32 0, i32 10, !dbg !2346
  store i64 0, ptr %expected192, align 8, !dbg !2347
  %164 = load ptr, ptr %dctx.addr, align 8, !dbg !2348
  %stage193 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %164, i32 0, i32 15, !dbg !2349
  store i32 0, ptr %stage193, align 4, !dbg !2350
  store i64 0, ptr %retval, align 8, !dbg !2351
  br label %sw.epilog198, !dbg !2351

sw.default194:                                    ; preds = %if.end
  br label %do.body195, !dbg !2352

do.body195:                                       ; preds = %sw.default194
  store i64 -1, ptr %retval, align 8, !dbg !2353
  br label %sw.epilog198, !dbg !2353

do.end197:                                        ; No predecessors!
  br label %sw.epilog198, !dbg !2355

sw.epilog198:                                     ; preds = %if.then, %if.then5, %if.then13, %if.end15, %cleanup, %do.end, %cleanup69, %cleanup157, %cleanup170, %if.end174, %sw.bb179, %sw.bb191, %do.body195, %do.end197
  %165 = load i64, ptr %retval, align 8, !dbg !2356
  ret i64 %165, !dbg !2356

unreachable:                                      ; preds = %cleanup170, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_nextSrcSizeToDecompressWithInputSize(ptr noundef %dctx, i64 noundef %inputSize) #0 align 16 !dbg !2357 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %inputSize.addr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2361, metadata !DIExpression()), !dbg !2363
  store i64 %inputSize, ptr %inputSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inputSize.addr, metadata !2362, metadata !DIExpression()), !dbg !2364
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !2365
  %stage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 15, !dbg !2367
  %1 = load i32, ptr %stage, align 4, !dbg !2367
  %cmp = icmp eq i32 %1, 3, !dbg !2368
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !2369

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !2370
  %stage1 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %2, i32 0, i32 15, !dbg !2371
  %3 = load i32, ptr %stage1, align 4, !dbg !2371
  %cmp2 = icmp eq i32 %3, 4, !dbg !2372
  br i1 %cmp2, label %if.end, label %if.then, !dbg !2373

if.then:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !2374
  %expected = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 10, !dbg !2375
  %5 = load i64, ptr %expected, align 8, !dbg !2375
  store i64 %5, ptr %retval, align 8, !dbg !2376
  br label %return, !dbg !2376

if.end:                                           ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !2377
  %bType = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 14, !dbg !2379
  %7 = load i32, ptr %bType, align 8, !dbg !2379
  %cmp3 = icmp ne i32 %7, 0, !dbg !2380
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !2381

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !2382
  %expected5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 10, !dbg !2383
  %9 = load i64, ptr %expected5, align 8, !dbg !2383
  store i64 %9, ptr %retval, align 8, !dbg !2384
  br label %return, !dbg !2384

if.end6:                                          ; preds = %if.end
  %10 = load i64, ptr %inputSize.addr, align 8, !dbg !2385
  %11 = load ptr, ptr %dctx.addr, align 8, !dbg !2385
  %expected7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 10, !dbg !2385
  %12 = load i64, ptr %expected7, align 8, !dbg !2385
  %cmp8 = icmp ult i64 %10, %12, !dbg !2385
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !2385

cond.true:                                        ; preds = %if.end6
  %13 = load i64, ptr %inputSize.addr, align 8, !dbg !2385
  br label %cond.end, !dbg !2385

cond.false:                                       ; preds = %if.end6
  %14 = load ptr, ptr %dctx.addr, align 8, !dbg !2385
  %expected9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %14, i32 0, i32 10, !dbg !2385
  %15 = load i64, ptr %expected9, align 8, !dbg !2385
  br label %cond.end, !dbg !2385

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %15, %cond.false ], !dbg !2385
  %cmp10 = icmp ugt i64 1, %cond, !dbg !2385
  br i1 %cmp10, label %cond.true11, label %cond.false12, !dbg !2385

cond.true11:                                      ; preds = %cond.end
  br label %cond.end20, !dbg !2385

cond.false12:                                     ; preds = %cond.end
  %16 = load i64, ptr %inputSize.addr, align 8, !dbg !2385
  %17 = load ptr, ptr %dctx.addr, align 8, !dbg !2385
  %expected13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %17, i32 0, i32 10, !dbg !2385
  %18 = load i64, ptr %expected13, align 8, !dbg !2385
  %cmp14 = icmp ult i64 %16, %18, !dbg !2385
  br i1 %cmp14, label %cond.true15, label %cond.false16, !dbg !2385

cond.true15:                                      ; preds = %cond.false12
  %19 = load i64, ptr %inputSize.addr, align 8, !dbg !2385
  br label %cond.end18, !dbg !2385

cond.false16:                                     ; preds = %cond.false12
  %20 = load ptr, ptr %dctx.addr, align 8, !dbg !2385
  %expected17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %20, i32 0, i32 10, !dbg !2385
  %21 = load i64, ptr %expected17, align 8, !dbg !2385
  br label %cond.end18, !dbg !2385

cond.end18:                                       ; preds = %cond.false16, %cond.true15
  %cond19 = phi i64 [ %19, %cond.true15 ], [ %21, %cond.false16 ], !dbg !2385
  br label %cond.end20, !dbg !2385

cond.end20:                                       ; preds = %cond.end18, %cond.true11
  %cond21 = phi i64 [ 1, %cond.true11 ], [ %cond19, %cond.end18 ], !dbg !2385
  store i64 %cond21, ptr %retval, align 8, !dbg !2386
  br label %return, !dbg !2386

return:                                           ; preds = %cond.end20, %if.then4, %if.then
  %22 = load i64, ptr %retval, align 8, !dbg !2387
  ret i64 %22, !dbg !2387
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decodeFrameHeader(ptr noundef %dctx, ptr noundef %src, i64 noundef %headerSize) #0 align 16 !dbg !2388 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %headerSize.addr = alloca i64, align 8
  %result = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2390, metadata !DIExpression()), !dbg !2394
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2391, metadata !DIExpression()), !dbg !2395
  store i64 %headerSize, ptr %headerSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %headerSize.addr, metadata !2392, metadata !DIExpression()), !dbg !2396
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #8, !dbg !2397
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2393, metadata !DIExpression()), !dbg !2398
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !2399
  %fParams = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, !dbg !2400
  %1 = load ptr, ptr %src.addr, align 8, !dbg !2401
  %2 = load i64, ptr %headerSize.addr, align 8, !dbg !2402
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !2403
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 20, !dbg !2404
  %4 = load i32, ptr %format, align 8, !dbg !2404
  %call = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef %fParams, ptr noundef %1, i64 noundef %2, i32 noundef %4) #7, !dbg !2405
  store i64 %call, ptr %result, align 8, !dbg !2398
  %5 = load i64, ptr %result, align 8, !dbg !2406
  %call1 = call i32 @ERR_isError(i64 noundef %5) #7, !dbg !2408
  %tobool = icmp ne i32 %call1, 0, !dbg !2408
  br i1 %tobool, label %if.then, label %if.end, !dbg !2409

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %result, align 8, !dbg !2410
  store i64 %6, ptr %retval, align 8, !dbg !2411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2411

if.end:                                           ; preds = %entry
  %7 = load i64, ptr %result, align 8, !dbg !2412
  %cmp = icmp ugt i64 %7, 0, !dbg !2412
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2414

if.then2:                                         ; preds = %if.end
  store i64 -72, ptr %retval, align 8, !dbg !2415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2415

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !2417
  %refMultipleDDicts = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 35, !dbg !2419
  %9 = load i32, ptr %refMultipleDDicts, align 8, !dbg !2419
  %cmp4 = icmp eq i32 %9, 1, !dbg !2420
  br i1 %cmp4, label %land.lhs.true, label %if.end7, !dbg !2421

land.lhs.true:                                    ; preds = %if.end3
  %10 = load ptr, ptr %dctx.addr, align 8, !dbg !2422
  %ddictSet = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %10, i32 0, i32 34, !dbg !2423
  %11 = load ptr, ptr %ddictSet, align 8, !dbg !2423
  %tobool5 = icmp ne ptr %11, null, !dbg !2422
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2424

if.then6:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %dctx.addr, align 8, !dbg !2425
  call void @ZSTD_DCtx_selectFrameDDict(ptr noundef %12) #7, !dbg !2427
  br label %if.end7, !dbg !2428

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end3
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !2429
  %fParams8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %13, i32 0, i32 11, !dbg !2429
  %dictID = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams8, i32 0, i32 5, !dbg !2429
  %14 = load i32, ptr %dictID, align 4, !dbg !2429
  %tobool9 = icmp ne i32 %14, 0, !dbg !2429
  br i1 %tobool9, label %land.lhs.true10, label %if.end16, !dbg !2429

land.lhs.true10:                                  ; preds = %if.end7
  %15 = load ptr, ptr %dctx.addr, align 8, !dbg !2429
  %dictID11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %15, i32 0, i32 31, !dbg !2429
  %16 = load i32, ptr %dictID11, align 8, !dbg !2429
  %17 = load ptr, ptr %dctx.addr, align 8, !dbg !2429
  %fParams12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %17, i32 0, i32 11, !dbg !2429
  %dictID13 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams12, i32 0, i32 5, !dbg !2429
  %18 = load i32, ptr %dictID13, align 4, !dbg !2429
  %cmp14 = icmp ne i32 %16, %18, !dbg !2429
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2431

if.then15:                                        ; preds = %land.lhs.true10
  store i64 -32, ptr %retval, align 8, !dbg !2432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2432

if.end16:                                         ; preds = %land.lhs.true10, %if.end7
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !2434
  %fParams17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %19, i32 0, i32 11, !dbg !2435
  %checksumFlag = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams17, i32 0, i32 6, !dbg !2436
  %20 = load i32, ptr %checksumFlag, align 8, !dbg !2436
  %tobool18 = icmp ne i32 %20, 0, !dbg !2434
  br i1 %tobool18, label %land.rhs, label %land.end, !dbg !2437

land.rhs:                                         ; preds = %if.end16
  %21 = load ptr, ptr %dctx.addr, align 8, !dbg !2438
  %forceIgnoreChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %21, i32 0, i32 21, !dbg !2439
  %22 = load i32, ptr %forceIgnoreChecksum, align 4, !dbg !2439
  %tobool19 = icmp ne i32 %22, 0, !dbg !2440
  %lnot = xor i1 %tobool19, true, !dbg !2440
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end16
  %23 = phi i1 [ false, %if.end16 ], [ %lnot, %land.rhs ], !dbg !2441
  %24 = zext i1 %23 to i64, !dbg !2442
  %cond = select i1 %23, i32 1, i32 0, !dbg !2442
  %25 = load ptr, ptr %dctx.addr, align 8, !dbg !2443
  %validateChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %25, i32 0, i32 22, !dbg !2444
  store i32 %cond, ptr %validateChecksum, align 8, !dbg !2445
  %26 = load ptr, ptr %dctx.addr, align 8, !dbg !2446
  %validateChecksum20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %26, i32 0, i32 22, !dbg !2448
  %27 = load i32, ptr %validateChecksum20, align 8, !dbg !2448
  %tobool21 = icmp ne i32 %27, 0, !dbg !2446
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !2449

if.then22:                                        ; preds = %land.end
  %28 = load ptr, ptr %dctx.addr, align 8, !dbg !2450
  %xxhState = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %28, i32 0, i32 18, !dbg !2451
  call void @xxh64_reset(ptr noundef %xxhState, i64 noundef 0) #7, !dbg !2452
  br label %if.end23, !dbg !2452

if.end23:                                         ; preds = %if.then22, %land.end
  %29 = load i64, ptr %headerSize.addr, align 8, !dbg !2453
  %30 = load ptr, ptr %dctx.addr, align 8, !dbg !2454
  %processedCSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %30, i32 0, i32 12, !dbg !2455
  %31 = load i64, ptr %processedCSize, align 8, !dbg !2456
  %add = add i64 %31, %29, !dbg !2456
  store i64 %add, ptr %processedCSize, align 8, !dbg !2456
  store i64 0, ptr %retval, align 8, !dbg !2457
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2457

cleanup:                                          ; preds = %if.end23, %if.then15, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #8, !dbg !2458
  %32 = load i64, ptr %retval, align 8, !dbg !2458
  ret i64 %32, !dbg !2458
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2459 dso_local i64 @ZSTD_getcBlockSize(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2463 dso_local i64 @ZSTD_decompressBlock_internal(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_copyRawBlock(ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !2469 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2471, metadata !DIExpression()), !dbg !2475
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !2472, metadata !DIExpression()), !dbg !2476
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2473, metadata !DIExpression()), !dbg !2477
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !2474, metadata !DIExpression()), !dbg !2478
  %0 = load i64, ptr %srcSize.addr, align 8, !dbg !2479
  %1 = load i64, ptr %dstCapacity.addr, align 8, !dbg !2479
  %cmp = icmp ugt i64 %0, %1, !dbg !2479
  br i1 %cmp, label %if.then, label %if.end, !dbg !2481

if.then:                                          ; preds = %entry
  store i64 -70, ptr %retval, align 8, !dbg !2482
  br label %return, !dbg !2482

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !2484
  %cmp1 = icmp eq ptr %2, null, !dbg !2486
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !2487

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr %srcSize.addr, align 8, !dbg !2488
  %cmp3 = icmp eq i64 %3, 0, !dbg !2491
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2492

if.then4:                                         ; preds = %if.then2
  store i64 0, ptr %retval, align 8, !dbg !2493
  br label %return, !dbg !2493

if.end5:                                          ; preds = %if.then2
  br label %do.body, !dbg !2494

do.body:                                          ; preds = %if.end5
  store i64 -74, ptr %retval, align 8, !dbg !2495
  br label %return, !dbg !2495

do.end:                                           ; No predecessors!
  br label %if.end6, !dbg !2497

if.end6:                                          ; preds = %do.end, %if.end
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !2498
  %5 = load ptr, ptr %src.addr, align 8, !dbg !2498
  %6 = load i64, ptr %srcSize.addr, align 8, !dbg !2498
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %4, ptr align 1 %5, i64 %6, i1 false), !dbg !2498
  %7 = load i64, ptr %srcSize.addr, align 8, !dbg !2499
  store i64 %7, ptr %retval, align 8, !dbg !2500
  br label %return, !dbg !2500

return:                                           ; preds = %if.end6, %do.body, %if.then4, %if.then
  %8 = load i64, ptr %retval, align 8, !dbg !2501
  ret i64 %8, !dbg !2501
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_setRleBlock(ptr noundef %dst, i64 noundef %dstCapacity, i8 noundef zeroext %b, i64 noundef %regenSize) #0 align 16 !dbg !2502 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %b.addr = alloca i8, align 1
  %regenSize.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2506, metadata !DIExpression()), !dbg !2510
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !2507, metadata !DIExpression()), !dbg !2511
  store i8 %b, ptr %b.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2508, metadata !DIExpression()), !dbg !2512
  store i64 %regenSize, ptr %regenSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regenSize.addr, metadata !2509, metadata !DIExpression()), !dbg !2513
  %0 = load i64, ptr %regenSize.addr, align 8, !dbg !2514
  %1 = load i64, ptr %dstCapacity.addr, align 8, !dbg !2514
  %cmp = icmp ugt i64 %0, %1, !dbg !2514
  br i1 %cmp, label %if.then, label %if.end, !dbg !2516

if.then:                                          ; preds = %entry
  store i64 -70, ptr %retval, align 8, !dbg !2517
  br label %return, !dbg !2517

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !2519
  %cmp1 = icmp eq ptr %2, null, !dbg !2521
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !2522

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr %regenSize.addr, align 8, !dbg !2523
  %cmp3 = icmp eq i64 %3, 0, !dbg !2526
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2527

if.then4:                                         ; preds = %if.then2
  store i64 0, ptr %retval, align 8, !dbg !2528
  br label %return, !dbg !2528

if.end5:                                          ; preds = %if.then2
  br label %do.body, !dbg !2529

do.body:                                          ; preds = %if.end5
  store i64 -74, ptr %retval, align 8, !dbg !2530
  br label %return, !dbg !2530

do.end:                                           ; No predecessors!
  br label %if.end6, !dbg !2532

if.end6:                                          ; preds = %do.end, %if.end
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !2533
  %5 = load i8, ptr %b.addr, align 1, !dbg !2533
  %conv = zext i8 %5 to i32, !dbg !2533
  %6 = trunc i32 %conv to i8, !dbg !2533
  %7 = load i64, ptr %regenSize.addr, align 8, !dbg !2533
  call void @llvm.memset.p0.i64(ptr align 1 %4, i8 %6, i64 %7, i1 false), !dbg !2533
  %8 = load i64, ptr %regenSize.addr, align 8, !dbg !2534
  store i64 %8, ptr %retval, align 8, !dbg !2535
  br label %return, !dbg !2535

return:                                           ; preds = %if.end6, %do.body, %if.then4, %if.then
  %9 = load i64, ptr %retval, align 8, !dbg !2536
  ret i64 %9, !dbg !2536
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2537 dso_local i32 @xxh64_update(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_DCtx_trace_end(ptr noundef %dctx, i64 noundef %uncompressedSize, i64 noundef %compressedSize, i32 noundef %streaming) #0 align 16 !dbg !2541 {
entry:
  %dctx.addr = alloca ptr, align 8
  %uncompressedSize.addr = alloca i64, align 8
  %compressedSize.addr = alloca i64, align 8
  %streaming.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2545, metadata !DIExpression()), !dbg !2549
  store i64 %uncompressedSize, ptr %uncompressedSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uncompressedSize.addr, metadata !2546, metadata !DIExpression()), !dbg !2550
  store i64 %compressedSize, ptr %compressedSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compressedSize.addr, metadata !2547, metadata !DIExpression()), !dbg !2551
  store i32 %streaming, ptr %streaming.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %streaming.addr, metadata !2548, metadata !DIExpression()), !dbg !2552
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !2553
  %1 = load i64, ptr %uncompressedSize.addr, align 8, !dbg !2554
  %2 = load i64, ptr %compressedSize.addr, align 8, !dbg !2555
  %3 = load i32, ptr %streaming.addr, align 4, !dbg !2556
  ret void, !dbg !2557
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2558 dso_local i64 @xxh64_digest(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ZSTD_loadDEntropy(ptr noundef %entropy, ptr noundef %dict, i64 noundef %dictSize) #0 align 16 !dbg !2563 {
entry:
  %retval = alloca i64, align 8
  %entropy.addr = alloca ptr, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %dictPtr = alloca ptr, align 8
  %dictEnd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %workspace = alloca ptr, align 8
  %workspaceSize = alloca i64, align 8
  %hSize = alloca i64, align 8
  %offcodeNCount = alloca [32 x i16], align 16
  %offcodeMaxValue = alloca i32, align 4
  %offcodeLog = alloca i32, align 4
  %offcodeHeaderSize = alloca i64, align 8
  %matchlengthNCount = alloca [53 x i16], align 16
  %matchlengthMaxValue = alloca i32, align 4
  %matchlengthLog = alloca i32, align 4
  %matchlengthHeaderSize = alloca i64, align 8
  %litlengthNCount = alloca [36 x i16], align 16
  %litlengthMaxValue = alloca i32, align 4
  %litlengthLog = alloca i32, align 4
  %litlengthHeaderSize = alloca i64, align 8
  %i = alloca i32, align 4
  %dictContentSize = alloca i64, align 8
  %rep = alloca i32, align 4
  store ptr %entropy, ptr %entropy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entropy.addr, metadata !2569, metadata !DIExpression()), !dbg !2604
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !2570, metadata !DIExpression()), !dbg !2605
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !2571, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictPtr) #8, !dbg !2607
  call void @llvm.dbg.declare(metadata ptr %dictPtr, metadata !2572, metadata !DIExpression()), !dbg !2608
  %0 = load ptr, ptr %dict.addr, align 8, !dbg !2609
  store ptr %0, ptr %dictPtr, align 8, !dbg !2608
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictEnd) #8, !dbg !2610
  call void @llvm.dbg.declare(metadata ptr %dictEnd, metadata !2573, metadata !DIExpression()), !dbg !2611
  %1 = load ptr, ptr %dictPtr, align 8, !dbg !2612
  %2 = load i64, ptr %dictSize.addr, align 8, !dbg !2613
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !2614
  store ptr %add.ptr, ptr %dictEnd, align 8, !dbg !2611
  %3 = load i64, ptr %dictSize.addr, align 8, !dbg !2615
  %cmp = icmp ule i64 %3, 8, !dbg !2615
  br i1 %cmp, label %if.then, label %if.end, !dbg !2617

if.then:                                          ; preds = %entry
  store i64 -30, ptr %retval, align 8, !dbg !2618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup114, !dbg !2618

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dictPtr, align 8, !dbg !2620
  %add.ptr1 = getelementptr i8, ptr %4, i64 8, !dbg !2620
  store ptr %add.ptr1, ptr %dictPtr, align 8, !dbg !2620
  call void @llvm.lifetime.start.p0(i64 8, ptr %workspace) #8, !dbg !2621
  call void @llvm.dbg.declare(metadata ptr %workspace, metadata !2574, metadata !DIExpression()), !dbg !2622
  %5 = load ptr, ptr %entropy.addr, align 8, !dbg !2623
  %LLTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %5, i32 0, i32 0, !dbg !2624
  store ptr %LLTable, ptr %workspace, align 8, !dbg !2622
  call void @llvm.lifetime.start.p0(i64 8, ptr %workspaceSize) #8, !dbg !2625
  call void @llvm.dbg.declare(metadata ptr %workspaceSize, metadata !2576, metadata !DIExpression()), !dbg !2626
  store i64 10264, ptr %workspaceSize, align 8, !dbg !2626
  call void @llvm.lifetime.start.p0(i64 8, ptr %hSize) #8, !dbg !2627
  call void @llvm.dbg.declare(metadata ptr %hSize, metadata !2577, metadata !DIExpression()), !dbg !2628
  %6 = load ptr, ptr %entropy.addr, align 8, !dbg !2629
  %hufTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %6, i32 0, i32 3, !dbg !2630
  %arraydecay = getelementptr inbounds [4097 x i32], ptr %hufTable, i64 0, i64 0, !dbg !2629
  %7 = load ptr, ptr %dictPtr, align 8, !dbg !2631
  %8 = load ptr, ptr %dictEnd, align 8, !dbg !2632
  %9 = load ptr, ptr %dictPtr, align 8, !dbg !2633
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64, !dbg !2634
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64, !dbg !2634
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2634
  %10 = load ptr, ptr %workspace, align 8, !dbg !2635
  %call = call i64 @HUF_readDTableX2_wksp(ptr noundef %arraydecay, ptr noundef %7, i64 noundef %sub.ptr.sub, ptr noundef %10, i64 noundef 10264) #7, !dbg !2636
  store i64 %call, ptr %hSize, align 8, !dbg !2628
  %11 = load i64, ptr %hSize, align 8, !dbg !2637
  %call2 = call i32 @ERR_isError(i64 noundef %11) #7, !dbg !2637
  %tobool = icmp ne i32 %call2, 0, !dbg !2637
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !2639

if.then3:                                         ; preds = %if.end
  store i64 -30, ptr %retval, align 8, !dbg !2640
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2640

if.end4:                                          ; preds = %if.end
  %12 = load i64, ptr %hSize, align 8, !dbg !2642
  %13 = load ptr, ptr %dictPtr, align 8, !dbg !2643
  %add.ptr5 = getelementptr i8, ptr %13, i64 %12, !dbg !2643
  store ptr %add.ptr5, ptr %dictPtr, align 8, !dbg !2643
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2644
  br label %cleanup, !dbg !2644

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %hSize) #8, !dbg !2644
  call void @llvm.lifetime.end.p0(i64 8, ptr %workspaceSize) #8, !dbg !2644
  call void @llvm.lifetime.end.p0(i64 8, ptr %workspace) #8, !dbg !2644
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup114 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 64, ptr %offcodeNCount) #8, !dbg !2645
  call void @llvm.dbg.declare(metadata ptr %offcodeNCount, metadata !2578, metadata !DIExpression()), !dbg !2646
  call void @llvm.lifetime.start.p0(i64 4, ptr %offcodeMaxValue) #8, !dbg !2647
  call void @llvm.dbg.declare(metadata ptr %offcodeMaxValue, metadata !2582, metadata !DIExpression()), !dbg !2648
  store i32 31, ptr %offcodeMaxValue, align 4, !dbg !2648
  call void @llvm.lifetime.start.p0(i64 4, ptr %offcodeLog) #8, !dbg !2647
  call void @llvm.dbg.declare(metadata ptr %offcodeLog, metadata !2583, metadata !DIExpression()), !dbg !2649
  call void @llvm.lifetime.start.p0(i64 8, ptr %offcodeHeaderSize) #8, !dbg !2650
  call void @llvm.dbg.declare(metadata ptr %offcodeHeaderSize, metadata !2584, metadata !DIExpression()), !dbg !2651
  %arraydecay8 = getelementptr inbounds [32 x i16], ptr %offcodeNCount, i64 0, i64 0, !dbg !2652
  %14 = load ptr, ptr %dictPtr, align 8, !dbg !2653
  %15 = load ptr, ptr %dictEnd, align 8, !dbg !2654
  %16 = load ptr, ptr %dictPtr, align 8, !dbg !2655
  %sub.ptr.lhs.cast9 = ptrtoint ptr %15 to i64, !dbg !2656
  %sub.ptr.rhs.cast10 = ptrtoint ptr %16 to i64, !dbg !2656
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10, !dbg !2656
  %call12 = call i64 @FSE_readNCount(ptr noundef %arraydecay8, ptr noundef %offcodeMaxValue, ptr noundef %offcodeLog, ptr noundef %14, i64 noundef %sub.ptr.sub11) #7, !dbg !2657
  store i64 %call12, ptr %offcodeHeaderSize, align 8, !dbg !2651
  %17 = load i64, ptr %offcodeHeaderSize, align 8, !dbg !2658
  %call13 = call i32 @ERR_isError(i64 noundef %17) #7, !dbg !2658
  %tobool14 = icmp ne i32 %call13, 0, !dbg !2658
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2660

if.then15:                                        ; preds = %cleanup.cont
  store i64 -30, ptr %retval, align 8, !dbg !2661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !2661

if.end16:                                         ; preds = %cleanup.cont
  %18 = load i32, ptr %offcodeMaxValue, align 4, !dbg !2663
  %cmp17 = icmp ugt i32 %18, 31, !dbg !2663
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !2665

if.then18:                                        ; preds = %if.end16
  store i64 -30, ptr %retval, align 8, !dbg !2666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !2666

if.end19:                                         ; preds = %if.end16
  %19 = load i32, ptr %offcodeLog, align 4, !dbg !2668
  %cmp20 = icmp ugt i32 %19, 8, !dbg !2668
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !2670

if.then21:                                        ; preds = %if.end19
  store i64 -30, ptr %retval, align 8, !dbg !2671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !2671

if.end22:                                         ; preds = %if.end19
  %20 = load ptr, ptr %entropy.addr, align 8, !dbg !2673
  %OFTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %20, i32 0, i32 1, !dbg !2674
  %arraydecay23 = getelementptr inbounds [257 x %struct.ZSTD_seqSymbol], ptr %OFTable, i64 0, i64 0, !dbg !2673
  %arraydecay24 = getelementptr inbounds [32 x i16], ptr %offcodeNCount, i64 0, i64 0, !dbg !2675
  %21 = load i32, ptr %offcodeMaxValue, align 4, !dbg !2676
  %22 = load i32, ptr %offcodeLog, align 4, !dbg !2677
  %23 = load ptr, ptr %entropy.addr, align 8, !dbg !2678
  %workspace25 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %23, i32 0, i32 5, !dbg !2679
  %arraydecay26 = getelementptr inbounds [157 x i32], ptr %workspace25, i64 0, i64 0, !dbg !2678
  call void @ZSTD_buildFSETable(ptr noundef %arraydecay23, ptr noundef %arraydecay24, i32 noundef %21, ptr noundef @OF_base, ptr noundef @OF_bits, i32 noundef %22, ptr noundef %arraydecay26, i64 noundef 628, i32 noundef 0) #7, !dbg !2680
  %24 = load i64, ptr %offcodeHeaderSize, align 8, !dbg !2681
  %25 = load ptr, ptr %dictPtr, align 8, !dbg !2682
  %add.ptr27 = getelementptr i8, ptr %25, i64 %24, !dbg !2682
  store ptr %add.ptr27, ptr %dictPtr, align 8, !dbg !2682
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2683
  br label %cleanup28, !dbg !2683

cleanup28:                                        ; preds = %if.end22, %if.then21, %if.then18, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %offcodeHeaderSize) #8, !dbg !2683
  call void @llvm.lifetime.end.p0(i64 4, ptr %offcodeLog) #8, !dbg !2683
  call void @llvm.lifetime.end.p0(i64 4, ptr %offcodeMaxValue) #8, !dbg !2683
  call void @llvm.lifetime.end.p0(i64 64, ptr %offcodeNCount) #8, !dbg !2683
  %cleanup.dest32 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest32, label %cleanup114 [
    i32 0, label %cleanup.cont33
  ]

cleanup.cont33:                                   ; preds = %cleanup28
  call void @llvm.lifetime.start.p0(i64 106, ptr %matchlengthNCount) #8, !dbg !2684
  call void @llvm.dbg.declare(metadata ptr %matchlengthNCount, metadata !2585, metadata !DIExpression()), !dbg !2685
  call void @llvm.lifetime.start.p0(i64 4, ptr %matchlengthMaxValue) #8, !dbg !2686
  call void @llvm.dbg.declare(metadata ptr %matchlengthMaxValue, metadata !2588, metadata !DIExpression()), !dbg !2687
  store i32 52, ptr %matchlengthMaxValue, align 4, !dbg !2687
  call void @llvm.lifetime.start.p0(i64 4, ptr %matchlengthLog) #8, !dbg !2686
  call void @llvm.dbg.declare(metadata ptr %matchlengthLog, metadata !2589, metadata !DIExpression()), !dbg !2688
  call void @llvm.lifetime.start.p0(i64 8, ptr %matchlengthHeaderSize) #8, !dbg !2689
  call void @llvm.dbg.declare(metadata ptr %matchlengthHeaderSize, metadata !2590, metadata !DIExpression()), !dbg !2690
  %arraydecay34 = getelementptr inbounds [53 x i16], ptr %matchlengthNCount, i64 0, i64 0, !dbg !2691
  %26 = load ptr, ptr %dictPtr, align 8, !dbg !2692
  %27 = load ptr, ptr %dictEnd, align 8, !dbg !2693
  %28 = load ptr, ptr %dictPtr, align 8, !dbg !2694
  %sub.ptr.lhs.cast35 = ptrtoint ptr %27 to i64, !dbg !2695
  %sub.ptr.rhs.cast36 = ptrtoint ptr %28 to i64, !dbg !2695
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36, !dbg !2695
  %call38 = call i64 @FSE_readNCount(ptr noundef %arraydecay34, ptr noundef %matchlengthMaxValue, ptr noundef %matchlengthLog, ptr noundef %26, i64 noundef %sub.ptr.sub37) #7, !dbg !2696
  store i64 %call38, ptr %matchlengthHeaderSize, align 8, !dbg !2690
  %29 = load i64, ptr %matchlengthHeaderSize, align 8, !dbg !2697
  %call39 = call i32 @ERR_isError(i64 noundef %29) #7, !dbg !2697
  %tobool40 = icmp ne i32 %call39, 0, !dbg !2697
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !2699

if.then41:                                        ; preds = %cleanup.cont33
  store i64 -30, ptr %retval, align 8, !dbg !2700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !2700

if.end42:                                         ; preds = %cleanup.cont33
  %30 = load i32, ptr %matchlengthMaxValue, align 4, !dbg !2702
  %cmp43 = icmp ugt i32 %30, 52, !dbg !2702
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !2704

if.then44:                                        ; preds = %if.end42
  store i64 -30, ptr %retval, align 8, !dbg !2705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !2705

if.end45:                                         ; preds = %if.end42
  %31 = load i32, ptr %matchlengthLog, align 4, !dbg !2707
  %cmp46 = icmp ugt i32 %31, 9, !dbg !2707
  br i1 %cmp46, label %if.then47, label %if.end48, !dbg !2709

if.then47:                                        ; preds = %if.end45
  store i64 -30, ptr %retval, align 8, !dbg !2710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !2710

if.end48:                                         ; preds = %if.end45
  %32 = load ptr, ptr %entropy.addr, align 8, !dbg !2712
  %MLTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %32, i32 0, i32 2, !dbg !2713
  %arraydecay49 = getelementptr inbounds [513 x %struct.ZSTD_seqSymbol], ptr %MLTable, i64 0, i64 0, !dbg !2712
  %arraydecay50 = getelementptr inbounds [53 x i16], ptr %matchlengthNCount, i64 0, i64 0, !dbg !2714
  %33 = load i32, ptr %matchlengthMaxValue, align 4, !dbg !2715
  %34 = load i32, ptr %matchlengthLog, align 4, !dbg !2716
  %35 = load ptr, ptr %entropy.addr, align 8, !dbg !2717
  %workspace51 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %35, i32 0, i32 5, !dbg !2718
  %arraydecay52 = getelementptr inbounds [157 x i32], ptr %workspace51, i64 0, i64 0, !dbg !2717
  call void @ZSTD_buildFSETable(ptr noundef %arraydecay49, ptr noundef %arraydecay50, i32 noundef %33, ptr noundef @ML_base, ptr noundef @ML_bits, i32 noundef %34, ptr noundef %arraydecay52, i64 noundef 628, i32 noundef 0) #7, !dbg !2719
  %36 = load i64, ptr %matchlengthHeaderSize, align 8, !dbg !2720
  %37 = load ptr, ptr %dictPtr, align 8, !dbg !2721
  %add.ptr53 = getelementptr i8, ptr %37, i64 %36, !dbg !2721
  store ptr %add.ptr53, ptr %dictPtr, align 8, !dbg !2721
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2722
  br label %cleanup54, !dbg !2722

cleanup54:                                        ; preds = %if.end48, %if.then47, %if.then44, %if.then41
  call void @llvm.lifetime.end.p0(i64 8, ptr %matchlengthHeaderSize) #8, !dbg !2722
  call void @llvm.lifetime.end.p0(i64 4, ptr %matchlengthLog) #8, !dbg !2722
  call void @llvm.lifetime.end.p0(i64 4, ptr %matchlengthMaxValue) #8, !dbg !2722
  call void @llvm.lifetime.end.p0(i64 106, ptr %matchlengthNCount) #8, !dbg !2722
  %cleanup.dest58 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest58, label %cleanup114 [
    i32 0, label %cleanup.cont59
  ]

cleanup.cont59:                                   ; preds = %cleanup54
  call void @llvm.lifetime.start.p0(i64 72, ptr %litlengthNCount) #8, !dbg !2723
  call void @llvm.dbg.declare(metadata ptr %litlengthNCount, metadata !2591, metadata !DIExpression()), !dbg !2724
  call void @llvm.lifetime.start.p0(i64 4, ptr %litlengthMaxValue) #8, !dbg !2725
  call void @llvm.dbg.declare(metadata ptr %litlengthMaxValue, metadata !2594, metadata !DIExpression()), !dbg !2726
  store i32 35, ptr %litlengthMaxValue, align 4, !dbg !2726
  call void @llvm.lifetime.start.p0(i64 4, ptr %litlengthLog) #8, !dbg !2725
  call void @llvm.dbg.declare(metadata ptr %litlengthLog, metadata !2595, metadata !DIExpression()), !dbg !2727
  call void @llvm.lifetime.start.p0(i64 8, ptr %litlengthHeaderSize) #8, !dbg !2728
  call void @llvm.dbg.declare(metadata ptr %litlengthHeaderSize, metadata !2596, metadata !DIExpression()), !dbg !2729
  %arraydecay60 = getelementptr inbounds [36 x i16], ptr %litlengthNCount, i64 0, i64 0, !dbg !2730
  %38 = load ptr, ptr %dictPtr, align 8, !dbg !2731
  %39 = load ptr, ptr %dictEnd, align 8, !dbg !2732
  %40 = load ptr, ptr %dictPtr, align 8, !dbg !2733
  %sub.ptr.lhs.cast61 = ptrtoint ptr %39 to i64, !dbg !2734
  %sub.ptr.rhs.cast62 = ptrtoint ptr %40 to i64, !dbg !2734
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62, !dbg !2734
  %call64 = call i64 @FSE_readNCount(ptr noundef %arraydecay60, ptr noundef %litlengthMaxValue, ptr noundef %litlengthLog, ptr noundef %38, i64 noundef %sub.ptr.sub63) #7, !dbg !2735
  store i64 %call64, ptr %litlengthHeaderSize, align 8, !dbg !2729
  %41 = load i64, ptr %litlengthHeaderSize, align 8, !dbg !2736
  %call65 = call i32 @ERR_isError(i64 noundef %41) #7, !dbg !2736
  %tobool66 = icmp ne i32 %call65, 0, !dbg !2736
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !2738

if.then67:                                        ; preds = %cleanup.cont59
  store i64 -30, ptr %retval, align 8, !dbg !2739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !2739

if.end68:                                         ; preds = %cleanup.cont59
  %42 = load i32, ptr %litlengthMaxValue, align 4, !dbg !2741
  %cmp69 = icmp ugt i32 %42, 35, !dbg !2741
  br i1 %cmp69, label %if.then70, label %if.end71, !dbg !2743

if.then70:                                        ; preds = %if.end68
  store i64 -30, ptr %retval, align 8, !dbg !2744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !2744

if.end71:                                         ; preds = %if.end68
  %43 = load i32, ptr %litlengthLog, align 4, !dbg !2746
  %cmp72 = icmp ugt i32 %43, 9, !dbg !2746
  br i1 %cmp72, label %if.then73, label %if.end74, !dbg !2748

if.then73:                                        ; preds = %if.end71
  store i64 -30, ptr %retval, align 8, !dbg !2749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !2749

if.end74:                                         ; preds = %if.end71
  %44 = load ptr, ptr %entropy.addr, align 8, !dbg !2751
  %LLTable75 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %44, i32 0, i32 0, !dbg !2752
  %arraydecay76 = getelementptr inbounds [513 x %struct.ZSTD_seqSymbol], ptr %LLTable75, i64 0, i64 0, !dbg !2751
  %arraydecay77 = getelementptr inbounds [36 x i16], ptr %litlengthNCount, i64 0, i64 0, !dbg !2753
  %45 = load i32, ptr %litlengthMaxValue, align 4, !dbg !2754
  %46 = load i32, ptr %litlengthLog, align 4, !dbg !2755
  %47 = load ptr, ptr %entropy.addr, align 8, !dbg !2756
  %workspace78 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %47, i32 0, i32 5, !dbg !2757
  %arraydecay79 = getelementptr inbounds [157 x i32], ptr %workspace78, i64 0, i64 0, !dbg !2756
  call void @ZSTD_buildFSETable(ptr noundef %arraydecay76, ptr noundef %arraydecay77, i32 noundef %45, ptr noundef @LL_base, ptr noundef @LL_bits, i32 noundef %46, ptr noundef %arraydecay79, i64 noundef 628, i32 noundef 0) #7, !dbg !2758
  %48 = load i64, ptr %litlengthHeaderSize, align 8, !dbg !2759
  %49 = load ptr, ptr %dictPtr, align 8, !dbg !2760
  %add.ptr80 = getelementptr i8, ptr %49, i64 %48, !dbg !2760
  store ptr %add.ptr80, ptr %dictPtr, align 8, !dbg !2760
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2761
  br label %cleanup81, !dbg !2761

cleanup81:                                        ; preds = %if.end74, %if.then73, %if.then70, %if.then67
  call void @llvm.lifetime.end.p0(i64 8, ptr %litlengthHeaderSize) #8, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 4, ptr %litlengthLog) #8, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 4, ptr %litlengthMaxValue) #8, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 72, ptr %litlengthNCount) #8, !dbg !2761
  %cleanup.dest85 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest85, label %cleanup114 [
    i32 0, label %cleanup.cont86
  ]

cleanup.cont86:                                   ; preds = %cleanup81
  %50 = load ptr, ptr %dictPtr, align 8, !dbg !2762
  %add.ptr87 = getelementptr i8, ptr %50, i64 12, !dbg !2762
  %51 = load ptr, ptr %dictEnd, align 8, !dbg !2762
  %cmp88 = icmp ugt ptr %add.ptr87, %51, !dbg !2762
  br i1 %cmp88, label %if.then89, label %if.end90, !dbg !2764

if.then89:                                        ; preds = %cleanup.cont86
  store i64 -30, ptr %retval, align 8, !dbg !2765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup114, !dbg !2765

if.end90:                                         ; preds = %cleanup.cont86
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !2767
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2597, metadata !DIExpression()), !dbg !2768
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictContentSize) #8, !dbg !2769
  call void @llvm.dbg.declare(metadata ptr %dictContentSize, metadata !2599, metadata !DIExpression()), !dbg !2770
  %52 = load ptr, ptr %dictEnd, align 8, !dbg !2771
  %53 = load ptr, ptr %dictPtr, align 8, !dbg !2772
  %add.ptr91 = getelementptr i8, ptr %53, i64 12, !dbg !2773
  %sub.ptr.lhs.cast92 = ptrtoint ptr %52 to i64, !dbg !2774
  %sub.ptr.rhs.cast93 = ptrtoint ptr %add.ptr91 to i64, !dbg !2774
  %sub.ptr.sub94 = sub i64 %sub.ptr.lhs.cast92, %sub.ptr.rhs.cast93, !dbg !2774
  store i64 %sub.ptr.sub94, ptr %dictContentSize, align 8, !dbg !2770
  store i32 0, ptr %i, align 4, !dbg !2775
  br label %for.cond, !dbg !2776

for.cond:                                         ; preds = %for.inc, %if.end90
  %54 = load i32, ptr %i, align 4, !dbg !2777
  %cmp95 = icmp slt i32 %54, 3, !dbg !2778
  br i1 %cmp95, label %for.body, label %for.end, !dbg !2779

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %rep) #8, !dbg !2780
  call void @llvm.dbg.declare(metadata ptr %rep, metadata !2600, metadata !DIExpression()), !dbg !2781
  %55 = load ptr, ptr %dictPtr, align 8, !dbg !2782
  %call96 = call i32 @MEM_readLE32(ptr noundef %55) #7, !dbg !2783
  store i32 %call96, ptr %rep, align 4, !dbg !2781
  %56 = load ptr, ptr %dictPtr, align 8, !dbg !2784
  %add.ptr97 = getelementptr i8, ptr %56, i64 4, !dbg !2784
  store ptr %add.ptr97, ptr %dictPtr, align 8, !dbg !2784
  %57 = load i32, ptr %rep, align 4, !dbg !2785
  %cmp98 = icmp eq i32 %57, 0, !dbg !2785
  br i1 %cmp98, label %if.then101, label %lor.lhs.false, !dbg !2785

lor.lhs.false:                                    ; preds = %for.body
  %58 = load i32, ptr %rep, align 4, !dbg !2785
  %conv = zext i32 %58 to i64, !dbg !2785
  %59 = load i64, ptr %dictContentSize, align 8, !dbg !2785
  %cmp99 = icmp ugt i64 %conv, %59, !dbg !2785
  br i1 %cmp99, label %if.then101, label %if.end102, !dbg !2787

if.then101:                                       ; preds = %lor.lhs.false, %for.body
  store i64 -30, ptr %retval, align 8, !dbg !2788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup104, !dbg !2788

if.end102:                                        ; preds = %lor.lhs.false
  %60 = load i32, ptr %rep, align 4, !dbg !2790
  %61 = load ptr, ptr %entropy.addr, align 8, !dbg !2791
  %rep103 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %61, i32 0, i32 4, !dbg !2792
  %62 = load i32, ptr %i, align 4, !dbg !2793
  %idxprom = sext i32 %62 to i64, !dbg !2791
  %arrayidx = getelementptr [3 x i32], ptr %rep103, i64 0, i64 %idxprom, !dbg !2791
  store i32 %60, ptr %arrayidx, align 4, !dbg !2794
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2795
  br label %cleanup104, !dbg !2795

cleanup104:                                       ; preds = %if.end102, %if.then101
  call void @llvm.lifetime.end.p0(i64 4, ptr %rep) #8, !dbg !2795
  %cleanup.dest105 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest105, label %cleanup107 [
    i32 0, label %cleanup.cont106
  ]

cleanup.cont106:                                  ; preds = %cleanup104
  br label %for.inc, !dbg !2796

for.inc:                                          ; preds = %cleanup.cont106
  %63 = load i32, ptr %i, align 4, !dbg !2797
  %inc = add i32 %63, 1, !dbg !2797
  store i32 %inc, ptr %i, align 4, !dbg !2797
  br label %for.cond, !dbg !2798, !llvm.loop !2799

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2801
  br label %cleanup107, !dbg !2801

cleanup107:                                       ; preds = %for.end, %cleanup104
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictContentSize) #8, !dbg !2801
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !2801
  %cleanup.dest109 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest109, label %cleanup114 [
    i32 0, label %cleanup.cont110
  ]

cleanup.cont110:                                  ; preds = %cleanup107
  %64 = load ptr, ptr %dictPtr, align 8, !dbg !2802
  %65 = load ptr, ptr %dict.addr, align 8, !dbg !2803
  %sub.ptr.lhs.cast111 = ptrtoint ptr %64 to i64, !dbg !2804
  %sub.ptr.rhs.cast112 = ptrtoint ptr %65 to i64, !dbg !2804
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast112, !dbg !2804
  store i64 %sub.ptr.sub113, ptr %retval, align 8, !dbg !2805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup114, !dbg !2805

cleanup114:                                       ; preds = %cleanup.cont110, %cleanup107, %if.then89, %cleanup81, %cleanup54, %cleanup28, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictEnd) #8, !dbg !2806
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictPtr) #8, !dbg !2806
  %66 = load i64, ptr %retval, align 8, !dbg !2806
  ret i64 %66, !dbg !2806
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2807 dso_local i64 @HUF_readDTableX2_wksp(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2811 dso_local i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2816 dso_local void @ZSTD_buildFSETable(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decompressBegin(ptr noundef %dctx) #0 align 16 !dbg !2824 {
entry:
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2826, metadata !DIExpression()), !dbg !2827
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !2828
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20, !dbg !2829
  %1 = load i32, ptr %format, align 8, !dbg !2829
  %call = call i64 @ZSTD_startingInputLength(i32 noundef %1) #7, !dbg !2830
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !2831
  %expected = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %2, i32 0, i32 10, !dbg !2832
  store i64 %call, ptr %expected, align 8, !dbg !2833
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !2834
  %stage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 15, !dbg !2835
  store i32 0, ptr %stage, align 4, !dbg !2836
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !2837
  %processedCSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 12, !dbg !2838
  store i64 0, ptr %processedCSize, align 8, !dbg !2839
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !2840
  %decodedSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 13, !dbg !2841
  store i64 0, ptr %decodedSize, align 8, !dbg !2842
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !2843
  %previousDstEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 6, !dbg !2844
  store ptr null, ptr %previousDstEnd, align 8, !dbg !2845
  %7 = load ptr, ptr %dctx.addr, align 8, !dbg !2846
  %prefixStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %7, i32 0, i32 7, !dbg !2847
  store ptr null, ptr %prefixStart, align 8, !dbg !2848
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !2849
  %virtualStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 8, !dbg !2850
  store ptr null, ptr %virtualStart, align 8, !dbg !2851
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !2852
  %dictEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %9, i32 0, i32 9, !dbg !2853
  store ptr null, ptr %dictEnd, align 8, !dbg !2854
  %10 = load ptr, ptr %dctx.addr, align 8, !dbg !2855
  %entropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %10, i32 0, i32 4, !dbg !2856
  %hufTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 3, !dbg !2857
  %arrayidx = getelementptr [4097 x i32], ptr %hufTable, i64 0, i64 0, !dbg !2855
  store i32 201326604, ptr %arrayidx, align 8, !dbg !2858
  %11 = load ptr, ptr %dctx.addr, align 8, !dbg !2859
  %fseEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 17, !dbg !2860
  store i32 0, ptr %fseEntropy, align 4, !dbg !2861
  %12 = load ptr, ptr %dctx.addr, align 8, !dbg !2862
  %litEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %12, i32 0, i32 16, !dbg !2863
  store i32 0, ptr %litEntropy, align 8, !dbg !2864
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !2865
  %dictID = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %13, i32 0, i32 31, !dbg !2866
  store i32 0, ptr %dictID, align 8, !dbg !2867
  %14 = load ptr, ptr %dctx.addr, align 8, !dbg !2868
  %bType = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %14, i32 0, i32 14, !dbg !2869
  store i32 3, ptr %bType, align 8, !dbg !2870
  %15 = load ptr, ptr %dctx.addr, align 8, !dbg !2871
  %entropy1 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %15, i32 0, i32 4, !dbg !2871
  %rep = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy1, i32 0, i32 4, !dbg !2871
  %arraydecay = getelementptr inbounds [3 x i32], ptr %rep, i64 0, i64 0, !dbg !2871
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 4 @repStartValue, i64 12, i1 false), !dbg !2871
  %16 = load ptr, ptr %dctx.addr, align 8, !dbg !2872
  %entropy2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i32 0, i32 4, !dbg !2873
  %LLTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy2, i32 0, i32 0, !dbg !2874
  %arraydecay3 = getelementptr inbounds [513 x %struct.ZSTD_seqSymbol], ptr %LLTable, i64 0, i64 0, !dbg !2872
  %17 = load ptr, ptr %dctx.addr, align 8, !dbg !2875
  %LLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %17, i32 0, i32 0, !dbg !2876
  store ptr %arraydecay3, ptr %LLTptr, align 8, !dbg !2877
  %18 = load ptr, ptr %dctx.addr, align 8, !dbg !2878
  %entropy4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %18, i32 0, i32 4, !dbg !2879
  %MLTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy4, i32 0, i32 2, !dbg !2880
  %arraydecay5 = getelementptr inbounds [513 x %struct.ZSTD_seqSymbol], ptr %MLTable, i64 0, i64 0, !dbg !2878
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !2881
  %MLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %19, i32 0, i32 1, !dbg !2882
  store ptr %arraydecay5, ptr %MLTptr, align 8, !dbg !2883
  %20 = load ptr, ptr %dctx.addr, align 8, !dbg !2884
  %entropy6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %20, i32 0, i32 4, !dbg !2885
  %OFTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy6, i32 0, i32 1, !dbg !2886
  %arraydecay7 = getelementptr inbounds [257 x %struct.ZSTD_seqSymbol], ptr %OFTable, i64 0, i64 0, !dbg !2884
  %21 = load ptr, ptr %dctx.addr, align 8, !dbg !2887
  %OFTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %21, i32 0, i32 2, !dbg !2888
  store ptr %arraydecay7, ptr %OFTptr, align 8, !dbg !2889
  %22 = load ptr, ptr %dctx.addr, align 8, !dbg !2890
  %entropy8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %22, i32 0, i32 4, !dbg !2891
  %hufTable9 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy8, i32 0, i32 3, !dbg !2892
  %arraydecay10 = getelementptr inbounds [4097 x i32], ptr %hufTable9, i64 0, i64 0, !dbg !2890
  %23 = load ptr, ptr %dctx.addr, align 8, !dbg !2893
  %HUFptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %23, i32 0, i32 3, !dbg !2894
  store ptr %arraydecay10, ptr %HUFptr, align 8, !dbg !2895
  ret i64 0, !dbg !2896
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decompressBegin_usingDict(ptr noundef %dctx, ptr noundef %dict, i64 noundef %dictSize) #0 align 16 !dbg !2897 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2899, metadata !DIExpression()), !dbg !2904
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !2900, metadata !DIExpression()), !dbg !2905
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !2901, metadata !DIExpression()), !dbg !2906
  br label %do.body, !dbg !2907

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !2908
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !2902, metadata !DIExpression()), !dbg !2908
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !2908
  %call = call i64 @ZSTD_decompressBegin(ptr noundef %0) #7, !dbg !2908
  store i64 %call, ptr %err_code, align 8, !dbg !2908
  %1 = load i64, ptr %err_code, align 8, !dbg !2909
  %call1 = call i32 @ERR_isError(i64 noundef %1) #7, !dbg !2909
  %tobool = icmp ne i32 %call1, 0, !dbg !2909
  br i1 %tobool, label %if.then, label %if.end, !dbg !2908

if.then:                                          ; preds = %do.body
  %2 = load i64, ptr %err_code, align 8, !dbg !2911
  store i64 %2, ptr %retval, align 8, !dbg !2911
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2911

if.end:                                           ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2907
  br label %cleanup, !dbg !2907

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !2907
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !2908

do.end:                                           ; preds = %cleanup.cont
  %3 = load ptr, ptr %dict.addr, align 8, !dbg !2913
  %tobool2 = icmp ne ptr %3, null, !dbg !2913
  br i1 %tobool2, label %land.lhs.true, label %if.end10, !dbg !2915

land.lhs.true:                                    ; preds = %do.end
  %4 = load i64, ptr %dictSize.addr, align 8, !dbg !2916
  %tobool3 = icmp ne i64 %4, 0, !dbg !2916
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !2917

if.then4:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !2918
  %6 = load ptr, ptr %dict.addr, align 8, !dbg !2918
  %7 = load i64, ptr %dictSize.addr, align 8, !dbg !2918
  %call5 = call i64 @ZSTD_decompress_insertDictionary(ptr noundef %5, ptr noundef %6, i64 noundef %7) #7, !dbg !2918
  %call6 = call i32 @ERR_isError(i64 noundef %call5) #7, !dbg !2918
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2918
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2920

if.then8:                                         ; preds = %if.then4
  store i64 -30, ptr %retval, align 8, !dbg !2921
  br label %return, !dbg !2921

if.end9:                                          ; preds = %if.then4
  br label %if.end10, !dbg !2918

if.end10:                                         ; preds = %if.end9, %land.lhs.true, %do.end
  store i64 0, ptr %retval, align 8, !dbg !2923
  br label %return, !dbg !2923

return:                                           ; preds = %if.end10, %if.then8, %cleanup
  %8 = load i64, ptr %retval, align 8, !dbg !2924
  ret i64 %8, !dbg !2924

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompress_insertDictionary(ptr noundef %dctx, ptr noundef %dict, i64 noundef %dictSize) #0 align 16 !dbg !2925 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %magic = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %eSize = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !2927, metadata !DIExpression()), !dbg !2934
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !2928, metadata !DIExpression()), !dbg !2935
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !2929, metadata !DIExpression()), !dbg !2936
  %0 = load i64, ptr %dictSize.addr, align 8, !dbg !2937
  %cmp = icmp ult i64 %0, 8, !dbg !2939
  br i1 %cmp, label %if.then, label %if.end, !dbg !2940

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !2941
  %2 = load ptr, ptr %dict.addr, align 8, !dbg !2942
  %3 = load i64, ptr %dictSize.addr, align 8, !dbg !2943
  %call = call i64 @ZSTD_refDictContent(ptr noundef %1, ptr noundef %2, i64 noundef %3) #7, !dbg !2944
  store i64 %call, ptr %retval, align 8, !dbg !2945
  br label %return, !dbg !2945

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %magic) #8, !dbg !2946
  call void @llvm.dbg.declare(metadata ptr %magic, metadata !2930, metadata !DIExpression()), !dbg !2947
  %4 = load ptr, ptr %dict.addr, align 8, !dbg !2948
  %call1 = call i32 @MEM_readLE32(ptr noundef %4) #7, !dbg !2949
  store i32 %call1, ptr %magic, align 4, !dbg !2947
  %5 = load i32, ptr %magic, align 4, !dbg !2950
  %cmp2 = icmp ne i32 %5, -332356553, !dbg !2952
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !2953

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !2954
  %7 = load ptr, ptr %dict.addr, align 8, !dbg !2956
  %8 = load i64, ptr %dictSize.addr, align 8, !dbg !2957
  %call4 = call i64 @ZSTD_refDictContent(ptr noundef %6, ptr noundef %7, i64 noundef %8) #7, !dbg !2958
  store i64 %call4, ptr %retval, align 8, !dbg !2959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2959

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2960
  br label %cleanup, !dbg !2960

cleanup:                                          ; preds = %if.end5, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %magic) #8, !dbg !2960
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  %9 = load ptr, ptr %dict.addr, align 8, !dbg !2961
  %add.ptr = getelementptr i8, ptr %9, i64 4, !dbg !2962
  %call6 = call i32 @MEM_readLE32(ptr noundef %add.ptr) #7, !dbg !2963
  %10 = load ptr, ptr %dctx.addr, align 8, !dbg !2964
  %dictID = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %10, i32 0, i32 31, !dbg !2965
  store i32 %call6, ptr %dictID, align 8, !dbg !2966
  call void @llvm.lifetime.start.p0(i64 8, ptr %eSize) #8, !dbg !2967
  call void @llvm.dbg.declare(metadata ptr %eSize, metadata !2932, metadata !DIExpression()), !dbg !2968
  %11 = load ptr, ptr %dctx.addr, align 8, !dbg !2969
  %entropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 4, !dbg !2970
  %12 = load ptr, ptr %dict.addr, align 8, !dbg !2971
  %13 = load i64, ptr %dictSize.addr, align 8, !dbg !2972
  %call7 = call i64 @ZSTD_loadDEntropy(ptr noundef %entropy, ptr noundef %12, i64 noundef %13) #7, !dbg !2973
  store i64 %call7, ptr %eSize, align 8, !dbg !2968
  %14 = load i64, ptr %eSize, align 8, !dbg !2974
  %call8 = call i32 @ERR_isError(i64 noundef %14) #7, !dbg !2974
  %tobool = icmp ne i32 %call8, 0, !dbg !2974
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !2976

if.then9:                                         ; preds = %cleanup.cont
  store i64 -30, ptr %retval, align 8, !dbg !2977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup12, !dbg !2977

if.end10:                                         ; preds = %cleanup.cont
  %15 = load ptr, ptr %dict.addr, align 8, !dbg !2979
  %16 = load i64, ptr %eSize, align 8, !dbg !2980
  %add.ptr11 = getelementptr i8, ptr %15, i64 %16, !dbg !2981
  store ptr %add.ptr11, ptr %dict.addr, align 8, !dbg !2982
  %17 = load i64, ptr %eSize, align 8, !dbg !2983
  %18 = load i64, ptr %dictSize.addr, align 8, !dbg !2984
  %sub = sub i64 %18, %17, !dbg !2984
  store i64 %sub, ptr %dictSize.addr, align 8, !dbg !2984
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2985
  br label %cleanup12, !dbg !2985

cleanup12:                                        ; preds = %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %eSize) #8, !dbg !2985
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %unreachable [
    i32 0, label %cleanup.cont14
    i32 1, label %return
  ]

cleanup.cont14:                                   ; preds = %cleanup12
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !2986
  %fseEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %19, i32 0, i32 17, !dbg !2987
  store i32 1, ptr %fseEntropy, align 4, !dbg !2988
  %20 = load ptr, ptr %dctx.addr, align 8, !dbg !2989
  %litEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %20, i32 0, i32 16, !dbg !2990
  store i32 1, ptr %litEntropy, align 8, !dbg !2991
  %21 = load ptr, ptr %dctx.addr, align 8, !dbg !2992
  %22 = load ptr, ptr %dict.addr, align 8, !dbg !2993
  %23 = load i64, ptr %dictSize.addr, align 8, !dbg !2994
  %call15 = call i64 @ZSTD_refDictContent(ptr noundef %21, ptr noundef %22, i64 noundef %23) #7, !dbg !2995
  store i64 %call15, ptr %retval, align 8, !dbg !2996
  br label %return, !dbg !2996

return:                                           ; preds = %cleanup.cont14, %cleanup12, %cleanup, %if.then
  %24 = load i64, ptr %retval, align 8, !dbg !2997
  ret i64 %24, !dbg !2997

unreachable:                                      ; preds = %cleanup12, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decompressBegin_usingDDict(ptr noundef %dctx, ptr noundef %ddict) #0 align 16 !dbg !2998 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %ddict.addr = alloca ptr, align 8
  %dictStart = alloca ptr, align 8
  %dictSize = alloca i64, align 8
  %dictEnd = alloca ptr, align 8
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3002, metadata !DIExpression()), !dbg !3012
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !3003, metadata !DIExpression()), !dbg !3013
  %0 = load ptr, ptr %ddict.addr, align 8, !dbg !3014
  %tobool = icmp ne ptr %0, null, !dbg !3014
  br i1 %tobool, label %if.then, label %if.end, !dbg !3015

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictStart) #8, !dbg !3016
  call void @llvm.dbg.declare(metadata ptr %dictStart, metadata !3004, metadata !DIExpression()), !dbg !3017
  %1 = load ptr, ptr %ddict.addr, align 8, !dbg !3018
  %call = call ptr @ZSTD_DDict_dictContent(ptr noundef %1) #7, !dbg !3019
  store ptr %call, ptr %dictStart, align 8, !dbg !3017
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictSize) #8, !dbg !3020
  call void @llvm.dbg.declare(metadata ptr %dictSize, metadata !3008, metadata !DIExpression()), !dbg !3021
  %2 = load ptr, ptr %ddict.addr, align 8, !dbg !3022
  %call1 = call i64 @ZSTD_DDict_dictSize(ptr noundef %2) #7, !dbg !3023
  store i64 %call1, ptr %dictSize, align 8, !dbg !3021
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictEnd) #8, !dbg !3024
  call void @llvm.dbg.declare(metadata ptr %dictEnd, metadata !3009, metadata !DIExpression()), !dbg !3025
  %3 = load ptr, ptr %dictStart, align 8, !dbg !3026
  %4 = load i64, ptr %dictSize, align 8, !dbg !3027
  %add.ptr = getelementptr i8, ptr %3, i64 %4, !dbg !3028
  store ptr %add.ptr, ptr %dictEnd, align 8, !dbg !3025
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !3029
  %dictEnd2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 9, !dbg !3030
  %6 = load ptr, ptr %dictEnd2, align 8, !dbg !3030
  %7 = load ptr, ptr %dictEnd, align 8, !dbg !3031
  %cmp = icmp ne ptr %6, %7, !dbg !3032
  %conv = zext i1 %cmp to i32, !dbg !3032
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !3033
  %ddictIsCold = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 32, !dbg !3034
  store i32 %conv, ptr %ddictIsCold, align 4, !dbg !3035
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictEnd) #8, !dbg !3036
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictSize) #8, !dbg !3036
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictStart) #8, !dbg !3036
  br label %if.end, !dbg !3037

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !3038

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !3039
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !3010, metadata !DIExpression()), !dbg !3039
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !3039
  %call3 = call i64 @ZSTD_decompressBegin(ptr noundef %9) #7, !dbg !3039
  store i64 %call3, ptr %err_code, align 8, !dbg !3039
  %10 = load i64, ptr %err_code, align 8, !dbg !3040
  %call4 = call i32 @ERR_isError(i64 noundef %10) #7, !dbg !3040
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3040
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3039

if.then6:                                         ; preds = %do.body
  %11 = load i64, ptr %err_code, align 8, !dbg !3042
  store i64 %11, ptr %retval, align 8, !dbg !3042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3042

if.end7:                                          ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3038
  br label %cleanup, !dbg !3038

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !3038
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !3039

do.end:                                           ; preds = %cleanup.cont
  %12 = load ptr, ptr %ddict.addr, align 8, !dbg !3044
  %tobool8 = icmp ne ptr %12, null, !dbg !3044
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3046

if.then9:                                         ; preds = %do.end
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !3047
  %14 = load ptr, ptr %ddict.addr, align 8, !dbg !3049
  call void @ZSTD_copyDDictParameters(ptr noundef %13, ptr noundef %14) #7, !dbg !3050
  br label %if.end10, !dbg !3051

if.end10:                                         ; preds = %if.then9, %do.end
  store i64 0, ptr %retval, align 8, !dbg !3052
  br label %return, !dbg !3052

return:                                           ; preds = %if.end10, %cleanup
  %15 = load i64, ptr %retval, align 8, !dbg !3053
  ret i64 %15, !dbg !3053

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3054 dso_local ptr @ZSTD_DDict_dictContent(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3058 dso_local i64 @ZSTD_DDict_dictSize(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3059 dso_local void @ZSTD_copyDDictParameters(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ZSTD_getDictID_fromDict(ptr noundef %dict, i64 noundef %dictSize) #0 align 16 !dbg !3062 {
entry:
  %retval = alloca i32, align 4
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !3064, metadata !DIExpression()), !dbg !3066
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !3065, metadata !DIExpression()), !dbg !3067
  %0 = load i64, ptr %dictSize.addr, align 8, !dbg !3068
  %cmp = icmp ult i64 %0, 8, !dbg !3070
  br i1 %cmp, label %if.then, label %if.end, !dbg !3071

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3072
  br label %return, !dbg !3072

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dict.addr, align 8, !dbg !3073
  %call = call i32 @MEM_readLE32(ptr noundef %1) #7, !dbg !3075
  %cmp1 = icmp ne i32 %call, -332356553, !dbg !3076
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3077

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3078
  br label %return, !dbg !3078

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %dict.addr, align 8, !dbg !3079
  %add.ptr = getelementptr i8, ptr %2, i64 4, !dbg !3080
  %call4 = call i32 @MEM_readLE32(ptr noundef %add.ptr) #7, !dbg !3081
  store i32 %call4, ptr %retval, align 4, !dbg !3082
  br label %return, !dbg !3082

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !3083
  ret i32 %3, !dbg !3083
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ZSTD_getDictID_fromFrame(ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !3084 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %zfp = alloca %struct.ZSTD_frameHeader, align 8
  %hError = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !3086, metadata !DIExpression()), !dbg !3090
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !3087, metadata !DIExpression()), !dbg !3091
  call void @llvm.lifetime.start.p0(i64 40, ptr %zfp) #8, !dbg !3092
  call void @llvm.dbg.declare(metadata ptr %zfp, metadata !3088, metadata !DIExpression()), !dbg !3093
  call void @llvm.memset.p0.i64(ptr align 8 %zfp, i8 0, i64 40, i1 false), !dbg !3093
  call void @llvm.lifetime.start.p0(i64 8, ptr %hError) #8, !dbg !3094
  call void @llvm.dbg.declare(metadata ptr %hError, metadata !3089, metadata !DIExpression()), !dbg !3095
  %0 = load ptr, ptr %src.addr, align 8, !dbg !3096
  %1 = load i64, ptr %srcSize.addr, align 8, !dbg !3097
  %call = call i64 @ZSTD_getFrameHeader(ptr noundef %zfp, ptr noundef %0, i64 noundef %1) #7, !dbg !3098
  store i64 %call, ptr %hError, align 8, !dbg !3095
  %2 = load i64, ptr %hError, align 8, !dbg !3099
  %call1 = call i32 @ERR_isError(i64 noundef %2) #7, !dbg !3101
  %tobool = icmp ne i32 %call1, 0, !dbg !3101
  br i1 %tobool, label %if.then, label %if.end, !dbg !3102

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3103

if.end:                                           ; preds = %entry
  %dictID = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfp, i32 0, i32 5, !dbg !3104
  %3 = load i32, ptr %dictID, align 4, !dbg !3104
  store i32 %3, ptr %retval, align 4, !dbg !3105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3105

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hError) #8, !dbg !3106
  call void @llvm.lifetime.end.p0(i64 40, ptr %zfp) #8, !dbg !3106
  %4 = load i32, ptr %retval, align 4, !dbg !3106
  ret i32 %4, !dbg !3106
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ZSTD_createDStream() #0 align 16 !dbg !3107 {
entry:
  %call = call ptr @ZSTD_createDCtx_internal(ptr noundef byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem) #7, !dbg !3112
  ret ptr %call, !dbg !3113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ZSTD_initStaticDStream(ptr noundef %workspace, i64 noundef %workspaceSize) #0 align 16 !dbg !3114 {
entry:
  %workspace.addr = alloca ptr, align 8
  %workspaceSize.addr = alloca i64, align 8
  store ptr %workspace, ptr %workspace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workspace.addr, metadata !3118, metadata !DIExpression()), !dbg !3120
  store i64 %workspaceSize, ptr %workspaceSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workspaceSize.addr, metadata !3119, metadata !DIExpression()), !dbg !3121
  %0 = load ptr, ptr %workspace.addr, align 8, !dbg !3122
  %1 = load i64, ptr %workspaceSize.addr, align 8, !dbg !3123
  %call = call ptr @ZSTD_initStaticDCtx(ptr noundef %0, i64 noundef %1) #7, !dbg !3124
  ret ptr %call, !dbg !3125
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ZSTD_createDStream_advanced(ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #0 align 16 !dbg !3126 {
entry:
  call void @llvm.dbg.declare(metadata ptr %customMem, metadata !3130, metadata !DIExpression()), !dbg !3131
  %call = call ptr @ZSTD_createDCtx_internal(ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !3132
  ret ptr %call, !dbg !3133
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_freeDStream(ptr noundef %zds) #0 align 16 !dbg !3134 {
entry:
  %zds.addr = alloca ptr, align 8
  store ptr %zds, ptr %zds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zds.addr, metadata !3138, metadata !DIExpression()), !dbg !3139
  %0 = load ptr, ptr %zds.addr, align 8, !dbg !3140
  %call = call i64 @ZSTD_freeDCtx(ptr noundef %0) #7, !dbg !3141
  ret i64 %call, !dbg !3142
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DStreamInSize() #0 align 16 !dbg !3143 {
entry:
  ret i64 131075, !dbg !3144
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DStreamOutSize() #0 align 16 !dbg !3145 {
entry:
  ret i64 131072, !dbg !3146
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DCtx_loadDictionary_advanced(ptr noundef %dctx, ptr noundef %dict, i64 noundef %dictSize, i32 noundef %dictLoadMethod, i32 noundef %dictContentType) #0 align 16 !dbg !3147 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %dictLoadMethod.addr = alloca i32, align 4
  %dictContentType.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3153, metadata !DIExpression()), !dbg !3158
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !3154, metadata !DIExpression()), !dbg !3159
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !3155, metadata !DIExpression()), !dbg !3160
  store i32 %dictLoadMethod, ptr %dictLoadMethod.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictLoadMethod.addr, metadata !3156, metadata !DIExpression()), !dbg !3161
  store i32 %dictContentType, ptr %dictContentType.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictContentType.addr, metadata !3157, metadata !DIExpression()), !dbg !3162
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !3163
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36, !dbg !3163
  %1 = load i32, ptr %streamStage, align 4, !dbg !3163
  %cmp = icmp ne i32 %1, 0, !dbg !3163
  br i1 %cmp, label %if.then, label %if.end, !dbg !3165

if.then:                                          ; preds = %entry
  store i64 -60, ptr %retval, align 8, !dbg !3166
  br label %return, !dbg !3166

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !3168
  call void @ZSTD_clearDict(ptr noundef %2) #7, !dbg !3169
  %3 = load ptr, ptr %dict.addr, align 8, !dbg !3170
  %tobool = icmp ne ptr %3, null, !dbg !3170
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !3172

land.lhs.true:                                    ; preds = %if.end
  %4 = load i64, ptr %dictSize.addr, align 8, !dbg !3173
  %cmp1 = icmp ne i64 %4, 0, !dbg !3174
  br i1 %cmp1, label %if.then2, label %if.end8, !dbg !3175

if.then2:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %dict.addr, align 8, !dbg !3176
  %6 = load i64, ptr %dictSize.addr, align 8, !dbg !3178
  %7 = load i32, ptr %dictLoadMethod.addr, align 4, !dbg !3179
  %8 = load i32, ptr %dictContentType.addr, align 4, !dbg !3180
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !3181
  %customMem = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %9, i32 0, i32 24, !dbg !3182
  %call = call ptr @ZSTD_createDDict_advanced(ptr noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !3183
  %10 = load ptr, ptr %dctx.addr, align 8, !dbg !3184
  %ddictLocal = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %10, i32 0, i32 29, !dbg !3185
  store ptr %call, ptr %ddictLocal, align 8, !dbg !3186
  %11 = load ptr, ptr %dctx.addr, align 8, !dbg !3187
  %ddictLocal3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 29, !dbg !3187
  %12 = load ptr, ptr %ddictLocal3, align 8, !dbg !3187
  %cmp4 = icmp eq ptr %12, null, !dbg !3187
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3189

if.then5:                                         ; preds = %if.then2
  store i64 -64, ptr %retval, align 8, !dbg !3190
  br label %return, !dbg !3190

if.end6:                                          ; preds = %if.then2
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !3192
  %ddictLocal7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %13, i32 0, i32 29, !dbg !3193
  %14 = load ptr, ptr %ddictLocal7, align 8, !dbg !3193
  %15 = load ptr, ptr %dctx.addr, align 8, !dbg !3194
  %ddict = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %15, i32 0, i32 30, !dbg !3195
  store ptr %14, ptr %ddict, align 8, !dbg !3196
  %16 = load ptr, ptr %dctx.addr, align 8, !dbg !3197
  %dictUses = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i32 0, i32 33, !dbg !3198
  store i32 -1, ptr %dictUses, align 8, !dbg !3199
  br label %if.end8, !dbg !3200

if.end8:                                          ; preds = %if.end6, %land.lhs.true, %if.end
  store i64 0, ptr %retval, align 8, !dbg !3201
  br label %return, !dbg !3201

return:                                           ; preds = %if.end8, %if.then5, %if.then
  %17 = load i64, ptr %retval, align 8, !dbg !3202
  ret i64 %17, !dbg !3202
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3203 dso_local ptr @ZSTD_createDDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DCtx_loadDictionary_byReference(ptr noundef %dctx, ptr noundef %dict, i64 noundef %dictSize) #0 align 16 !dbg !3206 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3208, metadata !DIExpression()), !dbg !3211
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !3209, metadata !DIExpression()), !dbg !3212
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !3210, metadata !DIExpression()), !dbg !3213
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !3214
  %1 = load ptr, ptr %dict.addr, align 8, !dbg !3215
  %2 = load i64, ptr %dictSize.addr, align 8, !dbg !3216
  %call = call i64 @ZSTD_DCtx_loadDictionary_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef 0) #7, !dbg !3217
  ret i64 %call, !dbg !3218
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DCtx_loadDictionary(ptr noundef %dctx, ptr noundef %dict, i64 noundef %dictSize) #0 align 16 !dbg !3219 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3221, metadata !DIExpression()), !dbg !3224
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !3222, metadata !DIExpression()), !dbg !3225
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !3223, metadata !DIExpression()), !dbg !3226
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !3227
  %1 = load ptr, ptr %dict.addr, align 8, !dbg !3228
  %2 = load i64, ptr %dictSize.addr, align 8, !dbg !3229
  %call = call i64 @ZSTD_DCtx_loadDictionary_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef 0) #7, !dbg !3230
  ret i64 %call, !dbg !3231
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DCtx_refPrefix_advanced(ptr noundef %dctx, ptr noundef %prefix, i64 noundef %prefixSize, i32 noundef %dictContentType) #0 align 16 !dbg !3232 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  %prefixSize.addr = alloca i64, align 8
  %dictContentType.addr = alloca i32, align 4
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3236, metadata !DIExpression()), !dbg !3242
  store ptr %prefix, ptr %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !3237, metadata !DIExpression()), !dbg !3243
  store i64 %prefixSize, ptr %prefixSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefixSize.addr, metadata !3238, metadata !DIExpression()), !dbg !3244
  store i32 %dictContentType, ptr %dictContentType.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictContentType.addr, metadata !3239, metadata !DIExpression()), !dbg !3245
  br label %do.body, !dbg !3246

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !3247
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !3240, metadata !DIExpression()), !dbg !3247
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !3247
  %1 = load ptr, ptr %prefix.addr, align 8, !dbg !3247
  %2 = load i64, ptr %prefixSize.addr, align 8, !dbg !3247
  %3 = load i32, ptr %dictContentType.addr, align 4, !dbg !3247
  %call = call i64 @ZSTD_DCtx_loadDictionary_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef %3) #7, !dbg !3247
  store i64 %call, ptr %err_code, align 8, !dbg !3247
  %4 = load i64, ptr %err_code, align 8, !dbg !3248
  %call1 = call i32 @ERR_isError(i64 noundef %4) #7, !dbg !3248
  %tobool = icmp ne i32 %call1, 0, !dbg !3248
  br i1 %tobool, label %if.then, label %if.end, !dbg !3247

if.then:                                          ; preds = %do.body
  %5 = load i64, ptr %err_code, align 8, !dbg !3250
  store i64 %5, ptr %retval, align 8, !dbg !3250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3250

if.end:                                           ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3246
  br label %cleanup, !dbg !3246

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !3246
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !3247

do.end:                                           ; preds = %cleanup.cont
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !3252
  %dictUses = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 33, !dbg !3253
  store i32 1, ptr %dictUses, align 8, !dbg !3254
  store i64 0, ptr %retval, align 8, !dbg !3255
  br label %return, !dbg !3255

return:                                           ; preds = %do.end, %cleanup
  %7 = load i64, ptr %retval, align 8, !dbg !3256
  ret i64 %7, !dbg !3256

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DCtx_refPrefix(ptr noundef %dctx, ptr noundef %prefix, i64 noundef %prefixSize) #0 align 16 !dbg !3257 {
entry:
  %dctx.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  %prefixSize.addr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3259, metadata !DIExpression()), !dbg !3262
  store ptr %prefix, ptr %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !3260, metadata !DIExpression()), !dbg !3263
  store i64 %prefixSize, ptr %prefixSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefixSize.addr, metadata !3261, metadata !DIExpression()), !dbg !3264
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !3265
  %1 = load ptr, ptr %prefix.addr, align 8, !dbg !3266
  %2 = load i64, ptr %prefixSize.addr, align 8, !dbg !3267
  %call = call i64 @ZSTD_DCtx_refPrefix_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1) #7, !dbg !3268
  ret i64 %call, !dbg !3269
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_initDStream_usingDict(ptr noundef %zds, ptr noundef %dict, i64 noundef %dictSize) #0 align 16 !dbg !3270 {
entry:
  %retval = alloca i64, align 8
  %zds.addr = alloca ptr, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err_code3 = alloca i64, align 8
  store ptr %zds, ptr %zds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zds.addr, metadata !3274, metadata !DIExpression()), !dbg !3281
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !3275, metadata !DIExpression()), !dbg !3282
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !3276, metadata !DIExpression()), !dbg !3283
  br label %do.body, !dbg !3284

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !3285
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !3277, metadata !DIExpression()), !dbg !3285
  %0 = load ptr, ptr %zds.addr, align 8, !dbg !3285
  %call = call i64 @ZSTD_DCtx_reset(ptr noundef %0, i32 noundef 1) #7, !dbg !3285
  store i64 %call, ptr %err_code, align 8, !dbg !3285
  %1 = load i64, ptr %err_code, align 8, !dbg !3286
  %call1 = call i32 @ERR_isError(i64 noundef %1) #7, !dbg !3286
  %tobool = icmp ne i32 %call1, 0, !dbg !3286
  br i1 %tobool, label %if.then, label %if.end, !dbg !3285

if.then:                                          ; preds = %do.body
  %2 = load i64, ptr %err_code, align 8, !dbg !3288
  store i64 %2, ptr %retval, align 8, !dbg !3288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3288

if.end:                                           ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3284
  br label %cleanup, !dbg !3284

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !3284
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !3285

do.end:                                           ; preds = %cleanup.cont
  br label %do.body2, !dbg !3290

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code3) #8, !dbg !3291
  call void @llvm.dbg.declare(metadata ptr %err_code3, metadata !3279, metadata !DIExpression()), !dbg !3291
  %3 = load ptr, ptr %zds.addr, align 8, !dbg !3291
  %4 = load ptr, ptr %dict.addr, align 8, !dbg !3291
  %5 = load i64, ptr %dictSize.addr, align 8, !dbg !3291
  %call4 = call i64 @ZSTD_DCtx_loadDictionary(ptr noundef %3, ptr noundef %4, i64 noundef %5) #7, !dbg !3291
  store i64 %call4, ptr %err_code3, align 8, !dbg !3291
  %6 = load i64, ptr %err_code3, align 8, !dbg !3292
  %call5 = call i32 @ERR_isError(i64 noundef %6) #7, !dbg !3292
  %tobool6 = icmp ne i32 %call5, 0, !dbg !3292
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3291

if.then7:                                         ; preds = %do.body2
  %7 = load i64, ptr %err_code3, align 8, !dbg !3294
  store i64 %7, ptr %retval, align 8, !dbg !3294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !3294

if.end8:                                          ; preds = %do.body2
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3290
  br label %cleanup9, !dbg !3290

cleanup9:                                         ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code3) #8, !dbg !3290
  %cleanup.dest10 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest10, label %unreachable [
    i32 0, label %cleanup.cont11
    i32 1, label %return
  ]

cleanup.cont11:                                   ; preds = %cleanup9
  br label %do.end12, !dbg !3291

do.end12:                                         ; preds = %cleanup.cont11
  %8 = load ptr, ptr %zds.addr, align 8, !dbg !3296
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 20, !dbg !3297
  %9 = load i32, ptr %format, align 8, !dbg !3297
  %call13 = call i64 @ZSTD_startingInputLength(i32 noundef %9) #7, !dbg !3298
  store i64 %call13, ptr %retval, align 8, !dbg !3299
  br label %return, !dbg !3299

return:                                           ; preds = %do.end12, %cleanup9, %cleanup
  %10 = load i64, ptr %retval, align 8, !dbg !3300
  ret i64 %10, !dbg !3300

unreachable:                                      ; preds = %cleanup9, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DCtx_reset(ptr noundef %dctx, i32 noundef %reset) #0 align 16 !dbg !3301 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %reset.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3306, metadata !DIExpression()), !dbg !3308
  store i32 %reset, ptr %reset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reset.addr, metadata !3307, metadata !DIExpression()), !dbg !3309
  %0 = load i32, ptr %reset.addr, align 4, !dbg !3310
  %cmp = icmp eq i32 %0, 1, !dbg !3312
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3313

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %reset.addr, align 4, !dbg !3314
  %cmp1 = icmp eq i32 %1, 3, !dbg !3315
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3316

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !3317
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %2, i32 0, i32 36, !dbg !3319
  store i32 0, ptr %streamStage, align 4, !dbg !3320
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !3321
  %noForwardProgress = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 47, !dbg !3322
  store i32 0, ptr %noForwardProgress, align 4, !dbg !3323
  br label %if.end, !dbg !3324

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load i32, ptr %reset.addr, align 4, !dbg !3325
  %cmp2 = icmp eq i32 %4, 2, !dbg !3327
  br i1 %cmp2, label %if.then5, label %lor.lhs.false3, !dbg !3328

lor.lhs.false3:                                   ; preds = %if.end
  %5 = load i32, ptr %reset.addr, align 4, !dbg !3329
  %cmp4 = icmp eq i32 %5, 3, !dbg !3330
  br i1 %cmp4, label %if.then5, label %if.end10, !dbg !3331

if.then5:                                         ; preds = %lor.lhs.false3, %if.end
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !3332
  %streamStage6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 36, !dbg !3332
  %7 = load i32, ptr %streamStage6, align 4, !dbg !3332
  %cmp7 = icmp ne i32 %7, 0, !dbg !3332
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !3335

if.then8:                                         ; preds = %if.then5
  store i64 -60, ptr %retval, align 8, !dbg !3336
  br label %return, !dbg !3336

if.end9:                                          ; preds = %if.then5
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !3338
  call void @ZSTD_clearDict(ptr noundef %8) #7, !dbg !3339
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !3340
  call void @ZSTD_DCtx_resetParameters(ptr noundef %9) #7, !dbg !3341
  br label %if.end10, !dbg !3342

if.end10:                                         ; preds = %if.end9, %lor.lhs.false3
  store i64 0, ptr %retval, align 8, !dbg !3343
  br label %return, !dbg !3343

return:                                           ; preds = %if.end10, %if.then8
  %10 = load i64, ptr %retval, align 8, !dbg !3344
  ret i64 %10, !dbg !3344
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_initDStream(ptr noundef %zds) #0 align 16 !dbg !3345 {
entry:
  %zds.addr = alloca ptr, align 8
  store ptr %zds, ptr %zds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zds.addr, metadata !3347, metadata !DIExpression()), !dbg !3348
  %0 = load ptr, ptr %zds.addr, align 8, !dbg !3349
  %call = call i64 @ZSTD_initDStream_usingDDict(ptr noundef %0, ptr noundef null) #7, !dbg !3350
  ret i64 %call, !dbg !3351
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_initDStream_usingDDict(ptr noundef %dctx, ptr noundef %ddict) #0 align 16 !dbg !3352 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %ddict.addr = alloca ptr, align 8
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err_code3 = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3356, metadata !DIExpression()), !dbg !3362
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !3357, metadata !DIExpression()), !dbg !3363
  br label %do.body, !dbg !3364

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !3365
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !3358, metadata !DIExpression()), !dbg !3365
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !3365
  %call = call i64 @ZSTD_DCtx_reset(ptr noundef %0, i32 noundef 1) #7, !dbg !3365
  store i64 %call, ptr %err_code, align 8, !dbg !3365
  %1 = load i64, ptr %err_code, align 8, !dbg !3366
  %call1 = call i32 @ERR_isError(i64 noundef %1) #7, !dbg !3366
  %tobool = icmp ne i32 %call1, 0, !dbg !3366
  br i1 %tobool, label %if.then, label %if.end, !dbg !3365

if.then:                                          ; preds = %do.body
  %2 = load i64, ptr %err_code, align 8, !dbg !3368
  store i64 %2, ptr %retval, align 8, !dbg !3368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3368

if.end:                                           ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3364
  br label %cleanup, !dbg !3364

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !3364
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !3365

do.end:                                           ; preds = %cleanup.cont
  br label %do.body2, !dbg !3370

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code3) #8, !dbg !3371
  call void @llvm.dbg.declare(metadata ptr %err_code3, metadata !3360, metadata !DIExpression()), !dbg !3371
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !3371
  %4 = load ptr, ptr %ddict.addr, align 8, !dbg !3371
  %call4 = call i64 @ZSTD_DCtx_refDDict(ptr noundef %3, ptr noundef %4) #7, !dbg !3371
  store i64 %call4, ptr %err_code3, align 8, !dbg !3371
  %5 = load i64, ptr %err_code3, align 8, !dbg !3372
  %call5 = call i32 @ERR_isError(i64 noundef %5) #7, !dbg !3372
  %tobool6 = icmp ne i32 %call5, 0, !dbg !3372
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3371

if.then7:                                         ; preds = %do.body2
  %6 = load i64, ptr %err_code3, align 8, !dbg !3374
  store i64 %6, ptr %retval, align 8, !dbg !3374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !3374

if.end8:                                          ; preds = %do.body2
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3370
  br label %cleanup9, !dbg !3370

cleanup9:                                         ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code3) #8, !dbg !3370
  %cleanup.dest10 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest10, label %unreachable [
    i32 0, label %cleanup.cont11
    i32 1, label %return
  ]

cleanup.cont11:                                   ; preds = %cleanup9
  br label %do.end12, !dbg !3371

do.end12:                                         ; preds = %cleanup.cont11
  %7 = load ptr, ptr %dctx.addr, align 8, !dbg !3376
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %7, i32 0, i32 20, !dbg !3377
  %8 = load i32, ptr %format, align 8, !dbg !3377
  %call13 = call i64 @ZSTD_startingInputLength(i32 noundef %8) #7, !dbg !3378
  store i64 %call13, ptr %retval, align 8, !dbg !3379
  br label %return, !dbg !3379

return:                                           ; preds = %do.end12, %cleanup9, %cleanup
  %9 = load i64, ptr %retval, align 8, !dbg !3380
  ret i64 %9, !dbg !3380

unreachable:                                      ; preds = %cleanup9, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DCtx_refDDict(ptr noundef %dctx, ptr noundef %ddict) #0 align 16 !dbg !3381 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %ddict.addr = alloca ptr, align 8
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3383, metadata !DIExpression()), !dbg !3391
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !3384, metadata !DIExpression()), !dbg !3392
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !3393
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36, !dbg !3393
  %1 = load i32, ptr %streamStage, align 4, !dbg !3393
  %cmp = icmp ne i32 %1, 0, !dbg !3393
  br i1 %cmp, label %if.then, label %if.end, !dbg !3395

if.then:                                          ; preds = %entry
  store i64 -60, ptr %retval, align 8, !dbg !3396
  br label %return, !dbg !3396

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !3398
  call void @ZSTD_clearDict(ptr noundef %2) #7, !dbg !3399
  %3 = load ptr, ptr %ddict.addr, align 8, !dbg !3400
  %tobool = icmp ne ptr %3, null, !dbg !3400
  br i1 %tobool, label %if.then1, label %if.end23, !dbg !3401

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %ddict.addr, align 8, !dbg !3402
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !3403
  %ddict2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 30, !dbg !3404
  store ptr %4, ptr %ddict2, align 8, !dbg !3405
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !3406
  %dictUses = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 33, !dbg !3407
  store i32 -1, ptr %dictUses, align 8, !dbg !3408
  %7 = load ptr, ptr %dctx.addr, align 8, !dbg !3409
  %refMultipleDDicts = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %7, i32 0, i32 35, !dbg !3410
  %8 = load i32, ptr %refMultipleDDicts, align 8, !dbg !3410
  %cmp3 = icmp eq i32 %8, 1, !dbg !3411
  br i1 %cmp3, label %if.then4, label %if.end22, !dbg !3412

if.then4:                                         ; preds = %if.then1
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !3413
  %ddictSet = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %9, i32 0, i32 34, !dbg !3415
  %10 = load ptr, ptr %ddictSet, align 8, !dbg !3415
  %cmp5 = icmp eq ptr %10, null, !dbg !3416
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !3417

if.then6:                                         ; preds = %if.then4
  %11 = load ptr, ptr %dctx.addr, align 8, !dbg !3418
  %customMem = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 24, !dbg !3420
  %call = call ptr @ZSTD_createDDictHashSet(ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !3421
  %12 = load ptr, ptr %dctx.addr, align 8, !dbg !3422
  %ddictSet7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %12, i32 0, i32 34, !dbg !3423
  store ptr %call, ptr %ddictSet7, align 8, !dbg !3424
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !3425
  %ddictSet8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %13, i32 0, i32 34, !dbg !3427
  %14 = load ptr, ptr %ddictSet8, align 8, !dbg !3427
  %tobool9 = icmp ne ptr %14, null, !dbg !3425
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3428

if.then10:                                        ; preds = %if.then6
  br label %do.body, !dbg !3429

do.body:                                          ; preds = %if.then10
  store i64 -64, ptr %retval, align 8, !dbg !3431
  br label %return, !dbg !3431

do.end:                                           ; No predecessors!
  br label %if.end11, !dbg !3433

if.end11:                                         ; preds = %do.end, %if.then6
  br label %if.end12, !dbg !3434

if.end12:                                         ; preds = %if.end11, %if.then4
  br label %do.body13, !dbg !3435

do.body13:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !3436
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !3385, metadata !DIExpression()), !dbg !3436
  %15 = load ptr, ptr %dctx.addr, align 8, !dbg !3436
  %ddictSet14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %15, i32 0, i32 34, !dbg !3436
  %16 = load ptr, ptr %ddictSet14, align 8, !dbg !3436
  %17 = load ptr, ptr %ddict.addr, align 8, !dbg !3436
  %18 = load ptr, ptr %dctx.addr, align 8, !dbg !3436
  %customMem15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %18, i32 0, i32 24, !dbg !3436
  %call16 = call i64 @ZSTD_DDictHashSet_addDDict(ptr noundef %16, ptr noundef %17, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem15) #7, !dbg !3436
  store i64 %call16, ptr %err_code, align 8, !dbg !3436
  %19 = load i64, ptr %err_code, align 8, !dbg !3437
  %call17 = call i32 @ERR_isError(i64 noundef %19) #7, !dbg !3437
  %tobool18 = icmp ne i32 %call17, 0, !dbg !3437
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !3436

if.then19:                                        ; preds = %do.body13
  %20 = load i64, ptr %err_code, align 8, !dbg !3439
  store i64 %20, ptr %retval, align 8, !dbg !3439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3439

if.end20:                                         ; preds = %do.body13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3435
  br label %cleanup, !dbg !3435

cleanup:                                          ; preds = %if.end20, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !3435
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end21, !dbg !3436

do.end21:                                         ; preds = %cleanup.cont
  br label %if.end22, !dbg !3441

if.end22:                                         ; preds = %do.end21, %if.then1
  br label %if.end23, !dbg !3442

if.end23:                                         ; preds = %if.end22, %if.end
  store i64 0, ptr %retval, align 8, !dbg !3443
  br label %return, !dbg !3443

return:                                           ; preds = %if.end23, %cleanup, %do.body, %if.then
  %21 = load i64, ptr %retval, align 8, !dbg !3444
  ret i64 %21, !dbg !3444

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_resetDStream(ptr noundef %dctx) #0 align 16 !dbg !3445 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3447, metadata !DIExpression()), !dbg !3450
  br label %do.body, !dbg !3451

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !3452
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !3448, metadata !DIExpression()), !dbg !3452
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !3452
  %call = call i64 @ZSTD_DCtx_reset(ptr noundef %0, i32 noundef 1) #7, !dbg !3452
  store i64 %call, ptr %err_code, align 8, !dbg !3452
  %1 = load i64, ptr %err_code, align 8, !dbg !3453
  %call1 = call i32 @ERR_isError(i64 noundef %1) #7, !dbg !3453
  %tobool = icmp ne i32 %call1, 0, !dbg !3453
  br i1 %tobool, label %if.then, label %if.end, !dbg !3452

if.then:                                          ; preds = %do.body
  %2 = load i64, ptr %err_code, align 8, !dbg !3455
  store i64 %2, ptr %retval, align 8, !dbg !3455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3455

if.end:                                           ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3451
  br label %cleanup, !dbg !3451

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !3451
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !3452

do.end:                                           ; preds = %cleanup.cont
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !3457
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 20, !dbg !3458
  %4 = load i32, ptr %format, align 8, !dbg !3458
  %call2 = call i64 @ZSTD_startingInputLength(i32 noundef %4) #7, !dbg !3459
  store i64 %call2, ptr %retval, align 8, !dbg !3460
  br label %return, !dbg !3460

return:                                           ; preds = %do.end, %cleanup
  %5 = load i64, ptr %retval, align 8, !dbg !3461
  ret i64 %5, !dbg !3461

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ZSTD_createDDictHashSet(ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #0 align 16 !dbg !3462 {
entry:
  %retval = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %customMem, metadata !3466, metadata !DIExpression()), !dbg !3468
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !3469
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3467, metadata !DIExpression()), !dbg !3470
  %call = call ptr @ZSTD_customMalloc(i64 noundef 24, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !3471
  store ptr %call, ptr %ret, align 8, !dbg !3470
  %0 = load ptr, ptr %ret, align 8, !dbg !3472
  %tobool = icmp ne ptr %0, null, !dbg !3472
  br i1 %tobool, label %if.end, label %if.then, !dbg !3474

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3475

if.end:                                           ; preds = %entry
  %call1 = call ptr @ZSTD_customCalloc(i64 noundef 512, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !3476
  %1 = load ptr, ptr %ret, align 8, !dbg !3477
  %ddictPtrTable = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %1, i32 0, i32 0, !dbg !3478
  store ptr %call1, ptr %ddictPtrTable, align 8, !dbg !3479
  %2 = load ptr, ptr %ret, align 8, !dbg !3480
  %ddictPtrTable2 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %2, i32 0, i32 0, !dbg !3482
  %3 = load ptr, ptr %ddictPtrTable2, align 8, !dbg !3482
  %tobool3 = icmp ne ptr %3, null, !dbg !3480
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3483

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %ret, align 8, !dbg !3484
  call void @ZSTD_customFree(ptr noundef %4, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !3486
  store ptr null, ptr %retval, align 8, !dbg !3487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3487

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %ret, align 8, !dbg !3488
  %ddictPtrTableSize = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %5, i32 0, i32 1, !dbg !3489
  store i64 64, ptr %ddictPtrTableSize, align 8, !dbg !3490
  %6 = load ptr, ptr %ret, align 8, !dbg !3491
  %ddictPtrCount = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %6, i32 0, i32 2, !dbg !3492
  store i64 0, ptr %ddictPtrCount, align 8, !dbg !3493
  %7 = load ptr, ptr %ret, align 8, !dbg !3494
  store ptr %7, ptr %retval, align 8, !dbg !3495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3495

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !3496
  %8 = load ptr, ptr %retval, align 8, !dbg !3496
  ret ptr %8, !dbg !3496
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_DDictHashSet_addDDict(ptr noundef %hashSet, ptr noundef %ddict, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #0 align 16 !dbg !3497 {
entry:
  %retval = alloca i64, align 8
  %hashSet.addr = alloca ptr, align 8
  %ddict.addr = alloca ptr, align 8
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err_code6 = alloca i64, align 8
  store ptr %hashSet, ptr %hashSet.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hashSet.addr, metadata !3501, metadata !DIExpression()), !dbg !3510
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !3502, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.declare(metadata ptr %customMem, metadata !3503, metadata !DIExpression()), !dbg !3512
  %0 = load ptr, ptr %hashSet.addr, align 8, !dbg !3513
  %ddictPtrCount = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %0, i32 0, i32 2, !dbg !3514
  %1 = load i64, ptr %ddictPtrCount, align 8, !dbg !3514
  %mul = mul i64 %1, 4, !dbg !3515
  %2 = load ptr, ptr %hashSet.addr, align 8, !dbg !3516
  %ddictPtrTableSize = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %2, i32 0, i32 1, !dbg !3517
  %3 = load i64, ptr %ddictPtrTableSize, align 8, !dbg !3517
  %div = udiv i64 %mul, %3, !dbg !3518
  %mul1 = mul i64 %div, 3, !dbg !3519
  %cmp = icmp ne i64 %mul1, 0, !dbg !3520
  br i1 %cmp, label %if.then, label %if.end4, !dbg !3521

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3522

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !3523
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !3504, metadata !DIExpression()), !dbg !3523
  %4 = load ptr, ptr %hashSet.addr, align 8, !dbg !3523
  %call = call i64 @ZSTD_DDictHashSet_expand(ptr noundef %4, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !3523
  store i64 %call, ptr %err_code, align 8, !dbg !3523
  %5 = load i64, ptr %err_code, align 8, !dbg !3524
  %call2 = call i32 @ERR_isError(i64 noundef %5) #7, !dbg !3524
  %tobool = icmp ne i32 %call2, 0, !dbg !3524
  br i1 %tobool, label %if.then3, label %if.end, !dbg !3523

if.then3:                                         ; preds = %do.body
  %6 = load i64, ptr %err_code, align 8, !dbg !3526
  store i64 %6, ptr %retval, align 8, !dbg !3526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3526

if.end:                                           ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3522
  br label %cleanup, !dbg !3522

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !3522
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !3523

do.end:                                           ; preds = %cleanup.cont
  br label %if.end4, !dbg !3528

if.end4:                                          ; preds = %do.end, %entry
  br label %do.body5, !dbg !3529

do.body5:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code6) #8, !dbg !3530
  call void @llvm.dbg.declare(metadata ptr %err_code6, metadata !3508, metadata !DIExpression()), !dbg !3530
  %7 = load ptr, ptr %hashSet.addr, align 8, !dbg !3530
  %8 = load ptr, ptr %ddict.addr, align 8, !dbg !3530
  %call7 = call i64 @ZSTD_DDictHashSet_emplaceDDict(ptr noundef %7, ptr noundef %8) #7, !dbg !3530
  store i64 %call7, ptr %err_code6, align 8, !dbg !3530
  %9 = load i64, ptr %err_code6, align 8, !dbg !3531
  %call8 = call i32 @ERR_isError(i64 noundef %9) #7, !dbg !3531
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3531
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3530

if.then10:                                        ; preds = %do.body5
  %10 = load i64, ptr %err_code6, align 8, !dbg !3533
  store i64 %10, ptr %retval, align 8, !dbg !3533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup12, !dbg !3533

if.end11:                                         ; preds = %do.body5
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3529
  br label %cleanup12, !dbg !3529

cleanup12:                                        ; preds = %if.end11, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code6) #8, !dbg !3529
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %unreachable [
    i32 0, label %cleanup.cont14
    i32 1, label %return
  ]

cleanup.cont14:                                   ; preds = %cleanup12
  br label %do.end15, !dbg !3530

do.end15:                                         ; preds = %cleanup.cont14
  store i64 0, ptr %retval, align 8, !dbg !3535
  br label %return, !dbg !3535

return:                                           ; preds = %do.end15, %cleanup12, %cleanup
  %11 = load i64, ptr %retval, align 8, !dbg !3536
  ret i64 %11, !dbg !3536

unreachable:                                      ; preds = %cleanup12, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DCtx_setMaxWindowSize(ptr noundef %dctx, i64 noundef %maxWindowSize) #0 align 16 !dbg !3537 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %maxWindowSize.addr = alloca i64, align 8
  %bounds = alloca %struct.ZSTD_bounds, align 8
  %min = alloca i64, align 8
  %max = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3539, metadata !DIExpression()), !dbg !3551
  store i64 %maxWindowSize, ptr %maxWindowSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxWindowSize.addr, metadata !3540, metadata !DIExpression()), !dbg !3552
  call void @llvm.lifetime.start.p0(i64 16, ptr %bounds) #8, !dbg !3553
  call void @llvm.dbg.declare(metadata ptr %bounds, metadata !3541, metadata !DIExpression()), !dbg !3554
  %call = call { i64, i64 } @ZSTD_dParam_getBounds(i32 noundef 100) #7, !dbg !3555
  %0 = getelementptr inbounds { i64, i64 }, ptr %bounds, i32 0, i32 0, !dbg !3555
  %1 = extractvalue { i64, i64 } %call, 0, !dbg !3555
  store i64 %1, ptr %0, align 8, !dbg !3555
  %2 = getelementptr inbounds { i64, i64 }, ptr %bounds, i32 0, i32 1, !dbg !3555
  %3 = extractvalue { i64, i64 } %call, 1, !dbg !3555
  store i64 %3, ptr %2, align 8, !dbg !3555
  call void @llvm.lifetime.start.p0(i64 8, ptr %min) #8, !dbg !3556
  call void @llvm.dbg.declare(metadata ptr %min, metadata !3549, metadata !DIExpression()), !dbg !3557
  %lowerBound = getelementptr inbounds %struct.ZSTD_bounds, ptr %bounds, i32 0, i32 1, !dbg !3558
  %4 = load i32, ptr %lowerBound, align 8, !dbg !3558
  %sh_prom = zext i32 %4 to i64, !dbg !3559
  %shl = shl i64 1, %sh_prom, !dbg !3559
  store i64 %shl, ptr %min, align 8, !dbg !3557
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #8, !dbg !3560
  call void @llvm.dbg.declare(metadata ptr %max, metadata !3550, metadata !DIExpression()), !dbg !3561
  %upperBound = getelementptr inbounds %struct.ZSTD_bounds, ptr %bounds, i32 0, i32 2, !dbg !3562
  %5 = load i32, ptr %upperBound, align 4, !dbg !3562
  %sh_prom1 = zext i32 %5 to i64, !dbg !3563
  %shl2 = shl i64 1, %sh_prom1, !dbg !3563
  store i64 %shl2, ptr %max, align 8, !dbg !3561
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !3564
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 36, !dbg !3564
  %7 = load i32, ptr %streamStage, align 4, !dbg !3564
  %cmp = icmp ne i32 %7, 0, !dbg !3564
  br i1 %cmp, label %if.then, label %if.end, !dbg !3566

if.then:                                          ; preds = %entry
  store i64 -60, ptr %retval, align 8, !dbg !3567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3567

if.end:                                           ; preds = %entry
  %8 = load i64, ptr %maxWindowSize.addr, align 8, !dbg !3569
  %9 = load i64, ptr %min, align 8, !dbg !3569
  %cmp3 = icmp ult i64 %8, %9, !dbg !3569
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3571

if.then4:                                         ; preds = %if.end
  store i64 -42, ptr %retval, align 8, !dbg !3572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3572

if.end5:                                          ; preds = %if.end
  %10 = load i64, ptr %maxWindowSize.addr, align 8, !dbg !3574
  %11 = load i64, ptr %max, align 8, !dbg !3574
  %cmp6 = icmp ugt i64 %10, %11, !dbg !3574
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !3576

if.then7:                                         ; preds = %if.end5
  store i64 -42, ptr %retval, align 8, !dbg !3577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3577

if.end8:                                          ; preds = %if.end5
  %12 = load i64, ptr %maxWindowSize.addr, align 8, !dbg !3579
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !3580
  %maxWindowSize9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %13, i32 0, i32 40, !dbg !3581
  store i64 %12, ptr %maxWindowSize9, align 8, !dbg !3582
  store i64 0, ptr %retval, align 8, !dbg !3583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3583

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #8, !dbg !3584
  call void @llvm.lifetime.end.p0(i64 8, ptr %min) #8, !dbg !3584
  call void @llvm.lifetime.end.p0(i64 16, ptr %bounds) #8, !dbg !3584
  %14 = load i64, ptr %retval, align 8, !dbg !3584
  ret i64 %14, !dbg !3584
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local { i64, i64 } @ZSTD_dParam_getBounds(i32 noundef %dParam) #0 align 16 !dbg !3585 {
entry:
  %retval = alloca %struct.ZSTD_bounds, align 8
  %dParam.addr = alloca i32, align 4
  store i32 %dParam, ptr %dParam.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dParam.addr, metadata !3590, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !3591, metadata !DIExpression()), !dbg !3593
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false), !dbg !3593
  %0 = load i32, ptr %dParam.addr, align 4, !dbg !3594
  switch i32 %0, label %sw.default [
    i32 100, label %sw.bb
    i32 1000, label %sw.bb1
    i32 1001, label %sw.bb4
    i32 1002, label %sw.bb7
    i32 1003, label %sw.bb10
  ], !dbg !3595

sw.bb:                                            ; preds = %entry
  %lowerBound = getelementptr inbounds %struct.ZSTD_bounds, ptr %retval, i32 0, i32 1, !dbg !3596
  store i32 10, ptr %lowerBound, align 8, !dbg !3598
  %upperBound = getelementptr inbounds %struct.ZSTD_bounds, ptr %retval, i32 0, i32 2, !dbg !3599
  store i32 31, ptr %upperBound, align 4, !dbg !3600
  br label %return, !dbg !3601

sw.bb1:                                           ; preds = %entry
  %lowerBound2 = getelementptr inbounds %struct.ZSTD_bounds, ptr %retval, i32 0, i32 1, !dbg !3602
  store i32 0, ptr %lowerBound2, align 8, !dbg !3603
  %upperBound3 = getelementptr inbounds %struct.ZSTD_bounds, ptr %retval, i32 0, i32 2, !dbg !3604
  store i32 1, ptr %upperBound3, align 4, !dbg !3605
  br label %return, !dbg !3606

sw.bb4:                                           ; preds = %entry
  %lowerBound5 = getelementptr inbounds %struct.ZSTD_bounds, ptr %retval, i32 0, i32 1, !dbg !3607
  store i32 0, ptr %lowerBound5, align 8, !dbg !3608
  %upperBound6 = getelementptr inbounds %struct.ZSTD_bounds, ptr %retval, i32 0, i32 2, !dbg !3609
  store i32 1, ptr %upperBound6, align 4, !dbg !3610
  br label %return, !dbg !3611

sw.bb7:                                           ; preds = %entry
  %lowerBound8 = getelementptr inbounds %struct.ZSTD_bounds, ptr %retval, i32 0, i32 1, !dbg !3612
  store i32 0, ptr %lowerBound8, align 8, !dbg !3613
  %upperBound9 = getelementptr inbounds %struct.ZSTD_bounds, ptr %retval, i32 0, i32 2, !dbg !3614
  store i32 1, ptr %upperBound9, align 4, !dbg !3615
  br label %return, !dbg !3616

sw.bb10:                                          ; preds = %entry
  %lowerBound11 = getelementptr inbounds %struct.ZSTD_bounds, ptr %retval, i32 0, i32 1, !dbg !3617
  store i32 0, ptr %lowerBound11, align 8, !dbg !3618
  %upperBound12 = getelementptr inbounds %struct.ZSTD_bounds, ptr %retval, i32 0, i32 2, !dbg !3619
  store i32 1, ptr %upperBound12, align 4, !dbg !3620
  br label %return, !dbg !3621

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !3622

sw.epilog:                                        ; preds = %sw.default
  %error = getelementptr inbounds %struct.ZSTD_bounds, ptr %retval, i32 0, i32 0, !dbg !3623
  store i64 -40, ptr %error, align 8, !dbg !3624
  br label %return, !dbg !3625

return:                                           ; preds = %sw.epilog, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %1 = load { i64, i64 }, ptr %retval, align 8, !dbg !3626
  ret { i64, i64 } %1, !dbg !3626
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DCtx_setFormat(ptr noundef %dctx, i32 noundef %format) #0 align 16 !dbg !3627 {
entry:
  %dctx.addr = alloca ptr, align 8
  %format.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3631, metadata !DIExpression()), !dbg !3633
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !3632, metadata !DIExpression()), !dbg !3634
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !3635
  %1 = load i32, ptr %format.addr, align 4, !dbg !3636
  %call = call i64 @ZSTD_DCtx_setParameter(ptr noundef %0, i32 noundef 1000, i32 noundef %1) #7, !dbg !3637
  ret i64 %call, !dbg !3638
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DCtx_setParameter(ptr noundef %dctx, i32 noundef %dParam, i32 noundef %value) #0 align 16 !dbg !3639 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dParam.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3643, metadata !DIExpression()), !dbg !3646
  store i32 %dParam, ptr %dParam.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dParam.addr, metadata !3644, metadata !DIExpression()), !dbg !3647
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !3645, metadata !DIExpression()), !dbg !3648
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !3649
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36, !dbg !3649
  %1 = load i32, ptr %streamStage, align 4, !dbg !3649
  %cmp = icmp ne i32 %1, 0, !dbg !3649
  br i1 %cmp, label %if.then, label %if.end, !dbg !3651

if.then:                                          ; preds = %entry
  store i64 -60, ptr %retval, align 8, !dbg !3652
  br label %do.end30, !dbg !3652

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %dParam.addr, align 4, !dbg !3654
  switch i32 %2, label %sw.default [
    i32 100, label %sw.bb
    i32 1000, label %sw.bb6
    i32 1001, label %sw.bb11
    i32 1002, label %sw.bb16
    i32 1003, label %sw.bb21
  ], !dbg !3655

sw.bb:                                            ; preds = %if.end
  %3 = load i32, ptr %value.addr, align 4, !dbg !3656
  %cmp1 = icmp eq i32 %3, 0, !dbg !3659
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3660

if.then2:                                         ; preds = %sw.bb
  store i32 27, ptr %value.addr, align 4, !dbg !3661
  br label %if.end3, !dbg !3662

if.end3:                                          ; preds = %if.then2, %sw.bb
  %4 = load i32, ptr %value.addr, align 4, !dbg !3663
  %call = call i32 @ZSTD_dParam_withinBounds(i32 noundef 100, i32 noundef %4) #7, !dbg !3663
  %tobool = icmp ne i32 %call, 0, !dbg !3663
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !3666

if.then4:                                         ; preds = %if.end3
  store i64 -42, ptr %retval, align 8, !dbg !3667
  br label %do.end30, !dbg !3667

if.end5:                                          ; preds = %if.end3
  %5 = load i32, ptr %value.addr, align 4, !dbg !3669
  %sh_prom = zext i32 %5 to i64, !dbg !3670
  %shl = shl i64 1, %sh_prom, !dbg !3670
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !3671
  %maxWindowSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 40, !dbg !3672
  store i64 %shl, ptr %maxWindowSize, align 8, !dbg !3673
  store i64 0, ptr %retval, align 8, !dbg !3674
  br label %do.end30, !dbg !3674

sw.bb6:                                           ; preds = %if.end
  %7 = load i32, ptr %value.addr, align 4, !dbg !3675
  %call7 = call i32 @ZSTD_dParam_withinBounds(i32 noundef 1000, i32 noundef %7) #7, !dbg !3675
  %tobool8 = icmp ne i32 %call7, 0, !dbg !3675
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3678

if.then9:                                         ; preds = %sw.bb6
  store i64 -42, ptr %retval, align 8, !dbg !3679
  br label %do.end30, !dbg !3679

if.end10:                                         ; preds = %sw.bb6
  %8 = load i32, ptr %value.addr, align 4, !dbg !3681
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !3682
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %9, i32 0, i32 20, !dbg !3683
  store i32 %8, ptr %format, align 8, !dbg !3684
  store i64 0, ptr %retval, align 8, !dbg !3685
  br label %do.end30, !dbg !3685

sw.bb11:                                          ; preds = %if.end
  %10 = load i32, ptr %value.addr, align 4, !dbg !3686
  %call12 = call i32 @ZSTD_dParam_withinBounds(i32 noundef 1001, i32 noundef %10) #7, !dbg !3686
  %tobool13 = icmp ne i32 %call12, 0, !dbg !3686
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !3689

if.then14:                                        ; preds = %sw.bb11
  store i64 -42, ptr %retval, align 8, !dbg !3690
  br label %do.end30, !dbg !3690

if.end15:                                         ; preds = %sw.bb11
  %11 = load i32, ptr %value.addr, align 4, !dbg !3692
  %12 = load ptr, ptr %dctx.addr, align 8, !dbg !3693
  %outBufferMode = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %12, i32 0, i32 48, !dbg !3694
  store i32 %11, ptr %outBufferMode, align 8, !dbg !3695
  store i64 0, ptr %retval, align 8, !dbg !3696
  br label %do.end30, !dbg !3696

sw.bb16:                                          ; preds = %if.end
  %13 = load i32, ptr %value.addr, align 4, !dbg !3697
  %call17 = call i32 @ZSTD_dParam_withinBounds(i32 noundef 1002, i32 noundef %13) #7, !dbg !3697
  %tobool18 = icmp ne i32 %call17, 0, !dbg !3697
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !3700

if.then19:                                        ; preds = %sw.bb16
  store i64 -42, ptr %retval, align 8, !dbg !3701
  br label %do.end30, !dbg !3701

if.end20:                                         ; preds = %sw.bb16
  %14 = load i32, ptr %value.addr, align 4, !dbg !3703
  %15 = load ptr, ptr %dctx.addr, align 8, !dbg !3704
  %forceIgnoreChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %15, i32 0, i32 21, !dbg !3705
  store i32 %14, ptr %forceIgnoreChecksum, align 4, !dbg !3706
  store i64 0, ptr %retval, align 8, !dbg !3707
  br label %do.end30, !dbg !3707

sw.bb21:                                          ; preds = %if.end
  %16 = load i32, ptr %value.addr, align 4, !dbg !3708
  %call22 = call i32 @ZSTD_dParam_withinBounds(i32 noundef 1003, i32 noundef %16) #7, !dbg !3708
  %tobool23 = icmp ne i32 %call22, 0, !dbg !3708
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !3711

if.then24:                                        ; preds = %sw.bb21
  store i64 -42, ptr %retval, align 8, !dbg !3712
  br label %do.end30, !dbg !3712

if.end25:                                         ; preds = %sw.bb21
  %17 = load ptr, ptr %dctx.addr, align 8, !dbg !3714
  %staticSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %17, i32 0, i32 27, !dbg !3716
  %18 = load i64, ptr %staticSize, align 8, !dbg !3716
  %cmp26 = icmp ne i64 %18, 0, !dbg !3717
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !3718

if.then27:                                        ; preds = %if.end25
  br label %do.body, !dbg !3719

do.body:                                          ; preds = %if.then27
  store i64 -40, ptr %retval, align 8, !dbg !3721
  br label %do.end30, !dbg !3721

do.end:                                           ; No predecessors!
  br label %if.end28, !dbg !3723

if.end28:                                         ; preds = %do.end, %if.end25
  %19 = load i32, ptr %value.addr, align 4, !dbg !3724
  %20 = load ptr, ptr %dctx.addr, align 8, !dbg !3725
  %refMultipleDDicts = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %20, i32 0, i32 35, !dbg !3726
  store i32 %19, ptr %refMultipleDDicts, align 8, !dbg !3727
  store i64 0, ptr %retval, align 8, !dbg !3728
  br label %do.end30, !dbg !3728

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !3729

sw.epilog:                                        ; preds = %sw.default
  br label %do.body29, !dbg !3730

do.body29:                                        ; preds = %sw.epilog
  store i64 -40, ptr %retval, align 8, !dbg !3731
  br label %do.end30, !dbg !3731

do.end30:                                         ; preds = %if.then, %if.then4, %if.end5, %if.then9, %if.end10, %if.then14, %if.end15, %if.then19, %if.end20, %if.then24, %do.body, %if.end28, %do.body29
  %21 = load i64, ptr %retval, align 8, !dbg !3733
  ret i64 %21, !dbg !3733
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_DCtx_getParameter(ptr noundef %dctx, i32 noundef %param, ptr noundef %value) #0 align 16 !dbg !3734 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %param.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3739, metadata !DIExpression()), !dbg !3742
  store i32 %param, ptr %param.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !3740, metadata !DIExpression()), !dbg !3743
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !3741, metadata !DIExpression()), !dbg !3744
  %0 = load i32, ptr %param.addr, align 4, !dbg !3745
  switch i32 %0, label %sw.default [
    i32 100, label %sw.bb
    i32 1000, label %sw.bb1
    i32 1001, label %sw.bb2
    i32 1002, label %sw.bb3
    i32 1003, label %sw.bb4
  ], !dbg !3746

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !3747
  %maxWindowSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 40, !dbg !3749
  %2 = load i64, ptr %maxWindowSize, align 8, !dbg !3749
  %conv = trunc i64 %2 to i32, !dbg !3750
  %call = call i32 @ZSTD_highbit32(i32 noundef %conv) #7, !dbg !3751
  %3 = load ptr, ptr %value.addr, align 8, !dbg !3752
  store i32 %call, ptr %3, align 4, !dbg !3753
  store i64 0, ptr %retval, align 8, !dbg !3754
  br label %do.end, !dbg !3754

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !3755
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 20, !dbg !3756
  %5 = load i32, ptr %format, align 8, !dbg !3756
  %6 = load ptr, ptr %value.addr, align 8, !dbg !3757
  store i32 %5, ptr %6, align 4, !dbg !3758
  store i64 0, ptr %retval, align 8, !dbg !3759
  br label %do.end, !dbg !3759

sw.bb2:                                           ; preds = %entry
  %7 = load ptr, ptr %dctx.addr, align 8, !dbg !3760
  %outBufferMode = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %7, i32 0, i32 48, !dbg !3761
  %8 = load i32, ptr %outBufferMode, align 8, !dbg !3761
  %9 = load ptr, ptr %value.addr, align 8, !dbg !3762
  store i32 %8, ptr %9, align 4, !dbg !3763
  store i64 0, ptr %retval, align 8, !dbg !3764
  br label %do.end, !dbg !3764

sw.bb3:                                           ; preds = %entry
  %10 = load ptr, ptr %dctx.addr, align 8, !dbg !3765
  %forceIgnoreChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %10, i32 0, i32 21, !dbg !3766
  %11 = load i32, ptr %forceIgnoreChecksum, align 4, !dbg !3766
  %12 = load ptr, ptr %value.addr, align 8, !dbg !3767
  store i32 %11, ptr %12, align 4, !dbg !3768
  store i64 0, ptr %retval, align 8, !dbg !3769
  br label %do.end, !dbg !3769

sw.bb4:                                           ; preds = %entry
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !3770
  %refMultipleDDicts = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %13, i32 0, i32 35, !dbg !3771
  %14 = load i32, ptr %refMultipleDDicts, align 8, !dbg !3771
  %15 = load ptr, ptr %value.addr, align 8, !dbg !3772
  store i32 %14, ptr %15, align 4, !dbg !3773
  store i64 0, ptr %retval, align 8, !dbg !3774
  br label %do.end, !dbg !3774

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !3775

sw.epilog:                                        ; preds = %sw.default
  br label %do.body, !dbg !3776

do.body:                                          ; preds = %sw.epilog
  store i64 -40, ptr %retval, align 8, !dbg !3777
  br label %do.end, !dbg !3777

do.end:                                           ; preds = %sw.bb, %sw.bb1, %sw.bb2, %sw.bb3, %sw.bb4, %do.body
  %16 = load i64, ptr %retval, align 8, !dbg !3779
  ret i64 %16, !dbg !3779
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ZSTD_highbit32(i32 noundef %val) #5 align 16 !dbg !3780 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3784, metadata !DIExpression()), !dbg !3785
  %0 = load i32, ptr %val.addr, align 4, !dbg !3786
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !dbg !3788
  %xor = xor i32 %1, 31, !dbg !3789
  ret i32 %xor, !dbg !3790
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ZSTD_dParam_withinBounds(i32 noundef %dParam, i32 noundef %value) #0 align 16 !dbg !3791 {
entry:
  %retval = alloca i32, align 4
  %dParam.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %bounds = alloca %struct.ZSTD_bounds, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %dParam, ptr %dParam.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dParam.addr, metadata !3795, metadata !DIExpression()), !dbg !3798
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !3796, metadata !DIExpression()), !dbg !3799
  call void @llvm.lifetime.start.p0(i64 16, ptr %bounds) #8, !dbg !3800
  call void @llvm.dbg.declare(metadata ptr %bounds, metadata !3797, metadata !DIExpression()), !dbg !3801
  %0 = load i32, ptr %dParam.addr, align 4, !dbg !3802
  %call = call { i64, i64 } @ZSTD_dParam_getBounds(i32 noundef %0) #7, !dbg !3803
  %1 = getelementptr inbounds { i64, i64 }, ptr %bounds, i32 0, i32 0, !dbg !3803
  %2 = extractvalue { i64, i64 } %call, 0, !dbg !3803
  store i64 %2, ptr %1, align 8, !dbg !3803
  %3 = getelementptr inbounds { i64, i64 }, ptr %bounds, i32 0, i32 1, !dbg !3803
  %4 = extractvalue { i64, i64 } %call, 1, !dbg !3803
  store i64 %4, ptr %3, align 8, !dbg !3803
  %error = getelementptr inbounds %struct.ZSTD_bounds, ptr %bounds, i32 0, i32 0, !dbg !3804
  %5 = load i64, ptr %error, align 8, !dbg !3804
  %call1 = call i32 @ERR_isError(i64 noundef %5) #7, !dbg !3806
  %tobool = icmp ne i32 %call1, 0, !dbg !3806
  br i1 %tobool, label %if.then, label %if.end, !dbg !3807

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3808

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %value.addr, align 4, !dbg !3809
  %lowerBound = getelementptr inbounds %struct.ZSTD_bounds, ptr %bounds, i32 0, i32 1, !dbg !3811
  %7 = load i32, ptr %lowerBound, align 8, !dbg !3811
  %cmp = icmp slt i32 %6, %7, !dbg !3812
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3813

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3814
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3814

if.end3:                                          ; preds = %if.end
  %8 = load i32, ptr %value.addr, align 4, !dbg !3815
  %upperBound = getelementptr inbounds %struct.ZSTD_bounds, ptr %bounds, i32 0, i32 2, !dbg !3817
  %9 = load i32, ptr %upperBound, align 4, !dbg !3817
  %cmp4 = icmp sgt i32 %8, %9, !dbg !3818
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3819

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !3820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3820

if.end6:                                          ; preds = %if.end3
  store i32 1, ptr %retval, align 4, !dbg !3821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3821

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %bounds) #8, !dbg !3822
  %10 = load i32, ptr %retval, align 4, !dbg !3822
  ret i32 %10, !dbg !3822
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_DCtx_resetParameters(ptr noundef %dctx) #0 align 16 !dbg !3823 {
entry:
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3825, metadata !DIExpression()), !dbg !3826
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !3827
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20, !dbg !3828
  store i32 0, ptr %format, align 8, !dbg !3829
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !3830
  %maxWindowSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 40, !dbg !3831
  store i64 134217729, ptr %maxWindowSize, align 8, !dbg !3832
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !3833
  %outBufferMode = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %2, i32 0, i32 48, !dbg !3834
  store i32 0, ptr %outBufferMode, align 8, !dbg !3835
  %3 = load ptr, ptr %dctx.addr, align 8, !dbg !3836
  %forceIgnoreChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 21, !dbg !3837
  store i32 0, ptr %forceIgnoreChecksum, align 4, !dbg !3838
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !3839
  %refMultipleDDicts = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 35, !dbg !3840
  store i32 0, ptr %refMultipleDDicts, align 8, !dbg !3841
  ret void, !dbg !3842
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_sizeof_DStream(ptr noundef %dctx) #0 align 16 !dbg !3843 {
entry:
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !3849, metadata !DIExpression()), !dbg !3850
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !3851
  %call = call i64 @ZSTD_sizeof_DCtx(ptr noundef %0) #7, !dbg !3852
  ret i64 %call, !dbg !3853
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decodingBufferSize_min(i64 noundef %windowSize, i64 noundef %frameContentSize) #0 align 16 !dbg !3854 {
entry:
  %retval = alloca i64, align 8
  %windowSize.addr = alloca i64, align 8
  %frameContentSize.addr = alloca i64, align 8
  %blockSize = alloca i64, align 8
  %neededRBSize = alloca i64, align 8
  %neededSize = alloca i64, align 8
  %minRBSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %windowSize, ptr %windowSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %windowSize.addr, metadata !3858, metadata !DIExpression()), !dbg !3864
  store i64 %frameContentSize, ptr %frameContentSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frameContentSize.addr, metadata !3859, metadata !DIExpression()), !dbg !3865
  call void @llvm.lifetime.start.p0(i64 8, ptr %blockSize) #8, !dbg !3866
  call void @llvm.dbg.declare(metadata ptr %blockSize, metadata !3860, metadata !DIExpression()), !dbg !3867
  %0 = load i64, ptr %windowSize.addr, align 8, !dbg !3868
  %cmp = icmp ult i64 %0, 131072, !dbg !3868
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3868

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %windowSize.addr, align 8, !dbg !3868
  br label %cond.end, !dbg !3868

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3868

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 131072, %cond.false ], !dbg !3868
  store i64 %cond, ptr %blockSize, align 8, !dbg !3867
  call void @llvm.lifetime.start.p0(i64 8, ptr %neededRBSize) #8, !dbg !3869
  call void @llvm.dbg.declare(metadata ptr %neededRBSize, metadata !3861, metadata !DIExpression()), !dbg !3870
  %2 = load i64, ptr %windowSize.addr, align 8, !dbg !3871
  %3 = load i64, ptr %blockSize, align 8, !dbg !3872
  %add = add i64 %2, %3, !dbg !3873
  %add1 = add i64 %add, 131072, !dbg !3874
  %add2 = add i64 %add1, 64, !dbg !3875
  store i64 %add2, ptr %neededRBSize, align 8, !dbg !3870
  call void @llvm.lifetime.start.p0(i64 8, ptr %neededSize) #8, !dbg !3876
  call void @llvm.dbg.declare(metadata ptr %neededSize, metadata !3862, metadata !DIExpression()), !dbg !3877
  %4 = load i64, ptr %frameContentSize.addr, align 8, !dbg !3878
  %5 = load i64, ptr %neededRBSize, align 8, !dbg !3878
  %cmp3 = icmp ult i64 %4, %5, !dbg !3878
  br i1 %cmp3, label %cond.true4, label %cond.false5, !dbg !3878

cond.true4:                                       ; preds = %cond.end
  %6 = load i64, ptr %frameContentSize.addr, align 8, !dbg !3878
  br label %cond.end6, !dbg !3878

cond.false5:                                      ; preds = %cond.end
  %7 = load i64, ptr %neededRBSize, align 8, !dbg !3878
  br label %cond.end6, !dbg !3878

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i64 [ %6, %cond.true4 ], [ %7, %cond.false5 ], !dbg !3878
  store i64 %cond7, ptr %neededSize, align 8, !dbg !3877
  call void @llvm.lifetime.start.p0(i64 8, ptr %minRBSize) #8, !dbg !3879
  call void @llvm.dbg.declare(metadata ptr %minRBSize, metadata !3863, metadata !DIExpression()), !dbg !3880
  %8 = load i64, ptr %neededSize, align 8, !dbg !3881
  store i64 %8, ptr %minRBSize, align 8, !dbg !3880
  %9 = load i64, ptr %minRBSize, align 8, !dbg !3882
  %10 = load i64, ptr %neededSize, align 8, !dbg !3882
  %cmp8 = icmp ne i64 %9, %10, !dbg !3882
  br i1 %cmp8, label %if.then, label %if.end, !dbg !3884

if.then:                                          ; preds = %cond.end6
  store i64 -16, ptr %retval, align 8, !dbg !3885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3885

if.end:                                           ; preds = %cond.end6
  %11 = load i64, ptr %minRBSize, align 8, !dbg !3887
  store i64 %11, ptr %retval, align 8, !dbg !3888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3888

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %minRBSize) #8, !dbg !3889
  call void @llvm.lifetime.end.p0(i64 8, ptr %neededSize) #8, !dbg !3889
  call void @llvm.lifetime.end.p0(i64 8, ptr %neededRBSize) #8, !dbg !3889
  call void @llvm.lifetime.end.p0(i64 8, ptr %blockSize) #8, !dbg !3889
  %12 = load i64, ptr %retval, align 8, !dbg !3889
  ret i64 %12, !dbg !3889
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_estimateDStreamSize(i64 noundef %windowSize) #0 align 16 !dbg !3890 {
entry:
  %windowSize.addr = alloca i64, align 8
  %blockSize = alloca i64, align 8
  %inBuffSize = alloca i64, align 8
  %outBuffSize = alloca i64, align 8
  store i64 %windowSize, ptr %windowSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %windowSize.addr, metadata !3894, metadata !DIExpression()), !dbg !3898
  call void @llvm.lifetime.start.p0(i64 8, ptr %blockSize) #8, !dbg !3899
  call void @llvm.dbg.declare(metadata ptr %blockSize, metadata !3895, metadata !DIExpression()), !dbg !3900
  %0 = load i64, ptr %windowSize.addr, align 8, !dbg !3901
  %cmp = icmp ult i64 %0, 131072, !dbg !3901
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3901

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %windowSize.addr, align 8, !dbg !3901
  br label %cond.end, !dbg !3901

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3901

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 131072, %cond.false ], !dbg !3901
  store i64 %cond, ptr %blockSize, align 8, !dbg !3900
  call void @llvm.lifetime.start.p0(i64 8, ptr %inBuffSize) #8, !dbg !3902
  call void @llvm.dbg.declare(metadata ptr %inBuffSize, metadata !3896, metadata !DIExpression()), !dbg !3903
  %2 = load i64, ptr %blockSize, align 8, !dbg !3904
  store i64 %2, ptr %inBuffSize, align 8, !dbg !3903
  call void @llvm.lifetime.start.p0(i64 8, ptr %outBuffSize) #8, !dbg !3905
  call void @llvm.dbg.declare(metadata ptr %outBuffSize, metadata !3897, metadata !DIExpression()), !dbg !3906
  %3 = load i64, ptr %windowSize.addr, align 8, !dbg !3907
  %call = call i64 @ZSTD_decodingBufferSize_min(i64 noundef %3, i64 noundef -1) #7, !dbg !3908
  store i64 %call, ptr %outBuffSize, align 8, !dbg !3906
  %call1 = call i64 @ZSTD_estimateDCtxSize() #7, !dbg !3909
  %4 = load i64, ptr %inBuffSize, align 8, !dbg !3910
  %add = add i64 %call1, %4, !dbg !3911
  %5 = load i64, ptr %outBuffSize, align 8, !dbg !3912
  %add2 = add i64 %add, %5, !dbg !3913
  call void @llvm.lifetime.end.p0(i64 8, ptr %outBuffSize) #8, !dbg !3914
  call void @llvm.lifetime.end.p0(i64 8, ptr %inBuffSize) #8, !dbg !3914
  call void @llvm.lifetime.end.p0(i64 8, ptr %blockSize) #8, !dbg !3914
  ret i64 %add2, !dbg !3915
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_estimateDStreamSize_fromFrame(ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !3916 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %windowSizeMax = alloca i32, align 4
  %zfh = alloca %struct.ZSTD_frameHeader, align 8
  %err = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !3918, metadata !DIExpression()), !dbg !3923
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !3919, metadata !DIExpression()), !dbg !3924
  call void @llvm.lifetime.start.p0(i64 4, ptr %windowSizeMax) #8, !dbg !3925
  call void @llvm.dbg.declare(metadata ptr %windowSizeMax, metadata !3920, metadata !DIExpression()), !dbg !3926
  store i32 -2147483648, ptr %windowSizeMax, align 4, !dbg !3926
  call void @llvm.lifetime.start.p0(i64 40, ptr %zfh) #8, !dbg !3927
  call void @llvm.dbg.declare(metadata ptr %zfh, metadata !3921, metadata !DIExpression()), !dbg !3928
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #8, !dbg !3929
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3922, metadata !DIExpression()), !dbg !3930
  %0 = load ptr, ptr %src.addr, align 8, !dbg !3931
  %1 = load i64, ptr %srcSize.addr, align 8, !dbg !3932
  %call = call i64 @ZSTD_getFrameHeader(ptr noundef %zfh, ptr noundef %0, i64 noundef %1) #7, !dbg !3933
  store i64 %call, ptr %err, align 8, !dbg !3930
  %2 = load i64, ptr %err, align 8, !dbg !3934
  %call1 = call i32 @ERR_isError(i64 noundef %2) #7, !dbg !3936
  %tobool = icmp ne i32 %call1, 0, !dbg !3936
  br i1 %tobool, label %if.then, label %if.end, !dbg !3937

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %err, align 8, !dbg !3938
  store i64 %3, ptr %retval, align 8, !dbg !3939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3939

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %err, align 8, !dbg !3940
  %cmp = icmp ugt i64 %4, 0, !dbg !3940
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3942

if.then2:                                         ; preds = %if.end
  store i64 -72, ptr %retval, align 8, !dbg !3943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3943

if.end3:                                          ; preds = %if.end
  %windowSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 1, !dbg !3945
  %5 = load i64, ptr %windowSize, align 8, !dbg !3945
  %cmp4 = icmp ugt i64 %5, 2147483648, !dbg !3945
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3947

if.then5:                                         ; preds = %if.end3
  store i64 -16, ptr %retval, align 8, !dbg !3948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3948

if.end6:                                          ; preds = %if.end3
  %windowSize7 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 1, !dbg !3950
  %6 = load i64, ptr %windowSize7, align 8, !dbg !3950
  %call8 = call i64 @ZSTD_estimateDStreamSize(i64 noundef %6) #7, !dbg !3951
  store i64 %call8, ptr %retval, align 8, !dbg !3952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3952

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #8, !dbg !3953
  call void @llvm.lifetime.end.p0(i64 40, ptr %zfh) #8, !dbg !3953
  call void @llvm.lifetime.end.p0(i64 4, ptr %windowSizeMax) #8, !dbg !3953
  %7 = load i64, ptr %retval, align 8, !dbg !3953
  ret i64 %7, !dbg !3953
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decompressStream(ptr noundef %zds, ptr noundef %output, ptr noundef %input) #0 align 16 !dbg !3954 {
entry:
  %retval = alloca i64, align 8
  %zds.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %src = alloca ptr, align 8
  %istart = alloca ptr, align 8
  %iend = alloca ptr, align 8
  %ip = alloca ptr, align 8
  %dst = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %op = alloca ptr, align 8
  %someMoreWork = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %err_code = alloca i64, align 8
  %hSize = alloca i64, align 8
  %toLoad = alloca i64, align 8
  %remainingInput = alloca i64, align 8
  %cSize = alloca i64, align 8
  %decompressedSize = alloca i64, align 8
  %err_code166 = alloca i64, align 8
  %err_code191 = alloca i64, align 8
  %neededInBuffSize = alloca i64, align 8
  %neededOutBuffSize = alloca i64, align 8
  %tooSmall = alloca i32, align 4
  %tooLarge = alloca i32, align 4
  %bufferSize = alloca i64, align 8
  %neededInSize = alloca i64, align 8
  %err_code311 = alloca i64, align 8
  %neededInSize333 = alloca i64, align 8
  %toLoad335 = alloca i64, align 8
  %isSkipFrame = alloca i32, align 4
  %loadedSize = alloca i64, align 8
  %err_code378 = alloca i64, align 8
  %toFlushSize = alloca i64, align 8
  %flushedSize = alloca i64, align 8
  %nextSrcSizeHint = alloca i64, align 8
  store ptr %zds, ptr %zds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zds.addr, metadata !3966, metadata !DIExpression()), !dbg !4028
  store ptr %output, ptr %output.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !3967, metadata !DIExpression()), !dbg !4029
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !3968, metadata !DIExpression()), !dbg !4030
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #8, !dbg !4031
  call void @llvm.dbg.declare(metadata ptr %src, metadata !3969, metadata !DIExpression()), !dbg !4032
  %0 = load ptr, ptr %input.addr, align 8, !dbg !4033
  %src1 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %0, i32 0, i32 0, !dbg !4034
  %1 = load ptr, ptr %src1, align 8, !dbg !4034
  store ptr %1, ptr %src, align 8, !dbg !4032
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart) #8, !dbg !4035
  call void @llvm.dbg.declare(metadata ptr %istart, metadata !3970, metadata !DIExpression()), !dbg !4036
  %2 = load ptr, ptr %input.addr, align 8, !dbg !4037
  %pos = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i32 0, i32 2, !dbg !4038
  %3 = load i64, ptr %pos, align 8, !dbg !4038
  %cmp = icmp ne i64 %3, 0, !dbg !4039
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4037

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %src, align 8, !dbg !4040
  %5 = load ptr, ptr %input.addr, align 8, !dbg !4041
  %pos2 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %5, i32 0, i32 2, !dbg !4042
  %6 = load i64, ptr %pos2, align 8, !dbg !4042
  %add.ptr = getelementptr i8, ptr %4, i64 %6, !dbg !4043
  br label %cond.end, !dbg !4037

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %src, align 8, !dbg !4044
  br label %cond.end, !dbg !4037

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %7, %cond.false ], !dbg !4037
  store ptr %cond, ptr %istart, align 8, !dbg !4036
  call void @llvm.lifetime.start.p0(i64 8, ptr %iend) #8, !dbg !4045
  call void @llvm.dbg.declare(metadata ptr %iend, metadata !3971, metadata !DIExpression()), !dbg !4046
  %8 = load ptr, ptr %input.addr, align 8, !dbg !4047
  %size = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %8, i32 0, i32 1, !dbg !4048
  %9 = load i64, ptr %size, align 8, !dbg !4048
  %cmp3 = icmp ne i64 %9, 0, !dbg !4049
  br i1 %cmp3, label %cond.true4, label %cond.false7, !dbg !4047

cond.true4:                                       ; preds = %cond.end
  %10 = load ptr, ptr %src, align 8, !dbg !4050
  %11 = load ptr, ptr %input.addr, align 8, !dbg !4051
  %size5 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %11, i32 0, i32 1, !dbg !4052
  %12 = load i64, ptr %size5, align 8, !dbg !4052
  %add.ptr6 = getelementptr i8, ptr %10, i64 %12, !dbg !4053
  br label %cond.end8, !dbg !4047

cond.false7:                                      ; preds = %cond.end
  %13 = load ptr, ptr %src, align 8, !dbg !4054
  br label %cond.end8, !dbg !4047

cond.end8:                                        ; preds = %cond.false7, %cond.true4
  %cond9 = phi ptr [ %add.ptr6, %cond.true4 ], [ %13, %cond.false7 ], !dbg !4047
  store ptr %cond9, ptr %iend, align 8, !dbg !4046
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #8, !dbg !4055
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !3972, metadata !DIExpression()), !dbg !4056
  %14 = load ptr, ptr %istart, align 8, !dbg !4057
  store ptr %14, ptr %ip, align 8, !dbg !4056
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #8, !dbg !4058
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !3973, metadata !DIExpression()), !dbg !4059
  %15 = load ptr, ptr %output.addr, align 8, !dbg !4060
  %dst10 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %15, i32 0, i32 0, !dbg !4061
  %16 = load ptr, ptr %dst10, align 8, !dbg !4061
  store ptr %16, ptr %dst, align 8, !dbg !4059
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #8, !dbg !4062
  call void @llvm.dbg.declare(metadata ptr %ostart, metadata !3975, metadata !DIExpression()), !dbg !4063
  %17 = load ptr, ptr %output.addr, align 8, !dbg !4064
  %pos11 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %17, i32 0, i32 2, !dbg !4065
  %18 = load i64, ptr %pos11, align 8, !dbg !4065
  %cmp12 = icmp ne i64 %18, 0, !dbg !4066
  br i1 %cmp12, label %cond.true13, label %cond.false16, !dbg !4064

cond.true13:                                      ; preds = %cond.end8
  %19 = load ptr, ptr %dst, align 8, !dbg !4067
  %20 = load ptr, ptr %output.addr, align 8, !dbg !4068
  %pos14 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %20, i32 0, i32 2, !dbg !4069
  %21 = load i64, ptr %pos14, align 8, !dbg !4069
  %add.ptr15 = getelementptr i8, ptr %19, i64 %21, !dbg !4070
  br label %cond.end17, !dbg !4064

cond.false16:                                     ; preds = %cond.end8
  %22 = load ptr, ptr %dst, align 8, !dbg !4071
  br label %cond.end17, !dbg !4064

cond.end17:                                       ; preds = %cond.false16, %cond.true13
  %cond18 = phi ptr [ %add.ptr15, %cond.true13 ], [ %22, %cond.false16 ], !dbg !4064
  store ptr %cond18, ptr %ostart, align 8, !dbg !4063
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #8, !dbg !4072
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !3976, metadata !DIExpression()), !dbg !4073
  %23 = load ptr, ptr %output.addr, align 8, !dbg !4074
  %size19 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %23, i32 0, i32 1, !dbg !4075
  %24 = load i64, ptr %size19, align 8, !dbg !4075
  %cmp20 = icmp ne i64 %24, 0, !dbg !4076
  br i1 %cmp20, label %cond.true21, label %cond.false24, !dbg !4074

cond.true21:                                      ; preds = %cond.end17
  %25 = load ptr, ptr %dst, align 8, !dbg !4077
  %26 = load ptr, ptr %output.addr, align 8, !dbg !4078
  %size22 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %26, i32 0, i32 1, !dbg !4079
  %27 = load i64, ptr %size22, align 8, !dbg !4079
  %add.ptr23 = getelementptr i8, ptr %25, i64 %27, !dbg !4080
  br label %cond.end25, !dbg !4074

cond.false24:                                     ; preds = %cond.end17
  %28 = load ptr, ptr %dst, align 8, !dbg !4081
  br label %cond.end25, !dbg !4074

cond.end25:                                       ; preds = %cond.false24, %cond.true21
  %cond26 = phi ptr [ %add.ptr23, %cond.true21 ], [ %28, %cond.false24 ], !dbg !4074
  store ptr %cond26, ptr %oend, align 8, !dbg !4073
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #8, !dbg !4082
  call void @llvm.dbg.declare(metadata ptr %op, metadata !3977, metadata !DIExpression()), !dbg !4083
  %29 = load ptr, ptr %ostart, align 8, !dbg !4084
  store ptr %29, ptr %op, align 8, !dbg !4083
  call void @llvm.lifetime.start.p0(i64 4, ptr %someMoreWork) #8, !dbg !4085
  call void @llvm.dbg.declare(metadata ptr %someMoreWork, metadata !3978, metadata !DIExpression()), !dbg !4086
  store i32 1, ptr %someMoreWork, align 4, !dbg !4086
  %30 = load ptr, ptr %input.addr, align 8, !dbg !4087
  %pos27 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %30, i32 0, i32 2, !dbg !4087
  %31 = load i64, ptr %pos27, align 8, !dbg !4087
  %32 = load ptr, ptr %input.addr, align 8, !dbg !4087
  %size28 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %32, i32 0, i32 1, !dbg !4087
  %33 = load i64, ptr %size28, align 8, !dbg !4087
  %cmp29 = icmp ugt i64 %31, %33, !dbg !4087
  br i1 %cmp29, label %if.then, label %if.end, !dbg !4089

if.then:                                          ; preds = %cond.end25
  store i64 -72, ptr %retval, align 8, !dbg !4090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup509, !dbg !4090

if.end:                                           ; preds = %cond.end25
  %34 = load ptr, ptr %output.addr, align 8, !dbg !4092
  %pos30 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %34, i32 0, i32 2, !dbg !4092
  %35 = load i64, ptr %pos30, align 8, !dbg !4092
  %36 = load ptr, ptr %output.addr, align 8, !dbg !4092
  %size31 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %36, i32 0, i32 1, !dbg !4092
  %37 = load i64, ptr %size31, align 8, !dbg !4092
  %cmp32 = icmp ugt i64 %35, %37, !dbg !4092
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !4094

if.then33:                                        ; preds = %if.end
  store i64 -70, ptr %retval, align 8, !dbg !4095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup509, !dbg !4095

if.end34:                                         ; preds = %if.end
  br label %do.body, !dbg !4097

do.body:                                          ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !4098
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !3979, metadata !DIExpression()), !dbg !4098
  %38 = load ptr, ptr %zds.addr, align 8, !dbg !4098
  %39 = load ptr, ptr %output.addr, align 8, !dbg !4098
  %call = call i64 @ZSTD_checkOutBuffer(ptr noundef %38, ptr noundef %39) #7, !dbg !4098
  store i64 %call, ptr %err_code, align 8, !dbg !4098
  %40 = load i64, ptr %err_code, align 8, !dbg !4099
  %call35 = call i32 @ERR_isError(i64 noundef %40) #7, !dbg !4099
  %tobool = icmp ne i32 %call35, 0, !dbg !4099
  br i1 %tobool, label %if.then36, label %if.end37, !dbg !4098

if.then36:                                        ; preds = %do.body
  %41 = load i64, ptr %err_code, align 8, !dbg !4101
  store i64 %41, ptr %retval, align 8, !dbg !4101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4101

if.end37:                                         ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4097
  br label %cleanup, !dbg !4097

cleanup:                                          ; preds = %if.end37, %if.then36
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !4097
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup509 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !4098

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end, !dbg !4098

do.end:                                           ; preds = %do.cond
  br label %while.cond, !dbg !4103

while.cond:                                       ; preds = %sw.epilog, %do.end
  %42 = load i32, ptr %someMoreWork, align 4, !dbg !4104
  %tobool38 = icmp ne i32 %42, 0, !dbg !4103
  br i1 %tobool38, label %while.body, label %while.end, !dbg !4103

while.body:                                       ; preds = %while.cond
  %43 = load ptr, ptr %zds.addr, align 8, !dbg !4105
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %43, i32 0, i32 36, !dbg !4106
  %44 = load i32, ptr %streamStage, align 4, !dbg !4106
  switch i32 %44, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb40
    i32 2, label %sw.bb294
    i32 3, label %sw.bb332
    i32 4, label %sw.bb395
  ], !dbg !4107

sw.bb:                                            ; preds = %while.body
  %45 = load ptr, ptr %zds.addr, align 8, !dbg !4108
  %streamStage39 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %45, i32 0, i32 36, !dbg !4109
  store i32 1, ptr %streamStage39, align 4, !dbg !4110
  %46 = load ptr, ptr %zds.addr, align 8, !dbg !4111
  %outEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %46, i32 0, i32 44, !dbg !4112
  store i64 0, ptr %outEnd, align 8, !dbg !4113
  %47 = load ptr, ptr %zds.addr, align 8, !dbg !4114
  %outStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %47, i32 0, i32 43, !dbg !4115
  store i64 0, ptr %outStart, align 8, !dbg !4116
  %48 = load ptr, ptr %zds.addr, align 8, !dbg !4117
  %inPos = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %48, i32 0, i32 39, !dbg !4118
  store i64 0, ptr %inPos, align 8, !dbg !4119
  %49 = load ptr, ptr %zds.addr, align 8, !dbg !4120
  %lhSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %49, i32 0, i32 45, !dbg !4121
  store i64 0, ptr %lhSize, align 8, !dbg !4122
  %50 = load ptr, ptr %zds.addr, align 8, !dbg !4123
  %hostageByte = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %50, i32 0, i32 46, !dbg !4124
  store i32 0, ptr %hostageByte, align 8, !dbg !4125
  %51 = load ptr, ptr %zds.addr, align 8, !dbg !4126
  %expectedOutBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %51, i32 0, i32 49, !dbg !4127
  %52 = load ptr, ptr %output.addr, align 8, !dbg !4128
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %expectedOutBuffer, ptr align 8 %52, i64 24, i1 false), !dbg !4129
  br label %sw.bb40, !dbg !4126

sw.bb40:                                          ; preds = %while.body, %sw.bb
  call void @llvm.lifetime.start.p0(i64 8, ptr %hSize) #8, !dbg !4130
  call void @llvm.dbg.declare(metadata ptr %hSize, metadata !3981, metadata !DIExpression()), !dbg !4131
  %53 = load ptr, ptr %zds.addr, align 8, !dbg !4132
  %fParams = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %53, i32 0, i32 11, !dbg !4133
  %54 = load ptr, ptr %zds.addr, align 8, !dbg !4134
  %headerBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %54, i32 0, i32 54, !dbg !4135
  %arraydecay = getelementptr inbounds [18 x i8], ptr %headerBuffer, i64 0, i64 0, !dbg !4134
  %55 = load ptr, ptr %zds.addr, align 8, !dbg !4136
  %lhSize41 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %55, i32 0, i32 45, !dbg !4137
  %56 = load i64, ptr %lhSize41, align 8, !dbg !4137
  %57 = load ptr, ptr %zds.addr, align 8, !dbg !4138
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %57, i32 0, i32 20, !dbg !4139
  %58 = load i32, ptr %format, align 8, !dbg !4139
  %call42 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef %fParams, ptr noundef %arraydecay, i64 noundef %56, i32 noundef %58) #7, !dbg !4140
  store i64 %call42, ptr %hSize, align 8, !dbg !4131
  %59 = load ptr, ptr %zds.addr, align 8, !dbg !4141
  %refMultipleDDicts = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %59, i32 0, i32 35, !dbg !4143
  %60 = load i32, ptr %refMultipleDDicts, align 8, !dbg !4143
  %tobool43 = icmp ne i32 %60, 0, !dbg !4141
  br i1 %tobool43, label %land.lhs.true, label %if.end46, !dbg !4144

land.lhs.true:                                    ; preds = %sw.bb40
  %61 = load ptr, ptr %zds.addr, align 8, !dbg !4145
  %ddictSet = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %61, i32 0, i32 34, !dbg !4146
  %62 = load ptr, ptr %ddictSet, align 8, !dbg !4146
  %tobool44 = icmp ne ptr %62, null, !dbg !4145
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !4147

if.then45:                                        ; preds = %land.lhs.true
  %63 = load ptr, ptr %zds.addr, align 8, !dbg !4148
  call void @ZSTD_DCtx_selectFrameDDict(ptr noundef %63) #7, !dbg !4150
  br label %if.end46, !dbg !4151

if.end46:                                         ; preds = %if.then45, %land.lhs.true, %sw.bb40
  %64 = load i64, ptr %hSize, align 8, !dbg !4152
  %call47 = call i32 @ERR_isError(i64 noundef %64) #7, !dbg !4154
  %tobool48 = icmp ne i32 %call47, 0, !dbg !4154
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !4155

if.then49:                                        ; preds = %if.end46
  %65 = load i64, ptr %hSize, align 8, !dbg !4156
  store i64 %65, ptr %retval, align 8, !dbg !4158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !4158

if.end50:                                         ; preds = %if.end46
  %66 = load i64, ptr %hSize, align 8, !dbg !4159
  %cmp51 = icmp ne i64 %66, 0, !dbg !4160
  br i1 %cmp51, label %if.then52, label %if.end92, !dbg !4161

if.then52:                                        ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr %toLoad) #8, !dbg !4162
  call void @llvm.dbg.declare(metadata ptr %toLoad, metadata !3985, metadata !DIExpression()), !dbg !4163
  %67 = load i64, ptr %hSize, align 8, !dbg !4164
  %68 = load ptr, ptr %zds.addr, align 8, !dbg !4165
  %lhSize53 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %68, i32 0, i32 45, !dbg !4166
  %69 = load i64, ptr %lhSize53, align 8, !dbg !4166
  %sub = sub i64 %67, %69, !dbg !4167
  store i64 %sub, ptr %toLoad, align 8, !dbg !4163
  call void @llvm.lifetime.start.p0(i64 8, ptr %remainingInput) #8, !dbg !4168
  call void @llvm.dbg.declare(metadata ptr %remainingInput, metadata !3988, metadata !DIExpression()), !dbg !4169
  %70 = load ptr, ptr %iend, align 8, !dbg !4170
  %71 = load ptr, ptr %ip, align 8, !dbg !4171
  %sub.ptr.lhs.cast = ptrtoint ptr %70 to i64, !dbg !4172
  %sub.ptr.rhs.cast = ptrtoint ptr %71 to i64, !dbg !4172
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4172
  store i64 %sub.ptr.sub, ptr %remainingInput, align 8, !dbg !4169
  %72 = load i64, ptr %toLoad, align 8, !dbg !4173
  %73 = load i64, ptr %remainingInput, align 8, !dbg !4175
  %cmp54 = icmp ugt i64 %72, %73, !dbg !4176
  br i1 %cmp54, label %if.then55, label %if.end83, !dbg !4177

if.then55:                                        ; preds = %if.then52
  %74 = load i64, ptr %remainingInput, align 8, !dbg !4178
  %cmp56 = icmp ugt i64 %74, 0, !dbg !4181
  br i1 %cmp56, label %if.then57, label %if.end63, !dbg !4182

if.then57:                                        ; preds = %if.then55
  %75 = load ptr, ptr %zds.addr, align 8, !dbg !4183
  %headerBuffer58 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %75, i32 0, i32 54, !dbg !4183
  %arraydecay59 = getelementptr inbounds [18 x i8], ptr %headerBuffer58, i64 0, i64 0, !dbg !4183
  %76 = load ptr, ptr %zds.addr, align 8, !dbg !4183
  %lhSize60 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %76, i32 0, i32 45, !dbg !4183
  %77 = load i64, ptr %lhSize60, align 8, !dbg !4183
  %add.ptr61 = getelementptr i8, ptr %arraydecay59, i64 %77, !dbg !4183
  %78 = load ptr, ptr %ip, align 8, !dbg !4183
  %79 = load i64, ptr %remainingInput, align 8, !dbg !4183
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr61, ptr align 1 %78, i64 %79, i1 false), !dbg !4183
  %80 = load i64, ptr %remainingInput, align 8, !dbg !4185
  %81 = load ptr, ptr %zds.addr, align 8, !dbg !4186
  %lhSize62 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %81, i32 0, i32 45, !dbg !4187
  %82 = load i64, ptr %lhSize62, align 8, !dbg !4188
  %add = add i64 %82, %80, !dbg !4188
  store i64 %add, ptr %lhSize62, align 8, !dbg !4188
  br label %if.end63, !dbg !4189

if.end63:                                         ; preds = %if.then57, %if.then55
  %83 = load ptr, ptr %input.addr, align 8, !dbg !4190
  %size64 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %83, i32 0, i32 1, !dbg !4191
  %84 = load i64, ptr %size64, align 8, !dbg !4191
  %85 = load ptr, ptr %input.addr, align 8, !dbg !4192
  %pos65 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %85, i32 0, i32 2, !dbg !4193
  store i64 %84, ptr %pos65, align 8, !dbg !4194
  %86 = load ptr, ptr %zds.addr, align 8, !dbg !4195
  %format66 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %86, i32 0, i32 20, !dbg !4195
  %87 = load i32, ptr %format66, align 8, !dbg !4195
  %cmp67 = icmp eq i32 %87, 0, !dbg !4195
  %88 = zext i1 %cmp67 to i64, !dbg !4195
  %cond68 = select i1 %cmp67, i32 6, i32 2, !dbg !4195
  %conv = sext i32 %cond68 to i64, !dbg !4195
  %89 = load i64, ptr %hSize, align 8, !dbg !4195
  %cmp69 = icmp ugt i64 %conv, %89, !dbg !4195
  br i1 %cmp69, label %cond.true71, label %cond.false77, !dbg !4195

cond.true71:                                      ; preds = %if.end63
  %90 = load ptr, ptr %zds.addr, align 8, !dbg !4195
  %format72 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %90, i32 0, i32 20, !dbg !4195
  %91 = load i32, ptr %format72, align 8, !dbg !4195
  %cmp73 = icmp eq i32 %91, 0, !dbg !4195
  %92 = zext i1 %cmp73 to i64, !dbg !4195
  %cond75 = select i1 %cmp73, i32 6, i32 2, !dbg !4195
  %conv76 = sext i32 %cond75 to i64, !dbg !4195
  br label %cond.end78, !dbg !4195

cond.false77:                                     ; preds = %if.end63
  %93 = load i64, ptr %hSize, align 8, !dbg !4195
  br label %cond.end78, !dbg !4195

cond.end78:                                       ; preds = %cond.false77, %cond.true71
  %cond79 = phi i64 [ %conv76, %cond.true71 ], [ %93, %cond.false77 ], !dbg !4195
  %94 = load ptr, ptr %zds.addr, align 8, !dbg !4196
  %lhSize80 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %94, i32 0, i32 45, !dbg !4197
  %95 = load i64, ptr %lhSize80, align 8, !dbg !4197
  %sub81 = sub i64 %cond79, %95, !dbg !4198
  %add82 = add i64 %sub81, 3, !dbg !4199
  store i64 %add82, ptr %retval, align 8, !dbg !4200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !4200

if.end83:                                         ; preds = %if.then52
  %96 = load ptr, ptr %zds.addr, align 8, !dbg !4201
  %headerBuffer84 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %96, i32 0, i32 54, !dbg !4201
  %arraydecay85 = getelementptr inbounds [18 x i8], ptr %headerBuffer84, i64 0, i64 0, !dbg !4201
  %97 = load ptr, ptr %zds.addr, align 8, !dbg !4201
  %lhSize86 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %97, i32 0, i32 45, !dbg !4201
  %98 = load i64, ptr %lhSize86, align 8, !dbg !4201
  %add.ptr87 = getelementptr i8, ptr %arraydecay85, i64 %98, !dbg !4201
  %99 = load ptr, ptr %ip, align 8, !dbg !4201
  %100 = load i64, ptr %toLoad, align 8, !dbg !4201
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr87, ptr align 1 %99, i64 %100, i1 false), !dbg !4201
  %101 = load i64, ptr %hSize, align 8, !dbg !4202
  %102 = load ptr, ptr %zds.addr, align 8, !dbg !4203
  %lhSize88 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %102, i32 0, i32 45, !dbg !4204
  store i64 %101, ptr %lhSize88, align 8, !dbg !4205
  %103 = load i64, ptr %toLoad, align 8, !dbg !4206
  %104 = load ptr, ptr %ip, align 8, !dbg !4207
  %add.ptr89 = getelementptr i8, ptr %104, i64 %103, !dbg !4207
  store ptr %add.ptr89, ptr %ip, align 8, !dbg !4207
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !4208

cleanup90:                                        ; preds = %if.end83, %cond.end78
  call void @llvm.lifetime.end.p0(i64 8, ptr %remainingInput) #8, !dbg !4209
  call void @llvm.lifetime.end.p0(i64 8, ptr %toLoad) #8, !dbg !4209
  br label %cleanup93

if.end92:                                         ; preds = %if.end50
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4210
  br label %cleanup93, !dbg !4210

cleanup93:                                        ; preds = %if.end92, %cleanup90, %if.then49
  call void @llvm.lifetime.end.p0(i64 8, ptr %hSize) #8, !dbg !4210
  %cleanup.dest94 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest94, label %cleanup509 [
    i32 0, label %cleanup.cont95
    i32 6, label %sw.epilog
  ]

cleanup.cont95:                                   ; preds = %cleanup93
  %105 = load ptr, ptr %zds.addr, align 8, !dbg !4211
  %fParams96 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %105, i32 0, i32 11, !dbg !4212
  %frameContentSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams96, i32 0, i32 0, !dbg !4213
  %106 = load i64, ptr %frameContentSize, align 8, !dbg !4213
  %cmp97 = icmp ne i64 %106, -1, !dbg !4214
  br i1 %cmp97, label %land.lhs.true99, label %if.end139, !dbg !4215

land.lhs.true99:                                  ; preds = %cleanup.cont95
  %107 = load ptr, ptr %zds.addr, align 8, !dbg !4216
  %fParams100 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %107, i32 0, i32 11, !dbg !4217
  %frameType = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams100, i32 0, i32 3, !dbg !4218
  %108 = load i32, ptr %frameType, align 4, !dbg !4218
  %cmp101 = icmp ne i32 %108, 1, !dbg !4219
  br i1 %cmp101, label %land.lhs.true103, label %if.end139, !dbg !4220

land.lhs.true103:                                 ; preds = %land.lhs.true99
  %109 = load ptr, ptr %oend, align 8, !dbg !4221
  %110 = load ptr, ptr %op, align 8, !dbg !4222
  %sub.ptr.lhs.cast104 = ptrtoint ptr %109 to i64, !dbg !4223
  %sub.ptr.rhs.cast105 = ptrtoint ptr %110 to i64, !dbg !4223
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105, !dbg !4223
  %111 = load ptr, ptr %zds.addr, align 8, !dbg !4224
  %fParams107 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %111, i32 0, i32 11, !dbg !4225
  %frameContentSize108 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams107, i32 0, i32 0, !dbg !4226
  %112 = load i64, ptr %frameContentSize108, align 8, !dbg !4226
  %cmp109 = icmp uge i64 %sub.ptr.sub106, %112, !dbg !4227
  br i1 %cmp109, label %if.then111, label %if.end139, !dbg !4228

if.then111:                                       ; preds = %land.lhs.true103
  call void @llvm.lifetime.start.p0(i64 8, ptr %cSize) #8, !dbg !4229
  call void @llvm.dbg.declare(metadata ptr %cSize, metadata !3989, metadata !DIExpression()), !dbg !4230
  %113 = load ptr, ptr %istart, align 8, !dbg !4231
  %114 = load ptr, ptr %iend, align 8, !dbg !4232
  %115 = load ptr, ptr %istart, align 8, !dbg !4233
  %sub.ptr.lhs.cast112 = ptrtoint ptr %114 to i64, !dbg !4234
  %sub.ptr.rhs.cast113 = ptrtoint ptr %115 to i64, !dbg !4234
  %sub.ptr.sub114 = sub i64 %sub.ptr.lhs.cast112, %sub.ptr.rhs.cast113, !dbg !4234
  %call115 = call i64 @ZSTD_findFrameCompressedSize(ptr noundef %113, i64 noundef %sub.ptr.sub114) #7, !dbg !4235
  store i64 %call115, ptr %cSize, align 8, !dbg !4230
  %116 = load i64, ptr %cSize, align 8, !dbg !4236
  %117 = load ptr, ptr %iend, align 8, !dbg !4237
  %118 = load ptr, ptr %istart, align 8, !dbg !4238
  %sub.ptr.lhs.cast116 = ptrtoint ptr %117 to i64, !dbg !4239
  %sub.ptr.rhs.cast117 = ptrtoint ptr %118 to i64, !dbg !4239
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117, !dbg !4239
  %cmp119 = icmp ule i64 %116, %sub.ptr.sub118, !dbg !4240
  br i1 %cmp119, label %if.then121, label %if.end135, !dbg !4241

if.then121:                                       ; preds = %if.then111
  call void @llvm.lifetime.start.p0(i64 8, ptr %decompressedSize) #8, !dbg !4242
  call void @llvm.dbg.declare(metadata ptr %decompressedSize, metadata !3992, metadata !DIExpression()), !dbg !4243
  %119 = load ptr, ptr %zds.addr, align 8, !dbg !4244
  %120 = load ptr, ptr %op, align 8, !dbg !4245
  %121 = load ptr, ptr %oend, align 8, !dbg !4246
  %122 = load ptr, ptr %op, align 8, !dbg !4247
  %sub.ptr.lhs.cast122 = ptrtoint ptr %121 to i64, !dbg !4248
  %sub.ptr.rhs.cast123 = ptrtoint ptr %122 to i64, !dbg !4248
  %sub.ptr.sub124 = sub i64 %sub.ptr.lhs.cast122, %sub.ptr.rhs.cast123, !dbg !4248
  %123 = load ptr, ptr %istart, align 8, !dbg !4249
  %124 = load i64, ptr %cSize, align 8, !dbg !4250
  %125 = load ptr, ptr %zds.addr, align 8, !dbg !4251
  %call125 = call ptr @ZSTD_getDDict(ptr noundef %125) #7, !dbg !4252
  %call126 = call i64 @ZSTD_decompress_usingDDict(ptr noundef %119, ptr noundef %120, i64 noundef %sub.ptr.sub124, ptr noundef %123, i64 noundef %124, ptr noundef %call125) #7, !dbg !4253
  store i64 %call126, ptr %decompressedSize, align 8, !dbg !4243
  %126 = load i64, ptr %decompressedSize, align 8, !dbg !4254
  %call127 = call i32 @ERR_isError(i64 noundef %126) #7, !dbg !4256
  %tobool128 = icmp ne i32 %call127, 0, !dbg !4256
  br i1 %tobool128, label %if.then129, label %if.end130, !dbg !4257

if.then129:                                       ; preds = %if.then121
  %127 = load i64, ptr %decompressedSize, align 8, !dbg !4258
  store i64 %127, ptr %retval, align 8, !dbg !4259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup134, !dbg !4259

if.end130:                                        ; preds = %if.then121
  %128 = load ptr, ptr %istart, align 8, !dbg !4260
  %129 = load i64, ptr %cSize, align 8, !dbg !4261
  %add.ptr131 = getelementptr i8, ptr %128, i64 %129, !dbg !4262
  store ptr %add.ptr131, ptr %ip, align 8, !dbg !4263
  %130 = load i64, ptr %decompressedSize, align 8, !dbg !4264
  %131 = load ptr, ptr %op, align 8, !dbg !4265
  %add.ptr132 = getelementptr i8, ptr %131, i64 %130, !dbg !4265
  store ptr %add.ptr132, ptr %op, align 8, !dbg !4265
  %132 = load ptr, ptr %zds.addr, align 8, !dbg !4266
  %expected = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %132, i32 0, i32 10, !dbg !4267
  store i64 0, ptr %expected, align 8, !dbg !4268
  %133 = load ptr, ptr %zds.addr, align 8, !dbg !4269
  %streamStage133 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %133, i32 0, i32 36, !dbg !4270
  store i32 0, ptr %streamStage133, align 4, !dbg !4271
  store i32 0, ptr %someMoreWork, align 4, !dbg !4272
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup134, !dbg !4273

cleanup134:                                       ; preds = %if.end130, %if.then129
  call void @llvm.lifetime.end.p0(i64 8, ptr %decompressedSize) #8, !dbg !4274
  br label %cleanup136

if.end135:                                        ; preds = %if.then111
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4275
  br label %cleanup136, !dbg !4275

cleanup136:                                       ; preds = %if.end135, %cleanup134
  call void @llvm.lifetime.end.p0(i64 8, ptr %cSize) #8, !dbg !4275
  %cleanup.dest137 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest137, label %cleanup509 [
    i32 0, label %cleanup.cont138
    i32 6, label %sw.epilog
  ]

cleanup.cont138:                                  ; preds = %cleanup136
  br label %if.end139, !dbg !4276

if.end139:                                        ; preds = %cleanup.cont138, %land.lhs.true103, %land.lhs.true99, %cleanup.cont95
  %134 = load ptr, ptr %zds.addr, align 8, !dbg !4277
  %outBufferMode = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %134, i32 0, i32 48, !dbg !4279
  %135 = load i32, ptr %outBufferMode, align 8, !dbg !4279
  %cmp140 = icmp eq i32 %135, 1, !dbg !4280
  br i1 %cmp140, label %land.lhs.true142, label %if.end164, !dbg !4281

land.lhs.true142:                                 ; preds = %if.end139
  %136 = load ptr, ptr %zds.addr, align 8, !dbg !4282
  %fParams143 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %136, i32 0, i32 11, !dbg !4283
  %frameType144 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams143, i32 0, i32 3, !dbg !4284
  %137 = load i32, ptr %frameType144, align 4, !dbg !4284
  %cmp145 = icmp ne i32 %137, 1, !dbg !4285
  br i1 %cmp145, label %land.lhs.true147, label %if.end164, !dbg !4286

land.lhs.true147:                                 ; preds = %land.lhs.true142
  %138 = load ptr, ptr %zds.addr, align 8, !dbg !4287
  %fParams148 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %138, i32 0, i32 11, !dbg !4288
  %frameContentSize149 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams148, i32 0, i32 0, !dbg !4289
  %139 = load i64, ptr %frameContentSize149, align 8, !dbg !4289
  %cmp150 = icmp ne i64 %139, -1, !dbg !4290
  br i1 %cmp150, label %land.lhs.true152, label %if.end164, !dbg !4291

land.lhs.true152:                                 ; preds = %land.lhs.true147
  %140 = load ptr, ptr %oend, align 8, !dbg !4292
  %141 = load ptr, ptr %op, align 8, !dbg !4293
  %sub.ptr.lhs.cast153 = ptrtoint ptr %140 to i64, !dbg !4294
  %sub.ptr.rhs.cast154 = ptrtoint ptr %141 to i64, !dbg !4294
  %sub.ptr.sub155 = sub i64 %sub.ptr.lhs.cast153, %sub.ptr.rhs.cast154, !dbg !4294
  %142 = load ptr, ptr %zds.addr, align 8, !dbg !4295
  %fParams156 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %142, i32 0, i32 11, !dbg !4296
  %frameContentSize157 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams156, i32 0, i32 0, !dbg !4297
  %143 = load i64, ptr %frameContentSize157, align 8, !dbg !4297
  %cmp158 = icmp ult i64 %sub.ptr.sub155, %143, !dbg !4298
  br i1 %cmp158, label %if.then160, label %if.end164, !dbg !4299

if.then160:                                       ; preds = %land.lhs.true152
  br label %do.body161, !dbg !4300

do.body161:                                       ; preds = %if.then160
  store i64 -70, ptr %retval, align 8, !dbg !4302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup509, !dbg !4302

do.cond162:                                       ; No predecessors!
  br label %do.end163, !dbg !4302

do.end163:                                        ; preds = %do.cond162
  br label %if.end164, !dbg !4304

if.end164:                                        ; preds = %do.end163, %land.lhs.true152, %land.lhs.true147, %land.lhs.true142, %if.end139
  br label %do.body165, !dbg !4305

do.body165:                                       ; preds = %if.end164
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code166) #8, !dbg !4306
  call void @llvm.dbg.declare(metadata ptr %err_code166, metadata !3995, metadata !DIExpression()), !dbg !4306
  %144 = load ptr, ptr %zds.addr, align 8, !dbg !4306
  %145 = load ptr, ptr %zds.addr, align 8, !dbg !4306
  %call167 = call ptr @ZSTD_getDDict(ptr noundef %145) #7, !dbg !4306
  %call168 = call i64 @ZSTD_decompressBegin_usingDDict(ptr noundef %144, ptr noundef %call167) #7, !dbg !4306
  store i64 %call168, ptr %err_code166, align 8, !dbg !4306
  %146 = load i64, ptr %err_code166, align 8, !dbg !4307
  %call169 = call i32 @ERR_isError(i64 noundef %146) #7, !dbg !4307
  %tobool170 = icmp ne i32 %call169, 0, !dbg !4307
  br i1 %tobool170, label %if.then171, label %if.end172, !dbg !4306

if.then171:                                       ; preds = %do.body165
  %147 = load i64, ptr %err_code166, align 8, !dbg !4309
  store i64 %147, ptr %retval, align 8, !dbg !4309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173, !dbg !4309

if.end172:                                        ; preds = %do.body165
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4305
  br label %cleanup173, !dbg !4305

cleanup173:                                       ; preds = %if.end172, %if.then171
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code166) #8, !dbg !4305
  %cleanup.dest174 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest174, label %cleanup509 [
    i32 0, label %cleanup.cont175
  ]

cleanup.cont175:                                  ; preds = %cleanup173
  br label %do.cond176, !dbg !4306

do.cond176:                                       ; preds = %cleanup.cont175
  br label %do.end177, !dbg !4306

do.end177:                                        ; preds = %do.cond176
  %148 = load ptr, ptr %zds.addr, align 8, !dbg !4311
  %headerBuffer178 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %148, i32 0, i32 54, !dbg !4312
  %arraydecay179 = getelementptr inbounds [18 x i8], ptr %headerBuffer178, i64 0, i64 0, !dbg !4311
  %call180 = call i32 @MEM_readLE32(ptr noundef %arraydecay179) #7, !dbg !4313
  %and = and i32 %call180, -16, !dbg !4314
  %cmp181 = icmp eq i32 %and, 407710288, !dbg !4315
  br i1 %cmp181, label %if.then183, label %if.else, !dbg !4316

if.then183:                                       ; preds = %do.end177
  %149 = load ptr, ptr %zds.addr, align 8, !dbg !4317
  %headerBuffer184 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %149, i32 0, i32 54, !dbg !4319
  %arraydecay185 = getelementptr inbounds [18 x i8], ptr %headerBuffer184, i64 0, i64 0, !dbg !4317
  %add.ptr186 = getelementptr i8, ptr %arraydecay185, i64 4, !dbg !4320
  %call187 = call i32 @MEM_readLE32(ptr noundef %add.ptr186) #7, !dbg !4321
  %conv188 = zext i32 %call187 to i64, !dbg !4321
  %150 = load ptr, ptr %zds.addr, align 8, !dbg !4322
  %expected189 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %150, i32 0, i32 10, !dbg !4323
  store i64 %conv188, ptr %expected189, align 8, !dbg !4324
  %151 = load ptr, ptr %zds.addr, align 8, !dbg !4325
  %stage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %151, i32 0, i32 15, !dbg !4326
  store i32 7, ptr %stage, align 4, !dbg !4327
  br label %if.end207, !dbg !4328

if.else:                                          ; preds = %do.end177
  br label %do.body190, !dbg !4329

do.body190:                                       ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code191) #8, !dbg !4330
  call void @llvm.dbg.declare(metadata ptr %err_code191, metadata !3997, metadata !DIExpression()), !dbg !4330
  %152 = load ptr, ptr %zds.addr, align 8, !dbg !4330
  %153 = load ptr, ptr %zds.addr, align 8, !dbg !4330
  %headerBuffer192 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %153, i32 0, i32 54, !dbg !4330
  %arraydecay193 = getelementptr inbounds [18 x i8], ptr %headerBuffer192, i64 0, i64 0, !dbg !4330
  %154 = load ptr, ptr %zds.addr, align 8, !dbg !4330
  %lhSize194 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %154, i32 0, i32 45, !dbg !4330
  %155 = load i64, ptr %lhSize194, align 8, !dbg !4330
  %call195 = call i64 @ZSTD_decodeFrameHeader(ptr noundef %152, ptr noundef %arraydecay193, i64 noundef %155) #7, !dbg !4330
  store i64 %call195, ptr %err_code191, align 8, !dbg !4330
  %156 = load i64, ptr %err_code191, align 8, !dbg !4331
  %call196 = call i32 @ERR_isError(i64 noundef %156) #7, !dbg !4331
  %tobool197 = icmp ne i32 %call196, 0, !dbg !4331
  br i1 %tobool197, label %if.then198, label %if.end199, !dbg !4330

if.then198:                                       ; preds = %do.body190
  %157 = load i64, ptr %err_code191, align 8, !dbg !4333
  store i64 %157, ptr %retval, align 8, !dbg !4333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup200, !dbg !4333

if.end199:                                        ; preds = %do.body190
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4329
  br label %cleanup200, !dbg !4329

cleanup200:                                       ; preds = %if.end199, %if.then198
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code191) #8, !dbg !4329
  %cleanup.dest201 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest201, label %cleanup509 [
    i32 0, label %cleanup.cont202
  ]

cleanup.cont202:                                  ; preds = %cleanup200
  br label %do.cond203, !dbg !4330

do.cond203:                                       ; preds = %cleanup.cont202
  br label %do.end204, !dbg !4330

do.end204:                                        ; preds = %do.cond203
  %158 = load ptr, ptr %zds.addr, align 8, !dbg !4335
  %expected205 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %158, i32 0, i32 10, !dbg !4336
  store i64 3, ptr %expected205, align 8, !dbg !4337
  %159 = load ptr, ptr %zds.addr, align 8, !dbg !4338
  %stage206 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %159, i32 0, i32 15, !dbg !4339
  store i32 2, ptr %stage206, align 4, !dbg !4340
  br label %if.end207

if.end207:                                        ; preds = %do.end204, %if.then183
  %160 = load ptr, ptr %zds.addr, align 8, !dbg !4341
  %fParams208 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %160, i32 0, i32 11, !dbg !4341
  %windowSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams208, i32 0, i32 1, !dbg !4341
  %161 = load i64, ptr %windowSize, align 8, !dbg !4341
  %cmp209 = icmp ugt i64 %161, 1024, !dbg !4341
  br i1 %cmp209, label %cond.true211, label %cond.false214, !dbg !4341

cond.true211:                                     ; preds = %if.end207
  %162 = load ptr, ptr %zds.addr, align 8, !dbg !4341
  %fParams212 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %162, i32 0, i32 11, !dbg !4341
  %windowSize213 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams212, i32 0, i32 1, !dbg !4341
  %163 = load i64, ptr %windowSize213, align 8, !dbg !4341
  br label %cond.end215, !dbg !4341

cond.false214:                                    ; preds = %if.end207
  br label %cond.end215, !dbg !4341

cond.end215:                                      ; preds = %cond.false214, %cond.true211
  %cond216 = phi i64 [ %163, %cond.true211 ], [ 1024, %cond.false214 ], !dbg !4341
  %164 = load ptr, ptr %zds.addr, align 8, !dbg !4342
  %fParams217 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %164, i32 0, i32 11, !dbg !4343
  %windowSize218 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams217, i32 0, i32 1, !dbg !4344
  store i64 %cond216, ptr %windowSize218, align 8, !dbg !4345
  %165 = load ptr, ptr %zds.addr, align 8, !dbg !4346
  %fParams219 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %165, i32 0, i32 11, !dbg !4346
  %windowSize220 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams219, i32 0, i32 1, !dbg !4346
  %166 = load i64, ptr %windowSize220, align 8, !dbg !4346
  %167 = load ptr, ptr %zds.addr, align 8, !dbg !4346
  %maxWindowSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %167, i32 0, i32 40, !dbg !4346
  %168 = load i64, ptr %maxWindowSize, align 8, !dbg !4346
  %cmp221 = icmp ugt i64 %166, %168, !dbg !4346
  br i1 %cmp221, label %if.then223, label %if.end224, !dbg !4348

if.then223:                                       ; preds = %cond.end215
  store i64 -16, ptr %retval, align 8, !dbg !4349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup509, !dbg !4349

if.end224:                                        ; preds = %cond.end215
  call void @llvm.lifetime.start.p0(i64 8, ptr %neededInBuffSize) #8, !dbg !4351
  call void @llvm.dbg.declare(metadata ptr %neededInBuffSize, metadata !4001, metadata !DIExpression()), !dbg !4352
  %169 = load ptr, ptr %zds.addr, align 8, !dbg !4353
  %fParams225 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %169, i32 0, i32 11, !dbg !4353
  %blockSizeMax = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams225, i32 0, i32 2, !dbg !4353
  %170 = load i32, ptr %blockSizeMax, align 8, !dbg !4353
  %cmp226 = icmp ugt i32 %170, 4, !dbg !4353
  br i1 %cmp226, label %cond.true228, label %cond.false231, !dbg !4353

cond.true228:                                     ; preds = %if.end224
  %171 = load ptr, ptr %zds.addr, align 8, !dbg !4353
  %fParams229 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %171, i32 0, i32 11, !dbg !4353
  %blockSizeMax230 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams229, i32 0, i32 2, !dbg !4353
  %172 = load i32, ptr %blockSizeMax230, align 8, !dbg !4353
  br label %cond.end232, !dbg !4353

cond.false231:                                    ; preds = %if.end224
  br label %cond.end232, !dbg !4353

cond.end232:                                      ; preds = %cond.false231, %cond.true228
  %cond233 = phi i32 [ %172, %cond.true228 ], [ 4, %cond.false231 ], !dbg !4353
  %conv234 = zext i32 %cond233 to i64, !dbg !4353
  store i64 %conv234, ptr %neededInBuffSize, align 8, !dbg !4352
  call void @llvm.lifetime.start.p0(i64 8, ptr %neededOutBuffSize) #8, !dbg !4354
  call void @llvm.dbg.declare(metadata ptr %neededOutBuffSize, metadata !4003, metadata !DIExpression()), !dbg !4355
  %173 = load ptr, ptr %zds.addr, align 8, !dbg !4356
  %outBufferMode235 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %173, i32 0, i32 48, !dbg !4357
  %174 = load i32, ptr %outBufferMode235, align 8, !dbg !4357
  %cmp236 = icmp eq i32 %174, 0, !dbg !4358
  br i1 %cmp236, label %cond.true238, label %cond.false244, !dbg !4356

cond.true238:                                     ; preds = %cond.end232
  %175 = load ptr, ptr %zds.addr, align 8, !dbg !4359
  %fParams239 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %175, i32 0, i32 11, !dbg !4360
  %windowSize240 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams239, i32 0, i32 1, !dbg !4361
  %176 = load i64, ptr %windowSize240, align 8, !dbg !4361
  %177 = load ptr, ptr %zds.addr, align 8, !dbg !4362
  %fParams241 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %177, i32 0, i32 11, !dbg !4363
  %frameContentSize242 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams241, i32 0, i32 0, !dbg !4364
  %178 = load i64, ptr %frameContentSize242, align 8, !dbg !4364
  %call243 = call i64 @ZSTD_decodingBufferSize_min(i64 noundef %176, i64 noundef %178) #7, !dbg !4365
  br label %cond.end245, !dbg !4356

cond.false244:                                    ; preds = %cond.end232
  br label %cond.end245, !dbg !4356

cond.end245:                                      ; preds = %cond.false244, %cond.true238
  %cond246 = phi i64 [ %call243, %cond.true238 ], [ 0, %cond.false244 ], !dbg !4356
  store i64 %cond246, ptr %neededOutBuffSize, align 8, !dbg !4355
  %179 = load ptr, ptr %zds.addr, align 8, !dbg !4366
  %180 = load i64, ptr %neededInBuffSize, align 8, !dbg !4367
  %181 = load i64, ptr %neededOutBuffSize, align 8, !dbg !4368
  call void @ZSTD_DCtx_updateOversizedDuration(ptr noundef %179, i64 noundef %180, i64 noundef %181) #7, !dbg !4369
  call void @llvm.lifetime.start.p0(i64 4, ptr %tooSmall) #8, !dbg !4370
  call void @llvm.dbg.declare(metadata ptr %tooSmall, metadata !4004, metadata !DIExpression()), !dbg !4371
  %182 = load ptr, ptr %zds.addr, align 8, !dbg !4372
  %inBuffSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %182, i32 0, i32 38, !dbg !4373
  %183 = load i64, ptr %inBuffSize, align 8, !dbg !4373
  %184 = load i64, ptr %neededInBuffSize, align 8, !dbg !4374
  %cmp247 = icmp ult i64 %183, %184, !dbg !4375
  br i1 %cmp247, label %lor.end, label %lor.rhs, !dbg !4376

lor.rhs:                                          ; preds = %cond.end245
  %185 = load ptr, ptr %zds.addr, align 8, !dbg !4377
  %outBuffSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %185, i32 0, i32 42, !dbg !4378
  %186 = load i64, ptr %outBuffSize, align 8, !dbg !4378
  %187 = load i64, ptr %neededOutBuffSize, align 8, !dbg !4379
  %cmp249 = icmp ult i64 %186, %187, !dbg !4380
  br label %lor.end, !dbg !4376

lor.end:                                          ; preds = %lor.rhs, %cond.end245
  %188 = phi i1 [ true, %cond.end245 ], [ %cmp249, %lor.rhs ]
  %lor.ext = zext i1 %188 to i32, !dbg !4376
  store i32 %lor.ext, ptr %tooSmall, align 4, !dbg !4371
  call void @llvm.lifetime.start.p0(i64 4, ptr %tooLarge) #8, !dbg !4381
  call void @llvm.dbg.declare(metadata ptr %tooLarge, metadata !4006, metadata !DIExpression()), !dbg !4382
  %189 = load ptr, ptr %zds.addr, align 8, !dbg !4383
  %call251 = call i32 @ZSTD_DCtx_isOversizedTooLong(ptr noundef %189) #7, !dbg !4384
  store i32 %call251, ptr %tooLarge, align 4, !dbg !4382
  %190 = load i32, ptr %tooSmall, align 4, !dbg !4385
  %tobool252 = icmp ne i32 %190, 0, !dbg !4385
  br i1 %tobool252, label %if.then254, label %lor.lhs.false, !dbg !4386

lor.lhs.false:                                    ; preds = %lor.end
  %191 = load i32, ptr %tooLarge, align 4, !dbg !4387
  %tobool253 = icmp ne i32 %191, 0, !dbg !4387
  br i1 %tobool253, label %if.then254, label %if.end284, !dbg !4388

if.then254:                                       ; preds = %lor.lhs.false, %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufferSize) #8, !dbg !4389
  call void @llvm.dbg.declare(metadata ptr %bufferSize, metadata !4007, metadata !DIExpression()), !dbg !4390
  %192 = load i64, ptr %neededInBuffSize, align 8, !dbg !4391
  %193 = load i64, ptr %neededOutBuffSize, align 8, !dbg !4392
  %add255 = add i64 %192, %193, !dbg !4393
  store i64 %add255, ptr %bufferSize, align 8, !dbg !4390
  %194 = load ptr, ptr %zds.addr, align 8, !dbg !4394
  %staticSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %194, i32 0, i32 27, !dbg !4396
  %195 = load i64, ptr %staticSize, align 8, !dbg !4396
  %tobool256 = icmp ne i64 %195, 0, !dbg !4394
  br i1 %tobool256, label %if.then257, label %if.else264, !dbg !4397

if.then257:                                       ; preds = %if.then254
  %196 = load i64, ptr %bufferSize, align 8, !dbg !4398
  %197 = load ptr, ptr %zds.addr, align 8, !dbg !4398
  %staticSize258 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %197, i32 0, i32 27, !dbg !4398
  %198 = load i64, ptr %staticSize258, align 8, !dbg !4398
  %sub259 = sub i64 %198, 95944, !dbg !4398
  %cmp260 = icmp ugt i64 %196, %sub259, !dbg !4398
  br i1 %cmp260, label %if.then262, label %if.end263, !dbg !4401

if.then262:                                       ; preds = %if.then257
  store i64 -64, ptr %retval, align 8, !dbg !4402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup281, !dbg !4402

if.end263:                                        ; preds = %if.then257
  br label %if.end275, !dbg !4404

if.else264:                                       ; preds = %if.then254
  %199 = load ptr, ptr %zds.addr, align 8, !dbg !4405
  %inBuff = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %199, i32 0, i32 37, !dbg !4407
  %200 = load ptr, ptr %inBuff, align 8, !dbg !4407
  %201 = load ptr, ptr %zds.addr, align 8, !dbg !4408
  %customMem = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %201, i32 0, i32 24, !dbg !4409
  call void @ZSTD_customFree(ptr noundef %200, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !4410
  %202 = load ptr, ptr %zds.addr, align 8, !dbg !4411
  %inBuffSize265 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %202, i32 0, i32 38, !dbg !4412
  store i64 0, ptr %inBuffSize265, align 8, !dbg !4413
  %203 = load ptr, ptr %zds.addr, align 8, !dbg !4414
  %outBuffSize266 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %203, i32 0, i32 42, !dbg !4415
  store i64 0, ptr %outBuffSize266, align 8, !dbg !4416
  %204 = load i64, ptr %bufferSize, align 8, !dbg !4417
  %205 = load ptr, ptr %zds.addr, align 8, !dbg !4418
  %customMem267 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %205, i32 0, i32 24, !dbg !4419
  %call268 = call ptr @ZSTD_customMalloc(i64 noundef %204, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem267) #7, !dbg !4420
  %206 = load ptr, ptr %zds.addr, align 8, !dbg !4421
  %inBuff269 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %206, i32 0, i32 37, !dbg !4422
  store ptr %call268, ptr %inBuff269, align 8, !dbg !4423
  %207 = load ptr, ptr %zds.addr, align 8, !dbg !4424
  %inBuff270 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %207, i32 0, i32 37, !dbg !4424
  %208 = load ptr, ptr %inBuff270, align 8, !dbg !4424
  %cmp271 = icmp eq ptr %208, null, !dbg !4424
  br i1 %cmp271, label %if.then273, label %if.end274, !dbg !4426

if.then273:                                       ; preds = %if.else264
  store i64 -64, ptr %retval, align 8, !dbg !4427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup281, !dbg !4427

if.end274:                                        ; preds = %if.else264
  br label %if.end275

if.end275:                                        ; preds = %if.end274, %if.end263
  %209 = load i64, ptr %neededInBuffSize, align 8, !dbg !4429
  %210 = load ptr, ptr %zds.addr, align 8, !dbg !4430
  %inBuffSize276 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %210, i32 0, i32 38, !dbg !4431
  store i64 %209, ptr %inBuffSize276, align 8, !dbg !4432
  %211 = load ptr, ptr %zds.addr, align 8, !dbg !4433
  %inBuff277 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %211, i32 0, i32 37, !dbg !4434
  %212 = load ptr, ptr %inBuff277, align 8, !dbg !4434
  %213 = load ptr, ptr %zds.addr, align 8, !dbg !4435
  %inBuffSize278 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %213, i32 0, i32 38, !dbg !4436
  %214 = load i64, ptr %inBuffSize278, align 8, !dbg !4436
  %add.ptr279 = getelementptr i8, ptr %212, i64 %214, !dbg !4437
  %215 = load ptr, ptr %zds.addr, align 8, !dbg !4438
  %outBuff = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %215, i32 0, i32 41, !dbg !4439
  store ptr %add.ptr279, ptr %outBuff, align 8, !dbg !4440
  %216 = load i64, ptr %neededOutBuffSize, align 8, !dbg !4441
  %217 = load ptr, ptr %zds.addr, align 8, !dbg !4442
  %outBuffSize280 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %217, i32 0, i32 42, !dbg !4443
  store i64 %216, ptr %outBuffSize280, align 8, !dbg !4444
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4445
  br label %cleanup281, !dbg !4445

cleanup281:                                       ; preds = %if.end275, %if.then273, %if.then262
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufferSize) #8, !dbg !4445
  %cleanup.dest282 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest282, label %cleanup285 [
    i32 0, label %cleanup.cont283
  ]

cleanup.cont283:                                  ; preds = %cleanup281
  br label %if.end284, !dbg !4446

if.end284:                                        ; preds = %cleanup.cont283, %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4447
  br label %cleanup285, !dbg !4447

cleanup285:                                       ; preds = %if.end284, %cleanup281
  call void @llvm.lifetime.end.p0(i64 4, ptr %tooLarge) #8, !dbg !4447
  call void @llvm.lifetime.end.p0(i64 4, ptr %tooSmall) #8, !dbg !4447
  %cleanup.dest287 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest287, label %cleanup289 [
    i32 0, label %cleanup.cont288
  ]

cleanup.cont288:                                  ; preds = %cleanup285
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4448
  br label %cleanup289, !dbg !4448

cleanup289:                                       ; preds = %cleanup.cont288, %cleanup285
  call void @llvm.lifetime.end.p0(i64 8, ptr %neededOutBuffSize) #8, !dbg !4448
  call void @llvm.lifetime.end.p0(i64 8, ptr %neededInBuffSize) #8, !dbg !4448
  %cleanup.dest291 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest291, label %cleanup509 [
    i32 0, label %cleanup.cont292
  ]

cleanup.cont292:                                  ; preds = %cleanup289
  %218 = load ptr, ptr %zds.addr, align 8, !dbg !4449
  %streamStage293 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %218, i32 0, i32 36, !dbg !4450
  store i32 2, ptr %streamStage293, align 4, !dbg !4451
  br label %sw.bb294, !dbg !4449

sw.bb294:                                         ; preds = %while.body, %cleanup.cont292
  call void @llvm.lifetime.start.p0(i64 8, ptr %neededInSize) #8, !dbg !4452
  call void @llvm.dbg.declare(metadata ptr %neededInSize, metadata !4010, metadata !DIExpression()), !dbg !4453
  %219 = load ptr, ptr %zds.addr, align 8, !dbg !4454
  %220 = load ptr, ptr %iend, align 8, !dbg !4455
  %221 = load ptr, ptr %ip, align 8, !dbg !4456
  %sub.ptr.lhs.cast295 = ptrtoint ptr %220 to i64, !dbg !4457
  %sub.ptr.rhs.cast296 = ptrtoint ptr %221 to i64, !dbg !4457
  %sub.ptr.sub297 = sub i64 %sub.ptr.lhs.cast295, %sub.ptr.rhs.cast296, !dbg !4457
  %call298 = call i64 @ZSTD_nextSrcSizeToDecompressWithInputSize(ptr noundef %219, i64 noundef %sub.ptr.sub297) #7, !dbg !4458
  store i64 %call298, ptr %neededInSize, align 8, !dbg !4453
  %222 = load i64, ptr %neededInSize, align 8, !dbg !4459
  %cmp299 = icmp eq i64 %222, 0, !dbg !4461
  br i1 %cmp299, label %if.then301, label %if.end303, !dbg !4462

if.then301:                                       ; preds = %sw.bb294
  %223 = load ptr, ptr %zds.addr, align 8, !dbg !4463
  %streamStage302 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %223, i32 0, i32 36, !dbg !4465
  store i32 0, ptr %streamStage302, align 4, !dbg !4466
  store i32 0, ptr %someMoreWork, align 4, !dbg !4467
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup324, !dbg !4468

if.end303:                                        ; preds = %sw.bb294
  %224 = load ptr, ptr %iend, align 8, !dbg !4469
  %225 = load ptr, ptr %ip, align 8, !dbg !4470
  %sub.ptr.lhs.cast304 = ptrtoint ptr %224 to i64, !dbg !4471
  %sub.ptr.rhs.cast305 = ptrtoint ptr %225 to i64, !dbg !4471
  %sub.ptr.sub306 = sub i64 %sub.ptr.lhs.cast304, %sub.ptr.rhs.cast305, !dbg !4471
  %226 = load i64, ptr %neededInSize, align 8, !dbg !4472
  %cmp307 = icmp uge i64 %sub.ptr.sub306, %226, !dbg !4473
  br i1 %cmp307, label %if.then309, label %if.end323, !dbg !4474

if.then309:                                       ; preds = %if.end303
  br label %do.body310, !dbg !4475

do.body310:                                       ; preds = %if.then309
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code311) #8, !dbg !4476
  call void @llvm.dbg.declare(metadata ptr %err_code311, metadata !4012, metadata !DIExpression()), !dbg !4476
  %227 = load ptr, ptr %zds.addr, align 8, !dbg !4476
  %228 = load ptr, ptr %oend, align 8, !dbg !4476
  %229 = load ptr, ptr %ip, align 8, !dbg !4476
  %230 = load i64, ptr %neededInSize, align 8, !dbg !4476
  %call312 = call i64 @ZSTD_decompressContinueStream(ptr noundef %227, ptr noundef %op, ptr noundef %228, ptr noundef %229, i64 noundef %230) #7, !dbg !4476
  store i64 %call312, ptr %err_code311, align 8, !dbg !4476
  %231 = load i64, ptr %err_code311, align 8, !dbg !4477
  %call313 = call i32 @ERR_isError(i64 noundef %231) #7, !dbg !4477
  %tobool314 = icmp ne i32 %call313, 0, !dbg !4477
  br i1 %tobool314, label %if.then315, label %if.end316, !dbg !4476

if.then315:                                       ; preds = %do.body310
  %232 = load i64, ptr %err_code311, align 8, !dbg !4479
  store i64 %232, ptr %retval, align 8, !dbg !4479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup317, !dbg !4479

if.end316:                                        ; preds = %do.body310
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4475
  br label %cleanup317, !dbg !4475

cleanup317:                                       ; preds = %if.end316, %if.then315
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code311) #8, !dbg !4475
  %cleanup.dest318 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest318, label %cleanup324 [
    i32 0, label %cleanup.cont319
  ]

cleanup.cont319:                                  ; preds = %cleanup317
  br label %do.cond320, !dbg !4476

do.cond320:                                       ; preds = %cleanup.cont319
  br label %do.end321, !dbg !4476

do.end321:                                        ; preds = %do.cond320
  %233 = load i64, ptr %neededInSize, align 8, !dbg !4481
  %234 = load ptr, ptr %ip, align 8, !dbg !4482
  %add.ptr322 = getelementptr i8, ptr %234, i64 %233, !dbg !4482
  store ptr %add.ptr322, ptr %ip, align 8, !dbg !4482
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup324, !dbg !4483

if.end323:                                        ; preds = %if.end303
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4484
  br label %cleanup324, !dbg !4484

cleanup324:                                       ; preds = %if.end323, %do.end321, %cleanup317, %if.then301
  call void @llvm.lifetime.end.p0(i64 8, ptr %neededInSize) #8, !dbg !4484
  %cleanup.dest325 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest325, label %cleanup509 [
    i32 0, label %cleanup.cont326
    i32 6, label %sw.epilog
  ]

cleanup.cont326:                                  ; preds = %cleanup324
  %235 = load ptr, ptr %ip, align 8, !dbg !4485
  %236 = load ptr, ptr %iend, align 8, !dbg !4487
  %cmp327 = icmp eq ptr %235, %236, !dbg !4488
  br i1 %cmp327, label %if.then329, label %if.end330, !dbg !4489

if.then329:                                       ; preds = %cleanup.cont326
  store i32 0, ptr %someMoreWork, align 4, !dbg !4490
  br label %sw.epilog, !dbg !4492

if.end330:                                        ; preds = %cleanup.cont326
  %237 = load ptr, ptr %zds.addr, align 8, !dbg !4493
  %streamStage331 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %237, i32 0, i32 36, !dbg !4494
  store i32 3, ptr %streamStage331, align 4, !dbg !4495
  br label %sw.bb332, !dbg !4493

sw.bb332:                                         ; preds = %while.body, %if.end330
  call void @llvm.lifetime.start.p0(i64 8, ptr %neededInSize333) #8, !dbg !4496
  call void @llvm.dbg.declare(metadata ptr %neededInSize333, metadata !4016, metadata !DIExpression()), !dbg !4497
  %238 = load ptr, ptr %zds.addr, align 8, !dbg !4498
  %call334 = call i64 @ZSTD_nextSrcSizeToDecompress(ptr noundef %238) #7, !dbg !4499
  store i64 %call334, ptr %neededInSize333, align 8, !dbg !4497
  call void @llvm.lifetime.start.p0(i64 8, ptr %toLoad335) #8, !dbg !4500
  call void @llvm.dbg.declare(metadata ptr %toLoad335, metadata !4018, metadata !DIExpression()), !dbg !4501
  %239 = load i64, ptr %neededInSize333, align 8, !dbg !4502
  %240 = load ptr, ptr %zds.addr, align 8, !dbg !4503
  %inPos336 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %240, i32 0, i32 39, !dbg !4504
  %241 = load i64, ptr %inPos336, align 8, !dbg !4504
  %sub337 = sub i64 %239, %241, !dbg !4505
  store i64 %sub337, ptr %toLoad335, align 8, !dbg !4501
  call void @llvm.lifetime.start.p0(i64 4, ptr %isSkipFrame) #8, !dbg !4506
  call void @llvm.dbg.declare(metadata ptr %isSkipFrame, metadata !4019, metadata !DIExpression()), !dbg !4507
  %242 = load ptr, ptr %zds.addr, align 8, !dbg !4508
  %call338 = call i32 @ZSTD_isSkipFrame(ptr noundef %242) #7, !dbg !4509
  store i32 %call338, ptr %isSkipFrame, align 4, !dbg !4507
  call void @llvm.lifetime.start.p0(i64 8, ptr %loadedSize) #8, !dbg !4510
  call void @llvm.dbg.declare(metadata ptr %loadedSize, metadata !4020, metadata !DIExpression()), !dbg !4511
  %243 = load i32, ptr %isSkipFrame, align 4, !dbg !4512
  %tobool339 = icmp ne i32 %243, 0, !dbg !4512
  br i1 %tobool339, label %if.then340, label %if.else353, !dbg !4514

if.then340:                                       ; preds = %sw.bb332
  %244 = load i64, ptr %toLoad335, align 8, !dbg !4515
  %245 = load ptr, ptr %iend, align 8, !dbg !4515
  %246 = load ptr, ptr %ip, align 8, !dbg !4515
  %sub.ptr.lhs.cast341 = ptrtoint ptr %245 to i64, !dbg !4515
  %sub.ptr.rhs.cast342 = ptrtoint ptr %246 to i64, !dbg !4515
  %sub.ptr.sub343 = sub i64 %sub.ptr.lhs.cast341, %sub.ptr.rhs.cast342, !dbg !4515
  %cmp344 = icmp ult i64 %244, %sub.ptr.sub343, !dbg !4515
  br i1 %cmp344, label %cond.true346, label %cond.false347, !dbg !4515

cond.true346:                                     ; preds = %if.then340
  %247 = load i64, ptr %toLoad335, align 8, !dbg !4515
  br label %cond.end351, !dbg !4515

cond.false347:                                    ; preds = %if.then340
  %248 = load ptr, ptr %iend, align 8, !dbg !4515
  %249 = load ptr, ptr %ip, align 8, !dbg !4515
  %sub.ptr.lhs.cast348 = ptrtoint ptr %248 to i64, !dbg !4515
  %sub.ptr.rhs.cast349 = ptrtoint ptr %249 to i64, !dbg !4515
  %sub.ptr.sub350 = sub i64 %sub.ptr.lhs.cast348, %sub.ptr.rhs.cast349, !dbg !4515
  br label %cond.end351, !dbg !4515

cond.end351:                                      ; preds = %cond.false347, %cond.true346
  %cond352 = phi i64 [ %247, %cond.true346 ], [ %sub.ptr.sub350, %cond.false347 ], !dbg !4515
  store i64 %cond352, ptr %loadedSize, align 8, !dbg !4517
  br label %if.end368, !dbg !4518

if.else353:                                       ; preds = %sw.bb332
  %250 = load i64, ptr %toLoad335, align 8, !dbg !4519
  %251 = load ptr, ptr %zds.addr, align 8, !dbg !4519
  %inBuffSize354 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %251, i32 0, i32 38, !dbg !4519
  %252 = load i64, ptr %inBuffSize354, align 8, !dbg !4519
  %253 = load ptr, ptr %zds.addr, align 8, !dbg !4519
  %inPos355 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %253, i32 0, i32 39, !dbg !4519
  %254 = load i64, ptr %inPos355, align 8, !dbg !4519
  %sub356 = sub i64 %252, %254, !dbg !4519
  %cmp357 = icmp ugt i64 %250, %sub356, !dbg !4519
  br i1 %cmp357, label %if.then359, label %if.end360, !dbg !4522

if.then359:                                       ; preds = %if.else353
  store i64 -20, ptr %retval, align 8, !dbg !4523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup390, !dbg !4523

if.end360:                                        ; preds = %if.else353
  %255 = load ptr, ptr %zds.addr, align 8, !dbg !4525
  %inBuff361 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %255, i32 0, i32 37, !dbg !4526
  %256 = load ptr, ptr %inBuff361, align 8, !dbg !4526
  %257 = load ptr, ptr %zds.addr, align 8, !dbg !4527
  %inPos362 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %257, i32 0, i32 39, !dbg !4528
  %258 = load i64, ptr %inPos362, align 8, !dbg !4528
  %add.ptr363 = getelementptr i8, ptr %256, i64 %258, !dbg !4529
  %259 = load i64, ptr %toLoad335, align 8, !dbg !4530
  %260 = load ptr, ptr %ip, align 8, !dbg !4531
  %261 = load ptr, ptr %iend, align 8, !dbg !4532
  %262 = load ptr, ptr %ip, align 8, !dbg !4533
  %sub.ptr.lhs.cast364 = ptrtoint ptr %261 to i64, !dbg !4534
  %sub.ptr.rhs.cast365 = ptrtoint ptr %262 to i64, !dbg !4534
  %sub.ptr.sub366 = sub i64 %sub.ptr.lhs.cast364, %sub.ptr.rhs.cast365, !dbg !4534
  %call367 = call i64 @ZSTD_limitCopy(ptr noundef %add.ptr363, i64 noundef %259, ptr noundef %260, i64 noundef %sub.ptr.sub366) #7, !dbg !4535
  store i64 %call367, ptr %loadedSize, align 8, !dbg !4536
  br label %if.end368

if.end368:                                        ; preds = %if.end360, %cond.end351
  %263 = load i64, ptr %loadedSize, align 8, !dbg !4537
  %264 = load ptr, ptr %ip, align 8, !dbg !4538
  %add.ptr369 = getelementptr i8, ptr %264, i64 %263, !dbg !4538
  store ptr %add.ptr369, ptr %ip, align 8, !dbg !4538
  %265 = load i64, ptr %loadedSize, align 8, !dbg !4539
  %266 = load ptr, ptr %zds.addr, align 8, !dbg !4540
  %inPos370 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %266, i32 0, i32 39, !dbg !4541
  %267 = load i64, ptr %inPos370, align 8, !dbg !4542
  %add371 = add i64 %267, %265, !dbg !4542
  store i64 %add371, ptr %inPos370, align 8, !dbg !4542
  %268 = load i64, ptr %loadedSize, align 8, !dbg !4543
  %269 = load i64, ptr %toLoad335, align 8, !dbg !4545
  %cmp372 = icmp ult i64 %268, %269, !dbg !4546
  br i1 %cmp372, label %if.then374, label %if.end375, !dbg !4547

if.then374:                                       ; preds = %if.end368
  store i32 0, ptr %someMoreWork, align 4, !dbg !4548
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup390, !dbg !4550

if.end375:                                        ; preds = %if.end368
  %270 = load ptr, ptr %zds.addr, align 8, !dbg !4551
  %inPos376 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %270, i32 0, i32 39, !dbg !4552
  store i64 0, ptr %inPos376, align 8, !dbg !4553
  br label %do.body377, !dbg !4554

do.body377:                                       ; preds = %if.end375
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code378) #8, !dbg !4555
  call void @llvm.dbg.declare(metadata ptr %err_code378, metadata !4021, metadata !DIExpression()), !dbg !4555
  %271 = load ptr, ptr %zds.addr, align 8, !dbg !4555
  %272 = load ptr, ptr %oend, align 8, !dbg !4555
  %273 = load ptr, ptr %zds.addr, align 8, !dbg !4555
  %inBuff379 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %273, i32 0, i32 37, !dbg !4555
  %274 = load ptr, ptr %inBuff379, align 8, !dbg !4555
  %275 = load i64, ptr %neededInSize333, align 8, !dbg !4555
  %call380 = call i64 @ZSTD_decompressContinueStream(ptr noundef %271, ptr noundef %op, ptr noundef %272, ptr noundef %274, i64 noundef %275) #7, !dbg !4555
  store i64 %call380, ptr %err_code378, align 8, !dbg !4555
  %276 = load i64, ptr %err_code378, align 8, !dbg !4556
  %call381 = call i32 @ERR_isError(i64 noundef %276) #7, !dbg !4556
  %tobool382 = icmp ne i32 %call381, 0, !dbg !4556
  br i1 %tobool382, label %if.then383, label %if.end384, !dbg !4555

if.then383:                                       ; preds = %do.body377
  %277 = load i64, ptr %err_code378, align 8, !dbg !4558
  store i64 %277, ptr %retval, align 8, !dbg !4558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup385, !dbg !4558

if.end384:                                        ; preds = %do.body377
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4554
  br label %cleanup385, !dbg !4554

cleanup385:                                       ; preds = %if.end384, %if.then383
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code378) #8, !dbg !4554
  %cleanup.dest386 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest386, label %cleanup390 [
    i32 0, label %cleanup.cont387
  ]

cleanup.cont387:                                  ; preds = %cleanup385
  br label %do.cond388, !dbg !4555

do.cond388:                                       ; preds = %cleanup.cont387
  br label %do.end389, !dbg !4555

do.end389:                                        ; preds = %do.cond388
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup390, !dbg !4560

cleanup390:                                       ; preds = %do.end389, %cleanup385, %if.then374, %if.then359
  call void @llvm.lifetime.end.p0(i64 8, ptr %loadedSize) #8, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 4, ptr %isSkipFrame) #8, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 8, ptr %toLoad335) #8, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 8, ptr %neededInSize333) #8, !dbg !4561
  %cleanup.dest394 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest394, label %cleanup509 [
    i32 6, label %sw.epilog
  ]

sw.bb395:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %toFlushSize) #8, !dbg !4562
  call void @llvm.dbg.declare(metadata ptr %toFlushSize, metadata !4023, metadata !DIExpression()), !dbg !4563
  %278 = load ptr, ptr %zds.addr, align 8, !dbg !4564
  %outEnd396 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %278, i32 0, i32 44, !dbg !4565
  %279 = load i64, ptr %outEnd396, align 8, !dbg !4565
  %280 = load ptr, ptr %zds.addr, align 8, !dbg !4566
  %outStart397 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %280, i32 0, i32 43, !dbg !4567
  %281 = load i64, ptr %outStart397, align 8, !dbg !4567
  %sub398 = sub i64 %279, %281, !dbg !4568
  store i64 %sub398, ptr %toFlushSize, align 8, !dbg !4563
  call void @llvm.lifetime.start.p0(i64 8, ptr %flushedSize) #8, !dbg !4569
  call void @llvm.dbg.declare(metadata ptr %flushedSize, metadata !4025, metadata !DIExpression()), !dbg !4570
  %282 = load ptr, ptr %op, align 8, !dbg !4571
  %283 = load ptr, ptr %oend, align 8, !dbg !4572
  %284 = load ptr, ptr %op, align 8, !dbg !4573
  %sub.ptr.lhs.cast399 = ptrtoint ptr %283 to i64, !dbg !4574
  %sub.ptr.rhs.cast400 = ptrtoint ptr %284 to i64, !dbg !4574
  %sub.ptr.sub401 = sub i64 %sub.ptr.lhs.cast399, %sub.ptr.rhs.cast400, !dbg !4574
  %285 = load ptr, ptr %zds.addr, align 8, !dbg !4575
  %outBuff402 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %285, i32 0, i32 41, !dbg !4576
  %286 = load ptr, ptr %outBuff402, align 8, !dbg !4576
  %287 = load ptr, ptr %zds.addr, align 8, !dbg !4577
  %outStart403 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %287, i32 0, i32 43, !dbg !4578
  %288 = load i64, ptr %outStart403, align 8, !dbg !4578
  %add.ptr404 = getelementptr i8, ptr %286, i64 %288, !dbg !4579
  %289 = load i64, ptr %toFlushSize, align 8, !dbg !4580
  %call405 = call i64 @ZSTD_limitCopy(ptr noundef %282, i64 noundef %sub.ptr.sub401, ptr noundef %add.ptr404, i64 noundef %289) #7, !dbg !4581
  store i64 %call405, ptr %flushedSize, align 8, !dbg !4570
  %290 = load i64, ptr %flushedSize, align 8, !dbg !4582
  %291 = load ptr, ptr %op, align 8, !dbg !4583
  %add.ptr406 = getelementptr i8, ptr %291, i64 %290, !dbg !4583
  store ptr %add.ptr406, ptr %op, align 8, !dbg !4583
  %292 = load i64, ptr %flushedSize, align 8, !dbg !4584
  %293 = load ptr, ptr %zds.addr, align 8, !dbg !4585
  %outStart407 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %293, i32 0, i32 43, !dbg !4586
  %294 = load i64, ptr %outStart407, align 8, !dbg !4587
  %add408 = add i64 %294, %292, !dbg !4587
  store i64 %add408, ptr %outStart407, align 8, !dbg !4587
  %295 = load i64, ptr %flushedSize, align 8, !dbg !4588
  %296 = load i64, ptr %toFlushSize, align 8, !dbg !4590
  %cmp409 = icmp eq i64 %295, %296, !dbg !4591
  br i1 %cmp409, label %if.then411, label %if.end431, !dbg !4592

if.then411:                                       ; preds = %sw.bb395
  %297 = load ptr, ptr %zds.addr, align 8, !dbg !4593
  %streamStage412 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %297, i32 0, i32 36, !dbg !4595
  store i32 2, ptr %streamStage412, align 4, !dbg !4596
  %298 = load ptr, ptr %zds.addr, align 8, !dbg !4597
  %outBuffSize413 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %298, i32 0, i32 42, !dbg !4599
  %299 = load i64, ptr %outBuffSize413, align 8, !dbg !4599
  %300 = load ptr, ptr %zds.addr, align 8, !dbg !4600
  %fParams414 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %300, i32 0, i32 11, !dbg !4601
  %frameContentSize415 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams414, i32 0, i32 0, !dbg !4602
  %301 = load i64, ptr %frameContentSize415, align 8, !dbg !4602
  %cmp416 = icmp ult i64 %299, %301, !dbg !4603
  br i1 %cmp416, label %land.lhs.true418, label %if.end430, !dbg !4604

land.lhs.true418:                                 ; preds = %if.then411
  %302 = load ptr, ptr %zds.addr, align 8, !dbg !4605
  %outStart419 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %302, i32 0, i32 43, !dbg !4606
  %303 = load i64, ptr %outStart419, align 8, !dbg !4606
  %304 = load ptr, ptr %zds.addr, align 8, !dbg !4607
  %fParams420 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %304, i32 0, i32 11, !dbg !4608
  %blockSizeMax421 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams420, i32 0, i32 2, !dbg !4609
  %305 = load i32, ptr %blockSizeMax421, align 8, !dbg !4609
  %conv422 = zext i32 %305 to i64, !dbg !4607
  %add423 = add i64 %303, %conv422, !dbg !4610
  %306 = load ptr, ptr %zds.addr, align 8, !dbg !4611
  %outBuffSize424 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %306, i32 0, i32 42, !dbg !4612
  %307 = load i64, ptr %outBuffSize424, align 8, !dbg !4612
  %cmp425 = icmp ugt i64 %add423, %307, !dbg !4613
  br i1 %cmp425, label %if.then427, label %if.end430, !dbg !4614

if.then427:                                       ; preds = %land.lhs.true418
  %308 = load ptr, ptr %zds.addr, align 8, !dbg !4615
  %outEnd428 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %308, i32 0, i32 44, !dbg !4617
  store i64 0, ptr %outEnd428, align 8, !dbg !4618
  %309 = load ptr, ptr %zds.addr, align 8, !dbg !4619
  %outStart429 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %309, i32 0, i32 43, !dbg !4620
  store i64 0, ptr %outStart429, align 8, !dbg !4621
  br label %if.end430, !dbg !4622

if.end430:                                        ; preds = %if.then427, %land.lhs.true418, %if.then411
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup432, !dbg !4623

if.end431:                                        ; preds = %sw.bb395
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4624
  br label %cleanup432, !dbg !4624

cleanup432:                                       ; preds = %if.end431, %if.end430
  call void @llvm.lifetime.end.p0(i64 8, ptr %flushedSize) #8, !dbg !4624
  call void @llvm.lifetime.end.p0(i64 8, ptr %toFlushSize) #8, !dbg !4624
  %cleanup.dest434 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest434, label %unreachable [
    i32 0, label %cleanup.cont435
    i32 6, label %sw.epilog
  ]

cleanup.cont435:                                  ; preds = %cleanup432
  store i32 0, ptr %someMoreWork, align 4, !dbg !4625
  br label %sw.epilog, !dbg !4626

sw.default:                                       ; preds = %while.body
  br label %do.body436, !dbg !4627

do.body436:                                       ; preds = %sw.default
  store i64 -1, ptr %retval, align 8, !dbg !4628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup509, !dbg !4628

do.cond437:                                       ; No predecessors!
  br label %do.end438, !dbg !4628

do.end438:                                        ; preds = %do.cond437
  br label %sw.epilog, !dbg !4630

sw.epilog:                                        ; preds = %do.end438, %cleanup.cont435, %cleanup432, %cleanup390, %if.then329, %cleanup324, %cleanup136, %cleanup93
  br label %while.cond, !dbg !4103, !llvm.loop !4631

while.end:                                        ; preds = %while.cond
  %310 = load ptr, ptr %ip, align 8, !dbg !4633
  %311 = load ptr, ptr %input.addr, align 8, !dbg !4634
  %src439 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %311, i32 0, i32 0, !dbg !4635
  %312 = load ptr, ptr %src439, align 8, !dbg !4635
  %sub.ptr.lhs.cast440 = ptrtoint ptr %310 to i64, !dbg !4636
  %sub.ptr.rhs.cast441 = ptrtoint ptr %312 to i64, !dbg !4636
  %sub.ptr.sub442 = sub i64 %sub.ptr.lhs.cast440, %sub.ptr.rhs.cast441, !dbg !4636
  %313 = load ptr, ptr %input.addr, align 8, !dbg !4637
  %pos443 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %313, i32 0, i32 2, !dbg !4638
  store i64 %sub.ptr.sub442, ptr %pos443, align 8, !dbg !4639
  %314 = load ptr, ptr %op, align 8, !dbg !4640
  %315 = load ptr, ptr %output.addr, align 8, !dbg !4641
  %dst444 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %315, i32 0, i32 0, !dbg !4642
  %316 = load ptr, ptr %dst444, align 8, !dbg !4642
  %sub.ptr.lhs.cast445 = ptrtoint ptr %314 to i64, !dbg !4643
  %sub.ptr.rhs.cast446 = ptrtoint ptr %316 to i64, !dbg !4643
  %sub.ptr.sub447 = sub i64 %sub.ptr.lhs.cast445, %sub.ptr.rhs.cast446, !dbg !4643
  %317 = load ptr, ptr %output.addr, align 8, !dbg !4644
  %pos448 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %317, i32 0, i32 2, !dbg !4645
  store i64 %sub.ptr.sub447, ptr %pos448, align 8, !dbg !4646
  %318 = load ptr, ptr %zds.addr, align 8, !dbg !4647
  %expectedOutBuffer449 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %318, i32 0, i32 49, !dbg !4648
  %319 = load ptr, ptr %output.addr, align 8, !dbg !4649
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %expectedOutBuffer449, ptr align 8 %319, i64 24, i1 false), !dbg !4650
  %320 = load ptr, ptr %ip, align 8, !dbg !4651
  %321 = load ptr, ptr %istart, align 8, !dbg !4653
  %cmp450 = icmp eq ptr %320, %321, !dbg !4654
  br i1 %cmp450, label %land.lhs.true452, label %if.else469, !dbg !4655

land.lhs.true452:                                 ; preds = %while.end
  %322 = load ptr, ptr %op, align 8, !dbg !4656
  %323 = load ptr, ptr %ostart, align 8, !dbg !4657
  %cmp453 = icmp eq ptr %322, %323, !dbg !4658
  br i1 %cmp453, label %if.then455, label %if.else469, !dbg !4659

if.then455:                                       ; preds = %land.lhs.true452
  %324 = load ptr, ptr %zds.addr, align 8, !dbg !4660
  %noForwardProgress = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %324, i32 0, i32 47, !dbg !4662
  %325 = load i32, ptr %noForwardProgress, align 4, !dbg !4663
  %inc = add i32 %325, 1, !dbg !4663
  store i32 %inc, ptr %noForwardProgress, align 4, !dbg !4663
  %326 = load ptr, ptr %zds.addr, align 8, !dbg !4664
  %noForwardProgress456 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %326, i32 0, i32 47, !dbg !4666
  %327 = load i32, ptr %noForwardProgress456, align 4, !dbg !4666
  %cmp457 = icmp sge i32 %327, 16, !dbg !4667
  br i1 %cmp457, label %if.then459, label %if.end468, !dbg !4668

if.then459:                                       ; preds = %if.then455
  %328 = load ptr, ptr %op, align 8, !dbg !4669
  %329 = load ptr, ptr %oend, align 8, !dbg !4669
  %cmp460 = icmp eq ptr %328, %329, !dbg !4669
  br i1 %cmp460, label %if.then462, label %if.end463, !dbg !4672

if.then462:                                       ; preds = %if.then459
  store i64 -70, ptr %retval, align 8, !dbg !4673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup509, !dbg !4673

if.end463:                                        ; preds = %if.then459
  %330 = load ptr, ptr %ip, align 8, !dbg !4675
  %331 = load ptr, ptr %iend, align 8, !dbg !4675
  %cmp464 = icmp eq ptr %330, %331, !dbg !4675
  br i1 %cmp464, label %if.then466, label %if.end467, !dbg !4677

if.then466:                                       ; preds = %if.end463
  store i64 -72, ptr %retval, align 8, !dbg !4678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup509, !dbg !4678

if.end467:                                        ; preds = %if.end463
  br label %if.end468, !dbg !4680

if.end468:                                        ; preds = %if.end467, %if.then455
  br label %if.end471, !dbg !4681

if.else469:                                       ; preds = %land.lhs.true452, %while.end
  %332 = load ptr, ptr %zds.addr, align 8, !dbg !4682
  %noForwardProgress470 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %332, i32 0, i32 47, !dbg !4684
  store i32 0, ptr %noForwardProgress470, align 4, !dbg !4685
  br label %if.end471

if.end471:                                        ; preds = %if.else469, %if.end468
  call void @llvm.lifetime.start.p0(i64 8, ptr %nextSrcSizeHint) #8, !dbg !4686
  call void @llvm.dbg.declare(metadata ptr %nextSrcSizeHint, metadata !4026, metadata !DIExpression()), !dbg !4687
  %333 = load ptr, ptr %zds.addr, align 8, !dbg !4688
  %call472 = call i64 @ZSTD_nextSrcSizeToDecompress(ptr noundef %333) #7, !dbg !4689
  store i64 %call472, ptr %nextSrcSizeHint, align 8, !dbg !4687
  %334 = load i64, ptr %nextSrcSizeHint, align 8, !dbg !4690
  %tobool473 = icmp ne i64 %334, 0, !dbg !4690
  br i1 %tobool473, label %if.end500, label %if.then474, !dbg !4692

if.then474:                                       ; preds = %if.end471
  %335 = load ptr, ptr %zds.addr, align 8, !dbg !4693
  %outEnd475 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %335, i32 0, i32 44, !dbg !4696
  %336 = load i64, ptr %outEnd475, align 8, !dbg !4696
  %337 = load ptr, ptr %zds.addr, align 8, !dbg !4697
  %outStart476 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %337, i32 0, i32 43, !dbg !4698
  %338 = load i64, ptr %outStart476, align 8, !dbg !4698
  %cmp477 = icmp eq i64 %336, %338, !dbg !4699
  br i1 %cmp477, label %if.then479, label %if.end493, !dbg !4700

if.then479:                                       ; preds = %if.then474
  %339 = load ptr, ptr %zds.addr, align 8, !dbg !4701
  %hostageByte480 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %339, i32 0, i32 46, !dbg !4704
  %340 = load i32, ptr %hostageByte480, align 8, !dbg !4704
  %tobool481 = icmp ne i32 %340, 0, !dbg !4701
  br i1 %tobool481, label %if.then482, label %if.end492, !dbg !4705

if.then482:                                       ; preds = %if.then479
  %341 = load ptr, ptr %input.addr, align 8, !dbg !4706
  %pos483 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %341, i32 0, i32 2, !dbg !4709
  %342 = load i64, ptr %pos483, align 8, !dbg !4709
  %343 = load ptr, ptr %input.addr, align 8, !dbg !4710
  %size484 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %343, i32 0, i32 1, !dbg !4711
  %344 = load i64, ptr %size484, align 8, !dbg !4711
  %cmp485 = icmp uge i64 %342, %344, !dbg !4712
  br i1 %cmp485, label %if.then487, label %if.end489, !dbg !4713

if.then487:                                       ; preds = %if.then482
  %345 = load ptr, ptr %zds.addr, align 8, !dbg !4714
  %streamStage488 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %345, i32 0, i32 36, !dbg !4716
  store i32 2, ptr %streamStage488, align 4, !dbg !4717
  store i64 1, ptr %retval, align 8, !dbg !4718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup508, !dbg !4718

if.end489:                                        ; preds = %if.then482
  %346 = load ptr, ptr %input.addr, align 8, !dbg !4719
  %pos490 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %346, i32 0, i32 2, !dbg !4720
  %347 = load i64, ptr %pos490, align 8, !dbg !4721
  %inc491 = add i64 %347, 1, !dbg !4721
  store i64 %inc491, ptr %pos490, align 8, !dbg !4721
  br label %if.end492, !dbg !4722

if.end492:                                        ; preds = %if.end489, %if.then479
  store i64 0, ptr %retval, align 8, !dbg !4723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup508, !dbg !4723

if.end493:                                        ; preds = %if.then474
  %348 = load ptr, ptr %zds.addr, align 8, !dbg !4724
  %hostageByte494 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %348, i32 0, i32 46, !dbg !4726
  %349 = load i32, ptr %hostageByte494, align 8, !dbg !4726
  %tobool495 = icmp ne i32 %349, 0, !dbg !4724
  br i1 %tobool495, label %if.end499, label %if.then496, !dbg !4727

if.then496:                                       ; preds = %if.end493
  %350 = load ptr, ptr %input.addr, align 8, !dbg !4728
  %pos497 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %350, i32 0, i32 2, !dbg !4730
  %351 = load i64, ptr %pos497, align 8, !dbg !4731
  %dec = add i64 %351, -1, !dbg !4731
  store i64 %dec, ptr %pos497, align 8, !dbg !4731
  %352 = load ptr, ptr %zds.addr, align 8, !dbg !4732
  %hostageByte498 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %352, i32 0, i32 46, !dbg !4733
  store i32 1, ptr %hostageByte498, align 8, !dbg !4734
  br label %if.end499, !dbg !4735

if.end499:                                        ; preds = %if.then496, %if.end493
  store i64 1, ptr %retval, align 8, !dbg !4736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup508, !dbg !4736

if.end500:                                        ; preds = %if.end471
  %353 = load ptr, ptr %zds.addr, align 8, !dbg !4737
  %call501 = call i32 @ZSTD_nextInputType(ptr noundef %353) #7, !dbg !4738
  %cmp502 = icmp eq i32 %call501, 2, !dbg !4739
  %conv503 = zext i1 %cmp502 to i32, !dbg !4739
  %conv504 = sext i32 %conv503 to i64, !dbg !4740
  %mul = mul i64 3, %conv504, !dbg !4741
  %354 = load i64, ptr %nextSrcSizeHint, align 8, !dbg !4742
  %add505 = add i64 %354, %mul, !dbg !4742
  store i64 %add505, ptr %nextSrcSizeHint, align 8, !dbg !4742
  %355 = load ptr, ptr %zds.addr, align 8, !dbg !4743
  %inPos506 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %355, i32 0, i32 39, !dbg !4744
  %356 = load i64, ptr %inPos506, align 8, !dbg !4744
  %357 = load i64, ptr %nextSrcSizeHint, align 8, !dbg !4745
  %sub507 = sub i64 %357, %356, !dbg !4745
  store i64 %sub507, ptr %nextSrcSizeHint, align 8, !dbg !4745
  %358 = load i64, ptr %nextSrcSizeHint, align 8, !dbg !4746
  store i64 %358, ptr %retval, align 8, !dbg !4747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup508, !dbg !4747

cleanup508:                                       ; preds = %if.end500, %if.end499, %if.end492, %if.then487
  call void @llvm.lifetime.end.p0(i64 8, ptr %nextSrcSizeHint) #8, !dbg !4748
  br label %cleanup509

cleanup509:                                       ; preds = %cleanup508, %if.then466, %if.then462, %do.body436, %cleanup390, %cleanup324, %cleanup289, %if.then223, %cleanup200, %cleanup173, %do.body161, %cleanup136, %cleanup93, %cleanup, %if.then33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %someMoreWork) #8, !dbg !4749
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #8, !dbg !4749
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #8, !dbg !4749
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #8, !dbg !4749
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #8, !dbg !4749
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #8, !dbg !4749
  call void @llvm.lifetime.end.p0(i64 8, ptr %iend) #8, !dbg !4749
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart) #8, !dbg !4749
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #8, !dbg !4749
  %359 = load i64, ptr %retval, align 8, !dbg !4749
  ret i64 %359, !dbg !4749

unreachable:                                      ; preds = %cleanup432
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_checkOutBuffer(ptr noundef %zds, ptr noundef %output) #0 align 16 !dbg !4750 {
entry:
  %retval = alloca i64, align 8
  %zds.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %expect = alloca %struct.ZSTD_outBuffer_s, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %zds, ptr %zds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zds.addr, metadata !4756, metadata !DIExpression()), !dbg !4759
  store ptr %output, ptr %output.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !4757, metadata !DIExpression()), !dbg !4760
  call void @llvm.lifetime.start.p0(i64 24, ptr %expect) #8, !dbg !4761
  call void @llvm.dbg.declare(metadata ptr %expect, metadata !4758, metadata !DIExpression()), !dbg !4762
  %0 = load ptr, ptr %zds.addr, align 8, !dbg !4763
  %expectedOutBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 49, !dbg !4764
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %expect, ptr align 8 %expectedOutBuffer, i64 24, i1 false), !dbg !4764
  %1 = load ptr, ptr %zds.addr, align 8, !dbg !4765
  %outBufferMode = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 48, !dbg !4767
  %2 = load i32, ptr %outBufferMode, align 8, !dbg !4767
  %cmp = icmp ne i32 %2, 1, !dbg !4768
  br i1 %cmp, label %if.then, label %if.end, !dbg !4769

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !4770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4770

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %zds.addr, align 8, !dbg !4771
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 36, !dbg !4773
  %4 = load i32, ptr %streamStage, align 4, !dbg !4773
  %cmp1 = icmp eq i32 %4, 0, !dbg !4774
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4775

if.then2:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !4776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4776

if.end3:                                          ; preds = %if.end
  %dst = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %expect, i32 0, i32 0, !dbg !4777
  %5 = load ptr, ptr %dst, align 8, !dbg !4777
  %6 = load ptr, ptr %output.addr, align 8, !dbg !4779
  %dst4 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %6, i32 0, i32 0, !dbg !4780
  %7 = load ptr, ptr %dst4, align 8, !dbg !4780
  %cmp5 = icmp eq ptr %5, %7, !dbg !4781
  br i1 %cmp5, label %land.lhs.true, label %if.end12, !dbg !4782

land.lhs.true:                                    ; preds = %if.end3
  %pos = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %expect, i32 0, i32 2, !dbg !4783
  %8 = load i64, ptr %pos, align 8, !dbg !4783
  %9 = load ptr, ptr %output.addr, align 8, !dbg !4784
  %pos6 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %9, i32 0, i32 2, !dbg !4785
  %10 = load i64, ptr %pos6, align 8, !dbg !4785
  %cmp7 = icmp eq i64 %8, %10, !dbg !4786
  br i1 %cmp7, label %land.lhs.true8, label %if.end12, !dbg !4787

land.lhs.true8:                                   ; preds = %land.lhs.true
  %size = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %expect, i32 0, i32 1, !dbg !4788
  %11 = load i64, ptr %size, align 8, !dbg !4788
  %12 = load ptr, ptr %output.addr, align 8, !dbg !4789
  %size9 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %12, i32 0, i32 1, !dbg !4790
  %13 = load i64, ptr %size9, align 8, !dbg !4790
  %cmp10 = icmp eq i64 %11, %13, !dbg !4791
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4792

if.then11:                                        ; preds = %land.lhs.true8
  store i64 0, ptr %retval, align 8, !dbg !4793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4793

if.end12:                                         ; preds = %land.lhs.true8, %land.lhs.true, %if.end3
  br label %do.body, !dbg !4794

do.body:                                          ; preds = %if.end12
  store i64 -104, ptr %retval, align 8, !dbg !4795
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4795

do.cond:                                          ; No predecessors!
  br label %do.end, !dbg !4795

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4797
  br label %cleanup, !dbg !4797

cleanup:                                          ; preds = %do.end, %do.body, %if.then11, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %expect) #8, !dbg !4797
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %14 = load i64, ptr %retval, align 8, !dbg !4797
  ret i64 %14, !dbg !4797

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_DCtx_selectFrameDDict(ptr noundef %dctx) #0 align 16 !dbg !4798 {
entry:
  %dctx.addr = alloca ptr, align 8
  %frameDDict = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !4800, metadata !DIExpression()), !dbg !4804
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !4805
  %ddict = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30, !dbg !4806
  %1 = load ptr, ptr %ddict, align 8, !dbg !4806
  %tobool = icmp ne ptr %1, null, !dbg !4805
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4807

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %frameDDict) #8, !dbg !4808
  call void @llvm.dbg.declare(metadata ptr %frameDDict, metadata !4801, metadata !DIExpression()), !dbg !4809
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !4810
  %ddictSet = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %2, i32 0, i32 34, !dbg !4811
  %3 = load ptr, ptr %ddictSet, align 8, !dbg !4811
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !4812
  %fParams = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 11, !dbg !4813
  %dictID = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams, i32 0, i32 5, !dbg !4814
  %5 = load i32, ptr %dictID, align 4, !dbg !4814
  %call = call ptr @ZSTD_DDictHashSet_getDDict(ptr noundef %3, i32 noundef %5) #7, !dbg !4815
  store ptr %call, ptr %frameDDict, align 8, !dbg !4809
  %6 = load ptr, ptr %frameDDict, align 8, !dbg !4816
  %tobool1 = icmp ne ptr %6, null, !dbg !4816
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !4818

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %dctx.addr, align 8, !dbg !4819
  call void @ZSTD_clearDict(ptr noundef %7) #7, !dbg !4821
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !4822
  %fParams3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 11, !dbg !4823
  %dictID4 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams3, i32 0, i32 5, !dbg !4824
  %9 = load i32, ptr %dictID4, align 4, !dbg !4824
  %10 = load ptr, ptr %dctx.addr, align 8, !dbg !4825
  %dictID5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %10, i32 0, i32 31, !dbg !4826
  store i32 %9, ptr %dictID5, align 8, !dbg !4827
  %11 = load ptr, ptr %frameDDict, align 8, !dbg !4828
  %12 = load ptr, ptr %dctx.addr, align 8, !dbg !4829
  %ddict6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %12, i32 0, i32 30, !dbg !4830
  store ptr %11, ptr %ddict6, align 8, !dbg !4831
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !4832
  %dictUses = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %13, i32 0, i32 33, !dbg !4833
  store i32 -1, ptr %dictUses, align 8, !dbg !4834
  br label %if.end, !dbg !4835

if.end:                                           ; preds = %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %frameDDict) #8, !dbg !4836
  br label %if.end7, !dbg !4837

if.end7:                                          ; preds = %if.end, %entry
  ret void, !dbg !4838
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ZSTD_DCtx_updateOversizedDuration(ptr noundef %zds, i64 noundef %neededInBuffSize, i64 noundef %neededOutBuffSize) #0 align 16 !dbg !4839 {
entry:
  %zds.addr = alloca ptr, align 8
  %neededInBuffSize.addr = alloca i64, align 8
  %neededOutBuffSize.addr = alloca i64, align 8
  store ptr %zds, ptr %zds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zds.addr, metadata !4843, metadata !DIExpression()), !dbg !4846
  store i64 %neededInBuffSize, ptr %neededInBuffSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %neededInBuffSize.addr, metadata !4844, metadata !DIExpression()), !dbg !4847
  store i64 %neededOutBuffSize, ptr %neededOutBuffSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %neededOutBuffSize.addr, metadata !4845, metadata !DIExpression()), !dbg !4848
  %0 = load ptr, ptr %zds.addr, align 8, !dbg !4849
  %1 = load i64, ptr %neededInBuffSize.addr, align 8, !dbg !4851
  %2 = load i64, ptr %neededOutBuffSize.addr, align 8, !dbg !4852
  %call = call i32 @ZSTD_DCtx_isOverflow(ptr noundef %0, i64 noundef %1, i64 noundef %2) #7, !dbg !4853
  %tobool = icmp ne i32 %call, 0, !dbg !4853
  br i1 %tobool, label %if.then, label %if.else, !dbg !4854

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %zds.addr, align 8, !dbg !4855
  %oversizedDuration = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %3, i32 0, i32 55, !dbg !4856
  %4 = load i64, ptr %oversizedDuration, align 8, !dbg !4857
  %inc = add i64 %4, 1, !dbg !4857
  store i64 %inc, ptr %oversizedDuration, align 8, !dbg !4857
  br label %if.end, !dbg !4855

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %zds.addr, align 8, !dbg !4858
  %oversizedDuration1 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 55, !dbg !4859
  store i64 0, ptr %oversizedDuration1, align 8, !dbg !4860
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4861
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ZSTD_DCtx_isOversizedTooLong(ptr noundef %zds) #0 align 16 !dbg !4862 {
entry:
  %zds.addr = alloca ptr, align 8
  store ptr %zds, ptr %zds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zds.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  %0 = load ptr, ptr %zds.addr, align 8, !dbg !4868
  %oversizedDuration = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 55, !dbg !4869
  %1 = load i64, ptr %oversizedDuration, align 8, !dbg !4869
  %cmp = icmp uge i64 %1, 128, !dbg !4870
  %conv = zext i1 %cmp to i32, !dbg !4870
  ret i32 %conv, !dbg !4871
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4872 dso_local ptr @ZSTD_customMalloc(i64 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressContinueStream(ptr noundef %zds, ptr noundef %op, ptr noundef %oend, ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !4875 {
entry:
  %retval = alloca i64, align 8
  %zds.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %oend.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %isSkipFrame = alloca i32, align 4
  %dstSize = alloca i64, align 8
  %decodedSize = alloca i64, align 8
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %dstSize17 = alloca i64, align 8
  %decodedSize23 = alloca i64, align 8
  %err_code26 = alloca i64, align 8
  store ptr %zds, ptr %zds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zds.addr, metadata !4880, metadata !DIExpression()), !dbg !4897
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4881, metadata !DIExpression()), !dbg !4898
  store ptr %oend, ptr %oend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oend.addr, metadata !4882, metadata !DIExpression()), !dbg !4899
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4883, metadata !DIExpression()), !dbg !4900
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !4884, metadata !DIExpression()), !dbg !4901
  call void @llvm.lifetime.start.p0(i64 4, ptr %isSkipFrame) #8, !dbg !4902
  call void @llvm.dbg.declare(metadata ptr %isSkipFrame, metadata !4885, metadata !DIExpression()), !dbg !4903
  %0 = load ptr, ptr %zds.addr, align 8, !dbg !4904
  %call = call i32 @ZSTD_isSkipFrame(ptr noundef %0) #7, !dbg !4905
  store i32 %call, ptr %isSkipFrame, align 4, !dbg !4903
  %1 = load ptr, ptr %zds.addr, align 8, !dbg !4906
  %outBufferMode = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 48, !dbg !4907
  %2 = load i32, ptr %outBufferMode, align 8, !dbg !4907
  %cmp = icmp eq i32 %2, 0, !dbg !4908
  br i1 %cmp, label %if.then, label %if.else16, !dbg !4909

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %dstSize) #8, !dbg !4910
  call void @llvm.dbg.declare(metadata ptr %dstSize, metadata !4886, metadata !DIExpression()), !dbg !4911
  %3 = load i32, ptr %isSkipFrame, align 4, !dbg !4912
  %tobool = icmp ne i32 %3, 0, !dbg !4912
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4912

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !4912

cond.false:                                       ; preds = %if.then
  %4 = load ptr, ptr %zds.addr, align 8, !dbg !4913
  %outBuffSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 42, !dbg !4914
  %5 = load i64, ptr %outBuffSize, align 8, !dbg !4914
  %6 = load ptr, ptr %zds.addr, align 8, !dbg !4915
  %outStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 43, !dbg !4916
  %7 = load i64, ptr %outStart, align 8, !dbg !4916
  %sub = sub i64 %5, %7, !dbg !4917
  br label %cond.end, !dbg !4912

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub, %cond.false ], !dbg !4912
  store i64 %cond, ptr %dstSize, align 8, !dbg !4911
  call void @llvm.lifetime.start.p0(i64 8, ptr %decodedSize) #8, !dbg !4918
  call void @llvm.dbg.declare(metadata ptr %decodedSize, metadata !4889, metadata !DIExpression()), !dbg !4919
  %8 = load ptr, ptr %zds.addr, align 8, !dbg !4920
  %9 = load ptr, ptr %zds.addr, align 8, !dbg !4921
  %outBuff = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %9, i32 0, i32 41, !dbg !4922
  %10 = load ptr, ptr %outBuff, align 8, !dbg !4922
  %11 = load ptr, ptr %zds.addr, align 8, !dbg !4923
  %outStart1 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 43, !dbg !4924
  %12 = load i64, ptr %outStart1, align 8, !dbg !4924
  %add.ptr = getelementptr i8, ptr %10, i64 %12, !dbg !4925
  %13 = load i64, ptr %dstSize, align 8, !dbg !4926
  %14 = load ptr, ptr %src.addr, align 8, !dbg !4927
  %15 = load i64, ptr %srcSize.addr, align 8, !dbg !4928
  %call2 = call i64 @ZSTD_decompressContinue(ptr noundef %8, ptr noundef %add.ptr, i64 noundef %13, ptr noundef %14, i64 noundef %15) #7, !dbg !4929
  store i64 %call2, ptr %decodedSize, align 8, !dbg !4919
  br label %do.body, !dbg !4930

do.body:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !4931
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !4890, metadata !DIExpression()), !dbg !4931
  %16 = load i64, ptr %decodedSize, align 8, !dbg !4931
  store i64 %16, ptr %err_code, align 8, !dbg !4931
  %17 = load i64, ptr %err_code, align 8, !dbg !4932
  %call3 = call i32 @ERR_isError(i64 noundef %17) #7, !dbg !4932
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4932
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !4931

if.then5:                                         ; preds = %do.body
  %18 = load i64, ptr %err_code, align 8, !dbg !4934
  store i64 %18, ptr %retval, align 8, !dbg !4934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4934

if.end:                                           ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4930
  br label %cleanup, !dbg !4930

cleanup:                                          ; preds = %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !4930
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !4931

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end, !dbg !4931

do.end:                                           ; preds = %do.cond
  %19 = load i64, ptr %decodedSize, align 8, !dbg !4936
  %tobool6 = icmp ne i64 %19, 0, !dbg !4936
  br i1 %tobool6, label %if.else, label %land.lhs.true, !dbg !4938

land.lhs.true:                                    ; preds = %do.end
  %20 = load i32, ptr %isSkipFrame, align 4, !dbg !4939
  %tobool7 = icmp ne i32 %20, 0, !dbg !4939
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !4940

if.then8:                                         ; preds = %land.lhs.true
  %21 = load ptr, ptr %zds.addr, align 8, !dbg !4941
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %21, i32 0, i32 36, !dbg !4943
  store i32 2, ptr %streamStage, align 4, !dbg !4944
  br label %if.end11, !dbg !4945

if.else:                                          ; preds = %land.lhs.true, %do.end
  %22 = load ptr, ptr %zds.addr, align 8, !dbg !4946
  %outStart9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %22, i32 0, i32 43, !dbg !4948
  %23 = load i64, ptr %outStart9, align 8, !dbg !4948
  %24 = load i64, ptr %decodedSize, align 8, !dbg !4949
  %add = add i64 %23, %24, !dbg !4950
  %25 = load ptr, ptr %zds.addr, align 8, !dbg !4951
  %outEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %25, i32 0, i32 44, !dbg !4952
  store i64 %add, ptr %outEnd, align 8, !dbg !4953
  %26 = load ptr, ptr %zds.addr, align 8, !dbg !4954
  %streamStage10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %26, i32 0, i32 36, !dbg !4955
  store i32 4, ptr %streamStage10, align 4, !dbg !4956
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4957
  br label %cleanup12, !dbg !4957

cleanup12:                                        ; preds = %if.end11, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %decodedSize) #8, !dbg !4957
  call void @llvm.lifetime.end.p0(i64 8, ptr %dstSize) #8, !dbg !4957
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %cleanup43 [
    i32 0, label %cleanup.cont15
  ]

cleanup.cont15:                                   ; preds = %cleanup12
  br label %if.end42, !dbg !4958

if.else16:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %dstSize17) #8, !dbg !4959
  call void @llvm.dbg.declare(metadata ptr %dstSize17, metadata !4892, metadata !DIExpression()), !dbg !4960
  %27 = load i32, ptr %isSkipFrame, align 4, !dbg !4961
  %tobool18 = icmp ne i32 %27, 0, !dbg !4961
  br i1 %tobool18, label %cond.true19, label %cond.false20, !dbg !4961

cond.true19:                                      ; preds = %if.else16
  br label %cond.end21, !dbg !4961

cond.false20:                                     ; preds = %if.else16
  %28 = load ptr, ptr %oend.addr, align 8, !dbg !4962
  %29 = load ptr, ptr %op.addr, align 8, !dbg !4963
  %30 = load ptr, ptr %29, align 8, !dbg !4964
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i64, !dbg !4965
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i64, !dbg !4965
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4965
  br label %cond.end21, !dbg !4961

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i64 [ 0, %cond.true19 ], [ %sub.ptr.sub, %cond.false20 ], !dbg !4961
  store i64 %cond22, ptr %dstSize17, align 8, !dbg !4960
  call void @llvm.lifetime.start.p0(i64 8, ptr %decodedSize23) #8, !dbg !4966
  call void @llvm.dbg.declare(metadata ptr %decodedSize23, metadata !4894, metadata !DIExpression()), !dbg !4967
  %31 = load ptr, ptr %zds.addr, align 8, !dbg !4968
  %32 = load ptr, ptr %op.addr, align 8, !dbg !4969
  %33 = load ptr, ptr %32, align 8, !dbg !4970
  %34 = load i64, ptr %dstSize17, align 8, !dbg !4971
  %35 = load ptr, ptr %src.addr, align 8, !dbg !4972
  %36 = load i64, ptr %srcSize.addr, align 8, !dbg !4973
  %call24 = call i64 @ZSTD_decompressContinue(ptr noundef %31, ptr noundef %33, i64 noundef %34, ptr noundef %35, i64 noundef %36) #7, !dbg !4974
  store i64 %call24, ptr %decodedSize23, align 8, !dbg !4967
  br label %do.body25, !dbg !4975

do.body25:                                        ; preds = %cond.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code26) #8, !dbg !4976
  call void @llvm.dbg.declare(metadata ptr %err_code26, metadata !4895, metadata !DIExpression()), !dbg !4976
  %37 = load i64, ptr %decodedSize23, align 8, !dbg !4976
  store i64 %37, ptr %err_code26, align 8, !dbg !4976
  %38 = load i64, ptr %err_code26, align 8, !dbg !4977
  %call27 = call i32 @ERR_isError(i64 noundef %38) #7, !dbg !4977
  %tobool28 = icmp ne i32 %call27, 0, !dbg !4977
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !4976

if.then29:                                        ; preds = %do.body25
  %39 = load i64, ptr %err_code26, align 8, !dbg !4979
  store i64 %39, ptr %retval, align 8, !dbg !4979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !4979

if.end30:                                         ; preds = %do.body25
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4975
  br label %cleanup31, !dbg !4975

cleanup31:                                        ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code26) #8, !dbg !4975
  %cleanup.dest32 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest32, label %cleanup38 [
    i32 0, label %cleanup.cont33
  ]

cleanup.cont33:                                   ; preds = %cleanup31
  br label %do.cond34, !dbg !4976

do.cond34:                                        ; preds = %cleanup.cont33
  br label %do.end35, !dbg !4976

do.end35:                                         ; preds = %do.cond34
  %40 = load i64, ptr %decodedSize23, align 8, !dbg !4981
  %41 = load ptr, ptr %op.addr, align 8, !dbg !4982
  %42 = load ptr, ptr %41, align 8, !dbg !4983
  %add.ptr36 = getelementptr i8, ptr %42, i64 %40, !dbg !4983
  store ptr %add.ptr36, ptr %41, align 8, !dbg !4983
  %43 = load ptr, ptr %zds.addr, align 8, !dbg !4984
  %streamStage37 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %43, i32 0, i32 36, !dbg !4985
  store i32 2, ptr %streamStage37, align 4, !dbg !4986
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4987
  br label %cleanup38, !dbg !4987

cleanup38:                                        ; preds = %do.end35, %cleanup31
  call void @llvm.lifetime.end.p0(i64 8, ptr %decodedSize23) #8, !dbg !4987
  call void @llvm.lifetime.end.p0(i64 8, ptr %dstSize17) #8, !dbg !4987
  %cleanup.dest40 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest40, label %cleanup43 [
    i32 0, label %cleanup.cont41
  ]

cleanup.cont41:                                   ; preds = %cleanup38
  br label %if.end42

if.end42:                                         ; preds = %cleanup.cont41, %cleanup.cont15
  store i64 0, ptr %retval, align 8, !dbg !4988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !4988

cleanup43:                                        ; preds = %if.end42, %cleanup38, %cleanup12
  call void @llvm.lifetime.end.p0(i64 4, ptr %isSkipFrame) #8, !dbg !4989
  %44 = load i64, ptr %retval, align 8, !dbg !4989
  ret i64 %44, !dbg !4989
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ZSTD_isSkipFrame(ptr noundef %dctx) #0 align 16 !dbg !4990 {
entry:
  %dctx.addr = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !4994, metadata !DIExpression()), !dbg !4995
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !4996
  %stage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 15, !dbg !4997
  %1 = load i32, ptr %stage, align 4, !dbg !4997
  %cmp = icmp eq i32 %1, 7, !dbg !4998
  %conv = zext i1 %cmp to i32, !dbg !4998
  ret i32 %conv, !dbg !4999
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_limitCopy(ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %src, i64 noundef %srcSize) #5 align 16 !dbg !5000 {
entry:
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %length = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5002, metadata !DIExpression()), !dbg !5007
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !5003, metadata !DIExpression()), !dbg !5008
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5004, metadata !DIExpression()), !dbg !5009
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !5005, metadata !DIExpression()), !dbg !5010
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #8, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %length, metadata !5006, metadata !DIExpression()), !dbg !5012
  %0 = load i64, ptr %dstCapacity.addr, align 8, !dbg !5013
  %1 = load i64, ptr %srcSize.addr, align 8, !dbg !5013
  %cmp = icmp ult i64 %0, %1, !dbg !5013
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5013

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %dstCapacity.addr, align 8, !dbg !5013
  br label %cond.end, !dbg !5013

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %srcSize.addr, align 8, !dbg !5013
  br label %cond.end, !dbg !5013

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ], !dbg !5013
  store i64 %cond, ptr %length, align 8, !dbg !5012
  %4 = load i64, ptr %length, align 8, !dbg !5014
  %cmp1 = icmp ugt i64 %4, 0, !dbg !5016
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5017

if.then:                                          ; preds = %cond.end
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !5018
  %6 = load ptr, ptr %src.addr, align 8, !dbg !5018
  %7 = load i64, ptr %length, align 8, !dbg !5018
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %6, i64 %7, i1 false), !dbg !5018
  br label %if.end, !dbg !5020

if.end:                                           ; preds = %if.then, %cond.end
  %8 = load i64, ptr %length, align 8, !dbg !5021
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #8, !dbg !5022
  ret i64 %8, !dbg !5023
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ZSTD_decompressStream_simpleArgs(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %dstPos, ptr noundef %src, i64 noundef %srcSize, ptr noundef %srcPos) #0 align 16 !dbg !5024 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %dstPos.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %srcPos.addr = alloca ptr, align 8
  %output = alloca %struct.ZSTD_outBuffer_s, align 8
  %input = alloca %struct.ZSTD_inBuffer_s, align 8
  %cErr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !5029, metadata !DIExpression()), !dbg !5039
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5030, metadata !DIExpression()), !dbg !5040
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !5031, metadata !DIExpression()), !dbg !5041
  store ptr %dstPos, ptr %dstPos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstPos.addr, metadata !5032, metadata !DIExpression()), !dbg !5042
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5033, metadata !DIExpression()), !dbg !5043
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !5034, metadata !DIExpression()), !dbg !5044
  store ptr %srcPos, ptr %srcPos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcPos.addr, metadata !5035, metadata !DIExpression()), !dbg !5045
  call void @llvm.lifetime.start.p0(i64 24, ptr %output) #8, !dbg !5046
  call void @llvm.dbg.declare(metadata ptr %output, metadata !5036, metadata !DIExpression()), !dbg !5047
  %dst1 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %output, i32 0, i32 0, !dbg !5048
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !5049
  store ptr %0, ptr %dst1, align 8, !dbg !5048
  %size = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %output, i32 0, i32 1, !dbg !5048
  %1 = load i64, ptr %dstCapacity.addr, align 8, !dbg !5050
  store i64 %1, ptr %size, align 8, !dbg !5048
  %pos = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %output, i32 0, i32 2, !dbg !5048
  %2 = load ptr, ptr %dstPos.addr, align 8, !dbg !5051
  %3 = load i64, ptr %2, align 8, !dbg !5052
  store i64 %3, ptr %pos, align 8, !dbg !5048
  call void @llvm.lifetime.start.p0(i64 24, ptr %input) #8, !dbg !5053
  call void @llvm.dbg.declare(metadata ptr %input, metadata !5037, metadata !DIExpression()), !dbg !5054
  %src2 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 0, !dbg !5055
  %4 = load ptr, ptr %src.addr, align 8, !dbg !5056
  store ptr %4, ptr %src2, align 8, !dbg !5055
  %size3 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 1, !dbg !5055
  %5 = load i64, ptr %srcSize.addr, align 8, !dbg !5057
  store i64 %5, ptr %size3, align 8, !dbg !5055
  %pos4 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 2, !dbg !5055
  %6 = load ptr, ptr %srcPos.addr, align 8, !dbg !5058
  %7 = load i64, ptr %6, align 8, !dbg !5059
  store i64 %7, ptr %pos4, align 8, !dbg !5055
  call void @llvm.lifetime.start.p0(i64 8, ptr %cErr) #8, !dbg !5060
  call void @llvm.dbg.declare(metadata ptr %cErr, metadata !5038, metadata !DIExpression()), !dbg !5061
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !5062
  %call = call i64 @ZSTD_decompressStream(ptr noundef %8, ptr noundef %output, ptr noundef %input) #7, !dbg !5063
  store i64 %call, ptr %cErr, align 8, !dbg !5061
  %pos5 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %output, i32 0, i32 2, !dbg !5064
  %9 = load i64, ptr %pos5, align 8, !dbg !5064
  %10 = load ptr, ptr %dstPos.addr, align 8, !dbg !5065
  store i64 %9, ptr %10, align 8, !dbg !5066
  %pos6 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 2, !dbg !5067
  %11 = load i64, ptr %pos6, align 8, !dbg !5067
  %12 = load ptr, ptr %srcPos.addr, align 8, !dbg !5068
  store i64 %11, ptr %12, align 8, !dbg !5069
  %13 = load i64, ptr %cErr, align 8, !dbg !5070
  call void @llvm.lifetime.end.p0(i64 8, ptr %cErr) #8, !dbg !5071
  call void @llvm.lifetime.end.p0(i64 24, ptr %input) #8, !dbg !5071
  call void @llvm.lifetime.end.p0(i64 24, ptr %output) #8, !dbg !5071
  ret i64 %13, !dbg !5072
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ZSTD_cpuSupportsBmi2() #5 align 16 !dbg !5073 {
entry:
  %cpuid = alloca %struct.ZSTD_cpuid_t, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %cpuid) #8, !dbg !5086
  call void @llvm.dbg.declare(metadata ptr %cpuid, metadata !5077, metadata !DIExpression()), !dbg !5087
  %call = call { i64, i64 } @ZSTD_cpuid() #7, !dbg !5088
  %0 = getelementptr inbounds { i64, i64 }, ptr %cpuid, i32 0, i32 0, !dbg !5088
  %1 = extractvalue { i64, i64 } %call, 0, !dbg !5088
  store i64 %1, ptr %0, align 4, !dbg !5088
  %2 = getelementptr inbounds { i64, i64 }, ptr %cpuid, i32 0, i32 1, !dbg !5088
  %3 = extractvalue { i64, i64 } %call, 1, !dbg !5088
  store i64 %3, ptr %2, align 4, !dbg !5088
  %4 = getelementptr inbounds { i64, i64 }, ptr %cpuid, i32 0, i32 0, !dbg !5089
  %5 = load i64, ptr %4, align 4, !dbg !5089
  %6 = getelementptr inbounds { i64, i64 }, ptr %cpuid, i32 0, i32 1, !dbg !5089
  %7 = load i64, ptr %6, align 4, !dbg !5089
  %call1 = call i32 @ZSTD_cpuid_bmi1(i64 %5, i64 %7) #7, !dbg !5089
  %tobool = icmp ne i32 %call1, 0, !dbg !5089
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5090

land.rhs:                                         ; preds = %entry
  %8 = getelementptr inbounds { i64, i64 }, ptr %cpuid, i32 0, i32 0, !dbg !5091
  %9 = load i64, ptr %8, align 4, !dbg !5091
  %10 = getelementptr inbounds { i64, i64 }, ptr %cpuid, i32 0, i32 1, !dbg !5091
  %11 = load i64, ptr %10, align 4, !dbg !5091
  %call2 = call i32 @ZSTD_cpuid_bmi2(i64 %9, i64 %11) #7, !dbg !5091
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5090
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ], !dbg !5092
  %land.ext = zext i1 %12 to i32, !dbg !5090
  call void @llvm.lifetime.end.p0(i64 16, ptr %cpuid) #8, !dbg !5093
  ret i32 %land.ext, !dbg !5094
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @ZSTD_cpuid() #5 align 16 !dbg !5095 {
entry:
  %retval = alloca %struct.ZSTD_cpuid_t, align 4
  %f1c = alloca i32, align 4
  %f1d = alloca i32, align 4
  %f7b = alloca i32, align 4
  %f7c = alloca i32, align 4
  %n = alloca i32, align 4
  %f1a = alloca i32, align 4
  %f7a = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %f1c) #8, !dbg !5112
  call void @llvm.dbg.declare(metadata ptr %f1c, metadata !5099, metadata !DIExpression()), !dbg !5113
  store i32 0, ptr %f1c, align 4, !dbg !5113
  call void @llvm.lifetime.start.p0(i64 4, ptr %f1d) #8, !dbg !5114
  call void @llvm.dbg.declare(metadata ptr %f1d, metadata !5100, metadata !DIExpression()), !dbg !5115
  store i32 0, ptr %f1d, align 4, !dbg !5115
  call void @llvm.lifetime.start.p0(i64 4, ptr %f7b) #8, !dbg !5116
  call void @llvm.dbg.declare(metadata ptr %f7b, metadata !5101, metadata !DIExpression()), !dbg !5117
  store i32 0, ptr %f7b, align 4, !dbg !5117
  call void @llvm.lifetime.start.p0(i64 4, ptr %f7c) #8, !dbg !5118
  call void @llvm.dbg.declare(metadata ptr %f7c, metadata !5102, metadata !DIExpression()), !dbg !5119
  store i32 0, ptr %f7c, align 4, !dbg !5119
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8, !dbg !5120
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5103, metadata !DIExpression()), !dbg !5121
  %0 = call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #9, !dbg !5122, !srcloc !5123
  store i32 %0, ptr %n, align 4, !dbg !5122
  %1 = load i32, ptr %n, align 4, !dbg !5124
  %cmp = icmp uge i32 %1, 1, !dbg !5125
  br i1 %cmp, label %if.then, label %if.end, !dbg !5126

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %f1a) #8, !dbg !5127
  call void @llvm.dbg.declare(metadata ptr %f1a, metadata !5104, metadata !DIExpression()), !dbg !5128
  %2 = call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #9, !dbg !5129, !srcloc !5130
  %asmresult = extractvalue { i32, i32, i32 } %2, 0, !dbg !5129
  %asmresult1 = extractvalue { i32, i32, i32 } %2, 1, !dbg !5129
  %asmresult2 = extractvalue { i32, i32, i32 } %2, 2, !dbg !5129
  store i32 %asmresult, ptr %f1a, align 4, !dbg !5129
  store i32 %asmresult1, ptr %f1c, align 4, !dbg !5129
  store i32 %asmresult2, ptr %f1d, align 4, !dbg !5129
  call void @llvm.lifetime.end.p0(i64 4, ptr %f1a) #8, !dbg !5131
  br label %if.end, !dbg !5132

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %n, align 4, !dbg !5133
  %cmp3 = icmp uge i32 %3, 7, !dbg !5134
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !5135

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %f7a) #8, !dbg !5136
  call void @llvm.dbg.declare(metadata ptr %f7a, metadata !5107, metadata !DIExpression()), !dbg !5137
  %4 = call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #9, !dbg !5138, !srcloc !5139
  %asmresult5 = extractvalue { i32, i32, i32 } %4, 0, !dbg !5138
  %asmresult6 = extractvalue { i32, i32, i32 } %4, 1, !dbg !5138
  %asmresult7 = extractvalue { i32, i32, i32 } %4, 2, !dbg !5138
  store i32 %asmresult5, ptr %f7a, align 4, !dbg !5138
  store i32 %asmresult6, ptr %f7b, align 4, !dbg !5138
  store i32 %asmresult7, ptr %f7c, align 4, !dbg !5138
  call void @llvm.lifetime.end.p0(i64 4, ptr %f7a) #8, !dbg !5140
  br label %if.end8, !dbg !5141

if.end8:                                          ; preds = %if.then4, %if.end
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !5110, metadata !DIExpression()), !dbg !5142
  %5 = load i32, ptr %f1c, align 4, !dbg !5143
  %f1c9 = getelementptr inbounds %struct.ZSTD_cpuid_t, ptr %retval, i32 0, i32 0, !dbg !5144
  store i32 %5, ptr %f1c9, align 4, !dbg !5145
  %6 = load i32, ptr %f1d, align 4, !dbg !5146
  %f1d10 = getelementptr inbounds %struct.ZSTD_cpuid_t, ptr %retval, i32 0, i32 1, !dbg !5147
  store i32 %6, ptr %f1d10, align 4, !dbg !5148
  %7 = load i32, ptr %f7b, align 4, !dbg !5149
  %f7b11 = getelementptr inbounds %struct.ZSTD_cpuid_t, ptr %retval, i32 0, i32 2, !dbg !5150
  store i32 %7, ptr %f7b11, align 4, !dbg !5151
  %8 = load i32, ptr %f7c, align 4, !dbg !5152
  %f7c12 = getelementptr inbounds %struct.ZSTD_cpuid_t, ptr %retval, i32 0, i32 3, !dbg !5153
  store i32 %8, ptr %f7c12, align 4, !dbg !5154
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8, !dbg !5155
  call void @llvm.lifetime.end.p0(i64 4, ptr %f7c) #8, !dbg !5155
  call void @llvm.lifetime.end.p0(i64 4, ptr %f7b) #8, !dbg !5155
  call void @llvm.lifetime.end.p0(i64 4, ptr %f1d) #8, !dbg !5155
  call void @llvm.lifetime.end.p0(i64 4, ptr %f1c) #8, !dbg !5155
  %9 = load { i64, i64 }, ptr %retval, align 4, !dbg !5155
  ret { i64, i64 } %9, !dbg !5155
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ZSTD_cpuid_bmi1(i64 %cpuid.coerce0, i64 %cpuid.coerce1) #5 align 16 !dbg !5156 {
entry:
  %cpuid = alloca %struct.ZSTD_cpuid_t, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %cpuid, i32 0, i32 0
  store i64 %cpuid.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %cpuid, i32 0, i32 1
  store i64 %cpuid.coerce1, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %cpuid, metadata !5161, metadata !DIExpression()), !dbg !5162
  %f7b = getelementptr inbounds %struct.ZSTD_cpuid_t, ptr %cpuid, i32 0, i32 2, !dbg !5162
  %2 = load i32, ptr %f7b, align 4, !dbg !5162
  %and = and i32 %2, 8, !dbg !5162
  %cmp = icmp ne i32 %and, 0, !dbg !5162
  %conv = zext i1 %cmp to i32, !dbg !5162
  ret i32 %conv, !dbg !5162
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ZSTD_cpuid_bmi2(i64 %cpuid.coerce0, i64 %cpuid.coerce1) #5 align 16 !dbg !5163 {
entry:
  %cpuid = alloca %struct.ZSTD_cpuid_t, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %cpuid, i32 0, i32 0
  store i64 %cpuid.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %cpuid, i32 0, i32 1
  store i64 %cpuid.coerce1, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %cpuid, metadata !5165, metadata !DIExpression()), !dbg !5166
  %f7b = getelementptr inbounds %struct.ZSTD_cpuid_t, ptr %cpuid, i32 0, i32 2, !dbg !5166
  %2 = load i32, ptr %f7b, align 4, !dbg !5166
  %and = and i32 %2, 256, !dbg !5166
  %cmp = icmp ne i32 %and, 0, !dbg !5166
  %conv = zext i1 %cmp to i32, !dbg !5166
  ret i32 %conv, !dbg !5166
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5167 dso_local i64 @ZSTD_freeDDict(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #5 align 16 !dbg !345 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !349, metadata !DIExpression()), !dbg !5170
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !5171
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !350, metadata !DIExpression()), !dbg !5171
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5171
  store ptr %0, ptr %__pptr, align 8, !dbg !5171
  %1 = load ptr, ptr %__pptr, align 8, !dbg !5171
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !5171
  %2 = load i32, ptr %x, align 1, !dbg !5171
  store i32 %2, ptr %tmp, align 4, !dbg !5171
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !5172
  %3 = load i32, ptr %tmp, align 4, !dbg !5171
  ret i32 %3, !dbg !5173
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @get_unaligned_le16(ptr noundef %p) #5 align 16 !dbg !358 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !362, metadata !DIExpression()), !dbg !5174
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !5175
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !363, metadata !DIExpression()), !dbg !5175
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5175
  store ptr %0, ptr %__pptr, align 8, !dbg !5175
  %1 = load ptr, ptr %__pptr, align 8, !dbg !5175
  %x = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 0, !dbg !5175
  %2 = load i16, ptr %x, align 1, !dbg !5175
  store i16 %2, ptr %tmp, align 2, !dbg !5175
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !5176
  %3 = load i16, ptr %tmp, align 2, !dbg !5175
  ret i16 %3, !dbg !5177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_unaligned_le64(ptr noundef %p) #5 align 16 !dbg !371 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !375, metadata !DIExpression()), !dbg !5178
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !5179
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !376, metadata !DIExpression()), !dbg !5179
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5179
  store ptr %0, ptr %__pptr, align 8, !dbg !5179
  %1 = load ptr, ptr %__pptr, align 8, !dbg !5179
  %x = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 0, !dbg !5179
  %2 = load i64, ptr %x, align 1, !dbg !5179
  store i64 %2, ptr %tmp, align 8, !dbg !5179
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !5180
  %3 = load i64, ptr %tmp, align 8, !dbg !5179
  ret i64 %3, !dbg !5181
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @ZSTD_errorFrameSizeInfo(i64 noundef %ret) #0 align 16 !dbg !5182 {
entry:
  %retval = alloca %struct.ZSTD_frameSizeInfo, align 8
  %ret.addr = alloca i64, align 8
  store i64 %ret, ptr %ret.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !5186, metadata !DIExpression()), !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !5187, metadata !DIExpression()), !dbg !5189
  %0 = load i64, ptr %ret.addr, align 8, !dbg !5190
  %compressedSize = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %retval, i32 0, i32 0, !dbg !5191
  store i64 %0, ptr %compressedSize, align 8, !dbg !5192
  %decompressedBound = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %retval, i32 0, i32 1, !dbg !5193
  store i64 -2, ptr %decompressedBound, align 8, !dbg !5194
  %1 = load { i64, i64 }, ptr %retval, align 8, !dbg !5195
  ret { i64, i64 } %1, !dbg !5195
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_decompressFrame(ptr noundef %dctx, ptr noundef %dst, i64 noundef %dstCapacity, ptr noundef %srcPtr, ptr noundef %srcSizePtr) #0 align 16 !dbg !5196 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %dstCapacity.addr = alloca i64, align 8
  %srcPtr.addr = alloca ptr, align 8
  %srcSizePtr.addr = alloca ptr, align 8
  %istart = alloca ptr, align 8
  %ip = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %op = alloca ptr, align 8
  %remainingSrcSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %frameHeaderSize = alloca i64, align 8
  %err_code = alloca i64, align 8
  %oBlockEnd = alloca ptr, align 8
  %decodedSize = alloca i64, align 8
  %blockProperties = alloca %struct.blockProperties_t, align 4
  %cBlockSize = alloca i64, align 8
  %checkCalc = alloca i32, align 4
  %checkRead = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !5201, metadata !DIExpression()), !dbg !5228
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5202, metadata !DIExpression()), !dbg !5229
  store i64 %dstCapacity, ptr %dstCapacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !5203, metadata !DIExpression()), !dbg !5230
  store ptr %srcPtr, ptr %srcPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcPtr.addr, metadata !5204, metadata !DIExpression()), !dbg !5231
  store ptr %srcSizePtr, ptr %srcSizePtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSizePtr.addr, metadata !5205, metadata !DIExpression()), !dbg !5232
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart) #8, !dbg !5233
  call void @llvm.dbg.declare(metadata ptr %istart, metadata !5206, metadata !DIExpression()), !dbg !5234
  %0 = load ptr, ptr %srcPtr.addr, align 8, !dbg !5235
  %1 = load ptr, ptr %0, align 8, !dbg !5236
  store ptr %1, ptr %istart, align 8, !dbg !5234
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #8, !dbg !5237
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !5207, metadata !DIExpression()), !dbg !5238
  %2 = load ptr, ptr %istart, align 8, !dbg !5239
  store ptr %2, ptr %ip, align 8, !dbg !5238
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #8, !dbg !5240
  call void @llvm.dbg.declare(metadata ptr %ostart, metadata !5208, metadata !DIExpression()), !dbg !5241
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !5242
  store ptr %3, ptr %ostart, align 8, !dbg !5241
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #8, !dbg !5243
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !5210, metadata !DIExpression()), !dbg !5244
  %4 = load i64, ptr %dstCapacity.addr, align 8, !dbg !5245
  %cmp = icmp ne i64 %4, 0, !dbg !5246
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5245

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %ostart, align 8, !dbg !5247
  %6 = load i64, ptr %dstCapacity.addr, align 8, !dbg !5248
  %add.ptr = getelementptr i8, ptr %5, i64 %6, !dbg !5249
  br label %cond.end, !dbg !5245

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %ostart, align 8, !dbg !5250
  br label %cond.end, !dbg !5245

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %7, %cond.false ], !dbg !5245
  store ptr %cond, ptr %oend, align 8, !dbg !5244
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #8, !dbg !5251
  call void @llvm.dbg.declare(metadata ptr %op, metadata !5211, metadata !DIExpression()), !dbg !5252
  %8 = load ptr, ptr %ostart, align 8, !dbg !5253
  store ptr %8, ptr %op, align 8, !dbg !5252
  call void @llvm.lifetime.start.p0(i64 8, ptr %remainingSrcSize) #8, !dbg !5254
  call void @llvm.dbg.declare(metadata ptr %remainingSrcSize, metadata !5212, metadata !DIExpression()), !dbg !5255
  %9 = load ptr, ptr %srcSizePtr.addr, align 8, !dbg !5256
  %10 = load i64, ptr %9, align 8, !dbg !5257
  store i64 %10, ptr %remainingSrcSize, align 8, !dbg !5255
  %11 = load i64, ptr %remainingSrcSize, align 8, !dbg !5258
  %12 = load ptr, ptr %dctx.addr, align 8, !dbg !5258
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %12, i32 0, i32 20, !dbg !5258
  %13 = load i32, ptr %format, align 8, !dbg !5258
  %cmp1 = icmp eq i32 %13, 0, !dbg !5258
  %14 = zext i1 %cmp1 to i64, !dbg !5258
  %cond2 = select i1 %cmp1, i32 6, i32 2, !dbg !5258
  %conv = sext i32 %cond2 to i64, !dbg !5258
  %add = add i64 %conv, 3, !dbg !5258
  %cmp3 = icmp ult i64 %11, %add, !dbg !5258
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5260

if.then:                                          ; preds = %cond.end
  store i64 -72, ptr %retval, align 8, !dbg !5261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup136, !dbg !5261

if.end:                                           ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %frameHeaderSize) #8, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %frameHeaderSize, metadata !5213, metadata !DIExpression()), !dbg !5264
  %15 = load ptr, ptr %ip, align 8, !dbg !5265
  %16 = load ptr, ptr %dctx.addr, align 8, !dbg !5266
  %format5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i32 0, i32 20, !dbg !5266
  %17 = load i32, ptr %format5, align 8, !dbg !5266
  %cmp6 = icmp eq i32 %17, 0, !dbg !5266
  %18 = zext i1 %cmp6 to i64, !dbg !5266
  %cond8 = select i1 %cmp6, i32 5, i32 1, !dbg !5266
  %conv9 = sext i32 %cond8 to i64, !dbg !5266
  %19 = load ptr, ptr %dctx.addr, align 8, !dbg !5267
  %format10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %19, i32 0, i32 20, !dbg !5268
  %20 = load i32, ptr %format10, align 8, !dbg !5268
  %call = call i64 @ZSTD_frameHeaderSize_internal(ptr noundef %15, i64 noundef %conv9, i32 noundef %20) #7, !dbg !5269
  store i64 %call, ptr %frameHeaderSize, align 8, !dbg !5264
  %21 = load i64, ptr %frameHeaderSize, align 8, !dbg !5270
  %call11 = call i32 @ERR_isError(i64 noundef %21) #7, !dbg !5272
  %tobool = icmp ne i32 %call11, 0, !dbg !5272
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !5273

if.then12:                                        ; preds = %if.end
  %22 = load i64, ptr %frameHeaderSize, align 8, !dbg !5274
  store i64 %22, ptr %retval, align 8, !dbg !5275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !5275

if.end13:                                         ; preds = %if.end
  %23 = load i64, ptr %remainingSrcSize, align 8, !dbg !5276
  %24 = load i64, ptr %frameHeaderSize, align 8, !dbg !5276
  %add14 = add i64 %24, 3, !dbg !5276
  %cmp15 = icmp ult i64 %23, %add14, !dbg !5276
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !5278

if.then17:                                        ; preds = %if.end13
  store i64 -72, ptr %retval, align 8, !dbg !5279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !5279

if.end18:                                         ; preds = %if.end13
  br label %do.body, !dbg !5281

do.body:                                          ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !5282
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !5215, metadata !DIExpression()), !dbg !5282
  %25 = load ptr, ptr %dctx.addr, align 8, !dbg !5282
  %26 = load ptr, ptr %ip, align 8, !dbg !5282
  %27 = load i64, ptr %frameHeaderSize, align 8, !dbg !5282
  %call19 = call i64 @ZSTD_decodeFrameHeader(ptr noundef %25, ptr noundef %26, i64 noundef %27) #7, !dbg !5282
  store i64 %call19, ptr %err_code, align 8, !dbg !5282
  %28 = load i64, ptr %err_code, align 8, !dbg !5283
  %call20 = call i32 @ERR_isError(i64 noundef %28) #7, !dbg !5283
  %tobool21 = icmp ne i32 %call20, 0, !dbg !5283
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5282

if.then22:                                        ; preds = %do.body
  %29 = load i64, ptr %err_code, align 8, !dbg !5285
  store i64 %29, ptr %retval, align 8, !dbg !5285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5285

if.end23:                                         ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5281
  br label %cleanup, !dbg !5281

cleanup:                                          ; preds = %if.end23, %if.then22
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !5281
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !5282

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end, !dbg !5282

do.end:                                           ; preds = %do.cond
  %30 = load i64, ptr %frameHeaderSize, align 8, !dbg !5287
  %31 = load ptr, ptr %ip, align 8, !dbg !5288
  %add.ptr24 = getelementptr i8, ptr %31, i64 %30, !dbg !5288
  store ptr %add.ptr24, ptr %ip, align 8, !dbg !5288
  %32 = load i64, ptr %frameHeaderSize, align 8, !dbg !5289
  %33 = load i64, ptr %remainingSrcSize, align 8, !dbg !5290
  %sub = sub i64 %33, %32, !dbg !5290
  store i64 %sub, ptr %remainingSrcSize, align 8, !dbg !5290
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5291
  br label %cleanup25, !dbg !5291

cleanup25:                                        ; preds = %do.end, %cleanup, %if.then17, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %frameHeaderSize) #8, !dbg !5291
  %cleanup.dest26 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest26, label %cleanup136 [
    i32 0, label %cleanup.cont27
  ]

cleanup.cont27:                                   ; preds = %cleanup25
  br label %while.cond, !dbg !5292

while.cond:                                       ; preds = %cleanup.cont88, %cleanup.cont27
  br label %while.body, !dbg !5292

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %oBlockEnd) #8, !dbg !5293
  call void @llvm.dbg.declare(metadata ptr %oBlockEnd, metadata !5217, metadata !DIExpression()), !dbg !5294
  %34 = load ptr, ptr %oend, align 8, !dbg !5295
  store ptr %34, ptr %oBlockEnd, align 8, !dbg !5294
  call void @llvm.lifetime.start.p0(i64 8, ptr %decodedSize) #8, !dbg !5296
  call void @llvm.dbg.declare(metadata ptr %decodedSize, metadata !5219, metadata !DIExpression()), !dbg !5297
  call void @llvm.lifetime.start.p0(i64 12, ptr %blockProperties) #8, !dbg !5298
  call void @llvm.dbg.declare(metadata ptr %blockProperties, metadata !5220, metadata !DIExpression()), !dbg !5299
  call void @llvm.lifetime.start.p0(i64 8, ptr %cBlockSize) #8, !dbg !5300
  call void @llvm.dbg.declare(metadata ptr %cBlockSize, metadata !5221, metadata !DIExpression()), !dbg !5301
  %35 = load ptr, ptr %ip, align 8, !dbg !5302
  %36 = load i64, ptr %remainingSrcSize, align 8, !dbg !5303
  %call28 = call i64 @ZSTD_getcBlockSize(ptr noundef %35, i64 noundef %36, ptr noundef %blockProperties) #7, !dbg !5304
  store i64 %call28, ptr %cBlockSize, align 8, !dbg !5301
  %37 = load i64, ptr %cBlockSize, align 8, !dbg !5305
  %call29 = call i32 @ERR_isError(i64 noundef %37) #7, !dbg !5307
  %tobool30 = icmp ne i32 %call29, 0, !dbg !5307
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !5308

if.then31:                                        ; preds = %while.body
  %38 = load i64, ptr %cBlockSize, align 8, !dbg !5309
  store i64 %38, ptr %retval, align 8, !dbg !5310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !5310

if.end32:                                         ; preds = %while.body
  %39 = load ptr, ptr %ip, align 8, !dbg !5311
  %add.ptr33 = getelementptr i8, ptr %39, i64 3, !dbg !5311
  store ptr %add.ptr33, ptr %ip, align 8, !dbg !5311
  %40 = load i64, ptr %remainingSrcSize, align 8, !dbg !5312
  %sub34 = sub i64 %40, 3, !dbg !5312
  store i64 %sub34, ptr %remainingSrcSize, align 8, !dbg !5312
  %41 = load i64, ptr %cBlockSize, align 8, !dbg !5313
  %42 = load i64, ptr %remainingSrcSize, align 8, !dbg !5313
  %cmp35 = icmp ugt i64 %41, %42, !dbg !5313
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !5315

if.then37:                                        ; preds = %if.end32
  store i64 -72, ptr %retval, align 8, !dbg !5316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !5316

if.end38:                                         ; preds = %if.end32
  %43 = load ptr, ptr %ip, align 8, !dbg !5318
  %44 = load ptr, ptr %op, align 8, !dbg !5320
  %cmp39 = icmp uge ptr %43, %44, !dbg !5321
  br i1 %cmp39, label %land.lhs.true, label %if.end45, !dbg !5322

land.lhs.true:                                    ; preds = %if.end38
  %45 = load ptr, ptr %ip, align 8, !dbg !5323
  %46 = load ptr, ptr %oBlockEnd, align 8, !dbg !5324
  %cmp41 = icmp ult ptr %45, %46, !dbg !5325
  br i1 %cmp41, label %if.then43, label %if.end45, !dbg !5326

if.then43:                                        ; preds = %land.lhs.true
  %47 = load ptr, ptr %op, align 8, !dbg !5327
  %48 = load ptr, ptr %ip, align 8, !dbg !5329
  %49 = load ptr, ptr %op, align 8, !dbg !5330
  %sub.ptr.lhs.cast = ptrtoint ptr %48 to i64, !dbg !5331
  %sub.ptr.rhs.cast = ptrtoint ptr %49 to i64, !dbg !5331
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5331
  %add.ptr44 = getelementptr i8, ptr %47, i64 %sub.ptr.sub, !dbg !5332
  store ptr %add.ptr44, ptr %oBlockEnd, align 8, !dbg !5333
  br label %if.end45, !dbg !5334

if.end45:                                         ; preds = %if.then43, %land.lhs.true, %if.end38
  %blockType = getelementptr inbounds %struct.blockProperties_t, ptr %blockProperties, i32 0, i32 0, !dbg !5335
  %50 = load i32, ptr %blockType, align 4, !dbg !5335
  switch i32 %50, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb50
    i32 1, label %sw.bb55
    i32 3, label %sw.bb61
  ], !dbg !5336

sw.bb:                                            ; preds = %if.end45
  %51 = load ptr, ptr %dctx.addr, align 8, !dbg !5337
  %52 = load ptr, ptr %op, align 8, !dbg !5339
  %53 = load ptr, ptr %oBlockEnd, align 8, !dbg !5340
  %54 = load ptr, ptr %op, align 8, !dbg !5341
  %sub.ptr.lhs.cast46 = ptrtoint ptr %53 to i64, !dbg !5342
  %sub.ptr.rhs.cast47 = ptrtoint ptr %54 to i64, !dbg !5342
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47, !dbg !5342
  %55 = load ptr, ptr %ip, align 8, !dbg !5343
  %56 = load i64, ptr %cBlockSize, align 8, !dbg !5344
  %call49 = call i64 @ZSTD_decompressBlock_internal(ptr noundef %51, ptr noundef %52, i64 noundef %sub.ptr.sub48, ptr noundef %55, i64 noundef %56, i32 noundef 1, i32 noundef 0) #7, !dbg !5345
  store i64 %call49, ptr %decodedSize, align 8, !dbg !5346
  br label %sw.epilog, !dbg !5347

sw.bb50:                                          ; preds = %if.end45
  %57 = load ptr, ptr %op, align 8, !dbg !5348
  %58 = load ptr, ptr %oend, align 8, !dbg !5349
  %59 = load ptr, ptr %op, align 8, !dbg !5350
  %sub.ptr.lhs.cast51 = ptrtoint ptr %58 to i64, !dbg !5351
  %sub.ptr.rhs.cast52 = ptrtoint ptr %59 to i64, !dbg !5351
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52, !dbg !5351
  %60 = load ptr, ptr %ip, align 8, !dbg !5352
  %61 = load i64, ptr %cBlockSize, align 8, !dbg !5353
  %call54 = call i64 @ZSTD_copyRawBlock(ptr noundef %57, i64 noundef %sub.ptr.sub53, ptr noundef %60, i64 noundef %61) #7, !dbg !5354
  store i64 %call54, ptr %decodedSize, align 8, !dbg !5355
  br label %sw.epilog, !dbg !5356

sw.bb55:                                          ; preds = %if.end45
  %62 = load ptr, ptr %op, align 8, !dbg !5357
  %63 = load ptr, ptr %oBlockEnd, align 8, !dbg !5358
  %64 = load ptr, ptr %op, align 8, !dbg !5359
  %sub.ptr.lhs.cast56 = ptrtoint ptr %63 to i64, !dbg !5360
  %sub.ptr.rhs.cast57 = ptrtoint ptr %64 to i64, !dbg !5360
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57, !dbg !5360
  %65 = load ptr, ptr %ip, align 8, !dbg !5361
  %66 = load i8, ptr %65, align 1, !dbg !5362
  %origSize = getelementptr inbounds %struct.blockProperties_t, ptr %blockProperties, i32 0, i32 2, !dbg !5363
  %67 = load i32, ptr %origSize, align 4, !dbg !5363
  %conv59 = zext i32 %67 to i64, !dbg !5364
  %call60 = call i64 @ZSTD_setRleBlock(ptr noundef %62, i64 noundef %sub.ptr.sub58, i8 noundef zeroext %66, i64 noundef %conv59) #7, !dbg !5365
  store i64 %call60, ptr %decodedSize, align 8, !dbg !5366
  br label %sw.epilog, !dbg !5367

sw.bb61:                                          ; preds = %if.end45
  br label %sw.default, !dbg !5368

sw.default:                                       ; preds = %if.end45, %sw.bb61
  br label %do.body62, !dbg !5369

do.body62:                                        ; preds = %sw.default
  store i64 -20, ptr %retval, align 8, !dbg !5370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !5370

do.cond63:                                        ; No predecessors!
  br label %do.end64, !dbg !5370

do.end64:                                         ; preds = %do.cond63
  br label %sw.epilog, !dbg !5372

sw.epilog:                                        ; preds = %do.end64, %sw.bb55, %sw.bb50, %sw.bb
  %68 = load i64, ptr %decodedSize, align 8, !dbg !5373
  %call65 = call i32 @ERR_isError(i64 noundef %68) #7, !dbg !5375
  %tobool66 = icmp ne i32 %call65, 0, !dbg !5375
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !5376

if.then67:                                        ; preds = %sw.epilog
  %69 = load i64, ptr %decodedSize, align 8, !dbg !5377
  store i64 %69, ptr %retval, align 8, !dbg !5378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !5378

if.end68:                                         ; preds = %sw.epilog
  %70 = load ptr, ptr %dctx.addr, align 8, !dbg !5379
  %validateChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %70, i32 0, i32 22, !dbg !5381
  %71 = load i32, ptr %validateChecksum, align 8, !dbg !5381
  %tobool69 = icmp ne i32 %71, 0, !dbg !5379
  br i1 %tobool69, label %if.then70, label %if.end72, !dbg !5382

if.then70:                                        ; preds = %if.end68
  %72 = load ptr, ptr %dctx.addr, align 8, !dbg !5383
  %xxhState = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %72, i32 0, i32 18, !dbg !5384
  %73 = load ptr, ptr %op, align 8, !dbg !5385
  %74 = load i64, ptr %decodedSize, align 8, !dbg !5386
  %call71 = call i32 @xxh64_update(ptr noundef %xxhState, ptr noundef %73, i64 noundef %74) #7, !dbg !5387
  br label %if.end72, !dbg !5387

if.end72:                                         ; preds = %if.then70, %if.end68
  %75 = load i64, ptr %decodedSize, align 8, !dbg !5388
  %cmp73 = icmp ne i64 %75, 0, !dbg !5390
  br i1 %cmp73, label %if.then75, label %if.end77, !dbg !5391

if.then75:                                        ; preds = %if.end72
  %76 = load i64, ptr %decodedSize, align 8, !dbg !5392
  %77 = load ptr, ptr %op, align 8, !dbg !5393
  %add.ptr76 = getelementptr i8, ptr %77, i64 %76, !dbg !5393
  store ptr %add.ptr76, ptr %op, align 8, !dbg !5393
  br label %if.end77, !dbg !5394

if.end77:                                         ; preds = %if.then75, %if.end72
  %78 = load i64, ptr %cBlockSize, align 8, !dbg !5395
  %79 = load ptr, ptr %ip, align 8, !dbg !5396
  %add.ptr78 = getelementptr i8, ptr %79, i64 %78, !dbg !5396
  store ptr %add.ptr78, ptr %ip, align 8, !dbg !5396
  %80 = load i64, ptr %cBlockSize, align 8, !dbg !5397
  %81 = load i64, ptr %remainingSrcSize, align 8, !dbg !5398
  %sub79 = sub i64 %81, %80, !dbg !5398
  store i64 %sub79, ptr %remainingSrcSize, align 8, !dbg !5398
  %lastBlock = getelementptr inbounds %struct.blockProperties_t, ptr %blockProperties, i32 0, i32 1, !dbg !5399
  %82 = load i32, ptr %lastBlock, align 4, !dbg !5399
  %tobool80 = icmp ne i32 %82, 0, !dbg !5401
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !5402

if.then81:                                        ; preds = %if.end77
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !5403

if.end82:                                         ; preds = %if.end77
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5404
  br label %cleanup83, !dbg !5404

cleanup83:                                        ; preds = %if.end82, %if.then81, %if.then67, %do.body62, %if.then37, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %cBlockSize) #8, !dbg !5404
  call void @llvm.lifetime.end.p0(i64 12, ptr %blockProperties) #8, !dbg !5404
  call void @llvm.lifetime.end.p0(i64 8, ptr %decodedSize) #8, !dbg !5404
  call void @llvm.lifetime.end.p0(i64 8, ptr %oBlockEnd) #8, !dbg !5404
  %cleanup.dest87 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest87, label %cleanup136 [
    i32 0, label %cleanup.cont88
    i32 5, label %while.end
  ]

cleanup.cont88:                                   ; preds = %cleanup83
  br label %while.cond, !dbg !5292, !llvm.loop !5405

while.end:                                        ; preds = %cleanup83
  %83 = load ptr, ptr %dctx.addr, align 8, !dbg !5406
  %fParams = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %83, i32 0, i32 11, !dbg !5408
  %frameContentSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams, i32 0, i32 0, !dbg !5409
  %84 = load i64, ptr %frameContentSize, align 8, !dbg !5409
  %cmp89 = icmp ne i64 %84, -1, !dbg !5410
  br i1 %cmp89, label %if.then91, label %if.end101, !dbg !5411

if.then91:                                        ; preds = %while.end
  %85 = load ptr, ptr %op, align 8, !dbg !5412
  %86 = load ptr, ptr %ostart, align 8, !dbg !5412
  %sub.ptr.lhs.cast92 = ptrtoint ptr %85 to i64, !dbg !5412
  %sub.ptr.rhs.cast93 = ptrtoint ptr %86 to i64, !dbg !5412
  %sub.ptr.sub94 = sub i64 %sub.ptr.lhs.cast92, %sub.ptr.rhs.cast93, !dbg !5412
  %87 = load ptr, ptr %dctx.addr, align 8, !dbg !5412
  %fParams95 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %87, i32 0, i32 11, !dbg !5412
  %frameContentSize96 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams95, i32 0, i32 0, !dbg !5412
  %88 = load i64, ptr %frameContentSize96, align 8, !dbg !5412
  %cmp97 = icmp ne i64 %sub.ptr.sub94, %88, !dbg !5412
  br i1 %cmp97, label %if.then99, label %if.end100, !dbg !5415

if.then99:                                        ; preds = %if.then91
  store i64 -20, ptr %retval, align 8, !dbg !5416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup136, !dbg !5416

if.end100:                                        ; preds = %if.then91
  br label %if.end101, !dbg !5418

if.end101:                                        ; preds = %if.end100, %while.end
  %89 = load ptr, ptr %dctx.addr, align 8, !dbg !5419
  %fParams102 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %89, i32 0, i32 11, !dbg !5420
  %checksumFlag = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %fParams102, i32 0, i32 6, !dbg !5421
  %90 = load i32, ptr %checksumFlag, align 8, !dbg !5421
  %tobool103 = icmp ne i32 %90, 0, !dbg !5419
  br i1 %tobool103, label %if.then104, label %if.end126, !dbg !5422

if.then104:                                       ; preds = %if.end101
  %91 = load i64, ptr %remainingSrcSize, align 8, !dbg !5423
  %cmp105 = icmp ult i64 %91, 4, !dbg !5423
  br i1 %cmp105, label %if.then107, label %if.end108, !dbg !5425

if.then107:                                       ; preds = %if.then104
  store i64 -22, ptr %retval, align 8, !dbg !5426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup136, !dbg !5426

if.end108:                                        ; preds = %if.then104
  %92 = load ptr, ptr %dctx.addr, align 8, !dbg !5428
  %forceIgnoreChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %92, i32 0, i32 21, !dbg !5429
  %93 = load i32, ptr %forceIgnoreChecksum, align 4, !dbg !5429
  %tobool109 = icmp ne i32 %93, 0, !dbg !5428
  br i1 %tobool109, label %if.end123, label %if.then110, !dbg !5430

if.then110:                                       ; preds = %if.end108
  call void @llvm.lifetime.start.p0(i64 4, ptr %checkCalc) #8, !dbg !5431
  call void @llvm.dbg.declare(metadata ptr %checkCalc, metadata !5222, metadata !DIExpression()), !dbg !5432
  %94 = load ptr, ptr %dctx.addr, align 8, !dbg !5433
  %xxhState111 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %94, i32 0, i32 18, !dbg !5434
  %call112 = call i64 @xxh64_digest(ptr noundef %xxhState111) #7, !dbg !5435
  %conv113 = trunc i64 %call112 to i32, !dbg !5436
  store i32 %conv113, ptr %checkCalc, align 4, !dbg !5432
  call void @llvm.lifetime.start.p0(i64 4, ptr %checkRead) #8, !dbg !5437
  call void @llvm.dbg.declare(metadata ptr %checkRead, metadata !5227, metadata !DIExpression()), !dbg !5438
  %95 = load ptr, ptr %ip, align 8, !dbg !5439
  %call114 = call i32 @MEM_readLE32(ptr noundef %95) #7, !dbg !5440
  store i32 %call114, ptr %checkRead, align 4, !dbg !5441
  %96 = load i32, ptr %checkRead, align 4, !dbg !5442
  %97 = load i32, ptr %checkCalc, align 4, !dbg !5442
  %cmp115 = icmp ne i32 %96, %97, !dbg !5442
  br i1 %cmp115, label %if.then117, label %if.end118, !dbg !5444

if.then117:                                       ; preds = %if.then110
  store i64 -22, ptr %retval, align 8, !dbg !5445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup119, !dbg !5445

if.end118:                                        ; preds = %if.then110
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5447
  br label %cleanup119, !dbg !5447

cleanup119:                                       ; preds = %if.end118, %if.then117
  call void @llvm.lifetime.end.p0(i64 4, ptr %checkRead) #8, !dbg !5447
  call void @llvm.lifetime.end.p0(i64 4, ptr %checkCalc) #8, !dbg !5447
  %cleanup.dest121 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest121, label %cleanup136 [
    i32 0, label %cleanup.cont122
  ]

cleanup.cont122:                                  ; preds = %cleanup119
  br label %if.end123, !dbg !5448

if.end123:                                        ; preds = %cleanup.cont122, %if.end108
  %98 = load ptr, ptr %ip, align 8, !dbg !5449
  %add.ptr124 = getelementptr i8, ptr %98, i64 4, !dbg !5449
  store ptr %add.ptr124, ptr %ip, align 8, !dbg !5449
  %99 = load i64, ptr %remainingSrcSize, align 8, !dbg !5450
  %sub125 = sub i64 %99, 4, !dbg !5450
  store i64 %sub125, ptr %remainingSrcSize, align 8, !dbg !5450
  br label %if.end126, !dbg !5451

if.end126:                                        ; preds = %if.end123, %if.end101
  %100 = load ptr, ptr %dctx.addr, align 8, !dbg !5452
  %101 = load ptr, ptr %op, align 8, !dbg !5453
  %102 = load ptr, ptr %ostart, align 8, !dbg !5454
  %sub.ptr.lhs.cast127 = ptrtoint ptr %101 to i64, !dbg !5455
  %sub.ptr.rhs.cast128 = ptrtoint ptr %102 to i64, !dbg !5455
  %sub.ptr.sub129 = sub i64 %sub.ptr.lhs.cast127, %sub.ptr.rhs.cast128, !dbg !5455
  %103 = load ptr, ptr %ip, align 8, !dbg !5456
  %104 = load ptr, ptr %istart, align 8, !dbg !5457
  %sub.ptr.lhs.cast130 = ptrtoint ptr %103 to i64, !dbg !5458
  %sub.ptr.rhs.cast131 = ptrtoint ptr %104 to i64, !dbg !5458
  %sub.ptr.sub132 = sub i64 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131, !dbg !5458
  call void @ZSTD_DCtx_trace_end(ptr noundef %100, i64 noundef %sub.ptr.sub129, i64 noundef %sub.ptr.sub132, i32 noundef 0) #7, !dbg !5459
  %105 = load ptr, ptr %ip, align 8, !dbg !5460
  %106 = load ptr, ptr %srcPtr.addr, align 8, !dbg !5461
  store ptr %105, ptr %106, align 8, !dbg !5462
  %107 = load i64, ptr %remainingSrcSize, align 8, !dbg !5463
  %108 = load ptr, ptr %srcSizePtr.addr, align 8, !dbg !5464
  store i64 %107, ptr %108, align 8, !dbg !5465
  %109 = load ptr, ptr %op, align 8, !dbg !5466
  %110 = load ptr, ptr %ostart, align 8, !dbg !5467
  %sub.ptr.lhs.cast133 = ptrtoint ptr %109 to i64, !dbg !5468
  %sub.ptr.rhs.cast134 = ptrtoint ptr %110 to i64, !dbg !5468
  %sub.ptr.sub135 = sub i64 %sub.ptr.lhs.cast133, %sub.ptr.rhs.cast134, !dbg !5468
  store i64 %sub.ptr.sub135, ptr %retval, align 8, !dbg !5469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup136, !dbg !5469

cleanup136:                                       ; preds = %if.end126, %cleanup119, %if.then107, %if.then99, %cleanup83, %cleanup25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %remainingSrcSize) #8, !dbg !5470
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #8, !dbg !5470
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #8, !dbg !5470
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #8, !dbg !5470
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #8, !dbg !5470
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart) #8, !dbg !5470
  %111 = load i64, ptr %retval, align 8, !dbg !5470
  ret i64 %111, !dbg !5470
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5471 dso_local i32 @ZSTD_getErrorCode(i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5475 dso_local void @xxh64_reset(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_refDictContent(ptr noundef %dctx, ptr noundef %dict, i64 noundef %dictSize) #0 align 16 !dbg !5478 {
entry:
  %dctx.addr = alloca ptr, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !5480, metadata !DIExpression()), !dbg !5483
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !5481, metadata !DIExpression()), !dbg !5484
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !5482, metadata !DIExpression()), !dbg !5485
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !5486
  %previousDstEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 6, !dbg !5487
  %1 = load ptr, ptr %previousDstEnd, align 8, !dbg !5487
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !5488
  %dictEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %2, i32 0, i32 9, !dbg !5489
  store ptr %1, ptr %dictEnd, align 8, !dbg !5490
  %3 = load ptr, ptr %dict.addr, align 8, !dbg !5491
  %4 = load ptr, ptr %dctx.addr, align 8, !dbg !5492
  %previousDstEnd1 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %4, i32 0, i32 6, !dbg !5493
  %5 = load ptr, ptr %previousDstEnd1, align 8, !dbg !5493
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !5494
  %prefixStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %6, i32 0, i32 7, !dbg !5495
  %7 = load ptr, ptr %prefixStart, align 8, !dbg !5495
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64, !dbg !5496
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64, !dbg !5496
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5496
  %idx.neg = sub i64 0, %sub.ptr.sub, !dbg !5497
  %add.ptr = getelementptr i8, ptr %3, i64 %idx.neg, !dbg !5497
  %8 = load ptr, ptr %dctx.addr, align 8, !dbg !5498
  %virtualStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %8, i32 0, i32 8, !dbg !5499
  store ptr %add.ptr, ptr %virtualStart, align 8, !dbg !5500
  %9 = load ptr, ptr %dict.addr, align 8, !dbg !5501
  %10 = load ptr, ptr %dctx.addr, align 8, !dbg !5502
  %prefixStart2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %10, i32 0, i32 7, !dbg !5503
  store ptr %9, ptr %prefixStart2, align 8, !dbg !5504
  %11 = load ptr, ptr %dict.addr, align 8, !dbg !5505
  %12 = load i64, ptr %dictSize.addr, align 8, !dbg !5506
  %add.ptr3 = getelementptr i8, ptr %11, i64 %12, !dbg !5507
  %13 = load ptr, ptr %dctx.addr, align 8, !dbg !5508
  %previousDstEnd4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %13, i32 0, i32 6, !dbg !5509
  store ptr %add.ptr3, ptr %previousDstEnd4, align 8, !dbg !5510
  ret i64 0, !dbg !5511
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5512 dso_local ptr @ZSTD_customCalloc(i64 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_DDictHashSet_expand(ptr noundef %hashSet, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #0 align 16 !dbg !5513 {
entry:
  %retval = alloca i64, align 8
  %hashSet.addr = alloca ptr, align 8
  %newTableSize = alloca i64, align 8
  %newTable = alloca ptr, align 8
  %oldTable = alloca ptr, align 8
  %oldTableSize = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err_code = alloca i64, align 8
  store ptr %hashSet, ptr %hashSet.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hashSet.addr, metadata !5517, metadata !DIExpression()), !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %customMem, metadata !5518, metadata !DIExpression()), !dbg !5532
  call void @llvm.lifetime.start.p0(i64 8, ptr %newTableSize) #8, !dbg !5533
  call void @llvm.dbg.declare(metadata ptr %newTableSize, metadata !5519, metadata !DIExpression()), !dbg !5534
  %0 = load ptr, ptr %hashSet.addr, align 8, !dbg !5535
  %ddictPtrTableSize = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %0, i32 0, i32 1, !dbg !5536
  %1 = load i64, ptr %ddictPtrTableSize, align 8, !dbg !5536
  %mul = mul i64 %1, 2, !dbg !5537
  store i64 %mul, ptr %newTableSize, align 8, !dbg !5534
  call void @llvm.lifetime.start.p0(i64 8, ptr %newTable) #8, !dbg !5538
  call void @llvm.dbg.declare(metadata ptr %newTable, metadata !5520, metadata !DIExpression()), !dbg !5539
  %2 = load i64, ptr %newTableSize, align 8, !dbg !5540
  %mul1 = mul i64 8, %2, !dbg !5541
  %call = call ptr @ZSTD_customCalloc(i64 noundef %mul1, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !5542
  store ptr %call, ptr %newTable, align 8, !dbg !5539
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldTable) #8, !dbg !5543
  call void @llvm.dbg.declare(metadata ptr %oldTable, metadata !5521, metadata !DIExpression()), !dbg !5544
  %3 = load ptr, ptr %hashSet.addr, align 8, !dbg !5545
  %ddictPtrTable = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %3, i32 0, i32 0, !dbg !5546
  %4 = load ptr, ptr %ddictPtrTable, align 8, !dbg !5546
  store ptr %4, ptr %oldTable, align 8, !dbg !5544
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldTableSize) #8, !dbg !5547
  call void @llvm.dbg.declare(metadata ptr %oldTableSize, metadata !5522, metadata !DIExpression()), !dbg !5548
  %5 = load ptr, ptr %hashSet.addr, align 8, !dbg !5549
  %ddictPtrTableSize2 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %5, i32 0, i32 1, !dbg !5550
  %6 = load i64, ptr %ddictPtrTableSize2, align 8, !dbg !5550
  store i64 %6, ptr %oldTableSize, align 8, !dbg !5548
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8, !dbg !5551
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5523, metadata !DIExpression()), !dbg !5552
  %7 = load ptr, ptr %newTable, align 8, !dbg !5553
  %tobool = icmp ne ptr %7, null, !dbg !5553
  br i1 %tobool, label %if.end, label %if.then, !dbg !5555

if.then:                                          ; preds = %entry
  store i64 -64, ptr %retval, align 8, !dbg !5556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !5556

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %newTable, align 8, !dbg !5558
  %9 = load ptr, ptr %hashSet.addr, align 8, !dbg !5559
  %ddictPtrTable3 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %9, i32 0, i32 0, !dbg !5560
  store ptr %8, ptr %ddictPtrTable3, align 8, !dbg !5561
  %10 = load i64, ptr %newTableSize, align 8, !dbg !5562
  %11 = load ptr, ptr %hashSet.addr, align 8, !dbg !5563
  %ddictPtrTableSize4 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %11, i32 0, i32 1, !dbg !5564
  store i64 %10, ptr %ddictPtrTableSize4, align 8, !dbg !5565
  %12 = load ptr, ptr %hashSet.addr, align 8, !dbg !5566
  %ddictPtrCount = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %12, i32 0, i32 2, !dbg !5567
  store i64 0, ptr %ddictPtrCount, align 8, !dbg !5568
  store i64 0, ptr %i, align 8, !dbg !5569
  br label %for.cond, !dbg !5570

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i64, ptr %i, align 8, !dbg !5571
  %14 = load i64, ptr %oldTableSize, align 8, !dbg !5572
  %cmp = icmp ult i64 %13, %14, !dbg !5573
  br i1 %cmp, label %for.body, label %for.end, !dbg !5574

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %oldTable, align 8, !dbg !5575
  %16 = load i64, ptr %i, align 8, !dbg !5576
  %arrayidx = getelementptr ptr, ptr %15, i64 %16, !dbg !5575
  %17 = load ptr, ptr %arrayidx, align 8, !dbg !5575
  %cmp5 = icmp ne ptr %17, null, !dbg !5577
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !5578

if.then6:                                         ; preds = %for.body
  br label %do.body, !dbg !5579

do.body:                                          ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #8, !dbg !5580
  call void @llvm.dbg.declare(metadata ptr %err_code, metadata !5524, metadata !DIExpression()), !dbg !5580
  %18 = load ptr, ptr %hashSet.addr, align 8, !dbg !5580
  %19 = load ptr, ptr %oldTable, align 8, !dbg !5580
  %20 = load i64, ptr %i, align 8, !dbg !5580
  %arrayidx7 = getelementptr ptr, ptr %19, i64 %20, !dbg !5580
  %21 = load ptr, ptr %arrayidx7, align 8, !dbg !5580
  %call8 = call i64 @ZSTD_DDictHashSet_emplaceDDict(ptr noundef %18, ptr noundef %21) #7, !dbg !5580
  store i64 %call8, ptr %err_code, align 8, !dbg !5580
  %22 = load i64, ptr %err_code, align 8, !dbg !5581
  %call9 = call i32 @ERR_isError(i64 noundef %22) #7, !dbg !5581
  %tobool10 = icmp ne i32 %call9, 0, !dbg !5581
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5580

if.then11:                                        ; preds = %do.body
  %23 = load i64, ptr %err_code, align 8, !dbg !5583
  store i64 %23, ptr %retval, align 8, !dbg !5583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5583

if.end12:                                         ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5579
  br label %cleanup, !dbg !5579

cleanup:                                          ; preds = %if.end12, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #8, !dbg !5579
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !5580

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end, !dbg !5580

do.end:                                           ; preds = %do.cond
  br label %if.end13, !dbg !5585

if.end13:                                         ; preds = %do.end, %for.body
  br label %for.inc, !dbg !5586

for.inc:                                          ; preds = %if.end13
  %24 = load i64, ptr %i, align 8, !dbg !5587
  %inc = add i64 %24, 1, !dbg !5587
  store i64 %inc, ptr %i, align 8, !dbg !5587
  br label %for.cond, !dbg !5588, !llvm.loop !5589

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %oldTable, align 8, !dbg !5591
  call void @ZSTD_customFree(ptr noundef %25, ptr noundef byval(%struct.ZSTD_customMem) align 8 %customMem) #7, !dbg !5592
  store i64 0, ptr %retval, align 8, !dbg !5593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !5593

cleanup14:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8, !dbg !5594
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldTableSize) #8, !dbg !5594
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldTable) #8, !dbg !5594
  call void @llvm.lifetime.end.p0(i64 8, ptr %newTable) #8, !dbg !5594
  call void @llvm.lifetime.end.p0(i64 8, ptr %newTableSize) #8, !dbg !5594
  %26 = load i64, ptr %retval, align 8, !dbg !5594
  ret i64 %26, !dbg !5594
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_DDictHashSet_emplaceDDict(ptr noundef %hashSet, ptr noundef %ddict) #0 align 16 !dbg !5595 {
entry:
  %retval = alloca i64, align 8
  %hashSet.addr = alloca ptr, align 8
  %ddict.addr = alloca ptr, align 8
  %dictID = alloca i32, align 4
  %idx = alloca i64, align 8
  %idxRangeMask = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hashSet, ptr %hashSet.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hashSet.addr, metadata !5599, metadata !DIExpression()), !dbg !5604
  store ptr %ddict, ptr %ddict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddict.addr, metadata !5600, metadata !DIExpression()), !dbg !5605
  call void @llvm.lifetime.start.p0(i64 4, ptr %dictID) #8, !dbg !5606
  call void @llvm.dbg.declare(metadata ptr %dictID, metadata !5601, metadata !DIExpression()), !dbg !5607
  %0 = load ptr, ptr %ddict.addr, align 8, !dbg !5608
  %call = call i32 @ZSTD_getDictID_fromDDict(ptr noundef %0) #7, !dbg !5609
  store i32 %call, ptr %dictID, align 4, !dbg !5607
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #8, !dbg !5610
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !5602, metadata !DIExpression()), !dbg !5611
  %1 = load ptr, ptr %hashSet.addr, align 8, !dbg !5612
  %2 = load i32, ptr %dictID, align 4, !dbg !5613
  %call1 = call i64 @ZSTD_DDictHashSet_getIndex(ptr noundef %1, i32 noundef %2) #7, !dbg !5614
  store i64 %call1, ptr %idx, align 8, !dbg !5611
  call void @llvm.lifetime.start.p0(i64 8, ptr %idxRangeMask) #8, !dbg !5615
  call void @llvm.dbg.declare(metadata ptr %idxRangeMask, metadata !5603, metadata !DIExpression()), !dbg !5616
  %3 = load ptr, ptr %hashSet.addr, align 8, !dbg !5617
  %ddictPtrTableSize = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %3, i32 0, i32 1, !dbg !5618
  %4 = load i64, ptr %ddictPtrTableSize, align 8, !dbg !5618
  %sub = sub i64 %4, 1, !dbg !5619
  store i64 %sub, ptr %idxRangeMask, align 8, !dbg !5616
  %5 = load ptr, ptr %hashSet.addr, align 8, !dbg !5620
  %ddictPtrCount = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %5, i32 0, i32 2, !dbg !5620
  %6 = load i64, ptr %ddictPtrCount, align 8, !dbg !5620
  %7 = load ptr, ptr %hashSet.addr, align 8, !dbg !5620
  %ddictPtrTableSize2 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %7, i32 0, i32 1, !dbg !5620
  %8 = load i64, ptr %ddictPtrTableSize2, align 8, !dbg !5620
  %cmp = icmp eq i64 %6, %8, !dbg !5620
  br i1 %cmp, label %if.then, label %if.end, !dbg !5622

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5623

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !5625

while.cond:                                       ; preds = %if.end11, %if.end
  %9 = load ptr, ptr %hashSet.addr, align 8, !dbg !5626
  %ddictPtrTable = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %9, i32 0, i32 0, !dbg !5627
  %10 = load ptr, ptr %ddictPtrTable, align 8, !dbg !5627
  %11 = load i64, ptr %idx, align 8, !dbg !5628
  %arrayidx = getelementptr ptr, ptr %10, i64 %11, !dbg !5626
  %12 = load ptr, ptr %arrayidx, align 8, !dbg !5626
  %cmp3 = icmp ne ptr %12, null, !dbg !5629
  br i1 %cmp3, label %while.body, label %while.end, !dbg !5625

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %hashSet.addr, align 8, !dbg !5630
  %ddictPtrTable4 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %13, i32 0, i32 0, !dbg !5633
  %14 = load ptr, ptr %ddictPtrTable4, align 8, !dbg !5633
  %15 = load i64, ptr %idx, align 8, !dbg !5634
  %arrayidx5 = getelementptr ptr, ptr %14, i64 %15, !dbg !5630
  %16 = load ptr, ptr %arrayidx5, align 8, !dbg !5630
  %call6 = call i32 @ZSTD_getDictID_fromDDict(ptr noundef %16) #7, !dbg !5635
  %17 = load i32, ptr %dictID, align 4, !dbg !5636
  %cmp7 = icmp eq i32 %call6, %17, !dbg !5637
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !5638

if.then8:                                         ; preds = %while.body
  %18 = load ptr, ptr %ddict.addr, align 8, !dbg !5639
  %19 = load ptr, ptr %hashSet.addr, align 8, !dbg !5641
  %ddictPtrTable9 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %19, i32 0, i32 0, !dbg !5642
  %20 = load ptr, ptr %ddictPtrTable9, align 8, !dbg !5642
  %21 = load i64, ptr %idx, align 8, !dbg !5643
  %arrayidx10 = getelementptr ptr, ptr %20, i64 %21, !dbg !5641
  store ptr %18, ptr %arrayidx10, align 8, !dbg !5644
  store i64 0, ptr %retval, align 8, !dbg !5645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5645

if.end11:                                         ; preds = %while.body
  %22 = load i64, ptr %idxRangeMask, align 8, !dbg !5646
  %23 = load i64, ptr %idx, align 8, !dbg !5647
  %and = and i64 %23, %22, !dbg !5647
  store i64 %and, ptr %idx, align 8, !dbg !5647
  %24 = load i64, ptr %idx, align 8, !dbg !5648
  %inc = add i64 %24, 1, !dbg !5648
  store i64 %inc, ptr %idx, align 8, !dbg !5648
  br label %while.cond, !dbg !5625, !llvm.loop !5649

while.end:                                        ; preds = %while.cond
  %25 = load ptr, ptr %ddict.addr, align 8, !dbg !5651
  %26 = load ptr, ptr %hashSet.addr, align 8, !dbg !5652
  %ddictPtrTable12 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %26, i32 0, i32 0, !dbg !5653
  %27 = load ptr, ptr %ddictPtrTable12, align 8, !dbg !5653
  %28 = load i64, ptr %idx, align 8, !dbg !5654
  %arrayidx13 = getelementptr ptr, ptr %27, i64 %28, !dbg !5652
  store ptr %25, ptr %arrayidx13, align 8, !dbg !5655
  %29 = load ptr, ptr %hashSet.addr, align 8, !dbg !5656
  %ddictPtrCount14 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %29, i32 0, i32 2, !dbg !5657
  %30 = load i64, ptr %ddictPtrCount14, align 8, !dbg !5658
  %inc15 = add i64 %30, 1, !dbg !5658
  store i64 %inc15, ptr %ddictPtrCount14, align 8, !dbg !5658
  store i64 0, ptr %retval, align 8, !dbg !5659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5659

cleanup:                                          ; preds = %while.end, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %idxRangeMask) #8, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #8, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 4, ptr %dictID) #8, !dbg !5660
  %31 = load i64, ptr %retval, align 8, !dbg !5660
  ret i64 %31, !dbg !5660
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5661 dso_local i32 @ZSTD_getDictID_fromDDict(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ZSTD_DDictHashSet_getIndex(ptr noundef %hashSet, i32 noundef %dictID) #0 align 16 !dbg !5664 {
entry:
  %hashSet.addr = alloca ptr, align 8
  %dictID.addr = alloca i32, align 4
  %hash = alloca i64, align 8
  store ptr %hashSet, ptr %hashSet.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hashSet.addr, metadata !5670, metadata !DIExpression()), !dbg !5674
  store i32 %dictID, ptr %dictID.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictID.addr, metadata !5671, metadata !DIExpression()), !dbg !5675
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #8, !dbg !5676
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !5672, metadata !DIExpression()), !dbg !5677
  %call = call i64 @xxh64(ptr noundef %dictID.addr, i64 noundef 4, i64 noundef 0) #7, !dbg !5678
  store i64 %call, ptr %hash, align 8, !dbg !5677
  %0 = load i64, ptr %hash, align 8, !dbg !5679
  %1 = load ptr, ptr %hashSet.addr, align 8, !dbg !5680
  %ddictPtrTableSize = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %1, i32 0, i32 1, !dbg !5681
  %2 = load i64, ptr %ddictPtrTableSize, align 8, !dbg !5681
  %sub = sub i64 %2, 1, !dbg !5682
  %and = and i64 %0, %sub, !dbg !5683
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #8, !dbg !5684
  ret i64 %and, !dbg !5685
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5686 dso_local i64 @xxh64(ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ZSTD_DDictHashSet_getDDict(ptr noundef %hashSet, i32 noundef %dictID) #0 align 16 !dbg !5689 {
entry:
  %hashSet.addr = alloca ptr, align 8
  %dictID.addr = alloca i32, align 4
  %idx = alloca i64, align 8
  %idxRangeMask = alloca i64, align 8
  %currDictID = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hashSet, ptr %hashSet.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hashSet.addr, metadata !5693, metadata !DIExpression()), !dbg !5701
  store i32 %dictID, ptr %dictID.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictID.addr, metadata !5694, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #8, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !5695, metadata !DIExpression()), !dbg !5704
  %0 = load ptr, ptr %hashSet.addr, align 8, !dbg !5705
  %1 = load i32, ptr %dictID.addr, align 4, !dbg !5706
  %call = call i64 @ZSTD_DDictHashSet_getIndex(ptr noundef %0, i32 noundef %1) #7, !dbg !5707
  store i64 %call, ptr %idx, align 8, !dbg !5704
  call void @llvm.lifetime.start.p0(i64 8, ptr %idxRangeMask) #8, !dbg !5708
  call void @llvm.dbg.declare(metadata ptr %idxRangeMask, metadata !5696, metadata !DIExpression()), !dbg !5709
  %2 = load ptr, ptr %hashSet.addr, align 8, !dbg !5710
  %ddictPtrTableSize = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %2, i32 0, i32 1, !dbg !5711
  %3 = load i64, ptr %ddictPtrTableSize, align 8, !dbg !5711
  %sub = sub i64 %3, 1, !dbg !5712
  store i64 %sub, ptr %idxRangeMask, align 8, !dbg !5709
  br label %for.cond, !dbg !5713

for.cond:                                         ; preds = %cleanup.cont, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %currDictID) #8, !dbg !5714
  call void @llvm.dbg.declare(metadata ptr %currDictID, metadata !5697, metadata !DIExpression()), !dbg !5715
  %4 = load ptr, ptr %hashSet.addr, align 8, !dbg !5716
  %ddictPtrTable = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %4, i32 0, i32 0, !dbg !5717
  %5 = load ptr, ptr %ddictPtrTable, align 8, !dbg !5717
  %6 = load i64, ptr %idx, align 8, !dbg !5718
  %arrayidx = getelementptr ptr, ptr %5, i64 %6, !dbg !5716
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !5716
  %call1 = call i32 @ZSTD_getDictID_fromDDict(ptr noundef %7) #7, !dbg !5719
  %conv = zext i32 %call1 to i64, !dbg !5719
  store i64 %conv, ptr %currDictID, align 8, !dbg !5715
  %8 = load i64, ptr %currDictID, align 8, !dbg !5720
  %9 = load i32, ptr %dictID.addr, align 4, !dbg !5722
  %conv2 = zext i32 %9 to i64, !dbg !5722
  %cmp = icmp eq i64 %8, %conv2, !dbg !5723
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5724

lor.lhs.false:                                    ; preds = %for.cond
  %10 = load i64, ptr %currDictID, align 8, !dbg !5725
  %cmp4 = icmp eq i64 %10, 0, !dbg !5726
  br i1 %cmp4, label %if.then, label %if.else, !dbg !5727

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5728

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i64, ptr %idxRangeMask, align 8, !dbg !5730
  %12 = load i64, ptr %idx, align 8, !dbg !5732
  %and = and i64 %12, %11, !dbg !5732
  store i64 %and, ptr %idx, align 8, !dbg !5732
  %13 = load i64, ptr %idx, align 8, !dbg !5733
  %inc = add i64 %13, 1, !dbg !5733
  store i64 %inc, ptr %idx, align 8, !dbg !5733
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5734
  br label %cleanup, !dbg !5734

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %currDictID) #8, !dbg !5734
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5735, !llvm.loop !5736

for.end:                                          ; preds = %cleanup
  %14 = load ptr, ptr %hashSet.addr, align 8, !dbg !5739
  %ddictPtrTable6 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %14, i32 0, i32 0, !dbg !5740
  %15 = load ptr, ptr %ddictPtrTable6, align 8, !dbg !5740
  %16 = load i64, ptr %idx, align 8, !dbg !5741
  %arrayidx7 = getelementptr ptr, ptr %15, i64 %16, !dbg !5739
  %17 = load ptr, ptr %arrayidx7, align 8, !dbg !5739
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %idxRangeMask) #8, !dbg !5742
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #8, !dbg !5742
  ret ptr %17, !dbg !5743

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ZSTD_DCtx_isOverflow(ptr noundef %zds, i64 noundef %neededInBuffSize, i64 noundef %neededOutBuffSize) #0 align 16 !dbg !5744 {
entry:
  %zds.addr = alloca ptr, align 8
  %neededInBuffSize.addr = alloca i64, align 8
  %neededOutBuffSize.addr = alloca i64, align 8
  store ptr %zds, ptr %zds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zds.addr, metadata !5748, metadata !DIExpression()), !dbg !5751
  store i64 %neededInBuffSize, ptr %neededInBuffSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %neededInBuffSize.addr, metadata !5749, metadata !DIExpression()), !dbg !5752
  store i64 %neededOutBuffSize, ptr %neededOutBuffSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %neededOutBuffSize.addr, metadata !5750, metadata !DIExpression()), !dbg !5753
  %0 = load ptr, ptr %zds.addr, align 8, !dbg !5754
  %inBuffSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 38, !dbg !5755
  %1 = load i64, ptr %inBuffSize, align 8, !dbg !5755
  %2 = load ptr, ptr %zds.addr, align 8, !dbg !5756
  %outBuffSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %2, i32 0, i32 42, !dbg !5757
  %3 = load i64, ptr %outBuffSize, align 8, !dbg !5757
  %add = add i64 %1, %3, !dbg !5758
  %4 = load i64, ptr %neededInBuffSize.addr, align 8, !dbg !5759
  %5 = load i64, ptr %neededOutBuffSize.addr, align 8, !dbg !5760
  %add1 = add i64 %4, %5, !dbg !5761
  %mul = mul i64 %add1, 3, !dbg !5762
  %cmp = icmp uge i64 %add, %mul, !dbg !5763
  %conv = zext i1 %cmp to i32, !dbg !5763
  ret i32 %conv, !dbg !5764
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!420, !421, !422, !423, !424, !425, !426, !427}
!llvm.ident = !{!428}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ZSTD_defaultCMem", scope: !2, file: !6, line: 1571, type: !419, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zstd/decompress/.zstd_decompress.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zstd/zstd_decompress\22 -D KBUILD_BASENAME=\22zstd_decompress\22 -D KBUILD_MODNAME=\22zstd_decompress\22 -D __KBUILD_MODNAME=kmod_zstd_decompress -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zstd/decompress/zstd_decompress.ll lib/zstd/decompress/zstd_decompress.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !128, globals: !380, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/zstd/decompress/zstd_decompress.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8167dcd5a2b9edd9d06ca6266a080664")
!4 = !{!5, !11, !18, !29, !33, !37, !43, !47, !54, !58, !63, !94, !102, !107, !111, !116, !121}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 2474, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/zstd_lib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8133d2f71405070b8bf1f9699046d166")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "ZSTD_frame", value: 0)
!10 = !DIEnumerator(name: "ZSTD_skippableFrame", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 81, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "lib/zstd/decompress/../common/zstd_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c514f784a58bd125143564d5f9097a9")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "bt_raw", value: 0)
!15 = !DIEnumerator(name: "bt_rle", value: 1)
!16 = !DIEnumerator(name: "bt_compressed", value: 2)
!17 = !DIEnumerator(name: "bt_reserved", value: 3)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 88, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "lib/zstd/decompress/zstd_decompress_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5223103cf3e1f284362511d946d93a92")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28}
!21 = !DIEnumerator(name: "ZSTDds_getFrameHeaderSize", value: 0)
!22 = !DIEnumerator(name: "ZSTDds_decodeFrameHeader", value: 1)
!23 = !DIEnumerator(name: "ZSTDds_decodeBlockHeader", value: 2)
!24 = !DIEnumerator(name: "ZSTDds_decompressBlock", value: 3)
!25 = !DIEnumerator(name: "ZSTDds_decompressLastBlock", value: 4)
!26 = !DIEnumerator(name: "ZSTDds_checkChecksum", value: 5)
!27 = !DIEnumerator(name: "ZSTDds_decodeSkippableHeader", value: 6)
!28 = !DIEnumerator(name: "ZSTDds_skipFrame", value: 7)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1228, baseType: !7, size: 32, elements: !30)
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "ZSTD_f_zstd1", value: 0)
!32 = !DIEnumerator(name: "ZSTD_f_zstd1_magicless", value: 1)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1235, baseType: !7, size: 32, elements: !34)
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "ZSTD_d_validateChecksum", value: 0)
!36 = !DIEnumerator(name: "ZSTD_d_ignoreChecksum", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 96, baseType: !38, size: 32, elements: !39)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "ZSTD_use_indefinitely", value: -1)
!41 = !DIEnumerator(name: "ZSTD_dont_use", value: 0)
!42 = !DIEnumerator(name: "ZSTD_use_once", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1241, baseType: !7, size: 32, elements: !44)
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "ZSTD_rmd_refSingleDDict", value: 0)
!46 = !DIEnumerator(name: "ZSTD_rmd_refMultipleDDicts", value: 1)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 93, baseType: !7, size: 32, elements: !48)
!48 = !{!49, !50, !51, !52, !53}
!49 = !DIEnumerator(name: "zdss_init", value: 0)
!50 = !DIEnumerator(name: "zdss_loadHeader", value: 1)
!51 = !DIEnumerator(name: "zdss_read", value: 2)
!52 = !DIEnumerator(name: "zdss_load", value: 3)
!53 = !DIEnumerator(name: "zdss_flush", value: 4)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 267, baseType: !7, size: 32, elements: !55)
!55 = !{!56, !57}
!56 = !DIEnumerator(name: "ZSTD_bm_buffered", value: 0)
!57 = !DIEnumerator(name: "ZSTD_bm_stable", value: 1)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 119, baseType: !7, size: 32, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "ZSTD_not_in_dst", value: 0)
!61 = !DIEnumerator(name: "ZSTD_in_dst", value: 1)
!62 = !DIEnumerator(name: "ZSTD_split", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 37, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/zstd_errors.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b65e56a0777f4855c2ba6522d04d0e69")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!66 = !DIEnumerator(name: "ZSTD_error_no_error", value: 0)
!67 = !DIEnumerator(name: "ZSTD_error_GENERIC", value: 1)
!68 = !DIEnumerator(name: "ZSTD_error_prefix_unknown", value: 10)
!69 = !DIEnumerator(name: "ZSTD_error_version_unsupported", value: 12)
!70 = !DIEnumerator(name: "ZSTD_error_frameParameter_unsupported", value: 14)
!71 = !DIEnumerator(name: "ZSTD_error_frameParameter_windowTooLarge", value: 16)
!72 = !DIEnumerator(name: "ZSTD_error_corruption_detected", value: 20)
!73 = !DIEnumerator(name: "ZSTD_error_checksum_wrong", value: 22)
!74 = !DIEnumerator(name: "ZSTD_error_dictionary_corrupted", value: 30)
!75 = !DIEnumerator(name: "ZSTD_error_dictionary_wrong", value: 32)
!76 = !DIEnumerator(name: "ZSTD_error_dictionaryCreation_failed", value: 34)
!77 = !DIEnumerator(name: "ZSTD_error_parameter_unsupported", value: 40)
!78 = !DIEnumerator(name: "ZSTD_error_parameter_outOfBound", value: 42)
!79 = !DIEnumerator(name: "ZSTD_error_tableLog_tooLarge", value: 44)
!80 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooLarge", value: 46)
!81 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooSmall", value: 48)
!82 = !DIEnumerator(name: "ZSTD_error_stage_wrong", value: 60)
!83 = !DIEnumerator(name: "ZSTD_error_init_missing", value: 62)
!84 = !DIEnumerator(name: "ZSTD_error_memory_allocation", value: 64)
!85 = !DIEnumerator(name: "ZSTD_error_workSpace_tooSmall", value: 66)
!86 = !DIEnumerator(name: "ZSTD_error_dstSize_tooSmall", value: 70)
!87 = !DIEnumerator(name: "ZSTD_error_srcSize_wrong", value: 72)
!88 = !DIEnumerator(name: "ZSTD_error_dstBuffer_null", value: 74)
!89 = !DIEnumerator(name: "ZSTD_error_frameIndex_tooLarge", value: 100)
!90 = !DIEnumerator(name: "ZSTD_error_seekableIO", value: 102)
!91 = !DIEnumerator(name: "ZSTD_error_dstBuffer_wrong", value: 104)
!92 = !DIEnumerator(name: "ZSTD_error_srcBuffer_wrong", value: 105)
!93 = !DIEnumerator(name: "ZSTD_error_maxCode", value: 120)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 2506, baseType: !7, size: 32, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101}
!96 = !DIEnumerator(name: "ZSTDnit_frameHeader", value: 0)
!97 = !DIEnumerator(name: "ZSTDnit_blockHeader", value: 1)
!98 = !DIEnumerator(name: "ZSTDnit_block", value: 2)
!99 = !DIEnumerator(name: "ZSTDnit_lastBlock", value: 3)
!100 = !DIEnumerator(name: "ZSTDnit_checksum", value: 4)
!101 = !DIEnumerator(name: "ZSTDnit_skippableFrame", value: 5)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 37, baseType: !7, size: 32, elements: !104)
!103 = !DIFile(filename: "lib/zstd/decompress/zstd_decompress_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c33e8b9f2c1bee26dc711ab47bed86c7")
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "not_streaming", value: 0)
!106 = !DIEnumerator(name: "is_streaming", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1223, baseType: !7, size: 32, elements: !108)
!108 = !{!109, !110}
!109 = !DIEnumerator(name: "ZSTD_dlm_byCopy", value: 0)
!110 = !DIEnumerator(name: "ZSTD_dlm_byRef", value: 1)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1217, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "ZSTD_dct_auto", value: 0)
!114 = !DIEnumerator(name: "ZSTD_dct_rawContent", value: 1)
!115 = !DIEnumerator(name: "ZSTD_dct_fullDict", value: 2)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 481, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "ZSTD_reset_session_only", value: 1)
!119 = !DIEnumerator(name: "ZSTD_reset_parameters", value: 2)
!120 = !DIEnumerator(name: "ZSTD_reset_session_and_parameters", value: 3)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 530, baseType: !7, size: 32, elements: !122)
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "ZSTD_d_windowLogMax", value: 100)
!124 = !DIEnumerator(name: "ZSTD_d_experimentalParam1", value: 1000)
!125 = !DIEnumerator(name: "ZSTD_d_experimentalParam2", value: 1001)
!126 = !DIEnumerator(name: "ZSTD_d_experimentalParam3", value: 1002)
!127 = !DIEnumerator(name: "ZSTD_d_experimentalParam4", value: 1003)
!128 = !{!129, !130, !205, !302, !256, !337, !158, !38, !7, !167, !251, !315, !253, !298, !215, !224, !161, !339, !341, !147, !354, !355, !227, !367, !368, !324, !289, !294}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DCtx", file: !6, line: 216, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_DCtx_s", file: !19, line: 125, size: 767552, elements: !133)
!133 = !{!134, !162, !163, !164, !169, !194, !198, !201, !202, !203, !204, !210, !223, !228, !229, !231, !233, !234, !235, !249, !250, !252, !254, !255, !258, !273, !274, !275, !276, !277, !281, !284, !285, !286, !288, !297, !299, !301, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !316, !323, !325, !326, !328, !332, !336}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "LLTptr", scope: !132, file: !19, line: 127, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_seqSymbol", file: !19, line: 72, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 67, size: 64, elements: !139)
!139 = !{!140, !150, !156, !157}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nextState", scope: !138, file: !19, line: 68, baseType: !141, size: 16)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !142, line: 35, baseType: !143)
!142 = !DIFile(filename: "lib/zstd/decompress/../common/mem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ecad453ab26990e649f823cad6e0e9a6")
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !144, line: 109, baseType: !145)
!144 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !146, line: 19, baseType: !147)
!146 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !148, line: 24, baseType: !149)
!148 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!149 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nbAdditionalBits", scope: !138, file: !19, line: 69, baseType: !151, size: 8, offset: 16)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !142, line: 32, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !144, line: 108, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !146, line: 17, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !148, line: 21, baseType: !155)
!155 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nbBits", scope: !138, file: !19, line: 70, baseType: !151, size: 8, offset: 24)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "baseValue", scope: !138, file: !19, line: 71, baseType: !158, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !142, line: 37, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !144, line: 110, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !146, line: 21, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !148, line: 27, baseType: !7)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "MLTptr", scope: !132, file: !19, line: 128, baseType: !135, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "OFTptr", scope: !132, file: !19, line: 129, baseType: !135, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "HUFptr", scope: !132, file: !19, line: 130, baseType: !165, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "HUF_DTable", file: !168, line: 143, baseType: !158)
!168 = !DIFile(filename: "lib/zstd/decompress/../common/huf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3885d88b55dce6c8e4168e380ad868c4")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !132, file: !19, line: 131, baseType: !170, size: 218336, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_entropyDTables_t", file: !19, line: 86, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 79, size: 218336, elements: !172)
!172 = !{!173, !177, !181, !182, !186, !190}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "LLTable", scope: !171, file: !19, line: 80, baseType: !174, size: 32832)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 32832, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 513)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "OFTable", scope: !171, file: !19, line: 81, baseType: !178, size: 16448, offset: 32832)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 16448, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 257)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "MLTable", scope: !171, file: !19, line: 82, baseType: !174, size: 32832, offset: 49280)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "hufTable", scope: !171, file: !19, line: 83, baseType: !183, size: 131104, offset: 82112)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 131104, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 4097)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !171, file: !19, line: 84, baseType: !187, size: 96, offset: 213216)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 96, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 3)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !171, file: !19, line: 85, baseType: !191, size: 5024, offset: 213312)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 5024, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 157)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !132, file: !19, line: 132, baseType: !195, size: 20480, offset: 218592)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 20480, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 640)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "previousDstEnd", scope: !132, file: !19, line: 133, baseType: !199, size: 64, offset: 239104)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "prefixStart", scope: !132, file: !19, line: 134, baseType: !199, size: 64, offset: 239168)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "virtualStart", scope: !132, file: !19, line: 135, baseType: !199, size: 64, offset: 239232)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dictEnd", scope: !132, file: !19, line: 136, baseType: !199, size: 64, offset: 239296)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "expected", scope: !132, file: !19, line: 137, baseType: !205, size: 64, offset: 239360)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 61, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !207, line: 72, baseType: !208)
!207 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !207, line: 16, baseType: !209)
!209 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "fParams", scope: !132, file: !19, line: 138, baseType: !211, size: 320, offset: 239424)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_frameHeader", file: !6, line: 2483, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 2475, size: 320, elements: !213)
!213 = !{!214, !216, !217, !218, !220, !221, !222}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "frameContentSize", scope: !212, file: !6, line: 2476, baseType: !215, size: 64)
!215 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "windowSize", scope: !212, file: !6, line: 2477, baseType: !215, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "blockSizeMax", scope: !212, file: !6, line: 2478, baseType: !7, size: 32, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "frameType", scope: !212, file: !6, line: 2479, baseType: !219, size: 32, offset: 160)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_frameType_e", file: !6, line: 2474, baseType: !5)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "headerSize", scope: !212, file: !6, line: 2480, baseType: !7, size: 32, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "dictID", scope: !212, file: !6, line: 2481, baseType: !7, size: 32, offset: 224)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "checksumFlag", scope: !212, file: !6, line: 2482, baseType: !7, size: 32, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "processedCSize", scope: !132, file: !19, line: 139, baseType: !224, size: 64, offset: 239744)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "U64", file: !142, line: 39, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !144, line: 113, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !146, line: 23, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !148, line: 31, baseType: !215)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "decodedSize", scope: !132, file: !19, line: 140, baseType: !224, size: 64, offset: 239808)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "bType", scope: !132, file: !19, line: 141, baseType: !230, size: 32, offset: 239872)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockType_e", file: !12, line: 81, baseType: !11)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "stage", scope: !132, file: !19, line: 142, baseType: !232, size: 32, offset: 239904)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dStage", file: !19, line: 91, baseType: !18)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "litEntropy", scope: !132, file: !19, line: 143, baseType: !158, size: 32, offset: 239936)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "fseEntropy", scope: !132, file: !19, line: 144, baseType: !158, size: 32, offset: 239968)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "xxhState", scope: !132, file: !19, line: 145, baseType: !236, size: 640, offset: 240000)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xxh64_state", file: !237, line: 160, size: 640, elements: !238)
!237 = !DIFile(filename: "./include/linux/xxhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c71ec635eedf0b4cf42578b400352c76")
!238 = !{!239, !240, !241, !242, !243, !244, !248}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "total_len", scope: !236, file: !237, line: 161, baseType: !225, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !236, file: !237, line: 162, baseType: !225, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !236, file: !237, line: 163, baseType: !225, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !236, file: !237, line: 164, baseType: !225, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !236, file: !237, line: 165, baseType: !225, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mem64", scope: !236, file: !237, line: 166, baseType: !245, size: 256, offset: 320)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 4)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "memsize", scope: !236, file: !237, line: 167, baseType: !159, size: 32, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "headerSize", scope: !132, file: !19, line: 146, baseType: !205, size: 64, offset: 240640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !132, file: !19, line: 147, baseType: !251, size: 32, offset: 240704)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_format_e", file: !6, line: 1233, baseType: !29)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "forceIgnoreChecksum", scope: !132, file: !19, line: 148, baseType: !253, size: 32, offset: 240736)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_forceIgnoreChecksum_e", file: !6, line: 1239, baseType: !33)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "validateChecksum", scope: !132, file: !19, line: 149, baseType: !158, size: 32, offset: 240768)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "litPtr", scope: !132, file: !19, line: 150, baseType: !256, size: 64, offset: 240832)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "customMem", scope: !132, file: !19, line: 151, baseType: !259, size: 192, offset: 240896)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_customMem", file: !6, line: 1568, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 1568, size: 192, elements: !261)
!261 = !{!262, !267, !272}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "customAlloc", scope: !260, file: !6, line: 1568, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_allocFunction", file: !6, line: 1566, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!129, !129, !205}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "customFree", scope: !260, file: !6, line: 1568, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_freeFunction", file: !6, line: 1567, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !129, !129}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !260, file: !6, line: 1568, baseType: !129, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "litSize", scope: !132, file: !19, line: 152, baseType: !205, size: 64, offset: 241088)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "rleSize", scope: !132, file: !19, line: 153, baseType: !205, size: 64, offset: 241152)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "staticSize", scope: !132, file: !19, line: 154, baseType: !205, size: 64, offset: 241216)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "bmi2", scope: !132, file: !19, line: 156, baseType: !38, size: 32, offset: 241280)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ddictLocal", scope: !132, file: !19, line: 160, baseType: !278, size: 64, offset: 241344)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DDict", file: !6, line: 868, baseType: !280)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_DDict_s", file: !6, line: 868, flags: DIFlagFwdDecl)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ddict", scope: !132, file: !19, line: 161, baseType: !282, size: 64, offset: 241408)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "dictID", scope: !132, file: !19, line: 162, baseType: !158, size: 32, offset: 241472)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ddictIsCold", scope: !132, file: !19, line: 163, baseType: !38, size: 32, offset: 241504)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "dictUses", scope: !132, file: !19, line: 164, baseType: !287, size: 32, offset: 241536)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dictUses_e", file: !19, line: 100, baseType: !37)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ddictSet", scope: !132, file: !19, line: 165, baseType: !289, size: 64, offset: 241600)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DDictHashSet", file: !19, line: 107, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 103, size: 192, elements: !292)
!292 = !{!293, !295, !296}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ddictPtrTable", scope: !291, file: !19, line: 104, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ddictPtrTableSize", scope: !291, file: !19, line: 105, baseType: !205, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ddictPtrCount", scope: !291, file: !19, line: 106, baseType: !205, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "refMultipleDDicts", scope: !132, file: !19, line: 166, baseType: !298, size: 32, offset: 241664)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_refMultipleDDicts_e", file: !6, line: 1245, baseType: !43)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "streamStage", scope: !132, file: !19, line: 169, baseType: !300, size: 32, offset: 241696)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dStreamStage", file: !19, line: 94, baseType: !47)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "inBuff", scope: !132, file: !19, line: 170, baseType: !302, size: 64, offset: 241728)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "inBuffSize", scope: !132, file: !19, line: 171, baseType: !205, size: 64, offset: 241792)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "inPos", scope: !132, file: !19, line: 172, baseType: !205, size: 64, offset: 241856)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "maxWindowSize", scope: !132, file: !19, line: 173, baseType: !205, size: 64, offset: 241920)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "outBuff", scope: !132, file: !19, line: 174, baseType: !302, size: 64, offset: 241984)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "outBuffSize", scope: !132, file: !19, line: 175, baseType: !205, size: 64, offset: 242048)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "outStart", scope: !132, file: !19, line: 176, baseType: !205, size: 64, offset: 242112)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "outEnd", scope: !132, file: !19, line: 177, baseType: !205, size: 64, offset: 242176)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "lhSize", scope: !132, file: !19, line: 178, baseType: !205, size: 64, offset: 242240)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "hostageByte", scope: !132, file: !19, line: 179, baseType: !158, size: 32, offset: 242304)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "noForwardProgress", scope: !132, file: !19, line: 180, baseType: !38, size: 32, offset: 242336)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "outBufferMode", scope: !132, file: !19, line: 181, baseType: !315, size: 32, offset: 242368)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_bufferMode_e", file: !12, line: 270, baseType: !54)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "expectedOutBuffer", scope: !132, file: !19, line: 182, baseType: !317, size: 192, offset: 242432)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_outBuffer", file: !6, line: 597, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_outBuffer_s", file: !6, line: 593, size: 192, elements: !319)
!319 = !{!320, !321, !322}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !318, file: !6, line: 594, baseType: !129, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !318, file: !6, line: 595, baseType: !205, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !318, file: !6, line: 596, baseType: !205, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "litBuffer", scope: !132, file: !19, line: 185, baseType: !324, size: 64, offset: 242624)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "litBufferEnd", scope: !132, file: !19, line: 186, baseType: !256, size: 64, offset: 242688)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "litBufferLocation", scope: !132, file: !19, line: 187, baseType: !327, size: 32, offset: 242752)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_litLocation_e", file: !19, line: 123, baseType: !58)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "litExtraBuffer", scope: !132, file: !19, line: 188, baseType: !329, size: 524544, offset: 242784)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 524544, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 65568)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "headerBuffer", scope: !132, file: !19, line: 189, baseType: !333, size: 144, offset: 767328)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 144, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 18)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "oversizedDuration", scope: !132, file: !19, line: 191, baseType: !205, size: 64, offset: 767488)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !340, line: 38, baseType: !161)
!340 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !344, line: 32, size: 32, elements: !352)
!344 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!345 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !344, file: !344, line: 30, type: !346, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!160, !199}
!348 = !{!349, !350}
!349 = !DILocalVariable(name: "p", arg: 1, scope: !345, file: !344, line: 30, type: !199)
!350 = !DILocalVariable(name: "__pptr", scope: !351, file: !344, line: 32, type: !341)
!351 = distinct !DILexicalBlock(scope: !345, file: !344, line: 32, column: 9)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !343, file: !344, line: 32, baseType: !339, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !340, line: 36, baseType: !147)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !344, line: 27, size: 16, elements: !365)
!358 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !344, file: !344, line: 25, type: !359, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{!145, !199}
!361 = !{!362, !363}
!362 = !DILocalVariable(name: "p", arg: 1, scope: !358, file: !344, line: 25, type: !199)
!363 = !DILocalVariable(name: "__pptr", scope: !364, file: !344, line: 27, type: !355)
!364 = distinct !DILexicalBlock(scope: !358, file: !344, line: 27, column: 9)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !357, file: !344, line: 27, baseType: !354, size: 16)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !340, line: 40, baseType: !227)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !344, line: 37, size: 64, elements: !378)
!371 = distinct !DISubprogram(name: "get_unaligned_le64", scope: !344, file: !344, line: 35, type: !372, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !374)
!372 = !DISubroutineType(types: !373)
!373 = !{!226, !199}
!374 = !{!375, !376}
!375 = !DILocalVariable(name: "p", arg: 1, scope: !371, file: !344, line: 35, type: !199)
!376 = !DILocalVariable(name: "__pptr", scope: !377, file: !344, line: 37, type: !368)
!377 = distinct !DILexicalBlock(scope: !371, file: !344, line: 37, column: 9)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !370, file: !344, line: 37, baseType: !367, size: 64)
!380 = !{!381, !0, !384, !387, !389, !395, !400, !405, !408, !413, !416}
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!382 = distinct !DIGlobalVariable(name: "ZSTD_blockHeaderSize", scope: !2, file: !12, line: 80, type: !383, isLocal: true, isDefinition: true)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "ZSTD_did_fieldSize", scope: !2, file: !12, line: 75, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 256, elements: !246)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "ZSTD_fcs_fieldSize", scope: !2, file: !12, line: 74, type: !386, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "OF_base", scope: !2, file: !19, line: 37, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 1024, elements: !393)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!393 = !{!394}
!394 = !DISubrange(count: 32)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "OF_bits", scope: !2, file: !19, line: 43, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 256, elements: !393)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !142, line: 33, baseType: !152)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "ML_base", scope: !2, file: !19, line: 49, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 1696, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 53)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "ML_bits", scope: !2, file: !12, line: 128, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 424, elements: !403)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "LL_base", scope: !2, file: !19, line: 30, type: !410, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 1152, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 36)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "LL_bits", scope: !2, file: !12, line: 111, type: !415, isLocal: true, isDefinition: true)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 288, elements: !411)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "repStartValue", scope: !2, file: !12, line: 60, type: !418, isLocal: true, isDefinition: true)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 96, elements: !188)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!420 = !{i32 7, !"Dwarf Version", i32 5}
!421 = !{i32 2, !"Debug Info Version", i32 3}
!422 = !{i32 1, !"wchar_size", i32 2}
!423 = !{i32 8, !"cf-protection-branch", i32 1}
!424 = !{i32 4, !"function_return_thunk_extern", i32 1}
!425 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!426 = !{i32 1, !"Code Model", i32 2}
!427 = !{i32 1, !"override-stack-alignment", i32 8}
!428 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!429 = distinct !DISubprogram(name: "ZSTD_sizeof_DCtx", scope: !3, file: !3, line: 213, type: !430, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !434)
!430 = !DISubroutineType(types: !431)
!431 = !{!205, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!434 = !{!435}
!435 = !DILocalVariable(name: "dctx", arg: 1, scope: !429, file: !3, line: 213, type: !432)
!436 = !DILocation(line: 213, column: 43, scope: !429)
!437 = !DILocation(line: 215, column: 9, scope: !438)
!438 = distinct !DILexicalBlock(scope: !429, file: !3, line: 215, column: 9)
!439 = !DILocation(line: 215, column: 13, scope: !438)
!440 = !DILocation(line: 215, column: 9, scope: !429)
!441 = !DILocation(line: 215, column: 21, scope: !438)
!442 = !DILocation(line: 217, column: 32, scope: !429)
!443 = !DILocation(line: 217, column: 38, scope: !429)
!444 = !DILocation(line: 217, column: 14, scope: !429)
!445 = !DILocation(line: 217, column: 12, scope: !429)
!446 = !DILocation(line: 218, column: 14, scope: !429)
!447 = !DILocation(line: 218, column: 20, scope: !429)
!448 = !DILocation(line: 218, column: 12, scope: !429)
!449 = !DILocation(line: 218, column: 33, scope: !429)
!450 = !DILocation(line: 218, column: 39, scope: !429)
!451 = !DILocation(line: 218, column: 31, scope: !429)
!452 = !DILocation(line: 216, column: 5, scope: !429)
!453 = !DILocation(line: 219, column: 1, scope: !429)
!454 = !DISubprogram(name: "ZSTD_sizeof_DDict", scope: !6, file: !6, line: 1052, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{!205, !282}
!457 = distinct !DISubprogram(name: "ZSTD_estimateDCtxSize", scope: !3, file: !3, line: 221, type: !458, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!458 = !DISubroutineType(types: !459)
!459 = !{!205}
!460 = !DILocation(line: 221, column: 38, scope: !457)
!461 = distinct !DISubprogram(name: "ZSTD_initStaticDCtx", scope: !3, file: !3, line: 266, type: !462, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{!130, !129, !205}
!464 = !{!465, !466, !467}
!465 = !DILocalVariable(name: "workspace", arg: 1, scope: !461, file: !3, line: 266, type: !129)
!466 = !DILocalVariable(name: "workspaceSize", arg: 2, scope: !461, file: !3, line: 266, type: !205)
!467 = !DILocalVariable(name: "dctx", scope: !461, file: !3, line: 268, type: !468)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!469 = !DILocation(line: 266, column: 38, scope: !461)
!470 = !DILocation(line: 266, column: 56, scope: !461)
!471 = !DILocation(line: 268, column: 5, scope: !461)
!472 = !DILocation(line: 268, column: 22, scope: !461)
!473 = !DILocation(line: 268, column: 42, scope: !461)
!474 = !DILocation(line: 270, column: 17, scope: !475)
!475 = distinct !DILexicalBlock(scope: !461, file: !3, line: 270, column: 9)
!476 = !DILocation(line: 270, column: 9, scope: !475)
!477 = !DILocation(line: 270, column: 27, scope: !475)
!478 = !DILocation(line: 270, column: 9, scope: !461)
!479 = !DILocation(line: 270, column: 32, scope: !475)
!480 = !DILocation(line: 271, column: 9, scope: !481)
!481 = distinct !DILexicalBlock(scope: !461, file: !3, line: 271, column: 9)
!482 = !DILocation(line: 271, column: 23, scope: !481)
!483 = !DILocation(line: 271, column: 9, scope: !461)
!484 = !DILocation(line: 271, column: 44, scope: !481)
!485 = !DILocation(line: 273, column: 28, scope: !461)
!486 = !DILocation(line: 273, column: 5, scope: !461)
!487 = !DILocation(line: 274, column: 24, scope: !461)
!488 = !DILocation(line: 274, column: 5, scope: !461)
!489 = !DILocation(line: 274, column: 11, scope: !461)
!490 = !DILocation(line: 274, column: 22, scope: !461)
!491 = !DILocation(line: 275, column: 28, scope: !461)
!492 = !DILocation(line: 275, column: 32, scope: !461)
!493 = !DILocation(line: 275, column: 5, scope: !461)
!494 = !DILocation(line: 275, column: 11, scope: !461)
!495 = !DILocation(line: 275, column: 18, scope: !461)
!496 = !DILocation(line: 276, column: 12, scope: !461)
!497 = !DILocation(line: 276, column: 5, scope: !461)
!498 = !DILocation(line: 277, column: 1, scope: !461)
!499 = distinct !DISubprogram(name: "ZSTD_initDCtx_internal", scope: !3, file: !3, line: 242, type: !500, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !130}
!502 = !{!503}
!503 = !DILocalVariable(name: "dctx", arg: 1, scope: !499, file: !3, line: 242, type: !130)
!504 = !DILocation(line: 242, column: 47, scope: !499)
!505 = !DILocation(line: 244, column: 5, scope: !499)
!506 = !DILocation(line: 244, column: 11, scope: !499)
!507 = !DILocation(line: 244, column: 23, scope: !499)
!508 = !DILocation(line: 245, column: 5, scope: !499)
!509 = !DILocation(line: 245, column: 11, scope: !499)
!510 = !DILocation(line: 245, column: 23, scope: !499)
!511 = !DILocation(line: 246, column: 5, scope: !499)
!512 = !DILocation(line: 246, column: 11, scope: !499)
!513 = !DILocation(line: 246, column: 23, scope: !499)
!514 = !DILocation(line: 247, column: 5, scope: !499)
!515 = !DILocation(line: 247, column: 11, scope: !499)
!516 = !DILocation(line: 247, column: 23, scope: !499)
!517 = !DILocation(line: 248, column: 5, scope: !499)
!518 = !DILocation(line: 248, column: 11, scope: !499)
!519 = !DILocation(line: 248, column: 23, scope: !499)
!520 = !DILocation(line: 249, column: 5, scope: !499)
!521 = !DILocation(line: 249, column: 11, scope: !499)
!522 = !DILocation(line: 249, column: 20, scope: !499)
!523 = !DILocation(line: 250, column: 5, scope: !499)
!524 = !DILocation(line: 250, column: 11, scope: !499)
!525 = !DILocation(line: 250, column: 23, scope: !499)
!526 = !DILocation(line: 251, column: 5, scope: !499)
!527 = !DILocation(line: 251, column: 11, scope: !499)
!528 = !DILocation(line: 251, column: 23, scope: !499)
!529 = !DILocation(line: 252, column: 5, scope: !499)
!530 = !DILocation(line: 252, column: 11, scope: !499)
!531 = !DILocation(line: 252, column: 23, scope: !499)
!532 = !DILocation(line: 253, column: 5, scope: !499)
!533 = !DILocation(line: 253, column: 11, scope: !499)
!534 = !DILocation(line: 253, column: 23, scope: !499)
!535 = !DILocation(line: 254, column: 5, scope: !499)
!536 = !DILocation(line: 254, column: 11, scope: !499)
!537 = !DILocation(line: 254, column: 29, scope: !499)
!538 = !DILocation(line: 255, column: 5, scope: !499)
!539 = !DILocation(line: 255, column: 11, scope: !499)
!540 = !DILocation(line: 255, column: 29, scope: !499)
!541 = !DILocation(line: 257, column: 18, scope: !499)
!542 = !DILocation(line: 257, column: 5, scope: !499)
!543 = !DILocation(line: 257, column: 11, scope: !499)
!544 = !DILocation(line: 257, column: 16, scope: !499)
!545 = !DILocation(line: 259, column: 5, scope: !499)
!546 = !DILocation(line: 259, column: 11, scope: !499)
!547 = !DILocation(line: 259, column: 20, scope: !499)
!548 = !DILocation(line: 260, column: 31, scope: !499)
!549 = !DILocation(line: 260, column: 5, scope: !499)
!550 = !DILocation(line: 264, column: 1, scope: !499)
!551 = distinct !DISubprogram(name: "ZSTD_createDCtx_advanced", scope: !3, file: !3, line: 290, type: !552, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !554)
!552 = !DISubroutineType(types: !553)
!553 = !{!130, !259}
!554 = !{!555}
!555 = !DILocalVariable(name: "customMem", arg: 1, scope: !551, file: !3, line: 290, type: !259)
!556 = !DILocation(line: 290, column: 52, scope: !551)
!557 = !DILocation(line: 292, column: 12, scope: !551)
!558 = !DILocation(line: 292, column: 5, scope: !551)
!559 = distinct !DISubprogram(name: "ZSTD_createDCtx_internal", scope: !3, file: !3, line: 279, type: !552, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !560)
!560 = !{!561, !562}
!561 = !DILocalVariable(name: "customMem", arg: 1, scope: !559, file: !3, line: 279, type: !259)
!562 = !DILocalVariable(name: "dctx", scope: !563, file: !3, line: 282, type: !468)
!563 = distinct !DILexicalBlock(scope: !559, file: !3, line: 282, column: 5)
!564 = !DILocation(line: 279, column: 59, scope: !559)
!565 = !DILocation(line: 280, column: 21, scope: !566)
!566 = distinct !DILexicalBlock(scope: !559, file: !3, line: 280, column: 9)
!567 = !DILocation(line: 280, column: 10, scope: !566)
!568 = !DILocation(line: 280, column: 48, scope: !566)
!569 = !DILocation(line: 280, column: 37, scope: !566)
!570 = !DILocation(line: 280, column: 34, scope: !566)
!571 = !DILocation(line: 280, column: 9, scope: !559)
!572 = !DILocation(line: 280, column: 61, scope: !566)
!573 = !DILocation(line: 282, column: 9, scope: !563)
!574 = !DILocation(line: 282, column: 26, scope: !563)
!575 = !DILocation(line: 282, column: 45, scope: !563)
!576 = !DILocation(line: 283, column: 14, scope: !577)
!577 = distinct !DILexicalBlock(scope: !563, file: !3, line: 283, column: 13)
!578 = !DILocation(line: 283, column: 13, scope: !563)
!579 = !DILocation(line: 283, column: 20, scope: !577)
!580 = !DILocation(line: 284, column: 9, scope: !563)
!581 = !DILocation(line: 284, column: 15, scope: !563)
!582 = !DILocation(line: 284, column: 27, scope: !563)
!583 = !DILocation(line: 285, column: 32, scope: !563)
!584 = !DILocation(line: 285, column: 9, scope: !563)
!585 = !DILocation(line: 286, column: 16, scope: !563)
!586 = !DILocation(line: 286, column: 9, scope: !563)
!587 = !DILocation(line: 287, column: 5, scope: !559)
!588 = !DILocation(line: 288, column: 1, scope: !559)
!589 = distinct !DISubprogram(name: "ZSTD_createDCtx", scope: !3, file: !3, line: 295, type: !590, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!590 = !DISubroutineType(types: !591)
!591 = !{!130}
!592 = !DILocation(line: 298, column: 12, scope: !589)
!593 = !DILocation(line: 298, column: 5, scope: !589)
!594 = distinct !DISubprogram(name: "ZSTD_freeDCtx", scope: !3, file: !3, line: 309, type: !595, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{!205, !130}
!597 = !{!598, !599}
!598 = !DILocalVariable(name: "dctx", arg: 1, scope: !594, file: !3, line: 309, type: !130)
!599 = !DILocalVariable(name: "cMem", scope: !600, file: !3, line: 313, type: !419)
!600 = distinct !DILexicalBlock(scope: !594, file: !3, line: 313, column: 5)
!601 = !DILocation(line: 309, column: 33, scope: !594)
!602 = !DILocation(line: 311, column: 9, scope: !603)
!603 = distinct !DILexicalBlock(scope: !594, file: !3, line: 311, column: 9)
!604 = !DILocation(line: 311, column: 13, scope: !603)
!605 = !DILocation(line: 311, column: 9, scope: !594)
!606 = !DILocation(line: 311, column: 21, scope: !603)
!607 = !DILocation(line: 312, column: 5, scope: !608)
!608 = distinct !DILexicalBlock(scope: !594, file: !3, line: 312, column: 5)
!609 = !DILocation(line: 312, column: 5, scope: !594)
!610 = !DILocation(line: 312, column: 5, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !3, line: 312, column: 5)
!612 = !DILocation(line: 313, column: 9, scope: !600)
!613 = !DILocation(line: 313, column: 30, scope: !600)
!614 = !DILocation(line: 313, column: 37, scope: !600)
!615 = !DILocation(line: 313, column: 43, scope: !600)
!616 = !DILocation(line: 314, column: 24, scope: !600)
!617 = !DILocation(line: 314, column: 9, scope: !600)
!618 = !DILocation(line: 315, column: 25, scope: !600)
!619 = !DILocation(line: 315, column: 31, scope: !600)
!620 = !DILocation(line: 315, column: 9, scope: !600)
!621 = !DILocation(line: 316, column: 9, scope: !600)
!622 = !DILocation(line: 316, column: 15, scope: !600)
!623 = !DILocation(line: 316, column: 22, scope: !600)
!624 = !DILocation(line: 317, column: 13, scope: !625)
!625 = distinct !DILexicalBlock(scope: !600, file: !3, line: 317, column: 13)
!626 = !DILocation(line: 317, column: 19, scope: !625)
!627 = !DILocation(line: 317, column: 13, scope: !600)
!628 = !DILocation(line: 318, column: 35, scope: !629)
!629 = distinct !DILexicalBlock(scope: !625, file: !3, line: 317, column: 29)
!630 = !DILocation(line: 318, column: 41, scope: !629)
!631 = !DILocation(line: 318, column: 13, scope: !629)
!632 = !DILocation(line: 319, column: 13, scope: !629)
!633 = !DILocation(line: 319, column: 19, scope: !629)
!634 = !DILocation(line: 319, column: 28, scope: !629)
!635 = !DILocation(line: 320, column: 9, scope: !629)
!636 = !DILocation(line: 321, column: 25, scope: !600)
!637 = !DILocation(line: 321, column: 9, scope: !600)
!638 = !DILocation(line: 322, column: 9, scope: !600)
!639 = !DILocation(line: 323, column: 5, scope: !594)
!640 = !DILocation(line: 324, column: 1, scope: !594)
!641 = distinct !DISubprogram(name: "ZSTD_clearDict", scope: !3, file: !3, line: 301, type: !500, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !642)
!642 = !{!643}
!643 = !DILocalVariable(name: "dctx", arg: 1, scope: !641, file: !3, line: 301, type: !130)
!644 = !DILocation(line: 301, column: 39, scope: !641)
!645 = !DILocation(line: 303, column: 20, scope: !641)
!646 = !DILocation(line: 303, column: 26, scope: !641)
!647 = !DILocation(line: 303, column: 5, scope: !641)
!648 = !DILocation(line: 304, column: 5, scope: !641)
!649 = !DILocation(line: 304, column: 11, scope: !641)
!650 = !DILocation(line: 304, column: 22, scope: !641)
!651 = !DILocation(line: 305, column: 5, scope: !641)
!652 = !DILocation(line: 305, column: 11, scope: !641)
!653 = !DILocation(line: 305, column: 17, scope: !641)
!654 = !DILocation(line: 306, column: 5, scope: !641)
!655 = !DILocation(line: 306, column: 11, scope: !641)
!656 = !DILocation(line: 306, column: 20, scope: !641)
!657 = !DILocation(line: 307, column: 1, scope: !641)
!658 = !DISubprogram(name: "ZSTD_customFree", scope: !12, file: !12, line: 350, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !129, !259}
!661 = distinct !DISubprogram(name: "ZSTD_freeDDictHashSet", scope: !3, file: !3, line: 188, type: !662, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !289, !259}
!664 = !{!665, !666}
!665 = !DILocalVariable(name: "hashSet", arg: 1, scope: !661, file: !3, line: 188, type: !289)
!666 = !DILocalVariable(name: "customMem", arg: 2, scope: !661, file: !3, line: 188, type: !259)
!667 = !DILocation(line: 188, column: 54, scope: !661)
!668 = !DILocation(line: 188, column: 78, scope: !661)
!669 = !DILocation(line: 190, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !661, file: !3, line: 190, column: 9)
!671 = !DILocation(line: 190, column: 17, scope: !670)
!672 = !DILocation(line: 190, column: 20, scope: !670)
!673 = !DILocation(line: 190, column: 29, scope: !670)
!674 = !DILocation(line: 190, column: 9, scope: !661)
!675 = !DILocation(line: 191, column: 32, scope: !676)
!676 = distinct !DILexicalBlock(scope: !670, file: !3, line: 190, column: 44)
!677 = !DILocation(line: 191, column: 41, scope: !676)
!678 = !DILocation(line: 191, column: 9, scope: !676)
!679 = !DILocation(line: 192, column: 5, scope: !676)
!680 = !DILocation(line: 193, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !661, file: !3, line: 193, column: 9)
!682 = !DILocation(line: 193, column: 9, scope: !661)
!683 = !DILocation(line: 194, column: 25, scope: !684)
!684 = distinct !DILexicalBlock(scope: !681, file: !3, line: 193, column: 18)
!685 = !DILocation(line: 194, column: 9, scope: !684)
!686 = !DILocation(line: 195, column: 5, scope: !684)
!687 = !DILocation(line: 196, column: 1, scope: !661)
!688 = distinct !DISubprogram(name: "ZSTD_copyDCtx", scope: !3, file: !3, line: 327, type: !689, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !130, !432}
!691 = !{!692, !693, !694}
!692 = !DILocalVariable(name: "dstDCtx", arg: 1, scope: !688, file: !3, line: 327, type: !130)
!693 = !DILocalVariable(name: "srcDCtx", arg: 2, scope: !688, file: !3, line: 327, type: !432)
!694 = !DILocalVariable(name: "toCopy", scope: !688, file: !3, line: 329, type: !383)
!695 = !DILocation(line: 327, column: 31, scope: !688)
!696 = !DILocation(line: 327, column: 57, scope: !688)
!697 = !DILocation(line: 329, column: 5, scope: !688)
!698 = !DILocation(line: 329, column: 18, scope: !688)
!699 = !DILocation(line: 329, column: 45, scope: !688)
!700 = !DILocation(line: 329, column: 54, scope: !688)
!701 = !DILocation(line: 329, column: 71, scope: !688)
!702 = !DILocation(line: 329, column: 62, scope: !688)
!703 = !DILocation(line: 330, column: 5, scope: !688)
!704 = !DILocation(line: 331, column: 1, scope: !688)
!705 = distinct !DISubprogram(name: "ZSTD_isFrame", scope: !3, file: !3, line: 366, type: !706, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{!7, !199, !205}
!708 = !{!709, !710, !711}
!709 = !DILocalVariable(name: "buffer", arg: 1, scope: !705, file: !3, line: 366, type: !199)
!710 = !DILocalVariable(name: "size", arg: 2, scope: !705, file: !3, line: 366, type: !205)
!711 = !DILocalVariable(name: "magic", scope: !712, file: !3, line: 369, type: !392)
!712 = distinct !DILexicalBlock(scope: !705, file: !3, line: 369, column: 5)
!713 = !DILocation(line: 366, column: 35, scope: !705)
!714 = !DILocation(line: 366, column: 50, scope: !705)
!715 = !DILocation(line: 368, column: 9, scope: !716)
!716 = distinct !DILexicalBlock(scope: !705, file: !3, line: 368, column: 9)
!717 = !DILocation(line: 368, column: 14, scope: !716)
!718 = !DILocation(line: 368, column: 9, scope: !705)
!719 = !DILocation(line: 368, column: 34, scope: !716)
!720 = !DILocation(line: 369, column: 9, scope: !712)
!721 = !DILocation(line: 369, column: 19, scope: !712)
!722 = !DILocation(line: 369, column: 40, scope: !712)
!723 = !DILocation(line: 369, column: 27, scope: !712)
!724 = !DILocation(line: 370, column: 13, scope: !725)
!725 = distinct !DILexicalBlock(scope: !712, file: !3, line: 370, column: 13)
!726 = !DILocation(line: 370, column: 19, scope: !725)
!727 = !DILocation(line: 370, column: 13, scope: !712)
!728 = !DILocation(line: 370, column: 40, scope: !725)
!729 = !DILocation(line: 371, column: 14, scope: !730)
!730 = distinct !DILexicalBlock(scope: !712, file: !3, line: 371, column: 13)
!731 = !DILocation(line: 371, column: 20, scope: !730)
!732 = !DILocation(line: 371, column: 49, scope: !730)
!733 = !DILocation(line: 371, column: 13, scope: !712)
!734 = !DILocation(line: 371, column: 80, scope: !730)
!735 = !DILocation(line: 372, column: 5, scope: !705)
!736 = !DILocation(line: 373, column: 5, scope: !705)
!737 = !DILocation(line: 374, column: 1, scope: !705)
!738 = distinct !DISubprogram(name: "MEM_readLE32", scope: !142, file: !142, line: 169, type: !739, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{!158, !199}
!741 = !{!742}
!742 = !DILocalVariable(name: "memPtr", arg: 1, scope: !738, file: !142, line: 169, type: !199)
!743 = !DILocation(line: 169, column: 41, scope: !738)
!744 = !DILocation(line: 171, column: 31, scope: !738)
!745 = !DILocation(line: 171, column: 12, scope: !738)
!746 = !DILocation(line: 171, column: 5, scope: !738)
!747 = distinct !DISubprogram(name: "ZSTD_isSkippableFrame", scope: !3, file: !3, line: 380, type: !706, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !748)
!748 = !{!749, !750, !751}
!749 = !DILocalVariable(name: "buffer", arg: 1, scope: !747, file: !3, line: 380, type: !199)
!750 = !DILocalVariable(name: "size", arg: 2, scope: !747, file: !3, line: 380, type: !205)
!751 = !DILocalVariable(name: "magic", scope: !752, file: !3, line: 383, type: !392)
!752 = distinct !DILexicalBlock(scope: !747, file: !3, line: 383, column: 5)
!753 = !DILocation(line: 380, column: 44, scope: !747)
!754 = !DILocation(line: 380, column: 59, scope: !747)
!755 = !DILocation(line: 382, column: 9, scope: !756)
!756 = distinct !DILexicalBlock(scope: !747, file: !3, line: 382, column: 9)
!757 = !DILocation(line: 382, column: 14, scope: !756)
!758 = !DILocation(line: 382, column: 9, scope: !747)
!759 = !DILocation(line: 382, column: 34, scope: !756)
!760 = !DILocation(line: 383, column: 9, scope: !752)
!761 = !DILocation(line: 383, column: 19, scope: !752)
!762 = !DILocation(line: 383, column: 40, scope: !752)
!763 = !DILocation(line: 383, column: 27, scope: !752)
!764 = !DILocation(line: 384, column: 14, scope: !765)
!765 = distinct !DILexicalBlock(scope: !752, file: !3, line: 384, column: 13)
!766 = !DILocation(line: 384, column: 20, scope: !765)
!767 = !DILocation(line: 384, column: 49, scope: !765)
!768 = !DILocation(line: 384, column: 13, scope: !752)
!769 = !DILocation(line: 384, column: 80, scope: !765)
!770 = !DILocation(line: 385, column: 5, scope: !747)
!771 = !DILocation(line: 386, column: 5, scope: !747)
!772 = !DILocation(line: 387, column: 1, scope: !747)
!773 = distinct !DISubprogram(name: "ZSTD_frameHeaderSize", scope: !3, file: !3, line: 413, type: !774, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{!205, !199, !205}
!776 = !{!777, !778}
!777 = !DILocalVariable(name: "src", arg: 1, scope: !773, file: !3, line: 413, type: !199)
!778 = !DILocalVariable(name: "srcSize", arg: 2, scope: !773, file: !3, line: 413, type: !205)
!779 = !DILocation(line: 413, column: 41, scope: !773)
!780 = !DILocation(line: 413, column: 53, scope: !773)
!781 = !DILocation(line: 415, column: 42, scope: !773)
!782 = !DILocation(line: 415, column: 47, scope: !773)
!783 = !DILocation(line: 415, column: 12, scope: !773)
!784 = !DILocation(line: 415, column: 5, scope: !773)
!785 = distinct !DISubprogram(name: "ZSTD_frameHeaderSize_internal", scope: !3, file: !3, line: 394, type: !786, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{!205, !199, !205, !251}
!788 = !{!789, !790, !791, !792, !793, !795, !796, !797}
!789 = !DILocalVariable(name: "src", arg: 1, scope: !785, file: !3, line: 394, type: !199)
!790 = !DILocalVariable(name: "srcSize", arg: 2, scope: !785, file: !3, line: 394, type: !205)
!791 = !DILocalVariable(name: "format", arg: 3, scope: !785, file: !3, line: 394, type: !251)
!792 = !DILocalVariable(name: "minInputSize", scope: !785, file: !3, line: 396, type: !383)
!793 = !DILocalVariable(name: "fhd", scope: !794, file: !3, line: 399, type: !257)
!794 = distinct !DILexicalBlock(scope: !785, file: !3, line: 399, column: 5)
!795 = !DILocalVariable(name: "dictID", scope: !794, file: !3, line: 400, type: !392)
!796 = !DILocalVariable(name: "singleSegment", scope: !794, file: !3, line: 401, type: !392)
!797 = !DILocalVariable(name: "fcsId", scope: !794, file: !3, line: 402, type: !392)
!798 = !DILocation(line: 394, column: 57, scope: !785)
!799 = !DILocation(line: 394, column: 69, scope: !785)
!800 = !DILocation(line: 394, column: 92, scope: !785)
!801 = !DILocation(line: 396, column: 5, scope: !785)
!802 = !DILocation(line: 396, column: 18, scope: !785)
!803 = !DILocation(line: 396, column: 58, scope: !785)
!804 = !DILocation(line: 396, column: 33, scope: !785)
!805 = !DILocation(line: 397, column: 5, scope: !806)
!806 = distinct !DILexicalBlock(scope: !785, file: !3, line: 397, column: 5)
!807 = !DILocation(line: 397, column: 5, scope: !785)
!808 = !DILocation(line: 397, column: 5, scope: !809)
!809 = distinct !DILexicalBlock(scope: !806, file: !3, line: 397, column: 5)
!810 = !DILocation(line: 399, column: 9, scope: !794)
!811 = !DILocation(line: 399, column: 20, scope: !794)
!812 = !DILocation(line: 399, column: 40, scope: !794)
!813 = !DILocation(line: 399, column: 45, scope: !794)
!814 = !DILocation(line: 399, column: 57, scope: !794)
!815 = !DILocation(line: 399, column: 26, scope: !794)
!816 = !DILocation(line: 400, column: 9, scope: !794)
!817 = !DILocation(line: 400, column: 19, scope: !794)
!818 = !DILocation(line: 400, column: 27, scope: !794)
!819 = !DILocation(line: 400, column: 31, scope: !794)
!820 = !DILocation(line: 401, column: 9, scope: !794)
!821 = !DILocation(line: 401, column: 19, scope: !794)
!822 = !DILocation(line: 401, column: 36, scope: !794)
!823 = !DILocation(line: 401, column: 40, scope: !794)
!824 = !DILocation(line: 401, column: 46, scope: !794)
!825 = !DILocation(line: 402, column: 9, scope: !794)
!826 = !DILocation(line: 402, column: 19, scope: !794)
!827 = !DILocation(line: 402, column: 27, scope: !794)
!828 = !DILocation(line: 402, column: 31, scope: !794)
!829 = !DILocation(line: 403, column: 16, scope: !794)
!830 = !DILocation(line: 403, column: 32, scope: !794)
!831 = !DILocation(line: 403, column: 31, scope: !794)
!832 = !DILocation(line: 403, column: 29, scope: !794)
!833 = !DILocation(line: 404, column: 35, scope: !794)
!834 = !DILocation(line: 404, column: 16, scope: !794)
!835 = !DILocation(line: 404, column: 14, scope: !794)
!836 = !DILocation(line: 404, column: 64, scope: !794)
!837 = !DILocation(line: 404, column: 45, scope: !794)
!838 = !DILocation(line: 404, column: 43, scope: !794)
!839 = !DILocation(line: 405, column: 17, scope: !794)
!840 = !DILocation(line: 405, column: 31, scope: !794)
!841 = !DILocation(line: 405, column: 35, scope: !794)
!842 = !DILocation(line: 405, column: 34, scope: !794)
!843 = !DILocation(line: 0, scope: !794)
!844 = !DILocation(line: 405, column: 16, scope: !794)
!845 = !DILocation(line: 405, column: 14, scope: !794)
!846 = !DILocation(line: 403, column: 9, scope: !794)
!847 = !DILocation(line: 406, column: 5, scope: !785)
!848 = !DILocation(line: 407, column: 1, scope: !785)
!849 = distinct !DISubprogram(name: "ZSTD_getFrameHeader_advanced", scope: !3, file: !3, line: 425, type: !850, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !853)
!850 = !DISubroutineType(types: !851)
!851 = !{!205, !852, !199, !205, !251}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!853 = !{!854, !855, !856, !857, !858, !859, !860, !862, !864, !865, !866, !867, !868, !869, !870, !871, !872, !875}
!854 = !DILocalVariable(name: "zfhPtr", arg: 1, scope: !849, file: !3, line: 425, type: !852)
!855 = !DILocalVariable(name: "src", arg: 2, scope: !849, file: !3, line: 425, type: !199)
!856 = !DILocalVariable(name: "srcSize", arg: 3, scope: !849, file: !3, line: 425, type: !205)
!857 = !DILocalVariable(name: "format", arg: 4, scope: !849, file: !3, line: 425, type: !251)
!858 = !DILocalVariable(name: "ip", scope: !849, file: !3, line: 427, type: !256)
!859 = !DILocalVariable(name: "minInputSize", scope: !849, file: !3, line: 428, type: !383)
!860 = !DILocalVariable(name: "fhsize", scope: !861, file: !3, line: 449, type: !383)
!861 = distinct !DILexicalBlock(scope: !849, file: !3, line: 449, column: 5)
!862 = !DILocalVariable(name: "fhdByte", scope: !863, file: !3, line: 454, type: !257)
!863 = distinct !DILexicalBlock(scope: !849, file: !3, line: 454, column: 5)
!864 = !DILocalVariable(name: "pos", scope: !863, file: !3, line: 455, type: !205)
!865 = !DILocalVariable(name: "dictIDSizeCode", scope: !863, file: !3, line: 456, type: !392)
!866 = !DILocalVariable(name: "checksumFlag", scope: !863, file: !3, line: 457, type: !392)
!867 = !DILocalVariable(name: "singleSegment", scope: !863, file: !3, line: 458, type: !392)
!868 = !DILocalVariable(name: "fcsID", scope: !863, file: !3, line: 459, type: !392)
!869 = !DILocalVariable(name: "windowSize", scope: !863, file: !3, line: 460, type: !224)
!870 = !DILocalVariable(name: "dictID", scope: !863, file: !3, line: 461, type: !158)
!871 = !DILocalVariable(name: "frameContentSize", scope: !863, file: !3, line: 462, type: !224)
!872 = !DILocalVariable(name: "wlByte", scope: !873, file: !3, line: 467, type: !257)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 466, column: 29)
!874 = distinct !DILexicalBlock(scope: !863, file: !3, line: 466, column: 13)
!875 = !DILocalVariable(name: "windowLog", scope: !873, file: !3, line: 468, type: !392)
!876 = !DILocation(line: 425, column: 55, scope: !849)
!877 = !DILocation(line: 425, column: 75, scope: !849)
!878 = !DILocation(line: 425, column: 87, scope: !849)
!879 = !DILocation(line: 425, column: 110, scope: !849)
!880 = !DILocation(line: 427, column: 5, scope: !849)
!881 = !DILocation(line: 427, column: 17, scope: !849)
!882 = !DILocation(line: 427, column: 35, scope: !849)
!883 = !DILocation(line: 428, column: 5, scope: !849)
!884 = !DILocation(line: 428, column: 18, scope: !849)
!885 = !DILocation(line: 428, column: 58, scope: !849)
!886 = !DILocation(line: 428, column: 33, scope: !849)
!887 = !DILocation(line: 430, column: 5, scope: !849)
!888 = !DILocation(line: 431, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !849, file: !3, line: 431, column: 9)
!890 = !DILocation(line: 431, column: 19, scope: !889)
!891 = !DILocation(line: 431, column: 17, scope: !889)
!892 = !DILocation(line: 431, column: 9, scope: !849)
!893 = !DILocation(line: 431, column: 40, scope: !889)
!894 = !DILocation(line: 431, column: 33, scope: !889)
!895 = !DILocation(line: 432, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !849, file: !3, line: 432, column: 5)
!897 = !DILocation(line: 432, column: 5, scope: !849)
!898 = !DILocation(line: 432, column: 5, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !3, line: 432, column: 5)
!900 = !DILocation(line: 434, column: 11, scope: !901)
!901 = distinct !DILexicalBlock(scope: !849, file: !3, line: 434, column: 10)
!902 = !DILocation(line: 434, column: 18, scope: !901)
!903 = !DILocation(line: 435, column: 7, scope: !901)
!904 = !DILocation(line: 435, column: 24, scope: !901)
!905 = !DILocation(line: 435, column: 11, scope: !901)
!906 = !DILocation(line: 435, column: 29, scope: !901)
!907 = !DILocation(line: 434, column: 10, scope: !849)
!908 = !DILocation(line: 436, column: 27, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 436, column: 13)
!910 = distinct !DILexicalBlock(scope: !901, file: !3, line: 435, column: 52)
!911 = !DILocation(line: 436, column: 14, scope: !909)
!912 = !DILocation(line: 436, column: 32, scope: !909)
!913 = !DILocation(line: 436, column: 61, scope: !909)
!914 = !DILocation(line: 436, column: 13, scope: !910)
!915 = !DILocation(line: 438, column: 17, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 438, column: 17)
!917 = distinct !DILexicalBlock(scope: !909, file: !3, line: 436, column: 92)
!918 = !DILocation(line: 438, column: 25, scope: !916)
!919 = !DILocation(line: 438, column: 17, scope: !917)
!920 = !DILocation(line: 439, column: 17, scope: !916)
!921 = !DILocation(line: 440, column: 13, scope: !917)
!922 = !DILocation(line: 441, column: 67, scope: !917)
!923 = !DILocation(line: 441, column: 71, scope: !917)
!924 = !DILocation(line: 441, column: 40, scope: !917)
!925 = !DILocation(line: 441, column: 13, scope: !917)
!926 = !DILocation(line: 441, column: 21, scope: !917)
!927 = !DILocation(line: 441, column: 38, scope: !917)
!928 = !DILocation(line: 442, column: 13, scope: !917)
!929 = !DILocation(line: 442, column: 21, scope: !917)
!930 = !DILocation(line: 442, column: 31, scope: !917)
!931 = !DILocation(line: 443, column: 13, scope: !917)
!932 = !DILocation(line: 445, column: 9, scope: !910)
!933 = !DILocation(line: 445, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !910, file: !3, line: 445, column: 9)
!935 = !DILocation(line: 446, column: 5, scope: !910)
!936 = !DILocation(line: 449, column: 9, scope: !861)
!937 = !DILocation(line: 449, column: 22, scope: !861)
!938 = !DILocation(line: 449, column: 61, scope: !861)
!939 = !DILocation(line: 449, column: 66, scope: !861)
!940 = !DILocation(line: 449, column: 75, scope: !861)
!941 = !DILocation(line: 449, column: 31, scope: !861)
!942 = !DILocation(line: 450, column: 13, scope: !943)
!943 = distinct !DILexicalBlock(scope: !861, file: !3, line: 450, column: 13)
!944 = !DILocation(line: 450, column: 23, scope: !943)
!945 = !DILocation(line: 450, column: 21, scope: !943)
!946 = !DILocation(line: 450, column: 13, scope: !861)
!947 = !DILocation(line: 450, column: 38, scope: !943)
!948 = !DILocation(line: 450, column: 31, scope: !943)
!949 = !DILocation(line: 451, column: 35, scope: !861)
!950 = !DILocation(line: 451, column: 30, scope: !861)
!951 = !DILocation(line: 451, column: 9, scope: !861)
!952 = !DILocation(line: 451, column: 17, scope: !861)
!953 = !DILocation(line: 451, column: 28, scope: !861)
!954 = !DILocation(line: 452, column: 5, scope: !849)
!955 = !DILocation(line: 454, column: 9, scope: !863)
!956 = !DILocation(line: 454, column: 20, scope: !863)
!957 = !DILocation(line: 454, column: 30, scope: !863)
!958 = !DILocation(line: 454, column: 33, scope: !863)
!959 = !DILocation(line: 454, column: 45, scope: !863)
!960 = !DILocation(line: 455, column: 9, scope: !863)
!961 = !DILocation(line: 455, column: 16, scope: !863)
!962 = !DILocation(line: 455, column: 22, scope: !863)
!963 = !DILocation(line: 456, column: 9, scope: !863)
!964 = !DILocation(line: 456, column: 19, scope: !863)
!965 = !DILocation(line: 456, column: 36, scope: !863)
!966 = !DILocation(line: 456, column: 43, scope: !863)
!967 = !DILocation(line: 457, column: 9, scope: !863)
!968 = !DILocation(line: 457, column: 19, scope: !863)
!969 = !DILocation(line: 457, column: 35, scope: !863)
!970 = !DILocation(line: 457, column: 42, scope: !863)
!971 = !DILocation(line: 457, column: 46, scope: !863)
!972 = !DILocation(line: 458, column: 9, scope: !863)
!973 = !DILocation(line: 458, column: 19, scope: !863)
!974 = !DILocation(line: 458, column: 36, scope: !863)
!975 = !DILocation(line: 458, column: 43, scope: !863)
!976 = !DILocation(line: 458, column: 47, scope: !863)
!977 = !DILocation(line: 459, column: 9, scope: !863)
!978 = !DILocation(line: 459, column: 19, scope: !863)
!979 = !DILocation(line: 459, column: 27, scope: !863)
!980 = !DILocation(line: 459, column: 34, scope: !863)
!981 = !DILocation(line: 460, column: 9, scope: !863)
!982 = !DILocation(line: 460, column: 13, scope: !863)
!983 = !DILocation(line: 461, column: 9, scope: !863)
!984 = !DILocation(line: 461, column: 13, scope: !863)
!985 = !DILocation(line: 462, column: 9, scope: !863)
!986 = !DILocation(line: 462, column: 13, scope: !863)
!987 = !DILocation(line: 463, column: 9, scope: !988)
!988 = distinct !DILexicalBlock(scope: !863, file: !3, line: 463, column: 9)
!989 = !DILocation(line: 463, column: 9, scope: !863)
!990 = !DILocation(line: 463, column: 9, scope: !991)
!991 = distinct !DILexicalBlock(scope: !988, file: !3, line: 463, column: 9)
!992 = !DILocation(line: 466, column: 14, scope: !874)
!993 = !DILocation(line: 466, column: 13, scope: !863)
!994 = !DILocation(line: 467, column: 13, scope: !873)
!995 = !DILocation(line: 467, column: 24, scope: !873)
!996 = !DILocation(line: 467, column: 33, scope: !873)
!997 = !DILocation(line: 467, column: 39, scope: !873)
!998 = !DILocation(line: 468, column: 13, scope: !873)
!999 = !DILocation(line: 468, column: 23, scope: !873)
!1000 = !DILocation(line: 468, column: 36, scope: !873)
!1001 = !DILocation(line: 468, column: 43, scope: !873)
!1002 = !DILocation(line: 468, column: 49, scope: !873)
!1003 = !DILocation(line: 469, column: 13, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !873, file: !3, line: 469, column: 13)
!1005 = !DILocation(line: 469, column: 13, scope: !873)
!1006 = !DILocation(line: 469, column: 13, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 469, column: 13)
!1008 = !DILocation(line: 470, column: 35, scope: !873)
!1009 = !DILocation(line: 470, column: 32, scope: !873)
!1010 = !DILocation(line: 470, column: 24, scope: !873)
!1011 = !DILocation(line: 471, column: 28, scope: !873)
!1012 = !DILocation(line: 471, column: 39, scope: !873)
!1013 = !DILocation(line: 471, column: 48, scope: !873)
!1014 = !DILocation(line: 471, column: 54, scope: !873)
!1015 = !DILocation(line: 471, column: 47, scope: !873)
!1016 = !DILocation(line: 471, column: 45, scope: !873)
!1017 = !DILocation(line: 471, column: 24, scope: !873)
!1018 = !DILocation(line: 472, column: 9, scope: !874)
!1019 = !DILocation(line: 472, column: 9, scope: !873)
!1020 = !DILocation(line: 473, column: 16, scope: !863)
!1021 = !DILocation(line: 473, column: 9, scope: !863)
!1022 = !DILocation(line: 476, column: 17, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !863, file: !3, line: 474, column: 9)
!1024 = !DILocation(line: 479, column: 31, scope: !1023)
!1025 = !DILocation(line: 479, column: 34, scope: !1023)
!1026 = !DILocation(line: 479, column: 29, scope: !1023)
!1027 = !DILocation(line: 479, column: 43, scope: !1023)
!1028 = !DILocation(line: 479, column: 47, scope: !1023)
!1029 = !DILocation(line: 480, column: 44, scope: !1023)
!1030 = !DILocation(line: 480, column: 47, scope: !1023)
!1031 = !DILocation(line: 480, column: 46, scope: !1023)
!1032 = !DILocation(line: 480, column: 31, scope: !1023)
!1033 = !DILocation(line: 480, column: 29, scope: !1023)
!1034 = !DILocation(line: 480, column: 56, scope: !1023)
!1035 = !DILocation(line: 480, column: 61, scope: !1023)
!1036 = !DILocation(line: 481, column: 44, scope: !1023)
!1037 = !DILocation(line: 481, column: 47, scope: !1023)
!1038 = !DILocation(line: 481, column: 46, scope: !1023)
!1039 = !DILocation(line: 481, column: 31, scope: !1023)
!1040 = !DILocation(line: 481, column: 29, scope: !1023)
!1041 = !DILocation(line: 481, column: 56, scope: !1023)
!1042 = !DILocation(line: 481, column: 61, scope: !1023)
!1043 = !DILocation(line: 483, column: 16, scope: !863)
!1044 = !DILocation(line: 483, column: 9, scope: !863)
!1045 = !DILocation(line: 486, column: 17, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !863, file: !3, line: 484, column: 9)
!1047 = !DILocation(line: 488, column: 26, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 488, column: 26)
!1049 = !DILocation(line: 488, column: 26, scope: !1046)
!1050 = !DILocation(line: 488, column: 60, scope: !1048)
!1051 = !DILocation(line: 488, column: 63, scope: !1048)
!1052 = !DILocation(line: 488, column: 58, scope: !1048)
!1053 = !DILocation(line: 488, column: 41, scope: !1048)
!1054 = !DILocation(line: 488, column: 69, scope: !1046)
!1055 = !DILocation(line: 489, column: 54, scope: !1046)
!1056 = !DILocation(line: 489, column: 57, scope: !1046)
!1057 = !DILocation(line: 489, column: 56, scope: !1046)
!1058 = !DILocation(line: 489, column: 41, scope: !1046)
!1059 = !DILocation(line: 489, column: 61, scope: !1046)
!1060 = !DILocation(line: 489, column: 39, scope: !1046)
!1061 = !DILocation(line: 489, column: 67, scope: !1046)
!1062 = !DILocation(line: 490, column: 54, scope: !1046)
!1063 = !DILocation(line: 490, column: 57, scope: !1046)
!1064 = !DILocation(line: 490, column: 56, scope: !1046)
!1065 = !DILocation(line: 490, column: 41, scope: !1046)
!1066 = !DILocation(line: 490, column: 39, scope: !1046)
!1067 = !DILocation(line: 490, column: 63, scope: !1046)
!1068 = !DILocation(line: 491, column: 54, scope: !1046)
!1069 = !DILocation(line: 491, column: 57, scope: !1046)
!1070 = !DILocation(line: 491, column: 56, scope: !1046)
!1071 = !DILocation(line: 491, column: 41, scope: !1046)
!1072 = !DILocation(line: 491, column: 39, scope: !1046)
!1073 = !DILocation(line: 491, column: 63, scope: !1046)
!1074 = !DILocation(line: 493, column: 13, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !863, file: !3, line: 493, column: 13)
!1076 = !DILocation(line: 493, column: 13, scope: !863)
!1077 = !DILocation(line: 493, column: 41, scope: !1075)
!1078 = !DILocation(line: 493, column: 39, scope: !1075)
!1079 = !DILocation(line: 493, column: 28, scope: !1075)
!1080 = !DILocation(line: 495, column: 9, scope: !863)
!1081 = !DILocation(line: 495, column: 17, scope: !863)
!1082 = !DILocation(line: 495, column: 27, scope: !863)
!1083 = !DILocation(line: 496, column: 36, scope: !863)
!1084 = !DILocation(line: 496, column: 9, scope: !863)
!1085 = !DILocation(line: 496, column: 17, scope: !863)
!1086 = !DILocation(line: 496, column: 34, scope: !863)
!1087 = !DILocation(line: 497, column: 30, scope: !863)
!1088 = !DILocation(line: 497, column: 9, scope: !863)
!1089 = !DILocation(line: 497, column: 17, scope: !863)
!1090 = !DILocation(line: 497, column: 28, scope: !863)
!1091 = !DILocation(line: 498, column: 43, scope: !863)
!1092 = !DILocation(line: 498, column: 32, scope: !863)
!1093 = !DILocation(line: 498, column: 9, scope: !863)
!1094 = !DILocation(line: 498, column: 17, scope: !863)
!1095 = !DILocation(line: 498, column: 30, scope: !863)
!1096 = !DILocation(line: 499, column: 26, scope: !863)
!1097 = !DILocation(line: 499, column: 9, scope: !863)
!1098 = !DILocation(line: 499, column: 17, scope: !863)
!1099 = !DILocation(line: 499, column: 24, scope: !863)
!1100 = !DILocation(line: 500, column: 32, scope: !863)
!1101 = !DILocation(line: 500, column: 9, scope: !863)
!1102 = !DILocation(line: 500, column: 17, scope: !863)
!1103 = !DILocation(line: 500, column: 30, scope: !863)
!1104 = !DILocation(line: 501, column: 5, scope: !849)
!1105 = !DILocation(line: 502, column: 5, scope: !849)
!1106 = !DILocation(line: 503, column: 1, scope: !849)
!1107 = distinct !DISubprogram(name: "ZSTD_startingInputLength", scope: !3, file: !3, line: 224, type: !1108, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!205, !251}
!1110 = !{!1111, !1112}
!1111 = !DILocalVariable(name: "format", arg: 1, scope: !1107, file: !3, line: 224, type: !251)
!1112 = !DILocalVariable(name: "startingInputLength", scope: !1107, file: !3, line: 226, type: !383)
!1113 = !DILocation(line: 224, column: 54, scope: !1107)
!1114 = !DILocation(line: 226, column: 5, scope: !1107)
!1115 = !DILocation(line: 226, column: 18, scope: !1107)
!1116 = !DILocation(line: 226, column: 40, scope: !1107)
!1117 = !DILocation(line: 229, column: 12, scope: !1107)
!1118 = !DILocation(line: 230, column: 1, scope: !1107)
!1119 = !DILocation(line: 229, column: 5, scope: !1107)
!1120 = distinct !DISubprogram(name: "MEM_readLE16", scope: !142, file: !142, line: 148, type: !1121, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!141, !199}
!1123 = !{!1124}
!1124 = !DILocalVariable(name: "memPtr", arg: 1, scope: !1120, file: !142, line: 148, type: !199)
!1125 = !DILocation(line: 148, column: 41, scope: !1120)
!1126 = !DILocation(line: 150, column: 31, scope: !1120)
!1127 = !DILocation(line: 150, column: 12, scope: !1120)
!1128 = !DILocation(line: 150, column: 5, scope: !1120)
!1129 = distinct !DISubprogram(name: "MEM_readLE64", scope: !142, file: !142, line: 179, type: !1130, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1132)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!224, !199}
!1132 = !{!1133}
!1133 = !DILocalVariable(name: "memPtr", arg: 1, scope: !1129, file: !142, line: 179, type: !199)
!1134 = !DILocation(line: 179, column: 41, scope: !1129)
!1135 = !DILocation(line: 181, column: 31, scope: !1129)
!1136 = !DILocation(line: 181, column: 12, scope: !1129)
!1137 = !DILocation(line: 181, column: 5, scope: !1129)
!1138 = distinct !DISubprogram(name: "ZSTD_getFrameHeader", scope: !3, file: !3, line: 511, type: !1139, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1141)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!205, !852, !199, !205}
!1141 = !{!1142, !1143, !1144}
!1142 = !DILocalVariable(name: "zfhPtr", arg: 1, scope: !1138, file: !3, line: 511, type: !852)
!1143 = !DILocalVariable(name: "src", arg: 2, scope: !1138, file: !3, line: 511, type: !199)
!1144 = !DILocalVariable(name: "srcSize", arg: 3, scope: !1138, file: !3, line: 511, type: !205)
!1145 = !DILocation(line: 511, column: 46, scope: !1138)
!1146 = !DILocation(line: 511, column: 66, scope: !1138)
!1147 = !DILocation(line: 511, column: 78, scope: !1138)
!1148 = !DILocation(line: 513, column: 41, scope: !1138)
!1149 = !DILocation(line: 513, column: 49, scope: !1138)
!1150 = !DILocation(line: 513, column: 54, scope: !1138)
!1151 = !DILocation(line: 513, column: 12, scope: !1138)
!1152 = !DILocation(line: 513, column: 5, scope: !1138)
!1153 = distinct !DISubprogram(name: "ZSTD_getFrameContentSize", scope: !3, file: !3, line: 521, type: !1154, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1156)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!215, !199, !205}
!1156 = !{!1157, !1158, !1159}
!1157 = !DILocalVariable(name: "src", arg: 1, scope: !1153, file: !3, line: 521, type: !199)
!1158 = !DILocalVariable(name: "srcSize", arg: 2, scope: !1153, file: !3, line: 521, type: !205)
!1159 = !DILocalVariable(name: "zfh", scope: !1160, file: !3, line: 523, type: !211)
!1160 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 523, column: 5)
!1161 = !DILocation(line: 521, column: 57, scope: !1153)
!1162 = !DILocation(line: 521, column: 69, scope: !1153)
!1163 = !DILocation(line: 523, column: 9, scope: !1160)
!1164 = !DILocation(line: 523, column: 26, scope: !1160)
!1165 = !DILocation(line: 524, column: 39, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 524, column: 13)
!1167 = !DILocation(line: 524, column: 44, scope: !1166)
!1168 = !DILocation(line: 524, column: 13, scope: !1166)
!1169 = !DILocation(line: 524, column: 53, scope: !1166)
!1170 = !DILocation(line: 524, column: 13, scope: !1160)
!1171 = !DILocation(line: 525, column: 13, scope: !1166)
!1172 = !DILocation(line: 526, column: 17, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 526, column: 13)
!1174 = !DILocation(line: 526, column: 27, scope: !1173)
!1175 = !DILocation(line: 526, column: 13, scope: !1160)
!1176 = !DILocation(line: 527, column: 13, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 526, column: 51)
!1178 = !DILocation(line: 529, column: 24, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 528, column: 16)
!1180 = !DILocation(line: 529, column: 13, scope: !1179)
!1181 = !DILocation(line: 530, column: 9, scope: !1153)
!1182 = !DILocation(line: 531, column: 1, scope: !1153)
!1183 = distinct !DISubprogram(name: "ZSTD_readSkippableFrame", scope: !3, file: !3, line: 561, type: !1184, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1187)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!205, !129, !205, !1186, !199, !205}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195}
!1188 = !DILocalVariable(name: "dst", arg: 1, scope: !1183, file: !3, line: 561, type: !129)
!1189 = !DILocalVariable(name: "dstCapacity", arg: 2, scope: !1183, file: !3, line: 561, type: !205)
!1190 = !DILocalVariable(name: "magicVariant", arg: 3, scope: !1183, file: !3, line: 561, type: !1186)
!1191 = !DILocalVariable(name: "src", arg: 4, scope: !1183, file: !3, line: 562, type: !199)
!1192 = !DILocalVariable(name: "srcSize", arg: 5, scope: !1183, file: !3, line: 562, type: !205)
!1193 = !DILocalVariable(name: "magicNumber", scope: !1183, file: !3, line: 564, type: !392)
!1194 = !DILocalVariable(name: "skippableFrameSize", scope: !1183, file: !3, line: 565, type: !205)
!1195 = !DILocalVariable(name: "skippableContentSize", scope: !1183, file: !3, line: 566, type: !205)
!1196 = !DILocation(line: 561, column: 50, scope: !1183)
!1197 = !DILocation(line: 561, column: 62, scope: !1183)
!1198 = !DILocation(line: 561, column: 85, scope: !1183)
!1199 = !DILocation(line: 562, column: 57, scope: !1183)
!1200 = !DILocation(line: 562, column: 69, scope: !1183)
!1201 = !DILocation(line: 564, column: 5, scope: !1183)
!1202 = !DILocation(line: 564, column: 15, scope: !1183)
!1203 = !DILocation(line: 564, column: 42, scope: !1183)
!1204 = !DILocation(line: 564, column: 29, scope: !1183)
!1205 = !DILocation(line: 565, column: 5, scope: !1183)
!1206 = !DILocation(line: 565, column: 12, scope: !1183)
!1207 = !DILocation(line: 565, column: 56, scope: !1183)
!1208 = !DILocation(line: 565, column: 61, scope: !1183)
!1209 = !DILocation(line: 565, column: 33, scope: !1183)
!1210 = !DILocation(line: 566, column: 5, scope: !1183)
!1211 = !DILocation(line: 566, column: 12, scope: !1183)
!1212 = !DILocation(line: 566, column: 35, scope: !1183)
!1213 = !DILocation(line: 566, column: 54, scope: !1183)
!1214 = !DILocation(line: 569, column: 5, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 569, column: 5)
!1216 = !DILocation(line: 569, column: 5, scope: !1183)
!1217 = !DILocation(line: 569, column: 5, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 569, column: 5)
!1219 = !DILocation(line: 570, column: 5, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 570, column: 5)
!1221 = !DILocation(line: 570, column: 5, scope: !1183)
!1222 = !DILocation(line: 570, column: 5, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 570, column: 5)
!1224 = !DILocation(line: 571, column: 5, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 571, column: 5)
!1226 = !DILocation(line: 571, column: 5, scope: !1183)
!1227 = !DILocation(line: 571, column: 5, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 571, column: 5)
!1229 = !DILocation(line: 574, column: 9, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 574, column: 9)
!1231 = !DILocation(line: 574, column: 30, scope: !1230)
!1232 = !DILocation(line: 574, column: 35, scope: !1230)
!1233 = !DILocation(line: 574, column: 38, scope: !1230)
!1234 = !DILocation(line: 574, column: 42, scope: !1230)
!1235 = !DILocation(line: 574, column: 9, scope: !1183)
!1236 = !DILocation(line: 575, column: 9, scope: !1230)
!1237 = !DILocation(line: 576, column: 9, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 576, column: 9)
!1239 = !DILocation(line: 576, column: 22, scope: !1238)
!1240 = !DILocation(line: 576, column: 9, scope: !1183)
!1241 = !DILocation(line: 577, column: 25, scope: !1238)
!1242 = !DILocation(line: 577, column: 37, scope: !1238)
!1243 = !DILocation(line: 577, column: 10, scope: !1238)
!1244 = !DILocation(line: 577, column: 23, scope: !1238)
!1245 = !DILocation(line: 577, column: 9, scope: !1238)
!1246 = !DILocation(line: 578, column: 12, scope: !1183)
!1247 = !DILocation(line: 578, column: 5, scope: !1183)
!1248 = !DILocation(line: 579, column: 1, scope: !1183)
!1249 = distinct !DISubprogram(name: "readSkippableFrameSize", scope: !3, file: !3, line: 533, type: !774, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1250)
!1250 = !{!1251, !1252, !1253, !1254, !1255}
!1251 = !DILocalVariable(name: "src", arg: 1, scope: !1249, file: !3, line: 533, type: !199)
!1252 = !DILocalVariable(name: "srcSize", arg: 2, scope: !1249, file: !3, line: 533, type: !205)
!1253 = !DILocalVariable(name: "skippableHeaderSize", scope: !1249, file: !3, line: 535, type: !383)
!1254 = !DILocalVariable(name: "sizeU32", scope: !1249, file: !3, line: 536, type: !158)
!1255 = !DILocalVariable(name: "skippableSize", scope: !1256, file: !3, line: 544, type: !383)
!1256 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 543, column: 5)
!1257 = !DILocation(line: 533, column: 50, scope: !1249)
!1258 = !DILocation(line: 533, column: 62, scope: !1249)
!1259 = !DILocation(line: 535, column: 5, scope: !1249)
!1260 = !DILocation(line: 535, column: 18, scope: !1249)
!1261 = !DILocation(line: 536, column: 5, scope: !1249)
!1262 = !DILocation(line: 536, column: 9, scope: !1249)
!1263 = !DILocation(line: 538, column: 5, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 538, column: 5)
!1265 = !DILocation(line: 538, column: 5, scope: !1249)
!1266 = !DILocation(line: 538, column: 5, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 538, column: 5)
!1268 = !DILocation(line: 540, column: 41, scope: !1249)
!1269 = !DILocation(line: 540, column: 45, scope: !1249)
!1270 = !DILocation(line: 540, column: 15, scope: !1249)
!1271 = !DILocation(line: 540, column: 13, scope: !1249)
!1272 = !DILocation(line: 541, column: 5, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 541, column: 5)
!1274 = !DILocation(line: 541, column: 5, scope: !1249)
!1275 = !DILocation(line: 541, column: 5, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 541, column: 5)
!1277 = !DILocation(line: 544, column: 9, scope: !1256)
!1278 = !DILocation(line: 544, column: 22, scope: !1256)
!1279 = !DILocation(line: 544, column: 60, scope: !1256)
!1280 = !DILocation(line: 544, column: 58, scope: !1256)
!1281 = !DILocation(line: 545, column: 9, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 545, column: 9)
!1283 = !DILocation(line: 545, column: 9, scope: !1256)
!1284 = !DILocation(line: 545, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 545, column: 9)
!1286 = !DILocation(line: 546, column: 16, scope: !1256)
!1287 = !DILocation(line: 546, column: 9, scope: !1256)
!1288 = !DILocation(line: 547, column: 5, scope: !1249)
!1289 = !DILocation(line: 548, column: 1, scope: !1249)
!1290 = distinct !DISubprogram(name: "ZSTD_findDecompressedSize", scope: !3, file: !3, line: 586, type: !1154, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1291)
!1291 = !{!1292, !1293, !1294, !1295, !1297, !1300, !1303}
!1292 = !DILocalVariable(name: "src", arg: 1, scope: !1290, file: !3, line: 586, type: !199)
!1293 = !DILocalVariable(name: "srcSize", arg: 2, scope: !1290, file: !3, line: 586, type: !205)
!1294 = !DILocalVariable(name: "totalDstSize", scope: !1290, file: !3, line: 588, type: !215)
!1295 = !DILocalVariable(name: "magicNumber", scope: !1296, file: !3, line: 591, type: !392)
!1296 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 590, column: 63)
!1297 = !DILocalVariable(name: "skippableSize", scope: !1298, file: !3, line: 594, type: !383)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 593, column: 86)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 593, column: 13)
!1300 = !DILocalVariable(name: "ret", scope: !1301, file: !3, line: 605, type: !1302)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 605, column: 9)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!1303 = !DILocalVariable(name: "frameSrcSize", scope: !1304, file: !3, line: 612, type: !383)
!1304 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 612, column: 9)
!1305 = !DILocation(line: 586, column: 58, scope: !1290)
!1306 = !DILocation(line: 586, column: 70, scope: !1290)
!1307 = !DILocation(line: 588, column: 5, scope: !1290)
!1308 = !DILocation(line: 588, column: 24, scope: !1290)
!1309 = !DILocation(line: 590, column: 5, scope: !1290)
!1310 = !DILocation(line: 590, column: 12, scope: !1290)
!1311 = !DILocation(line: 590, column: 23, scope: !1290)
!1312 = !DILocation(line: 590, column: 20, scope: !1290)
!1313 = !DILocation(line: 591, column: 9, scope: !1296)
!1314 = !DILocation(line: 591, column: 19, scope: !1296)
!1315 = !DILocation(line: 591, column: 46, scope: !1296)
!1316 = !DILocation(line: 591, column: 33, scope: !1296)
!1317 = !DILocation(line: 593, column: 14, scope: !1299)
!1318 = !DILocation(line: 593, column: 26, scope: !1299)
!1319 = !DILocation(line: 593, column: 55, scope: !1299)
!1320 = !DILocation(line: 593, column: 13, scope: !1296)
!1321 = !DILocation(line: 594, column: 13, scope: !1298)
!1322 = !DILocation(line: 594, column: 26, scope: !1298)
!1323 = !DILocation(line: 594, column: 65, scope: !1298)
!1324 = !DILocation(line: 594, column: 70, scope: !1298)
!1325 = !DILocation(line: 594, column: 42, scope: !1298)
!1326 = !DILocation(line: 595, column: 30, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 595, column: 17)
!1328 = !DILocation(line: 595, column: 17, scope: !1327)
!1329 = !DILocation(line: 595, column: 17, scope: !1298)
!1330 = !DILocation(line: 596, column: 17, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 595, column: 46)
!1332 = !DILocation(line: 600, column: 33, scope: !1298)
!1333 = !DILocation(line: 600, column: 39, scope: !1298)
!1334 = !DILocation(line: 600, column: 37, scope: !1298)
!1335 = !DILocation(line: 600, column: 17, scope: !1298)
!1336 = !DILocation(line: 601, column: 24, scope: !1298)
!1337 = !DILocation(line: 601, column: 21, scope: !1298)
!1338 = !DILocation(line: 602, column: 13, scope: !1298)
!1339 = distinct !{!1339, !1309, !1340, !1341, !1342}
!1340 = !DILocation(line: 620, column: 5, scope: !1290)
!1341 = !{!"llvm.loop.mustprogress"}
!1342 = !{!"llvm.loop.unroll.disable"}
!1343 = !DILocation(line: 603, column: 9, scope: !1299)
!1344 = !DILocation(line: 605, column: 13, scope: !1301)
!1345 = !DILocation(line: 605, column: 38, scope: !1301)
!1346 = !DILocation(line: 605, column: 69, scope: !1301)
!1347 = !DILocation(line: 605, column: 74, scope: !1301)
!1348 = !DILocation(line: 605, column: 44, scope: !1301)
!1349 = !DILocation(line: 606, column: 17, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 606, column: 17)
!1351 = !DILocation(line: 606, column: 21, scope: !1350)
!1352 = !DILocation(line: 606, column: 17, scope: !1301)
!1353 = !DILocation(line: 606, column: 55, scope: !1350)
!1354 = !DILocation(line: 606, column: 48, scope: !1350)
!1355 = !DILocation(line: 609, column: 17, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 609, column: 17)
!1357 = !DILocation(line: 609, column: 32, scope: !1356)
!1358 = !DILocation(line: 609, column: 30, scope: !1356)
!1359 = !DILocation(line: 609, column: 38, scope: !1356)
!1360 = !DILocation(line: 609, column: 36, scope: !1356)
!1361 = !DILocation(line: 609, column: 17, scope: !1301)
!1362 = !DILocation(line: 609, column: 52, scope: !1356)
!1363 = !DILocation(line: 610, column: 29, scope: !1301)
!1364 = !DILocation(line: 610, column: 26, scope: !1301)
!1365 = !DILocation(line: 611, column: 9, scope: !1296)
!1366 = !DILocation(line: 612, column: 13, scope: !1304)
!1367 = !DILocation(line: 612, column: 26, scope: !1304)
!1368 = !DILocation(line: 612, column: 70, scope: !1304)
!1369 = !DILocation(line: 612, column: 75, scope: !1304)
!1370 = !DILocation(line: 612, column: 41, scope: !1304)
!1371 = !DILocation(line: 613, column: 30, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 613, column: 17)
!1373 = !DILocation(line: 613, column: 17, scope: !1372)
!1374 = !DILocation(line: 613, column: 17, scope: !1304)
!1375 = !DILocation(line: 614, column: 17, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 613, column: 45)
!1377 = !DILocation(line: 617, column: 33, scope: !1304)
!1378 = !DILocation(line: 617, column: 39, scope: !1304)
!1379 = !DILocation(line: 617, column: 37, scope: !1304)
!1380 = !DILocation(line: 617, column: 17, scope: !1304)
!1381 = !DILocation(line: 618, column: 24, scope: !1304)
!1382 = !DILocation(line: 618, column: 21, scope: !1304)
!1383 = !DILocation(line: 619, column: 9, scope: !1296)
!1384 = !DILocation(line: 622, column: 9, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 622, column: 9)
!1386 = !DILocation(line: 622, column: 9, scope: !1290)
!1387 = !DILocation(line: 622, column: 18, scope: !1385)
!1388 = !DILocation(line: 624, column: 12, scope: !1290)
!1389 = !DILocation(line: 624, column: 5, scope: !1290)
!1390 = !DILocation(line: 625, column: 1, scope: !1290)
!1391 = distinct !DISubprogram(name: "ERR_isError", scope: !1392, file: !1392, line: 47, type: !1393, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1395)
!1392 = !DIFile(filename: "lib/zstd/decompress/../common/error_private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c1e76caf533df7af314a25a57fa92da")
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!7, !205}
!1395 = !{!1396}
!1396 = !DILocalVariable(name: "code", arg: 1, scope: !1391, file: !1392, line: 47, type: !205)
!1397 = !DILocation(line: 47, column: 40, scope: !1391)
!1398 = !DILocation(line: 47, column: 56, scope: !1391)
!1399 = !DILocation(line: 47, column: 61, scope: !1391)
!1400 = !DILocation(line: 47, column: 48, scope: !1391)
!1401 = distinct !DISubprogram(name: "ZSTD_findFrameCompressedSize", scope: !3, file: !3, line: 746, type: !774, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1402)
!1402 = !{!1403, !1404, !1405}
!1403 = !DILocalVariable(name: "src", arg: 1, scope: !1401, file: !3, line: 746, type: !199)
!1404 = !DILocalVariable(name: "srcSize", arg: 2, scope: !1401, file: !3, line: 746, type: !205)
!1405 = !DILocalVariable(name: "frameSizeInfo", scope: !1401, file: !3, line: 748, type: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_frameSizeInfo", file: !12, line: 342, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 339, size: 128, elements: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "compressedSize", scope: !1408, file: !12, line: 340, baseType: !205, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "decompressedBound", scope: !1408, file: !12, line: 341, baseType: !215, size: 64, offset: 64)
!1412 = !DILocation(line: 746, column: 49, scope: !1401)
!1413 = !DILocation(line: 746, column: 61, scope: !1401)
!1414 = !DILocation(line: 748, column: 5, scope: !1401)
!1415 = !DILocation(line: 748, column: 30, scope: !1401)
!1416 = !DILocation(line: 748, column: 69, scope: !1401)
!1417 = !DILocation(line: 748, column: 74, scope: !1401)
!1418 = !DILocation(line: 748, column: 46, scope: !1401)
!1419 = !DILocation(line: 749, column: 26, scope: !1401)
!1420 = !DILocation(line: 750, column: 1, scope: !1401)
!1421 = !DILocation(line: 749, column: 5, scope: !1401)
!1422 = distinct !DISubprogram(name: "ZSTD_getDecompressedSize", scope: !3, file: !3, line: 635, type: !1154, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1423)
!1423 = !{!1424, !1425, !1426}
!1424 = !DILocalVariable(name: "src", arg: 1, scope: !1422, file: !3, line: 635, type: !199)
!1425 = !DILocalVariable(name: "srcSize", arg: 2, scope: !1422, file: !3, line: 635, type: !205)
!1426 = !DILocalVariable(name: "ret", scope: !1422, file: !3, line: 637, type: !1302)
!1427 = !DILocation(line: 635, column: 57, scope: !1422)
!1428 = !DILocation(line: 635, column: 69, scope: !1422)
!1429 = !DILocation(line: 637, column: 5, scope: !1422)
!1430 = !DILocation(line: 637, column: 30, scope: !1422)
!1431 = !DILocation(line: 637, column: 61, scope: !1422)
!1432 = !DILocation(line: 637, column: 66, scope: !1422)
!1433 = !DILocation(line: 637, column: 36, scope: !1422)
!1434 = !DILocation(line: 639, column: 13, scope: !1422)
!1435 = !DILocation(line: 639, column: 17, scope: !1422)
!1436 = !DILocation(line: 639, column: 12, scope: !1422)
!1437 = !DILocation(line: 639, column: 50, scope: !1422)
!1438 = !DILocation(line: 640, column: 1, scope: !1422)
!1439 = !DILocation(line: 639, column: 5, scope: !1422)
!1440 = distinct !DISubprogram(name: "ZSTD_findFrameSizeInfo", scope: !3, file: !3, line: 679, type: !1441, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!1407, !199, !205}
!1443 = !{!1444, !1445, !1446, !1447, !1450, !1452, !1453, !1454, !1455, !1457, !1465}
!1444 = !DILocalVariable(name: "src", arg: 1, scope: !1440, file: !3, line: 679, type: !199)
!1445 = !DILocalVariable(name: "srcSize", arg: 2, scope: !1440, file: !3, line: 679, type: !205)
!1446 = !DILocalVariable(name: "frameSizeInfo", scope: !1440, file: !3, line: 681, type: !1407)
!1447 = !DILocalVariable(name: "ip", scope: !1448, file: !3, line: 692, type: !256)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 691, column: 12)
!1449 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 685, column: 9)
!1450 = !DILocalVariable(name: "ipstart", scope: !1448, file: !3, line: 693, type: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!1452 = !DILocalVariable(name: "remainingSize", scope: !1448, file: !3, line: 694, type: !205)
!1453 = !DILocalVariable(name: "nbBlocks", scope: !1448, file: !3, line: 695, type: !205)
!1454 = !DILocalVariable(name: "zfh", scope: !1448, file: !3, line: 696, type: !211)
!1455 = !DILocalVariable(name: "ret", scope: !1456, file: !3, line: 699, type: !383)
!1456 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 699, column: 9)
!1457 = !DILocalVariable(name: "blockProperties", scope: !1458, file: !3, line: 711, type: !1459)
!1458 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 710, column: 19)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockProperties_t", file: !12, line: 419, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 415, size: 96, elements: !1461)
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "blockType", scope: !1460, file: !12, line: 416, baseType: !230, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "lastBlock", scope: !1460, file: !12, line: 417, baseType: !158, size: 32, offset: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "origSize", scope: !1460, file: !12, line: 418, baseType: !158, size: 32, offset: 64)
!1465 = !DILocalVariable(name: "cBlockSize", scope: !1458, file: !3, line: 712, type: !383)
!1466 = !DILocation(line: 679, column: 62, scope: !1440)
!1467 = !DILocation(line: 679, column: 74, scope: !1440)
!1468 = !DILocation(line: 681, column: 5, scope: !1440)
!1469 = !DILocation(line: 681, column: 24, scope: !1440)
!1470 = !DILocation(line: 682, column: 5, scope: !1440)
!1471 = !DILocation(line: 685, column: 10, scope: !1449)
!1472 = !DILocation(line: 685, column: 18, scope: !1449)
!1473 = !DILocation(line: 686, column: 9, scope: !1449)
!1474 = !DILocation(line: 686, column: 26, scope: !1449)
!1475 = !DILocation(line: 686, column: 13, scope: !1449)
!1476 = !DILocation(line: 686, column: 31, scope: !1449)
!1477 = !DILocation(line: 686, column: 60, scope: !1449)
!1478 = !DILocation(line: 685, column: 9, scope: !1440)
!1479 = !DILocation(line: 687, column: 63, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 686, column: 91)
!1481 = !DILocation(line: 687, column: 68, scope: !1480)
!1482 = !DILocation(line: 687, column: 40, scope: !1480)
!1483 = !DILocation(line: 687, column: 23, scope: !1480)
!1484 = !DILocation(line: 687, column: 38, scope: !1480)
!1485 = !DILocation(line: 690, column: 16, scope: !1480)
!1486 = !DILocation(line: 690, column: 9, scope: !1480)
!1487 = !DILocation(line: 692, column: 9, scope: !1448)
!1488 = !DILocation(line: 692, column: 21, scope: !1448)
!1489 = !DILocation(line: 692, column: 39, scope: !1448)
!1490 = !DILocation(line: 693, column: 9, scope: !1448)
!1491 = !DILocation(line: 693, column: 27, scope: !1448)
!1492 = !DILocation(line: 693, column: 37, scope: !1448)
!1493 = !DILocation(line: 694, column: 9, scope: !1448)
!1494 = !DILocation(line: 694, column: 16, scope: !1448)
!1495 = !DILocation(line: 694, column: 32, scope: !1448)
!1496 = !DILocation(line: 695, column: 9, scope: !1448)
!1497 = !DILocation(line: 695, column: 16, scope: !1448)
!1498 = !DILocation(line: 696, column: 9, scope: !1448)
!1499 = !DILocation(line: 696, column: 26, scope: !1448)
!1500 = !DILocation(line: 699, column: 13, scope: !1456)
!1501 = !DILocation(line: 699, column: 26, scope: !1456)
!1502 = !DILocation(line: 699, column: 58, scope: !1456)
!1503 = !DILocation(line: 699, column: 63, scope: !1456)
!1504 = !DILocation(line: 699, column: 32, scope: !1456)
!1505 = !DILocation(line: 700, column: 30, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 700, column: 17)
!1507 = !DILocation(line: 700, column: 17, scope: !1506)
!1508 = !DILocation(line: 700, column: 17, scope: !1456)
!1509 = !DILocation(line: 701, column: 48, scope: !1506)
!1510 = !DILocation(line: 701, column: 24, scope: !1506)
!1511 = !DILocation(line: 701, column: 17, scope: !1506)
!1512 = !DILocation(line: 702, column: 17, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 702, column: 17)
!1514 = !DILocation(line: 702, column: 21, scope: !1513)
!1515 = !DILocation(line: 702, column: 17, scope: !1456)
!1516 = !DILocation(line: 703, column: 24, scope: !1513)
!1517 = !DILocation(line: 703, column: 17, scope: !1513)
!1518 = !DILocation(line: 704, column: 9, scope: !1448)
!1519 = !DILocation(line: 706, column: 19, scope: !1448)
!1520 = !DILocation(line: 706, column: 12, scope: !1448)
!1521 = !DILocation(line: 707, column: 30, scope: !1448)
!1522 = !DILocation(line: 707, column: 26, scope: !1448)
!1523 = !DILocation(line: 707, column: 23, scope: !1448)
!1524 = !DILocation(line: 710, column: 9, scope: !1448)
!1525 = !DILocation(line: 711, column: 13, scope: !1458)
!1526 = !DILocation(line: 711, column: 31, scope: !1458)
!1527 = !DILocation(line: 712, column: 13, scope: !1458)
!1528 = !DILocation(line: 712, column: 26, scope: !1458)
!1529 = !DILocation(line: 712, column: 58, scope: !1458)
!1530 = !DILocation(line: 712, column: 62, scope: !1458)
!1531 = !DILocation(line: 712, column: 39, scope: !1458)
!1532 = !DILocation(line: 713, column: 30, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 713, column: 17)
!1534 = !DILocation(line: 713, column: 17, scope: !1533)
!1535 = !DILocation(line: 713, column: 17, scope: !1458)
!1536 = !DILocation(line: 714, column: 48, scope: !1533)
!1537 = !DILocation(line: 714, column: 24, scope: !1533)
!1538 = !DILocation(line: 714, column: 17, scope: !1533)
!1539 = !DILocation(line: 716, column: 40, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 716, column: 17)
!1541 = !DILocation(line: 716, column: 38, scope: !1540)
!1542 = !DILocation(line: 716, column: 53, scope: !1540)
!1543 = !DILocation(line: 716, column: 51, scope: !1540)
!1544 = !DILocation(line: 716, column: 17, scope: !1458)
!1545 = !DILocation(line: 717, column: 24, scope: !1540)
!1546 = !DILocation(line: 717, column: 17, scope: !1540)
!1547 = !DILocation(line: 719, column: 42, scope: !1458)
!1548 = !DILocation(line: 719, column: 40, scope: !1458)
!1549 = !DILocation(line: 719, column: 16, scope: !1458)
!1550 = !DILocation(line: 720, column: 53, scope: !1458)
!1551 = !DILocation(line: 720, column: 51, scope: !1458)
!1552 = !DILocation(line: 720, column: 27, scope: !1458)
!1553 = !DILocation(line: 721, column: 21, scope: !1458)
!1554 = !DILocation(line: 723, column: 33, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 723, column: 17)
!1556 = !DILocation(line: 723, column: 17, scope: !1555)
!1557 = !DILocation(line: 723, column: 17, scope: !1458)
!1558 = !DILocation(line: 723, column: 44, scope: !1555)
!1559 = !DILocation(line: 724, column: 9, scope: !1448)
!1560 = distinct !{!1560, !1524, !1559, !1342}
!1561 = !DILocation(line: 727, column: 17, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 727, column: 13)
!1563 = !DILocation(line: 727, column: 13, scope: !1562)
!1564 = !DILocation(line: 727, column: 13, scope: !1448)
!1565 = !DILocation(line: 728, column: 17, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 728, column: 17)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 727, column: 31)
!1568 = !DILocation(line: 728, column: 31, scope: !1566)
!1569 = !DILocation(line: 728, column: 17, scope: !1567)
!1570 = !DILocation(line: 729, column: 24, scope: !1566)
!1571 = !DILocation(line: 729, column: 17, scope: !1566)
!1572 = !DILocation(line: 730, column: 16, scope: !1567)
!1573 = !DILocation(line: 731, column: 9, scope: !1567)
!1574 = !DILocation(line: 733, column: 49, scope: !1448)
!1575 = !DILocation(line: 733, column: 54, scope: !1448)
!1576 = !DILocation(line: 733, column: 52, scope: !1448)
!1577 = !DILocation(line: 733, column: 23, scope: !1448)
!1578 = !DILocation(line: 733, column: 38, scope: !1448)
!1579 = !DILocation(line: 734, column: 48, scope: !1448)
!1580 = !DILocation(line: 734, column: 65, scope: !1448)
!1581 = !DILocation(line: 734, column: 43, scope: !1448)
!1582 = !DILocation(line: 735, column: 47, scope: !1448)
!1583 = !DILocation(line: 736, column: 43, scope: !1448)
!1584 = !DILocation(line: 736, column: 58, scope: !1448)
!1585 = !DILocation(line: 736, column: 54, scope: !1448)
!1586 = !DILocation(line: 736, column: 52, scope: !1448)
!1587 = !DILocation(line: 734, column: 23, scope: !1448)
!1588 = !DILocation(line: 734, column: 41, scope: !1448)
!1589 = !DILocation(line: 737, column: 16, scope: !1448)
!1590 = !DILocation(line: 737, column: 9, scope: !1448)
!1591 = !DILocation(line: 738, column: 5, scope: !1449)
!1592 = !DILocation(line: 739, column: 1, scope: !1440)
!1593 = distinct !DISubprogram(name: "ZSTD_decompressBound", scope: !3, file: !3, line: 758, type: !1154, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1594)
!1594 = !{!1595, !1596, !1597, !1598, !1600, !1601}
!1595 = !DILocalVariable(name: "src", arg: 1, scope: !1593, file: !3, line: 758, type: !199)
!1596 = !DILocalVariable(name: "srcSize", arg: 2, scope: !1593, file: !3, line: 758, type: !205)
!1597 = !DILocalVariable(name: "bound", scope: !1593, file: !3, line: 760, type: !215)
!1598 = !DILocalVariable(name: "frameSizeInfo", scope: !1599, file: !3, line: 763, type: !1406)
!1599 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 762, column: 25)
!1600 = !DILocalVariable(name: "compressedSize", scope: !1599, file: !3, line: 764, type: !383)
!1601 = !DILocalVariable(name: "decompressedBound", scope: !1599, file: !3, line: 765, type: !1302)
!1602 = !DILocation(line: 758, column: 53, scope: !1593)
!1603 = !DILocation(line: 758, column: 65, scope: !1593)
!1604 = !DILocation(line: 760, column: 5, scope: !1593)
!1605 = !DILocation(line: 760, column: 24, scope: !1593)
!1606 = !DILocation(line: 762, column: 5, scope: !1593)
!1607 = !DILocation(line: 762, column: 12, scope: !1593)
!1608 = !DILocation(line: 762, column: 20, scope: !1593)
!1609 = !DILocation(line: 763, column: 9, scope: !1599)
!1610 = !DILocation(line: 763, column: 34, scope: !1599)
!1611 = !DILocation(line: 763, column: 73, scope: !1599)
!1612 = !DILocation(line: 763, column: 78, scope: !1599)
!1613 = !DILocation(line: 763, column: 50, scope: !1599)
!1614 = !DILocation(line: 764, column: 9, scope: !1599)
!1615 = !DILocation(line: 764, column: 22, scope: !1599)
!1616 = !DILocation(line: 764, column: 53, scope: !1599)
!1617 = !DILocation(line: 765, column: 9, scope: !1599)
!1618 = !DILocation(line: 765, column: 34, scope: !1599)
!1619 = !DILocation(line: 765, column: 68, scope: !1599)
!1620 = !DILocation(line: 766, column: 26, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 766, column: 13)
!1622 = !DILocation(line: 766, column: 13, scope: !1621)
!1623 = !DILocation(line: 766, column: 42, scope: !1621)
!1624 = !DILocation(line: 766, column: 45, scope: !1621)
!1625 = !DILocation(line: 766, column: 63, scope: !1621)
!1626 = !DILocation(line: 766, column: 13, scope: !1599)
!1627 = !DILocation(line: 767, column: 13, scope: !1621)
!1628 = !DILocation(line: 769, column: 28, scope: !1599)
!1629 = !DILocation(line: 769, column: 34, scope: !1599)
!1630 = !DILocation(line: 769, column: 32, scope: !1599)
!1631 = !DILocation(line: 769, column: 13, scope: !1599)
!1632 = !DILocation(line: 770, column: 20, scope: !1599)
!1633 = !DILocation(line: 770, column: 17, scope: !1599)
!1634 = !DILocation(line: 771, column: 18, scope: !1599)
!1635 = !DILocation(line: 771, column: 15, scope: !1599)
!1636 = !DILocation(line: 772, column: 5, scope: !1593)
!1637 = distinct !{!1637, !1606, !1636, !1341, !1342}
!1638 = !DILocation(line: 773, column: 12, scope: !1593)
!1639 = !DILocation(line: 773, column: 5, scope: !1593)
!1640 = !DILocation(line: 774, column: 1, scope: !1593)
!1641 = distinct !DISubprogram(name: "ZSTD_insertBlock", scope: !3, file: !3, line: 783, type: !1642, scopeLine: 784, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!205, !130, !199, !205}
!1644 = !{!1645, !1646, !1647}
!1645 = !DILocalVariable(name: "dctx", arg: 1, scope: !1641, file: !3, line: 783, type: !130)
!1646 = !DILocalVariable(name: "blockStart", arg: 2, scope: !1641, file: !3, line: 783, type: !199)
!1647 = !DILocalVariable(name: "blockSize", arg: 3, scope: !1641, file: !3, line: 783, type: !205)
!1648 = !DILocation(line: 783, column: 36, scope: !1641)
!1649 = !DILocation(line: 783, column: 54, scope: !1641)
!1650 = !DILocation(line: 783, column: 73, scope: !1641)
!1651 = !DILocation(line: 786, column: 26, scope: !1641)
!1652 = !DILocation(line: 786, column: 32, scope: !1641)
!1653 = !DILocation(line: 786, column: 44, scope: !1641)
!1654 = !DILocation(line: 786, column: 5, scope: !1641)
!1655 = !DILocation(line: 787, column: 41, scope: !1641)
!1656 = !DILocation(line: 787, column: 54, scope: !1641)
!1657 = !DILocation(line: 787, column: 52, scope: !1641)
!1658 = !DILocation(line: 787, column: 5, scope: !1641)
!1659 = !DILocation(line: 787, column: 11, scope: !1641)
!1660 = !DILocation(line: 787, column: 26, scope: !1641)
!1661 = !DILocation(line: 788, column: 12, scope: !1641)
!1662 = !DILocation(line: 788, column: 5, scope: !1641)
!1663 = !DISubprogram(name: "ZSTD_checkContinuity", scope: !19, file: !19, line: 225, type: !1664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !130, !199, !205}
!1666 = distinct !DISubprogram(name: "ZSTD_decompress_usingDict", scope: !3, file: !3, line: 1008, type: !1667, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!205, !130, !129, !205, !199, !205, !199, !205}
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1670 = !DILocalVariable(name: "dctx", arg: 1, scope: !1666, file: !3, line: 1008, type: !130)
!1671 = !DILocalVariable(name: "dst", arg: 2, scope: !1666, file: !3, line: 1009, type: !129)
!1672 = !DILocalVariable(name: "dstCapacity", arg: 3, scope: !1666, file: !3, line: 1009, type: !205)
!1673 = !DILocalVariable(name: "src", arg: 4, scope: !1666, file: !3, line: 1010, type: !199)
!1674 = !DILocalVariable(name: "srcSize", arg: 5, scope: !1666, file: !3, line: 1010, type: !205)
!1675 = !DILocalVariable(name: "dict", arg: 6, scope: !1666, file: !3, line: 1011, type: !199)
!1676 = !DILocalVariable(name: "dictSize", arg: 7, scope: !1666, file: !3, line: 1011, type: !205)
!1677 = !DILocation(line: 1008, column: 45, scope: !1666)
!1678 = !DILocation(line: 1009, column: 40, scope: !1666)
!1679 = !DILocation(line: 1009, column: 52, scope: !1666)
!1680 = !DILocation(line: 1010, column: 40, scope: !1666)
!1681 = !DILocation(line: 1010, column: 52, scope: !1666)
!1682 = !DILocation(line: 1011, column: 40, scope: !1666)
!1683 = !DILocation(line: 1011, column: 53, scope: !1666)
!1684 = !DILocation(line: 1013, column: 38, scope: !1666)
!1685 = !DILocation(line: 1013, column: 44, scope: !1666)
!1686 = !DILocation(line: 1013, column: 49, scope: !1666)
!1687 = !DILocation(line: 1013, column: 62, scope: !1666)
!1688 = !DILocation(line: 1013, column: 67, scope: !1666)
!1689 = !DILocation(line: 1013, column: 76, scope: !1666)
!1690 = !DILocation(line: 1013, column: 82, scope: !1666)
!1691 = !DILocation(line: 1013, column: 12, scope: !1666)
!1692 = !DILocation(line: 1013, column: 5, scope: !1666)
!1693 = distinct !DISubprogram(name: "ZSTD_decompressMultiFrame", scope: !3, file: !3, line: 938, type: !1694, scopeLine: 943, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1696)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!205, !130, !129, !205, !199, !205, !199, !205, !282}
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1707, !1708, !1711, !1714, !1716, !1720, !1723}
!1697 = !DILocalVariable(name: "dctx", arg: 1, scope: !1693, file: !3, line: 938, type: !130)
!1698 = !DILocalVariable(name: "dst", arg: 2, scope: !1693, file: !3, line: 939, type: !129)
!1699 = !DILocalVariable(name: "dstCapacity", arg: 3, scope: !1693, file: !3, line: 939, type: !205)
!1700 = !DILocalVariable(name: "src", arg: 4, scope: !1693, file: !3, line: 940, type: !199)
!1701 = !DILocalVariable(name: "srcSize", arg: 5, scope: !1693, file: !3, line: 940, type: !205)
!1702 = !DILocalVariable(name: "dict", arg: 6, scope: !1693, file: !3, line: 941, type: !199)
!1703 = !DILocalVariable(name: "dictSize", arg: 7, scope: !1693, file: !3, line: 941, type: !205)
!1704 = !DILocalVariable(name: "ddict", arg: 8, scope: !1693, file: !3, line: 942, type: !282)
!1705 = !DILocalVariable(name: "dststart", scope: !1693, file: !3, line: 944, type: !1706)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1707 = !DILocalVariable(name: "moreThan1Frame", scope: !1693, file: !3, line: 945, type: !38)
!1708 = !DILocalVariable(name: "magicNumber", scope: !1709, file: !3, line: 958, type: !392)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 958, column: 9)
!1710 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 955, column: 63)
!1711 = !DILocalVariable(name: "skippableSize", scope: !1712, file: !3, line: 962, type: !383)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 961, column: 90)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 961, column: 17)
!1714 = !DILocalVariable(name: "err_code", scope: !1715, file: !3, line: 963, type: !383)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 963, column: 17)
!1716 = !DILocalVariable(name: "err_code", scope: !1717, file: !3, line: 973, type: !383)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 973, column: 13)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 971, column: 20)
!1719 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 971, column: 13)
!1720 = !DILocalVariable(name: "err_code", scope: !1721, file: !3, line: 977, type: !383)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 977, column: 13)
!1722 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 974, column: 16)
!1723 = !DILocalVariable(name: "res", scope: !1724, file: !3, line: 981, type: !383)
!1724 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 981, column: 9)
!1725 = !DILocation(line: 938, column: 52, scope: !1693)
!1726 = !DILocation(line: 939, column: 47, scope: !1693)
!1727 = !DILocation(line: 939, column: 59, scope: !1693)
!1728 = !DILocation(line: 940, column: 47, scope: !1693)
!1729 = !DILocation(line: 940, column: 59, scope: !1693)
!1730 = !DILocation(line: 941, column: 47, scope: !1693)
!1731 = !DILocation(line: 941, column: 60, scope: !1693)
!1732 = !DILocation(line: 942, column: 53, scope: !1693)
!1733 = !DILocation(line: 944, column: 5, scope: !1693)
!1734 = !DILocation(line: 944, column: 17, scope: !1693)
!1735 = !DILocation(line: 944, column: 28, scope: !1693)
!1736 = !DILocation(line: 945, column: 5, scope: !1693)
!1737 = !DILocation(line: 945, column: 9, scope: !1693)
!1738 = !DILocation(line: 950, column: 9, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 950, column: 9)
!1740 = !DILocation(line: 950, column: 9, scope: !1693)
!1741 = !DILocation(line: 951, column: 39, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 950, column: 16)
!1743 = !DILocation(line: 951, column: 16, scope: !1742)
!1744 = !DILocation(line: 951, column: 14, scope: !1742)
!1745 = !DILocation(line: 952, column: 40, scope: !1742)
!1746 = !DILocation(line: 952, column: 20, scope: !1742)
!1747 = !DILocation(line: 952, column: 18, scope: !1742)
!1748 = !DILocation(line: 953, column: 5, scope: !1742)
!1749 = !DILocation(line: 955, column: 5, scope: !1693)
!1750 = !DILocation(line: 955, column: 12, scope: !1693)
!1751 = !DILocation(line: 955, column: 48, scope: !1693)
!1752 = !DILocation(line: 955, column: 54, scope: !1693)
!1753 = !DILocation(line: 955, column: 23, scope: !1693)
!1754 = !DILocation(line: 955, column: 20, scope: !1693)
!1755 = !DILocation(line: 958, column: 13, scope: !1709)
!1756 = !DILocation(line: 958, column: 23, scope: !1709)
!1757 = !DILocation(line: 958, column: 50, scope: !1709)
!1758 = !DILocation(line: 958, column: 37, scope: !1709)
!1759 = !DILocation(line: 961, column: 18, scope: !1713)
!1760 = !DILocation(line: 961, column: 30, scope: !1713)
!1761 = !DILocation(line: 961, column: 59, scope: !1713)
!1762 = !DILocation(line: 961, column: 17, scope: !1709)
!1763 = !DILocation(line: 962, column: 17, scope: !1712)
!1764 = !DILocation(line: 962, column: 30, scope: !1712)
!1765 = !DILocation(line: 962, column: 69, scope: !1712)
!1766 = !DILocation(line: 962, column: 74, scope: !1712)
!1767 = !DILocation(line: 962, column: 46, scope: !1712)
!1768 = !DILocation(line: 963, column: 17, scope: !1712)
!1769 = !DILocation(line: 963, column: 17, scope: !1715)
!1770 = !DILocation(line: 963, column: 17, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 963, column: 17)
!1772 = !DILocation(line: 963, column: 17, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 963, column: 17)
!1774 = !DILocation(line: 966, column: 37, scope: !1712)
!1775 = !DILocation(line: 966, column: 43, scope: !1712)
!1776 = !DILocation(line: 966, column: 41, scope: !1712)
!1777 = !DILocation(line: 966, column: 21, scope: !1712)
!1778 = !DILocation(line: 967, column: 28, scope: !1712)
!1779 = !DILocation(line: 967, column: 25, scope: !1712)
!1780 = !DILocation(line: 968, column: 17, scope: !1712)
!1781 = distinct !{!1781, !1749, !1782, !1341, !1342}
!1782 = !DILocation(line: 1001, column: 5, scope: !1693)
!1783 = !DILocation(line: 969, column: 9, scope: !1713)
!1784 = !DILocation(line: 969, column: 13, scope: !1710)
!1785 = !DILocation(line: 971, column: 13, scope: !1719)
!1786 = !DILocation(line: 971, column: 13, scope: !1710)
!1787 = !DILocation(line: 973, column: 13, scope: !1718)
!1788 = !DILocation(line: 973, column: 13, scope: !1717)
!1789 = !DILocation(line: 973, column: 13, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 973, column: 13)
!1791 = !DILocation(line: 973, column: 13, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 973, column: 13)
!1793 = !DILocation(line: 974, column: 9, scope: !1718)
!1794 = !DILocation(line: 977, column: 13, scope: !1722)
!1795 = !DILocation(line: 977, column: 13, scope: !1721)
!1796 = !DILocation(line: 977, column: 13, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 977, column: 13)
!1798 = !DILocation(line: 977, column: 13, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 977, column: 13)
!1800 = !DILocation(line: 979, column: 30, scope: !1710)
!1801 = !DILocation(line: 979, column: 36, scope: !1710)
!1802 = !DILocation(line: 979, column: 41, scope: !1710)
!1803 = !DILocation(line: 979, column: 9, scope: !1710)
!1804 = !DILocation(line: 981, column: 13, scope: !1724)
!1805 = !DILocation(line: 981, column: 26, scope: !1724)
!1806 = !DILocation(line: 981, column: 53, scope: !1724)
!1807 = !DILocation(line: 981, column: 59, scope: !1724)
!1808 = !DILocation(line: 981, column: 64, scope: !1724)
!1809 = !DILocation(line: 981, column: 32, scope: !1724)
!1810 = !DILocation(line: 983, column: 13, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 983, column: 13)
!1812 = !DILocation(line: 983, column: 13, scope: !1724)
!1813 = !DILocation(line: 983, column: 13, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 983, column: 13)
!1815 = !DILocation(line: 994, column: 30, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 994, column: 17)
!1817 = !DILocation(line: 994, column: 17, scope: !1816)
!1818 = !DILocation(line: 994, column: 17, scope: !1724)
!1819 = !DILocation(line: 994, column: 43, scope: !1816)
!1820 = !DILocation(line: 994, column: 36, scope: !1816)
!1821 = !DILocation(line: 996, column: 17, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 996, column: 17)
!1823 = !DILocation(line: 996, column: 21, scope: !1822)
!1824 = !DILocation(line: 996, column: 17, scope: !1724)
!1825 = !DILocation(line: 997, column: 30, scope: !1822)
!1826 = !DILocation(line: 997, column: 36, scope: !1822)
!1827 = !DILocation(line: 997, column: 34, scope: !1822)
!1828 = !DILocation(line: 997, column: 21, scope: !1822)
!1829 = !DILocation(line: 997, column: 17, scope: !1822)
!1830 = !DILocation(line: 998, column: 28, scope: !1724)
!1831 = !DILocation(line: 998, column: 25, scope: !1724)
!1832 = !DILocation(line: 999, column: 9, scope: !1710)
!1833 = !DILocation(line: 1000, column: 24, scope: !1710)
!1834 = !DILocation(line: 1003, column: 5, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 1003, column: 5)
!1836 = !DILocation(line: 1003, column: 5, scope: !1693)
!1837 = !DILocation(line: 1003, column: 5, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 1003, column: 5)
!1839 = !DILocation(line: 1005, column: 28, scope: !1693)
!1840 = !DILocation(line: 1005, column: 41, scope: !1693)
!1841 = !DILocation(line: 1005, column: 32, scope: !1693)
!1842 = !DILocation(line: 1005, column: 5, scope: !1693)
!1843 = !DILocation(line: 1006, column: 1, scope: !1693)
!1844 = distinct !DISubprogram(name: "ZSTD_decompressDCtx", scope: !3, file: !3, line: 1034, type: !1845, scopeLine: 1035, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!205, !130, !129, !205, !199, !205}
!1847 = !{!1848, !1849, !1850, !1851, !1852}
!1848 = !DILocalVariable(name: "dctx", arg: 1, scope: !1844, file: !3, line: 1034, type: !130)
!1849 = !DILocalVariable(name: "dst", arg: 2, scope: !1844, file: !3, line: 1034, type: !129)
!1850 = !DILocalVariable(name: "dstCapacity", arg: 3, scope: !1844, file: !3, line: 1034, type: !205)
!1851 = !DILocalVariable(name: "src", arg: 4, scope: !1844, file: !3, line: 1034, type: !199)
!1852 = !DILocalVariable(name: "srcSize", arg: 5, scope: !1844, file: !3, line: 1034, type: !205)
!1853 = !DILocation(line: 1034, column: 39, scope: !1844)
!1854 = !DILocation(line: 1034, column: 51, scope: !1844)
!1855 = !DILocation(line: 1034, column: 63, scope: !1844)
!1856 = !DILocation(line: 1034, column: 88, scope: !1844)
!1857 = !DILocation(line: 1034, column: 100, scope: !1844)
!1858 = !DILocation(line: 1036, column: 39, scope: !1844)
!1859 = !DILocation(line: 1036, column: 45, scope: !1844)
!1860 = !DILocation(line: 1036, column: 50, scope: !1844)
!1861 = !DILocation(line: 1036, column: 63, scope: !1844)
!1862 = !DILocation(line: 1036, column: 68, scope: !1844)
!1863 = !DILocation(line: 1036, column: 91, scope: !1844)
!1864 = !DILocation(line: 1036, column: 77, scope: !1844)
!1865 = !DILocation(line: 1036, column: 12, scope: !1844)
!1866 = !DILocation(line: 1036, column: 5, scope: !1844)
!1867 = distinct !DISubprogram(name: "ZSTD_decompress_usingDDict", scope: !3, file: !3, line: 1487, type: !1868, scopeLine: 1491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!205, !130, !129, !205, !199, !205, !282}
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876}
!1871 = !DILocalVariable(name: "dctx", arg: 1, scope: !1867, file: !3, line: 1487, type: !130)
!1872 = !DILocalVariable(name: "dst", arg: 2, scope: !1867, file: !3, line: 1488, type: !129)
!1873 = !DILocalVariable(name: "dstCapacity", arg: 3, scope: !1867, file: !3, line: 1488, type: !205)
!1874 = !DILocalVariable(name: "src", arg: 4, scope: !1867, file: !3, line: 1489, type: !199)
!1875 = !DILocalVariable(name: "srcSize", arg: 5, scope: !1867, file: !3, line: 1489, type: !205)
!1876 = !DILocalVariable(name: "ddict", arg: 6, scope: !1867, file: !3, line: 1490, type: !282)
!1877 = !DILocation(line: 1487, column: 46, scope: !1867)
!1878 = !DILocation(line: 1488, column: 41, scope: !1867)
!1879 = !DILocation(line: 1488, column: 53, scope: !1867)
!1880 = !DILocation(line: 1489, column: 41, scope: !1867)
!1881 = !DILocation(line: 1489, column: 53, scope: !1867)
!1882 = !DILocation(line: 1490, column: 47, scope: !1867)
!1883 = !DILocation(line: 1493, column: 38, scope: !1867)
!1884 = !DILocation(line: 1493, column: 44, scope: !1867)
!1885 = !DILocation(line: 1493, column: 49, scope: !1867)
!1886 = !DILocation(line: 1493, column: 62, scope: !1867)
!1887 = !DILocation(line: 1493, column: 67, scope: !1867)
!1888 = !DILocation(line: 1495, column: 38, scope: !1867)
!1889 = !DILocation(line: 1493, column: 12, scope: !1867)
!1890 = !DILocation(line: 1493, column: 5, scope: !1867)
!1891 = distinct !DISubprogram(name: "ZSTD_getDDict", scope: !3, file: !3, line: 1017, type: !1892, scopeLine: 1018, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1894)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!282, !130}
!1894 = !{!1895}
!1895 = !DILocalVariable(name: "dctx", arg: 1, scope: !1891, file: !3, line: 1017, type: !130)
!1896 = !DILocation(line: 1017, column: 51, scope: !1891)
!1897 = !DILocation(line: 1019, column: 13, scope: !1891)
!1898 = !DILocation(line: 1019, column: 19, scope: !1891)
!1899 = !DILocation(line: 1019, column: 5, scope: !1891)
!1900 = !DILocation(line: 1021, column: 9, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 1019, column: 29)
!1902 = !DILocation(line: 1024, column: 24, scope: !1901)
!1903 = !DILocation(line: 1024, column: 9, scope: !1901)
!1904 = !DILocation(line: 1025, column: 9, scope: !1901)
!1905 = !DILocation(line: 1027, column: 16, scope: !1901)
!1906 = !DILocation(line: 1027, column: 22, scope: !1901)
!1907 = !DILocation(line: 1027, column: 9, scope: !1901)
!1908 = !DILocation(line: 1029, column: 9, scope: !1901)
!1909 = !DILocation(line: 1029, column: 15, scope: !1901)
!1910 = !DILocation(line: 1029, column: 24, scope: !1901)
!1911 = !DILocation(line: 1030, column: 16, scope: !1901)
!1912 = !DILocation(line: 1030, column: 22, scope: !1901)
!1913 = !DILocation(line: 1030, column: 9, scope: !1901)
!1914 = !DILocation(line: 1032, column: 1, scope: !1891)
!1915 = distinct !DISubprogram(name: "ZSTD_decompress", scope: !3, file: !3, line: 1040, type: !1916, scopeLine: 1041, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1918)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!205, !129, !205, !199, !205}
!1918 = !{!1919, !1920, !1921, !1922, !1923, !1924}
!1919 = !DILocalVariable(name: "dst", arg: 1, scope: !1915, file: !3, line: 1040, type: !129)
!1920 = !DILocalVariable(name: "dstCapacity", arg: 2, scope: !1915, file: !3, line: 1040, type: !205)
!1921 = !DILocalVariable(name: "src", arg: 3, scope: !1915, file: !3, line: 1040, type: !199)
!1922 = !DILocalVariable(name: "srcSize", arg: 4, scope: !1915, file: !3, line: 1040, type: !205)
!1923 = !DILocalVariable(name: "regenSize", scope: !1915, file: !3, line: 1043, type: !205)
!1924 = !DILocalVariable(name: "dctx", scope: !1915, file: !3, line: 1044, type: !468)
!1925 = !DILocation(line: 1040, column: 30, scope: !1915)
!1926 = !DILocation(line: 1040, column: 42, scope: !1915)
!1927 = !DILocation(line: 1040, column: 67, scope: !1915)
!1928 = !DILocation(line: 1040, column: 79, scope: !1915)
!1929 = !DILocation(line: 1043, column: 5, scope: !1915)
!1930 = !DILocation(line: 1043, column: 12, scope: !1915)
!1931 = !DILocation(line: 1044, column: 5, scope: !1915)
!1932 = !DILocation(line: 1044, column: 22, scope: !1915)
!1933 = !DILocation(line: 1044, column: 30, scope: !1915)
!1934 = !DILocation(line: 1045, column: 5, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 1045, column: 5)
!1936 = !DILocation(line: 1045, column: 5, scope: !1915)
!1937 = !DILocation(line: 1045, column: 5, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 1045, column: 5)
!1939 = !DILocation(line: 1046, column: 37, scope: !1915)
!1940 = !DILocation(line: 1046, column: 43, scope: !1915)
!1941 = !DILocation(line: 1046, column: 48, scope: !1915)
!1942 = !DILocation(line: 1046, column: 61, scope: !1915)
!1943 = !DILocation(line: 1046, column: 66, scope: !1915)
!1944 = !DILocation(line: 1046, column: 17, scope: !1915)
!1945 = !DILocation(line: 1046, column: 15, scope: !1915)
!1946 = !DILocation(line: 1047, column: 19, scope: !1915)
!1947 = !DILocation(line: 1047, column: 5, scope: !1915)
!1948 = !DILocation(line: 1048, column: 12, scope: !1915)
!1949 = !DILocation(line: 1048, column: 5, scope: !1915)
!1950 = !DILocation(line: 1054, column: 1, scope: !1915)
!1951 = distinct !DISubprogram(name: "ZSTD_nextSrcSizeToDecompress", scope: !3, file: !3, line: 1061, type: !595, scopeLine: 1061, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1952)
!1952 = !{!1953}
!1953 = !DILocalVariable(name: "dctx", arg: 1, scope: !1951, file: !3, line: 1061, type: !130)
!1954 = !DILocation(line: 1061, column: 48, scope: !1951)
!1955 = !DILocation(line: 1061, column: 63, scope: !1951)
!1956 = !DILocation(line: 1061, column: 69, scope: !1951)
!1957 = !DILocation(line: 1061, column: 56, scope: !1951)
!1958 = distinct !DISubprogram(name: "ZSTD_nextInputType", scope: !3, file: !3, line: 1081, type: !1959, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1962)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!1961, !130}
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_nextInputType_e", file: !6, line: 2506, baseType: !94)
!1962 = !{!1963}
!1963 = !DILocalVariable(name: "dctx", arg: 1, scope: !1958, file: !3, line: 1081, type: !130)
!1964 = !DILocation(line: 1081, column: 52, scope: !1958)
!1965 = !DILocation(line: 1082, column: 12, scope: !1958)
!1966 = !DILocation(line: 1082, column: 18, scope: !1958)
!1967 = !DILocation(line: 1082, column: 5, scope: !1958)
!1968 = !DILocation(line: 1085, column: 9, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 1083, column: 5)
!1970 = !DILocation(line: 1090, column: 9, scope: !1969)
!1971 = !DILocation(line: 1092, column: 9, scope: !1969)
!1972 = !DILocation(line: 1094, column: 9, scope: !1969)
!1973 = !DILocation(line: 1096, column: 9, scope: !1969)
!1974 = !DILocation(line: 1098, column: 9, scope: !1969)
!1975 = !DILocation(line: 1102, column: 9, scope: !1969)
!1976 = !DILocation(line: 1104, column: 1, scope: !1958)
!1977 = distinct !DISubprogram(name: "ZSTD_decompressContinue", scope: !3, file: !3, line: 1112, type: !1845, scopeLine: 1113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984, !1987, !1989, !1990, !1992, !1995, !1997, !2001}
!1979 = !DILocalVariable(name: "dctx", arg: 1, scope: !1977, file: !3, line: 1112, type: !130)
!1980 = !DILocalVariable(name: "dst", arg: 2, scope: !1977, file: !3, line: 1112, type: !129)
!1981 = !DILocalVariable(name: "dstCapacity", arg: 3, scope: !1977, file: !3, line: 1112, type: !205)
!1982 = !DILocalVariable(name: "src", arg: 4, scope: !1977, file: !3, line: 1112, type: !199)
!1983 = !DILocalVariable(name: "srcSize", arg: 5, scope: !1977, file: !3, line: 1112, type: !205)
!1984 = !DILocalVariable(name: "err_code", scope: !1985, file: !3, line: 1143, type: !383)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1143, column: 9)
!1986 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 1122, column: 5)
!1987 = !DILocalVariable(name: "bp", scope: !1988, file: !3, line: 1149, type: !1459)
!1988 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1149, column: 9)
!1989 = !DILocalVariable(name: "cBlockSize", scope: !1988, file: !3, line: 1150, type: !383)
!1990 = !DILocalVariable(name: "rSize", scope: !1991, file: !3, line: 1179, type: !205)
!1991 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1179, column: 9)
!1992 = !DILocalVariable(name: "err_code", scope: !1993, file: !3, line: 1190, type: !383)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1190, column: 17)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1181, column: 13)
!1995 = !DILocalVariable(name: "err_code", scope: !1996, file: !3, line: 1202, type: !383)
!1996 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1202, column: 13)
!1997 = !DILocalVariable(name: "h32", scope: !1998, file: !3, line: 1239, type: !392)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 1238, column: 41)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 1238, column: 17)
!2000 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1237, column: 9)
!2001 = !DILocalVariable(name: "check32", scope: !1998, file: !3, line: 1240, type: !392)
!2002 = !DILocation(line: 1112, column: 43, scope: !1977)
!2003 = !DILocation(line: 1112, column: 55, scope: !1977)
!2004 = !DILocation(line: 1112, column: 67, scope: !1977)
!2005 = !DILocation(line: 1112, column: 92, scope: !1977)
!2006 = !DILocation(line: 1112, column: 104, scope: !1977)
!2007 = !DILocation(line: 1116, column: 5, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 1116, column: 5)
!2009 = !DILocation(line: 1116, column: 5, scope: !1977)
!2010 = !DILocation(line: 1116, column: 5, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 1116, column: 5)
!2012 = !DILocation(line: 1117, column: 26, scope: !1977)
!2013 = !DILocation(line: 1117, column: 32, scope: !1977)
!2014 = !DILocation(line: 1117, column: 37, scope: !1977)
!2015 = !DILocation(line: 1117, column: 5, scope: !1977)
!2016 = !DILocation(line: 1119, column: 29, scope: !1977)
!2017 = !DILocation(line: 1119, column: 5, scope: !1977)
!2018 = !DILocation(line: 1119, column: 11, scope: !1977)
!2019 = !DILocation(line: 1119, column: 26, scope: !1977)
!2020 = !DILocation(line: 1121, column: 13, scope: !1977)
!2021 = !DILocation(line: 1121, column: 19, scope: !1977)
!2022 = !DILocation(line: 1121, column: 5, scope: !1977)
!2023 = !DILocation(line: 1125, column: 13, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1125, column: 13)
!2025 = !DILocation(line: 1125, column: 19, scope: !2024)
!2026 = !DILocation(line: 1125, column: 26, scope: !2024)
!2027 = !DILocation(line: 1125, column: 13, scope: !1986)
!2028 = !DILocation(line: 1127, column: 31, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 1127, column: 17)
!2030 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 1125, column: 43)
!2031 = !DILocation(line: 1127, column: 18, scope: !2029)
!2032 = !DILocation(line: 1127, column: 36, scope: !2029)
!2033 = !DILocation(line: 1127, column: 65, scope: !2029)
!2034 = !DILocation(line: 1127, column: 17, scope: !2030)
!2035 = !DILocation(line: 1128, column: 17, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 1127, column: 96)
!2037 = !DILocation(line: 1129, column: 61, scope: !2036)
!2038 = !DILocation(line: 1129, column: 59, scope: !2036)
!2039 = !DILocation(line: 1129, column: 17, scope: !2036)
!2040 = !DILocation(line: 1129, column: 23, scope: !2036)
!2041 = !DILocation(line: 1129, column: 32, scope: !2036)
!2042 = !DILocation(line: 1130, column: 17, scope: !2036)
!2043 = !DILocation(line: 1130, column: 23, scope: !2036)
!2044 = !DILocation(line: 1130, column: 29, scope: !2036)
!2045 = !DILocation(line: 1131, column: 17, scope: !2036)
!2046 = !DILocation(line: 1132, column: 13, scope: !2030)
!2047 = !DILocation(line: 1133, column: 58, scope: !1986)
!2048 = !DILocation(line: 1133, column: 63, scope: !1986)
!2049 = !DILocation(line: 1133, column: 72, scope: !1986)
!2050 = !DILocation(line: 1133, column: 78, scope: !1986)
!2051 = !DILocation(line: 1133, column: 28, scope: !1986)
!2052 = !DILocation(line: 1133, column: 9, scope: !1986)
!2053 = !DILocation(line: 1133, column: 15, scope: !1986)
!2054 = !DILocation(line: 1133, column: 26, scope: !1986)
!2055 = !DILocation(line: 1134, column: 26, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1134, column: 13)
!2057 = !DILocation(line: 1134, column: 32, scope: !2056)
!2058 = !DILocation(line: 1134, column: 13, scope: !2056)
!2059 = !DILocation(line: 1134, column: 13, scope: !1986)
!2060 = !DILocation(line: 1134, column: 52, scope: !2056)
!2061 = !DILocation(line: 1134, column: 58, scope: !2056)
!2062 = !DILocation(line: 1134, column: 45, scope: !2056)
!2063 = !DILocation(line: 1135, column: 9, scope: !1986)
!2064 = !DILocation(line: 1136, column: 26, scope: !1986)
!2065 = !DILocation(line: 1136, column: 32, scope: !1986)
!2066 = !DILocation(line: 1136, column: 45, scope: !1986)
!2067 = !DILocation(line: 1136, column: 43, scope: !1986)
!2068 = !DILocation(line: 1136, column: 9, scope: !1986)
!2069 = !DILocation(line: 1136, column: 15, scope: !1986)
!2070 = !DILocation(line: 1136, column: 24, scope: !1986)
!2071 = !DILocation(line: 1137, column: 9, scope: !1986)
!2072 = !DILocation(line: 1137, column: 15, scope: !1986)
!2073 = !DILocation(line: 1137, column: 21, scope: !1986)
!2074 = !DILocation(line: 1138, column: 9, scope: !1986)
!2075 = !DILocation(line: 1142, column: 9, scope: !1986)
!2076 = !DILocation(line: 1143, column: 9, scope: !1986)
!2077 = !DILocation(line: 1143, column: 9, scope: !1985)
!2078 = !DILocation(line: 1143, column: 9, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 1143, column: 9)
!2080 = !DILocation(line: 1143, column: 9, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 1143, column: 9)
!2082 = !DILocation(line: 1144, column: 9, scope: !1986)
!2083 = !DILocation(line: 1144, column: 15, scope: !1986)
!2084 = !DILocation(line: 1144, column: 24, scope: !1986)
!2085 = !DILocation(line: 1145, column: 9, scope: !1986)
!2086 = !DILocation(line: 1145, column: 15, scope: !1986)
!2087 = !DILocation(line: 1145, column: 21, scope: !1986)
!2088 = !DILocation(line: 1146, column: 9, scope: !1986)
!2089 = !DILocation(line: 1149, column: 13, scope: !1988)
!2090 = !DILocation(line: 1149, column: 31, scope: !1988)
!2091 = !DILocation(line: 1150, column: 13, scope: !1988)
!2092 = !DILocation(line: 1150, column: 26, scope: !1988)
!2093 = !DILocation(line: 1150, column: 58, scope: !1988)
!2094 = !DILocation(line: 1150, column: 39, scope: !1988)
!2095 = !DILocation(line: 1151, column: 30, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 1151, column: 17)
!2097 = !DILocation(line: 1151, column: 17, scope: !2096)
!2098 = !DILocation(line: 1151, column: 17, scope: !1988)
!2099 = !DILocation(line: 1151, column: 50, scope: !2096)
!2100 = !DILocation(line: 1151, column: 43, scope: !2096)
!2101 = !DILocation(line: 1152, column: 13, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 1152, column: 13)
!2103 = !DILocation(line: 1152, column: 13, scope: !1988)
!2104 = !DILocation(line: 1152, column: 13, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 1152, column: 13)
!2106 = !DILocation(line: 1153, column: 30, scope: !1988)
!2107 = !DILocation(line: 1153, column: 13, scope: !1988)
!2108 = !DILocation(line: 1153, column: 19, scope: !1988)
!2109 = !DILocation(line: 1153, column: 28, scope: !1988)
!2110 = !DILocation(line: 1154, column: 30, scope: !1988)
!2111 = !DILocation(line: 1154, column: 13, scope: !1988)
!2112 = !DILocation(line: 1154, column: 19, scope: !1988)
!2113 = !DILocation(line: 1154, column: 25, scope: !1988)
!2114 = !DILocation(line: 1155, column: 32, scope: !1988)
!2115 = !DILocation(line: 1155, column: 29, scope: !1988)
!2116 = !DILocation(line: 1155, column: 13, scope: !1988)
!2117 = !DILocation(line: 1155, column: 19, scope: !1988)
!2118 = !DILocation(line: 1155, column: 27, scope: !1988)
!2119 = !DILocation(line: 1156, column: 17, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 1156, column: 17)
!2121 = !DILocation(line: 1156, column: 17, scope: !1988)
!2122 = !DILocation(line: 1157, column: 34, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 1156, column: 29)
!2124 = !DILocation(line: 1157, column: 31, scope: !2123)
!2125 = !DILocation(line: 1157, column: 17, scope: !2123)
!2126 = !DILocation(line: 1157, column: 23, scope: !2123)
!2127 = !DILocation(line: 1157, column: 29, scope: !2123)
!2128 = !DILocation(line: 1158, column: 17, scope: !2123)
!2129 = !DILocation(line: 1161, column: 20, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 1161, column: 17)
!2131 = !DILocation(line: 1161, column: 17, scope: !2130)
!2132 = !DILocation(line: 1161, column: 17, scope: !1988)
!2133 = !DILocation(line: 1162, column: 21, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 1162, column: 21)
!2135 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 1161, column: 31)
!2136 = !DILocation(line: 1162, column: 27, scope: !2134)
!2137 = !DILocation(line: 1162, column: 35, scope: !2134)
!2138 = !DILocation(line: 1162, column: 21, scope: !2135)
!2139 = !DILocation(line: 1163, column: 21, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 1162, column: 49)
!2141 = !DILocation(line: 1163, column: 27, scope: !2140)
!2142 = !DILocation(line: 1163, column: 36, scope: !2140)
!2143 = !DILocation(line: 1164, column: 21, scope: !2140)
!2144 = !DILocation(line: 1164, column: 27, scope: !2140)
!2145 = !DILocation(line: 1164, column: 33, scope: !2140)
!2146 = !DILocation(line: 1165, column: 17, scope: !2140)
!2147 = !DILocation(line: 1166, column: 21, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 1165, column: 24)
!2149 = !DILocation(line: 1166, column: 27, scope: !2148)
!2150 = !DILocation(line: 1166, column: 36, scope: !2148)
!2151 = !DILocation(line: 1167, column: 21, scope: !2148)
!2152 = !DILocation(line: 1167, column: 27, scope: !2148)
!2153 = !DILocation(line: 1167, column: 33, scope: !2148)
!2154 = !DILocation(line: 1169, column: 13, scope: !2135)
!2155 = !DILocation(line: 1170, column: 17, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 1169, column: 20)
!2157 = !DILocation(line: 1170, column: 23, scope: !2156)
!2158 = !DILocation(line: 1170, column: 32, scope: !2156)
!2159 = !DILocation(line: 1171, column: 17, scope: !2156)
!2160 = !DILocation(line: 1171, column: 23, scope: !2156)
!2161 = !DILocation(line: 1171, column: 29, scope: !2156)
!2162 = !DILocation(line: 1173, column: 13, scope: !1988)
!2163 = !DILocation(line: 1174, column: 9, scope: !1986)
!2164 = !DILocation(line: 1179, column: 13, scope: !1991)
!2165 = !DILocation(line: 1179, column: 20, scope: !1991)
!2166 = !DILocation(line: 1180, column: 20, scope: !1991)
!2167 = !DILocation(line: 1180, column: 26, scope: !1991)
!2168 = !DILocation(line: 1180, column: 13, scope: !1991)
!2169 = !DILocation(line: 1184, column: 55, scope: !1994)
!2170 = !DILocation(line: 1184, column: 61, scope: !1994)
!2171 = !DILocation(line: 1184, column: 66, scope: !1994)
!2172 = !DILocation(line: 1184, column: 79, scope: !1994)
!2173 = !DILocation(line: 1184, column: 84, scope: !1994)
!2174 = !DILocation(line: 1184, column: 25, scope: !1994)
!2175 = !DILocation(line: 1184, column: 23, scope: !1994)
!2176 = !DILocation(line: 1185, column: 17, scope: !1994)
!2177 = !DILocation(line: 1185, column: 23, scope: !1994)
!2178 = !DILocation(line: 1185, column: 32, scope: !1994)
!2179 = !DILocation(line: 1186, column: 17, scope: !1994)
!2180 = !DILocation(line: 1189, column: 43, scope: !1994)
!2181 = !DILocation(line: 1189, column: 48, scope: !1994)
!2182 = !DILocation(line: 1189, column: 61, scope: !1994)
!2183 = !DILocation(line: 1189, column: 66, scope: !1994)
!2184 = !DILocation(line: 1189, column: 25, scope: !1994)
!2185 = !DILocation(line: 1189, column: 23, scope: !1994)
!2186 = !DILocation(line: 1190, column: 17, scope: !1994)
!2187 = !DILocation(line: 1190, column: 17, scope: !1993)
!2188 = !DILocation(line: 1190, column: 17, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 1190, column: 17)
!2190 = !DILocation(line: 1190, column: 17, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 1190, column: 17)
!2192 = !DILocation(line: 1192, column: 35, scope: !1994)
!2193 = !DILocation(line: 1192, column: 17, scope: !1994)
!2194 = !DILocation(line: 1192, column: 23, scope: !1994)
!2195 = !DILocation(line: 1192, column: 32, scope: !1994)
!2196 = !DILocation(line: 1193, column: 17, scope: !1994)
!2197 = !DILocation(line: 1195, column: 42, scope: !1994)
!2198 = !DILocation(line: 1195, column: 47, scope: !1994)
!2199 = !DILocation(line: 1195, column: 74, scope: !1994)
!2200 = !DILocation(line: 1195, column: 60, scope: !1994)
!2201 = !DILocation(line: 1195, column: 79, scope: !1994)
!2202 = !DILocation(line: 1195, column: 85, scope: !1994)
!2203 = !DILocation(line: 1195, column: 25, scope: !1994)
!2204 = !DILocation(line: 1195, column: 23, scope: !1994)
!2205 = !DILocation(line: 1196, column: 17, scope: !1994)
!2206 = !DILocation(line: 1196, column: 23, scope: !1994)
!2207 = !DILocation(line: 1196, column: 32, scope: !1994)
!2208 = !DILocation(line: 1197, column: 17, scope: !1994)
!2209 = !DILocation(line: 1198, column: 13, scope: !1994)
!2210 = !DILocation(line: 1200, column: 17, scope: !1994)
!2211 = !DILocation(line: 1200, column: 17, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1200, column: 17)
!2213 = !DILocation(line: 1201, column: 13, scope: !1994)
!2214 = !DILocation(line: 1202, column: 13, scope: !1991)
!2215 = !DILocation(line: 1202, column: 13, scope: !1996)
!2216 = !DILocation(line: 1202, column: 13, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 1202, column: 13)
!2218 = !DILocation(line: 1202, column: 13, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 1202, column: 13)
!2220 = !DILocation(line: 1203, column: 13, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1203, column: 13)
!2222 = !DILocation(line: 1203, column: 13, scope: !1991)
!2223 = !DILocation(line: 1203, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 1203, column: 13)
!2225 = !DILocation(line: 1205, column: 34, scope: !1991)
!2226 = !DILocation(line: 1205, column: 13, scope: !1991)
!2227 = !DILocation(line: 1205, column: 19, scope: !1991)
!2228 = !DILocation(line: 1205, column: 31, scope: !1991)
!2229 = !DILocation(line: 1206, column: 17, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1206, column: 17)
!2231 = !DILocation(line: 1206, column: 23, scope: !2230)
!2232 = !DILocation(line: 1206, column: 17, scope: !1991)
!2233 = !DILocation(line: 1206, column: 55, scope: !2230)
!2234 = !DILocation(line: 1206, column: 61, scope: !2230)
!2235 = !DILocation(line: 1206, column: 71, scope: !2230)
!2236 = !DILocation(line: 1206, column: 76, scope: !2230)
!2237 = !DILocation(line: 1206, column: 41, scope: !2230)
!2238 = !DILocation(line: 1207, column: 43, scope: !1991)
!2239 = !DILocation(line: 1207, column: 49, scope: !1991)
!2240 = !DILocation(line: 1207, column: 47, scope: !1991)
!2241 = !DILocation(line: 1207, column: 13, scope: !1991)
!2242 = !DILocation(line: 1207, column: 19, scope: !1991)
!2243 = !DILocation(line: 1207, column: 34, scope: !1991)
!2244 = !DILocation(line: 1210, column: 17, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1210, column: 17)
!2246 = !DILocation(line: 1210, column: 23, scope: !2245)
!2247 = !DILocation(line: 1210, column: 32, scope: !2245)
!2248 = !DILocation(line: 1210, column: 17, scope: !1991)
!2249 = !DILocation(line: 1211, column: 24, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 1210, column: 37)
!2251 = !DILocation(line: 1211, column: 17, scope: !2250)
!2252 = !DILocation(line: 1214, column: 17, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1214, column: 17)
!2254 = !DILocation(line: 1214, column: 23, scope: !2253)
!2255 = !DILocation(line: 1214, column: 29, scope: !2253)
!2256 = !DILocation(line: 1214, column: 17, scope: !1991)
!2257 = !DILocation(line: 1216, column: 17, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 1216, column: 17)
!2259 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 1214, column: 60)
!2260 = !DILocation(line: 1216, column: 17, scope: !2259)
!2261 = !DILocation(line: 1216, column: 17, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 1216, column: 17)
!2263 = !DILocation(line: 1220, column: 21, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 1220, column: 21)
!2265 = !DILocation(line: 1220, column: 27, scope: !2264)
!2266 = !DILocation(line: 1220, column: 35, scope: !2264)
!2267 = !DILocation(line: 1220, column: 21, scope: !2259)
!2268 = !DILocation(line: 1221, column: 21, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1220, column: 49)
!2270 = !DILocation(line: 1221, column: 27, scope: !2269)
!2271 = !DILocation(line: 1221, column: 36, scope: !2269)
!2272 = !DILocation(line: 1222, column: 21, scope: !2269)
!2273 = !DILocation(line: 1222, column: 27, scope: !2269)
!2274 = !DILocation(line: 1222, column: 33, scope: !2269)
!2275 = !DILocation(line: 1223, column: 17, scope: !2269)
!2276 = !DILocation(line: 1224, column: 41, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1223, column: 24)
!2278 = !DILocation(line: 1224, column: 47, scope: !2277)
!2279 = !DILocation(line: 1224, column: 53, scope: !2277)
!2280 = !DILocation(line: 1224, column: 66, scope: !2277)
!2281 = !DILocation(line: 1224, column: 72, scope: !2277)
!2282 = !DILocation(line: 1224, column: 21, scope: !2277)
!2283 = !DILocation(line: 1225, column: 21, scope: !2277)
!2284 = !DILocation(line: 1225, column: 27, scope: !2277)
!2285 = !DILocation(line: 1225, column: 36, scope: !2277)
!2286 = !DILocation(line: 1226, column: 21, scope: !2277)
!2287 = !DILocation(line: 1226, column: 27, scope: !2277)
!2288 = !DILocation(line: 1226, column: 33, scope: !2277)
!2289 = !DILocation(line: 1228, column: 13, scope: !2259)
!2290 = !DILocation(line: 1229, column: 17, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 1228, column: 20)
!2292 = !DILocation(line: 1229, column: 23, scope: !2291)
!2293 = !DILocation(line: 1229, column: 29, scope: !2291)
!2294 = !DILocation(line: 1230, column: 17, scope: !2291)
!2295 = !DILocation(line: 1230, column: 23, scope: !2291)
!2296 = !DILocation(line: 1230, column: 32, scope: !2291)
!2297 = !DILocation(line: 1232, column: 20, scope: !1991)
!2298 = !DILocation(line: 1232, column: 13, scope: !1991)
!2299 = !DILocation(line: 1233, column: 9, scope: !1986)
!2300 = !DILocation(line: 1238, column: 17, scope: !1999)
!2301 = !DILocation(line: 1238, column: 23, scope: !1999)
!2302 = !DILocation(line: 1238, column: 17, scope: !2000)
!2303 = !DILocation(line: 1239, column: 17, scope: !1998)
!2304 = !DILocation(line: 1239, column: 27, scope: !1998)
!2305 = !DILocation(line: 1239, column: 52, scope: !1998)
!2306 = !DILocation(line: 1239, column: 58, scope: !1998)
!2307 = !DILocation(line: 1239, column: 38, scope: !1998)
!2308 = !DILocation(line: 1239, column: 33, scope: !1998)
!2309 = !DILocation(line: 1240, column: 17, scope: !1998)
!2310 = !DILocation(line: 1240, column: 27, scope: !1998)
!2311 = !DILocation(line: 1240, column: 50, scope: !1998)
!2312 = !DILocation(line: 1240, column: 37, scope: !1998)
!2313 = !DILocation(line: 1242, column: 17, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 1242, column: 17)
!2315 = !DILocation(line: 1242, column: 17, scope: !1998)
!2316 = !DILocation(line: 1242, column: 17, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 1242, column: 17)
!2318 = !DILocation(line: 1243, column: 13, scope: !1999)
!2319 = !DILocation(line: 1243, column: 13, scope: !1998)
!2320 = !DILocation(line: 1244, column: 33, scope: !2000)
!2321 = !DILocation(line: 1244, column: 39, scope: !2000)
!2322 = !DILocation(line: 1244, column: 45, scope: !2000)
!2323 = !DILocation(line: 1244, column: 58, scope: !2000)
!2324 = !DILocation(line: 1244, column: 64, scope: !2000)
!2325 = !DILocation(line: 1244, column: 13, scope: !2000)
!2326 = !DILocation(line: 1245, column: 13, scope: !2000)
!2327 = !DILocation(line: 1245, column: 19, scope: !2000)
!2328 = !DILocation(line: 1245, column: 28, scope: !2000)
!2329 = !DILocation(line: 1246, column: 13, scope: !2000)
!2330 = !DILocation(line: 1246, column: 19, scope: !2000)
!2331 = !DILocation(line: 1246, column: 25, scope: !2000)
!2332 = !DILocation(line: 1247, column: 13, scope: !2000)
!2333 = !DILocation(line: 1253, column: 9, scope: !1986)
!2334 = !DILocation(line: 1254, column: 39, scope: !1986)
!2335 = !DILocation(line: 1254, column: 45, scope: !1986)
!2336 = !DILocation(line: 1254, column: 58, scope: !1986)
!2337 = !DILocation(line: 1254, column: 26, scope: !1986)
!2338 = !DILocation(line: 1254, column: 9, scope: !1986)
!2339 = !DILocation(line: 1254, column: 15, scope: !1986)
!2340 = !DILocation(line: 1254, column: 24, scope: !1986)
!2341 = !DILocation(line: 1255, column: 9, scope: !1986)
!2342 = !DILocation(line: 1255, column: 15, scope: !1986)
!2343 = !DILocation(line: 1255, column: 21, scope: !1986)
!2344 = !DILocation(line: 1256, column: 9, scope: !1986)
!2345 = !DILocation(line: 1259, column: 9, scope: !1986)
!2346 = !DILocation(line: 1259, column: 15, scope: !1986)
!2347 = !DILocation(line: 1259, column: 24, scope: !1986)
!2348 = !DILocation(line: 1260, column: 9, scope: !1986)
!2349 = !DILocation(line: 1260, column: 15, scope: !1986)
!2350 = !DILocation(line: 1260, column: 21, scope: !1986)
!2351 = !DILocation(line: 1261, column: 9, scope: !1986)
!2352 = !DILocation(line: 1265, column: 9, scope: !1986)
!2353 = !DILocation(line: 1265, column: 9, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1265, column: 9)
!2355 = !DILocation(line: 1266, column: 5, scope: !1986)
!2356 = !DILocation(line: 1267, column: 1, scope: !1977)
!2357 = distinct !DISubprogram(name: "ZSTD_nextSrcSizeToDecompressWithInputSize", scope: !3, file: !3, line: 1073, type: !2358, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!205, !130, !205}
!2360 = !{!2361, !2362}
!2361 = !DILocalVariable(name: "dctx", arg: 1, scope: !2357, file: !3, line: 1073, type: !130)
!2362 = !DILocalVariable(name: "inputSize", arg: 2, scope: !2357, file: !3, line: 1073, type: !205)
!2363 = !DILocation(line: 1073, column: 68, scope: !2357)
!2364 = !DILocation(line: 1073, column: 81, scope: !2357)
!2365 = !DILocation(line: 1074, column: 11, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 1074, column: 9)
!2367 = !DILocation(line: 1074, column: 17, scope: !2366)
!2368 = !DILocation(line: 1074, column: 23, scope: !2366)
!2369 = !DILocation(line: 1074, column: 49, scope: !2366)
!2370 = !DILocation(line: 1074, column: 52, scope: !2366)
!2371 = !DILocation(line: 1074, column: 58, scope: !2366)
!2372 = !DILocation(line: 1074, column: 64, scope: !2366)
!2373 = !DILocation(line: 1074, column: 9, scope: !2357)
!2374 = !DILocation(line: 1075, column: 16, scope: !2366)
!2375 = !DILocation(line: 1075, column: 22, scope: !2366)
!2376 = !DILocation(line: 1075, column: 9, scope: !2366)
!2377 = !DILocation(line: 1076, column: 9, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 1076, column: 9)
!2379 = !DILocation(line: 1076, column: 15, scope: !2378)
!2380 = !DILocation(line: 1076, column: 21, scope: !2378)
!2381 = !DILocation(line: 1076, column: 9, scope: !2357)
!2382 = !DILocation(line: 1077, column: 16, scope: !2378)
!2383 = !DILocation(line: 1077, column: 22, scope: !2378)
!2384 = !DILocation(line: 1077, column: 9, scope: !2378)
!2385 = !DILocation(line: 1078, column: 12, scope: !2357)
!2386 = !DILocation(line: 1078, column: 5, scope: !2357)
!2387 = !DILocation(line: 1079, column: 1, scope: !2357)
!2388 = distinct !DISubprogram(name: "ZSTD_decodeFrameHeader", scope: !3, file: !3, line: 647, type: !1642, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2389)
!2389 = !{!2390, !2391, !2392, !2393}
!2390 = !DILocalVariable(name: "dctx", arg: 1, scope: !2388, file: !3, line: 647, type: !130)
!2391 = !DILocalVariable(name: "src", arg: 2, scope: !2388, file: !3, line: 647, type: !199)
!2392 = !DILocalVariable(name: "headerSize", arg: 3, scope: !2388, file: !3, line: 647, type: !205)
!2393 = !DILocalVariable(name: "result", scope: !2388, file: !3, line: 649, type: !383)
!2394 = !DILocation(line: 647, column: 49, scope: !2388)
!2395 = !DILocation(line: 647, column: 67, scope: !2388)
!2396 = !DILocation(line: 647, column: 79, scope: !2388)
!2397 = !DILocation(line: 649, column: 5, scope: !2388)
!2398 = !DILocation(line: 649, column: 18, scope: !2388)
!2399 = !DILocation(line: 649, column: 58, scope: !2388)
!2400 = !DILocation(line: 649, column: 64, scope: !2388)
!2401 = !DILocation(line: 649, column: 74, scope: !2388)
!2402 = !DILocation(line: 649, column: 79, scope: !2388)
!2403 = !DILocation(line: 649, column: 91, scope: !2388)
!2404 = !DILocation(line: 649, column: 97, scope: !2388)
!2405 = !DILocation(line: 649, column: 27, scope: !2388)
!2406 = !DILocation(line: 650, column: 22, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 650, column: 9)
!2408 = !DILocation(line: 650, column: 9, scope: !2407)
!2409 = !DILocation(line: 650, column: 9, scope: !2388)
!2410 = !DILocation(line: 650, column: 38, scope: !2407)
!2411 = !DILocation(line: 650, column: 31, scope: !2407)
!2412 = !DILocation(line: 651, column: 5, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 651, column: 5)
!2414 = !DILocation(line: 651, column: 5, scope: !2388)
!2415 = !DILocation(line: 651, column: 5, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 651, column: 5)
!2417 = !DILocation(line: 654, column: 9, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 654, column: 9)
!2419 = !DILocation(line: 654, column: 15, scope: !2418)
!2420 = !DILocation(line: 654, column: 33, scope: !2418)
!2421 = !DILocation(line: 654, column: 63, scope: !2418)
!2422 = !DILocation(line: 654, column: 66, scope: !2418)
!2423 = !DILocation(line: 654, column: 72, scope: !2418)
!2424 = !DILocation(line: 654, column: 9, scope: !2388)
!2425 = !DILocation(line: 655, column: 36, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 654, column: 82)
!2427 = !DILocation(line: 655, column: 9, scope: !2426)
!2428 = !DILocation(line: 656, column: 5, scope: !2426)
!2429 = !DILocation(line: 662, column: 5, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 662, column: 5)
!2431 = !DILocation(line: 662, column: 5, scope: !2388)
!2432 = !DILocation(line: 662, column: 5, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 662, column: 5)
!2434 = !DILocation(line: 665, column: 31, scope: !2388)
!2435 = !DILocation(line: 665, column: 37, scope: !2388)
!2436 = !DILocation(line: 665, column: 45, scope: !2388)
!2437 = !DILocation(line: 665, column: 58, scope: !2388)
!2438 = !DILocation(line: 665, column: 62, scope: !2388)
!2439 = !DILocation(line: 665, column: 68, scope: !2388)
!2440 = !DILocation(line: 665, column: 61, scope: !2388)
!2441 = !DILocation(line: 0, scope: !2388)
!2442 = !DILocation(line: 665, column: 30, scope: !2388)
!2443 = !DILocation(line: 665, column: 5, scope: !2388)
!2444 = !DILocation(line: 665, column: 11, scope: !2388)
!2445 = !DILocation(line: 665, column: 28, scope: !2388)
!2446 = !DILocation(line: 666, column: 9, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 666, column: 9)
!2448 = !DILocation(line: 666, column: 15, scope: !2447)
!2449 = !DILocation(line: 666, column: 9, scope: !2388)
!2450 = !DILocation(line: 666, column: 46, scope: !2447)
!2451 = !DILocation(line: 666, column: 52, scope: !2447)
!2452 = !DILocation(line: 666, column: 33, scope: !2447)
!2453 = !DILocation(line: 667, column: 29, scope: !2388)
!2454 = !DILocation(line: 667, column: 5, scope: !2388)
!2455 = !DILocation(line: 667, column: 11, scope: !2388)
!2456 = !DILocation(line: 667, column: 26, scope: !2388)
!2457 = !DILocation(line: 668, column: 5, scope: !2388)
!2458 = !DILocation(line: 669, column: 1, scope: !2388)
!2459 = !DISubprogram(name: "ZSTD_getcBlockSize", scope: !12, file: !12, line: 424, type: !2460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!205, !199, !205, !2462}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!2463 = !DISubprogram(name: "ZSTD_decompressBlock_internal", scope: !103, file: !103, line: 48, type: !2464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!205, !130, !129, !205, !199, !205, !2466, !2467}
!2466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!2467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2468)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "streaming_operation", file: !103, line: 40, baseType: !102)
!2469 = distinct !DISubprogram(name: "ZSTD_copyRawBlock", scope: !3, file: !3, line: 792, type: !1916, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2470)
!2470 = !{!2471, !2472, !2473, !2474}
!2471 = !DILocalVariable(name: "dst", arg: 1, scope: !2469, file: !3, line: 792, type: !129)
!2472 = !DILocalVariable(name: "dstCapacity", arg: 2, scope: !2469, file: !3, line: 792, type: !205)
!2473 = !DILocalVariable(name: "src", arg: 3, scope: !2469, file: !3, line: 793, type: !199)
!2474 = !DILocalVariable(name: "srcSize", arg: 4, scope: !2469, file: !3, line: 793, type: !205)
!2475 = !DILocation(line: 792, column: 39, scope: !2469)
!2476 = !DILocation(line: 792, column: 51, scope: !2469)
!2477 = !DILocation(line: 793, column: 39, scope: !2469)
!2478 = !DILocation(line: 793, column: 51, scope: !2469)
!2479 = !DILocation(line: 796, column: 5, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 796, column: 5)
!2481 = !DILocation(line: 796, column: 5, scope: !2469)
!2482 = !DILocation(line: 796, column: 5, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 796, column: 5)
!2484 = !DILocation(line: 797, column: 9, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 797, column: 9)
!2486 = !DILocation(line: 797, column: 13, scope: !2485)
!2487 = !DILocation(line: 797, column: 9, scope: !2469)
!2488 = !DILocation(line: 798, column: 13, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 798, column: 13)
!2490 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 797, column: 22)
!2491 = !DILocation(line: 798, column: 21, scope: !2489)
!2492 = !DILocation(line: 798, column: 13, scope: !2490)
!2493 = !DILocation(line: 798, column: 27, scope: !2489)
!2494 = !DILocation(line: 799, column: 9, scope: !2490)
!2495 = !DILocation(line: 799, column: 9, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 799, column: 9)
!2497 = !DILocation(line: 800, column: 5, scope: !2490)
!2498 = !DILocation(line: 801, column: 5, scope: !2469)
!2499 = !DILocation(line: 802, column: 12, scope: !2469)
!2500 = !DILocation(line: 802, column: 5, scope: !2469)
!2501 = !DILocation(line: 803, column: 1, scope: !2469)
!2502 = distinct !DISubprogram(name: "ZSTD_setRleBlock", scope: !3, file: !3, line: 805, type: !2503, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!205, !129, !205, !151, !205}
!2505 = !{!2506, !2507, !2508, !2509}
!2506 = !DILocalVariable(name: "dst", arg: 1, scope: !2502, file: !3, line: 805, type: !129)
!2507 = !DILocalVariable(name: "dstCapacity", arg: 2, scope: !2502, file: !3, line: 805, type: !205)
!2508 = !DILocalVariable(name: "b", arg: 3, scope: !2502, file: !3, line: 806, type: !151)
!2509 = !DILocalVariable(name: "regenSize", arg: 4, scope: !2502, file: !3, line: 807, type: !205)
!2510 = !DILocation(line: 805, column: 38, scope: !2502)
!2511 = !DILocation(line: 805, column: 50, scope: !2502)
!2512 = !DILocation(line: 806, column: 37, scope: !2502)
!2513 = !DILocation(line: 807, column: 39, scope: !2502)
!2514 = !DILocation(line: 809, column: 5, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 809, column: 5)
!2516 = !DILocation(line: 809, column: 5, scope: !2502)
!2517 = !DILocation(line: 809, column: 5, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 809, column: 5)
!2519 = !DILocation(line: 810, column: 9, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 810, column: 9)
!2521 = !DILocation(line: 810, column: 13, scope: !2520)
!2522 = !DILocation(line: 810, column: 9, scope: !2502)
!2523 = !DILocation(line: 811, column: 13, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 811, column: 13)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 810, column: 22)
!2526 = !DILocation(line: 811, column: 23, scope: !2524)
!2527 = !DILocation(line: 811, column: 13, scope: !2525)
!2528 = !DILocation(line: 811, column: 29, scope: !2524)
!2529 = !DILocation(line: 812, column: 9, scope: !2525)
!2530 = !DILocation(line: 812, column: 9, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 812, column: 9)
!2532 = !DILocation(line: 813, column: 5, scope: !2525)
!2533 = !DILocation(line: 814, column: 5, scope: !2502)
!2534 = !DILocation(line: 815, column: 12, scope: !2502)
!2535 = !DILocation(line: 815, column: 5, scope: !2502)
!2536 = !DILocation(line: 816, column: 1, scope: !2502)
!2537 = !DISubprogram(name: "xxh64_update", scope: !237, file: !237, line: 224, type: !2538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!38, !2540, !199, !205}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!2541 = distinct !DISubprogram(name: "ZSTD_DCtx_trace_end", scope: !3, file: !3, line: 818, type: !2542, scopeLine: 819, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !432, !224, !224, !7}
!2544 = !{!2545, !2546, !2547, !2548}
!2545 = !DILocalVariable(name: "dctx", arg: 1, scope: !2541, file: !3, line: 818, type: !432)
!2546 = !DILocalVariable(name: "uncompressedSize", arg: 2, scope: !2541, file: !3, line: 818, type: !224)
!2547 = !DILocalVariable(name: "compressedSize", arg: 3, scope: !2541, file: !3, line: 818, type: !224)
!2548 = !DILocalVariable(name: "streaming", arg: 4, scope: !2541, file: !3, line: 818, type: !7)
!2549 = !DILocation(line: 818, column: 50, scope: !2541)
!2550 = !DILocation(line: 818, column: 60, scope: !2541)
!2551 = !DILocation(line: 818, column: 82, scope: !2541)
!2552 = !DILocation(line: 818, column: 107, scope: !2541)
!2553 = !DILocation(line: 820, column: 11, scope: !2541)
!2554 = !DILocation(line: 821, column: 11, scope: !2541)
!2555 = !DILocation(line: 822, column: 11, scope: !2541)
!2556 = !DILocation(line: 823, column: 11, scope: !2541)
!2557 = !DILocation(line: 824, column: 1, scope: !2541)
!2558 = !DISubprogram(name: "xxh64_digest", scope: !237, file: !237, line: 237, type: !2559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!225, !2561}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!2563 = distinct !DISubprogram(name: "ZSTD_loadDEntropy", scope: !3, file: !3, line: 1287, type: !2564, scopeLine: 1289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2568)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!205, !2566, !2567, !383}
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!2568 = !{!2569, !2570, !2571, !2572, !2573, !2574, !2576, !2577, !2578, !2582, !2583, !2584, !2585, !2588, !2589, !2590, !2591, !2594, !2595, !2596, !2597, !2599, !2600}
!2569 = !DILocalVariable(name: "entropy", arg: 1, scope: !2563, file: !3, line: 1287, type: !2566)
!2570 = !DILocalVariable(name: "dict", arg: 2, scope: !2563, file: !3, line: 1288, type: !2567)
!2571 = !DILocalVariable(name: "dictSize", arg: 3, scope: !2563, file: !3, line: 1288, type: !383)
!2572 = !DILocalVariable(name: "dictPtr", scope: !2563, file: !3, line: 1290, type: !256)
!2573 = !DILocalVariable(name: "dictEnd", scope: !2563, file: !3, line: 1291, type: !1451)
!2574 = !DILocalVariable(name: "workspace", scope: !2575, file: !3, line: 1300, type: !1706)
!2575 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1300, column: 5)
!2576 = !DILocalVariable(name: "workspaceSize", scope: !2575, file: !3, line: 1301, type: !383)
!2577 = !DILocalVariable(name: "hSize", scope: !2575, file: !3, line: 1308, type: !383)
!2578 = !DILocalVariable(name: "offcodeNCount", scope: !2579, file: !3, line: 1316, type: !2580)
!2579 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1316, column: 5)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2581, size: 512, elements: !393)
!2581 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2582 = !DILocalVariable(name: "offcodeMaxValue", scope: !2579, file: !3, line: 1317, type: !7)
!2583 = !DILocalVariable(name: "offcodeLog", scope: !2579, file: !3, line: 1317, type: !7)
!2584 = !DILocalVariable(name: "offcodeHeaderSize", scope: !2579, file: !3, line: 1318, type: !383)
!2585 = !DILocalVariable(name: "matchlengthNCount", scope: !2586, file: !3, line: 1331, type: !2587)
!2586 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1331, column: 5)
!2587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2581, size: 848, elements: !403)
!2588 = !DILocalVariable(name: "matchlengthMaxValue", scope: !2586, file: !3, line: 1332, type: !7)
!2589 = !DILocalVariable(name: "matchlengthLog", scope: !2586, file: !3, line: 1332, type: !7)
!2590 = !DILocalVariable(name: "matchlengthHeaderSize", scope: !2586, file: !3, line: 1333, type: !383)
!2591 = !DILocalVariable(name: "litlengthNCount", scope: !2592, file: !3, line: 1346, type: !2593)
!2592 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1346, column: 5)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2581, size: 576, elements: !411)
!2594 = !DILocalVariable(name: "litlengthMaxValue", scope: !2592, file: !3, line: 1347, type: !7)
!2595 = !DILocalVariable(name: "litlengthLog", scope: !2592, file: !3, line: 1347, type: !7)
!2596 = !DILocalVariable(name: "litlengthHeaderSize", scope: !2592, file: !3, line: 1348, type: !383)
!2597 = !DILocalVariable(name: "i", scope: !2598, file: !3, line: 1362, type: !38)
!2598 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1362, column: 5)
!2599 = !DILocalVariable(name: "dictContentSize", scope: !2598, file: !3, line: 1363, type: !383)
!2600 = !DILocalVariable(name: "rep", scope: !2601, file: !3, line: 1365, type: !392)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1364, column: 29)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 1364, column: 9)
!2603 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 1364, column: 9)
!2604 = !DILocation(line: 1287, column: 42, scope: !2563)
!2605 = !DILocation(line: 1288, column: 37, scope: !2563)
!2606 = !DILocation(line: 1288, column: 56, scope: !2563)
!2607 = !DILocation(line: 1290, column: 5, scope: !2563)
!2608 = !DILocation(line: 1290, column: 17, scope: !2563)
!2609 = !DILocation(line: 1290, column: 40, scope: !2563)
!2610 = !DILocation(line: 1291, column: 5, scope: !2563)
!2611 = !DILocation(line: 1291, column: 23, scope: !2563)
!2612 = !DILocation(line: 1291, column: 33, scope: !2563)
!2613 = !DILocation(line: 1291, column: 43, scope: !2563)
!2614 = !DILocation(line: 1291, column: 41, scope: !2563)
!2615 = !DILocation(line: 1293, column: 5, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1293, column: 5)
!2617 = !DILocation(line: 1293, column: 5, scope: !2563)
!2618 = !DILocation(line: 1293, column: 5, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1293, column: 5)
!2620 = !DILocation(line: 1295, column: 13, scope: !2563)
!2621 = !DILocation(line: 1300, column: 9, scope: !2575)
!2622 = !DILocation(line: 1300, column: 21, scope: !2575)
!2623 = !DILocation(line: 1300, column: 34, scope: !2575)
!2624 = !DILocation(line: 1300, column: 43, scope: !2575)
!2625 = !DILocation(line: 1301, column: 9, scope: !2575)
!2626 = !DILocation(line: 1301, column: 22, scope: !2575)
!2627 = !DILocation(line: 1308, column: 9, scope: !2575)
!2628 = !DILocation(line: 1308, column: 22, scope: !2575)
!2629 = !DILocation(line: 1308, column: 52, scope: !2575)
!2630 = !DILocation(line: 1308, column: 61, scope: !2575)
!2631 = !DILocation(line: 1309, column: 49, scope: !2575)
!2632 = !DILocation(line: 1309, column: 67, scope: !2575)
!2633 = !DILocation(line: 1309, column: 77, scope: !2575)
!2634 = !DILocation(line: 1309, column: 75, scope: !2575)
!2635 = !DILocation(line: 1310, column: 49, scope: !2575)
!2636 = !DILocation(line: 1308, column: 30, scope: !2575)
!2637 = !DILocation(line: 1312, column: 9, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 1312, column: 9)
!2639 = !DILocation(line: 1312, column: 9, scope: !2575)
!2640 = !DILocation(line: 1312, column: 9, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1312, column: 9)
!2642 = !DILocation(line: 1313, column: 20, scope: !2575)
!2643 = !DILocation(line: 1313, column: 17, scope: !2575)
!2644 = !DILocation(line: 1314, column: 5, scope: !2563)
!2645 = !DILocation(line: 1316, column: 9, scope: !2579)
!2646 = !DILocation(line: 1316, column: 15, scope: !2579)
!2647 = !DILocation(line: 1317, column: 9, scope: !2579)
!2648 = !DILocation(line: 1317, column: 18, scope: !2579)
!2649 = !DILocation(line: 1317, column: 44, scope: !2579)
!2650 = !DILocation(line: 1318, column: 9, scope: !2579)
!2651 = !DILocation(line: 1318, column: 22, scope: !2579)
!2652 = !DILocation(line: 1318, column: 57, scope: !2579)
!2653 = !DILocation(line: 1318, column: 103, scope: !2579)
!2654 = !DILocation(line: 1318, column: 121, scope: !2579)
!2655 = !DILocation(line: 1318, column: 129, scope: !2579)
!2656 = !DILocation(line: 1318, column: 128, scope: !2579)
!2657 = !DILocation(line: 1318, column: 42, scope: !2579)
!2658 = !DILocation(line: 1319, column: 9, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1319, column: 9)
!2660 = !DILocation(line: 1319, column: 9, scope: !2579)
!2661 = !DILocation(line: 1319, column: 9, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 1319, column: 9)
!2663 = !DILocation(line: 1320, column: 9, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1320, column: 9)
!2665 = !DILocation(line: 1320, column: 9, scope: !2579)
!2666 = !DILocation(line: 1320, column: 9, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 1320, column: 9)
!2668 = !DILocation(line: 1321, column: 9, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1321, column: 9)
!2670 = !DILocation(line: 1321, column: 9, scope: !2579)
!2671 = !DILocation(line: 1321, column: 9, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 1321, column: 9)
!2673 = !DILocation(line: 1322, column: 29, scope: !2579)
!2674 = !DILocation(line: 1322, column: 38, scope: !2579)
!2675 = !DILocation(line: 1323, column: 29, scope: !2579)
!2676 = !DILocation(line: 1323, column: 44, scope: !2579)
!2677 = !DILocation(line: 1325, column: 29, scope: !2579)
!2678 = !DILocation(line: 1326, column: 29, scope: !2579)
!2679 = !DILocation(line: 1326, column: 38, scope: !2579)
!2680 = !DILocation(line: 1322, column: 9, scope: !2579)
!2681 = !DILocation(line: 1328, column: 20, scope: !2579)
!2682 = !DILocation(line: 1328, column: 17, scope: !2579)
!2683 = !DILocation(line: 1329, column: 5, scope: !2563)
!2684 = !DILocation(line: 1331, column: 9, scope: !2586)
!2685 = !DILocation(line: 1331, column: 15, scope: !2586)
!2686 = !DILocation(line: 1332, column: 9, scope: !2586)
!2687 = !DILocation(line: 1332, column: 18, scope: !2586)
!2688 = !DILocation(line: 1332, column: 47, scope: !2586)
!2689 = !DILocation(line: 1333, column: 9, scope: !2586)
!2690 = !DILocation(line: 1333, column: 22, scope: !2586)
!2691 = !DILocation(line: 1333, column: 61, scope: !2586)
!2692 = !DILocation(line: 1333, column: 119, scope: !2586)
!2693 = !DILocation(line: 1333, column: 137, scope: !2586)
!2694 = !DILocation(line: 1333, column: 145, scope: !2586)
!2695 = !DILocation(line: 1333, column: 144, scope: !2586)
!2696 = !DILocation(line: 1333, column: 46, scope: !2586)
!2697 = !DILocation(line: 1334, column: 9, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1334, column: 9)
!2699 = !DILocation(line: 1334, column: 9, scope: !2586)
!2700 = !DILocation(line: 1334, column: 9, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1334, column: 9)
!2702 = !DILocation(line: 1335, column: 9, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1335, column: 9)
!2704 = !DILocation(line: 1335, column: 9, scope: !2586)
!2705 = !DILocation(line: 1335, column: 9, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 1335, column: 9)
!2707 = !DILocation(line: 1336, column: 9, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1336, column: 9)
!2709 = !DILocation(line: 1336, column: 9, scope: !2586)
!2710 = !DILocation(line: 1336, column: 9, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1336, column: 9)
!2712 = !DILocation(line: 1337, column: 29, scope: !2586)
!2713 = !DILocation(line: 1337, column: 38, scope: !2586)
!2714 = !DILocation(line: 1338, column: 29, scope: !2586)
!2715 = !DILocation(line: 1338, column: 48, scope: !2586)
!2716 = !DILocation(line: 1340, column: 29, scope: !2586)
!2717 = !DILocation(line: 1341, column: 29, scope: !2586)
!2718 = !DILocation(line: 1341, column: 38, scope: !2586)
!2719 = !DILocation(line: 1337, column: 9, scope: !2586)
!2720 = !DILocation(line: 1343, column: 20, scope: !2586)
!2721 = !DILocation(line: 1343, column: 17, scope: !2586)
!2722 = !DILocation(line: 1344, column: 5, scope: !2563)
!2723 = !DILocation(line: 1346, column: 9, scope: !2592)
!2724 = !DILocation(line: 1346, column: 15, scope: !2592)
!2725 = !DILocation(line: 1347, column: 9, scope: !2592)
!2726 = !DILocation(line: 1347, column: 18, scope: !2592)
!2727 = !DILocation(line: 1347, column: 45, scope: !2592)
!2728 = !DILocation(line: 1348, column: 9, scope: !2592)
!2729 = !DILocation(line: 1348, column: 22, scope: !2592)
!2730 = !DILocation(line: 1348, column: 59, scope: !2592)
!2731 = !DILocation(line: 1348, column: 111, scope: !2592)
!2732 = !DILocation(line: 1348, column: 129, scope: !2592)
!2733 = !DILocation(line: 1348, column: 137, scope: !2592)
!2734 = !DILocation(line: 1348, column: 136, scope: !2592)
!2735 = !DILocation(line: 1348, column: 44, scope: !2592)
!2736 = !DILocation(line: 1349, column: 9, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 1349, column: 9)
!2738 = !DILocation(line: 1349, column: 9, scope: !2592)
!2739 = !DILocation(line: 1349, column: 9, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 1349, column: 9)
!2741 = !DILocation(line: 1350, column: 9, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 1350, column: 9)
!2743 = !DILocation(line: 1350, column: 9, scope: !2592)
!2744 = !DILocation(line: 1350, column: 9, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 1350, column: 9)
!2746 = !DILocation(line: 1351, column: 9, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 1351, column: 9)
!2748 = !DILocation(line: 1351, column: 9, scope: !2592)
!2749 = !DILocation(line: 1351, column: 9, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1351, column: 9)
!2751 = !DILocation(line: 1352, column: 29, scope: !2592)
!2752 = !DILocation(line: 1352, column: 38, scope: !2592)
!2753 = !DILocation(line: 1353, column: 29, scope: !2592)
!2754 = !DILocation(line: 1353, column: 46, scope: !2592)
!2755 = !DILocation(line: 1355, column: 29, scope: !2592)
!2756 = !DILocation(line: 1356, column: 29, scope: !2592)
!2757 = !DILocation(line: 1356, column: 38, scope: !2592)
!2758 = !DILocation(line: 1352, column: 9, scope: !2592)
!2759 = !DILocation(line: 1358, column: 20, scope: !2592)
!2760 = !DILocation(line: 1358, column: 17, scope: !2592)
!2761 = !DILocation(line: 1359, column: 5, scope: !2563)
!2762 = !DILocation(line: 1361, column: 5, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1361, column: 5)
!2764 = !DILocation(line: 1361, column: 5, scope: !2563)
!2765 = !DILocation(line: 1361, column: 5, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1361, column: 5)
!2767 = !DILocation(line: 1362, column: 9, scope: !2598)
!2768 = !DILocation(line: 1362, column: 13, scope: !2598)
!2769 = !DILocation(line: 1363, column: 9, scope: !2598)
!2770 = !DILocation(line: 1363, column: 22, scope: !2598)
!2771 = !DILocation(line: 1363, column: 49, scope: !2598)
!2772 = !DILocation(line: 1363, column: 60, scope: !2598)
!2773 = !DILocation(line: 1363, column: 67, scope: !2598)
!2774 = !DILocation(line: 1363, column: 57, scope: !2598)
!2775 = !DILocation(line: 1364, column: 15, scope: !2603)
!2776 = !DILocation(line: 1364, column: 14, scope: !2603)
!2777 = !DILocation(line: 1364, column: 19, scope: !2602)
!2778 = !DILocation(line: 1364, column: 20, scope: !2602)
!2779 = !DILocation(line: 1364, column: 9, scope: !2603)
!2780 = !DILocation(line: 1365, column: 13, scope: !2601)
!2781 = !DILocation(line: 1365, column: 23, scope: !2601)
!2782 = !DILocation(line: 1365, column: 42, scope: !2601)
!2783 = !DILocation(line: 1365, column: 29, scope: !2601)
!2784 = !DILocation(line: 1365, column: 60, scope: !2601)
!2785 = !DILocation(line: 1366, column: 13, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 1366, column: 13)
!2787 = !DILocation(line: 1366, column: 13, scope: !2601)
!2788 = !DILocation(line: 1366, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 1366, column: 13)
!2790 = !DILocation(line: 1368, column: 31, scope: !2601)
!2791 = !DILocation(line: 1368, column: 13, scope: !2601)
!2792 = !DILocation(line: 1368, column: 22, scope: !2601)
!2793 = !DILocation(line: 1368, column: 26, scope: !2601)
!2794 = !DILocation(line: 1368, column: 29, scope: !2601)
!2795 = !DILocation(line: 1369, column: 5, scope: !2602)
!2796 = !DILocation(line: 1369, column: 5, scope: !2601)
!2797 = !DILocation(line: 1364, column: 25, scope: !2602)
!2798 = !DILocation(line: 1364, column: 9, scope: !2602)
!2799 = distinct !{!2799, !2779, !2800, !1341, !1342}
!2800 = !DILocation(line: 1369, column: 5, scope: !2603)
!2801 = !DILocation(line: 1369, column: 9, scope: !2563)
!2802 = !DILocation(line: 1371, column: 21, scope: !2563)
!2803 = !DILocation(line: 1371, column: 44, scope: !2563)
!2804 = !DILocation(line: 1371, column: 29, scope: !2563)
!2805 = !DILocation(line: 1371, column: 5, scope: !2563)
!2806 = !DILocation(line: 1372, column: 1, scope: !2563)
!2807 = !DISubprogram(name: "HUF_readDTableX2_wksp", scope: !168, file: !168, line: 285, type: !2808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!205, !2810, !199, !205, !129, !205}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!2811 = !DISubprogram(name: "FSE_readNCount", scope: !2812, file: !2812, line: 230, type: !2813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2812 = !DIFile(filename: "lib/zstd/decompress/../common/fse.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7594268659e4334b0d9568eded0c0606")
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!205, !2815, !1186, !1186, !199, !205}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2816 = !DISubprogram(name: "ZSTD_buildFSETable", scope: !103, file: !103, line: 61, type: !2817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !2819, !2820, !7, !2822, !2823, !7, !129, !205, !38}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2581)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!2824 = distinct !DISubprogram(name: "ZSTD_decompressBegin", scope: !3, file: !3, line: 1395, type: !595, scopeLine: 1396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2825)
!2825 = !{!2826}
!2826 = !DILocalVariable(name: "dctx", arg: 1, scope: !2824, file: !3, line: 1395, type: !130)
!2827 = !DILocation(line: 1395, column: 40, scope: !2824)
!2828 = !DILocation(line: 1398, column: 47, scope: !2824)
!2829 = !DILocation(line: 1398, column: 53, scope: !2824)
!2830 = !DILocation(line: 1398, column: 22, scope: !2824)
!2831 = !DILocation(line: 1398, column: 5, scope: !2824)
!2832 = !DILocation(line: 1398, column: 11, scope: !2824)
!2833 = !DILocation(line: 1398, column: 20, scope: !2824)
!2834 = !DILocation(line: 1399, column: 5, scope: !2824)
!2835 = !DILocation(line: 1399, column: 11, scope: !2824)
!2836 = !DILocation(line: 1399, column: 17, scope: !2824)
!2837 = !DILocation(line: 1400, column: 5, scope: !2824)
!2838 = !DILocation(line: 1400, column: 11, scope: !2824)
!2839 = !DILocation(line: 1400, column: 26, scope: !2824)
!2840 = !DILocation(line: 1401, column: 5, scope: !2824)
!2841 = !DILocation(line: 1401, column: 11, scope: !2824)
!2842 = !DILocation(line: 1401, column: 23, scope: !2824)
!2843 = !DILocation(line: 1402, column: 5, scope: !2824)
!2844 = !DILocation(line: 1402, column: 11, scope: !2824)
!2845 = !DILocation(line: 1402, column: 26, scope: !2824)
!2846 = !DILocation(line: 1403, column: 5, scope: !2824)
!2847 = !DILocation(line: 1403, column: 11, scope: !2824)
!2848 = !DILocation(line: 1403, column: 23, scope: !2824)
!2849 = !DILocation(line: 1404, column: 5, scope: !2824)
!2850 = !DILocation(line: 1404, column: 11, scope: !2824)
!2851 = !DILocation(line: 1404, column: 24, scope: !2824)
!2852 = !DILocation(line: 1405, column: 5, scope: !2824)
!2853 = !DILocation(line: 1405, column: 11, scope: !2824)
!2854 = !DILocation(line: 1405, column: 19, scope: !2824)
!2855 = !DILocation(line: 1406, column: 5, scope: !2824)
!2856 = !DILocation(line: 1406, column: 11, scope: !2824)
!2857 = !DILocation(line: 1406, column: 19, scope: !2824)
!2858 = !DILocation(line: 1406, column: 31, scope: !2824)
!2859 = !DILocation(line: 1407, column: 24, scope: !2824)
!2860 = !DILocation(line: 1407, column: 30, scope: !2824)
!2861 = !DILocation(line: 1407, column: 41, scope: !2824)
!2862 = !DILocation(line: 1407, column: 5, scope: !2824)
!2863 = !DILocation(line: 1407, column: 11, scope: !2824)
!2864 = !DILocation(line: 1407, column: 22, scope: !2824)
!2865 = !DILocation(line: 1408, column: 5, scope: !2824)
!2866 = !DILocation(line: 1408, column: 11, scope: !2824)
!2867 = !DILocation(line: 1408, column: 18, scope: !2824)
!2868 = !DILocation(line: 1409, column: 5, scope: !2824)
!2869 = !DILocation(line: 1409, column: 11, scope: !2824)
!2870 = !DILocation(line: 1409, column: 17, scope: !2824)
!2871 = !DILocation(line: 1411, column: 5, scope: !2824)
!2872 = !DILocation(line: 1412, column: 20, scope: !2824)
!2873 = !DILocation(line: 1412, column: 26, scope: !2824)
!2874 = !DILocation(line: 1412, column: 34, scope: !2824)
!2875 = !DILocation(line: 1412, column: 5, scope: !2824)
!2876 = !DILocation(line: 1412, column: 11, scope: !2824)
!2877 = !DILocation(line: 1412, column: 18, scope: !2824)
!2878 = !DILocation(line: 1413, column: 20, scope: !2824)
!2879 = !DILocation(line: 1413, column: 26, scope: !2824)
!2880 = !DILocation(line: 1413, column: 34, scope: !2824)
!2881 = !DILocation(line: 1413, column: 5, scope: !2824)
!2882 = !DILocation(line: 1413, column: 11, scope: !2824)
!2883 = !DILocation(line: 1413, column: 18, scope: !2824)
!2884 = !DILocation(line: 1414, column: 20, scope: !2824)
!2885 = !DILocation(line: 1414, column: 26, scope: !2824)
!2886 = !DILocation(line: 1414, column: 34, scope: !2824)
!2887 = !DILocation(line: 1414, column: 5, scope: !2824)
!2888 = !DILocation(line: 1414, column: 11, scope: !2824)
!2889 = !DILocation(line: 1414, column: 18, scope: !2824)
!2890 = !DILocation(line: 1415, column: 20, scope: !2824)
!2891 = !DILocation(line: 1415, column: 26, scope: !2824)
!2892 = !DILocation(line: 1415, column: 34, scope: !2824)
!2893 = !DILocation(line: 1415, column: 5, scope: !2824)
!2894 = !DILocation(line: 1415, column: 11, scope: !2824)
!2895 = !DILocation(line: 1415, column: 18, scope: !2824)
!2896 = !DILocation(line: 1416, column: 5, scope: !2824)
!2897 = distinct !DISubprogram(name: "ZSTD_decompressBegin_usingDict", scope: !3, file: !3, line: 1419, type: !1642, scopeLine: 1420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2898)
!2898 = !{!2899, !2900, !2901, !2902}
!2899 = !DILocalVariable(name: "dctx", arg: 1, scope: !2897, file: !3, line: 1419, type: !130)
!2900 = !DILocalVariable(name: "dict", arg: 2, scope: !2897, file: !3, line: 1419, type: !199)
!2901 = !DILocalVariable(name: "dictSize", arg: 3, scope: !2897, file: !3, line: 1419, type: !205)
!2902 = !DILocalVariable(name: "err_code", scope: !2903, file: !3, line: 1421, type: !383)
!2903 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 1421, column: 5)
!2904 = !DILocation(line: 1419, column: 50, scope: !2897)
!2905 = !DILocation(line: 1419, column: 68, scope: !2897)
!2906 = !DILocation(line: 1419, column: 81, scope: !2897)
!2907 = !DILocation(line: 1421, column: 5, scope: !2897)
!2908 = !DILocation(line: 1421, column: 5, scope: !2903)
!2909 = !DILocation(line: 1421, column: 5, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 1421, column: 5)
!2911 = !DILocation(line: 1421, column: 5, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 1421, column: 5)
!2913 = !DILocation(line: 1422, column: 9, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 1422, column: 9)
!2915 = !DILocation(line: 1422, column: 14, scope: !2914)
!2916 = !DILocation(line: 1422, column: 17, scope: !2914)
!2917 = !DILocation(line: 1422, column: 9, scope: !2897)
!2918 = !DILocation(line: 1423, column: 9, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 1423, column: 9)
!2920 = !DILocation(line: 1423, column: 9, scope: !2914)
!2921 = !DILocation(line: 1423, column: 9, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 1423, column: 9)
!2923 = !DILocation(line: 1426, column: 5, scope: !2897)
!2924 = !DILocation(line: 1427, column: 1, scope: !2897)
!2925 = distinct !DISubprogram(name: "ZSTD_decompress_insertDictionary", scope: !3, file: !3, line: 1374, type: !1642, scopeLine: 1375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2926)
!2926 = !{!2927, !2928, !2929, !2930, !2932}
!2927 = !DILocalVariable(name: "dctx", arg: 1, scope: !2925, file: !3, line: 1374, type: !130)
!2928 = !DILocalVariable(name: "dict", arg: 2, scope: !2925, file: !3, line: 1374, type: !199)
!2929 = !DILocalVariable(name: "dictSize", arg: 3, scope: !2925, file: !3, line: 1374, type: !205)
!2930 = !DILocalVariable(name: "magic", scope: !2931, file: !3, line: 1377, type: !392)
!2931 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1377, column: 5)
!2932 = !DILocalVariable(name: "eSize", scope: !2933, file: !3, line: 1384, type: !383)
!2933 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1384, column: 5)
!2934 = !DILocation(line: 1374, column: 59, scope: !2925)
!2935 = !DILocation(line: 1374, column: 77, scope: !2925)
!2936 = !DILocation(line: 1374, column: 90, scope: !2925)
!2937 = !DILocation(line: 1376, column: 9, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1376, column: 9)
!2939 = !DILocation(line: 1376, column: 18, scope: !2938)
!2940 = !DILocation(line: 1376, column: 9, scope: !2925)
!2941 = !DILocation(line: 1376, column: 50, scope: !2938)
!2942 = !DILocation(line: 1376, column: 56, scope: !2938)
!2943 = !DILocation(line: 1376, column: 62, scope: !2938)
!2944 = !DILocation(line: 1376, column: 30, scope: !2938)
!2945 = !DILocation(line: 1376, column: 23, scope: !2938)
!2946 = !DILocation(line: 1377, column: 9, scope: !2931)
!2947 = !DILocation(line: 1377, column: 19, scope: !2931)
!2948 = !DILocation(line: 1377, column: 40, scope: !2931)
!2949 = !DILocation(line: 1377, column: 27, scope: !2931)
!2950 = !DILocation(line: 1378, column: 13, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 1378, column: 13)
!2952 = !DILocation(line: 1378, column: 19, scope: !2951)
!2953 = !DILocation(line: 1378, column: 13, scope: !2931)
!2954 = !DILocation(line: 1379, column: 40, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 1378, column: 45)
!2956 = !DILocation(line: 1379, column: 46, scope: !2955)
!2957 = !DILocation(line: 1379, column: 52, scope: !2955)
!2958 = !DILocation(line: 1379, column: 20, scope: !2955)
!2959 = !DILocation(line: 1379, column: 13, scope: !2955)
!2960 = !DILocation(line: 1380, column: 9, scope: !2925)
!2961 = !DILocation(line: 1381, column: 46, scope: !2925)
!2962 = !DILocation(line: 1381, column: 51, scope: !2925)
!2963 = !DILocation(line: 1381, column: 20, scope: !2925)
!2964 = !DILocation(line: 1381, column: 5, scope: !2925)
!2965 = !DILocation(line: 1381, column: 11, scope: !2925)
!2966 = !DILocation(line: 1381, column: 18, scope: !2925)
!2967 = !DILocation(line: 1384, column: 9, scope: !2933)
!2968 = !DILocation(line: 1384, column: 22, scope: !2933)
!2969 = !DILocation(line: 1384, column: 49, scope: !2933)
!2970 = !DILocation(line: 1384, column: 55, scope: !2933)
!2971 = !DILocation(line: 1384, column: 64, scope: !2933)
!2972 = !DILocation(line: 1384, column: 70, scope: !2933)
!2973 = !DILocation(line: 1384, column: 30, scope: !2933)
!2974 = !DILocation(line: 1385, column: 9, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 1385, column: 9)
!2976 = !DILocation(line: 1385, column: 9, scope: !2933)
!2977 = !DILocation(line: 1385, column: 9, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 1385, column: 9)
!2979 = !DILocation(line: 1386, column: 29, scope: !2933)
!2980 = !DILocation(line: 1386, column: 36, scope: !2933)
!2981 = !DILocation(line: 1386, column: 34, scope: !2933)
!2982 = !DILocation(line: 1386, column: 14, scope: !2933)
!2983 = !DILocation(line: 1387, column: 21, scope: !2933)
!2984 = !DILocation(line: 1387, column: 18, scope: !2933)
!2985 = !DILocation(line: 1388, column: 5, scope: !2925)
!2986 = !DILocation(line: 1389, column: 24, scope: !2925)
!2987 = !DILocation(line: 1389, column: 30, scope: !2925)
!2988 = !DILocation(line: 1389, column: 41, scope: !2925)
!2989 = !DILocation(line: 1389, column: 5, scope: !2925)
!2990 = !DILocation(line: 1389, column: 11, scope: !2925)
!2991 = !DILocation(line: 1389, column: 22, scope: !2925)
!2992 = !DILocation(line: 1392, column: 32, scope: !2925)
!2993 = !DILocation(line: 1392, column: 38, scope: !2925)
!2994 = !DILocation(line: 1392, column: 44, scope: !2925)
!2995 = !DILocation(line: 1392, column: 12, scope: !2925)
!2996 = !DILocation(line: 1392, column: 5, scope: !2925)
!2997 = !DILocation(line: 1393, column: 1, scope: !2925)
!2998 = distinct !DISubprogram(name: "ZSTD_decompressBegin_usingDDict", scope: !3, file: !3, line: 1432, type: !2999, scopeLine: 1433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!205, !130, !282}
!3001 = !{!3002, !3003, !3004, !3008, !3009, !3010}
!3002 = !DILocalVariable(name: "dctx", arg: 1, scope: !2998, file: !3, line: 1432, type: !130)
!3003 = !DILocalVariable(name: "ddict", arg: 2, scope: !2998, file: !3, line: 1432, type: !282)
!3004 = !DILocalVariable(name: "dictStart", scope: !3005, file: !3, line: 1437, type: !3007)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 1436, column: 16)
!3006 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 1436, column: 9)
!3007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!3008 = !DILocalVariable(name: "dictSize", scope: !3005, file: !3, line: 1438, type: !383)
!3009 = !DILocalVariable(name: "dictEnd", scope: !3005, file: !3, line: 1439, type: !2567)
!3010 = !DILocalVariable(name: "err_code", scope: !3011, file: !3, line: 1444, type: !383)
!3011 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 1444, column: 5)
!3012 = !DILocation(line: 1432, column: 51, scope: !2998)
!3013 = !DILocation(line: 1432, column: 75, scope: !2998)
!3014 = !DILocation(line: 1436, column: 9, scope: !3006)
!3015 = !DILocation(line: 1436, column: 9, scope: !2998)
!3016 = !DILocation(line: 1437, column: 9, scope: !3005)
!3017 = !DILocation(line: 1437, column: 27, scope: !3005)
!3018 = !DILocation(line: 1437, column: 75, scope: !3005)
!3019 = !DILocation(line: 1437, column: 52, scope: !3005)
!3020 = !DILocation(line: 1438, column: 9, scope: !3005)
!3021 = !DILocation(line: 1438, column: 22, scope: !3005)
!3022 = !DILocation(line: 1438, column: 53, scope: !3005)
!3023 = !DILocation(line: 1438, column: 33, scope: !3005)
!3024 = !DILocation(line: 1439, column: 9, scope: !3005)
!3025 = !DILocation(line: 1439, column: 27, scope: !3005)
!3026 = !DILocation(line: 1439, column: 37, scope: !3005)
!3027 = !DILocation(line: 1439, column: 49, scope: !3005)
!3028 = !DILocation(line: 1439, column: 47, scope: !3005)
!3029 = !DILocation(line: 1440, column: 30, scope: !3005)
!3030 = !DILocation(line: 1440, column: 36, scope: !3005)
!3031 = !DILocation(line: 1440, column: 47, scope: !3005)
!3032 = !DILocation(line: 1440, column: 44, scope: !3005)
!3033 = !DILocation(line: 1440, column: 9, scope: !3005)
!3034 = !DILocation(line: 1440, column: 15, scope: !3005)
!3035 = !DILocation(line: 1440, column: 27, scope: !3005)
!3036 = !DILocation(line: 1443, column: 5, scope: !3006)
!3037 = !DILocation(line: 1443, column: 5, scope: !3005)
!3038 = !DILocation(line: 1444, column: 5, scope: !2998)
!3039 = !DILocation(line: 1444, column: 5, scope: !3011)
!3040 = !DILocation(line: 1444, column: 5, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 1444, column: 5)
!3042 = !DILocation(line: 1444, column: 5, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 1444, column: 5)
!3044 = !DILocation(line: 1445, column: 9, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 1445, column: 9)
!3046 = !DILocation(line: 1445, column: 9, scope: !2998)
!3047 = !DILocation(line: 1446, column: 34, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1445, column: 16)
!3049 = !DILocation(line: 1446, column: 40, scope: !3048)
!3050 = !DILocation(line: 1446, column: 9, scope: !3048)
!3051 = !DILocation(line: 1447, column: 5, scope: !3048)
!3052 = !DILocation(line: 1448, column: 5, scope: !2998)
!3053 = !DILocation(line: 1449, column: 1, scope: !2998)
!3054 = !DISubprogram(name: "ZSTD_DDict_dictContent", scope: !3055, file: !3055, line: 37, type: !3056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3055 = !DIFile(filename: "lib/zstd/decompress/zstd_ddict.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "25ac7c17be72ddc6c38bfa75c324b009")
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!199, !282}
!3058 = !DISubprogram(name: "ZSTD_DDict_dictSize", scope: !3055, file: !3055, line: 38, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3059 = !DISubprogram(name: "ZSTD_copyDDictParameters", scope: !3055, file: !3055, line: 40, type: !3060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{null, !130, !282}
!3062 = distinct !DISubprogram(name: "ZSTD_getDictID_fromDict", scope: !3, file: !3, line: 1455, type: !706, scopeLine: 1456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3063)
!3063 = !{!3064, !3065}
!3064 = !DILocalVariable(name: "dict", arg: 1, scope: !3062, file: !3, line: 1455, type: !199)
!3065 = !DILocalVariable(name: "dictSize", arg: 2, scope: !3062, file: !3, line: 1455, type: !205)
!3066 = !DILocation(line: 1455, column: 46, scope: !3062)
!3067 = !DILocation(line: 1455, column: 59, scope: !3062)
!3068 = !DILocation(line: 1457, column: 9, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 1457, column: 9)
!3070 = !DILocation(line: 1457, column: 18, scope: !3069)
!3071 = !DILocation(line: 1457, column: 9, scope: !3062)
!3072 = !DILocation(line: 1457, column: 23, scope: !3069)
!3073 = !DILocation(line: 1458, column: 22, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 1458, column: 9)
!3075 = !DILocation(line: 1458, column: 9, scope: !3074)
!3076 = !DILocation(line: 1458, column: 28, scope: !3074)
!3077 = !DILocation(line: 1458, column: 9, scope: !3062)
!3078 = !DILocation(line: 1458, column: 54, scope: !3074)
!3079 = !DILocation(line: 1459, column: 38, scope: !3062)
!3080 = !DILocation(line: 1459, column: 43, scope: !3062)
!3081 = !DILocation(line: 1459, column: 12, scope: !3062)
!3082 = !DILocation(line: 1459, column: 5, scope: !3062)
!3083 = !DILocation(line: 1460, column: 1, scope: !3062)
!3084 = distinct !DISubprogram(name: "ZSTD_getDictID_fromFrame", scope: !3, file: !3, line: 1475, type: !706, scopeLine: 1476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3085)
!3085 = !{!3086, !3087, !3088, !3089}
!3086 = !DILocalVariable(name: "src", arg: 1, scope: !3084, file: !3, line: 1475, type: !199)
!3087 = !DILocalVariable(name: "srcSize", arg: 2, scope: !3084, file: !3, line: 1475, type: !205)
!3088 = !DILocalVariable(name: "zfp", scope: !3084, file: !3, line: 1477, type: !211)
!3089 = !DILocalVariable(name: "hError", scope: !3084, file: !3, line: 1478, type: !383)
!3090 = !DILocation(line: 1475, column: 47, scope: !3084)
!3091 = !DILocation(line: 1475, column: 59, scope: !3084)
!3092 = !DILocation(line: 1477, column: 5, scope: !3084)
!3093 = !DILocation(line: 1477, column: 22, scope: !3084)
!3094 = !DILocation(line: 1478, column: 5, scope: !3084)
!3095 = !DILocation(line: 1478, column: 18, scope: !3084)
!3096 = !DILocation(line: 1478, column: 53, scope: !3084)
!3097 = !DILocation(line: 1478, column: 58, scope: !3084)
!3098 = !DILocation(line: 1478, column: 27, scope: !3084)
!3099 = !DILocation(line: 1479, column: 22, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 1479, column: 9)
!3101 = !DILocation(line: 1479, column: 9, scope: !3100)
!3102 = !DILocation(line: 1479, column: 9, scope: !3084)
!3103 = !DILocation(line: 1479, column: 31, scope: !3100)
!3104 = !DILocation(line: 1480, column: 16, scope: !3084)
!3105 = !DILocation(line: 1480, column: 5, scope: !3084)
!3106 = !DILocation(line: 1481, column: 1, scope: !3084)
!3107 = distinct !DISubprogram(name: "ZSTD_createDStream", scope: !3, file: !3, line: 1503, type: !3108, scopeLine: 1504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!3110}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DStream", file: !6, line: 783, baseType: !131)
!3112 = !DILocation(line: 1506, column: 12, scope: !3107)
!3113 = !DILocation(line: 1506, column: 5, scope: !3107)
!3114 = distinct !DISubprogram(name: "ZSTD_initStaticDStream", scope: !3, file: !3, line: 1509, type: !3115, scopeLine: 1510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!3110, !129, !205}
!3117 = !{!3118, !3119}
!3118 = !DILocalVariable(name: "workspace", arg: 1, scope: !3114, file: !3, line: 1509, type: !129)
!3119 = !DILocalVariable(name: "workspaceSize", arg: 2, scope: !3114, file: !3, line: 1509, type: !205)
!3120 = !DILocation(line: 1509, column: 44, scope: !3114)
!3121 = !DILocation(line: 1509, column: 62, scope: !3114)
!3122 = !DILocation(line: 1511, column: 32, scope: !3114)
!3123 = !DILocation(line: 1511, column: 43, scope: !3114)
!3124 = !DILocation(line: 1511, column: 12, scope: !3114)
!3125 = !DILocation(line: 1511, column: 5, scope: !3114)
!3126 = distinct !DISubprogram(name: "ZSTD_createDStream_advanced", scope: !3, file: !3, line: 1514, type: !3127, scopeLine: 1515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!3110, !259}
!3129 = !{!3130}
!3130 = !DILocalVariable(name: "customMem", arg: 1, scope: !3126, file: !3, line: 1514, type: !259)
!3131 = !DILocation(line: 1514, column: 58, scope: !3126)
!3132 = !DILocation(line: 1516, column: 12, scope: !3126)
!3133 = !DILocation(line: 1516, column: 5, scope: !3126)
!3134 = distinct !DISubprogram(name: "ZSTD_freeDStream", scope: !3, file: !3, line: 1519, type: !3135, scopeLine: 1520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!205, !3110}
!3137 = !{!3138}
!3138 = !DILocalVariable(name: "zds", arg: 1, scope: !3134, file: !3, line: 1519, type: !3110)
!3139 = !DILocation(line: 1519, column: 39, scope: !3134)
!3140 = !DILocation(line: 1521, column: 26, scope: !3134)
!3141 = !DILocation(line: 1521, column: 12, scope: !3134)
!3142 = !DILocation(line: 1521, column: 5, scope: !3134)
!3143 = distinct !DISubprogram(name: "ZSTD_DStreamInSize", scope: !3, file: !3, line: 1527, type: !458, scopeLine: 1527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3144 = !DILocation(line: 1527, column: 36, scope: !3143)
!3145 = distinct !DISubprogram(name: "ZSTD_DStreamOutSize", scope: !3, file: !3, line: 1528, type: !458, scopeLine: 1528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3146 = !DILocation(line: 1528, column: 36, scope: !3145)
!3147 = distinct !DISubprogram(name: "ZSTD_DCtx_loadDictionary_advanced", scope: !3, file: !3, line: 1530, type: !3148, scopeLine: 1534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3152)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!205, !130, !199, !205, !3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dictLoadMethod_e", file: !6, line: 1226, baseType: !107)
!3151 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dictContentType_e", file: !6, line: 1221, baseType: !111)
!3152 = !{!3153, !3154, !3155, !3156, !3157}
!3153 = !DILocalVariable(name: "dctx", arg: 1, scope: !3147, file: !3, line: 1530, type: !130)
!3154 = !DILocalVariable(name: "dict", arg: 2, scope: !3147, file: !3, line: 1531, type: !199)
!3155 = !DILocalVariable(name: "dictSize", arg: 3, scope: !3147, file: !3, line: 1531, type: !205)
!3156 = !DILocalVariable(name: "dictLoadMethod", arg: 4, scope: !3147, file: !3, line: 1532, type: !3150)
!3157 = !DILocalVariable(name: "dictContentType", arg: 5, scope: !3147, file: !3, line: 1533, type: !3151)
!3158 = !DILocation(line: 1530, column: 53, scope: !3147)
!3159 = !DILocation(line: 1531, column: 48, scope: !3147)
!3160 = !DILocation(line: 1531, column: 61, scope: !3147)
!3161 = !DILocation(line: 1532, column: 64, scope: !3147)
!3162 = !DILocation(line: 1533, column: 65, scope: !3147)
!3163 = !DILocation(line: 1535, column: 5, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 1535, column: 5)
!3165 = !DILocation(line: 1535, column: 5, scope: !3147)
!3166 = !DILocation(line: 1535, column: 5, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 1535, column: 5)
!3168 = !DILocation(line: 1536, column: 20, scope: !3147)
!3169 = !DILocation(line: 1536, column: 5, scope: !3147)
!3170 = !DILocation(line: 1537, column: 9, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 1537, column: 9)
!3172 = !DILocation(line: 1537, column: 14, scope: !3171)
!3173 = !DILocation(line: 1537, column: 17, scope: !3171)
!3174 = !DILocation(line: 1537, column: 26, scope: !3171)
!3175 = !DILocation(line: 1537, column: 9, scope: !3147)
!3176 = !DILocation(line: 1538, column: 54, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 1537, column: 32)
!3178 = !DILocation(line: 1538, column: 60, scope: !3177)
!3179 = !DILocation(line: 1538, column: 70, scope: !3177)
!3180 = !DILocation(line: 1538, column: 86, scope: !3177)
!3181 = !DILocation(line: 1538, column: 103, scope: !3177)
!3182 = !DILocation(line: 1538, column: 109, scope: !3177)
!3183 = !DILocation(line: 1538, column: 28, scope: !3177)
!3184 = !DILocation(line: 1538, column: 9, scope: !3177)
!3185 = !DILocation(line: 1538, column: 15, scope: !3177)
!3186 = !DILocation(line: 1538, column: 26, scope: !3177)
!3187 = !DILocation(line: 1539, column: 9, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 1539, column: 9)
!3189 = !DILocation(line: 1539, column: 9, scope: !3177)
!3190 = !DILocation(line: 1539, column: 9, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 1539, column: 9)
!3192 = !DILocation(line: 1540, column: 23, scope: !3177)
!3193 = !DILocation(line: 1540, column: 29, scope: !3177)
!3194 = !DILocation(line: 1540, column: 9, scope: !3177)
!3195 = !DILocation(line: 1540, column: 15, scope: !3177)
!3196 = !DILocation(line: 1540, column: 21, scope: !3177)
!3197 = !DILocation(line: 1541, column: 9, scope: !3177)
!3198 = !DILocation(line: 1541, column: 15, scope: !3177)
!3199 = !DILocation(line: 1541, column: 24, scope: !3177)
!3200 = !DILocation(line: 1542, column: 5, scope: !3177)
!3201 = !DILocation(line: 1543, column: 5, scope: !3147)
!3202 = !DILocation(line: 1544, column: 1, scope: !3147)
!3203 = !DISubprogram(name: "ZSTD_createDDict_advanced", scope: !6, file: !6, line: 1610, type: !3204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!278, !199, !205, !3150, !3151, !259}
!3206 = distinct !DISubprogram(name: "ZSTD_DCtx_loadDictionary_byReference", scope: !3, file: !3, line: 1546, type: !1642, scopeLine: 1547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3207)
!3207 = !{!3208, !3209, !3210}
!3208 = !DILocalVariable(name: "dctx", arg: 1, scope: !3206, file: !3, line: 1546, type: !130)
!3209 = !DILocalVariable(name: "dict", arg: 2, scope: !3206, file: !3, line: 1546, type: !199)
!3210 = !DILocalVariable(name: "dictSize", arg: 3, scope: !3206, file: !3, line: 1546, type: !205)
!3211 = !DILocation(line: 1546, column: 56, scope: !3206)
!3212 = !DILocation(line: 1546, column: 74, scope: !3206)
!3213 = !DILocation(line: 1546, column: 87, scope: !3206)
!3214 = !DILocation(line: 1548, column: 46, scope: !3206)
!3215 = !DILocation(line: 1548, column: 52, scope: !3206)
!3216 = !DILocation(line: 1548, column: 58, scope: !3206)
!3217 = !DILocation(line: 1548, column: 12, scope: !3206)
!3218 = !DILocation(line: 1548, column: 5, scope: !3206)
!3219 = distinct !DISubprogram(name: "ZSTD_DCtx_loadDictionary", scope: !3, file: !3, line: 1551, type: !1642, scopeLine: 1552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3220)
!3220 = !{!3221, !3222, !3223}
!3221 = !DILocalVariable(name: "dctx", arg: 1, scope: !3219, file: !3, line: 1551, type: !130)
!3222 = !DILocalVariable(name: "dict", arg: 2, scope: !3219, file: !3, line: 1551, type: !199)
!3223 = !DILocalVariable(name: "dictSize", arg: 3, scope: !3219, file: !3, line: 1551, type: !205)
!3224 = !DILocation(line: 1551, column: 44, scope: !3219)
!3225 = !DILocation(line: 1551, column: 62, scope: !3219)
!3226 = !DILocation(line: 1551, column: 75, scope: !3219)
!3227 = !DILocation(line: 1553, column: 46, scope: !3219)
!3228 = !DILocation(line: 1553, column: 52, scope: !3219)
!3229 = !DILocation(line: 1553, column: 58, scope: !3219)
!3230 = !DILocation(line: 1553, column: 12, scope: !3219)
!3231 = !DILocation(line: 1553, column: 5, scope: !3219)
!3232 = distinct !DISubprogram(name: "ZSTD_DCtx_refPrefix_advanced", scope: !3, file: !3, line: 1556, type: !3233, scopeLine: 1557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!205, !130, !199, !205, !3151}
!3235 = !{!3236, !3237, !3238, !3239, !3240}
!3236 = !DILocalVariable(name: "dctx", arg: 1, scope: !3232, file: !3, line: 1556, type: !130)
!3237 = !DILocalVariable(name: "prefix", arg: 2, scope: !3232, file: !3, line: 1556, type: !199)
!3238 = !DILocalVariable(name: "prefixSize", arg: 3, scope: !3232, file: !3, line: 1556, type: !205)
!3239 = !DILocalVariable(name: "dictContentType", arg: 4, scope: !3232, file: !3, line: 1556, type: !3151)
!3240 = !DILocalVariable(name: "err_code", scope: !3241, file: !3, line: 1558, type: !383)
!3241 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 1558, column: 5)
!3242 = !DILocation(line: 1556, column: 48, scope: !3232)
!3243 = !DILocation(line: 1556, column: 66, scope: !3232)
!3244 = !DILocation(line: 1556, column: 81, scope: !3232)
!3245 = !DILocation(line: 1556, column: 116, scope: !3232)
!3246 = !DILocation(line: 1558, column: 5, scope: !3232)
!3247 = !DILocation(line: 1558, column: 5, scope: !3241)
!3248 = !DILocation(line: 1558, column: 5, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 1558, column: 5)
!3250 = !DILocation(line: 1558, column: 5, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1558, column: 5)
!3252 = !DILocation(line: 1559, column: 5, scope: !3232)
!3253 = !DILocation(line: 1559, column: 11, scope: !3232)
!3254 = !DILocation(line: 1559, column: 20, scope: !3232)
!3255 = !DILocation(line: 1560, column: 5, scope: !3232)
!3256 = !DILocation(line: 1561, column: 1, scope: !3232)
!3257 = distinct !DISubprogram(name: "ZSTD_DCtx_refPrefix", scope: !3, file: !3, line: 1563, type: !1642, scopeLine: 1564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3258)
!3258 = !{!3259, !3260, !3261}
!3259 = !DILocalVariable(name: "dctx", arg: 1, scope: !3257, file: !3, line: 1563, type: !130)
!3260 = !DILocalVariable(name: "prefix", arg: 2, scope: !3257, file: !3, line: 1563, type: !199)
!3261 = !DILocalVariable(name: "prefixSize", arg: 3, scope: !3257, file: !3, line: 1563, type: !205)
!3262 = !DILocation(line: 1563, column: 39, scope: !3257)
!3263 = !DILocation(line: 1563, column: 57, scope: !3257)
!3264 = !DILocation(line: 1563, column: 72, scope: !3257)
!3265 = !DILocation(line: 1565, column: 41, scope: !3257)
!3266 = !DILocation(line: 1565, column: 47, scope: !3257)
!3267 = !DILocation(line: 1565, column: 55, scope: !3257)
!3268 = !DILocation(line: 1565, column: 12, scope: !3257)
!3269 = !DILocation(line: 1565, column: 5, scope: !3257)
!3270 = distinct !DISubprogram(name: "ZSTD_initDStream_usingDict", scope: !3, file: !3, line: 1572, type: !3271, scopeLine: 1573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3273)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!205, !3110, !199, !205}
!3273 = !{!3274, !3275, !3276, !3277, !3279}
!3274 = !DILocalVariable(name: "zds", arg: 1, scope: !3270, file: !3, line: 1572, type: !3110)
!3275 = !DILocalVariable(name: "dict", arg: 2, scope: !3270, file: !3, line: 1572, type: !199)
!3276 = !DILocalVariable(name: "dictSize", arg: 3, scope: !3270, file: !3, line: 1572, type: !205)
!3277 = !DILocalVariable(name: "err_code", scope: !3278, file: !3, line: 1575, type: !383)
!3278 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 1575, column: 5)
!3279 = !DILocalVariable(name: "err_code", scope: !3280, file: !3, line: 1576, type: !383)
!3280 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 1576, column: 5)
!3281 = !DILocation(line: 1572, column: 49, scope: !3270)
!3282 = !DILocation(line: 1572, column: 66, scope: !3270)
!3283 = !DILocation(line: 1572, column: 79, scope: !3270)
!3284 = !DILocation(line: 1575, column: 5, scope: !3270)
!3285 = !DILocation(line: 1575, column: 5, scope: !3278)
!3286 = !DILocation(line: 1575, column: 5, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 1575, column: 5)
!3288 = !DILocation(line: 1575, column: 5, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 1575, column: 5)
!3290 = !DILocation(line: 1576, column: 5, scope: !3270)
!3291 = !DILocation(line: 1576, column: 5, scope: !3280)
!3292 = !DILocation(line: 1576, column: 5, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 1576, column: 5)
!3294 = !DILocation(line: 1576, column: 5, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 1576, column: 5)
!3296 = !DILocation(line: 1577, column: 37, scope: !3270)
!3297 = !DILocation(line: 1577, column: 42, scope: !3270)
!3298 = !DILocation(line: 1577, column: 12, scope: !3270)
!3299 = !DILocation(line: 1577, column: 5, scope: !3270)
!3300 = !DILocation(line: 1578, column: 1, scope: !3270)
!3301 = distinct !DISubprogram(name: "ZSTD_DCtx_reset", scope: !3, file: !3, line: 1751, type: !3302, scopeLine: 1752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3305)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!205, !130, !3304}
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_ResetDirective", file: !6, line: 485, baseType: !116)
!3305 = !{!3306, !3307}
!3306 = !DILocalVariable(name: "dctx", arg: 1, scope: !3301, file: !3, line: 1751, type: !130)
!3307 = !DILocalVariable(name: "reset", arg: 2, scope: !3301, file: !3, line: 1751, type: !3304)
!3308 = !DILocation(line: 1751, column: 35, scope: !3301)
!3309 = !DILocation(line: 1751, column: 61, scope: !3301)
!3310 = !DILocation(line: 1753, column: 11, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 1753, column: 10)
!3312 = !DILocation(line: 1753, column: 17, scope: !3311)
!3313 = !DILocation(line: 1754, column: 7, scope: !3311)
!3314 = !DILocation(line: 1754, column: 11, scope: !3311)
!3315 = !DILocation(line: 1754, column: 17, scope: !3311)
!3316 = !DILocation(line: 1753, column: 10, scope: !3301)
!3317 = !DILocation(line: 1755, column: 9, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 1754, column: 57)
!3319 = !DILocation(line: 1755, column: 15, scope: !3318)
!3320 = !DILocation(line: 1755, column: 27, scope: !3318)
!3321 = !DILocation(line: 1756, column: 9, scope: !3318)
!3322 = !DILocation(line: 1756, column: 15, scope: !3318)
!3323 = !DILocation(line: 1756, column: 33, scope: !3318)
!3324 = !DILocation(line: 1757, column: 5, scope: !3318)
!3325 = !DILocation(line: 1758, column: 11, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 1758, column: 10)
!3327 = !DILocation(line: 1758, column: 17, scope: !3326)
!3328 = !DILocation(line: 1759, column: 7, scope: !3326)
!3329 = !DILocation(line: 1759, column: 11, scope: !3326)
!3330 = !DILocation(line: 1759, column: 17, scope: !3326)
!3331 = !DILocation(line: 1758, column: 10, scope: !3301)
!3332 = !DILocation(line: 1760, column: 9, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 1760, column: 9)
!3334 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 1759, column: 57)
!3335 = !DILocation(line: 1760, column: 9, scope: !3334)
!3336 = !DILocation(line: 1760, column: 9, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1760, column: 9)
!3338 = !DILocation(line: 1761, column: 24, scope: !3334)
!3339 = !DILocation(line: 1761, column: 9, scope: !3334)
!3340 = !DILocation(line: 1762, column: 35, scope: !3334)
!3341 = !DILocation(line: 1762, column: 9, scope: !3334)
!3342 = !DILocation(line: 1763, column: 5, scope: !3334)
!3343 = !DILocation(line: 1764, column: 5, scope: !3301)
!3344 = !DILocation(line: 1765, column: 1, scope: !3301)
!3345 = distinct !DISubprogram(name: "ZSTD_initDStream", scope: !3, file: !3, line: 1581, type: !3135, scopeLine: 1582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3346)
!3346 = !{!3347}
!3347 = !DILocalVariable(name: "zds", arg: 1, scope: !3345, file: !3, line: 1581, type: !3110)
!3348 = !DILocation(line: 1581, column: 39, scope: !3345)
!3349 = !DILocation(line: 1584, column: 40, scope: !3345)
!3350 = !DILocation(line: 1584, column: 12, scope: !3345)
!3351 = !DILocation(line: 1584, column: 5, scope: !3345)
!3352 = distinct !DISubprogram(name: "ZSTD_initDStream_usingDDict", scope: !3, file: !3, line: 1590, type: !3353, scopeLine: 1591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!205, !3110, !282}
!3355 = !{!3356, !3357, !3358, !3360}
!3356 = !DILocalVariable(name: "dctx", arg: 1, scope: !3352, file: !3, line: 1590, type: !3110)
!3357 = !DILocalVariable(name: "ddict", arg: 2, scope: !3352, file: !3, line: 1590, type: !282)
!3358 = !DILocalVariable(name: "err_code", scope: !3359, file: !3, line: 1592, type: !383)
!3359 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 1592, column: 5)
!3360 = !DILocalVariable(name: "err_code", scope: !3361, file: !3, line: 1593, type: !383)
!3361 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 1593, column: 5)
!3362 = !DILocation(line: 1590, column: 50, scope: !3352)
!3363 = !DILocation(line: 1590, column: 74, scope: !3352)
!3364 = !DILocation(line: 1592, column: 5, scope: !3352)
!3365 = !DILocation(line: 1592, column: 5, scope: !3359)
!3366 = !DILocation(line: 1592, column: 5, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 1592, column: 5)
!3368 = !DILocation(line: 1592, column: 5, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 1592, column: 5)
!3370 = !DILocation(line: 1593, column: 5, scope: !3352)
!3371 = !DILocation(line: 1593, column: 5, scope: !3361)
!3372 = !DILocation(line: 1593, column: 5, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 1593, column: 5)
!3374 = !DILocation(line: 1593, column: 5, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 1593, column: 5)
!3376 = !DILocation(line: 1594, column: 37, scope: !3352)
!3377 = !DILocation(line: 1594, column: 43, scope: !3352)
!3378 = !DILocation(line: 1594, column: 12, scope: !3352)
!3379 = !DILocation(line: 1594, column: 5, scope: !3352)
!3380 = !DILocation(line: 1595, column: 1, scope: !3352)
!3381 = distinct !DISubprogram(name: "ZSTD_DCtx_refDDict", scope: !3, file: !3, line: 1607, type: !2999, scopeLine: 1608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3382)
!3382 = !{!3383, !3384, !3385}
!3383 = !DILocalVariable(name: "dctx", arg: 1, scope: !3381, file: !3, line: 1607, type: !130)
!3384 = !DILocalVariable(name: "ddict", arg: 2, scope: !3381, file: !3, line: 1607, type: !282)
!3385 = !DILocalVariable(name: "err_code", scope: !3386, file: !3, line: 1622, type: !383)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 1622, column: 13)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1614, column: 68)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1614, column: 13)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1611, column: 16)
!3390 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1611, column: 9)
!3391 = !DILocation(line: 1607, column: 38, scope: !3381)
!3392 = !DILocation(line: 1607, column: 62, scope: !3381)
!3393 = !DILocation(line: 1609, column: 5, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1609, column: 5)
!3395 = !DILocation(line: 1609, column: 5, scope: !3381)
!3396 = !DILocation(line: 1609, column: 5, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 1609, column: 5)
!3398 = !DILocation(line: 1610, column: 20, scope: !3381)
!3399 = !DILocation(line: 1610, column: 5, scope: !3381)
!3400 = !DILocation(line: 1611, column: 9, scope: !3390)
!3401 = !DILocation(line: 1611, column: 9, scope: !3381)
!3402 = !DILocation(line: 1612, column: 23, scope: !3389)
!3403 = !DILocation(line: 1612, column: 9, scope: !3389)
!3404 = !DILocation(line: 1612, column: 15, scope: !3389)
!3405 = !DILocation(line: 1612, column: 21, scope: !3389)
!3406 = !DILocation(line: 1613, column: 9, scope: !3389)
!3407 = !DILocation(line: 1613, column: 15, scope: !3389)
!3408 = !DILocation(line: 1613, column: 24, scope: !3389)
!3409 = !DILocation(line: 1614, column: 13, scope: !3388)
!3410 = !DILocation(line: 1614, column: 19, scope: !3388)
!3411 = !DILocation(line: 1614, column: 37, scope: !3388)
!3412 = !DILocation(line: 1614, column: 13, scope: !3389)
!3413 = !DILocation(line: 1615, column: 17, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 1615, column: 17)
!3415 = !DILocation(line: 1615, column: 23, scope: !3414)
!3416 = !DILocation(line: 1615, column: 32, scope: !3414)
!3417 = !DILocation(line: 1615, column: 17, scope: !3387)
!3418 = !DILocation(line: 1616, column: 58, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 1615, column: 41)
!3420 = !DILocation(line: 1616, column: 64, scope: !3419)
!3421 = !DILocation(line: 1616, column: 34, scope: !3419)
!3422 = !DILocation(line: 1616, column: 17, scope: !3419)
!3423 = !DILocation(line: 1616, column: 23, scope: !3419)
!3424 = !DILocation(line: 1616, column: 32, scope: !3419)
!3425 = !DILocation(line: 1617, column: 22, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 1617, column: 21)
!3427 = !DILocation(line: 1617, column: 28, scope: !3426)
!3428 = !DILocation(line: 1617, column: 21, scope: !3419)
!3429 = !DILocation(line: 1618, column: 21, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1617, column: 38)
!3431 = !DILocation(line: 1618, column: 21, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 1618, column: 21)
!3433 = !DILocation(line: 1619, column: 17, scope: !3430)
!3434 = !DILocation(line: 1620, column: 13, scope: !3419)
!3435 = !DILocation(line: 1622, column: 13, scope: !3387)
!3436 = !DILocation(line: 1622, column: 13, scope: !3386)
!3437 = !DILocation(line: 1622, column: 13, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 1622, column: 13)
!3439 = !DILocation(line: 1622, column: 13, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 1622, column: 13)
!3441 = !DILocation(line: 1623, column: 9, scope: !3387)
!3442 = !DILocation(line: 1624, column: 5, scope: !3389)
!3443 = !DILocation(line: 1625, column: 5, scope: !3381)
!3444 = !DILocation(line: 1626, column: 1, scope: !3381)
!3445 = distinct !DISubprogram(name: "ZSTD_resetDStream", scope: !3, file: !3, line: 1600, type: !3135, scopeLine: 1601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3446)
!3446 = !{!3447, !3448}
!3447 = !DILocalVariable(name: "dctx", arg: 1, scope: !3445, file: !3, line: 1600, type: !3110)
!3448 = !DILocalVariable(name: "err_code", scope: !3449, file: !3, line: 1602, type: !383)
!3449 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 1602, column: 5)
!3450 = !DILocation(line: 1600, column: 40, scope: !3445)
!3451 = !DILocation(line: 1602, column: 5, scope: !3445)
!3452 = !DILocation(line: 1602, column: 5, scope: !3449)
!3453 = !DILocation(line: 1602, column: 5, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 1602, column: 5)
!3455 = !DILocation(line: 1602, column: 5, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 1602, column: 5)
!3457 = !DILocation(line: 1603, column: 37, scope: !3445)
!3458 = !DILocation(line: 1603, column: 43, scope: !3445)
!3459 = !DILocation(line: 1603, column: 12, scope: !3445)
!3460 = !DILocation(line: 1603, column: 5, scope: !3445)
!3461 = !DILocation(line: 1604, column: 1, scope: !3445)
!3462 = distinct !DISubprogram(name: "ZSTD_createDDictHashSet", scope: !3, file: !3, line: 170, type: !3463, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3465)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!289, !259}
!3465 = !{!3466, !3467}
!3466 = !DILocalVariable(name: "customMem", arg: 1, scope: !3462, file: !3, line: 170, type: !259)
!3467 = !DILocalVariable(name: "ret", scope: !3462, file: !3, line: 171, type: !289)
!3468 = !DILocation(line: 170, column: 66, scope: !3462)
!3469 = !DILocation(line: 171, column: 5, scope: !3462)
!3470 = !DILocation(line: 171, column: 24, scope: !3462)
!3471 = !DILocation(line: 171, column: 50, scope: !3462)
!3472 = !DILocation(line: 173, column: 10, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 173, column: 9)
!3474 = !DILocation(line: 173, column: 9, scope: !3462)
!3475 = !DILocation(line: 174, column: 9, scope: !3473)
!3476 = !DILocation(line: 175, column: 46, scope: !3462)
!3477 = !DILocation(line: 175, column: 5, scope: !3462)
!3478 = !DILocation(line: 175, column: 10, scope: !3462)
!3479 = !DILocation(line: 175, column: 24, scope: !3462)
!3480 = !DILocation(line: 176, column: 10, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 176, column: 9)
!3482 = !DILocation(line: 176, column: 15, scope: !3481)
!3483 = !DILocation(line: 176, column: 9, scope: !3462)
!3484 = !DILocation(line: 177, column: 25, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 176, column: 30)
!3486 = !DILocation(line: 177, column: 9, scope: !3485)
!3487 = !DILocation(line: 178, column: 9, scope: !3485)
!3488 = !DILocation(line: 180, column: 5, scope: !3462)
!3489 = !DILocation(line: 180, column: 10, scope: !3462)
!3490 = !DILocation(line: 180, column: 28, scope: !3462)
!3491 = !DILocation(line: 181, column: 5, scope: !3462)
!3492 = !DILocation(line: 181, column: 10, scope: !3462)
!3493 = !DILocation(line: 181, column: 24, scope: !3462)
!3494 = !DILocation(line: 182, column: 12, scope: !3462)
!3495 = !DILocation(line: 182, column: 5, scope: !3462)
!3496 = !DILocation(line: 183, column: 1, scope: !3462)
!3497 = distinct !DISubprogram(name: "ZSTD_DDictHashSet_addDDict", scope: !3, file: !3, line: 201, type: !3498, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!205, !289, !282, !259}
!3500 = !{!3501, !3502, !3503, !3504, !3508}
!3501 = !DILocalVariable(name: "hashSet", arg: 1, scope: !3497, file: !3, line: 201, type: !289)
!3502 = !DILocalVariable(name: "ddict", arg: 2, scope: !3497, file: !3, line: 201, type: !282)
!3503 = !DILocalVariable(name: "customMem", arg: 3, scope: !3497, file: !3, line: 201, type: !259)
!3504 = !DILocalVariable(name: "err_code", scope: !3505, file: !3, line: 204, type: !383)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 204, column: 9)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 203, column: 152)
!3507 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 203, column: 9)
!3508 = !DILocalVariable(name: "err_code", scope: !3509, file: !3, line: 206, type: !383)
!3509 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 206, column: 5)
!3510 = !DILocation(line: 201, column: 61, scope: !3497)
!3511 = !DILocation(line: 201, column: 88, scope: !3497)
!3512 = !DILocation(line: 201, column: 110, scope: !3497)
!3513 = !DILocation(line: 203, column: 9, scope: !3507)
!3514 = !DILocation(line: 203, column: 18, scope: !3507)
!3515 = !DILocation(line: 203, column: 32, scope: !3507)
!3516 = !DILocation(line: 203, column: 77, scope: !3507)
!3517 = !DILocation(line: 203, column: 86, scope: !3507)
!3518 = !DILocation(line: 203, column: 75, scope: !3507)
!3519 = !DILocation(line: 203, column: 104, scope: !3507)
!3520 = !DILocation(line: 203, column: 146, scope: !3507)
!3521 = !DILocation(line: 203, column: 9, scope: !3497)
!3522 = !DILocation(line: 204, column: 9, scope: !3506)
!3523 = !DILocation(line: 204, column: 9, scope: !3505)
!3524 = !DILocation(line: 204, column: 9, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 204, column: 9)
!3526 = !DILocation(line: 204, column: 9, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 204, column: 9)
!3528 = !DILocation(line: 205, column: 5, scope: !3506)
!3529 = !DILocation(line: 206, column: 5, scope: !3497)
!3530 = !DILocation(line: 206, column: 5, scope: !3509)
!3531 = !DILocation(line: 206, column: 5, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 206, column: 5)
!3533 = !DILocation(line: 206, column: 5, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 206, column: 5)
!3535 = !DILocation(line: 207, column: 5, scope: !3497)
!3536 = !DILocation(line: 208, column: 1, scope: !3497)
!3537 = distinct !DISubprogram(name: "ZSTD_DCtx_setMaxWindowSize", scope: !3, file: !3, line: 1631, type: !2358, scopeLine: 1632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3538)
!3538 = !{!3539, !3540, !3541, !3549, !3550}
!3539 = !DILocalVariable(name: "dctx", arg: 1, scope: !3537, file: !3, line: 1631, type: !130)
!3540 = !DILocalVariable(name: "maxWindowSize", arg: 2, scope: !3537, file: !3, line: 1631, type: !205)
!3541 = !DILocalVariable(name: "bounds", scope: !3537, file: !3, line: 1633, type: !3542)
!3542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3543)
!3543 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_bounds", file: !6, line: 440, baseType: !3544)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 436, size: 128, elements: !3545)
!3545 = !{!3546, !3547, !3548}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3544, file: !6, line: 437, baseType: !205, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "lowerBound", scope: !3544, file: !6, line: 438, baseType: !38, size: 32, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "upperBound", scope: !3544, file: !6, line: 439, baseType: !38, size: 32, offset: 96)
!3549 = !DILocalVariable(name: "min", scope: !3537, file: !3, line: 1634, type: !383)
!3550 = !DILocalVariable(name: "max", scope: !3537, file: !3, line: 1635, type: !383)
!3551 = !DILocation(line: 1631, column: 46, scope: !3537)
!3552 = !DILocation(line: 1631, column: 59, scope: !3537)
!3553 = !DILocation(line: 1633, column: 5, scope: !3537)
!3554 = !DILocation(line: 1633, column: 23, scope: !3537)
!3555 = !DILocation(line: 1633, column: 32, scope: !3537)
!3556 = !DILocation(line: 1634, column: 5, scope: !3537)
!3557 = !DILocation(line: 1634, column: 18, scope: !3537)
!3558 = !DILocation(line: 1634, column: 44, scope: !3537)
!3559 = !DILocation(line: 1634, column: 34, scope: !3537)
!3560 = !DILocation(line: 1635, column: 5, scope: !3537)
!3561 = !DILocation(line: 1635, column: 18, scope: !3537)
!3562 = !DILocation(line: 1635, column: 44, scope: !3537)
!3563 = !DILocation(line: 1635, column: 34, scope: !3537)
!3564 = !DILocation(line: 1636, column: 5, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 1636, column: 5)
!3566 = !DILocation(line: 1636, column: 5, scope: !3537)
!3567 = !DILocation(line: 1636, column: 5, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 1636, column: 5)
!3569 = !DILocation(line: 1637, column: 5, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 1637, column: 5)
!3571 = !DILocation(line: 1637, column: 5, scope: !3537)
!3572 = !DILocation(line: 1637, column: 5, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 1637, column: 5)
!3574 = !DILocation(line: 1638, column: 5, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 1638, column: 5)
!3576 = !DILocation(line: 1638, column: 5, scope: !3537)
!3577 = !DILocation(line: 1638, column: 5, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 1638, column: 5)
!3579 = !DILocation(line: 1639, column: 27, scope: !3537)
!3580 = !DILocation(line: 1639, column: 5, scope: !3537)
!3581 = !DILocation(line: 1639, column: 11, scope: !3537)
!3582 = !DILocation(line: 1639, column: 25, scope: !3537)
!3583 = !DILocation(line: 1640, column: 5, scope: !3537)
!3584 = !DILocation(line: 1641, column: 1, scope: !3537)
!3585 = distinct !DISubprogram(name: "ZSTD_dParam_getBounds", scope: !3, file: !3, line: 1648, type: !3586, scopeLine: 1649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3589)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!3543, !3588}
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_dParameter", file: !6, line: 554, baseType: !121)
!3589 = !{!3590, !3591}
!3590 = !DILocalVariable(name: "dParam", arg: 1, scope: !3585, file: !3, line: 1648, type: !3588)
!3591 = !DILocalVariable(name: "bounds", scope: !3585, file: !3, line: 1650, type: !3543)
!3592 = !DILocation(line: 1648, column: 51, scope: !3585)
!3593 = !DILocation(line: 1650, column: 17, scope: !3585)
!3594 = !DILocation(line: 1651, column: 12, scope: !3585)
!3595 = !DILocation(line: 1651, column: 5, scope: !3585)
!3596 = !DILocation(line: 1653, column: 20, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 1651, column: 20)
!3598 = !DILocation(line: 1653, column: 31, scope: !3597)
!3599 = !DILocation(line: 1654, column: 20, scope: !3597)
!3600 = !DILocation(line: 1654, column: 31, scope: !3597)
!3601 = !DILocation(line: 1655, column: 13, scope: !3597)
!3602 = !DILocation(line: 1657, column: 20, scope: !3597)
!3603 = !DILocation(line: 1657, column: 31, scope: !3597)
!3604 = !DILocation(line: 1658, column: 20, scope: !3597)
!3605 = !DILocation(line: 1658, column: 31, scope: !3597)
!3606 = !DILocation(line: 1660, column: 13, scope: !3597)
!3607 = !DILocation(line: 1662, column: 20, scope: !3597)
!3608 = !DILocation(line: 1662, column: 31, scope: !3597)
!3609 = !DILocation(line: 1663, column: 20, scope: !3597)
!3610 = !DILocation(line: 1663, column: 31, scope: !3597)
!3611 = !DILocation(line: 1664, column: 13, scope: !3597)
!3612 = !DILocation(line: 1666, column: 20, scope: !3597)
!3613 = !DILocation(line: 1666, column: 31, scope: !3597)
!3614 = !DILocation(line: 1667, column: 20, scope: !3597)
!3615 = !DILocation(line: 1667, column: 31, scope: !3597)
!3616 = !DILocation(line: 1668, column: 13, scope: !3597)
!3617 = !DILocation(line: 1670, column: 20, scope: !3597)
!3618 = !DILocation(line: 1670, column: 31, scope: !3597)
!3619 = !DILocation(line: 1671, column: 20, scope: !3597)
!3620 = !DILocation(line: 1671, column: 31, scope: !3597)
!3621 = !DILocation(line: 1672, column: 13, scope: !3597)
!3622 = !DILocation(line: 1674, column: 5, scope: !3597)
!3623 = !DILocation(line: 1675, column: 12, scope: !3585)
!3624 = !DILocation(line: 1675, column: 18, scope: !3585)
!3625 = !DILocation(line: 1676, column: 5, scope: !3585)
!3626 = !DILocation(line: 1677, column: 1, scope: !3585)
!3627 = distinct !DISubprogram(name: "ZSTD_DCtx_setFormat", scope: !3, file: !3, line: 1643, type: !3628, scopeLine: 1644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3630)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!205, !130, !251}
!3630 = !{!3631, !3632}
!3631 = !DILocalVariable(name: "dctx", arg: 1, scope: !3627, file: !3, line: 1643, type: !130)
!3632 = !DILocalVariable(name: "format", arg: 2, scope: !3627, file: !3, line: 1643, type: !251)
!3633 = !DILocation(line: 1643, column: 39, scope: !3627)
!3634 = !DILocation(line: 1643, column: 59, scope: !3627)
!3635 = !DILocation(line: 1645, column: 35, scope: !3627)
!3636 = !DILocation(line: 1645, column: 61, scope: !3627)
!3637 = !DILocation(line: 1645, column: 12, scope: !3627)
!3638 = !DILocation(line: 1645, column: 5, scope: !3627)
!3639 = distinct !DISubprogram(name: "ZSTD_DCtx_setParameter", scope: !3, file: !3, line: 1718, type: !3640, scopeLine: 1719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!205, !130, !3588, !38}
!3642 = !{!3643, !3644, !3645}
!3643 = !DILocalVariable(name: "dctx", arg: 1, scope: !3639, file: !3, line: 1718, type: !130)
!3644 = !DILocalVariable(name: "dParam", arg: 2, scope: !3639, file: !3, line: 1718, type: !3588)
!3645 = !DILocalVariable(name: "value", arg: 3, scope: !3639, file: !3, line: 1718, type: !38)
!3646 = !DILocation(line: 1718, column: 42, scope: !3639)
!3647 = !DILocation(line: 1718, column: 64, scope: !3639)
!3648 = !DILocation(line: 1718, column: 76, scope: !3639)
!3649 = !DILocation(line: 1720, column: 5, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 1720, column: 5)
!3651 = !DILocation(line: 1720, column: 5, scope: !3639)
!3652 = !DILocation(line: 1720, column: 5, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 1720, column: 5)
!3654 = !DILocation(line: 1721, column: 12, scope: !3639)
!3655 = !DILocation(line: 1721, column: 5, scope: !3639)
!3656 = !DILocation(line: 1723, column: 17, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1723, column: 17)
!3658 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 1721, column: 20)
!3659 = !DILocation(line: 1723, column: 23, scope: !3657)
!3660 = !DILocation(line: 1723, column: 17, scope: !3658)
!3661 = !DILocation(line: 1723, column: 35, scope: !3657)
!3662 = !DILocation(line: 1723, column: 29, scope: !3657)
!3663 = !DILocation(line: 1724, column: 13, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 1724, column: 13)
!3665 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1724, column: 13)
!3666 = !DILocation(line: 1724, column: 13, scope: !3665)
!3667 = !DILocation(line: 1724, column: 13, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 1724, column: 13)
!3669 = !DILocation(line: 1725, column: 50, scope: !3658)
!3670 = !DILocation(line: 1725, column: 47, scope: !3658)
!3671 = !DILocation(line: 1725, column: 13, scope: !3658)
!3672 = !DILocation(line: 1725, column: 19, scope: !3658)
!3673 = !DILocation(line: 1725, column: 33, scope: !3658)
!3674 = !DILocation(line: 1726, column: 13, scope: !3658)
!3675 = !DILocation(line: 1728, column: 13, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 1728, column: 13)
!3677 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1728, column: 13)
!3678 = !DILocation(line: 1728, column: 13, scope: !3677)
!3679 = !DILocation(line: 1728, column: 13, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 1728, column: 13)
!3681 = !DILocation(line: 1729, column: 43, scope: !3658)
!3682 = !DILocation(line: 1729, column: 13, scope: !3658)
!3683 = !DILocation(line: 1729, column: 19, scope: !3658)
!3684 = !DILocation(line: 1729, column: 26, scope: !3658)
!3685 = !DILocation(line: 1730, column: 13, scope: !3658)
!3686 = !DILocation(line: 1732, column: 13, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 1732, column: 13)
!3688 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1732, column: 13)
!3689 = !DILocation(line: 1732, column: 13, scope: !3688)
!3690 = !DILocation(line: 1732, column: 13, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 1732, column: 13)
!3692 = !DILocation(line: 1733, column: 54, scope: !3658)
!3693 = !DILocation(line: 1733, column: 13, scope: !3658)
!3694 = !DILocation(line: 1733, column: 19, scope: !3658)
!3695 = !DILocation(line: 1733, column: 33, scope: !3658)
!3696 = !DILocation(line: 1734, column: 13, scope: !3658)
!3697 = !DILocation(line: 1736, column: 13, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 1736, column: 13)
!3699 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1736, column: 13)
!3700 = !DILocation(line: 1736, column: 13, scope: !3699)
!3701 = !DILocation(line: 1736, column: 13, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 1736, column: 13)
!3703 = !DILocation(line: 1737, column: 69, scope: !3658)
!3704 = !DILocation(line: 1737, column: 13, scope: !3658)
!3705 = !DILocation(line: 1737, column: 19, scope: !3658)
!3706 = !DILocation(line: 1737, column: 39, scope: !3658)
!3707 = !DILocation(line: 1738, column: 13, scope: !3658)
!3708 = !DILocation(line: 1740, column: 13, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 1740, column: 13)
!3710 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1740, column: 13)
!3711 = !DILocation(line: 1740, column: 13, scope: !3710)
!3712 = !DILocation(line: 1740, column: 13, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 1740, column: 13)
!3714 = !DILocation(line: 1741, column: 17, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1741, column: 17)
!3716 = !DILocation(line: 1741, column: 23, scope: !3715)
!3717 = !DILocation(line: 1741, column: 34, scope: !3715)
!3718 = !DILocation(line: 1741, column: 17, scope: !3658)
!3719 = !DILocation(line: 1742, column: 17, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 1741, column: 40)
!3721 = !DILocation(line: 1742, column: 17, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 1742, column: 17)
!3723 = !DILocation(line: 1743, column: 13, scope: !3720)
!3724 = !DILocation(line: 1744, column: 65, scope: !3658)
!3725 = !DILocation(line: 1744, column: 13, scope: !3658)
!3726 = !DILocation(line: 1744, column: 19, scope: !3658)
!3727 = !DILocation(line: 1744, column: 37, scope: !3658)
!3728 = !DILocation(line: 1745, column: 13, scope: !3658)
!3729 = !DILocation(line: 1747, column: 5, scope: !3658)
!3730 = !DILocation(line: 1748, column: 5, scope: !3639)
!3731 = !DILocation(line: 1748, column: 5, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 1748, column: 5)
!3733 = !DILocation(line: 1749, column: 1, scope: !3639)
!3734 = distinct !DISubprogram(name: "ZSTD_DCtx_getParameter", scope: !3, file: !3, line: 1695, type: !3735, scopeLine: 1696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3738)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!205, !130, !3588, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!3738 = !{!3739, !3740, !3741}
!3739 = !DILocalVariable(name: "dctx", arg: 1, scope: !3734, file: !3, line: 1695, type: !130)
!3740 = !DILocalVariable(name: "param", arg: 2, scope: !3734, file: !3, line: 1695, type: !3588)
!3741 = !DILocalVariable(name: "value", arg: 3, scope: !3734, file: !3, line: 1695, type: !3737)
!3742 = !DILocation(line: 1695, column: 42, scope: !3734)
!3743 = !DILocation(line: 1695, column: 64, scope: !3734)
!3744 = !DILocation(line: 1695, column: 76, scope: !3734)
!3745 = !DILocation(line: 1697, column: 13, scope: !3734)
!3746 = !DILocation(line: 1697, column: 5, scope: !3734)
!3747 = !DILocation(line: 1699, column: 47, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1697, column: 20)
!3749 = !DILocation(line: 1699, column: 53, scope: !3748)
!3750 = !DILocation(line: 1699, column: 42, scope: !3748)
!3751 = !DILocation(line: 1699, column: 27, scope: !3748)
!3752 = !DILocation(line: 1699, column: 14, scope: !3748)
!3753 = !DILocation(line: 1699, column: 20, scope: !3748)
!3754 = !DILocation(line: 1700, column: 13, scope: !3748)
!3755 = !DILocation(line: 1702, column: 27, scope: !3748)
!3756 = !DILocation(line: 1702, column: 33, scope: !3748)
!3757 = !DILocation(line: 1702, column: 14, scope: !3748)
!3758 = !DILocation(line: 1702, column: 20, scope: !3748)
!3759 = !DILocation(line: 1703, column: 13, scope: !3748)
!3760 = !DILocation(line: 1705, column: 27, scope: !3748)
!3761 = !DILocation(line: 1705, column: 33, scope: !3748)
!3762 = !DILocation(line: 1705, column: 14, scope: !3748)
!3763 = !DILocation(line: 1705, column: 20, scope: !3748)
!3764 = !DILocation(line: 1706, column: 13, scope: !3748)
!3765 = !DILocation(line: 1708, column: 27, scope: !3748)
!3766 = !DILocation(line: 1708, column: 33, scope: !3748)
!3767 = !DILocation(line: 1708, column: 14, scope: !3748)
!3768 = !DILocation(line: 1708, column: 20, scope: !3748)
!3769 = !DILocation(line: 1709, column: 13, scope: !3748)
!3770 = !DILocation(line: 1711, column: 27, scope: !3748)
!3771 = !DILocation(line: 1711, column: 33, scope: !3748)
!3772 = !DILocation(line: 1711, column: 14, scope: !3748)
!3773 = !DILocation(line: 1711, column: 20, scope: !3748)
!3774 = !DILocation(line: 1712, column: 13, scope: !3748)
!3775 = !DILocation(line: 1714, column: 5, scope: !3748)
!3776 = !DILocation(line: 1715, column: 5, scope: !3734)
!3777 = !DILocation(line: 1715, column: 5, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1715, column: 5)
!3779 = !DILocation(line: 1716, column: 1, scope: !3734)
!3780 = distinct !DISubprogram(name: "ZSTD_highbit32", scope: !12, file: !12, line: 353, type: !3781, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!158, !158}
!3783 = !{!3784}
!3784 = !DILocalVariable(name: "val", arg: 1, scope: !3780, file: !12, line: 353, type: !158)
!3785 = !DILocation(line: 353, column: 35, scope: !3780)
!3786 = !DILocation(line: 358, column: 31, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3780, file: !12, line: 356, column: 5)
!3788 = !DILocation(line: 358, column: 16, scope: !3787)
!3789 = !DILocation(line: 358, column: 36, scope: !3787)
!3790 = !DILocation(line: 358, column: 9, scope: !3787)
!3791 = distinct !DISubprogram(name: "ZSTD_dParam_withinBounds", scope: !3, file: !3, line: 1682, type: !3792, scopeLine: 1683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3794)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!38, !3588, !38}
!3794 = !{!3795, !3796, !3797}
!3795 = !DILocalVariable(name: "dParam", arg: 1, scope: !3791, file: !3, line: 1682, type: !3588)
!3796 = !DILocalVariable(name: "value", arg: 2, scope: !3791, file: !3, line: 1682, type: !38)
!3797 = !DILocalVariable(name: "bounds", scope: !3791, file: !3, line: 1684, type: !3542)
!3798 = !DILocation(line: 1682, column: 53, scope: !3791)
!3799 = !DILocation(line: 1682, column: 65, scope: !3791)
!3800 = !DILocation(line: 1684, column: 5, scope: !3791)
!3801 = !DILocation(line: 1684, column: 23, scope: !3791)
!3802 = !DILocation(line: 1684, column: 54, scope: !3791)
!3803 = !DILocation(line: 1684, column: 32, scope: !3791)
!3804 = !DILocation(line: 1685, column: 29, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 1685, column: 9)
!3806 = !DILocation(line: 1685, column: 9, scope: !3805)
!3807 = !DILocation(line: 1685, column: 9, scope: !3791)
!3808 = !DILocation(line: 1685, column: 37, scope: !3805)
!3809 = !DILocation(line: 1686, column: 9, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 1686, column: 9)
!3811 = !DILocation(line: 1686, column: 24, scope: !3810)
!3812 = !DILocation(line: 1686, column: 15, scope: !3810)
!3813 = !DILocation(line: 1686, column: 9, scope: !3791)
!3814 = !DILocation(line: 1686, column: 36, scope: !3810)
!3815 = !DILocation(line: 1687, column: 9, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 1687, column: 9)
!3817 = !DILocation(line: 1687, column: 24, scope: !3816)
!3818 = !DILocation(line: 1687, column: 15, scope: !3816)
!3819 = !DILocation(line: 1687, column: 9, scope: !3791)
!3820 = !DILocation(line: 1687, column: 36, scope: !3816)
!3821 = !DILocation(line: 1688, column: 5, scope: !3791)
!3822 = !DILocation(line: 1689, column: 1, scope: !3791)
!3823 = distinct !DISubprogram(name: "ZSTD_DCtx_resetParameters", scope: !3, file: !3, line: 232, type: !500, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3824)
!3824 = !{!3825}
!3825 = !DILocalVariable(name: "dctx", arg: 1, scope: !3823, file: !3, line: 232, type: !130)
!3826 = !DILocation(line: 232, column: 50, scope: !3823)
!3827 = !DILocation(line: 235, column: 5, scope: !3823)
!3828 = !DILocation(line: 235, column: 11, scope: !3823)
!3829 = !DILocation(line: 235, column: 18, scope: !3823)
!3830 = !DILocation(line: 236, column: 5, scope: !3823)
!3831 = !DILocation(line: 236, column: 11, scope: !3823)
!3832 = !DILocation(line: 236, column: 25, scope: !3823)
!3833 = !DILocation(line: 237, column: 5, scope: !3823)
!3834 = !DILocation(line: 237, column: 11, scope: !3823)
!3835 = !DILocation(line: 237, column: 25, scope: !3823)
!3836 = !DILocation(line: 238, column: 5, scope: !3823)
!3837 = !DILocation(line: 238, column: 11, scope: !3823)
!3838 = !DILocation(line: 238, column: 31, scope: !3823)
!3839 = !DILocation(line: 239, column: 5, scope: !3823)
!3840 = !DILocation(line: 239, column: 11, scope: !3823)
!3841 = !DILocation(line: 239, column: 29, scope: !3823)
!3842 = !DILocation(line: 240, column: 1, scope: !3823)
!3843 = distinct !DISubprogram(name: "ZSTD_sizeof_DStream", scope: !3, file: !3, line: 1768, type: !3844, scopeLine: 1769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3848)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!205, !3846}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3111)
!3848 = !{!3849}
!3849 = !DILocalVariable(name: "dctx", arg: 1, scope: !3843, file: !3, line: 1768, type: !3846)
!3850 = !DILocation(line: 1768, column: 48, scope: !3843)
!3851 = !DILocation(line: 1770, column: 29, scope: !3843)
!3852 = !DILocation(line: 1770, column: 12, scope: !3843)
!3853 = !DILocation(line: 1770, column: 5, scope: !3843)
!3854 = distinct !DISubprogram(name: "ZSTD_decodingBufferSize_min", scope: !3, file: !3, line: 1773, type: !3855, scopeLine: 1774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3857)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!205, !215, !215}
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3863}
!3858 = !DILocalVariable(name: "windowSize", arg: 1, scope: !3854, file: !3, line: 1773, type: !215)
!3859 = !DILocalVariable(name: "frameContentSize", arg: 2, scope: !3854, file: !3, line: 1773, type: !215)
!3860 = !DILocalVariable(name: "blockSize", scope: !3854, file: !3, line: 1775, type: !383)
!3861 = !DILocalVariable(name: "neededRBSize", scope: !3854, file: !3, line: 1777, type: !1302)
!3862 = !DILocalVariable(name: "neededSize", scope: !3854, file: !3, line: 1778, type: !1302)
!3863 = !DILocalVariable(name: "minRBSize", scope: !3854, file: !3, line: 1779, type: !383)
!3864 = !DILocation(line: 1773, column: 55, scope: !3854)
!3865 = !DILocation(line: 1773, column: 86, scope: !3854)
!3866 = !DILocation(line: 1775, column: 5, scope: !3854)
!3867 = !DILocation(line: 1775, column: 18, scope: !3854)
!3868 = !DILocation(line: 1775, column: 39, scope: !3854)
!3869 = !DILocation(line: 1777, column: 5, scope: !3854)
!3870 = !DILocation(line: 1777, column: 30, scope: !3854)
!3871 = !DILocation(line: 1777, column: 45, scope: !3854)
!3872 = !DILocation(line: 1777, column: 58, scope: !3854)
!3873 = !DILocation(line: 1777, column: 56, scope: !3854)
!3874 = !DILocation(line: 1777, column: 68, scope: !3854)
!3875 = !DILocation(line: 1777, column: 89, scope: !3854)
!3876 = !DILocation(line: 1778, column: 5, scope: !3854)
!3877 = !DILocation(line: 1778, column: 30, scope: !3854)
!3878 = !DILocation(line: 1778, column: 43, scope: !3854)
!3879 = !DILocation(line: 1779, column: 5, scope: !3854)
!3880 = !DILocation(line: 1779, column: 18, scope: !3854)
!3881 = !DILocation(line: 1779, column: 39, scope: !3854)
!3882 = !DILocation(line: 1780, column: 5, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3854, file: !3, line: 1780, column: 5)
!3884 = !DILocation(line: 1780, column: 5, scope: !3854)
!3885 = !DILocation(line: 1780, column: 5, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 1780, column: 5)
!3887 = !DILocation(line: 1782, column: 12, scope: !3854)
!3888 = !DILocation(line: 1782, column: 5, scope: !3854)
!3889 = !DILocation(line: 1783, column: 1, scope: !3854)
!3890 = distinct !DISubprogram(name: "ZSTD_estimateDStreamSize", scope: !3, file: !3, line: 1785, type: !3891, scopeLine: 1786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!205, !205}
!3893 = !{!3894, !3895, !3896, !3897}
!3894 = !DILocalVariable(name: "windowSize", arg: 1, scope: !3890, file: !3, line: 1785, type: !205)
!3895 = !DILocalVariable(name: "blockSize", scope: !3890, file: !3, line: 1787, type: !383)
!3896 = !DILocalVariable(name: "inBuffSize", scope: !3890, file: !3, line: 1788, type: !383)
!3897 = !DILocalVariable(name: "outBuffSize", scope: !3890, file: !3, line: 1789, type: !383)
!3898 = !DILocation(line: 1785, column: 40, scope: !3890)
!3899 = !DILocation(line: 1787, column: 5, scope: !3890)
!3900 = !DILocation(line: 1787, column: 18, scope: !3890)
!3901 = !DILocation(line: 1787, column: 30, scope: !3890)
!3902 = !DILocation(line: 1788, column: 5, scope: !3890)
!3903 = !DILocation(line: 1788, column: 18, scope: !3890)
!3904 = !DILocation(line: 1788, column: 31, scope: !3890)
!3905 = !DILocation(line: 1789, column: 5, scope: !3890)
!3906 = !DILocation(line: 1789, column: 18, scope: !3890)
!3907 = !DILocation(line: 1789, column: 60, scope: !3890)
!3908 = !DILocation(line: 1789, column: 32, scope: !3890)
!3909 = !DILocation(line: 1790, column: 12, scope: !3890)
!3910 = !DILocation(line: 1790, column: 38, scope: !3890)
!3911 = !DILocation(line: 1790, column: 36, scope: !3890)
!3912 = !DILocation(line: 1790, column: 51, scope: !3890)
!3913 = !DILocation(line: 1790, column: 49, scope: !3890)
!3914 = !DILocation(line: 1791, column: 1, scope: !3890)
!3915 = !DILocation(line: 1790, column: 5, scope: !3890)
!3916 = distinct !DISubprogram(name: "ZSTD_estimateDStreamSize_fromFrame", scope: !3, file: !3, line: 1793, type: !774, scopeLine: 1794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3917)
!3917 = !{!3918, !3919, !3920, !3921, !3922}
!3918 = !DILocalVariable(name: "src", arg: 1, scope: !3916, file: !3, line: 1793, type: !199)
!3919 = !DILocalVariable(name: "srcSize", arg: 2, scope: !3916, file: !3, line: 1793, type: !205)
!3920 = !DILocalVariable(name: "windowSizeMax", scope: !3916, file: !3, line: 1795, type: !392)
!3921 = !DILocalVariable(name: "zfh", scope: !3916, file: !3, line: 1796, type: !211)
!3922 = !DILocalVariable(name: "err", scope: !3916, file: !3, line: 1797, type: !383)
!3923 = !DILocation(line: 1793, column: 55, scope: !3916)
!3924 = !DILocation(line: 1793, column: 67, scope: !3916)
!3925 = !DILocation(line: 1795, column: 5, scope: !3916)
!3926 = !DILocation(line: 1795, column: 15, scope: !3916)
!3927 = !DILocation(line: 1796, column: 5, scope: !3916)
!3928 = !DILocation(line: 1796, column: 22, scope: !3916)
!3929 = !DILocation(line: 1797, column: 5, scope: !3916)
!3930 = !DILocation(line: 1797, column: 18, scope: !3916)
!3931 = !DILocation(line: 1797, column: 50, scope: !3916)
!3932 = !DILocation(line: 1797, column: 55, scope: !3916)
!3933 = !DILocation(line: 1797, column: 24, scope: !3916)
!3934 = !DILocation(line: 1798, column: 22, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 1798, column: 9)
!3936 = !DILocation(line: 1798, column: 9, scope: !3935)
!3937 = !DILocation(line: 1798, column: 9, scope: !3916)
!3938 = !DILocation(line: 1798, column: 35, scope: !3935)
!3939 = !DILocation(line: 1798, column: 28, scope: !3935)
!3940 = !DILocation(line: 1799, column: 5, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 1799, column: 5)
!3942 = !DILocation(line: 1799, column: 5, scope: !3916)
!3943 = !DILocation(line: 1799, column: 5, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 1799, column: 5)
!3945 = !DILocation(line: 1800, column: 5, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 1800, column: 5)
!3947 = !DILocation(line: 1800, column: 5, scope: !3916)
!3948 = !DILocation(line: 1800, column: 5, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 1800, column: 5)
!3950 = !DILocation(line: 1802, column: 49, scope: !3916)
!3951 = !DILocation(line: 1802, column: 12, scope: !3916)
!3952 = !DILocation(line: 1802, column: 5, scope: !3916)
!3953 = !DILocation(line: 1803, column: 1, scope: !3916)
!3954 = distinct !DISubprogram(name: "ZSTD_decompressStream", scope: !3, file: !3, line: 1878, type: !3955, scopeLine: 1879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3965)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!205, !3110, !3957, !3958}
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_inBuffer", file: !6, line: 591, baseType: !3960)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_inBuffer_s", file: !6, line: 587, size: 192, elements: !3961)
!3961 = !{!3962, !3963, !3964}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3960, file: !6, line: 588, baseType: !199, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3960, file: !6, line: 589, baseType: !205, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3960, file: !6, line: 590, baseType: !205, size: 64, offset: 128)
!3965 = !{!3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3975, !3976, !3977, !3978, !3979, !3981, !3985, !3988, !3989, !3992, !3995, !3997, !4001, !4003, !4004, !4006, !4007, !4010, !4012, !4016, !4018, !4019, !4020, !4021, !4023, !4025, !4026}
!3966 = !DILocalVariable(name: "zds", arg: 1, scope: !3954, file: !3, line: 1878, type: !3110)
!3967 = !DILocalVariable(name: "output", arg: 2, scope: !3954, file: !3, line: 1878, type: !3957)
!3968 = !DILocalVariable(name: "input", arg: 3, scope: !3954, file: !3, line: 1878, type: !3958)
!3969 = !DILocalVariable(name: "src", scope: !3954, file: !3, line: 1880, type: !3007)
!3970 = !DILocalVariable(name: "istart", scope: !3954, file: !3, line: 1881, type: !3007)
!3971 = !DILocalVariable(name: "iend", scope: !3954, file: !3, line: 1882, type: !3007)
!3972 = !DILocalVariable(name: "ip", scope: !3954, file: !3, line: 1883, type: !337)
!3973 = !DILocalVariable(name: "dst", scope: !3954, file: !3, line: 1884, type: !3974)
!3974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!3975 = !DILocalVariable(name: "ostart", scope: !3954, file: !3, line: 1885, type: !3974)
!3976 = !DILocalVariable(name: "oend", scope: !3954, file: !3, line: 1886, type: !3974)
!3977 = !DILocalVariable(name: "op", scope: !3954, file: !3, line: 1887, type: !302)
!3978 = !DILocalVariable(name: "someMoreWork", scope: !3954, file: !3, line: 1888, type: !158)
!3979 = !DILocalVariable(name: "err_code", scope: !3980, file: !3, line: 1902, type: !383)
!3980 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 1902, column: 5)
!3981 = !DILocalVariable(name: "hSize", scope: !3982, file: !3, line: 1917, type: !383)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1917, column: 13)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 1906, column: 9)
!3984 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 1904, column: 26)
!3985 = !DILocalVariable(name: "toLoad", scope: !3986, file: !3, line: 1926, type: !383)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 1925, column: 33)
!3987 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 1925, column: 21)
!3988 = !DILocalVariable(name: "remainingInput", scope: !3986, file: !3, line: 1927, type: !383)
!3989 = !DILocalVariable(name: "cSize", scope: !3990, file: !3, line: 1946, type: !383)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 1945, column: 77)
!3991 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1943, column: 17)
!3992 = !DILocalVariable(name: "decompressedSize", scope: !3993, file: !3, line: 1949, type: !383)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 1947, column: 53)
!3994 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 1947, column: 21)
!3995 = !DILocalVariable(name: "err_code", scope: !3996, file: !3, line: 1970, type: !383)
!3996 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1970, column: 13)
!3997 = !DILocalVariable(name: "err_code", scope: !3998, file: !3, line: 1976, type: !383)
!3998 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 1976, column: 17)
!3999 = distinct !DILexicalBlock(scope: !4000, file: !3, line: 1975, column: 20)
!4000 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1972, column: 17)
!4001 = !DILocalVariable(name: "neededInBuffSize", scope: !4002, file: !3, line: 1990, type: !383)
!4002 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1990, column: 13)
!4003 = !DILocalVariable(name: "neededOutBuffSize", scope: !4002, file: !3, line: 1991, type: !383)
!4004 = !DILocalVariable(name: "tooSmall", scope: !4005, file: !3, line: 1997, type: !2466)
!4005 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 1997, column: 17)
!4006 = !DILocalVariable(name: "tooLarge", scope: !4005, file: !3, line: 1998, type: !2466)
!4007 = !DILocalVariable(name: "bufferSize", scope: !4008, file: !3, line: 2001, type: !383)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 2000, column: 47)
!4009 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 2000, column: 25)
!4010 = !DILocalVariable(name: "neededInSize", scope: !4011, file: !3, line: 2028, type: !383)
!4011 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 2028, column: 13)
!4012 = !DILocalVariable(name: "err_code", scope: !4013, file: !3, line: 2036, type: !383)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !3, line: 2036, column: 21)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 2035, column: 56)
!4015 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 2035, column: 21)
!4016 = !DILocalVariable(name: "neededInSize", scope: !4017, file: !3, line: 2046, type: !383)
!4017 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 2046, column: 13)
!4018 = !DILocalVariable(name: "toLoad", scope: !4017, file: !3, line: 2047, type: !383)
!4019 = !DILocalVariable(name: "isSkipFrame", scope: !4017, file: !3, line: 2048, type: !2466)
!4020 = !DILocalVariable(name: "loadedSize", scope: !4017, file: !3, line: 2049, type: !205)
!4021 = !DILocalVariable(name: "err_code", scope: !4022, file: !3, line: 2066, type: !383)
!4022 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 2066, column: 17)
!4023 = !DILocalVariable(name: "toFlushSize", scope: !4024, file: !3, line: 2071, type: !383)
!4024 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 2071, column: 13)
!4025 = !DILocalVariable(name: "flushedSize", scope: !4024, file: !3, line: 2072, type: !383)
!4026 = !DILocalVariable(name: "nextSrcSizeHint", scope: !4027, file: !3, line: 2112, type: !205)
!4027 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 2112, column: 5)
!4028 = !DILocation(line: 1878, column: 44, scope: !3954)
!4029 = !DILocation(line: 1878, column: 65, scope: !3954)
!4030 = !DILocation(line: 1878, column: 88, scope: !3954)
!4031 = !DILocation(line: 1880, column: 5, scope: !3954)
!4032 = !DILocation(line: 1880, column: 23, scope: !3954)
!4033 = !DILocation(line: 1880, column: 42, scope: !3954)
!4034 = !DILocation(line: 1880, column: 49, scope: !3954)
!4035 = !DILocation(line: 1881, column: 5, scope: !3954)
!4036 = !DILocation(line: 1881, column: 23, scope: !3954)
!4037 = !DILocation(line: 1881, column: 32, scope: !3954)
!4038 = !DILocation(line: 1881, column: 39, scope: !3954)
!4039 = !DILocation(line: 1881, column: 43, scope: !3954)
!4040 = !DILocation(line: 1881, column: 50, scope: !3954)
!4041 = !DILocation(line: 1881, column: 56, scope: !3954)
!4042 = !DILocation(line: 1881, column: 63, scope: !3954)
!4043 = !DILocation(line: 1881, column: 54, scope: !3954)
!4044 = !DILocation(line: 1881, column: 69, scope: !3954)
!4045 = !DILocation(line: 1882, column: 5, scope: !3954)
!4046 = !DILocation(line: 1882, column: 23, scope: !3954)
!4047 = !DILocation(line: 1882, column: 30, scope: !3954)
!4048 = !DILocation(line: 1882, column: 37, scope: !3954)
!4049 = !DILocation(line: 1882, column: 42, scope: !3954)
!4050 = !DILocation(line: 1882, column: 49, scope: !3954)
!4051 = !DILocation(line: 1882, column: 55, scope: !3954)
!4052 = !DILocation(line: 1882, column: 62, scope: !3954)
!4053 = !DILocation(line: 1882, column: 53, scope: !3954)
!4054 = !DILocation(line: 1882, column: 69, scope: !3954)
!4055 = !DILocation(line: 1883, column: 5, scope: !3954)
!4056 = !DILocation(line: 1883, column: 17, scope: !3954)
!4057 = !DILocation(line: 1883, column: 22, scope: !3954)
!4058 = !DILocation(line: 1884, column: 5, scope: !3954)
!4059 = !DILocation(line: 1884, column: 17, scope: !3954)
!4060 = !DILocation(line: 1884, column: 30, scope: !3954)
!4061 = !DILocation(line: 1884, column: 38, scope: !3954)
!4062 = !DILocation(line: 1885, column: 5, scope: !3954)
!4063 = !DILocation(line: 1885, column: 17, scope: !3954)
!4064 = !DILocation(line: 1885, column: 26, scope: !3954)
!4065 = !DILocation(line: 1885, column: 34, scope: !3954)
!4066 = !DILocation(line: 1885, column: 38, scope: !3954)
!4067 = !DILocation(line: 1885, column: 45, scope: !3954)
!4068 = !DILocation(line: 1885, column: 51, scope: !3954)
!4069 = !DILocation(line: 1885, column: 59, scope: !3954)
!4070 = !DILocation(line: 1885, column: 49, scope: !3954)
!4071 = !DILocation(line: 1885, column: 65, scope: !3954)
!4072 = !DILocation(line: 1886, column: 5, scope: !3954)
!4073 = !DILocation(line: 1886, column: 17, scope: !3954)
!4074 = !DILocation(line: 1886, column: 24, scope: !3954)
!4075 = !DILocation(line: 1886, column: 32, scope: !3954)
!4076 = !DILocation(line: 1886, column: 37, scope: !3954)
!4077 = !DILocation(line: 1886, column: 44, scope: !3954)
!4078 = !DILocation(line: 1886, column: 50, scope: !3954)
!4079 = !DILocation(line: 1886, column: 58, scope: !3954)
!4080 = !DILocation(line: 1886, column: 48, scope: !3954)
!4081 = !DILocation(line: 1886, column: 65, scope: !3954)
!4082 = !DILocation(line: 1887, column: 5, scope: !3954)
!4083 = !DILocation(line: 1887, column: 11, scope: !3954)
!4084 = !DILocation(line: 1887, column: 16, scope: !3954)
!4085 = !DILocation(line: 1888, column: 5, scope: !3954)
!4086 = !DILocation(line: 1888, column: 9, scope: !3954)
!4087 = !DILocation(line: 1891, column: 5, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 1891, column: 5)
!4089 = !DILocation(line: 1891, column: 5, scope: !3954)
!4090 = !DILocation(line: 1891, column: 5, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 1891, column: 5)
!4092 = !DILocation(line: 1896, column: 5, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 1896, column: 5)
!4094 = !DILocation(line: 1896, column: 5, scope: !3954)
!4095 = !DILocation(line: 1896, column: 5, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 1896, column: 5)
!4097 = !DILocation(line: 1902, column: 5, scope: !3954)
!4098 = !DILocation(line: 1902, column: 5, scope: !3980)
!4099 = !DILocation(line: 1902, column: 5, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 1902, column: 5)
!4101 = !DILocation(line: 1902, column: 5, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 1902, column: 5)
!4103 = !DILocation(line: 1904, column: 5, scope: !3954)
!4104 = !DILocation(line: 1904, column: 12, scope: !3954)
!4105 = !DILocation(line: 1905, column: 16, scope: !3984)
!4106 = !DILocation(line: 1905, column: 21, scope: !3984)
!4107 = !DILocation(line: 1905, column: 9, scope: !3984)
!4108 = !DILocation(line: 1909, column: 13, scope: !3983)
!4109 = !DILocation(line: 1909, column: 18, scope: !3983)
!4110 = !DILocation(line: 1909, column: 30, scope: !3983)
!4111 = !DILocation(line: 1910, column: 56, scope: !3983)
!4112 = !DILocation(line: 1910, column: 61, scope: !3983)
!4113 = !DILocation(line: 1910, column: 68, scope: !3983)
!4114 = !DILocation(line: 1910, column: 40, scope: !3983)
!4115 = !DILocation(line: 1910, column: 45, scope: !3983)
!4116 = !DILocation(line: 1910, column: 54, scope: !3983)
!4117 = !DILocation(line: 1910, column: 27, scope: !3983)
!4118 = !DILocation(line: 1910, column: 32, scope: !3983)
!4119 = !DILocation(line: 1910, column: 38, scope: !3983)
!4120 = !DILocation(line: 1910, column: 13, scope: !3983)
!4121 = !DILocation(line: 1910, column: 18, scope: !3983)
!4122 = !DILocation(line: 1910, column: 25, scope: !3983)
!4123 = !DILocation(line: 1911, column: 13, scope: !3983)
!4124 = !DILocation(line: 1911, column: 18, scope: !3983)
!4125 = !DILocation(line: 1911, column: 30, scope: !3983)
!4126 = !DILocation(line: 1912, column: 13, scope: !3983)
!4127 = !DILocation(line: 1912, column: 18, scope: !3983)
!4128 = !DILocation(line: 1912, column: 39, scope: !3983)
!4129 = !DILocation(line: 1912, column: 38, scope: !3983)
!4130 = !DILocation(line: 1917, column: 17, scope: !3982)
!4131 = !DILocation(line: 1917, column: 30, scope: !3982)
!4132 = !DILocation(line: 1917, column: 68, scope: !3982)
!4133 = !DILocation(line: 1917, column: 73, scope: !3982)
!4134 = !DILocation(line: 1917, column: 82, scope: !3982)
!4135 = !DILocation(line: 1917, column: 87, scope: !3982)
!4136 = !DILocation(line: 1917, column: 101, scope: !3982)
!4137 = !DILocation(line: 1917, column: 106, scope: !3982)
!4138 = !DILocation(line: 1917, column: 114, scope: !3982)
!4139 = !DILocation(line: 1917, column: 119, scope: !3982)
!4140 = !DILocation(line: 1917, column: 38, scope: !3982)
!4141 = !DILocation(line: 1918, column: 21, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 1918, column: 21)
!4143 = !DILocation(line: 1918, column: 26, scope: !4142)
!4144 = !DILocation(line: 1918, column: 44, scope: !4142)
!4145 = !DILocation(line: 1918, column: 47, scope: !4142)
!4146 = !DILocation(line: 1918, column: 52, scope: !4142)
!4147 = !DILocation(line: 1918, column: 21, scope: !3982)
!4148 = !DILocation(line: 1919, column: 48, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 1918, column: 62)
!4150 = !DILocation(line: 1919, column: 21, scope: !4149)
!4151 = !DILocation(line: 1920, column: 17, scope: !4149)
!4152 = !DILocation(line: 1922, column: 34, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 1922, column: 21)
!4154 = !DILocation(line: 1922, column: 21, scope: !4153)
!4155 = !DILocation(line: 1922, column: 21, scope: !3982)
!4156 = !DILocation(line: 1923, column: 28, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 1922, column: 42)
!4158 = !DILocation(line: 1923, column: 21, scope: !4157)
!4159 = !DILocation(line: 1925, column: 21, scope: !3987)
!4160 = !DILocation(line: 1925, column: 27, scope: !3987)
!4161 = !DILocation(line: 1925, column: 21, scope: !3982)
!4162 = !DILocation(line: 1926, column: 21, scope: !3986)
!4163 = !DILocation(line: 1926, column: 34, scope: !3986)
!4164 = !DILocation(line: 1926, column: 43, scope: !3986)
!4165 = !DILocation(line: 1926, column: 51, scope: !3986)
!4166 = !DILocation(line: 1926, column: 56, scope: !3986)
!4167 = !DILocation(line: 1926, column: 49, scope: !3986)
!4168 = !DILocation(line: 1927, column: 21, scope: !3986)
!4169 = !DILocation(line: 1927, column: 34, scope: !3986)
!4170 = !DILocation(line: 1927, column: 60, scope: !3986)
!4171 = !DILocation(line: 1927, column: 65, scope: !3986)
!4172 = !DILocation(line: 1927, column: 64, scope: !3986)
!4173 = !DILocation(line: 1929, column: 25, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1929, column: 25)
!4175 = !DILocation(line: 1929, column: 34, scope: !4174)
!4176 = !DILocation(line: 1929, column: 32, scope: !4174)
!4177 = !DILocation(line: 1929, column: 25, scope: !3986)
!4178 = !DILocation(line: 1930, column: 29, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 1930, column: 29)
!4180 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 1929, column: 50)
!4181 = !DILocation(line: 1930, column: 44, scope: !4179)
!4182 = !DILocation(line: 1930, column: 29, scope: !4180)
!4183 = !DILocation(line: 1931, column: 29, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4179, file: !3, line: 1930, column: 49)
!4185 = !DILocation(line: 1932, column: 44, scope: !4184)
!4186 = !DILocation(line: 1932, column: 29, scope: !4184)
!4187 = !DILocation(line: 1932, column: 34, scope: !4184)
!4188 = !DILocation(line: 1932, column: 41, scope: !4184)
!4189 = !DILocation(line: 1933, column: 25, scope: !4184)
!4190 = !DILocation(line: 1934, column: 38, scope: !4180)
!4191 = !DILocation(line: 1934, column: 45, scope: !4180)
!4192 = !DILocation(line: 1934, column: 25, scope: !4180)
!4193 = !DILocation(line: 1934, column: 32, scope: !4180)
!4194 = !DILocation(line: 1934, column: 36, scope: !4180)
!4195 = !DILocation(line: 1935, column: 33, scope: !4180)
!4196 = !DILocation(line: 1935, column: 93, scope: !4180)
!4197 = !DILocation(line: 1935, column: 98, scope: !4180)
!4198 = !DILocation(line: 1935, column: 91, scope: !4180)
!4199 = !DILocation(line: 1935, column: 106, scope: !4180)
!4200 = !DILocation(line: 1935, column: 25, scope: !4180)
!4201 = !DILocation(line: 1938, column: 21, scope: !3986)
!4202 = !DILocation(line: 1938, column: 93, scope: !3986)
!4203 = !DILocation(line: 1938, column: 79, scope: !3986)
!4204 = !DILocation(line: 1938, column: 84, scope: !3986)
!4205 = !DILocation(line: 1938, column: 91, scope: !3986)
!4206 = !DILocation(line: 1938, column: 106, scope: !3986)
!4207 = !DILocation(line: 1938, column: 103, scope: !3986)
!4208 = !DILocation(line: 1939, column: 21, scope: !3986)
!4209 = !DILocation(line: 1940, column: 13, scope: !3987)
!4210 = !DILocation(line: 1940, column: 17, scope: !3983)
!4211 = !DILocation(line: 1943, column: 17, scope: !3991)
!4212 = !DILocation(line: 1943, column: 22, scope: !3991)
!4213 = !DILocation(line: 1943, column: 30, scope: !3991)
!4214 = !DILocation(line: 1943, column: 47, scope: !3991)
!4215 = !DILocation(line: 1944, column: 17, scope: !3991)
!4216 = !DILocation(line: 1944, column: 20, scope: !3991)
!4217 = !DILocation(line: 1944, column: 25, scope: !3991)
!4218 = !DILocation(line: 1944, column: 33, scope: !3991)
!4219 = !DILocation(line: 1944, column: 43, scope: !3991)
!4220 = !DILocation(line: 1945, column: 17, scope: !3991)
!4221 = !DILocation(line: 1945, column: 34, scope: !3991)
!4222 = !DILocation(line: 1945, column: 39, scope: !3991)
!4223 = !DILocation(line: 1945, column: 38, scope: !3991)
!4224 = !DILocation(line: 1945, column: 46, scope: !3991)
!4225 = !DILocation(line: 1945, column: 51, scope: !3991)
!4226 = !DILocation(line: 1945, column: 59, scope: !3991)
!4227 = !DILocation(line: 1945, column: 43, scope: !3991)
!4228 = !DILocation(line: 1943, column: 17, scope: !3983)
!4229 = !DILocation(line: 1946, column: 17, scope: !3990)
!4230 = !DILocation(line: 1946, column: 30, scope: !3990)
!4231 = !DILocation(line: 1946, column: 67, scope: !3990)
!4232 = !DILocation(line: 1946, column: 84, scope: !3990)
!4233 = !DILocation(line: 1946, column: 89, scope: !3990)
!4234 = !DILocation(line: 1946, column: 88, scope: !3990)
!4235 = !DILocation(line: 1946, column: 38, scope: !3990)
!4236 = !DILocation(line: 1947, column: 21, scope: !3994)
!4237 = !DILocation(line: 1947, column: 39, scope: !3994)
!4238 = !DILocation(line: 1947, column: 44, scope: !3994)
!4239 = !DILocation(line: 1947, column: 43, scope: !3994)
!4240 = !DILocation(line: 1947, column: 27, scope: !3994)
!4241 = !DILocation(line: 1947, column: 21, scope: !3990)
!4242 = !DILocation(line: 1949, column: 21, scope: !3993)
!4243 = !DILocation(line: 1949, column: 34, scope: !3993)
!4244 = !DILocation(line: 1949, column: 80, scope: !3993)
!4245 = !DILocation(line: 1949, column: 85, scope: !3993)
!4246 = !DILocation(line: 1949, column: 98, scope: !3993)
!4247 = !DILocation(line: 1949, column: 103, scope: !3993)
!4248 = !DILocation(line: 1949, column: 102, scope: !3993)
!4249 = !DILocation(line: 1949, column: 108, scope: !3993)
!4250 = !DILocation(line: 1949, column: 116, scope: !3993)
!4251 = !DILocation(line: 1949, column: 137, scope: !3993)
!4252 = !DILocation(line: 1949, column: 123, scope: !3993)
!4253 = !DILocation(line: 1949, column: 53, scope: !3993)
!4254 = !DILocation(line: 1950, column: 38, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 1950, column: 25)
!4256 = !DILocation(line: 1950, column: 25, scope: !4255)
!4257 = !DILocation(line: 1950, column: 25, scope: !3993)
!4258 = !DILocation(line: 1950, column: 64, scope: !4255)
!4259 = !DILocation(line: 1950, column: 57, scope: !4255)
!4260 = !DILocation(line: 1952, column: 26, scope: !3993)
!4261 = !DILocation(line: 1952, column: 35, scope: !3993)
!4262 = !DILocation(line: 1952, column: 33, scope: !3993)
!4263 = !DILocation(line: 1952, column: 24, scope: !3993)
!4264 = !DILocation(line: 1953, column: 27, scope: !3993)
!4265 = !DILocation(line: 1953, column: 24, scope: !3993)
!4266 = !DILocation(line: 1954, column: 21, scope: !3993)
!4267 = !DILocation(line: 1954, column: 26, scope: !3993)
!4268 = !DILocation(line: 1954, column: 35, scope: !3993)
!4269 = !DILocation(line: 1955, column: 21, scope: !3993)
!4270 = !DILocation(line: 1955, column: 26, scope: !3993)
!4271 = !DILocation(line: 1955, column: 38, scope: !3993)
!4272 = !DILocation(line: 1956, column: 34, scope: !3993)
!4273 = !DILocation(line: 1957, column: 21, scope: !3993)
!4274 = !DILocation(line: 1958, column: 13, scope: !3994)
!4275 = !DILocation(line: 1958, column: 17, scope: !3991)
!4276 = !DILocation(line: 1958, column: 17, scope: !3990)
!4277 = !DILocation(line: 1961, column: 17, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1961, column: 17)
!4279 = !DILocation(line: 1961, column: 22, scope: !4278)
!4280 = !DILocation(line: 1961, column: 36, scope: !4278)
!4281 = !DILocation(line: 1962, column: 17, scope: !4278)
!4282 = !DILocation(line: 1962, column: 20, scope: !4278)
!4283 = !DILocation(line: 1962, column: 25, scope: !4278)
!4284 = !DILocation(line: 1962, column: 33, scope: !4278)
!4285 = !DILocation(line: 1962, column: 43, scope: !4278)
!4286 = !DILocation(line: 1963, column: 17, scope: !4278)
!4287 = !DILocation(line: 1963, column: 20, scope: !4278)
!4288 = !DILocation(line: 1963, column: 25, scope: !4278)
!4289 = !DILocation(line: 1963, column: 33, scope: !4278)
!4290 = !DILocation(line: 1963, column: 50, scope: !4278)
!4291 = !DILocation(line: 1964, column: 17, scope: !4278)
!4292 = !DILocation(line: 1964, column: 34, scope: !4278)
!4293 = !DILocation(line: 1964, column: 39, scope: !4278)
!4294 = !DILocation(line: 1964, column: 38, scope: !4278)
!4295 = !DILocation(line: 1964, column: 45, scope: !4278)
!4296 = !DILocation(line: 1964, column: 50, scope: !4278)
!4297 = !DILocation(line: 1964, column: 58, scope: !4278)
!4298 = !DILocation(line: 1964, column: 43, scope: !4278)
!4299 = !DILocation(line: 1961, column: 17, scope: !3983)
!4300 = !DILocation(line: 1965, column: 17, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 1964, column: 76)
!4302 = !DILocation(line: 1965, column: 17, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 1965, column: 17)
!4304 = !DILocation(line: 1966, column: 13, scope: !4301)
!4305 = !DILocation(line: 1970, column: 13, scope: !3983)
!4306 = !DILocation(line: 1970, column: 13, scope: !3996)
!4307 = !DILocation(line: 1970, column: 13, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 1970, column: 13)
!4309 = !DILocation(line: 1970, column: 13, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 1970, column: 13)
!4311 = !DILocation(line: 1972, column: 31, scope: !4000)
!4312 = !DILocation(line: 1972, column: 36, scope: !4000)
!4313 = !DILocation(line: 1972, column: 18, scope: !4000)
!4314 = !DILocation(line: 1972, column: 50, scope: !4000)
!4315 = !DILocation(line: 1972, column: 79, scope: !4000)
!4316 = !DILocation(line: 1972, column: 17, scope: !3983)
!4317 = !DILocation(line: 1973, column: 46, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4000, file: !3, line: 1972, column: 110)
!4319 = !DILocation(line: 1973, column: 51, scope: !4318)
!4320 = !DILocation(line: 1973, column: 64, scope: !4318)
!4321 = !DILocation(line: 1973, column: 33, scope: !4318)
!4322 = !DILocation(line: 1973, column: 17, scope: !4318)
!4323 = !DILocation(line: 1973, column: 22, scope: !4318)
!4324 = !DILocation(line: 1973, column: 31, scope: !4318)
!4325 = !DILocation(line: 1974, column: 17, scope: !4318)
!4326 = !DILocation(line: 1974, column: 22, scope: !4318)
!4327 = !DILocation(line: 1974, column: 28, scope: !4318)
!4328 = !DILocation(line: 1975, column: 13, scope: !4318)
!4329 = !DILocation(line: 1976, column: 17, scope: !3999)
!4330 = !DILocation(line: 1976, column: 17, scope: !3998)
!4331 = !DILocation(line: 1976, column: 17, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 1976, column: 17)
!4333 = !DILocation(line: 1976, column: 17, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 1976, column: 17)
!4335 = !DILocation(line: 1977, column: 17, scope: !3999)
!4336 = !DILocation(line: 1977, column: 22, scope: !3999)
!4337 = !DILocation(line: 1977, column: 31, scope: !3999)
!4338 = !DILocation(line: 1978, column: 17, scope: !3999)
!4339 = !DILocation(line: 1978, column: 22, scope: !3999)
!4340 = !DILocation(line: 1978, column: 28, scope: !3999)
!4341 = !DILocation(line: 1985, column: 39, scope: !3983)
!4342 = !DILocation(line: 1985, column: 13, scope: !3983)
!4343 = !DILocation(line: 1985, column: 18, scope: !3983)
!4344 = !DILocation(line: 1985, column: 26, scope: !3983)
!4345 = !DILocation(line: 1985, column: 37, scope: !3983)
!4346 = !DILocation(line: 1986, column: 13, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1986, column: 13)
!4348 = !DILocation(line: 1986, column: 13, scope: !3983)
!4349 = !DILocation(line: 1986, column: 13, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 1986, column: 13)
!4351 = !DILocation(line: 1990, column: 17, scope: !4002)
!4352 = !DILocation(line: 1990, column: 30, scope: !4002)
!4353 = !DILocation(line: 1990, column: 49, scope: !4002)
!4354 = !DILocation(line: 1991, column: 17, scope: !4002)
!4355 = !DILocation(line: 1991, column: 30, scope: !4002)
!4356 = !DILocation(line: 1991, column: 50, scope: !4002)
!4357 = !DILocation(line: 1991, column: 55, scope: !4002)
!4358 = !DILocation(line: 1991, column: 69, scope: !4002)
!4359 = !DILocation(line: 1992, column: 55, scope: !4002)
!4360 = !DILocation(line: 1992, column: 60, scope: !4002)
!4361 = !DILocation(line: 1992, column: 68, scope: !4002)
!4362 = !DILocation(line: 1992, column: 80, scope: !4002)
!4363 = !DILocation(line: 1992, column: 85, scope: !4002)
!4364 = !DILocation(line: 1992, column: 93, scope: !4002)
!4365 = !DILocation(line: 1992, column: 27, scope: !4002)
!4366 = !DILocation(line: 1995, column: 51, scope: !4002)
!4367 = !DILocation(line: 1995, column: 56, scope: !4002)
!4368 = !DILocation(line: 1995, column: 74, scope: !4002)
!4369 = !DILocation(line: 1995, column: 17, scope: !4002)
!4370 = !DILocation(line: 1997, column: 21, scope: !4005)
!4371 = !DILocation(line: 1997, column: 31, scope: !4005)
!4372 = !DILocation(line: 1997, column: 43, scope: !4005)
!4373 = !DILocation(line: 1997, column: 48, scope: !4005)
!4374 = !DILocation(line: 1997, column: 61, scope: !4005)
!4375 = !DILocation(line: 1997, column: 59, scope: !4005)
!4376 = !DILocation(line: 1997, column: 79, scope: !4005)
!4377 = !DILocation(line: 1997, column: 83, scope: !4005)
!4378 = !DILocation(line: 1997, column: 88, scope: !4005)
!4379 = !DILocation(line: 1997, column: 102, scope: !4005)
!4380 = !DILocation(line: 1997, column: 100, scope: !4005)
!4381 = !DILocation(line: 1998, column: 21, scope: !4005)
!4382 = !DILocation(line: 1998, column: 31, scope: !4005)
!4383 = !DILocation(line: 1998, column: 71, scope: !4005)
!4384 = !DILocation(line: 1998, column: 42, scope: !4005)
!4385 = !DILocation(line: 2000, column: 25, scope: !4009)
!4386 = !DILocation(line: 2000, column: 34, scope: !4009)
!4387 = !DILocation(line: 2000, column: 37, scope: !4009)
!4388 = !DILocation(line: 2000, column: 25, scope: !4005)
!4389 = !DILocation(line: 2001, column: 25, scope: !4008)
!4390 = !DILocation(line: 2001, column: 38, scope: !4008)
!4391 = !DILocation(line: 2001, column: 51, scope: !4008)
!4392 = !DILocation(line: 2001, column: 70, scope: !4008)
!4393 = !DILocation(line: 2001, column: 68, scope: !4008)
!4394 = !DILocation(line: 2006, column: 29, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 2006, column: 29)
!4396 = !DILocation(line: 2006, column: 34, scope: !4395)
!4397 = !DILocation(line: 2006, column: 29, scope: !4008)
!4398 = !DILocation(line: 2009, column: 29, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !3, line: 2009, column: 29)
!4400 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 2006, column: 46)
!4401 = !DILocation(line: 2009, column: 29, scope: !4400)
!4402 = !DILocation(line: 2009, column: 29, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 2009, column: 29)
!4404 = !DILocation(line: 2012, column: 25, scope: !4400)
!4405 = !DILocation(line: 2013, column: 45, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 2012, column: 32)
!4407 = !DILocation(line: 2013, column: 50, scope: !4406)
!4408 = !DILocation(line: 2013, column: 58, scope: !4406)
!4409 = !DILocation(line: 2013, column: 63, scope: !4406)
!4410 = !DILocation(line: 2013, column: 29, scope: !4406)
!4411 = !DILocation(line: 2014, column: 29, scope: !4406)
!4412 = !DILocation(line: 2014, column: 34, scope: !4406)
!4413 = !DILocation(line: 2014, column: 45, scope: !4406)
!4414 = !DILocation(line: 2015, column: 29, scope: !4406)
!4415 = !DILocation(line: 2015, column: 34, scope: !4406)
!4416 = !DILocation(line: 2015, column: 46, scope: !4406)
!4417 = !DILocation(line: 2016, column: 68, scope: !4406)
!4418 = !DILocation(line: 2016, column: 80, scope: !4406)
!4419 = !DILocation(line: 2016, column: 85, scope: !4406)
!4420 = !DILocation(line: 2016, column: 50, scope: !4406)
!4421 = !DILocation(line: 2016, column: 29, scope: !4406)
!4422 = !DILocation(line: 2016, column: 34, scope: !4406)
!4423 = !DILocation(line: 2016, column: 41, scope: !4406)
!4424 = !DILocation(line: 2017, column: 29, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 2017, column: 29)
!4426 = !DILocation(line: 2017, column: 29, scope: !4406)
!4427 = !DILocation(line: 2017, column: 29, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 2017, column: 29)
!4429 = !DILocation(line: 2019, column: 43, scope: !4008)
!4430 = !DILocation(line: 2019, column: 25, scope: !4008)
!4431 = !DILocation(line: 2019, column: 30, scope: !4008)
!4432 = !DILocation(line: 2019, column: 41, scope: !4008)
!4433 = !DILocation(line: 2020, column: 40, scope: !4008)
!4434 = !DILocation(line: 2020, column: 45, scope: !4008)
!4435 = !DILocation(line: 2020, column: 54, scope: !4008)
!4436 = !DILocation(line: 2020, column: 59, scope: !4008)
!4437 = !DILocation(line: 2020, column: 52, scope: !4008)
!4438 = !DILocation(line: 2020, column: 25, scope: !4008)
!4439 = !DILocation(line: 2020, column: 30, scope: !4008)
!4440 = !DILocation(line: 2020, column: 38, scope: !4008)
!4441 = !DILocation(line: 2021, column: 44, scope: !4008)
!4442 = !DILocation(line: 2021, column: 25, scope: !4008)
!4443 = !DILocation(line: 2021, column: 30, scope: !4008)
!4444 = !DILocation(line: 2021, column: 42, scope: !4008)
!4445 = !DILocation(line: 2022, column: 13, scope: !4009)
!4446 = !DILocation(line: 2022, column: 13, scope: !4008)
!4447 = !DILocation(line: 2022, column: 17, scope: !4002)
!4448 = !DILocation(line: 2022, column: 21, scope: !3983)
!4449 = !DILocation(line: 2023, column: 13, scope: !3983)
!4450 = !DILocation(line: 2023, column: 18, scope: !3983)
!4451 = !DILocation(line: 2023, column: 30, scope: !3983)
!4452 = !DILocation(line: 2028, column: 17, scope: !4011)
!4453 = !DILocation(line: 2028, column: 30, scope: !4011)
!4454 = !DILocation(line: 2028, column: 87, scope: !4011)
!4455 = !DILocation(line: 2028, column: 101, scope: !4011)
!4456 = !DILocation(line: 2028, column: 108, scope: !4011)
!4457 = !DILocation(line: 2028, column: 106, scope: !4011)
!4458 = !DILocation(line: 2028, column: 45, scope: !4011)
!4459 = !DILocation(line: 2030, column: 21, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 2030, column: 21)
!4461 = !DILocation(line: 2030, column: 33, scope: !4460)
!4462 = !DILocation(line: 2030, column: 21, scope: !4011)
!4463 = !DILocation(line: 2031, column: 21, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 2030, column: 38)
!4465 = !DILocation(line: 2031, column: 26, scope: !4464)
!4466 = !DILocation(line: 2031, column: 38, scope: !4464)
!4467 = !DILocation(line: 2032, column: 34, scope: !4464)
!4468 = !DILocation(line: 2033, column: 21, scope: !4464)
!4469 = !DILocation(line: 2035, column: 30, scope: !4015)
!4470 = !DILocation(line: 2035, column: 35, scope: !4015)
!4471 = !DILocation(line: 2035, column: 34, scope: !4015)
!4472 = !DILocation(line: 2035, column: 42, scope: !4015)
!4473 = !DILocation(line: 2035, column: 39, scope: !4015)
!4474 = !DILocation(line: 2035, column: 21, scope: !4011)
!4475 = !DILocation(line: 2036, column: 21, scope: !4014)
!4476 = !DILocation(line: 2036, column: 21, scope: !4013)
!4477 = !DILocation(line: 2036, column: 21, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 2036, column: 21)
!4479 = !DILocation(line: 2036, column: 21, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 2036, column: 21)
!4481 = !DILocation(line: 2037, column: 27, scope: !4014)
!4482 = !DILocation(line: 2037, column: 24, scope: !4014)
!4483 = !DILocation(line: 2039, column: 21, scope: !4014)
!4484 = !DILocation(line: 2040, column: 17, scope: !3983)
!4485 = !DILocation(line: 2041, column: 17, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 2041, column: 17)
!4487 = !DILocation(line: 2041, column: 21, scope: !4486)
!4488 = !DILocation(line: 2041, column: 19, scope: !4486)
!4489 = !DILocation(line: 2041, column: 17, scope: !3983)
!4490 = !DILocation(line: 2041, column: 42, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 2041, column: 27)
!4492 = !DILocation(line: 2041, column: 47, scope: !4491)
!4493 = !DILocation(line: 2042, column: 13, scope: !3983)
!4494 = !DILocation(line: 2042, column: 18, scope: !3983)
!4495 = !DILocation(line: 2042, column: 30, scope: !3983)
!4496 = !DILocation(line: 2046, column: 17, scope: !4017)
!4497 = !DILocation(line: 2046, column: 30, scope: !4017)
!4498 = !DILocation(line: 2046, column: 74, scope: !4017)
!4499 = !DILocation(line: 2046, column: 45, scope: !4017)
!4500 = !DILocation(line: 2047, column: 17, scope: !4017)
!4501 = !DILocation(line: 2047, column: 30, scope: !4017)
!4502 = !DILocation(line: 2047, column: 39, scope: !4017)
!4503 = !DILocation(line: 2047, column: 54, scope: !4017)
!4504 = !DILocation(line: 2047, column: 59, scope: !4017)
!4505 = !DILocation(line: 2047, column: 52, scope: !4017)
!4506 = !DILocation(line: 2048, column: 17, scope: !4017)
!4507 = !DILocation(line: 2048, column: 27, scope: !4017)
!4508 = !DILocation(line: 2048, column: 58, scope: !4017)
!4509 = !DILocation(line: 2048, column: 41, scope: !4017)
!4510 = !DILocation(line: 2049, column: 17, scope: !4017)
!4511 = !DILocation(line: 2049, column: 24, scope: !4017)
!4512 = !DILocation(line: 2052, column: 21, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 2052, column: 21)
!4514 = !DILocation(line: 2052, column: 21, scope: !4017)
!4515 = !DILocation(line: 2053, column: 34, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 2052, column: 34)
!4517 = !DILocation(line: 2053, column: 32, scope: !4516)
!4518 = !DILocation(line: 2054, column: 17, scope: !4516)
!4519 = !DILocation(line: 2055, column: 21, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 2055, column: 21)
!4521 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 2054, column: 24)
!4522 = !DILocation(line: 2055, column: 21, scope: !4521)
!4523 = !DILocation(line: 2055, column: 21, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 2055, column: 21)
!4525 = !DILocation(line: 2058, column: 49, scope: !4521)
!4526 = !DILocation(line: 2058, column: 54, scope: !4521)
!4527 = !DILocation(line: 2058, column: 63, scope: !4521)
!4528 = !DILocation(line: 2058, column: 68, scope: !4521)
!4529 = !DILocation(line: 2058, column: 61, scope: !4521)
!4530 = !DILocation(line: 2058, column: 75, scope: !4521)
!4531 = !DILocation(line: 2058, column: 83, scope: !4521)
!4532 = !DILocation(line: 2058, column: 96, scope: !4521)
!4533 = !DILocation(line: 2058, column: 101, scope: !4521)
!4534 = !DILocation(line: 2058, column: 100, scope: !4521)
!4535 = !DILocation(line: 2058, column: 34, scope: !4521)
!4536 = !DILocation(line: 2058, column: 32, scope: !4521)
!4537 = !DILocation(line: 2060, column: 23, scope: !4017)
!4538 = !DILocation(line: 2060, column: 20, scope: !4017)
!4539 = !DILocation(line: 2061, column: 31, scope: !4017)
!4540 = !DILocation(line: 2061, column: 17, scope: !4017)
!4541 = !DILocation(line: 2061, column: 22, scope: !4017)
!4542 = !DILocation(line: 2061, column: 28, scope: !4017)
!4543 = !DILocation(line: 2062, column: 21, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 2062, column: 21)
!4545 = !DILocation(line: 2062, column: 34, scope: !4544)
!4546 = !DILocation(line: 2062, column: 32, scope: !4544)
!4547 = !DILocation(line: 2062, column: 21, scope: !4017)
!4548 = !DILocation(line: 2062, column: 57, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4544, file: !3, line: 2062, column: 42)
!4550 = !DILocation(line: 2062, column: 62, scope: !4549)
!4551 = !DILocation(line: 2065, column: 17, scope: !4017)
!4552 = !DILocation(line: 2065, column: 22, scope: !4017)
!4553 = !DILocation(line: 2065, column: 28, scope: !4017)
!4554 = !DILocation(line: 2066, column: 17, scope: !4017)
!4555 = !DILocation(line: 2066, column: 17, scope: !4022)
!4556 = !DILocation(line: 2066, column: 17, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 2066, column: 17)
!4558 = !DILocation(line: 2066, column: 17, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 2066, column: 17)
!4560 = !DILocation(line: 2068, column: 17, scope: !4017)
!4561 = !DILocation(line: 2069, column: 13, scope: !3983)
!4562 = !DILocation(line: 2071, column: 17, scope: !4024)
!4563 = !DILocation(line: 2071, column: 30, scope: !4024)
!4564 = !DILocation(line: 2071, column: 44, scope: !4024)
!4565 = !DILocation(line: 2071, column: 49, scope: !4024)
!4566 = !DILocation(line: 2071, column: 58, scope: !4024)
!4567 = !DILocation(line: 2071, column: 63, scope: !4024)
!4568 = !DILocation(line: 2071, column: 56, scope: !4024)
!4569 = !DILocation(line: 2072, column: 17, scope: !4024)
!4570 = !DILocation(line: 2072, column: 30, scope: !4024)
!4571 = !DILocation(line: 2072, column: 59, scope: !4024)
!4572 = !DILocation(line: 2072, column: 72, scope: !4024)
!4573 = !DILocation(line: 2072, column: 77, scope: !4024)
!4574 = !DILocation(line: 2072, column: 76, scope: !4024)
!4575 = !DILocation(line: 2072, column: 82, scope: !4024)
!4576 = !DILocation(line: 2072, column: 87, scope: !4024)
!4577 = !DILocation(line: 2072, column: 97, scope: !4024)
!4578 = !DILocation(line: 2072, column: 102, scope: !4024)
!4579 = !DILocation(line: 2072, column: 95, scope: !4024)
!4580 = !DILocation(line: 2072, column: 112, scope: !4024)
!4581 = !DILocation(line: 2072, column: 44, scope: !4024)
!4582 = !DILocation(line: 2073, column: 23, scope: !4024)
!4583 = !DILocation(line: 2073, column: 20, scope: !4024)
!4584 = !DILocation(line: 2074, column: 34, scope: !4024)
!4585 = !DILocation(line: 2074, column: 17, scope: !4024)
!4586 = !DILocation(line: 2074, column: 22, scope: !4024)
!4587 = !DILocation(line: 2074, column: 31, scope: !4024)
!4588 = !DILocation(line: 2075, column: 21, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4024, file: !3, line: 2075, column: 21)
!4590 = !DILocation(line: 2075, column: 36, scope: !4589)
!4591 = !DILocation(line: 2075, column: 33, scope: !4589)
!4592 = !DILocation(line: 2075, column: 21, scope: !4024)
!4593 = !DILocation(line: 2076, column: 21, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 2075, column: 49)
!4595 = !DILocation(line: 2076, column: 26, scope: !4594)
!4596 = !DILocation(line: 2076, column: 38, scope: !4594)
!4597 = !DILocation(line: 2077, column: 27, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 2077, column: 26)
!4599 = !DILocation(line: 2077, column: 32, scope: !4598)
!4600 = !DILocation(line: 2077, column: 46, scope: !4598)
!4601 = !DILocation(line: 2077, column: 51, scope: !4598)
!4602 = !DILocation(line: 2077, column: 59, scope: !4598)
!4603 = !DILocation(line: 2077, column: 44, scope: !4598)
!4604 = !DILocation(line: 2078, column: 23, scope: !4598)
!4605 = !DILocation(line: 2078, column: 27, scope: !4598)
!4606 = !DILocation(line: 2078, column: 32, scope: !4598)
!4607 = !DILocation(line: 2078, column: 43, scope: !4598)
!4608 = !DILocation(line: 2078, column: 48, scope: !4598)
!4609 = !DILocation(line: 2078, column: 56, scope: !4598)
!4610 = !DILocation(line: 2078, column: 41, scope: !4598)
!4611 = !DILocation(line: 2078, column: 71, scope: !4598)
!4612 = !DILocation(line: 2078, column: 76, scope: !4598)
!4613 = !DILocation(line: 2078, column: 69, scope: !4598)
!4614 = !DILocation(line: 2077, column: 26, scope: !4594)
!4615 = !DILocation(line: 2082, column: 41, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 2078, column: 91)
!4617 = !DILocation(line: 2082, column: 46, scope: !4616)
!4618 = !DILocation(line: 2082, column: 53, scope: !4616)
!4619 = !DILocation(line: 2082, column: 25, scope: !4616)
!4620 = !DILocation(line: 2082, column: 30, scope: !4616)
!4621 = !DILocation(line: 2082, column: 39, scope: !4616)
!4622 = !DILocation(line: 2083, column: 21, scope: !4616)
!4623 = !DILocation(line: 2084, column: 21, scope: !4594)
!4624 = !DILocation(line: 2085, column: 17, scope: !3983)
!4625 = !DILocation(line: 2087, column: 26, scope: !3983)
!4626 = !DILocation(line: 2088, column: 13, scope: !3983)
!4627 = !DILocation(line: 2092, column: 13, scope: !3983)
!4628 = !DILocation(line: 2092, column: 13, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 2092, column: 13)
!4630 = !DILocation(line: 2093, column: 5, scope: !3983)
!4631 = distinct !{!4631, !4103, !4632, !1341, !1342}
!4632 = !DILocation(line: 2093, column: 9, scope: !3954)
!4633 = !DILocation(line: 2096, column: 27, scope: !3954)
!4634 = !DILocation(line: 2096, column: 46, scope: !3954)
!4635 = !DILocation(line: 2096, column: 53, scope: !3954)
!4636 = !DILocation(line: 2096, column: 30, scope: !3954)
!4637 = !DILocation(line: 2096, column: 5, scope: !3954)
!4638 = !DILocation(line: 2096, column: 12, scope: !3954)
!4639 = !DILocation(line: 2096, column: 16, scope: !3954)
!4640 = !DILocation(line: 2097, column: 28, scope: !3954)
!4641 = !DILocation(line: 2097, column: 41, scope: !3954)
!4642 = !DILocation(line: 2097, column: 49, scope: !3954)
!4643 = !DILocation(line: 2097, column: 31, scope: !3954)
!4644 = !DILocation(line: 2097, column: 5, scope: !3954)
!4645 = !DILocation(line: 2097, column: 13, scope: !3954)
!4646 = !DILocation(line: 2097, column: 17, scope: !3954)
!4647 = !DILocation(line: 2100, column: 5, scope: !3954)
!4648 = !DILocation(line: 2100, column: 10, scope: !3954)
!4649 = !DILocation(line: 2100, column: 31, scope: !3954)
!4650 = !DILocation(line: 2100, column: 30, scope: !3954)
!4651 = !DILocation(line: 2102, column: 10, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 2102, column: 9)
!4653 = !DILocation(line: 2102, column: 14, scope: !4652)
!4654 = !DILocation(line: 2102, column: 12, scope: !4652)
!4655 = !DILocation(line: 2102, column: 22, scope: !4652)
!4656 = !DILocation(line: 2102, column: 26, scope: !4652)
!4657 = !DILocation(line: 2102, column: 30, scope: !4652)
!4658 = !DILocation(line: 2102, column: 28, scope: !4652)
!4659 = !DILocation(line: 2102, column: 9, scope: !3954)
!4660 = !DILocation(line: 2103, column: 9, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 2102, column: 39)
!4662 = !DILocation(line: 2103, column: 14, scope: !4661)
!4663 = !DILocation(line: 2103, column: 32, scope: !4661)
!4664 = !DILocation(line: 2104, column: 13, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 2104, column: 13)
!4666 = !DILocation(line: 2104, column: 18, scope: !4665)
!4667 = !DILocation(line: 2104, column: 36, scope: !4665)
!4668 = !DILocation(line: 2104, column: 13, scope: !4661)
!4669 = !DILocation(line: 2105, column: 13, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 2105, column: 13)
!4671 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 2104, column: 69)
!4672 = !DILocation(line: 2105, column: 13, scope: !4671)
!4673 = !DILocation(line: 2105, column: 13, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 2105, column: 13)
!4675 = !DILocation(line: 2106, column: 13, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 2106, column: 13)
!4677 = !DILocation(line: 2106, column: 13, scope: !4671)
!4678 = !DILocation(line: 2106, column: 13, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 2106, column: 13)
!4680 = !DILocation(line: 2108, column: 9, scope: !4671)
!4681 = !DILocation(line: 2109, column: 5, scope: !4661)
!4682 = !DILocation(line: 2110, column: 9, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 2109, column: 12)
!4684 = !DILocation(line: 2110, column: 14, scope: !4683)
!4685 = !DILocation(line: 2110, column: 32, scope: !4683)
!4686 = !DILocation(line: 2112, column: 9, scope: !4027)
!4687 = !DILocation(line: 2112, column: 16, scope: !4027)
!4688 = !DILocation(line: 2112, column: 63, scope: !4027)
!4689 = !DILocation(line: 2112, column: 34, scope: !4027)
!4690 = !DILocation(line: 2113, column: 14, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 2113, column: 13)
!4692 = !DILocation(line: 2113, column: 13, scope: !4027)
!4693 = !DILocation(line: 2114, column: 17, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 2114, column: 17)
!4695 = distinct !DILexicalBlock(scope: !4691, file: !3, line: 2113, column: 31)
!4696 = !DILocation(line: 2114, column: 22, scope: !4694)
!4697 = !DILocation(line: 2114, column: 32, scope: !4694)
!4698 = !DILocation(line: 2114, column: 37, scope: !4694)
!4699 = !DILocation(line: 2114, column: 29, scope: !4694)
!4700 = !DILocation(line: 2114, column: 17, scope: !4695)
!4701 = !DILocation(line: 2115, column: 21, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 2115, column: 21)
!4703 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 2114, column: 47)
!4704 = !DILocation(line: 2115, column: 26, scope: !4702)
!4705 = !DILocation(line: 2115, column: 21, scope: !4703)
!4706 = !DILocation(line: 2116, column: 25, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 2116, column: 25)
!4708 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 2115, column: 39)
!4709 = !DILocation(line: 2116, column: 32, scope: !4707)
!4710 = !DILocation(line: 2116, column: 39, scope: !4707)
!4711 = !DILocation(line: 2116, column: 46, scope: !4707)
!4712 = !DILocation(line: 2116, column: 36, scope: !4707)
!4713 = !DILocation(line: 2116, column: 25, scope: !4708)
!4714 = !DILocation(line: 2118, column: 25, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 2116, column: 52)
!4716 = !DILocation(line: 2118, column: 30, scope: !4715)
!4717 = !DILocation(line: 2118, column: 42, scope: !4715)
!4718 = !DILocation(line: 2119, column: 25, scope: !4715)
!4719 = !DILocation(line: 2121, column: 21, scope: !4708)
!4720 = !DILocation(line: 2121, column: 28, scope: !4708)
!4721 = !DILocation(line: 2121, column: 31, scope: !4708)
!4722 = !DILocation(line: 2122, column: 17, scope: !4708)
!4723 = !DILocation(line: 2123, column: 17, scope: !4703)
!4724 = !DILocation(line: 2125, column: 18, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 2125, column: 17)
!4726 = !DILocation(line: 2125, column: 23, scope: !4725)
!4727 = !DILocation(line: 2125, column: 17, scope: !4695)
!4728 = !DILocation(line: 2126, column: 17, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 2125, column: 36)
!4730 = !DILocation(line: 2126, column: 24, scope: !4729)
!4731 = !DILocation(line: 2126, column: 27, scope: !4729)
!4732 = !DILocation(line: 2127, column: 17, scope: !4729)
!4733 = !DILocation(line: 2127, column: 22, scope: !4729)
!4734 = !DILocation(line: 2127, column: 33, scope: !4729)
!4735 = !DILocation(line: 2128, column: 13, scope: !4729)
!4736 = !DILocation(line: 2129, column: 13, scope: !4695)
!4737 = !DILocation(line: 2131, column: 71, scope: !4027)
!4738 = !DILocation(line: 2131, column: 52, scope: !4027)
!4739 = !DILocation(line: 2131, column: 76, scope: !4027)
!4740 = !DILocation(line: 2131, column: 51, scope: !4027)
!4741 = !DILocation(line: 2131, column: 49, scope: !4027)
!4742 = !DILocation(line: 2131, column: 25, scope: !4027)
!4743 = !DILocation(line: 2133, column: 28, scope: !4027)
!4744 = !DILocation(line: 2133, column: 33, scope: !4027)
!4745 = !DILocation(line: 2133, column: 25, scope: !4027)
!4746 = !DILocation(line: 2134, column: 16, scope: !4027)
!4747 = !DILocation(line: 2134, column: 9, scope: !4027)
!4748 = !DILocation(line: 2135, column: 5, scope: !3954)
!4749 = !DILocation(line: 2136, column: 1, scope: !3954)
!4750 = distinct !DISubprogram(name: "ZSTD_checkOutBuffer", scope: !3, file: !3, line: 1827, type: !4751, scopeLine: 1828, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4755)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!205, !3846, !4753}
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!4755 = !{!4756, !4757, !4758}
!4756 = !DILocalVariable(name: "zds", arg: 1, scope: !4750, file: !3, line: 1827, type: !3846)
!4757 = !DILocalVariable(name: "output", arg: 2, scope: !4750, file: !3, line: 1827, type: !4753)
!4758 = !DILocalVariable(name: "expect", scope: !4750, file: !3, line: 1829, type: !4754)
!4759 = !DILocation(line: 1827, column: 55, scope: !4750)
!4760 = !DILocation(line: 1827, column: 82, scope: !4750)
!4761 = !DILocation(line: 1829, column: 5, scope: !4750)
!4762 = !DILocation(line: 1829, column: 26, scope: !4750)
!4763 = !DILocation(line: 1829, column: 35, scope: !4750)
!4764 = !DILocation(line: 1829, column: 40, scope: !4750)
!4765 = !DILocation(line: 1831, column: 9, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 1831, column: 9)
!4767 = !DILocation(line: 1831, column: 14, scope: !4766)
!4768 = !DILocation(line: 1831, column: 28, scope: !4766)
!4769 = !DILocation(line: 1831, column: 9, scope: !4750)
!4770 = !DILocation(line: 1832, column: 9, scope: !4766)
!4771 = !DILocation(line: 1836, column: 9, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 1836, column: 9)
!4773 = !DILocation(line: 1836, column: 14, scope: !4772)
!4774 = !DILocation(line: 1836, column: 26, scope: !4772)
!4775 = !DILocation(line: 1836, column: 9, scope: !4750)
!4776 = !DILocation(line: 1837, column: 9, scope: !4772)
!4777 = !DILocation(line: 1839, column: 16, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 1839, column: 9)
!4779 = !DILocation(line: 1839, column: 23, scope: !4778)
!4780 = !DILocation(line: 1839, column: 31, scope: !4778)
!4781 = !DILocation(line: 1839, column: 20, scope: !4778)
!4782 = !DILocation(line: 1839, column: 35, scope: !4778)
!4783 = !DILocation(line: 1839, column: 45, scope: !4778)
!4784 = !DILocation(line: 1839, column: 52, scope: !4778)
!4785 = !DILocation(line: 1839, column: 60, scope: !4778)
!4786 = !DILocation(line: 1839, column: 49, scope: !4778)
!4787 = !DILocation(line: 1839, column: 64, scope: !4778)
!4788 = !DILocation(line: 1839, column: 74, scope: !4778)
!4789 = !DILocation(line: 1839, column: 82, scope: !4778)
!4790 = !DILocation(line: 1839, column: 90, scope: !4778)
!4791 = !DILocation(line: 1839, column: 79, scope: !4778)
!4792 = !DILocation(line: 1839, column: 9, scope: !4750)
!4793 = !DILocation(line: 1840, column: 9, scope: !4778)
!4794 = !DILocation(line: 1841, column: 5, scope: !4750)
!4795 = !DILocation(line: 1841, column: 5, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 1841, column: 5)
!4797 = !DILocation(line: 1842, column: 1, scope: !4750)
!4798 = distinct !DISubprogram(name: "ZSTD_DCtx_selectFrameDDict", scope: !3, file: !3, line: 341, type: !500, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4799)
!4799 = !{!4800, !4801}
!4800 = !DILocalVariable(name: "dctx", arg: 1, scope: !4798, file: !3, line: 341, type: !130)
!4801 = !DILocalVariable(name: "frameDDict", scope: !4802, file: !3, line: 345, type: !282)
!4802 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 344, column: 22)
!4803 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 344, column: 9)
!4804 = !DILocation(line: 341, column: 51, scope: !4798)
!4805 = !DILocation(line: 344, column: 9, scope: !4803)
!4806 = !DILocation(line: 344, column: 15, scope: !4803)
!4807 = !DILocation(line: 344, column: 9, scope: !4798)
!4808 = !DILocation(line: 345, column: 9, scope: !4802)
!4809 = !DILocation(line: 345, column: 27, scope: !4802)
!4810 = !DILocation(line: 345, column: 67, scope: !4802)
!4811 = !DILocation(line: 345, column: 73, scope: !4802)
!4812 = !DILocation(line: 345, column: 83, scope: !4802)
!4813 = !DILocation(line: 345, column: 89, scope: !4802)
!4814 = !DILocation(line: 345, column: 97, scope: !4802)
!4815 = !DILocation(line: 345, column: 40, scope: !4802)
!4816 = !DILocation(line: 346, column: 13, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 346, column: 13)
!4818 = !DILocation(line: 346, column: 13, scope: !4802)
!4819 = !DILocation(line: 348, column: 28, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 346, column: 25)
!4821 = !DILocation(line: 348, column: 13, scope: !4820)
!4822 = !DILocation(line: 349, column: 28, scope: !4820)
!4823 = !DILocation(line: 349, column: 34, scope: !4820)
!4824 = !DILocation(line: 349, column: 42, scope: !4820)
!4825 = !DILocation(line: 349, column: 13, scope: !4820)
!4826 = !DILocation(line: 349, column: 19, scope: !4820)
!4827 = !DILocation(line: 349, column: 26, scope: !4820)
!4828 = !DILocation(line: 350, column: 27, scope: !4820)
!4829 = !DILocation(line: 350, column: 13, scope: !4820)
!4830 = !DILocation(line: 350, column: 19, scope: !4820)
!4831 = !DILocation(line: 350, column: 25, scope: !4820)
!4832 = !DILocation(line: 351, column: 13, scope: !4820)
!4833 = !DILocation(line: 351, column: 19, scope: !4820)
!4834 = !DILocation(line: 351, column: 28, scope: !4820)
!4835 = !DILocation(line: 352, column: 9, scope: !4820)
!4836 = !DILocation(line: 353, column: 5, scope: !4803)
!4837 = !DILocation(line: 353, column: 5, scope: !4802)
!4838 = !DILocation(line: 354, column: 1, scope: !4798)
!4839 = distinct !DISubprogram(name: "ZSTD_DCtx_updateOversizedDuration", scope: !3, file: !3, line: 1813, type: !4840, scopeLine: 1814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4842)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{null, !3110, !383, !383}
!4842 = !{!4843, !4844, !4845}
!4843 = !DILocalVariable(name: "zds", arg: 1, scope: !4839, file: !3, line: 1813, type: !3110)
!4844 = !DILocalVariable(name: "neededInBuffSize", arg: 2, scope: !4839, file: !3, line: 1813, type: !383)
!4845 = !DILocalVariable(name: "neededOutBuffSize", arg: 3, scope: !4839, file: !3, line: 1813, type: !383)
!4846 = !DILocation(line: 1813, column: 61, scope: !4839)
!4847 = !DILocation(line: 1813, column: 79, scope: !4839)
!4848 = !DILocation(line: 1813, column: 110, scope: !4839)
!4849 = !DILocation(line: 1815, column: 30, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 1815, column: 9)
!4851 = !DILocation(line: 1815, column: 35, scope: !4850)
!4852 = !DILocation(line: 1815, column: 53, scope: !4850)
!4853 = !DILocation(line: 1815, column: 9, scope: !4850)
!4854 = !DILocation(line: 1815, column: 9, scope: !4839)
!4855 = !DILocation(line: 1816, column: 9, scope: !4850)
!4856 = !DILocation(line: 1816, column: 14, scope: !4850)
!4857 = !DILocation(line: 1816, column: 31, scope: !4850)
!4858 = !DILocation(line: 1818, column: 9, scope: !4850)
!4859 = !DILocation(line: 1818, column: 14, scope: !4850)
!4860 = !DILocation(line: 1818, column: 32, scope: !4850)
!4861 = !DILocation(line: 1819, column: 1, scope: !4839)
!4862 = distinct !DISubprogram(name: "ZSTD_DCtx_isOversizedTooLong", scope: !3, file: !3, line: 1821, type: !4863, scopeLine: 1822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4865)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!38, !3110}
!4865 = !{!4866}
!4866 = !DILocalVariable(name: "zds", arg: 1, scope: !4862, file: !3, line: 1821, type: !3110)
!4867 = !DILocation(line: 1821, column: 55, scope: !4862)
!4868 = !DILocation(line: 1823, column: 12, scope: !4862)
!4869 = !DILocation(line: 1823, column: 17, scope: !4862)
!4870 = !DILocation(line: 1823, column: 35, scope: !4862)
!4871 = !DILocation(line: 1823, column: 5, scope: !4862)
!4872 = !DISubprogram(name: "ZSTD_customMalloc", scope: !12, file: !12, line: 348, type: !4873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!129, !205, !259}
!4875 = distinct !DISubprogram(name: "ZSTD_decompressContinueStream", scope: !3, file: !3, line: 1849, type: !4876, scopeLine: 1851, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4879)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!205, !3110, !4878, !302, !199, !205}
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4879 = !{!4880, !4881, !4882, !4883, !4884, !4885, !4886, !4889, !4890, !4892, !4894, !4895}
!4880 = !DILocalVariable(name: "zds", arg: 1, scope: !4875, file: !3, line: 1850, type: !3110)
!4881 = !DILocalVariable(name: "op", arg: 2, scope: !4875, file: !3, line: 1850, type: !4878)
!4882 = !DILocalVariable(name: "oend", arg: 3, scope: !4875, file: !3, line: 1850, type: !302)
!4883 = !DILocalVariable(name: "src", arg: 4, scope: !4875, file: !3, line: 1851, type: !199)
!4884 = !DILocalVariable(name: "srcSize", arg: 5, scope: !4875, file: !3, line: 1851, type: !205)
!4885 = !DILocalVariable(name: "isSkipFrame", scope: !4875, file: !3, line: 1852, type: !2466)
!4886 = !DILocalVariable(name: "dstSize", scope: !4887, file: !3, line: 1854, type: !383)
!4887 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 1853, column: 49)
!4888 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 1853, column: 9)
!4889 = !DILocalVariable(name: "decodedSize", scope: !4887, file: !3, line: 1855, type: !383)
!4890 = !DILocalVariable(name: "err_code", scope: !4891, file: !3, line: 1857, type: !383)
!4891 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 1857, column: 9)
!4892 = !DILocalVariable(name: "dstSize", scope: !4893, file: !3, line: 1866, type: !383)
!4893 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 1864, column: 12)
!4894 = !DILocalVariable(name: "decodedSize", scope: !4893, file: !3, line: 1867, type: !383)
!4895 = !DILocalVariable(name: "err_code", scope: !4896, file: !3, line: 1868, type: !383)
!4896 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 1868, column: 9)
!4897 = !DILocation(line: 1850, column: 27, scope: !4875)
!4898 = !DILocation(line: 1850, column: 39, scope: !4875)
!4899 = !DILocation(line: 1850, column: 49, scope: !4875)
!4900 = !DILocation(line: 1851, column: 25, scope: !4875)
!4901 = !DILocation(line: 1851, column: 37, scope: !4875)
!4902 = !DILocation(line: 1852, column: 5, scope: !4875)
!4903 = !DILocation(line: 1852, column: 15, scope: !4875)
!4904 = !DILocation(line: 1852, column: 46, scope: !4875)
!4905 = !DILocation(line: 1852, column: 29, scope: !4875)
!4906 = !DILocation(line: 1853, column: 9, scope: !4888)
!4907 = !DILocation(line: 1853, column: 14, scope: !4888)
!4908 = !DILocation(line: 1853, column: 28, scope: !4888)
!4909 = !DILocation(line: 1853, column: 9, scope: !4875)
!4910 = !DILocation(line: 1854, column: 9, scope: !4887)
!4911 = !DILocation(line: 1854, column: 22, scope: !4887)
!4912 = !DILocation(line: 1854, column: 32, scope: !4887)
!4913 = !DILocation(line: 1854, column: 50, scope: !4887)
!4914 = !DILocation(line: 1854, column: 55, scope: !4887)
!4915 = !DILocation(line: 1854, column: 69, scope: !4887)
!4916 = !DILocation(line: 1854, column: 74, scope: !4887)
!4917 = !DILocation(line: 1854, column: 67, scope: !4887)
!4918 = !DILocation(line: 1855, column: 9, scope: !4887)
!4919 = !DILocation(line: 1855, column: 22, scope: !4887)
!4920 = !DILocation(line: 1855, column: 60, scope: !4887)
!4921 = !DILocation(line: 1856, column: 17, scope: !4887)
!4922 = !DILocation(line: 1856, column: 22, scope: !4887)
!4923 = !DILocation(line: 1856, column: 32, scope: !4887)
!4924 = !DILocation(line: 1856, column: 37, scope: !4887)
!4925 = !DILocation(line: 1856, column: 30, scope: !4887)
!4926 = !DILocation(line: 1856, column: 47, scope: !4887)
!4927 = !DILocation(line: 1856, column: 56, scope: !4887)
!4928 = !DILocation(line: 1856, column: 61, scope: !4887)
!4929 = !DILocation(line: 1855, column: 36, scope: !4887)
!4930 = !DILocation(line: 1857, column: 9, scope: !4887)
!4931 = !DILocation(line: 1857, column: 9, scope: !4891)
!4932 = !DILocation(line: 1857, column: 9, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 1857, column: 9)
!4934 = !DILocation(line: 1857, column: 9, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 1857, column: 9)
!4936 = !DILocation(line: 1858, column: 14, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 1858, column: 13)
!4938 = !DILocation(line: 1858, column: 26, scope: !4937)
!4939 = !DILocation(line: 1858, column: 30, scope: !4937)
!4940 = !DILocation(line: 1858, column: 13, scope: !4887)
!4941 = !DILocation(line: 1859, column: 13, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 1858, column: 43)
!4943 = !DILocation(line: 1859, column: 18, scope: !4942)
!4944 = !DILocation(line: 1859, column: 30, scope: !4942)
!4945 = !DILocation(line: 1860, column: 9, scope: !4942)
!4946 = !DILocation(line: 1861, column: 27, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 1860, column: 16)
!4948 = !DILocation(line: 1861, column: 32, scope: !4947)
!4949 = !DILocation(line: 1861, column: 43, scope: !4947)
!4950 = !DILocation(line: 1861, column: 41, scope: !4947)
!4951 = !DILocation(line: 1861, column: 13, scope: !4947)
!4952 = !DILocation(line: 1861, column: 18, scope: !4947)
!4953 = !DILocation(line: 1861, column: 25, scope: !4947)
!4954 = !DILocation(line: 1862, column: 13, scope: !4947)
!4955 = !DILocation(line: 1862, column: 18, scope: !4947)
!4956 = !DILocation(line: 1862, column: 30, scope: !4947)
!4957 = !DILocation(line: 1864, column: 5, scope: !4888)
!4958 = !DILocation(line: 1864, column: 5, scope: !4887)
!4959 = !DILocation(line: 1866, column: 9, scope: !4893)
!4960 = !DILocation(line: 1866, column: 22, scope: !4893)
!4961 = !DILocation(line: 1866, column: 32, scope: !4893)
!4962 = !DILocation(line: 1866, column: 59, scope: !4893)
!4963 = !DILocation(line: 1866, column: 67, scope: !4893)
!4964 = !DILocation(line: 1866, column: 66, scope: !4893)
!4965 = !DILocation(line: 1866, column: 64, scope: !4893)
!4966 = !DILocation(line: 1867, column: 9, scope: !4893)
!4967 = !DILocation(line: 1867, column: 22, scope: !4893)
!4968 = !DILocation(line: 1867, column: 60, scope: !4893)
!4969 = !DILocation(line: 1867, column: 66, scope: !4893)
!4970 = !DILocation(line: 1867, column: 65, scope: !4893)
!4971 = !DILocation(line: 1867, column: 70, scope: !4893)
!4972 = !DILocation(line: 1867, column: 79, scope: !4893)
!4973 = !DILocation(line: 1867, column: 84, scope: !4893)
!4974 = !DILocation(line: 1867, column: 36, scope: !4893)
!4975 = !DILocation(line: 1868, column: 9, scope: !4893)
!4976 = !DILocation(line: 1868, column: 9, scope: !4896)
!4977 = !DILocation(line: 1868, column: 9, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 1868, column: 9)
!4979 = !DILocation(line: 1868, column: 9, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 1868, column: 9)
!4981 = !DILocation(line: 1869, column: 16, scope: !4893)
!4982 = !DILocation(line: 1869, column: 10, scope: !4893)
!4983 = !DILocation(line: 1869, column: 13, scope: !4893)
!4984 = !DILocation(line: 1871, column: 9, scope: !4893)
!4985 = !DILocation(line: 1871, column: 14, scope: !4893)
!4986 = !DILocation(line: 1871, column: 26, scope: !4893)
!4987 = !DILocation(line: 1874, column: 5, scope: !4888)
!4988 = !DILocation(line: 1875, column: 5, scope: !4875)
!4989 = !DILocation(line: 1876, column: 1, scope: !4875)
!4990 = distinct !DISubprogram(name: "ZSTD_isSkipFrame", scope: !3, file: !3, line: 1106, type: !4991, scopeLine: 1106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4993)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!38, !130}
!4993 = !{!4994}
!4994 = !DILocalVariable(name: "dctx", arg: 1, scope: !4990, file: !3, line: 1106, type: !130)
!4995 = !DILocation(line: 1106, column: 40, scope: !4990)
!4996 = !DILocation(line: 1106, column: 55, scope: !4990)
!4997 = !DILocation(line: 1106, column: 61, scope: !4990)
!4998 = !DILocation(line: 1106, column: 67, scope: !4990)
!4999 = !DILocation(line: 1106, column: 48, scope: !4990)
!5000 = distinct !DISubprogram(name: "ZSTD_limitCopy", scope: !12, file: !12, line: 247, type: !1916, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5001)
!5001 = !{!5002, !5003, !5004, !5005, !5006}
!5002 = !DILocalVariable(name: "dst", arg: 1, scope: !5000, file: !12, line: 247, type: !129)
!5003 = !DILocalVariable(name: "dstCapacity", arg: 2, scope: !5000, file: !12, line: 247, type: !205)
!5004 = !DILocalVariable(name: "src", arg: 3, scope: !5000, file: !12, line: 247, type: !199)
!5005 = !DILocalVariable(name: "srcSize", arg: 4, scope: !5000, file: !12, line: 247, type: !205)
!5006 = !DILocalVariable(name: "length", scope: !5000, file: !12, line: 249, type: !383)
!5007 = !DILocation(line: 247, column: 40, scope: !5000)
!5008 = !DILocation(line: 247, column: 52, scope: !5000)
!5009 = !DILocation(line: 247, column: 77, scope: !5000)
!5010 = !DILocation(line: 247, column: 89, scope: !5000)
!5011 = !DILocation(line: 249, column: 5, scope: !5000)
!5012 = !DILocation(line: 249, column: 18, scope: !5000)
!5013 = !DILocation(line: 249, column: 27, scope: !5000)
!5014 = !DILocation(line: 250, column: 9, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5000, file: !12, line: 250, column: 9)
!5016 = !DILocation(line: 250, column: 16, scope: !5015)
!5017 = !DILocation(line: 250, column: 9, scope: !5000)
!5018 = !DILocation(line: 251, column: 9, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5015, file: !12, line: 250, column: 21)
!5020 = !DILocation(line: 252, column: 5, scope: !5019)
!5021 = !DILocation(line: 253, column: 12, scope: !5000)
!5022 = !DILocation(line: 254, column: 1, scope: !5000)
!5023 = !DILocation(line: 253, column: 5, scope: !5000)
!5024 = distinct !DISubprogram(name: "ZSTD_decompressStream_simpleArgs", scope: !3, file: !3, line: 2138, type: !5025, scopeLine: 2142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5028)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!205, !130, !129, !205, !5027, !199, !205, !5027}
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!5028 = !{!5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038}
!5029 = !DILocalVariable(name: "dctx", arg: 1, scope: !5024, file: !3, line: 2139, type: !130)
!5030 = !DILocalVariable(name: "dst", arg: 2, scope: !5024, file: !3, line: 2140, type: !129)
!5031 = !DILocalVariable(name: "dstCapacity", arg: 3, scope: !5024, file: !3, line: 2140, type: !205)
!5032 = !DILocalVariable(name: "dstPos", arg: 4, scope: !5024, file: !3, line: 2140, type: !5027)
!5033 = !DILocalVariable(name: "src", arg: 5, scope: !5024, file: !3, line: 2141, type: !199)
!5034 = !DILocalVariable(name: "srcSize", arg: 6, scope: !5024, file: !3, line: 2141, type: !205)
!5035 = !DILocalVariable(name: "srcPos", arg: 7, scope: !5024, file: !3, line: 2141, type: !5027)
!5036 = !DILocalVariable(name: "output", scope: !5024, file: !3, line: 2143, type: !317)
!5037 = !DILocalVariable(name: "input", scope: !5024, file: !3, line: 2144, type: !3959)
!5038 = !DILocalVariable(name: "cErr", scope: !5024, file: !3, line: 2146, type: !383)
!5039 = !DILocation(line: 2139, column: 40, scope: !5024)
!5040 = !DILocation(line: 2140, column: 35, scope: !5024)
!5041 = !DILocation(line: 2140, column: 47, scope: !5024)
!5042 = !DILocation(line: 2140, column: 68, scope: !5024)
!5043 = !DILocation(line: 2141, column: 35, scope: !5024)
!5044 = !DILocation(line: 2141, column: 47, scope: !5024)
!5045 = !DILocation(line: 2141, column: 64, scope: !5024)
!5046 = !DILocation(line: 2143, column: 5, scope: !5024)
!5047 = !DILocation(line: 2143, column: 20, scope: !5024)
!5048 = !DILocation(line: 2143, column: 29, scope: !5024)
!5049 = !DILocation(line: 2143, column: 31, scope: !5024)
!5050 = !DILocation(line: 2143, column: 36, scope: !5024)
!5051 = !DILocation(line: 2143, column: 50, scope: !5024)
!5052 = !DILocation(line: 2143, column: 49, scope: !5024)
!5053 = !DILocation(line: 2144, column: 5, scope: !5024)
!5054 = !DILocation(line: 2144, column: 20, scope: !5024)
!5055 = !DILocation(line: 2144, column: 29, scope: !5024)
!5056 = !DILocation(line: 2144, column: 31, scope: !5024)
!5057 = !DILocation(line: 2144, column: 36, scope: !5024)
!5058 = !DILocation(line: 2144, column: 46, scope: !5024)
!5059 = !DILocation(line: 2144, column: 45, scope: !5024)
!5060 = !DILocation(line: 2146, column: 5, scope: !5024)
!5061 = !DILocation(line: 2146, column: 18, scope: !5024)
!5062 = !DILocation(line: 2146, column: 47, scope: !5024)
!5063 = !DILocation(line: 2146, column: 25, scope: !5024)
!5064 = !DILocation(line: 2147, column: 22, scope: !5024)
!5065 = !DILocation(line: 2147, column: 6, scope: !5024)
!5066 = !DILocation(line: 2147, column: 13, scope: !5024)
!5067 = !DILocation(line: 2148, column: 21, scope: !5024)
!5068 = !DILocation(line: 2148, column: 6, scope: !5024)
!5069 = !DILocation(line: 2148, column: 13, scope: !5024)
!5070 = !DILocation(line: 2149, column: 12, scope: !5024)
!5071 = !DILocation(line: 2150, column: 1, scope: !5024)
!5072 = !DILocation(line: 2149, column: 5, scope: !5024)
!5073 = distinct !DISubprogram(name: "ZSTD_cpuSupportsBmi2", scope: !12, file: !12, line: 436, type: !5074, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5076)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!38}
!5076 = !{!5077}
!5077 = !DILocalVariable(name: "cpuid", scope: !5073, file: !12, line: 438, type: !5078)
!5078 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_cpuid_t", file: !5079, line: 27, baseType: !5080)
!5079 = !DIFile(filename: "lib/zstd/decompress/../common/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "abae1bad2d82d51f6bf4f5a90272a812")
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5079, line: 22, size: 128, elements: !5081)
!5081 = !{!5082, !5083, !5084, !5085}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "f1c", scope: !5080, file: !5079, line: 23, baseType: !158, size: 32)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "f1d", scope: !5080, file: !5079, line: 24, baseType: !158, size: 32, offset: 32)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "f7b", scope: !5080, file: !5079, line: 25, baseType: !158, size: 32, offset: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "f7c", scope: !5080, file: !5079, line: 26, baseType: !158, size: 32, offset: 96)
!5086 = !DILocation(line: 438, column: 5, scope: !5073)
!5087 = !DILocation(line: 438, column: 18, scope: !5073)
!5088 = !DILocation(line: 438, column: 26, scope: !5073)
!5089 = !DILocation(line: 439, column: 12, scope: !5073)
!5090 = !DILocation(line: 439, column: 35, scope: !5073)
!5091 = !DILocation(line: 439, column: 38, scope: !5073)
!5092 = !DILocation(line: 0, scope: !5073)
!5093 = !DILocation(line: 440, column: 1, scope: !5073)
!5094 = !DILocation(line: 439, column: 5, scope: !5073)
!5095 = distinct !DISubprogram(name: "ZSTD_cpuid", scope: !5079, file: !5079, line: 29, type: !5096, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5098)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!5078}
!5098 = !{!5099, !5100, !5101, !5102, !5103, !5104, !5107, !5110}
!5099 = !DILocalVariable(name: "f1c", scope: !5095, file: !5079, line: 30, type: !158)
!5100 = !DILocalVariable(name: "f1d", scope: !5095, file: !5079, line: 31, type: !158)
!5101 = !DILocalVariable(name: "f7b", scope: !5095, file: !5079, line: 32, type: !158)
!5102 = !DILocalVariable(name: "f7c", scope: !5095, file: !5079, line: 33, type: !158)
!5103 = !DILocalVariable(name: "n", scope: !5095, file: !5079, line: 67, type: !158)
!5104 = !DILocalVariable(name: "f1a", scope: !5105, file: !5079, line: 70, type: !158)
!5105 = distinct !DILexicalBlock(scope: !5106, file: !5079, line: 69, column: 17)
!5106 = distinct !DILexicalBlock(scope: !5095, file: !5079, line: 69, column: 9)
!5107 = !DILocalVariable(name: "f7a", scope: !5108, file: !5079, line: 74, type: !158)
!5108 = distinct !DILexicalBlock(scope: !5109, file: !5079, line: 73, column: 17)
!5109 = distinct !DILexicalBlock(scope: !5095, file: !5079, line: 73, column: 9)
!5110 = !DILocalVariable(name: "cpuid", scope: !5111, file: !5079, line: 82, type: !5078)
!5111 = distinct !DILexicalBlock(scope: !5095, file: !5079, line: 81, column: 5)
!5112 = !DILocation(line: 30, column: 5, scope: !5095)
!5113 = !DILocation(line: 30, column: 9, scope: !5095)
!5114 = !DILocation(line: 31, column: 5, scope: !5095)
!5115 = !DILocation(line: 31, column: 9, scope: !5095)
!5116 = !DILocation(line: 32, column: 5, scope: !5095)
!5117 = !DILocation(line: 32, column: 9, scope: !5095)
!5118 = !DILocation(line: 33, column: 5, scope: !5095)
!5119 = !DILocation(line: 33, column: 9, scope: !5095)
!5120 = !DILocation(line: 67, column: 5, scope: !5095)
!5121 = !DILocation(line: 67, column: 9, scope: !5095)
!5122 = !DILocation(line: 68, column: 5, scope: !5095)
!5123 = !{i64 500652}
!5124 = !DILocation(line: 69, column: 9, scope: !5106)
!5125 = !DILocation(line: 69, column: 11, scope: !5106)
!5126 = !DILocation(line: 69, column: 9, scope: !5095)
!5127 = !DILocation(line: 70, column: 7, scope: !5105)
!5128 = !DILocation(line: 70, column: 11, scope: !5105)
!5129 = !DILocation(line: 71, column: 7, scope: !5105)
!5130 = !{i64 500750}
!5131 = !DILocation(line: 72, column: 5, scope: !5106)
!5132 = !DILocation(line: 72, column: 5, scope: !5105)
!5133 = !DILocation(line: 73, column: 9, scope: !5109)
!5134 = !DILocation(line: 73, column: 11, scope: !5109)
!5135 = !DILocation(line: 73, column: 9, scope: !5095)
!5136 = !DILocation(line: 74, column: 7, scope: !5108)
!5137 = !DILocation(line: 74, column: 11, scope: !5108)
!5138 = !DILocation(line: 75, column: 7, scope: !5108)
!5139 = !{i64 500864}
!5140 = !DILocation(line: 79, column: 5, scope: !5109)
!5141 = !DILocation(line: 79, column: 5, scope: !5108)
!5142 = !DILocation(line: 82, column: 22, scope: !5111)
!5143 = !DILocation(line: 83, column: 21, scope: !5111)
!5144 = !DILocation(line: 83, column: 15, scope: !5111)
!5145 = !DILocation(line: 83, column: 19, scope: !5111)
!5146 = !DILocation(line: 84, column: 21, scope: !5111)
!5147 = !DILocation(line: 84, column: 15, scope: !5111)
!5148 = !DILocation(line: 84, column: 19, scope: !5111)
!5149 = !DILocation(line: 85, column: 21, scope: !5111)
!5150 = !DILocation(line: 85, column: 15, scope: !5111)
!5151 = !DILocation(line: 85, column: 19, scope: !5111)
!5152 = !DILocation(line: 86, column: 21, scope: !5111)
!5153 = !DILocation(line: 86, column: 15, scope: !5111)
!5154 = !DILocation(line: 86, column: 19, scope: !5111)
!5155 = !DILocation(line: 89, column: 1, scope: !5095)
!5156 = distinct !DISubprogram(name: "ZSTD_cpuid_bmi1", scope: !5079, file: !5079, line: 162, type: !5157, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5160)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!38, !5159}
!5159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5078)
!5160 = !{!5161}
!5161 = !DILocalVariable(name: "cpuid", arg: 1, scope: !5156, file: !5079, line: 162, type: !5159)
!5162 = !DILocation(line: 162, column: 3, scope: !5156)
!5163 = distinct !DISubprogram(name: "ZSTD_cpuid_bmi2", scope: !5079, file: !5079, line: 166, type: !5157, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5164)
!5164 = !{!5165}
!5165 = !DILocalVariable(name: "cpuid", arg: 1, scope: !5163, file: !5079, line: 166, type: !5159)
!5166 = !DILocation(line: 166, column: 3, scope: !5163)
!5167 = !DISubprogram(name: "ZSTD_freeDDict", scope: !6, file: !6, line: 878, type: !5168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!205, !278}
!5170 = !DILocation(line: 30, column: 50, scope: !345)
!5171 = !DILocation(line: 32, column: 9, scope: !351)
!5172 = !DILocation(line: 32, column: 9, scope: !345)
!5173 = !DILocation(line: 32, column: 2, scope: !345)
!5174 = !DILocation(line: 25, column: 50, scope: !358)
!5175 = !DILocation(line: 27, column: 9, scope: !364)
!5176 = !DILocation(line: 27, column: 9, scope: !358)
!5177 = !DILocation(line: 27, column: 2, scope: !358)
!5178 = !DILocation(line: 35, column: 50, scope: !371)
!5179 = !DILocation(line: 37, column: 9, scope: !377)
!5180 = !DILocation(line: 37, column: 9, scope: !371)
!5181 = !DILocation(line: 37, column: 2, scope: !371)
!5182 = distinct !DISubprogram(name: "ZSTD_errorFrameSizeInfo", scope: !3, file: !3, line: 671, type: !5183, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5185)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!1407, !205}
!5185 = !{!5186, !5187}
!5186 = !DILocalVariable(name: "ret", arg: 1, scope: !5182, file: !3, line: 671, type: !205)
!5187 = !DILocalVariable(name: "frameSizeInfo", scope: !5182, file: !3, line: 673, type: !1407)
!5188 = !DILocation(line: 671, column: 58, scope: !5182)
!5189 = !DILocation(line: 673, column: 24, scope: !5182)
!5190 = !DILocation(line: 674, column: 36, scope: !5182)
!5191 = !DILocation(line: 674, column: 19, scope: !5182)
!5192 = !DILocation(line: 674, column: 34, scope: !5182)
!5193 = !DILocation(line: 675, column: 19, scope: !5182)
!5194 = !DILocation(line: 675, column: 37, scope: !5182)
!5195 = !DILocation(line: 676, column: 5, scope: !5182)
!5196 = distinct !DISubprogram(name: "ZSTD_decompressFrame", scope: !3, file: !3, line: 831, type: !5197, scopeLine: 834, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5200)
!5197 = !DISubroutineType(types: !5198)
!5198 = !{!205, !130, !129, !205, !5199, !5027}
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!5200 = !{!5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5210, !5211, !5212, !5213, !5215, !5217, !5219, !5220, !5221, !5222, !5227}
!5201 = !DILocalVariable(name: "dctx", arg: 1, scope: !5196, file: !3, line: 831, type: !130)
!5202 = !DILocalVariable(name: "dst", arg: 2, scope: !5196, file: !3, line: 832, type: !129)
!5203 = !DILocalVariable(name: "dstCapacity", arg: 3, scope: !5196, file: !3, line: 832, type: !205)
!5204 = !DILocalVariable(name: "srcPtr", arg: 4, scope: !5196, file: !3, line: 833, type: !5199)
!5205 = !DILocalVariable(name: "srcSizePtr", arg: 5, scope: !5196, file: !3, line: 833, type: !5027)
!5206 = !DILocalVariable(name: "istart", scope: !5196, file: !3, line: 835, type: !1451)
!5207 = !DILocalVariable(name: "ip", scope: !5196, file: !3, line: 836, type: !256)
!5208 = !DILocalVariable(name: "ostart", scope: !5196, file: !3, line: 837, type: !5209)
!5209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!5210 = !DILocalVariable(name: "oend", scope: !5196, file: !3, line: 838, type: !5209)
!5211 = !DILocalVariable(name: "op", scope: !5196, file: !3, line: 839, type: !324)
!5212 = !DILocalVariable(name: "remainingSrcSize", scope: !5196, file: !3, line: 840, type: !205)
!5213 = !DILocalVariable(name: "frameHeaderSize", scope: !5214, file: !3, line: 850, type: !383)
!5214 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 850, column: 5)
!5215 = !DILocalVariable(name: "err_code", scope: !5216, file: !3, line: 855, type: !383)
!5216 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 855, column: 9)
!5217 = !DILocalVariable(name: "oBlockEnd", scope: !5218, file: !3, line: 861, type: !324)
!5218 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 860, column: 15)
!5219 = !DILocalVariable(name: "decodedSize", scope: !5218, file: !3, line: 862, type: !205)
!5220 = !DILocalVariable(name: "blockProperties", scope: !5218, file: !3, line: 863, type: !1459)
!5221 = !DILocalVariable(name: "cBlockSize", scope: !5218, file: !3, line: 864, type: !383)
!5222 = !DILocalVariable(name: "checkCalc", scope: !5223, file: !3, line: 923, type: !392)
!5223 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 922, column: 41)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 922, column: 13)
!5225 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 920, column: 37)
!5226 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 920, column: 9)
!5227 = !DILocalVariable(name: "checkRead", scope: !5223, file: !3, line: 924, type: !158)
!5228 = !DILocation(line: 831, column: 47, scope: !5196)
!5229 = !DILocation(line: 832, column: 42, scope: !5196)
!5230 = !DILocation(line: 832, column: 54, scope: !5196)
!5231 = !DILocation(line: 833, column: 43, scope: !5196)
!5232 = !DILocation(line: 833, column: 59, scope: !5196)
!5233 = !DILocation(line: 835, column: 5, scope: !5196)
!5234 = !DILocation(line: 835, column: 23, scope: !5196)
!5235 = !DILocation(line: 835, column: 47, scope: !5196)
!5236 = !DILocation(line: 835, column: 46, scope: !5196)
!5237 = !DILocation(line: 836, column: 5, scope: !5196)
!5238 = !DILocation(line: 836, column: 17, scope: !5196)
!5239 = !DILocation(line: 836, column: 22, scope: !5196)
!5240 = !DILocation(line: 837, column: 5, scope: !5196)
!5241 = !DILocation(line: 837, column: 17, scope: !5196)
!5242 = !DILocation(line: 837, column: 33, scope: !5196)
!5243 = !DILocation(line: 838, column: 5, scope: !5196)
!5244 = !DILocation(line: 838, column: 17, scope: !5196)
!5245 = !DILocation(line: 838, column: 24, scope: !5196)
!5246 = !DILocation(line: 838, column: 36, scope: !5196)
!5247 = !DILocation(line: 838, column: 43, scope: !5196)
!5248 = !DILocation(line: 838, column: 52, scope: !5196)
!5249 = !DILocation(line: 838, column: 50, scope: !5196)
!5250 = !DILocation(line: 838, column: 66, scope: !5196)
!5251 = !DILocation(line: 839, column: 5, scope: !5196)
!5252 = !DILocation(line: 839, column: 11, scope: !5196)
!5253 = !DILocation(line: 839, column: 16, scope: !5196)
!5254 = !DILocation(line: 840, column: 5, scope: !5196)
!5255 = !DILocation(line: 840, column: 12, scope: !5196)
!5256 = !DILocation(line: 840, column: 32, scope: !5196)
!5257 = !DILocation(line: 840, column: 31, scope: !5196)
!5258 = !DILocation(line: 845, column: 5, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 845, column: 5)
!5260 = !DILocation(line: 845, column: 5, scope: !5196)
!5261 = !DILocation(line: 845, column: 5, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 845, column: 5)
!5263 = !DILocation(line: 850, column: 9, scope: !5214)
!5264 = !DILocation(line: 850, column: 22, scope: !5214)
!5265 = !DILocation(line: 851, column: 17, scope: !5214)
!5266 = !DILocation(line: 851, column: 21, scope: !5214)
!5267 = !DILocation(line: 851, column: 64, scope: !5214)
!5268 = !DILocation(line: 851, column: 70, scope: !5214)
!5269 = !DILocation(line: 850, column: 40, scope: !5214)
!5270 = !DILocation(line: 852, column: 26, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 852, column: 13)
!5272 = !DILocation(line: 852, column: 13, scope: !5271)
!5273 = !DILocation(line: 852, column: 13, scope: !5214)
!5274 = !DILocation(line: 852, column: 51, scope: !5271)
!5275 = !DILocation(line: 852, column: 44, scope: !5271)
!5276 = !DILocation(line: 853, column: 9, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 853, column: 9)
!5278 = !DILocation(line: 853, column: 9, scope: !5214)
!5279 = !DILocation(line: 853, column: 9, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 853, column: 9)
!5281 = !DILocation(line: 855, column: 9, scope: !5214)
!5282 = !DILocation(line: 855, column: 9, scope: !5216)
!5283 = !DILocation(line: 855, column: 9, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 855, column: 9)
!5285 = !DILocation(line: 855, column: 9, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 855, column: 9)
!5287 = !DILocation(line: 856, column: 15, scope: !5214)
!5288 = !DILocation(line: 856, column: 12, scope: !5214)
!5289 = !DILocation(line: 856, column: 52, scope: !5214)
!5290 = !DILocation(line: 856, column: 49, scope: !5214)
!5291 = !DILocation(line: 857, column: 5, scope: !5196)
!5292 = !DILocation(line: 860, column: 5, scope: !5196)
!5293 = !DILocation(line: 861, column: 9, scope: !5218)
!5294 = !DILocation(line: 861, column: 15, scope: !5218)
!5295 = !DILocation(line: 861, column: 27, scope: !5218)
!5296 = !DILocation(line: 862, column: 9, scope: !5218)
!5297 = !DILocation(line: 862, column: 16, scope: !5218)
!5298 = !DILocation(line: 863, column: 9, scope: !5218)
!5299 = !DILocation(line: 863, column: 27, scope: !5218)
!5300 = !DILocation(line: 864, column: 9, scope: !5218)
!5301 = !DILocation(line: 864, column: 22, scope: !5218)
!5302 = !DILocation(line: 864, column: 54, scope: !5218)
!5303 = !DILocation(line: 864, column: 58, scope: !5218)
!5304 = !DILocation(line: 864, column: 35, scope: !5218)
!5305 = !DILocation(line: 865, column: 26, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 865, column: 13)
!5307 = !DILocation(line: 865, column: 13, scope: !5306)
!5308 = !DILocation(line: 865, column: 13, scope: !5218)
!5309 = !DILocation(line: 865, column: 46, scope: !5306)
!5310 = !DILocation(line: 865, column: 39, scope: !5306)
!5311 = !DILocation(line: 867, column: 12, scope: !5218)
!5312 = !DILocation(line: 868, column: 26, scope: !5218)
!5313 = !DILocation(line: 869, column: 9, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 869, column: 9)
!5315 = !DILocation(line: 869, column: 9, scope: !5218)
!5316 = !DILocation(line: 869, column: 9, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 869, column: 9)
!5318 = !DILocation(line: 871, column: 13, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 871, column: 13)
!5320 = !DILocation(line: 871, column: 19, scope: !5319)
!5321 = !DILocation(line: 871, column: 16, scope: !5319)
!5322 = !DILocation(line: 871, column: 22, scope: !5319)
!5323 = !DILocation(line: 871, column: 25, scope: !5319)
!5324 = !DILocation(line: 871, column: 30, scope: !5319)
!5325 = !DILocation(line: 871, column: 28, scope: !5319)
!5326 = !DILocation(line: 871, column: 13, scope: !5218)
!5327 = !DILocation(line: 885, column: 25, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 871, column: 41)
!5329 = !DILocation(line: 885, column: 31, scope: !5328)
!5330 = !DILocation(line: 885, column: 36, scope: !5328)
!5331 = !DILocation(line: 885, column: 34, scope: !5328)
!5332 = !DILocation(line: 885, column: 28, scope: !5328)
!5333 = !DILocation(line: 885, column: 23, scope: !5328)
!5334 = !DILocation(line: 886, column: 9, scope: !5328)
!5335 = !DILocation(line: 888, column: 32, scope: !5218)
!5336 = !DILocation(line: 888, column: 9, scope: !5218)
!5337 = !DILocation(line: 891, column: 57, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 889, column: 9)
!5339 = !DILocation(line: 891, column: 63, scope: !5338)
!5340 = !DILocation(line: 891, column: 76, scope: !5338)
!5341 = !DILocation(line: 891, column: 86, scope: !5338)
!5342 = !DILocation(line: 891, column: 85, scope: !5338)
!5343 = !DILocation(line: 891, column: 91, scope: !5338)
!5344 = !DILocation(line: 891, column: 95, scope: !5338)
!5345 = !DILocation(line: 891, column: 27, scope: !5338)
!5346 = !DILocation(line: 891, column: 25, scope: !5338)
!5347 = !DILocation(line: 892, column: 13, scope: !5338)
!5348 = !DILocation(line: 895, column: 45, scope: !5338)
!5349 = !DILocation(line: 895, column: 58, scope: !5338)
!5350 = !DILocation(line: 895, column: 63, scope: !5338)
!5351 = !DILocation(line: 895, column: 62, scope: !5338)
!5352 = !DILocation(line: 895, column: 68, scope: !5338)
!5353 = !DILocation(line: 895, column: 72, scope: !5338)
!5354 = !DILocation(line: 895, column: 27, scope: !5338)
!5355 = !DILocation(line: 895, column: 25, scope: !5338)
!5356 = !DILocation(line: 896, column: 13, scope: !5338)
!5357 = !DILocation(line: 898, column: 44, scope: !5338)
!5358 = !DILocation(line: 898, column: 57, scope: !5338)
!5359 = !DILocation(line: 898, column: 67, scope: !5338)
!5360 = !DILocation(line: 898, column: 66, scope: !5338)
!5361 = !DILocation(line: 898, column: 73, scope: !5338)
!5362 = !DILocation(line: 898, column: 72, scope: !5338)
!5363 = !DILocation(line: 898, column: 93, scope: !5338)
!5364 = !DILocation(line: 898, column: 77, scope: !5338)
!5365 = !DILocation(line: 898, column: 27, scope: !5338)
!5366 = !DILocation(line: 898, column: 25, scope: !5338)
!5367 = !DILocation(line: 899, column: 13, scope: !5338)
!5368 = !DILocation(line: 900, column: 9, scope: !5338)
!5369 = !DILocation(line: 902, column: 13, scope: !5338)
!5370 = !DILocation(line: 902, column: 13, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 902, column: 13)
!5372 = !DILocation(line: 903, column: 9, scope: !5338)
!5373 = !DILocation(line: 905, column: 26, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 905, column: 13)
!5375 = !DILocation(line: 905, column: 13, scope: !5374)
!5376 = !DILocation(line: 905, column: 13, scope: !5218)
!5377 = !DILocation(line: 905, column: 47, scope: !5374)
!5378 = !DILocation(line: 905, column: 40, scope: !5374)
!5379 = !DILocation(line: 906, column: 13, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 906, column: 13)
!5381 = !DILocation(line: 906, column: 19, scope: !5380)
!5382 = !DILocation(line: 906, column: 13, scope: !5218)
!5383 = !DILocation(line: 907, column: 27, scope: !5380)
!5384 = !DILocation(line: 907, column: 33, scope: !5380)
!5385 = !DILocation(line: 907, column: 43, scope: !5380)
!5386 = !DILocation(line: 907, column: 47, scope: !5380)
!5387 = !DILocation(line: 907, column: 13, scope: !5380)
!5388 = !DILocation(line: 908, column: 13, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 908, column: 13)
!5390 = !DILocation(line: 908, column: 25, scope: !5389)
!5391 = !DILocation(line: 908, column: 13, scope: !5218)
!5392 = !DILocation(line: 909, column: 19, scope: !5389)
!5393 = !DILocation(line: 909, column: 16, scope: !5389)
!5394 = !DILocation(line: 909, column: 13, scope: !5389)
!5395 = !DILocation(line: 911, column: 15, scope: !5218)
!5396 = !DILocation(line: 911, column: 12, scope: !5218)
!5397 = !DILocation(line: 912, column: 29, scope: !5218)
!5398 = !DILocation(line: 912, column: 26, scope: !5218)
!5399 = !DILocation(line: 913, column: 29, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 913, column: 13)
!5401 = !DILocation(line: 913, column: 13, scope: !5400)
!5402 = !DILocation(line: 913, column: 13, scope: !5218)
!5403 = !DILocation(line: 913, column: 40, scope: !5400)
!5404 = !DILocation(line: 914, column: 5, scope: !5196)
!5405 = distinct !{!5405, !5292, !5404, !1342}
!5406 = !DILocation(line: 916, column: 9, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 916, column: 9)
!5408 = !DILocation(line: 916, column: 15, scope: !5407)
!5409 = !DILocation(line: 916, column: 23, scope: !5407)
!5410 = !DILocation(line: 916, column: 40, scope: !5407)
!5411 = !DILocation(line: 916, column: 9, scope: !5196)
!5412 = !DILocation(line: 917, column: 9, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 917, column: 9)
!5414 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 916, column: 69)
!5415 = !DILocation(line: 917, column: 9, scope: !5414)
!5416 = !DILocation(line: 917, column: 9, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 917, column: 9)
!5418 = !DILocation(line: 919, column: 5, scope: !5414)
!5419 = !DILocation(line: 920, column: 9, scope: !5226)
!5420 = !DILocation(line: 920, column: 15, scope: !5226)
!5421 = !DILocation(line: 920, column: 23, scope: !5226)
!5422 = !DILocation(line: 920, column: 9, scope: !5196)
!5423 = !DILocation(line: 921, column: 9, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 921, column: 9)
!5425 = !DILocation(line: 921, column: 9, scope: !5225)
!5426 = !DILocation(line: 921, column: 9, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 921, column: 9)
!5428 = !DILocation(line: 922, column: 14, scope: !5224)
!5429 = !DILocation(line: 922, column: 20, scope: !5224)
!5430 = !DILocation(line: 922, column: 13, scope: !5225)
!5431 = !DILocation(line: 923, column: 13, scope: !5223)
!5432 = !DILocation(line: 923, column: 23, scope: !5223)
!5433 = !DILocation(line: 923, column: 54, scope: !5223)
!5434 = !DILocation(line: 923, column: 60, scope: !5223)
!5435 = !DILocation(line: 923, column: 40, scope: !5223)
!5436 = !DILocation(line: 923, column: 35, scope: !5223)
!5437 = !DILocation(line: 924, column: 13, scope: !5223)
!5438 = !DILocation(line: 924, column: 17, scope: !5223)
!5439 = !DILocation(line: 925, column: 38, scope: !5223)
!5440 = !DILocation(line: 925, column: 25, scope: !5223)
!5441 = !DILocation(line: 925, column: 23, scope: !5223)
!5442 = !DILocation(line: 926, column: 13, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 926, column: 13)
!5444 = !DILocation(line: 926, column: 13, scope: !5223)
!5445 = !DILocation(line: 926, column: 13, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 926, column: 13)
!5447 = !DILocation(line: 927, column: 9, scope: !5224)
!5448 = !DILocation(line: 927, column: 9, scope: !5223)
!5449 = !DILocation(line: 928, column: 12, scope: !5225)
!5450 = !DILocation(line: 929, column: 26, scope: !5225)
!5451 = !DILocation(line: 930, column: 5, scope: !5225)
!5452 = !DILocation(line: 931, column: 25, scope: !5196)
!5453 = !DILocation(line: 931, column: 37, scope: !5196)
!5454 = !DILocation(line: 931, column: 40, scope: !5196)
!5455 = !DILocation(line: 931, column: 39, scope: !5196)
!5456 = !DILocation(line: 931, column: 55, scope: !5196)
!5457 = !DILocation(line: 931, column: 58, scope: !5196)
!5458 = !DILocation(line: 931, column: 57, scope: !5196)
!5459 = !DILocation(line: 931, column: 5, scope: !5196)
!5460 = !DILocation(line: 933, column: 15, scope: !5196)
!5461 = !DILocation(line: 933, column: 6, scope: !5196)
!5462 = !DILocation(line: 933, column: 13, scope: !5196)
!5463 = !DILocation(line: 934, column: 19, scope: !5196)
!5464 = !DILocation(line: 934, column: 6, scope: !5196)
!5465 = !DILocation(line: 934, column: 17, scope: !5196)
!5466 = !DILocation(line: 935, column: 21, scope: !5196)
!5467 = !DILocation(line: 935, column: 24, scope: !5196)
!5468 = !DILocation(line: 935, column: 23, scope: !5196)
!5469 = !DILocation(line: 935, column: 5, scope: !5196)
!5470 = !DILocation(line: 936, column: 1, scope: !5196)
!5471 = !DISubprogram(name: "ZSTD_getErrorCode", scope: !64, file: !64, line: 72, type: !5472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!5474, !205}
!5474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_ErrorCode", file: !64, line: 67, baseType: !63)
!5475 = !DISubprogram(name: "xxh64_reset", scope: !237, file: !237, line: 212, type: !5476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{null, !2540, !225}
!5478 = distinct !DISubprogram(name: "ZSTD_refDictContent", scope: !3, file: !3, line: 1270, type: !1642, scopeLine: 1271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5479)
!5479 = !{!5480, !5481, !5482}
!5480 = !DILocalVariable(name: "dctx", arg: 1, scope: !5478, file: !3, line: 1270, type: !130)
!5481 = !DILocalVariable(name: "dict", arg: 2, scope: !5478, file: !3, line: 1270, type: !199)
!5482 = !DILocalVariable(name: "dictSize", arg: 3, scope: !5478, file: !3, line: 1270, type: !205)
!5483 = !DILocation(line: 1270, column: 46, scope: !5478)
!5484 = !DILocation(line: 1270, column: 64, scope: !5478)
!5485 = !DILocation(line: 1270, column: 77, scope: !5478)
!5486 = !DILocation(line: 1272, column: 21, scope: !5478)
!5487 = !DILocation(line: 1272, column: 27, scope: !5478)
!5488 = !DILocation(line: 1272, column: 5, scope: !5478)
!5489 = !DILocation(line: 1272, column: 11, scope: !5478)
!5490 = !DILocation(line: 1272, column: 19, scope: !5478)
!5491 = !DILocation(line: 1273, column: 39, scope: !5478)
!5492 = !DILocation(line: 1273, column: 61, scope: !5478)
!5493 = !DILocation(line: 1273, column: 67, scope: !5478)
!5494 = !DILocation(line: 1273, column: 99, scope: !5478)
!5495 = !DILocation(line: 1273, column: 105, scope: !5478)
!5496 = !DILocation(line: 1273, column: 83, scope: !5478)
!5497 = !DILocation(line: 1273, column: 44, scope: !5478)
!5498 = !DILocation(line: 1273, column: 5, scope: !5478)
!5499 = !DILocation(line: 1273, column: 11, scope: !5478)
!5500 = !DILocation(line: 1273, column: 24, scope: !5478)
!5501 = !DILocation(line: 1274, column: 25, scope: !5478)
!5502 = !DILocation(line: 1274, column: 5, scope: !5478)
!5503 = !DILocation(line: 1274, column: 11, scope: !5478)
!5504 = !DILocation(line: 1274, column: 23, scope: !5478)
!5505 = !DILocation(line: 1275, column: 41, scope: !5478)
!5506 = !DILocation(line: 1275, column: 48, scope: !5478)
!5507 = !DILocation(line: 1275, column: 46, scope: !5478)
!5508 = !DILocation(line: 1275, column: 5, scope: !5478)
!5509 = !DILocation(line: 1275, column: 11, scope: !5478)
!5510 = !DILocation(line: 1275, column: 26, scope: !5478)
!5511 = !DILocation(line: 1280, column: 5, scope: !5478)
!5512 = !DISubprogram(name: "ZSTD_customCalloc", scope: !12, file: !12, line: 349, type: !4873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5513 = distinct !DISubprogram(name: "ZSTD_DDictHashSet_expand", scope: !3, file: !3, line: 123, type: !5514, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5516)
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!205, !289, !259}
!5516 = !{!5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524}
!5517 = !DILocalVariable(name: "hashSet", arg: 1, scope: !5513, file: !3, line: 123, type: !289)
!5518 = !DILocalVariable(name: "customMem", arg: 2, scope: !5513, file: !3, line: 123, type: !259)
!5519 = !DILocalVariable(name: "newTableSize", scope: !5513, file: !3, line: 124, type: !205)
!5520 = !DILocalVariable(name: "newTable", scope: !5513, file: !3, line: 125, type: !294)
!5521 = !DILocalVariable(name: "oldTable", scope: !5513, file: !3, line: 126, type: !294)
!5522 = !DILocalVariable(name: "oldTableSize", scope: !5513, file: !3, line: 127, type: !205)
!5523 = !DILocalVariable(name: "i", scope: !5513, file: !3, line: 128, type: !205)
!5524 = !DILocalVariable(name: "err_code", scope: !5525, file: !3, line: 137, type: !383)
!5525 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 137, column: 13)
!5526 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 136, column: 34)
!5527 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 136, column: 13)
!5528 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 135, column: 40)
!5529 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 135, column: 5)
!5530 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 135, column: 5)
!5531 = !DILocation(line: 123, column: 59, scope: !5513)
!5532 = !DILocation(line: 123, column: 83, scope: !5513)
!5533 = !DILocation(line: 124, column: 5, scope: !5513)
!5534 = !DILocation(line: 124, column: 12, scope: !5513)
!5535 = !DILocation(line: 124, column: 27, scope: !5513)
!5536 = !DILocation(line: 124, column: 36, scope: !5513)
!5537 = !DILocation(line: 124, column: 54, scope: !5513)
!5538 = !DILocation(line: 125, column: 5, scope: !5513)
!5539 = !DILocation(line: 125, column: 24, scope: !5513)
!5540 = !DILocation(line: 125, column: 95, scope: !5513)
!5541 = !DILocation(line: 125, column: 93, scope: !5513)
!5542 = !DILocation(line: 125, column: 55, scope: !5513)
!5543 = !DILocation(line: 126, column: 5, scope: !5513)
!5544 = !DILocation(line: 126, column: 24, scope: !5513)
!5545 = !DILocation(line: 126, column: 35, scope: !5513)
!5546 = !DILocation(line: 126, column: 44, scope: !5513)
!5547 = !DILocation(line: 127, column: 5, scope: !5513)
!5548 = !DILocation(line: 127, column: 12, scope: !5513)
!5549 = !DILocation(line: 127, column: 27, scope: !5513)
!5550 = !DILocation(line: 127, column: 36, scope: !5513)
!5551 = !DILocation(line: 128, column: 5, scope: !5513)
!5552 = !DILocation(line: 128, column: 12, scope: !5513)
!5553 = !DILocation(line: 131, column: 5, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 131, column: 5)
!5555 = !DILocation(line: 131, column: 5, scope: !5513)
!5556 = !DILocation(line: 131, column: 5, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 131, column: 5)
!5558 = !DILocation(line: 132, column: 30, scope: !5513)
!5559 = !DILocation(line: 132, column: 5, scope: !5513)
!5560 = !DILocation(line: 132, column: 14, scope: !5513)
!5561 = !DILocation(line: 132, column: 28, scope: !5513)
!5562 = !DILocation(line: 133, column: 34, scope: !5513)
!5563 = !DILocation(line: 133, column: 5, scope: !5513)
!5564 = !DILocation(line: 133, column: 14, scope: !5513)
!5565 = !DILocation(line: 133, column: 32, scope: !5513)
!5566 = !DILocation(line: 134, column: 5, scope: !5513)
!5567 = !DILocation(line: 134, column: 14, scope: !5513)
!5568 = !DILocation(line: 134, column: 28, scope: !5513)
!5569 = !DILocation(line: 135, column: 12, scope: !5530)
!5570 = !DILocation(line: 135, column: 10, scope: !5530)
!5571 = !DILocation(line: 135, column: 17, scope: !5529)
!5572 = !DILocation(line: 135, column: 21, scope: !5529)
!5573 = !DILocation(line: 135, column: 19, scope: !5529)
!5574 = !DILocation(line: 135, column: 5, scope: !5530)
!5575 = !DILocation(line: 136, column: 13, scope: !5527)
!5576 = !DILocation(line: 136, column: 22, scope: !5527)
!5577 = !DILocation(line: 136, column: 25, scope: !5527)
!5578 = !DILocation(line: 136, column: 13, scope: !5528)
!5579 = !DILocation(line: 137, column: 13, scope: !5526)
!5580 = !DILocation(line: 137, column: 13, scope: !5525)
!5581 = !DILocation(line: 137, column: 13, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 137, column: 13)
!5583 = !DILocation(line: 137, column: 13, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 137, column: 13)
!5585 = !DILocation(line: 138, column: 9, scope: !5526)
!5586 = !DILocation(line: 139, column: 5, scope: !5528)
!5587 = !DILocation(line: 135, column: 35, scope: !5529)
!5588 = !DILocation(line: 135, column: 5, scope: !5529)
!5589 = distinct !{!5589, !5574, !5590, !1341, !1342}
!5590 = !DILocation(line: 139, column: 5, scope: !5530)
!5591 = !DILocation(line: 140, column: 28, scope: !5513)
!5592 = !DILocation(line: 140, column: 5, scope: !5513)
!5593 = !DILocation(line: 142, column: 5, scope: !5513)
!5594 = !DILocation(line: 143, column: 1, scope: !5513)
!5595 = distinct !DISubprogram(name: "ZSTD_DDictHashSet_emplaceDDict", scope: !3, file: !3, line: 97, type: !5596, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5598)
!5596 = !DISubroutineType(types: !5597)
!5597 = !{!205, !289, !282}
!5598 = !{!5599, !5600, !5601, !5602, !5603}
!5599 = !DILocalVariable(name: "hashSet", arg: 1, scope: !5595, file: !3, line: 97, type: !289)
!5600 = !DILocalVariable(name: "ddict", arg: 2, scope: !5595, file: !3, line: 97, type: !282)
!5601 = !DILocalVariable(name: "dictID", scope: !5595, file: !3, line: 98, type: !392)
!5602 = !DILocalVariable(name: "idx", scope: !5595, file: !3, line: 99, type: !205)
!5603 = !DILocalVariable(name: "idxRangeMask", scope: !5595, file: !3, line: 100, type: !383)
!5604 = !DILocation(line: 97, column: 65, scope: !5595)
!5605 = !DILocation(line: 97, column: 92, scope: !5595)
!5606 = !DILocation(line: 98, column: 5, scope: !5595)
!5607 = !DILocation(line: 98, column: 15, scope: !5595)
!5608 = !DILocation(line: 98, column: 49, scope: !5595)
!5609 = !DILocation(line: 98, column: 24, scope: !5595)
!5610 = !DILocation(line: 99, column: 5, scope: !5595)
!5611 = !DILocation(line: 99, column: 12, scope: !5595)
!5612 = !DILocation(line: 99, column: 45, scope: !5595)
!5613 = !DILocation(line: 99, column: 54, scope: !5595)
!5614 = !DILocation(line: 99, column: 18, scope: !5595)
!5615 = !DILocation(line: 100, column: 5, scope: !5595)
!5616 = !DILocation(line: 100, column: 18, scope: !5595)
!5617 = !DILocation(line: 100, column: 33, scope: !5595)
!5618 = !DILocation(line: 100, column: 42, scope: !5595)
!5619 = !DILocation(line: 100, column: 60, scope: !5595)
!5620 = !DILocation(line: 101, column: 5, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 101, column: 5)
!5622 = !DILocation(line: 101, column: 5, scope: !5595)
!5623 = !DILocation(line: 101, column: 5, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 101, column: 5)
!5625 = !DILocation(line: 103, column: 5, scope: !5595)
!5626 = !DILocation(line: 103, column: 12, scope: !5595)
!5627 = !DILocation(line: 103, column: 21, scope: !5595)
!5628 = !DILocation(line: 103, column: 35, scope: !5595)
!5629 = !DILocation(line: 103, column: 40, scope: !5595)
!5630 = !DILocation(line: 105, column: 38, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 105, column: 13)
!5632 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 103, column: 49)
!5633 = !DILocation(line: 105, column: 47, scope: !5631)
!5634 = !DILocation(line: 105, column: 61, scope: !5631)
!5635 = !DILocation(line: 105, column: 13, scope: !5631)
!5636 = !DILocation(line: 105, column: 70, scope: !5631)
!5637 = !DILocation(line: 105, column: 67, scope: !5631)
!5638 = !DILocation(line: 105, column: 13, scope: !5632)
!5639 = !DILocation(line: 107, column: 43, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 105, column: 78)
!5641 = !DILocation(line: 107, column: 13, scope: !5640)
!5642 = !DILocation(line: 107, column: 22, scope: !5640)
!5643 = !DILocation(line: 107, column: 36, scope: !5640)
!5644 = !DILocation(line: 107, column: 41, scope: !5640)
!5645 = !DILocation(line: 108, column: 13, scope: !5640)
!5646 = !DILocation(line: 110, column: 16, scope: !5632)
!5647 = !DILocation(line: 110, column: 13, scope: !5632)
!5648 = !DILocation(line: 111, column: 12, scope: !5632)
!5649 = distinct !{!5649, !5625, !5650, !1341, !1342}
!5650 = !DILocation(line: 112, column: 5, scope: !5595)
!5651 = !DILocation(line: 114, column: 35, scope: !5595)
!5652 = !DILocation(line: 114, column: 5, scope: !5595)
!5653 = !DILocation(line: 114, column: 14, scope: !5595)
!5654 = !DILocation(line: 114, column: 28, scope: !5595)
!5655 = !DILocation(line: 114, column: 33, scope: !5595)
!5656 = !DILocation(line: 115, column: 5, scope: !5595)
!5657 = !DILocation(line: 115, column: 14, scope: !5595)
!5658 = !DILocation(line: 115, column: 27, scope: !5595)
!5659 = !DILocation(line: 116, column: 5, scope: !5595)
!5660 = !DILocation(line: 117, column: 1, scope: !5595)
!5661 = !DISubprogram(name: "ZSTD_getDictID_fromDDict", scope: !6, file: !6, line: 909, type: !5662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5662 = !DISubroutineType(types: !5663)
!5663 = !{!7, !282}
!5664 = distinct !DISubprogram(name: "ZSTD_DDictHashSet_getIndex", scope: !3, file: !3, line: 87, type: !5665, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5669)
!5665 = !DISubroutineType(types: !5666)
!5666 = !{!205, !5667, !158}
!5667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5668, size: 64)
!5668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!5669 = !{!5670, !5671, !5672}
!5670 = !DILocalVariable(name: "hashSet", arg: 1, scope: !5664, file: !3, line: 87, type: !5667)
!5671 = !DILocalVariable(name: "dictID", arg: 2, scope: !5664, file: !3, line: 87, type: !158)
!5672 = !DILocalVariable(name: "hash", scope: !5664, file: !3, line: 88, type: !5673)
!5673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!5674 = !DILocation(line: 87, column: 67, scope: !5664)
!5675 = !DILocation(line: 87, column: 80, scope: !5664)
!5676 = !DILocation(line: 88, column: 5, scope: !5664)
!5677 = !DILocation(line: 88, column: 15, scope: !5664)
!5678 = !DILocation(line: 88, column: 22, scope: !5664)
!5679 = !DILocation(line: 90, column: 12, scope: !5664)
!5680 = !DILocation(line: 90, column: 20, scope: !5664)
!5681 = !DILocation(line: 90, column: 29, scope: !5664)
!5682 = !DILocation(line: 90, column: 47, scope: !5664)
!5683 = !DILocation(line: 90, column: 17, scope: !5664)
!5684 = !DILocation(line: 91, column: 1, scope: !5664)
!5685 = !DILocation(line: 90, column: 5, scope: !5664)
!5686 = !DISubprogram(name: "xxh64", scope: !237, file: !237, line: 108, type: !5687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5687 = !DISubroutineType(types: !5688)
!5688 = !{!225, !199, !205, !225}
!5689 = distinct !DISubprogram(name: "ZSTD_DDictHashSet_getDDict", scope: !3, file: !3, line: 148, type: !5690, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5692)
!5690 = !DISubroutineType(types: !5691)
!5691 = !{!282, !289, !158}
!5692 = !{!5693, !5694, !5695, !5696, !5697}
!5693 = !DILocalVariable(name: "hashSet", arg: 1, scope: !5689, file: !3, line: 148, type: !289)
!5694 = !DILocalVariable(name: "dictID", arg: 2, scope: !5689, file: !3, line: 148, type: !158)
!5695 = !DILocalVariable(name: "idx", scope: !5689, file: !3, line: 149, type: !205)
!5696 = !DILocalVariable(name: "idxRangeMask", scope: !5689, file: !3, line: 150, type: !383)
!5697 = !DILocalVariable(name: "currDictID", scope: !5698, file: !3, line: 153, type: !205)
!5698 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 152, column: 14)
!5699 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 152, column: 5)
!5700 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 152, column: 5)
!5701 = !DILocation(line: 148, column: 72, scope: !5689)
!5702 = !DILocation(line: 148, column: 85, scope: !5689)
!5703 = !DILocation(line: 149, column: 5, scope: !5689)
!5704 = !DILocation(line: 149, column: 12, scope: !5689)
!5705 = !DILocation(line: 149, column: 45, scope: !5689)
!5706 = !DILocation(line: 149, column: 54, scope: !5689)
!5707 = !DILocation(line: 149, column: 18, scope: !5689)
!5708 = !DILocation(line: 150, column: 5, scope: !5689)
!5709 = !DILocation(line: 150, column: 18, scope: !5689)
!5710 = !DILocation(line: 150, column: 33, scope: !5689)
!5711 = !DILocation(line: 150, column: 42, scope: !5689)
!5712 = !DILocation(line: 150, column: 60, scope: !5689)
!5713 = !DILocation(line: 152, column: 5, scope: !5689)
!5714 = !DILocation(line: 153, column: 9, scope: !5698)
!5715 = !DILocation(line: 153, column: 16, scope: !5698)
!5716 = !DILocation(line: 153, column: 54, scope: !5698)
!5717 = !DILocation(line: 153, column: 63, scope: !5698)
!5718 = !DILocation(line: 153, column: 77, scope: !5698)
!5719 = !DILocation(line: 153, column: 29, scope: !5698)
!5720 = !DILocation(line: 154, column: 13, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 154, column: 13)
!5722 = !DILocation(line: 154, column: 27, scope: !5721)
!5723 = !DILocation(line: 154, column: 24, scope: !5721)
!5724 = !DILocation(line: 154, column: 34, scope: !5721)
!5725 = !DILocation(line: 154, column: 37, scope: !5721)
!5726 = !DILocation(line: 154, column: 48, scope: !5721)
!5727 = !DILocation(line: 154, column: 13, scope: !5698)
!5728 = !DILocation(line: 156, column: 13, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 154, column: 54)
!5730 = !DILocation(line: 158, column: 20, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 157, column: 16)
!5732 = !DILocation(line: 158, column: 17, scope: !5731)
!5733 = !DILocation(line: 159, column: 16, scope: !5731)
!5734 = !DILocation(line: 161, column: 5, scope: !5699)
!5735 = !DILocation(line: 152, column: 5, scope: !5699)
!5736 = distinct !{!5736, !5737, !5738, !1342}
!5737 = !DILocation(line: 152, column: 5, scope: !5700)
!5738 = !DILocation(line: 161, column: 5, scope: !5700)
!5739 = !DILocation(line: 163, column: 12, scope: !5689)
!5740 = !DILocation(line: 163, column: 21, scope: !5689)
!5741 = !DILocation(line: 163, column: 35, scope: !5689)
!5742 = !DILocation(line: 164, column: 1, scope: !5689)
!5743 = !DILocation(line: 163, column: 5, scope: !5689)
!5744 = distinct !DISubprogram(name: "ZSTD_DCtx_isOverflow", scope: !3, file: !3, line: 1808, type: !5745, scopeLine: 1809, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5747)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{!38, !3110, !383, !383}
!5747 = !{!5748, !5749, !5750}
!5748 = !DILocalVariable(name: "zds", arg: 1, scope: !5744, file: !3, line: 1808, type: !3110)
!5749 = !DILocalVariable(name: "neededInBuffSize", arg: 2, scope: !5744, file: !3, line: 1808, type: !383)
!5750 = !DILocalVariable(name: "neededOutBuffSize", arg: 3, scope: !5744, file: !3, line: 1808, type: !383)
!5751 = !DILocation(line: 1808, column: 47, scope: !5744)
!5752 = !DILocation(line: 1808, column: 65, scope: !5744)
!5753 = !DILocation(line: 1808, column: 96, scope: !5744)
!5754 = !DILocation(line: 1810, column: 13, scope: !5744)
!5755 = !DILocation(line: 1810, column: 18, scope: !5744)
!5756 = !DILocation(line: 1810, column: 31, scope: !5744)
!5757 = !DILocation(line: 1810, column: 36, scope: !5744)
!5758 = !DILocation(line: 1810, column: 29, scope: !5744)
!5759 = !DILocation(line: 1810, column: 53, scope: !5744)
!5760 = !DILocation(line: 1810, column: 72, scope: !5744)
!5761 = !DILocation(line: 1810, column: 70, scope: !5744)
!5762 = !DILocation(line: 1810, column: 91, scope: !5744)
!5763 = !DILocation(line: 1810, column: 49, scope: !5744)
!5764 = !DILocation(line: 1810, column: 5, scope: !5744)
