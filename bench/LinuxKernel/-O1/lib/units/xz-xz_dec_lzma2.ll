; ModuleID = 'lib/xz/xz_dec_lzma2.c'
source_filename = "lib/xz/xz_dec_lzma2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_buf = type { ptr, i64, i64, ptr, i64, i64 }
%struct.xz_dec_lzma2 = type { %struct.rc_dec, %struct.dictionary, %struct.lzma2_dec, %struct.lzma_dec, %struct.anon }
%struct.rc_dec = type { i32, i32, i32, ptr, i64, i64 }
%struct.dictionary = type { ptr, i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.lzma2_dec = type { i32, i32, i32, i32, i8, i8 }
%struct.lzma_dec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_len_dec, %struct.lzma_len_dec, [16 x [768 x i16]] }
%struct.lzma_len_dec = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16] }
%struct.anon = type { i32, [63 x i8] }

@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xz_dec_lzma2_run(ptr noundef %s, ptr noundef %b) #0 align 16 !dbg !96 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x122 = alloca i64, align 8
  %__UNIQUE_ID___y123 = alloca i64, align 8
  %tmp131 = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !215, metadata !DIExpression()), !dbg !223
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !216, metadata !DIExpression()), !dbg !224
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #14, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !217, metadata !DIExpression()), !dbg !226
  br label %while.cond, !dbg !227

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load ptr, ptr %b.addr, align 8, !dbg !228
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %0, i32 0, i32 1, !dbg !229
  %1 = load i64, ptr %in_pos, align 8, !dbg !229
  %2 = load ptr, ptr %b.addr, align 8, !dbg !230
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 2, !dbg !231
  %3 = load i64, ptr %in_size, align 8, !dbg !231
  %cmp = icmp ult i64 %1, %3, !dbg !232
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !233

lor.rhs:                                          ; preds = %while.cond
  %4 = load ptr, ptr %s.addr, align 8, !dbg !234
  %lzma2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %4, i32 0, i32 2, !dbg !235
  %sequence = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2, i32 0, i32 0, !dbg !236
  %5 = load i32, ptr %sequence, align 8, !dbg !236
  %cmp1 = icmp eq i32 %5, 7, !dbg !237
  br label %lor.end, !dbg !233

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end, !dbg !227

while.body:                                       ; preds = %lor.end
  %7 = load ptr, ptr %s.addr, align 8, !dbg !238
  %lzma22 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %7, i32 0, i32 2, !dbg !239
  %sequence3 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma22, i32 0, i32 0, !dbg !240
  %8 = load i32, ptr %sequence3, align 8, !dbg !240
  switch i32 %8, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb55
    i32 2, label %sw.bb66
    i32 3, label %sw.bb78
    i32 4, label %sw.bb88
    i32 5, label %sw.bb102
    i32 6, label %sw.bb111
    i32 7, label %sw.bb125
    i32 8, label %sw.bb179
  ], !dbg !241

sw.bb:                                            ; preds = %while.body
  %9 = load ptr, ptr %b.addr, align 8, !dbg !242
  %in = getelementptr inbounds %struct.xz_buf, ptr %9, i32 0, i32 0, !dbg !243
  %10 = load ptr, ptr %in, align 8, !dbg !243
  %11 = load ptr, ptr %b.addr, align 8, !dbg !244
  %in_pos4 = getelementptr inbounds %struct.xz_buf, ptr %11, i32 0, i32 1, !dbg !245
  %12 = load i64, ptr %in_pos4, align 8, !dbg !246
  %inc = add i64 %12, 1, !dbg !246
  store i64 %inc, ptr %in_pos4, align 8, !dbg !246
  %arrayidx = getelementptr i8, ptr %10, i64 %12, !dbg !242
  %13 = load i8, ptr %arrayidx, align 1, !dbg !242
  %conv = zext i8 %13 to i32, !dbg !242
  store i32 %conv, ptr %tmp, align 4, !dbg !247
  %14 = load i32, ptr %tmp, align 4, !dbg !248
  %cmp5 = icmp eq i32 %14, 0, !dbg !250
  br i1 %cmp5, label %if.then, label %if.end, !dbg !251

if.then:                                          ; preds = %sw.bb
  store i32 1, ptr %retval, align 4, !dbg !252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !252

if.end:                                           ; preds = %sw.bb
  %15 = load i32, ptr %tmp, align 4, !dbg !253
  %cmp7 = icmp uge i32 %15, 224, !dbg !255
  br i1 %cmp7, label %if.then11, label %lor.lhs.false, !dbg !256

lor.lhs.false:                                    ; preds = %if.end
  %16 = load i32, ptr %tmp, align 4, !dbg !257
  %cmp9 = icmp eq i32 %16, 1, !dbg !258
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !259

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  %17 = load ptr, ptr %s.addr, align 8, !dbg !260
  %lzma212 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %17, i32 0, i32 2, !dbg !262
  %need_props = getelementptr inbounds %struct.lzma2_dec, ptr %lzma212, i32 0, i32 5, !dbg !263
  store i8 1, ptr %need_props, align 1, !dbg !264
  %18 = load ptr, ptr %s.addr, align 8, !dbg !265
  %lzma213 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %18, i32 0, i32 2, !dbg !266
  %need_dict_reset = getelementptr inbounds %struct.lzma2_dec, ptr %lzma213, i32 0, i32 4, !dbg !267
  store i8 0, ptr %need_dict_reset, align 8, !dbg !268
  %19 = load ptr, ptr %s.addr, align 8, !dbg !269
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %19, i32 0, i32 1, !dbg !270
  %20 = load ptr, ptr %b.addr, align 8, !dbg !271
  call void @dict_reset(ptr noundef %dict, ptr noundef %20) #15, !dbg !272
  br label %if.end18, !dbg !273

if.else:                                          ; preds = %lor.lhs.false
  %21 = load ptr, ptr %s.addr, align 8, !dbg !274
  %lzma214 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %21, i32 0, i32 2, !dbg !276
  %need_dict_reset15 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma214, i32 0, i32 4, !dbg !277
  %22 = load i8, ptr %need_dict_reset15, align 8, !dbg !277, !range !278, !noundef !279
  %tobool = trunc i8 %22 to i1, !dbg !277
  br i1 %tobool, label %if.then16, label %if.end17, !dbg !280

if.then16:                                        ; preds = %if.else
  store i32 7, ptr %retval, align 4, !dbg !281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !281

if.end17:                                         ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then11
  %23 = load i32, ptr %tmp, align 4, !dbg !283
  %cmp19 = icmp uge i32 %23, 128, !dbg !285
  br i1 %cmp19, label %if.then21, label %if.else45, !dbg !286

if.then21:                                        ; preds = %if.end18
  %24 = load i32, ptr %tmp, align 4, !dbg !287
  %and = and i32 %24, 31, !dbg !289
  %shl = shl i32 %and, 16, !dbg !290
  %25 = load ptr, ptr %s.addr, align 8, !dbg !291
  %lzma222 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %25, i32 0, i32 2, !dbg !292
  %uncompressed = getelementptr inbounds %struct.lzma2_dec, ptr %lzma222, i32 0, i32 2, !dbg !293
  store i32 %shl, ptr %uncompressed, align 8, !dbg !294
  %26 = load ptr, ptr %s.addr, align 8, !dbg !295
  %lzma223 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %26, i32 0, i32 2, !dbg !296
  %sequence24 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma223, i32 0, i32 0, !dbg !297
  store i32 1, ptr %sequence24, align 8, !dbg !298
  %27 = load i32, ptr %tmp, align 4, !dbg !299
  %cmp25 = icmp uge i32 %27, 192, !dbg !301
  br i1 %cmp25, label %if.then27, label %if.else31, !dbg !302

if.then27:                                        ; preds = %if.then21
  %28 = load ptr, ptr %s.addr, align 8, !dbg !303
  %lzma228 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %28, i32 0, i32 2, !dbg !305
  %need_props29 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma228, i32 0, i32 5, !dbg !306
  store i8 0, ptr %need_props29, align 1, !dbg !307
  %29 = load ptr, ptr %s.addr, align 8, !dbg !308
  %lzma230 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %29, i32 0, i32 2, !dbg !309
  %next_sequence = getelementptr inbounds %struct.lzma2_dec, ptr %lzma230, i32 0, i32 1, !dbg !310
  store i32 5, ptr %next_sequence, align 4, !dbg !311
  br label %if.end44, !dbg !312

if.else31:                                        ; preds = %if.then21
  %30 = load ptr, ptr %s.addr, align 8, !dbg !313
  %lzma232 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %30, i32 0, i32 2, !dbg !315
  %need_props33 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma232, i32 0, i32 5, !dbg !316
  %31 = load i8, ptr %need_props33, align 1, !dbg !316, !range !278, !noundef !279
  %tobool34 = trunc i8 %31 to i1, !dbg !316
  br i1 %tobool34, label %if.then35, label %if.else36, !dbg !317

if.then35:                                        ; preds = %if.else31
  store i32 7, ptr %retval, align 4, !dbg !318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !318

if.else36:                                        ; preds = %if.else31
  %32 = load ptr, ptr %s.addr, align 8, !dbg !320
  %lzma237 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %32, i32 0, i32 2, !dbg !322
  %next_sequence38 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma237, i32 0, i32 1, !dbg !323
  store i32 6, ptr %next_sequence38, align 4, !dbg !324
  %33 = load i32, ptr %tmp, align 4, !dbg !325
  %cmp39 = icmp uge i32 %33, 160, !dbg !327
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !328

if.then41:                                        ; preds = %if.else36
  %34 = load ptr, ptr %s.addr, align 8, !dbg !329
  call void @lzma_reset(ptr noundef %34) #15, !dbg !330
  br label %if.end42, !dbg !330

if.end42:                                         ; preds = %if.then41, %if.else36
  br label %if.end43

if.end43:                                         ; preds = %if.end42
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then27
  br label %if.end54, !dbg !331

if.else45:                                        ; preds = %if.end18
  %35 = load i32, ptr %tmp, align 4, !dbg !332
  %cmp46 = icmp ugt i32 %35, 2, !dbg !335
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !336

if.then48:                                        ; preds = %if.else45
  store i32 7, ptr %retval, align 4, !dbg !337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !337

if.end49:                                         ; preds = %if.else45
  %36 = load ptr, ptr %s.addr, align 8, !dbg !338
  %lzma250 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %36, i32 0, i32 2, !dbg !339
  %sequence51 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma250, i32 0, i32 0, !dbg !340
  store i32 3, ptr %sequence51, align 8, !dbg !341
  %37 = load ptr, ptr %s.addr, align 8, !dbg !342
  %lzma252 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %37, i32 0, i32 2, !dbg !343
  %next_sequence53 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma252, i32 0, i32 1, !dbg !344
  store i32 8, ptr %next_sequence53, align 4, !dbg !345
  br label %if.end54

if.end54:                                         ; preds = %if.end49, %if.end44
  br label %sw.epilog, !dbg !346

sw.bb55:                                          ; preds = %while.body
  %38 = load ptr, ptr %b.addr, align 8, !dbg !347
  %in56 = getelementptr inbounds %struct.xz_buf, ptr %38, i32 0, i32 0, !dbg !348
  %39 = load ptr, ptr %in56, align 8, !dbg !348
  %40 = load ptr, ptr %b.addr, align 8, !dbg !349
  %in_pos57 = getelementptr inbounds %struct.xz_buf, ptr %40, i32 0, i32 1, !dbg !350
  %41 = load i64, ptr %in_pos57, align 8, !dbg !351
  %inc58 = add i64 %41, 1, !dbg !351
  store i64 %inc58, ptr %in_pos57, align 8, !dbg !351
  %arrayidx59 = getelementptr i8, ptr %39, i64 %41, !dbg !347
  %42 = load i8, ptr %arrayidx59, align 1, !dbg !347
  %conv60 = zext i8 %42 to i32, !dbg !352
  %shl61 = shl i32 %conv60, 8, !dbg !353
  %43 = load ptr, ptr %s.addr, align 8, !dbg !354
  %lzma262 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %43, i32 0, i32 2, !dbg !355
  %uncompressed63 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma262, i32 0, i32 2, !dbg !356
  %44 = load i32, ptr %uncompressed63, align 8, !dbg !357
  %add = add i32 %44, %shl61, !dbg !357
  store i32 %add, ptr %uncompressed63, align 8, !dbg !357
  %45 = load ptr, ptr %s.addr, align 8, !dbg !358
  %lzma264 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %45, i32 0, i32 2, !dbg !359
  %sequence65 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma264, i32 0, i32 0, !dbg !360
  store i32 2, ptr %sequence65, align 8, !dbg !361
  br label %sw.epilog, !dbg !362

sw.bb66:                                          ; preds = %while.body
  %46 = load ptr, ptr %b.addr, align 8, !dbg !363
  %in67 = getelementptr inbounds %struct.xz_buf, ptr %46, i32 0, i32 0, !dbg !364
  %47 = load ptr, ptr %in67, align 8, !dbg !364
  %48 = load ptr, ptr %b.addr, align 8, !dbg !365
  %in_pos68 = getelementptr inbounds %struct.xz_buf, ptr %48, i32 0, i32 1, !dbg !366
  %49 = load i64, ptr %in_pos68, align 8, !dbg !367
  %inc69 = add i64 %49, 1, !dbg !367
  store i64 %inc69, ptr %in_pos68, align 8, !dbg !367
  %arrayidx70 = getelementptr i8, ptr %47, i64 %49, !dbg !363
  %50 = load i8, ptr %arrayidx70, align 1, !dbg !363
  %conv71 = zext i8 %50 to i32, !dbg !368
  %add72 = add i32 %conv71, 1, !dbg !369
  %51 = load ptr, ptr %s.addr, align 8, !dbg !370
  %lzma273 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %51, i32 0, i32 2, !dbg !371
  %uncompressed74 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma273, i32 0, i32 2, !dbg !372
  %52 = load i32, ptr %uncompressed74, align 8, !dbg !373
  %add75 = add i32 %52, %add72, !dbg !373
  store i32 %add75, ptr %uncompressed74, align 8, !dbg !373
  %53 = load ptr, ptr %s.addr, align 8, !dbg !374
  %lzma276 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %53, i32 0, i32 2, !dbg !375
  %sequence77 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma276, i32 0, i32 0, !dbg !376
  store i32 3, ptr %sequence77, align 8, !dbg !377
  br label %sw.epilog, !dbg !378

sw.bb78:                                          ; preds = %while.body
  %54 = load ptr, ptr %b.addr, align 8, !dbg !379
  %in79 = getelementptr inbounds %struct.xz_buf, ptr %54, i32 0, i32 0, !dbg !380
  %55 = load ptr, ptr %in79, align 8, !dbg !380
  %56 = load ptr, ptr %b.addr, align 8, !dbg !381
  %in_pos80 = getelementptr inbounds %struct.xz_buf, ptr %56, i32 0, i32 1, !dbg !382
  %57 = load i64, ptr %in_pos80, align 8, !dbg !383
  %inc81 = add i64 %57, 1, !dbg !383
  store i64 %inc81, ptr %in_pos80, align 8, !dbg !383
  %arrayidx82 = getelementptr i8, ptr %55, i64 %57, !dbg !379
  %58 = load i8, ptr %arrayidx82, align 1, !dbg !379
  %conv83 = zext i8 %58 to i32, !dbg !384
  %shl84 = shl i32 %conv83, 8, !dbg !385
  %59 = load ptr, ptr %s.addr, align 8, !dbg !386
  %lzma285 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %59, i32 0, i32 2, !dbg !387
  %compressed = getelementptr inbounds %struct.lzma2_dec, ptr %lzma285, i32 0, i32 3, !dbg !388
  store i32 %shl84, ptr %compressed, align 4, !dbg !389
  %60 = load ptr, ptr %s.addr, align 8, !dbg !390
  %lzma286 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %60, i32 0, i32 2, !dbg !391
  %sequence87 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma286, i32 0, i32 0, !dbg !392
  store i32 4, ptr %sequence87, align 8, !dbg !393
  br label %sw.epilog, !dbg !394

sw.bb88:                                          ; preds = %while.body
  %61 = load ptr, ptr %b.addr, align 8, !dbg !395
  %in89 = getelementptr inbounds %struct.xz_buf, ptr %61, i32 0, i32 0, !dbg !396
  %62 = load ptr, ptr %in89, align 8, !dbg !396
  %63 = load ptr, ptr %b.addr, align 8, !dbg !397
  %in_pos90 = getelementptr inbounds %struct.xz_buf, ptr %63, i32 0, i32 1, !dbg !398
  %64 = load i64, ptr %in_pos90, align 8, !dbg !399
  %inc91 = add i64 %64, 1, !dbg !399
  store i64 %inc91, ptr %in_pos90, align 8, !dbg !399
  %arrayidx92 = getelementptr i8, ptr %62, i64 %64, !dbg !395
  %65 = load i8, ptr %arrayidx92, align 1, !dbg !395
  %conv93 = zext i8 %65 to i32, !dbg !400
  %add94 = add i32 %conv93, 1, !dbg !401
  %66 = load ptr, ptr %s.addr, align 8, !dbg !402
  %lzma295 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %66, i32 0, i32 2, !dbg !403
  %compressed96 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma295, i32 0, i32 3, !dbg !404
  %67 = load i32, ptr %compressed96, align 4, !dbg !405
  %add97 = add i32 %67, %add94, !dbg !405
  store i32 %add97, ptr %compressed96, align 4, !dbg !405
  %68 = load ptr, ptr %s.addr, align 8, !dbg !406
  %lzma298 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %68, i32 0, i32 2, !dbg !407
  %next_sequence99 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma298, i32 0, i32 1, !dbg !408
  %69 = load i32, ptr %next_sequence99, align 4, !dbg !408
  %70 = load ptr, ptr %s.addr, align 8, !dbg !409
  %lzma2100 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %70, i32 0, i32 2, !dbg !410
  %sequence101 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2100, i32 0, i32 0, !dbg !411
  store i32 %69, ptr %sequence101, align 8, !dbg !412
  br label %sw.epilog, !dbg !413

sw.bb102:                                         ; preds = %while.body
  %71 = load ptr, ptr %s.addr, align 8, !dbg !414
  %72 = load ptr, ptr %b.addr, align 8, !dbg !416
  %in103 = getelementptr inbounds %struct.xz_buf, ptr %72, i32 0, i32 0, !dbg !417
  %73 = load ptr, ptr %in103, align 8, !dbg !417
  %74 = load ptr, ptr %b.addr, align 8, !dbg !418
  %in_pos104 = getelementptr inbounds %struct.xz_buf, ptr %74, i32 0, i32 1, !dbg !419
  %75 = load i64, ptr %in_pos104, align 8, !dbg !420
  %inc105 = add i64 %75, 1, !dbg !420
  store i64 %inc105, ptr %in_pos104, align 8, !dbg !420
  %arrayidx106 = getelementptr i8, ptr %73, i64 %75, !dbg !416
  %76 = load i8, ptr %arrayidx106, align 1, !dbg !416
  %call = call zeroext i1 @lzma_props(ptr noundef %71, i8 noundef zeroext %76) #15, !dbg !421
  br i1 %call, label %if.end108, label %if.then107, !dbg !422

if.then107:                                       ; preds = %sw.bb102
  store i32 7, ptr %retval, align 4, !dbg !423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !423

if.end108:                                        ; preds = %sw.bb102
  %77 = load ptr, ptr %s.addr, align 8, !dbg !424
  %lzma2109 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %77, i32 0, i32 2, !dbg !425
  %sequence110 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2109, i32 0, i32 0, !dbg !426
  store i32 6, ptr %sequence110, align 8, !dbg !427
  br label %sw.bb111, !dbg !424

sw.bb111:                                         ; preds = %while.body, %if.end108
  %78 = load ptr, ptr %s.addr, align 8, !dbg !428
  %lzma2112 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %78, i32 0, i32 2, !dbg !430
  %compressed113 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2112, i32 0, i32 3, !dbg !431
  %79 = load i32, ptr %compressed113, align 4, !dbg !431
  %cmp114 = icmp ult i32 %79, 5, !dbg !432
  br i1 %cmp114, label %if.then116, label %if.end117, !dbg !433

if.then116:                                       ; preds = %sw.bb111
  store i32 7, ptr %retval, align 4, !dbg !434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !434

if.end117:                                        ; preds = %sw.bb111
  %80 = load ptr, ptr %s.addr, align 8, !dbg !435
  %rc = getelementptr inbounds %struct.xz_dec_lzma2, ptr %80, i32 0, i32 0, !dbg !437
  %81 = load ptr, ptr %b.addr, align 8, !dbg !438
  %call118 = call zeroext i1 @rc_read_init(ptr noundef %rc, ptr noundef %81) #15, !dbg !439
  br i1 %call118, label %if.end120, label %if.then119, !dbg !440

if.then119:                                       ; preds = %if.end117
  store i32 0, ptr %retval, align 4, !dbg !441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !441

if.end120:                                        ; preds = %if.end117
  %82 = load ptr, ptr %s.addr, align 8, !dbg !442
  %lzma2121 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %82, i32 0, i32 2, !dbg !443
  %compressed122 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2121, i32 0, i32 3, !dbg !444
  %83 = load i32, ptr %compressed122, align 4, !dbg !445
  %sub = sub i32 %83, 5, !dbg !445
  store i32 %sub, ptr %compressed122, align 4, !dbg !445
  %84 = load ptr, ptr %s.addr, align 8, !dbg !446
  %lzma2123 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %84, i32 0, i32 2, !dbg !447
  %sequence124 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2123, i32 0, i32 0, !dbg !448
  store i32 7, ptr %sequence124, align 8, !dbg !449
  br label %sw.bb125, !dbg !446

sw.bb125:                                         ; preds = %while.body, %if.end120
  %85 = load ptr, ptr %s.addr, align 8, !dbg !450
  %dict126 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %85, i32 0, i32 1, !dbg !451
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x122) #14, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x122, metadata !218, metadata !DIExpression()), !dbg !452
  %86 = load ptr, ptr %b.addr, align 8, !dbg !452
  %out_size = getelementptr inbounds %struct.xz_buf, ptr %86, i32 0, i32 5, !dbg !452
  %87 = load i64, ptr %out_size, align 8, !dbg !452
  %88 = load ptr, ptr %b.addr, align 8, !dbg !452
  %out_pos = getelementptr inbounds %struct.xz_buf, ptr %88, i32 0, i32 4, !dbg !452
  %89 = load i64, ptr %out_pos, align 8, !dbg !452
  %sub127 = sub i64 %87, %89, !dbg !452
  store i64 %sub127, ptr %__UNIQUE_ID___x122, align 8, !dbg !452
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y123) #14, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y123, metadata !222, metadata !DIExpression()), !dbg !452
  %90 = load ptr, ptr %s.addr, align 8, !dbg !452
  %lzma2128 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %90, i32 0, i32 2, !dbg !452
  %uncompressed129 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2128, i32 0, i32 2, !dbg !452
  %91 = load i32, ptr %uncompressed129, align 8, !dbg !452
  %conv130 = zext i32 %91 to i64, !dbg !452
  store i64 %conv130, ptr %__UNIQUE_ID___y123, align 8, !dbg !452
  %92 = load i64, ptr %__UNIQUE_ID___x122, align 8, !dbg !452
  %93 = load i64, ptr %__UNIQUE_ID___y123, align 8, !dbg !452
  %cmp132 = icmp ult i64 %92, %93, !dbg !452
  br i1 %cmp132, label %cond.true, label %cond.false, !dbg !452

cond.true:                                        ; preds = %sw.bb125
  %94 = load i64, ptr %__UNIQUE_ID___x122, align 8, !dbg !452
  br label %cond.end, !dbg !452

cond.false:                                       ; preds = %sw.bb125
  %95 = load i64, ptr %__UNIQUE_ID___y123, align 8, !dbg !452
  br label %cond.end, !dbg !452

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %94, %cond.true ], [ %95, %cond.false ], !dbg !452
  store i64 %cond, ptr %tmp131, align 8, !dbg !452
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y123) #14, !dbg !453
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x122) #14, !dbg !453
  %96 = load i64, ptr %tmp131, align 8, !dbg !452
  call void @dict_limit(ptr noundef %dict126, i64 noundef %96) #15, !dbg !454
  %97 = load ptr, ptr %s.addr, align 8, !dbg !455
  %98 = load ptr, ptr %b.addr, align 8, !dbg !457
  %call134 = call zeroext i1 @lzma2_lzma(ptr noundef %97, ptr noundef %98) #15, !dbg !458
  br i1 %call134, label %if.end136, label %if.then135, !dbg !459

if.then135:                                       ; preds = %cond.end
  store i32 7, ptr %retval, align 4, !dbg !460
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !460

if.end136:                                        ; preds = %cond.end
  %99 = load ptr, ptr %s.addr, align 8, !dbg !461
  %dict137 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %99, i32 0, i32 1, !dbg !462
  %100 = load ptr, ptr %b.addr, align 8, !dbg !463
  %call138 = call i32 @dict_flush(ptr noundef %dict137, ptr noundef %100) #15, !dbg !464
  %101 = load ptr, ptr %s.addr, align 8, !dbg !465
  %lzma2139 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %101, i32 0, i32 2, !dbg !466
  %uncompressed140 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2139, i32 0, i32 2, !dbg !467
  %102 = load i32, ptr %uncompressed140, align 8, !dbg !468
  %sub141 = sub i32 %102, %call138, !dbg !468
  store i32 %sub141, ptr %uncompressed140, align 8, !dbg !468
  %103 = load ptr, ptr %s.addr, align 8, !dbg !469
  %lzma2142 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %103, i32 0, i32 2, !dbg !471
  %uncompressed143 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2142, i32 0, i32 2, !dbg !472
  %104 = load i32, ptr %uncompressed143, align 8, !dbg !472
  %cmp144 = icmp eq i32 %104, 0, !dbg !473
  br i1 %cmp144, label %if.then146, label %if.else162, !dbg !474

if.then146:                                       ; preds = %if.end136
  %105 = load ptr, ptr %s.addr, align 8, !dbg !475
  %lzma2147 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %105, i32 0, i32 2, !dbg !478
  %compressed148 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2147, i32 0, i32 3, !dbg !479
  %106 = load i32, ptr %compressed148, align 4, !dbg !479
  %cmp149 = icmp ugt i32 %106, 0, !dbg !480
  br i1 %cmp149, label %if.then157, label %lor.lhs.false151, !dbg !481

lor.lhs.false151:                                 ; preds = %if.then146
  %107 = load ptr, ptr %s.addr, align 8, !dbg !482
  %lzma = getelementptr inbounds %struct.xz_dec_lzma2, ptr %107, i32 0, i32 3, !dbg !483
  %len = getelementptr inbounds %struct.lzma_dec, ptr %lzma, i32 0, i32 5, !dbg !484
  %108 = load i32, ptr %len, align 4, !dbg !484
  %cmp152 = icmp ugt i32 %108, 0, !dbg !485
  br i1 %cmp152, label %if.then157, label %lor.lhs.false154, !dbg !486

lor.lhs.false154:                                 ; preds = %lor.lhs.false151
  %109 = load ptr, ptr %s.addr, align 8, !dbg !487
  %rc155 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %109, i32 0, i32 0, !dbg !488
  %call156 = call zeroext i1 @rc_is_finished(ptr noundef %rc155) #15, !dbg !489
  br i1 %call156, label %if.end158, label %if.then157, !dbg !490

if.then157:                                       ; preds = %lor.lhs.false154, %lor.lhs.false151, %if.then146
  store i32 7, ptr %retval, align 4, !dbg !491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !491

if.end158:                                        ; preds = %lor.lhs.false154
  %110 = load ptr, ptr %s.addr, align 8, !dbg !492
  %rc159 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %110, i32 0, i32 0, !dbg !493
  call void @rc_reset(ptr noundef %rc159) #15, !dbg !494
  %111 = load ptr, ptr %s.addr, align 8, !dbg !495
  %lzma2160 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %111, i32 0, i32 2, !dbg !496
  %sequence161 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2160, i32 0, i32 0, !dbg !497
  store i32 0, ptr %sequence161, align 8, !dbg !498
  br label %if.end178, !dbg !499

if.else162:                                       ; preds = %if.end136
  %112 = load ptr, ptr %b.addr, align 8, !dbg !500
  %out_pos163 = getelementptr inbounds %struct.xz_buf, ptr %112, i32 0, i32 4, !dbg !502
  %113 = load i64, ptr %out_pos163, align 8, !dbg !502
  %114 = load ptr, ptr %b.addr, align 8, !dbg !503
  %out_size164 = getelementptr inbounds %struct.xz_buf, ptr %114, i32 0, i32 5, !dbg !504
  %115 = load i64, ptr %out_size164, align 8, !dbg !504
  %cmp165 = icmp eq i64 %113, %115, !dbg !505
  br i1 %cmp165, label %if.then176, label %lor.lhs.false167, !dbg !506

lor.lhs.false167:                                 ; preds = %if.else162
  %116 = load ptr, ptr %b.addr, align 8, !dbg !507
  %in_pos168 = getelementptr inbounds %struct.xz_buf, ptr %116, i32 0, i32 1, !dbg !508
  %117 = load i64, ptr %in_pos168, align 8, !dbg !508
  %118 = load ptr, ptr %b.addr, align 8, !dbg !509
  %in_size169 = getelementptr inbounds %struct.xz_buf, ptr %118, i32 0, i32 2, !dbg !510
  %119 = load i64, ptr %in_size169, align 8, !dbg !510
  %cmp170 = icmp eq i64 %117, %119, !dbg !511
  br i1 %cmp170, label %land.lhs.true, label %if.end177, !dbg !512

land.lhs.true:                                    ; preds = %lor.lhs.false167
  %120 = load ptr, ptr %s.addr, align 8, !dbg !513
  %temp = getelementptr inbounds %struct.xz_dec_lzma2, ptr %120, i32 0, i32 4, !dbg !514
  %size = getelementptr inbounds %struct.anon, ptr %temp, i32 0, i32 0, !dbg !515
  %121 = load i32, ptr %size, align 4, !dbg !515
  %122 = load ptr, ptr %s.addr, align 8, !dbg !516
  %lzma2172 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %122, i32 0, i32 2, !dbg !517
  %compressed173 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2172, i32 0, i32 3, !dbg !518
  %123 = load i32, ptr %compressed173, align 4, !dbg !518
  %cmp174 = icmp ult i32 %121, %123, !dbg !519
  br i1 %cmp174, label %if.then176, label %if.end177, !dbg !520

if.then176:                                       ; preds = %land.lhs.true, %if.else162
  store i32 0, ptr %retval, align 4, !dbg !521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !521

if.end177:                                        ; preds = %land.lhs.true, %lor.lhs.false167
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.end158
  br label %sw.epilog, !dbg !523

sw.bb179:                                         ; preds = %while.body
  %124 = load ptr, ptr %s.addr, align 8, !dbg !524
  %dict180 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %124, i32 0, i32 1, !dbg !525
  %125 = load ptr, ptr %b.addr, align 8, !dbg !526
  %126 = load ptr, ptr %s.addr, align 8, !dbg !527
  %lzma2181 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %126, i32 0, i32 2, !dbg !528
  %compressed182 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2181, i32 0, i32 3, !dbg !529
  call void @dict_uncompressed(ptr noundef %dict180, ptr noundef %125, ptr noundef %compressed182) #15, !dbg !530
  %127 = load ptr, ptr %s.addr, align 8, !dbg !531
  %lzma2183 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %127, i32 0, i32 2, !dbg !533
  %compressed184 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2183, i32 0, i32 3, !dbg !534
  %128 = load i32, ptr %compressed184, align 4, !dbg !534
  %cmp185 = icmp ugt i32 %128, 0, !dbg !535
  br i1 %cmp185, label %if.then187, label %if.end188, !dbg !536

if.then187:                                       ; preds = %sw.bb179
  store i32 0, ptr %retval, align 4, !dbg !537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !537

if.end188:                                        ; preds = %sw.bb179
  %129 = load ptr, ptr %s.addr, align 8, !dbg !538
  %lzma2189 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %129, i32 0, i32 2, !dbg !539
  %sequence190 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2189, i32 0, i32 0, !dbg !540
  store i32 0, ptr %sequence190, align 8, !dbg !541
  br label %sw.epilog, !dbg !542

sw.epilog:                                        ; preds = %while.body, %if.end188, %if.end178, %sw.bb88, %sw.bb78, %sw.bb66, %sw.bb55, %if.end54
  br label %while.cond, !dbg !227, !llvm.loop !543

while.end:                                        ; preds = %lor.end
  store i32 0, ptr %retval, align 4, !dbg !547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !547

cleanup:                                          ; preds = %while.end, %if.then187, %if.then176, %if.then157, %if.then135, %if.then119, %if.then116, %if.then107, %if.then48, %if.then35, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #14, !dbg !548
  %130 = load i32, ptr %retval, align 4, !dbg !548
  ret i32 %130, !dbg !548
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dict_reset(ptr noundef %dict, ptr noundef %b) #0 align 16 !dbg !549 {
entry:
  %dict.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !554, metadata !DIExpression()), !dbg !556
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !555, metadata !DIExpression()), !dbg !557
  %0 = load ptr, ptr %dict.addr, align 8, !dbg !558
  %mode = getelementptr inbounds %struct.dictionary, ptr %0, i32 0, i32 9, !dbg !558
  %1 = load i32, ptr %mode, align 4, !dbg !558
  %cmp = icmp eq i32 %1, 0, !dbg !558
  br i1 %cmp, label %if.then, label %if.end, !dbg !560

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %b.addr, align 8, !dbg !561
  %out = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 3, !dbg !563
  %3 = load ptr, ptr %out, align 8, !dbg !563
  %4 = load ptr, ptr %b.addr, align 8, !dbg !564
  %out_pos = getelementptr inbounds %struct.xz_buf, ptr %4, i32 0, i32 4, !dbg !565
  %5 = load i64, ptr %out_pos, align 8, !dbg !565
  %add.ptr = getelementptr i8, ptr %3, i64 %5, !dbg !566
  %6 = load ptr, ptr %dict.addr, align 8, !dbg !567
  %buf = getelementptr inbounds %struct.dictionary, ptr %6, i32 0, i32 0, !dbg !568
  store ptr %add.ptr, ptr %buf, align 8, !dbg !569
  %7 = load ptr, ptr %b.addr, align 8, !dbg !570
  %out_size = getelementptr inbounds %struct.xz_buf, ptr %7, i32 0, i32 5, !dbg !571
  %8 = load i64, ptr %out_size, align 8, !dbg !571
  %9 = load ptr, ptr %b.addr, align 8, !dbg !572
  %out_pos1 = getelementptr inbounds %struct.xz_buf, ptr %9, i32 0, i32 4, !dbg !573
  %10 = load i64, ptr %out_pos1, align 8, !dbg !573
  %sub = sub i64 %8, %10, !dbg !574
  %11 = load ptr, ptr %dict.addr, align 8, !dbg !575
  %end = getelementptr inbounds %struct.dictionary, ptr %11, i32 0, i32 5, !dbg !576
  store i64 %sub, ptr %end, align 8, !dbg !577
  br label %if.end, !dbg !578

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %dict.addr, align 8, !dbg !579
  %start = getelementptr inbounds %struct.dictionary, ptr %12, i32 0, i32 1, !dbg !580
  store i64 0, ptr %start, align 8, !dbg !581
  %13 = load ptr, ptr %dict.addr, align 8, !dbg !582
  %pos = getelementptr inbounds %struct.dictionary, ptr %13, i32 0, i32 2, !dbg !583
  store i64 0, ptr %pos, align 8, !dbg !584
  %14 = load ptr, ptr %dict.addr, align 8, !dbg !585
  %limit = getelementptr inbounds %struct.dictionary, ptr %14, i32 0, i32 4, !dbg !586
  store i64 0, ptr %limit, align 8, !dbg !587
  %15 = load ptr, ptr %dict.addr, align 8, !dbg !588
  %full = getelementptr inbounds %struct.dictionary, ptr %15, i32 0, i32 3, !dbg !589
  store i64 0, ptr %full, align 8, !dbg !590
  ret void, !dbg !591
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lzma_reset(ptr noundef %s) #0 align 16 !dbg !592 {
entry:
  %s.addr = alloca ptr, align 8
  %probs = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !596, metadata !DIExpression()), !dbg !600
  call void @llvm.lifetime.start.p0(i64 8, ptr %probs) #14, !dbg !601
  call void @llvm.dbg.declare(metadata ptr %probs, metadata !597, metadata !DIExpression()), !dbg !602
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !603
  call void @llvm.dbg.declare(metadata ptr %i, metadata !599, metadata !DIExpression()), !dbg !604
  %0 = load ptr, ptr %s.addr, align 8, !dbg !605
  %lzma = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, !dbg !606
  %state = getelementptr inbounds %struct.lzma_dec, ptr %lzma, i32 0, i32 4, !dbg !607
  store i32 0, ptr %state, align 4, !dbg !608
  %1 = load ptr, ptr %s.addr, align 8, !dbg !609
  %lzma1 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %1, i32 0, i32 3, !dbg !610
  %rep0 = getelementptr inbounds %struct.lzma_dec, ptr %lzma1, i32 0, i32 0, !dbg !611
  store i32 0, ptr %rep0, align 4, !dbg !612
  %2 = load ptr, ptr %s.addr, align 8, !dbg !613
  %lzma2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %2, i32 0, i32 3, !dbg !614
  %rep1 = getelementptr inbounds %struct.lzma_dec, ptr %lzma2, i32 0, i32 1, !dbg !615
  store i32 0, ptr %rep1, align 4, !dbg !616
  %3 = load ptr, ptr %s.addr, align 8, !dbg !617
  %lzma3 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %3, i32 0, i32 3, !dbg !618
  %rep2 = getelementptr inbounds %struct.lzma_dec, ptr %lzma3, i32 0, i32 2, !dbg !619
  store i32 0, ptr %rep2, align 4, !dbg !620
  %4 = load ptr, ptr %s.addr, align 8, !dbg !621
  %lzma4 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %4, i32 0, i32 3, !dbg !622
  %rep3 = getelementptr inbounds %struct.lzma_dec, ptr %lzma4, i32 0, i32 3, !dbg !623
  store i32 0, ptr %rep3, align 4, !dbg !624
  %5 = load ptr, ptr %s.addr, align 8, !dbg !625
  %lzma5 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %5, i32 0, i32 3, !dbg !626
  %len = getelementptr inbounds %struct.lzma_dec, ptr %lzma5, i32 0, i32 5, !dbg !627
  store i32 0, ptr %len, align 4, !dbg !628
  %6 = load ptr, ptr %s.addr, align 8, !dbg !629
  %lzma6 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %6, i32 0, i32 3, !dbg !630
  %is_match = getelementptr inbounds %struct.lzma_dec, ptr %lzma6, i32 0, i32 9, !dbg !631
  %arrayidx = getelementptr [12 x [16 x i16]], ptr %is_match, i64 0, i64 0, !dbg !629
  %arraydecay = getelementptr inbounds [16 x i16], ptr %arrayidx, i64 0, i64 0, !dbg !629
  store ptr %arraydecay, ptr %probs, align 8, !dbg !632
  store i64 0, ptr %i, align 8, !dbg !633
  br label %for.cond, !dbg !635

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %i, align 8, !dbg !636
  %cmp = icmp ult i64 %7, 14134, !dbg !638
  br i1 %cmp, label %for.body, label %for.end, !dbg !639

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %probs, align 8, !dbg !640
  %9 = load i64, ptr %i, align 8, !dbg !641
  %arrayidx7 = getelementptr i16, ptr %8, i64 %9, !dbg !640
  store i16 1024, ptr %arrayidx7, align 2, !dbg !642
  br label %for.inc, !dbg !640

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %i, align 8, !dbg !643
  %inc = add i64 %10, 1, !dbg !643
  store i64 %inc, ptr %i, align 8, !dbg !643
  br label %for.cond, !dbg !644, !llvm.loop !645

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %s.addr, align 8, !dbg !647
  %rc = getelementptr inbounds %struct.xz_dec_lzma2, ptr %11, i32 0, i32 0, !dbg !648
  call void @rc_reset(ptr noundef %rc) #15, !dbg !649
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !650
  call void @llvm.lifetime.end.p0(i64 8, ptr %probs) #14, !dbg !650
  ret void, !dbg !650
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @lzma_props(ptr noundef %s, i8 noundef zeroext %props) #0 align 16 !dbg !651 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca ptr, align 8
  %props.addr = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !655, metadata !DIExpression()), !dbg !657
  store i8 %props, ptr %props.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !656, metadata !DIExpression()), !dbg !658
  %0 = load i8, ptr %props.addr, align 1, !dbg !659
  %conv = zext i8 %0 to i32, !dbg !659
  %cmp = icmp sgt i32 %conv, 224, !dbg !661
  br i1 %cmp, label %if.then, label %if.end, !dbg !662

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !663
  br label %return, !dbg !663

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !664
  %lzma = getelementptr inbounds %struct.xz_dec_lzma2, ptr %1, i32 0, i32 3, !dbg !665
  %pos_mask = getelementptr inbounds %struct.lzma_dec, ptr %lzma, i32 0, i32 8, !dbg !666
  store i32 0, ptr %pos_mask, align 4, !dbg !667
  br label %while.cond, !dbg !668

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i8, ptr %props.addr, align 1, !dbg !669
  %conv2 = zext i8 %2 to i32, !dbg !669
  %cmp3 = icmp sge i32 %conv2, 45, !dbg !670
  br i1 %cmp3, label %while.body, label %while.end, !dbg !668

while.body:                                       ; preds = %while.cond
  %3 = load i8, ptr %props.addr, align 1, !dbg !671
  %conv5 = zext i8 %3 to i32, !dbg !671
  %sub = sub i32 %conv5, 45, !dbg !671
  %conv6 = trunc i32 %sub to i8, !dbg !671
  store i8 %conv6, ptr %props.addr, align 1, !dbg !671
  %4 = load ptr, ptr %s.addr, align 8, !dbg !673
  %lzma7 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %4, i32 0, i32 3, !dbg !674
  %pos_mask8 = getelementptr inbounds %struct.lzma_dec, ptr %lzma7, i32 0, i32 8, !dbg !675
  %5 = load i32, ptr %pos_mask8, align 4, !dbg !676
  %inc = add i32 %5, 1, !dbg !676
  store i32 %inc, ptr %pos_mask8, align 4, !dbg !676
  br label %while.cond, !dbg !668, !llvm.loop !677

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %s.addr, align 8, !dbg !679
  %lzma9 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %6, i32 0, i32 3, !dbg !680
  %pos_mask10 = getelementptr inbounds %struct.lzma_dec, ptr %lzma9, i32 0, i32 8, !dbg !681
  %7 = load i32, ptr %pos_mask10, align 4, !dbg !681
  %shl = shl i32 1, %7, !dbg !682
  %sub11 = sub i32 %shl, 1, !dbg !683
  %8 = load ptr, ptr %s.addr, align 8, !dbg !684
  %lzma12 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %8, i32 0, i32 3, !dbg !685
  %pos_mask13 = getelementptr inbounds %struct.lzma_dec, ptr %lzma12, i32 0, i32 8, !dbg !686
  store i32 %sub11, ptr %pos_mask13, align 4, !dbg !687
  %9 = load ptr, ptr %s.addr, align 8, !dbg !688
  %lzma14 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %9, i32 0, i32 3, !dbg !689
  %literal_pos_mask = getelementptr inbounds %struct.lzma_dec, ptr %lzma14, i32 0, i32 7, !dbg !690
  store i32 0, ptr %literal_pos_mask, align 4, !dbg !691
  br label %while.cond15, !dbg !692

while.cond15:                                     ; preds = %while.body19, %while.end
  %10 = load i8, ptr %props.addr, align 1, !dbg !693
  %conv16 = zext i8 %10 to i32, !dbg !693
  %cmp17 = icmp sge i32 %conv16, 9, !dbg !694
  br i1 %cmp17, label %while.body19, label %while.end26, !dbg !692

while.body19:                                     ; preds = %while.cond15
  %11 = load i8, ptr %props.addr, align 1, !dbg !695
  %conv20 = zext i8 %11 to i32, !dbg !695
  %sub21 = sub i32 %conv20, 9, !dbg !695
  %conv22 = trunc i32 %sub21 to i8, !dbg !695
  store i8 %conv22, ptr %props.addr, align 1, !dbg !695
  %12 = load ptr, ptr %s.addr, align 8, !dbg !697
  %lzma23 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %12, i32 0, i32 3, !dbg !698
  %literal_pos_mask24 = getelementptr inbounds %struct.lzma_dec, ptr %lzma23, i32 0, i32 7, !dbg !699
  %13 = load i32, ptr %literal_pos_mask24, align 4, !dbg !700
  %inc25 = add i32 %13, 1, !dbg !700
  store i32 %inc25, ptr %literal_pos_mask24, align 4, !dbg !700
  br label %while.cond15, !dbg !692, !llvm.loop !701

while.end26:                                      ; preds = %while.cond15
  %14 = load i8, ptr %props.addr, align 1, !dbg !703
  %conv27 = zext i8 %14 to i32, !dbg !703
  %15 = load ptr, ptr %s.addr, align 8, !dbg !704
  %lzma28 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %15, i32 0, i32 3, !dbg !705
  %lc = getelementptr inbounds %struct.lzma_dec, ptr %lzma28, i32 0, i32 6, !dbg !706
  store i32 %conv27, ptr %lc, align 4, !dbg !707
  %16 = load ptr, ptr %s.addr, align 8, !dbg !708
  %lzma29 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %16, i32 0, i32 3, !dbg !710
  %lc30 = getelementptr inbounds %struct.lzma_dec, ptr %lzma29, i32 0, i32 6, !dbg !711
  %17 = load i32, ptr %lc30, align 4, !dbg !711
  %18 = load ptr, ptr %s.addr, align 8, !dbg !712
  %lzma31 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %18, i32 0, i32 3, !dbg !713
  %literal_pos_mask32 = getelementptr inbounds %struct.lzma_dec, ptr %lzma31, i32 0, i32 7, !dbg !714
  %19 = load i32, ptr %literal_pos_mask32, align 4, !dbg !714
  %add = add i32 %17, %19, !dbg !715
  %cmp33 = icmp ugt i32 %add, 4, !dbg !716
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !717

if.then35:                                        ; preds = %while.end26
  store i1 false, ptr %retval, align 1, !dbg !718
  br label %return, !dbg !718

if.end36:                                         ; preds = %while.end26
  %20 = load ptr, ptr %s.addr, align 8, !dbg !719
  %lzma37 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %20, i32 0, i32 3, !dbg !720
  %literal_pos_mask38 = getelementptr inbounds %struct.lzma_dec, ptr %lzma37, i32 0, i32 7, !dbg !721
  %21 = load i32, ptr %literal_pos_mask38, align 4, !dbg !721
  %shl39 = shl i32 1, %21, !dbg !722
  %sub40 = sub i32 %shl39, 1, !dbg !723
  %22 = load ptr, ptr %s.addr, align 8, !dbg !724
  %lzma41 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %22, i32 0, i32 3, !dbg !725
  %literal_pos_mask42 = getelementptr inbounds %struct.lzma_dec, ptr %lzma41, i32 0, i32 7, !dbg !726
  store i32 %sub40, ptr %literal_pos_mask42, align 4, !dbg !727
  %23 = load ptr, ptr %s.addr, align 8, !dbg !728
  call void @lzma_reset(ptr noundef %23) #15, !dbg !729
  store i1 true, ptr %retval, align 1, !dbg !730
  br label %return, !dbg !730

return:                                           ; preds = %if.end36, %if.then35, %if.then
  %24 = load i1, ptr %retval, align 1, !dbg !731
  ret i1 %24, !dbg !731
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rc_read_init(ptr noundef %rc, ptr noundef %b) #0 align 16 !dbg !732 {
entry:
  %retval = alloca i1, align 1
  %rc.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !737, metadata !DIExpression()), !dbg !739
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !738, metadata !DIExpression()), !dbg !740
  br label %while.cond, !dbg !741

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !742
  %init_bytes_left = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 2, !dbg !743
  %1 = load i32, ptr %init_bytes_left, align 8, !dbg !743
  %cmp = icmp ugt i32 %1, 0, !dbg !744
  br i1 %cmp, label %while.body, label %while.end, !dbg !741

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %b.addr, align 8, !dbg !745
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 1, !dbg !748
  %3 = load i64, ptr %in_pos, align 8, !dbg !748
  %4 = load ptr, ptr %b.addr, align 8, !dbg !749
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %4, i32 0, i32 2, !dbg !750
  %5 = load i64, ptr %in_size, align 8, !dbg !750
  %cmp1 = icmp eq i64 %3, %5, !dbg !751
  br i1 %cmp1, label %if.then, label %if.end, !dbg !752

if.then:                                          ; preds = %while.body
  store i1 false, ptr %retval, align 1, !dbg !753
  br label %return, !dbg !753

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %rc.addr, align 8, !dbg !754
  %code = getelementptr inbounds %struct.rc_dec, ptr %6, i32 0, i32 1, !dbg !755
  %7 = load i32, ptr %code, align 4, !dbg !755
  %shl = shl i32 %7, 8, !dbg !756
  %8 = load ptr, ptr %b.addr, align 8, !dbg !757
  %in = getelementptr inbounds %struct.xz_buf, ptr %8, i32 0, i32 0, !dbg !758
  %9 = load ptr, ptr %in, align 8, !dbg !758
  %10 = load ptr, ptr %b.addr, align 8, !dbg !759
  %in_pos2 = getelementptr inbounds %struct.xz_buf, ptr %10, i32 0, i32 1, !dbg !760
  %11 = load i64, ptr %in_pos2, align 8, !dbg !761
  %inc = add i64 %11, 1, !dbg !761
  store i64 %inc, ptr %in_pos2, align 8, !dbg !761
  %arrayidx = getelementptr i8, ptr %9, i64 %11, !dbg !757
  %12 = load i8, ptr %arrayidx, align 1, !dbg !757
  %conv = zext i8 %12 to i32, !dbg !757
  %add = add i32 %shl, %conv, !dbg !762
  %13 = load ptr, ptr %rc.addr, align 8, !dbg !763
  %code3 = getelementptr inbounds %struct.rc_dec, ptr %13, i32 0, i32 1, !dbg !764
  store i32 %add, ptr %code3, align 4, !dbg !765
  %14 = load ptr, ptr %rc.addr, align 8, !dbg !766
  %init_bytes_left4 = getelementptr inbounds %struct.rc_dec, ptr %14, i32 0, i32 2, !dbg !767
  %15 = load i32, ptr %init_bytes_left4, align 8, !dbg !768
  %dec = add i32 %15, -1, !dbg !768
  store i32 %dec, ptr %init_bytes_left4, align 8, !dbg !768
  br label %while.cond, !dbg !741, !llvm.loop !769

while.end:                                        ; preds = %while.cond
  store i1 true, ptr %retval, align 1, !dbg !771
  br label %return, !dbg !771

return:                                           ; preds = %while.end, %if.then
  %16 = load i1, ptr %retval, align 1, !dbg !772
  ret i1 %16, !dbg !772
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dict_limit(ptr noundef %dict, i64 noundef %out_max) #0 align 16 !dbg !773 {
entry:
  %dict.addr = alloca ptr, align 8
  %out_max.addr = alloca i64, align 8
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !777, metadata !DIExpression()), !dbg !779
  store i64 %out_max, ptr %out_max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_max.addr, metadata !778, metadata !DIExpression()), !dbg !780
  %0 = load ptr, ptr %dict.addr, align 8, !dbg !781
  %end = getelementptr inbounds %struct.dictionary, ptr %0, i32 0, i32 5, !dbg !783
  %1 = load i64, ptr %end, align 8, !dbg !783
  %2 = load ptr, ptr %dict.addr, align 8, !dbg !784
  %pos = getelementptr inbounds %struct.dictionary, ptr %2, i32 0, i32 2, !dbg !785
  %3 = load i64, ptr %pos, align 8, !dbg !785
  %sub = sub i64 %1, %3, !dbg !786
  %4 = load i64, ptr %out_max.addr, align 8, !dbg !787
  %cmp = icmp ule i64 %sub, %4, !dbg !788
  br i1 %cmp, label %if.then, label %if.else, !dbg !789

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dict.addr, align 8, !dbg !790
  %end1 = getelementptr inbounds %struct.dictionary, ptr %5, i32 0, i32 5, !dbg !791
  %6 = load i64, ptr %end1, align 8, !dbg !791
  %7 = load ptr, ptr %dict.addr, align 8, !dbg !792
  %limit = getelementptr inbounds %struct.dictionary, ptr %7, i32 0, i32 4, !dbg !793
  store i64 %6, ptr %limit, align 8, !dbg !794
  br label %if.end, !dbg !792

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %dict.addr, align 8, !dbg !795
  %pos2 = getelementptr inbounds %struct.dictionary, ptr %8, i32 0, i32 2, !dbg !796
  %9 = load i64, ptr %pos2, align 8, !dbg !796
  %10 = load i64, ptr %out_max.addr, align 8, !dbg !797
  %add = add i64 %9, %10, !dbg !798
  %11 = load ptr, ptr %dict.addr, align 8, !dbg !799
  %limit3 = getelementptr inbounds %struct.dictionary, ptr %11, i32 0, i32 4, !dbg !800
  store i64 %add, ptr %limit3, align 8, !dbg !801
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !802
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @lzma2_lzma(ptr noundef %s, ptr noundef %b) #0 align 16 !dbg !803 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %in_avail = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !807, metadata !DIExpression()), !dbg !811
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !808, metadata !DIExpression()), !dbg !812
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_avail) #14, !dbg !813
  call void @llvm.dbg.declare(metadata ptr %in_avail, metadata !809, metadata !DIExpression()), !dbg !814
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #14, !dbg !815
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !810, metadata !DIExpression()), !dbg !816
  %0 = load ptr, ptr %b.addr, align 8, !dbg !817
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %0, i32 0, i32 2, !dbg !818
  %1 = load i64, ptr %in_size, align 8, !dbg !818
  %2 = load ptr, ptr %b.addr, align 8, !dbg !819
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 1, !dbg !820
  %3 = load i64, ptr %in_pos, align 8, !dbg !820
  %sub = sub i64 %1, %3, !dbg !821
  store i64 %sub, ptr %in_avail, align 8, !dbg !822
  %4 = load ptr, ptr %s.addr, align 8, !dbg !823
  %temp = getelementptr inbounds %struct.xz_dec_lzma2, ptr %4, i32 0, i32 4, !dbg !825
  %size = getelementptr inbounds %struct.anon, ptr %temp, i32 0, i32 0, !dbg !826
  %5 = load i32, ptr %size, align 4, !dbg !826
  %cmp = icmp ugt i32 %5, 0, !dbg !827
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !828

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %s.addr, align 8, !dbg !829
  %lzma2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %6, i32 0, i32 2, !dbg !830
  %compressed = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2, i32 0, i32 3, !dbg !831
  %7 = load i32, ptr %compressed, align 4, !dbg !831
  %cmp1 = icmp eq i32 %7, 0, !dbg !832
  br i1 %cmp1, label %if.then, label %if.end139, !dbg !833

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load ptr, ptr %s.addr, align 8, !dbg !834
  %temp2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %8, i32 0, i32 4, !dbg !836
  %size3 = getelementptr inbounds %struct.anon, ptr %temp2, i32 0, i32 0, !dbg !837
  %9 = load i32, ptr %size3, align 4, !dbg !837
  %sub4 = sub i32 42, %9, !dbg !838
  store i32 %sub4, ptr %tmp, align 4, !dbg !839
  %10 = load i32, ptr %tmp, align 4, !dbg !840
  %11 = load ptr, ptr %s.addr, align 8, !dbg !842
  %lzma25 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %11, i32 0, i32 2, !dbg !843
  %compressed6 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma25, i32 0, i32 3, !dbg !844
  %12 = load i32, ptr %compressed6, align 4, !dbg !844
  %13 = load ptr, ptr %s.addr, align 8, !dbg !845
  %temp7 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %13, i32 0, i32 4, !dbg !846
  %size8 = getelementptr inbounds %struct.anon, ptr %temp7, i32 0, i32 0, !dbg !847
  %14 = load i32, ptr %size8, align 4, !dbg !847
  %sub9 = sub i32 %12, %14, !dbg !848
  %cmp10 = icmp ugt i32 %10, %sub9, !dbg !849
  br i1 %cmp10, label %if.then11, label %if.end, !dbg !850

if.then11:                                        ; preds = %if.then
  %15 = load ptr, ptr %s.addr, align 8, !dbg !851
  %lzma212 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %15, i32 0, i32 2, !dbg !852
  %compressed13 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma212, i32 0, i32 3, !dbg !853
  %16 = load i32, ptr %compressed13, align 4, !dbg !853
  %17 = load ptr, ptr %s.addr, align 8, !dbg !854
  %temp14 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %17, i32 0, i32 4, !dbg !855
  %size15 = getelementptr inbounds %struct.anon, ptr %temp14, i32 0, i32 0, !dbg !856
  %18 = load i32, ptr %size15, align 4, !dbg !856
  %sub16 = sub i32 %16, %18, !dbg !857
  store i32 %sub16, ptr %tmp, align 4, !dbg !858
  br label %if.end, !dbg !859

if.end:                                           ; preds = %if.then11, %if.then
  %19 = load i32, ptr %tmp, align 4, !dbg !860
  %conv = zext i32 %19 to i64, !dbg !860
  %20 = load i64, ptr %in_avail, align 8, !dbg !862
  %cmp17 = icmp ugt i64 %conv, %20, !dbg !863
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !864

if.then19:                                        ; preds = %if.end
  %21 = load i64, ptr %in_avail, align 8, !dbg !865
  %conv20 = trunc i64 %21 to i32, !dbg !865
  store i32 %conv20, ptr %tmp, align 4, !dbg !866
  br label %if.end21, !dbg !867

if.end21:                                         ; preds = %if.then19, %if.end
  %22 = load ptr, ptr %s.addr, align 8, !dbg !868
  %temp22 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %22, i32 0, i32 4, !dbg !869
  %buf = getelementptr inbounds %struct.anon, ptr %temp22, i32 0, i32 1, !dbg !870
  %arraydecay = getelementptr inbounds [63 x i8], ptr %buf, i64 0, i64 0, !dbg !868
  %23 = load ptr, ptr %s.addr, align 8, !dbg !871
  %temp23 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %23, i32 0, i32 4, !dbg !872
  %size24 = getelementptr inbounds %struct.anon, ptr %temp23, i32 0, i32 0, !dbg !873
  %24 = load i32, ptr %size24, align 4, !dbg !873
  %idx.ext = zext i32 %24 to i64, !dbg !874
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !874
  %25 = load ptr, ptr %b.addr, align 8, !dbg !875
  %in = getelementptr inbounds %struct.xz_buf, ptr %25, i32 0, i32 0, !dbg !876
  %26 = load ptr, ptr %in, align 8, !dbg !876
  %27 = load ptr, ptr %b.addr, align 8, !dbg !877
  %in_pos25 = getelementptr inbounds %struct.xz_buf, ptr %27, i32 0, i32 1, !dbg !878
  %28 = load i64, ptr %in_pos25, align 8, !dbg !878
  %add.ptr26 = getelementptr i8, ptr %26, i64 %28, !dbg !879
  %29 = load i32, ptr %tmp, align 4, !dbg !880
  %conv27 = zext i32 %29 to i64, !dbg !880
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr26, i64 %conv27, i1 false), !dbg !881
  %30 = load ptr, ptr %s.addr, align 8, !dbg !882
  %temp28 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %30, i32 0, i32 4, !dbg !884
  %size29 = getelementptr inbounds %struct.anon, ptr %temp28, i32 0, i32 0, !dbg !885
  %31 = load i32, ptr %size29, align 4, !dbg !885
  %32 = load i32, ptr %tmp, align 4, !dbg !886
  %add = add i32 %31, %32, !dbg !887
  %33 = load ptr, ptr %s.addr, align 8, !dbg !888
  %lzma230 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %33, i32 0, i32 2, !dbg !889
  %compressed31 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma230, i32 0, i32 3, !dbg !890
  %34 = load i32, ptr %compressed31, align 4, !dbg !890
  %cmp32 = icmp eq i32 %add, %34, !dbg !891
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !892

if.then34:                                        ; preds = %if.end21
  %35 = load ptr, ptr %s.addr, align 8, !dbg !893
  %temp35 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %35, i32 0, i32 4, !dbg !893
  %buf36 = getelementptr inbounds %struct.anon, ptr %temp35, i32 0, i32 1, !dbg !893
  %arraydecay37 = getelementptr inbounds [63 x i8], ptr %buf36, i64 0, i64 0, !dbg !893
  %36 = load ptr, ptr %s.addr, align 8, !dbg !893
  %temp38 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %36, i32 0, i32 4, !dbg !893
  %size39 = getelementptr inbounds %struct.anon, ptr %temp38, i32 0, i32 0, !dbg !893
  %37 = load i32, ptr %size39, align 4, !dbg !893
  %idx.ext40 = zext i32 %37 to i64, !dbg !893
  %add.ptr41 = getelementptr i8, ptr %arraydecay37, i64 %idx.ext40, !dbg !893
  %38 = load i32, ptr %tmp, align 4, !dbg !893
  %idx.ext42 = zext i32 %38 to i64, !dbg !893
  %add.ptr43 = getelementptr i8, ptr %add.ptr41, i64 %idx.ext42, !dbg !893
  %39 = load ptr, ptr %s.addr, align 8, !dbg !893
  %temp44 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %39, i32 0, i32 4, !dbg !893
  %size45 = getelementptr inbounds %struct.anon, ptr %temp44, i32 0, i32 0, !dbg !893
  %40 = load i32, ptr %size45, align 4, !dbg !893
  %conv46 = zext i32 %40 to i64, !dbg !893
  %sub47 = sub i64 63, %conv46, !dbg !893
  %41 = load i32, ptr %tmp, align 4, !dbg !893
  %conv48 = zext i32 %41 to i64, !dbg !893
  %sub49 = sub i64 %sub47, %conv48, !dbg !893
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr43, i8 0, i64 %sub49, i1 false), !dbg !893
  %42 = load ptr, ptr %s.addr, align 8, !dbg !895
  %temp50 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %42, i32 0, i32 4, !dbg !896
  %size51 = getelementptr inbounds %struct.anon, ptr %temp50, i32 0, i32 0, !dbg !897
  %43 = load i32, ptr %size51, align 4, !dbg !897
  %44 = load i32, ptr %tmp, align 4, !dbg !898
  %add52 = add i32 %43, %44, !dbg !899
  %conv53 = zext i32 %add52 to i64, !dbg !895
  %45 = load ptr, ptr %s.addr, align 8, !dbg !900
  %rc = getelementptr inbounds %struct.xz_dec_lzma2, ptr %45, i32 0, i32 0, !dbg !901
  %in_limit = getelementptr inbounds %struct.rc_dec, ptr %rc, i32 0, i32 5, !dbg !902
  store i64 %conv53, ptr %in_limit, align 8, !dbg !903
  br label %if.end75, !dbg !904

if.else:                                          ; preds = %if.end21
  %46 = load ptr, ptr %s.addr, align 8, !dbg !905
  %temp54 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %46, i32 0, i32 4, !dbg !907
  %size55 = getelementptr inbounds %struct.anon, ptr %temp54, i32 0, i32 0, !dbg !908
  %47 = load i32, ptr %size55, align 4, !dbg !908
  %48 = load i32, ptr %tmp, align 4, !dbg !909
  %add56 = add i32 %47, %48, !dbg !910
  %cmp57 = icmp ult i32 %add56, 21, !dbg !911
  br i1 %cmp57, label %if.then59, label %if.else66, !dbg !912

if.then59:                                        ; preds = %if.else
  %49 = load i32, ptr %tmp, align 4, !dbg !913
  %50 = load ptr, ptr %s.addr, align 8, !dbg !915
  %temp60 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %50, i32 0, i32 4, !dbg !916
  %size61 = getelementptr inbounds %struct.anon, ptr %temp60, i32 0, i32 0, !dbg !917
  %51 = load i32, ptr %size61, align 4, !dbg !918
  %add62 = add i32 %51, %49, !dbg !918
  store i32 %add62, ptr %size61, align 4, !dbg !918
  %52 = load i32, ptr %tmp, align 4, !dbg !919
  %conv63 = zext i32 %52 to i64, !dbg !919
  %53 = load ptr, ptr %b.addr, align 8, !dbg !920
  %in_pos64 = getelementptr inbounds %struct.xz_buf, ptr %53, i32 0, i32 1, !dbg !921
  %54 = load i64, ptr %in_pos64, align 8, !dbg !922
  %add65 = add i64 %54, %conv63, !dbg !922
  store i64 %add65, ptr %in_pos64, align 8, !dbg !922
  store i1 true, ptr %retval, align 1, !dbg !923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !923

if.else66:                                        ; preds = %if.else
  %55 = load ptr, ptr %s.addr, align 8, !dbg !924
  %temp67 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %55, i32 0, i32 4, !dbg !926
  %size68 = getelementptr inbounds %struct.anon, ptr %temp67, i32 0, i32 0, !dbg !927
  %56 = load i32, ptr %size68, align 4, !dbg !927
  %57 = load i32, ptr %tmp, align 4, !dbg !928
  %add69 = add i32 %56, %57, !dbg !929
  %sub70 = sub i32 %add69, 21, !dbg !930
  %conv71 = zext i32 %sub70 to i64, !dbg !924
  %58 = load ptr, ptr %s.addr, align 8, !dbg !931
  %rc72 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %58, i32 0, i32 0, !dbg !932
  %in_limit73 = getelementptr inbounds %struct.rc_dec, ptr %rc72, i32 0, i32 5, !dbg !933
  store i64 %conv71, ptr %in_limit73, align 8, !dbg !934
  br label %if.end74

if.end74:                                         ; preds = %if.else66
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then34
  %59 = load ptr, ptr %s.addr, align 8, !dbg !935
  %temp76 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %59, i32 0, i32 4, !dbg !936
  %buf77 = getelementptr inbounds %struct.anon, ptr %temp76, i32 0, i32 1, !dbg !937
  %arraydecay78 = getelementptr inbounds [63 x i8], ptr %buf77, i64 0, i64 0, !dbg !935
  %60 = load ptr, ptr %s.addr, align 8, !dbg !938
  %rc79 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %60, i32 0, i32 0, !dbg !939
  %in80 = getelementptr inbounds %struct.rc_dec, ptr %rc79, i32 0, i32 3, !dbg !940
  store ptr %arraydecay78, ptr %in80, align 8, !dbg !941
  %61 = load ptr, ptr %s.addr, align 8, !dbg !942
  %rc81 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %61, i32 0, i32 0, !dbg !943
  %in_pos82 = getelementptr inbounds %struct.rc_dec, ptr %rc81, i32 0, i32 4, !dbg !944
  store i64 0, ptr %in_pos82, align 8, !dbg !945
  %62 = load ptr, ptr %s.addr, align 8, !dbg !946
  %call = call zeroext i1 @lzma_main(ptr noundef %62) #15, !dbg !948
  br i1 %call, label %lor.lhs.false83, label %if.then92, !dbg !949

lor.lhs.false83:                                  ; preds = %if.end75
  %63 = load ptr, ptr %s.addr, align 8, !dbg !950
  %rc84 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %63, i32 0, i32 0, !dbg !951
  %in_pos85 = getelementptr inbounds %struct.rc_dec, ptr %rc84, i32 0, i32 4, !dbg !952
  %64 = load i64, ptr %in_pos85, align 8, !dbg !952
  %65 = load ptr, ptr %s.addr, align 8, !dbg !953
  %temp86 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %65, i32 0, i32 4, !dbg !954
  %size87 = getelementptr inbounds %struct.anon, ptr %temp86, i32 0, i32 0, !dbg !955
  %66 = load i32, ptr %size87, align 4, !dbg !955
  %67 = load i32, ptr %tmp, align 4, !dbg !956
  %add88 = add i32 %66, %67, !dbg !957
  %conv89 = zext i32 %add88 to i64, !dbg !953
  %cmp90 = icmp ugt i64 %64, %conv89, !dbg !958
  br i1 %cmp90, label %if.then92, label %if.end93, !dbg !959

if.then92:                                        ; preds = %lor.lhs.false83, %if.end75
  store i1 false, ptr %retval, align 1, !dbg !960
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !960

if.end93:                                         ; preds = %lor.lhs.false83
  %68 = load ptr, ptr %s.addr, align 8, !dbg !961
  %rc94 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %68, i32 0, i32 0, !dbg !962
  %in_pos95 = getelementptr inbounds %struct.rc_dec, ptr %rc94, i32 0, i32 4, !dbg !963
  %69 = load i64, ptr %in_pos95, align 8, !dbg !963
  %70 = load ptr, ptr %s.addr, align 8, !dbg !964
  %lzma296 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %70, i32 0, i32 2, !dbg !965
  %compressed97 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma296, i32 0, i32 3, !dbg !966
  %71 = load i32, ptr %compressed97, align 4, !dbg !967
  %conv98 = zext i32 %71 to i64, !dbg !967
  %sub99 = sub i64 %conv98, %69, !dbg !967
  %conv100 = trunc i64 %sub99 to i32, !dbg !967
  store i32 %conv100, ptr %compressed97, align 4, !dbg !967
  %72 = load ptr, ptr %s.addr, align 8, !dbg !968
  %rc101 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %72, i32 0, i32 0, !dbg !970
  %in_pos102 = getelementptr inbounds %struct.rc_dec, ptr %rc101, i32 0, i32 4, !dbg !971
  %73 = load i64, ptr %in_pos102, align 8, !dbg !971
  %74 = load ptr, ptr %s.addr, align 8, !dbg !972
  %temp103 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %74, i32 0, i32 4, !dbg !973
  %size104 = getelementptr inbounds %struct.anon, ptr %temp103, i32 0, i32 0, !dbg !974
  %75 = load i32, ptr %size104, align 4, !dbg !974
  %conv105 = zext i32 %75 to i64, !dbg !972
  %cmp106 = icmp ult i64 %73, %conv105, !dbg !975
  br i1 %cmp106, label %if.then108, label %if.end128, !dbg !976

if.then108:                                       ; preds = %if.end93
  %76 = load ptr, ptr %s.addr, align 8, !dbg !977
  %rc109 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %76, i32 0, i32 0, !dbg !979
  %in_pos110 = getelementptr inbounds %struct.rc_dec, ptr %rc109, i32 0, i32 4, !dbg !980
  %77 = load i64, ptr %in_pos110, align 8, !dbg !980
  %78 = load ptr, ptr %s.addr, align 8, !dbg !981
  %temp111 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %78, i32 0, i32 4, !dbg !982
  %size112 = getelementptr inbounds %struct.anon, ptr %temp111, i32 0, i32 0, !dbg !983
  %79 = load i32, ptr %size112, align 4, !dbg !984
  %conv113 = zext i32 %79 to i64, !dbg !984
  %sub114 = sub i64 %conv113, %77, !dbg !984
  %conv115 = trunc i64 %sub114 to i32, !dbg !984
  store i32 %conv115, ptr %size112, align 4, !dbg !984
  %80 = load ptr, ptr %s.addr, align 8, !dbg !985
  %temp116 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %80, i32 0, i32 4, !dbg !986
  %buf117 = getelementptr inbounds %struct.anon, ptr %temp116, i32 0, i32 1, !dbg !987
  %arraydecay118 = getelementptr inbounds [63 x i8], ptr %buf117, i64 0, i64 0, !dbg !988
  %81 = load ptr, ptr %s.addr, align 8, !dbg !989
  %temp119 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %81, i32 0, i32 4, !dbg !990
  %buf120 = getelementptr inbounds %struct.anon, ptr %temp119, i32 0, i32 1, !dbg !991
  %arraydecay121 = getelementptr inbounds [63 x i8], ptr %buf120, i64 0, i64 0, !dbg !989
  %82 = load ptr, ptr %s.addr, align 8, !dbg !992
  %rc122 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %82, i32 0, i32 0, !dbg !993
  %in_pos123 = getelementptr inbounds %struct.rc_dec, ptr %rc122, i32 0, i32 4, !dbg !994
  %83 = load i64, ptr %in_pos123, align 8, !dbg !994
  %add.ptr124 = getelementptr i8, ptr %arraydecay121, i64 %83, !dbg !995
  %84 = load ptr, ptr %s.addr, align 8, !dbg !996
  %temp125 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %84, i32 0, i32 4, !dbg !997
  %size126 = getelementptr inbounds %struct.anon, ptr %temp125, i32 0, i32 0, !dbg !998
  %85 = load i32, ptr %size126, align 4, !dbg !998
  %conv127 = zext i32 %85 to i64, !dbg !996
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %arraydecay118, ptr align 1 %add.ptr124, i64 %conv127, i1 false), !dbg !988
  store i1 true, ptr %retval, align 1, !dbg !999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !999

if.end128:                                        ; preds = %if.end93
  %86 = load ptr, ptr %s.addr, align 8, !dbg !1000
  %rc129 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %86, i32 0, i32 0, !dbg !1001
  %in_pos130 = getelementptr inbounds %struct.rc_dec, ptr %rc129, i32 0, i32 4, !dbg !1002
  %87 = load i64, ptr %in_pos130, align 8, !dbg !1002
  %88 = load ptr, ptr %s.addr, align 8, !dbg !1003
  %temp131 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %88, i32 0, i32 4, !dbg !1004
  %size132 = getelementptr inbounds %struct.anon, ptr %temp131, i32 0, i32 0, !dbg !1005
  %89 = load i32, ptr %size132, align 4, !dbg !1005
  %conv133 = zext i32 %89 to i64, !dbg !1003
  %sub134 = sub i64 %87, %conv133, !dbg !1006
  %90 = load ptr, ptr %b.addr, align 8, !dbg !1007
  %in_pos135 = getelementptr inbounds %struct.xz_buf, ptr %90, i32 0, i32 1, !dbg !1008
  %91 = load i64, ptr %in_pos135, align 8, !dbg !1009
  %add136 = add i64 %91, %sub134, !dbg !1009
  store i64 %add136, ptr %in_pos135, align 8, !dbg !1009
  %92 = load ptr, ptr %s.addr, align 8, !dbg !1010
  %temp137 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %92, i32 0, i32 4, !dbg !1011
  %size138 = getelementptr inbounds %struct.anon, ptr %temp137, i32 0, i32 0, !dbg !1012
  store i32 0, ptr %size138, align 4, !dbg !1013
  br label %if.end139, !dbg !1014

if.end139:                                        ; preds = %if.end128, %lor.lhs.false
  %93 = load ptr, ptr %b.addr, align 8, !dbg !1015
  %in_size140 = getelementptr inbounds %struct.xz_buf, ptr %93, i32 0, i32 2, !dbg !1016
  %94 = load i64, ptr %in_size140, align 8, !dbg !1016
  %95 = load ptr, ptr %b.addr, align 8, !dbg !1017
  %in_pos141 = getelementptr inbounds %struct.xz_buf, ptr %95, i32 0, i32 1, !dbg !1018
  %96 = load i64, ptr %in_pos141, align 8, !dbg !1018
  %sub142 = sub i64 %94, %96, !dbg !1019
  store i64 %sub142, ptr %in_avail, align 8, !dbg !1020
  %97 = load i64, ptr %in_avail, align 8, !dbg !1021
  %cmp143 = icmp uge i64 %97, 21, !dbg !1023
  br i1 %cmp143, label %if.then145, label %if.end194, !dbg !1024

if.then145:                                       ; preds = %if.end139
  %98 = load ptr, ptr %b.addr, align 8, !dbg !1025
  %in146 = getelementptr inbounds %struct.xz_buf, ptr %98, i32 0, i32 0, !dbg !1027
  %99 = load ptr, ptr %in146, align 8, !dbg !1027
  %100 = load ptr, ptr %s.addr, align 8, !dbg !1028
  %rc147 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %100, i32 0, i32 0, !dbg !1029
  %in148 = getelementptr inbounds %struct.rc_dec, ptr %rc147, i32 0, i32 3, !dbg !1030
  store ptr %99, ptr %in148, align 8, !dbg !1031
  %101 = load ptr, ptr %b.addr, align 8, !dbg !1032
  %in_pos149 = getelementptr inbounds %struct.xz_buf, ptr %101, i32 0, i32 1, !dbg !1033
  %102 = load i64, ptr %in_pos149, align 8, !dbg !1033
  %103 = load ptr, ptr %s.addr, align 8, !dbg !1034
  %rc150 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %103, i32 0, i32 0, !dbg !1035
  %in_pos151 = getelementptr inbounds %struct.rc_dec, ptr %rc150, i32 0, i32 4, !dbg !1036
  store i64 %102, ptr %in_pos151, align 8, !dbg !1037
  %104 = load i64, ptr %in_avail, align 8, !dbg !1038
  %105 = load ptr, ptr %s.addr, align 8, !dbg !1040
  %lzma2152 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %105, i32 0, i32 2, !dbg !1041
  %compressed153 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2152, i32 0, i32 3, !dbg !1042
  %106 = load i32, ptr %compressed153, align 4, !dbg !1042
  %add154 = add i32 %106, 21, !dbg !1043
  %conv155 = zext i32 %add154 to i64, !dbg !1040
  %cmp156 = icmp uge i64 %104, %conv155, !dbg !1044
  br i1 %cmp156, label %if.then158, label %if.else166, !dbg !1045

if.then158:                                       ; preds = %if.then145
  %107 = load ptr, ptr %b.addr, align 8, !dbg !1046
  %in_pos159 = getelementptr inbounds %struct.xz_buf, ptr %107, i32 0, i32 1, !dbg !1047
  %108 = load i64, ptr %in_pos159, align 8, !dbg !1047
  %109 = load ptr, ptr %s.addr, align 8, !dbg !1048
  %lzma2160 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %109, i32 0, i32 2, !dbg !1049
  %compressed161 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2160, i32 0, i32 3, !dbg !1050
  %110 = load i32, ptr %compressed161, align 4, !dbg !1050
  %conv162 = zext i32 %110 to i64, !dbg !1048
  %add163 = add i64 %108, %conv162, !dbg !1051
  %111 = load ptr, ptr %s.addr, align 8, !dbg !1052
  %rc164 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %111, i32 0, i32 0, !dbg !1053
  %in_limit165 = getelementptr inbounds %struct.rc_dec, ptr %rc164, i32 0, i32 5, !dbg !1054
  store i64 %add163, ptr %in_limit165, align 8, !dbg !1055
  br label %if.end171, !dbg !1052

if.else166:                                       ; preds = %if.then145
  %112 = load ptr, ptr %b.addr, align 8, !dbg !1056
  %in_size167 = getelementptr inbounds %struct.xz_buf, ptr %112, i32 0, i32 2, !dbg !1057
  %113 = load i64, ptr %in_size167, align 8, !dbg !1057
  %sub168 = sub i64 %113, 21, !dbg !1058
  %114 = load ptr, ptr %s.addr, align 8, !dbg !1059
  %rc169 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %114, i32 0, i32 0, !dbg !1060
  %in_limit170 = getelementptr inbounds %struct.rc_dec, ptr %rc169, i32 0, i32 5, !dbg !1061
  store i64 %sub168, ptr %in_limit170, align 8, !dbg !1062
  br label %if.end171

if.end171:                                        ; preds = %if.else166, %if.then158
  %115 = load ptr, ptr %s.addr, align 8, !dbg !1063
  %call172 = call zeroext i1 @lzma_main(ptr noundef %115) #15, !dbg !1065
  br i1 %call172, label %if.end174, label %if.then173, !dbg !1066

if.then173:                                       ; preds = %if.end171
  store i1 false, ptr %retval, align 1, !dbg !1067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1067

if.end174:                                        ; preds = %if.end171
  %116 = load ptr, ptr %s.addr, align 8, !dbg !1068
  %rc175 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %116, i32 0, i32 0, !dbg !1069
  %in_pos176 = getelementptr inbounds %struct.rc_dec, ptr %rc175, i32 0, i32 4, !dbg !1070
  %117 = load i64, ptr %in_pos176, align 8, !dbg !1070
  %118 = load ptr, ptr %b.addr, align 8, !dbg !1071
  %in_pos177 = getelementptr inbounds %struct.xz_buf, ptr %118, i32 0, i32 1, !dbg !1072
  %119 = load i64, ptr %in_pos177, align 8, !dbg !1072
  %sub178 = sub i64 %117, %119, !dbg !1073
  store i64 %sub178, ptr %in_avail, align 8, !dbg !1074
  %120 = load i64, ptr %in_avail, align 8, !dbg !1075
  %121 = load ptr, ptr %s.addr, align 8, !dbg !1077
  %lzma2179 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %121, i32 0, i32 2, !dbg !1078
  %compressed180 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2179, i32 0, i32 3, !dbg !1079
  %122 = load i32, ptr %compressed180, align 4, !dbg !1079
  %conv181 = zext i32 %122 to i64, !dbg !1077
  %cmp182 = icmp ugt i64 %120, %conv181, !dbg !1080
  br i1 %cmp182, label %if.then184, label %if.end185, !dbg !1081

if.then184:                                       ; preds = %if.end174
  store i1 false, ptr %retval, align 1, !dbg !1082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1082

if.end185:                                        ; preds = %if.end174
  %123 = load i64, ptr %in_avail, align 8, !dbg !1083
  %124 = load ptr, ptr %s.addr, align 8, !dbg !1084
  %lzma2186 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %124, i32 0, i32 2, !dbg !1085
  %compressed187 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2186, i32 0, i32 3, !dbg !1086
  %125 = load i32, ptr %compressed187, align 4, !dbg !1087
  %conv188 = zext i32 %125 to i64, !dbg !1087
  %sub189 = sub i64 %conv188, %123, !dbg !1087
  %conv190 = trunc i64 %sub189 to i32, !dbg !1087
  store i32 %conv190, ptr %compressed187, align 4, !dbg !1087
  %126 = load ptr, ptr %s.addr, align 8, !dbg !1088
  %rc191 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %126, i32 0, i32 0, !dbg !1089
  %in_pos192 = getelementptr inbounds %struct.rc_dec, ptr %rc191, i32 0, i32 4, !dbg !1090
  %127 = load i64, ptr %in_pos192, align 8, !dbg !1090
  %128 = load ptr, ptr %b.addr, align 8, !dbg !1091
  %in_pos193 = getelementptr inbounds %struct.xz_buf, ptr %128, i32 0, i32 1, !dbg !1092
  store i64 %127, ptr %in_pos193, align 8, !dbg !1093
  br label %if.end194, !dbg !1094

if.end194:                                        ; preds = %if.end185, %if.end139
  %129 = load ptr, ptr %b.addr, align 8, !dbg !1095
  %in_size195 = getelementptr inbounds %struct.xz_buf, ptr %129, i32 0, i32 2, !dbg !1096
  %130 = load i64, ptr %in_size195, align 8, !dbg !1096
  %131 = load ptr, ptr %b.addr, align 8, !dbg !1097
  %in_pos196 = getelementptr inbounds %struct.xz_buf, ptr %131, i32 0, i32 1, !dbg !1098
  %132 = load i64, ptr %in_pos196, align 8, !dbg !1098
  %sub197 = sub i64 %130, %132, !dbg !1099
  store i64 %sub197, ptr %in_avail, align 8, !dbg !1100
  %133 = load i64, ptr %in_avail, align 8, !dbg !1101
  %cmp198 = icmp ult i64 %133, 21, !dbg !1103
  br i1 %cmp198, label %if.then200, label %if.end222, !dbg !1104

if.then200:                                       ; preds = %if.end194
  %134 = load i64, ptr %in_avail, align 8, !dbg !1105
  %135 = load ptr, ptr %s.addr, align 8, !dbg !1108
  %lzma2201 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %135, i32 0, i32 2, !dbg !1109
  %compressed202 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2201, i32 0, i32 3, !dbg !1110
  %136 = load i32, ptr %compressed202, align 4, !dbg !1110
  %conv203 = zext i32 %136 to i64, !dbg !1108
  %cmp204 = icmp ugt i64 %134, %conv203, !dbg !1111
  br i1 %cmp204, label %if.then206, label %if.end210, !dbg !1112

if.then206:                                       ; preds = %if.then200
  %137 = load ptr, ptr %s.addr, align 8, !dbg !1113
  %lzma2207 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %137, i32 0, i32 2, !dbg !1114
  %compressed208 = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2207, i32 0, i32 3, !dbg !1115
  %138 = load i32, ptr %compressed208, align 4, !dbg !1115
  %conv209 = zext i32 %138 to i64, !dbg !1113
  store i64 %conv209, ptr %in_avail, align 8, !dbg !1116
  br label %if.end210, !dbg !1117

if.end210:                                        ; preds = %if.then206, %if.then200
  %139 = load ptr, ptr %s.addr, align 8, !dbg !1118
  %temp211 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %139, i32 0, i32 4, !dbg !1119
  %buf212 = getelementptr inbounds %struct.anon, ptr %temp211, i32 0, i32 1, !dbg !1120
  %arraydecay213 = getelementptr inbounds [63 x i8], ptr %buf212, i64 0, i64 0, !dbg !1121
  %140 = load ptr, ptr %b.addr, align 8, !dbg !1122
  %in214 = getelementptr inbounds %struct.xz_buf, ptr %140, i32 0, i32 0, !dbg !1123
  %141 = load ptr, ptr %in214, align 8, !dbg !1123
  %142 = load ptr, ptr %b.addr, align 8, !dbg !1124
  %in_pos215 = getelementptr inbounds %struct.xz_buf, ptr %142, i32 0, i32 1, !dbg !1125
  %143 = load i64, ptr %in_pos215, align 8, !dbg !1125
  %add.ptr216 = getelementptr i8, ptr %141, i64 %143, !dbg !1126
  %144 = load i64, ptr %in_avail, align 8, !dbg !1127
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay213, ptr align 1 %add.ptr216, i64 %144, i1 false), !dbg !1121
  %145 = load i64, ptr %in_avail, align 8, !dbg !1128
  %conv217 = trunc i64 %145 to i32, !dbg !1128
  %146 = load ptr, ptr %s.addr, align 8, !dbg !1129
  %temp218 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %146, i32 0, i32 4, !dbg !1130
  %size219 = getelementptr inbounds %struct.anon, ptr %temp218, i32 0, i32 0, !dbg !1131
  store i32 %conv217, ptr %size219, align 4, !dbg !1132
  %147 = load i64, ptr %in_avail, align 8, !dbg !1133
  %148 = load ptr, ptr %b.addr, align 8, !dbg !1134
  %in_pos220 = getelementptr inbounds %struct.xz_buf, ptr %148, i32 0, i32 1, !dbg !1135
  %149 = load i64, ptr %in_pos220, align 8, !dbg !1136
  %add221 = add i64 %149, %147, !dbg !1136
  store i64 %add221, ptr %in_pos220, align 8, !dbg !1136
  br label %if.end222, !dbg !1137

if.end222:                                        ; preds = %if.end210, %if.end194
  store i1 true, ptr %retval, align 1, !dbg !1138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1138

cleanup:                                          ; preds = %if.end222, %if.then184, %if.then173, %if.then108, %if.then92, %if.then59
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #14, !dbg !1139
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_avail) #14, !dbg !1139
  %150 = load i1, ptr %retval, align 1, !dbg !1139
  ret i1 %150, !dbg !1139
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dict_flush(ptr noundef %dict, ptr noundef %b) #0 align 16 !dbg !1140 {
entry:
  %dict.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %copy_size = alloca i64, align 8
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !1144, metadata !DIExpression()), !dbg !1147
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1145, metadata !DIExpression()), !dbg !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy_size) #14, !dbg !1149
  call void @llvm.dbg.declare(metadata ptr %copy_size, metadata !1146, metadata !DIExpression()), !dbg !1150
  %0 = load ptr, ptr %dict.addr, align 8, !dbg !1151
  %pos = getelementptr inbounds %struct.dictionary, ptr %0, i32 0, i32 2, !dbg !1152
  %1 = load i64, ptr %pos, align 8, !dbg !1152
  %2 = load ptr, ptr %dict.addr, align 8, !dbg !1153
  %start = getelementptr inbounds %struct.dictionary, ptr %2, i32 0, i32 1, !dbg !1154
  %3 = load i64, ptr %start, align 8, !dbg !1154
  %sub = sub i64 %1, %3, !dbg !1155
  store i64 %sub, ptr %copy_size, align 8, !dbg !1150
  %4 = load ptr, ptr %dict.addr, align 8, !dbg !1156
  %mode = getelementptr inbounds %struct.dictionary, ptr %4, i32 0, i32 9, !dbg !1156
  %5 = load i32, ptr %mode, align 4, !dbg !1156
  %cmp = icmp ne i32 %5, 0, !dbg !1156
  br i1 %cmp, label %if.then, label %if.end7, !dbg !1158

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %dict.addr, align 8, !dbg !1159
  %pos1 = getelementptr inbounds %struct.dictionary, ptr %6, i32 0, i32 2, !dbg !1162
  %7 = load i64, ptr %pos1, align 8, !dbg !1162
  %8 = load ptr, ptr %dict.addr, align 8, !dbg !1163
  %end = getelementptr inbounds %struct.dictionary, ptr %8, i32 0, i32 5, !dbg !1164
  %9 = load i64, ptr %end, align 8, !dbg !1164
  %cmp2 = icmp eq i64 %7, %9, !dbg !1165
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1166

if.then3:                                         ; preds = %if.then
  %10 = load ptr, ptr %dict.addr, align 8, !dbg !1167
  %pos4 = getelementptr inbounds %struct.dictionary, ptr %10, i32 0, i32 2, !dbg !1168
  store i64 0, ptr %pos4, align 8, !dbg !1169
  br label %if.end, !dbg !1167

if.end:                                           ; preds = %if.then3, %if.then
  %11 = load ptr, ptr %b.addr, align 8, !dbg !1170
  %out = getelementptr inbounds %struct.xz_buf, ptr %11, i32 0, i32 3, !dbg !1172
  %12 = load ptr, ptr %out, align 8, !dbg !1172
  %13 = load ptr, ptr %b.addr, align 8, !dbg !1173
  %out_pos = getelementptr inbounds %struct.xz_buf, ptr %13, i32 0, i32 4, !dbg !1174
  %14 = load i64, ptr %out_pos, align 8, !dbg !1174
  %add.ptr = getelementptr i8, ptr %12, i64 %14, !dbg !1175
  %15 = load ptr, ptr %dict.addr, align 8, !dbg !1176
  %buf = getelementptr inbounds %struct.dictionary, ptr %15, i32 0, i32 0, !dbg !1177
  %16 = load ptr, ptr %buf, align 8, !dbg !1177
  %17 = load ptr, ptr %dict.addr, align 8, !dbg !1178
  %start5 = getelementptr inbounds %struct.dictionary, ptr %17, i32 0, i32 1, !dbg !1179
  %18 = load i64, ptr %start5, align 8, !dbg !1179
  %add.ptr6 = getelementptr i8, ptr %16, i64 %18, !dbg !1180
  %19 = load i64, ptr %copy_size, align 8, !dbg !1181
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr6, i64 %19, i1 false), !dbg !1182
  br label %if.end7, !dbg !1183

if.end7:                                          ; preds = %if.end, %entry
  %20 = load ptr, ptr %dict.addr, align 8, !dbg !1184
  %pos8 = getelementptr inbounds %struct.dictionary, ptr %20, i32 0, i32 2, !dbg !1185
  %21 = load i64, ptr %pos8, align 8, !dbg !1185
  %22 = load ptr, ptr %dict.addr, align 8, !dbg !1186
  %start9 = getelementptr inbounds %struct.dictionary, ptr %22, i32 0, i32 1, !dbg !1187
  store i64 %21, ptr %start9, align 8, !dbg !1188
  %23 = load i64, ptr %copy_size, align 8, !dbg !1189
  %24 = load ptr, ptr %b.addr, align 8, !dbg !1190
  %out_pos10 = getelementptr inbounds %struct.xz_buf, ptr %24, i32 0, i32 4, !dbg !1191
  %25 = load i64, ptr %out_pos10, align 8, !dbg !1192
  %add = add i64 %25, %23, !dbg !1192
  store i64 %add, ptr %out_pos10, align 8, !dbg !1192
  %26 = load i64, ptr %copy_size, align 8, !dbg !1193
  %conv = trunc i64 %26 to i32, !dbg !1193
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy_size) #14, !dbg !1194
  ret i32 %conv, !dbg !1195
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rc_is_finished(ptr noundef %rc) #3 align 16 !dbg !1196 {
entry:
  %rc.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !1202, metadata !DIExpression()), !dbg !1203
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !1204
  %code = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 1, !dbg !1205
  %1 = load i32, ptr %code, align 4, !dbg !1205
  %cmp = icmp eq i32 %1, 0, !dbg !1206
  ret i1 %cmp, !dbg !1207
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rc_reset(ptr noundef %rc) #0 align 16 !dbg !1208 {
entry:
  %rc.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !1212, metadata !DIExpression()), !dbg !1213
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !1214
  %range = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 0, !dbg !1215
  store i32 -1, ptr %range, align 8, !dbg !1216
  %1 = load ptr, ptr %rc.addr, align 8, !dbg !1217
  %code = getelementptr inbounds %struct.rc_dec, ptr %1, i32 0, i32 1, !dbg !1218
  store i32 0, ptr %code, align 4, !dbg !1219
  %2 = load ptr, ptr %rc.addr, align 8, !dbg !1220
  %init_bytes_left = getelementptr inbounds %struct.rc_dec, ptr %2, i32 0, i32 2, !dbg !1221
  store i32 5, ptr %init_bytes_left, align 8, !dbg !1222
  ret void, !dbg !1223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dict_uncompressed(ptr noundef %dict, ptr noundef %b, ptr noundef %left) #0 align 16 !dbg !1224 {
entry:
  %dict.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %left.addr = alloca ptr, align 8
  %copy_size = alloca i64, align 8
  %__UNIQUE_ID___x120 = alloca i64, align 8
  %__UNIQUE_ID___y121 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !1229, metadata !DIExpression()), !dbg !1237
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1230, metadata !DIExpression()), !dbg !1238
  store ptr %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !1231, metadata !DIExpression()), !dbg !1239
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy_size) #14, !dbg !1240
  call void @llvm.dbg.declare(metadata ptr %copy_size, metadata !1232, metadata !DIExpression()), !dbg !1241
  br label %while.cond, !dbg !1242

while.cond:                                       ; preds = %if.end48, %entry
  %0 = load ptr, ptr %left.addr, align 8, !dbg !1243
  %1 = load i32, ptr %0, align 4, !dbg !1244
  %cmp = icmp ugt i32 %1, 0, !dbg !1245
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !1246

land.lhs.true:                                    ; preds = %while.cond
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1247
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 1, !dbg !1248
  %3 = load i64, ptr %in_pos, align 8, !dbg !1248
  %4 = load ptr, ptr %b.addr, align 8, !dbg !1249
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %4, i32 0, i32 2, !dbg !1250
  %5 = load i64, ptr %in_size, align 8, !dbg !1250
  %cmp1 = icmp ult i64 %3, %5, !dbg !1251
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !1252

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %b.addr, align 8, !dbg !1253
  %out_pos = getelementptr inbounds %struct.xz_buf, ptr %6, i32 0, i32 4, !dbg !1254
  %7 = load i64, ptr %out_pos, align 8, !dbg !1254
  %8 = load ptr, ptr %b.addr, align 8, !dbg !1255
  %out_size = getelementptr inbounds %struct.xz_buf, ptr %8, i32 0, i32 5, !dbg !1256
  %9 = load i64, ptr %out_size, align 8, !dbg !1256
  %cmp2 = icmp ult i64 %7, %9, !dbg !1257
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp2, %land.rhs ], !dbg !1258
  br i1 %10, label %while.body, label %while.end, !dbg !1242

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x120) #14, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x120, metadata !1233, metadata !DIExpression()), !dbg !1259
  %11 = load ptr, ptr %b.addr, align 8, !dbg !1259
  %in_size3 = getelementptr inbounds %struct.xz_buf, ptr %11, i32 0, i32 2, !dbg !1259
  %12 = load i64, ptr %in_size3, align 8, !dbg !1259
  %13 = load ptr, ptr %b.addr, align 8, !dbg !1259
  %in_pos4 = getelementptr inbounds %struct.xz_buf, ptr %13, i32 0, i32 1, !dbg !1259
  %14 = load i64, ptr %in_pos4, align 8, !dbg !1259
  %sub = sub i64 %12, %14, !dbg !1259
  store i64 %sub, ptr %__UNIQUE_ID___x120, align 8, !dbg !1259
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y121) #14, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y121, metadata !1236, metadata !DIExpression()), !dbg !1259
  %15 = load ptr, ptr %b.addr, align 8, !dbg !1259
  %out_size5 = getelementptr inbounds %struct.xz_buf, ptr %15, i32 0, i32 5, !dbg !1259
  %16 = load i64, ptr %out_size5, align 8, !dbg !1259
  %17 = load ptr, ptr %b.addr, align 8, !dbg !1259
  %out_pos6 = getelementptr inbounds %struct.xz_buf, ptr %17, i32 0, i32 4, !dbg !1259
  %18 = load i64, ptr %out_pos6, align 8, !dbg !1259
  %sub7 = sub i64 %16, %18, !dbg !1259
  store i64 %sub7, ptr %__UNIQUE_ID___y121, align 8, !dbg !1259
  %19 = load i64, ptr %__UNIQUE_ID___x120, align 8, !dbg !1259
  %20 = load i64, ptr %__UNIQUE_ID___y121, align 8, !dbg !1259
  %cmp8 = icmp ult i64 %19, %20, !dbg !1259
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !1259

cond.true:                                        ; preds = %while.body
  %21 = load i64, ptr %__UNIQUE_ID___x120, align 8, !dbg !1259
  br label %cond.end, !dbg !1259

cond.false:                                       ; preds = %while.body
  %22 = load i64, ptr %__UNIQUE_ID___y121, align 8, !dbg !1259
  br label %cond.end, !dbg !1259

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !1259
  store i64 %cond, ptr %tmp, align 8, !dbg !1259
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y121) #14, !dbg !1260
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x120) #14, !dbg !1260
  %23 = load i64, ptr %tmp, align 8, !dbg !1259
  store i64 %23, ptr %copy_size, align 8, !dbg !1261
  %24 = load i64, ptr %copy_size, align 8, !dbg !1262
  %25 = load ptr, ptr %dict.addr, align 8, !dbg !1264
  %end = getelementptr inbounds %struct.dictionary, ptr %25, i32 0, i32 5, !dbg !1265
  %26 = load i64, ptr %end, align 8, !dbg !1265
  %27 = load ptr, ptr %dict.addr, align 8, !dbg !1266
  %pos = getelementptr inbounds %struct.dictionary, ptr %27, i32 0, i32 2, !dbg !1267
  %28 = load i64, ptr %pos, align 8, !dbg !1267
  %sub9 = sub i64 %26, %28, !dbg !1268
  %cmp10 = icmp ugt i64 %24, %sub9, !dbg !1269
  br i1 %cmp10, label %if.then, label %if.end, !dbg !1270

if.then:                                          ; preds = %cond.end
  %29 = load ptr, ptr %dict.addr, align 8, !dbg !1271
  %end11 = getelementptr inbounds %struct.dictionary, ptr %29, i32 0, i32 5, !dbg !1272
  %30 = load i64, ptr %end11, align 8, !dbg !1272
  %31 = load ptr, ptr %dict.addr, align 8, !dbg !1273
  %pos12 = getelementptr inbounds %struct.dictionary, ptr %31, i32 0, i32 2, !dbg !1274
  %32 = load i64, ptr %pos12, align 8, !dbg !1274
  %sub13 = sub i64 %30, %32, !dbg !1275
  store i64 %sub13, ptr %copy_size, align 8, !dbg !1276
  br label %if.end, !dbg !1277

if.end:                                           ; preds = %if.then, %cond.end
  %33 = load i64, ptr %copy_size, align 8, !dbg !1278
  %34 = load ptr, ptr %left.addr, align 8, !dbg !1280
  %35 = load i32, ptr %34, align 4, !dbg !1281
  %conv = zext i32 %35 to i64, !dbg !1281
  %cmp14 = icmp ugt i64 %33, %conv, !dbg !1282
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !1283

if.then16:                                        ; preds = %if.end
  %36 = load ptr, ptr %left.addr, align 8, !dbg !1284
  %37 = load i32, ptr %36, align 4, !dbg !1285
  %conv17 = zext i32 %37 to i64, !dbg !1285
  store i64 %conv17, ptr %copy_size, align 8, !dbg !1286
  br label %if.end18, !dbg !1287

if.end18:                                         ; preds = %if.then16, %if.end
  %38 = load i64, ptr %copy_size, align 8, !dbg !1288
  %39 = load ptr, ptr %left.addr, align 8, !dbg !1289
  %40 = load i32, ptr %39, align 4, !dbg !1290
  %conv19 = zext i32 %40 to i64, !dbg !1290
  %sub20 = sub i64 %conv19, %38, !dbg !1290
  %conv21 = trunc i64 %sub20 to i32, !dbg !1290
  store i32 %conv21, ptr %39, align 4, !dbg !1290
  %41 = load ptr, ptr %dict.addr, align 8, !dbg !1291
  %buf = getelementptr inbounds %struct.dictionary, ptr %41, i32 0, i32 0, !dbg !1292
  %42 = load ptr, ptr %buf, align 8, !dbg !1292
  %43 = load ptr, ptr %dict.addr, align 8, !dbg !1293
  %pos22 = getelementptr inbounds %struct.dictionary, ptr %43, i32 0, i32 2, !dbg !1294
  %44 = load i64, ptr %pos22, align 8, !dbg !1294
  %add.ptr = getelementptr i8, ptr %42, i64 %44, !dbg !1295
  %45 = load ptr, ptr %b.addr, align 8, !dbg !1296
  %in = getelementptr inbounds %struct.xz_buf, ptr %45, i32 0, i32 0, !dbg !1297
  %46 = load ptr, ptr %in, align 8, !dbg !1297
  %47 = load ptr, ptr %b.addr, align 8, !dbg !1298
  %in_pos23 = getelementptr inbounds %struct.xz_buf, ptr %47, i32 0, i32 1, !dbg !1299
  %48 = load i64, ptr %in_pos23, align 8, !dbg !1299
  %add.ptr24 = getelementptr i8, ptr %46, i64 %48, !dbg !1300
  %49 = load i64, ptr %copy_size, align 8, !dbg !1301
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr24, i64 %49, i1 false), !dbg !1302
  %50 = load i64, ptr %copy_size, align 8, !dbg !1303
  %51 = load ptr, ptr %dict.addr, align 8, !dbg !1304
  %pos25 = getelementptr inbounds %struct.dictionary, ptr %51, i32 0, i32 2, !dbg !1305
  %52 = load i64, ptr %pos25, align 8, !dbg !1306
  %add = add i64 %52, %50, !dbg !1306
  store i64 %add, ptr %pos25, align 8, !dbg !1306
  %53 = load ptr, ptr %dict.addr, align 8, !dbg !1307
  %full = getelementptr inbounds %struct.dictionary, ptr %53, i32 0, i32 3, !dbg !1309
  %54 = load i64, ptr %full, align 8, !dbg !1309
  %55 = load ptr, ptr %dict.addr, align 8, !dbg !1310
  %pos26 = getelementptr inbounds %struct.dictionary, ptr %55, i32 0, i32 2, !dbg !1311
  %56 = load i64, ptr %pos26, align 8, !dbg !1311
  %cmp27 = icmp ult i64 %54, %56, !dbg !1312
  br i1 %cmp27, label %if.then29, label %if.end32, !dbg !1313

if.then29:                                        ; preds = %if.end18
  %57 = load ptr, ptr %dict.addr, align 8, !dbg !1314
  %pos30 = getelementptr inbounds %struct.dictionary, ptr %57, i32 0, i32 2, !dbg !1315
  %58 = load i64, ptr %pos30, align 8, !dbg !1315
  %59 = load ptr, ptr %dict.addr, align 8, !dbg !1316
  %full31 = getelementptr inbounds %struct.dictionary, ptr %59, i32 0, i32 3, !dbg !1317
  store i64 %58, ptr %full31, align 8, !dbg !1318
  br label %if.end32, !dbg !1316

if.end32:                                         ; preds = %if.then29, %if.end18
  %60 = load ptr, ptr %dict.addr, align 8, !dbg !1319
  %mode = getelementptr inbounds %struct.dictionary, ptr %60, i32 0, i32 9, !dbg !1319
  %61 = load i32, ptr %mode, align 4, !dbg !1319
  %cmp33 = icmp ne i32 %61, 0, !dbg !1319
  br i1 %cmp33, label %if.then35, label %if.end48, !dbg !1321

if.then35:                                        ; preds = %if.end32
  %62 = load ptr, ptr %dict.addr, align 8, !dbg !1322
  %pos36 = getelementptr inbounds %struct.dictionary, ptr %62, i32 0, i32 2, !dbg !1325
  %63 = load i64, ptr %pos36, align 8, !dbg !1325
  %64 = load ptr, ptr %dict.addr, align 8, !dbg !1326
  %end37 = getelementptr inbounds %struct.dictionary, ptr %64, i32 0, i32 5, !dbg !1327
  %65 = load i64, ptr %end37, align 8, !dbg !1327
  %cmp38 = icmp eq i64 %63, %65, !dbg !1328
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !1329

if.then40:                                        ; preds = %if.then35
  %66 = load ptr, ptr %dict.addr, align 8, !dbg !1330
  %pos41 = getelementptr inbounds %struct.dictionary, ptr %66, i32 0, i32 2, !dbg !1331
  store i64 0, ptr %pos41, align 8, !dbg !1332
  br label %if.end42, !dbg !1330

if.end42:                                         ; preds = %if.then40, %if.then35
  %67 = load ptr, ptr %b.addr, align 8, !dbg !1333
  %out = getelementptr inbounds %struct.xz_buf, ptr %67, i32 0, i32 3, !dbg !1334
  %68 = load ptr, ptr %out, align 8, !dbg !1334
  %69 = load ptr, ptr %b.addr, align 8, !dbg !1335
  %out_pos43 = getelementptr inbounds %struct.xz_buf, ptr %69, i32 0, i32 4, !dbg !1336
  %70 = load i64, ptr %out_pos43, align 8, !dbg !1336
  %add.ptr44 = getelementptr i8, ptr %68, i64 %70, !dbg !1337
  %71 = load ptr, ptr %b.addr, align 8, !dbg !1338
  %in45 = getelementptr inbounds %struct.xz_buf, ptr %71, i32 0, i32 0, !dbg !1339
  %72 = load ptr, ptr %in45, align 8, !dbg !1339
  %73 = load ptr, ptr %b.addr, align 8, !dbg !1340
  %in_pos46 = getelementptr inbounds %struct.xz_buf, ptr %73, i32 0, i32 1, !dbg !1341
  %74 = load i64, ptr %in_pos46, align 8, !dbg !1341
  %add.ptr47 = getelementptr i8, ptr %72, i64 %74, !dbg !1342
  %75 = load i64, ptr %copy_size, align 8, !dbg !1343
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr44, ptr align 1 %add.ptr47, i64 %75, i1 false), !dbg !1344
  br label %if.end48, !dbg !1345

if.end48:                                         ; preds = %if.end42, %if.end32
  %76 = load ptr, ptr %dict.addr, align 8, !dbg !1346
  %pos49 = getelementptr inbounds %struct.dictionary, ptr %76, i32 0, i32 2, !dbg !1347
  %77 = load i64, ptr %pos49, align 8, !dbg !1347
  %78 = load ptr, ptr %dict.addr, align 8, !dbg !1348
  %start = getelementptr inbounds %struct.dictionary, ptr %78, i32 0, i32 1, !dbg !1349
  store i64 %77, ptr %start, align 8, !dbg !1350
  %79 = load i64, ptr %copy_size, align 8, !dbg !1351
  %80 = load ptr, ptr %b.addr, align 8, !dbg !1352
  %out_pos50 = getelementptr inbounds %struct.xz_buf, ptr %80, i32 0, i32 4, !dbg !1353
  %81 = load i64, ptr %out_pos50, align 8, !dbg !1354
  %add51 = add i64 %81, %79, !dbg !1354
  store i64 %add51, ptr %out_pos50, align 8, !dbg !1354
  %82 = load i64, ptr %copy_size, align 8, !dbg !1355
  %83 = load ptr, ptr %b.addr, align 8, !dbg !1356
  %in_pos52 = getelementptr inbounds %struct.xz_buf, ptr %83, i32 0, i32 1, !dbg !1357
  %84 = load i64, ptr %in_pos52, align 8, !dbg !1358
  %add53 = add i64 %84, %82, !dbg !1358
  store i64 %add53, ptr %in_pos52, align 8, !dbg !1358
  br label %while.cond, !dbg !1242, !llvm.loop !1359

while.end:                                        ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy_size) #14, !dbg !1361
  ret void, !dbg !1361
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xz_dec_lzma2_create(i32 noundef %mode, i32 noundef %dict_max) #0 align 16 !dbg !1362 {
entry:
  %retval = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %dict_max.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !1366, metadata !DIExpression()), !dbg !1369
  store i32 %dict_max, ptr %dict_max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dict_max.addr, metadata !1367, metadata !DIExpression()), !dbg !1370
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !1371
  call void @llvm.dbg.declare(metadata ptr %s, metadata !1368, metadata !DIExpression()), !dbg !1372
  %call = call noalias ptr @kmalloc(i64 noundef 28496, i32 noundef 3264) #16, !dbg !1373
  store ptr %call, ptr %s, align 8, !dbg !1372
  %0 = load ptr, ptr %s, align 8, !dbg !1374
  %cmp = icmp eq ptr %0, null, !dbg !1376
  br i1 %cmp, label %if.then, label %if.end, !dbg !1377

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1378

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4, !dbg !1379
  %2 = load ptr, ptr %s, align 8, !dbg !1380
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %2, i32 0, i32 1, !dbg !1381
  %mode1 = getelementptr inbounds %struct.dictionary, ptr %dict, i32 0, i32 9, !dbg !1382
  store i32 %1, ptr %mode1, align 4, !dbg !1383
  %3 = load i32, ptr %dict_max.addr, align 4, !dbg !1384
  %4 = load ptr, ptr %s, align 8, !dbg !1385
  %dict2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %4, i32 0, i32 1, !dbg !1386
  %size_max = getelementptr inbounds %struct.dictionary, ptr %dict2, i32 0, i32 7, !dbg !1387
  store i32 %3, ptr %size_max, align 4, !dbg !1388
  %5 = load i32, ptr %mode.addr, align 4, !dbg !1389
  %cmp3 = icmp eq i32 %5, 1, !dbg !1389
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !1391

if.then4:                                         ; preds = %if.end
  %6 = load i32, ptr %dict_max.addr, align 4, !dbg !1392
  %conv = zext i32 %6 to i64, !dbg !1392
  %call5 = call noalias ptr @vmalloc(i64 noundef %conv) #16, !dbg !1394
  %7 = load ptr, ptr %s, align 8, !dbg !1395
  %dict6 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %7, i32 0, i32 1, !dbg !1396
  %buf = getelementptr inbounds %struct.dictionary, ptr %dict6, i32 0, i32 0, !dbg !1397
  store ptr %call5, ptr %buf, align 8, !dbg !1398
  %8 = load ptr, ptr %s, align 8, !dbg !1399
  %dict7 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %8, i32 0, i32 1, !dbg !1401
  %buf8 = getelementptr inbounds %struct.dictionary, ptr %dict7, i32 0, i32 0, !dbg !1402
  %9 = load ptr, ptr %buf8, align 8, !dbg !1402
  %cmp9 = icmp eq ptr %9, null, !dbg !1403
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !1404

if.then11:                                        ; preds = %if.then4
  %10 = load ptr, ptr %s, align 8, !dbg !1405
  call void @kfree(ptr noundef %10) #15, !dbg !1407
  store ptr null, ptr %retval, align 8, !dbg !1408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1408

if.end12:                                         ; preds = %if.then4
  br label %if.end20, !dbg !1409

if.else:                                          ; preds = %if.end
  %11 = load i32, ptr %mode.addr, align 4, !dbg !1410
  %cmp13 = icmp eq i32 %11, 2, !dbg !1410
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !1412

if.then15:                                        ; preds = %if.else
  %12 = load ptr, ptr %s, align 8, !dbg !1413
  %dict16 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %12, i32 0, i32 1, !dbg !1415
  %buf17 = getelementptr inbounds %struct.dictionary, ptr %dict16, i32 0, i32 0, !dbg !1416
  store ptr null, ptr %buf17, align 8, !dbg !1417
  %13 = load ptr, ptr %s, align 8, !dbg !1418
  %dict18 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %13, i32 0, i32 1, !dbg !1419
  %allocated = getelementptr inbounds %struct.dictionary, ptr %dict18, i32 0, i32 8, !dbg !1420
  store i32 0, ptr %allocated, align 8, !dbg !1421
  br label %if.end19, !dbg !1422

if.end19:                                         ; preds = %if.then15, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end12
  %14 = load ptr, ptr %s, align 8, !dbg !1423
  store ptr %14, ptr %retval, align 8, !dbg !1424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1424

cleanup:                                          ; preds = %if.end20, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !1425
  %15 = load ptr, ptr %retval, align 8, !dbg !1425
  ret ptr %15, !dbg !1425
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !1426 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1430, metadata !DIExpression()), !dbg !1435
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1431, metadata !DIExpression()), !dbg !1436
  %0 = load i64, ptr %size.addr, align 8, !dbg !1437
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1438
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1439

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1440
  %tobool = icmp ne i64 %2, 0, !dbg !1440
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1441

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !1442
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1432, metadata !DIExpression()), !dbg !1443
  %3 = load i64, ptr %size.addr, align 8, !dbg !1444
  %cmp = icmp ugt i64 %3, 8192, !dbg !1446
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1447

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1448
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1449
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !1450
  store ptr %call, ptr %retval, align 8, !dbg !1451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1451

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1452
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !1452
  store i32 %call2, ptr %index, align 4, !dbg !1453
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1454
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1455
  %9 = ptrtoint ptr %8 to i64, !dbg !1455
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !1456
  %idxprom = zext i32 %call3 to i64, !dbg !1457
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1457
  %10 = load i32, ptr %index, align 4, !dbg !1458
  %idxprom4 = zext i32 %10 to i64, !dbg !1457
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1457
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1457
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1459
  %13 = load i64, ptr %size.addr, align 8, !dbg !1460
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !1461
  store ptr %call6, ptr %retval, align 8, !dbg !1462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1462

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !1463
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1464
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1465
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !1466
  store ptr %call8, ptr %retval, align 8, !dbg !1467
  br label %return, !dbg !1467

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1468
  ret ptr %16, !dbg !1468
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1469 dso_local noalias ptr @vmalloc(i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1473 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xz_dec_lzma2_reset(ptr noundef %s, i8 noundef zeroext %props) #0 align 16 !dbg !1478 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %props.addr = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1482, metadata !DIExpression()), !dbg !1484
  store i8 %props, ptr %props.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !1483, metadata !DIExpression()), !dbg !1485
  %0 = load i8, ptr %props.addr, align 1, !dbg !1486
  %conv = zext i8 %0 to i32, !dbg !1486
  %cmp = icmp sgt i32 %conv, 39, !dbg !1488
  br i1 %cmp, label %if.then, label %if.end, !dbg !1489

if.then:                                          ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !1490
  br label %return, !dbg !1490

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %props.addr, align 1, !dbg !1491
  %conv2 = zext i8 %1 to i32, !dbg !1491
  %and = and i32 %conv2, 1, !dbg !1492
  %add = add i32 2, %and, !dbg !1493
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1494
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %2, i32 0, i32 1, !dbg !1495
  %size = getelementptr inbounds %struct.dictionary, ptr %dict, i32 0, i32 6, !dbg !1496
  store i32 %add, ptr %size, align 8, !dbg !1497
  %3 = load i8, ptr %props.addr, align 1, !dbg !1498
  %conv3 = zext i8 %3 to i32, !dbg !1498
  %shr = ashr i32 %conv3, 1, !dbg !1499
  %add4 = add i32 %shr, 11, !dbg !1500
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1501
  %dict5 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %4, i32 0, i32 1, !dbg !1502
  %size6 = getelementptr inbounds %struct.dictionary, ptr %dict5, i32 0, i32 6, !dbg !1503
  %5 = load i32, ptr %size6, align 8, !dbg !1504
  %shl = shl i32 %5, %add4, !dbg !1504
  store i32 %shl, ptr %size6, align 8, !dbg !1504
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1505
  %dict7 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %6, i32 0, i32 1, !dbg !1505
  %mode = getelementptr inbounds %struct.dictionary, ptr %dict7, i32 0, i32 9, !dbg !1505
  %7 = load i32, ptr %mode, align 4, !dbg !1505
  %cmp8 = icmp ne i32 %7, 0, !dbg !1505
  br i1 %cmp8, label %if.then10, label %if.end53, !dbg !1507

if.then10:                                        ; preds = %if.end
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1508
  %dict11 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %8, i32 0, i32 1, !dbg !1511
  %size12 = getelementptr inbounds %struct.dictionary, ptr %dict11, i32 0, i32 6, !dbg !1512
  %9 = load i32, ptr %size12, align 8, !dbg !1512
  %10 = load ptr, ptr %s.addr, align 8, !dbg !1513
  %dict13 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %10, i32 0, i32 1, !dbg !1514
  %size_max = getelementptr inbounds %struct.dictionary, ptr %dict13, i32 0, i32 7, !dbg !1515
  %11 = load i32, ptr %size_max, align 4, !dbg !1515
  %cmp14 = icmp ugt i32 %9, %11, !dbg !1516
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1517

if.then16:                                        ; preds = %if.then10
  store i32 4, ptr %retval, align 4, !dbg !1518
  br label %return, !dbg !1518

if.end17:                                         ; preds = %if.then10
  %12 = load ptr, ptr %s.addr, align 8, !dbg !1519
  %dict18 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %12, i32 0, i32 1, !dbg !1520
  %size19 = getelementptr inbounds %struct.dictionary, ptr %dict18, i32 0, i32 6, !dbg !1521
  %13 = load i32, ptr %size19, align 8, !dbg !1521
  %conv20 = zext i32 %13 to i64, !dbg !1519
  %14 = load ptr, ptr %s.addr, align 8, !dbg !1522
  %dict21 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %14, i32 0, i32 1, !dbg !1523
  %end = getelementptr inbounds %struct.dictionary, ptr %dict21, i32 0, i32 5, !dbg !1524
  store i64 %conv20, ptr %end, align 8, !dbg !1525
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1526
  %dict22 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %15, i32 0, i32 1, !dbg !1526
  %mode23 = getelementptr inbounds %struct.dictionary, ptr %dict22, i32 0, i32 9, !dbg !1526
  %16 = load i32, ptr %mode23, align 4, !dbg !1526
  %cmp24 = icmp eq i32 %16, 2, !dbg !1526
  br i1 %cmp24, label %if.then26, label %if.end52, !dbg !1528

if.then26:                                        ; preds = %if.end17
  %17 = load ptr, ptr %s.addr, align 8, !dbg !1529
  %dict27 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %17, i32 0, i32 1, !dbg !1532
  %allocated = getelementptr inbounds %struct.dictionary, ptr %dict27, i32 0, i32 8, !dbg !1533
  %18 = load i32, ptr %allocated, align 8, !dbg !1533
  %19 = load ptr, ptr %s.addr, align 8, !dbg !1534
  %dict28 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %19, i32 0, i32 1, !dbg !1535
  %size29 = getelementptr inbounds %struct.dictionary, ptr %dict28, i32 0, i32 6, !dbg !1536
  %20 = load i32, ptr %size29, align 8, !dbg !1536
  %cmp30 = icmp ult i32 %18, %20, !dbg !1537
  br i1 %cmp30, label %if.then32, label %if.end51, !dbg !1538

if.then32:                                        ; preds = %if.then26
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1539
  %dict33 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %21, i32 0, i32 1, !dbg !1541
  %size34 = getelementptr inbounds %struct.dictionary, ptr %dict33, i32 0, i32 6, !dbg !1542
  %22 = load i32, ptr %size34, align 8, !dbg !1542
  %23 = load ptr, ptr %s.addr, align 8, !dbg !1543
  %dict35 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %23, i32 0, i32 1, !dbg !1544
  %allocated36 = getelementptr inbounds %struct.dictionary, ptr %dict35, i32 0, i32 8, !dbg !1545
  store i32 %22, ptr %allocated36, align 8, !dbg !1546
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1547
  %dict37 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %24, i32 0, i32 1, !dbg !1548
  %buf = getelementptr inbounds %struct.dictionary, ptr %dict37, i32 0, i32 0, !dbg !1549
  %25 = load ptr, ptr %buf, align 8, !dbg !1549
  call void @vfree(ptr noundef %25) #15, !dbg !1550
  %26 = load ptr, ptr %s.addr, align 8, !dbg !1551
  %dict38 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %26, i32 0, i32 1, !dbg !1552
  %size39 = getelementptr inbounds %struct.dictionary, ptr %dict38, i32 0, i32 6, !dbg !1553
  %27 = load i32, ptr %size39, align 8, !dbg !1553
  %conv40 = zext i32 %27 to i64, !dbg !1551
  %call = call noalias ptr @vmalloc(i64 noundef %conv40) #16, !dbg !1554
  %28 = load ptr, ptr %s.addr, align 8, !dbg !1555
  %dict41 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %28, i32 0, i32 1, !dbg !1556
  %buf42 = getelementptr inbounds %struct.dictionary, ptr %dict41, i32 0, i32 0, !dbg !1557
  store ptr %call, ptr %buf42, align 8, !dbg !1558
  %29 = load ptr, ptr %s.addr, align 8, !dbg !1559
  %dict43 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %29, i32 0, i32 1, !dbg !1561
  %buf44 = getelementptr inbounds %struct.dictionary, ptr %dict43, i32 0, i32 0, !dbg !1562
  %30 = load ptr, ptr %buf44, align 8, !dbg !1562
  %cmp45 = icmp eq ptr %30, null, !dbg !1563
  br i1 %cmp45, label %if.then47, label %if.end50, !dbg !1564

if.then47:                                        ; preds = %if.then32
  %31 = load ptr, ptr %s.addr, align 8, !dbg !1565
  %dict48 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %31, i32 0, i32 1, !dbg !1567
  %allocated49 = getelementptr inbounds %struct.dictionary, ptr %dict48, i32 0, i32 8, !dbg !1568
  store i32 0, ptr %allocated49, align 8, !dbg !1569
  store i32 3, ptr %retval, align 4, !dbg !1570
  br label %return, !dbg !1570

if.end50:                                         ; preds = %if.then32
  br label %if.end51, !dbg !1571

if.end51:                                         ; preds = %if.end50, %if.then26
  br label %if.end52, !dbg !1572

if.end52:                                         ; preds = %if.end51, %if.end17
  br label %if.end53, !dbg !1573

if.end53:                                         ; preds = %if.end52, %if.end
  %32 = load ptr, ptr %s.addr, align 8, !dbg !1574
  %lzma2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %32, i32 0, i32 2, !dbg !1575
  %sequence = getelementptr inbounds %struct.lzma2_dec, ptr %lzma2, i32 0, i32 0, !dbg !1576
  store i32 0, ptr %sequence, align 8, !dbg !1577
  %33 = load ptr, ptr %s.addr, align 8, !dbg !1578
  %lzma254 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %33, i32 0, i32 2, !dbg !1579
  %need_dict_reset = getelementptr inbounds %struct.lzma2_dec, ptr %lzma254, i32 0, i32 4, !dbg !1580
  store i8 1, ptr %need_dict_reset, align 8, !dbg !1581
  %34 = load ptr, ptr %s.addr, align 8, !dbg !1582
  %temp = getelementptr inbounds %struct.xz_dec_lzma2, ptr %34, i32 0, i32 4, !dbg !1583
  %size55 = getelementptr inbounds %struct.anon, ptr %temp, i32 0, i32 0, !dbg !1584
  store i32 0, ptr %size55, align 4, !dbg !1585
  store i32 0, ptr %retval, align 4, !dbg !1586
  br label %return, !dbg !1586

return:                                           ; preds = %if.end53, %if.then47, %if.then16, %if.then
  %35 = load i32, ptr %retval, align 4, !dbg !1587
  ret i32 %35, !dbg !1587
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1588 dso_local void @vfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @xz_dec_lzma2_end(ptr noundef %s) #0 align 16 !dbg !1589 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1591, metadata !DIExpression()), !dbg !1592
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1593
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, !dbg !1593
  %mode = getelementptr inbounds %struct.dictionary, ptr %dict, i32 0, i32 9, !dbg !1593
  %1 = load i32, ptr %mode, align 4, !dbg !1593
  %cmp = icmp ne i32 %1, 0, !dbg !1593
  br i1 %cmp, label %if.then, label %if.end, !dbg !1595

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1596
  %dict1 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %2, i32 0, i32 1, !dbg !1597
  %buf = getelementptr inbounds %struct.dictionary, ptr %dict1, i32 0, i32 0, !dbg !1598
  %3 = load ptr, ptr %buf, align 8, !dbg !1598
  call void @vfree(ptr noundef %3) #15, !dbg !1599
  br label %if.end, !dbg !1599

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1600
  call void @kfree(ptr noundef %4) #15, !dbg !1601
  ret void, !dbg !1602
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @lzma_main(ptr noundef %s) #0 align 16 !dbg !1603 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca ptr, align 8
  %pos_state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1607, metadata !DIExpression()), !dbg !1609
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos_state) #14, !dbg !1610
  call void @llvm.dbg.declare(metadata ptr %pos_state, metadata !1608, metadata !DIExpression()), !dbg !1611
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1612
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, !dbg !1614
  %call = call zeroext i1 @dict_has_space(ptr noundef %dict) #15, !dbg !1615
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !1616

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1617
  %lzma = getelementptr inbounds %struct.xz_dec_lzma2, ptr %1, i32 0, i32 3, !dbg !1618
  %len = getelementptr inbounds %struct.lzma_dec, ptr %lzma, i32 0, i32 5, !dbg !1619
  %2 = load i32, ptr %len, align 4, !dbg !1619
  %cmp = icmp ugt i32 %2, 0, !dbg !1620
  br i1 %cmp, label %if.then, label %if.end, !dbg !1621

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %s.addr, align 8, !dbg !1622
  %dict1 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %3, i32 0, i32 1, !dbg !1623
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1624
  %lzma2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %4, i32 0, i32 3, !dbg !1625
  %len3 = getelementptr inbounds %struct.lzma_dec, ptr %lzma2, i32 0, i32 5, !dbg !1626
  %5 = load ptr, ptr %s.addr, align 8, !dbg !1627
  %lzma4 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %5, i32 0, i32 3, !dbg !1628
  %rep0 = getelementptr inbounds %struct.lzma_dec, ptr %lzma4, i32 0, i32 0, !dbg !1629
  %6 = load i32, ptr %rep0, align 4, !dbg !1629
  %call5 = call zeroext i1 @dict_repeat(ptr noundef %dict1, ptr noundef %len3, i32 noundef %6) #15, !dbg !1630
  br label %if.end, !dbg !1630

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond, !dbg !1631

while.cond:                                       ; preds = %if.end38, %if.end
  %7 = load ptr, ptr %s.addr, align 8, !dbg !1632
  %dict6 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %7, i32 0, i32 1, !dbg !1633
  %call7 = call zeroext i1 @dict_has_space(ptr noundef %dict6) #15, !dbg !1634
  br i1 %call7, label %land.rhs, label %land.end, !dbg !1635

land.rhs:                                         ; preds = %while.cond
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1636
  %rc = getelementptr inbounds %struct.xz_dec_lzma2, ptr %8, i32 0, i32 0, !dbg !1637
  %call8 = call zeroext i1 @rc_limit_exceeded(ptr noundef %rc) #15, !dbg !1638
  %lnot = xor i1 %call8, true, !dbg !1639
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !1640
  br i1 %9, label %while.body, label %while.end, !dbg !1631

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %s.addr, align 8, !dbg !1641
  %dict9 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %10, i32 0, i32 1, !dbg !1643
  %pos = getelementptr inbounds %struct.dictionary, ptr %dict9, i32 0, i32 2, !dbg !1644
  %11 = load i64, ptr %pos, align 8, !dbg !1644
  %12 = load ptr, ptr %s.addr, align 8, !dbg !1645
  %lzma10 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %12, i32 0, i32 3, !dbg !1646
  %pos_mask = getelementptr inbounds %struct.lzma_dec, ptr %lzma10, i32 0, i32 8, !dbg !1647
  %13 = load i32, ptr %pos_mask, align 4, !dbg !1647
  %conv = zext i32 %13 to i64, !dbg !1645
  %and = and i64 %11, %conv, !dbg !1648
  %conv11 = trunc i64 %and to i32, !dbg !1641
  store i32 %conv11, ptr %pos_state, align 4, !dbg !1649
  %14 = load ptr, ptr %s.addr, align 8, !dbg !1650
  %rc12 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %14, i32 0, i32 0, !dbg !1652
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1653
  %lzma13 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %15, i32 0, i32 3, !dbg !1654
  %is_match = getelementptr inbounds %struct.lzma_dec, ptr %lzma13, i32 0, i32 9, !dbg !1655
  %16 = load ptr, ptr %s.addr, align 8, !dbg !1656
  %lzma14 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %16, i32 0, i32 3, !dbg !1657
  %state = getelementptr inbounds %struct.lzma_dec, ptr %lzma14, i32 0, i32 4, !dbg !1658
  %17 = load i32, ptr %state, align 4, !dbg !1658
  %idxprom = zext i32 %17 to i64, !dbg !1653
  %arrayidx = getelementptr [12 x [16 x i16]], ptr %is_match, i64 0, i64 %idxprom, !dbg !1653
  %18 = load i32, ptr %pos_state, align 4, !dbg !1659
  %idxprom15 = zext i32 %18 to i64, !dbg !1653
  %arrayidx16 = getelementptr [16 x i16], ptr %arrayidx, i64 0, i64 %idxprom15, !dbg !1653
  %call17 = call i32 @rc_bit(ptr noundef %rc12, ptr noundef %arrayidx16) #15, !dbg !1660
  %tobool = icmp ne i32 %call17, 0, !dbg !1660
  br i1 %tobool, label %if.else, label %if.then18, !dbg !1661

if.then18:                                        ; preds = %while.body
  %19 = load ptr, ptr %s.addr, align 8, !dbg !1662
  call void @lzma_literal(ptr noundef %19) #15, !dbg !1664
  br label %if.end38, !dbg !1665

if.else:                                          ; preds = %while.body
  %20 = load ptr, ptr %s.addr, align 8, !dbg !1666
  %rc19 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %20, i32 0, i32 0, !dbg !1669
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1670
  %lzma20 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %21, i32 0, i32 3, !dbg !1671
  %is_rep = getelementptr inbounds %struct.lzma_dec, ptr %lzma20, i32 0, i32 10, !dbg !1672
  %22 = load ptr, ptr %s.addr, align 8, !dbg !1673
  %lzma21 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %22, i32 0, i32 3, !dbg !1674
  %state22 = getelementptr inbounds %struct.lzma_dec, ptr %lzma21, i32 0, i32 4, !dbg !1675
  %23 = load i32, ptr %state22, align 4, !dbg !1675
  %idxprom23 = zext i32 %23 to i64, !dbg !1670
  %arrayidx24 = getelementptr [12 x i16], ptr %is_rep, i64 0, i64 %idxprom23, !dbg !1670
  %call25 = call i32 @rc_bit(ptr noundef %rc19, ptr noundef %arrayidx24) #15, !dbg !1676
  %tobool26 = icmp ne i32 %call25, 0, !dbg !1676
  br i1 %tobool26, label %if.then27, label %if.else28, !dbg !1677

if.then27:                                        ; preds = %if.else
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1678
  %25 = load i32, ptr %pos_state, align 4, !dbg !1679
  call void @lzma_rep_match(ptr noundef %24, i32 noundef %25) #15, !dbg !1680
  br label %if.end29, !dbg !1680

if.else28:                                        ; preds = %if.else
  %26 = load ptr, ptr %s.addr, align 8, !dbg !1681
  %27 = load i32, ptr %pos_state, align 4, !dbg !1682
  call void @lzma_match(ptr noundef %26, i32 noundef %27) #15, !dbg !1683
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  %28 = load ptr, ptr %s.addr, align 8, !dbg !1684
  %dict30 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %28, i32 0, i32 1, !dbg !1686
  %29 = load ptr, ptr %s.addr, align 8, !dbg !1687
  %lzma31 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %29, i32 0, i32 3, !dbg !1688
  %len32 = getelementptr inbounds %struct.lzma_dec, ptr %lzma31, i32 0, i32 5, !dbg !1689
  %30 = load ptr, ptr %s.addr, align 8, !dbg !1690
  %lzma33 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %30, i32 0, i32 3, !dbg !1691
  %rep034 = getelementptr inbounds %struct.lzma_dec, ptr %lzma33, i32 0, i32 0, !dbg !1692
  %31 = load i32, ptr %rep034, align 4, !dbg !1692
  %call35 = call zeroext i1 @dict_repeat(ptr noundef %dict30, ptr noundef %len32, i32 noundef %31) #15, !dbg !1693
  br i1 %call35, label %if.end37, label %if.then36, !dbg !1694

if.then36:                                        ; preds = %if.end29
  store i1 false, ptr %retval, align 1, !dbg !1695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1695

if.end37:                                         ; preds = %if.end29
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then18
  br label %while.cond, !dbg !1631, !llvm.loop !1696

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %s.addr, align 8, !dbg !1698
  %rc39 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %32, i32 0, i32 0, !dbg !1699
  call void @rc_normalize(ptr noundef %rc39) #15, !dbg !1700
  store i1 true, ptr %retval, align 1, !dbg !1701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1701

cleanup:                                          ; preds = %while.end, %if.then36
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos_state) #14, !dbg !1702
  %33 = load i1, ptr %retval, align 1, !dbg !1702
  ret i1 %33, !dbg !1702
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dict_has_space(ptr noundef %dict) #3 align 16 !dbg !1703 {
entry:
  %dict.addr = alloca ptr, align 8
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !1709, metadata !DIExpression()), !dbg !1710
  %0 = load ptr, ptr %dict.addr, align 8, !dbg !1711
  %pos = getelementptr inbounds %struct.dictionary, ptr %0, i32 0, i32 2, !dbg !1712
  %1 = load i64, ptr %pos, align 8, !dbg !1712
  %2 = load ptr, ptr %dict.addr, align 8, !dbg !1713
  %limit = getelementptr inbounds %struct.dictionary, ptr %2, i32 0, i32 4, !dbg !1714
  %3 = load i64, ptr %limit, align 8, !dbg !1714
  %cmp = icmp ult i64 %1, %3, !dbg !1715
  ret i1 %cmp, !dbg !1716
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dict_repeat(ptr noundef %dict, ptr noundef %len, i32 noundef %dist) #0 align 16 !dbg !1717 {
entry:
  %retval = alloca i1, align 1
  %dict.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %dist.addr = alloca i32, align 4
  %back = alloca i64, align 8
  %left = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x118 = alloca i64, align 8
  %__UNIQUE_ID___y119 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !1721, metadata !DIExpression()), !dbg !1729
  store ptr %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1722, metadata !DIExpression()), !dbg !1730
  store i32 %dist, ptr %dist.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dist.addr, metadata !1723, metadata !DIExpression()), !dbg !1731
  call void @llvm.lifetime.start.p0(i64 8, ptr %back) #14, !dbg !1732
  call void @llvm.dbg.declare(metadata ptr %back, metadata !1724, metadata !DIExpression()), !dbg !1733
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #14, !dbg !1734
  call void @llvm.dbg.declare(metadata ptr %left, metadata !1725, metadata !DIExpression()), !dbg !1735
  %0 = load i32, ptr %dist.addr, align 4, !dbg !1736
  %conv = zext i32 %0 to i64, !dbg !1736
  %1 = load ptr, ptr %dict.addr, align 8, !dbg !1738
  %full = getelementptr inbounds %struct.dictionary, ptr %1, i32 0, i32 3, !dbg !1739
  %2 = load i64, ptr %full, align 8, !dbg !1739
  %cmp = icmp uge i64 %conv, %2, !dbg !1740
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1741

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %dist.addr, align 4, !dbg !1742
  %4 = load ptr, ptr %dict.addr, align 8, !dbg !1743
  %size = getelementptr inbounds %struct.dictionary, ptr %4, i32 0, i32 6, !dbg !1744
  %5 = load i32, ptr %size, align 8, !dbg !1744
  %cmp2 = icmp uge i32 %3, %5, !dbg !1745
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1746

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !1747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1747

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x118) #14, !dbg !1748
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x118, metadata !1726, metadata !DIExpression()), !dbg !1748
  %6 = load ptr, ptr %dict.addr, align 8, !dbg !1748
  %limit = getelementptr inbounds %struct.dictionary, ptr %6, i32 0, i32 4, !dbg !1748
  %7 = load i64, ptr %limit, align 8, !dbg !1748
  %8 = load ptr, ptr %dict.addr, align 8, !dbg !1748
  %pos = getelementptr inbounds %struct.dictionary, ptr %8, i32 0, i32 2, !dbg !1748
  %9 = load i64, ptr %pos, align 8, !dbg !1748
  %sub = sub i64 %7, %9, !dbg !1748
  store i64 %sub, ptr %__UNIQUE_ID___x118, align 8, !dbg !1748
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y119) #14, !dbg !1748
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y119, metadata !1728, metadata !DIExpression()), !dbg !1748
  %10 = load ptr, ptr %len.addr, align 8, !dbg !1748
  %11 = load i32, ptr %10, align 4, !dbg !1748
  %conv4 = zext i32 %11 to i64, !dbg !1748
  store i64 %conv4, ptr %__UNIQUE_ID___y119, align 8, !dbg !1748
  %12 = load i64, ptr %__UNIQUE_ID___x118, align 8, !dbg !1748
  %13 = load i64, ptr %__UNIQUE_ID___y119, align 8, !dbg !1748
  %cmp5 = icmp ult i64 %12, %13, !dbg !1748
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !1748

cond.true:                                        ; preds = %if.end
  %14 = load i64, ptr %__UNIQUE_ID___x118, align 8, !dbg !1748
  br label %cond.end, !dbg !1748

cond.false:                                       ; preds = %if.end
  %15 = load i64, ptr %__UNIQUE_ID___y119, align 8, !dbg !1748
  br label %cond.end, !dbg !1748

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !1748
  store i64 %cond, ptr %tmp, align 8, !dbg !1748
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y119) #14, !dbg !1749
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x118) #14, !dbg !1749
  %16 = load i64, ptr %tmp, align 8, !dbg !1748
  %conv7 = trunc i64 %16 to i32, !dbg !1749
  store i32 %conv7, ptr %left, align 4, !dbg !1750
  %17 = load i32, ptr %left, align 4, !dbg !1751
  %18 = load ptr, ptr %len.addr, align 8, !dbg !1752
  %19 = load i32, ptr %18, align 4, !dbg !1753
  %sub8 = sub i32 %19, %17, !dbg !1753
  store i32 %sub8, ptr %18, align 4, !dbg !1753
  %20 = load ptr, ptr %dict.addr, align 8, !dbg !1754
  %pos9 = getelementptr inbounds %struct.dictionary, ptr %20, i32 0, i32 2, !dbg !1755
  %21 = load i64, ptr %pos9, align 8, !dbg !1755
  %22 = load i32, ptr %dist.addr, align 4, !dbg !1756
  %conv10 = zext i32 %22 to i64, !dbg !1756
  %sub11 = sub i64 %21, %conv10, !dbg !1757
  %sub12 = sub i64 %sub11, 1, !dbg !1758
  store i64 %sub12, ptr %back, align 8, !dbg !1759
  %23 = load i32, ptr %dist.addr, align 4, !dbg !1760
  %conv13 = zext i32 %23 to i64, !dbg !1760
  %24 = load ptr, ptr %dict.addr, align 8, !dbg !1762
  %pos14 = getelementptr inbounds %struct.dictionary, ptr %24, i32 0, i32 2, !dbg !1763
  %25 = load i64, ptr %pos14, align 8, !dbg !1763
  %cmp15 = icmp uge i64 %conv13, %25, !dbg !1764
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !1765

if.then17:                                        ; preds = %cond.end
  %26 = load ptr, ptr %dict.addr, align 8, !dbg !1766
  %end = getelementptr inbounds %struct.dictionary, ptr %26, i32 0, i32 5, !dbg !1767
  %27 = load i64, ptr %end, align 8, !dbg !1767
  %28 = load i64, ptr %back, align 8, !dbg !1768
  %add = add i64 %28, %27, !dbg !1768
  store i64 %add, ptr %back, align 8, !dbg !1768
  br label %if.end18, !dbg !1769

if.end18:                                         ; preds = %if.then17, %cond.end
  br label %do.body, !dbg !1770

do.body:                                          ; preds = %do.cond, %if.end18
  %29 = load ptr, ptr %dict.addr, align 8, !dbg !1771
  %buf = getelementptr inbounds %struct.dictionary, ptr %29, i32 0, i32 0, !dbg !1773
  %30 = load ptr, ptr %buf, align 8, !dbg !1773
  %31 = load i64, ptr %back, align 8, !dbg !1774
  %inc = add i64 %31, 1, !dbg !1774
  store i64 %inc, ptr %back, align 8, !dbg !1774
  %arrayidx = getelementptr i8, ptr %30, i64 %31, !dbg !1771
  %32 = load i8, ptr %arrayidx, align 1, !dbg !1771
  %33 = load ptr, ptr %dict.addr, align 8, !dbg !1775
  %buf19 = getelementptr inbounds %struct.dictionary, ptr %33, i32 0, i32 0, !dbg !1776
  %34 = load ptr, ptr %buf19, align 8, !dbg !1776
  %35 = load ptr, ptr %dict.addr, align 8, !dbg !1777
  %pos20 = getelementptr inbounds %struct.dictionary, ptr %35, i32 0, i32 2, !dbg !1778
  %36 = load i64, ptr %pos20, align 8, !dbg !1779
  %inc21 = add i64 %36, 1, !dbg !1779
  store i64 %inc21, ptr %pos20, align 8, !dbg !1779
  %arrayidx22 = getelementptr i8, ptr %34, i64 %36, !dbg !1775
  store i8 %32, ptr %arrayidx22, align 1, !dbg !1780
  %37 = load i64, ptr %back, align 8, !dbg !1781
  %38 = load ptr, ptr %dict.addr, align 8, !dbg !1783
  %end23 = getelementptr inbounds %struct.dictionary, ptr %38, i32 0, i32 5, !dbg !1784
  %39 = load i64, ptr %end23, align 8, !dbg !1784
  %cmp24 = icmp eq i64 %37, %39, !dbg !1785
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1786

if.then26:                                        ; preds = %do.body
  store i64 0, ptr %back, align 8, !dbg !1787
  br label %if.end27, !dbg !1788

if.end27:                                         ; preds = %if.then26, %do.body
  br label %do.cond, !dbg !1789

do.cond:                                          ; preds = %if.end27
  %40 = load i32, ptr %left, align 4, !dbg !1790
  %dec = add i32 %40, -1, !dbg !1790
  store i32 %dec, ptr %left, align 4, !dbg !1790
  %cmp28 = icmp ugt i32 %dec, 0, !dbg !1791
  br i1 %cmp28, label %do.body, label %do.end, !dbg !1789, !llvm.loop !1792

do.end:                                           ; preds = %do.cond
  %41 = load ptr, ptr %dict.addr, align 8, !dbg !1794
  %full30 = getelementptr inbounds %struct.dictionary, ptr %41, i32 0, i32 3, !dbg !1796
  %42 = load i64, ptr %full30, align 8, !dbg !1796
  %43 = load ptr, ptr %dict.addr, align 8, !dbg !1797
  %pos31 = getelementptr inbounds %struct.dictionary, ptr %43, i32 0, i32 2, !dbg !1798
  %44 = load i64, ptr %pos31, align 8, !dbg !1798
  %cmp32 = icmp ult i64 %42, %44, !dbg !1799
  br i1 %cmp32, label %if.then34, label %if.end37, !dbg !1800

if.then34:                                        ; preds = %do.end
  %45 = load ptr, ptr %dict.addr, align 8, !dbg !1801
  %pos35 = getelementptr inbounds %struct.dictionary, ptr %45, i32 0, i32 2, !dbg !1802
  %46 = load i64, ptr %pos35, align 8, !dbg !1802
  %47 = load ptr, ptr %dict.addr, align 8, !dbg !1803
  %full36 = getelementptr inbounds %struct.dictionary, ptr %47, i32 0, i32 3, !dbg !1804
  store i64 %46, ptr %full36, align 8, !dbg !1805
  br label %if.end37, !dbg !1803

if.end37:                                         ; preds = %if.then34, %do.end
  store i1 true, ptr %retval, align 1, !dbg !1806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1806

cleanup:                                          ; preds = %if.end37, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #14, !dbg !1807
  call void @llvm.lifetime.end.p0(i64 8, ptr %back) #14, !dbg !1807
  %48 = load i1, ptr %retval, align 1, !dbg !1807
  ret i1 %48, !dbg !1807
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rc_limit_exceeded(ptr noundef %rc) #3 align 16 !dbg !1808 {
entry:
  %rc.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !1810, metadata !DIExpression()), !dbg !1811
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !1812
  %in_pos = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 4, !dbg !1813
  %1 = load i64, ptr %in_pos, align 8, !dbg !1813
  %2 = load ptr, ptr %rc.addr, align 8, !dbg !1814
  %in_limit = getelementptr inbounds %struct.rc_dec, ptr %2, i32 0, i32 5, !dbg !1815
  %3 = load i64, ptr %in_limit, align 8, !dbg !1815
  %cmp = icmp ugt i64 %1, %3, !dbg !1816
  ret i1 %cmp, !dbg !1817
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rc_bit(ptr noundef %rc, ptr noundef %prob) #9 align 16 !dbg !1818 {
entry:
  %rc.addr = alloca ptr, align 8
  %prob.addr = alloca ptr, align 8
  %bound = alloca i32, align 4
  %bit = alloca i32, align 4
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !1823, metadata !DIExpression()), !dbg !1827
  store ptr %prob, ptr %prob.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prob.addr, metadata !1824, metadata !DIExpression()), !dbg !1828
  call void @llvm.lifetime.start.p0(i64 4, ptr %bound) #14, !dbg !1829
  call void @llvm.dbg.declare(metadata ptr %bound, metadata !1825, metadata !DIExpression()), !dbg !1830
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #14, !dbg !1831
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !1826, metadata !DIExpression()), !dbg !1832
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !1833
  call void @rc_normalize(ptr noundef %0) #15, !dbg !1834
  %1 = load ptr, ptr %rc.addr, align 8, !dbg !1835
  %range = getelementptr inbounds %struct.rc_dec, ptr %1, i32 0, i32 0, !dbg !1836
  %2 = load i32, ptr %range, align 8, !dbg !1836
  %shr = lshr i32 %2, 11, !dbg !1837
  %3 = load ptr, ptr %prob.addr, align 8, !dbg !1838
  %4 = load i16, ptr %3, align 2, !dbg !1839
  %conv = zext i16 %4 to i32, !dbg !1839
  %mul = mul i32 %shr, %conv, !dbg !1840
  store i32 %mul, ptr %bound, align 4, !dbg !1841
  %5 = load ptr, ptr %rc.addr, align 8, !dbg !1842
  %code = getelementptr inbounds %struct.rc_dec, ptr %5, i32 0, i32 1, !dbg !1844
  %6 = load i32, ptr %code, align 4, !dbg !1844
  %7 = load i32, ptr %bound, align 4, !dbg !1845
  %cmp = icmp ult i32 %6, %7, !dbg !1846
  br i1 %cmp, label %if.then, label %if.else, !dbg !1847

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %bound, align 4, !dbg !1848
  %9 = load ptr, ptr %rc.addr, align 8, !dbg !1850
  %range2 = getelementptr inbounds %struct.rc_dec, ptr %9, i32 0, i32 0, !dbg !1851
  store i32 %8, ptr %range2, align 8, !dbg !1852
  %10 = load ptr, ptr %prob.addr, align 8, !dbg !1853
  %11 = load i16, ptr %10, align 2, !dbg !1854
  %conv3 = zext i16 %11 to i32, !dbg !1854
  %sub = sub i32 2048, %conv3, !dbg !1855
  %shr4 = ashr i32 %sub, 5, !dbg !1856
  %12 = load ptr, ptr %prob.addr, align 8, !dbg !1857
  %13 = load i16, ptr %12, align 2, !dbg !1858
  %conv5 = zext i16 %13 to i32, !dbg !1858
  %add = add i32 %conv5, %shr4, !dbg !1858
  %conv6 = trunc i32 %add to i16, !dbg !1858
  store i16 %conv6, ptr %12, align 2, !dbg !1858
  store i32 0, ptr %bit, align 4, !dbg !1859
  br label %if.end, !dbg !1860

if.else:                                          ; preds = %entry
  %14 = load i32, ptr %bound, align 4, !dbg !1861
  %15 = load ptr, ptr %rc.addr, align 8, !dbg !1863
  %range7 = getelementptr inbounds %struct.rc_dec, ptr %15, i32 0, i32 0, !dbg !1864
  %16 = load i32, ptr %range7, align 8, !dbg !1865
  %sub8 = sub i32 %16, %14, !dbg !1865
  store i32 %sub8, ptr %range7, align 8, !dbg !1865
  %17 = load i32, ptr %bound, align 4, !dbg !1866
  %18 = load ptr, ptr %rc.addr, align 8, !dbg !1867
  %code9 = getelementptr inbounds %struct.rc_dec, ptr %18, i32 0, i32 1, !dbg !1868
  %19 = load i32, ptr %code9, align 4, !dbg !1869
  %sub10 = sub i32 %19, %17, !dbg !1869
  store i32 %sub10, ptr %code9, align 4, !dbg !1869
  %20 = load ptr, ptr %prob.addr, align 8, !dbg !1870
  %21 = load i16, ptr %20, align 2, !dbg !1871
  %conv11 = zext i16 %21 to i32, !dbg !1871
  %shr12 = ashr i32 %conv11, 5, !dbg !1872
  %22 = load ptr, ptr %prob.addr, align 8, !dbg !1873
  %23 = load i16, ptr %22, align 2, !dbg !1874
  %conv13 = zext i16 %23 to i32, !dbg !1874
  %sub14 = sub i32 %conv13, %shr12, !dbg !1874
  %conv15 = trunc i32 %sub14 to i16, !dbg !1874
  store i16 %conv15, ptr %22, align 2, !dbg !1874
  store i32 1, ptr %bit, align 4, !dbg !1875
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load i32, ptr %bit, align 4, !dbg !1876
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #14, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 4, ptr %bound) #14, !dbg !1877
  ret i32 %24, !dbg !1878
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lzma_literal(ptr noundef %s) #0 align 16 !dbg !1879 {
entry:
  %s.addr = alloca ptr, align 8
  %probs = alloca ptr, align 8
  %symbol = alloca i32, align 4
  %match_byte = alloca i32, align 4
  %match_bit = alloca i32, align 4
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1881, metadata !DIExpression()), !dbg !1888
  call void @llvm.lifetime.start.p0(i64 8, ptr %probs) #14, !dbg !1889
  call void @llvm.dbg.declare(metadata ptr %probs, metadata !1882, metadata !DIExpression()), !dbg !1890
  call void @llvm.lifetime.start.p0(i64 4, ptr %symbol) #14, !dbg !1891
  call void @llvm.dbg.declare(metadata ptr %symbol, metadata !1883, metadata !DIExpression()), !dbg !1892
  call void @llvm.lifetime.start.p0(i64 4, ptr %match_byte) #14, !dbg !1893
  call void @llvm.dbg.declare(metadata ptr %match_byte, metadata !1884, metadata !DIExpression()), !dbg !1894
  call void @llvm.lifetime.start.p0(i64 4, ptr %match_bit) #14, !dbg !1895
  call void @llvm.dbg.declare(metadata ptr %match_bit, metadata !1885, metadata !DIExpression()), !dbg !1896
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #14, !dbg !1897
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1886, metadata !DIExpression()), !dbg !1898
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1899
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1887, metadata !DIExpression()), !dbg !1900
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1901
  %call = call ptr @lzma_literal_probs(ptr noundef %0) #15, !dbg !1902
  store ptr %call, ptr %probs, align 8, !dbg !1903
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1904
  %lzma = getelementptr inbounds %struct.xz_dec_lzma2, ptr %1, i32 0, i32 3, !dbg !1906
  %state = getelementptr inbounds %struct.lzma_dec, ptr %lzma, i32 0, i32 4, !dbg !1907
  %2 = load i32, ptr %state, align 4, !dbg !1907
  %call1 = call zeroext i1 @lzma_state_is_literal(i32 noundef %2) #15, !dbg !1908
  br i1 %call1, label %if.then, label %if.else, !dbg !1909

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !1910
  %rc = getelementptr inbounds %struct.xz_dec_lzma2, ptr %3, i32 0, i32 0, !dbg !1912
  %4 = load ptr, ptr %probs, align 8, !dbg !1913
  %call2 = call i32 @rc_bittree(ptr noundef %rc, ptr noundef %4, i32 noundef 256) #15, !dbg !1914
  store i32 %call2, ptr %symbol, align 4, !dbg !1915
  br label %if.end16, !dbg !1916

if.else:                                          ; preds = %entry
  store i32 1, ptr %symbol, align 4, !dbg !1917
  %5 = load ptr, ptr %s.addr, align 8, !dbg !1919
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %5, i32 0, i32 1, !dbg !1920
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1921
  %lzma3 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %6, i32 0, i32 3, !dbg !1922
  %rep0 = getelementptr inbounds %struct.lzma_dec, ptr %lzma3, i32 0, i32 0, !dbg !1923
  %7 = load i32, ptr %rep0, align 4, !dbg !1923
  %call4 = call i32 @dict_get(ptr noundef %dict, i32 noundef %7) #15, !dbg !1924
  %shl = shl i32 %call4, 1, !dbg !1925
  store i32 %shl, ptr %match_byte, align 4, !dbg !1926
  store i32 256, ptr %offset, align 4, !dbg !1927
  br label %do.body, !dbg !1928

do.body:                                          ; preds = %do.cond, %if.else
  %8 = load i32, ptr %match_byte, align 4, !dbg !1929
  %9 = load i32, ptr %offset, align 4, !dbg !1931
  %and = and i32 %8, %9, !dbg !1932
  store i32 %and, ptr %match_bit, align 4, !dbg !1933
  %10 = load i32, ptr %match_byte, align 4, !dbg !1934
  %shl5 = shl i32 %10, 1, !dbg !1934
  store i32 %shl5, ptr %match_byte, align 4, !dbg !1934
  %11 = load i32, ptr %offset, align 4, !dbg !1935
  %12 = load i32, ptr %match_bit, align 4, !dbg !1936
  %add = add i32 %11, %12, !dbg !1937
  %13 = load i32, ptr %symbol, align 4, !dbg !1938
  %add6 = add i32 %add, %13, !dbg !1939
  store i32 %add6, ptr %i, align 4, !dbg !1940
  %14 = load ptr, ptr %s.addr, align 8, !dbg !1941
  %rc7 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %14, i32 0, i32 0, !dbg !1943
  %15 = load ptr, ptr %probs, align 8, !dbg !1944
  %16 = load i32, ptr %i, align 4, !dbg !1945
  %idxprom = zext i32 %16 to i64, !dbg !1944
  %arrayidx = getelementptr i16, ptr %15, i64 %idxprom, !dbg !1944
  %call8 = call i32 @rc_bit(ptr noundef %rc7, ptr noundef %arrayidx) #15, !dbg !1946
  %tobool = icmp ne i32 %call8, 0, !dbg !1946
  br i1 %tobool, label %if.then9, label %if.else13, !dbg !1947

if.then9:                                         ; preds = %do.body
  %17 = load i32, ptr %symbol, align 4, !dbg !1948
  %shl10 = shl i32 %17, 1, !dbg !1950
  %add11 = add i32 %shl10, 1, !dbg !1951
  store i32 %add11, ptr %symbol, align 4, !dbg !1952
  %18 = load i32, ptr %match_bit, align 4, !dbg !1953
  %19 = load i32, ptr %offset, align 4, !dbg !1954
  %and12 = and i32 %19, %18, !dbg !1954
  store i32 %and12, ptr %offset, align 4, !dbg !1954
  br label %if.end, !dbg !1955

if.else13:                                        ; preds = %do.body
  %20 = load i32, ptr %symbol, align 4, !dbg !1956
  %shl14 = shl i32 %20, 1, !dbg !1956
  store i32 %shl14, ptr %symbol, align 4, !dbg !1956
  %21 = load i32, ptr %match_bit, align 4, !dbg !1958
  %not = xor i32 %21, -1, !dbg !1959
  %22 = load i32, ptr %offset, align 4, !dbg !1960
  %and15 = and i32 %22, %not, !dbg !1960
  store i32 %and15, ptr %offset, align 4, !dbg !1960
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then9
  br label %do.cond, !dbg !1961

do.cond:                                          ; preds = %if.end
  %23 = load i32, ptr %symbol, align 4, !dbg !1962
  %cmp = icmp ult i32 %23, 256, !dbg !1963
  br i1 %cmp, label %do.body, label %do.end, !dbg !1961, !llvm.loop !1964

do.end:                                           ; preds = %do.cond
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.then
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1966
  %dict17 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %24, i32 0, i32 1, !dbg !1967
  %25 = load i32, ptr %symbol, align 4, !dbg !1968
  %conv = trunc i32 %25 to i8, !dbg !1969
  call void @dict_put(ptr noundef %dict17, i8 noundef zeroext %conv) #15, !dbg !1970
  %26 = load ptr, ptr %s.addr, align 8, !dbg !1971
  %lzma18 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %26, i32 0, i32 3, !dbg !1972
  %state19 = getelementptr inbounds %struct.lzma_dec, ptr %lzma18, i32 0, i32 4, !dbg !1973
  call void @lzma_state_literal(ptr noundef %state19) #15, !dbg !1974
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !1975
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #14, !dbg !1975
  call void @llvm.lifetime.end.p0(i64 4, ptr %match_bit) #14, !dbg !1975
  call void @llvm.lifetime.end.p0(i64 4, ptr %match_byte) #14, !dbg !1975
  call void @llvm.lifetime.end.p0(i64 4, ptr %symbol) #14, !dbg !1975
  call void @llvm.lifetime.end.p0(i64 8, ptr %probs) #14, !dbg !1975
  ret void, !dbg !1975
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lzma_rep_match(ptr noundef %s, i32 noundef %pos_state) #0 align 16 !dbg !1976 {
entry:
  %s.addr = alloca ptr, align 8
  %pos_state.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1980, metadata !DIExpression()), !dbg !1983
  store i32 %pos_state, ptr %pos_state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos_state.addr, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #14, !dbg !1985
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1982, metadata !DIExpression()), !dbg !1986
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1987
  %rc = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 0, !dbg !1989
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1990
  %lzma = getelementptr inbounds %struct.xz_dec_lzma2, ptr %1, i32 0, i32 3, !dbg !1991
  %is_rep0 = getelementptr inbounds %struct.lzma_dec, ptr %lzma, i32 0, i32 11, !dbg !1992
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1993
  %lzma1 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %2, i32 0, i32 3, !dbg !1994
  %state = getelementptr inbounds %struct.lzma_dec, ptr %lzma1, i32 0, i32 4, !dbg !1995
  %3 = load i32, ptr %state, align 4, !dbg !1995
  %idxprom = zext i32 %3 to i64, !dbg !1990
  %arrayidx = getelementptr [12 x i16], ptr %is_rep0, i64 0, i64 %idxprom, !dbg !1990
  %call = call i32 @rc_bit(ptr noundef %rc, ptr noundef %arrayidx) #15, !dbg !1996
  %tobool = icmp ne i32 %call, 0, !dbg !1996
  br i1 %tobool, label %if.else, label %if.then, !dbg !1997

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1998
  %rc2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %4, i32 0, i32 0, !dbg !2001
  %5 = load ptr, ptr %s.addr, align 8, !dbg !2002
  %lzma3 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %5, i32 0, i32 3, !dbg !2003
  %is_rep0_long = getelementptr inbounds %struct.lzma_dec, ptr %lzma3, i32 0, i32 14, !dbg !2004
  %6 = load ptr, ptr %s.addr, align 8, !dbg !2005
  %lzma4 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %6, i32 0, i32 3, !dbg !2006
  %state5 = getelementptr inbounds %struct.lzma_dec, ptr %lzma4, i32 0, i32 4, !dbg !2007
  %7 = load i32, ptr %state5, align 4, !dbg !2007
  %idxprom6 = zext i32 %7 to i64, !dbg !2002
  %arrayidx7 = getelementptr [12 x [16 x i16]], ptr %is_rep0_long, i64 0, i64 %idxprom6, !dbg !2002
  %8 = load i32, ptr %pos_state.addr, align 4, !dbg !2008
  %idxprom8 = zext i32 %8 to i64, !dbg !2002
  %arrayidx9 = getelementptr [16 x i16], ptr %arrayidx7, i64 0, i64 %idxprom8, !dbg !2002
  %call10 = call i32 @rc_bit(ptr noundef %rc2, ptr noundef %arrayidx9) #15, !dbg !2009
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2009
  br i1 %tobool11, label %if.end, label %if.then12, !dbg !2010

if.then12:                                        ; preds = %if.then
  %9 = load ptr, ptr %s.addr, align 8, !dbg !2011
  %lzma13 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %9, i32 0, i32 3, !dbg !2013
  %state14 = getelementptr inbounds %struct.lzma_dec, ptr %lzma13, i32 0, i32 4, !dbg !2014
  call void @lzma_state_short_rep(ptr noundef %state14) #15, !dbg !2015
  %10 = load ptr, ptr %s.addr, align 8, !dbg !2016
  %lzma15 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %10, i32 0, i32 3, !dbg !2017
  %len = getelementptr inbounds %struct.lzma_dec, ptr %lzma15, i32 0, i32 5, !dbg !2018
  store i32 1, ptr %len, align 4, !dbg !2019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2020

if.end:                                           ; preds = %if.then
  br label %if.end54, !dbg !2021

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %s.addr, align 8, !dbg !2022
  %rc16 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %11, i32 0, i32 0, !dbg !2025
  %12 = load ptr, ptr %s.addr, align 8, !dbg !2026
  %lzma17 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %12, i32 0, i32 3, !dbg !2027
  %is_rep1 = getelementptr inbounds %struct.lzma_dec, ptr %lzma17, i32 0, i32 12, !dbg !2028
  %13 = load ptr, ptr %s.addr, align 8, !dbg !2029
  %lzma18 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %13, i32 0, i32 3, !dbg !2030
  %state19 = getelementptr inbounds %struct.lzma_dec, ptr %lzma18, i32 0, i32 4, !dbg !2031
  %14 = load i32, ptr %state19, align 4, !dbg !2031
  %idxprom20 = zext i32 %14 to i64, !dbg !2026
  %arrayidx21 = getelementptr [12 x i16], ptr %is_rep1, i64 0, i64 %idxprom20, !dbg !2026
  %call22 = call i32 @rc_bit(ptr noundef %rc16, ptr noundef %arrayidx21) #15, !dbg !2032
  %tobool23 = icmp ne i32 %call22, 0, !dbg !2032
  br i1 %tobool23, label %if.else26, label %if.then24, !dbg !2033

if.then24:                                        ; preds = %if.else
  %15 = load ptr, ptr %s.addr, align 8, !dbg !2034
  %lzma25 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %15, i32 0, i32 3, !dbg !2036
  %rep1 = getelementptr inbounds %struct.lzma_dec, ptr %lzma25, i32 0, i32 1, !dbg !2037
  %16 = load i32, ptr %rep1, align 4, !dbg !2037
  store i32 %16, ptr %tmp, align 4, !dbg !2038
  br label %if.end48, !dbg !2039

if.else26:                                        ; preds = %if.else
  %17 = load ptr, ptr %s.addr, align 8, !dbg !2040
  %rc27 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %17, i32 0, i32 0, !dbg !2043
  %18 = load ptr, ptr %s.addr, align 8, !dbg !2044
  %lzma28 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %18, i32 0, i32 3, !dbg !2045
  %is_rep2 = getelementptr inbounds %struct.lzma_dec, ptr %lzma28, i32 0, i32 13, !dbg !2046
  %19 = load ptr, ptr %s.addr, align 8, !dbg !2047
  %lzma29 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %19, i32 0, i32 3, !dbg !2048
  %state30 = getelementptr inbounds %struct.lzma_dec, ptr %lzma29, i32 0, i32 4, !dbg !2049
  %20 = load i32, ptr %state30, align 4, !dbg !2049
  %idxprom31 = zext i32 %20 to i64, !dbg !2044
  %arrayidx32 = getelementptr [12 x i16], ptr %is_rep2, i64 0, i64 %idxprom31, !dbg !2044
  %call33 = call i32 @rc_bit(ptr noundef %rc27, ptr noundef %arrayidx32) #15, !dbg !2050
  %tobool34 = icmp ne i32 %call33, 0, !dbg !2050
  br i1 %tobool34, label %if.else37, label %if.then35, !dbg !2051

if.then35:                                        ; preds = %if.else26
  %21 = load ptr, ptr %s.addr, align 8, !dbg !2052
  %lzma36 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %21, i32 0, i32 3, !dbg !2054
  %rep2 = getelementptr inbounds %struct.lzma_dec, ptr %lzma36, i32 0, i32 2, !dbg !2055
  %22 = load i32, ptr %rep2, align 4, !dbg !2055
  store i32 %22, ptr %tmp, align 4, !dbg !2056
  br label %if.end43, !dbg !2057

if.else37:                                        ; preds = %if.else26
  %23 = load ptr, ptr %s.addr, align 8, !dbg !2058
  %lzma38 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %23, i32 0, i32 3, !dbg !2060
  %rep3 = getelementptr inbounds %struct.lzma_dec, ptr %lzma38, i32 0, i32 3, !dbg !2061
  %24 = load i32, ptr %rep3, align 4, !dbg !2061
  store i32 %24, ptr %tmp, align 4, !dbg !2062
  %25 = load ptr, ptr %s.addr, align 8, !dbg !2063
  %lzma39 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %25, i32 0, i32 3, !dbg !2064
  %rep240 = getelementptr inbounds %struct.lzma_dec, ptr %lzma39, i32 0, i32 2, !dbg !2065
  %26 = load i32, ptr %rep240, align 4, !dbg !2065
  %27 = load ptr, ptr %s.addr, align 8, !dbg !2066
  %lzma41 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %27, i32 0, i32 3, !dbg !2067
  %rep342 = getelementptr inbounds %struct.lzma_dec, ptr %lzma41, i32 0, i32 3, !dbg !2068
  store i32 %26, ptr %rep342, align 4, !dbg !2069
  br label %if.end43

if.end43:                                         ; preds = %if.else37, %if.then35
  %28 = load ptr, ptr %s.addr, align 8, !dbg !2070
  %lzma44 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %28, i32 0, i32 3, !dbg !2071
  %rep145 = getelementptr inbounds %struct.lzma_dec, ptr %lzma44, i32 0, i32 1, !dbg !2072
  %29 = load i32, ptr %rep145, align 4, !dbg !2072
  %30 = load ptr, ptr %s.addr, align 8, !dbg !2073
  %lzma46 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %30, i32 0, i32 3, !dbg !2074
  %rep247 = getelementptr inbounds %struct.lzma_dec, ptr %lzma46, i32 0, i32 2, !dbg !2075
  store i32 %29, ptr %rep247, align 4, !dbg !2076
  br label %if.end48

if.end48:                                         ; preds = %if.end43, %if.then24
  %31 = load ptr, ptr %s.addr, align 8, !dbg !2077
  %lzma49 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %31, i32 0, i32 3, !dbg !2078
  %rep0 = getelementptr inbounds %struct.lzma_dec, ptr %lzma49, i32 0, i32 0, !dbg !2079
  %32 = load i32, ptr %rep0, align 4, !dbg !2079
  %33 = load ptr, ptr %s.addr, align 8, !dbg !2080
  %lzma50 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %33, i32 0, i32 3, !dbg !2081
  %rep151 = getelementptr inbounds %struct.lzma_dec, ptr %lzma50, i32 0, i32 1, !dbg !2082
  store i32 %32, ptr %rep151, align 4, !dbg !2083
  %34 = load i32, ptr %tmp, align 4, !dbg !2084
  %35 = load ptr, ptr %s.addr, align 8, !dbg !2085
  %lzma52 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %35, i32 0, i32 3, !dbg !2086
  %rep053 = getelementptr inbounds %struct.lzma_dec, ptr %lzma52, i32 0, i32 0, !dbg !2087
  store i32 %34, ptr %rep053, align 4, !dbg !2088
  br label %if.end54

if.end54:                                         ; preds = %if.end48, %if.end
  %36 = load ptr, ptr %s.addr, align 8, !dbg !2089
  %lzma55 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %36, i32 0, i32 3, !dbg !2090
  %state56 = getelementptr inbounds %struct.lzma_dec, ptr %lzma55, i32 0, i32 4, !dbg !2091
  call void @lzma_state_long_rep(ptr noundef %state56) #15, !dbg !2092
  %37 = load ptr, ptr %s.addr, align 8, !dbg !2093
  %38 = load ptr, ptr %s.addr, align 8, !dbg !2094
  %lzma57 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %38, i32 0, i32 3, !dbg !2095
  %rep_len_dec = getelementptr inbounds %struct.lzma_dec, ptr %lzma57, i32 0, i32 19, !dbg !2096
  %39 = load i32, ptr %pos_state.addr, align 4, !dbg !2097
  call void @lzma_len(ptr noundef %37, ptr noundef %rep_len_dec, i32 noundef %39) #15, !dbg !2098
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2099
  br label %cleanup, !dbg !2099

cleanup:                                          ; preds = %if.end54, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #14, !dbg !2099
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2099

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lzma_match(ptr noundef %s, i32 noundef %pos_state) #0 align 16 !dbg !2100 {
entry:
  %s.addr = alloca ptr, align 8
  %pos_state.addr = alloca i32, align 4
  %probs = alloca ptr, align 8
  %dist_slot = alloca i32, align 4
  %limit = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2102, metadata !DIExpression()), !dbg !2107
  store i32 %pos_state, ptr %pos_state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos_state.addr, metadata !2103, metadata !DIExpression()), !dbg !2108
  call void @llvm.lifetime.start.p0(i64 8, ptr %probs) #14, !dbg !2109
  call void @llvm.dbg.declare(metadata ptr %probs, metadata !2104, metadata !DIExpression()), !dbg !2110
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist_slot) #14, !dbg !2111
  call void @llvm.dbg.declare(metadata ptr %dist_slot, metadata !2105, metadata !DIExpression()), !dbg !2112
  call void @llvm.lifetime.start.p0(i64 4, ptr %limit) #14, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !2106, metadata !DIExpression()), !dbg !2114
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2115
  %lzma = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, !dbg !2116
  %state = getelementptr inbounds %struct.lzma_dec, ptr %lzma, i32 0, i32 4, !dbg !2117
  call void @lzma_state_match(ptr noundef %state) #15, !dbg !2118
  %1 = load ptr, ptr %s.addr, align 8, !dbg !2119
  %lzma1 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %1, i32 0, i32 3, !dbg !2120
  %rep2 = getelementptr inbounds %struct.lzma_dec, ptr %lzma1, i32 0, i32 2, !dbg !2121
  %2 = load i32, ptr %rep2, align 4, !dbg !2121
  %3 = load ptr, ptr %s.addr, align 8, !dbg !2122
  %lzma2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %3, i32 0, i32 3, !dbg !2123
  %rep3 = getelementptr inbounds %struct.lzma_dec, ptr %lzma2, i32 0, i32 3, !dbg !2124
  store i32 %2, ptr %rep3, align 4, !dbg !2125
  %4 = load ptr, ptr %s.addr, align 8, !dbg !2126
  %lzma3 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %4, i32 0, i32 3, !dbg !2127
  %rep1 = getelementptr inbounds %struct.lzma_dec, ptr %lzma3, i32 0, i32 1, !dbg !2128
  %5 = load i32, ptr %rep1, align 4, !dbg !2128
  %6 = load ptr, ptr %s.addr, align 8, !dbg !2129
  %lzma4 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %6, i32 0, i32 3, !dbg !2130
  %rep25 = getelementptr inbounds %struct.lzma_dec, ptr %lzma4, i32 0, i32 2, !dbg !2131
  store i32 %5, ptr %rep25, align 4, !dbg !2132
  %7 = load ptr, ptr %s.addr, align 8, !dbg !2133
  %lzma6 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %7, i32 0, i32 3, !dbg !2134
  %rep0 = getelementptr inbounds %struct.lzma_dec, ptr %lzma6, i32 0, i32 0, !dbg !2135
  %8 = load i32, ptr %rep0, align 4, !dbg !2135
  %9 = load ptr, ptr %s.addr, align 8, !dbg !2136
  %lzma7 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %9, i32 0, i32 3, !dbg !2137
  %rep18 = getelementptr inbounds %struct.lzma_dec, ptr %lzma7, i32 0, i32 1, !dbg !2138
  store i32 %8, ptr %rep18, align 4, !dbg !2139
  %10 = load ptr, ptr %s.addr, align 8, !dbg !2140
  %11 = load ptr, ptr %s.addr, align 8, !dbg !2141
  %lzma9 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %11, i32 0, i32 3, !dbg !2142
  %match_len_dec = getelementptr inbounds %struct.lzma_dec, ptr %lzma9, i32 0, i32 18, !dbg !2143
  %12 = load i32, ptr %pos_state.addr, align 4, !dbg !2144
  call void @lzma_len(ptr noundef %10, ptr noundef %match_len_dec, i32 noundef %12) #15, !dbg !2145
  %13 = load ptr, ptr %s.addr, align 8, !dbg !2146
  %lzma10 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %13, i32 0, i32 3, !dbg !2147
  %dist_slot11 = getelementptr inbounds %struct.lzma_dec, ptr %lzma10, i32 0, i32 15, !dbg !2148
  %14 = load ptr, ptr %s.addr, align 8, !dbg !2149
  %lzma12 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %14, i32 0, i32 3, !dbg !2150
  %len = getelementptr inbounds %struct.lzma_dec, ptr %lzma12, i32 0, i32 5, !dbg !2151
  %15 = load i32, ptr %len, align 4, !dbg !2151
  %call = call i32 @lzma_get_dist_state(i32 noundef %15) #15, !dbg !2152
  %idxprom = zext i32 %call to i64, !dbg !2146
  %arrayidx = getelementptr [4 x [64 x i16]], ptr %dist_slot11, i64 0, i64 %idxprom, !dbg !2146
  %arraydecay = getelementptr inbounds [64 x i16], ptr %arrayidx, i64 0, i64 0, !dbg !2146
  store ptr %arraydecay, ptr %probs, align 8, !dbg !2153
  %16 = load ptr, ptr %s.addr, align 8, !dbg !2154
  %rc = getelementptr inbounds %struct.xz_dec_lzma2, ptr %16, i32 0, i32 0, !dbg !2155
  %17 = load ptr, ptr %probs, align 8, !dbg !2156
  %call13 = call i32 @rc_bittree(ptr noundef %rc, ptr noundef %17, i32 noundef 64) #15, !dbg !2157
  %sub = sub i32 %call13, 64, !dbg !2158
  store i32 %sub, ptr %dist_slot, align 4, !dbg !2159
  %18 = load i32, ptr %dist_slot, align 4, !dbg !2160
  %cmp = icmp ult i32 %18, 4, !dbg !2162
  br i1 %cmp, label %if.then, label %if.else, !dbg !2163

if.then:                                          ; preds = %entry
  %19 = load i32, ptr %dist_slot, align 4, !dbg !2164
  %20 = load ptr, ptr %s.addr, align 8, !dbg !2166
  %lzma14 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %20, i32 0, i32 3, !dbg !2167
  %rep015 = getelementptr inbounds %struct.lzma_dec, ptr %lzma14, i32 0, i32 0, !dbg !2168
  store i32 %19, ptr %rep015, align 4, !dbg !2169
  br label %if.end46, !dbg !2170

if.else:                                          ; preds = %entry
  %21 = load i32, ptr %dist_slot, align 4, !dbg !2171
  %shr = lshr i32 %21, 1, !dbg !2173
  %sub16 = sub i32 %shr, 1, !dbg !2174
  store i32 %sub16, ptr %limit, align 4, !dbg !2175
  %22 = load i32, ptr %dist_slot, align 4, !dbg !2176
  %and = and i32 %22, 1, !dbg !2177
  %add = add i32 2, %and, !dbg !2178
  %23 = load ptr, ptr %s.addr, align 8, !dbg !2179
  %lzma17 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %23, i32 0, i32 3, !dbg !2180
  %rep018 = getelementptr inbounds %struct.lzma_dec, ptr %lzma17, i32 0, i32 0, !dbg !2181
  store i32 %add, ptr %rep018, align 4, !dbg !2182
  %24 = load i32, ptr %dist_slot, align 4, !dbg !2183
  %cmp19 = icmp ult i32 %24, 14, !dbg !2185
  br i1 %cmp19, label %if.then20, label %if.else33, !dbg !2186

if.then20:                                        ; preds = %if.else
  %25 = load i32, ptr %limit, align 4, !dbg !2187
  %26 = load ptr, ptr %s.addr, align 8, !dbg !2189
  %lzma21 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %26, i32 0, i32 3, !dbg !2190
  %rep022 = getelementptr inbounds %struct.lzma_dec, ptr %lzma21, i32 0, i32 0, !dbg !2191
  %27 = load i32, ptr %rep022, align 4, !dbg !2192
  %shl = shl i32 %27, %25, !dbg !2192
  store i32 %shl, ptr %rep022, align 4, !dbg !2192
  %28 = load ptr, ptr %s.addr, align 8, !dbg !2193
  %lzma23 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %28, i32 0, i32 3, !dbg !2194
  %dist_special = getelementptr inbounds %struct.lzma_dec, ptr %lzma23, i32 0, i32 16, !dbg !2195
  %arraydecay24 = getelementptr inbounds [114 x i16], ptr %dist_special, i64 0, i64 0, !dbg !2193
  %29 = load ptr, ptr %s.addr, align 8, !dbg !2196
  %lzma25 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %29, i32 0, i32 3, !dbg !2197
  %rep026 = getelementptr inbounds %struct.lzma_dec, ptr %lzma25, i32 0, i32 0, !dbg !2198
  %30 = load i32, ptr %rep026, align 4, !dbg !2198
  %idx.ext = zext i32 %30 to i64, !dbg !2199
  %add.ptr = getelementptr i16, ptr %arraydecay24, i64 %idx.ext, !dbg !2199
  %31 = load i32, ptr %dist_slot, align 4, !dbg !2200
  %idx.ext27 = zext i32 %31 to i64, !dbg !2201
  %idx.neg = sub i64 0, %idx.ext27, !dbg !2201
  %add.ptr28 = getelementptr i16, ptr %add.ptr, i64 %idx.neg, !dbg !2201
  %add.ptr29 = getelementptr i16, ptr %add.ptr28, i64 -1, !dbg !2202
  store ptr %add.ptr29, ptr %probs, align 8, !dbg !2203
  %32 = load ptr, ptr %s.addr, align 8, !dbg !2204
  %rc30 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %32, i32 0, i32 0, !dbg !2205
  %33 = load ptr, ptr %probs, align 8, !dbg !2206
  %34 = load ptr, ptr %s.addr, align 8, !dbg !2207
  %lzma31 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %34, i32 0, i32 3, !dbg !2208
  %rep032 = getelementptr inbounds %struct.lzma_dec, ptr %lzma31, i32 0, i32 0, !dbg !2209
  %35 = load i32, ptr %limit, align 4, !dbg !2210
  call void @rc_bittree_reverse(ptr noundef %rc30, ptr noundef %33, ptr noundef %rep032, i32 noundef %35) #15, !dbg !2211
  br label %if.end, !dbg !2212

if.else33:                                        ; preds = %if.else
  %36 = load ptr, ptr %s.addr, align 8, !dbg !2213
  %rc34 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %36, i32 0, i32 0, !dbg !2215
  %37 = load ptr, ptr %s.addr, align 8, !dbg !2216
  %lzma35 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %37, i32 0, i32 3, !dbg !2217
  %rep036 = getelementptr inbounds %struct.lzma_dec, ptr %lzma35, i32 0, i32 0, !dbg !2218
  %38 = load i32, ptr %limit, align 4, !dbg !2219
  %sub37 = sub i32 %38, 4, !dbg !2220
  call void @rc_direct(ptr noundef %rc34, ptr noundef %rep036, i32 noundef %sub37) #15, !dbg !2221
  %39 = load ptr, ptr %s.addr, align 8, !dbg !2222
  %lzma38 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %39, i32 0, i32 3, !dbg !2223
  %rep039 = getelementptr inbounds %struct.lzma_dec, ptr %lzma38, i32 0, i32 0, !dbg !2224
  %40 = load i32, ptr %rep039, align 4, !dbg !2225
  %shl40 = shl i32 %40, 4, !dbg !2225
  store i32 %shl40, ptr %rep039, align 4, !dbg !2225
  %41 = load ptr, ptr %s.addr, align 8, !dbg !2226
  %rc41 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %41, i32 0, i32 0, !dbg !2227
  %42 = load ptr, ptr %s.addr, align 8, !dbg !2228
  %lzma42 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %42, i32 0, i32 3, !dbg !2229
  %dist_align = getelementptr inbounds %struct.lzma_dec, ptr %lzma42, i32 0, i32 17, !dbg !2230
  %arraydecay43 = getelementptr inbounds [16 x i16], ptr %dist_align, i64 0, i64 0, !dbg !2228
  %43 = load ptr, ptr %s.addr, align 8, !dbg !2231
  %lzma44 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %43, i32 0, i32 3, !dbg !2232
  %rep045 = getelementptr inbounds %struct.lzma_dec, ptr %lzma44, i32 0, i32 0, !dbg !2233
  call void @rc_bittree_reverse(ptr noundef %rc41, ptr noundef %arraydecay43, ptr noundef %rep045, i32 noundef 4) #15, !dbg !2234
  br label %if.end

if.end:                                           ; preds = %if.else33, %if.then20
  br label %if.end46

if.end46:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %limit) #14, !dbg !2235
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist_slot) #14, !dbg !2235
  call void @llvm.lifetime.end.p0(i64 8, ptr %probs) #14, !dbg !2235
  ret void, !dbg !2235
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rc_normalize(ptr noundef %rc) #9 align 16 !dbg !2236 {
entry:
  %rc.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !2238, metadata !DIExpression()), !dbg !2239
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !2240
  %range = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 0, !dbg !2242
  %1 = load i32, ptr %range, align 8, !dbg !2242
  %cmp = icmp ult i32 %1, 16777216, !dbg !2243
  br i1 %cmp, label %if.then, label %if.end, !dbg !2244

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %rc.addr, align 8, !dbg !2245
  %range1 = getelementptr inbounds %struct.rc_dec, ptr %2, i32 0, i32 0, !dbg !2247
  %3 = load i32, ptr %range1, align 8, !dbg !2248
  %shl = shl i32 %3, 8, !dbg !2248
  store i32 %shl, ptr %range1, align 8, !dbg !2248
  %4 = load ptr, ptr %rc.addr, align 8, !dbg !2249
  %code = getelementptr inbounds %struct.rc_dec, ptr %4, i32 0, i32 1, !dbg !2250
  %5 = load i32, ptr %code, align 4, !dbg !2250
  %shl2 = shl i32 %5, 8, !dbg !2251
  %6 = load ptr, ptr %rc.addr, align 8, !dbg !2252
  %in = getelementptr inbounds %struct.rc_dec, ptr %6, i32 0, i32 3, !dbg !2253
  %7 = load ptr, ptr %in, align 8, !dbg !2253
  %8 = load ptr, ptr %rc.addr, align 8, !dbg !2254
  %in_pos = getelementptr inbounds %struct.rc_dec, ptr %8, i32 0, i32 4, !dbg !2255
  %9 = load i64, ptr %in_pos, align 8, !dbg !2256
  %inc = add i64 %9, 1, !dbg !2256
  store i64 %inc, ptr %in_pos, align 8, !dbg !2256
  %arrayidx = getelementptr i8, ptr %7, i64 %9, !dbg !2252
  %10 = load i8, ptr %arrayidx, align 1, !dbg !2252
  %conv = zext i8 %10 to i32, !dbg !2252
  %add = add i32 %shl2, %conv, !dbg !2257
  %11 = load ptr, ptr %rc.addr, align 8, !dbg !2258
  %code3 = getelementptr inbounds %struct.rc_dec, ptr %11, i32 0, i32 1, !dbg !2259
  store i32 %add, ptr %code3, align 4, !dbg !2260
  br label %if.end, !dbg !2261

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2262
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lzma_literal_probs(ptr noundef %s) #0 align 16 !dbg !2263 {
entry:
  %s.addr = alloca ptr, align 8
  %prev_byte = alloca i32, align 4
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2267, metadata !DIExpression()), !dbg !2271
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev_byte) #14, !dbg !2272
  call void @llvm.dbg.declare(metadata ptr %prev_byte, metadata !2268, metadata !DIExpression()), !dbg !2273
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2274
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, !dbg !2275
  %call = call i32 @dict_get(ptr noundef %dict, i32 noundef 0) #15, !dbg !2276
  store i32 %call, ptr %prev_byte, align 4, !dbg !2273
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #14, !dbg !2277
  call void @llvm.dbg.declare(metadata ptr %low, metadata !2269, metadata !DIExpression()), !dbg !2278
  %1 = load i32, ptr %prev_byte, align 4, !dbg !2279
  %2 = load ptr, ptr %s.addr, align 8, !dbg !2280
  %lzma = getelementptr inbounds %struct.xz_dec_lzma2, ptr %2, i32 0, i32 3, !dbg !2281
  %lc = getelementptr inbounds %struct.lzma_dec, ptr %lzma, i32 0, i32 6, !dbg !2282
  %3 = load i32, ptr %lc, align 4, !dbg !2282
  %sub = sub i32 8, %3, !dbg !2283
  %shr = lshr i32 %1, %sub, !dbg !2284
  store i32 %shr, ptr %low, align 4, !dbg !2278
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #14, !dbg !2285
  call void @llvm.dbg.declare(metadata ptr %high, metadata !2270, metadata !DIExpression()), !dbg !2286
  %4 = load ptr, ptr %s.addr, align 8, !dbg !2287
  %dict1 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %4, i32 0, i32 1, !dbg !2288
  %pos = getelementptr inbounds %struct.dictionary, ptr %dict1, i32 0, i32 2, !dbg !2289
  %5 = load i64, ptr %pos, align 8, !dbg !2289
  %6 = load ptr, ptr %s.addr, align 8, !dbg !2290
  %lzma2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %6, i32 0, i32 3, !dbg !2291
  %literal_pos_mask = getelementptr inbounds %struct.lzma_dec, ptr %lzma2, i32 0, i32 7, !dbg !2292
  %7 = load i32, ptr %literal_pos_mask, align 4, !dbg !2292
  %conv = zext i32 %7 to i64, !dbg !2290
  %and = and i64 %5, %conv, !dbg !2293
  %8 = load ptr, ptr %s.addr, align 8, !dbg !2294
  %lzma3 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %8, i32 0, i32 3, !dbg !2295
  %lc4 = getelementptr inbounds %struct.lzma_dec, ptr %lzma3, i32 0, i32 6, !dbg !2296
  %9 = load i32, ptr %lc4, align 4, !dbg !2296
  %sh_prom = zext i32 %9 to i64, !dbg !2297
  %shl = shl i64 %and, %sh_prom, !dbg !2297
  %conv5 = trunc i64 %shl to i32, !dbg !2298
  store i32 %conv5, ptr %high, align 4, !dbg !2286
  %10 = load ptr, ptr %s.addr, align 8, !dbg !2299
  %lzma6 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %10, i32 0, i32 3, !dbg !2300
  %literal = getelementptr inbounds %struct.lzma_dec, ptr %lzma6, i32 0, i32 20, !dbg !2301
  %11 = load i32, ptr %low, align 4, !dbg !2302
  %12 = load i32, ptr %high, align 4, !dbg !2303
  %add = add i32 %11, %12, !dbg !2304
  %idxprom = zext i32 %add to i64, !dbg !2299
  %arrayidx = getelementptr [16 x [768 x i16]], ptr %literal, i64 0, i64 %idxprom, !dbg !2299
  %arraydecay = getelementptr inbounds [768 x i16], ptr %arrayidx, i64 0, i64 0, !dbg !2299
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #14, !dbg !2305
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #14, !dbg !2305
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev_byte) #14, !dbg !2305
  ret ptr %arraydecay, !dbg !2306
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @lzma_state_is_literal(i32 noundef %state) #3 align 16 !dbg !2307 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2311, metadata !DIExpression()), !dbg !2312
  %0 = load i32, ptr %state.addr, align 4, !dbg !2313
  %cmp = icmp ult i32 %0, 7, !dbg !2314
  ret i1 %cmp, !dbg !2315
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rc_bittree(ptr noundef %rc, ptr noundef %probs, i32 noundef %limit) #9 align 16 !dbg !2316 {
entry:
  %rc.addr = alloca ptr, align 8
  %probs.addr = alloca ptr, align 8
  %limit.addr = alloca i32, align 4
  %symbol = alloca i32, align 4
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !2320, metadata !DIExpression()), !dbg !2324
  store ptr %probs, ptr %probs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %probs.addr, metadata !2321, metadata !DIExpression()), !dbg !2325
  store i32 %limit, ptr %limit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %limit.addr, metadata !2322, metadata !DIExpression()), !dbg !2326
  call void @llvm.lifetime.start.p0(i64 4, ptr %symbol) #14, !dbg !2327
  call void @llvm.dbg.declare(metadata ptr %symbol, metadata !2323, metadata !DIExpression()), !dbg !2328
  store i32 1, ptr %symbol, align 4, !dbg !2328
  br label %do.body, !dbg !2329

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !2330
  %1 = load ptr, ptr %probs.addr, align 8, !dbg !2333
  %2 = load i32, ptr %symbol, align 4, !dbg !2334
  %idxprom = zext i32 %2 to i64, !dbg !2333
  %arrayidx = getelementptr i16, ptr %1, i64 %idxprom, !dbg !2333
  %call = call i32 @rc_bit(ptr noundef %0, ptr noundef %arrayidx) #15, !dbg !2335
  %tobool = icmp ne i32 %call, 0, !dbg !2335
  br i1 %tobool, label %if.then, label %if.else, !dbg !2336

if.then:                                          ; preds = %do.body
  %3 = load i32, ptr %symbol, align 4, !dbg !2337
  %shl = shl i32 %3, 1, !dbg !2338
  %add = add i32 %shl, 1, !dbg !2339
  store i32 %add, ptr %symbol, align 4, !dbg !2340
  br label %if.end, !dbg !2341

if.else:                                          ; preds = %do.body
  %4 = load i32, ptr %symbol, align 4, !dbg !2342
  %shl1 = shl i32 %4, 1, !dbg !2342
  store i32 %shl1, ptr %symbol, align 4, !dbg !2342
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond, !dbg !2343

do.cond:                                          ; preds = %if.end
  %5 = load i32, ptr %symbol, align 4, !dbg !2344
  %6 = load i32, ptr %limit.addr, align 4, !dbg !2345
  %cmp = icmp ult i32 %5, %6, !dbg !2346
  br i1 %cmp, label %do.body, label %do.end, !dbg !2343, !llvm.loop !2347

do.end:                                           ; preds = %do.cond
  %7 = load i32, ptr %symbol, align 4, !dbg !2349
  call void @llvm.lifetime.end.p0(i64 4, ptr %symbol) #14, !dbg !2350
  ret i32 %7, !dbg !2351
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dict_get(ptr noundef %dict, i32 noundef %dist) #3 align 16 !dbg !2352 {
entry:
  %dict.addr = alloca ptr, align 8
  %dist.addr = alloca i32, align 4
  %offset = alloca i64, align 8
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !2356, metadata !DIExpression()), !dbg !2359
  store i32 %dist, ptr %dist.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dist.addr, metadata !2357, metadata !DIExpression()), !dbg !2360
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #14, !dbg !2361
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !2358, metadata !DIExpression()), !dbg !2362
  %0 = load ptr, ptr %dict.addr, align 8, !dbg !2363
  %pos = getelementptr inbounds %struct.dictionary, ptr %0, i32 0, i32 2, !dbg !2364
  %1 = load i64, ptr %pos, align 8, !dbg !2364
  %2 = load i32, ptr %dist.addr, align 4, !dbg !2365
  %conv = zext i32 %2 to i64, !dbg !2365
  %sub = sub i64 %1, %conv, !dbg !2366
  %sub1 = sub i64 %sub, 1, !dbg !2367
  store i64 %sub1, ptr %offset, align 8, !dbg !2362
  %3 = load i32, ptr %dist.addr, align 4, !dbg !2368
  %conv2 = zext i32 %3 to i64, !dbg !2368
  %4 = load ptr, ptr %dict.addr, align 8, !dbg !2370
  %pos3 = getelementptr inbounds %struct.dictionary, ptr %4, i32 0, i32 2, !dbg !2371
  %5 = load i64, ptr %pos3, align 8, !dbg !2371
  %cmp = icmp uge i64 %conv2, %5, !dbg !2372
  br i1 %cmp, label %if.then, label %if.end, !dbg !2373

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %dict.addr, align 8, !dbg !2374
  %end = getelementptr inbounds %struct.dictionary, ptr %6, i32 0, i32 5, !dbg !2375
  %7 = load i64, ptr %end, align 8, !dbg !2375
  %8 = load i64, ptr %offset, align 8, !dbg !2376
  %add = add i64 %8, %7, !dbg !2376
  store i64 %add, ptr %offset, align 8, !dbg !2376
  br label %if.end, !dbg !2377

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %dict.addr, align 8, !dbg !2378
  %full = getelementptr inbounds %struct.dictionary, ptr %9, i32 0, i32 3, !dbg !2379
  %10 = load i64, ptr %full, align 8, !dbg !2379
  %cmp5 = icmp ugt i64 %10, 0, !dbg !2380
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !2378

cond.true:                                        ; preds = %if.end
  %11 = load ptr, ptr %dict.addr, align 8, !dbg !2381
  %buf = getelementptr inbounds %struct.dictionary, ptr %11, i32 0, i32 0, !dbg !2382
  %12 = load ptr, ptr %buf, align 8, !dbg !2382
  %13 = load i64, ptr %offset, align 8, !dbg !2383
  %arrayidx = getelementptr i8, ptr %12, i64 %13, !dbg !2381
  %14 = load i8, ptr %arrayidx, align 1, !dbg !2381
  %conv7 = zext i8 %14 to i32, !dbg !2381
  br label %cond.end, !dbg !2378

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2378

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ 0, %cond.false ], !dbg !2378
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #14, !dbg !2384
  ret i32 %cond, !dbg !2385
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dict_put(ptr noundef %dict, i8 noundef zeroext %byte) #3 align 16 !dbg !2386 {
entry:
  %dict.addr = alloca ptr, align 8
  %byte.addr = alloca i8, align 1
  store ptr %dict, ptr %dict.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !2390, metadata !DIExpression()), !dbg !2392
  store i8 %byte, ptr %byte.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %byte.addr, metadata !2391, metadata !DIExpression()), !dbg !2393
  %0 = load i8, ptr %byte.addr, align 1, !dbg !2394
  %1 = load ptr, ptr %dict.addr, align 8, !dbg !2395
  %buf = getelementptr inbounds %struct.dictionary, ptr %1, i32 0, i32 0, !dbg !2396
  %2 = load ptr, ptr %buf, align 8, !dbg !2396
  %3 = load ptr, ptr %dict.addr, align 8, !dbg !2397
  %pos = getelementptr inbounds %struct.dictionary, ptr %3, i32 0, i32 2, !dbg !2398
  %4 = load i64, ptr %pos, align 8, !dbg !2399
  %inc = add i64 %4, 1, !dbg !2399
  store i64 %inc, ptr %pos, align 8, !dbg !2399
  %arrayidx = getelementptr i8, ptr %2, i64 %4, !dbg !2395
  store i8 %0, ptr %arrayidx, align 1, !dbg !2400
  %5 = load ptr, ptr %dict.addr, align 8, !dbg !2401
  %full = getelementptr inbounds %struct.dictionary, ptr %5, i32 0, i32 3, !dbg !2403
  %6 = load i64, ptr %full, align 8, !dbg !2403
  %7 = load ptr, ptr %dict.addr, align 8, !dbg !2404
  %pos1 = getelementptr inbounds %struct.dictionary, ptr %7, i32 0, i32 2, !dbg !2405
  %8 = load i64, ptr %pos1, align 8, !dbg !2405
  %cmp = icmp ult i64 %6, %8, !dbg !2406
  br i1 %cmp, label %if.then, label %if.end, !dbg !2407

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %dict.addr, align 8, !dbg !2408
  %pos2 = getelementptr inbounds %struct.dictionary, ptr %9, i32 0, i32 2, !dbg !2409
  %10 = load i64, ptr %pos2, align 8, !dbg !2409
  %11 = load ptr, ptr %dict.addr, align 8, !dbg !2410
  %full3 = getelementptr inbounds %struct.dictionary, ptr %11, i32 0, i32 3, !dbg !2411
  store i64 %10, ptr %full3, align 8, !dbg !2412
  br label %if.end, !dbg !2410

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2413
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lzma_state_literal(ptr noundef %state) #3 align 16 !dbg !2414 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2419, metadata !DIExpression()), !dbg !2420
  %0 = load ptr, ptr %state.addr, align 8, !dbg !2421
  %1 = load i32, ptr %0, align 4, !dbg !2423
  %cmp = icmp ule i32 %1, 3, !dbg !2424
  br i1 %cmp, label %if.then, label %if.else, !dbg !2425

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %state.addr, align 8, !dbg !2426
  store i32 0, ptr %2, align 4, !dbg !2427
  br label %if.end5, !dbg !2428

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %state.addr, align 8, !dbg !2429
  %4 = load i32, ptr %3, align 4, !dbg !2431
  %cmp1 = icmp ule i32 %4, 9, !dbg !2432
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !2433

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr %state.addr, align 8, !dbg !2434
  %6 = load i32, ptr %5, align 4, !dbg !2435
  %sub = sub i32 %6, 3, !dbg !2435
  store i32 %sub, ptr %5, align 4, !dbg !2435
  br label %if.end, !dbg !2436

if.else3:                                         ; preds = %if.else
  %7 = load ptr, ptr %state.addr, align 8, !dbg !2437
  %8 = load i32, ptr %7, align 4, !dbg !2438
  %sub4 = sub i32 %8, 6, !dbg !2438
  store i32 %sub4, ptr %7, align 4, !dbg !2438
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  ret void, !dbg !2439
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lzma_state_short_rep(ptr noundef %state) #3 align 16 !dbg !2440 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2442, metadata !DIExpression()), !dbg !2443
  %0 = load ptr, ptr %state.addr, align 8, !dbg !2444
  %1 = load i32, ptr %0, align 4, !dbg !2445
  %cmp = icmp ult i32 %1, 7, !dbg !2446
  %2 = zext i1 %cmp to i64, !dbg !2445
  %cond = select i1 %cmp, i32 9, i32 11, !dbg !2445
  %3 = load ptr, ptr %state.addr, align 8, !dbg !2447
  store i32 %cond, ptr %3, align 4, !dbg !2448
  ret void, !dbg !2449
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lzma_state_long_rep(ptr noundef %state) #3 align 16 !dbg !2450 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2452, metadata !DIExpression()), !dbg !2453
  %0 = load ptr, ptr %state.addr, align 8, !dbg !2454
  %1 = load i32, ptr %0, align 4, !dbg !2455
  %cmp = icmp ult i32 %1, 7, !dbg !2456
  %2 = zext i1 %cmp to i64, !dbg !2455
  %cond = select i1 %cmp, i32 8, i32 11, !dbg !2455
  %3 = load ptr, ptr %state.addr, align 8, !dbg !2457
  store i32 %cond, ptr %3, align 4, !dbg !2458
  ret void, !dbg !2459
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lzma_len(ptr noundef %s, ptr noundef %l, i32 noundef %pos_state) #0 align 16 !dbg !2460 {
entry:
  %s.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %pos_state.addr = alloca i32, align 4
  %probs = alloca ptr, align 8
  %limit = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2465, metadata !DIExpression()), !dbg !2470
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !2466, metadata !DIExpression()), !dbg !2471
  store i32 %pos_state, ptr %pos_state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos_state.addr, metadata !2467, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.start.p0(i64 8, ptr %probs) #14, !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %probs, metadata !2468, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.start.p0(i64 4, ptr %limit) #14, !dbg !2475
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !2469, metadata !DIExpression()), !dbg !2476
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2477
  %rc = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 0, !dbg !2479
  %1 = load ptr, ptr %l.addr, align 8, !dbg !2480
  %choice = getelementptr inbounds %struct.lzma_len_dec, ptr %1, i32 0, i32 0, !dbg !2481
  %call = call i32 @rc_bit(ptr noundef %rc, ptr noundef %choice) #15, !dbg !2482
  %tobool = icmp ne i32 %call, 0, !dbg !2482
  br i1 %tobool, label %if.else, label %if.then, !dbg !2483

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %l.addr, align 8, !dbg !2484
  %low = getelementptr inbounds %struct.lzma_len_dec, ptr %2, i32 0, i32 2, !dbg !2486
  %3 = load i32, ptr %pos_state.addr, align 4, !dbg !2487
  %idxprom = zext i32 %3 to i64, !dbg !2484
  %arrayidx = getelementptr [16 x [8 x i16]], ptr %low, i64 0, i64 %idxprom, !dbg !2484
  %arraydecay = getelementptr inbounds [8 x i16], ptr %arrayidx, i64 0, i64 0, !dbg !2484
  store ptr %arraydecay, ptr %probs, align 8, !dbg !2488
  store i32 8, ptr %limit, align 4, !dbg !2489
  %4 = load ptr, ptr %s.addr, align 8, !dbg !2490
  %lzma = getelementptr inbounds %struct.xz_dec_lzma2, ptr %4, i32 0, i32 3, !dbg !2491
  %len = getelementptr inbounds %struct.lzma_dec, ptr %lzma, i32 0, i32 5, !dbg !2492
  store i32 2, ptr %len, align 4, !dbg !2493
  br label %if.end14, !dbg !2494

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %s.addr, align 8, !dbg !2495
  %rc1 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %5, i32 0, i32 0, !dbg !2498
  %6 = load ptr, ptr %l.addr, align 8, !dbg !2499
  %choice2 = getelementptr inbounds %struct.lzma_len_dec, ptr %6, i32 0, i32 1, !dbg !2500
  %call2 = call i32 @rc_bit(ptr noundef %rc1, ptr noundef %choice2) #15, !dbg !2501
  %tobool3 = icmp ne i32 %call2, 0, !dbg !2501
  br i1 %tobool3, label %if.else10, label %if.then4, !dbg !2502

if.then4:                                         ; preds = %if.else
  %7 = load ptr, ptr %l.addr, align 8, !dbg !2503
  %mid = getelementptr inbounds %struct.lzma_len_dec, ptr %7, i32 0, i32 3, !dbg !2505
  %8 = load i32, ptr %pos_state.addr, align 4, !dbg !2506
  %idxprom5 = zext i32 %8 to i64, !dbg !2503
  %arrayidx6 = getelementptr [16 x [8 x i16]], ptr %mid, i64 0, i64 %idxprom5, !dbg !2503
  %arraydecay7 = getelementptr inbounds [8 x i16], ptr %arrayidx6, i64 0, i64 0, !dbg !2503
  store ptr %arraydecay7, ptr %probs, align 8, !dbg !2507
  store i32 8, ptr %limit, align 4, !dbg !2508
  %9 = load ptr, ptr %s.addr, align 8, !dbg !2509
  %lzma8 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %9, i32 0, i32 3, !dbg !2510
  %len9 = getelementptr inbounds %struct.lzma_dec, ptr %lzma8, i32 0, i32 5, !dbg !2511
  store i32 10, ptr %len9, align 4, !dbg !2512
  br label %if.end, !dbg !2513

if.else10:                                        ; preds = %if.else
  %10 = load ptr, ptr %l.addr, align 8, !dbg !2514
  %high = getelementptr inbounds %struct.lzma_len_dec, ptr %10, i32 0, i32 4, !dbg !2516
  %arraydecay11 = getelementptr inbounds [256 x i16], ptr %high, i64 0, i64 0, !dbg !2514
  store ptr %arraydecay11, ptr %probs, align 8, !dbg !2517
  store i32 256, ptr %limit, align 4, !dbg !2518
  %11 = load ptr, ptr %s.addr, align 8, !dbg !2519
  %lzma12 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %11, i32 0, i32 3, !dbg !2520
  %len13 = getelementptr inbounds %struct.lzma_dec, ptr %lzma12, i32 0, i32 5, !dbg !2521
  store i32 18, ptr %len13, align 4, !dbg !2522
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %12 = load ptr, ptr %s.addr, align 8, !dbg !2523
  %rc15 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %12, i32 0, i32 0, !dbg !2524
  %13 = load ptr, ptr %probs, align 8, !dbg !2525
  %14 = load i32, ptr %limit, align 4, !dbg !2526
  %call16 = call i32 @rc_bittree(ptr noundef %rc15, ptr noundef %13, i32 noundef %14) #15, !dbg !2527
  %15 = load i32, ptr %limit, align 4, !dbg !2528
  %sub = sub i32 %call16, %15, !dbg !2529
  %16 = load ptr, ptr %s.addr, align 8, !dbg !2530
  %lzma17 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %16, i32 0, i32 3, !dbg !2531
  %len18 = getelementptr inbounds %struct.lzma_dec, ptr %lzma17, i32 0, i32 5, !dbg !2532
  %17 = load i32, ptr %len18, align 4, !dbg !2533
  %add = add i32 %17, %sub, !dbg !2533
  store i32 %add, ptr %len18, align 4, !dbg !2533
  call void @llvm.lifetime.end.p0(i64 4, ptr %limit) #14, !dbg !2534
  call void @llvm.lifetime.end.p0(i64 8, ptr %probs) #14, !dbg !2534
  ret void, !dbg !2534
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lzma_state_match(ptr noundef %state) #3 align 16 !dbg !2535 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2537, metadata !DIExpression()), !dbg !2538
  %0 = load ptr, ptr %state.addr, align 8, !dbg !2539
  %1 = load i32, ptr %0, align 4, !dbg !2540
  %cmp = icmp ult i32 %1, 7, !dbg !2541
  %2 = zext i1 %cmp to i64, !dbg !2540
  %cond = select i1 %cmp, i32 7, i32 10, !dbg !2540
  %3 = load ptr, ptr %state.addr, align 8, !dbg !2542
  store i32 %cond, ptr %3, align 4, !dbg !2543
  ret void, !dbg !2544
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lzma_get_dist_state(i32 noundef %len) #3 align 16 !dbg !2545 {
entry:
  %len.addr = alloca i32, align 4
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2549, metadata !DIExpression()), !dbg !2550
  %0 = load i32, ptr %len.addr, align 4, !dbg !2551
  %cmp = icmp ult i32 %0, 6, !dbg !2552
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2551

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %len.addr, align 4, !dbg !2553
  %sub = sub i32 %1, 2, !dbg !2554
  br label %cond.end, !dbg !2551

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2551

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 3, %cond.false ], !dbg !2551
  ret i32 %cond, !dbg !2555
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rc_bittree_reverse(ptr noundef %rc, ptr noundef %probs, ptr noundef %dest, i32 noundef %limit) #9 align 16 !dbg !2556 {
entry:
  %rc.addr = alloca ptr, align 8
  %probs.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %limit.addr = alloca i32, align 4
  %symbol = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !2560, metadata !DIExpression()), !dbg !2566
  store ptr %probs, ptr %probs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %probs.addr, metadata !2561, metadata !DIExpression()), !dbg !2567
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !2562, metadata !DIExpression()), !dbg !2568
  store i32 %limit, ptr %limit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %limit.addr, metadata !2563, metadata !DIExpression()), !dbg !2569
  call void @llvm.lifetime.start.p0(i64 4, ptr %symbol) #14, !dbg !2570
  call void @llvm.dbg.declare(metadata ptr %symbol, metadata !2564, metadata !DIExpression()), !dbg !2571
  store i32 1, ptr %symbol, align 4, !dbg !2571
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2572
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2565, metadata !DIExpression()), !dbg !2573
  store i32 0, ptr %i, align 4, !dbg !2573
  br label %do.body, !dbg !2574

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !2575
  %1 = load ptr, ptr %probs.addr, align 8, !dbg !2578
  %2 = load i32, ptr %symbol, align 4, !dbg !2579
  %idxprom = zext i32 %2 to i64, !dbg !2578
  %arrayidx = getelementptr i16, ptr %1, i64 %idxprom, !dbg !2578
  %call = call i32 @rc_bit(ptr noundef %0, ptr noundef %arrayidx) #15, !dbg !2580
  %tobool = icmp ne i32 %call, 0, !dbg !2580
  br i1 %tobool, label %if.then, label %if.else, !dbg !2581

if.then:                                          ; preds = %do.body
  %3 = load i32, ptr %symbol, align 4, !dbg !2582
  %shl = shl i32 %3, 1, !dbg !2584
  %add = add i32 %shl, 1, !dbg !2585
  store i32 %add, ptr %symbol, align 4, !dbg !2586
  %4 = load i32, ptr %i, align 4, !dbg !2587
  %shl1 = shl i32 1, %4, !dbg !2588
  %5 = load ptr, ptr %dest.addr, align 8, !dbg !2589
  %6 = load i32, ptr %5, align 4, !dbg !2590
  %add2 = add i32 %6, %shl1, !dbg !2590
  store i32 %add2, ptr %5, align 4, !dbg !2590
  br label %if.end, !dbg !2591

if.else:                                          ; preds = %do.body
  %7 = load i32, ptr %symbol, align 4, !dbg !2592
  %shl3 = shl i32 %7, 1, !dbg !2592
  store i32 %shl3, ptr %symbol, align 4, !dbg !2592
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond, !dbg !2594

do.cond:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !dbg !2595
  %inc = add i32 %8, 1, !dbg !2595
  store i32 %inc, ptr %i, align 4, !dbg !2595
  %9 = load i32, ptr %limit.addr, align 4, !dbg !2596
  %cmp = icmp ult i32 %inc, %9, !dbg !2597
  br i1 %cmp, label %do.body, label %do.end, !dbg !2594, !llvm.loop !2598

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2600
  call void @llvm.lifetime.end.p0(i64 4, ptr %symbol) #14, !dbg !2600
  ret void, !dbg !2600
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rc_direct(ptr noundef %rc, ptr noundef %dest, i32 noundef %limit) #3 align 16 !dbg !2601 {
entry:
  %rc.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %limit.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !2605, metadata !DIExpression()), !dbg !2609
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !2606, metadata !DIExpression()), !dbg !2610
  store i32 %limit, ptr %limit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %limit.addr, metadata !2607, metadata !DIExpression()), !dbg !2611
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #14, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2608, metadata !DIExpression()), !dbg !2613
  br label %do.body, !dbg !2614

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !2615
  call void @rc_normalize(ptr noundef %0) #15, !dbg !2617
  %1 = load ptr, ptr %rc.addr, align 8, !dbg !2618
  %range = getelementptr inbounds %struct.rc_dec, ptr %1, i32 0, i32 0, !dbg !2619
  %2 = load i32, ptr %range, align 8, !dbg !2620
  %shr = lshr i32 %2, 1, !dbg !2620
  store i32 %shr, ptr %range, align 8, !dbg !2620
  %3 = load ptr, ptr %rc.addr, align 8, !dbg !2621
  %range1 = getelementptr inbounds %struct.rc_dec, ptr %3, i32 0, i32 0, !dbg !2622
  %4 = load i32, ptr %range1, align 8, !dbg !2622
  %5 = load ptr, ptr %rc.addr, align 8, !dbg !2623
  %code = getelementptr inbounds %struct.rc_dec, ptr %5, i32 0, i32 1, !dbg !2624
  %6 = load i32, ptr %code, align 4, !dbg !2625
  %sub = sub i32 %6, %4, !dbg !2625
  store i32 %sub, ptr %code, align 4, !dbg !2625
  %7 = load ptr, ptr %rc.addr, align 8, !dbg !2626
  %code2 = getelementptr inbounds %struct.rc_dec, ptr %7, i32 0, i32 1, !dbg !2627
  %8 = load i32, ptr %code2, align 4, !dbg !2627
  %shr3 = lshr i32 %8, 31, !dbg !2628
  %sub4 = sub i32 0, %shr3, !dbg !2629
  store i32 %sub4, ptr %mask, align 4, !dbg !2630
  %9 = load ptr, ptr %rc.addr, align 8, !dbg !2631
  %range5 = getelementptr inbounds %struct.rc_dec, ptr %9, i32 0, i32 0, !dbg !2632
  %10 = load i32, ptr %range5, align 8, !dbg !2632
  %11 = load i32, ptr %mask, align 4, !dbg !2633
  %and = and i32 %10, %11, !dbg !2634
  %12 = load ptr, ptr %rc.addr, align 8, !dbg !2635
  %code6 = getelementptr inbounds %struct.rc_dec, ptr %12, i32 0, i32 1, !dbg !2636
  %13 = load i32, ptr %code6, align 4, !dbg !2637
  %add = add i32 %13, %and, !dbg !2637
  store i32 %add, ptr %code6, align 4, !dbg !2637
  %14 = load ptr, ptr %dest.addr, align 8, !dbg !2638
  %15 = load i32, ptr %14, align 4, !dbg !2639
  %shl = shl i32 %15, 1, !dbg !2640
  %16 = load i32, ptr %mask, align 4, !dbg !2641
  %add7 = add i32 %16, 1, !dbg !2642
  %add8 = add i32 %shl, %add7, !dbg !2643
  %17 = load ptr, ptr %dest.addr, align 8, !dbg !2644
  store i32 %add8, ptr %17, align 4, !dbg !2645
  br label %do.cond, !dbg !2646

do.cond:                                          ; preds = %do.body
  %18 = load i32, ptr %limit.addr, align 4, !dbg !2647
  %dec = add i32 %18, -1, !dbg !2647
  store i32 %dec, ptr %limit.addr, align 4, !dbg !2647
  %cmp = icmp ugt i32 %dec, 0, !dbg !2648
  br i1 %cmp, label %do.body, label %do.end, !dbg !2646, !llvm.loop !2649

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #14, !dbg !2651
  ret void, !dbg !2651
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2652 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !2653 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2657, metadata !DIExpression()), !dbg !2659
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2658, metadata !DIExpression()), !dbg !2660
  %0 = load i64, ptr %size.addr, align 8, !dbg !2661
  %tobool = icmp ne i64 %0, 0, !dbg !2661
  br i1 %tobool, label %if.end, label %if.then, !dbg !2663

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2664
  br label %return, !dbg !2664

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2665
  %cmp = icmp ule i64 %1, 8, !dbg !2667
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2668

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2669
  br label %return, !dbg !2669

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2670
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2672
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2673

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2674
  %cmp4 = icmp ule i64 %3, 96, !dbg !2675
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2676

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2677
  br label %return, !dbg !2677

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2678
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2680
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2681

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2682
  %cmp9 = icmp ule i64 %5, 192, !dbg !2683
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2684

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2685
  br label %return, !dbg !2685

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2686
  %cmp12 = icmp ule i64 %6, 8, !dbg !2688
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2689

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2690
  br label %return, !dbg !2690

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2691
  %cmp15 = icmp ule i64 %7, 16, !dbg !2693
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2694

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2695
  br label %return, !dbg !2695

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2696
  %cmp18 = icmp ule i64 %8, 32, !dbg !2698
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2699

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2700
  br label %return, !dbg !2700

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2701
  %cmp21 = icmp ule i64 %9, 64, !dbg !2703
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2704

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2705
  br label %return, !dbg !2705

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2706
  %cmp24 = icmp ule i64 %10, 128, !dbg !2708
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2709

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2710
  br label %return, !dbg !2710

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2711
  %cmp27 = icmp ule i64 %11, 256, !dbg !2713
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2714

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2715
  br label %return, !dbg !2715

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2716
  %cmp30 = icmp ule i64 %12, 512, !dbg !2718
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2719

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2720
  br label %return, !dbg !2720

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2721
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2723
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2724

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2725
  br label %return, !dbg !2725

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2726
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2728
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2729

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2730
  br label %return, !dbg !2730

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2731
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2733
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2734

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2735
  br label %return, !dbg !2735

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2736
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2738
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2739

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2740
  br label %return, !dbg !2740

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2741
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2743
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2744

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2745
  br label %return, !dbg !2745

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2746
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2748
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2749

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2750
  br label %return, !dbg !2750

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2751
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2753
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2754

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2755
  br label %return, !dbg !2755

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2756
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2758
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2759

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2760
  br label %return, !dbg !2760

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2761
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2763
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2764

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2765
  br label %return, !dbg !2765

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2766
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2768
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2769

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2770
  br label %return, !dbg !2770

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2771
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2773
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2774

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2775
  br label %return, !dbg !2775

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2776
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2778
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2779

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2780
  br label %return, !dbg !2780

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2781, !range !278, !noundef !279
  %tobool69 = trunc i8 %25 to i1, !dbg !2781
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2783

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2784

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #18, !dbg !2785, !srcloc !2788
  unreachable, !dbg !2785

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2789

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2790

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2791

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2793

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2791

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !2795, !srcloc !2797
  br label %do.end75, !dbg !2795

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2791

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2798
  br label %return, !dbg !2798

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2799
  ret i32 %26, !dbg !2799
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2800 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !2806 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2810, metadata !DIExpression()), !dbg !2812
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2811, metadata !DIExpression()), !dbg !2813
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2814
  %and = and i32 %0, 17, !dbg !2814
  %cmp = icmp eq i32 %and, 0, !dbg !2814
  %lnot = xor i1 %cmp, true, !dbg !2814
  %lnot1 = xor i1 %lnot, true, !dbg !2814
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2814
  %conv = sext i32 %lnot.ext to i64, !dbg !2814
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2814
  %tobool = icmp ne i64 %expval, 0, !dbg !2814
  br i1 %tobool, label %if.then, label %if.end, !dbg !2816

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2817
  br label %return, !dbg !2817

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2818
  %and2 = and i32 %1, 1, !dbg !2820
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2820
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2821

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2822
  br label %return, !dbg !2822

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2823
  br label %return, !dbg !2823

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2825
  ret i32 %2, !dbg !2825
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2826 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #5

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2827 dso_local void @__compiletime_assert_117() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/xz/.xz_dec_lzma2.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/xz/xz_dec\22 -D KBUILD_BASENAME=\22xz_dec_lzma2\22 -D KBUILD_MODNAME=\22xz_dec\22 -D __KBUILD_MODNAME=kmod_xz_dec -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/xz/xz_dec_lzma2.ll lib/xz/xz_dec_lzma2.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !68, globals: !86, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "lib/xz/xz_dec_lzma2.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef1b1b1c804237be528b42fb1beecca4")
!9 = !{!10, !23, !28, !39, !54, !59}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xz_ret", file: !11, line: 108, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "./include/linux/xz.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffd75faa50baf17c238f800fe0cc3300")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22}
!14 = !DIEnumerator(name: "XZ_OK", value: 0)
!15 = !DIEnumerator(name: "XZ_STREAM_END", value: 1)
!16 = !DIEnumerator(name: "XZ_UNSUPPORTED_CHECK", value: 2)
!17 = !DIEnumerator(name: "XZ_MEM_ERROR", value: 3)
!18 = !DIEnumerator(name: "XZ_MEMLIMIT_ERROR", value: 4)
!19 = !DIEnumerator(name: "XZ_FORMAT_ERROR", value: 5)
!20 = !DIEnumerator(name: "XZ_OPTIONS_ERROR", value: 6)
!21 = !DIEnumerator(name: "XZ_DATA_ERROR", value: 7)
!22 = !DIEnumerator(name: "XZ_BUF_ERROR", value: 8)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xz_mode", file: !11, line: 52, baseType: !12, size: 32, elements: !24)
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "XZ_SINGLE", value: 0)
!26 = !DIEnumerator(name: "XZ_PREALLOC", value: 1)
!27 = !DIEnumerator(name: "XZ_DYNALLOC", value: 2)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lzma2_seq", file: !8, line: 216, baseType: !12, size: 32, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38}
!30 = !DIEnumerator(name: "SEQ_CONTROL", value: 0)
!31 = !DIEnumerator(name: "SEQ_UNCOMPRESSED_1", value: 1)
!32 = !DIEnumerator(name: "SEQ_UNCOMPRESSED_2", value: 2)
!33 = !DIEnumerator(name: "SEQ_COMPRESSED_0", value: 3)
!34 = !DIEnumerator(name: "SEQ_COMPRESSED_1", value: 4)
!35 = !DIEnumerator(name: "SEQ_PROPERTIES", value: 5)
!36 = !DIEnumerator(name: "SEQ_LZMA_PREPARE", value: 6)
!37 = !DIEnumerator(name: "SEQ_LZMA_RUN", value: 7)
!38 = !DIEnumerator(name: "SEQ_COPY", value: 8)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lzma_state", file: !40, line: 42, baseType: !12, size: 32, elements: !41)
!40 = !DIFile(filename: "lib/xz/xz_lzma2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "13da6c83f910e144935855750512b548")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!42 = !DIEnumerator(name: "STATE_LIT_LIT", value: 0)
!43 = !DIEnumerator(name: "STATE_MATCH_LIT_LIT", value: 1)
!44 = !DIEnumerator(name: "STATE_REP_LIT_LIT", value: 2)
!45 = !DIEnumerator(name: "STATE_SHORTREP_LIT_LIT", value: 3)
!46 = !DIEnumerator(name: "STATE_MATCH_LIT", value: 4)
!47 = !DIEnumerator(name: "STATE_REP_LIT", value: 5)
!48 = !DIEnumerator(name: "STATE_SHORTREP_LIT", value: 6)
!49 = !DIEnumerator(name: "STATE_LIT_MATCH", value: 7)
!50 = !DIEnumerator(name: "STATE_LIT_LONGREP", value: 8)
!51 = !DIEnumerator(name: "STATE_LIT_SHORTREP", value: 9)
!52 = !DIEnumerator(name: "STATE_NONLIT_MATCH", value: 10)
!53 = !DIEnumerator(name: "STATE_NONLIT_REP", value: 11)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !55, line: 10, baseType: !12, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "false", value: 0)
!58 = !DIEnumerator(name: "true", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2, line: 364, baseType: !12, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!62 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!63 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!64 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!65 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!66 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!67 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!68 = !{!69, !75, !80, !81, !82, !79}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !70, line: 110, baseType: !71)
!70 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !72, line: 21, baseType: !73)
!72 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !74, line: 27, baseType: !12)
!74 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 61, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !77, line: 72, baseType: !78)
!77 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !77, line: 16, baseType: !79)
!79 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !70, line: 154, baseType: !12)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !70, line: 108, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !72, line: 17, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !74, line: 21, baseType: !85)
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !{!0}
!87 = !{i32 7, !"Dwarf Version", i32 5}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 8, !"cf-protection-branch", i32 1}
!91 = !{i32 4, !"function_return_thunk_extern", i32 1}
!92 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!93 = !{i32 1, !"Code Model", i32 2}
!94 = !{i32 1, !"override-stack-alignment", i32 8}
!95 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!96 = distinct !DISubprogram(name: "xz_dec_lzma2_run", scope: !8, file: !8, line: 964, type: !97, scopeLine: 966, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !214)
!97 = !DISubroutineType(types: !98)
!98 = !{!10, !99, !205}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xz_dec_lzma2", file: !8, line: 257, size: 227968, elements: !101)
!101 = !{!102, !113, !127, !138, !197}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !100, file: !8, line: 267, baseType: !103, size: 320)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_dec", file: !8, line: 95, size: 320, elements: !104)
!104 = !{!105, !106, !107, !108, !111, !112}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !103, file: !8, line: 96, baseType: !69, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !103, file: !8, line: 97, baseType: !69, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes_left", scope: !103, file: !8, line: 103, baseType: !69, size: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !103, file: !8, line: 109, baseType: !109, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "in_pos", scope: !103, file: !8, line: 110, baseType: !75, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "in_limit", scope: !103, file: !8, line: 111, baseType: !75, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !100, file: !8, line: 268, baseType: !114, size: 512, offset: 320)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictionary", file: !8, line: 44, size: 512, elements: !115)
!115 = !{!116, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !114, file: !8, line: 46, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !114, file: !8, line: 49, baseType: !75, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !114, file: !8, line: 52, baseType: !75, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !114, file: !8, line: 58, baseType: !75, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !114, file: !8, line: 61, baseType: !75, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !114, file: !8, line: 68, baseType: !75, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !114, file: !8, line: 75, baseType: !69, size: 32, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "size_max", scope: !114, file: !8, line: 81, baseType: !69, size: 32, offset: 416)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !114, file: !8, line: 88, baseType: !69, size: 32, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !114, file: !8, line: 91, baseType: !23, size: 32, offset: 480)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "lzma2", scope: !100, file: !8, line: 269, baseType: !128, size: 160, offset: 832)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma2_dec", file: !8, line: 214, size: 160, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !137}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !128, file: !8, line: 226, baseType: !28, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_sequence", scope: !128, file: !8, line: 229, baseType: !28, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed", scope: !128, file: !8, line: 232, baseType: !69, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !128, file: !8, line: 238, baseType: !69, size: 32, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "need_dict_reset", scope: !128, file: !8, line: 244, baseType: !135, size: 8, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !70, line: 35, baseType: !136)
!136 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "need_props", scope: !128, file: !8, line: 250, baseType: !135, size: 8, offset: 136)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "lzma", scope: !100, file: !8, line: 270, baseType: !139, size: 226432, offset: 992)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_dec", file: !8, line: 132, size: 226432, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !159, !162, !163, !164, !165, !166, !171, !175, !178, !192, !193}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rep0", scope: !139, file: !8, line: 134, baseType: !69, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "rep1", scope: !139, file: !8, line: 135, baseType: !69, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "rep2", scope: !139, file: !8, line: 136, baseType: !69, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "rep3", scope: !139, file: !8, line: 137, baseType: !69, size: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !139, file: !8, line: 140, baseType: !39, size: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !139, file: !8, line: 146, baseType: !69, size: 32, offset: 160)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !139, file: !8, line: 154, baseType: !69, size: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "literal_pos_mask", scope: !139, file: !8, line: 155, baseType: !69, size: 32, offset: 224)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pos_mask", scope: !139, file: !8, line: 156, baseType: !69, size: 32, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "is_match", scope: !139, file: !8, line: 159, baseType: !151, size: 3072, offset: 288)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 3072, elements: !156)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !70, line: 109, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !72, line: 19, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !74, line: 24, baseType: !155)
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !{!157, !158}
!157 = !DISubrange(count: 12)
!158 = !DISubrange(count: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep", scope: !139, file: !8, line: 162, baseType: !160, size: 192, offset: 3360)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 192, elements: !161)
!161 = !{!157}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0", scope: !139, file: !8, line: 168, baseType: !160, size: 192, offset: 3552)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep1", scope: !139, file: !8, line: 174, baseType: !160, size: 192, offset: 3744)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep2", scope: !139, file: !8, line: 177, baseType: !160, size: 192, offset: 3936)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0_long", scope: !139, file: !8, line: 183, baseType: !151, size: 3072, offset: 4128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dist_slot", scope: !139, file: !8, line: 190, baseType: !167, size: 4096, offset: 7200)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 4096, elements: !168)
!168 = !{!169, !170}
!169 = !DISubrange(count: 4)
!170 = !DISubrange(count: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "dist_special", scope: !139, file: !8, line: 196, baseType: !172, size: 1824, offset: 11296)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1824, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 114)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dist_align", scope: !139, file: !8, line: 202, baseType: !176, size: 256, offset: 13120)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !177)
!177 = !{!158}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_dec", scope: !139, file: !8, line: 205, baseType: !179, size: 8224, offset: 13376)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_len_dec", file: !8, line: 115, size: 8224, elements: !180)
!180 = !{!181, !182, !183, !187, !188}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "choice", scope: !179, file: !8, line: 117, baseType: !152, size: 16)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "choice2", scope: !179, file: !8, line: 120, baseType: !152, size: 16, offset: 16)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !179, file: !8, line: 123, baseType: !184, size: 2048, offset: 32)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 2048, elements: !185)
!185 = !{!158, !186}
!186 = !DISubrange(count: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !179, file: !8, line: 126, baseType: !184, size: 2048, offset: 2080)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !179, file: !8, line: 129, baseType: !189, size: 4096, offset: 4128)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 4096, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "rep_len_dec", scope: !139, file: !8, line: 208, baseType: !179, size: 8224, offset: 21600)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "literal", scope: !139, file: !8, line: 211, baseType: !194, size: 196608, offset: 29824)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 196608, elements: !195)
!195 = !{!158, !196}
!196 = !DISubrange(count: 768)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !100, file: !8, line: 279, baseType: !198, size: 544, offset: 227424)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !8, line: 276, size: 544, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !198, file: !8, line: 277, baseType: !69, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !198, file: !8, line: 278, baseType: !202, size: 504, offset: 32)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 504, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 63)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xz_buf", file: !11, line: 136, size: 384, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !206, file: !11, line: 137, baseType: !109, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "in_pos", scope: !206, file: !11, line: 138, baseType: !75, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "in_size", scope: !206, file: !11, line: 139, baseType: !75, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !206, file: !11, line: 141, baseType: !117, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "out_pos", scope: !206, file: !11, line: 142, baseType: !75, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "out_size", scope: !206, file: !11, line: 143, baseType: !75, size: 64, offset: 320)
!214 = !{!215, !216, !217, !218, !222}
!215 = !DILocalVariable(name: "s", arg: 1, scope: !96, file: !8, line: 964, type: !99)
!216 = !DILocalVariable(name: "b", arg: 2, scope: !96, file: !8, line: 965, type: !205)
!217 = !DILocalVariable(name: "tmp", scope: !96, file: !8, line: 967, type: !69)
!218 = !DILocalVariable(name: "__UNIQUE_ID___x122", scope: !219, file: !8, line: 1103, type: !75)
!219 = distinct !DILexicalBlock(scope: !220, file: !8, line: 1103, column: 25)
!220 = distinct !DILexicalBlock(scope: !221, file: !8, line: 970, column: 30)
!221 = distinct !DILexicalBlock(scope: !96, file: !8, line: 969, column: 70)
!222 = !DILocalVariable(name: "__UNIQUE_ID___y123", scope: !219, file: !8, line: 1103, type: !75)
!223 = !DILocation(line: 964, column: 61, scope: !96)
!224 = !DILocation(line: 965, column: 27, scope: !96)
!225 = !DILocation(line: 967, column: 2, scope: !96)
!226 = !DILocation(line: 967, column: 11, scope: !96)
!227 = !DILocation(line: 969, column: 2, scope: !96)
!228 = !DILocation(line: 969, column: 9, scope: !96)
!229 = !DILocation(line: 969, column: 12, scope: !96)
!230 = !DILocation(line: 969, column: 21, scope: !96)
!231 = !DILocation(line: 969, column: 24, scope: !96)
!232 = !DILocation(line: 969, column: 19, scope: !96)
!233 = !DILocation(line: 969, column: 32, scope: !96)
!234 = !DILocation(line: 969, column: 35, scope: !96)
!235 = !DILocation(line: 969, column: 38, scope: !96)
!236 = !DILocation(line: 969, column: 44, scope: !96)
!237 = !DILocation(line: 969, column: 53, scope: !96)
!238 = !DILocation(line: 970, column: 11, scope: !221)
!239 = !DILocation(line: 970, column: 14, scope: !221)
!240 = !DILocation(line: 970, column: 20, scope: !221)
!241 = !DILocation(line: 970, column: 3, scope: !221)
!242 = !DILocation(line: 1003, column: 10, scope: !220)
!243 = !DILocation(line: 1003, column: 13, scope: !220)
!244 = !DILocation(line: 1003, column: 16, scope: !220)
!245 = !DILocation(line: 1003, column: 19, scope: !220)
!246 = !DILocation(line: 1003, column: 25, scope: !220)
!247 = !DILocation(line: 1003, column: 8, scope: !220)
!248 = !DILocation(line: 1005, column: 8, scope: !249)
!249 = distinct !DILexicalBlock(scope: !220, file: !8, line: 1005, column: 8)
!250 = !DILocation(line: 1005, column: 12, scope: !249)
!251 = !DILocation(line: 1005, column: 8, scope: !220)
!252 = !DILocation(line: 1006, column: 5, scope: !249)
!253 = !DILocation(line: 1008, column: 8, scope: !254)
!254 = distinct !DILexicalBlock(scope: !220, file: !8, line: 1008, column: 8)
!255 = !DILocation(line: 1008, column: 12, scope: !254)
!256 = !DILocation(line: 1008, column: 20, scope: !254)
!257 = !DILocation(line: 1008, column: 23, scope: !254)
!258 = !DILocation(line: 1008, column: 27, scope: !254)
!259 = !DILocation(line: 1008, column: 8, scope: !220)
!260 = !DILocation(line: 1009, column: 5, scope: !261)
!261 = distinct !DILexicalBlock(scope: !254, file: !8, line: 1008, column: 36)
!262 = !DILocation(line: 1009, column: 8, scope: !261)
!263 = !DILocation(line: 1009, column: 14, scope: !261)
!264 = !DILocation(line: 1009, column: 25, scope: !261)
!265 = !DILocation(line: 1010, column: 5, scope: !261)
!266 = !DILocation(line: 1010, column: 8, scope: !261)
!267 = !DILocation(line: 1010, column: 14, scope: !261)
!268 = !DILocation(line: 1010, column: 30, scope: !261)
!269 = !DILocation(line: 1011, column: 17, scope: !261)
!270 = !DILocation(line: 1011, column: 20, scope: !261)
!271 = !DILocation(line: 1011, column: 26, scope: !261)
!272 = !DILocation(line: 1011, column: 5, scope: !261)
!273 = !DILocation(line: 1012, column: 4, scope: !261)
!274 = !DILocation(line: 1012, column: 15, scope: !275)
!275 = distinct !DILexicalBlock(scope: !254, file: !8, line: 1012, column: 15)
!276 = !DILocation(line: 1012, column: 18, scope: !275)
!277 = !DILocation(line: 1012, column: 24, scope: !275)
!278 = !{i8 0, i8 2}
!279 = !{}
!280 = !DILocation(line: 1012, column: 15, scope: !254)
!281 = !DILocation(line: 1013, column: 5, scope: !282)
!282 = distinct !DILexicalBlock(scope: !275, file: !8, line: 1012, column: 41)
!283 = !DILocation(line: 1016, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !220, file: !8, line: 1016, column: 8)
!285 = !DILocation(line: 1016, column: 12, scope: !284)
!286 = !DILocation(line: 1016, column: 8, scope: !220)
!287 = !DILocation(line: 1017, column: 30, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !8, line: 1016, column: 21)
!289 = !DILocation(line: 1017, column: 34, scope: !288)
!290 = !DILocation(line: 1017, column: 42, scope: !288)
!291 = !DILocation(line: 1017, column: 5, scope: !288)
!292 = !DILocation(line: 1017, column: 8, scope: !288)
!293 = !DILocation(line: 1017, column: 14, scope: !288)
!294 = !DILocation(line: 1017, column: 27, scope: !288)
!295 = !DILocation(line: 1018, column: 5, scope: !288)
!296 = !DILocation(line: 1018, column: 8, scope: !288)
!297 = !DILocation(line: 1018, column: 14, scope: !288)
!298 = !DILocation(line: 1018, column: 23, scope: !288)
!299 = !DILocation(line: 1020, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !288, file: !8, line: 1020, column: 9)
!301 = !DILocation(line: 1020, column: 13, scope: !300)
!302 = !DILocation(line: 1020, column: 9, scope: !288)
!303 = !DILocation(line: 1026, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !8, line: 1020, column: 22)
!305 = !DILocation(line: 1026, column: 9, scope: !304)
!306 = !DILocation(line: 1026, column: 15, scope: !304)
!307 = !DILocation(line: 1026, column: 26, scope: !304)
!308 = !DILocation(line: 1027, column: 6, scope: !304)
!309 = !DILocation(line: 1027, column: 9, scope: !304)
!310 = !DILocation(line: 1027, column: 15, scope: !304)
!311 = !DILocation(line: 1028, column: 8, scope: !304)
!312 = !DILocation(line: 1030, column: 5, scope: !304)
!313 = !DILocation(line: 1030, column: 16, scope: !314)
!314 = distinct !DILexicalBlock(scope: !300, file: !8, line: 1030, column: 16)
!315 = !DILocation(line: 1030, column: 19, scope: !314)
!316 = !DILocation(line: 1030, column: 25, scope: !314)
!317 = !DILocation(line: 1030, column: 16, scope: !300)
!318 = !DILocation(line: 1031, column: 6, scope: !319)
!319 = distinct !DILexicalBlock(scope: !314, file: !8, line: 1030, column: 37)
!320 = !DILocation(line: 1034, column: 6, scope: !321)
!321 = distinct !DILexicalBlock(scope: !314, file: !8, line: 1033, column: 12)
!322 = !DILocation(line: 1034, column: 9, scope: !321)
!323 = !DILocation(line: 1034, column: 15, scope: !321)
!324 = !DILocation(line: 1035, column: 8, scope: !321)
!325 = !DILocation(line: 1036, column: 10, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !8, line: 1036, column: 10)
!327 = !DILocation(line: 1036, column: 14, scope: !326)
!328 = !DILocation(line: 1036, column: 10, scope: !321)
!329 = !DILocation(line: 1037, column: 18, scope: !326)
!330 = !DILocation(line: 1037, column: 7, scope: !326)
!331 = !DILocation(line: 1039, column: 4, scope: !288)
!332 = !DILocation(line: 1040, column: 9, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !8, line: 1040, column: 9)
!334 = distinct !DILexicalBlock(scope: !284, file: !8, line: 1039, column: 11)
!335 = !DILocation(line: 1040, column: 13, scope: !333)
!336 = !DILocation(line: 1040, column: 9, scope: !334)
!337 = !DILocation(line: 1041, column: 6, scope: !333)
!338 = !DILocation(line: 1043, column: 5, scope: !334)
!339 = !DILocation(line: 1043, column: 8, scope: !334)
!340 = !DILocation(line: 1043, column: 14, scope: !334)
!341 = !DILocation(line: 1043, column: 23, scope: !334)
!342 = !DILocation(line: 1044, column: 5, scope: !334)
!343 = !DILocation(line: 1044, column: 8, scope: !334)
!344 = !DILocation(line: 1044, column: 14, scope: !334)
!345 = !DILocation(line: 1044, column: 28, scope: !334)
!346 = !DILocation(line: 1047, column: 4, scope: !220)
!347 = !DILocation(line: 1051, column: 19, scope: !220)
!348 = !DILocation(line: 1051, column: 22, scope: !220)
!349 = !DILocation(line: 1051, column: 25, scope: !220)
!350 = !DILocation(line: 1051, column: 28, scope: !220)
!351 = !DILocation(line: 1051, column: 34, scope: !220)
!352 = !DILocation(line: 1051, column: 9, scope: !220)
!353 = !DILocation(line: 1051, column: 38, scope: !220)
!354 = !DILocation(line: 1050, column: 4, scope: !220)
!355 = !DILocation(line: 1050, column: 7, scope: !220)
!356 = !DILocation(line: 1050, column: 13, scope: !220)
!357 = !DILocation(line: 1051, column: 6, scope: !220)
!358 = !DILocation(line: 1052, column: 4, scope: !220)
!359 = !DILocation(line: 1052, column: 7, scope: !220)
!360 = !DILocation(line: 1052, column: 13, scope: !220)
!361 = !DILocation(line: 1052, column: 22, scope: !220)
!362 = !DILocation(line: 1053, column: 4, scope: !220)
!363 = !DILocation(line: 1057, column: 19, scope: !220)
!364 = !DILocation(line: 1057, column: 22, scope: !220)
!365 = !DILocation(line: 1057, column: 25, scope: !220)
!366 = !DILocation(line: 1057, column: 28, scope: !220)
!367 = !DILocation(line: 1057, column: 34, scope: !220)
!368 = !DILocation(line: 1057, column: 9, scope: !220)
!369 = !DILocation(line: 1057, column: 38, scope: !220)
!370 = !DILocation(line: 1056, column: 4, scope: !220)
!371 = !DILocation(line: 1056, column: 7, scope: !220)
!372 = !DILocation(line: 1056, column: 13, scope: !220)
!373 = !DILocation(line: 1057, column: 6, scope: !220)
!374 = !DILocation(line: 1058, column: 4, scope: !220)
!375 = !DILocation(line: 1058, column: 7, scope: !220)
!376 = !DILocation(line: 1058, column: 13, scope: !220)
!377 = !DILocation(line: 1058, column: 22, scope: !220)
!378 = !DILocation(line: 1059, column: 4, scope: !220)
!379 = !DILocation(line: 1063, column: 18, scope: !220)
!380 = !DILocation(line: 1063, column: 21, scope: !220)
!381 = !DILocation(line: 1063, column: 24, scope: !220)
!382 = !DILocation(line: 1063, column: 27, scope: !220)
!383 = !DILocation(line: 1063, column: 33, scope: !220)
!384 = !DILocation(line: 1063, column: 8, scope: !220)
!385 = !DILocation(line: 1063, column: 37, scope: !220)
!386 = !DILocation(line: 1062, column: 4, scope: !220)
!387 = !DILocation(line: 1062, column: 7, scope: !220)
!388 = !DILocation(line: 1062, column: 13, scope: !220)
!389 = !DILocation(line: 1063, column: 6, scope: !220)
!390 = !DILocation(line: 1064, column: 4, scope: !220)
!391 = !DILocation(line: 1064, column: 7, scope: !220)
!392 = !DILocation(line: 1064, column: 13, scope: !220)
!393 = !DILocation(line: 1064, column: 22, scope: !220)
!394 = !DILocation(line: 1065, column: 4, scope: !220)
!395 = !DILocation(line: 1069, column: 19, scope: !220)
!396 = !DILocation(line: 1069, column: 22, scope: !220)
!397 = !DILocation(line: 1069, column: 25, scope: !220)
!398 = !DILocation(line: 1069, column: 28, scope: !220)
!399 = !DILocation(line: 1069, column: 34, scope: !220)
!400 = !DILocation(line: 1069, column: 9, scope: !220)
!401 = !DILocation(line: 1069, column: 38, scope: !220)
!402 = !DILocation(line: 1068, column: 4, scope: !220)
!403 = !DILocation(line: 1068, column: 7, scope: !220)
!404 = !DILocation(line: 1068, column: 13, scope: !220)
!405 = !DILocation(line: 1069, column: 6, scope: !220)
!406 = !DILocation(line: 1070, column: 24, scope: !220)
!407 = !DILocation(line: 1070, column: 27, scope: !220)
!408 = !DILocation(line: 1070, column: 33, scope: !220)
!409 = !DILocation(line: 1070, column: 4, scope: !220)
!410 = !DILocation(line: 1070, column: 7, scope: !220)
!411 = !DILocation(line: 1070, column: 13, scope: !220)
!412 = !DILocation(line: 1070, column: 22, scope: !220)
!413 = !DILocation(line: 1071, column: 4, scope: !220)
!414 = !DILocation(line: 1074, column: 20, scope: !415)
!415 = distinct !DILexicalBlock(scope: !220, file: !8, line: 1074, column: 8)
!416 = !DILocation(line: 1074, column: 23, scope: !415)
!417 = !DILocation(line: 1074, column: 26, scope: !415)
!418 = !DILocation(line: 1074, column: 29, scope: !415)
!419 = !DILocation(line: 1074, column: 32, scope: !415)
!420 = !DILocation(line: 1074, column: 38, scope: !415)
!421 = !DILocation(line: 1074, column: 9, scope: !415)
!422 = !DILocation(line: 1074, column: 8, scope: !220)
!423 = !DILocation(line: 1075, column: 5, scope: !415)
!424 = !DILocation(line: 1077, column: 4, scope: !220)
!425 = !DILocation(line: 1077, column: 7, scope: !220)
!426 = !DILocation(line: 1077, column: 13, scope: !220)
!427 = !DILocation(line: 1077, column: 22, scope: !220)
!428 = !DILocation(line: 1082, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !220, file: !8, line: 1082, column: 8)
!430 = !DILocation(line: 1082, column: 11, scope: !429)
!431 = !DILocation(line: 1082, column: 17, scope: !429)
!432 = !DILocation(line: 1082, column: 28, scope: !429)
!433 = !DILocation(line: 1082, column: 8, scope: !220)
!434 = !DILocation(line: 1083, column: 5, scope: !429)
!435 = !DILocation(line: 1085, column: 23, scope: !436)
!436 = distinct !DILexicalBlock(scope: !220, file: !8, line: 1085, column: 8)
!437 = !DILocation(line: 1085, column: 26, scope: !436)
!438 = !DILocation(line: 1085, column: 30, scope: !436)
!439 = !DILocation(line: 1085, column: 9, scope: !436)
!440 = !DILocation(line: 1085, column: 8, scope: !220)
!441 = !DILocation(line: 1086, column: 5, scope: !436)
!442 = !DILocation(line: 1088, column: 4, scope: !220)
!443 = !DILocation(line: 1088, column: 7, scope: !220)
!444 = !DILocation(line: 1088, column: 13, scope: !220)
!445 = !DILocation(line: 1088, column: 24, scope: !220)
!446 = !DILocation(line: 1089, column: 4, scope: !220)
!447 = !DILocation(line: 1089, column: 7, scope: !220)
!448 = !DILocation(line: 1089, column: 13, scope: !220)
!449 = !DILocation(line: 1089, column: 22, scope: !220)
!450 = !DILocation(line: 1103, column: 16, scope: !220)
!451 = !DILocation(line: 1103, column: 19, scope: !220)
!452 = !DILocation(line: 1103, column: 25, scope: !219)
!453 = !DILocation(line: 1103, column: 25, scope: !220)
!454 = !DILocation(line: 1103, column: 4, scope: !220)
!455 = !DILocation(line: 1106, column: 20, scope: !456)
!456 = distinct !DILexicalBlock(scope: !220, file: !8, line: 1106, column: 8)
!457 = !DILocation(line: 1106, column: 23, scope: !456)
!458 = !DILocation(line: 1106, column: 9, scope: !456)
!459 = !DILocation(line: 1106, column: 8, scope: !220)
!460 = !DILocation(line: 1107, column: 5, scope: !456)
!461 = !DILocation(line: 1109, column: 41, scope: !220)
!462 = !DILocation(line: 1109, column: 44, scope: !220)
!463 = !DILocation(line: 1109, column: 50, scope: !220)
!464 = !DILocation(line: 1109, column: 29, scope: !220)
!465 = !DILocation(line: 1109, column: 4, scope: !220)
!466 = !DILocation(line: 1109, column: 7, scope: !220)
!467 = !DILocation(line: 1109, column: 13, scope: !220)
!468 = !DILocation(line: 1109, column: 26, scope: !220)
!469 = !DILocation(line: 1111, column: 8, scope: !470)
!470 = distinct !DILexicalBlock(scope: !220, file: !8, line: 1111, column: 8)
!471 = !DILocation(line: 1111, column: 11, scope: !470)
!472 = !DILocation(line: 1111, column: 17, scope: !470)
!473 = !DILocation(line: 1111, column: 30, scope: !470)
!474 = !DILocation(line: 1111, column: 8, scope: !220)
!475 = !DILocation(line: 1112, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !8, line: 1112, column: 9)
!477 = distinct !DILexicalBlock(scope: !470, file: !8, line: 1111, column: 36)
!478 = !DILocation(line: 1112, column: 12, scope: !476)
!479 = !DILocation(line: 1112, column: 18, scope: !476)
!480 = !DILocation(line: 1112, column: 29, scope: !476)
!481 = !DILocation(line: 1112, column: 33, scope: !476)
!482 = !DILocation(line: 1112, column: 36, scope: !476)
!483 = !DILocation(line: 1112, column: 39, scope: !476)
!484 = !DILocation(line: 1112, column: 44, scope: !476)
!485 = !DILocation(line: 1112, column: 48, scope: !476)
!486 = !DILocation(line: 1113, column: 7, scope: !476)
!487 = !DILocation(line: 1113, column: 27, scope: !476)
!488 = !DILocation(line: 1113, column: 30, scope: !476)
!489 = !DILocation(line: 1113, column: 11, scope: !476)
!490 = !DILocation(line: 1112, column: 9, scope: !477)
!491 = !DILocation(line: 1114, column: 6, scope: !476)
!492 = !DILocation(line: 1116, column: 15, scope: !477)
!493 = !DILocation(line: 1116, column: 18, scope: !477)
!494 = !DILocation(line: 1116, column: 5, scope: !477)
!495 = !DILocation(line: 1117, column: 5, scope: !477)
!496 = !DILocation(line: 1117, column: 8, scope: !477)
!497 = !DILocation(line: 1117, column: 14, scope: !477)
!498 = !DILocation(line: 1117, column: 23, scope: !477)
!499 = !DILocation(line: 1119, column: 4, scope: !477)
!500 = !DILocation(line: 1119, column: 15, scope: !501)
!501 = distinct !DILexicalBlock(scope: !470, file: !8, line: 1119, column: 15)
!502 = !DILocation(line: 1119, column: 18, scope: !501)
!503 = !DILocation(line: 1119, column: 29, scope: !501)
!504 = !DILocation(line: 1119, column: 32, scope: !501)
!505 = !DILocation(line: 1119, column: 26, scope: !501)
!506 = !DILocation(line: 1120, column: 6, scope: !501)
!507 = !DILocation(line: 1120, column: 10, scope: !501)
!508 = !DILocation(line: 1120, column: 13, scope: !501)
!509 = !DILocation(line: 1120, column: 23, scope: !501)
!510 = !DILocation(line: 1120, column: 26, scope: !501)
!511 = !DILocation(line: 1120, column: 20, scope: !501)
!512 = !DILocation(line: 1121, column: 7, scope: !501)
!513 = !DILocation(line: 1121, column: 10, scope: !501)
!514 = !DILocation(line: 1121, column: 13, scope: !501)
!515 = !DILocation(line: 1121, column: 18, scope: !501)
!516 = !DILocation(line: 1122, column: 9, scope: !501)
!517 = !DILocation(line: 1122, column: 12, scope: !501)
!518 = !DILocation(line: 1122, column: 18, scope: !501)
!519 = !DILocation(line: 1122, column: 7, scope: !501)
!520 = !DILocation(line: 1119, column: 15, scope: !470)
!521 = !DILocation(line: 1123, column: 5, scope: !522)
!522 = distinct !DILexicalBlock(scope: !501, file: !8, line: 1122, column: 31)
!523 = !DILocation(line: 1126, column: 4, scope: !220)
!524 = !DILocation(line: 1129, column: 23, scope: !220)
!525 = !DILocation(line: 1129, column: 26, scope: !220)
!526 = !DILocation(line: 1129, column: 32, scope: !220)
!527 = !DILocation(line: 1129, column: 36, scope: !220)
!528 = !DILocation(line: 1129, column: 39, scope: !220)
!529 = !DILocation(line: 1129, column: 45, scope: !220)
!530 = !DILocation(line: 1129, column: 4, scope: !220)
!531 = !DILocation(line: 1130, column: 8, scope: !532)
!532 = distinct !DILexicalBlock(scope: !220, file: !8, line: 1130, column: 8)
!533 = !DILocation(line: 1130, column: 11, scope: !532)
!534 = !DILocation(line: 1130, column: 17, scope: !532)
!535 = !DILocation(line: 1130, column: 28, scope: !532)
!536 = !DILocation(line: 1130, column: 8, scope: !220)
!537 = !DILocation(line: 1131, column: 5, scope: !532)
!538 = !DILocation(line: 1133, column: 4, scope: !220)
!539 = !DILocation(line: 1133, column: 7, scope: !220)
!540 = !DILocation(line: 1133, column: 13, scope: !220)
!541 = !DILocation(line: 1133, column: 22, scope: !220)
!542 = !DILocation(line: 1134, column: 4, scope: !220)
!543 = distinct !{!543, !227, !544, !545, !546}
!544 = !DILocation(line: 1136, column: 2, scope: !96)
!545 = !{!"llvm.loop.mustprogress"}
!546 = !{!"llvm.loop.unroll.disable"}
!547 = !DILocation(line: 1138, column: 2, scope: !96)
!548 = !DILocation(line: 1139, column: 1, scope: !96)
!549 = distinct !DISubprogram(name: "dict_reset", scope: !8, file: !8, line: 290, type: !550, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !553)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552, !205}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!553 = !{!554, !555}
!554 = !DILocalVariable(name: "dict", arg: 1, scope: !549, file: !8, line: 290, type: !552)
!555 = !DILocalVariable(name: "b", arg: 2, scope: !549, file: !8, line: 290, type: !205)
!556 = !DILocation(line: 290, column: 43, scope: !549)
!557 = !DILocation(line: 290, column: 64, scope: !549)
!558 = !DILocation(line: 292, column: 6, scope: !559)
!559 = distinct !DILexicalBlock(scope: !549, file: !8, line: 292, column: 6)
!560 = !DILocation(line: 292, column: 6, scope: !549)
!561 = !DILocation(line: 293, column: 15, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !8, line: 292, column: 33)
!563 = !DILocation(line: 293, column: 18, scope: !562)
!564 = !DILocation(line: 293, column: 24, scope: !562)
!565 = !DILocation(line: 293, column: 27, scope: !562)
!566 = !DILocation(line: 293, column: 22, scope: !562)
!567 = !DILocation(line: 293, column: 3, scope: !562)
!568 = !DILocation(line: 293, column: 9, scope: !562)
!569 = !DILocation(line: 293, column: 13, scope: !562)
!570 = !DILocation(line: 294, column: 15, scope: !562)
!571 = !DILocation(line: 294, column: 18, scope: !562)
!572 = !DILocation(line: 294, column: 29, scope: !562)
!573 = !DILocation(line: 294, column: 32, scope: !562)
!574 = !DILocation(line: 294, column: 27, scope: !562)
!575 = !DILocation(line: 294, column: 3, scope: !562)
!576 = !DILocation(line: 294, column: 9, scope: !562)
!577 = !DILocation(line: 294, column: 13, scope: !562)
!578 = !DILocation(line: 295, column: 2, scope: !562)
!579 = !DILocation(line: 297, column: 2, scope: !549)
!580 = !DILocation(line: 297, column: 8, scope: !549)
!581 = !DILocation(line: 297, column: 14, scope: !549)
!582 = !DILocation(line: 298, column: 2, scope: !549)
!583 = !DILocation(line: 298, column: 8, scope: !549)
!584 = !DILocation(line: 298, column: 12, scope: !549)
!585 = !DILocation(line: 299, column: 2, scope: !549)
!586 = !DILocation(line: 299, column: 8, scope: !549)
!587 = !DILocation(line: 299, column: 14, scope: !549)
!588 = !DILocation(line: 300, column: 2, scope: !549)
!589 = !DILocation(line: 300, column: 8, scope: !549)
!590 = !DILocation(line: 300, column: 13, scope: !549)
!591 = !DILocation(line: 301, column: 1, scope: !549)
!592 = distinct !DISubprogram(name: "lzma_reset", scope: !8, file: !8, line: 799, type: !593, scopeLine: 800, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !99}
!595 = !{!596, !597, !599}
!596 = !DILocalVariable(name: "s", arg: 1, scope: !592, file: !8, line: 799, type: !99)
!597 = !DILocalVariable(name: "probs", scope: !592, file: !8, line: 801, type: !598)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!599 = !DILocalVariable(name: "i", scope: !592, file: !8, line: 802, type: !75)
!600 = !DILocation(line: 799, column: 45, scope: !592)
!601 = !DILocation(line: 801, column: 2, scope: !592)
!602 = !DILocation(line: 801, column: 12, scope: !592)
!603 = !DILocation(line: 802, column: 2, scope: !592)
!604 = !DILocation(line: 802, column: 9, scope: !592)
!605 = !DILocation(line: 804, column: 2, scope: !592)
!606 = !DILocation(line: 804, column: 5, scope: !592)
!607 = !DILocation(line: 804, column: 10, scope: !592)
!608 = !DILocation(line: 804, column: 16, scope: !592)
!609 = !DILocation(line: 805, column: 2, scope: !592)
!610 = !DILocation(line: 805, column: 5, scope: !592)
!611 = !DILocation(line: 805, column: 10, scope: !592)
!612 = !DILocation(line: 805, column: 15, scope: !592)
!613 = !DILocation(line: 806, column: 2, scope: !592)
!614 = !DILocation(line: 806, column: 5, scope: !592)
!615 = !DILocation(line: 806, column: 10, scope: !592)
!616 = !DILocation(line: 806, column: 15, scope: !592)
!617 = !DILocation(line: 807, column: 2, scope: !592)
!618 = !DILocation(line: 807, column: 5, scope: !592)
!619 = !DILocation(line: 807, column: 10, scope: !592)
!620 = !DILocation(line: 807, column: 15, scope: !592)
!621 = !DILocation(line: 808, column: 2, scope: !592)
!622 = !DILocation(line: 808, column: 5, scope: !592)
!623 = !DILocation(line: 808, column: 10, scope: !592)
!624 = !DILocation(line: 808, column: 15, scope: !592)
!625 = !DILocation(line: 809, column: 2, scope: !592)
!626 = !DILocation(line: 809, column: 5, scope: !592)
!627 = !DILocation(line: 809, column: 10, scope: !592)
!628 = !DILocation(line: 809, column: 14, scope: !592)
!629 = !DILocation(line: 820, column: 10, scope: !592)
!630 = !DILocation(line: 820, column: 13, scope: !592)
!631 = !DILocation(line: 820, column: 18, scope: !592)
!632 = !DILocation(line: 820, column: 8, scope: !592)
!633 = !DILocation(line: 821, column: 9, scope: !634)
!634 = distinct !DILexicalBlock(scope: !592, file: !8, line: 821, column: 2)
!635 = !DILocation(line: 821, column: 7, scope: !634)
!636 = !DILocation(line: 821, column: 14, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !8, line: 821, column: 2)
!638 = !DILocation(line: 821, column: 16, scope: !637)
!639 = !DILocation(line: 821, column: 2, scope: !634)
!640 = !DILocation(line: 822, column: 3, scope: !637)
!641 = !DILocation(line: 822, column: 9, scope: !637)
!642 = !DILocation(line: 822, column: 12, scope: !637)
!643 = !DILocation(line: 821, column: 31, scope: !637)
!644 = !DILocation(line: 821, column: 2, scope: !637)
!645 = distinct !{!645, !639, !646, !545, !546}
!646 = !DILocation(line: 822, column: 35, scope: !634)
!647 = !DILocation(line: 824, column: 12, scope: !592)
!648 = !DILocation(line: 824, column: 15, scope: !592)
!649 = !DILocation(line: 824, column: 2, scope: !592)
!650 = !DILocation(line: 825, column: 1, scope: !592)
!651 = distinct !DISubprogram(name: "lzma_props", scope: !8, file: !8, line: 832, type: !652, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{!135, !99, !82}
!654 = !{!655, !656}
!655 = !DILocalVariable(name: "s", arg: 1, scope: !651, file: !8, line: 832, type: !99)
!656 = !DILocalVariable(name: "props", arg: 2, scope: !651, file: !8, line: 832, type: !82)
!657 = !DILocation(line: 832, column: 45, scope: !651)
!658 = !DILocation(line: 832, column: 56, scope: !651)
!659 = !DILocation(line: 834, column: 6, scope: !660)
!660 = distinct !DILexicalBlock(scope: !651, file: !8, line: 834, column: 6)
!661 = !DILocation(line: 834, column: 12, scope: !660)
!662 = !DILocation(line: 834, column: 6, scope: !651)
!663 = !DILocation(line: 835, column: 3, scope: !660)
!664 = !DILocation(line: 837, column: 2, scope: !651)
!665 = !DILocation(line: 837, column: 5, scope: !651)
!666 = !DILocation(line: 837, column: 10, scope: !651)
!667 = !DILocation(line: 837, column: 19, scope: !651)
!668 = !DILocation(line: 838, column: 2, scope: !651)
!669 = !DILocation(line: 838, column: 9, scope: !651)
!670 = !DILocation(line: 838, column: 15, scope: !651)
!671 = !DILocation(line: 839, column: 9, scope: !672)
!672 = distinct !DILexicalBlock(scope: !651, file: !8, line: 838, column: 25)
!673 = !DILocation(line: 840, column: 5, scope: !672)
!674 = !DILocation(line: 840, column: 8, scope: !672)
!675 = !DILocation(line: 840, column: 13, scope: !672)
!676 = !DILocation(line: 840, column: 3, scope: !672)
!677 = distinct !{!677, !668, !678, !545, !546}
!678 = !DILocation(line: 841, column: 2, scope: !651)
!679 = !DILocation(line: 843, column: 27, scope: !651)
!680 = !DILocation(line: 843, column: 30, scope: !651)
!681 = !DILocation(line: 843, column: 35, scope: !651)
!682 = !DILocation(line: 843, column: 24, scope: !651)
!683 = !DILocation(line: 843, column: 45, scope: !651)
!684 = !DILocation(line: 843, column: 2, scope: !651)
!685 = !DILocation(line: 843, column: 5, scope: !651)
!686 = !DILocation(line: 843, column: 10, scope: !651)
!687 = !DILocation(line: 843, column: 19, scope: !651)
!688 = !DILocation(line: 845, column: 2, scope: !651)
!689 = !DILocation(line: 845, column: 5, scope: !651)
!690 = !DILocation(line: 845, column: 10, scope: !651)
!691 = !DILocation(line: 845, column: 27, scope: !651)
!692 = !DILocation(line: 846, column: 2, scope: !651)
!693 = !DILocation(line: 846, column: 9, scope: !651)
!694 = !DILocation(line: 846, column: 15, scope: !651)
!695 = !DILocation(line: 847, column: 9, scope: !696)
!696 = distinct !DILexicalBlock(scope: !651, file: !8, line: 846, column: 21)
!697 = !DILocation(line: 848, column: 5, scope: !696)
!698 = !DILocation(line: 848, column: 8, scope: !696)
!699 = !DILocation(line: 848, column: 13, scope: !696)
!700 = !DILocation(line: 848, column: 3, scope: !696)
!701 = distinct !{!701, !692, !702, !545, !546}
!702 = !DILocation(line: 849, column: 2, scope: !651)
!703 = !DILocation(line: 851, column: 15, scope: !651)
!704 = !DILocation(line: 851, column: 2, scope: !651)
!705 = !DILocation(line: 851, column: 5, scope: !651)
!706 = !DILocation(line: 851, column: 10, scope: !651)
!707 = !DILocation(line: 851, column: 13, scope: !651)
!708 = !DILocation(line: 853, column: 6, scope: !709)
!709 = distinct !DILexicalBlock(scope: !651, file: !8, line: 853, column: 6)
!710 = !DILocation(line: 853, column: 9, scope: !709)
!711 = !DILocation(line: 853, column: 14, scope: !709)
!712 = !DILocation(line: 853, column: 19, scope: !709)
!713 = !DILocation(line: 853, column: 22, scope: !709)
!714 = !DILocation(line: 853, column: 27, scope: !709)
!715 = !DILocation(line: 853, column: 17, scope: !709)
!716 = !DILocation(line: 853, column: 44, scope: !709)
!717 = !DILocation(line: 853, column: 6, scope: !651)
!718 = !DILocation(line: 854, column: 3, scope: !709)
!719 = !DILocation(line: 856, column: 35, scope: !651)
!720 = !DILocation(line: 856, column: 38, scope: !651)
!721 = !DILocation(line: 856, column: 43, scope: !651)
!722 = !DILocation(line: 856, column: 32, scope: !651)
!723 = !DILocation(line: 856, column: 61, scope: !651)
!724 = !DILocation(line: 856, column: 2, scope: !651)
!725 = !DILocation(line: 856, column: 5, scope: !651)
!726 = !DILocation(line: 856, column: 10, scope: !651)
!727 = !DILocation(line: 856, column: 27, scope: !651)
!728 = !DILocation(line: 858, column: 13, scope: !651)
!729 = !DILocation(line: 858, column: 2, scope: !651)
!730 = !DILocation(line: 860, column: 2, scope: !651)
!731 = !DILocation(line: 861, column: 1, scope: !651)
!732 = distinct !DISubprogram(name: "rc_read_init", scope: !8, file: !8, line: 481, type: !733, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !736)
!733 = !DISubroutineType(types: !734)
!734 = !{!135, !735, !205}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!736 = !{!737, !738}
!737 = !DILocalVariable(name: "rc", arg: 1, scope: !732, file: !8, line: 481, type: !735)
!738 = !DILocalVariable(name: "b", arg: 2, scope: !732, file: !8, line: 481, type: !205)
!739 = !DILocation(line: 481, column: 41, scope: !732)
!740 = !DILocation(line: 481, column: 60, scope: !732)
!741 = !DILocation(line: 483, column: 2, scope: !732)
!742 = !DILocation(line: 483, column: 9, scope: !732)
!743 = !DILocation(line: 483, column: 13, scope: !732)
!744 = !DILocation(line: 483, column: 29, scope: !732)
!745 = !DILocation(line: 484, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !8, line: 484, column: 7)
!747 = distinct !DILexicalBlock(scope: !732, file: !8, line: 483, column: 34)
!748 = !DILocation(line: 484, column: 10, scope: !746)
!749 = !DILocation(line: 484, column: 20, scope: !746)
!750 = !DILocation(line: 484, column: 23, scope: !746)
!751 = !DILocation(line: 484, column: 17, scope: !746)
!752 = !DILocation(line: 484, column: 7, scope: !747)
!753 = !DILocation(line: 485, column: 4, scope: !746)
!754 = !DILocation(line: 487, column: 15, scope: !747)
!755 = !DILocation(line: 487, column: 19, scope: !747)
!756 = !DILocation(line: 487, column: 24, scope: !747)
!757 = !DILocation(line: 487, column: 32, scope: !747)
!758 = !DILocation(line: 487, column: 35, scope: !747)
!759 = !DILocation(line: 487, column: 38, scope: !747)
!760 = !DILocation(line: 487, column: 41, scope: !747)
!761 = !DILocation(line: 487, column: 47, scope: !747)
!762 = !DILocation(line: 487, column: 30, scope: !747)
!763 = !DILocation(line: 487, column: 3, scope: !747)
!764 = !DILocation(line: 487, column: 7, scope: !747)
!765 = !DILocation(line: 487, column: 12, scope: !747)
!766 = !DILocation(line: 488, column: 5, scope: !747)
!767 = !DILocation(line: 488, column: 9, scope: !747)
!768 = !DILocation(line: 488, column: 3, scope: !747)
!769 = distinct !{!769, !741, !770, !545, !546}
!770 = !DILocation(line: 489, column: 2, scope: !732)
!771 = !DILocation(line: 491, column: 2, scope: !732)
!772 = !DILocation(line: 492, column: 1, scope: !732)
!773 = distinct !DISubprogram(name: "dict_limit", scope: !8, file: !8, line: 304, type: !774, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !552, !75}
!776 = !{!777, !778}
!777 = !DILocalVariable(name: "dict", arg: 1, scope: !773, file: !8, line: 304, type: !552)
!778 = !DILocalVariable(name: "out_max", arg: 2, scope: !773, file: !8, line: 304, type: !75)
!779 = !DILocation(line: 304, column: 43, scope: !773)
!780 = !DILocation(line: 304, column: 56, scope: !773)
!781 = !DILocation(line: 306, column: 6, scope: !782)
!782 = distinct !DILexicalBlock(scope: !773, file: !8, line: 306, column: 6)
!783 = !DILocation(line: 306, column: 12, scope: !782)
!784 = !DILocation(line: 306, column: 18, scope: !782)
!785 = !DILocation(line: 306, column: 24, scope: !782)
!786 = !DILocation(line: 306, column: 16, scope: !782)
!787 = !DILocation(line: 306, column: 31, scope: !782)
!788 = !DILocation(line: 306, column: 28, scope: !782)
!789 = !DILocation(line: 306, column: 6, scope: !773)
!790 = !DILocation(line: 307, column: 17, scope: !782)
!791 = !DILocation(line: 307, column: 23, scope: !782)
!792 = !DILocation(line: 307, column: 3, scope: !782)
!793 = !DILocation(line: 307, column: 9, scope: !782)
!794 = !DILocation(line: 307, column: 15, scope: !782)
!795 = !DILocation(line: 309, column: 17, scope: !782)
!796 = !DILocation(line: 309, column: 23, scope: !782)
!797 = !DILocation(line: 309, column: 29, scope: !782)
!798 = !DILocation(line: 309, column: 27, scope: !782)
!799 = !DILocation(line: 309, column: 3, scope: !782)
!800 = !DILocation(line: 309, column: 9, scope: !782)
!801 = !DILocation(line: 309, column: 15, scope: !782)
!802 = !DILocation(line: 310, column: 1, scope: !773)
!803 = distinct !DISubprogram(name: "lzma2_lzma", scope: !8, file: !8, line: 879, type: !804, scopeLine: 880, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{!135, !99, !205}
!806 = !{!807, !808, !809, !810}
!807 = !DILocalVariable(name: "s", arg: 1, scope: !803, file: !8, line: 879, type: !99)
!808 = !DILocalVariable(name: "b", arg: 2, scope: !803, file: !8, line: 879, type: !205)
!809 = !DILocalVariable(name: "in_avail", scope: !803, file: !8, line: 881, type: !75)
!810 = !DILocalVariable(name: "tmp", scope: !803, file: !8, line: 882, type: !69)
!811 = !DILocation(line: 879, column: 45, scope: !803)
!812 = !DILocation(line: 879, column: 63, scope: !803)
!813 = !DILocation(line: 881, column: 2, scope: !803)
!814 = !DILocation(line: 881, column: 9, scope: !803)
!815 = !DILocation(line: 882, column: 2, scope: !803)
!816 = !DILocation(line: 882, column: 11, scope: !803)
!817 = !DILocation(line: 884, column: 13, scope: !803)
!818 = !DILocation(line: 884, column: 16, scope: !803)
!819 = !DILocation(line: 884, column: 26, scope: !803)
!820 = !DILocation(line: 884, column: 29, scope: !803)
!821 = !DILocation(line: 884, column: 24, scope: !803)
!822 = !DILocation(line: 884, column: 11, scope: !803)
!823 = !DILocation(line: 885, column: 6, scope: !824)
!824 = distinct !DILexicalBlock(scope: !803, file: !8, line: 885, column: 6)
!825 = !DILocation(line: 885, column: 9, scope: !824)
!826 = !DILocation(line: 885, column: 14, scope: !824)
!827 = !DILocation(line: 885, column: 19, scope: !824)
!828 = !DILocation(line: 885, column: 23, scope: !824)
!829 = !DILocation(line: 885, column: 26, scope: !824)
!830 = !DILocation(line: 885, column: 29, scope: !824)
!831 = !DILocation(line: 885, column: 35, scope: !824)
!832 = !DILocation(line: 885, column: 46, scope: !824)
!833 = !DILocation(line: 885, column: 6, scope: !803)
!834 = !DILocation(line: 886, column: 32, scope: !835)
!835 = distinct !DILexicalBlock(scope: !824, file: !8, line: 885, column: 52)
!836 = !DILocation(line: 886, column: 35, scope: !835)
!837 = !DILocation(line: 886, column: 40, scope: !835)
!838 = !DILocation(line: 886, column: 30, scope: !835)
!839 = !DILocation(line: 886, column: 7, scope: !835)
!840 = !DILocation(line: 887, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !835, file: !8, line: 887, column: 7)
!842 = !DILocation(line: 887, column: 13, scope: !841)
!843 = !DILocation(line: 887, column: 16, scope: !841)
!844 = !DILocation(line: 887, column: 22, scope: !841)
!845 = !DILocation(line: 887, column: 35, scope: !841)
!846 = !DILocation(line: 887, column: 38, scope: !841)
!847 = !DILocation(line: 887, column: 43, scope: !841)
!848 = !DILocation(line: 887, column: 33, scope: !841)
!849 = !DILocation(line: 887, column: 11, scope: !841)
!850 = !DILocation(line: 887, column: 7, scope: !835)
!851 = !DILocation(line: 888, column: 10, scope: !841)
!852 = !DILocation(line: 888, column: 13, scope: !841)
!853 = !DILocation(line: 888, column: 19, scope: !841)
!854 = !DILocation(line: 888, column: 32, scope: !841)
!855 = !DILocation(line: 888, column: 35, scope: !841)
!856 = !DILocation(line: 888, column: 40, scope: !841)
!857 = !DILocation(line: 888, column: 30, scope: !841)
!858 = !DILocation(line: 888, column: 8, scope: !841)
!859 = !DILocation(line: 888, column: 4, scope: !841)
!860 = !DILocation(line: 889, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !835, file: !8, line: 889, column: 7)
!862 = !DILocation(line: 889, column: 13, scope: !861)
!863 = !DILocation(line: 889, column: 11, scope: !861)
!864 = !DILocation(line: 889, column: 7, scope: !835)
!865 = !DILocation(line: 890, column: 10, scope: !861)
!866 = !DILocation(line: 890, column: 8, scope: !861)
!867 = !DILocation(line: 890, column: 4, scope: !861)
!868 = !DILocation(line: 892, column: 10, scope: !835)
!869 = !DILocation(line: 892, column: 13, scope: !835)
!870 = !DILocation(line: 892, column: 18, scope: !835)
!871 = !DILocation(line: 892, column: 24, scope: !835)
!872 = !DILocation(line: 892, column: 27, scope: !835)
!873 = !DILocation(line: 892, column: 32, scope: !835)
!874 = !DILocation(line: 892, column: 22, scope: !835)
!875 = !DILocation(line: 892, column: 38, scope: !835)
!876 = !DILocation(line: 892, column: 41, scope: !835)
!877 = !DILocation(line: 892, column: 46, scope: !835)
!878 = !DILocation(line: 892, column: 49, scope: !835)
!879 = !DILocation(line: 892, column: 44, scope: !835)
!880 = !DILocation(line: 892, column: 57, scope: !835)
!881 = !DILocation(line: 892, column: 3, scope: !835)
!882 = !DILocation(line: 894, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !835, file: !8, line: 894, column: 7)
!884 = !DILocation(line: 894, column: 10, scope: !883)
!885 = !DILocation(line: 894, column: 15, scope: !883)
!886 = !DILocation(line: 894, column: 22, scope: !883)
!887 = !DILocation(line: 894, column: 20, scope: !883)
!888 = !DILocation(line: 894, column: 29, scope: !883)
!889 = !DILocation(line: 894, column: 32, scope: !883)
!890 = !DILocation(line: 894, column: 38, scope: !883)
!891 = !DILocation(line: 894, column: 26, scope: !883)
!892 = !DILocation(line: 894, column: 7, scope: !835)
!893 = !DILocation(line: 895, column: 4, scope: !894)
!894 = distinct !DILexicalBlock(scope: !883, file: !8, line: 894, column: 50)
!895 = !DILocation(line: 898, column: 21, scope: !894)
!896 = !DILocation(line: 898, column: 24, scope: !894)
!897 = !DILocation(line: 898, column: 29, scope: !894)
!898 = !DILocation(line: 898, column: 36, scope: !894)
!899 = !DILocation(line: 898, column: 34, scope: !894)
!900 = !DILocation(line: 898, column: 4, scope: !894)
!901 = !DILocation(line: 898, column: 7, scope: !894)
!902 = !DILocation(line: 898, column: 10, scope: !894)
!903 = !DILocation(line: 898, column: 19, scope: !894)
!904 = !DILocation(line: 899, column: 3, scope: !894)
!905 = !DILocation(line: 899, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !883, file: !8, line: 899, column: 14)
!907 = !DILocation(line: 899, column: 17, scope: !906)
!908 = !DILocation(line: 899, column: 22, scope: !906)
!909 = !DILocation(line: 899, column: 29, scope: !906)
!910 = !DILocation(line: 899, column: 27, scope: !906)
!911 = !DILocation(line: 899, column: 33, scope: !906)
!912 = !DILocation(line: 899, column: 14, scope: !883)
!913 = !DILocation(line: 900, column: 20, scope: !914)
!914 = distinct !DILexicalBlock(scope: !906, file: !8, line: 899, column: 53)
!915 = !DILocation(line: 900, column: 4, scope: !914)
!916 = !DILocation(line: 900, column: 7, scope: !914)
!917 = !DILocation(line: 900, column: 12, scope: !914)
!918 = !DILocation(line: 900, column: 17, scope: !914)
!919 = !DILocation(line: 901, column: 17, scope: !914)
!920 = !DILocation(line: 901, column: 4, scope: !914)
!921 = !DILocation(line: 901, column: 7, scope: !914)
!922 = !DILocation(line: 901, column: 14, scope: !914)
!923 = !DILocation(line: 902, column: 4, scope: !914)
!924 = !DILocation(line: 904, column: 21, scope: !925)
!925 = distinct !DILexicalBlock(scope: !906, file: !8, line: 903, column: 10)
!926 = !DILocation(line: 904, column: 24, scope: !925)
!927 = !DILocation(line: 904, column: 29, scope: !925)
!928 = !DILocation(line: 904, column: 36, scope: !925)
!929 = !DILocation(line: 904, column: 34, scope: !925)
!930 = !DILocation(line: 904, column: 40, scope: !925)
!931 = !DILocation(line: 904, column: 4, scope: !925)
!932 = !DILocation(line: 904, column: 7, scope: !925)
!933 = !DILocation(line: 904, column: 10, scope: !925)
!934 = !DILocation(line: 904, column: 19, scope: !925)
!935 = !DILocation(line: 907, column: 14, scope: !835)
!936 = !DILocation(line: 907, column: 17, scope: !835)
!937 = !DILocation(line: 907, column: 22, scope: !835)
!938 = !DILocation(line: 907, column: 3, scope: !835)
!939 = !DILocation(line: 907, column: 6, scope: !835)
!940 = !DILocation(line: 907, column: 9, scope: !835)
!941 = !DILocation(line: 907, column: 12, scope: !835)
!942 = !DILocation(line: 908, column: 3, scope: !835)
!943 = !DILocation(line: 908, column: 6, scope: !835)
!944 = !DILocation(line: 908, column: 9, scope: !835)
!945 = !DILocation(line: 908, column: 16, scope: !835)
!946 = !DILocation(line: 910, column: 18, scope: !947)
!947 = distinct !DILexicalBlock(scope: !835, file: !8, line: 910, column: 7)
!948 = !DILocation(line: 910, column: 8, scope: !947)
!949 = !DILocation(line: 910, column: 21, scope: !947)
!950 = !DILocation(line: 910, column: 24, scope: !947)
!951 = !DILocation(line: 910, column: 27, scope: !947)
!952 = !DILocation(line: 910, column: 30, scope: !947)
!953 = !DILocation(line: 910, column: 39, scope: !947)
!954 = !DILocation(line: 910, column: 42, scope: !947)
!955 = !DILocation(line: 910, column: 47, scope: !947)
!956 = !DILocation(line: 910, column: 54, scope: !947)
!957 = !DILocation(line: 910, column: 52, scope: !947)
!958 = !DILocation(line: 910, column: 37, scope: !947)
!959 = !DILocation(line: 910, column: 7, scope: !835)
!960 = !DILocation(line: 911, column: 4, scope: !947)
!961 = !DILocation(line: 913, column: 26, scope: !835)
!962 = !DILocation(line: 913, column: 29, scope: !835)
!963 = !DILocation(line: 913, column: 32, scope: !835)
!964 = !DILocation(line: 913, column: 3, scope: !835)
!965 = !DILocation(line: 913, column: 6, scope: !835)
!966 = !DILocation(line: 913, column: 12, scope: !835)
!967 = !DILocation(line: 913, column: 23, scope: !835)
!968 = !DILocation(line: 915, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !835, file: !8, line: 915, column: 7)
!970 = !DILocation(line: 915, column: 10, scope: !969)
!971 = !DILocation(line: 915, column: 13, scope: !969)
!972 = !DILocation(line: 915, column: 22, scope: !969)
!973 = !DILocation(line: 915, column: 25, scope: !969)
!974 = !DILocation(line: 915, column: 30, scope: !969)
!975 = !DILocation(line: 915, column: 20, scope: !969)
!976 = !DILocation(line: 915, column: 7, scope: !835)
!977 = !DILocation(line: 916, column: 20, scope: !978)
!978 = distinct !DILexicalBlock(scope: !969, file: !8, line: 915, column: 36)
!979 = !DILocation(line: 916, column: 23, scope: !978)
!980 = !DILocation(line: 916, column: 26, scope: !978)
!981 = !DILocation(line: 916, column: 4, scope: !978)
!982 = !DILocation(line: 916, column: 7, scope: !978)
!983 = !DILocation(line: 916, column: 12, scope: !978)
!984 = !DILocation(line: 916, column: 17, scope: !978)
!985 = !DILocation(line: 917, column: 12, scope: !978)
!986 = !DILocation(line: 917, column: 15, scope: !978)
!987 = !DILocation(line: 917, column: 20, scope: !978)
!988 = !DILocation(line: 917, column: 4, scope: !978)
!989 = !DILocation(line: 917, column: 25, scope: !978)
!990 = !DILocation(line: 917, column: 28, scope: !978)
!991 = !DILocation(line: 917, column: 33, scope: !978)
!992 = !DILocation(line: 917, column: 39, scope: !978)
!993 = !DILocation(line: 917, column: 42, scope: !978)
!994 = !DILocation(line: 917, column: 45, scope: !978)
!995 = !DILocation(line: 917, column: 37, scope: !978)
!996 = !DILocation(line: 918, column: 6, scope: !978)
!997 = !DILocation(line: 918, column: 9, scope: !978)
!998 = !DILocation(line: 918, column: 14, scope: !978)
!999 = !DILocation(line: 919, column: 4, scope: !978)
!1000 = !DILocation(line: 922, column: 16, scope: !835)
!1001 = !DILocation(line: 922, column: 19, scope: !835)
!1002 = !DILocation(line: 922, column: 22, scope: !835)
!1003 = !DILocation(line: 922, column: 31, scope: !835)
!1004 = !DILocation(line: 922, column: 34, scope: !835)
!1005 = !DILocation(line: 922, column: 39, scope: !835)
!1006 = !DILocation(line: 922, column: 29, scope: !835)
!1007 = !DILocation(line: 922, column: 3, scope: !835)
!1008 = !DILocation(line: 922, column: 6, scope: !835)
!1009 = !DILocation(line: 922, column: 13, scope: !835)
!1010 = !DILocation(line: 923, column: 3, scope: !835)
!1011 = !DILocation(line: 923, column: 6, scope: !835)
!1012 = !DILocation(line: 923, column: 11, scope: !835)
!1013 = !DILocation(line: 923, column: 16, scope: !835)
!1014 = !DILocation(line: 924, column: 2, scope: !835)
!1015 = !DILocation(line: 926, column: 13, scope: !803)
!1016 = !DILocation(line: 926, column: 16, scope: !803)
!1017 = !DILocation(line: 926, column: 26, scope: !803)
!1018 = !DILocation(line: 926, column: 29, scope: !803)
!1019 = !DILocation(line: 926, column: 24, scope: !803)
!1020 = !DILocation(line: 926, column: 11, scope: !803)
!1021 = !DILocation(line: 927, column: 6, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !803, file: !8, line: 927, column: 6)
!1023 = !DILocation(line: 927, column: 15, scope: !1022)
!1024 = !DILocation(line: 927, column: 6, scope: !803)
!1025 = !DILocation(line: 928, column: 14, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !8, line: 927, column: 36)
!1027 = !DILocation(line: 928, column: 17, scope: !1026)
!1028 = !DILocation(line: 928, column: 3, scope: !1026)
!1029 = !DILocation(line: 928, column: 6, scope: !1026)
!1030 = !DILocation(line: 928, column: 9, scope: !1026)
!1031 = !DILocation(line: 928, column: 12, scope: !1026)
!1032 = !DILocation(line: 929, column: 18, scope: !1026)
!1033 = !DILocation(line: 929, column: 21, scope: !1026)
!1034 = !DILocation(line: 929, column: 3, scope: !1026)
!1035 = !DILocation(line: 929, column: 6, scope: !1026)
!1036 = !DILocation(line: 929, column: 9, scope: !1026)
!1037 = !DILocation(line: 929, column: 16, scope: !1026)
!1038 = !DILocation(line: 931, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1026, file: !8, line: 931, column: 7)
!1040 = !DILocation(line: 931, column: 19, scope: !1039)
!1041 = !DILocation(line: 931, column: 22, scope: !1039)
!1042 = !DILocation(line: 931, column: 28, scope: !1039)
!1043 = !DILocation(line: 931, column: 39, scope: !1039)
!1044 = !DILocation(line: 931, column: 16, scope: !1039)
!1045 = !DILocation(line: 931, column: 7, scope: !1026)
!1046 = !DILocation(line: 932, column: 21, scope: !1039)
!1047 = !DILocation(line: 932, column: 24, scope: !1039)
!1048 = !DILocation(line: 932, column: 33, scope: !1039)
!1049 = !DILocation(line: 932, column: 36, scope: !1039)
!1050 = !DILocation(line: 932, column: 42, scope: !1039)
!1051 = !DILocation(line: 932, column: 31, scope: !1039)
!1052 = !DILocation(line: 932, column: 4, scope: !1039)
!1053 = !DILocation(line: 932, column: 7, scope: !1039)
!1054 = !DILocation(line: 932, column: 10, scope: !1039)
!1055 = !DILocation(line: 932, column: 19, scope: !1039)
!1056 = !DILocation(line: 934, column: 21, scope: !1039)
!1057 = !DILocation(line: 934, column: 24, scope: !1039)
!1058 = !DILocation(line: 934, column: 32, scope: !1039)
!1059 = !DILocation(line: 934, column: 4, scope: !1039)
!1060 = !DILocation(line: 934, column: 7, scope: !1039)
!1061 = !DILocation(line: 934, column: 10, scope: !1039)
!1062 = !DILocation(line: 934, column: 19, scope: !1039)
!1063 = !DILocation(line: 936, column: 18, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1026, file: !8, line: 936, column: 7)
!1065 = !DILocation(line: 936, column: 8, scope: !1064)
!1066 = !DILocation(line: 936, column: 7, scope: !1026)
!1067 = !DILocation(line: 937, column: 4, scope: !1064)
!1068 = !DILocation(line: 939, column: 14, scope: !1026)
!1069 = !DILocation(line: 939, column: 17, scope: !1026)
!1070 = !DILocation(line: 939, column: 20, scope: !1026)
!1071 = !DILocation(line: 939, column: 29, scope: !1026)
!1072 = !DILocation(line: 939, column: 32, scope: !1026)
!1073 = !DILocation(line: 939, column: 27, scope: !1026)
!1074 = !DILocation(line: 939, column: 12, scope: !1026)
!1075 = !DILocation(line: 940, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1026, file: !8, line: 940, column: 7)
!1077 = !DILocation(line: 940, column: 18, scope: !1076)
!1078 = !DILocation(line: 940, column: 21, scope: !1076)
!1079 = !DILocation(line: 940, column: 27, scope: !1076)
!1080 = !DILocation(line: 940, column: 16, scope: !1076)
!1081 = !DILocation(line: 940, column: 7, scope: !1026)
!1082 = !DILocation(line: 941, column: 4, scope: !1076)
!1083 = !DILocation(line: 943, column: 26, scope: !1026)
!1084 = !DILocation(line: 943, column: 3, scope: !1026)
!1085 = !DILocation(line: 943, column: 6, scope: !1026)
!1086 = !DILocation(line: 943, column: 12, scope: !1026)
!1087 = !DILocation(line: 943, column: 23, scope: !1026)
!1088 = !DILocation(line: 944, column: 15, scope: !1026)
!1089 = !DILocation(line: 944, column: 18, scope: !1026)
!1090 = !DILocation(line: 944, column: 21, scope: !1026)
!1091 = !DILocation(line: 944, column: 3, scope: !1026)
!1092 = !DILocation(line: 944, column: 6, scope: !1026)
!1093 = !DILocation(line: 944, column: 13, scope: !1026)
!1094 = !DILocation(line: 945, column: 2, scope: !1026)
!1095 = !DILocation(line: 947, column: 13, scope: !803)
!1096 = !DILocation(line: 947, column: 16, scope: !803)
!1097 = !DILocation(line: 947, column: 26, scope: !803)
!1098 = !DILocation(line: 947, column: 29, scope: !803)
!1099 = !DILocation(line: 947, column: 24, scope: !803)
!1100 = !DILocation(line: 947, column: 11, scope: !803)
!1101 = !DILocation(line: 948, column: 6, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !803, file: !8, line: 948, column: 6)
!1103 = !DILocation(line: 948, column: 15, scope: !1102)
!1104 = !DILocation(line: 948, column: 6, scope: !803)
!1105 = !DILocation(line: 949, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !8, line: 949, column: 7)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !8, line: 948, column: 35)
!1108 = !DILocation(line: 949, column: 18, scope: !1106)
!1109 = !DILocation(line: 949, column: 21, scope: !1106)
!1110 = !DILocation(line: 949, column: 27, scope: !1106)
!1111 = !DILocation(line: 949, column: 16, scope: !1106)
!1112 = !DILocation(line: 949, column: 7, scope: !1107)
!1113 = !DILocation(line: 950, column: 15, scope: !1106)
!1114 = !DILocation(line: 950, column: 18, scope: !1106)
!1115 = !DILocation(line: 950, column: 24, scope: !1106)
!1116 = !DILocation(line: 950, column: 13, scope: !1106)
!1117 = !DILocation(line: 950, column: 4, scope: !1106)
!1118 = !DILocation(line: 952, column: 10, scope: !1107)
!1119 = !DILocation(line: 952, column: 13, scope: !1107)
!1120 = !DILocation(line: 952, column: 18, scope: !1107)
!1121 = !DILocation(line: 952, column: 3, scope: !1107)
!1122 = !DILocation(line: 952, column: 23, scope: !1107)
!1123 = !DILocation(line: 952, column: 26, scope: !1107)
!1124 = !DILocation(line: 952, column: 31, scope: !1107)
!1125 = !DILocation(line: 952, column: 34, scope: !1107)
!1126 = !DILocation(line: 952, column: 29, scope: !1107)
!1127 = !DILocation(line: 952, column: 42, scope: !1107)
!1128 = !DILocation(line: 953, column: 18, scope: !1107)
!1129 = !DILocation(line: 953, column: 3, scope: !1107)
!1130 = !DILocation(line: 953, column: 6, scope: !1107)
!1131 = !DILocation(line: 953, column: 11, scope: !1107)
!1132 = !DILocation(line: 953, column: 16, scope: !1107)
!1133 = !DILocation(line: 954, column: 16, scope: !1107)
!1134 = !DILocation(line: 954, column: 3, scope: !1107)
!1135 = !DILocation(line: 954, column: 6, scope: !1107)
!1136 = !DILocation(line: 954, column: 13, scope: !1107)
!1137 = !DILocation(line: 955, column: 2, scope: !1107)
!1138 = !DILocation(line: 957, column: 2, scope: !803)
!1139 = !DILocation(line: 958, column: 1, scope: !803)
!1140 = distinct !DISubprogram(name: "dict_flush", scope: !8, file: !8, line: 437, type: !1141, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1143)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!69, !552, !205}
!1143 = !{!1144, !1145, !1146}
!1144 = !DILocalVariable(name: "dict", arg: 1, scope: !1140, file: !8, line: 437, type: !552)
!1145 = !DILocalVariable(name: "b", arg: 2, scope: !1140, file: !8, line: 437, type: !205)
!1146 = !DILocalVariable(name: "copy_size", scope: !1140, file: !8, line: 439, type: !75)
!1147 = !DILocation(line: 437, column: 47, scope: !1140)
!1148 = !DILocation(line: 437, column: 68, scope: !1140)
!1149 = !DILocation(line: 439, column: 2, scope: !1140)
!1150 = !DILocation(line: 439, column: 9, scope: !1140)
!1151 = !DILocation(line: 439, column: 21, scope: !1140)
!1152 = !DILocation(line: 439, column: 27, scope: !1140)
!1153 = !DILocation(line: 439, column: 33, scope: !1140)
!1154 = !DILocation(line: 439, column: 39, scope: !1140)
!1155 = !DILocation(line: 439, column: 31, scope: !1140)
!1156 = !DILocation(line: 441, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1140, file: !8, line: 441, column: 6)
!1158 = !DILocation(line: 441, column: 6, scope: !1140)
!1159 = !DILocation(line: 442, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !8, line: 442, column: 7)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !8, line: 441, column: 32)
!1162 = !DILocation(line: 442, column: 13, scope: !1160)
!1163 = !DILocation(line: 442, column: 20, scope: !1160)
!1164 = !DILocation(line: 442, column: 26, scope: !1160)
!1165 = !DILocation(line: 442, column: 17, scope: !1160)
!1166 = !DILocation(line: 442, column: 7, scope: !1161)
!1167 = !DILocation(line: 443, column: 4, scope: !1160)
!1168 = !DILocation(line: 443, column: 10, scope: !1160)
!1169 = !DILocation(line: 443, column: 14, scope: !1160)
!1170 = !DILocation(line: 456, column: 11, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1161, file: !8, line: 455, column: 7)
!1172 = !DILocation(line: 456, column: 14, scope: !1171)
!1173 = !DILocation(line: 456, column: 20, scope: !1171)
!1174 = !DILocation(line: 456, column: 23, scope: !1171)
!1175 = !DILocation(line: 456, column: 18, scope: !1171)
!1176 = !DILocation(line: 456, column: 32, scope: !1171)
!1177 = !DILocation(line: 456, column: 38, scope: !1171)
!1178 = !DILocation(line: 456, column: 44, scope: !1171)
!1179 = !DILocation(line: 456, column: 50, scope: !1171)
!1180 = !DILocation(line: 456, column: 42, scope: !1171)
!1181 = !DILocation(line: 457, column: 6, scope: !1171)
!1182 = !DILocation(line: 456, column: 4, scope: !1171)
!1183 = !DILocation(line: 458, column: 2, scope: !1161)
!1184 = !DILocation(line: 460, column: 16, scope: !1140)
!1185 = !DILocation(line: 460, column: 22, scope: !1140)
!1186 = !DILocation(line: 460, column: 2, scope: !1140)
!1187 = !DILocation(line: 460, column: 8, scope: !1140)
!1188 = !DILocation(line: 460, column: 14, scope: !1140)
!1189 = !DILocation(line: 461, column: 16, scope: !1140)
!1190 = !DILocation(line: 461, column: 2, scope: !1140)
!1191 = !DILocation(line: 461, column: 5, scope: !1140)
!1192 = !DILocation(line: 461, column: 13, scope: !1140)
!1193 = !DILocation(line: 462, column: 9, scope: !1140)
!1194 = !DILocation(line: 463, column: 1, scope: !1140)
!1195 = !DILocation(line: 462, column: 2, scope: !1140)
!1196 = distinct !DISubprogram(name: "rc_is_finished", scope: !8, file: !8, line: 504, type: !1197, scopeLine: 505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1201)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!135, !1199}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1201 = !{!1202}
!1202 = !DILocalVariable(name: "rc", arg: 1, scope: !1196, file: !8, line: 504, type: !1199)
!1203 = !DILocation(line: 504, column: 56, scope: !1196)
!1204 = !DILocation(line: 506, column: 9, scope: !1196)
!1205 = !DILocation(line: 506, column: 13, scope: !1196)
!1206 = !DILocation(line: 506, column: 18, scope: !1196)
!1207 = !DILocation(line: 506, column: 2, scope: !1196)
!1208 = distinct !DISubprogram(name: "rc_reset", scope: !8, file: !8, line: 470, type: !1209, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1211)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !735}
!1211 = !{!1212}
!1212 = !DILocalVariable(name: "rc", arg: 1, scope: !1208, file: !8, line: 470, type: !735)
!1213 = !DILocation(line: 470, column: 37, scope: !1208)
!1214 = !DILocation(line: 472, column: 2, scope: !1208)
!1215 = !DILocation(line: 472, column: 6, scope: !1208)
!1216 = !DILocation(line: 472, column: 12, scope: !1208)
!1217 = !DILocation(line: 473, column: 2, scope: !1208)
!1218 = !DILocation(line: 473, column: 6, scope: !1208)
!1219 = !DILocation(line: 473, column: 11, scope: !1208)
!1220 = !DILocation(line: 474, column: 2, scope: !1208)
!1221 = !DILocation(line: 474, column: 6, scope: !1208)
!1222 = !DILocation(line: 474, column: 22, scope: !1208)
!1223 = !DILocation(line: 475, column: 1, scope: !1208)
!1224 = distinct !DISubprogram(name: "dict_uncompressed", scope: !8, file: !8, line: 378, type: !1225, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1228)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !552, !205, !1227}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1236}
!1229 = !DILocalVariable(name: "dict", arg: 1, scope: !1224, file: !8, line: 378, type: !552)
!1230 = !DILocalVariable(name: "b", arg: 2, scope: !1224, file: !8, line: 378, type: !205)
!1231 = !DILocalVariable(name: "left", arg: 3, scope: !1224, file: !8, line: 379, type: !1227)
!1232 = !DILocalVariable(name: "copy_size", scope: !1224, file: !8, line: 381, type: !75)
!1233 = !DILocalVariable(name: "__UNIQUE_ID___x120", scope: !1234, file: !8, line: 385, type: !75)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !8, line: 385, column: 15)
!1235 = distinct !DILexicalBlock(scope: !1224, file: !8, line: 384, column: 33)
!1236 = !DILocalVariable(name: "__UNIQUE_ID___y121", scope: !1234, file: !8, line: 385, type: !75)
!1237 = !DILocation(line: 378, column: 50, scope: !1224)
!1238 = !DILocation(line: 378, column: 71, scope: !1224)
!1239 = !DILocation(line: 379, column: 20, scope: !1224)
!1240 = !DILocation(line: 381, column: 2, scope: !1224)
!1241 = !DILocation(line: 381, column: 9, scope: !1224)
!1242 = !DILocation(line: 383, column: 2, scope: !1224)
!1243 = !DILocation(line: 383, column: 10, scope: !1224)
!1244 = !DILocation(line: 383, column: 9, scope: !1224)
!1245 = !DILocation(line: 383, column: 15, scope: !1224)
!1246 = !DILocation(line: 383, column: 19, scope: !1224)
!1247 = !DILocation(line: 383, column: 22, scope: !1224)
!1248 = !DILocation(line: 383, column: 25, scope: !1224)
!1249 = !DILocation(line: 383, column: 34, scope: !1224)
!1250 = !DILocation(line: 383, column: 37, scope: !1224)
!1251 = !DILocation(line: 383, column: 32, scope: !1224)
!1252 = !DILocation(line: 384, column: 4, scope: !1224)
!1253 = !DILocation(line: 384, column: 7, scope: !1224)
!1254 = !DILocation(line: 384, column: 10, scope: !1224)
!1255 = !DILocation(line: 384, column: 20, scope: !1224)
!1256 = !DILocation(line: 384, column: 23, scope: !1224)
!1257 = !DILocation(line: 384, column: 18, scope: !1224)
!1258 = !DILocation(line: 0, scope: !1224)
!1259 = !DILocation(line: 385, column: 15, scope: !1234)
!1260 = !DILocation(line: 385, column: 15, scope: !1235)
!1261 = !DILocation(line: 385, column: 13, scope: !1235)
!1262 = !DILocation(line: 387, column: 7, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1235, file: !8, line: 387, column: 7)
!1264 = !DILocation(line: 387, column: 19, scope: !1263)
!1265 = !DILocation(line: 387, column: 25, scope: !1263)
!1266 = !DILocation(line: 387, column: 31, scope: !1263)
!1267 = !DILocation(line: 387, column: 37, scope: !1263)
!1268 = !DILocation(line: 387, column: 29, scope: !1263)
!1269 = !DILocation(line: 387, column: 17, scope: !1263)
!1270 = !DILocation(line: 387, column: 7, scope: !1235)
!1271 = !DILocation(line: 388, column: 16, scope: !1263)
!1272 = !DILocation(line: 388, column: 22, scope: !1263)
!1273 = !DILocation(line: 388, column: 28, scope: !1263)
!1274 = !DILocation(line: 388, column: 34, scope: !1263)
!1275 = !DILocation(line: 388, column: 26, scope: !1263)
!1276 = !DILocation(line: 388, column: 14, scope: !1263)
!1277 = !DILocation(line: 388, column: 4, scope: !1263)
!1278 = !DILocation(line: 389, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1235, file: !8, line: 389, column: 7)
!1280 = !DILocation(line: 389, column: 20, scope: !1279)
!1281 = !DILocation(line: 389, column: 19, scope: !1279)
!1282 = !DILocation(line: 389, column: 17, scope: !1279)
!1283 = !DILocation(line: 389, column: 7, scope: !1235)
!1284 = !DILocation(line: 390, column: 17, scope: !1279)
!1285 = !DILocation(line: 390, column: 16, scope: !1279)
!1286 = !DILocation(line: 390, column: 14, scope: !1279)
!1287 = !DILocation(line: 390, column: 4, scope: !1279)
!1288 = !DILocation(line: 392, column: 12, scope: !1235)
!1289 = !DILocation(line: 392, column: 4, scope: !1235)
!1290 = !DILocation(line: 392, column: 9, scope: !1235)
!1291 = !DILocation(line: 401, column: 11, scope: !1235)
!1292 = !DILocation(line: 401, column: 17, scope: !1235)
!1293 = !DILocation(line: 401, column: 23, scope: !1235)
!1294 = !DILocation(line: 401, column: 29, scope: !1235)
!1295 = !DILocation(line: 401, column: 21, scope: !1235)
!1296 = !DILocation(line: 401, column: 34, scope: !1235)
!1297 = !DILocation(line: 401, column: 37, scope: !1235)
!1298 = !DILocation(line: 401, column: 42, scope: !1235)
!1299 = !DILocation(line: 401, column: 45, scope: !1235)
!1300 = !DILocation(line: 401, column: 40, scope: !1235)
!1301 = !DILocation(line: 401, column: 53, scope: !1235)
!1302 = !DILocation(line: 401, column: 3, scope: !1235)
!1303 = !DILocation(line: 402, column: 16, scope: !1235)
!1304 = !DILocation(line: 402, column: 3, scope: !1235)
!1305 = !DILocation(line: 402, column: 9, scope: !1235)
!1306 = !DILocation(line: 402, column: 13, scope: !1235)
!1307 = !DILocation(line: 404, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1235, file: !8, line: 404, column: 7)
!1309 = !DILocation(line: 404, column: 13, scope: !1308)
!1310 = !DILocation(line: 404, column: 20, scope: !1308)
!1311 = !DILocation(line: 404, column: 26, scope: !1308)
!1312 = !DILocation(line: 404, column: 18, scope: !1308)
!1313 = !DILocation(line: 404, column: 7, scope: !1235)
!1314 = !DILocation(line: 405, column: 17, scope: !1308)
!1315 = !DILocation(line: 405, column: 23, scope: !1308)
!1316 = !DILocation(line: 405, column: 4, scope: !1308)
!1317 = !DILocation(line: 405, column: 10, scope: !1308)
!1318 = !DILocation(line: 405, column: 15, scope: !1308)
!1319 = !DILocation(line: 407, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1235, file: !8, line: 407, column: 7)
!1321 = !DILocation(line: 407, column: 7, scope: !1235)
!1322 = !DILocation(line: 408, column: 8, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !8, line: 408, column: 8)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !8, line: 407, column: 33)
!1325 = !DILocation(line: 408, column: 14, scope: !1323)
!1326 = !DILocation(line: 408, column: 21, scope: !1323)
!1327 = !DILocation(line: 408, column: 27, scope: !1323)
!1328 = !DILocation(line: 408, column: 18, scope: !1323)
!1329 = !DILocation(line: 408, column: 8, scope: !1324)
!1330 = !DILocation(line: 409, column: 5, scope: !1323)
!1331 = !DILocation(line: 409, column: 11, scope: !1323)
!1332 = !DILocation(line: 409, column: 15, scope: !1323)
!1333 = !DILocation(line: 415, column: 12, scope: !1324)
!1334 = !DILocation(line: 415, column: 15, scope: !1324)
!1335 = !DILocation(line: 415, column: 21, scope: !1324)
!1336 = !DILocation(line: 415, column: 24, scope: !1324)
!1337 = !DILocation(line: 415, column: 19, scope: !1324)
!1338 = !DILocation(line: 415, column: 33, scope: !1324)
!1339 = !DILocation(line: 415, column: 36, scope: !1324)
!1340 = !DILocation(line: 415, column: 41, scope: !1324)
!1341 = !DILocation(line: 415, column: 44, scope: !1324)
!1342 = !DILocation(line: 415, column: 39, scope: !1324)
!1343 = !DILocation(line: 416, column: 6, scope: !1324)
!1344 = !DILocation(line: 415, column: 4, scope: !1324)
!1345 = !DILocation(line: 417, column: 3, scope: !1324)
!1346 = !DILocation(line: 419, column: 17, scope: !1235)
!1347 = !DILocation(line: 419, column: 23, scope: !1235)
!1348 = !DILocation(line: 419, column: 3, scope: !1235)
!1349 = !DILocation(line: 419, column: 9, scope: !1235)
!1350 = !DILocation(line: 419, column: 15, scope: !1235)
!1351 = !DILocation(line: 421, column: 17, scope: !1235)
!1352 = !DILocation(line: 421, column: 3, scope: !1235)
!1353 = !DILocation(line: 421, column: 6, scope: !1235)
!1354 = !DILocation(line: 421, column: 14, scope: !1235)
!1355 = !DILocation(line: 422, column: 16, scope: !1235)
!1356 = !DILocation(line: 422, column: 3, scope: !1235)
!1357 = !DILocation(line: 422, column: 6, scope: !1235)
!1358 = !DILocation(line: 422, column: 13, scope: !1235)
!1359 = distinct !{!1359, !1242, !1360, !545, !546}
!1360 = !DILocation(line: 423, column: 2, scope: !1224)
!1361 = !DILocation(line: 424, column: 1, scope: !1224)
!1362 = distinct !DISubprogram(name: "xz_dec_lzma2_create", scope: !8, file: !8, line: 1141, type: !1363, scopeLine: 1143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!99, !23, !69}
!1365 = !{!1366, !1367, !1368}
!1366 = !DILocalVariable(name: "mode", arg: 1, scope: !1362, file: !8, line: 1141, type: !23)
!1367 = !DILocalVariable(name: "dict_max", arg: 2, scope: !1362, file: !8, line: 1142, type: !69)
!1368 = !DILocalVariable(name: "s", scope: !1362, file: !8, line: 1144, type: !99)
!1369 = !DILocation(line: 1141, column: 65, scope: !1362)
!1370 = !DILocation(line: 1142, column: 19, scope: !1362)
!1371 = !DILocation(line: 1144, column: 2, scope: !1362)
!1372 = !DILocation(line: 1144, column: 23, scope: !1362)
!1373 = !DILocation(line: 1144, column: 27, scope: !1362)
!1374 = !DILocation(line: 1145, column: 6, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1362, file: !8, line: 1145, column: 6)
!1376 = !DILocation(line: 1145, column: 8, scope: !1375)
!1377 = !DILocation(line: 1145, column: 6, scope: !1362)
!1378 = !DILocation(line: 1146, column: 3, scope: !1375)
!1379 = !DILocation(line: 1148, column: 17, scope: !1362)
!1380 = !DILocation(line: 1148, column: 2, scope: !1362)
!1381 = !DILocation(line: 1148, column: 5, scope: !1362)
!1382 = !DILocation(line: 1148, column: 10, scope: !1362)
!1383 = !DILocation(line: 1148, column: 15, scope: !1362)
!1384 = !DILocation(line: 1149, column: 21, scope: !1362)
!1385 = !DILocation(line: 1149, column: 2, scope: !1362)
!1386 = !DILocation(line: 1149, column: 5, scope: !1362)
!1387 = !DILocation(line: 1149, column: 10, scope: !1362)
!1388 = !DILocation(line: 1149, column: 19, scope: !1362)
!1389 = !DILocation(line: 1151, column: 6, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1362, file: !8, line: 1151, column: 6)
!1391 = !DILocation(line: 1151, column: 6, scope: !1362)
!1392 = !DILocation(line: 1152, column: 25, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !8, line: 1151, column: 29)
!1394 = !DILocation(line: 1152, column: 17, scope: !1393)
!1395 = !DILocation(line: 1152, column: 3, scope: !1393)
!1396 = !DILocation(line: 1152, column: 6, scope: !1393)
!1397 = !DILocation(line: 1152, column: 11, scope: !1393)
!1398 = !DILocation(line: 1152, column: 15, scope: !1393)
!1399 = !DILocation(line: 1153, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1393, file: !8, line: 1153, column: 7)
!1401 = !DILocation(line: 1153, column: 10, scope: !1400)
!1402 = !DILocation(line: 1153, column: 15, scope: !1400)
!1403 = !DILocation(line: 1153, column: 19, scope: !1400)
!1404 = !DILocation(line: 1153, column: 7, scope: !1393)
!1405 = !DILocation(line: 1154, column: 10, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1400, file: !8, line: 1153, column: 28)
!1407 = !DILocation(line: 1154, column: 4, scope: !1406)
!1408 = !DILocation(line: 1155, column: 4, scope: !1406)
!1409 = !DILocation(line: 1157, column: 2, scope: !1393)
!1410 = !DILocation(line: 1157, column: 13, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1390, file: !8, line: 1157, column: 13)
!1412 = !DILocation(line: 1157, column: 13, scope: !1390)
!1413 = !DILocation(line: 1158, column: 3, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1411, file: !8, line: 1157, column: 36)
!1415 = !DILocation(line: 1158, column: 6, scope: !1414)
!1416 = !DILocation(line: 1158, column: 11, scope: !1414)
!1417 = !DILocation(line: 1158, column: 15, scope: !1414)
!1418 = !DILocation(line: 1159, column: 3, scope: !1414)
!1419 = !DILocation(line: 1159, column: 6, scope: !1414)
!1420 = !DILocation(line: 1159, column: 11, scope: !1414)
!1421 = !DILocation(line: 1159, column: 21, scope: !1414)
!1422 = !DILocation(line: 1160, column: 2, scope: !1414)
!1423 = !DILocation(line: 1162, column: 9, scope: !1362)
!1424 = !DILocation(line: 1162, column: 2, scope: !1362)
!1425 = !DILocation(line: 1163, column: 1, scope: !1362)
!1426 = distinct !DISubprogram(name: "kmalloc", scope: !2, file: !2, line: 591, type: !1427, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1429)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!81, !75, !80}
!1429 = !{!1430, !1431, !1432}
!1430 = !DILocalVariable(name: "size", arg: 1, scope: !1426, file: !2, line: 591, type: !75)
!1431 = !DILocalVariable(name: "flags", arg: 2, scope: !1426, file: !2, line: 591, type: !80)
!1432 = !DILocalVariable(name: "index", scope: !1433, file: !2, line: 594, type: !12)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 593, column: 42)
!1434 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 593, column: 6)
!1435 = !DILocation(line: 591, column: 61, scope: !1426)
!1436 = !DILocation(line: 591, column: 73, scope: !1426)
!1437 = !DILocation(line: 593, column: 27, scope: !1434)
!1438 = !DILocation(line: 593, column: 6, scope: !1434)
!1439 = !DILocation(line: 593, column: 33, scope: !1434)
!1440 = !DILocation(line: 593, column: 36, scope: !1434)
!1441 = !DILocation(line: 593, column: 6, scope: !1426)
!1442 = !DILocation(line: 594, column: 3, scope: !1433)
!1443 = !DILocation(line: 594, column: 16, scope: !1433)
!1444 = !DILocation(line: 596, column: 7, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 596, column: 7)
!1446 = !DILocation(line: 596, column: 12, scope: !1445)
!1447 = !DILocation(line: 596, column: 7, scope: !1433)
!1448 = !DILocation(line: 597, column: 25, scope: !1445)
!1449 = !DILocation(line: 597, column: 31, scope: !1445)
!1450 = !DILocation(line: 597, column: 11, scope: !1445)
!1451 = !DILocation(line: 597, column: 4, scope: !1445)
!1452 = !DILocation(line: 599, column: 11, scope: !1433)
!1453 = !DILocation(line: 599, column: 9, scope: !1433)
!1454 = !DILocation(line: 601, column: 33, scope: !1433)
!1455 = !DILocation(line: 601, column: 40, scope: !1433)
!1456 = !DILocation(line: 601, column: 20, scope: !1433)
!1457 = !DILocation(line: 601, column: 5, scope: !1433)
!1458 = !DILocation(line: 601, column: 51, scope: !1433)
!1459 = !DILocation(line: 602, column: 5, scope: !1433)
!1460 = !DILocation(line: 602, column: 12, scope: !1433)
!1461 = !DILocation(line: 600, column: 10, scope: !1433)
!1462 = !DILocation(line: 600, column: 3, scope: !1433)
!1463 = !DILocation(line: 603, column: 2, scope: !1434)
!1464 = !DILocation(line: 604, column: 19, scope: !1426)
!1465 = !DILocation(line: 604, column: 25, scope: !1426)
!1466 = !DILocation(line: 604, column: 9, scope: !1426)
!1467 = !DILocation(line: 604, column: 2, scope: !1426)
!1468 = !DILocation(line: 605, column: 1, scope: !1426)
!1469 = !DISubprogram(name: "vmalloc", scope: !1470, file: !1470, line: 140, type: !1471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1470 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!81, !79}
!1473 = !DISubprogram(name: "kfree", scope: !2, file: !2, line: 227, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1478 = distinct !DISubprogram(name: "xz_dec_lzma2_reset", scope: !8, file: !8, line: 1165, type: !1479, scopeLine: 1166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!10, !99, !82}
!1481 = !{!1482, !1483}
!1482 = !DILocalVariable(name: "s", arg: 1, scope: !1478, file: !8, line: 1165, type: !99)
!1483 = !DILocalVariable(name: "props", arg: 2, scope: !1478, file: !8, line: 1165, type: !82)
!1484 = !DILocation(line: 1165, column: 63, scope: !1478)
!1485 = !DILocation(line: 1165, column: 74, scope: !1478)
!1486 = !DILocation(line: 1168, column: 6, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1478, file: !8, line: 1168, column: 6)
!1488 = !DILocation(line: 1168, column: 12, scope: !1487)
!1489 = !DILocation(line: 1168, column: 6, scope: !1478)
!1490 = !DILocation(line: 1169, column: 3, scope: !1487)
!1491 = !DILocation(line: 1171, column: 22, scope: !1478)
!1492 = !DILocation(line: 1171, column: 28, scope: !1478)
!1493 = !DILocation(line: 1171, column: 19, scope: !1478)
!1494 = !DILocation(line: 1171, column: 2, scope: !1478)
!1495 = !DILocation(line: 1171, column: 5, scope: !1478)
!1496 = !DILocation(line: 1171, column: 10, scope: !1478)
!1497 = !DILocation(line: 1171, column: 15, scope: !1478)
!1498 = !DILocation(line: 1172, column: 20, scope: !1478)
!1499 = !DILocation(line: 1172, column: 26, scope: !1478)
!1500 = !DILocation(line: 1172, column: 32, scope: !1478)
!1501 = !DILocation(line: 1172, column: 2, scope: !1478)
!1502 = !DILocation(line: 1172, column: 5, scope: !1478)
!1503 = !DILocation(line: 1172, column: 10, scope: !1478)
!1504 = !DILocation(line: 1172, column: 15, scope: !1478)
!1505 = !DILocation(line: 1174, column: 6, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1478, file: !8, line: 1174, column: 6)
!1507 = !DILocation(line: 1174, column: 6, scope: !1478)
!1508 = !DILocation(line: 1175, column: 7, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !8, line: 1175, column: 7)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !8, line: 1174, column: 34)
!1511 = !DILocation(line: 1175, column: 10, scope: !1509)
!1512 = !DILocation(line: 1175, column: 15, scope: !1509)
!1513 = !DILocation(line: 1175, column: 22, scope: !1509)
!1514 = !DILocation(line: 1175, column: 25, scope: !1509)
!1515 = !DILocation(line: 1175, column: 30, scope: !1509)
!1516 = !DILocation(line: 1175, column: 20, scope: !1509)
!1517 = !DILocation(line: 1175, column: 7, scope: !1510)
!1518 = !DILocation(line: 1176, column: 4, scope: !1509)
!1519 = !DILocation(line: 1178, column: 17, scope: !1510)
!1520 = !DILocation(line: 1178, column: 20, scope: !1510)
!1521 = !DILocation(line: 1178, column: 25, scope: !1510)
!1522 = !DILocation(line: 1178, column: 3, scope: !1510)
!1523 = !DILocation(line: 1178, column: 6, scope: !1510)
!1524 = !DILocation(line: 1178, column: 11, scope: !1510)
!1525 = !DILocation(line: 1178, column: 15, scope: !1510)
!1526 = !DILocation(line: 1180, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1510, file: !8, line: 1180, column: 7)
!1528 = !DILocation(line: 1180, column: 7, scope: !1510)
!1529 = !DILocation(line: 1181, column: 8, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !8, line: 1181, column: 8)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !8, line: 1180, column: 38)
!1532 = !DILocation(line: 1181, column: 11, scope: !1530)
!1533 = !DILocation(line: 1181, column: 16, scope: !1530)
!1534 = !DILocation(line: 1181, column: 28, scope: !1530)
!1535 = !DILocation(line: 1181, column: 31, scope: !1530)
!1536 = !DILocation(line: 1181, column: 36, scope: !1530)
!1537 = !DILocation(line: 1181, column: 26, scope: !1530)
!1538 = !DILocation(line: 1181, column: 8, scope: !1531)
!1539 = !DILocation(line: 1182, column: 25, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1530, file: !8, line: 1181, column: 42)
!1541 = !DILocation(line: 1182, column: 28, scope: !1540)
!1542 = !DILocation(line: 1182, column: 33, scope: !1540)
!1543 = !DILocation(line: 1182, column: 5, scope: !1540)
!1544 = !DILocation(line: 1182, column: 8, scope: !1540)
!1545 = !DILocation(line: 1182, column: 13, scope: !1540)
!1546 = !DILocation(line: 1182, column: 23, scope: !1540)
!1547 = !DILocation(line: 1183, column: 11, scope: !1540)
!1548 = !DILocation(line: 1183, column: 14, scope: !1540)
!1549 = !DILocation(line: 1183, column: 19, scope: !1540)
!1550 = !DILocation(line: 1183, column: 5, scope: !1540)
!1551 = !DILocation(line: 1184, column: 27, scope: !1540)
!1552 = !DILocation(line: 1184, column: 30, scope: !1540)
!1553 = !DILocation(line: 1184, column: 35, scope: !1540)
!1554 = !DILocation(line: 1184, column: 19, scope: !1540)
!1555 = !DILocation(line: 1184, column: 5, scope: !1540)
!1556 = !DILocation(line: 1184, column: 8, scope: !1540)
!1557 = !DILocation(line: 1184, column: 13, scope: !1540)
!1558 = !DILocation(line: 1184, column: 17, scope: !1540)
!1559 = !DILocation(line: 1185, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1540, file: !8, line: 1185, column: 9)
!1561 = !DILocation(line: 1185, column: 12, scope: !1560)
!1562 = !DILocation(line: 1185, column: 17, scope: !1560)
!1563 = !DILocation(line: 1185, column: 21, scope: !1560)
!1564 = !DILocation(line: 1185, column: 9, scope: !1540)
!1565 = !DILocation(line: 1186, column: 6, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1560, file: !8, line: 1185, column: 30)
!1567 = !DILocation(line: 1186, column: 9, scope: !1566)
!1568 = !DILocation(line: 1186, column: 14, scope: !1566)
!1569 = !DILocation(line: 1186, column: 24, scope: !1566)
!1570 = !DILocation(line: 1187, column: 6, scope: !1566)
!1571 = !DILocation(line: 1189, column: 4, scope: !1540)
!1572 = !DILocation(line: 1190, column: 3, scope: !1531)
!1573 = !DILocation(line: 1191, column: 2, scope: !1510)
!1574 = !DILocation(line: 1193, column: 2, scope: !1478)
!1575 = !DILocation(line: 1193, column: 5, scope: !1478)
!1576 = !DILocation(line: 1193, column: 11, scope: !1478)
!1577 = !DILocation(line: 1193, column: 20, scope: !1478)
!1578 = !DILocation(line: 1194, column: 2, scope: !1478)
!1579 = !DILocation(line: 1194, column: 5, scope: !1478)
!1580 = !DILocation(line: 1194, column: 11, scope: !1478)
!1581 = !DILocation(line: 1194, column: 27, scope: !1478)
!1582 = !DILocation(line: 1196, column: 2, scope: !1478)
!1583 = !DILocation(line: 1196, column: 5, scope: !1478)
!1584 = !DILocation(line: 1196, column: 10, scope: !1478)
!1585 = !DILocation(line: 1196, column: 15, scope: !1478)
!1586 = !DILocation(line: 1198, column: 2, scope: !1478)
!1587 = !DILocation(line: 1199, column: 1, scope: !1478)
!1588 = !DISubprogram(name: "vfree", scope: !1470, file: !1470, line: 161, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1589 = distinct !DISubprogram(name: "xz_dec_lzma2_end", scope: !8, file: !8, line: 1201, type: !593, scopeLine: 1202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1590)
!1590 = !{!1591}
!1591 = !DILocalVariable(name: "s", arg: 1, scope: !1589, file: !8, line: 1201, type: !99)
!1592 = !DILocation(line: 1201, column: 54, scope: !1589)
!1593 = !DILocation(line: 1203, column: 6, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !8, line: 1203, column: 6)
!1595 = !DILocation(line: 1203, column: 6, scope: !1589)
!1596 = !DILocation(line: 1204, column: 9, scope: !1594)
!1597 = !DILocation(line: 1204, column: 12, scope: !1594)
!1598 = !DILocation(line: 1204, column: 17, scope: !1594)
!1599 = !DILocation(line: 1204, column: 3, scope: !1594)
!1600 = !DILocation(line: 1206, column: 8, scope: !1589)
!1601 = !DILocation(line: 1206, column: 2, scope: !1589)
!1602 = !DILocation(line: 1207, column: 1, scope: !1589)
!1603 = distinct !DISubprogram(name: "lzma_main", scope: !8, file: !8, line: 754, type: !1604, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!135, !99}
!1606 = !{!1607, !1608}
!1607 = !DILocalVariable(name: "s", arg: 1, scope: !1603, file: !8, line: 754, type: !99)
!1608 = !DILocalVariable(name: "pos_state", scope: !1603, file: !8, line: 756, type: !69)
!1609 = !DILocation(line: 754, column: 44, scope: !1603)
!1610 = !DILocation(line: 756, column: 2, scope: !1603)
!1611 = !DILocation(line: 756, column: 11, scope: !1603)
!1612 = !DILocation(line: 762, column: 22, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1603, file: !8, line: 762, column: 6)
!1614 = !DILocation(line: 762, column: 25, scope: !1613)
!1615 = !DILocation(line: 762, column: 6, scope: !1613)
!1616 = !DILocation(line: 762, column: 31, scope: !1613)
!1617 = !DILocation(line: 762, column: 34, scope: !1613)
!1618 = !DILocation(line: 762, column: 37, scope: !1613)
!1619 = !DILocation(line: 762, column: 42, scope: !1613)
!1620 = !DILocation(line: 762, column: 46, scope: !1613)
!1621 = !DILocation(line: 762, column: 6, scope: !1603)
!1622 = !DILocation(line: 763, column: 16, scope: !1613)
!1623 = !DILocation(line: 763, column: 19, scope: !1613)
!1624 = !DILocation(line: 763, column: 26, scope: !1613)
!1625 = !DILocation(line: 763, column: 29, scope: !1613)
!1626 = !DILocation(line: 763, column: 34, scope: !1613)
!1627 = !DILocation(line: 763, column: 39, scope: !1613)
!1628 = !DILocation(line: 763, column: 42, scope: !1613)
!1629 = !DILocation(line: 763, column: 47, scope: !1613)
!1630 = !DILocation(line: 763, column: 3, scope: !1613)
!1631 = !DILocation(line: 769, column: 2, scope: !1603)
!1632 = !DILocation(line: 769, column: 25, scope: !1603)
!1633 = !DILocation(line: 769, column: 28, scope: !1603)
!1634 = !DILocation(line: 769, column: 9, scope: !1603)
!1635 = !DILocation(line: 769, column: 34, scope: !1603)
!1636 = !DILocation(line: 769, column: 57, scope: !1603)
!1637 = !DILocation(line: 769, column: 60, scope: !1603)
!1638 = !DILocation(line: 769, column: 38, scope: !1603)
!1639 = !DILocation(line: 769, column: 37, scope: !1603)
!1640 = !DILocation(line: 0, scope: !1603)
!1641 = !DILocation(line: 770, column: 15, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1603, file: !8, line: 769, column: 65)
!1643 = !DILocation(line: 770, column: 18, scope: !1642)
!1644 = !DILocation(line: 770, column: 23, scope: !1642)
!1645 = !DILocation(line: 770, column: 29, scope: !1642)
!1646 = !DILocation(line: 770, column: 32, scope: !1642)
!1647 = !DILocation(line: 770, column: 37, scope: !1642)
!1648 = !DILocation(line: 770, column: 27, scope: !1642)
!1649 = !DILocation(line: 770, column: 13, scope: !1642)
!1650 = !DILocation(line: 772, column: 16, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1642, file: !8, line: 772, column: 7)
!1652 = !DILocation(line: 772, column: 19, scope: !1651)
!1653 = !DILocation(line: 772, column: 24, scope: !1651)
!1654 = !DILocation(line: 772, column: 27, scope: !1651)
!1655 = !DILocation(line: 772, column: 32, scope: !1651)
!1656 = !DILocation(line: 773, column: 5, scope: !1651)
!1657 = !DILocation(line: 773, column: 8, scope: !1651)
!1658 = !DILocation(line: 773, column: 13, scope: !1651)
!1659 = !DILocation(line: 773, column: 20, scope: !1651)
!1660 = !DILocation(line: 772, column: 8, scope: !1651)
!1661 = !DILocation(line: 772, column: 7, scope: !1642)
!1662 = !DILocation(line: 774, column: 17, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1651, file: !8, line: 773, column: 33)
!1664 = !DILocation(line: 774, column: 4, scope: !1663)
!1665 = !DILocation(line: 775, column: 3, scope: !1663)
!1666 = !DILocation(line: 776, column: 16, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !8, line: 776, column: 8)
!1668 = distinct !DILexicalBlock(scope: !1651, file: !8, line: 775, column: 10)
!1669 = !DILocation(line: 776, column: 19, scope: !1667)
!1670 = !DILocation(line: 776, column: 24, scope: !1667)
!1671 = !DILocation(line: 776, column: 27, scope: !1667)
!1672 = !DILocation(line: 776, column: 32, scope: !1667)
!1673 = !DILocation(line: 776, column: 39, scope: !1667)
!1674 = !DILocation(line: 776, column: 42, scope: !1667)
!1675 = !DILocation(line: 776, column: 47, scope: !1667)
!1676 = !DILocation(line: 776, column: 8, scope: !1667)
!1677 = !DILocation(line: 776, column: 8, scope: !1668)
!1678 = !DILocation(line: 777, column: 20, scope: !1667)
!1679 = !DILocation(line: 777, column: 23, scope: !1667)
!1680 = !DILocation(line: 777, column: 5, scope: !1667)
!1681 = !DILocation(line: 779, column: 16, scope: !1667)
!1682 = !DILocation(line: 779, column: 19, scope: !1667)
!1683 = !DILocation(line: 779, column: 5, scope: !1667)
!1684 = !DILocation(line: 781, column: 22, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1668, file: !8, line: 781, column: 8)
!1686 = !DILocation(line: 781, column: 25, scope: !1685)
!1687 = !DILocation(line: 781, column: 32, scope: !1685)
!1688 = !DILocation(line: 781, column: 35, scope: !1685)
!1689 = !DILocation(line: 781, column: 40, scope: !1685)
!1690 = !DILocation(line: 781, column: 45, scope: !1685)
!1691 = !DILocation(line: 781, column: 48, scope: !1685)
!1692 = !DILocation(line: 781, column: 53, scope: !1685)
!1693 = !DILocation(line: 781, column: 9, scope: !1685)
!1694 = !DILocation(line: 781, column: 8, scope: !1668)
!1695 = !DILocation(line: 782, column: 5, scope: !1685)
!1696 = distinct !{!1696, !1631, !1697, !545, !546}
!1697 = !DILocation(line: 784, column: 2, scope: !1603)
!1698 = !DILocation(line: 790, column: 16, scope: !1603)
!1699 = !DILocation(line: 790, column: 19, scope: !1603)
!1700 = !DILocation(line: 790, column: 2, scope: !1603)
!1701 = !DILocation(line: 792, column: 2, scope: !1603)
!1702 = !DILocation(line: 793, column: 1, scope: !1603)
!1703 = distinct !DISubprogram(name: "dict_has_space", scope: !8, file: !8, line: 313, type: !1704, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1708)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!135, !1706}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!1708 = !{!1709}
!1709 = !DILocalVariable(name: "dict", arg: 1, scope: !1703, file: !8, line: 313, type: !1706)
!1710 = !DILocation(line: 313, column: 60, scope: !1703)
!1711 = !DILocation(line: 315, column: 9, scope: !1703)
!1712 = !DILocation(line: 315, column: 15, scope: !1703)
!1713 = !DILocation(line: 315, column: 21, scope: !1703)
!1714 = !DILocation(line: 315, column: 27, scope: !1703)
!1715 = !DILocation(line: 315, column: 19, scope: !1703)
!1716 = !DILocation(line: 315, column: 2, scope: !1703)
!1717 = distinct !DISubprogram(name: "dict_repeat", scope: !8, file: !8, line: 350, type: !1718, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!135, !552, !1227, !69}
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1728}
!1721 = !DILocalVariable(name: "dict", arg: 1, scope: !1717, file: !8, line: 350, type: !552)
!1722 = !DILocalVariable(name: "len", arg: 2, scope: !1717, file: !8, line: 350, type: !1227)
!1723 = !DILocalVariable(name: "dist", arg: 3, scope: !1717, file: !8, line: 350, type: !69)
!1724 = !DILocalVariable(name: "back", scope: !1717, file: !8, line: 352, type: !75)
!1725 = !DILocalVariable(name: "left", scope: !1717, file: !8, line: 353, type: !69)
!1726 = !DILocalVariable(name: "__UNIQUE_ID___x118", scope: !1727, file: !8, line: 358, type: !75)
!1727 = distinct !DILexicalBlock(scope: !1717, file: !8, line: 358, column: 9)
!1728 = !DILocalVariable(name: "__UNIQUE_ID___y119", scope: !1727, file: !8, line: 358, type: !75)
!1729 = !DILocation(line: 350, column: 44, scope: !1717)
!1730 = !DILocation(line: 350, column: 60, scope: !1717)
!1731 = !DILocation(line: 350, column: 74, scope: !1717)
!1732 = !DILocation(line: 352, column: 2, scope: !1717)
!1733 = !DILocation(line: 352, column: 9, scope: !1717)
!1734 = !DILocation(line: 353, column: 2, scope: !1717)
!1735 = !DILocation(line: 353, column: 11, scope: !1717)
!1736 = !DILocation(line: 355, column: 6, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1717, file: !8, line: 355, column: 6)
!1738 = !DILocation(line: 355, column: 14, scope: !1737)
!1739 = !DILocation(line: 355, column: 20, scope: !1737)
!1740 = !DILocation(line: 355, column: 11, scope: !1737)
!1741 = !DILocation(line: 355, column: 25, scope: !1737)
!1742 = !DILocation(line: 355, column: 28, scope: !1737)
!1743 = !DILocation(line: 355, column: 36, scope: !1737)
!1744 = !DILocation(line: 355, column: 42, scope: !1737)
!1745 = !DILocation(line: 355, column: 33, scope: !1737)
!1746 = !DILocation(line: 355, column: 6, scope: !1717)
!1747 = !DILocation(line: 356, column: 3, scope: !1737)
!1748 = !DILocation(line: 358, column: 9, scope: !1727)
!1749 = !DILocation(line: 358, column: 9, scope: !1717)
!1750 = !DILocation(line: 358, column: 7, scope: !1717)
!1751 = !DILocation(line: 359, column: 10, scope: !1717)
!1752 = !DILocation(line: 359, column: 3, scope: !1717)
!1753 = !DILocation(line: 359, column: 7, scope: !1717)
!1754 = !DILocation(line: 361, column: 9, scope: !1717)
!1755 = !DILocation(line: 361, column: 15, scope: !1717)
!1756 = !DILocation(line: 361, column: 21, scope: !1717)
!1757 = !DILocation(line: 361, column: 19, scope: !1717)
!1758 = !DILocation(line: 361, column: 26, scope: !1717)
!1759 = !DILocation(line: 361, column: 7, scope: !1717)
!1760 = !DILocation(line: 362, column: 6, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1717, file: !8, line: 362, column: 6)
!1762 = !DILocation(line: 362, column: 14, scope: !1761)
!1763 = !DILocation(line: 362, column: 20, scope: !1761)
!1764 = !DILocation(line: 362, column: 11, scope: !1761)
!1765 = !DILocation(line: 362, column: 6, scope: !1717)
!1766 = !DILocation(line: 363, column: 11, scope: !1761)
!1767 = !DILocation(line: 363, column: 17, scope: !1761)
!1768 = !DILocation(line: 363, column: 8, scope: !1761)
!1769 = !DILocation(line: 363, column: 3, scope: !1761)
!1770 = !DILocation(line: 365, column: 2, scope: !1717)
!1771 = !DILocation(line: 366, column: 28, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1717, file: !8, line: 365, column: 5)
!1773 = !DILocation(line: 366, column: 34, scope: !1772)
!1774 = !DILocation(line: 366, column: 42, scope: !1772)
!1775 = !DILocation(line: 366, column: 3, scope: !1772)
!1776 = !DILocation(line: 366, column: 9, scope: !1772)
!1777 = !DILocation(line: 366, column: 13, scope: !1772)
!1778 = !DILocation(line: 366, column: 19, scope: !1772)
!1779 = !DILocation(line: 366, column: 22, scope: !1772)
!1780 = !DILocation(line: 366, column: 26, scope: !1772)
!1781 = !DILocation(line: 367, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1772, file: !8, line: 367, column: 7)
!1783 = !DILocation(line: 367, column: 15, scope: !1782)
!1784 = !DILocation(line: 367, column: 21, scope: !1782)
!1785 = !DILocation(line: 367, column: 12, scope: !1782)
!1786 = !DILocation(line: 367, column: 7, scope: !1772)
!1787 = !DILocation(line: 368, column: 9, scope: !1782)
!1788 = !DILocation(line: 368, column: 4, scope: !1782)
!1789 = !DILocation(line: 369, column: 2, scope: !1772)
!1790 = !DILocation(line: 369, column: 11, scope: !1717)
!1791 = !DILocation(line: 369, column: 18, scope: !1717)
!1792 = distinct !{!1792, !1770, !1793, !545, !546}
!1793 = !DILocation(line: 369, column: 21, scope: !1717)
!1794 = !DILocation(line: 371, column: 6, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1717, file: !8, line: 371, column: 6)
!1796 = !DILocation(line: 371, column: 12, scope: !1795)
!1797 = !DILocation(line: 371, column: 19, scope: !1795)
!1798 = !DILocation(line: 371, column: 25, scope: !1795)
!1799 = !DILocation(line: 371, column: 17, scope: !1795)
!1800 = !DILocation(line: 371, column: 6, scope: !1717)
!1801 = !DILocation(line: 372, column: 16, scope: !1795)
!1802 = !DILocation(line: 372, column: 22, scope: !1795)
!1803 = !DILocation(line: 372, column: 3, scope: !1795)
!1804 = !DILocation(line: 372, column: 9, scope: !1795)
!1805 = !DILocation(line: 372, column: 14, scope: !1795)
!1806 = !DILocation(line: 374, column: 2, scope: !1717)
!1807 = !DILocation(line: 375, column: 1, scope: !1717)
!1808 = distinct !DISubprogram(name: "rc_limit_exceeded", scope: !8, file: !8, line: 495, type: !1197, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1809)
!1809 = !{!1810}
!1810 = !DILocalVariable(name: "rc", arg: 1, scope: !1808, file: !8, line: 495, type: !1199)
!1811 = !DILocation(line: 495, column: 59, scope: !1808)
!1812 = !DILocation(line: 497, column: 9, scope: !1808)
!1813 = !DILocation(line: 497, column: 13, scope: !1808)
!1814 = !DILocation(line: 497, column: 22, scope: !1808)
!1815 = !DILocation(line: 497, column: 26, scope: !1808)
!1816 = !DILocation(line: 497, column: 20, scope: !1808)
!1817 = !DILocation(line: 497, column: 2, scope: !1808)
!1818 = distinct !DISubprogram(name: "rc_bit", scope: !8, file: !8, line: 529, type: !1819, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1822)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!1821, !735, !598}
!1821 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1822 = !{!1823, !1824, !1825, !1826}
!1823 = !DILocalVariable(name: "rc", arg: 1, scope: !1818, file: !8, line: 529, type: !735)
!1824 = !DILocalVariable(name: "prob", arg: 2, scope: !1818, file: !8, line: 529, type: !598)
!1825 = !DILocalVariable(name: "bound", scope: !1818, file: !8, line: 531, type: !69)
!1826 = !DILocalVariable(name: "bit", scope: !1818, file: !8, line: 532, type: !1821)
!1827 = !DILocation(line: 529, column: 50, scope: !1818)
!1828 = !DILocation(line: 529, column: 64, scope: !1818)
!1829 = !DILocation(line: 531, column: 2, scope: !1818)
!1830 = !DILocation(line: 531, column: 11, scope: !1818)
!1831 = !DILocation(line: 532, column: 2, scope: !1818)
!1832 = !DILocation(line: 532, column: 6, scope: !1818)
!1833 = !DILocation(line: 534, column: 15, scope: !1818)
!1834 = !DILocation(line: 534, column: 2, scope: !1818)
!1835 = !DILocation(line: 535, column: 11, scope: !1818)
!1836 = !DILocation(line: 535, column: 15, scope: !1818)
!1837 = !DILocation(line: 535, column: 21, scope: !1818)
!1838 = !DILocation(line: 535, column: 52, scope: !1818)
!1839 = !DILocation(line: 535, column: 51, scope: !1818)
!1840 = !DILocation(line: 535, column: 49, scope: !1818)
!1841 = !DILocation(line: 535, column: 8, scope: !1818)
!1842 = !DILocation(line: 536, column: 6, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1818, file: !8, line: 536, column: 6)
!1844 = !DILocation(line: 536, column: 10, scope: !1843)
!1845 = !DILocation(line: 536, column: 17, scope: !1843)
!1846 = !DILocation(line: 536, column: 15, scope: !1843)
!1847 = !DILocation(line: 536, column: 6, scope: !1818)
!1848 = !DILocation(line: 537, column: 15, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1843, file: !8, line: 536, column: 24)
!1850 = !DILocation(line: 537, column: 3, scope: !1849)
!1851 = !DILocation(line: 537, column: 7, scope: !1849)
!1852 = !DILocation(line: 537, column: 13, scope: !1849)
!1853 = !DILocation(line: 538, column: 35, scope: !1849)
!1854 = !DILocation(line: 538, column: 34, scope: !1849)
!1855 = !DILocation(line: 538, column: 32, scope: !1849)
!1856 = !DILocation(line: 538, column: 41, scope: !1849)
!1857 = !DILocation(line: 538, column: 4, scope: !1849)
!1858 = !DILocation(line: 538, column: 9, scope: !1849)
!1859 = !DILocation(line: 539, column: 7, scope: !1849)
!1860 = !DILocation(line: 540, column: 2, scope: !1849)
!1861 = !DILocation(line: 541, column: 16, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1843, file: !8, line: 540, column: 9)
!1863 = !DILocation(line: 541, column: 3, scope: !1862)
!1864 = !DILocation(line: 541, column: 7, scope: !1862)
!1865 = !DILocation(line: 541, column: 13, scope: !1862)
!1866 = !DILocation(line: 542, column: 15, scope: !1862)
!1867 = !DILocation(line: 542, column: 3, scope: !1862)
!1868 = !DILocation(line: 542, column: 7, scope: !1862)
!1869 = !DILocation(line: 542, column: 12, scope: !1862)
!1870 = !DILocation(line: 543, column: 13, scope: !1862)
!1871 = !DILocation(line: 543, column: 12, scope: !1862)
!1872 = !DILocation(line: 543, column: 18, scope: !1862)
!1873 = !DILocation(line: 543, column: 4, scope: !1862)
!1874 = !DILocation(line: 543, column: 9, scope: !1862)
!1875 = !DILocation(line: 544, column: 7, scope: !1862)
!1876 = !DILocation(line: 547, column: 9, scope: !1818)
!1877 = !DILocation(line: 548, column: 1, scope: !1818)
!1878 = !DILocation(line: 547, column: 2, scope: !1818)
!1879 = distinct !DISubprogram(name: "lzma_literal", scope: !8, file: !8, line: 613, type: !593, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1880)
!1880 = !{!1881, !1882, !1883, !1884, !1885, !1886, !1887}
!1881 = !DILocalVariable(name: "s", arg: 1, scope: !1879, file: !8, line: 613, type: !99)
!1882 = !DILocalVariable(name: "probs", scope: !1879, file: !8, line: 615, type: !598)
!1883 = !DILocalVariable(name: "symbol", scope: !1879, file: !8, line: 616, type: !69)
!1884 = !DILocalVariable(name: "match_byte", scope: !1879, file: !8, line: 617, type: !69)
!1885 = !DILocalVariable(name: "match_bit", scope: !1879, file: !8, line: 618, type: !69)
!1886 = !DILocalVariable(name: "offset", scope: !1879, file: !8, line: 619, type: !69)
!1887 = !DILocalVariable(name: "i", scope: !1879, file: !8, line: 620, type: !69)
!1888 = !DILocation(line: 613, column: 47, scope: !1879)
!1889 = !DILocation(line: 615, column: 2, scope: !1879)
!1890 = !DILocation(line: 615, column: 12, scope: !1879)
!1891 = !DILocation(line: 616, column: 2, scope: !1879)
!1892 = !DILocation(line: 616, column: 11, scope: !1879)
!1893 = !DILocation(line: 617, column: 2, scope: !1879)
!1894 = !DILocation(line: 617, column: 11, scope: !1879)
!1895 = !DILocation(line: 618, column: 2, scope: !1879)
!1896 = !DILocation(line: 618, column: 11, scope: !1879)
!1897 = !DILocation(line: 619, column: 2, scope: !1879)
!1898 = !DILocation(line: 619, column: 11, scope: !1879)
!1899 = !DILocation(line: 620, column: 2, scope: !1879)
!1900 = !DILocation(line: 620, column: 11, scope: !1879)
!1901 = !DILocation(line: 622, column: 29, scope: !1879)
!1902 = !DILocation(line: 622, column: 10, scope: !1879)
!1903 = !DILocation(line: 622, column: 8, scope: !1879)
!1904 = !DILocation(line: 624, column: 28, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1879, file: !8, line: 624, column: 6)
!1906 = !DILocation(line: 624, column: 31, scope: !1905)
!1907 = !DILocation(line: 624, column: 36, scope: !1905)
!1908 = !DILocation(line: 624, column: 6, scope: !1905)
!1909 = !DILocation(line: 624, column: 6, scope: !1879)
!1910 = !DILocation(line: 625, column: 24, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1905, file: !8, line: 624, column: 44)
!1912 = !DILocation(line: 625, column: 27, scope: !1911)
!1913 = !DILocation(line: 625, column: 31, scope: !1911)
!1914 = !DILocation(line: 625, column: 12, scope: !1911)
!1915 = !DILocation(line: 625, column: 10, scope: !1911)
!1916 = !DILocation(line: 626, column: 2, scope: !1911)
!1917 = !DILocation(line: 627, column: 10, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1905, file: !8, line: 626, column: 9)
!1919 = !DILocation(line: 628, column: 26, scope: !1918)
!1920 = !DILocation(line: 628, column: 29, scope: !1918)
!1921 = !DILocation(line: 628, column: 35, scope: !1918)
!1922 = !DILocation(line: 628, column: 38, scope: !1918)
!1923 = !DILocation(line: 628, column: 43, scope: !1918)
!1924 = !DILocation(line: 628, column: 16, scope: !1918)
!1925 = !DILocation(line: 628, column: 49, scope: !1918)
!1926 = !DILocation(line: 628, column: 14, scope: !1918)
!1927 = !DILocation(line: 629, column: 10, scope: !1918)
!1928 = !DILocation(line: 631, column: 3, scope: !1918)
!1929 = !DILocation(line: 632, column: 16, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1918, file: !8, line: 631, column: 6)
!1931 = !DILocation(line: 632, column: 29, scope: !1930)
!1932 = !DILocation(line: 632, column: 27, scope: !1930)
!1933 = !DILocation(line: 632, column: 14, scope: !1930)
!1934 = !DILocation(line: 633, column: 15, scope: !1930)
!1935 = !DILocation(line: 634, column: 8, scope: !1930)
!1936 = !DILocation(line: 634, column: 17, scope: !1930)
!1937 = !DILocation(line: 634, column: 15, scope: !1930)
!1938 = !DILocation(line: 634, column: 29, scope: !1930)
!1939 = !DILocation(line: 634, column: 27, scope: !1930)
!1940 = !DILocation(line: 634, column: 6, scope: !1930)
!1941 = !DILocation(line: 636, column: 16, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1930, file: !8, line: 636, column: 8)
!1943 = !DILocation(line: 636, column: 19, scope: !1942)
!1944 = !DILocation(line: 636, column: 24, scope: !1942)
!1945 = !DILocation(line: 636, column: 30, scope: !1942)
!1946 = !DILocation(line: 636, column: 8, scope: !1942)
!1947 = !DILocation(line: 636, column: 8, scope: !1930)
!1948 = !DILocation(line: 637, column: 15, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1942, file: !8, line: 636, column: 35)
!1950 = !DILocation(line: 637, column: 22, scope: !1949)
!1951 = !DILocation(line: 637, column: 28, scope: !1949)
!1952 = !DILocation(line: 637, column: 12, scope: !1949)
!1953 = !DILocation(line: 638, column: 15, scope: !1949)
!1954 = !DILocation(line: 638, column: 12, scope: !1949)
!1955 = !DILocation(line: 639, column: 4, scope: !1949)
!1956 = !DILocation(line: 640, column: 12, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1942, file: !8, line: 639, column: 11)
!1958 = !DILocation(line: 641, column: 16, scope: !1957)
!1959 = !DILocation(line: 641, column: 15, scope: !1957)
!1960 = !DILocation(line: 641, column: 12, scope: !1957)
!1961 = !DILocation(line: 643, column: 3, scope: !1930)
!1962 = !DILocation(line: 643, column: 12, scope: !1918)
!1963 = !DILocation(line: 643, column: 19, scope: !1918)
!1964 = distinct !{!1964, !1928, !1965, !545, !546}
!1965 = !DILocation(line: 643, column: 26, scope: !1918)
!1966 = !DILocation(line: 646, column: 12, scope: !1879)
!1967 = !DILocation(line: 646, column: 15, scope: !1879)
!1968 = !DILocation(line: 646, column: 30, scope: !1879)
!1969 = !DILocation(line: 646, column: 21, scope: !1879)
!1970 = !DILocation(line: 646, column: 2, scope: !1879)
!1971 = !DILocation(line: 647, column: 22, scope: !1879)
!1972 = !DILocation(line: 647, column: 25, scope: !1879)
!1973 = !DILocation(line: 647, column: 30, scope: !1879)
!1974 = !DILocation(line: 647, column: 2, scope: !1879)
!1975 = !DILocation(line: 648, column: 1, scope: !1879)
!1976 = distinct !DISubprogram(name: "lzma_rep_match", scope: !8, file: !8, line: 720, type: !1977, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1979)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !99, !69}
!1979 = !{!1980, !1981, !1982}
!1980 = !DILocalVariable(name: "s", arg: 1, scope: !1976, file: !8, line: 720, type: !99)
!1981 = !DILocalVariable(name: "pos_state", arg: 2, scope: !1976, file: !8, line: 720, type: !69)
!1982 = !DILocalVariable(name: "tmp", scope: !1976, file: !8, line: 722, type: !69)
!1983 = !DILocation(line: 720, column: 49, scope: !1976)
!1984 = !DILocation(line: 720, column: 61, scope: !1976)
!1985 = !DILocation(line: 722, column: 2, scope: !1976)
!1986 = !DILocation(line: 722, column: 11, scope: !1976)
!1987 = !DILocation(line: 724, column: 15, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1976, file: !8, line: 724, column: 6)
!1989 = !DILocation(line: 724, column: 18, scope: !1988)
!1990 = !DILocation(line: 724, column: 23, scope: !1988)
!1991 = !DILocation(line: 724, column: 26, scope: !1988)
!1992 = !DILocation(line: 724, column: 31, scope: !1988)
!1993 = !DILocation(line: 724, column: 39, scope: !1988)
!1994 = !DILocation(line: 724, column: 42, scope: !1988)
!1995 = !DILocation(line: 724, column: 47, scope: !1988)
!1996 = !DILocation(line: 724, column: 7, scope: !1988)
!1997 = !DILocation(line: 724, column: 6, scope: !1976)
!1998 = !DILocation(line: 725, column: 16, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !8, line: 725, column: 7)
!2000 = distinct !DILexicalBlock(scope: !1988, file: !8, line: 724, column: 56)
!2001 = !DILocation(line: 725, column: 19, scope: !1999)
!2002 = !DILocation(line: 725, column: 24, scope: !1999)
!2003 = !DILocation(line: 725, column: 27, scope: !1999)
!2004 = !DILocation(line: 725, column: 32, scope: !1999)
!2005 = !DILocation(line: 726, column: 5, scope: !1999)
!2006 = !DILocation(line: 726, column: 8, scope: !1999)
!2007 = !DILocation(line: 726, column: 13, scope: !1999)
!2008 = !DILocation(line: 726, column: 20, scope: !1999)
!2009 = !DILocation(line: 725, column: 8, scope: !1999)
!2010 = !DILocation(line: 725, column: 7, scope: !2000)
!2011 = !DILocation(line: 727, column: 26, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1999, file: !8, line: 726, column: 33)
!2013 = !DILocation(line: 727, column: 29, scope: !2012)
!2014 = !DILocation(line: 727, column: 34, scope: !2012)
!2015 = !DILocation(line: 727, column: 4, scope: !2012)
!2016 = !DILocation(line: 728, column: 4, scope: !2012)
!2017 = !DILocation(line: 728, column: 7, scope: !2012)
!2018 = !DILocation(line: 728, column: 12, scope: !2012)
!2019 = !DILocation(line: 728, column: 16, scope: !2012)
!2020 = !DILocation(line: 729, column: 4, scope: !2012)
!2021 = !DILocation(line: 731, column: 2, scope: !2000)
!2022 = !DILocation(line: 732, column: 16, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !8, line: 732, column: 7)
!2024 = distinct !DILexicalBlock(scope: !1988, file: !8, line: 731, column: 9)
!2025 = !DILocation(line: 732, column: 19, scope: !2023)
!2026 = !DILocation(line: 732, column: 24, scope: !2023)
!2027 = !DILocation(line: 732, column: 27, scope: !2023)
!2028 = !DILocation(line: 732, column: 32, scope: !2023)
!2029 = !DILocation(line: 732, column: 40, scope: !2023)
!2030 = !DILocation(line: 732, column: 43, scope: !2023)
!2031 = !DILocation(line: 732, column: 48, scope: !2023)
!2032 = !DILocation(line: 732, column: 8, scope: !2023)
!2033 = !DILocation(line: 732, column: 7, scope: !2024)
!2034 = !DILocation(line: 733, column: 10, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2023, file: !8, line: 732, column: 57)
!2036 = !DILocation(line: 733, column: 13, scope: !2035)
!2037 = !DILocation(line: 733, column: 18, scope: !2035)
!2038 = !DILocation(line: 733, column: 8, scope: !2035)
!2039 = !DILocation(line: 734, column: 3, scope: !2035)
!2040 = !DILocation(line: 735, column: 17, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !8, line: 735, column: 8)
!2042 = distinct !DILexicalBlock(scope: !2023, file: !8, line: 734, column: 10)
!2043 = !DILocation(line: 735, column: 20, scope: !2041)
!2044 = !DILocation(line: 735, column: 25, scope: !2041)
!2045 = !DILocation(line: 735, column: 28, scope: !2041)
!2046 = !DILocation(line: 735, column: 33, scope: !2041)
!2047 = !DILocation(line: 735, column: 41, scope: !2041)
!2048 = !DILocation(line: 735, column: 44, scope: !2041)
!2049 = !DILocation(line: 735, column: 49, scope: !2041)
!2050 = !DILocation(line: 735, column: 9, scope: !2041)
!2051 = !DILocation(line: 735, column: 8, scope: !2042)
!2052 = !DILocation(line: 736, column: 11, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2041, file: !8, line: 735, column: 58)
!2054 = !DILocation(line: 736, column: 14, scope: !2053)
!2055 = !DILocation(line: 736, column: 19, scope: !2053)
!2056 = !DILocation(line: 736, column: 9, scope: !2053)
!2057 = !DILocation(line: 737, column: 4, scope: !2053)
!2058 = !DILocation(line: 738, column: 11, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2041, file: !8, line: 737, column: 11)
!2060 = !DILocation(line: 738, column: 14, scope: !2059)
!2061 = !DILocation(line: 738, column: 19, scope: !2059)
!2062 = !DILocation(line: 738, column: 9, scope: !2059)
!2063 = !DILocation(line: 739, column: 20, scope: !2059)
!2064 = !DILocation(line: 739, column: 23, scope: !2059)
!2065 = !DILocation(line: 739, column: 28, scope: !2059)
!2066 = !DILocation(line: 739, column: 5, scope: !2059)
!2067 = !DILocation(line: 739, column: 8, scope: !2059)
!2068 = !DILocation(line: 739, column: 13, scope: !2059)
!2069 = !DILocation(line: 739, column: 18, scope: !2059)
!2070 = !DILocation(line: 742, column: 19, scope: !2042)
!2071 = !DILocation(line: 742, column: 22, scope: !2042)
!2072 = !DILocation(line: 742, column: 27, scope: !2042)
!2073 = !DILocation(line: 742, column: 4, scope: !2042)
!2074 = !DILocation(line: 742, column: 7, scope: !2042)
!2075 = !DILocation(line: 742, column: 12, scope: !2042)
!2076 = !DILocation(line: 742, column: 17, scope: !2042)
!2077 = !DILocation(line: 745, column: 18, scope: !2024)
!2078 = !DILocation(line: 745, column: 21, scope: !2024)
!2079 = !DILocation(line: 745, column: 26, scope: !2024)
!2080 = !DILocation(line: 745, column: 3, scope: !2024)
!2081 = !DILocation(line: 745, column: 6, scope: !2024)
!2082 = !DILocation(line: 745, column: 11, scope: !2024)
!2083 = !DILocation(line: 745, column: 16, scope: !2024)
!2084 = !DILocation(line: 746, column: 18, scope: !2024)
!2085 = !DILocation(line: 746, column: 3, scope: !2024)
!2086 = !DILocation(line: 746, column: 6, scope: !2024)
!2087 = !DILocation(line: 746, column: 11, scope: !2024)
!2088 = !DILocation(line: 746, column: 16, scope: !2024)
!2089 = !DILocation(line: 749, column: 23, scope: !1976)
!2090 = !DILocation(line: 749, column: 26, scope: !1976)
!2091 = !DILocation(line: 749, column: 31, scope: !1976)
!2092 = !DILocation(line: 749, column: 2, scope: !1976)
!2093 = !DILocation(line: 750, column: 11, scope: !1976)
!2094 = !DILocation(line: 750, column: 15, scope: !1976)
!2095 = !DILocation(line: 750, column: 18, scope: !1976)
!2096 = !DILocation(line: 750, column: 23, scope: !1976)
!2097 = !DILocation(line: 750, column: 36, scope: !1976)
!2098 = !DILocation(line: 750, column: 2, scope: !1976)
!2099 = !DILocation(line: 751, column: 1, scope: !1976)
!2100 = distinct !DISubprogram(name: "lzma_match", scope: !8, file: !8, line: 678, type: !1977, scopeLine: 679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2101)
!2101 = !{!2102, !2103, !2104, !2105, !2106}
!2102 = !DILocalVariable(name: "s", arg: 1, scope: !2100, file: !8, line: 678, type: !99)
!2103 = !DILocalVariable(name: "pos_state", arg: 2, scope: !2100, file: !8, line: 678, type: !69)
!2104 = !DILocalVariable(name: "probs", scope: !2100, file: !8, line: 680, type: !598)
!2105 = !DILocalVariable(name: "dist_slot", scope: !2100, file: !8, line: 681, type: !69)
!2106 = !DILocalVariable(name: "limit", scope: !2100, file: !8, line: 682, type: !69)
!2107 = !DILocation(line: 678, column: 45, scope: !2100)
!2108 = !DILocation(line: 678, column: 57, scope: !2100)
!2109 = !DILocation(line: 680, column: 2, scope: !2100)
!2110 = !DILocation(line: 680, column: 12, scope: !2100)
!2111 = !DILocation(line: 681, column: 2, scope: !2100)
!2112 = !DILocation(line: 681, column: 11, scope: !2100)
!2113 = !DILocation(line: 682, column: 2, scope: !2100)
!2114 = !DILocation(line: 682, column: 11, scope: !2100)
!2115 = !DILocation(line: 684, column: 20, scope: !2100)
!2116 = !DILocation(line: 684, column: 23, scope: !2100)
!2117 = !DILocation(line: 684, column: 28, scope: !2100)
!2118 = !DILocation(line: 684, column: 2, scope: !2100)
!2119 = !DILocation(line: 686, column: 17, scope: !2100)
!2120 = !DILocation(line: 686, column: 20, scope: !2100)
!2121 = !DILocation(line: 686, column: 25, scope: !2100)
!2122 = !DILocation(line: 686, column: 2, scope: !2100)
!2123 = !DILocation(line: 686, column: 5, scope: !2100)
!2124 = !DILocation(line: 686, column: 10, scope: !2100)
!2125 = !DILocation(line: 686, column: 15, scope: !2100)
!2126 = !DILocation(line: 687, column: 17, scope: !2100)
!2127 = !DILocation(line: 687, column: 20, scope: !2100)
!2128 = !DILocation(line: 687, column: 25, scope: !2100)
!2129 = !DILocation(line: 687, column: 2, scope: !2100)
!2130 = !DILocation(line: 687, column: 5, scope: !2100)
!2131 = !DILocation(line: 687, column: 10, scope: !2100)
!2132 = !DILocation(line: 687, column: 15, scope: !2100)
!2133 = !DILocation(line: 688, column: 17, scope: !2100)
!2134 = !DILocation(line: 688, column: 20, scope: !2100)
!2135 = !DILocation(line: 688, column: 25, scope: !2100)
!2136 = !DILocation(line: 688, column: 2, scope: !2100)
!2137 = !DILocation(line: 688, column: 5, scope: !2100)
!2138 = !DILocation(line: 688, column: 10, scope: !2100)
!2139 = !DILocation(line: 688, column: 15, scope: !2100)
!2140 = !DILocation(line: 690, column: 11, scope: !2100)
!2141 = !DILocation(line: 690, column: 15, scope: !2100)
!2142 = !DILocation(line: 690, column: 18, scope: !2100)
!2143 = !DILocation(line: 690, column: 23, scope: !2100)
!2144 = !DILocation(line: 690, column: 38, scope: !2100)
!2145 = !DILocation(line: 690, column: 2, scope: !2100)
!2146 = !DILocation(line: 692, column: 10, scope: !2100)
!2147 = !DILocation(line: 692, column: 13, scope: !2100)
!2148 = !DILocation(line: 692, column: 18, scope: !2100)
!2149 = !DILocation(line: 692, column: 48, scope: !2100)
!2150 = !DILocation(line: 692, column: 51, scope: !2100)
!2151 = !DILocation(line: 692, column: 56, scope: !2100)
!2152 = !DILocation(line: 692, column: 28, scope: !2100)
!2153 = !DILocation(line: 692, column: 8, scope: !2100)
!2154 = !DILocation(line: 693, column: 26, scope: !2100)
!2155 = !DILocation(line: 693, column: 29, scope: !2100)
!2156 = !DILocation(line: 693, column: 33, scope: !2100)
!2157 = !DILocation(line: 693, column: 14, scope: !2100)
!2158 = !DILocation(line: 693, column: 52, scope: !2100)
!2159 = !DILocation(line: 693, column: 12, scope: !2100)
!2160 = !DILocation(line: 695, column: 6, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2100, file: !8, line: 695, column: 6)
!2162 = !DILocation(line: 695, column: 16, scope: !2161)
!2163 = !DILocation(line: 695, column: 6, scope: !2100)
!2164 = !DILocation(line: 696, column: 18, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2161, file: !8, line: 695, column: 36)
!2166 = !DILocation(line: 696, column: 3, scope: !2165)
!2167 = !DILocation(line: 696, column: 6, scope: !2165)
!2168 = !DILocation(line: 696, column: 11, scope: !2165)
!2169 = !DILocation(line: 696, column: 16, scope: !2165)
!2170 = !DILocation(line: 697, column: 2, scope: !2165)
!2171 = !DILocation(line: 698, column: 12, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2161, file: !8, line: 697, column: 9)
!2173 = !DILocation(line: 698, column: 22, scope: !2172)
!2174 = !DILocation(line: 698, column: 28, scope: !2172)
!2175 = !DILocation(line: 698, column: 9, scope: !2172)
!2176 = !DILocation(line: 699, column: 23, scope: !2172)
!2177 = !DILocation(line: 699, column: 33, scope: !2172)
!2178 = !DILocation(line: 699, column: 20, scope: !2172)
!2179 = !DILocation(line: 699, column: 3, scope: !2172)
!2180 = !DILocation(line: 699, column: 6, scope: !2172)
!2181 = !DILocation(line: 699, column: 11, scope: !2172)
!2182 = !DILocation(line: 699, column: 16, scope: !2172)
!2183 = !DILocation(line: 701, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2172, file: !8, line: 701, column: 7)
!2185 = !DILocation(line: 701, column: 17, scope: !2184)
!2186 = !DILocation(line: 701, column: 7, scope: !2172)
!2187 = !DILocation(line: 702, column: 21, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !8, line: 701, column: 35)
!2189 = !DILocation(line: 702, column: 4, scope: !2188)
!2190 = !DILocation(line: 702, column: 7, scope: !2188)
!2191 = !DILocation(line: 702, column: 12, scope: !2188)
!2192 = !DILocation(line: 702, column: 17, scope: !2188)
!2193 = !DILocation(line: 703, column: 12, scope: !2188)
!2194 = !DILocation(line: 703, column: 15, scope: !2188)
!2195 = !DILocation(line: 703, column: 20, scope: !2188)
!2196 = !DILocation(line: 703, column: 35, scope: !2188)
!2197 = !DILocation(line: 703, column: 38, scope: !2188)
!2198 = !DILocation(line: 703, column: 43, scope: !2188)
!2199 = !DILocation(line: 703, column: 33, scope: !2188)
!2200 = !DILocation(line: 704, column: 8, scope: !2188)
!2201 = !DILocation(line: 704, column: 6, scope: !2188)
!2202 = !DILocation(line: 704, column: 18, scope: !2188)
!2203 = !DILocation(line: 703, column: 10, scope: !2188)
!2204 = !DILocation(line: 705, column: 24, scope: !2188)
!2205 = !DILocation(line: 705, column: 27, scope: !2188)
!2206 = !DILocation(line: 705, column: 31, scope: !2188)
!2207 = !DILocation(line: 706, column: 7, scope: !2188)
!2208 = !DILocation(line: 706, column: 10, scope: !2188)
!2209 = !DILocation(line: 706, column: 15, scope: !2188)
!2210 = !DILocation(line: 706, column: 21, scope: !2188)
!2211 = !DILocation(line: 705, column: 4, scope: !2188)
!2212 = !DILocation(line: 707, column: 3, scope: !2188)
!2213 = !DILocation(line: 708, column: 15, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2184, file: !8, line: 707, column: 10)
!2215 = !DILocation(line: 708, column: 18, scope: !2214)
!2216 = !DILocation(line: 708, column: 23, scope: !2214)
!2217 = !DILocation(line: 708, column: 26, scope: !2214)
!2218 = !DILocation(line: 708, column: 31, scope: !2214)
!2219 = !DILocation(line: 708, column: 37, scope: !2214)
!2220 = !DILocation(line: 708, column: 43, scope: !2214)
!2221 = !DILocation(line: 708, column: 4, scope: !2214)
!2222 = !DILocation(line: 709, column: 4, scope: !2214)
!2223 = !DILocation(line: 709, column: 7, scope: !2214)
!2224 = !DILocation(line: 709, column: 12, scope: !2214)
!2225 = !DILocation(line: 709, column: 17, scope: !2214)
!2226 = !DILocation(line: 710, column: 24, scope: !2214)
!2227 = !DILocation(line: 710, column: 27, scope: !2214)
!2228 = !DILocation(line: 710, column: 31, scope: !2214)
!2229 = !DILocation(line: 710, column: 34, scope: !2214)
!2230 = !DILocation(line: 710, column: 39, scope: !2214)
!2231 = !DILocation(line: 711, column: 7, scope: !2214)
!2232 = !DILocation(line: 711, column: 10, scope: !2214)
!2233 = !DILocation(line: 711, column: 15, scope: !2214)
!2234 = !DILocation(line: 710, column: 4, scope: !2214)
!2235 = !DILocation(line: 714, column: 1, scope: !2100)
!2236 = distinct !DISubprogram(name: "rc_normalize", scope: !8, file: !8, line: 510, type: !1209, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2237)
!2237 = !{!2238}
!2238 = !DILocalVariable(name: "rc", arg: 1, scope: !2236, file: !8, line: 510, type: !735)
!2239 = !DILocation(line: 510, column: 57, scope: !2236)
!2240 = !DILocation(line: 512, column: 6, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2236, file: !8, line: 512, column: 6)
!2242 = !DILocation(line: 512, column: 10, scope: !2241)
!2243 = !DILocation(line: 512, column: 16, scope: !2241)
!2244 = !DILocation(line: 512, column: 6, scope: !2236)
!2245 = !DILocation(line: 513, column: 3, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2241, file: !8, line: 512, column: 32)
!2247 = !DILocation(line: 513, column: 7, scope: !2246)
!2248 = !DILocation(line: 513, column: 13, scope: !2246)
!2249 = !DILocation(line: 514, column: 15, scope: !2246)
!2250 = !DILocation(line: 514, column: 19, scope: !2246)
!2251 = !DILocation(line: 514, column: 24, scope: !2246)
!2252 = !DILocation(line: 514, column: 44, scope: !2246)
!2253 = !DILocation(line: 514, column: 48, scope: !2246)
!2254 = !DILocation(line: 514, column: 51, scope: !2246)
!2255 = !DILocation(line: 514, column: 55, scope: !2246)
!2256 = !DILocation(line: 514, column: 61, scope: !2246)
!2257 = !DILocation(line: 514, column: 42, scope: !2246)
!2258 = !DILocation(line: 514, column: 3, scope: !2246)
!2259 = !DILocation(line: 514, column: 7, scope: !2246)
!2260 = !DILocation(line: 514, column: 12, scope: !2246)
!2261 = !DILocation(line: 515, column: 2, scope: !2246)
!2262 = !DILocation(line: 516, column: 1, scope: !2236)
!2263 = distinct !DISubprogram(name: "lzma_literal_probs", scope: !8, file: !8, line: 604, type: !2264, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!598, !99}
!2266 = !{!2267, !2268, !2269, !2270}
!2267 = !DILocalVariable(name: "s", arg: 1, scope: !2263, file: !8, line: 604, type: !99)
!2268 = !DILocalVariable(name: "prev_byte", scope: !2263, file: !8, line: 606, type: !69)
!2269 = !DILocalVariable(name: "low", scope: !2263, file: !8, line: 607, type: !69)
!2270 = !DILocalVariable(name: "high", scope: !2263, file: !8, line: 608, type: !69)
!2271 = !DILocation(line: 604, column: 58, scope: !2263)
!2272 = !DILocation(line: 606, column: 2, scope: !2263)
!2273 = !DILocation(line: 606, column: 11, scope: !2263)
!2274 = !DILocation(line: 606, column: 33, scope: !2263)
!2275 = !DILocation(line: 606, column: 36, scope: !2263)
!2276 = !DILocation(line: 606, column: 23, scope: !2263)
!2277 = !DILocation(line: 607, column: 2, scope: !2263)
!2278 = !DILocation(line: 607, column: 11, scope: !2263)
!2279 = !DILocation(line: 607, column: 17, scope: !2263)
!2280 = !DILocation(line: 607, column: 35, scope: !2263)
!2281 = !DILocation(line: 607, column: 38, scope: !2263)
!2282 = !DILocation(line: 607, column: 43, scope: !2263)
!2283 = !DILocation(line: 607, column: 33, scope: !2263)
!2284 = !DILocation(line: 607, column: 27, scope: !2263)
!2285 = !DILocation(line: 608, column: 2, scope: !2263)
!2286 = !DILocation(line: 608, column: 11, scope: !2263)
!2287 = !DILocation(line: 608, column: 19, scope: !2263)
!2288 = !DILocation(line: 608, column: 22, scope: !2263)
!2289 = !DILocation(line: 608, column: 27, scope: !2263)
!2290 = !DILocation(line: 608, column: 33, scope: !2263)
!2291 = !DILocation(line: 608, column: 36, scope: !2263)
!2292 = !DILocation(line: 608, column: 41, scope: !2263)
!2293 = !DILocation(line: 608, column: 31, scope: !2263)
!2294 = !DILocation(line: 608, column: 62, scope: !2263)
!2295 = !DILocation(line: 608, column: 65, scope: !2263)
!2296 = !DILocation(line: 608, column: 70, scope: !2263)
!2297 = !DILocation(line: 608, column: 59, scope: !2263)
!2298 = !DILocation(line: 608, column: 18, scope: !2263)
!2299 = !DILocation(line: 609, column: 9, scope: !2263)
!2300 = !DILocation(line: 609, column: 12, scope: !2263)
!2301 = !DILocation(line: 609, column: 17, scope: !2263)
!2302 = !DILocation(line: 609, column: 25, scope: !2263)
!2303 = !DILocation(line: 609, column: 31, scope: !2263)
!2304 = !DILocation(line: 609, column: 29, scope: !2263)
!2305 = !DILocation(line: 610, column: 1, scope: !2263)
!2306 = !DILocation(line: 609, column: 2, scope: !2263)
!2307 = distinct !DISubprogram(name: "lzma_state_is_literal", scope: !40, file: !40, line: 93, type: !2308, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!135, !39}
!2310 = !{!2311}
!2311 = !DILocalVariable(name: "state", arg: 1, scope: !2307, file: !40, line: 93, type: !39)
!2312 = !DILocation(line: 93, column: 58, scope: !2307)
!2313 = !DILocation(line: 95, column: 9, scope: !2307)
!2314 = !DILocation(line: 95, column: 15, scope: !2307)
!2315 = !DILocation(line: 95, column: 2, scope: !2307)
!2316 = distinct !DISubprogram(name: "rc_bittree", scope: !8, file: !8, line: 551, type: !2317, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!69, !735, !598, !69}
!2319 = !{!2320, !2321, !2322, !2323}
!2320 = !DILocalVariable(name: "rc", arg: 1, scope: !2316, file: !8, line: 551, type: !735)
!2321 = !DILocalVariable(name: "probs", arg: 2, scope: !2316, file: !8, line: 552, type: !598)
!2322 = !DILocalVariable(name: "limit", arg: 3, scope: !2316, file: !8, line: 552, type: !69)
!2323 = !DILocalVariable(name: "symbol", scope: !2316, file: !8, line: 554, type: !69)
!2324 = !DILocation(line: 551, column: 59, scope: !2316)
!2325 = !DILocation(line: 552, column: 19, scope: !2316)
!2326 = !DILocation(line: 552, column: 35, scope: !2316)
!2327 = !DILocation(line: 554, column: 2, scope: !2316)
!2328 = !DILocation(line: 554, column: 11, scope: !2316)
!2329 = !DILocation(line: 556, column: 2, scope: !2316)
!2330 = !DILocation(line: 557, column: 14, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !8, line: 557, column: 7)
!2332 = distinct !DILexicalBlock(scope: !2316, file: !8, line: 556, column: 5)
!2333 = !DILocation(line: 557, column: 19, scope: !2331)
!2334 = !DILocation(line: 557, column: 25, scope: !2331)
!2335 = !DILocation(line: 557, column: 7, scope: !2331)
!2336 = !DILocation(line: 557, column: 7, scope: !2332)
!2337 = !DILocation(line: 558, column: 14, scope: !2331)
!2338 = !DILocation(line: 558, column: 21, scope: !2331)
!2339 = !DILocation(line: 558, column: 27, scope: !2331)
!2340 = !DILocation(line: 558, column: 11, scope: !2331)
!2341 = !DILocation(line: 558, column: 4, scope: !2331)
!2342 = !DILocation(line: 560, column: 11, scope: !2331)
!2343 = !DILocation(line: 561, column: 2, scope: !2332)
!2344 = !DILocation(line: 561, column: 11, scope: !2316)
!2345 = !DILocation(line: 561, column: 20, scope: !2316)
!2346 = !DILocation(line: 561, column: 18, scope: !2316)
!2347 = distinct !{!2347, !2329, !2348, !545, !546}
!2348 = !DILocation(line: 561, column: 25, scope: !2316)
!2349 = !DILocation(line: 563, column: 9, scope: !2316)
!2350 = !DILocation(line: 564, column: 1, scope: !2316)
!2351 = !DILocation(line: 563, column: 2, scope: !2316)
!2352 = distinct !DISubprogram(name: "dict_get", scope: !8, file: !8, line: 324, type: !2353, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!69, !1706, !69}
!2355 = !{!2356, !2357, !2358}
!2356 = !DILocalVariable(name: "dict", arg: 1, scope: !2352, file: !8, line: 324, type: !1706)
!2357 = !DILocalVariable(name: "dist", arg: 2, scope: !2352, file: !8, line: 324, type: !69)
!2358 = !DILocalVariable(name: "offset", scope: !2352, file: !8, line: 326, type: !75)
!2359 = !DILocation(line: 324, column: 58, scope: !2352)
!2360 = !DILocation(line: 324, column: 73, scope: !2352)
!2361 = !DILocation(line: 326, column: 2, scope: !2352)
!2362 = !DILocation(line: 326, column: 9, scope: !2352)
!2363 = !DILocation(line: 326, column: 18, scope: !2352)
!2364 = !DILocation(line: 326, column: 24, scope: !2352)
!2365 = !DILocation(line: 326, column: 30, scope: !2352)
!2366 = !DILocation(line: 326, column: 28, scope: !2352)
!2367 = !DILocation(line: 326, column: 35, scope: !2352)
!2368 = !DILocation(line: 328, column: 6, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2352, file: !8, line: 328, column: 6)
!2370 = !DILocation(line: 328, column: 14, scope: !2369)
!2371 = !DILocation(line: 328, column: 20, scope: !2369)
!2372 = !DILocation(line: 328, column: 11, scope: !2369)
!2373 = !DILocation(line: 328, column: 6, scope: !2352)
!2374 = !DILocation(line: 329, column: 13, scope: !2369)
!2375 = !DILocation(line: 329, column: 19, scope: !2369)
!2376 = !DILocation(line: 329, column: 10, scope: !2369)
!2377 = !DILocation(line: 329, column: 3, scope: !2369)
!2378 = !DILocation(line: 331, column: 9, scope: !2352)
!2379 = !DILocation(line: 331, column: 15, scope: !2352)
!2380 = !DILocation(line: 331, column: 20, scope: !2352)
!2381 = !DILocation(line: 331, column: 26, scope: !2352)
!2382 = !DILocation(line: 331, column: 32, scope: !2352)
!2383 = !DILocation(line: 331, column: 36, scope: !2352)
!2384 = !DILocation(line: 332, column: 1, scope: !2352)
!2385 = !DILocation(line: 331, column: 2, scope: !2352)
!2386 = distinct !DISubprogram(name: "dict_put", scope: !8, file: !8, line: 337, type: !2387, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !552, !82}
!2389 = !{!2390, !2391}
!2390 = !DILocalVariable(name: "dict", arg: 1, scope: !2386, file: !8, line: 337, type: !552)
!2391 = !DILocalVariable(name: "byte", arg: 2, scope: !2386, file: !8, line: 337, type: !82)
!2392 = !DILocation(line: 337, column: 48, scope: !2386)
!2393 = !DILocation(line: 337, column: 62, scope: !2386)
!2394 = !DILocation(line: 339, column: 27, scope: !2386)
!2395 = !DILocation(line: 339, column: 2, scope: !2386)
!2396 = !DILocation(line: 339, column: 8, scope: !2386)
!2397 = !DILocation(line: 339, column: 12, scope: !2386)
!2398 = !DILocation(line: 339, column: 18, scope: !2386)
!2399 = !DILocation(line: 339, column: 21, scope: !2386)
!2400 = !DILocation(line: 339, column: 25, scope: !2386)
!2401 = !DILocation(line: 341, column: 6, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2386, file: !8, line: 341, column: 6)
!2403 = !DILocation(line: 341, column: 12, scope: !2402)
!2404 = !DILocation(line: 341, column: 19, scope: !2402)
!2405 = !DILocation(line: 341, column: 25, scope: !2402)
!2406 = !DILocation(line: 341, column: 17, scope: !2402)
!2407 = !DILocation(line: 341, column: 6, scope: !2386)
!2408 = !DILocation(line: 342, column: 16, scope: !2402)
!2409 = !DILocation(line: 342, column: 22, scope: !2402)
!2410 = !DILocation(line: 342, column: 3, scope: !2402)
!2411 = !DILocation(line: 342, column: 9, scope: !2402)
!2412 = !DILocation(line: 342, column: 14, scope: !2402)
!2413 = !DILocation(line: 343, column: 1, scope: !2386)
!2414 = distinct !DISubprogram(name: "lzma_state_literal", scope: !40, file: !40, line: 64, type: !2415, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2418)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!2418 = !{!2419}
!2419 = !DILocalVariable(name: "state", arg: 1, scope: !2414, file: !40, line: 64, type: !2417)
!2420 = !DILocation(line: 64, column: 56, scope: !2414)
!2421 = !DILocation(line: 66, column: 7, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2414, file: !40, line: 66, column: 6)
!2423 = !DILocation(line: 66, column: 6, scope: !2422)
!2424 = !DILocation(line: 66, column: 13, scope: !2422)
!2425 = !DILocation(line: 66, column: 6, scope: !2414)
!2426 = !DILocation(line: 67, column: 4, scope: !2422)
!2427 = !DILocation(line: 67, column: 10, scope: !2422)
!2428 = !DILocation(line: 67, column: 3, scope: !2422)
!2429 = !DILocation(line: 68, column: 12, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2422, file: !40, line: 68, column: 11)
!2431 = !DILocation(line: 68, column: 11, scope: !2430)
!2432 = !DILocation(line: 68, column: 18, scope: !2430)
!2433 = !DILocation(line: 68, column: 11, scope: !2422)
!2434 = !DILocation(line: 69, column: 4, scope: !2430)
!2435 = !DILocation(line: 69, column: 10, scope: !2430)
!2436 = !DILocation(line: 69, column: 3, scope: !2430)
!2437 = !DILocation(line: 71, column: 4, scope: !2430)
!2438 = !DILocation(line: 71, column: 10, scope: !2430)
!2439 = !DILocation(line: 72, column: 1, scope: !2414)
!2440 = distinct !DISubprogram(name: "lzma_state_short_rep", scope: !40, file: !40, line: 87, type: !2415, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2441)
!2441 = !{!2442}
!2442 = !DILocalVariable(name: "state", arg: 1, scope: !2440, file: !40, line: 87, type: !2417)
!2443 = !DILocation(line: 87, column: 58, scope: !2440)
!2444 = !DILocation(line: 89, column: 12, scope: !2440)
!2445 = !DILocation(line: 89, column: 11, scope: !2440)
!2446 = !DILocation(line: 89, column: 18, scope: !2440)
!2447 = !DILocation(line: 89, column: 3, scope: !2440)
!2448 = !DILocation(line: 89, column: 9, scope: !2440)
!2449 = !DILocation(line: 90, column: 1, scope: !2440)
!2450 = distinct !DISubprogram(name: "lzma_state_long_rep", scope: !40, file: !40, line: 81, type: !2415, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2451)
!2451 = !{!2452}
!2452 = !DILocalVariable(name: "state", arg: 1, scope: !2450, file: !40, line: 81, type: !2417)
!2453 = !DILocation(line: 81, column: 57, scope: !2450)
!2454 = !DILocation(line: 83, column: 12, scope: !2450)
!2455 = !DILocation(line: 83, column: 11, scope: !2450)
!2456 = !DILocation(line: 83, column: 18, scope: !2450)
!2457 = !DILocation(line: 83, column: 3, scope: !2450)
!2458 = !DILocation(line: 83, column: 9, scope: !2450)
!2459 = !DILocation(line: 84, column: 1, scope: !2450)
!2460 = distinct !DISubprogram(name: "lzma_len", scope: !8, file: !8, line: 651, type: !2461, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2464)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !99, !2463, !69}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!2464 = !{!2465, !2466, !2467, !2468, !2469}
!2465 = !DILocalVariable(name: "s", arg: 1, scope: !2460, file: !8, line: 651, type: !99)
!2466 = !DILocalVariable(name: "l", arg: 2, scope: !2460, file: !8, line: 651, type: !2463)
!2467 = !DILocalVariable(name: "pos_state", arg: 3, scope: !2460, file: !8, line: 652, type: !69)
!2468 = !DILocalVariable(name: "probs", scope: !2460, file: !8, line: 654, type: !598)
!2469 = !DILocalVariable(name: "limit", scope: !2460, file: !8, line: 655, type: !69)
!2470 = !DILocation(line: 651, column: 43, scope: !2460)
!2471 = !DILocation(line: 651, column: 67, scope: !2460)
!2472 = !DILocation(line: 652, column: 17, scope: !2460)
!2473 = !DILocation(line: 654, column: 2, scope: !2460)
!2474 = !DILocation(line: 654, column: 12, scope: !2460)
!2475 = !DILocation(line: 655, column: 2, scope: !2460)
!2476 = !DILocation(line: 655, column: 11, scope: !2460)
!2477 = !DILocation(line: 657, column: 15, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2460, file: !8, line: 657, column: 6)
!2479 = !DILocation(line: 657, column: 18, scope: !2478)
!2480 = !DILocation(line: 657, column: 23, scope: !2478)
!2481 = !DILocation(line: 657, column: 26, scope: !2478)
!2482 = !DILocation(line: 657, column: 7, scope: !2478)
!2483 = !DILocation(line: 657, column: 6, scope: !2460)
!2484 = !DILocation(line: 658, column: 11, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2478, file: !8, line: 657, column: 35)
!2486 = !DILocation(line: 658, column: 14, scope: !2485)
!2487 = !DILocation(line: 658, column: 18, scope: !2485)
!2488 = !DILocation(line: 658, column: 9, scope: !2485)
!2489 = !DILocation(line: 659, column: 9, scope: !2485)
!2490 = !DILocation(line: 660, column: 3, scope: !2485)
!2491 = !DILocation(line: 660, column: 6, scope: !2485)
!2492 = !DILocation(line: 660, column: 11, scope: !2485)
!2493 = !DILocation(line: 660, column: 15, scope: !2485)
!2494 = !DILocation(line: 661, column: 2, scope: !2485)
!2495 = !DILocation(line: 662, column: 16, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !8, line: 662, column: 7)
!2497 = distinct !DILexicalBlock(scope: !2478, file: !8, line: 661, column: 9)
!2498 = !DILocation(line: 662, column: 19, scope: !2496)
!2499 = !DILocation(line: 662, column: 24, scope: !2496)
!2500 = !DILocation(line: 662, column: 27, scope: !2496)
!2501 = !DILocation(line: 662, column: 8, scope: !2496)
!2502 = !DILocation(line: 662, column: 7, scope: !2497)
!2503 = !DILocation(line: 663, column: 12, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2496, file: !8, line: 662, column: 37)
!2505 = !DILocation(line: 663, column: 15, scope: !2504)
!2506 = !DILocation(line: 663, column: 19, scope: !2504)
!2507 = !DILocation(line: 663, column: 10, scope: !2504)
!2508 = !DILocation(line: 664, column: 10, scope: !2504)
!2509 = !DILocation(line: 665, column: 4, scope: !2504)
!2510 = !DILocation(line: 665, column: 7, scope: !2504)
!2511 = !DILocation(line: 665, column: 12, scope: !2504)
!2512 = !DILocation(line: 665, column: 16, scope: !2504)
!2513 = !DILocation(line: 666, column: 3, scope: !2504)
!2514 = !DILocation(line: 667, column: 12, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2496, file: !8, line: 666, column: 10)
!2516 = !DILocation(line: 667, column: 15, scope: !2515)
!2517 = !DILocation(line: 667, column: 10, scope: !2515)
!2518 = !DILocation(line: 668, column: 10, scope: !2515)
!2519 = !DILocation(line: 669, column: 4, scope: !2515)
!2520 = !DILocation(line: 669, column: 7, scope: !2515)
!2521 = !DILocation(line: 669, column: 12, scope: !2515)
!2522 = !DILocation(line: 669, column: 16, scope: !2515)
!2523 = !DILocation(line: 674, column: 29, scope: !2460)
!2524 = !DILocation(line: 674, column: 32, scope: !2460)
!2525 = !DILocation(line: 674, column: 36, scope: !2460)
!2526 = !DILocation(line: 674, column: 43, scope: !2460)
!2527 = !DILocation(line: 674, column: 17, scope: !2460)
!2528 = !DILocation(line: 674, column: 52, scope: !2460)
!2529 = !DILocation(line: 674, column: 50, scope: !2460)
!2530 = !DILocation(line: 674, column: 2, scope: !2460)
!2531 = !DILocation(line: 674, column: 5, scope: !2460)
!2532 = !DILocation(line: 674, column: 10, scope: !2460)
!2533 = !DILocation(line: 674, column: 14, scope: !2460)
!2534 = !DILocation(line: 675, column: 1, scope: !2460)
!2535 = distinct !DISubprogram(name: "lzma_state_match", scope: !40, file: !40, line: 75, type: !2415, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2536)
!2536 = !{!2537}
!2537 = !DILocalVariable(name: "state", arg: 1, scope: !2535, file: !40, line: 75, type: !2417)
!2538 = !DILocation(line: 75, column: 54, scope: !2535)
!2539 = !DILocation(line: 77, column: 12, scope: !2535)
!2540 = !DILocation(line: 77, column: 11, scope: !2535)
!2541 = !DILocation(line: 77, column: 18, scope: !2535)
!2542 = !DILocation(line: 77, column: 3, scope: !2535)
!2543 = !DILocation(line: 77, column: 9, scope: !2535)
!2544 = !DILocation(line: 78, column: 1, scope: !2535)
!2545 = distinct !DISubprogram(name: "lzma_get_dist_state", scope: !40, file: !40, line: 147, type: !2546, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!69, !69}
!2548 = !{!2549}
!2549 = !DILocalVariable(name: "len", arg: 1, scope: !2545, file: !40, line: 147, type: !69)
!2550 = !DILocation(line: 147, column: 53, scope: !2545)
!2551 = !DILocation(line: 149, column: 9, scope: !2545)
!2552 = !DILocation(line: 149, column: 13, scope: !2545)
!2553 = !DILocation(line: 150, column: 6, scope: !2545)
!2554 = !DILocation(line: 150, column: 10, scope: !2545)
!2555 = !DILocation(line: 149, column: 2, scope: !2545)
!2556 = distinct !DISubprogram(name: "rc_bittree_reverse", scope: !8, file: !8, line: 567, type: !2557, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{null, !735, !598, !1227, !69}
!2559 = !{!2560, !2561, !2562, !2563, !2564, !2565}
!2560 = !DILocalVariable(name: "rc", arg: 1, scope: !2556, file: !8, line: 567, type: !735)
!2561 = !DILocalVariable(name: "probs", arg: 2, scope: !2556, file: !8, line: 568, type: !598)
!2562 = !DILocalVariable(name: "dest", arg: 3, scope: !2556, file: !8, line: 569, type: !1227)
!2563 = !DILocalVariable(name: "limit", arg: 4, scope: !2556, file: !8, line: 569, type: !69)
!2564 = !DILocalVariable(name: "symbol", scope: !2556, file: !8, line: 571, type: !69)
!2565 = !DILocalVariable(name: "i", scope: !2556, file: !8, line: 572, type: !69)
!2566 = !DILocation(line: 567, column: 63, scope: !2556)
!2567 = !DILocation(line: 568, column: 23, scope: !2556)
!2568 = !DILocation(line: 569, column: 23, scope: !2556)
!2569 = !DILocation(line: 569, column: 38, scope: !2556)
!2570 = !DILocation(line: 571, column: 2, scope: !2556)
!2571 = !DILocation(line: 571, column: 11, scope: !2556)
!2572 = !DILocation(line: 572, column: 2, scope: !2556)
!2573 = !DILocation(line: 572, column: 11, scope: !2556)
!2574 = !DILocation(line: 574, column: 2, scope: !2556)
!2575 = !DILocation(line: 575, column: 14, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !8, line: 575, column: 7)
!2577 = distinct !DILexicalBlock(scope: !2556, file: !8, line: 574, column: 5)
!2578 = !DILocation(line: 575, column: 19, scope: !2576)
!2579 = !DILocation(line: 575, column: 25, scope: !2576)
!2580 = !DILocation(line: 575, column: 7, scope: !2576)
!2581 = !DILocation(line: 575, column: 7, scope: !2577)
!2582 = !DILocation(line: 576, column: 14, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2576, file: !8, line: 575, column: 35)
!2584 = !DILocation(line: 576, column: 21, scope: !2583)
!2585 = !DILocation(line: 576, column: 27, scope: !2583)
!2586 = !DILocation(line: 576, column: 11, scope: !2583)
!2587 = !DILocation(line: 577, column: 18, scope: !2583)
!2588 = !DILocation(line: 577, column: 15, scope: !2583)
!2589 = !DILocation(line: 577, column: 5, scope: !2583)
!2590 = !DILocation(line: 577, column: 10, scope: !2583)
!2591 = !DILocation(line: 578, column: 3, scope: !2583)
!2592 = !DILocation(line: 579, column: 11, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2576, file: !8, line: 578, column: 10)
!2594 = !DILocation(line: 581, column: 2, scope: !2577)
!2595 = !DILocation(line: 581, column: 11, scope: !2556)
!2596 = !DILocation(line: 581, column: 17, scope: !2556)
!2597 = !DILocation(line: 581, column: 15, scope: !2556)
!2598 = distinct !{!2598, !2574, !2599, !545, !546}
!2599 = !DILocation(line: 581, column: 22, scope: !2556)
!2600 = !DILocation(line: 582, column: 1, scope: !2556)
!2601 = distinct !DISubprogram(name: "rc_direct", scope: !8, file: !8, line: 585, type: !2602, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{null, !735, !1227, !69}
!2604 = !{!2605, !2606, !2607, !2608}
!2605 = !DILocalVariable(name: "rc", arg: 1, scope: !2601, file: !8, line: 585, type: !735)
!2606 = !DILocalVariable(name: "dest", arg: 2, scope: !2601, file: !8, line: 585, type: !1227)
!2607 = !DILocalVariable(name: "limit", arg: 3, scope: !2601, file: !8, line: 585, type: !69)
!2608 = !DILocalVariable(name: "mask", scope: !2601, file: !8, line: 587, type: !69)
!2609 = !DILocation(line: 585, column: 45, scope: !2601)
!2610 = !DILocation(line: 585, column: 59, scope: !2601)
!2611 = !DILocation(line: 585, column: 74, scope: !2601)
!2612 = !DILocation(line: 587, column: 2, scope: !2601)
!2613 = !DILocation(line: 587, column: 11, scope: !2601)
!2614 = !DILocation(line: 589, column: 2, scope: !2601)
!2615 = !DILocation(line: 590, column: 16, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2601, file: !8, line: 589, column: 5)
!2617 = !DILocation(line: 590, column: 3, scope: !2616)
!2618 = !DILocation(line: 591, column: 3, scope: !2616)
!2619 = !DILocation(line: 591, column: 7, scope: !2616)
!2620 = !DILocation(line: 591, column: 13, scope: !2616)
!2621 = !DILocation(line: 592, column: 15, scope: !2616)
!2622 = !DILocation(line: 592, column: 19, scope: !2616)
!2623 = !DILocation(line: 592, column: 3, scope: !2616)
!2624 = !DILocation(line: 592, column: 7, scope: !2616)
!2625 = !DILocation(line: 592, column: 12, scope: !2616)
!2626 = !DILocation(line: 593, column: 25, scope: !2616)
!2627 = !DILocation(line: 593, column: 29, scope: !2616)
!2628 = !DILocation(line: 593, column: 34, scope: !2616)
!2629 = !DILocation(line: 593, column: 22, scope: !2616)
!2630 = !DILocation(line: 593, column: 8, scope: !2616)
!2631 = !DILocation(line: 594, column: 15, scope: !2616)
!2632 = !DILocation(line: 594, column: 19, scope: !2616)
!2633 = !DILocation(line: 594, column: 27, scope: !2616)
!2634 = !DILocation(line: 594, column: 25, scope: !2616)
!2635 = !DILocation(line: 594, column: 3, scope: !2616)
!2636 = !DILocation(line: 594, column: 7, scope: !2616)
!2637 = !DILocation(line: 594, column: 12, scope: !2616)
!2638 = !DILocation(line: 595, column: 13, scope: !2616)
!2639 = !DILocation(line: 595, column: 12, scope: !2616)
!2640 = !DILocation(line: 595, column: 18, scope: !2616)
!2641 = !DILocation(line: 595, column: 27, scope: !2616)
!2642 = !DILocation(line: 595, column: 32, scope: !2616)
!2643 = !DILocation(line: 595, column: 24, scope: !2616)
!2644 = !DILocation(line: 595, column: 4, scope: !2616)
!2645 = !DILocation(line: 595, column: 9, scope: !2616)
!2646 = !DILocation(line: 596, column: 2, scope: !2616)
!2647 = !DILocation(line: 596, column: 11, scope: !2601)
!2648 = !DILocation(line: 596, column: 19, scope: !2601)
!2649 = distinct !{!2649, !2614, !2650, !545, !546}
!2650 = !DILocation(line: 596, column: 22, scope: !2601)
!2651 = !DILocation(line: 597, column: 1, scope: !2601)
!2652 = !DISubprogram(name: "kmalloc_large", scope: !2, file: !2, line: 531, type: !1427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2653 = distinct !DISubprogram(name: "__kmalloc_index", scope: !2, file: !2, line: 444, type: !2654, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!12, !75, !135}
!2656 = !{!2657, !2658}
!2657 = !DILocalVariable(name: "size", arg: 1, scope: !2653, file: !2, line: 444, type: !75)
!2658 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2653, file: !2, line: 445, type: !135)
!2659 = !DILocation(line: 444, column: 60, scope: !2653)
!2660 = !DILocation(line: 445, column: 16, scope: !2653)
!2661 = !DILocation(line: 447, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 447, column: 6)
!2663 = !DILocation(line: 447, column: 6, scope: !2653)
!2664 = !DILocation(line: 448, column: 3, scope: !2662)
!2665 = !DILocation(line: 450, column: 6, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 450, column: 6)
!2667 = !DILocation(line: 450, column: 11, scope: !2666)
!2668 = !DILocation(line: 450, column: 6, scope: !2653)
!2669 = !DILocation(line: 451, column: 3, scope: !2666)
!2670 = !DILocation(line: 453, column: 32, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 453, column: 6)
!2672 = !DILocation(line: 453, column: 37, scope: !2671)
!2673 = !DILocation(line: 453, column: 42, scope: !2671)
!2674 = !DILocation(line: 453, column: 45, scope: !2671)
!2675 = !DILocation(line: 453, column: 50, scope: !2671)
!2676 = !DILocation(line: 453, column: 6, scope: !2653)
!2677 = !DILocation(line: 454, column: 3, scope: !2671)
!2678 = !DILocation(line: 455, column: 32, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 455, column: 6)
!2680 = !DILocation(line: 455, column: 37, scope: !2679)
!2681 = !DILocation(line: 455, column: 43, scope: !2679)
!2682 = !DILocation(line: 455, column: 46, scope: !2679)
!2683 = !DILocation(line: 455, column: 51, scope: !2679)
!2684 = !DILocation(line: 455, column: 6, scope: !2653)
!2685 = !DILocation(line: 456, column: 3, scope: !2679)
!2686 = !DILocation(line: 457, column: 6, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 457, column: 6)
!2688 = !DILocation(line: 457, column: 11, scope: !2687)
!2689 = !DILocation(line: 457, column: 6, scope: !2653)
!2690 = !DILocation(line: 457, column: 26, scope: !2687)
!2691 = !DILocation(line: 458, column: 6, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 458, column: 6)
!2693 = !DILocation(line: 458, column: 11, scope: !2692)
!2694 = !DILocation(line: 458, column: 6, scope: !2653)
!2695 = !DILocation(line: 458, column: 26, scope: !2692)
!2696 = !DILocation(line: 459, column: 6, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 459, column: 6)
!2698 = !DILocation(line: 459, column: 11, scope: !2697)
!2699 = !DILocation(line: 459, column: 6, scope: !2653)
!2700 = !DILocation(line: 459, column: 26, scope: !2697)
!2701 = !DILocation(line: 460, column: 6, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 460, column: 6)
!2703 = !DILocation(line: 460, column: 11, scope: !2702)
!2704 = !DILocation(line: 460, column: 6, scope: !2653)
!2705 = !DILocation(line: 460, column: 26, scope: !2702)
!2706 = !DILocation(line: 461, column: 6, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 461, column: 6)
!2708 = !DILocation(line: 461, column: 11, scope: !2707)
!2709 = !DILocation(line: 461, column: 6, scope: !2653)
!2710 = !DILocation(line: 461, column: 26, scope: !2707)
!2711 = !DILocation(line: 462, column: 6, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 462, column: 6)
!2713 = !DILocation(line: 462, column: 11, scope: !2712)
!2714 = !DILocation(line: 462, column: 6, scope: !2653)
!2715 = !DILocation(line: 462, column: 26, scope: !2712)
!2716 = !DILocation(line: 463, column: 6, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 463, column: 6)
!2718 = !DILocation(line: 463, column: 11, scope: !2717)
!2719 = !DILocation(line: 463, column: 6, scope: !2653)
!2720 = !DILocation(line: 463, column: 26, scope: !2717)
!2721 = !DILocation(line: 464, column: 6, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 464, column: 6)
!2723 = !DILocation(line: 464, column: 11, scope: !2722)
!2724 = !DILocation(line: 464, column: 6, scope: !2653)
!2725 = !DILocation(line: 464, column: 26, scope: !2722)
!2726 = !DILocation(line: 465, column: 6, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 465, column: 6)
!2728 = !DILocation(line: 465, column: 11, scope: !2727)
!2729 = !DILocation(line: 465, column: 6, scope: !2653)
!2730 = !DILocation(line: 465, column: 26, scope: !2727)
!2731 = !DILocation(line: 466, column: 6, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 466, column: 6)
!2733 = !DILocation(line: 466, column: 11, scope: !2732)
!2734 = !DILocation(line: 466, column: 6, scope: !2653)
!2735 = !DILocation(line: 466, column: 26, scope: !2732)
!2736 = !DILocation(line: 467, column: 6, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 467, column: 6)
!2738 = !DILocation(line: 467, column: 11, scope: !2737)
!2739 = !DILocation(line: 467, column: 6, scope: !2653)
!2740 = !DILocation(line: 467, column: 26, scope: !2737)
!2741 = !DILocation(line: 468, column: 6, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 468, column: 6)
!2743 = !DILocation(line: 468, column: 11, scope: !2742)
!2744 = !DILocation(line: 468, column: 6, scope: !2653)
!2745 = !DILocation(line: 468, column: 26, scope: !2742)
!2746 = !DILocation(line: 469, column: 6, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 469, column: 6)
!2748 = !DILocation(line: 469, column: 11, scope: !2747)
!2749 = !DILocation(line: 469, column: 6, scope: !2653)
!2750 = !DILocation(line: 469, column: 26, scope: !2747)
!2751 = !DILocation(line: 470, column: 6, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 470, column: 6)
!2753 = !DILocation(line: 470, column: 11, scope: !2752)
!2754 = !DILocation(line: 470, column: 6, scope: !2653)
!2755 = !DILocation(line: 470, column: 26, scope: !2752)
!2756 = !DILocation(line: 471, column: 6, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 471, column: 6)
!2758 = !DILocation(line: 471, column: 11, scope: !2757)
!2759 = !DILocation(line: 471, column: 6, scope: !2653)
!2760 = !DILocation(line: 471, column: 26, scope: !2757)
!2761 = !DILocation(line: 472, column: 6, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 472, column: 6)
!2763 = !DILocation(line: 472, column: 11, scope: !2762)
!2764 = !DILocation(line: 472, column: 6, scope: !2653)
!2765 = !DILocation(line: 472, column: 26, scope: !2762)
!2766 = !DILocation(line: 473, column: 6, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 473, column: 6)
!2768 = !DILocation(line: 473, column: 11, scope: !2767)
!2769 = !DILocation(line: 473, column: 6, scope: !2653)
!2770 = !DILocation(line: 473, column: 26, scope: !2767)
!2771 = !DILocation(line: 474, column: 6, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 474, column: 6)
!2773 = !DILocation(line: 474, column: 11, scope: !2772)
!2774 = !DILocation(line: 474, column: 6, scope: !2653)
!2775 = !DILocation(line: 474, column: 27, scope: !2772)
!2776 = !DILocation(line: 475, column: 6, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 475, column: 6)
!2778 = !DILocation(line: 475, column: 11, scope: !2777)
!2779 = !DILocation(line: 475, column: 6, scope: !2653)
!2780 = !DILocation(line: 475, column: 32, scope: !2777)
!2781 = !DILocation(line: 477, column: 50, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 477, column: 6)
!2783 = !DILocation(line: 477, column: 6, scope: !2653)
!2784 = !DILocation(line: 478, column: 3, scope: !2782)
!2785 = !DILocation(line: 478, column: 3, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !2, line: 478, column: 3)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !2, line: 478, column: 3)
!2788 = !{i32 -2143494850}
!2789 = !DILocation(line: 478, column: 3, scope: !2787)
!2790 = !DILocation(line: 480, column: 3, scope: !2782)
!2791 = !DILocation(line: 480, column: 3, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2782, file: !2, line: 480, column: 3)
!2793 = !DILocation(line: 480, column: 3, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2792, file: !2, line: 480, column: 3)
!2795 = !DILocation(line: 480, column: 3, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !2, line: 480, column: 3)
!2797 = !{i64 2151472649, i64 2151472678, i64 2151472724, i64 2151472782, i64 2151472836, i64 2151472890, i64 2151472945, i64 2151472976}
!2798 = !DILocation(line: 483, column: 2, scope: !2653)
!2799 = !DILocation(line: 484, column: 1, scope: !2653)
!2800 = !DISubprogram(name: "kmalloc_trace", scope: !2, file: !2, line: 525, type: !2801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!81, !2803, !80, !75}
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2805, line: 11, flags: DIFlagFwdDecl)
!2805 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2806 = distinct !DISubprogram(name: "kmalloc_type", scope: !2, file: !2, line: 401, type: !2807, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2809)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!59, !80, !79}
!2809 = !{!2810, !2811}
!2810 = !DILocalVariable(name: "flags", arg: 1, scope: !2806, file: !2, line: 401, type: !80)
!2811 = !DILocalVariable(name: "caller", arg: 2, scope: !2806, file: !2, line: 401, type: !79)
!2812 = !DILocation(line: 401, column: 67, scope: !2806)
!2813 = !DILocation(line: 401, column: 88, scope: !2806)
!2814 = !DILocation(line: 407, column: 6, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2806, file: !2, line: 407, column: 6)
!2816 = !DILocation(line: 407, column: 6, scope: !2806)
!2817 = !DILocation(line: 413, column: 3, scope: !2815)
!2818 = !DILocation(line: 423, column: 38, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2806, file: !2, line: 423, column: 6)
!2820 = !DILocation(line: 423, column: 44, scope: !2819)
!2821 = !DILocation(line: 423, column: 6, scope: !2806)
!2822 = !DILocation(line: 424, column: 3, scope: !2819)
!2823 = !DILocation(line: 426, column: 3, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2806, file: !2, line: 425, column: 6)
!2825 = !DILocation(line: 429, column: 1, scope: !2806)
!2826 = !DISubprogram(name: "__kmalloc", scope: !2, file: !2, line: 488, type: !1427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2827 = !DISubprogram(name: "__compiletime_assert_117", scope: !2, file: !2, line: 478, type: !2828, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{null}
