; ModuleID = 'lib/zlib_deflate/deflate.c'
source_filename = "lib/zlib_deflate/deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_s = type { i16, i16, i16, i16, ptr }
%struct.z_stream_s = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, i32, i64, i64 }
%struct.deflate_workspace = type { %struct.deflate_state, ptr, ptr, ptr, ptr }
%struct.deflate_state = type { ptr, i32, ptr, i64, ptr, i32, i32, i8, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i64, i64, i64, i32, i32, i16, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc_s = type { ptr, i32, ptr }

@configuration_table = internal constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], align 16, !dbg !0
@.str = private unnamed_addr constant [27 x i8] c"lib/zlib_deflate/deflate.c\00", align 1, !dbg !166

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_deflateInit2(ptr noundef %strm, i32 noundef %level, i32 noundef %method, i32 noundef %windowBits, i32 noundef %memLevel, i32 noundef %strategy) #0 align 16 !dbg !197 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %method.addr = alloca i32, align 4
  %windowBits.addr = alloca i32, align 4
  %memLevel.addr = alloca i32, align 4
  %strategy.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %noheader = alloca i32, align 4
  %mem = alloca ptr, align 8
  %next = alloca ptr, align 8
  %overlay = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !201, metadata !DIExpression()), !dbg !212
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !202, metadata !DIExpression()), !dbg !213
  store i32 %method, ptr %method.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %method.addr, metadata !203, metadata !DIExpression()), !dbg !214
  store i32 %windowBits, ptr %windowBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %windowBits.addr, metadata !204, metadata !DIExpression()), !dbg !215
  store i32 %memLevel, ptr %memLevel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %memLevel.addr, metadata !205, metadata !DIExpression()), !dbg !216
  store i32 %strategy, ptr %strategy.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %strategy.addr, metadata !206, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !218
  call void @llvm.dbg.declare(metadata ptr %s, metadata !207, metadata !DIExpression()), !dbg !219
  call void @llvm.lifetime.start.p0(i64 4, ptr %noheader) #8, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %noheader, metadata !208, metadata !DIExpression()), !dbg !221
  store i32 0, ptr %noheader, align 4, !dbg !221
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #8, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !209, metadata !DIExpression()), !dbg !223
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %next, metadata !210, metadata !DIExpression()), !dbg !225
  call void @llvm.lifetime.start.p0(i64 8, ptr %overlay) #8, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %overlay, metadata !211, metadata !DIExpression()), !dbg !227
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !228
  %cmp = icmp eq ptr %0, null, !dbg !230
  br i1 %cmp, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !232

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !233
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 6, !dbg !234
  store ptr null, ptr %msg, align 8, !dbg !235
  %2 = load i32, ptr %level.addr, align 4, !dbg !236
  %cmp1 = icmp eq i32 %2, -1, !dbg !238
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !239

if.then2:                                         ; preds = %if.end
  store i32 6, ptr %level.addr, align 4, !dbg !240
  br label %if.end3, !dbg !241

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %strm.addr, align 8, !dbg !242
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 8, !dbg !243
  %4 = load ptr, ptr %workspace, align 8, !dbg !243
  store ptr %4, ptr %mem, align 8, !dbg !244
  %5 = load i32, ptr %windowBits.addr, align 4, !dbg !245
  %cmp4 = icmp slt i32 %5, 0, !dbg !247
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !248

if.then5:                                         ; preds = %if.end3
  store i32 1, ptr %noheader, align 4, !dbg !249
  %6 = load i32, ptr %windowBits.addr, align 4, !dbg !251
  %sub = sub i32 0, %6, !dbg !252
  store i32 %sub, ptr %windowBits.addr, align 4, !dbg !253
  br label %if.end6, !dbg !254

if.end6:                                          ; preds = %if.then5, %if.end3
  %7 = load i32, ptr %memLevel.addr, align 4, !dbg !255
  %cmp7 = icmp slt i32 %7, 1, !dbg !257
  br i1 %cmp7, label %if.then23, label %lor.lhs.false, !dbg !258

lor.lhs.false:                                    ; preds = %if.end6
  %8 = load i32, ptr %memLevel.addr, align 4, !dbg !259
  %cmp8 = icmp sgt i32 %8, 8, !dbg !260
  br i1 %cmp8, label %if.then23, label %lor.lhs.false9, !dbg !261

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %9 = load i32, ptr %method.addr, align 4, !dbg !262
  %cmp10 = icmp ne i32 %9, 8, !dbg !263
  br i1 %cmp10, label %if.then23, label %lor.lhs.false11, !dbg !264

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %10 = load i32, ptr %windowBits.addr, align 4, !dbg !265
  %cmp12 = icmp slt i32 %10, 9, !dbg !266
  br i1 %cmp12, label %if.then23, label %lor.lhs.false13, !dbg !267

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %11 = load i32, ptr %windowBits.addr, align 4, !dbg !268
  %cmp14 = icmp sgt i32 %11, 15, !dbg !269
  br i1 %cmp14, label %if.then23, label %lor.lhs.false15, !dbg !270

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %12 = load i32, ptr %level.addr, align 4, !dbg !271
  %cmp16 = icmp slt i32 %12, 0, !dbg !272
  br i1 %cmp16, label %if.then23, label %lor.lhs.false17, !dbg !273

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %13 = load i32, ptr %level.addr, align 4, !dbg !274
  %cmp18 = icmp sgt i32 %13, 9, !dbg !275
  br i1 %cmp18, label %if.then23, label %lor.lhs.false19, !dbg !276

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %14 = load i32, ptr %strategy.addr, align 4, !dbg !277
  %cmp20 = icmp slt i32 %14, 0, !dbg !278
  br i1 %cmp20, label %if.then23, label %lor.lhs.false21, !dbg !279

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %15 = load i32, ptr %strategy.addr, align 4, !dbg !280
  %cmp22 = icmp sgt i32 %15, 2, !dbg !281
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !282

if.then23:                                        ; preds = %lor.lhs.false21, %lor.lhs.false19, %lor.lhs.false17, %lor.lhs.false15, %lor.lhs.false13, %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false, %if.end6
  store i32 -2, ptr %retval, align 4, !dbg !283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !283

if.end24:                                         ; preds = %lor.lhs.false21
  %16 = load ptr, ptr %mem, align 8, !dbg !285
  store ptr %16, ptr %next, align 8, !dbg !286
  %17 = load ptr, ptr %next, align 8, !dbg !287
  %add.ptr = getelementptr i8, ptr %17, i64 5960, !dbg !287
  store ptr %add.ptr, ptr %next, align 8, !dbg !287
  %18 = load ptr, ptr %next, align 8, !dbg !288
  %19 = load ptr, ptr %mem, align 8, !dbg !289
  %window_memory = getelementptr inbounds %struct.deflate_workspace, ptr %19, i32 0, i32 1, !dbg !290
  store ptr %18, ptr %window_memory, align 8, !dbg !291
  %20 = load i32, ptr %windowBits.addr, align 4, !dbg !292
  %shl = shl i32 1, %20, !dbg !292
  %mul = mul i32 2, %shl, !dbg !292
  %conv = sext i32 %mul to i64, !dbg !292
  %mul25 = mul i64 %conv, 1, !dbg !292
  %21 = load ptr, ptr %next, align 8, !dbg !293
  %add.ptr26 = getelementptr i8, ptr %21, i64 %mul25, !dbg !293
  store ptr %add.ptr26, ptr %next, align 8, !dbg !293
  %22 = load ptr, ptr %next, align 8, !dbg !294
  %23 = load ptr, ptr %mem, align 8, !dbg !295
  %prev_memory = getelementptr inbounds %struct.deflate_workspace, ptr %23, i32 0, i32 2, !dbg !296
  store ptr %22, ptr %prev_memory, align 8, !dbg !297
  %24 = load i32, ptr %windowBits.addr, align 4, !dbg !298
  %shl27 = shl i32 1, %24, !dbg !298
  %conv28 = sext i32 %shl27 to i64, !dbg !298
  %mul29 = mul i64 %conv28, 2, !dbg !298
  %25 = load ptr, ptr %next, align 8, !dbg !299
  %add.ptr30 = getelementptr i8, ptr %25, i64 %mul29, !dbg !299
  store ptr %add.ptr30, ptr %next, align 8, !dbg !299
  %26 = load ptr, ptr %next, align 8, !dbg !300
  %27 = load ptr, ptr %mem, align 8, !dbg !301
  %head_memory = getelementptr inbounds %struct.deflate_workspace, ptr %27, i32 0, i32 3, !dbg !302
  store ptr %26, ptr %head_memory, align 8, !dbg !303
  %28 = load i32, ptr %memLevel.addr, align 4, !dbg !304
  %add = add i32 %28, 7, !dbg !304
  %shl31 = shl i32 1, %add, !dbg !304
  %conv32 = sext i32 %shl31 to i64, !dbg !304
  %mul33 = mul i64 %conv32, 2, !dbg !304
  %29 = load ptr, ptr %next, align 8, !dbg !305
  %add.ptr34 = getelementptr i8, ptr %29, i64 %mul33, !dbg !305
  store ptr %add.ptr34, ptr %next, align 8, !dbg !305
  %30 = load ptr, ptr %next, align 8, !dbg !306
  %31 = load ptr, ptr %mem, align 8, !dbg !307
  %overlay_memory = getelementptr inbounds %struct.deflate_workspace, ptr %31, i32 0, i32 4, !dbg !308
  store ptr %30, ptr %overlay_memory, align 8, !dbg !309
  %32 = load ptr, ptr %mem, align 8, !dbg !310
  %deflate_memory = getelementptr inbounds %struct.deflate_workspace, ptr %32, i32 0, i32 0, !dbg !311
  store ptr %deflate_memory, ptr %s, align 8, !dbg !312
  %33 = load ptr, ptr %s, align 8, !dbg !313
  %34 = load ptr, ptr %strm.addr, align 8, !dbg !314
  %state = getelementptr inbounds %struct.z_stream_s, ptr %34, i32 0, i32 7, !dbg !315
  store ptr %33, ptr %state, align 8, !dbg !316
  %35 = load ptr, ptr %strm.addr, align 8, !dbg !317
  %36 = load ptr, ptr %s, align 8, !dbg !318
  %strm35 = getelementptr inbounds %struct.deflate_state, ptr %36, i32 0, i32 0, !dbg !319
  store ptr %35, ptr %strm35, align 8, !dbg !320
  %37 = load i32, ptr %noheader, align 4, !dbg !321
  %38 = load ptr, ptr %s, align 8, !dbg !322
  %noheader36 = getelementptr inbounds %struct.deflate_state, ptr %38, i32 0, i32 6, !dbg !323
  store i32 %37, ptr %noheader36, align 4, !dbg !324
  %39 = load i32, ptr %windowBits.addr, align 4, !dbg !325
  %40 = load ptr, ptr %s, align 8, !dbg !326
  %w_bits = getelementptr inbounds %struct.deflate_state, ptr %40, i32 0, i32 11, !dbg !327
  store i32 %39, ptr %w_bits, align 4, !dbg !328
  %41 = load ptr, ptr %s, align 8, !dbg !329
  %w_bits37 = getelementptr inbounds %struct.deflate_state, ptr %41, i32 0, i32 11, !dbg !330
  %42 = load i32, ptr %w_bits37, align 4, !dbg !330
  %shl38 = shl i32 1, %42, !dbg !331
  %43 = load ptr, ptr %s, align 8, !dbg !332
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %43, i32 0, i32 10, !dbg !333
  store i32 %shl38, ptr %w_size, align 8, !dbg !334
  %44 = load ptr, ptr %s, align 8, !dbg !335
  %w_size39 = getelementptr inbounds %struct.deflate_state, ptr %44, i32 0, i32 10, !dbg !336
  %45 = load i32, ptr %w_size39, align 8, !dbg !336
  %sub40 = sub i32 %45, 1, !dbg !337
  %46 = load ptr, ptr %s, align 8, !dbg !338
  %w_mask = getelementptr inbounds %struct.deflate_state, ptr %46, i32 0, i32 12, !dbg !339
  store i32 %sub40, ptr %w_mask, align 8, !dbg !340
  %47 = load i32, ptr %memLevel.addr, align 4, !dbg !341
  %add41 = add i32 %47, 7, !dbg !342
  %48 = load ptr, ptr %s, align 8, !dbg !343
  %hash_bits = getelementptr inbounds %struct.deflate_state, ptr %48, i32 0, i32 19, !dbg !344
  store i32 %add41, ptr %hash_bits, align 8, !dbg !345
  %49 = load ptr, ptr %s, align 8, !dbg !346
  %hash_bits42 = getelementptr inbounds %struct.deflate_state, ptr %49, i32 0, i32 19, !dbg !347
  %50 = load i32, ptr %hash_bits42, align 8, !dbg !347
  %shl43 = shl i32 1, %50, !dbg !348
  %51 = load ptr, ptr %s, align 8, !dbg !349
  %hash_size = getelementptr inbounds %struct.deflate_state, ptr %51, i32 0, i32 18, !dbg !350
  store i32 %shl43, ptr %hash_size, align 4, !dbg !351
  %52 = load ptr, ptr %s, align 8, !dbg !352
  %hash_size44 = getelementptr inbounds %struct.deflate_state, ptr %52, i32 0, i32 18, !dbg !353
  %53 = load i32, ptr %hash_size44, align 4, !dbg !353
  %sub45 = sub i32 %53, 1, !dbg !354
  %54 = load ptr, ptr %s, align 8, !dbg !355
  %hash_mask = getelementptr inbounds %struct.deflate_state, ptr %54, i32 0, i32 20, !dbg !356
  store i32 %sub45, ptr %hash_mask, align 4, !dbg !357
  %55 = load ptr, ptr %s, align 8, !dbg !358
  %hash_bits46 = getelementptr inbounds %struct.deflate_state, ptr %55, i32 0, i32 19, !dbg !359
  %56 = load i32, ptr %hash_bits46, align 8, !dbg !359
  %add47 = add i32 %56, 3, !dbg !360
  %sub48 = sub i32 %add47, 1, !dbg !361
  %div = udiv i32 %sub48, 3, !dbg !362
  %57 = load ptr, ptr %s, align 8, !dbg !363
  %hash_shift = getelementptr inbounds %struct.deflate_state, ptr %57, i32 0, i32 21, !dbg !364
  store i32 %div, ptr %hash_shift, align 8, !dbg !365
  %58 = load ptr, ptr %mem, align 8, !dbg !366
  %window_memory49 = getelementptr inbounds %struct.deflate_workspace, ptr %58, i32 0, i32 1, !dbg !367
  %59 = load ptr, ptr %window_memory49, align 8, !dbg !367
  %60 = load ptr, ptr %s, align 8, !dbg !368
  %window = getelementptr inbounds %struct.deflate_state, ptr %60, i32 0, i32 13, !dbg !369
  store ptr %59, ptr %window, align 8, !dbg !370
  %61 = load ptr, ptr %mem, align 8, !dbg !371
  %prev_memory50 = getelementptr inbounds %struct.deflate_workspace, ptr %61, i32 0, i32 2, !dbg !372
  %62 = load ptr, ptr %prev_memory50, align 8, !dbg !372
  %63 = load ptr, ptr %s, align 8, !dbg !373
  %prev = getelementptr inbounds %struct.deflate_state, ptr %63, i32 0, i32 15, !dbg !374
  store ptr %62, ptr %prev, align 8, !dbg !375
  %64 = load ptr, ptr %mem, align 8, !dbg !376
  %head_memory51 = getelementptr inbounds %struct.deflate_workspace, ptr %64, i32 0, i32 3, !dbg !377
  %65 = load ptr, ptr %head_memory51, align 8, !dbg !377
  %66 = load ptr, ptr %s, align 8, !dbg !378
  %head = getelementptr inbounds %struct.deflate_state, ptr %66, i32 0, i32 16, !dbg !379
  store ptr %65, ptr %head, align 8, !dbg !380
  %67 = load i32, ptr %memLevel.addr, align 4, !dbg !381
  %add52 = add i32 %67, 6, !dbg !382
  %shl53 = shl i32 1, %add52, !dbg !383
  %68 = load ptr, ptr %s, align 8, !dbg !384
  %lit_bufsize = getelementptr inbounds %struct.deflate_state, ptr %68, i32 0, i32 48, !dbg !385
  store i32 %shl53, ptr %lit_bufsize, align 8, !dbg !386
  %69 = load ptr, ptr %mem, align 8, !dbg !387
  %overlay_memory54 = getelementptr inbounds %struct.deflate_workspace, ptr %69, i32 0, i32 4, !dbg !388
  %70 = load ptr, ptr %overlay_memory54, align 8, !dbg !388
  store ptr %70, ptr %overlay, align 8, !dbg !389
  %71 = load ptr, ptr %overlay, align 8, !dbg !390
  %72 = load ptr, ptr %s, align 8, !dbg !391
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %72, i32 0, i32 2, !dbg !392
  store ptr %71, ptr %pending_buf, align 8, !dbg !393
  %73 = load ptr, ptr %s, align 8, !dbg !394
  %lit_bufsize55 = getelementptr inbounds %struct.deflate_state, ptr %73, i32 0, i32 48, !dbg !395
  %74 = load i32, ptr %lit_bufsize55, align 8, !dbg !395
  %conv56 = zext i32 %74 to i64, !dbg !396
  %mul57 = mul i64 %conv56, 4, !dbg !397
  %75 = load ptr, ptr %s, align 8, !dbg !398
  %pending_buf_size = getelementptr inbounds %struct.deflate_state, ptr %75, i32 0, i32 3, !dbg !399
  store i64 %mul57, ptr %pending_buf_size, align 8, !dbg !400
  %76 = load ptr, ptr %overlay, align 8, !dbg !401
  %77 = load ptr, ptr %s, align 8, !dbg !402
  %lit_bufsize58 = getelementptr inbounds %struct.deflate_state, ptr %77, i32 0, i32 48, !dbg !403
  %78 = load i32, ptr %lit_bufsize58, align 8, !dbg !403
  %conv59 = zext i32 %78 to i64, !dbg !402
  %div60 = udiv i64 %conv59, 2, !dbg !404
  %add.ptr61 = getelementptr i16, ptr %76, i64 %div60, !dbg !405
  %79 = load ptr, ptr %s, align 8, !dbg !406
  %d_buf = getelementptr inbounds %struct.deflate_state, ptr %79, i32 0, i32 50, !dbg !407
  store ptr %add.ptr61, ptr %d_buf, align 8, !dbg !408
  %80 = load ptr, ptr %s, align 8, !dbg !409
  %pending_buf62 = getelementptr inbounds %struct.deflate_state, ptr %80, i32 0, i32 2, !dbg !410
  %81 = load ptr, ptr %pending_buf62, align 8, !dbg !410
  %82 = load ptr, ptr %s, align 8, !dbg !411
  %lit_bufsize63 = getelementptr inbounds %struct.deflate_state, ptr %82, i32 0, i32 48, !dbg !412
  %83 = load i32, ptr %lit_bufsize63, align 8, !dbg !412
  %conv64 = zext i32 %83 to i64, !dbg !411
  %mul65 = mul i64 3, %conv64, !dbg !413
  %add.ptr66 = getelementptr i8, ptr %81, i64 %mul65, !dbg !414
  %84 = load ptr, ptr %s, align 8, !dbg !415
  %l_buf = getelementptr inbounds %struct.deflate_state, ptr %84, i32 0, i32 47, !dbg !416
  store ptr %add.ptr66, ptr %l_buf, align 8, !dbg !417
  %85 = load i32, ptr %level.addr, align 4, !dbg !418
  %86 = load ptr, ptr %s, align 8, !dbg !419
  %level67 = getelementptr inbounds %struct.deflate_state, ptr %86, i32 0, i32 32, !dbg !420
  store i32 %85, ptr %level67, align 4, !dbg !421
  %87 = load i32, ptr %strategy.addr, align 4, !dbg !422
  %88 = load ptr, ptr %s, align 8, !dbg !423
  %strategy68 = getelementptr inbounds %struct.deflate_state, ptr %88, i32 0, i32 33, !dbg !424
  store i32 %87, ptr %strategy68, align 8, !dbg !425
  %89 = load i32, ptr %method.addr, align 4, !dbg !426
  %conv69 = trunc i32 %89 to i8, !dbg !427
  %90 = load ptr, ptr %s, align 8, !dbg !428
  %method70 = getelementptr inbounds %struct.deflate_state, ptr %90, i32 0, i32 8, !dbg !429
  store i8 %conv69, ptr %method70, align 1, !dbg !430
  %91 = load ptr, ptr %strm.addr, align 8, !dbg !431
  %call = call i32 @zlib_deflateReset(ptr noundef %91) #9, !dbg !432
  store i32 %call, ptr %retval, align 4, !dbg !433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !433

cleanup:                                          ; preds = %if.end24, %if.then23, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %overlay) #8, !dbg !434
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8, !dbg !434
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #8, !dbg !434
  call void @llvm.lifetime.end.p0(i64 4, ptr %noheader) #8, !dbg !434
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !434
  %92 = load i32, ptr %retval, align 4, !dbg !434
  ret i32 %92, !dbg !434
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_deflateReset(ptr noundef %strm) #0 align 16 !dbg !435 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !439, metadata !DIExpression()), !dbg !441
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !442
  call void @llvm.dbg.declare(metadata ptr %s, metadata !440, metadata !DIExpression()), !dbg !443
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !444
  %cmp = icmp eq ptr %0, null, !dbg !446
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !447

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !448
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7, !dbg !449
  %2 = load ptr, ptr %state, align 8, !dbg !449
  %cmp1 = icmp eq ptr %2, null, !dbg !450
  br i1 %cmp1, label %if.then, label %if.end, !dbg !451

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4, !dbg !452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !452

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8, !dbg !453
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 5, !dbg !454
  store i64 0, ptr %total_out, align 8, !dbg !455
  %4 = load ptr, ptr %strm.addr, align 8, !dbg !456
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 2, !dbg !457
  store i64 0, ptr %total_in, align 8, !dbg !458
  %5 = load ptr, ptr %strm.addr, align 8, !dbg !459
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 6, !dbg !460
  store ptr null, ptr %msg, align 8, !dbg !461
  %6 = load ptr, ptr %strm.addr, align 8, !dbg !462
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 9, !dbg !463
  store i32 2, ptr %data_type, align 8, !dbg !464
  %7 = load ptr, ptr %strm.addr, align 8, !dbg !465
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 7, !dbg !466
  %8 = load ptr, ptr %state2, align 8, !dbg !466
  store ptr %8, ptr %s, align 8, !dbg !467
  %9 = load ptr, ptr %s, align 8, !dbg !468
  %pending = getelementptr inbounds %struct.deflate_state, ptr %9, i32 0, i32 5, !dbg !469
  store i32 0, ptr %pending, align 8, !dbg !470
  %10 = load ptr, ptr %s, align 8, !dbg !471
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %10, i32 0, i32 2, !dbg !472
  %11 = load ptr, ptr %pending_buf, align 8, !dbg !472
  %12 = load ptr, ptr %s, align 8, !dbg !473
  %pending_out = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 4, !dbg !474
  store ptr %11, ptr %pending_out, align 8, !dbg !475
  %13 = load ptr, ptr %s, align 8, !dbg !476
  %noheader = getelementptr inbounds %struct.deflate_state, ptr %13, i32 0, i32 6, !dbg !478
  %14 = load i32, ptr %noheader, align 4, !dbg !478
  %cmp3 = icmp slt i32 %14, 0, !dbg !479
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !480

if.then4:                                         ; preds = %if.end
  %15 = load ptr, ptr %s, align 8, !dbg !481
  %noheader5 = getelementptr inbounds %struct.deflate_state, ptr %15, i32 0, i32 6, !dbg !483
  store i32 0, ptr %noheader5, align 4, !dbg !484
  br label %if.end6, !dbg !485

if.end6:                                          ; preds = %if.then4, %if.end
  %16 = load ptr, ptr %s, align 8, !dbg !486
  %noheader7 = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 6, !dbg !487
  %17 = load i32, ptr %noheader7, align 4, !dbg !487
  %tobool = icmp ne i32 %17, 0, !dbg !486
  %18 = zext i1 %tobool to i64, !dbg !486
  %cond = select i1 %tobool, i32 113, i32 42, !dbg !486
  %19 = load ptr, ptr %s, align 8, !dbg !488
  %status = getelementptr inbounds %struct.deflate_state, ptr %19, i32 0, i32 1, !dbg !489
  store i32 %cond, ptr %status, align 8, !dbg !490
  %20 = load ptr, ptr %strm.addr, align 8, !dbg !491
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %20, i32 0, i32 10, !dbg !492
  store i64 1, ptr %adler, align 8, !dbg !493
  %21 = load ptr, ptr %s, align 8, !dbg !494
  %last_flush = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 9, !dbg !495
  store i32 0, ptr %last_flush, align 4, !dbg !496
  %22 = load ptr, ptr %s, align 8, !dbg !497
  call void @zlib_tr_init(ptr noundef %22) #9, !dbg !498
  %23 = load ptr, ptr %s, align 8, !dbg !499
  call void @lm_init(ptr noundef %23) #9, !dbg !500
  br label %do.body, !dbg !501

do.body:                                          ; preds = %if.end6
  br label %do.cond, !dbg !502

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !502

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4, !dbg !504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !504

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !505
  %24 = load i32, ptr %retval, align 4, !dbg !505
  ret i32 %24, !dbg !505
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !506 dso_local void @zlib_tr_init(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lm_init(ptr noundef %s) #0 align 16 !dbg !509 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !511, metadata !DIExpression()), !dbg !512
  %0 = load ptr, ptr %s.addr, align 8, !dbg !513
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 10, !dbg !514
  %1 = load i32, ptr %w_size, align 8, !dbg !514
  %conv = zext i32 %1 to i64, !dbg !513
  %mul = mul i64 2, %conv, !dbg !515
  %2 = load ptr, ptr %s.addr, align 8, !dbg !516
  %window_size = getelementptr inbounds %struct.deflate_state, ptr %2, i32 0, i32 14, !dbg !517
  store i64 %mul, ptr %window_size, align 8, !dbg !518
  %3 = load ptr, ptr %s.addr, align 8, !dbg !519
  %head = getelementptr inbounds %struct.deflate_state, ptr %3, i32 0, i32 16, !dbg !519
  %4 = load ptr, ptr %head, align 8, !dbg !519
  %5 = load ptr, ptr %s.addr, align 8, !dbg !519
  %hash_size = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 18, !dbg !519
  %6 = load i32, ptr %hash_size, align 4, !dbg !519
  %sub = sub i32 %6, 1, !dbg !519
  %idxprom = zext i32 %sub to i64, !dbg !519
  %arrayidx = getelementptr i16, ptr %4, i64 %idxprom, !dbg !519
  store i16 0, ptr %arrayidx, align 2, !dbg !519
  %7 = load ptr, ptr %s.addr, align 8, !dbg !519
  %head1 = getelementptr inbounds %struct.deflate_state, ptr %7, i32 0, i32 16, !dbg !519
  %8 = load ptr, ptr %head1, align 8, !dbg !519
  %9 = load ptr, ptr %s.addr, align 8, !dbg !519
  %hash_size2 = getelementptr inbounds %struct.deflate_state, ptr %9, i32 0, i32 18, !dbg !519
  %10 = load i32, ptr %hash_size2, align 4, !dbg !519
  %sub3 = sub i32 %10, 1, !dbg !519
  %conv4 = zext i32 %sub3 to i64, !dbg !519
  %mul5 = mul i64 %conv4, 2, !dbg !519
  call void @llvm.memset.p0.i64(ptr align 1 %8, i8 0, i64 %mul5, i1 false), !dbg !519
  %11 = load ptr, ptr %s.addr, align 8, !dbg !520
  %level = getelementptr inbounds %struct.deflate_state, ptr %11, i32 0, i32 32, !dbg !521
  %12 = load i32, ptr %level, align 4, !dbg !521
  %idxprom6 = sext i32 %12 to i64, !dbg !522
  %arrayidx7 = getelementptr [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom6, !dbg !522
  %max_lazy = getelementptr inbounds %struct.config_s, ptr %arrayidx7, i32 0, i32 1, !dbg !523
  %13 = load i16, ptr %max_lazy, align 2, !dbg !523
  %conv8 = zext i16 %13 to i32, !dbg !522
  %14 = load ptr, ptr %s.addr, align 8, !dbg !524
  %max_lazy_match = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 31, !dbg !525
  store i32 %conv8, ptr %max_lazy_match, align 8, !dbg !526
  %15 = load ptr, ptr %s.addr, align 8, !dbg !527
  %level9 = getelementptr inbounds %struct.deflate_state, ptr %15, i32 0, i32 32, !dbg !528
  %16 = load i32, ptr %level9, align 4, !dbg !528
  %idxprom10 = sext i32 %16 to i64, !dbg !529
  %arrayidx11 = getelementptr [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom10, !dbg !529
  %good_length = getelementptr inbounds %struct.config_s, ptr %arrayidx11, i32 0, i32 0, !dbg !530
  %17 = load i16, ptr %good_length, align 16, !dbg !530
  %conv12 = zext i16 %17 to i32, !dbg !529
  %18 = load ptr, ptr %s.addr, align 8, !dbg !531
  %good_match = getelementptr inbounds %struct.deflate_state, ptr %18, i32 0, i32 34, !dbg !532
  store i32 %conv12, ptr %good_match, align 4, !dbg !533
  %19 = load ptr, ptr %s.addr, align 8, !dbg !534
  %level13 = getelementptr inbounds %struct.deflate_state, ptr %19, i32 0, i32 32, !dbg !535
  %20 = load i32, ptr %level13, align 4, !dbg !535
  %idxprom14 = sext i32 %20 to i64, !dbg !536
  %arrayidx15 = getelementptr [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom14, !dbg !536
  %nice_length = getelementptr inbounds %struct.config_s, ptr %arrayidx15, i32 0, i32 2, !dbg !537
  %21 = load i16, ptr %nice_length, align 4, !dbg !537
  %conv16 = zext i16 %21 to i32, !dbg !536
  %22 = load ptr, ptr %s.addr, align 8, !dbg !538
  %nice_match = getelementptr inbounds %struct.deflate_state, ptr %22, i32 0, i32 35, !dbg !539
  store i32 %conv16, ptr %nice_match, align 8, !dbg !540
  %23 = load ptr, ptr %s.addr, align 8, !dbg !541
  %level17 = getelementptr inbounds %struct.deflate_state, ptr %23, i32 0, i32 32, !dbg !542
  %24 = load i32, ptr %level17, align 4, !dbg !542
  %idxprom18 = sext i32 %24 to i64, !dbg !543
  %arrayidx19 = getelementptr [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom18, !dbg !543
  %max_chain = getelementptr inbounds %struct.config_s, ptr %arrayidx19, i32 0, i32 3, !dbg !544
  %25 = load i16, ptr %max_chain, align 2, !dbg !544
  %conv20 = zext i16 %25 to i32, !dbg !543
  %26 = load ptr, ptr %s.addr, align 8, !dbg !545
  %max_chain_length = getelementptr inbounds %struct.deflate_state, ptr %26, i32 0, i32 30, !dbg !546
  store i32 %conv20, ptr %max_chain_length, align 4, !dbg !547
  %27 = load ptr, ptr %s.addr, align 8, !dbg !548
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 26, !dbg !549
  store i32 0, ptr %strstart, align 4, !dbg !550
  %28 = load ptr, ptr %s.addr, align 8, !dbg !551
  %block_start = getelementptr inbounds %struct.deflate_state, ptr %28, i32 0, i32 22, !dbg !552
  store i64 0, ptr %block_start, align 8, !dbg !553
  %29 = load ptr, ptr %s.addr, align 8, !dbg !554
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %29, i32 0, i32 28, !dbg !555
  store i32 0, ptr %lookahead, align 4, !dbg !556
  %30 = load ptr, ptr %s.addr, align 8, !dbg !557
  %prev_length = getelementptr inbounds %struct.deflate_state, ptr %30, i32 0, i32 29, !dbg !558
  store i32 2, ptr %prev_length, align 8, !dbg !559
  %31 = load ptr, ptr %s.addr, align 8, !dbg !560
  %match_length = getelementptr inbounds %struct.deflate_state, ptr %31, i32 0, i32 23, !dbg !561
  store i32 2, ptr %match_length, align 8, !dbg !562
  %32 = load ptr, ptr %s.addr, align 8, !dbg !563
  %match_available = getelementptr inbounds %struct.deflate_state, ptr %32, i32 0, i32 25, !dbg !564
  store i32 0, ptr %match_available, align 8, !dbg !565
  %33 = load ptr, ptr %s.addr, align 8, !dbg !566
  %ins_h = getelementptr inbounds %struct.deflate_state, ptr %33, i32 0, i32 17, !dbg !567
  store i32 0, ptr %ins_h, align 8, !dbg !568
  ret void, !dbg !569
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_deflate(ptr noundef %strm, i32 noundef %flush) #0 align 16 !dbg !570 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %old_flush = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %header = alloca i32, align 4
  %level_flags = alloca i32, align 4
  %bstate = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !574, metadata !DIExpression()), !dbg !585
  store i32 %flush, ptr %flush.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !575, metadata !DIExpression()), !dbg !586
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_flush) #8, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %old_flush, metadata !576, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !589
  call void @llvm.dbg.declare(metadata ptr %s, metadata !577, metadata !DIExpression()), !dbg !590
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !591
  %cmp = icmp eq ptr %0, null, !dbg !593
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !594

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !595
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7, !dbg !596
  %2 = load ptr, ptr %state, align 8, !dbg !596
  %cmp1 = icmp eq ptr %2, null, !dbg !597
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !598

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %flush.addr, align 4, !dbg !599
  %cmp3 = icmp sgt i32 %3, 5, !dbg !600
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !601

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i32, ptr %flush.addr, align 4, !dbg !602
  %cmp5 = icmp slt i32 %4, 0, !dbg !603
  br i1 %cmp5, label %if.then, label %if.end, !dbg !604

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4, !dbg !605
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup165, !dbg !605

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load ptr, ptr %strm.addr, align 8, !dbg !607
  %state6 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 7, !dbg !608
  %6 = load ptr, ptr %state6, align 8, !dbg !608
  store ptr %6, ptr %s, align 8, !dbg !609
  %7 = load ptr, ptr %strm.addr, align 8, !dbg !610
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 0, !dbg !612
  %8 = load ptr, ptr %next_in, align 8, !dbg !612
  %cmp7 = icmp eq ptr %8, null, !dbg !613
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false9, !dbg !614

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %strm.addr, align 8, !dbg !615
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 1, !dbg !616
  %10 = load i64, ptr %avail_in, align 8, !dbg !616
  %cmp8 = icmp ne i64 %10, 0, !dbg !617
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9, !dbg !618

lor.lhs.false9:                                   ; preds = %land.lhs.true, %if.end
  %11 = load ptr, ptr %s, align 8, !dbg !619
  %status = getelementptr inbounds %struct.deflate_state, ptr %11, i32 0, i32 1, !dbg !620
  %12 = load i32, ptr %status, align 8, !dbg !620
  %cmp10 = icmp eq i32 %12, 666, !dbg !621
  br i1 %cmp10, label %land.lhs.true11, label %if.end14, !dbg !622

land.lhs.true11:                                  ; preds = %lor.lhs.false9
  %13 = load i32, ptr %flush.addr, align 4, !dbg !623
  %cmp12 = icmp ne i32 %13, 5, !dbg !624
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !625

if.then13:                                        ; preds = %land.lhs.true11, %land.lhs.true
  store i32 -2, ptr %retval, align 4, !dbg !626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup165, !dbg !626

if.end14:                                         ; preds = %land.lhs.true11, %lor.lhs.false9
  %14 = load ptr, ptr %strm.addr, align 8, !dbg !628
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 4, !dbg !630
  %15 = load i64, ptr %avail_out, align 8, !dbg !630
  %cmp15 = icmp eq i64 %15, 0, !dbg !631
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !632

if.then16:                                        ; preds = %if.end14
  store i32 -5, ptr %retval, align 4, !dbg !633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup165, !dbg !633

if.end17:                                         ; preds = %if.end14
  %16 = load ptr, ptr %strm.addr, align 8, !dbg !634
  %17 = load ptr, ptr %s, align 8, !dbg !635
  %strm18 = getelementptr inbounds %struct.deflate_state, ptr %17, i32 0, i32 0, !dbg !636
  store ptr %16, ptr %strm18, align 8, !dbg !637
  %18 = load ptr, ptr %s, align 8, !dbg !638
  %last_flush = getelementptr inbounds %struct.deflate_state, ptr %18, i32 0, i32 9, !dbg !639
  %19 = load i32, ptr %last_flush, align 4, !dbg !639
  store i32 %19, ptr %old_flush, align 4, !dbg !640
  %20 = load i32, ptr %flush.addr, align 4, !dbg !641
  %21 = load ptr, ptr %s, align 8, !dbg !642
  %last_flush19 = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 9, !dbg !643
  store i32 %20, ptr %last_flush19, align 4, !dbg !644
  %22 = load ptr, ptr %s, align 8, !dbg !645
  %status20 = getelementptr inbounds %struct.deflate_state, ptr %22, i32 0, i32 1, !dbg !646
  %23 = load i32, ptr %status20, align 8, !dbg !646
  %cmp21 = icmp eq i32 %23, 42, !dbg !647
  br i1 %cmp21, label %if.then22, label %if.end44, !dbg !648

if.then22:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 4, ptr %header) #8, !dbg !649
  call void @llvm.dbg.declare(metadata ptr %header, metadata !578, metadata !DIExpression()), !dbg !650
  %24 = load ptr, ptr %s, align 8, !dbg !651
  %w_bits = getelementptr inbounds %struct.deflate_state, ptr %24, i32 0, i32 11, !dbg !652
  %25 = load i32, ptr %w_bits, align 4, !dbg !652
  %sub = sub i32 %25, 8, !dbg !653
  %shl = shl i32 %sub, 4, !dbg !654
  %add = add i32 8, %shl, !dbg !655
  %shl23 = shl i32 %add, 8, !dbg !656
  store i32 %shl23, ptr %header, align 4, !dbg !650
  call void @llvm.lifetime.start.p0(i64 4, ptr %level_flags) #8, !dbg !657
  call void @llvm.dbg.declare(metadata ptr %level_flags, metadata !581, metadata !DIExpression()), !dbg !658
  %26 = load ptr, ptr %s, align 8, !dbg !659
  %level = getelementptr inbounds %struct.deflate_state, ptr %26, i32 0, i32 32, !dbg !660
  %27 = load i32, ptr %level, align 4, !dbg !660
  %sub24 = sub i32 %27, 1, !dbg !661
  %shr = ashr i32 %sub24, 1, !dbg !662
  store i32 %shr, ptr %level_flags, align 4, !dbg !658
  %28 = load i32, ptr %level_flags, align 4, !dbg !663
  %cmp25 = icmp ugt i32 %28, 3, !dbg !665
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !666

if.then26:                                        ; preds = %if.then22
  store i32 3, ptr %level_flags, align 4, !dbg !667
  br label %if.end27, !dbg !668

if.end27:                                         ; preds = %if.then26, %if.then22
  %29 = load i32, ptr %level_flags, align 4, !dbg !669
  %shl28 = shl i32 %29, 6, !dbg !670
  %30 = load i32, ptr %header, align 4, !dbg !671
  %or = or i32 %30, %shl28, !dbg !671
  store i32 %or, ptr %header, align 4, !dbg !671
  %31 = load ptr, ptr %s, align 8, !dbg !672
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %31, i32 0, i32 26, !dbg !674
  %32 = load i32, ptr %strstart, align 4, !dbg !674
  %cmp29 = icmp ne i32 %32, 0, !dbg !675
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !676

if.then30:                                        ; preds = %if.end27
  %33 = load i32, ptr %header, align 4, !dbg !677
  %or31 = or i32 %33, 32, !dbg !677
  store i32 %or31, ptr %header, align 4, !dbg !677
  br label %if.end32, !dbg !678

if.end32:                                         ; preds = %if.then30, %if.end27
  %34 = load i32, ptr %header, align 4, !dbg !679
  %rem = urem i32 %34, 31, !dbg !680
  %sub33 = sub i32 31, %rem, !dbg !681
  %35 = load i32, ptr %header, align 4, !dbg !682
  %add34 = add i32 %35, %sub33, !dbg !682
  store i32 %add34, ptr %header, align 4, !dbg !682
  %36 = load ptr, ptr %s, align 8, !dbg !683
  %status35 = getelementptr inbounds %struct.deflate_state, ptr %36, i32 0, i32 1, !dbg !684
  store i32 113, ptr %status35, align 8, !dbg !685
  %37 = load ptr, ptr %s, align 8, !dbg !686
  %38 = load i32, ptr %header, align 4, !dbg !687
  call void @putShortMSB(ptr noundef %37, i32 noundef %38) #9, !dbg !688
  %39 = load ptr, ptr %s, align 8, !dbg !689
  %strstart36 = getelementptr inbounds %struct.deflate_state, ptr %39, i32 0, i32 26, !dbg !691
  %40 = load i32, ptr %strstart36, align 4, !dbg !691
  %cmp37 = icmp ne i32 %40, 0, !dbg !692
  br i1 %cmp37, label %if.then38, label %if.end42, !dbg !693

if.then38:                                        ; preds = %if.end32
  %41 = load ptr, ptr %s, align 8, !dbg !694
  %42 = load ptr, ptr %strm.addr, align 8, !dbg !696
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %42, i32 0, i32 10, !dbg !697
  %43 = load i64, ptr %adler, align 8, !dbg !697
  %shr39 = lshr i64 %43, 16, !dbg !698
  %conv = trunc i64 %shr39 to i32, !dbg !699
  call void @putShortMSB(ptr noundef %41, i32 noundef %conv) #9, !dbg !700
  %44 = load ptr, ptr %s, align 8, !dbg !701
  %45 = load ptr, ptr %strm.addr, align 8, !dbg !702
  %adler40 = getelementptr inbounds %struct.z_stream_s, ptr %45, i32 0, i32 10, !dbg !703
  %46 = load i64, ptr %adler40, align 8, !dbg !703
  %and = and i64 %46, 65535, !dbg !704
  %conv41 = trunc i64 %and to i32, !dbg !705
  call void @putShortMSB(ptr noundef %44, i32 noundef %conv41) #9, !dbg !706
  br label %if.end42, !dbg !707

if.end42:                                         ; preds = %if.then38, %if.end32
  %47 = load ptr, ptr %strm.addr, align 8, !dbg !708
  %adler43 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 10, !dbg !709
  store i64 1, ptr %adler43, align 8, !dbg !710
  call void @llvm.lifetime.end.p0(i64 4, ptr %level_flags) #8, !dbg !711
  call void @llvm.lifetime.end.p0(i64 4, ptr %header) #8, !dbg !711
  br label %if.end44, !dbg !712

if.end44:                                         ; preds = %if.end42, %if.end17
  %48 = load ptr, ptr %s, align 8, !dbg !713
  %pending = getelementptr inbounds %struct.deflate_state, ptr %48, i32 0, i32 5, !dbg !715
  %49 = load i32, ptr %pending, align 8, !dbg !715
  %cmp45 = icmp ne i32 %49, 0, !dbg !716
  br i1 %cmp45, label %if.then47, label %if.else, !dbg !717

if.then47:                                        ; preds = %if.end44
  %50 = load ptr, ptr %strm.addr, align 8, !dbg !718
  call void @flush_pending(ptr noundef %50) #9, !dbg !720
  %51 = load ptr, ptr %strm.addr, align 8, !dbg !721
  %avail_out48 = getelementptr inbounds %struct.z_stream_s, ptr %51, i32 0, i32 4, !dbg !723
  %52 = load i64, ptr %avail_out48, align 8, !dbg !723
  %cmp49 = icmp eq i64 %52, 0, !dbg !724
  br i1 %cmp49, label %if.then51, label %if.end53, !dbg !725

if.then51:                                        ; preds = %if.then47
  %53 = load ptr, ptr %s, align 8, !dbg !726
  %last_flush52 = getelementptr inbounds %struct.deflate_state, ptr %53, i32 0, i32 9, !dbg !728
  store i32 -1, ptr %last_flush52, align 4, !dbg !729
  store i32 0, ptr %retval, align 4, !dbg !730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup165, !dbg !730

if.end53:                                         ; preds = %if.then47
  br label %if.end65, !dbg !731

if.else:                                          ; preds = %if.end44
  %54 = load ptr, ptr %strm.addr, align 8, !dbg !732
  %avail_in54 = getelementptr inbounds %struct.z_stream_s, ptr %54, i32 0, i32 1, !dbg !734
  %55 = load i64, ptr %avail_in54, align 8, !dbg !734
  %cmp55 = icmp eq i64 %55, 0, !dbg !735
  br i1 %cmp55, label %land.lhs.true57, label %if.end64, !dbg !736

land.lhs.true57:                                  ; preds = %if.else
  %56 = load i32, ptr %flush.addr, align 4, !dbg !737
  %57 = load i32, ptr %old_flush, align 4, !dbg !738
  %cmp58 = icmp sle i32 %56, %57, !dbg !739
  br i1 %cmp58, label %land.lhs.true60, label %if.end64, !dbg !740

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %58 = load i32, ptr %flush.addr, align 4, !dbg !741
  %cmp61 = icmp ne i32 %58, 5, !dbg !742
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !743

if.then63:                                        ; preds = %land.lhs.true60
  store i32 -5, ptr %retval, align 4, !dbg !744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup165, !dbg !744

if.end64:                                         ; preds = %land.lhs.true60, %land.lhs.true57, %if.else
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end53
  %59 = load ptr, ptr %s, align 8, !dbg !746
  %status66 = getelementptr inbounds %struct.deflate_state, ptr %59, i32 0, i32 1, !dbg !748
  %60 = load i32, ptr %status66, align 8, !dbg !748
  %cmp67 = icmp eq i32 %60, 666, !dbg !749
  br i1 %cmp67, label %land.lhs.true69, label %if.end74, !dbg !750

land.lhs.true69:                                  ; preds = %if.end65
  %61 = load ptr, ptr %strm.addr, align 8, !dbg !751
  %avail_in70 = getelementptr inbounds %struct.z_stream_s, ptr %61, i32 0, i32 1, !dbg !752
  %62 = load i64, ptr %avail_in70, align 8, !dbg !752
  %cmp71 = icmp ne i64 %62, 0, !dbg !753
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !754

if.then73:                                        ; preds = %land.lhs.true69
  store i32 -5, ptr %retval, align 4, !dbg !755
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup165, !dbg !755

if.end74:                                         ; preds = %land.lhs.true69, %if.end65
  %63 = load ptr, ptr %strm.addr, align 8, !dbg !757
  %avail_in75 = getelementptr inbounds %struct.z_stream_s, ptr %63, i32 0, i32 1, !dbg !758
  %64 = load i64, ptr %avail_in75, align 8, !dbg !758
  %cmp76 = icmp ne i64 %64, 0, !dbg !759
  br i1 %cmp76, label %if.then88, label %lor.lhs.false78, !dbg !760

lor.lhs.false78:                                  ; preds = %if.end74
  %65 = load ptr, ptr %s, align 8, !dbg !761
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %65, i32 0, i32 28, !dbg !762
  %66 = load i32, ptr %lookahead, align 4, !dbg !762
  %cmp79 = icmp ne i32 %66, 0, !dbg !763
  br i1 %cmp79, label %if.then88, label %lor.lhs.false81, !dbg !764

lor.lhs.false81:                                  ; preds = %lor.lhs.false78
  %67 = load i32, ptr %flush.addr, align 4, !dbg !765
  %cmp82 = icmp ne i32 %67, 0, !dbg !766
  br i1 %cmp82, label %land.lhs.true84, label %if.end142, !dbg !767

land.lhs.true84:                                  ; preds = %lor.lhs.false81
  %68 = load ptr, ptr %s, align 8, !dbg !768
  %status85 = getelementptr inbounds %struct.deflate_state, ptr %68, i32 0, i32 1, !dbg !769
  %69 = load i32, ptr %status85, align 8, !dbg !769
  %cmp86 = icmp ne i32 %69, 666, !dbg !770
  br i1 %cmp86, label %if.then88, label %if.end142, !dbg !771

if.then88:                                        ; preds = %land.lhs.true84, %lor.lhs.false78, %if.end74
  call void @llvm.lifetime.start.p0(i64 4, ptr %bstate) #8, !dbg !772
  call void @llvm.dbg.declare(metadata ptr %bstate, metadata !582, metadata !DIExpression()), !dbg !773
  %70 = load ptr, ptr %s, align 8, !dbg !774
  %level89 = getelementptr inbounds %struct.deflate_state, ptr %70, i32 0, i32 32, !dbg !775
  %71 = load i32, ptr %level89, align 4, !dbg !775
  %idxprom = sext i32 %71 to i64, !dbg !776
  %arrayidx = getelementptr [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom, !dbg !776
  %func = getelementptr inbounds %struct.config_s, ptr %arrayidx, i32 0, i32 4, !dbg !777
  %72 = load ptr, ptr %func, align 8, !dbg !777
  %73 = load ptr, ptr %s, align 8, !dbg !778
  %74 = load i32, ptr %flush.addr, align 4, !dbg !779
  %call = call i32 %72(ptr noundef %73, i32 noundef %74) #9, !dbg !780
  store i32 %call, ptr %bstate, align 4, !dbg !781
  %75 = load i32, ptr %bstate, align 4, !dbg !782
  %cmp90 = icmp eq i32 %75, 2, !dbg !784
  br i1 %cmp90, label %if.then95, label %lor.lhs.false92, !dbg !785

lor.lhs.false92:                                  ; preds = %if.then88
  %76 = load i32, ptr %bstate, align 4, !dbg !786
  %cmp93 = icmp eq i32 %76, 3, !dbg !787
  br i1 %cmp93, label %if.then95, label %if.end97, !dbg !788

if.then95:                                        ; preds = %lor.lhs.false92, %if.then88
  %77 = load ptr, ptr %s, align 8, !dbg !789
  %status96 = getelementptr inbounds %struct.deflate_state, ptr %77, i32 0, i32 1, !dbg !791
  store i32 666, ptr %status96, align 8, !dbg !792
  br label %if.end97, !dbg !793

if.end97:                                         ; preds = %if.then95, %lor.lhs.false92
  %78 = load i32, ptr %bstate, align 4, !dbg !794
  %cmp98 = icmp eq i32 %78, 0, !dbg !796
  br i1 %cmp98, label %if.then103, label %lor.lhs.false100, !dbg !797

lor.lhs.false100:                                 ; preds = %if.end97
  %79 = load i32, ptr %bstate, align 4, !dbg !798
  %cmp101 = icmp eq i32 %79, 2, !dbg !799
  br i1 %cmp101, label %if.then103, label %if.end110, !dbg !800

if.then103:                                       ; preds = %lor.lhs.false100, %if.end97
  %80 = load ptr, ptr %strm.addr, align 8, !dbg !801
  %avail_out104 = getelementptr inbounds %struct.z_stream_s, ptr %80, i32 0, i32 4, !dbg !804
  %81 = load i64, ptr %avail_out104, align 8, !dbg !804
  %cmp105 = icmp eq i64 %81, 0, !dbg !805
  br i1 %cmp105, label %if.then107, label %if.end109, !dbg !806

if.then107:                                       ; preds = %if.then103
  %82 = load ptr, ptr %s, align 8, !dbg !807
  %last_flush108 = getelementptr inbounds %struct.deflate_state, ptr %82, i32 0, i32 9, !dbg !809
  store i32 -1, ptr %last_flush108, align 4, !dbg !810
  br label %if.end109, !dbg !811

if.end109:                                        ; preds = %if.then107, %if.then103
  store i32 0, ptr %retval, align 4, !dbg !812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !812

if.end110:                                        ; preds = %lor.lhs.false100
  %83 = load i32, ptr %bstate, align 4, !dbg !813
  %cmp111 = icmp eq i32 %83, 1, !dbg !815
  br i1 %cmp111, label %if.then113, label %if.end141, !dbg !816

if.then113:                                       ; preds = %if.end110
  %84 = load i32, ptr %flush.addr, align 4, !dbg !817
  %cmp114 = icmp eq i32 %84, 1, !dbg !820
  br i1 %cmp114, label %if.then116, label %if.else117, !dbg !821

if.then116:                                       ; preds = %if.then113
  %85 = load ptr, ptr %s, align 8, !dbg !822
  call void @zlib_tr_align(ptr noundef %85) #9, !dbg !824
  br label %if.end134, !dbg !825

if.else117:                                       ; preds = %if.then113
  %86 = load i32, ptr %flush.addr, align 4, !dbg !826
  %cmp118 = icmp eq i32 %86, 2, !dbg !828
  br i1 %cmp118, label %if.then120, label %if.else121, !dbg !829

if.then120:                                       ; preds = %if.else117
  %87 = load ptr, ptr %s, align 8, !dbg !830
  call void @zlib_tr_stored_type_only(ptr noundef %87) #9, !dbg !832
  br label %if.end133, !dbg !833

if.else121:                                       ; preds = %if.else117
  %88 = load ptr, ptr %s, align 8, !dbg !834
  call void @zlib_tr_stored_block(ptr noundef %88, ptr noundef null, i64 noundef 0, i32 noundef 0) #9, !dbg !836
  %89 = load i32, ptr %flush.addr, align 4, !dbg !837
  %cmp122 = icmp eq i32 %89, 4, !dbg !839
  br i1 %cmp122, label %if.then124, label %if.end132, !dbg !840

if.then124:                                       ; preds = %if.else121
  %90 = load ptr, ptr %s, align 8, !dbg !841
  %head = getelementptr inbounds %struct.deflate_state, ptr %90, i32 0, i32 16, !dbg !841
  %91 = load ptr, ptr %head, align 8, !dbg !841
  %92 = load ptr, ptr %s, align 8, !dbg !841
  %hash_size = getelementptr inbounds %struct.deflate_state, ptr %92, i32 0, i32 18, !dbg !841
  %93 = load i32, ptr %hash_size, align 4, !dbg !841
  %sub125 = sub i32 %93, 1, !dbg !841
  %idxprom126 = zext i32 %sub125 to i64, !dbg !841
  %arrayidx127 = getelementptr i16, ptr %91, i64 %idxprom126, !dbg !841
  store i16 0, ptr %arrayidx127, align 2, !dbg !841
  %94 = load ptr, ptr %s, align 8, !dbg !841
  %head128 = getelementptr inbounds %struct.deflate_state, ptr %94, i32 0, i32 16, !dbg !841
  %95 = load ptr, ptr %head128, align 8, !dbg !841
  %96 = load ptr, ptr %s, align 8, !dbg !841
  %hash_size129 = getelementptr inbounds %struct.deflate_state, ptr %96, i32 0, i32 18, !dbg !841
  %97 = load i32, ptr %hash_size129, align 4, !dbg !841
  %sub130 = sub i32 %97, 1, !dbg !841
  %conv131 = zext i32 %sub130 to i64, !dbg !841
  %mul = mul i64 %conv131, 2, !dbg !841
  call void @llvm.memset.p0.i64(ptr align 1 %95, i8 0, i64 %mul, i1 false), !dbg !841
  br label %if.end132, !dbg !843

if.end132:                                        ; preds = %if.then124, %if.else121
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.then120
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then116
  %98 = load ptr, ptr %strm.addr, align 8, !dbg !844
  call void @flush_pending(ptr noundef %98) #9, !dbg !845
  %99 = load ptr, ptr %strm.addr, align 8, !dbg !846
  %avail_out135 = getelementptr inbounds %struct.z_stream_s, ptr %99, i32 0, i32 4, !dbg !848
  %100 = load i64, ptr %avail_out135, align 8, !dbg !848
  %cmp136 = icmp eq i64 %100, 0, !dbg !849
  br i1 %cmp136, label %if.then138, label %if.end140, !dbg !850

if.then138:                                       ; preds = %if.end134
  %101 = load ptr, ptr %s, align 8, !dbg !851
  %last_flush139 = getelementptr inbounds %struct.deflate_state, ptr %101, i32 0, i32 9, !dbg !853
  store i32 -1, ptr %last_flush139, align 4, !dbg !854
  store i32 0, ptr %retval, align 4, !dbg !855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !855

if.end140:                                        ; preds = %if.end134
  br label %if.end141, !dbg !856

if.end141:                                        ; preds = %if.end140, %if.end110
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !857
  br label %cleanup, !dbg !857

cleanup:                                          ; preds = %if.end141, %if.then138, %if.end109
  call void @llvm.lifetime.end.p0(i64 4, ptr %bstate) #8, !dbg !857
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup165 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end142, !dbg !858

if.end142:                                        ; preds = %cleanup.cont, %land.lhs.true84, %lor.lhs.false81
  %102 = load i32, ptr %flush.addr, align 4, !dbg !859
  %cmp143 = icmp ne i32 %102, 5, !dbg !861
  br i1 %cmp143, label %if.then145, label %if.end146, !dbg !862

if.then145:                                       ; preds = %if.end142
  store i32 0, ptr %retval, align 4, !dbg !863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup165, !dbg !863

if.end146:                                        ; preds = %if.end142
  %103 = load ptr, ptr %s, align 8, !dbg !864
  %noheader = getelementptr inbounds %struct.deflate_state, ptr %103, i32 0, i32 6, !dbg !866
  %104 = load i32, ptr %noheader, align 4, !dbg !866
  %tobool = icmp ne i32 %104, 0, !dbg !864
  br i1 %tobool, label %if.end154, label %if.then147, !dbg !867

if.then147:                                       ; preds = %if.end146
  %105 = load ptr, ptr %s, align 8, !dbg !868
  %106 = load ptr, ptr %strm.addr, align 8, !dbg !870
  %adler148 = getelementptr inbounds %struct.z_stream_s, ptr %106, i32 0, i32 10, !dbg !871
  %107 = load i64, ptr %adler148, align 8, !dbg !871
  %shr149 = lshr i64 %107, 16, !dbg !872
  %conv150 = trunc i64 %shr149 to i32, !dbg !873
  call void @putShortMSB(ptr noundef %105, i32 noundef %conv150) #9, !dbg !874
  %108 = load ptr, ptr %s, align 8, !dbg !875
  %109 = load ptr, ptr %strm.addr, align 8, !dbg !876
  %adler151 = getelementptr inbounds %struct.z_stream_s, ptr %109, i32 0, i32 10, !dbg !877
  %110 = load i64, ptr %adler151, align 8, !dbg !877
  %and152 = and i64 %110, 65535, !dbg !878
  %conv153 = trunc i64 %and152 to i32, !dbg !879
  call void @putShortMSB(ptr noundef %108, i32 noundef %conv153) #9, !dbg !880
  br label %if.end154, !dbg !881

if.end154:                                        ; preds = %if.then147, %if.end146
  %111 = load ptr, ptr %strm.addr, align 8, !dbg !882
  call void @flush_pending(ptr noundef %111) #9, !dbg !883
  %112 = load ptr, ptr %s, align 8, !dbg !884
  %noheader155 = getelementptr inbounds %struct.deflate_state, ptr %112, i32 0, i32 6, !dbg !886
  %113 = load i32, ptr %noheader155, align 4, !dbg !886
  %tobool156 = icmp ne i32 %113, 0, !dbg !884
  br i1 %tobool156, label %if.end159, label %if.then157, !dbg !887

if.then157:                                       ; preds = %if.end154
  %114 = load ptr, ptr %s, align 8, !dbg !888
  %noheader158 = getelementptr inbounds %struct.deflate_state, ptr %114, i32 0, i32 6, !dbg !890
  store i32 -1, ptr %noheader158, align 4, !dbg !891
  br label %if.end159, !dbg !892

if.end159:                                        ; preds = %if.then157, %if.end154
  %115 = load ptr, ptr %s, align 8, !dbg !893
  %pending160 = getelementptr inbounds %struct.deflate_state, ptr %115, i32 0, i32 5, !dbg !895
  %116 = load i32, ptr %pending160, align 8, !dbg !895
  %cmp161 = icmp eq i32 %116, 0, !dbg !896
  br i1 %cmp161, label %if.then163, label %if.end164, !dbg !897

if.then163:                                       ; preds = %if.end159
  store i32 1, ptr %retval, align 4, !dbg !898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup165, !dbg !898

if.end164:                                        ; preds = %if.end159
  store i32 0, ptr %retval, align 4, !dbg !900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup165, !dbg !900

cleanup165:                                       ; preds = %if.end164, %if.then163, %if.then145, %cleanup, %if.then73, %if.then63, %if.then51, %if.then16, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !901
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_flush) #8, !dbg !901
  %117 = load i32, ptr %retval, align 4, !dbg !901
  ret i32 %117, !dbg !901
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @putShortMSB(ptr noundef %s, i32 noundef %b) #0 align 16 !dbg !902 {
entry:
  %s.addr = alloca ptr, align 8
  %b.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !906, metadata !DIExpression()), !dbg !908
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !907, metadata !DIExpression()), !dbg !909
  %0 = load i32, ptr %b.addr, align 4, !dbg !910
  %shr = lshr i32 %0, 8, !dbg !910
  %conv = trunc i32 %shr to i8, !dbg !910
  %1 = load ptr, ptr %s.addr, align 8, !dbg !910
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 2, !dbg !910
  %2 = load ptr, ptr %pending_buf, align 8, !dbg !910
  %3 = load ptr, ptr %s.addr, align 8, !dbg !910
  %pending = getelementptr inbounds %struct.deflate_state, ptr %3, i32 0, i32 5, !dbg !910
  %4 = load i32, ptr %pending, align 8, !dbg !910
  %inc = add i32 %4, 1, !dbg !910
  store i32 %inc, ptr %pending, align 8, !dbg !910
  %idxprom = sext i32 %4 to i64, !dbg !910
  %arrayidx = getelementptr i8, ptr %2, i64 %idxprom, !dbg !910
  store i8 %conv, ptr %arrayidx, align 1, !dbg !910
  %5 = load i32, ptr %b.addr, align 4, !dbg !912
  %and = and i32 %5, 255, !dbg !912
  %conv1 = trunc i32 %and to i8, !dbg !912
  %6 = load ptr, ptr %s.addr, align 8, !dbg !912
  %pending_buf2 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 2, !dbg !912
  %7 = load ptr, ptr %pending_buf2, align 8, !dbg !912
  %8 = load ptr, ptr %s.addr, align 8, !dbg !912
  %pending3 = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 5, !dbg !912
  %9 = load i32, ptr %pending3, align 8, !dbg !912
  %inc4 = add i32 %9, 1, !dbg !912
  store i32 %inc4, ptr %pending3, align 8, !dbg !912
  %idxprom5 = sext i32 %9 to i64, !dbg !912
  %arrayidx6 = getelementptr i8, ptr %7, i64 %idxprom5, !dbg !912
  store i8 %conv1, ptr %arrayidx6, align 1, !dbg !912
  ret void, !dbg !914
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @flush_pending(ptr noundef %strm) #4 align 16 !dbg !915 {
entry:
  %strm.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !919, metadata !DIExpression()), !dbg !922
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #8, !dbg !923
  call void @llvm.dbg.declare(metadata ptr %len, metadata !920, metadata !DIExpression()), !dbg !924
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !925
  call void @llvm.dbg.declare(metadata ptr %s, metadata !921, metadata !DIExpression()), !dbg !926
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !927
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7, !dbg !928
  %1 = load ptr, ptr %state, align 8, !dbg !928
  store ptr %1, ptr %s, align 8, !dbg !926
  %2 = load ptr, ptr %s, align 8, !dbg !929
  call void @bi_flush(ptr noundef %2) #9, !dbg !930
  %3 = load ptr, ptr %s, align 8, !dbg !931
  %pending = getelementptr inbounds %struct.deflate_state, ptr %3, i32 0, i32 5, !dbg !932
  %4 = load i32, ptr %pending, align 8, !dbg !932
  store i32 %4, ptr %len, align 4, !dbg !933
  %5 = load i32, ptr %len, align 4, !dbg !934
  %conv = zext i32 %5 to i64, !dbg !934
  %6 = load ptr, ptr %strm.addr, align 8, !dbg !936
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 4, !dbg !937
  %7 = load i64, ptr %avail_out, align 8, !dbg !937
  %cmp = icmp ugt i64 %conv, %7, !dbg !938
  br i1 %cmp, label %if.then, label %if.end, !dbg !939

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %strm.addr, align 8, !dbg !940
  %avail_out2 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 4, !dbg !941
  %9 = load i64, ptr %avail_out2, align 8, !dbg !941
  %conv3 = trunc i64 %9 to i32, !dbg !940
  store i32 %conv3, ptr %len, align 4, !dbg !942
  br label %if.end, !dbg !943

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %len, align 4, !dbg !944
  %cmp4 = icmp eq i32 %10, 0, !dbg !946
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !947

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !948

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %strm.addr, align 8, !dbg !949
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 3, !dbg !951
  %12 = load ptr, ptr %next_out, align 8, !dbg !951
  %cmp8 = icmp ne ptr %12, null, !dbg !952
  br i1 %cmp8, label %if.then10, label %if.end14, !dbg !953

if.then10:                                        ; preds = %if.end7
  %13 = load ptr, ptr %strm.addr, align 8, !dbg !954
  %next_out11 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 3, !dbg !956
  %14 = load ptr, ptr %next_out11, align 8, !dbg !956
  %15 = load ptr, ptr %s, align 8, !dbg !957
  %pending_out = getelementptr inbounds %struct.deflate_state, ptr %15, i32 0, i32 4, !dbg !958
  %16 = load ptr, ptr %pending_out, align 8, !dbg !958
  %17 = load i32, ptr %len, align 4, !dbg !959
  %conv12 = zext i32 %17 to i64, !dbg !959
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %conv12, i1 false), !dbg !960
  %18 = load i32, ptr %len, align 4, !dbg !961
  %19 = load ptr, ptr %strm.addr, align 8, !dbg !962
  %next_out13 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 3, !dbg !963
  %20 = load ptr, ptr %next_out13, align 8, !dbg !964
  %idx.ext = zext i32 %18 to i64, !dbg !964
  %add.ptr = getelementptr i8, ptr %20, i64 %idx.ext, !dbg !964
  store ptr %add.ptr, ptr %next_out13, align 8, !dbg !964
  br label %if.end14, !dbg !965

if.end14:                                         ; preds = %if.then10, %if.end7
  %21 = load i32, ptr %len, align 4, !dbg !966
  %22 = load ptr, ptr %s, align 8, !dbg !967
  %pending_out15 = getelementptr inbounds %struct.deflate_state, ptr %22, i32 0, i32 4, !dbg !968
  %23 = load ptr, ptr %pending_out15, align 8, !dbg !969
  %idx.ext16 = zext i32 %21 to i64, !dbg !969
  %add.ptr17 = getelementptr i8, ptr %23, i64 %idx.ext16, !dbg !969
  store ptr %add.ptr17, ptr %pending_out15, align 8, !dbg !969
  %24 = load i32, ptr %len, align 4, !dbg !970
  %conv18 = zext i32 %24 to i64, !dbg !970
  %25 = load ptr, ptr %strm.addr, align 8, !dbg !971
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %25, i32 0, i32 5, !dbg !972
  %26 = load i64, ptr %total_out, align 8, !dbg !973
  %add = add i64 %26, %conv18, !dbg !973
  store i64 %add, ptr %total_out, align 8, !dbg !973
  %27 = load i32, ptr %len, align 4, !dbg !974
  %conv19 = zext i32 %27 to i64, !dbg !974
  %28 = load ptr, ptr %strm.addr, align 8, !dbg !975
  %avail_out20 = getelementptr inbounds %struct.z_stream_s, ptr %28, i32 0, i32 4, !dbg !976
  %29 = load i64, ptr %avail_out20, align 8, !dbg !977
  %sub = sub i64 %29, %conv19, !dbg !977
  store i64 %sub, ptr %avail_out20, align 8, !dbg !977
  %30 = load i32, ptr %len, align 4, !dbg !978
  %31 = load ptr, ptr %s, align 8, !dbg !979
  %pending21 = getelementptr inbounds %struct.deflate_state, ptr %31, i32 0, i32 5, !dbg !980
  %32 = load i32, ptr %pending21, align 8, !dbg !981
  %sub22 = sub i32 %32, %30, !dbg !981
  store i32 %sub22, ptr %pending21, align 8, !dbg !981
  %33 = load ptr, ptr %s, align 8, !dbg !982
  %pending23 = getelementptr inbounds %struct.deflate_state, ptr %33, i32 0, i32 5, !dbg !984
  %34 = load i32, ptr %pending23, align 8, !dbg !984
  %cmp24 = icmp eq i32 %34, 0, !dbg !985
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !986

if.then26:                                        ; preds = %if.end14
  %35 = load ptr, ptr %s, align 8, !dbg !987
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %35, i32 0, i32 2, !dbg !989
  %36 = load ptr, ptr %pending_buf, align 8, !dbg !989
  %37 = load ptr, ptr %s, align 8, !dbg !990
  %pending_out27 = getelementptr inbounds %struct.deflate_state, ptr %37, i32 0, i32 4, !dbg !991
  store ptr %36, ptr %pending_out27, align 8, !dbg !992
  br label %if.end28, !dbg !993

if.end28:                                         ; preds = %if.then26, %if.end14
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !994
  br label %cleanup, !dbg !994

cleanup:                                          ; preds = %if.end28, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !994
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #8, !dbg !994
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !994

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !995 dso_local void @zlib_tr_align(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !996 dso_local void @zlib_tr_stored_type_only(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !997 dso_local void @zlib_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_deflateEnd(ptr noundef %strm) #0 align 16 !dbg !1000 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !1002, metadata !DIExpression()), !dbg !1005
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !1006
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1003, metadata !DIExpression()), !dbg !1007
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !1008
  call void @llvm.dbg.declare(metadata ptr %s, metadata !1004, metadata !DIExpression()), !dbg !1009
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !1010
  %cmp = icmp eq ptr %0, null, !dbg !1012
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1013

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !1014
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7, !dbg !1015
  %2 = load ptr, ptr %state, align 8, !dbg !1015
  %cmp1 = icmp eq ptr %2, null, !dbg !1016
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1017

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4, !dbg !1018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1018

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8, !dbg !1019
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7, !dbg !1020
  %4 = load ptr, ptr %state2, align 8, !dbg !1020
  store ptr %4, ptr %s, align 8, !dbg !1021
  %5 = load ptr, ptr %s, align 8, !dbg !1022
  %status3 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 1, !dbg !1023
  %6 = load i32, ptr %status3, align 8, !dbg !1023
  store i32 %6, ptr %status, align 4, !dbg !1024
  %7 = load i32, ptr %status, align 4, !dbg !1025
  %cmp4 = icmp ne i32 %7, 42, !dbg !1027
  br i1 %cmp4, label %land.lhs.true, label %if.end9, !dbg !1028

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, ptr %status, align 4, !dbg !1029
  %cmp5 = icmp ne i32 %8, 113, !dbg !1030
  br i1 %cmp5, label %land.lhs.true6, label %if.end9, !dbg !1031

land.lhs.true6:                                   ; preds = %land.lhs.true
  %9 = load i32, ptr %status, align 4, !dbg !1032
  %cmp7 = icmp ne i32 %9, 666, !dbg !1033
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1034

if.then8:                                         ; preds = %land.lhs.true6
  store i32 -2, ptr %retval, align 4, !dbg !1035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1035

if.end9:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %10 = load ptr, ptr %strm.addr, align 8, !dbg !1037
  %state10 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 7, !dbg !1038
  store ptr null, ptr %state10, align 8, !dbg !1039
  %11 = load i32, ptr %status, align 4, !dbg !1040
  %cmp11 = icmp eq i32 %11, 113, !dbg !1041
  %12 = zext i1 %cmp11 to i64, !dbg !1040
  %cond = select i1 %cmp11, i32 -3, i32 0, !dbg !1040
  store i32 %cond, ptr %retval, align 4, !dbg !1042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1042

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !1043
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !1043
  %13 = load i32, ptr %retval, align 4, !dbg !1043
  ret i32 %13, !dbg !1043
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_deflate_workspacesize(i32 noundef %windowBits, i32 noundef %memLevel) #0 align 16 !dbg !1044 {
entry:
  %windowBits.addr = alloca i32, align 4
  %memLevel.addr = alloca i32, align 4
  store i32 %windowBits, ptr %windowBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %windowBits.addr, metadata !1048, metadata !DIExpression()), !dbg !1050
  store i32 %memLevel, ptr %memLevel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %memLevel.addr, metadata !1049, metadata !DIExpression()), !dbg !1051
  %0 = load i32, ptr %windowBits.addr, align 4, !dbg !1052
  %cmp = icmp slt i32 %0, 0, !dbg !1054
  br i1 %cmp, label %if.then, label %if.end, !dbg !1055

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %windowBits.addr, align 4, !dbg !1056
  %sub = sub i32 0, %1, !dbg !1057
  store i32 %sub, ptr %windowBits.addr, align 4, !dbg !1058
  br label %if.end, !dbg !1059

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !1060

do.body:                                          ; preds = %if.end
  %2 = load i32, ptr %memLevel.addr, align 4, !dbg !1061
  %cmp1 = icmp slt i32 %2, 1, !dbg !1061
  br i1 %cmp1, label %lor.end, label %lor.lhs.false, !dbg !1061

lor.lhs.false:                                    ; preds = %do.body
  %3 = load i32, ptr %memLevel.addr, align 4, !dbg !1061
  %cmp2 = icmp sgt i32 %3, 8, !dbg !1061
  br i1 %cmp2, label %lor.end, label %lor.lhs.false3, !dbg !1061

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %windowBits.addr, align 4, !dbg !1061
  %cmp4 = icmp slt i32 %4, 9, !dbg !1061
  br i1 %cmp4, label %lor.end, label %lor.rhs, !dbg !1061

lor.rhs:                                          ; preds = %lor.lhs.false3
  %5 = load i32, ptr %windowBits.addr, align 4, !dbg !1061
  %cmp5 = icmp sgt i32 %5, 15, !dbg !1061
  br label %lor.end, !dbg !1061

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false3, %lor.lhs.false, %do.body
  %6 = phi i1 [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %do.body ], [ %cmp5, %lor.rhs ]
  %lnot = xor i1 %6, true, !dbg !1061
  %lnot6 = xor i1 %lnot, true, !dbg !1061
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !1061
  %conv = sext i32 %lnot.ext to i64, !dbg !1061
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1061
  %tobool = icmp ne i64 %expval, 0, !dbg !1061
  br i1 %tobool, label %if.then7, label %if.end13, !dbg !1064

if.then7:                                         ; preds = %lor.end
  br label %do.body8, !dbg !1061

do.body8:                                         ; preds = %if.then7
  br label %do.body9, !dbg !1065

do.body9:                                         ; preds = %do.body8
  br label %do.end, !dbg !1067

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !1065

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1141, i32 0, i64 12) #8, !dbg !1069, !srcloc !1071
  br label %do.end11, !dbg !1069

do.end11:                                         ; preds = %do.body10
  unreachable, !dbg !1065

do.end12:                                         ; No predecessors!
  br label %if.end13, !dbg !1065

if.end13:                                         ; preds = %do.end12, %lor.end
  br label %do.end14, !dbg !1064

do.end14:                                         ; preds = %if.end13
  %7 = load i32, ptr %windowBits.addr, align 4, !dbg !1072
  %shl = shl i32 1, %7, !dbg !1072
  %mul = mul i32 2, %shl, !dbg !1072
  %conv15 = sext i32 %mul to i64, !dbg !1072
  %mul16 = mul i64 %conv15, 1, !dbg !1072
  %add = add i64 5960, %mul16, !dbg !1073
  %8 = load i32, ptr %windowBits.addr, align 4, !dbg !1074
  %shl17 = shl i32 1, %8, !dbg !1074
  %conv18 = sext i32 %shl17 to i64, !dbg !1074
  %mul19 = mul i64 %conv18, 2, !dbg !1074
  %add20 = add i64 %add, %mul19, !dbg !1075
  %9 = load i32, ptr %memLevel.addr, align 4, !dbg !1076
  %add21 = add i32 %9, 7, !dbg !1076
  %shl22 = shl i32 1, %add21, !dbg !1076
  %conv23 = sext i32 %shl22 to i64, !dbg !1076
  %mul24 = mul i64 %conv23, 2, !dbg !1076
  %add25 = add i64 %add20, %mul24, !dbg !1077
  %10 = load i32, ptr %memLevel.addr, align 4, !dbg !1078
  %add26 = add i32 %10, 6, !dbg !1078
  %shl27 = shl i32 1, %add26, !dbg !1078
  %conv28 = sext i32 %shl27 to i64, !dbg !1078
  %mul29 = mul i64 %conv28, 4, !dbg !1078
  %add30 = add i64 %add25, %mul29, !dbg !1079
  %conv31 = trunc i64 %add30 to i32, !dbg !1080
  ret i32 %conv31, !dbg !1081
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_deflate_dfltcc_enabled() #0 align 16 !dbg !1082 {
entry:
  ret i32 0, !dbg !1085
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bi_flush(ptr noundef %s) #4 align 16 !dbg !1086 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1088, metadata !DIExpression()), !dbg !1089
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1090
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57, !dbg !1092
  %1 = load i32, ptr %bi_valid, align 4, !dbg !1092
  %cmp = icmp eq i32 %1, 16, !dbg !1093
  br i1 %cmp, label %if.then, label %if.else, !dbg !1094

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1095
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %2, i32 0, i32 56, !dbg !1095
  %3 = load i16, ptr %bi_buf, align 8, !dbg !1095
  %conv = zext i16 %3 to i32, !dbg !1095
  %and = and i32 %conv, 255, !dbg !1095
  %conv1 = trunc i32 %and to i8, !dbg !1095
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1095
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %4, i32 0, i32 2, !dbg !1095
  %5 = load ptr, ptr %pending_buf, align 8, !dbg !1095
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1095
  %pending = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 5, !dbg !1095
  %7 = load i32, ptr %pending, align 8, !dbg !1095
  %inc = add i32 %7, 1, !dbg !1095
  store i32 %inc, ptr %pending, align 8, !dbg !1095
  %idxprom = sext i32 %7 to i64, !dbg !1095
  %arrayidx = getelementptr i8, ptr %5, i64 %idxprom, !dbg !1095
  store i8 %conv1, ptr %arrayidx, align 1, !dbg !1095
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1099
  %bi_buf2 = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 56, !dbg !1099
  %9 = load i16, ptr %bi_buf2, align 8, !dbg !1099
  %conv3 = zext i16 %9 to i32, !dbg !1099
  %shr = ashr i32 %conv3, 8, !dbg !1099
  %conv4 = trunc i32 %shr to i8, !dbg !1099
  %10 = load ptr, ptr %s.addr, align 8, !dbg !1099
  %pending_buf5 = getelementptr inbounds %struct.deflate_state, ptr %10, i32 0, i32 2, !dbg !1099
  %11 = load ptr, ptr %pending_buf5, align 8, !dbg !1099
  %12 = load ptr, ptr %s.addr, align 8, !dbg !1099
  %pending6 = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 5, !dbg !1099
  %13 = load i32, ptr %pending6, align 8, !dbg !1099
  %inc7 = add i32 %13, 1, !dbg !1099
  store i32 %inc7, ptr %pending6, align 8, !dbg !1099
  %idxprom8 = sext i32 %13 to i64, !dbg !1099
  %arrayidx9 = getelementptr i8, ptr %11, i64 %idxprom8, !dbg !1099
  store i8 %conv4, ptr %arrayidx9, align 1, !dbg !1099
  %14 = load ptr, ptr %s.addr, align 8, !dbg !1101
  %bi_buf10 = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 56, !dbg !1102
  store i16 0, ptr %bi_buf10, align 8, !dbg !1103
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1104
  %bi_valid11 = getelementptr inbounds %struct.deflate_state, ptr %15, i32 0, i32 57, !dbg !1105
  store i32 0, ptr %bi_valid11, align 4, !dbg !1106
  br label %if.end28, !dbg !1107

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %s.addr, align 8, !dbg !1108
  %bi_valid12 = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 57, !dbg !1110
  %17 = load i32, ptr %bi_valid12, align 4, !dbg !1110
  %cmp13 = icmp sge i32 %17, 8, !dbg !1111
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !1112

if.then15:                                        ; preds = %if.else
  %18 = load ptr, ptr %s.addr, align 8, !dbg !1113
  %bi_buf16 = getelementptr inbounds %struct.deflate_state, ptr %18, i32 0, i32 56, !dbg !1113
  %19 = load i16, ptr %bi_buf16, align 8, !dbg !1113
  %conv17 = trunc i16 %19 to i8, !dbg !1113
  %20 = load ptr, ptr %s.addr, align 8, !dbg !1113
  %pending_buf18 = getelementptr inbounds %struct.deflate_state, ptr %20, i32 0, i32 2, !dbg !1113
  %21 = load ptr, ptr %pending_buf18, align 8, !dbg !1113
  %22 = load ptr, ptr %s.addr, align 8, !dbg !1113
  %pending19 = getelementptr inbounds %struct.deflate_state, ptr %22, i32 0, i32 5, !dbg !1113
  %23 = load i32, ptr %pending19, align 8, !dbg !1113
  %inc20 = add i32 %23, 1, !dbg !1113
  store i32 %inc20, ptr %pending19, align 8, !dbg !1113
  %idxprom21 = sext i32 %23 to i64, !dbg !1113
  %arrayidx22 = getelementptr i8, ptr %21, i64 %idxprom21, !dbg !1113
  store i8 %conv17, ptr %arrayidx22, align 1, !dbg !1113
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1116
  %bi_buf23 = getelementptr inbounds %struct.deflate_state, ptr %24, i32 0, i32 56, !dbg !1117
  %25 = load i16, ptr %bi_buf23, align 8, !dbg !1118
  %conv24 = zext i16 %25 to i32, !dbg !1118
  %shr25 = ashr i32 %conv24, 8, !dbg !1118
  %conv26 = trunc i32 %shr25 to i16, !dbg !1118
  store i16 %conv26, ptr %bi_buf23, align 8, !dbg !1118
  %26 = load ptr, ptr %s.addr, align 8, !dbg !1119
  %bi_valid27 = getelementptr inbounds %struct.deflate_state, ptr %26, i32 0, i32 57, !dbg !1120
  %27 = load i32, ptr %bi_valid27, align 4, !dbg !1121
  %sub = sub i32 %27, 8, !dbg !1121
  store i32 %sub, ptr %bi_valid27, align 4, !dbg !1121
  br label %if.end, !dbg !1122

if.end:                                           ; preds = %if.then15, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then
  ret void, !dbg !1123
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @deflate_stored(ptr noundef %s, i32 noundef %flush) #0 align 16 !dbg !1124 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %max_block_size = alloca i64, align 8
  %max_start = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1126, metadata !DIExpression()), !dbg !1130
  store i32 %flush, ptr %flush.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !1127, metadata !DIExpression()), !dbg !1131
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_block_size) #8, !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %max_block_size, metadata !1128, metadata !DIExpression()), !dbg !1133
  store i64 65535, ptr %max_block_size, align 8, !dbg !1133
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_start) #8, !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %max_start, metadata !1129, metadata !DIExpression()), !dbg !1135
  %0 = load i64, ptr %max_block_size, align 8, !dbg !1136
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1138
  %pending_buf_size = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 3, !dbg !1139
  %2 = load i64, ptr %pending_buf_size, align 8, !dbg !1139
  %sub = sub i64 %2, 5, !dbg !1140
  %cmp = icmp ugt i64 %0, %sub, !dbg !1141
  br i1 %cmp, label %if.then, label %if.end, !dbg !1142

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !1143
  %pending_buf_size1 = getelementptr inbounds %struct.deflate_state, ptr %3, i32 0, i32 3, !dbg !1145
  %4 = load i64, ptr %pending_buf_size1, align 8, !dbg !1145
  %sub2 = sub i64 %4, 5, !dbg !1146
  store i64 %sub2, ptr %max_block_size, align 8, !dbg !1147
  br label %if.end, !dbg !1148

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond, !dbg !1149

for.cond:                                         ; preds = %if.end84, %if.end
  %5 = load ptr, ptr %s.addr, align 8, !dbg !1150
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 28, !dbg !1155
  %6 = load i32, ptr %lookahead, align 4, !dbg !1155
  %cmp3 = icmp ule i32 %6, 1, !dbg !1156
  br i1 %cmp3, label %if.then4, label %if.end14, !dbg !1157

if.then4:                                         ; preds = %for.cond
  %7 = load ptr, ptr %s.addr, align 8, !dbg !1158
  call void @fill_window(ptr noundef %7) #9, !dbg !1160
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1161
  %lookahead5 = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 28, !dbg !1163
  %9 = load i32, ptr %lookahead5, align 4, !dbg !1163
  %cmp6 = icmp eq i32 %9, 0, !dbg !1164
  br i1 %cmp6, label %land.lhs.true, label %if.end9, !dbg !1165

land.lhs.true:                                    ; preds = %if.then4
  %10 = load i32, ptr %flush.addr, align 4, !dbg !1166
  %cmp7 = icmp eq i32 %10, 0, !dbg !1167
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1168

if.then8:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1169

if.end9:                                          ; preds = %land.lhs.true, %if.then4
  %11 = load ptr, ptr %s.addr, align 8, !dbg !1170
  %lookahead10 = getelementptr inbounds %struct.deflate_state, ptr %11, i32 0, i32 28, !dbg !1172
  %12 = load i32, ptr %lookahead10, align 4, !dbg !1172
  %cmp11 = icmp eq i32 %12, 0, !dbg !1173
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1174

if.then12:                                        ; preds = %if.end9
  br label %for.end, !dbg !1175

if.end13:                                         ; preds = %if.end9
  br label %if.end14, !dbg !1176

if.end14:                                         ; preds = %if.end13, %for.cond
  %13 = load ptr, ptr %s.addr, align 8, !dbg !1177
  %lookahead15 = getelementptr inbounds %struct.deflate_state, ptr %13, i32 0, i32 28, !dbg !1178
  %14 = load i32, ptr %lookahead15, align 4, !dbg !1178
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1179
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %15, i32 0, i32 26, !dbg !1180
  %16 = load i32, ptr %strstart, align 4, !dbg !1181
  %add = add i32 %16, %14, !dbg !1181
  store i32 %add, ptr %strstart, align 4, !dbg !1181
  %17 = load ptr, ptr %s.addr, align 8, !dbg !1182
  %lookahead16 = getelementptr inbounds %struct.deflate_state, ptr %17, i32 0, i32 28, !dbg !1183
  store i32 0, ptr %lookahead16, align 4, !dbg !1184
  %18 = load ptr, ptr %s.addr, align 8, !dbg !1185
  %block_start = getelementptr inbounds %struct.deflate_state, ptr %18, i32 0, i32 22, !dbg !1186
  %19 = load i64, ptr %block_start, align 8, !dbg !1186
  %20 = load i64, ptr %max_block_size, align 8, !dbg !1187
  %add17 = add i64 %19, %20, !dbg !1188
  store i64 %add17, ptr %max_start, align 8, !dbg !1189
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1190
  %strstart18 = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 26, !dbg !1192
  %22 = load i32, ptr %strstart18, align 4, !dbg !1192
  %cmp19 = icmp eq i32 %22, 0, !dbg !1193
  br i1 %cmp19, label %if.then23, label %lor.lhs.false, !dbg !1194

lor.lhs.false:                                    ; preds = %if.end14
  %23 = load ptr, ptr %s.addr, align 8, !dbg !1195
  %strstart20 = getelementptr inbounds %struct.deflate_state, ptr %23, i32 0, i32 26, !dbg !1196
  %24 = load i32, ptr %strstart20, align 4, !dbg !1196
  %conv = zext i32 %24 to i64, !dbg !1197
  %25 = load i64, ptr %max_start, align 8, !dbg !1198
  %cmp21 = icmp uge i64 %conv, %25, !dbg !1199
  br i1 %cmp21, label %if.then23, label %if.end48, !dbg !1200

if.then23:                                        ; preds = %lor.lhs.false, %if.end14
  %26 = load ptr, ptr %s.addr, align 8, !dbg !1201
  %strstart24 = getelementptr inbounds %struct.deflate_state, ptr %26, i32 0, i32 26, !dbg !1203
  %27 = load i32, ptr %strstart24, align 4, !dbg !1203
  %conv25 = zext i32 %27 to i64, !dbg !1201
  %28 = load i64, ptr %max_start, align 8, !dbg !1204
  %sub26 = sub i64 %conv25, %28, !dbg !1205
  %conv27 = trunc i64 %sub26 to i32, !dbg !1206
  %29 = load ptr, ptr %s.addr, align 8, !dbg !1207
  %lookahead28 = getelementptr inbounds %struct.deflate_state, ptr %29, i32 0, i32 28, !dbg !1208
  store i32 %conv27, ptr %lookahead28, align 4, !dbg !1209
  %30 = load i64, ptr %max_start, align 8, !dbg !1210
  %conv29 = trunc i64 %30 to i32, !dbg !1211
  %31 = load ptr, ptr %s.addr, align 8, !dbg !1212
  %strstart30 = getelementptr inbounds %struct.deflate_state, ptr %31, i32 0, i32 26, !dbg !1213
  store i32 %conv29, ptr %strstart30, align 4, !dbg !1214
  %32 = load ptr, ptr %s.addr, align 8, !dbg !1215
  %33 = load ptr, ptr %s.addr, align 8, !dbg !1215
  %block_start31 = getelementptr inbounds %struct.deflate_state, ptr %33, i32 0, i32 22, !dbg !1215
  %34 = load i64, ptr %block_start31, align 8, !dbg !1215
  %cmp32 = icmp sge i64 %34, 0, !dbg !1215
  br i1 %cmp32, label %cond.true, label %cond.false, !dbg !1215

cond.true:                                        ; preds = %if.then23
  %35 = load ptr, ptr %s.addr, align 8, !dbg !1215
  %window = getelementptr inbounds %struct.deflate_state, ptr %35, i32 0, i32 13, !dbg !1215
  %36 = load ptr, ptr %window, align 8, !dbg !1215
  %37 = load ptr, ptr %s.addr, align 8, !dbg !1215
  %block_start34 = getelementptr inbounds %struct.deflate_state, ptr %37, i32 0, i32 22, !dbg !1215
  %38 = load i64, ptr %block_start34, align 8, !dbg !1215
  %conv35 = trunc i64 %38 to i32, !dbg !1215
  %idxprom = zext i32 %conv35 to i64, !dbg !1215
  %arrayidx = getelementptr i8, ptr %36, i64 %idxprom, !dbg !1215
  br label %cond.end, !dbg !1215

cond.false:                                       ; preds = %if.then23
  br label %cond.end, !dbg !1215

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %cond.false ], !dbg !1215
  %39 = load ptr, ptr %s.addr, align 8, !dbg !1215
  %strstart36 = getelementptr inbounds %struct.deflate_state, ptr %39, i32 0, i32 26, !dbg !1215
  %40 = load i32, ptr %strstart36, align 4, !dbg !1215
  %conv37 = zext i32 %40 to i64, !dbg !1215
  %41 = load ptr, ptr %s.addr, align 8, !dbg !1215
  %block_start38 = getelementptr inbounds %struct.deflate_state, ptr %41, i32 0, i32 22, !dbg !1215
  %42 = load i64, ptr %block_start38, align 8, !dbg !1215
  %sub39 = sub i64 %conv37, %42, !dbg !1215
  %call = call i64 @zlib_tr_flush_block(ptr noundef %32, ptr noundef %cond, i64 noundef %sub39, i32 noundef 0) #9, !dbg !1215
  %43 = load ptr, ptr %s.addr, align 8, !dbg !1215
  %strstart40 = getelementptr inbounds %struct.deflate_state, ptr %43, i32 0, i32 26, !dbg !1215
  %44 = load i32, ptr %strstart40, align 4, !dbg !1215
  %conv41 = zext i32 %44 to i64, !dbg !1215
  %45 = load ptr, ptr %s.addr, align 8, !dbg !1215
  %block_start42 = getelementptr inbounds %struct.deflate_state, ptr %45, i32 0, i32 22, !dbg !1215
  store i64 %conv41, ptr %block_start42, align 8, !dbg !1215
  %46 = load ptr, ptr %s.addr, align 8, !dbg !1215
  %strm = getelementptr inbounds %struct.deflate_state, ptr %46, i32 0, i32 0, !dbg !1215
  %47 = load ptr, ptr %strm, align 8, !dbg !1215
  call void @flush_pending(ptr noundef %47) #9, !dbg !1215
  %48 = load ptr, ptr %s.addr, align 8, !dbg !1218
  %strm43 = getelementptr inbounds %struct.deflate_state, ptr %48, i32 0, i32 0, !dbg !1218
  %49 = load ptr, ptr %strm43, align 8, !dbg !1218
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %49, i32 0, i32 4, !dbg !1218
  %50 = load i64, ptr %avail_out, align 8, !dbg !1218
  %cmp44 = icmp eq i64 %50, 0, !dbg !1218
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1220

if.then46:                                        ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !1218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1218

if.end47:                                         ; preds = %cond.end
  br label %if.end48, !dbg !1221

if.end48:                                         ; preds = %if.end47, %lor.lhs.false
  %51 = load ptr, ptr %s.addr, align 8, !dbg !1222
  %strstart49 = getelementptr inbounds %struct.deflate_state, ptr %51, i32 0, i32 26, !dbg !1224
  %52 = load i32, ptr %strstart49, align 4, !dbg !1224
  %53 = load ptr, ptr %s.addr, align 8, !dbg !1225
  %block_start50 = getelementptr inbounds %struct.deflate_state, ptr %53, i32 0, i32 22, !dbg !1226
  %54 = load i64, ptr %block_start50, align 8, !dbg !1226
  %conv51 = trunc i64 %54 to i32, !dbg !1227
  %sub52 = sub i32 %52, %conv51, !dbg !1228
  %55 = load ptr, ptr %s.addr, align 8, !dbg !1229
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %55, i32 0, i32 10, !dbg !1229
  %56 = load i32, ptr %w_size, align 8, !dbg !1229
  %sub53 = sub i32 %56, 262, !dbg !1229
  %cmp54 = icmp uge i32 %sub52, %sub53, !dbg !1230
  br i1 %cmp54, label %if.then56, label %if.end84, !dbg !1231

if.then56:                                        ; preds = %if.end48
  %57 = load ptr, ptr %s.addr, align 8, !dbg !1232
  %58 = load ptr, ptr %s.addr, align 8, !dbg !1232
  %block_start57 = getelementptr inbounds %struct.deflate_state, ptr %58, i32 0, i32 22, !dbg !1232
  %59 = load i64, ptr %block_start57, align 8, !dbg !1232
  %cmp58 = icmp sge i64 %59, 0, !dbg !1232
  br i1 %cmp58, label %cond.true60, label %cond.false66, !dbg !1232

cond.true60:                                      ; preds = %if.then56
  %60 = load ptr, ptr %s.addr, align 8, !dbg !1232
  %window61 = getelementptr inbounds %struct.deflate_state, ptr %60, i32 0, i32 13, !dbg !1232
  %61 = load ptr, ptr %window61, align 8, !dbg !1232
  %62 = load ptr, ptr %s.addr, align 8, !dbg !1232
  %block_start62 = getelementptr inbounds %struct.deflate_state, ptr %62, i32 0, i32 22, !dbg !1232
  %63 = load i64, ptr %block_start62, align 8, !dbg !1232
  %conv63 = trunc i64 %63 to i32, !dbg !1232
  %idxprom64 = zext i32 %conv63 to i64, !dbg !1232
  %arrayidx65 = getelementptr i8, ptr %61, i64 %idxprom64, !dbg !1232
  br label %cond.end67, !dbg !1232

cond.false66:                                     ; preds = %if.then56
  br label %cond.end67, !dbg !1232

cond.end67:                                       ; preds = %cond.false66, %cond.true60
  %cond68 = phi ptr [ %arrayidx65, %cond.true60 ], [ null, %cond.false66 ], !dbg !1232
  %64 = load ptr, ptr %s.addr, align 8, !dbg !1232
  %strstart69 = getelementptr inbounds %struct.deflate_state, ptr %64, i32 0, i32 26, !dbg !1232
  %65 = load i32, ptr %strstart69, align 4, !dbg !1232
  %conv70 = zext i32 %65 to i64, !dbg !1232
  %66 = load ptr, ptr %s.addr, align 8, !dbg !1232
  %block_start71 = getelementptr inbounds %struct.deflate_state, ptr %66, i32 0, i32 22, !dbg !1232
  %67 = load i64, ptr %block_start71, align 8, !dbg !1232
  %sub72 = sub i64 %conv70, %67, !dbg !1232
  %call73 = call i64 @zlib_tr_flush_block(ptr noundef %57, ptr noundef %cond68, i64 noundef %sub72, i32 noundef 0) #9, !dbg !1232
  %68 = load ptr, ptr %s.addr, align 8, !dbg !1232
  %strstart74 = getelementptr inbounds %struct.deflate_state, ptr %68, i32 0, i32 26, !dbg !1232
  %69 = load i32, ptr %strstart74, align 4, !dbg !1232
  %conv75 = zext i32 %69 to i64, !dbg !1232
  %70 = load ptr, ptr %s.addr, align 8, !dbg !1232
  %block_start76 = getelementptr inbounds %struct.deflate_state, ptr %70, i32 0, i32 22, !dbg !1232
  store i64 %conv75, ptr %block_start76, align 8, !dbg !1232
  %71 = load ptr, ptr %s.addr, align 8, !dbg !1232
  %strm77 = getelementptr inbounds %struct.deflate_state, ptr %71, i32 0, i32 0, !dbg !1232
  %72 = load ptr, ptr %strm77, align 8, !dbg !1232
  call void @flush_pending(ptr noundef %72) #9, !dbg !1232
  %73 = load ptr, ptr %s.addr, align 8, !dbg !1236
  %strm78 = getelementptr inbounds %struct.deflate_state, ptr %73, i32 0, i32 0, !dbg !1236
  %74 = load ptr, ptr %strm78, align 8, !dbg !1236
  %avail_out79 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 4, !dbg !1236
  %75 = load i64, ptr %avail_out79, align 8, !dbg !1236
  %cmp80 = icmp eq i64 %75, 0, !dbg !1236
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !1238

if.then82:                                        ; preds = %cond.end67
  store i32 0, ptr %retval, align 4, !dbg !1236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1236

if.end83:                                         ; preds = %cond.end67
  br label %if.end84, !dbg !1239

if.end84:                                         ; preds = %if.end83, %if.end48
  br label %for.cond, !dbg !1240, !llvm.loop !1241

for.end:                                          ; preds = %if.then12
  %76 = load ptr, ptr %s.addr, align 8, !dbg !1245
  %77 = load ptr, ptr %s.addr, align 8, !dbg !1245
  %block_start85 = getelementptr inbounds %struct.deflate_state, ptr %77, i32 0, i32 22, !dbg !1245
  %78 = load i64, ptr %block_start85, align 8, !dbg !1245
  %cmp86 = icmp sge i64 %78, 0, !dbg !1245
  br i1 %cmp86, label %cond.true88, label %cond.false94, !dbg !1245

cond.true88:                                      ; preds = %for.end
  %79 = load ptr, ptr %s.addr, align 8, !dbg !1245
  %window89 = getelementptr inbounds %struct.deflate_state, ptr %79, i32 0, i32 13, !dbg !1245
  %80 = load ptr, ptr %window89, align 8, !dbg !1245
  %81 = load ptr, ptr %s.addr, align 8, !dbg !1245
  %block_start90 = getelementptr inbounds %struct.deflate_state, ptr %81, i32 0, i32 22, !dbg !1245
  %82 = load i64, ptr %block_start90, align 8, !dbg !1245
  %conv91 = trunc i64 %82 to i32, !dbg !1245
  %idxprom92 = zext i32 %conv91 to i64, !dbg !1245
  %arrayidx93 = getelementptr i8, ptr %80, i64 %idxprom92, !dbg !1245
  br label %cond.end95, !dbg !1245

cond.false94:                                     ; preds = %for.end
  br label %cond.end95, !dbg !1245

cond.end95:                                       ; preds = %cond.false94, %cond.true88
  %cond96 = phi ptr [ %arrayidx93, %cond.true88 ], [ null, %cond.false94 ], !dbg !1245
  %83 = load ptr, ptr %s.addr, align 8, !dbg !1245
  %strstart97 = getelementptr inbounds %struct.deflate_state, ptr %83, i32 0, i32 26, !dbg !1245
  %84 = load i32, ptr %strstart97, align 4, !dbg !1245
  %conv98 = zext i32 %84 to i64, !dbg !1245
  %85 = load ptr, ptr %s.addr, align 8, !dbg !1245
  %block_start99 = getelementptr inbounds %struct.deflate_state, ptr %85, i32 0, i32 22, !dbg !1245
  %86 = load i64, ptr %block_start99, align 8, !dbg !1245
  %sub100 = sub i64 %conv98, %86, !dbg !1245
  %87 = load i32, ptr %flush.addr, align 4, !dbg !1245
  %cmp101 = icmp eq i32 %87, 5, !dbg !1245
  %conv102 = zext i1 %cmp101 to i32, !dbg !1245
  %call103 = call i64 @zlib_tr_flush_block(ptr noundef %76, ptr noundef %cond96, i64 noundef %sub100, i32 noundef %conv102) #9, !dbg !1245
  %88 = load ptr, ptr %s.addr, align 8, !dbg !1245
  %strstart104 = getelementptr inbounds %struct.deflate_state, ptr %88, i32 0, i32 26, !dbg !1245
  %89 = load i32, ptr %strstart104, align 4, !dbg !1245
  %conv105 = zext i32 %89 to i64, !dbg !1245
  %90 = load ptr, ptr %s.addr, align 8, !dbg !1245
  %block_start106 = getelementptr inbounds %struct.deflate_state, ptr %90, i32 0, i32 22, !dbg !1245
  store i64 %conv105, ptr %block_start106, align 8, !dbg !1245
  %91 = load ptr, ptr %s.addr, align 8, !dbg !1245
  %strm107 = getelementptr inbounds %struct.deflate_state, ptr %91, i32 0, i32 0, !dbg !1245
  %92 = load ptr, ptr %strm107, align 8, !dbg !1245
  call void @flush_pending(ptr noundef %92) #9, !dbg !1245
  %93 = load ptr, ptr %s.addr, align 8, !dbg !1248
  %strm108 = getelementptr inbounds %struct.deflate_state, ptr %93, i32 0, i32 0, !dbg !1248
  %94 = load ptr, ptr %strm108, align 8, !dbg !1248
  %avail_out109 = getelementptr inbounds %struct.z_stream_s, ptr %94, i32 0, i32 4, !dbg !1248
  %95 = load i64, ptr %avail_out109, align 8, !dbg !1248
  %cmp110 = icmp eq i64 %95, 0, !dbg !1248
  br i1 %cmp110, label %if.then112, label %if.end116, !dbg !1250

if.then112:                                       ; preds = %cond.end95
  %96 = load i32, ptr %flush.addr, align 4, !dbg !1248
  %cmp113 = icmp eq i32 %96, 5, !dbg !1248
  %97 = zext i1 %cmp113 to i64, !dbg !1248
  %cond115 = select i1 %cmp113, i32 2, i32 0, !dbg !1248
  store i32 %cond115, ptr %retval, align 4, !dbg !1248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1248

if.end116:                                        ; preds = %cond.end95
  %98 = load i32, ptr %flush.addr, align 4, !dbg !1251
  %cmp117 = icmp eq i32 %98, 5, !dbg !1252
  %99 = zext i1 %cmp117 to i64, !dbg !1251
  %cond119 = select i1 %cmp117, i32 3, i32 1, !dbg !1251
  store i32 %cond119, ptr %retval, align 4, !dbg !1253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1253

cleanup:                                          ; preds = %if.end116, %if.then112, %if.then82, %if.then46, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_start) #8, !dbg !1254
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_block_size) #8, !dbg !1254
  %100 = load i32, ptr %retval, align 4, !dbg !1254
  ret i32 %100, !dbg !1254
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @deflate_fast(ptr noundef %s, i32 noundef %flush) #0 align 16 !dbg !1255 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %hash_head = alloca i32, align 4
  %bflush = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1257, metadata !DIExpression()), !dbg !1261
  store i32 %flush, ptr %flush.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !1258, metadata !DIExpression()), !dbg !1262
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash_head) #8, !dbg !1263
  call void @llvm.dbg.declare(metadata ptr %hash_head, metadata !1259, metadata !DIExpression()), !dbg !1264
  store i32 0, ptr %hash_head, align 4, !dbg !1264
  call void @llvm.lifetime.start.p0(i64 4, ptr %bflush) #8, !dbg !1265
  call void @llvm.dbg.declare(metadata ptr %bflush, metadata !1260, metadata !DIExpression()), !dbg !1266
  br label %for.cond, !dbg !1267

for.cond:                                         ; preds = %if.end159, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1268
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 28, !dbg !1273
  %1 = load i32, ptr %lookahead, align 4, !dbg !1273
  %cmp = icmp ult i32 %1, 262, !dbg !1274
  br i1 %cmp, label %if.then, label %if.end9, !dbg !1275

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1276
  call void @fill_window(ptr noundef %2) #9, !dbg !1278
  %3 = load ptr, ptr %s.addr, align 8, !dbg !1279
  %lookahead1 = getelementptr inbounds %struct.deflate_state, ptr %3, i32 0, i32 28, !dbg !1281
  %4 = load i32, ptr %lookahead1, align 4, !dbg !1281
  %cmp2 = icmp ult i32 %4, 262, !dbg !1282
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !1283

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, ptr %flush.addr, align 4, !dbg !1284
  %cmp3 = icmp eq i32 %5, 0, !dbg !1285
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1286

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1287

if.end:                                           ; preds = %land.lhs.true, %if.then
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1289
  %lookahead5 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 28, !dbg !1291
  %7 = load i32, ptr %lookahead5, align 4, !dbg !1291
  %cmp6 = icmp eq i32 %7, 0, !dbg !1292
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1293

if.then7:                                         ; preds = %if.end
  br label %for.end, !dbg !1294

if.end8:                                          ; preds = %if.end
  br label %if.end9, !dbg !1295

if.end9:                                          ; preds = %if.end8, %for.cond
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1296
  %lookahead10 = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 28, !dbg !1298
  %9 = load i32, ptr %lookahead10, align 4, !dbg !1298
  %cmp11 = icmp uge i32 %9, 3, !dbg !1299
  br i1 %cmp11, label %if.then12, label %if.end29, !dbg !1300

if.then12:                                        ; preds = %if.end9
  %10 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %ins_h = getelementptr inbounds %struct.deflate_state, ptr %10, i32 0, i32 17, !dbg !1301
  %11 = load i32, ptr %ins_h, align 8, !dbg !1301
  %12 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %hash_shift = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 21, !dbg !1301
  %13 = load i32, ptr %hash_shift, align 8, !dbg !1301
  %shl = shl i32 %11, %13, !dbg !1301
  %14 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %window = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 13, !dbg !1301
  %15 = load ptr, ptr %window, align 8, !dbg !1301
  %16 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 26, !dbg !1301
  %17 = load i32, ptr %strstart, align 4, !dbg !1301
  %add = add i32 %17, 2, !dbg !1301
  %idxprom = zext i32 %add to i64, !dbg !1301
  %arrayidx = getelementptr i8, ptr %15, i64 %idxprom, !dbg !1301
  %18 = load i8, ptr %arrayidx, align 1, !dbg !1301
  %conv = zext i8 %18 to i32, !dbg !1301
  %xor = xor i32 %shl, %conv, !dbg !1301
  %19 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %hash_mask = getelementptr inbounds %struct.deflate_state, ptr %19, i32 0, i32 20, !dbg !1301
  %20 = load i32, ptr %hash_mask, align 4, !dbg !1301
  %and = and i32 %xor, %20, !dbg !1301
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %ins_h13 = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 17, !dbg !1301
  store i32 %and, ptr %ins_h13, align 8, !dbg !1301
  %22 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %head = getelementptr inbounds %struct.deflate_state, ptr %22, i32 0, i32 16, !dbg !1301
  %23 = load ptr, ptr %head, align 8, !dbg !1301
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %ins_h14 = getelementptr inbounds %struct.deflate_state, ptr %24, i32 0, i32 17, !dbg !1301
  %25 = load i32, ptr %ins_h14, align 8, !dbg !1301
  %idxprom15 = zext i32 %25 to i64, !dbg !1301
  %arrayidx16 = getelementptr i16, ptr %23, i64 %idxprom15, !dbg !1301
  %26 = load i16, ptr %arrayidx16, align 2, !dbg !1301
  %conv17 = zext i16 %26 to i32, !dbg !1301
  store i32 %conv17, ptr %hash_head, align 4, !dbg !1301
  %conv18 = trunc i32 %conv17 to i16, !dbg !1301
  %27 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %prev = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 15, !dbg !1301
  %28 = load ptr, ptr %prev, align 8, !dbg !1301
  %29 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %strstart19 = getelementptr inbounds %struct.deflate_state, ptr %29, i32 0, i32 26, !dbg !1301
  %30 = load i32, ptr %strstart19, align 4, !dbg !1301
  %31 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %w_mask = getelementptr inbounds %struct.deflate_state, ptr %31, i32 0, i32 12, !dbg !1301
  %32 = load i32, ptr %w_mask, align 8, !dbg !1301
  %and20 = and i32 %30, %32, !dbg !1301
  %idxprom21 = zext i32 %and20 to i64, !dbg !1301
  %arrayidx22 = getelementptr i16, ptr %28, i64 %idxprom21, !dbg !1301
  store i16 %conv18, ptr %arrayidx22, align 2, !dbg !1301
  %33 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %strstart23 = getelementptr inbounds %struct.deflate_state, ptr %33, i32 0, i32 26, !dbg !1301
  %34 = load i32, ptr %strstart23, align 4, !dbg !1301
  %conv24 = trunc i32 %34 to i16, !dbg !1301
  %35 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %head25 = getelementptr inbounds %struct.deflate_state, ptr %35, i32 0, i32 16, !dbg !1301
  %36 = load ptr, ptr %head25, align 8, !dbg !1301
  %37 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %ins_h26 = getelementptr inbounds %struct.deflate_state, ptr %37, i32 0, i32 17, !dbg !1301
  %38 = load i32, ptr %ins_h26, align 8, !dbg !1301
  %idxprom27 = zext i32 %38 to i64, !dbg !1301
  %arrayidx28 = getelementptr i16, ptr %36, i64 %idxprom27, !dbg !1301
  store i16 %conv24, ptr %arrayidx28, align 2, !dbg !1301
  br label %if.end29, !dbg !1303

if.end29:                                         ; preds = %if.then12, %if.end9
  %39 = load i32, ptr %hash_head, align 4, !dbg !1304
  %cmp30 = icmp ne i32 %39, 0, !dbg !1306
  br i1 %cmp30, label %land.lhs.true32, label %if.end42, !dbg !1307

land.lhs.true32:                                  ; preds = %if.end29
  %40 = load ptr, ptr %s.addr, align 8, !dbg !1308
  %strstart33 = getelementptr inbounds %struct.deflate_state, ptr %40, i32 0, i32 26, !dbg !1309
  %41 = load i32, ptr %strstart33, align 4, !dbg !1309
  %42 = load i32, ptr %hash_head, align 4, !dbg !1310
  %sub = sub i32 %41, %42, !dbg !1311
  %43 = load ptr, ptr %s.addr, align 8, !dbg !1312
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %43, i32 0, i32 10, !dbg !1312
  %44 = load i32, ptr %w_size, align 8, !dbg !1312
  %sub34 = sub i32 %44, 262, !dbg !1312
  %cmp35 = icmp ule i32 %sub, %sub34, !dbg !1313
  br i1 %cmp35, label %if.then37, label %if.end42, !dbg !1314

if.then37:                                        ; preds = %land.lhs.true32
  %45 = load ptr, ptr %s.addr, align 8, !dbg !1315
  %strategy = getelementptr inbounds %struct.deflate_state, ptr %45, i32 0, i32 33, !dbg !1318
  %46 = load i32, ptr %strategy, align 8, !dbg !1318
  %cmp38 = icmp ne i32 %46, 2, !dbg !1319
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !1320

if.then40:                                        ; preds = %if.then37
  %47 = load ptr, ptr %s.addr, align 8, !dbg !1321
  %48 = load i32, ptr %hash_head, align 4, !dbg !1323
  %call = call i32 @longest_match(ptr noundef %47, i32 noundef %48) #9, !dbg !1324
  %49 = load ptr, ptr %s.addr, align 8, !dbg !1325
  %match_length = getelementptr inbounds %struct.deflate_state, ptr %49, i32 0, i32 23, !dbg !1326
  store i32 %call, ptr %match_length, align 8, !dbg !1327
  br label %if.end41, !dbg !1328

if.end41:                                         ; preds = %if.then40, %if.then37
  br label %if.end42, !dbg !1329

if.end42:                                         ; preds = %if.end41, %land.lhs.true32, %if.end29
  %50 = load ptr, ptr %s.addr, align 8, !dbg !1330
  %match_length43 = getelementptr inbounds %struct.deflate_state, ptr %50, i32 0, i32 23, !dbg !1332
  %51 = load i32, ptr %match_length43, align 8, !dbg !1332
  %cmp44 = icmp uge i32 %51, 3, !dbg !1333
  br i1 %cmp44, label %if.then46, label %if.else126, !dbg !1334

if.then46:                                        ; preds = %if.end42
  %52 = load ptr, ptr %s.addr, align 8, !dbg !1335
  %53 = load ptr, ptr %s.addr, align 8, !dbg !1337
  %strstart47 = getelementptr inbounds %struct.deflate_state, ptr %53, i32 0, i32 26, !dbg !1338
  %54 = load i32, ptr %strstart47, align 4, !dbg !1338
  %55 = load ptr, ptr %s.addr, align 8, !dbg !1339
  %match_start = getelementptr inbounds %struct.deflate_state, ptr %55, i32 0, i32 27, !dbg !1340
  %56 = load i32, ptr %match_start, align 8, !dbg !1340
  %sub48 = sub i32 %54, %56, !dbg !1341
  %57 = load ptr, ptr %s.addr, align 8, !dbg !1342
  %match_length49 = getelementptr inbounds %struct.deflate_state, ptr %57, i32 0, i32 23, !dbg !1343
  %58 = load i32, ptr %match_length49, align 8, !dbg !1343
  %sub50 = sub i32 %58, 3, !dbg !1344
  %call51 = call i32 @zlib_tr_tally(ptr noundef %52, i32 noundef %sub48, i32 noundef %sub50) #9, !dbg !1345
  store i32 %call51, ptr %bflush, align 4, !dbg !1346
  %59 = load ptr, ptr %s.addr, align 8, !dbg !1347
  %match_length52 = getelementptr inbounds %struct.deflate_state, ptr %59, i32 0, i32 23, !dbg !1348
  %60 = load i32, ptr %match_length52, align 8, !dbg !1348
  %61 = load ptr, ptr %s.addr, align 8, !dbg !1349
  %lookahead53 = getelementptr inbounds %struct.deflate_state, ptr %61, i32 0, i32 28, !dbg !1350
  %62 = load i32, ptr %lookahead53, align 4, !dbg !1351
  %sub54 = sub i32 %62, %60, !dbg !1351
  store i32 %sub54, ptr %lookahead53, align 4, !dbg !1351
  %63 = load ptr, ptr %s.addr, align 8, !dbg !1352
  %match_length55 = getelementptr inbounds %struct.deflate_state, ptr %63, i32 0, i32 23, !dbg !1354
  %64 = load i32, ptr %match_length55, align 8, !dbg !1354
  %65 = load ptr, ptr %s.addr, align 8, !dbg !1355
  %max_lazy_match = getelementptr inbounds %struct.deflate_state, ptr %65, i32 0, i32 31, !dbg !1356
  %66 = load i32, ptr %max_lazy_match, align 8, !dbg !1356
  %cmp56 = icmp ule i32 %64, %66, !dbg !1357
  br i1 %cmp56, label %land.lhs.true58, label %if.else, !dbg !1358

land.lhs.true58:                                  ; preds = %if.then46
  %67 = load ptr, ptr %s.addr, align 8, !dbg !1359
  %lookahead59 = getelementptr inbounds %struct.deflate_state, ptr %67, i32 0, i32 28, !dbg !1360
  %68 = load i32, ptr %lookahead59, align 4, !dbg !1360
  %cmp60 = icmp uge i32 %68, 3, !dbg !1361
  br i1 %cmp60, label %if.then62, label %if.else, !dbg !1362

if.then62:                                        ; preds = %land.lhs.true58
  %69 = load ptr, ptr %s.addr, align 8, !dbg !1363
  %match_length63 = getelementptr inbounds %struct.deflate_state, ptr %69, i32 0, i32 23, !dbg !1365
  %70 = load i32, ptr %match_length63, align 8, !dbg !1366
  %dec = add i32 %70, -1, !dbg !1366
  store i32 %dec, ptr %match_length63, align 8, !dbg !1366
  br label %do.body, !dbg !1367

do.body:                                          ; preds = %do.cond, %if.then62
  %71 = load ptr, ptr %s.addr, align 8, !dbg !1368
  %strstart64 = getelementptr inbounds %struct.deflate_state, ptr %71, i32 0, i32 26, !dbg !1370
  %72 = load i32, ptr %strstart64, align 4, !dbg !1371
  %inc = add i32 %72, 1, !dbg !1371
  store i32 %inc, ptr %strstart64, align 4, !dbg !1371
  %73 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %ins_h65 = getelementptr inbounds %struct.deflate_state, ptr %73, i32 0, i32 17, !dbg !1372
  %74 = load i32, ptr %ins_h65, align 8, !dbg !1372
  %75 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %hash_shift66 = getelementptr inbounds %struct.deflate_state, ptr %75, i32 0, i32 21, !dbg !1372
  %76 = load i32, ptr %hash_shift66, align 8, !dbg !1372
  %shl67 = shl i32 %74, %76, !dbg !1372
  %77 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %window68 = getelementptr inbounds %struct.deflate_state, ptr %77, i32 0, i32 13, !dbg !1372
  %78 = load ptr, ptr %window68, align 8, !dbg !1372
  %79 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %strstart69 = getelementptr inbounds %struct.deflate_state, ptr %79, i32 0, i32 26, !dbg !1372
  %80 = load i32, ptr %strstart69, align 4, !dbg !1372
  %add70 = add i32 %80, 2, !dbg !1372
  %idxprom71 = zext i32 %add70 to i64, !dbg !1372
  %arrayidx72 = getelementptr i8, ptr %78, i64 %idxprom71, !dbg !1372
  %81 = load i8, ptr %arrayidx72, align 1, !dbg !1372
  %conv73 = zext i8 %81 to i32, !dbg !1372
  %xor74 = xor i32 %shl67, %conv73, !dbg !1372
  %82 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %hash_mask75 = getelementptr inbounds %struct.deflate_state, ptr %82, i32 0, i32 20, !dbg !1372
  %83 = load i32, ptr %hash_mask75, align 4, !dbg !1372
  %and76 = and i32 %xor74, %83, !dbg !1372
  %84 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %ins_h77 = getelementptr inbounds %struct.deflate_state, ptr %84, i32 0, i32 17, !dbg !1372
  store i32 %and76, ptr %ins_h77, align 8, !dbg !1372
  %85 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %head78 = getelementptr inbounds %struct.deflate_state, ptr %85, i32 0, i32 16, !dbg !1372
  %86 = load ptr, ptr %head78, align 8, !dbg !1372
  %87 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %ins_h79 = getelementptr inbounds %struct.deflate_state, ptr %87, i32 0, i32 17, !dbg !1372
  %88 = load i32, ptr %ins_h79, align 8, !dbg !1372
  %idxprom80 = zext i32 %88 to i64, !dbg !1372
  %arrayidx81 = getelementptr i16, ptr %86, i64 %idxprom80, !dbg !1372
  %89 = load i16, ptr %arrayidx81, align 2, !dbg !1372
  %conv82 = zext i16 %89 to i32, !dbg !1372
  store i32 %conv82, ptr %hash_head, align 4, !dbg !1372
  %conv83 = trunc i32 %conv82 to i16, !dbg !1372
  %90 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %prev84 = getelementptr inbounds %struct.deflate_state, ptr %90, i32 0, i32 15, !dbg !1372
  %91 = load ptr, ptr %prev84, align 8, !dbg !1372
  %92 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %strstart85 = getelementptr inbounds %struct.deflate_state, ptr %92, i32 0, i32 26, !dbg !1372
  %93 = load i32, ptr %strstart85, align 4, !dbg !1372
  %94 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %w_mask86 = getelementptr inbounds %struct.deflate_state, ptr %94, i32 0, i32 12, !dbg !1372
  %95 = load i32, ptr %w_mask86, align 8, !dbg !1372
  %and87 = and i32 %93, %95, !dbg !1372
  %idxprom88 = zext i32 %and87 to i64, !dbg !1372
  %arrayidx89 = getelementptr i16, ptr %91, i64 %idxprom88, !dbg !1372
  store i16 %conv83, ptr %arrayidx89, align 2, !dbg !1372
  %96 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %strstart90 = getelementptr inbounds %struct.deflate_state, ptr %96, i32 0, i32 26, !dbg !1372
  %97 = load i32, ptr %strstart90, align 4, !dbg !1372
  %conv91 = trunc i32 %97 to i16, !dbg !1372
  %98 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %head92 = getelementptr inbounds %struct.deflate_state, ptr %98, i32 0, i32 16, !dbg !1372
  %99 = load ptr, ptr %head92, align 8, !dbg !1372
  %100 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %ins_h93 = getelementptr inbounds %struct.deflate_state, ptr %100, i32 0, i32 17, !dbg !1372
  %101 = load i32, ptr %ins_h93, align 8, !dbg !1372
  %idxprom94 = zext i32 %101 to i64, !dbg !1372
  %arrayidx95 = getelementptr i16, ptr %99, i64 %idxprom94, !dbg !1372
  store i16 %conv91, ptr %arrayidx95, align 2, !dbg !1372
  br label %do.cond, !dbg !1373

do.cond:                                          ; preds = %do.body
  %102 = load ptr, ptr %s.addr, align 8, !dbg !1374
  %match_length96 = getelementptr inbounds %struct.deflate_state, ptr %102, i32 0, i32 23, !dbg !1375
  %103 = load i32, ptr %match_length96, align 8, !dbg !1376
  %dec97 = add i32 %103, -1, !dbg !1376
  store i32 %dec97, ptr %match_length96, align 8, !dbg !1376
  %cmp98 = icmp ne i32 %dec97, 0, !dbg !1377
  br i1 %cmp98, label %do.body, label %do.end, !dbg !1373, !llvm.loop !1378

do.end:                                           ; preds = %do.cond
  %104 = load ptr, ptr %s.addr, align 8, !dbg !1381
  %strstart100 = getelementptr inbounds %struct.deflate_state, ptr %104, i32 0, i32 26, !dbg !1382
  %105 = load i32, ptr %strstart100, align 4, !dbg !1383
  %inc101 = add i32 %105, 1, !dbg !1383
  store i32 %inc101, ptr %strstart100, align 4, !dbg !1383
  br label %if.end125, !dbg !1384

if.else:                                          ; preds = %land.lhs.true58, %if.then46
  %106 = load ptr, ptr %s.addr, align 8, !dbg !1385
  %match_length102 = getelementptr inbounds %struct.deflate_state, ptr %106, i32 0, i32 23, !dbg !1387
  %107 = load i32, ptr %match_length102, align 8, !dbg !1387
  %108 = load ptr, ptr %s.addr, align 8, !dbg !1388
  %strstart103 = getelementptr inbounds %struct.deflate_state, ptr %108, i32 0, i32 26, !dbg !1389
  %109 = load i32, ptr %strstart103, align 4, !dbg !1390
  %add104 = add i32 %109, %107, !dbg !1390
  store i32 %add104, ptr %strstart103, align 4, !dbg !1390
  %110 = load ptr, ptr %s.addr, align 8, !dbg !1391
  %match_length105 = getelementptr inbounds %struct.deflate_state, ptr %110, i32 0, i32 23, !dbg !1392
  store i32 0, ptr %match_length105, align 8, !dbg !1393
  %111 = load ptr, ptr %s.addr, align 8, !dbg !1394
  %window106 = getelementptr inbounds %struct.deflate_state, ptr %111, i32 0, i32 13, !dbg !1395
  %112 = load ptr, ptr %window106, align 8, !dbg !1395
  %113 = load ptr, ptr %s.addr, align 8, !dbg !1396
  %strstart107 = getelementptr inbounds %struct.deflate_state, ptr %113, i32 0, i32 26, !dbg !1397
  %114 = load i32, ptr %strstart107, align 4, !dbg !1397
  %idxprom108 = zext i32 %114 to i64, !dbg !1394
  %arrayidx109 = getelementptr i8, ptr %112, i64 %idxprom108, !dbg !1394
  %115 = load i8, ptr %arrayidx109, align 1, !dbg !1394
  %conv110 = zext i8 %115 to i32, !dbg !1394
  %116 = load ptr, ptr %s.addr, align 8, !dbg !1398
  %ins_h111 = getelementptr inbounds %struct.deflate_state, ptr %116, i32 0, i32 17, !dbg !1399
  store i32 %conv110, ptr %ins_h111, align 8, !dbg !1400
  %117 = load ptr, ptr %s.addr, align 8, !dbg !1401
  %ins_h112 = getelementptr inbounds %struct.deflate_state, ptr %117, i32 0, i32 17, !dbg !1401
  %118 = load i32, ptr %ins_h112, align 8, !dbg !1401
  %119 = load ptr, ptr %s.addr, align 8, !dbg !1401
  %hash_shift113 = getelementptr inbounds %struct.deflate_state, ptr %119, i32 0, i32 21, !dbg !1401
  %120 = load i32, ptr %hash_shift113, align 8, !dbg !1401
  %shl114 = shl i32 %118, %120, !dbg !1401
  %121 = load ptr, ptr %s.addr, align 8, !dbg !1401
  %window115 = getelementptr inbounds %struct.deflate_state, ptr %121, i32 0, i32 13, !dbg !1401
  %122 = load ptr, ptr %window115, align 8, !dbg !1401
  %123 = load ptr, ptr %s.addr, align 8, !dbg !1401
  %strstart116 = getelementptr inbounds %struct.deflate_state, ptr %123, i32 0, i32 26, !dbg !1401
  %124 = load i32, ptr %strstart116, align 4, !dbg !1401
  %add117 = add i32 %124, 1, !dbg !1401
  %idxprom118 = zext i32 %add117 to i64, !dbg !1401
  %arrayidx119 = getelementptr i8, ptr %122, i64 %idxprom118, !dbg !1401
  %125 = load i8, ptr %arrayidx119, align 1, !dbg !1401
  %conv120 = zext i8 %125 to i32, !dbg !1401
  %xor121 = xor i32 %shl114, %conv120, !dbg !1401
  %126 = load ptr, ptr %s.addr, align 8, !dbg !1401
  %hash_mask122 = getelementptr inbounds %struct.deflate_state, ptr %126, i32 0, i32 20, !dbg !1401
  %127 = load i32, ptr %hash_mask122, align 4, !dbg !1401
  %and123 = and i32 %xor121, %127, !dbg !1401
  %128 = load ptr, ptr %s.addr, align 8, !dbg !1401
  %ins_h124 = getelementptr inbounds %struct.deflate_state, ptr %128, i32 0, i32 17, !dbg !1401
  store i32 %and123, ptr %ins_h124, align 8, !dbg !1401
  br label %if.end125

if.end125:                                        ; preds = %if.else, %do.end
  br label %if.end137, !dbg !1402

if.else126:                                       ; preds = %if.end42
  %129 = load ptr, ptr %s.addr, align 8, !dbg !1403
  %130 = load ptr, ptr %s.addr, align 8, !dbg !1405
  %window127 = getelementptr inbounds %struct.deflate_state, ptr %130, i32 0, i32 13, !dbg !1406
  %131 = load ptr, ptr %window127, align 8, !dbg !1406
  %132 = load ptr, ptr %s.addr, align 8, !dbg !1407
  %strstart128 = getelementptr inbounds %struct.deflate_state, ptr %132, i32 0, i32 26, !dbg !1408
  %133 = load i32, ptr %strstart128, align 4, !dbg !1408
  %idxprom129 = zext i32 %133 to i64, !dbg !1405
  %arrayidx130 = getelementptr i8, ptr %131, i64 %idxprom129, !dbg !1405
  %134 = load i8, ptr %arrayidx130, align 1, !dbg !1405
  %conv131 = zext i8 %134 to i32, !dbg !1405
  %call132 = call i32 @zlib_tr_tally(ptr noundef %129, i32 noundef 0, i32 noundef %conv131) #9, !dbg !1409
  store i32 %call132, ptr %bflush, align 4, !dbg !1410
  %135 = load ptr, ptr %s.addr, align 8, !dbg !1411
  %lookahead133 = getelementptr inbounds %struct.deflate_state, ptr %135, i32 0, i32 28, !dbg !1412
  %136 = load i32, ptr %lookahead133, align 4, !dbg !1413
  %dec134 = add i32 %136, -1, !dbg !1413
  store i32 %dec134, ptr %lookahead133, align 4, !dbg !1413
  %137 = load ptr, ptr %s.addr, align 8, !dbg !1414
  %strstart135 = getelementptr inbounds %struct.deflate_state, ptr %137, i32 0, i32 26, !dbg !1415
  %138 = load i32, ptr %strstart135, align 4, !dbg !1416
  %inc136 = add i32 %138, 1, !dbg !1416
  store i32 %inc136, ptr %strstart135, align 4, !dbg !1416
  br label %if.end137

if.end137:                                        ; preds = %if.else126, %if.end125
  %139 = load i32, ptr %bflush, align 4, !dbg !1417
  %tobool = icmp ne i32 %139, 0, !dbg !1417
  br i1 %tobool, label %if.then138, label %if.end159, !dbg !1419

if.then138:                                       ; preds = %if.end137
  %140 = load ptr, ptr %s.addr, align 8, !dbg !1420
  %141 = load ptr, ptr %s.addr, align 8, !dbg !1420
  %block_start = getelementptr inbounds %struct.deflate_state, ptr %141, i32 0, i32 22, !dbg !1420
  %142 = load i64, ptr %block_start, align 8, !dbg !1420
  %cmp139 = icmp sge i64 %142, 0, !dbg !1420
  br i1 %cmp139, label %cond.true, label %cond.false, !dbg !1420

cond.true:                                        ; preds = %if.then138
  %143 = load ptr, ptr %s.addr, align 8, !dbg !1420
  %window141 = getelementptr inbounds %struct.deflate_state, ptr %143, i32 0, i32 13, !dbg !1420
  %144 = load ptr, ptr %window141, align 8, !dbg !1420
  %145 = load ptr, ptr %s.addr, align 8, !dbg !1420
  %block_start142 = getelementptr inbounds %struct.deflate_state, ptr %145, i32 0, i32 22, !dbg !1420
  %146 = load i64, ptr %block_start142, align 8, !dbg !1420
  %conv143 = trunc i64 %146 to i32, !dbg !1420
  %idxprom144 = zext i32 %conv143 to i64, !dbg !1420
  %arrayidx145 = getelementptr i8, ptr %144, i64 %idxprom144, !dbg !1420
  br label %cond.end, !dbg !1420

cond.false:                                       ; preds = %if.then138
  br label %cond.end, !dbg !1420

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx145, %cond.true ], [ null, %cond.false ], !dbg !1420
  %147 = load ptr, ptr %s.addr, align 8, !dbg !1420
  %strstart146 = getelementptr inbounds %struct.deflate_state, ptr %147, i32 0, i32 26, !dbg !1420
  %148 = load i32, ptr %strstart146, align 4, !dbg !1420
  %conv147 = zext i32 %148 to i64, !dbg !1420
  %149 = load ptr, ptr %s.addr, align 8, !dbg !1420
  %block_start148 = getelementptr inbounds %struct.deflate_state, ptr %149, i32 0, i32 22, !dbg !1420
  %150 = load i64, ptr %block_start148, align 8, !dbg !1420
  %sub149 = sub i64 %conv147, %150, !dbg !1420
  %call150 = call i64 @zlib_tr_flush_block(ptr noundef %140, ptr noundef %cond, i64 noundef %sub149, i32 noundef 0) #9, !dbg !1420
  %151 = load ptr, ptr %s.addr, align 8, !dbg !1420
  %strstart151 = getelementptr inbounds %struct.deflate_state, ptr %151, i32 0, i32 26, !dbg !1420
  %152 = load i32, ptr %strstart151, align 4, !dbg !1420
  %conv152 = zext i32 %152 to i64, !dbg !1420
  %153 = load ptr, ptr %s.addr, align 8, !dbg !1420
  %block_start153 = getelementptr inbounds %struct.deflate_state, ptr %153, i32 0, i32 22, !dbg !1420
  store i64 %conv152, ptr %block_start153, align 8, !dbg !1420
  %154 = load ptr, ptr %s.addr, align 8, !dbg !1420
  %strm = getelementptr inbounds %struct.deflate_state, ptr %154, i32 0, i32 0, !dbg !1420
  %155 = load ptr, ptr %strm, align 8, !dbg !1420
  call void @flush_pending(ptr noundef %155) #9, !dbg !1420
  %156 = load ptr, ptr %s.addr, align 8, !dbg !1423
  %strm154 = getelementptr inbounds %struct.deflate_state, ptr %156, i32 0, i32 0, !dbg !1423
  %157 = load ptr, ptr %strm154, align 8, !dbg !1423
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %157, i32 0, i32 4, !dbg !1423
  %158 = load i64, ptr %avail_out, align 8, !dbg !1423
  %cmp155 = icmp eq i64 %158, 0, !dbg !1423
  br i1 %cmp155, label %if.then157, label %if.end158, !dbg !1425

if.then157:                                       ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !1423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1423

if.end158:                                        ; preds = %cond.end
  br label %if.end159, !dbg !1425

if.end159:                                        ; preds = %if.end158, %if.end137
  br label %for.cond, !dbg !1426, !llvm.loop !1427

for.end:                                          ; preds = %if.then7
  %159 = load ptr, ptr %s.addr, align 8, !dbg !1430
  %160 = load ptr, ptr %s.addr, align 8, !dbg !1430
  %block_start160 = getelementptr inbounds %struct.deflate_state, ptr %160, i32 0, i32 22, !dbg !1430
  %161 = load i64, ptr %block_start160, align 8, !dbg !1430
  %cmp161 = icmp sge i64 %161, 0, !dbg !1430
  br i1 %cmp161, label %cond.true163, label %cond.false169, !dbg !1430

cond.true163:                                     ; preds = %for.end
  %162 = load ptr, ptr %s.addr, align 8, !dbg !1430
  %window164 = getelementptr inbounds %struct.deflate_state, ptr %162, i32 0, i32 13, !dbg !1430
  %163 = load ptr, ptr %window164, align 8, !dbg !1430
  %164 = load ptr, ptr %s.addr, align 8, !dbg !1430
  %block_start165 = getelementptr inbounds %struct.deflate_state, ptr %164, i32 0, i32 22, !dbg !1430
  %165 = load i64, ptr %block_start165, align 8, !dbg !1430
  %conv166 = trunc i64 %165 to i32, !dbg !1430
  %idxprom167 = zext i32 %conv166 to i64, !dbg !1430
  %arrayidx168 = getelementptr i8, ptr %163, i64 %idxprom167, !dbg !1430
  br label %cond.end170, !dbg !1430

cond.false169:                                    ; preds = %for.end
  br label %cond.end170, !dbg !1430

cond.end170:                                      ; preds = %cond.false169, %cond.true163
  %cond171 = phi ptr [ %arrayidx168, %cond.true163 ], [ null, %cond.false169 ], !dbg !1430
  %166 = load ptr, ptr %s.addr, align 8, !dbg !1430
  %strstart172 = getelementptr inbounds %struct.deflate_state, ptr %166, i32 0, i32 26, !dbg !1430
  %167 = load i32, ptr %strstart172, align 4, !dbg !1430
  %conv173 = zext i32 %167 to i64, !dbg !1430
  %168 = load ptr, ptr %s.addr, align 8, !dbg !1430
  %block_start174 = getelementptr inbounds %struct.deflate_state, ptr %168, i32 0, i32 22, !dbg !1430
  %169 = load i64, ptr %block_start174, align 8, !dbg !1430
  %sub175 = sub i64 %conv173, %169, !dbg !1430
  %170 = load i32, ptr %flush.addr, align 4, !dbg !1430
  %cmp176 = icmp eq i32 %170, 5, !dbg !1430
  %conv177 = zext i1 %cmp176 to i32, !dbg !1430
  %call178 = call i64 @zlib_tr_flush_block(ptr noundef %159, ptr noundef %cond171, i64 noundef %sub175, i32 noundef %conv177) #9, !dbg !1430
  %171 = load ptr, ptr %s.addr, align 8, !dbg !1430
  %strstart179 = getelementptr inbounds %struct.deflate_state, ptr %171, i32 0, i32 26, !dbg !1430
  %172 = load i32, ptr %strstart179, align 4, !dbg !1430
  %conv180 = zext i32 %172 to i64, !dbg !1430
  %173 = load ptr, ptr %s.addr, align 8, !dbg !1430
  %block_start181 = getelementptr inbounds %struct.deflate_state, ptr %173, i32 0, i32 22, !dbg !1430
  store i64 %conv180, ptr %block_start181, align 8, !dbg !1430
  %174 = load ptr, ptr %s.addr, align 8, !dbg !1430
  %strm182 = getelementptr inbounds %struct.deflate_state, ptr %174, i32 0, i32 0, !dbg !1430
  %175 = load ptr, ptr %strm182, align 8, !dbg !1430
  call void @flush_pending(ptr noundef %175) #9, !dbg !1430
  %176 = load ptr, ptr %s.addr, align 8, !dbg !1433
  %strm183 = getelementptr inbounds %struct.deflate_state, ptr %176, i32 0, i32 0, !dbg !1433
  %177 = load ptr, ptr %strm183, align 8, !dbg !1433
  %avail_out184 = getelementptr inbounds %struct.z_stream_s, ptr %177, i32 0, i32 4, !dbg !1433
  %178 = load i64, ptr %avail_out184, align 8, !dbg !1433
  %cmp185 = icmp eq i64 %178, 0, !dbg !1433
  br i1 %cmp185, label %if.then187, label %if.end191, !dbg !1435

if.then187:                                       ; preds = %cond.end170
  %179 = load i32, ptr %flush.addr, align 4, !dbg !1433
  %cmp188 = icmp eq i32 %179, 5, !dbg !1433
  %180 = zext i1 %cmp188 to i64, !dbg !1433
  %cond190 = select i1 %cmp188, i32 2, i32 0, !dbg !1433
  store i32 %cond190, ptr %retval, align 4, !dbg !1433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1433

if.end191:                                        ; preds = %cond.end170
  %181 = load i32, ptr %flush.addr, align 4, !dbg !1436
  %cmp192 = icmp eq i32 %181, 5, !dbg !1437
  %182 = zext i1 %cmp192 to i64, !dbg !1436
  %cond194 = select i1 %cmp192, i32 3, i32 1, !dbg !1436
  store i32 %cond194, ptr %retval, align 4, !dbg !1438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1438

cleanup:                                          ; preds = %if.end191, %if.then187, %if.then157, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bflush) #8, !dbg !1439
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash_head) #8, !dbg !1439
  %183 = load i32, ptr %retval, align 4, !dbg !1439
  ret i32 %183, !dbg !1439
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @deflate_slow(ptr noundef %s, i32 noundef %flush) #0 align 16 !dbg !1440 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %hash_head = alloca i32, align 4
  %bflush = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %max_insert = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1442, metadata !DIExpression()), !dbg !1452
  store i32 %flush, ptr %flush.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !1443, metadata !DIExpression()), !dbg !1453
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash_head) #8, !dbg !1454
  call void @llvm.dbg.declare(metadata ptr %hash_head, metadata !1444, metadata !DIExpression()), !dbg !1455
  store i32 0, ptr %hash_head, align 4, !dbg !1455
  call void @llvm.lifetime.start.p0(i64 4, ptr %bflush) #8, !dbg !1456
  call void @llvm.dbg.declare(metadata ptr %bflush, metadata !1445, metadata !DIExpression()), !dbg !1457
  br label %for.cond, !dbg !1458

for.cond:                                         ; preds = %if.end209, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1459
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 28, !dbg !1461
  %1 = load i32, ptr %lookahead, align 4, !dbg !1461
  %cmp = icmp ult i32 %1, 262, !dbg !1462
  br i1 %cmp, label %if.then, label %if.end9, !dbg !1463

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1464
  call void @fill_window(ptr noundef %2) #9, !dbg !1466
  %3 = load ptr, ptr %s.addr, align 8, !dbg !1467
  %lookahead1 = getelementptr inbounds %struct.deflate_state, ptr %3, i32 0, i32 28, !dbg !1469
  %4 = load i32, ptr %lookahead1, align 4, !dbg !1469
  %cmp2 = icmp ult i32 %4, 262, !dbg !1470
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !1471

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, ptr %flush.addr, align 4, !dbg !1472
  %cmp3 = icmp eq i32 %5, 0, !dbg !1473
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1474

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup257, !dbg !1475

if.end:                                           ; preds = %land.lhs.true, %if.then
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1477
  %lookahead5 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 28, !dbg !1479
  %7 = load i32, ptr %lookahead5, align 4, !dbg !1479
  %cmp6 = icmp eq i32 %7, 0, !dbg !1480
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1481

if.then7:                                         ; preds = %if.end
  br label %for.end, !dbg !1482

if.end8:                                          ; preds = %if.end
  br label %if.end9, !dbg !1483

if.end9:                                          ; preds = %if.end8, %for.cond
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1484
  %lookahead10 = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 28, !dbg !1486
  %9 = load i32, ptr %lookahead10, align 4, !dbg !1486
  %cmp11 = icmp uge i32 %9, 3, !dbg !1487
  br i1 %cmp11, label %if.then12, label %if.end29, !dbg !1488

if.then12:                                        ; preds = %if.end9
  %10 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %ins_h = getelementptr inbounds %struct.deflate_state, ptr %10, i32 0, i32 17, !dbg !1489
  %11 = load i32, ptr %ins_h, align 8, !dbg !1489
  %12 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %hash_shift = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 21, !dbg !1489
  %13 = load i32, ptr %hash_shift, align 8, !dbg !1489
  %shl = shl i32 %11, %13, !dbg !1489
  %14 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %window = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 13, !dbg !1489
  %15 = load ptr, ptr %window, align 8, !dbg !1489
  %16 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 26, !dbg !1489
  %17 = load i32, ptr %strstart, align 4, !dbg !1489
  %add = add i32 %17, 2, !dbg !1489
  %idxprom = zext i32 %add to i64, !dbg !1489
  %arrayidx = getelementptr i8, ptr %15, i64 %idxprom, !dbg !1489
  %18 = load i8, ptr %arrayidx, align 1, !dbg !1489
  %conv = zext i8 %18 to i32, !dbg !1489
  %xor = xor i32 %shl, %conv, !dbg !1489
  %19 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %hash_mask = getelementptr inbounds %struct.deflate_state, ptr %19, i32 0, i32 20, !dbg !1489
  %20 = load i32, ptr %hash_mask, align 4, !dbg !1489
  %and = and i32 %xor, %20, !dbg !1489
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %ins_h13 = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 17, !dbg !1489
  store i32 %and, ptr %ins_h13, align 8, !dbg !1489
  %22 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %head = getelementptr inbounds %struct.deflate_state, ptr %22, i32 0, i32 16, !dbg !1489
  %23 = load ptr, ptr %head, align 8, !dbg !1489
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %ins_h14 = getelementptr inbounds %struct.deflate_state, ptr %24, i32 0, i32 17, !dbg !1489
  %25 = load i32, ptr %ins_h14, align 8, !dbg !1489
  %idxprom15 = zext i32 %25 to i64, !dbg !1489
  %arrayidx16 = getelementptr i16, ptr %23, i64 %idxprom15, !dbg !1489
  %26 = load i16, ptr %arrayidx16, align 2, !dbg !1489
  %conv17 = zext i16 %26 to i32, !dbg !1489
  store i32 %conv17, ptr %hash_head, align 4, !dbg !1489
  %conv18 = trunc i32 %conv17 to i16, !dbg !1489
  %27 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %prev = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 15, !dbg !1489
  %28 = load ptr, ptr %prev, align 8, !dbg !1489
  %29 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %strstart19 = getelementptr inbounds %struct.deflate_state, ptr %29, i32 0, i32 26, !dbg !1489
  %30 = load i32, ptr %strstart19, align 4, !dbg !1489
  %31 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %w_mask = getelementptr inbounds %struct.deflate_state, ptr %31, i32 0, i32 12, !dbg !1489
  %32 = load i32, ptr %w_mask, align 8, !dbg !1489
  %and20 = and i32 %30, %32, !dbg !1489
  %idxprom21 = zext i32 %and20 to i64, !dbg !1489
  %arrayidx22 = getelementptr i16, ptr %28, i64 %idxprom21, !dbg !1489
  store i16 %conv18, ptr %arrayidx22, align 2, !dbg !1489
  %33 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %strstart23 = getelementptr inbounds %struct.deflate_state, ptr %33, i32 0, i32 26, !dbg !1489
  %34 = load i32, ptr %strstart23, align 4, !dbg !1489
  %conv24 = trunc i32 %34 to i16, !dbg !1489
  %35 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %head25 = getelementptr inbounds %struct.deflate_state, ptr %35, i32 0, i32 16, !dbg !1489
  %36 = load ptr, ptr %head25, align 8, !dbg !1489
  %37 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %ins_h26 = getelementptr inbounds %struct.deflate_state, ptr %37, i32 0, i32 17, !dbg !1489
  %38 = load i32, ptr %ins_h26, align 8, !dbg !1489
  %idxprom27 = zext i32 %38 to i64, !dbg !1489
  %arrayidx28 = getelementptr i16, ptr %36, i64 %idxprom27, !dbg !1489
  store i16 %conv24, ptr %arrayidx28, align 2, !dbg !1489
  br label %if.end29, !dbg !1491

if.end29:                                         ; preds = %if.then12, %if.end9
  %39 = load ptr, ptr %s.addr, align 8, !dbg !1492
  %match_length = getelementptr inbounds %struct.deflate_state, ptr %39, i32 0, i32 23, !dbg !1493
  %40 = load i32, ptr %match_length, align 8, !dbg !1493
  %41 = load ptr, ptr %s.addr, align 8, !dbg !1494
  %prev_length = getelementptr inbounds %struct.deflate_state, ptr %41, i32 0, i32 29, !dbg !1495
  store i32 %40, ptr %prev_length, align 8, !dbg !1496
  %42 = load ptr, ptr %s.addr, align 8, !dbg !1497
  %match_start = getelementptr inbounds %struct.deflate_state, ptr %42, i32 0, i32 27, !dbg !1498
  %43 = load i32, ptr %match_start, align 8, !dbg !1498
  %44 = load ptr, ptr %s.addr, align 8, !dbg !1499
  %prev_match = getelementptr inbounds %struct.deflate_state, ptr %44, i32 0, i32 24, !dbg !1500
  store i32 %43, ptr %prev_match, align 4, !dbg !1501
  %45 = load ptr, ptr %s.addr, align 8, !dbg !1502
  %match_length30 = getelementptr inbounds %struct.deflate_state, ptr %45, i32 0, i32 23, !dbg !1503
  store i32 2, ptr %match_length30, align 8, !dbg !1504
  %46 = load i32, ptr %hash_head, align 4, !dbg !1505
  %cmp31 = icmp ne i32 %46, 0, !dbg !1507
  br i1 %cmp31, label %land.lhs.true33, label %if.end67, !dbg !1508

land.lhs.true33:                                  ; preds = %if.end29
  %47 = load ptr, ptr %s.addr, align 8, !dbg !1509
  %prev_length34 = getelementptr inbounds %struct.deflate_state, ptr %47, i32 0, i32 29, !dbg !1510
  %48 = load i32, ptr %prev_length34, align 8, !dbg !1510
  %49 = load ptr, ptr %s.addr, align 8, !dbg !1511
  %max_lazy_match = getelementptr inbounds %struct.deflate_state, ptr %49, i32 0, i32 31, !dbg !1512
  %50 = load i32, ptr %max_lazy_match, align 8, !dbg !1512
  %cmp35 = icmp ult i32 %48, %50, !dbg !1513
  br i1 %cmp35, label %land.lhs.true37, label %if.end67, !dbg !1514

land.lhs.true37:                                  ; preds = %land.lhs.true33
  %51 = load ptr, ptr %s.addr, align 8, !dbg !1515
  %strstart38 = getelementptr inbounds %struct.deflate_state, ptr %51, i32 0, i32 26, !dbg !1516
  %52 = load i32, ptr %strstart38, align 4, !dbg !1516
  %53 = load i32, ptr %hash_head, align 4, !dbg !1517
  %sub = sub i32 %52, %53, !dbg !1518
  %54 = load ptr, ptr %s.addr, align 8, !dbg !1519
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %54, i32 0, i32 10, !dbg !1519
  %55 = load i32, ptr %w_size, align 8, !dbg !1519
  %sub39 = sub i32 %55, 262, !dbg !1519
  %cmp40 = icmp ule i32 %sub, %sub39, !dbg !1520
  br i1 %cmp40, label %if.then42, label %if.end67, !dbg !1521

if.then42:                                        ; preds = %land.lhs.true37
  %56 = load ptr, ptr %s.addr, align 8, !dbg !1522
  %strategy = getelementptr inbounds %struct.deflate_state, ptr %56, i32 0, i32 33, !dbg !1525
  %57 = load i32, ptr %strategy, align 8, !dbg !1525
  %cmp43 = icmp ne i32 %57, 2, !dbg !1526
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !1527

if.then45:                                        ; preds = %if.then42
  %58 = load ptr, ptr %s.addr, align 8, !dbg !1528
  %59 = load i32, ptr %hash_head, align 4, !dbg !1530
  %call = call i32 @longest_match(ptr noundef %58, i32 noundef %59) #9, !dbg !1531
  %60 = load ptr, ptr %s.addr, align 8, !dbg !1532
  %match_length46 = getelementptr inbounds %struct.deflate_state, ptr %60, i32 0, i32 23, !dbg !1533
  store i32 %call, ptr %match_length46, align 8, !dbg !1534
  br label %if.end47, !dbg !1535

if.end47:                                         ; preds = %if.then45, %if.then42
  %61 = load ptr, ptr %s.addr, align 8, !dbg !1536
  %match_length48 = getelementptr inbounds %struct.deflate_state, ptr %61, i32 0, i32 23, !dbg !1538
  %62 = load i32, ptr %match_length48, align 8, !dbg !1538
  %cmp49 = icmp ule i32 %62, 5, !dbg !1539
  br i1 %cmp49, label %land.lhs.true51, label %if.end66, !dbg !1540

land.lhs.true51:                                  ; preds = %if.end47
  %63 = load ptr, ptr %s.addr, align 8, !dbg !1541
  %strategy52 = getelementptr inbounds %struct.deflate_state, ptr %63, i32 0, i32 33, !dbg !1542
  %64 = load i32, ptr %strategy52, align 8, !dbg !1542
  %cmp53 = icmp eq i32 %64, 1, !dbg !1543
  br i1 %cmp53, label %if.then64, label %lor.lhs.false, !dbg !1544

lor.lhs.false:                                    ; preds = %land.lhs.true51
  %65 = load ptr, ptr %s.addr, align 8, !dbg !1545
  %match_length55 = getelementptr inbounds %struct.deflate_state, ptr %65, i32 0, i32 23, !dbg !1546
  %66 = load i32, ptr %match_length55, align 8, !dbg !1546
  %cmp56 = icmp eq i32 %66, 3, !dbg !1547
  br i1 %cmp56, label %land.lhs.true58, label %if.end66, !dbg !1548

land.lhs.true58:                                  ; preds = %lor.lhs.false
  %67 = load ptr, ptr %s.addr, align 8, !dbg !1549
  %strstart59 = getelementptr inbounds %struct.deflate_state, ptr %67, i32 0, i32 26, !dbg !1550
  %68 = load i32, ptr %strstart59, align 4, !dbg !1550
  %69 = load ptr, ptr %s.addr, align 8, !dbg !1551
  %match_start60 = getelementptr inbounds %struct.deflate_state, ptr %69, i32 0, i32 27, !dbg !1552
  %70 = load i32, ptr %match_start60, align 8, !dbg !1552
  %sub61 = sub i32 %68, %70, !dbg !1553
  %cmp62 = icmp ugt i32 %sub61, 4096, !dbg !1554
  br i1 %cmp62, label %if.then64, label %if.end66, !dbg !1555

if.then64:                                        ; preds = %land.lhs.true58, %land.lhs.true51
  %71 = load ptr, ptr %s.addr, align 8, !dbg !1556
  %match_length65 = getelementptr inbounds %struct.deflate_state, ptr %71, i32 0, i32 23, !dbg !1558
  store i32 2, ptr %match_length65, align 8, !dbg !1559
  br label %if.end66, !dbg !1560

if.end66:                                         ; preds = %if.then64, %land.lhs.true58, %lor.lhs.false, %if.end47
  br label %if.end67, !dbg !1561

if.end67:                                         ; preds = %if.end66, %land.lhs.true37, %land.lhs.true33, %if.end29
  %72 = load ptr, ptr %s.addr, align 8, !dbg !1562
  %prev_length68 = getelementptr inbounds %struct.deflate_state, ptr %72, i32 0, i32 29, !dbg !1563
  %73 = load i32, ptr %prev_length68, align 8, !dbg !1563
  %cmp69 = icmp uge i32 %73, 3, !dbg !1564
  br i1 %cmp69, label %land.lhs.true71, label %if.else, !dbg !1565

land.lhs.true71:                                  ; preds = %if.end67
  %74 = load ptr, ptr %s.addr, align 8, !dbg !1566
  %match_length72 = getelementptr inbounds %struct.deflate_state, ptr %74, i32 0, i32 23, !dbg !1567
  %75 = load i32, ptr %match_length72, align 8, !dbg !1567
  %76 = load ptr, ptr %s.addr, align 8, !dbg !1568
  %prev_length73 = getelementptr inbounds %struct.deflate_state, ptr %76, i32 0, i32 29, !dbg !1569
  %77 = load i32, ptr %prev_length73, align 8, !dbg !1569
  %cmp74 = icmp ule i32 %75, %77, !dbg !1570
  br i1 %cmp74, label %if.then76, label %if.else, !dbg !1571

if.then76:                                        ; preds = %land.lhs.true71
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_insert) #8, !dbg !1572
  call void @llvm.dbg.declare(metadata ptr %max_insert, metadata !1446, metadata !DIExpression()), !dbg !1573
  %78 = load ptr, ptr %s.addr, align 8, !dbg !1574
  %strstart77 = getelementptr inbounds %struct.deflate_state, ptr %78, i32 0, i32 26, !dbg !1575
  %79 = load i32, ptr %strstart77, align 4, !dbg !1575
  %80 = load ptr, ptr %s.addr, align 8, !dbg !1576
  %lookahead78 = getelementptr inbounds %struct.deflate_state, ptr %80, i32 0, i32 28, !dbg !1577
  %81 = load i32, ptr %lookahead78, align 4, !dbg !1577
  %add79 = add i32 %79, %81, !dbg !1578
  %sub80 = sub i32 %add79, 3, !dbg !1579
  store i32 %sub80, ptr %max_insert, align 4, !dbg !1573
  %82 = load ptr, ptr %s.addr, align 8, !dbg !1580
  %83 = load ptr, ptr %s.addr, align 8, !dbg !1581
  %strstart81 = getelementptr inbounds %struct.deflate_state, ptr %83, i32 0, i32 26, !dbg !1582
  %84 = load i32, ptr %strstart81, align 4, !dbg !1582
  %sub82 = sub i32 %84, 1, !dbg !1583
  %85 = load ptr, ptr %s.addr, align 8, !dbg !1584
  %prev_match83 = getelementptr inbounds %struct.deflate_state, ptr %85, i32 0, i32 24, !dbg !1585
  %86 = load i32, ptr %prev_match83, align 4, !dbg !1585
  %sub84 = sub i32 %sub82, %86, !dbg !1586
  %87 = load ptr, ptr %s.addr, align 8, !dbg !1587
  %prev_length85 = getelementptr inbounds %struct.deflate_state, ptr %87, i32 0, i32 29, !dbg !1588
  %88 = load i32, ptr %prev_length85, align 8, !dbg !1588
  %sub86 = sub i32 %88, 3, !dbg !1589
  %call87 = call i32 @zlib_tr_tally(ptr noundef %82, i32 noundef %sub84, i32 noundef %sub86) #9, !dbg !1590
  store i32 %call87, ptr %bflush, align 4, !dbg !1591
  %89 = load ptr, ptr %s.addr, align 8, !dbg !1592
  %prev_length88 = getelementptr inbounds %struct.deflate_state, ptr %89, i32 0, i32 29, !dbg !1593
  %90 = load i32, ptr %prev_length88, align 8, !dbg !1593
  %sub89 = sub i32 %90, 1, !dbg !1594
  %91 = load ptr, ptr %s.addr, align 8, !dbg !1595
  %lookahead90 = getelementptr inbounds %struct.deflate_state, ptr %91, i32 0, i32 28, !dbg !1596
  %92 = load i32, ptr %lookahead90, align 4, !dbg !1597
  %sub91 = sub i32 %92, %sub89, !dbg !1597
  store i32 %sub91, ptr %lookahead90, align 4, !dbg !1597
  %93 = load ptr, ptr %s.addr, align 8, !dbg !1598
  %prev_length92 = getelementptr inbounds %struct.deflate_state, ptr %93, i32 0, i32 29, !dbg !1599
  %94 = load i32, ptr %prev_length92, align 8, !dbg !1600
  %sub93 = sub i32 %94, 2, !dbg !1600
  store i32 %sub93, ptr %prev_length92, align 8, !dbg !1600
  br label %do.body, !dbg !1601

do.body:                                          ; preds = %do.cond, %if.then76
  %95 = load ptr, ptr %s.addr, align 8, !dbg !1602
  %strstart94 = getelementptr inbounds %struct.deflate_state, ptr %95, i32 0, i32 26, !dbg !1605
  %96 = load i32, ptr %strstart94, align 4, !dbg !1606
  %inc = add i32 %96, 1, !dbg !1606
  store i32 %inc, ptr %strstart94, align 4, !dbg !1606
  %97 = load i32, ptr %max_insert, align 4, !dbg !1607
  %cmp95 = icmp ule i32 %inc, %97, !dbg !1608
  br i1 %cmp95, label %if.then97, label %if.end129, !dbg !1609

if.then97:                                        ; preds = %do.body
  %98 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %ins_h98 = getelementptr inbounds %struct.deflate_state, ptr %98, i32 0, i32 17, !dbg !1610
  %99 = load i32, ptr %ins_h98, align 8, !dbg !1610
  %100 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %hash_shift99 = getelementptr inbounds %struct.deflate_state, ptr %100, i32 0, i32 21, !dbg !1610
  %101 = load i32, ptr %hash_shift99, align 8, !dbg !1610
  %shl100 = shl i32 %99, %101, !dbg !1610
  %102 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %window101 = getelementptr inbounds %struct.deflate_state, ptr %102, i32 0, i32 13, !dbg !1610
  %103 = load ptr, ptr %window101, align 8, !dbg !1610
  %104 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %strstart102 = getelementptr inbounds %struct.deflate_state, ptr %104, i32 0, i32 26, !dbg !1610
  %105 = load i32, ptr %strstart102, align 4, !dbg !1610
  %add103 = add i32 %105, 2, !dbg !1610
  %idxprom104 = zext i32 %add103 to i64, !dbg !1610
  %arrayidx105 = getelementptr i8, ptr %103, i64 %idxprom104, !dbg !1610
  %106 = load i8, ptr %arrayidx105, align 1, !dbg !1610
  %conv106 = zext i8 %106 to i32, !dbg !1610
  %xor107 = xor i32 %shl100, %conv106, !dbg !1610
  %107 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %hash_mask108 = getelementptr inbounds %struct.deflate_state, ptr %107, i32 0, i32 20, !dbg !1610
  %108 = load i32, ptr %hash_mask108, align 4, !dbg !1610
  %and109 = and i32 %xor107, %108, !dbg !1610
  %109 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %ins_h110 = getelementptr inbounds %struct.deflate_state, ptr %109, i32 0, i32 17, !dbg !1610
  store i32 %and109, ptr %ins_h110, align 8, !dbg !1610
  %110 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %head111 = getelementptr inbounds %struct.deflate_state, ptr %110, i32 0, i32 16, !dbg !1610
  %111 = load ptr, ptr %head111, align 8, !dbg !1610
  %112 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %ins_h112 = getelementptr inbounds %struct.deflate_state, ptr %112, i32 0, i32 17, !dbg !1610
  %113 = load i32, ptr %ins_h112, align 8, !dbg !1610
  %idxprom113 = zext i32 %113 to i64, !dbg !1610
  %arrayidx114 = getelementptr i16, ptr %111, i64 %idxprom113, !dbg !1610
  %114 = load i16, ptr %arrayidx114, align 2, !dbg !1610
  %conv115 = zext i16 %114 to i32, !dbg !1610
  store i32 %conv115, ptr %hash_head, align 4, !dbg !1610
  %conv116 = trunc i32 %conv115 to i16, !dbg !1610
  %115 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %prev117 = getelementptr inbounds %struct.deflate_state, ptr %115, i32 0, i32 15, !dbg !1610
  %116 = load ptr, ptr %prev117, align 8, !dbg !1610
  %117 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %strstart118 = getelementptr inbounds %struct.deflate_state, ptr %117, i32 0, i32 26, !dbg !1610
  %118 = load i32, ptr %strstart118, align 4, !dbg !1610
  %119 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %w_mask119 = getelementptr inbounds %struct.deflate_state, ptr %119, i32 0, i32 12, !dbg !1610
  %120 = load i32, ptr %w_mask119, align 8, !dbg !1610
  %and120 = and i32 %118, %120, !dbg !1610
  %idxprom121 = zext i32 %and120 to i64, !dbg !1610
  %arrayidx122 = getelementptr i16, ptr %116, i64 %idxprom121, !dbg !1610
  store i16 %conv116, ptr %arrayidx122, align 2, !dbg !1610
  %121 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %strstart123 = getelementptr inbounds %struct.deflate_state, ptr %121, i32 0, i32 26, !dbg !1610
  %122 = load i32, ptr %strstart123, align 4, !dbg !1610
  %conv124 = trunc i32 %122 to i16, !dbg !1610
  %123 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %head125 = getelementptr inbounds %struct.deflate_state, ptr %123, i32 0, i32 16, !dbg !1610
  %124 = load ptr, ptr %head125, align 8, !dbg !1610
  %125 = load ptr, ptr %s.addr, align 8, !dbg !1610
  %ins_h126 = getelementptr inbounds %struct.deflate_state, ptr %125, i32 0, i32 17, !dbg !1610
  %126 = load i32, ptr %ins_h126, align 8, !dbg !1610
  %idxprom127 = zext i32 %126 to i64, !dbg !1610
  %arrayidx128 = getelementptr i16, ptr %124, i64 %idxprom127, !dbg !1610
  store i16 %conv124, ptr %arrayidx128, align 2, !dbg !1610
  br label %if.end129, !dbg !1612

if.end129:                                        ; preds = %if.then97, %do.body
  br label %do.cond, !dbg !1613

do.cond:                                          ; preds = %if.end129
  %127 = load ptr, ptr %s.addr, align 8, !dbg !1614
  %prev_length130 = getelementptr inbounds %struct.deflate_state, ptr %127, i32 0, i32 29, !dbg !1615
  %128 = load i32, ptr %prev_length130, align 8, !dbg !1616
  %dec = add i32 %128, -1, !dbg !1616
  store i32 %dec, ptr %prev_length130, align 8, !dbg !1616
  %cmp131 = icmp ne i32 %dec, 0, !dbg !1617
  br i1 %cmp131, label %do.body, label %do.end, !dbg !1613, !llvm.loop !1618

do.end:                                           ; preds = %do.cond
  %129 = load ptr, ptr %s.addr, align 8, !dbg !1620
  %match_available = getelementptr inbounds %struct.deflate_state, ptr %129, i32 0, i32 25, !dbg !1621
  store i32 0, ptr %match_available, align 8, !dbg !1622
  %130 = load ptr, ptr %s.addr, align 8, !dbg !1623
  %match_length133 = getelementptr inbounds %struct.deflate_state, ptr %130, i32 0, i32 23, !dbg !1624
  store i32 2, ptr %match_length133, align 8, !dbg !1625
  %131 = load ptr, ptr %s.addr, align 8, !dbg !1626
  %strstart134 = getelementptr inbounds %struct.deflate_state, ptr %131, i32 0, i32 26, !dbg !1627
  %132 = load i32, ptr %strstart134, align 4, !dbg !1628
  %inc135 = add i32 %132, 1, !dbg !1628
  store i32 %inc135, ptr %strstart134, align 4, !dbg !1628
  %133 = load i32, ptr %bflush, align 4, !dbg !1629
  %tobool = icmp ne i32 %133, 0, !dbg !1629
  br i1 %tobool, label %if.then136, label %if.end157, !dbg !1631

if.then136:                                       ; preds = %do.end
  %134 = load ptr, ptr %s.addr, align 8, !dbg !1632
  %135 = load ptr, ptr %s.addr, align 8, !dbg !1632
  %block_start = getelementptr inbounds %struct.deflate_state, ptr %135, i32 0, i32 22, !dbg !1632
  %136 = load i64, ptr %block_start, align 8, !dbg !1632
  %cmp137 = icmp sge i64 %136, 0, !dbg !1632
  br i1 %cmp137, label %cond.true, label %cond.false, !dbg !1632

cond.true:                                        ; preds = %if.then136
  %137 = load ptr, ptr %s.addr, align 8, !dbg !1632
  %window139 = getelementptr inbounds %struct.deflate_state, ptr %137, i32 0, i32 13, !dbg !1632
  %138 = load ptr, ptr %window139, align 8, !dbg !1632
  %139 = load ptr, ptr %s.addr, align 8, !dbg !1632
  %block_start140 = getelementptr inbounds %struct.deflate_state, ptr %139, i32 0, i32 22, !dbg !1632
  %140 = load i64, ptr %block_start140, align 8, !dbg !1632
  %conv141 = trunc i64 %140 to i32, !dbg !1632
  %idxprom142 = zext i32 %conv141 to i64, !dbg !1632
  %arrayidx143 = getelementptr i8, ptr %138, i64 %idxprom142, !dbg !1632
  br label %cond.end, !dbg !1632

cond.false:                                       ; preds = %if.then136
  br label %cond.end, !dbg !1632

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx143, %cond.true ], [ null, %cond.false ], !dbg !1632
  %141 = load ptr, ptr %s.addr, align 8, !dbg !1632
  %strstart144 = getelementptr inbounds %struct.deflate_state, ptr %141, i32 0, i32 26, !dbg !1632
  %142 = load i32, ptr %strstart144, align 4, !dbg !1632
  %conv145 = zext i32 %142 to i64, !dbg !1632
  %143 = load ptr, ptr %s.addr, align 8, !dbg !1632
  %block_start146 = getelementptr inbounds %struct.deflate_state, ptr %143, i32 0, i32 22, !dbg !1632
  %144 = load i64, ptr %block_start146, align 8, !dbg !1632
  %sub147 = sub i64 %conv145, %144, !dbg !1632
  %call148 = call i64 @zlib_tr_flush_block(ptr noundef %134, ptr noundef %cond, i64 noundef %sub147, i32 noundef 0) #9, !dbg !1632
  %145 = load ptr, ptr %s.addr, align 8, !dbg !1632
  %strstart149 = getelementptr inbounds %struct.deflate_state, ptr %145, i32 0, i32 26, !dbg !1632
  %146 = load i32, ptr %strstart149, align 4, !dbg !1632
  %conv150 = zext i32 %146 to i64, !dbg !1632
  %147 = load ptr, ptr %s.addr, align 8, !dbg !1632
  %block_start151 = getelementptr inbounds %struct.deflate_state, ptr %147, i32 0, i32 22, !dbg !1632
  store i64 %conv150, ptr %block_start151, align 8, !dbg !1632
  %148 = load ptr, ptr %s.addr, align 8, !dbg !1632
  %strm = getelementptr inbounds %struct.deflate_state, ptr %148, i32 0, i32 0, !dbg !1632
  %149 = load ptr, ptr %strm, align 8, !dbg !1632
  call void @flush_pending(ptr noundef %149) #9, !dbg !1632
  %150 = load ptr, ptr %s.addr, align 8, !dbg !1635
  %strm152 = getelementptr inbounds %struct.deflate_state, ptr %150, i32 0, i32 0, !dbg !1635
  %151 = load ptr, ptr %strm152, align 8, !dbg !1635
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %151, i32 0, i32 4, !dbg !1635
  %152 = load i64, ptr %avail_out, align 8, !dbg !1635
  %cmp153 = icmp eq i64 %152, 0, !dbg !1635
  br i1 %cmp153, label %if.then155, label %if.end156, !dbg !1637

if.then155:                                       ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !1635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1635

if.end156:                                        ; preds = %cond.end
  br label %if.end157, !dbg !1637

if.end157:                                        ; preds = %if.end156, %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1638
  br label %cleanup, !dbg !1638

cleanup:                                          ; preds = %if.end157, %if.then155
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_insert) #8, !dbg !1638
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup257 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end209, !dbg !1639

if.else:                                          ; preds = %land.lhs.true71, %if.end67
  %153 = load ptr, ptr %s.addr, align 8, !dbg !1640
  %match_available158 = getelementptr inbounds %struct.deflate_state, ptr %153, i32 0, i32 25, !dbg !1642
  %154 = load i32, ptr %match_available158, align 8, !dbg !1642
  %tobool159 = icmp ne i32 %154, 0, !dbg !1640
  br i1 %tobool159, label %if.then160, label %if.else202, !dbg !1643

if.then160:                                       ; preds = %if.else
  %155 = load ptr, ptr %s.addr, align 8, !dbg !1644
  %156 = load ptr, ptr %s.addr, align 8, !dbg !1647
  %window161 = getelementptr inbounds %struct.deflate_state, ptr %156, i32 0, i32 13, !dbg !1648
  %157 = load ptr, ptr %window161, align 8, !dbg !1648
  %158 = load ptr, ptr %s.addr, align 8, !dbg !1649
  %strstart162 = getelementptr inbounds %struct.deflate_state, ptr %158, i32 0, i32 26, !dbg !1650
  %159 = load i32, ptr %strstart162, align 4, !dbg !1650
  %sub163 = sub i32 %159, 1, !dbg !1651
  %idxprom164 = zext i32 %sub163 to i64, !dbg !1647
  %arrayidx165 = getelementptr i8, ptr %157, i64 %idxprom164, !dbg !1647
  %160 = load i8, ptr %arrayidx165, align 1, !dbg !1647
  %conv166 = zext i8 %160 to i32, !dbg !1647
  %call167 = call i32 @zlib_tr_tally(ptr noundef %155, i32 noundef 0, i32 noundef %conv166) #9, !dbg !1652
  %tobool168 = icmp ne i32 %call167, 0, !dbg !1652
  br i1 %tobool168, label %if.then169, label %if.end191, !dbg !1653

if.then169:                                       ; preds = %if.then160
  %161 = load ptr, ptr %s.addr, align 8, !dbg !1654
  %162 = load ptr, ptr %s.addr, align 8, !dbg !1654
  %block_start170 = getelementptr inbounds %struct.deflate_state, ptr %162, i32 0, i32 22, !dbg !1654
  %163 = load i64, ptr %block_start170, align 8, !dbg !1654
  %cmp171 = icmp sge i64 %163, 0, !dbg !1654
  br i1 %cmp171, label %cond.true173, label %cond.false179, !dbg !1654

cond.true173:                                     ; preds = %if.then169
  %164 = load ptr, ptr %s.addr, align 8, !dbg !1654
  %window174 = getelementptr inbounds %struct.deflate_state, ptr %164, i32 0, i32 13, !dbg !1654
  %165 = load ptr, ptr %window174, align 8, !dbg !1654
  %166 = load ptr, ptr %s.addr, align 8, !dbg !1654
  %block_start175 = getelementptr inbounds %struct.deflate_state, ptr %166, i32 0, i32 22, !dbg !1654
  %167 = load i64, ptr %block_start175, align 8, !dbg !1654
  %conv176 = trunc i64 %167 to i32, !dbg !1654
  %idxprom177 = zext i32 %conv176 to i64, !dbg !1654
  %arrayidx178 = getelementptr i8, ptr %165, i64 %idxprom177, !dbg !1654
  br label %cond.end180, !dbg !1654

cond.false179:                                    ; preds = %if.then169
  br label %cond.end180, !dbg !1654

cond.end180:                                      ; preds = %cond.false179, %cond.true173
  %cond181 = phi ptr [ %arrayidx178, %cond.true173 ], [ null, %cond.false179 ], !dbg !1654
  %168 = load ptr, ptr %s.addr, align 8, !dbg !1654
  %strstart182 = getelementptr inbounds %struct.deflate_state, ptr %168, i32 0, i32 26, !dbg !1654
  %169 = load i32, ptr %strstart182, align 4, !dbg !1654
  %conv183 = zext i32 %169 to i64, !dbg !1654
  %170 = load ptr, ptr %s.addr, align 8, !dbg !1654
  %block_start184 = getelementptr inbounds %struct.deflate_state, ptr %170, i32 0, i32 22, !dbg !1654
  %171 = load i64, ptr %block_start184, align 8, !dbg !1654
  %sub185 = sub i64 %conv183, %171, !dbg !1654
  %call186 = call i64 @zlib_tr_flush_block(ptr noundef %161, ptr noundef %cond181, i64 noundef %sub185, i32 noundef 0) #9, !dbg !1654
  %172 = load ptr, ptr %s.addr, align 8, !dbg !1654
  %strstart187 = getelementptr inbounds %struct.deflate_state, ptr %172, i32 0, i32 26, !dbg !1654
  %173 = load i32, ptr %strstart187, align 4, !dbg !1654
  %conv188 = zext i32 %173 to i64, !dbg !1654
  %174 = load ptr, ptr %s.addr, align 8, !dbg !1654
  %block_start189 = getelementptr inbounds %struct.deflate_state, ptr %174, i32 0, i32 22, !dbg !1654
  store i64 %conv188, ptr %block_start189, align 8, !dbg !1654
  %175 = load ptr, ptr %s.addr, align 8, !dbg !1654
  %strm190 = getelementptr inbounds %struct.deflate_state, ptr %175, i32 0, i32 0, !dbg !1654
  %176 = load ptr, ptr %strm190, align 8, !dbg !1654
  call void @flush_pending(ptr noundef %176) #9, !dbg !1654
  br label %if.end191, !dbg !1657

if.end191:                                        ; preds = %cond.end180, %if.then160
  %177 = load ptr, ptr %s.addr, align 8, !dbg !1658
  %strstart192 = getelementptr inbounds %struct.deflate_state, ptr %177, i32 0, i32 26, !dbg !1659
  %178 = load i32, ptr %strstart192, align 4, !dbg !1660
  %inc193 = add i32 %178, 1, !dbg !1660
  store i32 %inc193, ptr %strstart192, align 4, !dbg !1660
  %179 = load ptr, ptr %s.addr, align 8, !dbg !1661
  %lookahead194 = getelementptr inbounds %struct.deflate_state, ptr %179, i32 0, i32 28, !dbg !1662
  %180 = load i32, ptr %lookahead194, align 4, !dbg !1663
  %dec195 = add i32 %180, -1, !dbg !1663
  store i32 %dec195, ptr %lookahead194, align 4, !dbg !1663
  %181 = load ptr, ptr %s.addr, align 8, !dbg !1664
  %strm196 = getelementptr inbounds %struct.deflate_state, ptr %181, i32 0, i32 0, !dbg !1666
  %182 = load ptr, ptr %strm196, align 8, !dbg !1666
  %avail_out197 = getelementptr inbounds %struct.z_stream_s, ptr %182, i32 0, i32 4, !dbg !1667
  %183 = load i64, ptr %avail_out197, align 8, !dbg !1667
  %cmp198 = icmp eq i64 %183, 0, !dbg !1668
  br i1 %cmp198, label %if.then200, label %if.end201, !dbg !1669

if.then200:                                       ; preds = %if.end191
  store i32 0, ptr %retval, align 4, !dbg !1670
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup257, !dbg !1670

if.end201:                                        ; preds = %if.end191
  br label %if.end208, !dbg !1671

if.else202:                                       ; preds = %if.else
  %184 = load ptr, ptr %s.addr, align 8, !dbg !1672
  %match_available203 = getelementptr inbounds %struct.deflate_state, ptr %184, i32 0, i32 25, !dbg !1674
  store i32 1, ptr %match_available203, align 8, !dbg !1675
  %185 = load ptr, ptr %s.addr, align 8, !dbg !1676
  %strstart204 = getelementptr inbounds %struct.deflate_state, ptr %185, i32 0, i32 26, !dbg !1677
  %186 = load i32, ptr %strstart204, align 4, !dbg !1678
  %inc205 = add i32 %186, 1, !dbg !1678
  store i32 %inc205, ptr %strstart204, align 4, !dbg !1678
  %187 = load ptr, ptr %s.addr, align 8, !dbg !1679
  %lookahead206 = getelementptr inbounds %struct.deflate_state, ptr %187, i32 0, i32 28, !dbg !1680
  %188 = load i32, ptr %lookahead206, align 4, !dbg !1681
  %dec207 = add i32 %188, -1, !dbg !1681
  store i32 %dec207, ptr %lookahead206, align 4, !dbg !1681
  br label %if.end208

if.end208:                                        ; preds = %if.else202, %if.end201
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %cleanup.cont
  br label %for.cond, !dbg !1682, !llvm.loop !1683

for.end:                                          ; preds = %if.then7
  %189 = load ptr, ptr %s.addr, align 8, !dbg !1686
  %match_available210 = getelementptr inbounds %struct.deflate_state, ptr %189, i32 0, i32 25, !dbg !1688
  %190 = load i32, ptr %match_available210, align 8, !dbg !1688
  %tobool211 = icmp ne i32 %190, 0, !dbg !1686
  br i1 %tobool211, label %if.then212, label %if.end221, !dbg !1689

if.then212:                                       ; preds = %for.end
  %191 = load ptr, ptr %s.addr, align 8, !dbg !1690
  %192 = load ptr, ptr %s.addr, align 8, !dbg !1692
  %window213 = getelementptr inbounds %struct.deflate_state, ptr %192, i32 0, i32 13, !dbg !1693
  %193 = load ptr, ptr %window213, align 8, !dbg !1693
  %194 = load ptr, ptr %s.addr, align 8, !dbg !1694
  %strstart214 = getelementptr inbounds %struct.deflate_state, ptr %194, i32 0, i32 26, !dbg !1695
  %195 = load i32, ptr %strstart214, align 4, !dbg !1695
  %sub215 = sub i32 %195, 1, !dbg !1696
  %idxprom216 = zext i32 %sub215 to i64, !dbg !1692
  %arrayidx217 = getelementptr i8, ptr %193, i64 %idxprom216, !dbg !1692
  %196 = load i8, ptr %arrayidx217, align 1, !dbg !1692
  %conv218 = zext i8 %196 to i32, !dbg !1692
  %call219 = call i32 @zlib_tr_tally(ptr noundef %191, i32 noundef 0, i32 noundef %conv218) #9, !dbg !1697
  %197 = load ptr, ptr %s.addr, align 8, !dbg !1698
  %match_available220 = getelementptr inbounds %struct.deflate_state, ptr %197, i32 0, i32 25, !dbg !1699
  store i32 0, ptr %match_available220, align 8, !dbg !1700
  br label %if.end221, !dbg !1701

if.end221:                                        ; preds = %if.then212, %for.end
  %198 = load ptr, ptr %s.addr, align 8, !dbg !1702
  %199 = load ptr, ptr %s.addr, align 8, !dbg !1702
  %block_start222 = getelementptr inbounds %struct.deflate_state, ptr %199, i32 0, i32 22, !dbg !1702
  %200 = load i64, ptr %block_start222, align 8, !dbg !1702
  %cmp223 = icmp sge i64 %200, 0, !dbg !1702
  br i1 %cmp223, label %cond.true225, label %cond.false231, !dbg !1702

cond.true225:                                     ; preds = %if.end221
  %201 = load ptr, ptr %s.addr, align 8, !dbg !1702
  %window226 = getelementptr inbounds %struct.deflate_state, ptr %201, i32 0, i32 13, !dbg !1702
  %202 = load ptr, ptr %window226, align 8, !dbg !1702
  %203 = load ptr, ptr %s.addr, align 8, !dbg !1702
  %block_start227 = getelementptr inbounds %struct.deflate_state, ptr %203, i32 0, i32 22, !dbg !1702
  %204 = load i64, ptr %block_start227, align 8, !dbg !1702
  %conv228 = trunc i64 %204 to i32, !dbg !1702
  %idxprom229 = zext i32 %conv228 to i64, !dbg !1702
  %arrayidx230 = getelementptr i8, ptr %202, i64 %idxprom229, !dbg !1702
  br label %cond.end232, !dbg !1702

cond.false231:                                    ; preds = %if.end221
  br label %cond.end232, !dbg !1702

cond.end232:                                      ; preds = %cond.false231, %cond.true225
  %cond233 = phi ptr [ %arrayidx230, %cond.true225 ], [ null, %cond.false231 ], !dbg !1702
  %205 = load ptr, ptr %s.addr, align 8, !dbg !1702
  %strstart234 = getelementptr inbounds %struct.deflate_state, ptr %205, i32 0, i32 26, !dbg !1702
  %206 = load i32, ptr %strstart234, align 4, !dbg !1702
  %conv235 = zext i32 %206 to i64, !dbg !1702
  %207 = load ptr, ptr %s.addr, align 8, !dbg !1702
  %block_start236 = getelementptr inbounds %struct.deflate_state, ptr %207, i32 0, i32 22, !dbg !1702
  %208 = load i64, ptr %block_start236, align 8, !dbg !1702
  %sub237 = sub i64 %conv235, %208, !dbg !1702
  %209 = load i32, ptr %flush.addr, align 4, !dbg !1702
  %cmp238 = icmp eq i32 %209, 5, !dbg !1702
  %conv239 = zext i1 %cmp238 to i32, !dbg !1702
  %call240 = call i64 @zlib_tr_flush_block(ptr noundef %198, ptr noundef %cond233, i64 noundef %sub237, i32 noundef %conv239) #9, !dbg !1702
  %210 = load ptr, ptr %s.addr, align 8, !dbg !1702
  %strstart241 = getelementptr inbounds %struct.deflate_state, ptr %210, i32 0, i32 26, !dbg !1702
  %211 = load i32, ptr %strstart241, align 4, !dbg !1702
  %conv242 = zext i32 %211 to i64, !dbg !1702
  %212 = load ptr, ptr %s.addr, align 8, !dbg !1702
  %block_start243 = getelementptr inbounds %struct.deflate_state, ptr %212, i32 0, i32 22, !dbg !1702
  store i64 %conv242, ptr %block_start243, align 8, !dbg !1702
  %213 = load ptr, ptr %s.addr, align 8, !dbg !1702
  %strm244 = getelementptr inbounds %struct.deflate_state, ptr %213, i32 0, i32 0, !dbg !1702
  %214 = load ptr, ptr %strm244, align 8, !dbg !1702
  call void @flush_pending(ptr noundef %214) #9, !dbg !1702
  %215 = load ptr, ptr %s.addr, align 8, !dbg !1705
  %strm245 = getelementptr inbounds %struct.deflate_state, ptr %215, i32 0, i32 0, !dbg !1705
  %216 = load ptr, ptr %strm245, align 8, !dbg !1705
  %avail_out246 = getelementptr inbounds %struct.z_stream_s, ptr %216, i32 0, i32 4, !dbg !1705
  %217 = load i64, ptr %avail_out246, align 8, !dbg !1705
  %cmp247 = icmp eq i64 %217, 0, !dbg !1705
  br i1 %cmp247, label %if.then249, label %if.end253, !dbg !1707

if.then249:                                       ; preds = %cond.end232
  %218 = load i32, ptr %flush.addr, align 4, !dbg !1705
  %cmp250 = icmp eq i32 %218, 5, !dbg !1705
  %219 = zext i1 %cmp250 to i64, !dbg !1705
  %cond252 = select i1 %cmp250, i32 2, i32 0, !dbg !1705
  store i32 %cond252, ptr %retval, align 4, !dbg !1705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup257, !dbg !1705

if.end253:                                        ; preds = %cond.end232
  %220 = load i32, ptr %flush.addr, align 4, !dbg !1708
  %cmp254 = icmp eq i32 %220, 5, !dbg !1709
  %221 = zext i1 %cmp254 to i64, !dbg !1708
  %cond256 = select i1 %cmp254, i32 3, i32 1, !dbg !1708
  store i32 %cond256, ptr %retval, align 4, !dbg !1710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup257, !dbg !1710

cleanup257:                                       ; preds = %if.end253, %if.then249, %if.then200, %cleanup, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bflush) #8, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash_head) #8, !dbg !1711
  %222 = load i32, ptr %retval, align 4, !dbg !1711
  ret i32 %222, !dbg !1711
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fill_window(ptr noundef %s) #0 align 16 !dbg !1712 {
entry:
  %s.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %p = alloca ptr, align 8
  %more = alloca i32, align 4
  %wsize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1714, metadata !DIExpression()), !dbg !1720
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8, !dbg !1721
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1715, metadata !DIExpression()), !dbg !1722
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8, !dbg !1721
  call void @llvm.dbg.declare(metadata ptr %m, metadata !1716, metadata !DIExpression()), !dbg !1723
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !1724
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1717, metadata !DIExpression()), !dbg !1725
  call void @llvm.lifetime.start.p0(i64 4, ptr %more) #8, !dbg !1726
  call void @llvm.dbg.declare(metadata ptr %more, metadata !1718, metadata !DIExpression()), !dbg !1727
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsize) #8, !dbg !1728
  call void @llvm.dbg.declare(metadata ptr %wsize, metadata !1719, metadata !DIExpression()), !dbg !1729
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1730
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 10, !dbg !1731
  %1 = load i32, ptr %w_size, align 8, !dbg !1731
  store i32 %1, ptr %wsize, align 4, !dbg !1729
  br label %do.body, !dbg !1732

do.body:                                          ; preds = %land.end, %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1733
  %window_size = getelementptr inbounds %struct.deflate_state, ptr %2, i32 0, i32 14, !dbg !1735
  %3 = load i64, ptr %window_size, align 8, !dbg !1735
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1736
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %4, i32 0, i32 28, !dbg !1737
  %5 = load i32, ptr %lookahead, align 4, !dbg !1737
  %conv = zext i32 %5 to i64, !dbg !1738
  %sub = sub i64 %3, %conv, !dbg !1739
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1740
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 26, !dbg !1741
  %7 = load i32, ptr %strstart, align 4, !dbg !1741
  %conv1 = zext i32 %7 to i64, !dbg !1742
  %sub2 = sub i64 %sub, %conv1, !dbg !1743
  %conv3 = trunc i64 %sub2 to i32, !dbg !1744
  store i32 %conv3, ptr %more, align 4, !dbg !1745
  %8 = load i32, ptr %more, align 4, !dbg !1746
  %cmp = icmp eq i32 %8, 0, !dbg !1748
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1749

land.lhs.true:                                    ; preds = %do.body
  %9 = load ptr, ptr %s.addr, align 8, !dbg !1750
  %strstart5 = getelementptr inbounds %struct.deflate_state, ptr %9, i32 0, i32 26, !dbg !1751
  %10 = load i32, ptr %strstart5, align 4, !dbg !1751
  %cmp6 = icmp eq i32 %10, 0, !dbg !1752
  br i1 %cmp6, label %land.lhs.true8, label %if.else, !dbg !1753

land.lhs.true8:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %s.addr, align 8, !dbg !1754
  %lookahead9 = getelementptr inbounds %struct.deflate_state, ptr %11, i32 0, i32 28, !dbg !1755
  %12 = load i32, ptr %lookahead9, align 4, !dbg !1755
  %cmp10 = icmp eq i32 %12, 0, !dbg !1756
  br i1 %cmp10, label %if.then, label %if.else, !dbg !1757

if.then:                                          ; preds = %land.lhs.true8
  %13 = load i32, ptr %wsize, align 4, !dbg !1758
  store i32 %13, ptr %more, align 4, !dbg !1760
  br label %if.end55, !dbg !1761

if.else:                                          ; preds = %land.lhs.true8, %land.lhs.true, %do.body
  %14 = load i32, ptr %more, align 4, !dbg !1762
  %cmp12 = icmp eq i32 %14, -1, !dbg !1764
  br i1 %cmp12, label %if.then14, label %if.else15, !dbg !1765

if.then14:                                        ; preds = %if.else
  %15 = load i32, ptr %more, align 4, !dbg !1766
  %dec = add i32 %15, -1, !dbg !1766
  store i32 %dec, ptr %more, align 4, !dbg !1766
  br label %if.end54, !dbg !1768

if.else15:                                        ; preds = %if.else
  %16 = load ptr, ptr %s.addr, align 8, !dbg !1769
  %strstart16 = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 26, !dbg !1771
  %17 = load i32, ptr %strstart16, align 4, !dbg !1771
  %18 = load i32, ptr %wsize, align 4, !dbg !1772
  %19 = load ptr, ptr %s.addr, align 8, !dbg !1773
  %w_size17 = getelementptr inbounds %struct.deflate_state, ptr %19, i32 0, i32 10, !dbg !1773
  %20 = load i32, ptr %w_size17, align 8, !dbg !1773
  %sub18 = sub i32 %20, 262, !dbg !1773
  %add = add i32 %18, %sub18, !dbg !1774
  %cmp19 = icmp uge i32 %17, %add, !dbg !1775
  br i1 %cmp19, label %if.then21, label %if.end, !dbg !1776

if.then21:                                        ; preds = %if.else15
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1777
  %window = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 13, !dbg !1779
  %22 = load ptr, ptr %window, align 8, !dbg !1779
  %23 = load ptr, ptr %s.addr, align 8, !dbg !1780
  %window22 = getelementptr inbounds %struct.deflate_state, ptr %23, i32 0, i32 13, !dbg !1781
  %24 = load ptr, ptr %window22, align 8, !dbg !1781
  %25 = load i32, ptr %wsize, align 4, !dbg !1782
  %idx.ext = zext i32 %25 to i64, !dbg !1783
  %add.ptr = getelementptr i8, ptr %24, i64 %idx.ext, !dbg !1783
  %26 = load i32, ptr %wsize, align 4, !dbg !1784
  %conv23 = zext i32 %26 to i64, !dbg !1785
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %add.ptr, i64 %conv23, i1 false), !dbg !1786
  %27 = load i32, ptr %wsize, align 4, !dbg !1787
  %28 = load ptr, ptr %s.addr, align 8, !dbg !1788
  %match_start = getelementptr inbounds %struct.deflate_state, ptr %28, i32 0, i32 27, !dbg !1789
  %29 = load i32, ptr %match_start, align 8, !dbg !1790
  %sub24 = sub i32 %29, %27, !dbg !1790
  store i32 %sub24, ptr %match_start, align 8, !dbg !1790
  %30 = load i32, ptr %wsize, align 4, !dbg !1791
  %31 = load ptr, ptr %s.addr, align 8, !dbg !1792
  %strstart25 = getelementptr inbounds %struct.deflate_state, ptr %31, i32 0, i32 26, !dbg !1793
  %32 = load i32, ptr %strstart25, align 4, !dbg !1794
  %sub26 = sub i32 %32, %30, !dbg !1794
  store i32 %sub26, ptr %strstart25, align 4, !dbg !1794
  %33 = load i32, ptr %wsize, align 4, !dbg !1795
  %conv27 = zext i32 %33 to i64, !dbg !1796
  %34 = load ptr, ptr %s.addr, align 8, !dbg !1797
  %block_start = getelementptr inbounds %struct.deflate_state, ptr %34, i32 0, i32 22, !dbg !1798
  %35 = load i64, ptr %block_start, align 8, !dbg !1799
  %sub28 = sub i64 %35, %conv27, !dbg !1799
  store i64 %sub28, ptr %block_start, align 8, !dbg !1799
  %36 = load ptr, ptr %s.addr, align 8, !dbg !1800
  %hash_size = getelementptr inbounds %struct.deflate_state, ptr %36, i32 0, i32 18, !dbg !1801
  %37 = load i32, ptr %hash_size, align 4, !dbg !1801
  store i32 %37, ptr %n, align 4, !dbg !1802
  %38 = load ptr, ptr %s.addr, align 8, !dbg !1803
  %head = getelementptr inbounds %struct.deflate_state, ptr %38, i32 0, i32 16, !dbg !1804
  %39 = load ptr, ptr %head, align 8, !dbg !1804
  %40 = load i32, ptr %n, align 4, !dbg !1805
  %idxprom = zext i32 %40 to i64, !dbg !1803
  %arrayidx = getelementptr i16, ptr %39, i64 %idxprom, !dbg !1803
  store ptr %arrayidx, ptr %p, align 8, !dbg !1806
  br label %do.body29, !dbg !1807

do.body29:                                        ; preds = %do.cond, %if.then21
  %41 = load ptr, ptr %p, align 8, !dbg !1808
  %incdec.ptr = getelementptr i16, ptr %41, i32 -1, !dbg !1808
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1808
  %42 = load i16, ptr %incdec.ptr, align 2, !dbg !1810
  %conv30 = zext i16 %42 to i32, !dbg !1810
  store i32 %conv30, ptr %m, align 4, !dbg !1811
  %43 = load i32, ptr %m, align 4, !dbg !1812
  %44 = load i32, ptr %wsize, align 4, !dbg !1813
  %cmp31 = icmp uge i32 %43, %44, !dbg !1814
  br i1 %cmp31, label %cond.true, label %cond.false, !dbg !1812

cond.true:                                        ; preds = %do.body29
  %45 = load i32, ptr %m, align 4, !dbg !1815
  %46 = load i32, ptr %wsize, align 4, !dbg !1816
  %sub33 = sub i32 %45, %46, !dbg !1817
  br label %cond.end, !dbg !1812

cond.false:                                       ; preds = %do.body29
  br label %cond.end, !dbg !1812

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub33, %cond.true ], [ 0, %cond.false ], !dbg !1812
  %conv34 = trunc i32 %cond to i16, !dbg !1818
  %47 = load ptr, ptr %p, align 8, !dbg !1819
  store i16 %conv34, ptr %47, align 2, !dbg !1820
  br label %do.cond, !dbg !1821

do.cond:                                          ; preds = %cond.end
  %48 = load i32, ptr %n, align 4, !dbg !1822
  %dec35 = add i32 %48, -1, !dbg !1822
  store i32 %dec35, ptr %n, align 4, !dbg !1822
  %tobool = icmp ne i32 %dec35, 0, !dbg !1821
  br i1 %tobool, label %do.body29, label %do.end, !dbg !1821, !llvm.loop !1823

do.end:                                           ; preds = %do.cond
  %49 = load i32, ptr %wsize, align 4, !dbg !1825
  store i32 %49, ptr %n, align 4, !dbg !1826
  %50 = load ptr, ptr %s.addr, align 8, !dbg !1827
  %prev = getelementptr inbounds %struct.deflate_state, ptr %50, i32 0, i32 15, !dbg !1828
  %51 = load ptr, ptr %prev, align 8, !dbg !1828
  %52 = load i32, ptr %n, align 4, !dbg !1829
  %idxprom36 = zext i32 %52 to i64, !dbg !1827
  %arrayidx37 = getelementptr i16, ptr %51, i64 %idxprom36, !dbg !1827
  store ptr %arrayidx37, ptr %p, align 8, !dbg !1830
  br label %do.body38, !dbg !1831

do.body38:                                        ; preds = %do.cond49, %do.end
  %53 = load ptr, ptr %p, align 8, !dbg !1832
  %incdec.ptr39 = getelementptr i16, ptr %53, i32 -1, !dbg !1832
  store ptr %incdec.ptr39, ptr %p, align 8, !dbg !1832
  %54 = load i16, ptr %incdec.ptr39, align 2, !dbg !1834
  %conv40 = zext i16 %54 to i32, !dbg !1834
  store i32 %conv40, ptr %m, align 4, !dbg !1835
  %55 = load i32, ptr %m, align 4, !dbg !1836
  %56 = load i32, ptr %wsize, align 4, !dbg !1837
  %cmp41 = icmp uge i32 %55, %56, !dbg !1838
  br i1 %cmp41, label %cond.true43, label %cond.false45, !dbg !1836

cond.true43:                                      ; preds = %do.body38
  %57 = load i32, ptr %m, align 4, !dbg !1839
  %58 = load i32, ptr %wsize, align 4, !dbg !1840
  %sub44 = sub i32 %57, %58, !dbg !1841
  br label %cond.end46, !dbg !1836

cond.false45:                                     ; preds = %do.body38
  br label %cond.end46, !dbg !1836

cond.end46:                                       ; preds = %cond.false45, %cond.true43
  %cond47 = phi i32 [ %sub44, %cond.true43 ], [ 0, %cond.false45 ], !dbg !1836
  %conv48 = trunc i32 %cond47 to i16, !dbg !1842
  %59 = load ptr, ptr %p, align 8, !dbg !1843
  store i16 %conv48, ptr %59, align 2, !dbg !1844
  br label %do.cond49, !dbg !1845

do.cond49:                                        ; preds = %cond.end46
  %60 = load i32, ptr %n, align 4, !dbg !1846
  %dec50 = add i32 %60, -1, !dbg !1846
  store i32 %dec50, ptr %n, align 4, !dbg !1846
  %tobool51 = icmp ne i32 %dec50, 0, !dbg !1845
  br i1 %tobool51, label %do.body38, label %do.end52, !dbg !1845, !llvm.loop !1847

do.end52:                                         ; preds = %do.cond49
  %61 = load i32, ptr %wsize, align 4, !dbg !1849
  %62 = load i32, ptr %more, align 4, !dbg !1850
  %add53 = add i32 %62, %61, !dbg !1850
  store i32 %add53, ptr %more, align 4, !dbg !1850
  br label %if.end, !dbg !1851

if.end:                                           ; preds = %do.end52, %if.else15
  br label %if.end54

if.end54:                                         ; preds = %if.end, %if.then14
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then
  %63 = load ptr, ptr %s.addr, align 8, !dbg !1852
  %strm = getelementptr inbounds %struct.deflate_state, ptr %63, i32 0, i32 0, !dbg !1854
  %64 = load ptr, ptr %strm, align 8, !dbg !1854
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %64, i32 0, i32 1, !dbg !1855
  %65 = load i64, ptr %avail_in, align 8, !dbg !1855
  %cmp56 = icmp eq i64 %65, 0, !dbg !1856
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !1857

if.then58:                                        ; preds = %if.end55
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1858

if.end59:                                         ; preds = %if.end55
  %66 = load ptr, ptr %s.addr, align 8, !dbg !1859
  %strm60 = getelementptr inbounds %struct.deflate_state, ptr %66, i32 0, i32 0, !dbg !1860
  %67 = load ptr, ptr %strm60, align 8, !dbg !1860
  %68 = load ptr, ptr %s.addr, align 8, !dbg !1861
  %window61 = getelementptr inbounds %struct.deflate_state, ptr %68, i32 0, i32 13, !dbg !1862
  %69 = load ptr, ptr %window61, align 8, !dbg !1862
  %70 = load ptr, ptr %s.addr, align 8, !dbg !1863
  %strstart62 = getelementptr inbounds %struct.deflate_state, ptr %70, i32 0, i32 26, !dbg !1864
  %71 = load i32, ptr %strstart62, align 4, !dbg !1864
  %idx.ext63 = zext i32 %71 to i64, !dbg !1865
  %add.ptr64 = getelementptr i8, ptr %69, i64 %idx.ext63, !dbg !1865
  %72 = load ptr, ptr %s.addr, align 8, !dbg !1866
  %lookahead65 = getelementptr inbounds %struct.deflate_state, ptr %72, i32 0, i32 28, !dbg !1867
  %73 = load i32, ptr %lookahead65, align 4, !dbg !1867
  %idx.ext66 = zext i32 %73 to i64, !dbg !1868
  %add.ptr67 = getelementptr i8, ptr %add.ptr64, i64 %idx.ext66, !dbg !1868
  %74 = load i32, ptr %more, align 4, !dbg !1869
  %call = call i32 @read_buf(ptr noundef %67, ptr noundef %add.ptr67, i32 noundef %74) #9, !dbg !1870
  store i32 %call, ptr %n, align 4, !dbg !1871
  %75 = load i32, ptr %n, align 4, !dbg !1872
  %76 = load ptr, ptr %s.addr, align 8, !dbg !1873
  %lookahead68 = getelementptr inbounds %struct.deflate_state, ptr %76, i32 0, i32 28, !dbg !1874
  %77 = load i32, ptr %lookahead68, align 4, !dbg !1875
  %add69 = add i32 %77, %75, !dbg !1875
  store i32 %add69, ptr %lookahead68, align 4, !dbg !1875
  %78 = load ptr, ptr %s.addr, align 8, !dbg !1876
  %lookahead70 = getelementptr inbounds %struct.deflate_state, ptr %78, i32 0, i32 28, !dbg !1878
  %79 = load i32, ptr %lookahead70, align 4, !dbg !1878
  %cmp71 = icmp uge i32 %79, 3, !dbg !1879
  br i1 %cmp71, label %if.then73, label %if.end87, !dbg !1880

if.then73:                                        ; preds = %if.end59
  %80 = load ptr, ptr %s.addr, align 8, !dbg !1881
  %window74 = getelementptr inbounds %struct.deflate_state, ptr %80, i32 0, i32 13, !dbg !1883
  %81 = load ptr, ptr %window74, align 8, !dbg !1883
  %82 = load ptr, ptr %s.addr, align 8, !dbg !1884
  %strstart75 = getelementptr inbounds %struct.deflate_state, ptr %82, i32 0, i32 26, !dbg !1885
  %83 = load i32, ptr %strstart75, align 4, !dbg !1885
  %idxprom76 = zext i32 %83 to i64, !dbg !1881
  %arrayidx77 = getelementptr i8, ptr %81, i64 %idxprom76, !dbg !1881
  %84 = load i8, ptr %arrayidx77, align 1, !dbg !1881
  %conv78 = zext i8 %84 to i32, !dbg !1881
  %85 = load ptr, ptr %s.addr, align 8, !dbg !1886
  %ins_h = getelementptr inbounds %struct.deflate_state, ptr %85, i32 0, i32 17, !dbg !1887
  store i32 %conv78, ptr %ins_h, align 8, !dbg !1888
  %86 = load ptr, ptr %s.addr, align 8, !dbg !1889
  %ins_h79 = getelementptr inbounds %struct.deflate_state, ptr %86, i32 0, i32 17, !dbg !1889
  %87 = load i32, ptr %ins_h79, align 8, !dbg !1889
  %88 = load ptr, ptr %s.addr, align 8, !dbg !1889
  %hash_shift = getelementptr inbounds %struct.deflate_state, ptr %88, i32 0, i32 21, !dbg !1889
  %89 = load i32, ptr %hash_shift, align 8, !dbg !1889
  %shl = shl i32 %87, %89, !dbg !1889
  %90 = load ptr, ptr %s.addr, align 8, !dbg !1889
  %window80 = getelementptr inbounds %struct.deflate_state, ptr %90, i32 0, i32 13, !dbg !1889
  %91 = load ptr, ptr %window80, align 8, !dbg !1889
  %92 = load ptr, ptr %s.addr, align 8, !dbg !1889
  %strstart81 = getelementptr inbounds %struct.deflate_state, ptr %92, i32 0, i32 26, !dbg !1889
  %93 = load i32, ptr %strstart81, align 4, !dbg !1889
  %add82 = add i32 %93, 1, !dbg !1889
  %idxprom83 = zext i32 %add82 to i64, !dbg !1889
  %arrayidx84 = getelementptr i8, ptr %91, i64 %idxprom83, !dbg !1889
  %94 = load i8, ptr %arrayidx84, align 1, !dbg !1889
  %conv85 = zext i8 %94 to i32, !dbg !1889
  %xor = xor i32 %shl, %conv85, !dbg !1889
  %95 = load ptr, ptr %s.addr, align 8, !dbg !1889
  %hash_mask = getelementptr inbounds %struct.deflate_state, ptr %95, i32 0, i32 20, !dbg !1889
  %96 = load i32, ptr %hash_mask, align 4, !dbg !1889
  %and = and i32 %xor, %96, !dbg !1889
  %97 = load ptr, ptr %s.addr, align 8, !dbg !1889
  %ins_h86 = getelementptr inbounds %struct.deflate_state, ptr %97, i32 0, i32 17, !dbg !1889
  store i32 %and, ptr %ins_h86, align 8, !dbg !1889
  br label %if.end87, !dbg !1890

if.end87:                                         ; preds = %if.then73, %if.end59
  br label %do.cond88, !dbg !1891

do.cond88:                                        ; preds = %if.end87
  %98 = load ptr, ptr %s.addr, align 8, !dbg !1892
  %lookahead89 = getelementptr inbounds %struct.deflate_state, ptr %98, i32 0, i32 28, !dbg !1893
  %99 = load i32, ptr %lookahead89, align 4, !dbg !1893
  %cmp90 = icmp ult i32 %99, 262, !dbg !1894
  br i1 %cmp90, label %land.rhs, label %land.end, !dbg !1895

land.rhs:                                         ; preds = %do.cond88
  %100 = load ptr, ptr %s.addr, align 8, !dbg !1896
  %strm92 = getelementptr inbounds %struct.deflate_state, ptr %100, i32 0, i32 0, !dbg !1897
  %101 = load ptr, ptr %strm92, align 8, !dbg !1897
  %avail_in93 = getelementptr inbounds %struct.z_stream_s, ptr %101, i32 0, i32 1, !dbg !1898
  %102 = load i64, ptr %avail_in93, align 8, !dbg !1898
  %cmp94 = icmp ne i64 %102, 0, !dbg !1899
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond88
  %103 = phi i1 [ false, %do.cond88 ], [ %cmp94, %land.rhs ], !dbg !1900
  br i1 %103, label %do.body, label %do.end96, !dbg !1891, !llvm.loop !1901

do.end96:                                         ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1903
  br label %cleanup, !dbg !1903

cleanup:                                          ; preds = %do.end96, %if.then58
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsize) #8, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 4, ptr %more) #8, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8, !dbg !1903
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1903

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1904 dso_local i64 @zlib_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_buf(ptr noundef %strm, ptr noundef %buf, i32 noundef %size) #0 align 16 !dbg !1907 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !1911, metadata !DIExpression()), !dbg !1915
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1912, metadata !DIExpression()), !dbg !1916
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1913, metadata !DIExpression()), !dbg !1917
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #8, !dbg !1918
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1914, metadata !DIExpression()), !dbg !1919
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !1920
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 1, !dbg !1921
  %1 = load i64, ptr %avail_in, align 8, !dbg !1921
  %conv = trunc i64 %1 to i32, !dbg !1920
  store i32 %conv, ptr %len, align 4, !dbg !1919
  %2 = load i32, ptr %len, align 4, !dbg !1922
  %3 = load i32, ptr %size.addr, align 4, !dbg !1924
  %cmp = icmp ugt i32 %2, %3, !dbg !1925
  br i1 %cmp, label %if.then, label %if.end, !dbg !1926

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %size.addr, align 4, !dbg !1927
  store i32 %4, ptr %len, align 4, !dbg !1928
  br label %if.end, !dbg !1929

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %len, align 4, !dbg !1930
  %cmp2 = icmp eq i32 %5, 0, !dbg !1932
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1933

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1934

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr %len, align 4, !dbg !1935
  %conv6 = zext i32 %6 to i64, !dbg !1935
  %7 = load ptr, ptr %strm.addr, align 8, !dbg !1936
  %avail_in7 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 1, !dbg !1937
  %8 = load i64, ptr %avail_in7, align 8, !dbg !1938
  %sub = sub i64 %8, %conv6, !dbg !1938
  store i64 %sub, ptr %avail_in7, align 8, !dbg !1938
  %9 = load ptr, ptr %strm.addr, align 8, !dbg !1939
  %state = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 7, !dbg !1942
  %10 = load ptr, ptr %state, align 8, !dbg !1942
  %noheader = getelementptr inbounds %struct.deflate_state, ptr %10, i32 0, i32 6, !dbg !1943
  %11 = load i32, ptr %noheader, align 4, !dbg !1943
  %tobool = icmp ne i32 %11, 0, !dbg !1944
  br i1 %tobool, label %if.end10, label %if.then8, !dbg !1945

if.then8:                                         ; preds = %if.end5
  %12 = load ptr, ptr %strm.addr, align 8, !dbg !1946
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 10, !dbg !1948
  %13 = load i64, ptr %adler, align 8, !dbg !1948
  %14 = load ptr, ptr %strm.addr, align 8, !dbg !1949
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 0, !dbg !1950
  %15 = load ptr, ptr %next_in, align 8, !dbg !1950
  %16 = load i32, ptr %len, align 4, !dbg !1951
  %call = call i64 @zlib_adler32(i64 noundef %13, ptr noundef %15, i32 noundef %16) #9, !dbg !1952
  %17 = load ptr, ptr %strm.addr, align 8, !dbg !1953
  %adler9 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 10, !dbg !1954
  store i64 %call, ptr %adler9, align 8, !dbg !1955
  br label %if.end10, !dbg !1956

if.end10:                                         ; preds = %if.then8, %if.end5
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !1957
  %19 = load ptr, ptr %strm.addr, align 8, !dbg !1958
  %next_in11 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 0, !dbg !1959
  %20 = load ptr, ptr %next_in11, align 8, !dbg !1959
  %21 = load i32, ptr %len, align 4, !dbg !1960
  %conv12 = zext i32 %21 to i64, !dbg !1960
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %20, i64 %conv12, i1 false), !dbg !1961
  %22 = load i32, ptr %len, align 4, !dbg !1962
  %23 = load ptr, ptr %strm.addr, align 8, !dbg !1963
  %next_in13 = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 0, !dbg !1964
  %24 = load ptr, ptr %next_in13, align 8, !dbg !1965
  %idx.ext = zext i32 %22 to i64, !dbg !1965
  %add.ptr = getelementptr i8, ptr %24, i64 %idx.ext, !dbg !1965
  store ptr %add.ptr, ptr %next_in13, align 8, !dbg !1965
  %25 = load i32, ptr %len, align 4, !dbg !1966
  %conv14 = zext i32 %25 to i64, !dbg !1966
  %26 = load ptr, ptr %strm.addr, align 8, !dbg !1967
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %26, i32 0, i32 2, !dbg !1968
  %27 = load i64, ptr %total_in, align 8, !dbg !1969
  %add = add i64 %27, %conv14, !dbg !1969
  store i64 %add, ptr %total_in, align 8, !dbg !1969
  %28 = load i32, ptr %len, align 4, !dbg !1970
  store i32 %28, ptr %retval, align 4, !dbg !1971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1971

cleanup:                                          ; preds = %if.end10, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #8, !dbg !1972
  %29 = load i32, ptr %retval, align 4, !dbg !1972
  ret i32 %29, !dbg !1972
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @zlib_adler32(i64 noundef %adler, ptr noundef %buf, i32 noundef %len) #4 align 16 !dbg !1973 {
entry:
  %retval = alloca i64, align 8
  %adler.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %s1 = alloca i64, align 8
  %s2 = alloca i64, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %adler, ptr %adler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adler.addr, metadata !1977, metadata !DIExpression()), !dbg !1983
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1978, metadata !DIExpression()), !dbg !1984
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1979, metadata !DIExpression()), !dbg !1985
  call void @llvm.lifetime.start.p0(i64 8, ptr %s1) #8, !dbg !1986
  call void @llvm.dbg.declare(metadata ptr %s1, metadata !1980, metadata !DIExpression()), !dbg !1987
  %0 = load i64, ptr %adler.addr, align 8, !dbg !1988
  %and = and i64 %0, 65535, !dbg !1989
  store i64 %and, ptr %s1, align 8, !dbg !1987
  call void @llvm.lifetime.start.p0(i64 8, ptr %s2) #8, !dbg !1990
  call void @llvm.dbg.declare(metadata ptr %s2, metadata !1981, metadata !DIExpression()), !dbg !1991
  %1 = load i64, ptr %adler.addr, align 8, !dbg !1992
  %shr = lshr i64 %1, 16, !dbg !1993
  %and1 = and i64 %shr, 65535, !dbg !1994
  store i64 %and1, ptr %s2, align 8, !dbg !1991
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8, !dbg !1995
  call void @llvm.dbg.declare(metadata ptr %k, metadata !1982, metadata !DIExpression()), !dbg !1996
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !1997
  %cmp = icmp eq ptr %2, null, !dbg !1999
  br i1 %cmp, label %if.then, label %if.end, !dbg !2000

if.then:                                          ; preds = %entry
  store i64 1, ptr %retval, align 8, !dbg !2001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2001

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !2002

while.cond:                                       ; preds = %if.end75, %if.end
  %3 = load i32, ptr %len.addr, align 4, !dbg !2003
  %cmp2 = icmp ugt i32 %3, 0, !dbg !2004
  br i1 %cmp2, label %while.body, label %while.end77, !dbg !2002

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %len.addr, align 4, !dbg !2005
  %cmp3 = icmp ult i32 %4, 5552, !dbg !2007
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !2005

cond.true:                                        ; preds = %while.body
  %5 = load i32, ptr %len.addr, align 4, !dbg !2008
  br label %cond.end, !dbg !2005

cond.false:                                       ; preds = %while.body
  br label %cond.end, !dbg !2005

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 5552, %cond.false ], !dbg !2005
  store i32 %cond, ptr %k, align 4, !dbg !2009
  %6 = load i32, ptr %k, align 4, !dbg !2010
  %7 = load i32, ptr %len.addr, align 4, !dbg !2011
  %sub = sub i32 %7, %6, !dbg !2011
  store i32 %sub, ptr %len.addr, align 4, !dbg !2011
  br label %while.cond4, !dbg !2012

while.cond4:                                      ; preds = %while.body6, %cond.end
  %8 = load i32, ptr %k, align 4, !dbg !2013
  %cmp5 = icmp sge i32 %8, 16, !dbg !2014
  br i1 %cmp5, label %while.body6, label %while.end, !dbg !2012

while.body6:                                      ; preds = %while.cond4
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !2015
  %arrayidx = getelementptr i8, ptr %9, i64 0, !dbg !2015
  %10 = load i8, ptr %arrayidx, align 1, !dbg !2015
  %conv = zext i8 %10 to i64, !dbg !2015
  %11 = load i64, ptr %s1, align 8, !dbg !2015
  %add = add i64 %11, %conv, !dbg !2015
  store i64 %add, ptr %s1, align 8, !dbg !2015
  %12 = load i64, ptr %s1, align 8, !dbg !2015
  %13 = load i64, ptr %s2, align 8, !dbg !2015
  %add7 = add i64 %13, %12, !dbg !2015
  store i64 %add7, ptr %s2, align 8, !dbg !2015
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !2018
  %arrayidx8 = getelementptr i8, ptr %14, i64 1, !dbg !2018
  %15 = load i8, ptr %arrayidx8, align 1, !dbg !2018
  %conv9 = zext i8 %15 to i64, !dbg !2018
  %16 = load i64, ptr %s1, align 8, !dbg !2018
  %add10 = add i64 %16, %conv9, !dbg !2018
  store i64 %add10, ptr %s1, align 8, !dbg !2018
  %17 = load i64, ptr %s1, align 8, !dbg !2018
  %18 = load i64, ptr %s2, align 8, !dbg !2018
  %add11 = add i64 %18, %17, !dbg !2018
  store i64 %add11, ptr %s2, align 8, !dbg !2018
  %19 = load ptr, ptr %buf.addr, align 8, !dbg !2020
  %arrayidx12 = getelementptr i8, ptr %19, i64 2, !dbg !2020
  %20 = load i8, ptr %arrayidx12, align 1, !dbg !2020
  %conv13 = zext i8 %20 to i64, !dbg !2020
  %21 = load i64, ptr %s1, align 8, !dbg !2020
  %add14 = add i64 %21, %conv13, !dbg !2020
  store i64 %add14, ptr %s1, align 8, !dbg !2020
  %22 = load i64, ptr %s1, align 8, !dbg !2020
  %23 = load i64, ptr %s2, align 8, !dbg !2020
  %add15 = add i64 %23, %22, !dbg !2020
  store i64 %add15, ptr %s2, align 8, !dbg !2020
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !2022
  %arrayidx16 = getelementptr i8, ptr %24, i64 3, !dbg !2022
  %25 = load i8, ptr %arrayidx16, align 1, !dbg !2022
  %conv17 = zext i8 %25 to i64, !dbg !2022
  %26 = load i64, ptr %s1, align 8, !dbg !2022
  %add18 = add i64 %26, %conv17, !dbg !2022
  store i64 %add18, ptr %s1, align 8, !dbg !2022
  %27 = load i64, ptr %s1, align 8, !dbg !2022
  %28 = load i64, ptr %s2, align 8, !dbg !2022
  %add19 = add i64 %28, %27, !dbg !2022
  store i64 %add19, ptr %s2, align 8, !dbg !2022
  %29 = load ptr, ptr %buf.addr, align 8, !dbg !2024
  %arrayidx20 = getelementptr i8, ptr %29, i64 4, !dbg !2024
  %30 = load i8, ptr %arrayidx20, align 1, !dbg !2024
  %conv21 = zext i8 %30 to i64, !dbg !2024
  %31 = load i64, ptr %s1, align 8, !dbg !2024
  %add22 = add i64 %31, %conv21, !dbg !2024
  store i64 %add22, ptr %s1, align 8, !dbg !2024
  %32 = load i64, ptr %s1, align 8, !dbg !2024
  %33 = load i64, ptr %s2, align 8, !dbg !2024
  %add23 = add i64 %33, %32, !dbg !2024
  store i64 %add23, ptr %s2, align 8, !dbg !2024
  %34 = load ptr, ptr %buf.addr, align 8, !dbg !2026
  %arrayidx24 = getelementptr i8, ptr %34, i64 5, !dbg !2026
  %35 = load i8, ptr %arrayidx24, align 1, !dbg !2026
  %conv25 = zext i8 %35 to i64, !dbg !2026
  %36 = load i64, ptr %s1, align 8, !dbg !2026
  %add26 = add i64 %36, %conv25, !dbg !2026
  store i64 %add26, ptr %s1, align 8, !dbg !2026
  %37 = load i64, ptr %s1, align 8, !dbg !2026
  %38 = load i64, ptr %s2, align 8, !dbg !2026
  %add27 = add i64 %38, %37, !dbg !2026
  store i64 %add27, ptr %s2, align 8, !dbg !2026
  %39 = load ptr, ptr %buf.addr, align 8, !dbg !2028
  %arrayidx28 = getelementptr i8, ptr %39, i64 6, !dbg !2028
  %40 = load i8, ptr %arrayidx28, align 1, !dbg !2028
  %conv29 = zext i8 %40 to i64, !dbg !2028
  %41 = load i64, ptr %s1, align 8, !dbg !2028
  %add30 = add i64 %41, %conv29, !dbg !2028
  store i64 %add30, ptr %s1, align 8, !dbg !2028
  %42 = load i64, ptr %s1, align 8, !dbg !2028
  %43 = load i64, ptr %s2, align 8, !dbg !2028
  %add31 = add i64 %43, %42, !dbg !2028
  store i64 %add31, ptr %s2, align 8, !dbg !2028
  %44 = load ptr, ptr %buf.addr, align 8, !dbg !2030
  %arrayidx32 = getelementptr i8, ptr %44, i64 7, !dbg !2030
  %45 = load i8, ptr %arrayidx32, align 1, !dbg !2030
  %conv33 = zext i8 %45 to i64, !dbg !2030
  %46 = load i64, ptr %s1, align 8, !dbg !2030
  %add34 = add i64 %46, %conv33, !dbg !2030
  store i64 %add34, ptr %s1, align 8, !dbg !2030
  %47 = load i64, ptr %s1, align 8, !dbg !2030
  %48 = load i64, ptr %s2, align 8, !dbg !2030
  %add35 = add i64 %48, %47, !dbg !2030
  store i64 %add35, ptr %s2, align 8, !dbg !2030
  %49 = load ptr, ptr %buf.addr, align 8, !dbg !2032
  %arrayidx36 = getelementptr i8, ptr %49, i64 8, !dbg !2032
  %50 = load i8, ptr %arrayidx36, align 1, !dbg !2032
  %conv37 = zext i8 %50 to i64, !dbg !2032
  %51 = load i64, ptr %s1, align 8, !dbg !2032
  %add38 = add i64 %51, %conv37, !dbg !2032
  store i64 %add38, ptr %s1, align 8, !dbg !2032
  %52 = load i64, ptr %s1, align 8, !dbg !2032
  %53 = load i64, ptr %s2, align 8, !dbg !2032
  %add39 = add i64 %53, %52, !dbg !2032
  store i64 %add39, ptr %s2, align 8, !dbg !2032
  %54 = load ptr, ptr %buf.addr, align 8, !dbg !2034
  %arrayidx40 = getelementptr i8, ptr %54, i64 9, !dbg !2034
  %55 = load i8, ptr %arrayidx40, align 1, !dbg !2034
  %conv41 = zext i8 %55 to i64, !dbg !2034
  %56 = load i64, ptr %s1, align 8, !dbg !2034
  %add42 = add i64 %56, %conv41, !dbg !2034
  store i64 %add42, ptr %s1, align 8, !dbg !2034
  %57 = load i64, ptr %s1, align 8, !dbg !2034
  %58 = load i64, ptr %s2, align 8, !dbg !2034
  %add43 = add i64 %58, %57, !dbg !2034
  store i64 %add43, ptr %s2, align 8, !dbg !2034
  %59 = load ptr, ptr %buf.addr, align 8, !dbg !2036
  %arrayidx44 = getelementptr i8, ptr %59, i64 10, !dbg !2036
  %60 = load i8, ptr %arrayidx44, align 1, !dbg !2036
  %conv45 = zext i8 %60 to i64, !dbg !2036
  %61 = load i64, ptr %s1, align 8, !dbg !2036
  %add46 = add i64 %61, %conv45, !dbg !2036
  store i64 %add46, ptr %s1, align 8, !dbg !2036
  %62 = load i64, ptr %s1, align 8, !dbg !2036
  %63 = load i64, ptr %s2, align 8, !dbg !2036
  %add47 = add i64 %63, %62, !dbg !2036
  store i64 %add47, ptr %s2, align 8, !dbg !2036
  %64 = load ptr, ptr %buf.addr, align 8, !dbg !2038
  %arrayidx48 = getelementptr i8, ptr %64, i64 11, !dbg !2038
  %65 = load i8, ptr %arrayidx48, align 1, !dbg !2038
  %conv49 = zext i8 %65 to i64, !dbg !2038
  %66 = load i64, ptr %s1, align 8, !dbg !2038
  %add50 = add i64 %66, %conv49, !dbg !2038
  store i64 %add50, ptr %s1, align 8, !dbg !2038
  %67 = load i64, ptr %s1, align 8, !dbg !2038
  %68 = load i64, ptr %s2, align 8, !dbg !2038
  %add51 = add i64 %68, %67, !dbg !2038
  store i64 %add51, ptr %s2, align 8, !dbg !2038
  %69 = load ptr, ptr %buf.addr, align 8, !dbg !2040
  %arrayidx52 = getelementptr i8, ptr %69, i64 12, !dbg !2040
  %70 = load i8, ptr %arrayidx52, align 1, !dbg !2040
  %conv53 = zext i8 %70 to i64, !dbg !2040
  %71 = load i64, ptr %s1, align 8, !dbg !2040
  %add54 = add i64 %71, %conv53, !dbg !2040
  store i64 %add54, ptr %s1, align 8, !dbg !2040
  %72 = load i64, ptr %s1, align 8, !dbg !2040
  %73 = load i64, ptr %s2, align 8, !dbg !2040
  %add55 = add i64 %73, %72, !dbg !2040
  store i64 %add55, ptr %s2, align 8, !dbg !2040
  %74 = load ptr, ptr %buf.addr, align 8, !dbg !2042
  %arrayidx56 = getelementptr i8, ptr %74, i64 13, !dbg !2042
  %75 = load i8, ptr %arrayidx56, align 1, !dbg !2042
  %conv57 = zext i8 %75 to i64, !dbg !2042
  %76 = load i64, ptr %s1, align 8, !dbg !2042
  %add58 = add i64 %76, %conv57, !dbg !2042
  store i64 %add58, ptr %s1, align 8, !dbg !2042
  %77 = load i64, ptr %s1, align 8, !dbg !2042
  %78 = load i64, ptr %s2, align 8, !dbg !2042
  %add59 = add i64 %78, %77, !dbg !2042
  store i64 %add59, ptr %s2, align 8, !dbg !2042
  %79 = load ptr, ptr %buf.addr, align 8, !dbg !2044
  %arrayidx60 = getelementptr i8, ptr %79, i64 14, !dbg !2044
  %80 = load i8, ptr %arrayidx60, align 1, !dbg !2044
  %conv61 = zext i8 %80 to i64, !dbg !2044
  %81 = load i64, ptr %s1, align 8, !dbg !2044
  %add62 = add i64 %81, %conv61, !dbg !2044
  store i64 %add62, ptr %s1, align 8, !dbg !2044
  %82 = load i64, ptr %s1, align 8, !dbg !2044
  %83 = load i64, ptr %s2, align 8, !dbg !2044
  %add63 = add i64 %83, %82, !dbg !2044
  store i64 %add63, ptr %s2, align 8, !dbg !2044
  %84 = load ptr, ptr %buf.addr, align 8, !dbg !2046
  %arrayidx64 = getelementptr i8, ptr %84, i64 15, !dbg !2046
  %85 = load i8, ptr %arrayidx64, align 1, !dbg !2046
  %conv65 = zext i8 %85 to i64, !dbg !2046
  %86 = load i64, ptr %s1, align 8, !dbg !2046
  %add66 = add i64 %86, %conv65, !dbg !2046
  store i64 %add66, ptr %s1, align 8, !dbg !2046
  %87 = load i64, ptr %s1, align 8, !dbg !2046
  %88 = load i64, ptr %s2, align 8, !dbg !2046
  %add67 = add i64 %88, %87, !dbg !2046
  store i64 %add67, ptr %s2, align 8, !dbg !2046
  %89 = load ptr, ptr %buf.addr, align 8, !dbg !2048
  %add.ptr = getelementptr i8, ptr %89, i64 16, !dbg !2048
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !2048
  %90 = load i32, ptr %k, align 4, !dbg !2049
  %sub68 = sub i32 %90, 16, !dbg !2049
  store i32 %sub68, ptr %k, align 4, !dbg !2049
  br label %while.cond4, !dbg !2012, !llvm.loop !2050

while.end:                                        ; preds = %while.cond4
  %91 = load i32, ptr %k, align 4, !dbg !2052
  %cmp69 = icmp ne i32 %91, 0, !dbg !2054
  br i1 %cmp69, label %if.then71, label %if.end75, !dbg !2055

if.then71:                                        ; preds = %while.end
  br label %do.body, !dbg !2056

do.body:                                          ; preds = %do.cond, %if.then71
  %92 = load ptr, ptr %buf.addr, align 8, !dbg !2057
  %incdec.ptr = getelementptr i8, ptr %92, i32 1, !dbg !2057
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !2057
  %93 = load i8, ptr %92, align 1, !dbg !2059
  %conv72 = zext i8 %93 to i64, !dbg !2059
  %94 = load i64, ptr %s1, align 8, !dbg !2060
  %add73 = add i64 %94, %conv72, !dbg !2060
  store i64 %add73, ptr %s1, align 8, !dbg !2060
  %95 = load i64, ptr %s1, align 8, !dbg !2061
  %96 = load i64, ptr %s2, align 8, !dbg !2062
  %add74 = add i64 %96, %95, !dbg !2062
  store i64 %add74, ptr %s2, align 8, !dbg !2062
  br label %do.cond, !dbg !2063

do.cond:                                          ; preds = %do.body
  %97 = load i32, ptr %k, align 4, !dbg !2064
  %dec = add i32 %97, -1, !dbg !2064
  store i32 %dec, ptr %k, align 4, !dbg !2064
  %tobool = icmp ne i32 %dec, 0, !dbg !2063
  br i1 %tobool, label %do.body, label %do.end, !dbg !2063, !llvm.loop !2065

do.end:                                           ; preds = %do.cond
  br label %if.end75, !dbg !2063

if.end75:                                         ; preds = %do.end, %while.end
  %98 = load i64, ptr %s1, align 8, !dbg !2067
  %rem = urem i64 %98, 65521, !dbg !2067
  store i64 %rem, ptr %s1, align 8, !dbg !2067
  %99 = load i64, ptr %s2, align 8, !dbg !2068
  %rem76 = urem i64 %99, 65521, !dbg !2068
  store i64 %rem76, ptr %s2, align 8, !dbg !2068
  br label %while.cond, !dbg !2002, !llvm.loop !2069

while.end77:                                      ; preds = %while.cond
  %100 = load i64, ptr %s2, align 8, !dbg !2071
  %shl = shl i64 %100, 16, !dbg !2072
  %101 = load i64, ptr %s1, align 8, !dbg !2073
  %or = or i64 %shl, %101, !dbg !2074
  store i64 %or, ptr %retval, align 8, !dbg !2075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2075

cleanup:                                          ; preds = %while.end77, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8, !dbg !2076
  call void @llvm.lifetime.end.p0(i64 8, ptr %s2) #8, !dbg !2076
  call void @llvm.lifetime.end.p0(i64 8, ptr %s1) #8, !dbg !2076
  %102 = load i64, ptr %retval, align 8, !dbg !2076
  ret i64 %102, !dbg !2076
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @longest_match(ptr noundef %s, i32 noundef %cur_match) #0 align 16 !dbg !2077 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %cur_match.addr = alloca i32, align 4
  %chain_length = alloca i32, align 4
  %scan = alloca ptr, align 8
  %match = alloca ptr, align 8
  %len = alloca i32, align 4
  %best_len = alloca i32, align 4
  %nice_match = alloca i32, align 4
  %limit = alloca i32, align 4
  %prev = alloca ptr, align 8
  %wmask = alloca i32, align 4
  %strend = alloca ptr, align 8
  %scan_end1 = alloca i8, align 1
  %scan_end = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2081, metadata !DIExpression()), !dbg !2095
  store i32 %cur_match, ptr %cur_match.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cur_match.addr, metadata !2082, metadata !DIExpression()), !dbg !2096
  call void @llvm.lifetime.start.p0(i64 4, ptr %chain_length) #8, !dbg !2097
  call void @llvm.dbg.declare(metadata ptr %chain_length, metadata !2083, metadata !DIExpression()), !dbg !2098
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2099
  %max_chain_length = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 30, !dbg !2100
  %1 = load i32, ptr %max_chain_length, align 4, !dbg !2100
  store i32 %1, ptr %chain_length, align 4, !dbg !2098
  call void @llvm.lifetime.start.p0(i64 8, ptr %scan) #8, !dbg !2101
  call void @llvm.dbg.declare(metadata ptr %scan, metadata !2084, metadata !DIExpression()), !dbg !2102
  %2 = load ptr, ptr %s.addr, align 8, !dbg !2103
  %window = getelementptr inbounds %struct.deflate_state, ptr %2, i32 0, i32 13, !dbg !2104
  %3 = load ptr, ptr %window, align 8, !dbg !2104
  %4 = load ptr, ptr %s.addr, align 8, !dbg !2105
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %4, i32 0, i32 26, !dbg !2106
  %5 = load i32, ptr %strstart, align 4, !dbg !2106
  %idx.ext = zext i32 %5 to i64, !dbg !2107
  %add.ptr = getelementptr i8, ptr %3, i64 %idx.ext, !dbg !2107
  store ptr %add.ptr, ptr %scan, align 8, !dbg !2102
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #8, !dbg !2108
  call void @llvm.dbg.declare(metadata ptr %match, metadata !2085, metadata !DIExpression()), !dbg !2109
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #8, !dbg !2110
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2086, metadata !DIExpression()), !dbg !2111
  call void @llvm.lifetime.start.p0(i64 4, ptr %best_len) #8, !dbg !2112
  call void @llvm.dbg.declare(metadata ptr %best_len, metadata !2087, metadata !DIExpression()), !dbg !2113
  %6 = load ptr, ptr %s.addr, align 8, !dbg !2114
  %prev_length = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 29, !dbg !2115
  %7 = load i32, ptr %prev_length, align 8, !dbg !2115
  store i32 %7, ptr %best_len, align 4, !dbg !2113
  call void @llvm.lifetime.start.p0(i64 4, ptr %nice_match) #8, !dbg !2116
  call void @llvm.dbg.declare(metadata ptr %nice_match, metadata !2088, metadata !DIExpression()), !dbg !2117
  %8 = load ptr, ptr %s.addr, align 8, !dbg !2118
  %nice_match1 = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 35, !dbg !2119
  %9 = load i32, ptr %nice_match1, align 8, !dbg !2119
  store i32 %9, ptr %nice_match, align 4, !dbg !2117
  call void @llvm.lifetime.start.p0(i64 4, ptr %limit) #8, !dbg !2120
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !2089, metadata !DIExpression()), !dbg !2121
  %10 = load ptr, ptr %s.addr, align 8, !dbg !2122
  %strstart2 = getelementptr inbounds %struct.deflate_state, ptr %10, i32 0, i32 26, !dbg !2123
  %11 = load i32, ptr %strstart2, align 4, !dbg !2123
  %12 = load ptr, ptr %s.addr, align 8, !dbg !2124
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 10, !dbg !2124
  %13 = load i32, ptr %w_size, align 8, !dbg !2124
  %sub = sub i32 %13, 262, !dbg !2124
  %cmp = icmp ugt i32 %11, %sub, !dbg !2125
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2122

cond.true:                                        ; preds = %entry
  %14 = load ptr, ptr %s.addr, align 8, !dbg !2126
  %strstart3 = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 26, !dbg !2127
  %15 = load i32, ptr %strstart3, align 4, !dbg !2127
  %16 = load ptr, ptr %s.addr, align 8, !dbg !2128
  %w_size4 = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 10, !dbg !2128
  %17 = load i32, ptr %w_size4, align 8, !dbg !2128
  %sub5 = sub i32 %17, 262, !dbg !2128
  %sub6 = sub i32 %15, %sub5, !dbg !2129
  br label %cond.end, !dbg !2122

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2122

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub6, %cond.true ], [ 0, %cond.false ], !dbg !2122
  store i32 %cond, ptr %limit, align 4, !dbg !2121
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #8, !dbg !2130
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !2090, metadata !DIExpression()), !dbg !2131
  %18 = load ptr, ptr %s.addr, align 8, !dbg !2132
  %prev7 = getelementptr inbounds %struct.deflate_state, ptr %18, i32 0, i32 15, !dbg !2133
  %19 = load ptr, ptr %prev7, align 8, !dbg !2133
  store ptr %19, ptr %prev, align 8, !dbg !2131
  call void @llvm.lifetime.start.p0(i64 4, ptr %wmask) #8, !dbg !2134
  call void @llvm.dbg.declare(metadata ptr %wmask, metadata !2091, metadata !DIExpression()), !dbg !2135
  %20 = load ptr, ptr %s.addr, align 8, !dbg !2136
  %w_mask = getelementptr inbounds %struct.deflate_state, ptr %20, i32 0, i32 12, !dbg !2137
  %21 = load i32, ptr %w_mask, align 8, !dbg !2137
  store i32 %21, ptr %wmask, align 4, !dbg !2135
  call void @llvm.lifetime.start.p0(i64 8, ptr %strend) #8, !dbg !2138
  call void @llvm.dbg.declare(metadata ptr %strend, metadata !2092, metadata !DIExpression()), !dbg !2139
  %22 = load ptr, ptr %s.addr, align 8, !dbg !2140
  %window8 = getelementptr inbounds %struct.deflate_state, ptr %22, i32 0, i32 13, !dbg !2141
  %23 = load ptr, ptr %window8, align 8, !dbg !2141
  %24 = load ptr, ptr %s.addr, align 8, !dbg !2142
  %strstart9 = getelementptr inbounds %struct.deflate_state, ptr %24, i32 0, i32 26, !dbg !2143
  %25 = load i32, ptr %strstart9, align 4, !dbg !2143
  %idx.ext10 = zext i32 %25 to i64, !dbg !2144
  %add.ptr11 = getelementptr i8, ptr %23, i64 %idx.ext10, !dbg !2144
  %add.ptr12 = getelementptr i8, ptr %add.ptr11, i64 258, !dbg !2145
  store ptr %add.ptr12, ptr %strend, align 8, !dbg !2139
  call void @llvm.lifetime.start.p0(i64 1, ptr %scan_end1) #8, !dbg !2146
  call void @llvm.dbg.declare(metadata ptr %scan_end1, metadata !2093, metadata !DIExpression()), !dbg !2147
  %26 = load ptr, ptr %scan, align 8, !dbg !2148
  %27 = load i32, ptr %best_len, align 4, !dbg !2149
  %sub13 = sub i32 %27, 1, !dbg !2150
  %idxprom = sext i32 %sub13 to i64, !dbg !2148
  %arrayidx = getelementptr i8, ptr %26, i64 %idxprom, !dbg !2148
  %28 = load i8, ptr %arrayidx, align 1, !dbg !2148
  store i8 %28, ptr %scan_end1, align 1, !dbg !2147
  call void @llvm.lifetime.start.p0(i64 1, ptr %scan_end) #8, !dbg !2151
  call void @llvm.dbg.declare(metadata ptr %scan_end, metadata !2094, metadata !DIExpression()), !dbg !2152
  %29 = load ptr, ptr %scan, align 8, !dbg !2153
  %30 = load i32, ptr %best_len, align 4, !dbg !2154
  %idxprom14 = sext i32 %30 to i64, !dbg !2153
  %arrayidx15 = getelementptr i8, ptr %29, i64 %idxprom14, !dbg !2153
  %31 = load i8, ptr %arrayidx15, align 1, !dbg !2153
  store i8 %31, ptr %scan_end, align 1, !dbg !2152
  %32 = load ptr, ptr %s.addr, align 8, !dbg !2155
  %prev_length16 = getelementptr inbounds %struct.deflate_state, ptr %32, i32 0, i32 29, !dbg !2157
  %33 = load i32, ptr %prev_length16, align 8, !dbg !2157
  %34 = load ptr, ptr %s.addr, align 8, !dbg !2158
  %good_match = getelementptr inbounds %struct.deflate_state, ptr %34, i32 0, i32 34, !dbg !2159
  %35 = load i32, ptr %good_match, align 4, !dbg !2159
  %cmp17 = icmp uge i32 %33, %35, !dbg !2160
  br i1 %cmp17, label %if.then, label %if.end, !dbg !2161

if.then:                                          ; preds = %cond.end
  %36 = load i32, ptr %chain_length, align 4, !dbg !2162
  %shr = lshr i32 %36, 2, !dbg !2162
  store i32 %shr, ptr %chain_length, align 4, !dbg !2162
  br label %if.end, !dbg !2164

if.end:                                           ; preds = %if.then, %cond.end
  %37 = load i32, ptr %nice_match, align 4, !dbg !2165
  %38 = load ptr, ptr %s.addr, align 8, !dbg !2167
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %38, i32 0, i32 28, !dbg !2168
  %39 = load i32, ptr %lookahead, align 4, !dbg !2168
  %cmp18 = icmp ugt i32 %37, %39, !dbg !2169
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !2170

if.then19:                                        ; preds = %if.end
  %40 = load ptr, ptr %s.addr, align 8, !dbg !2171
  %lookahead20 = getelementptr inbounds %struct.deflate_state, ptr %40, i32 0, i32 28, !dbg !2172
  %41 = load i32, ptr %lookahead20, align 4, !dbg !2172
  store i32 %41, ptr %nice_match, align 4, !dbg !2173
  br label %if.end21, !dbg !2174

if.end21:                                         ; preds = %if.then19, %if.end
  br label %do.body, !dbg !2175

do.body:                                          ; preds = %land.end134, %if.end21
  %42 = load ptr, ptr %s.addr, align 8, !dbg !2176
  %window22 = getelementptr inbounds %struct.deflate_state, ptr %42, i32 0, i32 13, !dbg !2178
  %43 = load ptr, ptr %window22, align 8, !dbg !2178
  %44 = load i32, ptr %cur_match.addr, align 4, !dbg !2179
  %idx.ext23 = zext i32 %44 to i64, !dbg !2180
  %add.ptr24 = getelementptr i8, ptr %43, i64 %idx.ext23, !dbg !2180
  store ptr %add.ptr24, ptr %match, align 8, !dbg !2181
  %45 = load ptr, ptr %match, align 8, !dbg !2182
  %46 = load i32, ptr %best_len, align 4, !dbg !2184
  %idxprom25 = sext i32 %46 to i64, !dbg !2182
  %arrayidx26 = getelementptr i8, ptr %45, i64 %idxprom25, !dbg !2182
  %47 = load i8, ptr %arrayidx26, align 1, !dbg !2182
  %conv = zext i8 %47 to i32, !dbg !2182
  %48 = load i8, ptr %scan_end, align 1, !dbg !2185
  %conv27 = zext i8 %48 to i32, !dbg !2185
  %cmp28 = icmp ne i32 %conv, %conv27, !dbg !2186
  br i1 %cmp28, label %if.then48, label %lor.lhs.false, !dbg !2187

lor.lhs.false:                                    ; preds = %do.body
  %49 = load ptr, ptr %match, align 8, !dbg !2188
  %50 = load i32, ptr %best_len, align 4, !dbg !2189
  %sub30 = sub i32 %50, 1, !dbg !2190
  %idxprom31 = sext i32 %sub30 to i64, !dbg !2188
  %arrayidx32 = getelementptr i8, ptr %49, i64 %idxprom31, !dbg !2188
  %51 = load i8, ptr %arrayidx32, align 1, !dbg !2188
  %conv33 = zext i8 %51 to i32, !dbg !2188
  %52 = load i8, ptr %scan_end1, align 1, !dbg !2191
  %conv34 = zext i8 %52 to i32, !dbg !2191
  %cmp35 = icmp ne i32 %conv33, %conv34, !dbg !2192
  br i1 %cmp35, label %if.then48, label %lor.lhs.false37, !dbg !2193

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %53 = load ptr, ptr %match, align 8, !dbg !2194
  %54 = load i8, ptr %53, align 1, !dbg !2195
  %conv38 = zext i8 %54 to i32, !dbg !2195
  %55 = load ptr, ptr %scan, align 8, !dbg !2196
  %56 = load i8, ptr %55, align 1, !dbg !2197
  %conv39 = zext i8 %56 to i32, !dbg !2197
  %cmp40 = icmp ne i32 %conv38, %conv39, !dbg !2198
  br i1 %cmp40, label %if.then48, label %lor.lhs.false42, !dbg !2199

lor.lhs.false42:                                  ; preds = %lor.lhs.false37
  %57 = load ptr, ptr %match, align 8, !dbg !2200
  %incdec.ptr = getelementptr i8, ptr %57, i32 1, !dbg !2200
  store ptr %incdec.ptr, ptr %match, align 8, !dbg !2200
  %58 = load i8, ptr %incdec.ptr, align 1, !dbg !2201
  %conv43 = zext i8 %58 to i32, !dbg !2201
  %59 = load ptr, ptr %scan, align 8, !dbg !2202
  %arrayidx44 = getelementptr i8, ptr %59, i64 1, !dbg !2202
  %60 = load i8, ptr %arrayidx44, align 1, !dbg !2202
  %conv45 = zext i8 %60 to i32, !dbg !2202
  %cmp46 = icmp ne i32 %conv43, %conv45, !dbg !2203
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !2204

if.then48:                                        ; preds = %lor.lhs.false42, %lor.lhs.false37, %lor.lhs.false, %do.body
  br label %do.cond125, !dbg !2205

if.end49:                                         ; preds = %lor.lhs.false42
  %61 = load ptr, ptr %scan, align 8, !dbg !2206
  %add.ptr50 = getelementptr i8, ptr %61, i64 2, !dbg !2206
  store ptr %add.ptr50, ptr %scan, align 8, !dbg !2206
  %62 = load ptr, ptr %match, align 8, !dbg !2207
  %incdec.ptr51 = getelementptr i8, ptr %62, i32 1, !dbg !2207
  store ptr %incdec.ptr51, ptr %match, align 8, !dbg !2207
  br label %do.body52, !dbg !2208

do.body52:                                        ; preds = %land.end, %if.end49
  br label %do.cond, !dbg !2209

do.cond:                                          ; preds = %do.body52
  %63 = load ptr, ptr %scan, align 8, !dbg !2211
  %incdec.ptr53 = getelementptr i8, ptr %63, i32 1, !dbg !2211
  store ptr %incdec.ptr53, ptr %scan, align 8, !dbg !2211
  %64 = load i8, ptr %incdec.ptr53, align 1, !dbg !2212
  %conv54 = zext i8 %64 to i32, !dbg !2212
  %65 = load ptr, ptr %match, align 8, !dbg !2213
  %incdec.ptr55 = getelementptr i8, ptr %65, i32 1, !dbg !2213
  store ptr %incdec.ptr55, ptr %match, align 8, !dbg !2213
  %66 = load i8, ptr %incdec.ptr55, align 1, !dbg !2214
  %conv56 = zext i8 %66 to i32, !dbg !2214
  %cmp57 = icmp eq i32 %conv54, %conv56, !dbg !2215
  br i1 %cmp57, label %land.lhs.true, label %land.end, !dbg !2216

land.lhs.true:                                    ; preds = %do.cond
  %67 = load ptr, ptr %scan, align 8, !dbg !2217
  %incdec.ptr59 = getelementptr i8, ptr %67, i32 1, !dbg !2217
  store ptr %incdec.ptr59, ptr %scan, align 8, !dbg !2217
  %68 = load i8, ptr %incdec.ptr59, align 1, !dbg !2218
  %conv60 = zext i8 %68 to i32, !dbg !2218
  %69 = load ptr, ptr %match, align 8, !dbg !2219
  %incdec.ptr61 = getelementptr i8, ptr %69, i32 1, !dbg !2219
  store ptr %incdec.ptr61, ptr %match, align 8, !dbg !2219
  %70 = load i8, ptr %incdec.ptr61, align 1, !dbg !2220
  %conv62 = zext i8 %70 to i32, !dbg !2220
  %cmp63 = icmp eq i32 %conv60, %conv62, !dbg !2221
  br i1 %cmp63, label %land.lhs.true65, label %land.end, !dbg !2222

land.lhs.true65:                                  ; preds = %land.lhs.true
  %71 = load ptr, ptr %scan, align 8, !dbg !2223
  %incdec.ptr66 = getelementptr i8, ptr %71, i32 1, !dbg !2223
  store ptr %incdec.ptr66, ptr %scan, align 8, !dbg !2223
  %72 = load i8, ptr %incdec.ptr66, align 1, !dbg !2224
  %conv67 = zext i8 %72 to i32, !dbg !2224
  %73 = load ptr, ptr %match, align 8, !dbg !2225
  %incdec.ptr68 = getelementptr i8, ptr %73, i32 1, !dbg !2225
  store ptr %incdec.ptr68, ptr %match, align 8, !dbg !2225
  %74 = load i8, ptr %incdec.ptr68, align 1, !dbg !2226
  %conv69 = zext i8 %74 to i32, !dbg !2226
  %cmp70 = icmp eq i32 %conv67, %conv69, !dbg !2227
  br i1 %cmp70, label %land.lhs.true72, label %land.end, !dbg !2228

land.lhs.true72:                                  ; preds = %land.lhs.true65
  %75 = load ptr, ptr %scan, align 8, !dbg !2229
  %incdec.ptr73 = getelementptr i8, ptr %75, i32 1, !dbg !2229
  store ptr %incdec.ptr73, ptr %scan, align 8, !dbg !2229
  %76 = load i8, ptr %incdec.ptr73, align 1, !dbg !2230
  %conv74 = zext i8 %76 to i32, !dbg !2230
  %77 = load ptr, ptr %match, align 8, !dbg !2231
  %incdec.ptr75 = getelementptr i8, ptr %77, i32 1, !dbg !2231
  store ptr %incdec.ptr75, ptr %match, align 8, !dbg !2231
  %78 = load i8, ptr %incdec.ptr75, align 1, !dbg !2232
  %conv76 = zext i8 %78 to i32, !dbg !2232
  %cmp77 = icmp eq i32 %conv74, %conv76, !dbg !2233
  br i1 %cmp77, label %land.lhs.true79, label %land.end, !dbg !2234

land.lhs.true79:                                  ; preds = %land.lhs.true72
  %79 = load ptr, ptr %scan, align 8, !dbg !2235
  %incdec.ptr80 = getelementptr i8, ptr %79, i32 1, !dbg !2235
  store ptr %incdec.ptr80, ptr %scan, align 8, !dbg !2235
  %80 = load i8, ptr %incdec.ptr80, align 1, !dbg !2236
  %conv81 = zext i8 %80 to i32, !dbg !2236
  %81 = load ptr, ptr %match, align 8, !dbg !2237
  %incdec.ptr82 = getelementptr i8, ptr %81, i32 1, !dbg !2237
  store ptr %incdec.ptr82, ptr %match, align 8, !dbg !2237
  %82 = load i8, ptr %incdec.ptr82, align 1, !dbg !2238
  %conv83 = zext i8 %82 to i32, !dbg !2238
  %cmp84 = icmp eq i32 %conv81, %conv83, !dbg !2239
  br i1 %cmp84, label %land.lhs.true86, label %land.end, !dbg !2240

land.lhs.true86:                                  ; preds = %land.lhs.true79
  %83 = load ptr, ptr %scan, align 8, !dbg !2241
  %incdec.ptr87 = getelementptr i8, ptr %83, i32 1, !dbg !2241
  store ptr %incdec.ptr87, ptr %scan, align 8, !dbg !2241
  %84 = load i8, ptr %incdec.ptr87, align 1, !dbg !2242
  %conv88 = zext i8 %84 to i32, !dbg !2242
  %85 = load ptr, ptr %match, align 8, !dbg !2243
  %incdec.ptr89 = getelementptr i8, ptr %85, i32 1, !dbg !2243
  store ptr %incdec.ptr89, ptr %match, align 8, !dbg !2243
  %86 = load i8, ptr %incdec.ptr89, align 1, !dbg !2244
  %conv90 = zext i8 %86 to i32, !dbg !2244
  %cmp91 = icmp eq i32 %conv88, %conv90, !dbg !2245
  br i1 %cmp91, label %land.lhs.true93, label %land.end, !dbg !2246

land.lhs.true93:                                  ; preds = %land.lhs.true86
  %87 = load ptr, ptr %scan, align 8, !dbg !2247
  %incdec.ptr94 = getelementptr i8, ptr %87, i32 1, !dbg !2247
  store ptr %incdec.ptr94, ptr %scan, align 8, !dbg !2247
  %88 = load i8, ptr %incdec.ptr94, align 1, !dbg !2248
  %conv95 = zext i8 %88 to i32, !dbg !2248
  %89 = load ptr, ptr %match, align 8, !dbg !2249
  %incdec.ptr96 = getelementptr i8, ptr %89, i32 1, !dbg !2249
  store ptr %incdec.ptr96, ptr %match, align 8, !dbg !2249
  %90 = load i8, ptr %incdec.ptr96, align 1, !dbg !2250
  %conv97 = zext i8 %90 to i32, !dbg !2250
  %cmp98 = icmp eq i32 %conv95, %conv97, !dbg !2251
  br i1 %cmp98, label %land.lhs.true100, label %land.end, !dbg !2252

land.lhs.true100:                                 ; preds = %land.lhs.true93
  %91 = load ptr, ptr %scan, align 8, !dbg !2253
  %incdec.ptr101 = getelementptr i8, ptr %91, i32 1, !dbg !2253
  store ptr %incdec.ptr101, ptr %scan, align 8, !dbg !2253
  %92 = load i8, ptr %incdec.ptr101, align 1, !dbg !2254
  %conv102 = zext i8 %92 to i32, !dbg !2254
  %93 = load ptr, ptr %match, align 8, !dbg !2255
  %incdec.ptr103 = getelementptr i8, ptr %93, i32 1, !dbg !2255
  store ptr %incdec.ptr103, ptr %match, align 8, !dbg !2255
  %94 = load i8, ptr %incdec.ptr103, align 1, !dbg !2256
  %conv104 = zext i8 %94 to i32, !dbg !2256
  %cmp105 = icmp eq i32 %conv102, %conv104, !dbg !2257
  br i1 %cmp105, label %land.rhs, label %land.end, !dbg !2258

land.rhs:                                         ; preds = %land.lhs.true100
  %95 = load ptr, ptr %scan, align 8, !dbg !2259
  %96 = load ptr, ptr %strend, align 8, !dbg !2260
  %cmp107 = icmp ult ptr %95, %96, !dbg !2261
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true100, %land.lhs.true93, %land.lhs.true86, %land.lhs.true79, %land.lhs.true72, %land.lhs.true65, %land.lhs.true, %do.cond
  %97 = phi i1 [ false, %land.lhs.true100 ], [ false, %land.lhs.true93 ], [ false, %land.lhs.true86 ], [ false, %land.lhs.true79 ], [ false, %land.lhs.true72 ], [ false, %land.lhs.true65 ], [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp107, %land.rhs ], !dbg !2262
  br i1 %97, label %do.body52, label %do.end, !dbg !2209, !llvm.loop !2263

do.end:                                           ; preds = %land.end
  %98 = load ptr, ptr %strend, align 8, !dbg !2265
  %99 = load ptr, ptr %scan, align 8, !dbg !2266
  %sub.ptr.lhs.cast = ptrtoint ptr %98 to i64, !dbg !2267
  %sub.ptr.rhs.cast = ptrtoint ptr %99 to i64, !dbg !2267
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2267
  %conv109 = trunc i64 %sub.ptr.sub to i32, !dbg !2268
  %sub110 = sub i32 258, %conv109, !dbg !2269
  store i32 %sub110, ptr %len, align 4, !dbg !2270
  %100 = load ptr, ptr %strend, align 8, !dbg !2271
  %add.ptr111 = getelementptr i8, ptr %100, i64 -258, !dbg !2272
  store ptr %add.ptr111, ptr %scan, align 8, !dbg !2273
  %101 = load i32, ptr %len, align 4, !dbg !2274
  %102 = load i32, ptr %best_len, align 4, !dbg !2276
  %cmp112 = icmp sgt i32 %101, %102, !dbg !2277
  br i1 %cmp112, label %if.then114, label %if.end124, !dbg !2278

if.then114:                                       ; preds = %do.end
  %103 = load i32, ptr %cur_match.addr, align 4, !dbg !2279
  %104 = load ptr, ptr %s.addr, align 8, !dbg !2281
  %match_start = getelementptr inbounds %struct.deflate_state, ptr %104, i32 0, i32 27, !dbg !2282
  store i32 %103, ptr %match_start, align 8, !dbg !2283
  %105 = load i32, ptr %len, align 4, !dbg !2284
  store i32 %105, ptr %best_len, align 4, !dbg !2285
  %106 = load i32, ptr %len, align 4, !dbg !2286
  %107 = load i32, ptr %nice_match, align 4, !dbg !2288
  %cmp115 = icmp sge i32 %106, %107, !dbg !2289
  br i1 %cmp115, label %if.then117, label %if.end118, !dbg !2290

if.then117:                                       ; preds = %if.then114
  br label %do.end135, !dbg !2291

if.end118:                                        ; preds = %if.then114
  %108 = load ptr, ptr %scan, align 8, !dbg !2292
  %109 = load i32, ptr %best_len, align 4, !dbg !2293
  %sub119 = sub i32 %109, 1, !dbg !2294
  %idxprom120 = sext i32 %sub119 to i64, !dbg !2292
  %arrayidx121 = getelementptr i8, ptr %108, i64 %idxprom120, !dbg !2292
  %110 = load i8, ptr %arrayidx121, align 1, !dbg !2292
  store i8 %110, ptr %scan_end1, align 1, !dbg !2295
  %111 = load ptr, ptr %scan, align 8, !dbg !2296
  %112 = load i32, ptr %best_len, align 4, !dbg !2297
  %idxprom122 = sext i32 %112 to i64, !dbg !2296
  %arrayidx123 = getelementptr i8, ptr %111, i64 %idxprom122, !dbg !2296
  %113 = load i8, ptr %arrayidx123, align 1, !dbg !2296
  store i8 %113, ptr %scan_end, align 1, !dbg !2298
  br label %if.end124, !dbg !2299

if.end124:                                        ; preds = %if.end118, %do.end
  br label %do.cond125, !dbg !2300

do.cond125:                                       ; preds = %if.end124, %if.then48
  %114 = load ptr, ptr %prev, align 8, !dbg !2301
  %115 = load i32, ptr %cur_match.addr, align 4, !dbg !2302
  %116 = load i32, ptr %wmask, align 4, !dbg !2303
  %and = and i32 %115, %116, !dbg !2304
  %idxprom126 = zext i32 %and to i64, !dbg !2301
  %arrayidx127 = getelementptr i16, ptr %114, i64 %idxprom126, !dbg !2301
  %117 = load i16, ptr %arrayidx127, align 2, !dbg !2301
  %conv128 = zext i16 %117 to i32, !dbg !2301
  store i32 %conv128, ptr %cur_match.addr, align 4, !dbg !2305
  %118 = load i32, ptr %limit, align 4, !dbg !2306
  %cmp129 = icmp ugt i32 %conv128, %118, !dbg !2307
  br i1 %cmp129, label %land.rhs131, label %land.end134, !dbg !2308

land.rhs131:                                      ; preds = %do.cond125
  %119 = load i32, ptr %chain_length, align 4, !dbg !2309
  %dec = add i32 %119, -1, !dbg !2309
  store i32 %dec, ptr %chain_length, align 4, !dbg !2309
  %cmp132 = icmp ne i32 %dec, 0, !dbg !2310
  br label %land.end134

land.end134:                                      ; preds = %land.rhs131, %do.cond125
  %120 = phi i1 [ false, %do.cond125 ], [ %cmp132, %land.rhs131 ], !dbg !2311
  br i1 %120, label %do.body, label %do.end135, !dbg !2300, !llvm.loop !2312

do.end135:                                        ; preds = %land.end134, %if.then117
  %121 = load i32, ptr %best_len, align 4, !dbg !2314
  %122 = load ptr, ptr %s.addr, align 8, !dbg !2316
  %lookahead136 = getelementptr inbounds %struct.deflate_state, ptr %122, i32 0, i32 28, !dbg !2317
  %123 = load i32, ptr %lookahead136, align 4, !dbg !2317
  %cmp137 = icmp ule i32 %121, %123, !dbg !2318
  br i1 %cmp137, label %if.then139, label %if.end140, !dbg !2319

if.then139:                                       ; preds = %do.end135
  %124 = load i32, ptr %best_len, align 4, !dbg !2320
  store i32 %124, ptr %retval, align 4, !dbg !2321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2321

if.end140:                                        ; preds = %do.end135
  %125 = load ptr, ptr %s.addr, align 8, !dbg !2322
  %lookahead141 = getelementptr inbounds %struct.deflate_state, ptr %125, i32 0, i32 28, !dbg !2323
  %126 = load i32, ptr %lookahead141, align 4, !dbg !2323
  store i32 %126, ptr %retval, align 4, !dbg !2324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2324

cleanup:                                          ; preds = %if.end140, %if.then139
  call void @llvm.lifetime.end.p0(i64 1, ptr %scan_end) #8, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 1, ptr %scan_end1) #8, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 8, ptr %strend) #8, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 4, ptr %wmask) #8, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #8, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 4, ptr %limit) #8, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 4, ptr %nice_match) #8, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 4, ptr %best_len) #8, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #8, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #8, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 8, ptr %scan) #8, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 4, ptr %chain_length) #8, !dbg !2325
  %127 = load i32, ptr %retval, align 4, !dbg !2325
  ret i32 %127, !dbg !2325
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2326 dso_local i32 @zlib_tr_tally(ptr noundef, i32 noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "configuration_table", scope: !2, file: !3, line: 135, type: !171, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zlib_deflate/.deflate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zlib_deflate/zlib_deflate\22 -D KBUILD_BASENAME=\22deflate\22 -D KBUILD_MODNAME=\22zlib_deflate\22 -D __KBUILD_MODNAME=kmod_zlib_deflate -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zlib_deflate/deflate.ll lib/zlib_deflate/deflate.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !165, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/zlib_deflate/deflate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e64b583875f77ec944c32023799d3400")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 344, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "lib/zlib_deflate/defutil.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11dc3ef756fc29155d42c18a4ac1495e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "need_more", value: 0)
!10 = !DIEnumerator(name: "block_done", value: 1)
!11 = !DIEnumerator(name: "finish_started", value: 2)
!12 = !DIEnumerator(name: "finish_done", value: 3)
!13 = !{!14, !15, !45, !41, !73, !164, !48, !152, !148, !58, !33, !67, !7, !146, !75, !84, !74, !52, !87}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "deflate_workspace", file: !3, line: 115, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deflate_workspace", file: !3, line: 104, size: 47680, elements: !18)
!18 = !{!19, !160, !161, !162, !163}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "deflate_memory", scope: !17, file: !3, line: 106, baseType: !20, size: 47424)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "deflate_state", file: !6, line: 241, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deflate_state", file: !6, line: 73, size: 47424, elements: !22)
!22 = !{!23, !55, !56, !57, !60, !61, !62, !63, !64, !65, !66, !68, !69, !70, !71, !72, !77, !78, !79, !80, !81, !82, !83, !85, !86, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !115, !119, !123, !134, !135, !136, !140, !142, !143, !144, !147, !149, !150, !151, !153, !154, !155, !156, !157, !158, !159}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "strm", scope: !21, file: !6, line: 74, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !25, line: 103, baseType: !26)
!25 = !DIFile(filename: "./include/linux/zlib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "959204f2bbe0607cb05d45364420f12e")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !25, line: 101, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !25, line: 84, size: 768, elements: !29)
!29 = !{!30, !36, !39, !40, !42, !43, !44, !47, !50, !51, !53, !54}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !28, file: !25, line: 85, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !34, line: 52, baseType: !35)
!34 = !DIFile(filename: "./include/linux/zconf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "66c2d885369ef0adc0f1780a0c1150c2")
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !28, file: !25, line: 86, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !34, line: 54, baseType: !38)
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !28, file: !25, line: 87, baseType: !37, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !28, file: !25, line: 89, baseType: !41, size: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !28, file: !25, line: 90, baseType: !37, size: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !28, file: !25, line: 91, baseType: !37, size: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !28, file: !25, line: 93, baseType: !45, size: 64, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !28, file: !25, line: 94, baseType: !48, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !25, line: 82, flags: DIFlagFwdDecl)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !28, file: !25, line: 96, baseType: !14, size: 64, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !28, file: !25, line: 98, baseType: !52, size: 32, offset: 576)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !28, file: !25, line: 99, baseType: !37, size: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !28, file: !25, line: 100, baseType: !37, size: 64, offset: 704)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !21, file: !6, line: 75, baseType: !52, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "pending_buf", scope: !21, file: !6, line: 76, baseType: !41, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pending_buf_size", scope: !21, file: !6, line: 77, baseType: !58, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "ulg", file: !59, line: 22, baseType: !38)
!59 = !DIFile(filename: "./include/linux/zutil.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e912e7345195f5db5905cb2a2b8db19")
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pending_out", scope: !21, file: !6, line: 78, baseType: !41, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !21, file: !6, line: 79, baseType: !52, size: 32, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "noheader", scope: !21, file: !6, line: 80, baseType: !52, size: 32, offset: 352)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !21, file: !6, line: 81, baseType: !33, size: 8, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !21, file: !6, line: 82, baseType: !33, size: 8, offset: 392)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "last_flush", scope: !21, file: !6, line: 83, baseType: !52, size: 32, offset: 416)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "w_size", scope: !21, file: !6, line: 87, baseType: !67, size: 32, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !34, line: 53, baseType: !7)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "w_bits", scope: !21, file: !6, line: 88, baseType: !67, size: 32, offset: 480)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "w_mask", scope: !21, file: !6, line: 89, baseType: !67, size: 32, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !21, file: !6, line: 91, baseType: !41, size: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "window_size", scope: !21, file: !6, line: 101, baseType: !58, size: 64, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !21, file: !6, line: 106, baseType: !73, size: 64, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pos", file: !6, line: 66, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "ush", file: !59, line: 21, baseType: !76)
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !21, file: !6, line: 112, baseType: !73, size: 64, offset: 768)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ins_h", scope: !21, file: !6, line: 114, baseType: !67, size: 32, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size", scope: !21, file: !6, line: 115, baseType: !67, size: 32, offset: 864)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "hash_bits", scope: !21, file: !6, line: 116, baseType: !67, size: 32, offset: 896)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !21, file: !6, line: 117, baseType: !67, size: 32, offset: 928)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "hash_shift", scope: !21, file: !6, line: 119, baseType: !67, size: 32, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !21, file: !6, line: 126, baseType: !84, size: 64, offset: 1024)
!84 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "match_length", scope: !21, file: !6, line: 131, baseType: !67, size: 32, offset: 1088)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "prev_match", scope: !21, file: !6, line: 132, baseType: !87, size: 32, offset: 1120)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPos", file: !6, line: 67, baseType: !7)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "match_available", scope: !21, file: !6, line: 133, baseType: !52, size: 32, offset: 1152)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "strstart", scope: !21, file: !6, line: 134, baseType: !67, size: 32, offset: 1184)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "match_start", scope: !21, file: !6, line: 135, baseType: !67, size: 32, offset: 1216)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !21, file: !6, line: 136, baseType: !67, size: 32, offset: 1248)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "prev_length", scope: !21, file: !6, line: 138, baseType: !67, size: 32, offset: 1280)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "max_chain_length", scope: !21, file: !6, line: 143, baseType: !67, size: 32, offset: 1312)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "max_lazy_match", scope: !21, file: !6, line: 149, baseType: !67, size: 32, offset: 1344)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !21, file: !6, line: 160, baseType: !52, size: 32, offset: 1376)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "strategy", scope: !21, file: !6, line: 161, baseType: !52, size: 32, offset: 1408)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "good_match", scope: !21, file: !6, line: 163, baseType: !67, size: 32, offset: 1440)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "nice_match", scope: !21, file: !6, line: 166, baseType: !52, size: 32, offset: 1472)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_ltree", scope: !21, file: !6, line: 170, baseType: !100, size: 18336, offset: 1504)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 18336, elements: !113)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ct_data_s", file: !6, line: 42, size: 32, elements: !102)
!102 = !{!103, !108}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "fc", scope: !101, file: !6, line: 46, baseType: !104, size: 16)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !6, line: 43, size: 16, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !104, file: !6, line: 44, baseType: !75, size: 16)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !104, file: !6, line: 45, baseType: !75, size: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !101, file: !6, line: 50, baseType: !109, size: 16, offset: 16)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !6, line: 47, size: 16, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "dad", scope: !109, file: !6, line: 48, baseType: !75, size: 16)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !109, file: !6, line: 49, baseType: !75, size: 16)
!113 = !{!114}
!114 = !DISubrange(count: 573)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_dtree", scope: !21, file: !6, line: 171, baseType: !116, size: 1952, offset: 19840)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1952, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 61)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "bl_tree", scope: !21, file: !6, line: 172, baseType: !120, size: 1248, offset: 21792)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1248, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 39)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "l_desc", scope: !21, file: !6, line: 174, baseType: !124, size: 192, offset: 23040)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_desc_s", file: !6, line: 60, size: 192, elements: !125)
!125 = !{!126, !129, !130}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_tree", scope: !124, file: !6, line: 61, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "ct_data", file: !6, line: 51, baseType: !101)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "max_code", scope: !124, file: !6, line: 62, baseType: !52, size: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "stat_desc", scope: !124, file: !6, line: 63, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_tree_desc", file: !6, line: 58, baseType: !133)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_tree_desc_s", file: !6, line: 58, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "d_desc", scope: !21, file: !6, line: 175, baseType: !124, size: 192, offset: 23232)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "bl_desc", scope: !21, file: !6, line: 176, baseType: !124, size: 192, offset: 23424)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "bl_count", scope: !21, file: !6, line: 178, baseType: !137, size: 256, offset: 23616)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 256, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !21, file: !6, line: 181, baseType: !141, size: 18336, offset: 23872)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 18336, elements: !113)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "heap_len", scope: !21, file: !6, line: 182, baseType: !52, size: 32, offset: 42208)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "heap_max", scope: !21, file: !6, line: 183, baseType: !52, size: 32, offset: 42240)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !21, file: !6, line: 188, baseType: !145, size: 4584, offset: 42272)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 4584, elements: !113)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "uch", file: !59, line: 20, baseType: !35)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "l_buf", scope: !21, file: !6, line: 192, baseType: !148, size: 64, offset: 46912)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "lit_bufsize", scope: !21, file: !6, line: 194, baseType: !67, size: 32, offset: 46976)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "last_lit", scope: !21, file: !6, line: 214, baseType: !67, size: 32, offset: 47008)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "d_buf", scope: !21, file: !6, line: 216, baseType: !152, size: 64, offset: 47040)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "opt_len", scope: !21, file: !6, line: 222, baseType: !58, size: 64, offset: 47104)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "static_len", scope: !21, file: !6, line: 223, baseType: !58, size: 64, offset: 47168)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_len", scope: !21, file: !6, line: 224, baseType: !58, size: 64, offset: 47232)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !21, file: !6, line: 225, baseType: !67, size: 32, offset: 47296)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "last_eob_len", scope: !21, file: !6, line: 226, baseType: !52, size: 32, offset: 47328)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "bi_buf", scope: !21, file: !6, line: 232, baseType: !75, size: 16, offset: 47360)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "bi_valid", scope: !21, file: !6, line: 236, baseType: !52, size: 32, offset: 47392)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "window_memory", scope: !17, file: !3, line: 111, baseType: !41, size: 64, offset: 47424)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev_memory", scope: !17, file: !3, line: 112, baseType: !73, size: 64, offset: 47488)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "head_memory", scope: !17, file: !3, line: 113, baseType: !73, size: 64, offset: 47552)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "overlay_memory", scope: !17, file: !3, line: 114, baseType: !45, size: 64, offset: 47616)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!165 = !{!166, !0}
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1140, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 216, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 27)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 1280, elements: !186)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "config", file: !3, line: 133, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "config_s", file: !3, line: 127, size: 128, elements: !175)
!175 = !{!176, !177, !178, !179, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "good_length", scope: !174, file: !3, line: 128, baseType: !75, size: 16)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "max_lazy", scope: !174, file: !3, line: 129, baseType: !75, size: 16, offset: 16)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nice_length", scope: !174, file: !3, line: 130, baseType: !75, size: 16, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "max_chain", scope: !174, file: !3, line: 131, baseType: !75, size: 16, offset: 48)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !174, file: !3, line: 132, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "compress_func", file: !3, line: 69, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!185, !164, !52}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "block_state", file: !6, line: 349, baseType: !5)
!186 = !{!187}
!187 = !DISubrange(count: 10)
!188 = !{i32 7, !"Dwarf Version", i32 5}
!189 = !{i32 2, !"Debug Info Version", i32 3}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 8, !"cf-protection-branch", i32 1}
!192 = !{i32 4, !"function_return_thunk_extern", i32 1}
!193 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!194 = !{i32 1, !"Code Model", i32 2}
!195 = !{i32 1, !"override-stack-alignment", i32 8}
!196 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!197 = distinct !DISubprogram(name: "zlib_deflateInit2", scope: !3, file: !3, line: 188, type: !198, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!52, !24, !52, !52, !52, !52, !52}
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211}
!201 = !DILocalVariable(name: "strm", arg: 1, scope: !197, file: !3, line: 189, type: !24)
!202 = !DILocalVariable(name: "level", arg: 2, scope: !197, file: !3, line: 190, type: !52)
!203 = !DILocalVariable(name: "method", arg: 3, scope: !197, file: !3, line: 191, type: !52)
!204 = !DILocalVariable(name: "windowBits", arg: 4, scope: !197, file: !3, line: 192, type: !52)
!205 = !DILocalVariable(name: "memLevel", arg: 5, scope: !197, file: !3, line: 193, type: !52)
!206 = !DILocalVariable(name: "strategy", arg: 6, scope: !197, file: !3, line: 194, type: !52)
!207 = !DILocalVariable(name: "s", scope: !197, file: !3, line: 197, type: !164)
!208 = !DILocalVariable(name: "noheader", scope: !197, file: !3, line: 198, type: !52)
!209 = !DILocalVariable(name: "mem", scope: !197, file: !3, line: 199, type: !15)
!210 = !DILocalVariable(name: "next", scope: !197, file: !3, line: 200, type: !45)
!211 = !DILocalVariable(name: "overlay", scope: !197, file: !3, line: 202, type: !152)
!212 = !DILocation(line: 189, column: 12, scope: !197)
!213 = !DILocation(line: 190, column: 7, scope: !197)
!214 = !DILocation(line: 191, column: 7, scope: !197)
!215 = !DILocation(line: 192, column: 7, scope: !197)
!216 = !DILocation(line: 193, column: 7, scope: !197)
!217 = !DILocation(line: 194, column: 7, scope: !197)
!218 = !DILocation(line: 197, column: 5, scope: !197)
!219 = !DILocation(line: 197, column: 20, scope: !197)
!220 = !DILocation(line: 198, column: 5, scope: !197)
!221 = !DILocation(line: 198, column: 9, scope: !197)
!222 = !DILocation(line: 199, column: 5, scope: !197)
!223 = !DILocation(line: 199, column: 24, scope: !197)
!224 = !DILocation(line: 200, column: 5, scope: !197)
!225 = !DILocation(line: 200, column: 11, scope: !197)
!226 = !DILocation(line: 202, column: 5, scope: !197)
!227 = !DILocation(line: 202, column: 10, scope: !197)
!228 = !DILocation(line: 207, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !197, file: !3, line: 207, column: 9)
!230 = !DILocation(line: 207, column: 14, scope: !229)
!231 = !DILocation(line: 207, column: 9, scope: !197)
!232 = !DILocation(line: 207, column: 23, scope: !229)
!233 = !DILocation(line: 209, column: 5, scope: !197)
!234 = !DILocation(line: 209, column: 11, scope: !197)
!235 = !DILocation(line: 209, column: 15, scope: !197)
!236 = !DILocation(line: 211, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !197, file: !3, line: 211, column: 9)
!238 = !DILocation(line: 211, column: 15, scope: !237)
!239 = !DILocation(line: 211, column: 9, scope: !197)
!240 = !DILocation(line: 211, column: 47, scope: !237)
!241 = !DILocation(line: 211, column: 41, scope: !237)
!242 = !DILocation(line: 213, column: 33, scope: !197)
!243 = !DILocation(line: 213, column: 39, scope: !197)
!244 = !DILocation(line: 213, column: 9, scope: !197)
!245 = !DILocation(line: 215, column: 9, scope: !246)
!246 = distinct !DILexicalBlock(scope: !197, file: !3, line: 215, column: 9)
!247 = !DILocation(line: 215, column: 20, scope: !246)
!248 = !DILocation(line: 215, column: 9, scope: !197)
!249 = !DILocation(line: 216, column: 18, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 215, column: 25)
!251 = !DILocation(line: 217, column: 23, scope: !250)
!252 = !DILocation(line: 217, column: 22, scope: !250)
!253 = !DILocation(line: 217, column: 20, scope: !250)
!254 = !DILocation(line: 218, column: 5, scope: !250)
!255 = !DILocation(line: 219, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !197, file: !3, line: 219, column: 9)
!257 = !DILocation(line: 219, column: 18, scope: !256)
!258 = !DILocation(line: 219, column: 22, scope: !256)
!259 = !DILocation(line: 219, column: 25, scope: !256)
!260 = !DILocation(line: 219, column: 34, scope: !256)
!261 = !DILocation(line: 219, column: 50, scope: !256)
!262 = !DILocation(line: 219, column: 53, scope: !256)
!263 = !DILocation(line: 219, column: 60, scope: !256)
!264 = !DILocation(line: 219, column: 74, scope: !256)
!265 = !DILocation(line: 220, column: 9, scope: !256)
!266 = !DILocation(line: 220, column: 20, scope: !256)
!267 = !DILocation(line: 220, column: 24, scope: !256)
!268 = !DILocation(line: 220, column: 27, scope: !256)
!269 = !DILocation(line: 220, column: 38, scope: !256)
!270 = !DILocation(line: 220, column: 43, scope: !256)
!271 = !DILocation(line: 220, column: 46, scope: !256)
!272 = !DILocation(line: 220, column: 52, scope: !256)
!273 = !DILocation(line: 220, column: 56, scope: !256)
!274 = !DILocation(line: 220, column: 59, scope: !256)
!275 = !DILocation(line: 220, column: 65, scope: !256)
!276 = !DILocation(line: 220, column: 69, scope: !256)
!277 = !DILocation(line: 221, column: 2, scope: !256)
!278 = !DILocation(line: 221, column: 11, scope: !256)
!279 = !DILocation(line: 221, column: 15, scope: !256)
!280 = !DILocation(line: 221, column: 18, scope: !256)
!281 = !DILocation(line: 221, column: 27, scope: !256)
!282 = !DILocation(line: 219, column: 9, scope: !197)
!283 = !DILocation(line: 222, column: 9, scope: !284)
!284 = distinct !DILexicalBlock(scope: !256, file: !3, line: 221, column: 45)
!285 = !DILocation(line: 229, column: 21, scope: !197)
!286 = !DILocation(line: 229, column: 10, scope: !197)
!287 = !DILocation(line: 230, column: 10, scope: !197)
!288 = !DILocation(line: 238, column: 35, scope: !197)
!289 = !DILocation(line: 238, column: 5, scope: !197)
!290 = !DILocation(line: 238, column: 10, scope: !197)
!291 = !DILocation(line: 238, column: 24, scope: !197)
!292 = !DILocation(line: 240, column: 13, scope: !197)
!293 = !DILocation(line: 240, column: 10, scope: !197)
!294 = !DILocation(line: 241, column: 32, scope: !197)
!295 = !DILocation(line: 241, column: 5, scope: !197)
!296 = !DILocation(line: 241, column: 10, scope: !197)
!297 = !DILocation(line: 241, column: 22, scope: !197)
!298 = !DILocation(line: 242, column: 13, scope: !197)
!299 = !DILocation(line: 242, column: 10, scope: !197)
!300 = !DILocation(line: 243, column: 32, scope: !197)
!301 = !DILocation(line: 243, column: 5, scope: !197)
!302 = !DILocation(line: 243, column: 10, scope: !197)
!303 = !DILocation(line: 243, column: 22, scope: !197)
!304 = !DILocation(line: 244, column: 13, scope: !197)
!305 = !DILocation(line: 244, column: 10, scope: !197)
!306 = !DILocation(line: 245, column: 27, scope: !197)
!307 = !DILocation(line: 245, column: 5, scope: !197)
!308 = !DILocation(line: 245, column: 10, scope: !197)
!309 = !DILocation(line: 245, column: 25, scope: !197)
!310 = !DILocation(line: 247, column: 29, scope: !197)
!311 = !DILocation(line: 247, column: 34, scope: !197)
!312 = !DILocation(line: 247, column: 7, scope: !197)
!313 = !DILocation(line: 248, column: 44, scope: !197)
!314 = !DILocation(line: 248, column: 5, scope: !197)
!315 = !DILocation(line: 248, column: 11, scope: !197)
!316 = !DILocation(line: 248, column: 17, scope: !197)
!317 = !DILocation(line: 249, column: 15, scope: !197)
!318 = !DILocation(line: 249, column: 5, scope: !197)
!319 = !DILocation(line: 249, column: 8, scope: !197)
!320 = !DILocation(line: 249, column: 13, scope: !197)
!321 = !DILocation(line: 251, column: 19, scope: !197)
!322 = !DILocation(line: 251, column: 5, scope: !197)
!323 = !DILocation(line: 251, column: 8, scope: !197)
!324 = !DILocation(line: 251, column: 17, scope: !197)
!325 = !DILocation(line: 252, column: 17, scope: !197)
!326 = !DILocation(line: 252, column: 5, scope: !197)
!327 = !DILocation(line: 252, column: 8, scope: !197)
!328 = !DILocation(line: 252, column: 15, scope: !197)
!329 = !DILocation(line: 253, column: 22, scope: !197)
!330 = !DILocation(line: 253, column: 25, scope: !197)
!331 = !DILocation(line: 253, column: 19, scope: !197)
!332 = !DILocation(line: 253, column: 5, scope: !197)
!333 = !DILocation(line: 253, column: 8, scope: !197)
!334 = !DILocation(line: 253, column: 15, scope: !197)
!335 = !DILocation(line: 254, column: 17, scope: !197)
!336 = !DILocation(line: 254, column: 20, scope: !197)
!337 = !DILocation(line: 254, column: 27, scope: !197)
!338 = !DILocation(line: 254, column: 5, scope: !197)
!339 = !DILocation(line: 254, column: 8, scope: !197)
!340 = !DILocation(line: 254, column: 15, scope: !197)
!341 = !DILocation(line: 256, column: 20, scope: !197)
!342 = !DILocation(line: 256, column: 29, scope: !197)
!343 = !DILocation(line: 256, column: 5, scope: !197)
!344 = !DILocation(line: 256, column: 8, scope: !197)
!345 = !DILocation(line: 256, column: 18, scope: !197)
!346 = !DILocation(line: 257, column: 25, scope: !197)
!347 = !DILocation(line: 257, column: 28, scope: !197)
!348 = !DILocation(line: 257, column: 22, scope: !197)
!349 = !DILocation(line: 257, column: 5, scope: !197)
!350 = !DILocation(line: 257, column: 8, scope: !197)
!351 = !DILocation(line: 257, column: 18, scope: !197)
!352 = !DILocation(line: 258, column: 20, scope: !197)
!353 = !DILocation(line: 258, column: 23, scope: !197)
!354 = !DILocation(line: 258, column: 33, scope: !197)
!355 = !DILocation(line: 258, column: 5, scope: !197)
!356 = !DILocation(line: 258, column: 8, scope: !197)
!357 = !DILocation(line: 258, column: 18, scope: !197)
!358 = !DILocation(line: 259, column: 24, scope: !197)
!359 = !DILocation(line: 259, column: 27, scope: !197)
!360 = !DILocation(line: 259, column: 36, scope: !197)
!361 = !DILocation(line: 259, column: 46, scope: !197)
!362 = !DILocation(line: 259, column: 49, scope: !197)
!363 = !DILocation(line: 259, column: 5, scope: !197)
!364 = !DILocation(line: 259, column: 8, scope: !197)
!365 = !DILocation(line: 259, column: 19, scope: !197)
!366 = !DILocation(line: 261, column: 26, scope: !197)
!367 = !DILocation(line: 261, column: 31, scope: !197)
!368 = !DILocation(line: 261, column: 5, scope: !197)
!369 = !DILocation(line: 261, column: 8, scope: !197)
!370 = !DILocation(line: 261, column: 15, scope: !197)
!371 = !DILocation(line: 262, column: 26, scope: !197)
!372 = !DILocation(line: 262, column: 31, scope: !197)
!373 = !DILocation(line: 262, column: 5, scope: !197)
!374 = !DILocation(line: 262, column: 8, scope: !197)
!375 = !DILocation(line: 262, column: 15, scope: !197)
!376 = !DILocation(line: 263, column: 26, scope: !197)
!377 = !DILocation(line: 263, column: 31, scope: !197)
!378 = !DILocation(line: 263, column: 5, scope: !197)
!379 = !DILocation(line: 263, column: 8, scope: !197)
!380 = !DILocation(line: 263, column: 15, scope: !197)
!381 = !DILocation(line: 265, column: 28, scope: !197)
!382 = !DILocation(line: 265, column: 37, scope: !197)
!383 = !DILocation(line: 265, column: 24, scope: !197)
!384 = !DILocation(line: 265, column: 5, scope: !197)
!385 = !DILocation(line: 265, column: 8, scope: !197)
!386 = !DILocation(line: 265, column: 20, scope: !197)
!387 = !DILocation(line: 267, column: 23, scope: !197)
!388 = !DILocation(line: 267, column: 28, scope: !197)
!389 = !DILocation(line: 267, column: 13, scope: !197)
!390 = !DILocation(line: 268, column: 30, scope: !197)
!391 = !DILocation(line: 268, column: 5, scope: !197)
!392 = !DILocation(line: 268, column: 8, scope: !197)
!393 = !DILocation(line: 268, column: 20, scope: !197)
!394 = !DILocation(line: 269, column: 32, scope: !197)
!395 = !DILocation(line: 269, column: 35, scope: !197)
!396 = !DILocation(line: 269, column: 27, scope: !197)
!397 = !DILocation(line: 269, column: 47, scope: !197)
!398 = !DILocation(line: 269, column: 5, scope: !197)
!399 = !DILocation(line: 269, column: 8, scope: !197)
!400 = !DILocation(line: 269, column: 25, scope: !197)
!401 = !DILocation(line: 271, column: 16, scope: !197)
!402 = !DILocation(line: 271, column: 26, scope: !197)
!403 = !DILocation(line: 271, column: 29, scope: !197)
!404 = !DILocation(line: 271, column: 40, scope: !197)
!405 = !DILocation(line: 271, column: 24, scope: !197)
!406 = !DILocation(line: 271, column: 5, scope: !197)
!407 = !DILocation(line: 271, column: 8, scope: !197)
!408 = !DILocation(line: 271, column: 14, scope: !197)
!409 = !DILocation(line: 272, column: 16, scope: !197)
!410 = !DILocation(line: 272, column: 19, scope: !197)
!411 = !DILocation(line: 272, column: 49, scope: !197)
!412 = !DILocation(line: 272, column: 52, scope: !197)
!413 = !DILocation(line: 272, column: 48, scope: !197)
!414 = !DILocation(line: 272, column: 31, scope: !197)
!415 = !DILocation(line: 272, column: 5, scope: !197)
!416 = !DILocation(line: 272, column: 8, scope: !197)
!417 = !DILocation(line: 272, column: 14, scope: !197)
!418 = !DILocation(line: 274, column: 16, scope: !197)
!419 = !DILocation(line: 274, column: 5, scope: !197)
!420 = !DILocation(line: 274, column: 8, scope: !197)
!421 = !DILocation(line: 274, column: 14, scope: !197)
!422 = !DILocation(line: 275, column: 19, scope: !197)
!423 = !DILocation(line: 275, column: 5, scope: !197)
!424 = !DILocation(line: 275, column: 8, scope: !197)
!425 = !DILocation(line: 275, column: 17, scope: !197)
!426 = !DILocation(line: 276, column: 23, scope: !197)
!427 = !DILocation(line: 276, column: 17, scope: !197)
!428 = !DILocation(line: 276, column: 5, scope: !197)
!429 = !DILocation(line: 276, column: 8, scope: !197)
!430 = !DILocation(line: 276, column: 15, scope: !197)
!431 = !DILocation(line: 278, column: 30, scope: !197)
!432 = !DILocation(line: 278, column: 12, scope: !197)
!433 = !DILocation(line: 278, column: 5, scope: !197)
!434 = !DILocation(line: 279, column: 1, scope: !197)
!435 = distinct !DISubprogram(name: "zlib_deflateReset", scope: !3, file: !3, line: 282, type: !436, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!52, !24}
!438 = !{!439, !440}
!439 = !DILocalVariable(name: "strm", arg: 1, scope: !435, file: !3, line: 283, type: !24)
!440 = !DILocalVariable(name: "s", scope: !435, file: !3, line: 286, type: !164)
!441 = !DILocation(line: 283, column: 12, scope: !435)
!442 = !DILocation(line: 286, column: 5, scope: !435)
!443 = !DILocation(line: 286, column: 20, scope: !435)
!444 = !DILocation(line: 288, column: 9, scope: !445)
!445 = distinct !DILexicalBlock(scope: !435, file: !3, line: 288, column: 9)
!446 = !DILocation(line: 288, column: 14, scope: !445)
!447 = !DILocation(line: 288, column: 22, scope: !445)
!448 = !DILocation(line: 288, column: 25, scope: !445)
!449 = !DILocation(line: 288, column: 31, scope: !445)
!450 = !DILocation(line: 288, column: 37, scope: !445)
!451 = !DILocation(line: 288, column: 9, scope: !435)
!452 = !DILocation(line: 289, column: 9, scope: !445)
!453 = !DILocation(line: 291, column: 22, scope: !435)
!454 = !DILocation(line: 291, column: 28, scope: !435)
!455 = !DILocation(line: 291, column: 38, scope: !435)
!456 = !DILocation(line: 291, column: 5, scope: !435)
!457 = !DILocation(line: 291, column: 11, scope: !435)
!458 = !DILocation(line: 291, column: 20, scope: !435)
!459 = !DILocation(line: 292, column: 5, scope: !435)
!460 = !DILocation(line: 292, column: 11, scope: !435)
!461 = !DILocation(line: 292, column: 15, scope: !435)
!462 = !DILocation(line: 293, column: 5, scope: !435)
!463 = !DILocation(line: 293, column: 11, scope: !435)
!464 = !DILocation(line: 293, column: 21, scope: !435)
!465 = !DILocation(line: 295, column: 26, scope: !435)
!466 = !DILocation(line: 295, column: 32, scope: !435)
!467 = !DILocation(line: 295, column: 7, scope: !435)
!468 = !DILocation(line: 296, column: 5, scope: !435)
!469 = !DILocation(line: 296, column: 8, scope: !435)
!470 = !DILocation(line: 296, column: 16, scope: !435)
!471 = !DILocation(line: 297, column: 22, scope: !435)
!472 = !DILocation(line: 297, column: 25, scope: !435)
!473 = !DILocation(line: 297, column: 5, scope: !435)
!474 = !DILocation(line: 297, column: 8, scope: !435)
!475 = !DILocation(line: 297, column: 20, scope: !435)
!476 = !DILocation(line: 299, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !435, file: !3, line: 299, column: 9)
!478 = !DILocation(line: 299, column: 12, scope: !477)
!479 = !DILocation(line: 299, column: 21, scope: !477)
!480 = !DILocation(line: 299, column: 9, scope: !435)
!481 = !DILocation(line: 300, column: 9, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !3, line: 299, column: 26)
!483 = !DILocation(line: 300, column: 12, scope: !482)
!484 = !DILocation(line: 300, column: 21, scope: !482)
!485 = !DILocation(line: 301, column: 5, scope: !482)
!486 = !DILocation(line: 302, column: 17, scope: !435)
!487 = !DILocation(line: 302, column: 20, scope: !435)
!488 = !DILocation(line: 302, column: 5, scope: !435)
!489 = !DILocation(line: 302, column: 8, scope: !435)
!490 = !DILocation(line: 302, column: 15, scope: !435)
!491 = !DILocation(line: 303, column: 5, scope: !435)
!492 = !DILocation(line: 303, column: 11, scope: !435)
!493 = !DILocation(line: 303, column: 17, scope: !435)
!494 = !DILocation(line: 304, column: 5, scope: !435)
!495 = !DILocation(line: 304, column: 8, scope: !435)
!496 = !DILocation(line: 304, column: 19, scope: !435)
!497 = !DILocation(line: 306, column: 18, scope: !435)
!498 = !DILocation(line: 306, column: 5, scope: !435)
!499 = !DILocation(line: 307, column: 13, scope: !435)
!500 = !DILocation(line: 307, column: 5, scope: !435)
!501 = !DILocation(line: 309, column: 5, scope: !435)
!502 = !DILocation(line: 309, column: 5, scope: !503)
!503 = distinct !DILexicalBlock(scope: !435, file: !3, line: 309, column: 5)
!504 = !DILocation(line: 311, column: 5, scope: !435)
!505 = !DILocation(line: 312, column: 1, scope: !435)
!506 = !DISubprogram(name: "zlib_tr_init", scope: !6, file: !6, line: 274, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !164}
!509 = distinct !DISubprogram(name: "lm_init", scope: !3, file: !3, line: 530, type: !507, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !510)
!510 = !{!511}
!511 = !DILocalVariable(name: "s", arg: 1, scope: !509, file: !3, line: 531, type: !164)
!512 = !DILocation(line: 531, column: 17, scope: !509)
!513 = !DILocation(line: 534, column: 30, scope: !509)
!514 = !DILocation(line: 534, column: 33, scope: !509)
!515 = !DILocation(line: 534, column: 29, scope: !509)
!516 = !DILocation(line: 534, column: 5, scope: !509)
!517 = !DILocation(line: 534, column: 8, scope: !509)
!518 = !DILocation(line: 534, column: 20, scope: !509)
!519 = !DILocation(line: 536, column: 5, scope: !509)
!520 = !DILocation(line: 540, column: 47, scope: !509)
!521 = !DILocation(line: 540, column: 50, scope: !509)
!522 = !DILocation(line: 540, column: 27, scope: !509)
!523 = !DILocation(line: 540, column: 57, scope: !509)
!524 = !DILocation(line: 540, column: 5, scope: !509)
!525 = !DILocation(line: 540, column: 8, scope: !509)
!526 = !DILocation(line: 540, column: 25, scope: !509)
!527 = !DILocation(line: 541, column: 47, scope: !509)
!528 = !DILocation(line: 541, column: 50, scope: !509)
!529 = !DILocation(line: 541, column: 27, scope: !509)
!530 = !DILocation(line: 541, column: 57, scope: !509)
!531 = !DILocation(line: 541, column: 5, scope: !509)
!532 = !DILocation(line: 541, column: 8, scope: !509)
!533 = !DILocation(line: 541, column: 25, scope: !509)
!534 = !DILocation(line: 542, column: 47, scope: !509)
!535 = !DILocation(line: 542, column: 50, scope: !509)
!536 = !DILocation(line: 542, column: 27, scope: !509)
!537 = !DILocation(line: 542, column: 57, scope: !509)
!538 = !DILocation(line: 542, column: 5, scope: !509)
!539 = !DILocation(line: 542, column: 8, scope: !509)
!540 = !DILocation(line: 542, column: 25, scope: !509)
!541 = !DILocation(line: 543, column: 47, scope: !509)
!542 = !DILocation(line: 543, column: 50, scope: !509)
!543 = !DILocation(line: 543, column: 27, scope: !509)
!544 = !DILocation(line: 543, column: 57, scope: !509)
!545 = !DILocation(line: 543, column: 5, scope: !509)
!546 = !DILocation(line: 543, column: 8, scope: !509)
!547 = !DILocation(line: 543, column: 25, scope: !509)
!548 = !DILocation(line: 545, column: 5, scope: !509)
!549 = !DILocation(line: 545, column: 8, scope: !509)
!550 = !DILocation(line: 545, column: 17, scope: !509)
!551 = !DILocation(line: 546, column: 5, scope: !509)
!552 = !DILocation(line: 546, column: 8, scope: !509)
!553 = !DILocation(line: 546, column: 20, scope: !509)
!554 = !DILocation(line: 547, column: 5, scope: !509)
!555 = !DILocation(line: 547, column: 8, scope: !509)
!556 = !DILocation(line: 547, column: 18, scope: !509)
!557 = !DILocation(line: 548, column: 23, scope: !509)
!558 = !DILocation(line: 548, column: 26, scope: !509)
!559 = !DILocation(line: 548, column: 38, scope: !509)
!560 = !DILocation(line: 548, column: 5, scope: !509)
!561 = !DILocation(line: 548, column: 8, scope: !509)
!562 = !DILocation(line: 548, column: 21, scope: !509)
!563 = !DILocation(line: 549, column: 5, scope: !509)
!564 = !DILocation(line: 549, column: 8, scope: !509)
!565 = !DILocation(line: 549, column: 24, scope: !509)
!566 = !DILocation(line: 550, column: 5, scope: !509)
!567 = !DILocation(line: 550, column: 8, scope: !509)
!568 = !DILocation(line: 550, column: 14, scope: !509)
!569 = !DILocation(line: 551, column: 1, scope: !509)
!570 = distinct !DISubprogram(name: "zlib_deflate", scope: !3, file: !3, line: 329, type: !571, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!52, !24, !52}
!573 = !{!574, !575, !576, !577, !578, !581, !582}
!574 = !DILocalVariable(name: "strm", arg: 1, scope: !570, file: !3, line: 330, type: !24)
!575 = !DILocalVariable(name: "flush", arg: 2, scope: !570, file: !3, line: 331, type: !52)
!576 = !DILocalVariable(name: "old_flush", scope: !570, file: !3, line: 334, type: !52)
!577 = !DILocalVariable(name: "s", scope: !570, file: !3, line: 335, type: !164)
!578 = !DILocalVariable(name: "header", scope: !579, file: !3, line: 356, type: !67)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 354, column: 34)
!580 = distinct !DILexicalBlock(scope: !570, file: !3, line: 354, column: 9)
!581 = !DILocalVariable(name: "level_flags", scope: !579, file: !3, line: 357, type: !67)
!582 = !DILocalVariable(name: "bstate", scope: !583, file: !3, line: 407, type: !185)
!583 = distinct !DILexicalBlock(scope: !584, file: !3, line: 406, column: 61)
!584 = distinct !DILexicalBlock(scope: !570, file: !3, line: 405, column: 9)
!585 = !DILocation(line: 330, column: 12, scope: !570)
!586 = !DILocation(line: 331, column: 6, scope: !570)
!587 = !DILocation(line: 334, column: 5, scope: !570)
!588 = !DILocation(line: 334, column: 9, scope: !570)
!589 = !DILocation(line: 335, column: 5, scope: !570)
!590 = !DILocation(line: 335, column: 20, scope: !570)
!591 = !DILocation(line: 337, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !570, file: !3, line: 337, column: 9)
!593 = !DILocation(line: 337, column: 14, scope: !592)
!594 = !DILocation(line: 337, column: 22, scope: !592)
!595 = !DILocation(line: 337, column: 25, scope: !592)
!596 = !DILocation(line: 337, column: 31, scope: !592)
!597 = !DILocation(line: 337, column: 37, scope: !592)
!598 = !DILocation(line: 337, column: 45, scope: !592)
!599 = !DILocation(line: 338, column: 2, scope: !592)
!600 = !DILocation(line: 338, column: 8, scope: !592)
!601 = !DILocation(line: 338, column: 19, scope: !592)
!602 = !DILocation(line: 338, column: 22, scope: !592)
!603 = !DILocation(line: 338, column: 28, scope: !592)
!604 = !DILocation(line: 337, column: 9, scope: !570)
!605 = !DILocation(line: 339, column: 9, scope: !606)
!606 = distinct !DILexicalBlock(scope: !592, file: !3, line: 338, column: 33)
!607 = !DILocation(line: 341, column: 27, scope: !570)
!608 = !DILocation(line: 341, column: 33, scope: !570)
!609 = !DILocation(line: 341, column: 7, scope: !570)
!610 = !DILocation(line: 343, column: 10, scope: !611)
!611 = distinct !DILexicalBlock(scope: !570, file: !3, line: 343, column: 9)
!612 = !DILocation(line: 343, column: 16, scope: !611)
!613 = !DILocation(line: 343, column: 24, scope: !611)
!614 = !DILocation(line: 343, column: 32, scope: !611)
!615 = !DILocation(line: 343, column: 35, scope: !611)
!616 = !DILocation(line: 343, column: 41, scope: !611)
!617 = !DILocation(line: 343, column: 50, scope: !611)
!618 = !DILocation(line: 343, column: 56, scope: !611)
!619 = !DILocation(line: 344, column: 3, scope: !611)
!620 = !DILocation(line: 344, column: 6, scope: !611)
!621 = !DILocation(line: 344, column: 13, scope: !611)
!622 = !DILocation(line: 344, column: 29, scope: !611)
!623 = !DILocation(line: 344, column: 32, scope: !611)
!624 = !DILocation(line: 344, column: 38, scope: !611)
!625 = !DILocation(line: 343, column: 9, scope: !570)
!626 = !DILocation(line: 345, column: 9, scope: !627)
!627 = distinct !DILexicalBlock(scope: !611, file: !3, line: 344, column: 52)
!628 = !DILocation(line: 347, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !570, file: !3, line: 347, column: 9)
!630 = !DILocation(line: 347, column: 15, scope: !629)
!631 = !DILocation(line: 347, column: 25, scope: !629)
!632 = !DILocation(line: 347, column: 9, scope: !570)
!633 = !DILocation(line: 347, column: 31, scope: !629)
!634 = !DILocation(line: 349, column: 15, scope: !570)
!635 = !DILocation(line: 349, column: 5, scope: !570)
!636 = !DILocation(line: 349, column: 8, scope: !570)
!637 = !DILocation(line: 349, column: 13, scope: !570)
!638 = !DILocation(line: 350, column: 17, scope: !570)
!639 = !DILocation(line: 350, column: 20, scope: !570)
!640 = !DILocation(line: 350, column: 15, scope: !570)
!641 = !DILocation(line: 351, column: 21, scope: !570)
!642 = !DILocation(line: 351, column: 5, scope: !570)
!643 = !DILocation(line: 351, column: 8, scope: !570)
!644 = !DILocation(line: 351, column: 19, scope: !570)
!645 = !DILocation(line: 354, column: 9, scope: !580)
!646 = !DILocation(line: 354, column: 12, scope: !580)
!647 = !DILocation(line: 354, column: 19, scope: !580)
!648 = !DILocation(line: 354, column: 9, scope: !570)
!649 = !DILocation(line: 356, column: 9, scope: !579)
!650 = !DILocation(line: 356, column: 14, scope: !579)
!651 = !DILocation(line: 356, column: 39, scope: !579)
!652 = !DILocation(line: 356, column: 42, scope: !579)
!653 = !DILocation(line: 356, column: 48, scope: !579)
!654 = !DILocation(line: 356, column: 51, scope: !579)
!655 = !DILocation(line: 356, column: 35, scope: !579)
!656 = !DILocation(line: 356, column: 57, scope: !579)
!657 = !DILocation(line: 357, column: 9, scope: !579)
!658 = !DILocation(line: 357, column: 14, scope: !579)
!659 = !DILocation(line: 357, column: 29, scope: !579)
!660 = !DILocation(line: 357, column: 32, scope: !579)
!661 = !DILocation(line: 357, column: 37, scope: !579)
!662 = !DILocation(line: 357, column: 41, scope: !579)
!663 = !DILocation(line: 359, column: 13, scope: !664)
!664 = distinct !DILexicalBlock(scope: !579, file: !3, line: 359, column: 13)
!665 = !DILocation(line: 359, column: 25, scope: !664)
!666 = !DILocation(line: 359, column: 13, scope: !579)
!667 = !DILocation(line: 359, column: 42, scope: !664)
!668 = !DILocation(line: 359, column: 30, scope: !664)
!669 = !DILocation(line: 360, column: 20, scope: !579)
!670 = !DILocation(line: 360, column: 32, scope: !579)
!671 = !DILocation(line: 360, column: 16, scope: !579)
!672 = !DILocation(line: 361, column: 6, scope: !673)
!673 = distinct !DILexicalBlock(scope: !579, file: !3, line: 361, column: 6)
!674 = !DILocation(line: 361, column: 9, scope: !673)
!675 = !DILocation(line: 361, column: 18, scope: !673)
!676 = !DILocation(line: 361, column: 6, scope: !579)
!677 = !DILocation(line: 361, column: 31, scope: !673)
!678 = !DILocation(line: 361, column: 24, scope: !673)
!679 = !DILocation(line: 362, column: 25, scope: !579)
!680 = !DILocation(line: 362, column: 32, scope: !579)
!681 = !DILocation(line: 362, column: 22, scope: !579)
!682 = !DILocation(line: 362, column: 16, scope: !579)
!683 = !DILocation(line: 364, column: 9, scope: !579)
!684 = !DILocation(line: 364, column: 12, scope: !579)
!685 = !DILocation(line: 364, column: 19, scope: !579)
!686 = !DILocation(line: 365, column: 21, scope: !579)
!687 = !DILocation(line: 365, column: 24, scope: !579)
!688 = !DILocation(line: 365, column: 9, scope: !579)
!689 = !DILocation(line: 368, column: 6, scope: !690)
!690 = distinct !DILexicalBlock(scope: !579, file: !3, line: 368, column: 6)
!691 = !DILocation(line: 368, column: 9, scope: !690)
!692 = !DILocation(line: 368, column: 18, scope: !690)
!693 = !DILocation(line: 368, column: 6, scope: !579)
!694 = !DILocation(line: 369, column: 18, scope: !695)
!695 = distinct !DILexicalBlock(scope: !690, file: !3, line: 368, column: 24)
!696 = !DILocation(line: 369, column: 28, scope: !695)
!697 = !DILocation(line: 369, column: 34, scope: !695)
!698 = !DILocation(line: 369, column: 40, scope: !695)
!699 = !DILocation(line: 369, column: 21, scope: !695)
!700 = !DILocation(line: 369, column: 6, scope: !695)
!701 = !DILocation(line: 370, column: 18, scope: !695)
!702 = !DILocation(line: 370, column: 28, scope: !695)
!703 = !DILocation(line: 370, column: 34, scope: !695)
!704 = !DILocation(line: 370, column: 40, scope: !695)
!705 = !DILocation(line: 370, column: 21, scope: !695)
!706 = !DILocation(line: 370, column: 6, scope: !695)
!707 = !DILocation(line: 371, column: 2, scope: !695)
!708 = !DILocation(line: 372, column: 2, scope: !579)
!709 = !DILocation(line: 372, column: 8, scope: !579)
!710 = !DILocation(line: 372, column: 14, scope: !579)
!711 = !DILocation(line: 373, column: 5, scope: !580)
!712 = !DILocation(line: 373, column: 5, scope: !579)
!713 = !DILocation(line: 376, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !570, file: !3, line: 376, column: 9)
!715 = !DILocation(line: 376, column: 12, scope: !714)
!716 = !DILocation(line: 376, column: 20, scope: !714)
!717 = !DILocation(line: 376, column: 9, scope: !570)
!718 = !DILocation(line: 377, column: 23, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !3, line: 376, column: 26)
!720 = !DILocation(line: 377, column: 9, scope: !719)
!721 = !DILocation(line: 378, column: 13, scope: !722)
!722 = distinct !DILexicalBlock(scope: !719, file: !3, line: 378, column: 13)
!723 = !DILocation(line: 378, column: 19, scope: !722)
!724 = !DILocation(line: 378, column: 29, scope: !722)
!725 = !DILocation(line: 378, column: 13, scope: !719)
!726 = !DILocation(line: 385, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !722, file: !3, line: 378, column: 35)
!728 = !DILocation(line: 385, column: 9, scope: !727)
!729 = !DILocation(line: 385, column: 20, scope: !727)
!730 = !DILocation(line: 386, column: 6, scope: !727)
!731 = !DILocation(line: 393, column: 5, scope: !719)
!732 = !DILocation(line: 393, column: 16, scope: !733)
!733 = distinct !DILexicalBlock(scope: !714, file: !3, line: 393, column: 16)
!734 = !DILocation(line: 393, column: 22, scope: !733)
!735 = !DILocation(line: 393, column: 31, scope: !733)
!736 = !DILocation(line: 393, column: 36, scope: !733)
!737 = !DILocation(line: 393, column: 39, scope: !733)
!738 = !DILocation(line: 393, column: 48, scope: !733)
!739 = !DILocation(line: 393, column: 45, scope: !733)
!740 = !DILocation(line: 393, column: 58, scope: !733)
!741 = !DILocation(line: 394, column: 9, scope: !733)
!742 = !DILocation(line: 394, column: 15, scope: !733)
!743 = !DILocation(line: 393, column: 16, scope: !714)
!744 = !DILocation(line: 395, column: 9, scope: !745)
!745 = distinct !DILexicalBlock(scope: !733, file: !3, line: 394, column: 28)
!746 = !DILocation(line: 399, column: 9, scope: !747)
!747 = distinct !DILexicalBlock(scope: !570, file: !3, line: 399, column: 9)
!748 = !DILocation(line: 399, column: 12, scope: !747)
!749 = !DILocation(line: 399, column: 19, scope: !747)
!750 = !DILocation(line: 399, column: 35, scope: !747)
!751 = !DILocation(line: 399, column: 38, scope: !747)
!752 = !DILocation(line: 399, column: 44, scope: !747)
!753 = !DILocation(line: 399, column: 53, scope: !747)
!754 = !DILocation(line: 399, column: 9, scope: !570)
!755 = !DILocation(line: 400, column: 9, scope: !756)
!756 = distinct !DILexicalBlock(scope: !747, file: !3, line: 399, column: 59)
!757 = !DILocation(line: 405, column: 9, scope: !584)
!758 = !DILocation(line: 405, column: 15, scope: !584)
!759 = !DILocation(line: 405, column: 24, scope: !584)
!760 = !DILocation(line: 405, column: 29, scope: !584)
!761 = !DILocation(line: 405, column: 32, scope: !584)
!762 = !DILocation(line: 405, column: 35, scope: !584)
!763 = !DILocation(line: 405, column: 45, scope: !584)
!764 = !DILocation(line: 405, column: 50, scope: !584)
!765 = !DILocation(line: 406, column: 10, scope: !584)
!766 = !DILocation(line: 406, column: 16, scope: !584)
!767 = !DILocation(line: 406, column: 30, scope: !584)
!768 = !DILocation(line: 406, column: 33, scope: !584)
!769 = !DILocation(line: 406, column: 36, scope: !584)
!770 = !DILocation(line: 406, column: 43, scope: !584)
!771 = !DILocation(line: 405, column: 9, scope: !570)
!772 = !DILocation(line: 407, column: 9, scope: !583)
!773 = !DILocation(line: 407, column: 21, scope: !583)
!774 = !DILocation(line: 410, column: 27, scope: !583)
!775 = !DILocation(line: 410, column: 30, scope: !583)
!776 = !DILocation(line: 410, column: 7, scope: !583)
!777 = !DILocation(line: 410, column: 37, scope: !583)
!778 = !DILocation(line: 410, column: 44, scope: !583)
!779 = !DILocation(line: 410, column: 47, scope: !583)
!780 = !DILocation(line: 410, column: 4, scope: !583)
!781 = !DILocation(line: 409, column: 9, scope: !583)
!782 = !DILocation(line: 412, column: 13, scope: !783)
!783 = distinct !DILexicalBlock(scope: !583, file: !3, line: 412, column: 13)
!784 = !DILocation(line: 412, column: 20, scope: !783)
!785 = !DILocation(line: 412, column: 38, scope: !783)
!786 = !DILocation(line: 412, column: 41, scope: !783)
!787 = !DILocation(line: 412, column: 48, scope: !783)
!788 = !DILocation(line: 412, column: 13, scope: !583)
!789 = !DILocation(line: 413, column: 13, scope: !790)
!790 = distinct !DILexicalBlock(scope: !783, file: !3, line: 412, column: 64)
!791 = !DILocation(line: 413, column: 16, scope: !790)
!792 = !DILocation(line: 413, column: 23, scope: !790)
!793 = !DILocation(line: 414, column: 9, scope: !790)
!794 = !DILocation(line: 415, column: 13, scope: !795)
!795 = distinct !DILexicalBlock(scope: !583, file: !3, line: 415, column: 13)
!796 = !DILocation(line: 415, column: 20, scope: !795)
!797 = !DILocation(line: 415, column: 33, scope: !795)
!798 = !DILocation(line: 415, column: 36, scope: !795)
!799 = !DILocation(line: 415, column: 43, scope: !795)
!800 = !DILocation(line: 415, column: 13, scope: !583)
!801 = !DILocation(line: 416, column: 10, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 416, column: 10)
!803 = distinct !DILexicalBlock(scope: !795, file: !3, line: 415, column: 62)
!804 = !DILocation(line: 416, column: 16, scope: !802)
!805 = !DILocation(line: 416, column: 26, scope: !802)
!806 = !DILocation(line: 416, column: 10, scope: !803)
!807 = !DILocation(line: 417, column: 10, scope: !808)
!808 = distinct !DILexicalBlock(scope: !802, file: !3, line: 416, column: 32)
!809 = !DILocation(line: 417, column: 13, scope: !808)
!810 = !DILocation(line: 417, column: 24, scope: !808)
!811 = !DILocation(line: 418, column: 6, scope: !808)
!812 = !DILocation(line: 419, column: 6, scope: !803)
!813 = !DILocation(line: 428, column: 13, scope: !814)
!814 = distinct !DILexicalBlock(scope: !583, file: !3, line: 428, column: 13)
!815 = !DILocation(line: 428, column: 20, scope: !814)
!816 = !DILocation(line: 428, column: 13, scope: !583)
!817 = !DILocation(line: 429, column: 17, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 429, column: 17)
!819 = distinct !DILexicalBlock(scope: !814, file: !3, line: 428, column: 35)
!820 = !DILocation(line: 429, column: 23, scope: !818)
!821 = !DILocation(line: 429, column: 17, scope: !819)
!822 = !DILocation(line: 430, column: 31, scope: !823)
!823 = distinct !DILexicalBlock(scope: !818, file: !3, line: 429, column: 43)
!824 = !DILocation(line: 430, column: 17, scope: !823)
!825 = !DILocation(line: 431, column: 6, scope: !823)
!826 = !DILocation(line: 431, column: 17, scope: !827)
!827 = distinct !DILexicalBlock(scope: !818, file: !3, line: 431, column: 17)
!828 = !DILocation(line: 431, column: 23, scope: !827)
!829 = !DILocation(line: 431, column: 17, scope: !818)
!830 = !DILocation(line: 434, column: 28, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !3, line: 431, column: 42)
!832 = !DILocation(line: 434, column: 3, scope: !831)
!833 = !DILocation(line: 435, column: 13, scope: !831)
!834 = !DILocation(line: 436, column: 38, scope: !835)
!835 = distinct !DILexicalBlock(scope: !827, file: !3, line: 435, column: 20)
!836 = !DILocation(line: 436, column: 17, scope: !835)
!837 = !DILocation(line: 440, column: 21, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !3, line: 440, column: 21)
!839 = !DILocation(line: 440, column: 27, scope: !838)
!840 = !DILocation(line: 440, column: 21, scope: !835)
!841 = !DILocation(line: 441, column: 21, scope: !842)
!842 = distinct !DILexicalBlock(scope: !838, file: !3, line: 440, column: 44)
!843 = !DILocation(line: 442, column: 17, scope: !842)
!844 = !DILocation(line: 444, column: 27, scope: !819)
!845 = !DILocation(line: 444, column: 13, scope: !819)
!846 = !DILocation(line: 445, column: 10, scope: !847)
!847 = distinct !DILexicalBlock(scope: !819, file: !3, line: 445, column: 10)
!848 = !DILocation(line: 445, column: 16, scope: !847)
!849 = !DILocation(line: 445, column: 26, scope: !847)
!850 = !DILocation(line: 445, column: 10, scope: !819)
!851 = !DILocation(line: 446, column: 8, scope: !852)
!852 = distinct !DILexicalBlock(scope: !847, file: !3, line: 445, column: 32)
!853 = !DILocation(line: 446, column: 11, scope: !852)
!854 = !DILocation(line: 446, column: 22, scope: !852)
!855 = !DILocation(line: 447, column: 8, scope: !852)
!856 = !DILocation(line: 449, column: 9, scope: !819)
!857 = !DILocation(line: 450, column: 5, scope: !584)
!858 = !DILocation(line: 450, column: 5, scope: !583)
!859 = !DILocation(line: 453, column: 9, scope: !860)
!860 = distinct !DILexicalBlock(scope: !570, file: !3, line: 453, column: 9)
!861 = !DILocation(line: 453, column: 15, scope: !860)
!862 = !DILocation(line: 453, column: 9, scope: !570)
!863 = !DILocation(line: 453, column: 28, scope: !860)
!864 = !DILocation(line: 455, column: 10, scope: !865)
!865 = distinct !DILexicalBlock(scope: !570, file: !3, line: 455, column: 9)
!866 = !DILocation(line: 455, column: 13, scope: !865)
!867 = !DILocation(line: 455, column: 9, scope: !570)
!868 = !DILocation(line: 457, column: 14, scope: !869)
!869 = distinct !DILexicalBlock(scope: !865, file: !3, line: 455, column: 23)
!870 = !DILocation(line: 457, column: 24, scope: !869)
!871 = !DILocation(line: 457, column: 30, scope: !869)
!872 = !DILocation(line: 457, column: 36, scope: !869)
!873 = !DILocation(line: 457, column: 17, scope: !869)
!874 = !DILocation(line: 457, column: 2, scope: !869)
!875 = !DILocation(line: 458, column: 14, scope: !869)
!876 = !DILocation(line: 458, column: 24, scope: !869)
!877 = !DILocation(line: 458, column: 30, scope: !869)
!878 = !DILocation(line: 458, column: 36, scope: !869)
!879 = !DILocation(line: 458, column: 17, scope: !869)
!880 = !DILocation(line: 458, column: 2, scope: !869)
!881 = !DILocation(line: 459, column: 5, scope: !869)
!882 = !DILocation(line: 460, column: 19, scope: !570)
!883 = !DILocation(line: 460, column: 5, scope: !570)
!884 = !DILocation(line: 464, column: 10, scope: !885)
!885 = distinct !DILexicalBlock(scope: !570, file: !3, line: 464, column: 9)
!886 = !DILocation(line: 464, column: 13, scope: !885)
!887 = !DILocation(line: 464, column: 9, scope: !570)
!888 = !DILocation(line: 465, column: 2, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !3, line: 464, column: 23)
!890 = !DILocation(line: 465, column: 5, scope: !889)
!891 = !DILocation(line: 465, column: 14, scope: !889)
!892 = !DILocation(line: 466, column: 5, scope: !889)
!893 = !DILocation(line: 467, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !570, file: !3, line: 467, column: 9)
!895 = !DILocation(line: 467, column: 12, scope: !894)
!896 = !DILocation(line: 467, column: 20, scope: !894)
!897 = !DILocation(line: 467, column: 9, scope: !570)
!898 = !DILocation(line: 469, column: 2, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !3, line: 467, column: 26)
!900 = !DILocation(line: 471, column: 5, scope: !570)
!901 = !DILocation(line: 472, column: 1, scope: !570)
!902 = distinct !DISubprogram(name: "putShortMSB", scope: !3, file: !3, line: 319, type: !903, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !164, !67}
!905 = !{!906, !907}
!906 = !DILocalVariable(name: "s", arg: 1, scope: !902, file: !3, line: 320, type: !164)
!907 = !DILocalVariable(name: "b", arg: 2, scope: !902, file: !3, line: 321, type: !67)
!908 = !DILocation(line: 320, column: 17, scope: !902)
!909 = !DILocation(line: 321, column: 7, scope: !902)
!910 = !DILocation(line: 324, column: 5, scope: !911)
!911 = distinct !DILexicalBlock(scope: !902, file: !3, line: 324, column: 5)
!912 = !DILocation(line: 325, column: 5, scope: !913)
!913 = distinct !DILexicalBlock(scope: !902, file: !3, line: 325, column: 5)
!914 = !DILocation(line: 326, column: 1, scope: !902)
!915 = distinct !DISubprogram(name: "flush_pending", scope: !6, file: !6, line: 419, type: !916, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !918)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !24}
!918 = !{!919, !920, !921}
!919 = !DILocalVariable(name: "strm", arg: 1, scope: !915, file: !6, line: 420, type: !24)
!920 = !DILocalVariable(name: "len", scope: !915, file: !6, line: 423, type: !7)
!921 = !DILocalVariable(name: "s", scope: !915, file: !6, line: 424, type: !164)
!922 = !DILocation(line: 420, column: 12, scope: !915)
!923 = !DILocation(line: 423, column: 5, scope: !915)
!924 = !DILocation(line: 423, column: 14, scope: !915)
!925 = !DILocation(line: 424, column: 5, scope: !915)
!926 = !DILocation(line: 424, column: 20, scope: !915)
!927 = !DILocation(line: 424, column: 42, scope: !915)
!928 = !DILocation(line: 424, column: 48, scope: !915)
!929 = !DILocation(line: 426, column: 14, scope: !915)
!930 = !DILocation(line: 426, column: 5, scope: !915)
!931 = !DILocation(line: 427, column: 11, scope: !915)
!932 = !DILocation(line: 427, column: 14, scope: !915)
!933 = !DILocation(line: 427, column: 9, scope: !915)
!934 = !DILocation(line: 428, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !915, file: !6, line: 428, column: 9)
!936 = !DILocation(line: 428, column: 15, scope: !935)
!937 = !DILocation(line: 428, column: 21, scope: !935)
!938 = !DILocation(line: 428, column: 13, scope: !935)
!939 = !DILocation(line: 428, column: 9, scope: !915)
!940 = !DILocation(line: 428, column: 38, scope: !935)
!941 = !DILocation(line: 428, column: 44, scope: !935)
!942 = !DILocation(line: 428, column: 36, scope: !935)
!943 = !DILocation(line: 428, column: 32, scope: !935)
!944 = !DILocation(line: 429, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !915, file: !6, line: 429, column: 9)
!946 = !DILocation(line: 429, column: 13, scope: !945)
!947 = !DILocation(line: 429, column: 9, scope: !915)
!948 = !DILocation(line: 429, column: 19, scope: !945)
!949 = !DILocation(line: 431, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !915, file: !6, line: 431, column: 9)
!951 = !DILocation(line: 431, column: 15, scope: !950)
!952 = !DILocation(line: 431, column: 24, scope: !950)
!953 = !DILocation(line: 431, column: 9, scope: !915)
!954 = !DILocation(line: 432, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !950, file: !6, line: 431, column: 33)
!956 = !DILocation(line: 432, column: 15, scope: !955)
!957 = !DILocation(line: 432, column: 25, scope: !955)
!958 = !DILocation(line: 432, column: 28, scope: !955)
!959 = !DILocation(line: 432, column: 41, scope: !955)
!960 = !DILocation(line: 432, column: 2, scope: !955)
!961 = !DILocation(line: 433, column: 20, scope: !955)
!962 = !DILocation(line: 433, column: 2, scope: !955)
!963 = !DILocation(line: 433, column: 8, scope: !955)
!964 = !DILocation(line: 433, column: 17, scope: !955)
!965 = !DILocation(line: 434, column: 5, scope: !955)
!966 = !DILocation(line: 435, column: 23, scope: !915)
!967 = !DILocation(line: 435, column: 5, scope: !915)
!968 = !DILocation(line: 435, column: 8, scope: !915)
!969 = !DILocation(line: 435, column: 20, scope: !915)
!970 = !DILocation(line: 436, column: 24, scope: !915)
!971 = !DILocation(line: 436, column: 5, scope: !915)
!972 = !DILocation(line: 436, column: 11, scope: !915)
!973 = !DILocation(line: 436, column: 21, scope: !915)
!974 = !DILocation(line: 437, column: 25, scope: !915)
!975 = !DILocation(line: 437, column: 5, scope: !915)
!976 = !DILocation(line: 437, column: 11, scope: !915)
!977 = !DILocation(line: 437, column: 22, scope: !915)
!978 = !DILocation(line: 438, column: 19, scope: !915)
!979 = !DILocation(line: 438, column: 5, scope: !915)
!980 = !DILocation(line: 438, column: 8, scope: !915)
!981 = !DILocation(line: 438, column: 16, scope: !915)
!982 = !DILocation(line: 439, column: 9, scope: !983)
!983 = distinct !DILexicalBlock(scope: !915, file: !6, line: 439, column: 9)
!984 = !DILocation(line: 439, column: 12, scope: !983)
!985 = !DILocation(line: 439, column: 20, scope: !983)
!986 = !DILocation(line: 439, column: 9, scope: !915)
!987 = !DILocation(line: 440, column: 26, scope: !988)
!988 = distinct !DILexicalBlock(scope: !983, file: !6, line: 439, column: 26)
!989 = !DILocation(line: 440, column: 29, scope: !988)
!990 = !DILocation(line: 440, column: 9, scope: !988)
!991 = !DILocation(line: 440, column: 12, scope: !988)
!992 = !DILocation(line: 440, column: 24, scope: !988)
!993 = !DILocation(line: 441, column: 5, scope: !988)
!994 = !DILocation(line: 442, column: 1, scope: !915)
!995 = !DISubprogram(name: "zlib_tr_align", scope: !6, file: !6, line: 278, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DISubprogram(name: "zlib_tr_stored_type_only", scope: !6, file: !6, line: 281, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DISubprogram(name: "zlib_tr_stored_block", scope: !6, file: !6, line: 279, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !164, !45, !58, !52}
!1000 = distinct !DISubprogram(name: "zlib_deflateEnd", scope: !3, file: !3, line: 475, type: !436, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DILocalVariable(name: "strm", arg: 1, scope: !1000, file: !3, line: 476, type: !24)
!1003 = !DILocalVariable(name: "status", scope: !1000, file: !3, line: 479, type: !52)
!1004 = !DILocalVariable(name: "s", scope: !1000, file: !3, line: 480, type: !164)
!1005 = !DILocation(line: 476, column: 12, scope: !1000)
!1006 = !DILocation(line: 479, column: 5, scope: !1000)
!1007 = !DILocation(line: 479, column: 9, scope: !1000)
!1008 = !DILocation(line: 480, column: 5, scope: !1000)
!1009 = !DILocation(line: 480, column: 20, scope: !1000)
!1010 = !DILocation(line: 482, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 482, column: 9)
!1012 = !DILocation(line: 482, column: 14, scope: !1011)
!1013 = !DILocation(line: 482, column: 22, scope: !1011)
!1014 = !DILocation(line: 482, column: 25, scope: !1011)
!1015 = !DILocation(line: 482, column: 31, scope: !1011)
!1016 = !DILocation(line: 482, column: 37, scope: !1011)
!1017 = !DILocation(line: 482, column: 9, scope: !1000)
!1018 = !DILocation(line: 482, column: 46, scope: !1011)
!1019 = !DILocation(line: 483, column: 27, scope: !1000)
!1020 = !DILocation(line: 483, column: 33, scope: !1000)
!1021 = !DILocation(line: 483, column: 7, scope: !1000)
!1022 = !DILocation(line: 485, column: 14, scope: !1000)
!1023 = !DILocation(line: 485, column: 17, scope: !1000)
!1024 = !DILocation(line: 485, column: 12, scope: !1000)
!1025 = !DILocation(line: 486, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 486, column: 9)
!1027 = !DILocation(line: 486, column: 16, scope: !1026)
!1028 = !DILocation(line: 486, column: 30, scope: !1026)
!1029 = !DILocation(line: 486, column: 33, scope: !1026)
!1030 = !DILocation(line: 486, column: 40, scope: !1026)
!1031 = !DILocation(line: 486, column: 54, scope: !1026)
!1032 = !DILocation(line: 487, column: 2, scope: !1026)
!1033 = !DILocation(line: 487, column: 9, scope: !1026)
!1034 = !DILocation(line: 486, column: 9, scope: !1000)
!1035 = !DILocation(line: 488, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 487, column: 26)
!1037 = !DILocation(line: 491, column: 5, scope: !1000)
!1038 = !DILocation(line: 491, column: 11, scope: !1000)
!1039 = !DILocation(line: 491, column: 17, scope: !1000)
!1040 = !DILocation(line: 493, column: 12, scope: !1000)
!1041 = !DILocation(line: 493, column: 19, scope: !1000)
!1042 = !DILocation(line: 493, column: 5, scope: !1000)
!1043 = !DILocation(line: 494, column: 1, scope: !1000)
!1044 = distinct !DISubprogram(name: "zlib_deflate_workspacesize", scope: !3, file: !3, line: 1134, type: !1045, scopeLine: 1135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1047)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!52, !52, !52}
!1047 = !{!1048, !1049}
!1048 = !DILocalVariable(name: "windowBits", arg: 1, scope: !1044, file: !3, line: 1134, type: !52)
!1049 = !DILocalVariable(name: "memLevel", arg: 2, scope: !1044, file: !3, line: 1134, type: !52)
!1050 = !DILocation(line: 1134, column: 36, scope: !1044)
!1051 = !DILocation(line: 1134, column: 52, scope: !1044)
!1052 = !DILocation(line: 1136, column: 9, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 1136, column: 9)
!1054 = !DILocation(line: 1136, column: 20, scope: !1053)
!1055 = !DILocation(line: 1136, column: 9, scope: !1044)
!1056 = !DILocation(line: 1137, column: 23, scope: !1053)
!1057 = !DILocation(line: 1137, column: 22, scope: !1053)
!1058 = !DILocation(line: 1137, column: 20, scope: !1053)
!1059 = !DILocation(line: 1137, column: 9, scope: !1053)
!1060 = !DILocation(line: 1140, column: 5, scope: !1044)
!1061 = !DILocation(line: 1140, column: 5, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 1140, column: 5)
!1063 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 1140, column: 5)
!1064 = !DILocation(line: 1140, column: 5, scope: !1063)
!1065 = !DILocation(line: 1140, column: 5, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 1140, column: 5)
!1067 = !DILocation(line: 1140, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 1140, column: 5)
!1069 = !DILocation(line: 1140, column: 5, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 1140, column: 5)
!1071 = !{i64 2152346182, i64 2152346211, i64 2152346257, i64 2152346315, i64 2152346369, i64 2152346423, i64 2152346478, i64 2152346509}
!1072 = !DILocation(line: 1144, column: 11, scope: !1044)
!1073 = !DILocation(line: 1144, column: 9, scope: !1044)
!1074 = !DILocation(line: 1145, column: 11, scope: !1044)
!1075 = !DILocation(line: 1145, column: 9, scope: !1044)
!1076 = !DILocation(line: 1146, column: 11, scope: !1044)
!1077 = !DILocation(line: 1146, column: 9, scope: !1044)
!1078 = !DILocation(line: 1147, column: 11, scope: !1044)
!1079 = !DILocation(line: 1147, column: 9, scope: !1044)
!1080 = !DILocation(line: 1143, column: 12, scope: !1044)
!1081 = !DILocation(line: 1143, column: 5, scope: !1044)
!1082 = distinct !DISubprogram(name: "zlib_deflate_dfltcc_enabled", scope: !3, file: !3, line: 1150, type: !1083, scopeLine: 1151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!52}
!1085 = !DILocation(line: 1152, column: 2, scope: !1082)
!1086 = distinct !DISubprogram(name: "bi_flush", scope: !6, file: !6, line: 314, type: !507, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1087)
!1087 = !{!1088}
!1088 = !DILocalVariable(name: "s", arg: 1, scope: !1086, file: !6, line: 314, type: !164)
!1089 = !DILocation(line: 314, column: 44, scope: !1086)
!1090 = !DILocation(line: 316, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !6, line: 316, column: 9)
!1092 = !DILocation(line: 316, column: 12, scope: !1091)
!1093 = !DILocation(line: 316, column: 21, scope: !1091)
!1094 = !DILocation(line: 316, column: 9, scope: !1086)
!1095 = !DILocation(line: 317, column: 9, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !6, line: 317, column: 9)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !6, line: 317, column: 9)
!1098 = distinct !DILexicalBlock(scope: !1091, file: !6, line: 316, column: 28)
!1099 = !DILocation(line: 317, column: 9, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !6, line: 317, column: 9)
!1101 = !DILocation(line: 318, column: 9, scope: !1098)
!1102 = !DILocation(line: 318, column: 12, scope: !1098)
!1103 = !DILocation(line: 318, column: 19, scope: !1098)
!1104 = !DILocation(line: 319, column: 9, scope: !1098)
!1105 = !DILocation(line: 319, column: 12, scope: !1098)
!1106 = !DILocation(line: 319, column: 21, scope: !1098)
!1107 = !DILocation(line: 320, column: 5, scope: !1098)
!1108 = !DILocation(line: 320, column: 16, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1091, file: !6, line: 320, column: 16)
!1110 = !DILocation(line: 320, column: 19, scope: !1109)
!1111 = !DILocation(line: 320, column: 28, scope: !1109)
!1112 = !DILocation(line: 320, column: 16, scope: !1091)
!1113 = !DILocation(line: 321, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !6, line: 321, column: 9)
!1115 = distinct !DILexicalBlock(scope: !1109, file: !6, line: 320, column: 34)
!1116 = !DILocation(line: 322, column: 9, scope: !1115)
!1117 = !DILocation(line: 322, column: 12, scope: !1115)
!1118 = !DILocation(line: 322, column: 19, scope: !1115)
!1119 = !DILocation(line: 323, column: 9, scope: !1115)
!1120 = !DILocation(line: 323, column: 12, scope: !1115)
!1121 = !DILocation(line: 323, column: 21, scope: !1115)
!1122 = !DILocation(line: 324, column: 5, scope: !1115)
!1123 = !DILocation(line: 325, column: 1, scope: !1086)
!1124 = distinct !DISubprogram(name: "deflate_stored", scope: !3, file: !3, line: 864, type: !183, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1125)
!1125 = !{!1126, !1127, !1128, !1129}
!1126 = !DILocalVariable(name: "s", arg: 1, scope: !1124, file: !3, line: 865, type: !164)
!1127 = !DILocalVariable(name: "flush", arg: 2, scope: !1124, file: !3, line: 866, type: !52)
!1128 = !DILocalVariable(name: "max_block_size", scope: !1124, file: !3, line: 872, type: !58)
!1129 = !DILocalVariable(name: "max_start", scope: !1124, file: !3, line: 873, type: !58)
!1130 = !DILocation(line: 865, column: 17, scope: !1124)
!1131 = !DILocation(line: 866, column: 6, scope: !1124)
!1132 = !DILocation(line: 872, column: 5, scope: !1124)
!1133 = !DILocation(line: 872, column: 9, scope: !1124)
!1134 = !DILocation(line: 873, column: 5, scope: !1124)
!1135 = !DILocation(line: 873, column: 9, scope: !1124)
!1136 = !DILocation(line: 875, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 875, column: 9)
!1138 = !DILocation(line: 875, column: 26, scope: !1137)
!1139 = !DILocation(line: 875, column: 29, scope: !1137)
!1140 = !DILocation(line: 875, column: 46, scope: !1137)
!1141 = !DILocation(line: 875, column: 24, scope: !1137)
!1142 = !DILocation(line: 875, column: 9, scope: !1124)
!1143 = !DILocation(line: 876, column: 26, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 875, column: 51)
!1145 = !DILocation(line: 876, column: 29, scope: !1144)
!1146 = !DILocation(line: 876, column: 46, scope: !1144)
!1147 = !DILocation(line: 876, column: 24, scope: !1144)
!1148 = !DILocation(line: 877, column: 5, scope: !1144)
!1149 = !DILocation(line: 880, column: 5, scope: !1124)
!1150 = !DILocation(line: 882, column: 13, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 882, column: 13)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 880, column: 14)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 880, column: 5)
!1154 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 880, column: 5)
!1155 = !DILocation(line: 882, column: 16, scope: !1151)
!1156 = !DILocation(line: 882, column: 26, scope: !1151)
!1157 = !DILocation(line: 882, column: 13, scope: !1152)
!1158 = !DILocation(line: 887, column: 25, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 882, column: 32)
!1160 = !DILocation(line: 887, column: 13, scope: !1159)
!1161 = !DILocation(line: 888, column: 17, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 888, column: 17)
!1163 = !DILocation(line: 888, column: 20, scope: !1162)
!1164 = !DILocation(line: 888, column: 30, scope: !1162)
!1165 = !DILocation(line: 888, column: 35, scope: !1162)
!1166 = !DILocation(line: 888, column: 38, scope: !1162)
!1167 = !DILocation(line: 888, column: 44, scope: !1162)
!1168 = !DILocation(line: 888, column: 17, scope: !1159)
!1169 = !DILocation(line: 888, column: 59, scope: !1162)
!1170 = !DILocation(line: 890, column: 17, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 890, column: 17)
!1172 = !DILocation(line: 890, column: 20, scope: !1171)
!1173 = !DILocation(line: 890, column: 30, scope: !1171)
!1174 = !DILocation(line: 890, column: 17, scope: !1159)
!1175 = !DILocation(line: 890, column: 36, scope: !1171)
!1176 = !DILocation(line: 891, column: 9, scope: !1159)
!1177 = !DILocation(line: 894, column: 17, scope: !1152)
!1178 = !DILocation(line: 894, column: 20, scope: !1152)
!1179 = !DILocation(line: 894, column: 2, scope: !1152)
!1180 = !DILocation(line: 894, column: 5, scope: !1152)
!1181 = !DILocation(line: 894, column: 14, scope: !1152)
!1182 = !DILocation(line: 895, column: 2, scope: !1152)
!1183 = !DILocation(line: 895, column: 5, scope: !1152)
!1184 = !DILocation(line: 895, column: 15, scope: !1152)
!1185 = !DILocation(line: 898, column: 15, scope: !1152)
!1186 = !DILocation(line: 898, column: 18, scope: !1152)
!1187 = !DILocation(line: 898, column: 32, scope: !1152)
!1188 = !DILocation(line: 898, column: 30, scope: !1152)
!1189 = !DILocation(line: 898, column: 13, scope: !1152)
!1190 = !DILocation(line: 899, column: 13, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 899, column: 13)
!1192 = !DILocation(line: 899, column: 16, scope: !1191)
!1193 = !DILocation(line: 899, column: 25, scope: !1191)
!1194 = !DILocation(line: 899, column: 30, scope: !1191)
!1195 = !DILocation(line: 899, column: 38, scope: !1191)
!1196 = !DILocation(line: 899, column: 41, scope: !1191)
!1197 = !DILocation(line: 899, column: 33, scope: !1191)
!1198 = !DILocation(line: 899, column: 53, scope: !1191)
!1199 = !DILocation(line: 899, column: 50, scope: !1191)
!1200 = !DILocation(line: 899, column: 13, scope: !1152)
!1201 = !DILocation(line: 901, column: 28, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 899, column: 64)
!1203 = !DILocation(line: 901, column: 31, scope: !1202)
!1204 = !DILocation(line: 901, column: 42, scope: !1202)
!1205 = !DILocation(line: 901, column: 40, scope: !1202)
!1206 = !DILocation(line: 901, column: 21, scope: !1202)
!1207 = !DILocation(line: 901, column: 6, scope: !1202)
!1208 = !DILocation(line: 901, column: 9, scope: !1202)
!1209 = !DILocation(line: 901, column: 19, scope: !1202)
!1210 = !DILocation(line: 902, column: 26, scope: !1202)
!1211 = !DILocation(line: 902, column: 20, scope: !1202)
!1212 = !DILocation(line: 902, column: 6, scope: !1202)
!1213 = !DILocation(line: 902, column: 9, scope: !1202)
!1214 = !DILocation(line: 902, column: 18, scope: !1202)
!1215 = !DILocation(line: 903, column: 13, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 903, column: 13)
!1217 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 903, column: 13)
!1218 = !DILocation(line: 903, column: 13, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 903, column: 13)
!1220 = !DILocation(line: 903, column: 13, scope: !1217)
!1221 = !DILocation(line: 904, column: 2, scope: !1202)
!1222 = !DILocation(line: 908, column: 13, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 908, column: 13)
!1224 = !DILocation(line: 908, column: 16, scope: !1223)
!1225 = !DILocation(line: 908, column: 33, scope: !1223)
!1226 = !DILocation(line: 908, column: 36, scope: !1223)
!1227 = !DILocation(line: 908, column: 27, scope: !1223)
!1228 = !DILocation(line: 908, column: 25, scope: !1223)
!1229 = !DILocation(line: 908, column: 51, scope: !1223)
!1230 = !DILocation(line: 908, column: 48, scope: !1223)
!1231 = !DILocation(line: 908, column: 13, scope: !1152)
!1232 = !DILocation(line: 909, column: 13, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 909, column: 13)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 909, column: 13)
!1235 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 908, column: 64)
!1236 = !DILocation(line: 909, column: 13, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 909, column: 13)
!1238 = !DILocation(line: 909, column: 13, scope: !1234)
!1239 = !DILocation(line: 910, column: 2, scope: !1235)
!1240 = !DILocation(line: 880, column: 5, scope: !1153)
!1241 = distinct !{!1241, !1242, !1243, !1244}
!1242 = !DILocation(line: 880, column: 5, scope: !1154)
!1243 = !DILocation(line: 911, column: 5, scope: !1154)
!1244 = !{!"llvm.loop.unroll.disable"}
!1245 = !DILocation(line: 912, column: 5, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 912, column: 5)
!1247 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 912, column: 5)
!1248 = !DILocation(line: 912, column: 5, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 912, column: 5)
!1250 = !DILocation(line: 912, column: 5, scope: !1247)
!1251 = !DILocation(line: 913, column: 12, scope: !1124)
!1252 = !DILocation(line: 913, column: 18, scope: !1124)
!1253 = !DILocation(line: 913, column: 5, scope: !1124)
!1254 = !DILocation(line: 914, column: 1, scope: !1124)
!1255 = distinct !DISubprogram(name: "deflate_fast", scope: !3, file: !3, line: 923, type: !183, scopeLine: 927, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1256)
!1256 = !{!1257, !1258, !1259, !1260}
!1257 = !DILocalVariable(name: "s", arg: 1, scope: !1255, file: !3, line: 924, type: !164)
!1258 = !DILocalVariable(name: "flush", arg: 2, scope: !1255, file: !3, line: 925, type: !52)
!1259 = !DILocalVariable(name: "hash_head", scope: !1255, file: !3, line: 928, type: !87)
!1260 = !DILocalVariable(name: "bflush", scope: !1255, file: !3, line: 929, type: !52)
!1261 = !DILocation(line: 924, column: 17, scope: !1255)
!1262 = !DILocation(line: 925, column: 6, scope: !1255)
!1263 = !DILocation(line: 928, column: 5, scope: !1255)
!1264 = !DILocation(line: 928, column: 10, scope: !1255)
!1265 = !DILocation(line: 929, column: 5, scope: !1255)
!1266 = !DILocation(line: 929, column: 9, scope: !1255)
!1267 = !DILocation(line: 931, column: 5, scope: !1255)
!1268 = !DILocation(line: 937, column: 13, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 937, column: 13)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 931, column: 14)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 931, column: 5)
!1272 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 931, column: 5)
!1273 = !DILocation(line: 937, column: 16, scope: !1269)
!1274 = !DILocation(line: 937, column: 26, scope: !1269)
!1275 = !DILocation(line: 937, column: 13, scope: !1270)
!1276 = !DILocation(line: 938, column: 25, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 937, column: 43)
!1278 = !DILocation(line: 938, column: 13, scope: !1277)
!1279 = !DILocation(line: 939, column: 17, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 939, column: 17)
!1281 = !DILocation(line: 939, column: 20, scope: !1280)
!1282 = !DILocation(line: 939, column: 30, scope: !1280)
!1283 = !DILocation(line: 939, column: 46, scope: !1280)
!1284 = !DILocation(line: 939, column: 49, scope: !1280)
!1285 = !DILocation(line: 939, column: 55, scope: !1280)
!1286 = !DILocation(line: 939, column: 17, scope: !1277)
!1287 = !DILocation(line: 940, column: 10, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 939, column: 70)
!1289 = !DILocation(line: 942, column: 17, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 942, column: 17)
!1291 = !DILocation(line: 942, column: 20, scope: !1290)
!1292 = !DILocation(line: 942, column: 30, scope: !1290)
!1293 = !DILocation(line: 942, column: 17, scope: !1277)
!1294 = !DILocation(line: 942, column: 36, scope: !1290)
!1295 = !DILocation(line: 943, column: 9, scope: !1277)
!1296 = !DILocation(line: 948, column: 13, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 948, column: 13)
!1298 = !DILocation(line: 948, column: 16, scope: !1297)
!1299 = !DILocation(line: 948, column: 26, scope: !1297)
!1300 = !DILocation(line: 948, column: 13, scope: !1270)
!1301 = !DILocation(line: 949, column: 13, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 948, column: 40)
!1303 = !DILocation(line: 950, column: 9, scope: !1302)
!1304 = !DILocation(line: 955, column: 13, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 955, column: 13)
!1306 = !DILocation(line: 955, column: 23, scope: !1305)
!1307 = !DILocation(line: 955, column: 30, scope: !1305)
!1308 = !DILocation(line: 955, column: 33, scope: !1305)
!1309 = !DILocation(line: 955, column: 36, scope: !1305)
!1310 = !DILocation(line: 955, column: 47, scope: !1305)
!1311 = !DILocation(line: 955, column: 45, scope: !1305)
!1312 = !DILocation(line: 955, column: 60, scope: !1305)
!1313 = !DILocation(line: 955, column: 57, scope: !1305)
!1314 = !DILocation(line: 955, column: 13, scope: !1270)
!1315 = !DILocation(line: 960, column: 17, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 960, column: 17)
!1317 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 955, column: 73)
!1318 = !DILocation(line: 960, column: 20, scope: !1316)
!1319 = !DILocation(line: 960, column: 29, scope: !1316)
!1320 = !DILocation(line: 960, column: 17, scope: !1317)
!1321 = !DILocation(line: 961, column: 50, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 960, column: 48)
!1323 = !DILocation(line: 961, column: 53, scope: !1322)
!1324 = !DILocation(line: 961, column: 35, scope: !1322)
!1325 = !DILocation(line: 961, column: 17, scope: !1322)
!1326 = !DILocation(line: 961, column: 20, scope: !1322)
!1327 = !DILocation(line: 961, column: 33, scope: !1322)
!1328 = !DILocation(line: 962, column: 13, scope: !1322)
!1329 = !DILocation(line: 964, column: 9, scope: !1317)
!1330 = !DILocation(line: 965, column: 13, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 965, column: 13)
!1332 = !DILocation(line: 965, column: 16, scope: !1331)
!1333 = !DILocation(line: 965, column: 29, scope: !1331)
!1334 = !DILocation(line: 965, column: 13, scope: !1270)
!1335 = !DILocation(line: 968, column: 36, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 965, column: 43)
!1337 = !DILocation(line: 968, column: 39, scope: !1336)
!1338 = !DILocation(line: 968, column: 42, scope: !1336)
!1339 = !DILocation(line: 968, column: 53, scope: !1336)
!1340 = !DILocation(line: 968, column: 56, scope: !1336)
!1341 = !DILocation(line: 968, column: 51, scope: !1336)
!1342 = !DILocation(line: 969, column: 32, scope: !1336)
!1343 = !DILocation(line: 969, column: 35, scope: !1336)
!1344 = !DILocation(line: 969, column: 48, scope: !1336)
!1345 = !DILocation(line: 968, column: 22, scope: !1336)
!1346 = !DILocation(line: 968, column: 20, scope: !1336)
!1347 = !DILocation(line: 971, column: 29, scope: !1336)
!1348 = !DILocation(line: 971, column: 32, scope: !1336)
!1349 = !DILocation(line: 971, column: 13, scope: !1336)
!1350 = !DILocation(line: 971, column: 16, scope: !1336)
!1351 = !DILocation(line: 971, column: 26, scope: !1336)
!1352 = !DILocation(line: 976, column: 17, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 976, column: 17)
!1354 = !DILocation(line: 976, column: 20, scope: !1353)
!1355 = !DILocation(line: 976, column: 36, scope: !1353)
!1356 = !DILocation(line: 976, column: 39, scope: !1353)
!1357 = !DILocation(line: 976, column: 33, scope: !1353)
!1358 = !DILocation(line: 976, column: 57, scope: !1353)
!1359 = !DILocation(line: 977, column: 17, scope: !1353)
!1360 = !DILocation(line: 977, column: 20, scope: !1353)
!1361 = !DILocation(line: 977, column: 30, scope: !1353)
!1362 = !DILocation(line: 976, column: 17, scope: !1336)
!1363 = !DILocation(line: 978, column: 17, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 977, column: 44)
!1365 = !DILocation(line: 978, column: 20, scope: !1364)
!1366 = !DILocation(line: 978, column: 32, scope: !1364)
!1367 = !DILocation(line: 979, column: 17, scope: !1364)
!1368 = !DILocation(line: 980, column: 21, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 979, column: 20)
!1370 = !DILocation(line: 980, column: 24, scope: !1369)
!1371 = !DILocation(line: 980, column: 32, scope: !1369)
!1372 = !DILocation(line: 981, column: 21, scope: !1369)
!1373 = !DILocation(line: 985, column: 17, scope: !1369)
!1374 = !DILocation(line: 985, column: 28, scope: !1364)
!1375 = !DILocation(line: 985, column: 31, scope: !1364)
!1376 = !DILocation(line: 985, column: 26, scope: !1364)
!1377 = !DILocation(line: 985, column: 44, scope: !1364)
!1378 = distinct !{!1378, !1367, !1379, !1380, !1244}
!1379 = !DILocation(line: 985, column: 48, scope: !1364)
!1380 = !{!"llvm.loop.mustprogress"}
!1381 = !DILocation(line: 986, column: 17, scope: !1364)
!1382 = !DILocation(line: 986, column: 20, scope: !1364)
!1383 = !DILocation(line: 986, column: 28, scope: !1364)
!1384 = !DILocation(line: 987, column: 13, scope: !1364)
!1385 = !DILocation(line: 988, column: 32, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 987, column: 20)
!1387 = !DILocation(line: 988, column: 35, scope: !1386)
!1388 = !DILocation(line: 988, column: 17, scope: !1386)
!1389 = !DILocation(line: 988, column: 20, scope: !1386)
!1390 = !DILocation(line: 988, column: 29, scope: !1386)
!1391 = !DILocation(line: 989, column: 17, scope: !1386)
!1392 = !DILocation(line: 989, column: 20, scope: !1386)
!1393 = !DILocation(line: 989, column: 33, scope: !1386)
!1394 = !DILocation(line: 990, column: 28, scope: !1386)
!1395 = !DILocation(line: 990, column: 31, scope: !1386)
!1396 = !DILocation(line: 990, column: 38, scope: !1386)
!1397 = !DILocation(line: 990, column: 41, scope: !1386)
!1398 = !DILocation(line: 990, column: 17, scope: !1386)
!1399 = !DILocation(line: 990, column: 20, scope: !1386)
!1400 = !DILocation(line: 990, column: 26, scope: !1386)
!1401 = !DILocation(line: 991, column: 17, scope: !1386)
!1402 = !DILocation(line: 999, column: 9, scope: !1336)
!1403 = !DILocation(line: 1002, column: 37, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 999, column: 16)
!1405 = !DILocation(line: 1002, column: 43, scope: !1404)
!1406 = !DILocation(line: 1002, column: 46, scope: !1404)
!1407 = !DILocation(line: 1002, column: 53, scope: !1404)
!1408 = !DILocation(line: 1002, column: 56, scope: !1404)
!1409 = !DILocation(line: 1002, column: 22, scope: !1404)
!1410 = !DILocation(line: 1002, column: 20, scope: !1404)
!1411 = !DILocation(line: 1003, column: 13, scope: !1404)
!1412 = !DILocation(line: 1003, column: 16, scope: !1404)
!1413 = !DILocation(line: 1003, column: 25, scope: !1404)
!1414 = !DILocation(line: 1004, column: 13, scope: !1404)
!1415 = !DILocation(line: 1004, column: 16, scope: !1404)
!1416 = !DILocation(line: 1004, column: 24, scope: !1404)
!1417 = !DILocation(line: 1006, column: 13, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1006, column: 13)
!1419 = !DILocation(line: 1006, column: 13, scope: !1270)
!1420 = !DILocation(line: 1006, column: 21, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 1006, column: 21)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 1006, column: 21)
!1423 = !DILocation(line: 1006, column: 21, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 1006, column: 21)
!1425 = !DILocation(line: 1006, column: 21, scope: !1422)
!1426 = !DILocation(line: 931, column: 5, scope: !1271)
!1427 = distinct !{!1427, !1428, !1429, !1244}
!1428 = !DILocation(line: 931, column: 5, scope: !1272)
!1429 = !DILocation(line: 1007, column: 5, scope: !1272)
!1430 = !DILocation(line: 1008, column: 5, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 1008, column: 5)
!1432 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1008, column: 5)
!1433 = !DILocation(line: 1008, column: 5, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 1008, column: 5)
!1435 = !DILocation(line: 1008, column: 5, scope: !1432)
!1436 = !DILocation(line: 1009, column: 12, scope: !1255)
!1437 = !DILocation(line: 1009, column: 18, scope: !1255)
!1438 = !DILocation(line: 1009, column: 5, scope: !1255)
!1439 = !DILocation(line: 1010, column: 1, scope: !1255)
!1440 = distinct !DISubprogram(name: "deflate_slow", scope: !3, file: !3, line: 1017, type: !183, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446}
!1442 = !DILocalVariable(name: "s", arg: 1, scope: !1440, file: !3, line: 1018, type: !164)
!1443 = !DILocalVariable(name: "flush", arg: 2, scope: !1440, file: !3, line: 1019, type: !52)
!1444 = !DILocalVariable(name: "hash_head", scope: !1440, file: !3, line: 1022, type: !87)
!1445 = !DILocalVariable(name: "bflush", scope: !1440, file: !3, line: 1023, type: !52)
!1446 = !DILocalVariable(name: "max_insert", scope: !1447, file: !3, line: 1077, type: !67)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1076, column: 79)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 1076, column: 13)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 1026, column: 14)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 1026, column: 5)
!1451 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 1026, column: 5)
!1452 = !DILocation(line: 1018, column: 17, scope: !1440)
!1453 = !DILocation(line: 1019, column: 6, scope: !1440)
!1454 = !DILocation(line: 1022, column: 5, scope: !1440)
!1455 = !DILocation(line: 1022, column: 10, scope: !1440)
!1456 = !DILocation(line: 1023, column: 5, scope: !1440)
!1457 = !DILocation(line: 1023, column: 9, scope: !1440)
!1458 = !DILocation(line: 1026, column: 5, scope: !1440)
!1459 = !DILocation(line: 1032, column: 13, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 1032, column: 13)
!1461 = !DILocation(line: 1032, column: 16, scope: !1460)
!1462 = !DILocation(line: 1032, column: 26, scope: !1460)
!1463 = !DILocation(line: 1032, column: 13, scope: !1449)
!1464 = !DILocation(line: 1033, column: 25, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 1032, column: 43)
!1466 = !DILocation(line: 1033, column: 13, scope: !1465)
!1467 = !DILocation(line: 1034, column: 17, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 1034, column: 17)
!1469 = !DILocation(line: 1034, column: 20, scope: !1468)
!1470 = !DILocation(line: 1034, column: 30, scope: !1468)
!1471 = !DILocation(line: 1034, column: 46, scope: !1468)
!1472 = !DILocation(line: 1034, column: 49, scope: !1468)
!1473 = !DILocation(line: 1034, column: 55, scope: !1468)
!1474 = !DILocation(line: 1034, column: 17, scope: !1465)
!1475 = !DILocation(line: 1035, column: 10, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 1034, column: 70)
!1477 = !DILocation(line: 1037, column: 17, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 1037, column: 17)
!1479 = !DILocation(line: 1037, column: 20, scope: !1478)
!1480 = !DILocation(line: 1037, column: 30, scope: !1478)
!1481 = !DILocation(line: 1037, column: 17, scope: !1465)
!1482 = !DILocation(line: 1037, column: 36, scope: !1478)
!1483 = !DILocation(line: 1038, column: 9, scope: !1465)
!1484 = !DILocation(line: 1043, column: 13, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 1043, column: 13)
!1486 = !DILocation(line: 1043, column: 16, scope: !1485)
!1487 = !DILocation(line: 1043, column: 26, scope: !1485)
!1488 = !DILocation(line: 1043, column: 13, scope: !1449)
!1489 = !DILocation(line: 1044, column: 13, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 1043, column: 40)
!1491 = !DILocation(line: 1045, column: 9, scope: !1490)
!1492 = !DILocation(line: 1049, column: 26, scope: !1449)
!1493 = !DILocation(line: 1049, column: 29, scope: !1449)
!1494 = !DILocation(line: 1049, column: 9, scope: !1449)
!1495 = !DILocation(line: 1049, column: 12, scope: !1449)
!1496 = !DILocation(line: 1049, column: 24, scope: !1449)
!1497 = !DILocation(line: 1049, column: 59, scope: !1449)
!1498 = !DILocation(line: 1049, column: 62, scope: !1449)
!1499 = !DILocation(line: 1049, column: 43, scope: !1449)
!1500 = !DILocation(line: 1049, column: 46, scope: !1449)
!1501 = !DILocation(line: 1049, column: 57, scope: !1449)
!1502 = !DILocation(line: 1050, column: 9, scope: !1449)
!1503 = !DILocation(line: 1050, column: 12, scope: !1449)
!1504 = !DILocation(line: 1050, column: 25, scope: !1449)
!1505 = !DILocation(line: 1052, column: 13, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 1052, column: 13)
!1507 = !DILocation(line: 1052, column: 23, scope: !1506)
!1508 = !DILocation(line: 1052, column: 30, scope: !1506)
!1509 = !DILocation(line: 1052, column: 33, scope: !1506)
!1510 = !DILocation(line: 1052, column: 36, scope: !1506)
!1511 = !DILocation(line: 1052, column: 50, scope: !1506)
!1512 = !DILocation(line: 1052, column: 53, scope: !1506)
!1513 = !DILocation(line: 1052, column: 48, scope: !1506)
!1514 = !DILocation(line: 1052, column: 68, scope: !1506)
!1515 = !DILocation(line: 1053, column: 13, scope: !1506)
!1516 = !DILocation(line: 1053, column: 16, scope: !1506)
!1517 = !DILocation(line: 1053, column: 27, scope: !1506)
!1518 = !DILocation(line: 1053, column: 25, scope: !1506)
!1519 = !DILocation(line: 1053, column: 40, scope: !1506)
!1520 = !DILocation(line: 1053, column: 37, scope: !1506)
!1521 = !DILocation(line: 1052, column: 13, scope: !1449)
!1522 = !DILocation(line: 1058, column: 17, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 1058, column: 17)
!1524 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 1053, column: 53)
!1525 = !DILocation(line: 1058, column: 20, scope: !1523)
!1526 = !DILocation(line: 1058, column: 29, scope: !1523)
!1527 = !DILocation(line: 1058, column: 17, scope: !1524)
!1528 = !DILocation(line: 1059, column: 50, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 1058, column: 48)
!1530 = !DILocation(line: 1059, column: 53, scope: !1529)
!1531 = !DILocation(line: 1059, column: 35, scope: !1529)
!1532 = !DILocation(line: 1059, column: 17, scope: !1529)
!1533 = !DILocation(line: 1059, column: 20, scope: !1529)
!1534 = !DILocation(line: 1059, column: 33, scope: !1529)
!1535 = !DILocation(line: 1060, column: 13, scope: !1529)
!1536 = !DILocation(line: 1063, column: 17, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 1063, column: 17)
!1538 = !DILocation(line: 1063, column: 20, scope: !1537)
!1539 = !DILocation(line: 1063, column: 33, scope: !1537)
!1540 = !DILocation(line: 1063, column: 38, scope: !1537)
!1541 = !DILocation(line: 1063, column: 42, scope: !1537)
!1542 = !DILocation(line: 1063, column: 45, scope: !1537)
!1543 = !DILocation(line: 1063, column: 54, scope: !1537)
!1544 = !DILocation(line: 1063, column: 68, scope: !1537)
!1545 = !DILocation(line: 1064, column: 19, scope: !1537)
!1546 = !DILocation(line: 1064, column: 22, scope: !1537)
!1547 = !DILocation(line: 1064, column: 35, scope: !1537)
!1548 = !DILocation(line: 1064, column: 48, scope: !1537)
!1549 = !DILocation(line: 1065, column: 19, scope: !1537)
!1550 = !DILocation(line: 1065, column: 22, scope: !1537)
!1551 = !DILocation(line: 1065, column: 33, scope: !1537)
!1552 = !DILocation(line: 1065, column: 36, scope: !1537)
!1553 = !DILocation(line: 1065, column: 31, scope: !1537)
!1554 = !DILocation(line: 1065, column: 48, scope: !1537)
!1555 = !DILocation(line: 1063, column: 17, scope: !1524)
!1556 = !DILocation(line: 1070, column: 17, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 1065, column: 61)
!1558 = !DILocation(line: 1070, column: 20, scope: !1557)
!1559 = !DILocation(line: 1070, column: 33, scope: !1557)
!1560 = !DILocation(line: 1071, column: 13, scope: !1557)
!1561 = !DILocation(line: 1072, column: 9, scope: !1524)
!1562 = !DILocation(line: 1076, column: 13, scope: !1448)
!1563 = !DILocation(line: 1076, column: 16, scope: !1448)
!1564 = !DILocation(line: 1076, column: 28, scope: !1448)
!1565 = !DILocation(line: 1076, column: 41, scope: !1448)
!1566 = !DILocation(line: 1076, column: 44, scope: !1448)
!1567 = !DILocation(line: 1076, column: 47, scope: !1448)
!1568 = !DILocation(line: 1076, column: 63, scope: !1448)
!1569 = !DILocation(line: 1076, column: 66, scope: !1448)
!1570 = !DILocation(line: 1076, column: 60, scope: !1448)
!1571 = !DILocation(line: 1076, column: 13, scope: !1449)
!1572 = !DILocation(line: 1077, column: 13, scope: !1447)
!1573 = !DILocation(line: 1077, column: 18, scope: !1447)
!1574 = !DILocation(line: 1077, column: 31, scope: !1447)
!1575 = !DILocation(line: 1077, column: 34, scope: !1447)
!1576 = !DILocation(line: 1077, column: 45, scope: !1447)
!1577 = !DILocation(line: 1077, column: 48, scope: !1447)
!1578 = !DILocation(line: 1077, column: 43, scope: !1447)
!1579 = !DILocation(line: 1077, column: 58, scope: !1447)
!1580 = !DILocation(line: 1082, column: 36, scope: !1447)
!1581 = !DILocation(line: 1082, column: 39, scope: !1447)
!1582 = !DILocation(line: 1082, column: 42, scope: !1447)
!1583 = !DILocation(line: 1082, column: 51, scope: !1447)
!1584 = !DILocation(line: 1082, column: 56, scope: !1447)
!1585 = !DILocation(line: 1082, column: 59, scope: !1447)
!1586 = !DILocation(line: 1082, column: 54, scope: !1447)
!1587 = !DILocation(line: 1083, column: 8, scope: !1447)
!1588 = !DILocation(line: 1083, column: 11, scope: !1447)
!1589 = !DILocation(line: 1083, column: 23, scope: !1447)
!1590 = !DILocation(line: 1082, column: 22, scope: !1447)
!1591 = !DILocation(line: 1082, column: 20, scope: !1447)
!1592 = !DILocation(line: 1090, column: 29, scope: !1447)
!1593 = !DILocation(line: 1090, column: 32, scope: !1447)
!1594 = !DILocation(line: 1090, column: 43, scope: !1447)
!1595 = !DILocation(line: 1090, column: 13, scope: !1447)
!1596 = !DILocation(line: 1090, column: 16, scope: !1447)
!1597 = !DILocation(line: 1090, column: 26, scope: !1447)
!1598 = !DILocation(line: 1091, column: 13, scope: !1447)
!1599 = !DILocation(line: 1091, column: 16, scope: !1447)
!1600 = !DILocation(line: 1091, column: 28, scope: !1447)
!1601 = !DILocation(line: 1092, column: 13, scope: !1447)
!1602 = !DILocation(line: 1093, column: 23, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1093, column: 21)
!1604 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 1092, column: 16)
!1605 = !DILocation(line: 1093, column: 26, scope: !1603)
!1606 = !DILocation(line: 1093, column: 21, scope: !1603)
!1607 = !DILocation(line: 1093, column: 38, scope: !1603)
!1608 = !DILocation(line: 1093, column: 35, scope: !1603)
!1609 = !DILocation(line: 1093, column: 21, scope: !1604)
!1610 = !DILocation(line: 1094, column: 21, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 1093, column: 50)
!1612 = !DILocation(line: 1095, column: 17, scope: !1611)
!1613 = !DILocation(line: 1096, column: 13, scope: !1604)
!1614 = !DILocation(line: 1096, column: 24, scope: !1447)
!1615 = !DILocation(line: 1096, column: 27, scope: !1447)
!1616 = !DILocation(line: 1096, column: 22, scope: !1447)
!1617 = !DILocation(line: 1096, column: 39, scope: !1447)
!1618 = distinct !{!1618, !1601, !1619, !1380, !1244}
!1619 = !DILocation(line: 1096, column: 43, scope: !1447)
!1620 = !DILocation(line: 1097, column: 13, scope: !1447)
!1621 = !DILocation(line: 1097, column: 16, scope: !1447)
!1622 = !DILocation(line: 1097, column: 32, scope: !1447)
!1623 = !DILocation(line: 1098, column: 13, scope: !1447)
!1624 = !DILocation(line: 1098, column: 16, scope: !1447)
!1625 = !DILocation(line: 1098, column: 29, scope: !1447)
!1626 = !DILocation(line: 1099, column: 13, scope: !1447)
!1627 = !DILocation(line: 1099, column: 16, scope: !1447)
!1628 = !DILocation(line: 1099, column: 24, scope: !1447)
!1629 = !DILocation(line: 1101, column: 17, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 1101, column: 17)
!1631 = !DILocation(line: 1101, column: 17, scope: !1447)
!1632 = !DILocation(line: 1101, column: 25, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 1101, column: 25)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 1101, column: 25)
!1635 = !DILocation(line: 1101, column: 25, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 1101, column: 25)
!1637 = !DILocation(line: 1101, column: 25, scope: !1634)
!1638 = !DILocation(line: 1103, column: 9, scope: !1448)
!1639 = !DILocation(line: 1103, column: 9, scope: !1447)
!1640 = !DILocation(line: 1103, column: 20, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1103, column: 20)
!1642 = !DILocation(line: 1103, column: 23, scope: !1641)
!1643 = !DILocation(line: 1103, column: 20, scope: !1448)
!1644 = !DILocation(line: 1109, column: 32, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 1109, column: 17)
!1646 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 1103, column: 40)
!1647 = !DILocation(line: 1109, column: 38, scope: !1645)
!1648 = !DILocation(line: 1109, column: 41, scope: !1645)
!1649 = !DILocation(line: 1109, column: 48, scope: !1645)
!1650 = !DILocation(line: 1109, column: 51, scope: !1645)
!1651 = !DILocation(line: 1109, column: 59, scope: !1645)
!1652 = !DILocation(line: 1109, column: 17, scope: !1645)
!1653 = !DILocation(line: 1109, column: 17, scope: !1646)
!1654 = !DILocation(line: 1110, column: 17, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 1110, column: 17)
!1656 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 1109, column: 65)
!1657 = !DILocation(line: 1111, column: 13, scope: !1656)
!1658 = !DILocation(line: 1112, column: 13, scope: !1646)
!1659 = !DILocation(line: 1112, column: 16, scope: !1646)
!1660 = !DILocation(line: 1112, column: 24, scope: !1646)
!1661 = !DILocation(line: 1113, column: 13, scope: !1646)
!1662 = !DILocation(line: 1113, column: 16, scope: !1646)
!1663 = !DILocation(line: 1113, column: 25, scope: !1646)
!1664 = !DILocation(line: 1114, column: 17, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 1114, column: 17)
!1666 = !DILocation(line: 1114, column: 20, scope: !1665)
!1667 = !DILocation(line: 1114, column: 26, scope: !1665)
!1668 = !DILocation(line: 1114, column: 36, scope: !1665)
!1669 = !DILocation(line: 1114, column: 17, scope: !1646)
!1670 = !DILocation(line: 1114, column: 42, scope: !1665)
!1671 = !DILocation(line: 1115, column: 9, scope: !1646)
!1672 = !DILocation(line: 1119, column: 13, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 1115, column: 16)
!1674 = !DILocation(line: 1119, column: 16, scope: !1673)
!1675 = !DILocation(line: 1119, column: 32, scope: !1673)
!1676 = !DILocation(line: 1120, column: 13, scope: !1673)
!1677 = !DILocation(line: 1120, column: 16, scope: !1673)
!1678 = !DILocation(line: 1120, column: 24, scope: !1673)
!1679 = !DILocation(line: 1121, column: 13, scope: !1673)
!1680 = !DILocation(line: 1121, column: 16, scope: !1673)
!1681 = !DILocation(line: 1121, column: 25, scope: !1673)
!1682 = !DILocation(line: 1026, column: 5, scope: !1450)
!1683 = distinct !{!1683, !1684, !1685, !1244}
!1684 = !DILocation(line: 1026, column: 5, scope: !1451)
!1685 = !DILocation(line: 1123, column: 5, scope: !1451)
!1686 = !DILocation(line: 1125, column: 9, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 1125, column: 9)
!1688 = !DILocation(line: 1125, column: 12, scope: !1687)
!1689 = !DILocation(line: 1125, column: 9, scope: !1440)
!1690 = !DILocation(line: 1127, column: 24, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 1125, column: 29)
!1692 = !DILocation(line: 1127, column: 30, scope: !1691)
!1693 = !DILocation(line: 1127, column: 33, scope: !1691)
!1694 = !DILocation(line: 1127, column: 40, scope: !1691)
!1695 = !DILocation(line: 1127, column: 43, scope: !1691)
!1696 = !DILocation(line: 1127, column: 51, scope: !1691)
!1697 = !DILocation(line: 1127, column: 9, scope: !1691)
!1698 = !DILocation(line: 1128, column: 9, scope: !1691)
!1699 = !DILocation(line: 1128, column: 12, scope: !1691)
!1700 = !DILocation(line: 1128, column: 28, scope: !1691)
!1701 = !DILocation(line: 1129, column: 5, scope: !1691)
!1702 = !DILocation(line: 1130, column: 5, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 1130, column: 5)
!1704 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 1130, column: 5)
!1705 = !DILocation(line: 1130, column: 5, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 1130, column: 5)
!1707 = !DILocation(line: 1130, column: 5, scope: !1704)
!1708 = !DILocation(line: 1131, column: 12, scope: !1440)
!1709 = !DILocation(line: 1131, column: 18, scope: !1440)
!1710 = !DILocation(line: 1131, column: 5, scope: !1440)
!1711 = !DILocation(line: 1132, column: 1, scope: !1440)
!1712 = distinct !DISubprogram(name: "fill_window", scope: !3, file: !3, line: 744, type: !507, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1713)
!1713 = !{!1714, !1715, !1716, !1717, !1718, !1719}
!1714 = !DILocalVariable(name: "s", arg: 1, scope: !1712, file: !3, line: 745, type: !164)
!1715 = !DILocalVariable(name: "n", scope: !1712, file: !3, line: 748, type: !7)
!1716 = !DILocalVariable(name: "m", scope: !1712, file: !3, line: 748, type: !7)
!1717 = !DILocalVariable(name: "p", scope: !1712, file: !3, line: 749, type: !73)
!1718 = !DILocalVariable(name: "more", scope: !1712, file: !3, line: 750, type: !7)
!1719 = !DILocalVariable(name: "wsize", scope: !1712, file: !3, line: 751, type: !67)
!1720 = !DILocation(line: 745, column: 17, scope: !1712)
!1721 = !DILocation(line: 748, column: 5, scope: !1712)
!1722 = !DILocation(line: 748, column: 23, scope: !1712)
!1723 = !DILocation(line: 748, column: 26, scope: !1712)
!1724 = !DILocation(line: 749, column: 5, scope: !1712)
!1725 = !DILocation(line: 749, column: 19, scope: !1712)
!1726 = !DILocation(line: 750, column: 5, scope: !1712)
!1727 = !DILocation(line: 750, column: 14, scope: !1712)
!1728 = !DILocation(line: 751, column: 5, scope: !1712)
!1729 = !DILocation(line: 751, column: 10, scope: !1712)
!1730 = !DILocation(line: 751, column: 18, scope: !1712)
!1731 = !DILocation(line: 751, column: 21, scope: !1712)
!1732 = !DILocation(line: 753, column: 5, scope: !1712)
!1733 = !DILocation(line: 754, column: 27, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 753, column: 8)
!1735 = !DILocation(line: 754, column: 30, scope: !1734)
!1736 = !DILocation(line: 754, column: 48, scope: !1734)
!1737 = !DILocation(line: 754, column: 51, scope: !1734)
!1738 = !DILocation(line: 754, column: 43, scope: !1734)
!1739 = !DILocation(line: 754, column: 42, scope: !1734)
!1740 = !DILocation(line: 754, column: 67, scope: !1734)
!1741 = !DILocation(line: 754, column: 70, scope: !1734)
!1742 = !DILocation(line: 754, column: 62, scope: !1734)
!1743 = !DILocation(line: 754, column: 61, scope: !1734)
!1744 = !DILocation(line: 754, column: 16, scope: !1734)
!1745 = !DILocation(line: 754, column: 14, scope: !1734)
!1746 = !DILocation(line: 757, column: 13, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 757, column: 13)
!1748 = !DILocation(line: 757, column: 18, scope: !1747)
!1749 = !DILocation(line: 757, column: 23, scope: !1747)
!1750 = !DILocation(line: 757, column: 26, scope: !1747)
!1751 = !DILocation(line: 757, column: 29, scope: !1747)
!1752 = !DILocation(line: 757, column: 38, scope: !1747)
!1753 = !DILocation(line: 757, column: 43, scope: !1747)
!1754 = !DILocation(line: 757, column: 46, scope: !1747)
!1755 = !DILocation(line: 757, column: 49, scope: !1747)
!1756 = !DILocation(line: 757, column: 59, scope: !1747)
!1757 = !DILocation(line: 757, column: 13, scope: !1734)
!1758 = !DILocation(line: 758, column: 20, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 757, column: 65)
!1760 = !DILocation(line: 758, column: 18, scope: !1759)
!1761 = !DILocation(line: 760, column: 9, scope: !1759)
!1762 = !DILocation(line: 760, column: 20, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 760, column: 20)
!1764 = !DILocation(line: 760, column: 25, scope: !1763)
!1765 = !DILocation(line: 760, column: 20, scope: !1747)
!1766 = !DILocation(line: 764, column: 17, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 760, column: 44)
!1768 = !DILocation(line: 769, column: 9, scope: !1767)
!1769 = !DILocation(line: 769, column: 20, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 769, column: 20)
!1771 = !DILocation(line: 769, column: 23, scope: !1770)
!1772 = !DILocation(line: 769, column: 35, scope: !1770)
!1773 = !DILocation(line: 769, column: 41, scope: !1770)
!1774 = !DILocation(line: 769, column: 40, scope: !1770)
!1775 = !DILocation(line: 769, column: 32, scope: !1770)
!1776 = !DILocation(line: 769, column: 20, scope: !1763)
!1777 = !DILocation(line: 771, column: 28, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 769, column: 54)
!1779 = !DILocation(line: 771, column: 31, scope: !1778)
!1780 = !DILocation(line: 771, column: 47, scope: !1778)
!1781 = !DILocation(line: 771, column: 50, scope: !1778)
!1782 = !DILocation(line: 771, column: 57, scope: !1778)
!1783 = !DILocation(line: 771, column: 56, scope: !1778)
!1784 = !DILocation(line: 772, column: 30, scope: !1778)
!1785 = !DILocation(line: 772, column: 20, scope: !1778)
!1786 = !DILocation(line: 771, column: 13, scope: !1778)
!1787 = !DILocation(line: 773, column: 31, scope: !1778)
!1788 = !DILocation(line: 773, column: 13, scope: !1778)
!1789 = !DILocation(line: 773, column: 16, scope: !1778)
!1790 = !DILocation(line: 773, column: 28, scope: !1778)
!1791 = !DILocation(line: 774, column: 31, scope: !1778)
!1792 = !DILocation(line: 774, column: 13, scope: !1778)
!1793 = !DILocation(line: 774, column: 16, scope: !1778)
!1794 = !DILocation(line: 774, column: 28, scope: !1778)
!1795 = !DILocation(line: 775, column: 38, scope: !1778)
!1796 = !DILocation(line: 775, column: 31, scope: !1778)
!1797 = !DILocation(line: 775, column: 13, scope: !1778)
!1798 = !DILocation(line: 775, column: 16, scope: !1778)
!1799 = !DILocation(line: 775, column: 28, scope: !1778)
!1800 = !DILocation(line: 783, column: 17, scope: !1778)
!1801 = !DILocation(line: 783, column: 20, scope: !1778)
!1802 = !DILocation(line: 783, column: 15, scope: !1778)
!1803 = !DILocation(line: 784, column: 18, scope: !1778)
!1804 = !DILocation(line: 784, column: 21, scope: !1778)
!1805 = !DILocation(line: 784, column: 26, scope: !1778)
!1806 = !DILocation(line: 784, column: 15, scope: !1778)
!1807 = !DILocation(line: 785, column: 13, scope: !1778)
!1808 = !DILocation(line: 786, column: 22, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 785, column: 16)
!1810 = !DILocation(line: 786, column: 21, scope: !1809)
!1811 = !DILocation(line: 786, column: 19, scope: !1809)
!1812 = !DILocation(line: 787, column: 28, scope: !1809)
!1813 = !DILocation(line: 787, column: 33, scope: !1809)
!1814 = !DILocation(line: 787, column: 30, scope: !1809)
!1815 = !DILocation(line: 787, column: 41, scope: !1809)
!1816 = !DILocation(line: 787, column: 43, scope: !1809)
!1817 = !DILocation(line: 787, column: 42, scope: !1809)
!1818 = !DILocation(line: 787, column: 22, scope: !1809)
!1819 = !DILocation(line: 787, column: 18, scope: !1809)
!1820 = !DILocation(line: 787, column: 20, scope: !1809)
!1821 = !DILocation(line: 788, column: 13, scope: !1809)
!1822 = !DILocation(line: 788, column: 22, scope: !1778)
!1823 = distinct !{!1823, !1807, !1824, !1380, !1244}
!1824 = !DILocation(line: 788, column: 25, scope: !1778)
!1825 = !DILocation(line: 790, column: 17, scope: !1778)
!1826 = !DILocation(line: 790, column: 15, scope: !1778)
!1827 = !DILocation(line: 791, column: 18, scope: !1778)
!1828 = !DILocation(line: 791, column: 21, scope: !1778)
!1829 = !DILocation(line: 791, column: 26, scope: !1778)
!1830 = !DILocation(line: 791, column: 15, scope: !1778)
!1831 = !DILocation(line: 792, column: 13, scope: !1778)
!1832 = !DILocation(line: 793, column: 22, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 792, column: 16)
!1834 = !DILocation(line: 793, column: 21, scope: !1833)
!1835 = !DILocation(line: 793, column: 19, scope: !1833)
!1836 = !DILocation(line: 794, column: 28, scope: !1833)
!1837 = !DILocation(line: 794, column: 33, scope: !1833)
!1838 = !DILocation(line: 794, column: 30, scope: !1833)
!1839 = !DILocation(line: 794, column: 41, scope: !1833)
!1840 = !DILocation(line: 794, column: 43, scope: !1833)
!1841 = !DILocation(line: 794, column: 42, scope: !1833)
!1842 = !DILocation(line: 794, column: 22, scope: !1833)
!1843 = !DILocation(line: 794, column: 18, scope: !1833)
!1844 = !DILocation(line: 794, column: 20, scope: !1833)
!1845 = !DILocation(line: 798, column: 13, scope: !1833)
!1846 = !DILocation(line: 798, column: 22, scope: !1778)
!1847 = distinct !{!1847, !1831, !1848, !1380, !1244}
!1848 = !DILocation(line: 798, column: 25, scope: !1778)
!1849 = !DILocation(line: 799, column: 21, scope: !1778)
!1850 = !DILocation(line: 799, column: 18, scope: !1778)
!1851 = !DILocation(line: 800, column: 9, scope: !1778)
!1852 = !DILocation(line: 801, column: 13, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 801, column: 13)
!1854 = !DILocation(line: 801, column: 16, scope: !1853)
!1855 = !DILocation(line: 801, column: 22, scope: !1853)
!1856 = !DILocation(line: 801, column: 31, scope: !1853)
!1857 = !DILocation(line: 801, column: 13, scope: !1734)
!1858 = !DILocation(line: 801, column: 37, scope: !1853)
!1859 = !DILocation(line: 816, column: 22, scope: !1734)
!1860 = !DILocation(line: 816, column: 25, scope: !1734)
!1861 = !DILocation(line: 816, column: 31, scope: !1734)
!1862 = !DILocation(line: 816, column: 34, scope: !1734)
!1863 = !DILocation(line: 816, column: 43, scope: !1734)
!1864 = !DILocation(line: 816, column: 46, scope: !1734)
!1865 = !DILocation(line: 816, column: 41, scope: !1734)
!1866 = !DILocation(line: 816, column: 57, scope: !1734)
!1867 = !DILocation(line: 816, column: 60, scope: !1734)
!1868 = !DILocation(line: 816, column: 55, scope: !1734)
!1869 = !DILocation(line: 816, column: 71, scope: !1734)
!1870 = !DILocation(line: 816, column: 13, scope: !1734)
!1871 = !DILocation(line: 816, column: 11, scope: !1734)
!1872 = !DILocation(line: 817, column: 25, scope: !1734)
!1873 = !DILocation(line: 817, column: 9, scope: !1734)
!1874 = !DILocation(line: 817, column: 12, scope: !1734)
!1875 = !DILocation(line: 817, column: 22, scope: !1734)
!1876 = !DILocation(line: 820, column: 13, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 820, column: 13)
!1878 = !DILocation(line: 820, column: 16, scope: !1877)
!1879 = !DILocation(line: 820, column: 26, scope: !1877)
!1880 = !DILocation(line: 820, column: 13, scope: !1734)
!1881 = !DILocation(line: 821, column: 24, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 820, column: 40)
!1883 = !DILocation(line: 821, column: 27, scope: !1882)
!1884 = !DILocation(line: 821, column: 34, scope: !1882)
!1885 = !DILocation(line: 821, column: 37, scope: !1882)
!1886 = !DILocation(line: 821, column: 13, scope: !1882)
!1887 = !DILocation(line: 821, column: 16, scope: !1882)
!1888 = !DILocation(line: 821, column: 22, scope: !1882)
!1889 = !DILocation(line: 822, column: 13, scope: !1882)
!1890 = !DILocation(line: 826, column: 9, scope: !1882)
!1891 = !DILocation(line: 831, column: 5, scope: !1734)
!1892 = !DILocation(line: 831, column: 14, scope: !1712)
!1893 = !DILocation(line: 831, column: 17, scope: !1712)
!1894 = !DILocation(line: 831, column: 27, scope: !1712)
!1895 = !DILocation(line: 831, column: 43, scope: !1712)
!1896 = !DILocation(line: 831, column: 46, scope: !1712)
!1897 = !DILocation(line: 831, column: 49, scope: !1712)
!1898 = !DILocation(line: 831, column: 55, scope: !1712)
!1899 = !DILocation(line: 831, column: 64, scope: !1712)
!1900 = !DILocation(line: 0, scope: !1712)
!1901 = distinct !{!1901, !1732, !1902, !1380, !1244}
!1902 = !DILocation(line: 831, column: 68, scope: !1712)
!1903 = !DILocation(line: 832, column: 1, scope: !1712)
!1904 = !DISubprogram(name: "zlib_tr_flush_block", scope: !6, file: !6, line: 276, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!58, !164, !45, !58, !52}
!1907 = distinct !DISubprogram(name: "read_buf", scope: !3, file: !3, line: 503, type: !1908, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!52, !24, !41, !7}
!1910 = !{!1911, !1912, !1913, !1914}
!1911 = !DILocalVariable(name: "strm", arg: 1, scope: !1907, file: !3, line: 504, type: !24)
!1912 = !DILocalVariable(name: "buf", arg: 2, scope: !1907, file: !3, line: 505, type: !41)
!1913 = !DILocalVariable(name: "size", arg: 3, scope: !1907, file: !3, line: 506, type: !7)
!1914 = !DILocalVariable(name: "len", scope: !1907, file: !3, line: 509, type: !7)
!1915 = !DILocation(line: 504, column: 12, scope: !1907)
!1916 = !DILocation(line: 505, column: 8, scope: !1907)
!1917 = !DILocation(line: 506, column: 11, scope: !1907)
!1918 = !DILocation(line: 509, column: 5, scope: !1907)
!1919 = !DILocation(line: 509, column: 14, scope: !1907)
!1920 = !DILocation(line: 509, column: 20, scope: !1907)
!1921 = !DILocation(line: 509, column: 26, scope: !1907)
!1922 = !DILocation(line: 511, column: 9, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 511, column: 9)
!1924 = !DILocation(line: 511, column: 15, scope: !1923)
!1925 = !DILocation(line: 511, column: 13, scope: !1923)
!1926 = !DILocation(line: 511, column: 9, scope: !1907)
!1927 = !DILocation(line: 511, column: 27, scope: !1923)
!1928 = !DILocation(line: 511, column: 25, scope: !1923)
!1929 = !DILocation(line: 511, column: 21, scope: !1923)
!1930 = !DILocation(line: 512, column: 9, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 512, column: 9)
!1932 = !DILocation(line: 512, column: 13, scope: !1931)
!1933 = !DILocation(line: 512, column: 9, scope: !1907)
!1934 = !DILocation(line: 512, column: 19, scope: !1931)
!1935 = !DILocation(line: 514, column: 24, scope: !1907)
!1936 = !DILocation(line: 514, column: 5, scope: !1907)
!1937 = !DILocation(line: 514, column: 11, scope: !1907)
!1938 = !DILocation(line: 514, column: 21, scope: !1907)
!1939 = !DILocation(line: 517, column: 34, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 517, column: 14)
!1941 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 516, column: 9)
!1942 = !DILocation(line: 517, column: 40, scope: !1940)
!1943 = !DILocation(line: 517, column: 49, scope: !1940)
!1944 = !DILocation(line: 517, column: 15, scope: !1940)
!1945 = !DILocation(line: 517, column: 14, scope: !1941)
!1946 = !DILocation(line: 518, column: 36, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 517, column: 59)
!1948 = !DILocation(line: 518, column: 42, scope: !1947)
!1949 = !DILocation(line: 518, column: 49, scope: !1947)
!1950 = !DILocation(line: 518, column: 55, scope: !1947)
!1951 = !DILocation(line: 518, column: 64, scope: !1947)
!1952 = !DILocation(line: 518, column: 23, scope: !1947)
!1953 = !DILocation(line: 518, column: 9, scope: !1947)
!1954 = !DILocation(line: 518, column: 15, scope: !1947)
!1955 = !DILocation(line: 518, column: 21, scope: !1947)
!1956 = !DILocation(line: 519, column: 5, scope: !1947)
!1957 = !DILocation(line: 520, column: 12, scope: !1907)
!1958 = !DILocation(line: 520, column: 17, scope: !1907)
!1959 = !DILocation(line: 520, column: 23, scope: !1907)
!1960 = !DILocation(line: 520, column: 32, scope: !1907)
!1961 = !DILocation(line: 520, column: 5, scope: !1907)
!1962 = !DILocation(line: 521, column: 23, scope: !1907)
!1963 = !DILocation(line: 521, column: 5, scope: !1907)
!1964 = !DILocation(line: 521, column: 11, scope: !1907)
!1965 = !DILocation(line: 521, column: 20, scope: !1907)
!1966 = !DILocation(line: 522, column: 23, scope: !1907)
!1967 = !DILocation(line: 522, column: 5, scope: !1907)
!1968 = !DILocation(line: 522, column: 11, scope: !1907)
!1969 = !DILocation(line: 522, column: 20, scope: !1907)
!1970 = !DILocation(line: 524, column: 17, scope: !1907)
!1971 = !DILocation(line: 524, column: 5, scope: !1907)
!1972 = !DILocation(line: 525, column: 1, scope: !1907)
!1973 = distinct !DISubprogram(name: "zlib_adler32", scope: !59, file: !59, line: 78, type: !1974, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1976)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!37, !37, !31, !67}
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1982}
!1977 = !DILocalVariable(name: "adler", arg: 1, scope: !1973, file: !59, line: 78, type: !37)
!1978 = !DILocalVariable(name: "buf", arg: 2, scope: !1973, file: !59, line: 79, type: !31)
!1979 = !DILocalVariable(name: "len", arg: 3, scope: !1973, file: !59, line: 80, type: !67)
!1980 = !DILocalVariable(name: "s1", scope: !1973, file: !59, line: 82, type: !38)
!1981 = !DILocalVariable(name: "s2", scope: !1973, file: !59, line: 83, type: !38)
!1982 = !DILocalVariable(name: "k", scope: !1973, file: !59, line: 84, type: !52)
!1983 = !DILocation(line: 78, column: 40, scope: !1973)
!1984 = !DILocation(line: 79, column: 18, scope: !1973)
!1985 = !DILocation(line: 80, column: 11, scope: !1973)
!1986 = !DILocation(line: 82, column: 5, scope: !1973)
!1987 = !DILocation(line: 82, column: 19, scope: !1973)
!1988 = !DILocation(line: 82, column: 24, scope: !1973)
!1989 = !DILocation(line: 82, column: 30, scope: !1973)
!1990 = !DILocation(line: 83, column: 5, scope: !1973)
!1991 = !DILocation(line: 83, column: 19, scope: !1973)
!1992 = !DILocation(line: 83, column: 25, scope: !1973)
!1993 = !DILocation(line: 83, column: 31, scope: !1973)
!1994 = !DILocation(line: 83, column: 38, scope: !1973)
!1995 = !DILocation(line: 84, column: 5, scope: !1973)
!1996 = !DILocation(line: 84, column: 9, scope: !1973)
!1997 = !DILocation(line: 86, column: 9, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1973, file: !59, line: 86, column: 9)
!1999 = !DILocation(line: 86, column: 13, scope: !1998)
!2000 = !DILocation(line: 86, column: 9, scope: !1973)
!2001 = !DILocation(line: 86, column: 22, scope: !1998)
!2002 = !DILocation(line: 88, column: 5, scope: !1973)
!2003 = !DILocation(line: 88, column: 12, scope: !1973)
!2004 = !DILocation(line: 88, column: 16, scope: !1973)
!2005 = !DILocation(line: 89, column: 13, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1973, file: !59, line: 88, column: 21)
!2007 = !DILocation(line: 89, column: 17, scope: !2006)
!2008 = !DILocation(line: 89, column: 26, scope: !2006)
!2009 = !DILocation(line: 89, column: 11, scope: !2006)
!2010 = !DILocation(line: 90, column: 16, scope: !2006)
!2011 = !DILocation(line: 90, column: 13, scope: !2006)
!2012 = !DILocation(line: 91, column: 9, scope: !2006)
!2013 = !DILocation(line: 91, column: 16, scope: !2006)
!2014 = !DILocation(line: 91, column: 18, scope: !2006)
!2015 = !DILocation(line: 92, column: 13, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2017 = distinct !DILexicalBlock(scope: !2006, file: !59, line: 91, column: 25)
!2018 = !DILocation(line: 92, column: 13, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2020 = !DILocation(line: 92, column: 13, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2022 = !DILocation(line: 92, column: 13, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2024 = !DILocation(line: 92, column: 13, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2026 = !DILocation(line: 92, column: 13, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2028 = !DILocation(line: 92, column: 13, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2030 = !DILocation(line: 92, column: 13, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2032 = !DILocation(line: 92, column: 13, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2034 = !DILocation(line: 92, column: 13, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2036 = !DILocation(line: 92, column: 13, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2038 = !DILocation(line: 92, column: 13, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2040 = !DILocation(line: 92, column: 13, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2042 = !DILocation(line: 92, column: 13, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2044 = !DILocation(line: 92, column: 13, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2046 = !DILocation(line: 92, column: 13, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2017, file: !59, line: 92, column: 13)
!2048 = !DILocation(line: 93, column: 10, scope: !2017)
!2049 = !DILocation(line: 94, column: 15, scope: !2017)
!2050 = distinct !{!2050, !2012, !2051, !1380, !1244}
!2051 = !DILocation(line: 95, column: 9, scope: !2006)
!2052 = !DILocation(line: 96, column: 13, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2006, file: !59, line: 96, column: 13)
!2054 = !DILocation(line: 96, column: 15, scope: !2053)
!2055 = !DILocation(line: 96, column: 13, scope: !2006)
!2056 = !DILocation(line: 96, column: 21, scope: !2053)
!2057 = !DILocation(line: 97, column: 23, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2053, file: !59, line: 96, column: 24)
!2059 = !DILocation(line: 97, column: 19, scope: !2058)
!2060 = !DILocation(line: 97, column: 16, scope: !2058)
!2061 = !DILocation(line: 98, column: 12, scope: !2058)
!2062 = !DILocation(line: 98, column: 9, scope: !2058)
!2063 = !DILocation(line: 99, column: 9, scope: !2058)
!2064 = !DILocation(line: 99, column: 18, scope: !2053)
!2065 = distinct !{!2065, !2056, !2066, !1380, !1244}
!2066 = !DILocation(line: 99, column: 21, scope: !2053)
!2067 = !DILocation(line: 100, column: 12, scope: !2006)
!2068 = !DILocation(line: 101, column: 12, scope: !2006)
!2069 = distinct !{!2069, !2002, !2070, !1380, !1244}
!2070 = !DILocation(line: 102, column: 5, scope: !1973)
!2071 = !DILocation(line: 103, column: 13, scope: !1973)
!2072 = !DILocation(line: 103, column: 16, scope: !1973)
!2073 = !DILocation(line: 103, column: 25, scope: !1973)
!2074 = !DILocation(line: 103, column: 23, scope: !1973)
!2075 = !DILocation(line: 103, column: 5, scope: !1973)
!2076 = !DILocation(line: 104, column: 1, scope: !1973)
!2077 = distinct !DISubprogram(name: "longest_match", scope: !3, file: !3, line: 565, type: !2078, scopeLine: 569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!67, !164, !87}
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094}
!2081 = !DILocalVariable(name: "s", arg: 1, scope: !2077, file: !3, line: 566, type: !164)
!2082 = !DILocalVariable(name: "cur_match", arg: 2, scope: !2077, file: !3, line: 567, type: !87)
!2083 = !DILocalVariable(name: "chain_length", scope: !2077, file: !3, line: 570, type: !7)
!2084 = !DILocalVariable(name: "scan", scope: !2077, file: !3, line: 571, type: !41)
!2085 = !DILocalVariable(name: "match", scope: !2077, file: !3, line: 572, type: !41)
!2086 = !DILocalVariable(name: "len", scope: !2077, file: !3, line: 573, type: !52)
!2087 = !DILocalVariable(name: "best_len", scope: !2077, file: !3, line: 574, type: !52)
!2088 = !DILocalVariable(name: "nice_match", scope: !2077, file: !3, line: 575, type: !52)
!2089 = !DILocalVariable(name: "limit", scope: !2077, file: !3, line: 576, type: !87)
!2090 = !DILocalVariable(name: "prev", scope: !2077, file: !3, line: 581, type: !73)
!2091 = !DILocalVariable(name: "wmask", scope: !2077, file: !3, line: 582, type: !67)
!2092 = !DILocalVariable(name: "strend", scope: !2077, file: !3, line: 592, type: !41)
!2093 = !DILocalVariable(name: "scan_end1", scope: !2077, file: !3, line: 593, type: !33)
!2094 = !DILocalVariable(name: "scan_end", scope: !2077, file: !3, line: 594, type: !33)
!2095 = !DILocation(line: 566, column: 17, scope: !2077)
!2096 = !DILocation(line: 567, column: 7, scope: !2077)
!2097 = !DILocation(line: 570, column: 5, scope: !2077)
!2098 = !DILocation(line: 570, column: 14, scope: !2077)
!2099 = !DILocation(line: 570, column: 29, scope: !2077)
!2100 = !DILocation(line: 570, column: 32, scope: !2077)
!2101 = !DILocation(line: 571, column: 5, scope: !2077)
!2102 = !DILocation(line: 571, column: 20, scope: !2077)
!2103 = !DILocation(line: 571, column: 27, scope: !2077)
!2104 = !DILocation(line: 571, column: 30, scope: !2077)
!2105 = !DILocation(line: 571, column: 39, scope: !2077)
!2106 = !DILocation(line: 571, column: 42, scope: !2077)
!2107 = !DILocation(line: 571, column: 37, scope: !2077)
!2108 = !DILocation(line: 572, column: 5, scope: !2077)
!2109 = !DILocation(line: 572, column: 20, scope: !2077)
!2110 = !DILocation(line: 573, column: 5, scope: !2077)
!2111 = !DILocation(line: 573, column: 18, scope: !2077)
!2112 = !DILocation(line: 574, column: 5, scope: !2077)
!2113 = !DILocation(line: 574, column: 9, scope: !2077)
!2114 = !DILocation(line: 574, column: 20, scope: !2077)
!2115 = !DILocation(line: 574, column: 23, scope: !2077)
!2116 = !DILocation(line: 575, column: 5, scope: !2077)
!2117 = !DILocation(line: 575, column: 9, scope: !2077)
!2118 = !DILocation(line: 575, column: 22, scope: !2077)
!2119 = !DILocation(line: 575, column: 25, scope: !2077)
!2120 = !DILocation(line: 576, column: 5, scope: !2077)
!2121 = !DILocation(line: 576, column: 10, scope: !2077)
!2122 = !DILocation(line: 576, column: 18, scope: !2077)
!2123 = !DILocation(line: 576, column: 21, scope: !2077)
!2124 = !DILocation(line: 576, column: 38, scope: !2077)
!2125 = !DILocation(line: 576, column: 30, scope: !2077)
!2126 = !DILocation(line: 577, column: 9, scope: !2077)
!2127 = !DILocation(line: 577, column: 12, scope: !2077)
!2128 = !DILocation(line: 577, column: 29, scope: !2077)
!2129 = !DILocation(line: 577, column: 21, scope: !2077)
!2130 = !DILocation(line: 581, column: 5, scope: !2077)
!2131 = !DILocation(line: 581, column: 10, scope: !2077)
!2132 = !DILocation(line: 581, column: 17, scope: !2077)
!2133 = !DILocation(line: 581, column: 20, scope: !2077)
!2134 = !DILocation(line: 582, column: 5, scope: !2077)
!2135 = !DILocation(line: 582, column: 10, scope: !2077)
!2136 = !DILocation(line: 582, column: 18, scope: !2077)
!2137 = !DILocation(line: 582, column: 21, scope: !2077)
!2138 = !DILocation(line: 592, column: 5, scope: !2077)
!2139 = !DILocation(line: 592, column: 20, scope: !2077)
!2140 = !DILocation(line: 592, column: 29, scope: !2077)
!2141 = !DILocation(line: 592, column: 32, scope: !2077)
!2142 = !DILocation(line: 592, column: 41, scope: !2077)
!2143 = !DILocation(line: 592, column: 44, scope: !2077)
!2144 = !DILocation(line: 592, column: 39, scope: !2077)
!2145 = !DILocation(line: 592, column: 53, scope: !2077)
!2146 = !DILocation(line: 593, column: 5, scope: !2077)
!2147 = !DILocation(line: 593, column: 19, scope: !2077)
!2148 = !DILocation(line: 593, column: 32, scope: !2077)
!2149 = !DILocation(line: 593, column: 37, scope: !2077)
!2150 = !DILocation(line: 593, column: 45, scope: !2077)
!2151 = !DILocation(line: 594, column: 5, scope: !2077)
!2152 = !DILocation(line: 594, column: 19, scope: !2077)
!2153 = !DILocation(line: 594, column: 32, scope: !2077)
!2154 = !DILocation(line: 594, column: 37, scope: !2077)
!2155 = !DILocation(line: 603, column: 9, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 603, column: 9)
!2157 = !DILocation(line: 603, column: 12, scope: !2156)
!2158 = !DILocation(line: 603, column: 27, scope: !2156)
!2159 = !DILocation(line: 603, column: 30, scope: !2156)
!2160 = !DILocation(line: 603, column: 24, scope: !2156)
!2161 = !DILocation(line: 603, column: 9, scope: !2077)
!2162 = !DILocation(line: 604, column: 22, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 603, column: 42)
!2164 = !DILocation(line: 605, column: 5, scope: !2163)
!2165 = !DILocation(line: 609, column: 15, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 609, column: 9)
!2167 = !DILocation(line: 609, column: 28, scope: !2166)
!2168 = !DILocation(line: 609, column: 31, scope: !2166)
!2169 = !DILocation(line: 609, column: 26, scope: !2166)
!2170 = !DILocation(line: 609, column: 9, scope: !2077)
!2171 = !DILocation(line: 609, column: 55, scope: !2166)
!2172 = !DILocation(line: 609, column: 58, scope: !2166)
!2173 = !DILocation(line: 609, column: 53, scope: !2166)
!2174 = !DILocation(line: 609, column: 42, scope: !2166)
!2175 = !DILocation(line: 613, column: 5, scope: !2077)
!2176 = !DILocation(line: 615, column: 17, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 613, column: 8)
!2178 = !DILocation(line: 615, column: 20, scope: !2177)
!2179 = !DILocation(line: 615, column: 29, scope: !2177)
!2180 = !DILocation(line: 615, column: 27, scope: !2177)
!2181 = !DILocation(line: 615, column: 15, scope: !2177)
!2182 = !DILocation(line: 655, column: 13, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 655, column: 13)
!2184 = !DILocation(line: 655, column: 19, scope: !2183)
!2185 = !DILocation(line: 655, column: 34, scope: !2183)
!2186 = !DILocation(line: 655, column: 31, scope: !2183)
!2187 = !DILocation(line: 655, column: 44, scope: !2183)
!2188 = !DILocation(line: 656, column: 13, scope: !2183)
!2189 = !DILocation(line: 656, column: 19, scope: !2183)
!2190 = !DILocation(line: 656, column: 27, scope: !2183)
!2191 = !DILocation(line: 656, column: 34, scope: !2183)
!2192 = !DILocation(line: 656, column: 31, scope: !2183)
!2193 = !DILocation(line: 656, column: 44, scope: !2183)
!2194 = !DILocation(line: 657, column: 14, scope: !2183)
!2195 = !DILocation(line: 657, column: 13, scope: !2183)
!2196 = !DILocation(line: 657, column: 35, scope: !2183)
!2197 = !DILocation(line: 657, column: 34, scope: !2183)
!2198 = !DILocation(line: 657, column: 31, scope: !2183)
!2199 = !DILocation(line: 657, column: 44, scope: !2183)
!2200 = !DILocation(line: 658, column: 14, scope: !2183)
!2201 = !DILocation(line: 658, column: 13, scope: !2183)
!2202 = !DILocation(line: 658, column: 34, scope: !2183)
!2203 = !DILocation(line: 658, column: 31, scope: !2183)
!2204 = !DILocation(line: 655, column: 13, scope: !2177)
!2205 = !DILocation(line: 658, column: 48, scope: !2183)
!2206 = !DILocation(line: 666, column: 14, scope: !2177)
!2207 = !DILocation(line: 666, column: 25, scope: !2177)
!2208 = !DILocation(line: 672, column: 9, scope: !2177)
!2209 = !DILocation(line: 673, column: 9, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 672, column: 12)
!2211 = !DILocation(line: 673, column: 19, scope: !2177)
!2212 = !DILocation(line: 673, column: 18, scope: !2177)
!2213 = !DILocation(line: 673, column: 30, scope: !2177)
!2214 = !DILocation(line: 673, column: 29, scope: !2177)
!2215 = !DILocation(line: 673, column: 26, scope: !2177)
!2216 = !DILocation(line: 673, column: 38, scope: !2177)
!2217 = !DILocation(line: 673, column: 42, scope: !2177)
!2218 = !DILocation(line: 673, column: 41, scope: !2177)
!2219 = !DILocation(line: 673, column: 53, scope: !2177)
!2220 = !DILocation(line: 673, column: 52, scope: !2177)
!2221 = !DILocation(line: 673, column: 49, scope: !2177)
!2222 = !DILocation(line: 673, column: 61, scope: !2177)
!2223 = !DILocation(line: 674, column: 19, scope: !2177)
!2224 = !DILocation(line: 674, column: 18, scope: !2177)
!2225 = !DILocation(line: 674, column: 30, scope: !2177)
!2226 = !DILocation(line: 674, column: 29, scope: !2177)
!2227 = !DILocation(line: 674, column: 26, scope: !2177)
!2228 = !DILocation(line: 674, column: 38, scope: !2177)
!2229 = !DILocation(line: 674, column: 42, scope: !2177)
!2230 = !DILocation(line: 674, column: 41, scope: !2177)
!2231 = !DILocation(line: 674, column: 53, scope: !2177)
!2232 = !DILocation(line: 674, column: 52, scope: !2177)
!2233 = !DILocation(line: 674, column: 49, scope: !2177)
!2234 = !DILocation(line: 674, column: 61, scope: !2177)
!2235 = !DILocation(line: 675, column: 19, scope: !2177)
!2236 = !DILocation(line: 675, column: 18, scope: !2177)
!2237 = !DILocation(line: 675, column: 30, scope: !2177)
!2238 = !DILocation(line: 675, column: 29, scope: !2177)
!2239 = !DILocation(line: 675, column: 26, scope: !2177)
!2240 = !DILocation(line: 675, column: 38, scope: !2177)
!2241 = !DILocation(line: 675, column: 42, scope: !2177)
!2242 = !DILocation(line: 675, column: 41, scope: !2177)
!2243 = !DILocation(line: 675, column: 53, scope: !2177)
!2244 = !DILocation(line: 675, column: 52, scope: !2177)
!2245 = !DILocation(line: 675, column: 49, scope: !2177)
!2246 = !DILocation(line: 675, column: 61, scope: !2177)
!2247 = !DILocation(line: 676, column: 19, scope: !2177)
!2248 = !DILocation(line: 676, column: 18, scope: !2177)
!2249 = !DILocation(line: 676, column: 30, scope: !2177)
!2250 = !DILocation(line: 676, column: 29, scope: !2177)
!2251 = !DILocation(line: 676, column: 26, scope: !2177)
!2252 = !DILocation(line: 676, column: 38, scope: !2177)
!2253 = !DILocation(line: 676, column: 42, scope: !2177)
!2254 = !DILocation(line: 676, column: 41, scope: !2177)
!2255 = !DILocation(line: 676, column: 53, scope: !2177)
!2256 = !DILocation(line: 676, column: 52, scope: !2177)
!2257 = !DILocation(line: 676, column: 49, scope: !2177)
!2258 = !DILocation(line: 676, column: 61, scope: !2177)
!2259 = !DILocation(line: 677, column: 18, scope: !2177)
!2260 = !DILocation(line: 677, column: 25, scope: !2177)
!2261 = !DILocation(line: 677, column: 23, scope: !2177)
!2262 = !DILocation(line: 0, scope: !2177)
!2263 = distinct !{!2263, !2208, !2264, !1380, !1244}
!2264 = !DILocation(line: 677, column: 31, scope: !2177)
!2265 = !DILocation(line: 681, column: 33, scope: !2177)
!2266 = !DILocation(line: 681, column: 42, scope: !2177)
!2267 = !DILocation(line: 681, column: 40, scope: !2177)
!2268 = !DILocation(line: 681, column: 27, scope: !2177)
!2269 = !DILocation(line: 681, column: 25, scope: !2177)
!2270 = !DILocation(line: 681, column: 13, scope: !2177)
!2271 = !DILocation(line: 682, column: 16, scope: !2177)
!2272 = !DILocation(line: 682, column: 23, scope: !2177)
!2273 = !DILocation(line: 682, column: 14, scope: !2177)
!2274 = !DILocation(line: 686, column: 13, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 686, column: 13)
!2276 = !DILocation(line: 686, column: 19, scope: !2275)
!2277 = !DILocation(line: 686, column: 17, scope: !2275)
!2278 = !DILocation(line: 686, column: 13, scope: !2177)
!2279 = !DILocation(line: 687, column: 30, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 686, column: 29)
!2281 = !DILocation(line: 687, column: 13, scope: !2280)
!2282 = !DILocation(line: 687, column: 16, scope: !2280)
!2283 = !DILocation(line: 687, column: 28, scope: !2280)
!2284 = !DILocation(line: 688, column: 24, scope: !2280)
!2285 = !DILocation(line: 688, column: 22, scope: !2280)
!2286 = !DILocation(line: 689, column: 17, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 689, column: 17)
!2288 = !DILocation(line: 689, column: 24, scope: !2287)
!2289 = !DILocation(line: 689, column: 21, scope: !2287)
!2290 = !DILocation(line: 689, column: 17, scope: !2280)
!2291 = !DILocation(line: 689, column: 36, scope: !2287)
!2292 = !DILocation(line: 693, column: 26, scope: !2280)
!2293 = !DILocation(line: 693, column: 31, scope: !2280)
!2294 = !DILocation(line: 693, column: 39, scope: !2280)
!2295 = !DILocation(line: 693, column: 24, scope: !2280)
!2296 = !DILocation(line: 694, column: 26, scope: !2280)
!2297 = !DILocation(line: 694, column: 31, scope: !2280)
!2298 = !DILocation(line: 694, column: 24, scope: !2280)
!2299 = !DILocation(line: 696, column: 9, scope: !2280)
!2300 = !DILocation(line: 697, column: 5, scope: !2177)
!2301 = !DILocation(line: 697, column: 27, scope: !2077)
!2302 = !DILocation(line: 697, column: 32, scope: !2077)
!2303 = !DILocation(line: 697, column: 44, scope: !2077)
!2304 = !DILocation(line: 697, column: 42, scope: !2077)
!2305 = !DILocation(line: 697, column: 25, scope: !2077)
!2306 = !DILocation(line: 697, column: 54, scope: !2077)
!2307 = !DILocation(line: 697, column: 52, scope: !2077)
!2308 = !DILocation(line: 698, column: 14, scope: !2077)
!2309 = !DILocation(line: 698, column: 17, scope: !2077)
!2310 = !DILocation(line: 698, column: 32, scope: !2077)
!2311 = !DILocation(line: 0, scope: !2077)
!2312 = distinct !{!2312, !2175, !2313, !1380, !1244}
!2313 = !DILocation(line: 698, column: 36, scope: !2077)
!2314 = !DILocation(line: 700, column: 15, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 700, column: 9)
!2316 = !DILocation(line: 700, column: 27, scope: !2315)
!2317 = !DILocation(line: 700, column: 30, scope: !2315)
!2318 = !DILocation(line: 700, column: 24, scope: !2315)
!2319 = !DILocation(line: 700, column: 9, scope: !2077)
!2320 = !DILocation(line: 700, column: 48, scope: !2315)
!2321 = !DILocation(line: 700, column: 41, scope: !2315)
!2322 = !DILocation(line: 701, column: 12, scope: !2077)
!2323 = !DILocation(line: 701, column: 15, scope: !2077)
!2324 = !DILocation(line: 701, column: 5, scope: !2077)
!2325 = !DILocation(line: 702, column: 1, scope: !2077)
!2326 = !DISubprogram(name: "zlib_tr_tally", scope: !6, file: !6, line: 275, type: !2327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!52, !164, !7, !7}
