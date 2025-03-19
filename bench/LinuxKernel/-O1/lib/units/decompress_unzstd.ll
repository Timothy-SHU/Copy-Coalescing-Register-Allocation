; ModuleID = 'lib/decompress_unzstd.c'
source_filename = "lib/decompress_unzstd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_inBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_frameHeader = type { i64, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Out of memory while allocating input buffer\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"ZSTD-compressed data is truncated\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [45 x i8] c"Out of memory while allocating output buffer\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [52 x i8] c"ZSTD-compressed data has an incomplete frame header\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [49 x i8] c"ZSTD-compressed data has too large a window size\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [44 x i8] c"Out of memory while allocating ZSTD_DStream\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [18 x i8] c"Failed to flush()\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [41 x i8] c"Out of memory while allocating zstd_dctx\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [36 x i8] c"ZSTD decompressor ran out of memory\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [52 x i8] c"Input is not in the ZSTD format (wrong magic bytes)\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [32 x i8] c"ZSTD-compressed data is corrupt\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [41 x i8] c"ZSTD-compressed data is probably corrupt\00", align 1, !dbg !51

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @unzstd(ptr noundef %buf, i64 noundef %len, ptr noundef %fill, ptr noundef %flush, ptr noundef %out_buf, ptr noundef %pos, ptr noundef %error) #0 section ".init.text" align 16 !dbg !109 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %fill.addr = alloca ptr, align 8
  %flush.addr = alloca ptr, align 8
  %out_buf.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !123, metadata !DIExpression()), !dbg !130
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !124, metadata !DIExpression()), !dbg !131
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !125, metadata !DIExpression()), !dbg !132
  store ptr %flush, ptr %flush.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !126, metadata !DIExpression()), !dbg !133
  store ptr %out_buf, ptr %out_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_buf.addr, metadata !127, metadata !DIExpression()), !dbg !134
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !128, metadata !DIExpression()), !dbg !135
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !129, metadata !DIExpression()), !dbg !136
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !137
  %1 = load i64, ptr %len.addr, align 8, !dbg !138
  %2 = load ptr, ptr %fill.addr, align 8, !dbg !139
  %3 = load ptr, ptr %flush.addr, align 8, !dbg !140
  %4 = load ptr, ptr %out_buf.addr, align 8, !dbg !141
  %5 = load ptr, ptr %pos.addr, align 8, !dbg !142
  %6 = load ptr, ptr %error.addr, align 8, !dbg !143
  %call = call i32 @__unzstd(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 0, ptr noundef %5, ptr noundef %6) #5, !dbg !144
  ret i32 %call, !dbg !145
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @__unzstd(ptr noundef %in_buf, i64 noundef %in_len, ptr noundef %fill, ptr noundef %flush, ptr noundef %out_buf, i64 noundef %out_len, ptr noundef %in_pos, ptr noundef %error) #0 section ".init.text" align 16 !dbg !146 {
entry:
  %retval = alloca i32, align 4
  %in_buf.addr = alloca ptr, align 8
  %in_len.addr = alloca i64, align 8
  %fill.addr = alloca ptr, align 8
  %flush.addr = alloca ptr, align 8
  %out_buf.addr = alloca ptr, align 8
  %out_len.addr = alloca i64, align 8
  %in_pos.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %in = alloca %struct.ZSTD_inBuffer_s, align 8
  %out = alloca %struct.ZSTD_outBuffer_s, align 8
  %header = alloca %struct.ZSTD_frameHeader, align 8
  %in_allocated = alloca ptr, align 8
  %out_allocated = alloca ptr, align 8
  %wksp = alloca ptr, align 8
  %wksp_size = alloca i64, align 8
  %dstream = alloca ptr, align 8
  %err = alloca i32, align 4
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %in_buf, ptr %in_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_buf.addr, metadata !150, metadata !DIExpression()), !dbg !208
  store i64 %in_len, ptr %in_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_len.addr, metadata !151, metadata !DIExpression()), !dbg !209
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !152, metadata !DIExpression()), !dbg !210
  store ptr %flush, ptr %flush.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !153, metadata !DIExpression()), !dbg !211
  store ptr %out_buf, ptr %out_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_buf.addr, metadata !154, metadata !DIExpression()), !dbg !212
  store i64 %out_len, ptr %out_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_len.addr, metadata !155, metadata !DIExpression()), !dbg !213
  store ptr %in_pos, ptr %in_pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_pos.addr, metadata !156, metadata !DIExpression()), !dbg !214
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !157, metadata !DIExpression()), !dbg !215
  call void @llvm.lifetime.start.p0(i64 24, ptr %in) #6, !dbg !216
  call void @llvm.dbg.declare(metadata ptr %in, metadata !158, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 24, ptr %out) #6, !dbg !218
  call void @llvm.dbg.declare(metadata ptr %out, metadata !173, metadata !DIExpression()), !dbg !219
  call void @llvm.lifetime.start.p0(i64 40, ptr %header) #6, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %header, metadata !181, metadata !DIExpression()), !dbg !221
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_allocated) #6, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %in_allocated, metadata !195, metadata !DIExpression()), !dbg !223
  store ptr null, ptr %in_allocated, align 8, !dbg !223
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_allocated) #6, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %out_allocated, metadata !196, metadata !DIExpression()), !dbg !225
  store ptr null, ptr %out_allocated, align 8, !dbg !225
  call void @llvm.lifetime.start.p0(i64 8, ptr %wksp) #6, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %wksp, metadata !197, metadata !DIExpression()), !dbg !227
  store ptr null, ptr %wksp, align 8, !dbg !227
  call void @llvm.lifetime.start.p0(i64 8, ptr %wksp_size) #6, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %wksp_size, metadata !198, metadata !DIExpression()), !dbg !229
  call void @llvm.lifetime.start.p0(i64 8, ptr %dstream) #6, !dbg !230
  call void @llvm.dbg.declare(metadata ptr %dstream, metadata !199, metadata !DIExpression()), !dbg !231
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %err, metadata !205, metadata !DIExpression()), !dbg !233
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !206, metadata !DIExpression()), !dbg !235
  %0 = load i64, ptr %out_len.addr, align 8, !dbg !236
  %cmp = icmp eq i64 %0, 0, !dbg !238
  br i1 %cmp, label %if.then, label %if.end, !dbg !239

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %out_buf.addr, align 8, !dbg !240
  %2 = ptrtoint ptr %1 to i64, !dbg !241
  %sub = sub i64 -1, %2, !dbg !242
  store i64 %sub, ptr %out_len.addr, align 8, !dbg !243
  br label %if.end, !dbg !244

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %fill.addr, align 8, !dbg !245
  %cmp1 = icmp eq ptr %3, null, !dbg !247
  br i1 %cmp1, label %land.lhs.true, label %if.end4, !dbg !248

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %flush.addr, align 8, !dbg !249
  %cmp2 = icmp eq ptr %4, null, !dbg !250
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !251

if.then3:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %in_buf.addr, align 8, !dbg !252
  %6 = load i64, ptr %in_len.addr, align 8, !dbg !253
  %7 = load ptr, ptr %out_buf.addr, align 8, !dbg !254
  %8 = load i64, ptr %out_len.addr, align 8, !dbg !255
  %9 = load ptr, ptr %in_pos.addr, align 8, !dbg !256
  %10 = load ptr, ptr %error.addr, align 8, !dbg !257
  %call = call i32 @decompress_single(ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10) #5, !dbg !258
  store i32 %call, ptr %retval, align 4, !dbg !259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !259

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load ptr, ptr %in_buf.addr, align 8, !dbg !260
  %cmp5 = icmp eq ptr %11, null, !dbg !262
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !263

if.then6:                                         ; preds = %if.end4
  %call7 = call noalias ptr @vmalloc(i64 noundef 131072) #7, !dbg !264
  store ptr %call7, ptr %in_allocated, align 8, !dbg !266
  %12 = load ptr, ptr %in_allocated, align 8, !dbg !267
  %cmp8 = icmp eq ptr %12, null, !dbg !269
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !270

if.then9:                                         ; preds = %if.then6
  %13 = load ptr, ptr %error.addr, align 8, !dbg !271
  call void %13(ptr noundef @.str) #8, !dbg !271
  store i32 -1, ptr %err, align 4, !dbg !273
  br label %out92, !dbg !274

if.end10:                                         ; preds = %if.then6
  %14 = load ptr, ptr %in_allocated, align 8, !dbg !275
  store ptr %14, ptr %in_buf.addr, align 8, !dbg !276
  store i64 0, ptr %in_len.addr, align 8, !dbg !277
  br label %if.end11, !dbg !278

if.end11:                                         ; preds = %if.end10, %if.end4
  %15 = load ptr, ptr %fill.addr, align 8, !dbg !279
  %cmp12 = icmp ne ptr %15, null, !dbg !281
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !282

if.then13:                                        ; preds = %if.end11
  %16 = load ptr, ptr %fill.addr, align 8, !dbg !283
  %17 = load ptr, ptr %in_buf.addr, align 8, !dbg !284
  %call14 = call i64 %16(ptr noundef %17, i64 noundef 131072) #8, !dbg !283
  store i64 %call14, ptr %in_len.addr, align 8, !dbg !285
  br label %if.end15, !dbg !286

if.end15:                                         ; preds = %if.then13, %if.end11
  %18 = load i64, ptr %in_len.addr, align 8, !dbg !287
  %cmp16 = icmp slt i64 %18, 0, !dbg !289
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !290

if.then17:                                        ; preds = %if.end15
  %19 = load ptr, ptr %error.addr, align 8, !dbg !291
  call void %19(ptr noundef @.str.1) #8, !dbg !291
  store i32 -1, ptr %err, align 4, !dbg !293
  br label %out92, !dbg !294

if.end18:                                         ; preds = %if.end15
  %20 = load ptr, ptr %in_buf.addr, align 8, !dbg !295
  %src = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 0, !dbg !296
  store ptr %20, ptr %src, align 8, !dbg !297
  %pos = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 2, !dbg !298
  store i64 0, ptr %pos, align 8, !dbg !299
  %21 = load i64, ptr %in_len.addr, align 8, !dbg !300
  %size = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 1, !dbg !301
  store i64 %21, ptr %size, align 8, !dbg !302
  %22 = load ptr, ptr %flush.addr, align 8, !dbg !303
  %cmp19 = icmp ne ptr %22, null, !dbg !305
  br i1 %cmp19, label %if.then20, label %if.end25, !dbg !306

if.then20:                                        ; preds = %if.end18
  %call21 = call noalias ptr @vmalloc(i64 noundef 131072) #7, !dbg !307
  store ptr %call21, ptr %out_allocated, align 8, !dbg !309
  %23 = load ptr, ptr %out_allocated, align 8, !dbg !310
  %cmp22 = icmp eq ptr %23, null, !dbg !312
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !313

if.then23:                                        ; preds = %if.then20
  %24 = load ptr, ptr %error.addr, align 8, !dbg !314
  call void %24(ptr noundef @.str.2) #8, !dbg !314
  store i32 -1, ptr %err, align 4, !dbg !316
  br label %out92, !dbg !317

if.end24:                                         ; preds = %if.then20
  %25 = load ptr, ptr %out_allocated, align 8, !dbg !318
  store ptr %25, ptr %out_buf.addr, align 8, !dbg !319
  store i64 131072, ptr %out_len.addr, align 8, !dbg !320
  br label %if.end25, !dbg !321

if.end25:                                         ; preds = %if.end24, %if.end18
  %26 = load ptr, ptr %out_buf.addr, align 8, !dbg !322
  %dst = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %out, i32 0, i32 0, !dbg !323
  store ptr %26, ptr %dst, align 8, !dbg !324
  %pos26 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %out, i32 0, i32 2, !dbg !325
  store i64 0, ptr %pos26, align 8, !dbg !326
  %27 = load i64, ptr %out_len.addr, align 8, !dbg !327
  %size27 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %out, i32 0, i32 1, !dbg !328
  store i64 %27, ptr %size27, align 8, !dbg !329
  %src28 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 0, !dbg !330
  %28 = load ptr, ptr %src28, align 8, !dbg !330
  %size29 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 1, !dbg !331
  %29 = load i64, ptr %size29, align 8, !dbg !331
  %call30 = call i64 @zstd_get_frame_header(ptr noundef %header, ptr noundef %28, i64 noundef %29) #8, !dbg !332
  store i64 %call30, ptr %ret, align 8, !dbg !333
  %30 = load i64, ptr %ret, align 8, !dbg !334
  %31 = load ptr, ptr %error.addr, align 8, !dbg !335
  %call31 = call i32 @handle_zstd_error(i64 noundef %30, ptr noundef %31) #5, !dbg !336
  store i32 %call31, ptr %err, align 4, !dbg !337
  %32 = load i32, ptr %err, align 4, !dbg !338
  %tobool = icmp ne i32 %32, 0, !dbg !338
  br i1 %tobool, label %if.then32, label %if.end33, !dbg !340

if.then32:                                        ; preds = %if.end25
  br label %out92, !dbg !341

if.end33:                                         ; preds = %if.end25
  %33 = load i64, ptr %ret, align 8, !dbg !342
  %cmp34 = icmp ne i64 %33, 0, !dbg !344
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !345

if.then35:                                        ; preds = %if.end33
  %34 = load ptr, ptr %error.addr, align 8, !dbg !346
  call void %34(ptr noundef @.str.3) #8, !dbg !346
  store i32 -1, ptr %err, align 4, !dbg !348
  br label %out92, !dbg !349

if.end36:                                         ; preds = %if.end33
  %windowSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %header, i32 0, i32 1, !dbg !350
  %35 = load i64, ptr %windowSize, align 8, !dbg !350
  %cmp37 = icmp ugt i64 %35, -2147483648, !dbg !352
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !353

if.then38:                                        ; preds = %if.end36
  %36 = load ptr, ptr %error.addr, align 8, !dbg !354
  call void %36(ptr noundef @.str.4) #8, !dbg !354
  store i32 -1, ptr %err, align 4, !dbg !356
  br label %out92, !dbg !357

if.end39:                                         ; preds = %if.end36
  %windowSize40 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %header, i32 0, i32 1, !dbg !358
  %37 = load i64, ptr %windowSize40, align 8, !dbg !358
  %call41 = call i64 @zstd_dstream_workspace_bound(i64 noundef %37) #8, !dbg !359
  store i64 %call41, ptr %wksp_size, align 8, !dbg !360
  %38 = load i64, ptr %wksp_size, align 8, !dbg !361
  %call42 = call noalias ptr @vmalloc(i64 noundef %38) #7, !dbg !361
  store ptr %call42, ptr %wksp, align 8, !dbg !362
  %windowSize43 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %header, i32 0, i32 1, !dbg !363
  %39 = load i64, ptr %windowSize43, align 8, !dbg !363
  %40 = load ptr, ptr %wksp, align 8, !dbg !364
  %41 = load i64, ptr %wksp_size, align 8, !dbg !365
  %call44 = call ptr @zstd_init_dstream(i64 noundef %39, ptr noundef %40, i64 noundef %41) #8, !dbg !366
  store ptr %call44, ptr %dstream, align 8, !dbg !367
  %42 = load ptr, ptr %dstream, align 8, !dbg !368
  %cmp45 = icmp eq ptr %42, null, !dbg !370
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !371

if.then46:                                        ; preds = %if.end39
  %43 = load ptr, ptr %error.addr, align 8, !dbg !372
  call void %43(ptr noundef @.str.5) #8, !dbg !372
  store i32 -1, ptr %err, align 4, !dbg !374
  br label %out92, !dbg !375

if.end47:                                         ; preds = %if.end39
  %44 = load ptr, ptr %in_pos.addr, align 8, !dbg !376
  %cmp48 = icmp ne ptr %44, null, !dbg !378
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !379

if.then49:                                        ; preds = %if.end47
  %45 = load ptr, ptr %in_pos.addr, align 8, !dbg !380
  store i64 0, ptr %45, align 8, !dbg !381
  br label %if.end50, !dbg !382

if.end50:                                         ; preds = %if.then49, %if.end47
  br label %do.body, !dbg !383

do.body:                                          ; preds = %do.cond, %if.end50
  %pos51 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 2, !dbg !384
  %46 = load i64, ptr %pos51, align 8, !dbg !384
  %size52 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 1, !dbg !387
  %47 = load i64, ptr %size52, align 8, !dbg !387
  %cmp53 = icmp eq i64 %46, %47, !dbg !388
  br i1 %cmp53, label %if.then54, label %if.end66, !dbg !389

if.then54:                                        ; preds = %do.body
  %48 = load ptr, ptr %in_pos.addr, align 8, !dbg !390
  %cmp55 = icmp ne ptr %48, null, !dbg !393
  br i1 %cmp55, label %if.then56, label %if.end58, !dbg !394

if.then56:                                        ; preds = %if.then54
  %pos57 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 2, !dbg !395
  %49 = load i64, ptr %pos57, align 8, !dbg !395
  %50 = load ptr, ptr %in_pos.addr, align 8, !dbg !396
  %51 = load i64, ptr %50, align 8, !dbg !397
  %add = add i64 %51, %49, !dbg !397
  store i64 %add, ptr %50, align 8, !dbg !397
  br label %if.end58, !dbg !398

if.end58:                                         ; preds = %if.then56, %if.then54
  %52 = load ptr, ptr %fill.addr, align 8, !dbg !399
  %tobool59 = icmp ne ptr %52, null, !dbg !399
  br i1 %tobool59, label %cond.true, label %cond.false, !dbg !399

cond.true:                                        ; preds = %if.end58
  %53 = load ptr, ptr %fill.addr, align 8, !dbg !400
  %54 = load ptr, ptr %in_buf.addr, align 8, !dbg !401
  %call60 = call i64 %53(ptr noundef %54, i64 noundef 131072) #8, !dbg !400
  br label %cond.end, !dbg !399

cond.false:                                       ; preds = %if.end58
  br label %cond.end, !dbg !399

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call60, %cond.true ], [ -1, %cond.false ], !dbg !399
  store i64 %cond, ptr %in_len.addr, align 8, !dbg !402
  %55 = load i64, ptr %in_len.addr, align 8, !dbg !403
  %cmp61 = icmp slt i64 %55, 0, !dbg !405
  br i1 %cmp61, label %if.then62, label %if.end63, !dbg !406

if.then62:                                        ; preds = %cond.end
  %56 = load ptr, ptr %error.addr, align 8, !dbg !407
  call void %56(ptr noundef @.str.1) #8, !dbg !407
  store i32 -1, ptr %err, align 4, !dbg !409
  br label %out92, !dbg !410

if.end63:                                         ; preds = %cond.end
  %pos64 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 2, !dbg !411
  store i64 0, ptr %pos64, align 8, !dbg !412
  %57 = load i64, ptr %in_len.addr, align 8, !dbg !413
  %size65 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 1, !dbg !414
  store i64 %57, ptr %size65, align 8, !dbg !415
  br label %if.end66, !dbg !416

if.end66:                                         ; preds = %if.end63, %do.body
  %58 = load ptr, ptr %dstream, align 8, !dbg !417
  %call67 = call i64 @zstd_decompress_stream(ptr noundef %58, ptr noundef %out, ptr noundef %in) #8, !dbg !418
  store i64 %call67, ptr %ret, align 8, !dbg !419
  %59 = load i64, ptr %ret, align 8, !dbg !420
  %60 = load ptr, ptr %error.addr, align 8, !dbg !421
  %call68 = call i32 @handle_zstd_error(i64 noundef %59, ptr noundef %60) #5, !dbg !422
  store i32 %call68, ptr %err, align 4, !dbg !423
  %61 = load i32, ptr %err, align 4, !dbg !424
  %tobool69 = icmp ne i32 %61, 0, !dbg !424
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !426

if.then70:                                        ; preds = %if.end66
  br label %out92, !dbg !427

if.end71:                                         ; preds = %if.end66
  %62 = load ptr, ptr %flush.addr, align 8, !dbg !428
  %cmp72 = icmp ne ptr %62, null, !dbg !430
  br i1 %cmp72, label %land.lhs.true73, label %if.end85, !dbg !431

land.lhs.true73:                                  ; preds = %if.end71
  %pos74 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %out, i32 0, i32 2, !dbg !432
  %63 = load i64, ptr %pos74, align 8, !dbg !432
  %cmp75 = icmp ugt i64 %63, 0, !dbg !433
  br i1 %cmp75, label %if.then76, label %if.end85, !dbg !434

if.then76:                                        ; preds = %land.lhs.true73
  %pos77 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %out, i32 0, i32 2, !dbg !435
  %64 = load i64, ptr %pos77, align 8, !dbg !435
  %65 = load ptr, ptr %flush.addr, align 8, !dbg !438
  %dst78 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %out, i32 0, i32 0, !dbg !439
  %66 = load ptr, ptr %dst78, align 8, !dbg !439
  %pos79 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %out, i32 0, i32 2, !dbg !440
  %67 = load i64, ptr %pos79, align 8, !dbg !440
  %call80 = call i64 %65(ptr noundef %66, i64 noundef %67) #8, !dbg !438
  %cmp81 = icmp ne i64 %64, %call80, !dbg !441
  br i1 %cmp81, label %if.then82, label %if.end83, !dbg !442

if.then82:                                        ; preds = %if.then76
  %68 = load ptr, ptr %error.addr, align 8, !dbg !443
  call void %68(ptr noundef @.str.6) #8, !dbg !443
  store i32 -1, ptr %err, align 4, !dbg !445
  br label %out92, !dbg !446

if.end83:                                         ; preds = %if.then76
  %pos84 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %out, i32 0, i32 2, !dbg !447
  store i64 0, ptr %pos84, align 8, !dbg !448
  br label %if.end85, !dbg !449

if.end85:                                         ; preds = %if.end83, %land.lhs.true73, %if.end71
  br label %do.cond, !dbg !450

do.cond:                                          ; preds = %if.end85
  %69 = load i64, ptr %ret, align 8, !dbg !451
  %cmp86 = icmp ne i64 %69, 0, !dbg !452
  br i1 %cmp86, label %do.body, label %do.end, !dbg !450, !llvm.loop !453

do.end:                                           ; preds = %do.cond
  %70 = load ptr, ptr %in_pos.addr, align 8, !dbg !457
  %cmp87 = icmp ne ptr %70, null, !dbg !459
  br i1 %cmp87, label %if.then88, label %if.end91, !dbg !460

if.then88:                                        ; preds = %do.end
  %pos89 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 2, !dbg !461
  %71 = load i64, ptr %pos89, align 8, !dbg !461
  %72 = load ptr, ptr %in_pos.addr, align 8, !dbg !462
  %73 = load i64, ptr %72, align 8, !dbg !463
  %add90 = add i64 %73, %71, !dbg !463
  store i64 %add90, ptr %72, align 8, !dbg !463
  br label %if.end91, !dbg !464

if.end91:                                         ; preds = %if.then88, %do.end
  store i32 0, ptr %err, align 4, !dbg !465
  br label %out92, !dbg !466

out92:                                            ; preds = %if.end91, %if.then82, %if.then70, %if.then62, %if.then46, %if.then38, %if.then35, %if.then32, %if.then23, %if.then17, %if.then9
  call void @llvm.dbg.label(metadata !207), !dbg !467
  %74 = load ptr, ptr %in_allocated, align 8, !dbg !468
  %cmp93 = icmp ne ptr %74, null, !dbg !470
  br i1 %cmp93, label %if.then94, label %if.end95, !dbg !471

if.then94:                                        ; preds = %out92
  %75 = load ptr, ptr %in_allocated, align 8, !dbg !472
  call void @vfree(ptr noundef %75) #8, !dbg !472
  br label %if.end95, !dbg !472

if.end95:                                         ; preds = %if.then94, %out92
  %76 = load ptr, ptr %out_allocated, align 8, !dbg !473
  %cmp96 = icmp ne ptr %76, null, !dbg !475
  br i1 %cmp96, label %if.then97, label %if.end98, !dbg !476

if.then97:                                        ; preds = %if.end95
  %77 = load ptr, ptr %out_allocated, align 8, !dbg !477
  call void @vfree(ptr noundef %77) #8, !dbg !477
  br label %if.end98, !dbg !477

if.end98:                                         ; preds = %if.then97, %if.end95
  %78 = load ptr, ptr %wksp, align 8, !dbg !478
  %cmp99 = icmp ne ptr %78, null, !dbg !480
  br i1 %cmp99, label %if.then100, label %if.end101, !dbg !481

if.then100:                                       ; preds = %if.end98
  %79 = load ptr, ptr %wksp, align 8, !dbg !482
  call void @vfree(ptr noundef %79) #8, !dbg !482
  br label %if.end101, !dbg !482

if.end101:                                        ; preds = %if.then100, %if.end98
  %80 = load i32, ptr %err, align 4, !dbg !483
  store i32 %80, ptr %retval, align 4, !dbg !484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !484

cleanup:                                          ; preds = %if.end101, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !485
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !485
  call void @llvm.lifetime.end.p0(i64 8, ptr %dstream) #6, !dbg !485
  call void @llvm.lifetime.end.p0(i64 8, ptr %wksp_size) #6, !dbg !485
  call void @llvm.lifetime.end.p0(i64 8, ptr %wksp) #6, !dbg !485
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_allocated) #6, !dbg !485
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_allocated) #6, !dbg !485
  call void @llvm.lifetime.end.p0(i64 40, ptr %header) #6, !dbg !485
  call void @llvm.lifetime.end.p0(i64 24, ptr %out) #6, !dbg !485
  call void @llvm.lifetime.end.p0(i64 24, ptr %in) #6, !dbg !485
  %81 = load i32, ptr %retval, align 4, !dbg !485
  ret i32 %81, !dbg !485
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @decompress_single(ptr noundef %in_buf, i64 noundef %in_len, ptr noundef %out_buf, i64 noundef %out_len, ptr noundef %in_pos, ptr noundef %error) #0 section ".init.text" align 16 !dbg !486 {
entry:
  %in_buf.addr = alloca ptr, align 8
  %in_len.addr = alloca i64, align 8
  %out_buf.addr = alloca ptr, align 8
  %out_len.addr = alloca i64, align 8
  %in_pos.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %wksp_size = alloca i64, align 8
  %wksp = alloca ptr, align 8
  %dctx = alloca ptr, align 8
  %err = alloca i32, align 4
  %ret = alloca i64, align 8
  store ptr %in_buf, ptr %in_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_buf.addr, metadata !497, metadata !DIExpression()), !dbg !512
  store i64 %in_len, ptr %in_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_len.addr, metadata !498, metadata !DIExpression()), !dbg !513
  store ptr %out_buf, ptr %out_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_buf.addr, metadata !499, metadata !DIExpression()), !dbg !514
  store i64 %out_len, ptr %out_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_len.addr, metadata !500, metadata !DIExpression()), !dbg !515
  store ptr %in_pos, ptr %in_pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_pos.addr, metadata !501, metadata !DIExpression()), !dbg !516
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !502, metadata !DIExpression()), !dbg !517
  call void @llvm.lifetime.start.p0(i64 8, ptr %wksp_size) #6, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %wksp_size, metadata !503, metadata !DIExpression()), !dbg !519
  %call = call i64 @zstd_dctx_workspace_bound() #8, !dbg !520
  store i64 %call, ptr %wksp_size, align 8, !dbg !519
  call void @llvm.lifetime.start.p0(i64 8, ptr %wksp) #6, !dbg !521
  call void @llvm.dbg.declare(metadata ptr %wksp, metadata !505, metadata !DIExpression()), !dbg !522
  %0 = load i64, ptr %wksp_size, align 8, !dbg !523
  %call1 = call noalias ptr @vmalloc(i64 noundef %0) #7, !dbg !523
  store ptr %call1, ptr %wksp, align 8, !dbg !522
  call void @llvm.lifetime.start.p0(i64 8, ptr %dctx) #6, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %dctx, metadata !506, metadata !DIExpression()), !dbg !525
  %1 = load ptr, ptr %wksp, align 8, !dbg !526
  %2 = load i64, ptr %wksp_size, align 8, !dbg !527
  %call2 = call ptr @zstd_init_dctx(ptr noundef %1, i64 noundef %2) #8, !dbg !528
  store ptr %call2, ptr %dctx, align 8, !dbg !525
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !529
  call void @llvm.dbg.declare(metadata ptr %err, metadata !509, metadata !DIExpression()), !dbg !530
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !531
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !510, metadata !DIExpression()), !dbg !532
  %3 = load ptr, ptr %dctx, align 8, !dbg !533
  %cmp = icmp eq ptr %3, null, !dbg !535
  br i1 %cmp, label %if.then, label %if.end, !dbg !536

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %error.addr, align 8, !dbg !537
  call void %4(ptr noundef @.str.7) #8, !dbg !537
  store i32 -1, ptr %err, align 4, !dbg !539
  br label %out, !dbg !540

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %in_buf.addr, align 8, !dbg !541
  %6 = load i64, ptr %in_len.addr, align 8, !dbg !542
  %call3 = call i64 @zstd_find_frame_compressed_size(ptr noundef %5, i64 noundef %6) #8, !dbg !543
  store i64 %call3, ptr %ret, align 8, !dbg !544
  %7 = load i64, ptr %ret, align 8, !dbg !545
  %8 = load ptr, ptr %error.addr, align 8, !dbg !546
  %call4 = call i32 @handle_zstd_error(i64 noundef %7, ptr noundef %8) #5, !dbg !547
  store i32 %call4, ptr %err, align 4, !dbg !548
  %9 = load i32, ptr %err, align 4, !dbg !549
  %tobool = icmp ne i32 %9, 0, !dbg !549
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !551

if.then5:                                         ; preds = %if.end
  br label %out, !dbg !552

if.end6:                                          ; preds = %if.end
  %10 = load i64, ptr %ret, align 8, !dbg !553
  store i64 %10, ptr %in_len.addr, align 8, !dbg !554
  %11 = load ptr, ptr %dctx, align 8, !dbg !555
  %12 = load ptr, ptr %out_buf.addr, align 8, !dbg !556
  %13 = load i64, ptr %out_len.addr, align 8, !dbg !557
  %14 = load ptr, ptr %in_buf.addr, align 8, !dbg !558
  %15 = load i64, ptr %in_len.addr, align 8, !dbg !559
  %call7 = call i64 @zstd_decompress_dctx(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15) #8, !dbg !560
  store i64 %call7, ptr %ret, align 8, !dbg !561
  %16 = load i64, ptr %ret, align 8, !dbg !562
  %17 = load ptr, ptr %error.addr, align 8, !dbg !563
  %call8 = call i32 @handle_zstd_error(i64 noundef %16, ptr noundef %17) #5, !dbg !564
  store i32 %call8, ptr %err, align 4, !dbg !565
  %18 = load i32, ptr %err, align 4, !dbg !566
  %tobool9 = icmp ne i32 %18, 0, !dbg !566
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !568

if.then10:                                        ; preds = %if.end6
  br label %out, !dbg !569

if.end11:                                         ; preds = %if.end6
  %19 = load ptr, ptr %in_pos.addr, align 8, !dbg !570
  %cmp12 = icmp ne ptr %19, null, !dbg !572
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !573

if.then13:                                        ; preds = %if.end11
  %20 = load i64, ptr %in_len.addr, align 8, !dbg !574
  %21 = load ptr, ptr %in_pos.addr, align 8, !dbg !575
  store i64 %20, ptr %21, align 8, !dbg !576
  br label %if.end14, !dbg !577

if.end14:                                         ; preds = %if.then13, %if.end11
  store i32 0, ptr %err, align 4, !dbg !578
  br label %out, !dbg !579

out:                                              ; preds = %if.end14, %if.then10, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !511), !dbg !580
  %22 = load ptr, ptr %wksp, align 8, !dbg !581
  %cmp15 = icmp ne ptr %22, null, !dbg !583
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !584

if.then16:                                        ; preds = %out
  %23 = load ptr, ptr %wksp, align 8, !dbg !585
  call void @vfree(ptr noundef %23) #8, !dbg !585
  br label %if.end17, !dbg !585

if.end17:                                         ; preds = %if.then16, %out
  %24 = load i32, ptr %err, align 4, !dbg !586
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %dctx) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %wksp) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %wksp_size) #6, !dbg !587
  ret i32 %24, !dbg !588
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !589 dso_local noalias ptr @vmalloc(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !593 dso_local i64 @zstd_get_frame_header(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @handle_zstd_error(i64 noundef %ret, ptr noundef %error) #0 section ".init.text" align 16 !dbg !597 {
entry:
  %retval = alloca i32, align 4
  %ret.addr = alloca i64, align 8
  %error.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %ret, ptr %ret.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !601, metadata !DIExpression()), !dbg !607
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !602, metadata !DIExpression()), !dbg !608
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !609
  call void @llvm.dbg.declare(metadata ptr %err, metadata !603, metadata !DIExpression()), !dbg !610
  %0 = load i64, ptr %ret.addr, align 8, !dbg !611
  %call = call i32 @zstd_get_error_code(i64 noundef %0) #8, !dbg !612
  store i32 %call, ptr %err, align 4, !dbg !610
  %1 = load i64, ptr %ret.addr, align 8, !dbg !613
  %call1 = call i32 @zstd_is_error(i64 noundef %1) #8, !dbg !615
  %tobool = icmp ne i32 %call1, 0, !dbg !615
  br i1 %tobool, label %if.end, label %if.then, !dbg !616

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !617

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !618
  switch i32 %2, label %sw.default [
    i32 64, label %sw.bb
    i32 10, label %sw.bb2
    i32 70, label %sw.bb3
    i32 20, label %sw.bb3
    i32 22, label %sw.bb3
  ], !dbg !619

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr %error.addr, align 8, !dbg !620
  call void %3(ptr noundef @.str.8) #8, !dbg !620
  br label %sw.epilog, !dbg !622

sw.bb2:                                           ; preds = %if.end
  %4 = load ptr, ptr %error.addr, align 8, !dbg !623
  call void %4(ptr noundef @.str.9) #8, !dbg !623
  br label %sw.epilog, !dbg !624

sw.bb3:                                           ; preds = %if.end, %if.end, %if.end
  %5 = load ptr, ptr %error.addr, align 8, !dbg !625
  call void %5(ptr noundef @.str.10) #8, !dbg !625
  br label %sw.epilog, !dbg !626

sw.default:                                       ; preds = %if.end
  %6 = load ptr, ptr %error.addr, align 8, !dbg !627
  call void %6(ptr noundef @.str.11) #8, !dbg !627
  br label %sw.epilog, !dbg !628

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb
  store i32 -1, ptr %retval, align 4, !dbg !629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !629

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !630
  %7 = load i32, ptr %retval, align 4, !dbg !630
  ret i32 %7, !dbg !630
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !631 dso_local i64 @zstd_dstream_workspace_bound(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !634 dso_local ptr @zstd_init_dstream(i64 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !637 dso_local i64 @zstd_decompress_stream(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !642 dso_local void @vfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !645 dso_local i64 @zstd_dctx_workspace_bound() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !648 dso_local ptr @zstd_init_dctx(ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !651 dso_local i64 @zstd_find_frame_compressed_size(ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !654 dso_local i64 @zstd_decompress_dctx(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !657 dso_local i32 @zstd_get_error_code(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !660 dso_local i32 @zstd_is_error(i64 noundef) #4

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone }
attributes #6 = { nounwind }
attributes #7 = { noredzone allocsize(0) }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!53}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/decompress_unzstd.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ae1f75a2f09df6e50775533108fca2a9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 44)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 45)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 52)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 259, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 49)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !3, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 310, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 18)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 41)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 36)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !19, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 32)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !36, isLocal: true, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.decompress_unzstd.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/decompress_unzstd\22 -D KBUILD_BASENAME=\22decompress_unzstd\22 -D KBUILD_MODNAME=\22decompress_unzstd\22 -D __KBUILD_MODNAME=kmod_decompress_unzstd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/decompress_unzstd.ll lib/decompress_unzstd.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !92, globals: !99, splitDebugInlining: false, nameTableKind: None)
!54 = !{!55, !61}
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 2474, baseType: !57, size: 32, elements: !58)
!56 = !DIFile(filename: "./include/linux/zstd_lib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8133d2f71405070b8bf1f9699046d166")
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "ZSTD_frame", value: 0)
!60 = !DIEnumerator(name: "ZSTD_skippableFrame", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 37, baseType: !57, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/zstd_errors.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b65e56a0777f4855c2ba6522d04d0e69")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!64 = !DIEnumerator(name: "ZSTD_error_no_error", value: 0)
!65 = !DIEnumerator(name: "ZSTD_error_GENERIC", value: 1)
!66 = !DIEnumerator(name: "ZSTD_error_prefix_unknown", value: 10)
!67 = !DIEnumerator(name: "ZSTD_error_version_unsupported", value: 12)
!68 = !DIEnumerator(name: "ZSTD_error_frameParameter_unsupported", value: 14)
!69 = !DIEnumerator(name: "ZSTD_error_frameParameter_windowTooLarge", value: 16)
!70 = !DIEnumerator(name: "ZSTD_error_corruption_detected", value: 20)
!71 = !DIEnumerator(name: "ZSTD_error_checksum_wrong", value: 22)
!72 = !DIEnumerator(name: "ZSTD_error_dictionary_corrupted", value: 30)
!73 = !DIEnumerator(name: "ZSTD_error_dictionary_wrong", value: 32)
!74 = !DIEnumerator(name: "ZSTD_error_dictionaryCreation_failed", value: 34)
!75 = !DIEnumerator(name: "ZSTD_error_parameter_unsupported", value: 40)
!76 = !DIEnumerator(name: "ZSTD_error_parameter_outOfBound", value: 42)
!77 = !DIEnumerator(name: "ZSTD_error_tableLog_tooLarge", value: 44)
!78 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooLarge", value: 46)
!79 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooSmall", value: 48)
!80 = !DIEnumerator(name: "ZSTD_error_stage_wrong", value: 60)
!81 = !DIEnumerator(name: "ZSTD_error_init_missing", value: 62)
!82 = !DIEnumerator(name: "ZSTD_error_memory_allocation", value: 64)
!83 = !DIEnumerator(name: "ZSTD_error_workSpace_tooSmall", value: 66)
!84 = !DIEnumerator(name: "ZSTD_error_dstSize_tooSmall", value: 70)
!85 = !DIEnumerator(name: "ZSTD_error_srcSize_wrong", value: 72)
!86 = !DIEnumerator(name: "ZSTD_error_dstBuffer_null", value: 74)
!87 = !DIEnumerator(name: "ZSTD_error_frameIndex_tooLarge", value: 100)
!88 = !DIEnumerator(name: "ZSTD_error_seekableIO", value: 102)
!89 = !DIEnumerator(name: "ZSTD_error_dstBuffer_wrong", value: 104)
!90 = !DIEnumerator(name: "ZSTD_error_srcBuffer_wrong", value: 105)
!91 = !DIEnumerator(name: "ZSTD_error_maxCode", value: 120)
!92 = !{!93, !94, !97, !98}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !95, line: 42, baseType: !96)
!95 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!96 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!99 = !{!0, !7, !12, !17, !22, !27, !29, !34, !39, !44, !46, !51}
!100 = !{i32 7, !"Dwarf Version", i32 5}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 8, !"cf-protection-branch", i32 1}
!104 = !{i32 4, !"function_return_thunk_extern", i32 1}
!105 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!106 = !{i32 1, !"Code Model", i32 2}
!107 = !{i32 1, !"override-stack-alignment", i32 8}
!108 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!109 = distinct !DISubprogram(name: "unzstd", scope: !2, file: !2, line: 333, type: !110, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !122)
!110 = !DISubroutineType(types: !111)
!111 = !{!97, !112, !98, !114, !114, !112, !117, !118}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!98, !93, !96}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!122 = !{!123, !124, !125, !126, !127, !128, !129}
!123 = !DILocalVariable(name: "buf", arg: 1, scope: !109, file: !2, line: 333, type: !112)
!124 = !DILocalVariable(name: "len", arg: 2, scope: !109, file: !2, line: 333, type: !98)
!125 = !DILocalVariable(name: "fill", arg: 3, scope: !109, file: !2, line: 334, type: !114)
!126 = !DILocalVariable(name: "flush", arg: 4, scope: !109, file: !2, line: 335, type: !114)
!127 = !DILocalVariable(name: "out_buf", arg: 5, scope: !109, file: !2, line: 336, type: !112)
!128 = !DILocalVariable(name: "pos", arg: 6, scope: !109, file: !2, line: 337, type: !117)
!129 = !DILocalVariable(name: "error", arg: 7, scope: !109, file: !2, line: 338, type: !118)
!130 = !DILocation(line: 333, column: 39, scope: !109)
!131 = !DILocation(line: 333, column: 49, scope: !109)
!132 = !DILocation(line: 334, column: 17, scope: !109)
!133 = !DILocation(line: 335, column: 17, scope: !109)
!134 = !DILocation(line: 336, column: 25, scope: !109)
!135 = !DILocation(line: 337, column: 16, scope: !109)
!136 = !DILocation(line: 338, column: 17, scope: !109)
!137 = !DILocation(line: 340, column: 18, scope: !109)
!138 = !DILocation(line: 340, column: 23, scope: !109)
!139 = !DILocation(line: 340, column: 28, scope: !109)
!140 = !DILocation(line: 340, column: 34, scope: !109)
!141 = !DILocation(line: 340, column: 41, scope: !109)
!142 = !DILocation(line: 340, column: 53, scope: !109)
!143 = !DILocation(line: 340, column: 58, scope: !109)
!144 = !DILocation(line: 340, column: 9, scope: !109)
!145 = !DILocation(line: 340, column: 2, scope: !109)
!146 = distinct !DISubprogram(name: "__unzstd", scope: !2, file: !2, line: 165, type: !147, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{!97, !112, !98, !114, !114, !112, !98, !117, !118}
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !173, !181, !195, !196, !197, !198, !199, !205, !206, !207}
!150 = !DILocalVariable(name: "in_buf", arg: 1, scope: !146, file: !2, line: 165, type: !112)
!151 = !DILocalVariable(name: "in_len", arg: 2, scope: !146, file: !2, line: 165, type: !98)
!152 = !DILocalVariable(name: "fill", arg: 3, scope: !146, file: !2, line: 166, type: !114)
!153 = !DILocalVariable(name: "flush", arg: 4, scope: !146, file: !2, line: 167, type: !114)
!154 = !DILocalVariable(name: "out_buf", arg: 5, scope: !146, file: !2, line: 168, type: !112)
!155 = !DILocalVariable(name: "out_len", arg: 6, scope: !146, file: !2, line: 168, type: !98)
!156 = !DILocalVariable(name: "in_pos", arg: 7, scope: !146, file: !2, line: 169, type: !117)
!157 = !DILocalVariable(name: "error", arg: 8, scope: !146, file: !2, line: 170, type: !118)
!158 = !DILocalVariable(name: "in", scope: !146, file: !2, line: 172, type: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "zstd_in_buffer", file: !160, line: 234, baseType: !161)
!160 = !DIFile(filename: "./include/linux/zstd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f58092ce19df72295b846c8e5a01c321")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_inBuffer", file: !56, line: 591, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_inBuffer_s", file: !56, line: 587, size: 192, elements: !163)
!163 = !{!164, !167, !172}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !162, file: !56, line: 588, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !162, file: !56, line: 589, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 61, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !170, line: 72, baseType: !171)
!170 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !170, line: 16, baseType: !96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !162, file: !56, line: 590, baseType: !168, size: 64, offset: 128)
!173 = !DILocalVariable(name: "out", scope: !146, file: !2, line: 173, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "zstd_out_buffer", file: !160, line: 245, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_outBuffer", file: !56, line: 597, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_outBuffer_s", file: !56, line: 593, size: 192, elements: !177)
!177 = !{!178, !179, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !176, file: !56, line: 594, baseType: !93, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !176, file: !56, line: 595, baseType: !168, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !176, file: !56, line: 596, baseType: !168, size: 64, offset: 128)
!181 = !DILocalVariable(name: "header", scope: !146, file: !2, line: 174, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "zstd_frame_header", file: !160, line: 432, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_frameHeader", file: !56, line: 2483, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 2475, size: 320, elements: !185)
!185 = !{!186, !188, !189, !190, !192, !193, !194}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "frameContentSize", scope: !184, file: !56, line: 2476, baseType: !187, size: 64)
!187 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "windowSize", scope: !184, file: !56, line: 2477, baseType: !187, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "blockSizeMax", scope: !184, file: !56, line: 2478, baseType: !57, size: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "frameType", scope: !184, file: !56, line: 2479, baseType: !191, size: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_frameType_e", file: !56, line: 2474, baseType: !55)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "headerSize", scope: !184, file: !56, line: 2480, baseType: !57, size: 32, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "dictID", scope: !184, file: !56, line: 2481, baseType: !57, size: 32, offset: 224)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "checksumFlag", scope: !184, file: !56, line: 2482, baseType: !57, size: 32, offset: 256)
!195 = !DILocalVariable(name: "in_allocated", scope: !146, file: !2, line: 175, type: !93)
!196 = !DILocalVariable(name: "out_allocated", scope: !146, file: !2, line: 176, type: !93)
!197 = !DILocalVariable(name: "wksp", scope: !146, file: !2, line: 177, type: !93)
!198 = !DILocalVariable(name: "wksp_size", scope: !146, file: !2, line: 178, type: !168)
!199 = !DILocalVariable(name: "dstream", scope: !146, file: !2, line: 179, type: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "zstd_dstream", file: !160, line: 344, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DStream", file: !56, line: 783, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_DCtx", file: !56, line: 216, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "ZSTD_DCtx_s", file: !56, line: 216, flags: DIFlagFwdDecl)
!205 = !DILocalVariable(name: "err", scope: !146, file: !2, line: 180, type: !97)
!206 = !DILocalVariable(name: "ret", scope: !146, file: !2, line: 181, type: !168)
!207 = !DILabel(scope: !146, name: "out", file: !2, line: 322)
!208 = !DILocation(line: 165, column: 41, scope: !146)
!209 = !DILocation(line: 165, column: 54, scope: !146)
!210 = !DILocation(line: 166, column: 12, scope: !146)
!211 = !DILocation(line: 167, column: 12, scope: !146)
!212 = !DILocation(line: 168, column: 20, scope: !146)
!213 = !DILocation(line: 168, column: 34, scope: !146)
!214 = !DILocation(line: 169, column: 11, scope: !146)
!215 = !DILocation(line: 170, column: 12, scope: !146)
!216 = !DILocation(line: 172, column: 2, scope: !146)
!217 = !DILocation(line: 172, column: 17, scope: !146)
!218 = !DILocation(line: 173, column: 2, scope: !146)
!219 = !DILocation(line: 173, column: 18, scope: !146)
!220 = !DILocation(line: 174, column: 2, scope: !146)
!221 = !DILocation(line: 174, column: 20, scope: !146)
!222 = !DILocation(line: 175, column: 2, scope: !146)
!223 = !DILocation(line: 175, column: 8, scope: !146)
!224 = !DILocation(line: 176, column: 2, scope: !146)
!225 = !DILocation(line: 176, column: 8, scope: !146)
!226 = !DILocation(line: 177, column: 2, scope: !146)
!227 = !DILocation(line: 177, column: 8, scope: !146)
!228 = !DILocation(line: 178, column: 2, scope: !146)
!229 = !DILocation(line: 178, column: 9, scope: !146)
!230 = !DILocation(line: 179, column: 2, scope: !146)
!231 = !DILocation(line: 179, column: 16, scope: !146)
!232 = !DILocation(line: 180, column: 2, scope: !146)
!233 = !DILocation(line: 180, column: 6, scope: !146)
!234 = !DILocation(line: 181, column: 2, scope: !146)
!235 = !DILocation(line: 181, column: 9, scope: !146)
!236 = !DILocation(line: 188, column: 6, scope: !237)
!237 = distinct !DILexicalBlock(scope: !146, file: !2, line: 188, column: 6)
!238 = !DILocation(line: 188, column: 14, scope: !237)
!239 = !DILocation(line: 188, column: 6, scope: !146)
!240 = !DILocation(line: 189, column: 38, scope: !237)
!241 = !DILocation(line: 189, column: 27, scope: !237)
!242 = !DILocation(line: 189, column: 25, scope: !237)
!243 = !DILocation(line: 189, column: 11, scope: !237)
!244 = !DILocation(line: 189, column: 3, scope: !237)
!245 = !DILocation(line: 191, column: 6, scope: !246)
!246 = distinct !DILexicalBlock(scope: !146, file: !2, line: 191, column: 6)
!247 = !DILocation(line: 191, column: 11, scope: !246)
!248 = !DILocation(line: 191, column: 19, scope: !246)
!249 = !DILocation(line: 191, column: 22, scope: !246)
!250 = !DILocation(line: 191, column: 28, scope: !246)
!251 = !DILocation(line: 191, column: 6, scope: !146)
!252 = !DILocation(line: 196, column: 28, scope: !246)
!253 = !DILocation(line: 196, column: 36, scope: !246)
!254 = !DILocation(line: 196, column: 44, scope: !246)
!255 = !DILocation(line: 196, column: 53, scope: !246)
!256 = !DILocation(line: 197, column: 7, scope: !246)
!257 = !DILocation(line: 197, column: 15, scope: !246)
!258 = !DILocation(line: 196, column: 10, scope: !246)
!259 = !DILocation(line: 196, column: 3, scope: !246)
!260 = !DILocation(line: 204, column: 6, scope: !261)
!261 = distinct !DILexicalBlock(scope: !146, file: !2, line: 204, column: 6)
!262 = !DILocation(line: 204, column: 13, scope: !261)
!263 = !DILocation(line: 204, column: 6, scope: !146)
!264 = !DILocation(line: 205, column: 18, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !2, line: 204, column: 22)
!266 = !DILocation(line: 205, column: 16, scope: !265)
!267 = !DILocation(line: 206, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !2, line: 206, column: 7)
!269 = !DILocation(line: 206, column: 20, scope: !268)
!270 = !DILocation(line: 206, column: 7, scope: !265)
!271 = !DILocation(line: 207, column: 4, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !2, line: 206, column: 29)
!273 = !DILocation(line: 208, column: 8, scope: !272)
!274 = !DILocation(line: 209, column: 4, scope: !272)
!275 = !DILocation(line: 211, column: 12, scope: !265)
!276 = !DILocation(line: 211, column: 10, scope: !265)
!277 = !DILocation(line: 212, column: 10, scope: !265)
!278 = !DILocation(line: 213, column: 2, scope: !265)
!279 = !DILocation(line: 215, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !146, file: !2, line: 215, column: 6)
!281 = !DILocation(line: 215, column: 11, scope: !280)
!282 = !DILocation(line: 215, column: 6, scope: !146)
!283 = !DILocation(line: 216, column: 12, scope: !280)
!284 = !DILocation(line: 216, column: 17, scope: !280)
!285 = !DILocation(line: 216, column: 10, scope: !280)
!286 = !DILocation(line: 216, column: 3, scope: !280)
!287 = !DILocation(line: 217, column: 6, scope: !288)
!288 = distinct !DILexicalBlock(scope: !146, file: !2, line: 217, column: 6)
!289 = !DILocation(line: 217, column: 13, scope: !288)
!290 = !DILocation(line: 217, column: 6, scope: !146)
!291 = !DILocation(line: 218, column: 3, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !2, line: 217, column: 18)
!293 = !DILocation(line: 219, column: 7, scope: !292)
!294 = !DILocation(line: 220, column: 3, scope: !292)
!295 = !DILocation(line: 223, column: 11, scope: !146)
!296 = !DILocation(line: 223, column: 5, scope: !146)
!297 = !DILocation(line: 223, column: 9, scope: !146)
!298 = !DILocation(line: 224, column: 5, scope: !146)
!299 = !DILocation(line: 224, column: 9, scope: !146)
!300 = !DILocation(line: 225, column: 12, scope: !146)
!301 = !DILocation(line: 225, column: 5, scope: !146)
!302 = !DILocation(line: 225, column: 10, scope: !146)
!303 = !DILocation(line: 227, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !146, file: !2, line: 227, column: 6)
!305 = !DILocation(line: 227, column: 12, scope: !304)
!306 = !DILocation(line: 227, column: 6, scope: !146)
!307 = !DILocation(line: 228, column: 19, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !2, line: 227, column: 21)
!309 = !DILocation(line: 228, column: 17, scope: !308)
!310 = !DILocation(line: 229, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !2, line: 229, column: 7)
!312 = !DILocation(line: 229, column: 21, scope: !311)
!313 = !DILocation(line: 229, column: 7, scope: !308)
!314 = !DILocation(line: 230, column: 4, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !2, line: 229, column: 30)
!316 = !DILocation(line: 231, column: 8, scope: !315)
!317 = !DILocation(line: 232, column: 4, scope: !315)
!318 = !DILocation(line: 234, column: 13, scope: !308)
!319 = !DILocation(line: 234, column: 11, scope: !308)
!320 = !DILocation(line: 235, column: 11, scope: !308)
!321 = !DILocation(line: 236, column: 2, scope: !308)
!322 = !DILocation(line: 238, column: 12, scope: !146)
!323 = !DILocation(line: 238, column: 6, scope: !146)
!324 = !DILocation(line: 238, column: 10, scope: !146)
!325 = !DILocation(line: 239, column: 6, scope: !146)
!326 = !DILocation(line: 239, column: 10, scope: !146)
!327 = !DILocation(line: 240, column: 13, scope: !146)
!328 = !DILocation(line: 240, column: 6, scope: !146)
!329 = !DILocation(line: 240, column: 11, scope: !146)
!330 = !DILocation(line: 249, column: 42, scope: !146)
!331 = !DILocation(line: 249, column: 50, scope: !146)
!332 = !DILocation(line: 249, column: 8, scope: !146)
!333 = !DILocation(line: 249, column: 6, scope: !146)
!334 = !DILocation(line: 250, column: 26, scope: !146)
!335 = !DILocation(line: 250, column: 31, scope: !146)
!336 = !DILocation(line: 250, column: 8, scope: !146)
!337 = !DILocation(line: 250, column: 6, scope: !146)
!338 = !DILocation(line: 251, column: 6, scope: !339)
!339 = distinct !DILexicalBlock(scope: !146, file: !2, line: 251, column: 6)
!340 = !DILocation(line: 251, column: 6, scope: !146)
!341 = !DILocation(line: 252, column: 3, scope: !339)
!342 = !DILocation(line: 253, column: 6, scope: !343)
!343 = distinct !DILexicalBlock(scope: !146, file: !2, line: 253, column: 6)
!344 = !DILocation(line: 253, column: 10, scope: !343)
!345 = !DILocation(line: 253, column: 6, scope: !146)
!346 = !DILocation(line: 254, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !2, line: 253, column: 16)
!348 = !DILocation(line: 255, column: 7, scope: !347)
!349 = !DILocation(line: 256, column: 3, scope: !347)
!350 = !DILocation(line: 258, column: 13, scope: !351)
!351 = distinct !DILexicalBlock(scope: !146, file: !2, line: 258, column: 6)
!352 = !DILocation(line: 258, column: 24, scope: !351)
!353 = !DILocation(line: 258, column: 6, scope: !146)
!354 = !DILocation(line: 259, column: 3, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !2, line: 258, column: 47)
!356 = !DILocation(line: 260, column: 7, scope: !355)
!357 = !DILocation(line: 261, column: 3, scope: !355)
!358 = !DILocation(line: 268, column: 50, scope: !146)
!359 = !DILocation(line: 268, column: 14, scope: !146)
!360 = !DILocation(line: 268, column: 12, scope: !146)
!361 = !DILocation(line: 269, column: 9, scope: !146)
!362 = !DILocation(line: 269, column: 7, scope: !146)
!363 = !DILocation(line: 270, column: 37, scope: !146)
!364 = !DILocation(line: 270, column: 49, scope: !146)
!365 = !DILocation(line: 270, column: 55, scope: !146)
!366 = !DILocation(line: 270, column: 12, scope: !146)
!367 = !DILocation(line: 270, column: 10, scope: !146)
!368 = !DILocation(line: 271, column: 6, scope: !369)
!369 = distinct !DILexicalBlock(scope: !146, file: !2, line: 271, column: 6)
!370 = !DILocation(line: 271, column: 14, scope: !369)
!371 = !DILocation(line: 271, column: 6, scope: !146)
!372 = !DILocation(line: 272, column: 3, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !2, line: 271, column: 23)
!374 = !DILocation(line: 273, column: 7, scope: !373)
!375 = !DILocation(line: 274, column: 3, scope: !373)
!376 = !DILocation(line: 283, column: 6, scope: !377)
!377 = distinct !DILexicalBlock(scope: !146, file: !2, line: 283, column: 6)
!378 = !DILocation(line: 283, column: 13, scope: !377)
!379 = !DILocation(line: 283, column: 6, scope: !146)
!380 = !DILocation(line: 284, column: 4, scope: !377)
!381 = !DILocation(line: 284, column: 11, scope: !377)
!382 = !DILocation(line: 284, column: 3, scope: !377)
!383 = !DILocation(line: 285, column: 2, scope: !146)
!384 = !DILocation(line: 290, column: 10, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !2, line: 290, column: 7)
!386 = distinct !DILexicalBlock(scope: !146, file: !2, line: 285, column: 5)
!387 = !DILocation(line: 290, column: 20, scope: !385)
!388 = !DILocation(line: 290, column: 14, scope: !385)
!389 = !DILocation(line: 290, column: 7, scope: !386)
!390 = !DILocation(line: 291, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !2, line: 291, column: 8)
!392 = distinct !DILexicalBlock(scope: !385, file: !2, line: 290, column: 26)
!393 = !DILocation(line: 291, column: 15, scope: !391)
!394 = !DILocation(line: 291, column: 8, scope: !392)
!395 = !DILocation(line: 292, column: 19, scope: !391)
!396 = !DILocation(line: 292, column: 6, scope: !391)
!397 = !DILocation(line: 292, column: 13, scope: !391)
!398 = !DILocation(line: 292, column: 5, scope: !391)
!399 = !DILocation(line: 293, column: 13, scope: !392)
!400 = !DILocation(line: 293, column: 20, scope: !392)
!401 = !DILocation(line: 293, column: 25, scope: !392)
!402 = !DILocation(line: 293, column: 11, scope: !392)
!403 = !DILocation(line: 294, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !392, file: !2, line: 294, column: 8)
!405 = !DILocation(line: 294, column: 15, scope: !404)
!406 = !DILocation(line: 294, column: 8, scope: !392)
!407 = !DILocation(line: 295, column: 5, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !2, line: 294, column: 20)
!409 = !DILocation(line: 296, column: 9, scope: !408)
!410 = !DILocation(line: 297, column: 5, scope: !408)
!411 = !DILocation(line: 299, column: 7, scope: !392)
!412 = !DILocation(line: 299, column: 11, scope: !392)
!413 = !DILocation(line: 300, column: 14, scope: !392)
!414 = !DILocation(line: 300, column: 7, scope: !392)
!415 = !DILocation(line: 300, column: 12, scope: !392)
!416 = !DILocation(line: 301, column: 3, scope: !392)
!417 = !DILocation(line: 303, column: 32, scope: !386)
!418 = !DILocation(line: 303, column: 9, scope: !386)
!419 = !DILocation(line: 303, column: 7, scope: !386)
!420 = !DILocation(line: 304, column: 27, scope: !386)
!421 = !DILocation(line: 304, column: 32, scope: !386)
!422 = !DILocation(line: 304, column: 9, scope: !386)
!423 = !DILocation(line: 304, column: 7, scope: !386)
!424 = !DILocation(line: 305, column: 7, scope: !425)
!425 = distinct !DILexicalBlock(scope: !386, file: !2, line: 305, column: 7)
!426 = !DILocation(line: 305, column: 7, scope: !386)
!427 = !DILocation(line: 306, column: 4, scope: !425)
!428 = !DILocation(line: 308, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !386, file: !2, line: 308, column: 7)
!430 = !DILocation(line: 308, column: 13, scope: !429)
!431 = !DILocation(line: 308, column: 21, scope: !429)
!432 = !DILocation(line: 308, column: 28, scope: !429)
!433 = !DILocation(line: 308, column: 32, scope: !429)
!434 = !DILocation(line: 308, column: 7, scope: !386)
!435 = !DILocation(line: 309, column: 12, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !2, line: 309, column: 8)
!437 = distinct !DILexicalBlock(scope: !429, file: !2, line: 308, column: 37)
!438 = !DILocation(line: 309, column: 19, scope: !436)
!439 = !DILocation(line: 309, column: 29, scope: !436)
!440 = !DILocation(line: 309, column: 38, scope: !436)
!441 = !DILocation(line: 309, column: 16, scope: !436)
!442 = !DILocation(line: 309, column: 8, scope: !437)
!443 = !DILocation(line: 310, column: 5, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !2, line: 309, column: 44)
!445 = !DILocation(line: 311, column: 9, scope: !444)
!446 = !DILocation(line: 312, column: 5, scope: !444)
!447 = !DILocation(line: 314, column: 8, scope: !437)
!448 = !DILocation(line: 314, column: 12, scope: !437)
!449 = !DILocation(line: 315, column: 3, scope: !437)
!450 = !DILocation(line: 316, column: 2, scope: !386)
!451 = !DILocation(line: 316, column: 11, scope: !146)
!452 = !DILocation(line: 316, column: 15, scope: !146)
!453 = distinct !{!453, !383, !454, !455, !456}
!454 = !DILocation(line: 316, column: 19, scope: !146)
!455 = !{!"llvm.loop.mustprogress"}
!456 = !{!"llvm.loop.unroll.disable"}
!457 = !DILocation(line: 318, column: 6, scope: !458)
!458 = distinct !DILexicalBlock(scope: !146, file: !2, line: 318, column: 6)
!459 = !DILocation(line: 318, column: 13, scope: !458)
!460 = !DILocation(line: 318, column: 6, scope: !146)
!461 = !DILocation(line: 319, column: 17, scope: !458)
!462 = !DILocation(line: 319, column: 4, scope: !458)
!463 = !DILocation(line: 319, column: 11, scope: !458)
!464 = !DILocation(line: 319, column: 3, scope: !458)
!465 = !DILocation(line: 321, column: 6, scope: !146)
!466 = !DILocation(line: 321, column: 2, scope: !146)
!467 = !DILocation(line: 322, column: 1, scope: !146)
!468 = !DILocation(line: 323, column: 6, scope: !469)
!469 = distinct !DILexicalBlock(scope: !146, file: !2, line: 323, column: 6)
!470 = !DILocation(line: 323, column: 19, scope: !469)
!471 = !DILocation(line: 323, column: 6, scope: !146)
!472 = !DILocation(line: 324, column: 3, scope: !469)
!473 = !DILocation(line: 325, column: 6, scope: !474)
!474 = distinct !DILexicalBlock(scope: !146, file: !2, line: 325, column: 6)
!475 = !DILocation(line: 325, column: 20, scope: !474)
!476 = !DILocation(line: 325, column: 6, scope: !146)
!477 = !DILocation(line: 326, column: 3, scope: !474)
!478 = !DILocation(line: 327, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !146, file: !2, line: 327, column: 6)
!480 = !DILocation(line: 327, column: 11, scope: !479)
!481 = !DILocation(line: 327, column: 6, scope: !146)
!482 = !DILocation(line: 328, column: 3, scope: !479)
!483 = !DILocation(line: 329, column: 9, scope: !146)
!484 = !DILocation(line: 329, column: 2, scope: !146)
!485 = !DILocation(line: 330, column: 1, scope: !146)
!486 = distinct !DISubprogram(name: "decompress_single", scope: !2, file: !2, line: 125, type: !487, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !496)
!487 = !DISubroutineType(types: !488)
!488 = !{!97, !489, !98, !495, !98, !117, !118}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !492, line: 17, baseType: !493)
!492 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !494, line: 21, baseType: !113)
!494 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !505, !506, !509, !510, !511}
!497 = !DILocalVariable(name: "in_buf", arg: 1, scope: !486, file: !2, line: 125, type: !489)
!498 = !DILocalVariable(name: "in_len", arg: 2, scope: !486, file: !2, line: 125, type: !98)
!499 = !DILocalVariable(name: "out_buf", arg: 3, scope: !486, file: !2, line: 125, type: !495)
!500 = !DILocalVariable(name: "out_len", arg: 4, scope: !486, file: !2, line: 126, type: !98)
!501 = !DILocalVariable(name: "in_pos", arg: 5, scope: !486, file: !2, line: 126, type: !117)
!502 = !DILocalVariable(name: "error", arg: 6, scope: !486, file: !2, line: 127, type: !118)
!503 = !DILocalVariable(name: "wksp_size", scope: !486, file: !2, line: 129, type: !504)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!505 = !DILocalVariable(name: "wksp", scope: !486, file: !2, line: 130, type: !93)
!506 = !DILocalVariable(name: "dctx", scope: !486, file: !2, line: 131, type: !507)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "zstd_dctx", file: !160, line: 185, baseType: !203)
!509 = !DILocalVariable(name: "err", scope: !486, file: !2, line: 132, type: !97)
!510 = !DILocalVariable(name: "ret", scope: !486, file: !2, line: 133, type: !168)
!511 = !DILabel(scope: !486, name: "out", file: !2, line: 159)
!512 = !DILocation(line: 125, column: 45, scope: !486)
!513 = !DILocation(line: 125, column: 58, scope: !486)
!514 = !DILocation(line: 125, column: 70, scope: !486)
!515 = !DILocation(line: 126, column: 12, scope: !486)
!516 = !DILocation(line: 126, column: 27, scope: !486)
!517 = !DILocation(line: 127, column: 14, scope: !486)
!518 = !DILocation(line: 129, column: 2, scope: !486)
!519 = !DILocation(line: 129, column: 15, scope: !486)
!520 = !DILocation(line: 129, column: 27, scope: !486)
!521 = !DILocation(line: 130, column: 2, scope: !486)
!522 = !DILocation(line: 130, column: 8, scope: !486)
!523 = !DILocation(line: 130, column: 15, scope: !486)
!524 = !DILocation(line: 131, column: 2, scope: !486)
!525 = !DILocation(line: 131, column: 13, scope: !486)
!526 = !DILocation(line: 131, column: 35, scope: !486)
!527 = !DILocation(line: 131, column: 41, scope: !486)
!528 = !DILocation(line: 131, column: 20, scope: !486)
!529 = !DILocation(line: 132, column: 2, scope: !486)
!530 = !DILocation(line: 132, column: 6, scope: !486)
!531 = !DILocation(line: 133, column: 2, scope: !486)
!532 = !DILocation(line: 133, column: 9, scope: !486)
!533 = !DILocation(line: 135, column: 6, scope: !534)
!534 = distinct !DILexicalBlock(scope: !486, file: !2, line: 135, column: 6)
!535 = !DILocation(line: 135, column: 11, scope: !534)
!536 = !DILocation(line: 135, column: 6, scope: !486)
!537 = !DILocation(line: 136, column: 3, scope: !538)
!538 = distinct !DILexicalBlock(scope: !534, file: !2, line: 135, column: 20)
!539 = !DILocation(line: 137, column: 7, scope: !538)
!540 = !DILocation(line: 138, column: 3, scope: !538)
!541 = !DILocation(line: 144, column: 40, scope: !486)
!542 = !DILocation(line: 144, column: 48, scope: !486)
!543 = !DILocation(line: 144, column: 8, scope: !486)
!544 = !DILocation(line: 144, column: 6, scope: !486)
!545 = !DILocation(line: 145, column: 26, scope: !486)
!546 = !DILocation(line: 145, column: 31, scope: !486)
!547 = !DILocation(line: 145, column: 8, scope: !486)
!548 = !DILocation(line: 145, column: 6, scope: !486)
!549 = !DILocation(line: 146, column: 6, scope: !550)
!550 = distinct !DILexicalBlock(scope: !486, file: !2, line: 146, column: 6)
!551 = !DILocation(line: 146, column: 6, scope: !486)
!552 = !DILocation(line: 147, column: 3, scope: !550)
!553 = !DILocation(line: 148, column: 17, scope: !486)
!554 = !DILocation(line: 148, column: 9, scope: !486)
!555 = !DILocation(line: 150, column: 29, scope: !486)
!556 = !DILocation(line: 150, column: 35, scope: !486)
!557 = !DILocation(line: 150, column: 44, scope: !486)
!558 = !DILocation(line: 150, column: 53, scope: !486)
!559 = !DILocation(line: 150, column: 61, scope: !486)
!560 = !DILocation(line: 150, column: 8, scope: !486)
!561 = !DILocation(line: 150, column: 6, scope: !486)
!562 = !DILocation(line: 151, column: 26, scope: !486)
!563 = !DILocation(line: 151, column: 31, scope: !486)
!564 = !DILocation(line: 151, column: 8, scope: !486)
!565 = !DILocation(line: 151, column: 6, scope: !486)
!566 = !DILocation(line: 152, column: 6, scope: !567)
!567 = distinct !DILexicalBlock(scope: !486, file: !2, line: 152, column: 6)
!568 = !DILocation(line: 152, column: 6, scope: !486)
!569 = !DILocation(line: 153, column: 3, scope: !567)
!570 = !DILocation(line: 155, column: 6, scope: !571)
!571 = distinct !DILexicalBlock(scope: !486, file: !2, line: 155, column: 6)
!572 = !DILocation(line: 155, column: 13, scope: !571)
!573 = !DILocation(line: 155, column: 6, scope: !486)
!574 = !DILocation(line: 156, column: 13, scope: !571)
!575 = !DILocation(line: 156, column: 4, scope: !571)
!576 = !DILocation(line: 156, column: 11, scope: !571)
!577 = !DILocation(line: 156, column: 3, scope: !571)
!578 = !DILocation(line: 158, column: 6, scope: !486)
!579 = !DILocation(line: 158, column: 2, scope: !486)
!580 = !DILocation(line: 159, column: 1, scope: !486)
!581 = !DILocation(line: 160, column: 6, scope: !582)
!582 = distinct !DILexicalBlock(scope: !486, file: !2, line: 160, column: 6)
!583 = !DILocation(line: 160, column: 11, scope: !582)
!584 = !DILocation(line: 160, column: 6, scope: !486)
!585 = !DILocation(line: 161, column: 3, scope: !582)
!586 = !DILocation(line: 162, column: 9, scope: !486)
!587 = !DILocation(line: 163, column: 1, scope: !486)
!588 = !DILocation(line: 162, column: 2, scope: !486)
!589 = !DISubprogram(name: "vmalloc", scope: !590, file: !590, line: 140, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!590 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!591 = !DISubroutineType(types: !592)
!592 = !{!93, !96}
!593 = !DISubprogram(name: "zstd_get_frame_header", scope: !160, file: !160, line: 444, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!594 = !DISubroutineType(types: !595)
!595 = !{!168, !596, !165, !168}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!597 = distinct !DISubprogram(name: "handle_zstd_error", scope: !2, file: !2, line: 90, type: !598, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{!97, !168, !118}
!600 = !{!601, !602, !603}
!601 = !DILocalVariable(name: "ret", arg: 1, scope: !597, file: !2, line: 90, type: !168)
!602 = !DILocalVariable(name: "error", arg: 2, scope: !597, file: !2, line: 90, type: !118)
!603 = !DILocalVariable(name: "err", scope: !597, file: !2, line: 92, type: !604)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "zstd_error_code", file: !160, line: 48, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_ErrorCode", file: !62, line: 67, baseType: !61)
!607 = !DILocation(line: 90, column: 42, scope: !597)
!608 = !DILocation(line: 90, column: 54, scope: !597)
!609 = !DILocation(line: 92, column: 2, scope: !597)
!610 = !DILocation(line: 92, column: 24, scope: !597)
!611 = !DILocation(line: 92, column: 50, scope: !597)
!612 = !DILocation(line: 92, column: 30, scope: !597)
!613 = !DILocation(line: 94, column: 21, scope: !614)
!614 = distinct !DILexicalBlock(scope: !597, file: !2, line: 94, column: 6)
!615 = !DILocation(line: 94, column: 7, scope: !614)
!616 = !DILocation(line: 94, column: 6, scope: !597)
!617 = !DILocation(line: 95, column: 3, scope: !614)
!618 = !DILocation(line: 101, column: 10, scope: !597)
!619 = !DILocation(line: 101, column: 2, scope: !597)
!620 = !DILocation(line: 103, column: 3, scope: !621)
!621 = distinct !DILexicalBlock(scope: !597, file: !2, line: 101, column: 15)
!622 = !DILocation(line: 104, column: 3, scope: !621)
!623 = !DILocation(line: 106, column: 3, scope: !621)
!624 = !DILocation(line: 107, column: 3, scope: !621)
!625 = !DILocation(line: 111, column: 3, scope: !621)
!626 = !DILocation(line: 112, column: 3, scope: !621)
!627 = !DILocation(line: 114, column: 3, scope: !621)
!628 = !DILocation(line: 115, column: 3, scope: !621)
!629 = !DILocation(line: 117, column: 2, scope: !597)
!630 = !DILocation(line: 118, column: 1, scope: !597)
!631 = !DISubprogram(name: "zstd_dstream_workspace_bound", scope: !160, file: !160, line: 353, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!632 = !DISubroutineType(types: !633)
!633 = !{!168, !168}
!634 = !DISubprogram(name: "zstd_init_dstream", scope: !160, file: !160, line: 366, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!635 = !DISubroutineType(types: !636)
!636 = !{!200, !168, !93, !168}
!637 = !DISubprogram(name: "zstd_decompress_stream", scope: !160, file: !160, line: 401, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!638 = !DISubroutineType(types: !639)
!639 = !{!168, !200, !640, !641}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!642 = !DISubprogram(name: "vfree", scope: !590, file: !590, line: 161, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !165}
!645 = !DISubprogram(name: "zstd_dctx_workspace_bound", scope: !160, file: !160, line: 193, type: !646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!646 = !DISubroutineType(types: !647)
!647 = !{!168}
!648 = !DISubprogram(name: "zstd_init_dctx", scope: !160, file: !160, line: 204, type: !649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!649 = !DISubroutineType(types: !650)
!650 = !{!507, !93, !168}
!651 = !DISubprogram(name: "zstd_find_frame_compressed_size", scope: !160, file: !160, line: 417, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!652 = !DISubroutineType(types: !653)
!653 = !{!168, !165, !168}
!654 = !DISubprogram(name: "zstd_decompress_dctx", scope: !160, file: !160, line: 220, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!655 = !DISubroutineType(types: !656)
!656 = !{!168, !507, !93, !168, !165, !168}
!657 = !DISubprogram(name: "zstd_get_error_code", scope: !160, file: !160, line: 56, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!658 = !DISubroutineType(types: !659)
!659 = !{!605, !168}
!660 = !DISubprogram(name: "zstd_is_error", scope: !160, file: !160, line: 43, type: !661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!661 = !DISubroutineType(types: !662)
!662 = !{!57, !168}
