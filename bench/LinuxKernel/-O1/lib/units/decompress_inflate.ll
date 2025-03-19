; ModuleID = 'lib/decompress_inflate.c'
source_filename = "lib/decompress_inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_stream_s = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_workspace = type { %struct.inflate_state, [32768 x i8] }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }
%struct.code = type { i8, i8, i16 }

@.str = private unnamed_addr constant [45 x i8] c"Out of memory while allocating output buffer\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [44 x i8] c"Out of memory while allocating input buffer\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [40 x i8] c"Out of memory while allocating z_stream\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [41 x i8] c"Out of memory while allocating workspace\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [16 x i8] c"Not a gzip file\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [13 x i8] c"header error\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [11 x i8] c"read error\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [20 x i8] c"uncompression error\00", align 1, !dbg !42
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !47

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @gunzip(ptr noundef %buf, i64 noundef %len, ptr noundef %fill, ptr noundef %flush, ptr noundef %out_buf, ptr noundef %pos, ptr noundef %error) #0 section ".init.text" align 16 !dbg !187 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %fill.addr = alloca ptr, align 8
  %flush.addr = alloca ptr, align 8
  %out_buf.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !200, metadata !DIExpression()), !dbg !207
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !201, metadata !DIExpression()), !dbg !208
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !202, metadata !DIExpression()), !dbg !209
  store ptr %flush, ptr %flush.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !203, metadata !DIExpression()), !dbg !210
  store ptr %out_buf, ptr %out_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_buf.addr, metadata !204, metadata !DIExpression()), !dbg !211
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !205, metadata !DIExpression()), !dbg !212
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !206, metadata !DIExpression()), !dbg !213
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !214
  %1 = load i64, ptr %len.addr, align 8, !dbg !215
  %2 = load ptr, ptr %fill.addr, align 8, !dbg !216
  %3 = load ptr, ptr %flush.addr, align 8, !dbg !217
  %4 = load ptr, ptr %out_buf.addr, align 8, !dbg !218
  %5 = load ptr, ptr %pos.addr, align 8, !dbg !219
  %6 = load ptr, ptr %error.addr, align 8, !dbg !220
  %call = call i32 @__gunzip(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 0, ptr noundef %5, ptr noundef %6) #11, !dbg !221
  ret i32 %call, !dbg !222
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @__gunzip(ptr noundef %buf, i64 noundef %len, ptr noundef %fill, ptr noundef %flush, ptr noundef %out_buf, i64 noundef %out_len, ptr noundef %pos, ptr noundef %error) #0 section ".init.text" align 16 !dbg !223 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %fill.addr = alloca ptr, align 8
  %flush.addr = alloca ptr, align 8
  %out_buf.addr = alloca ptr, align 8
  %out_len.addr = alloca i64, align 8
  %pos.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %zbuf = alloca ptr, align 8
  %strm = alloca ptr, align 8
  %rc = alloca i32, align 4
  %l = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !227, metadata !DIExpression()), !dbg !276
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !228, metadata !DIExpression()), !dbg !277
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !229, metadata !DIExpression()), !dbg !278
  store ptr %flush, ptr %flush.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !230, metadata !DIExpression()), !dbg !279
  store ptr %out_buf, ptr %out_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_buf.addr, metadata !231, metadata !DIExpression()), !dbg !280
  store i64 %out_len, ptr %out_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_len.addr, metadata !232, metadata !DIExpression()), !dbg !281
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !233, metadata !DIExpression()), !dbg !282
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !234, metadata !DIExpression()), !dbg !283
  call void @llvm.lifetime.start.p0(i64 8, ptr %zbuf) #12, !dbg !284
  call void @llvm.dbg.declare(metadata ptr %zbuf, metadata !235, metadata !DIExpression()), !dbg !285
  call void @llvm.lifetime.start.p0(i64 8, ptr %strm) #12, !dbg !286
  call void @llvm.dbg.declare(metadata ptr %strm, metadata !241, metadata !DIExpression()), !dbg !287
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #12, !dbg !288
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !266, metadata !DIExpression()), !dbg !289
  store i32 -1, ptr %rc, align 4, !dbg !290
  %0 = load ptr, ptr %flush.addr, align 8, !dbg !291
  %tobool = icmp ne ptr %0, null, !dbg !291
  br i1 %tobool, label %if.then, label %if.else, !dbg !293

if.then:                                          ; preds = %entry
  store i64 32768, ptr %out_len.addr, align 8, !dbg !294
  %1 = load i64, ptr %out_len.addr, align 8, !dbg !296
  %call = call noalias ptr @kmalloc(i64 noundef %1, i32 noundef 3264) #13, !dbg !296
  store ptr %call, ptr %out_buf.addr, align 8, !dbg !297
  br label %if.end3, !dbg !298

if.else:                                          ; preds = %entry
  %2 = load i64, ptr %out_len.addr, align 8, !dbg !299
  %tobool1 = icmp ne i64 %2, 0, !dbg !299
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !302

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr %out_buf.addr, align 8, !dbg !303
  %4 = ptrtoint ptr %3 to i64, !dbg !304
  %sub = sub i64 -1, %4, !dbg !305
  store i64 %sub, ptr %out_len.addr, align 8, !dbg !306
  br label %if.end, !dbg !307

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %5 = load ptr, ptr %out_buf.addr, align 8, !dbg !308
  %tobool4 = icmp ne ptr %5, null, !dbg !308
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !310

if.then5:                                         ; preds = %if.end3
  %6 = load ptr, ptr %error.addr, align 8, !dbg !311
  call void %6(ptr noundef @.str) #14, !dbg !311
  br label %gunzip_nomem1, !dbg !313

if.end6:                                          ; preds = %if.end3
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !314
  %tobool7 = icmp ne ptr %7, null, !dbg !314
  br i1 %tobool7, label %if.then8, label %if.else9, !dbg !316

if.then8:                                         ; preds = %if.end6
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !317
  store ptr %8, ptr %zbuf, align 8, !dbg !318
  br label %if.end11, !dbg !319

if.else9:                                         ; preds = %if.end6
  %call10 = call noalias ptr @kmalloc(i64 noundef 16384, i32 noundef 3264) #13, !dbg !320
  store ptr %call10, ptr %zbuf, align 8, !dbg !322
  store i64 0, ptr %len.addr, align 8, !dbg !323
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then8
  %9 = load ptr, ptr %zbuf, align 8, !dbg !324
  %tobool12 = icmp ne ptr %9, null, !dbg !324
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !326

if.then13:                                        ; preds = %if.end11
  %10 = load ptr, ptr %error.addr, align 8, !dbg !327
  call void %10(ptr noundef @.str.1) #14, !dbg !327
  br label %gunzip_nomem2, !dbg !329

if.end14:                                         ; preds = %if.end11
  %call15 = call noalias ptr @kmalloc(i64 noundef 96, i32 noundef 3264) #13, !dbg !330
  store ptr %call15, ptr %strm, align 8, !dbg !331
  %11 = load ptr, ptr %strm, align 8, !dbg !332
  %cmp = icmp eq ptr %11, null, !dbg !334
  br i1 %cmp, label %if.then16, label %if.end17, !dbg !335

if.then16:                                        ; preds = %if.end14
  %12 = load ptr, ptr %error.addr, align 8, !dbg !336
  call void %12(ptr noundef @.str.2) #14, !dbg !336
  br label %gunzip_nomem3, !dbg !338

if.end17:                                         ; preds = %if.end14
  %13 = load ptr, ptr %flush.addr, align 8, !dbg !339
  %tobool18 = icmp ne ptr %13, null, !dbg !339
  br i1 %tobool18, label %cond.true, label %cond.false, !dbg !339

cond.true:                                        ; preds = %if.end17
  %call19 = call i32 @zlib_inflate_workspacesize() #14, !dbg !339
  %conv = sext i32 %call19 to i64, !dbg !339
  br label %cond.end, !dbg !339

cond.false:                                       ; preds = %if.end17
  br label %cond.end, !dbg !339

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ 9544, %cond.false ], !dbg !339
  %call20 = call noalias ptr @kmalloc(i64 noundef %cond, i32 noundef 3264) #13, !dbg !339
  %14 = load ptr, ptr %strm, align 8, !dbg !340
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 8, !dbg !341
  store ptr %call20, ptr %workspace, align 8, !dbg !342
  %15 = load ptr, ptr %strm, align 8, !dbg !343
  %workspace21 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 8, !dbg !345
  %16 = load ptr, ptr %workspace21, align 8, !dbg !345
  %cmp22 = icmp eq ptr %16, null, !dbg !346
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !347

if.then24:                                        ; preds = %cond.end
  %17 = load ptr, ptr %error.addr, align 8, !dbg !348
  call void %17(ptr noundef @.str.3) #14, !dbg !348
  br label %gunzip_nomem4, !dbg !350

if.end25:                                         ; preds = %cond.end
  %18 = load ptr, ptr %fill.addr, align 8, !dbg !351
  %tobool26 = icmp ne ptr %18, null, !dbg !351
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !353

if.then27:                                        ; preds = %if.end25
  store ptr @nofill, ptr %fill.addr, align 8, !dbg !354
  br label %if.end28, !dbg !355

if.end28:                                         ; preds = %if.then27, %if.end25
  %19 = load i64, ptr %len.addr, align 8, !dbg !356
  %cmp29 = icmp eq i64 %19, 0, !dbg !358
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !359

if.then31:                                        ; preds = %if.end28
  %20 = load ptr, ptr %fill.addr, align 8, !dbg !360
  %21 = load ptr, ptr %zbuf, align 8, !dbg !361
  %call32 = call i64 %20(ptr noundef %21, i64 noundef 16384) #14, !dbg !360
  store i64 %call32, ptr %len.addr, align 8, !dbg !362
  br label %if.end33, !dbg !363

if.end33:                                         ; preds = %if.then31, %if.end28
  %22 = load i64, ptr %len.addr, align 8, !dbg !364
  %cmp34 = icmp slt i64 %22, 10, !dbg !366
  br i1 %cmp34, label %if.then49, label %lor.lhs.false, !dbg !367

lor.lhs.false:                                    ; preds = %if.end33
  %23 = load ptr, ptr %zbuf, align 8, !dbg !368
  %arrayidx = getelementptr i8, ptr %23, i64 0, !dbg !368
  %24 = load i8, ptr %arrayidx, align 1, !dbg !368
  %conv36 = zext i8 %24 to i32, !dbg !368
  %cmp37 = icmp ne i32 %conv36, 31, !dbg !369
  br i1 %cmp37, label %if.then49, label %lor.lhs.false39, !dbg !370

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  %25 = load ptr, ptr %zbuf, align 8, !dbg !371
  %arrayidx40 = getelementptr i8, ptr %25, i64 1, !dbg !371
  %26 = load i8, ptr %arrayidx40, align 1, !dbg !371
  %conv41 = zext i8 %26 to i32, !dbg !371
  %cmp42 = icmp ne i32 %conv41, 139, !dbg !372
  br i1 %cmp42, label %if.then49, label %lor.lhs.false44, !dbg !373

lor.lhs.false44:                                  ; preds = %lor.lhs.false39
  %27 = load ptr, ptr %zbuf, align 8, !dbg !374
  %arrayidx45 = getelementptr i8, ptr %27, i64 2, !dbg !374
  %28 = load i8, ptr %arrayidx45, align 1, !dbg !374
  %conv46 = zext i8 %28 to i32, !dbg !374
  %cmp47 = icmp ne i32 %conv46, 8, !dbg !375
  br i1 %cmp47, label %if.then49, label %if.end53, !dbg !376

if.then49:                                        ; preds = %lor.lhs.false44, %lor.lhs.false39, %lor.lhs.false, %if.end33
  %29 = load ptr, ptr %pos.addr, align 8, !dbg !377
  %tobool50 = icmp ne ptr %29, null, !dbg !377
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !380

if.then51:                                        ; preds = %if.then49
  %30 = load ptr, ptr %pos.addr, align 8, !dbg !381
  store i64 0, ptr %30, align 8, !dbg !382
  br label %if.end52, !dbg !383

if.end52:                                         ; preds = %if.then51, %if.then49
  %31 = load ptr, ptr %error.addr, align 8, !dbg !384
  call void %31(ptr noundef @.str.4) #14, !dbg !384
  br label %gunzip_5, !dbg !385

if.end53:                                         ; preds = %lor.lhs.false44
  %32 = load ptr, ptr %zbuf, align 8, !dbg !386
  %add.ptr = getelementptr i8, ptr %32, i64 10, !dbg !387
  %33 = load ptr, ptr %strm, align 8, !dbg !388
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 0, !dbg !389
  store ptr %add.ptr, ptr %next_in, align 8, !dbg !390
  %34 = load i64, ptr %len.addr, align 8, !dbg !391
  %sub54 = sub i64 %34, 10, !dbg !392
  %35 = load ptr, ptr %strm, align 8, !dbg !393
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 1, !dbg !394
  store i64 %sub54, ptr %avail_in, align 8, !dbg !395
  %36 = load ptr, ptr %zbuf, align 8, !dbg !396
  %arrayidx55 = getelementptr i8, ptr %36, i64 3, !dbg !396
  %37 = load i8, ptr %arrayidx55, align 1, !dbg !396
  %conv56 = zext i8 %37 to i32, !dbg !396
  %and = and i32 %conv56, 8, !dbg !398
  %tobool57 = icmp ne i32 %and, 0, !dbg !398
  br i1 %tobool57, label %if.then58, label %if.end67, !dbg !399

if.then58:                                        ; preds = %if.end53
  br label %do.body, !dbg !400

do.body:                                          ; preds = %do.cond, %if.then58
  %38 = load ptr, ptr %strm, align 8, !dbg !402
  %avail_in59 = getelementptr inbounds %struct.z_stream_s, ptr %38, i32 0, i32 1, !dbg !405
  %39 = load i64, ptr %avail_in59, align 8, !dbg !405
  %cmp60 = icmp eq i64 %39, 0, !dbg !406
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !407

if.then62:                                        ; preds = %do.body
  %40 = load ptr, ptr %error.addr, align 8, !dbg !408
  call void %40(ptr noundef @.str.5) #14, !dbg !408
  br label %gunzip_5, !dbg !410

if.end63:                                         ; preds = %do.body
  %41 = load ptr, ptr %strm, align 8, !dbg !411
  %avail_in64 = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 1, !dbg !412
  %42 = load i64, ptr %avail_in64, align 8, !dbg !413
  %dec = add i64 %42, -1, !dbg !413
  store i64 %dec, ptr %avail_in64, align 8, !dbg !413
  br label %do.cond, !dbg !414

do.cond:                                          ; preds = %if.end63
  %43 = load ptr, ptr %strm, align 8, !dbg !415
  %next_in65 = getelementptr inbounds %struct.z_stream_s, ptr %43, i32 0, i32 0, !dbg !416
  %44 = load ptr, ptr %next_in65, align 8, !dbg !417
  %incdec.ptr = getelementptr i8, ptr %44, i32 1, !dbg !417
  store ptr %incdec.ptr, ptr %next_in65, align 8, !dbg !417
  %45 = load i8, ptr %44, align 1, !dbg !418
  %tobool66 = icmp ne i8 %45, 0, !dbg !414
  br i1 %tobool66, label %do.body, label %do.end, !dbg !414, !llvm.loop !419

do.end:                                           ; preds = %do.cond
  br label %if.end67, !dbg !423

if.end67:                                         ; preds = %do.end, %if.end53
  %46 = load ptr, ptr %out_buf.addr, align 8, !dbg !424
  %47 = load ptr, ptr %strm, align 8, !dbg !425
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 3, !dbg !426
  store ptr %46, ptr %next_out, align 8, !dbg !427
  %48 = load i64, ptr %out_len.addr, align 8, !dbg !428
  %49 = load ptr, ptr %strm, align 8, !dbg !429
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %49, i32 0, i32 4, !dbg !430
  store i64 %48, ptr %avail_out, align 8, !dbg !431
  %50 = load ptr, ptr %strm, align 8, !dbg !432
  %call68 = call i32 @zlib_inflateInit2(ptr noundef %50, i32 noundef -15) #14, !dbg !433
  store i32 %call68, ptr %rc, align 4, !dbg !434
  %51 = load ptr, ptr %flush.addr, align 8, !dbg !435
  %tobool69 = icmp ne ptr %51, null, !dbg !435
  br i1 %tobool69, label %if.end74, label %if.then70, !dbg !437

if.then70:                                        ; preds = %if.end67
  %52 = load ptr, ptr %strm, align 8, !dbg !438
  %workspace71 = getelementptr inbounds %struct.z_stream_s, ptr %52, i32 0, i32 8, !dbg !438
  %53 = load ptr, ptr %workspace71, align 8, !dbg !438
  %inflate_state = getelementptr inbounds %struct.inflate_workspace, ptr %53, i32 0, i32 0, !dbg !440
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %inflate_state, i32 0, i32 9, !dbg !441
  store i32 0, ptr %wsize, align 4, !dbg !442
  %54 = load ptr, ptr %strm, align 8, !dbg !443
  %workspace72 = getelementptr inbounds %struct.z_stream_s, ptr %54, i32 0, i32 8, !dbg !443
  %55 = load ptr, ptr %workspace72, align 8, !dbg !443
  %inflate_state73 = getelementptr inbounds %struct.inflate_workspace, ptr %55, i32 0, i32 0, !dbg !444
  %window = getelementptr inbounds %struct.inflate_state, ptr %inflate_state73, i32 0, i32 12, !dbg !445
  store ptr null, ptr %window, align 8, !dbg !446
  br label %if.end74, !dbg !447

if.end74:                                         ; preds = %if.then70, %if.end67
  br label %while.cond, !dbg !448

while.cond:                                       ; preds = %if.end112, %if.end74
  %56 = load i32, ptr %rc, align 4, !dbg !449
  %cmp75 = icmp eq i32 %56, 0, !dbg !450
  br i1 %cmp75, label %while.body, label %while.end, !dbg !448

while.body:                                       ; preds = %while.cond
  %57 = load ptr, ptr %strm, align 8, !dbg !451
  %avail_in77 = getelementptr inbounds %struct.z_stream_s, ptr %57, i32 0, i32 1, !dbg !453
  %58 = load i64, ptr %avail_in77, align 8, !dbg !453
  %cmp78 = icmp eq i64 %58, 0, !dbg !454
  br i1 %cmp78, label %if.then80, label %if.end88, !dbg !455

if.then80:                                        ; preds = %while.body
  %59 = load ptr, ptr %fill.addr, align 8, !dbg !456
  %60 = load ptr, ptr %zbuf, align 8, !dbg !458
  %call81 = call i64 %59(ptr noundef %60, i64 noundef 16384) #14, !dbg !456
  store i64 %call81, ptr %len.addr, align 8, !dbg !459
  %61 = load i64, ptr %len.addr, align 8, !dbg !460
  %cmp82 = icmp slt i64 %61, 0, !dbg !462
  br i1 %cmp82, label %if.then84, label %if.end85, !dbg !463

if.then84:                                        ; preds = %if.then80
  store i32 -1, ptr %rc, align 4, !dbg !464
  %62 = load ptr, ptr %error.addr, align 8, !dbg !466
  call void %62(ptr noundef @.str.6) #14, !dbg !466
  br label %while.end, !dbg !467

if.end85:                                         ; preds = %if.then80
  %63 = load ptr, ptr %zbuf, align 8, !dbg !468
  %64 = load ptr, ptr %strm, align 8, !dbg !469
  %next_in86 = getelementptr inbounds %struct.z_stream_s, ptr %64, i32 0, i32 0, !dbg !470
  store ptr %63, ptr %next_in86, align 8, !dbg !471
  %65 = load i64, ptr %len.addr, align 8, !dbg !472
  %66 = load ptr, ptr %strm, align 8, !dbg !473
  %avail_in87 = getelementptr inbounds %struct.z_stream_s, ptr %66, i32 0, i32 1, !dbg !474
  store i64 %65, ptr %avail_in87, align 8, !dbg !475
  br label %if.end88, !dbg !476

if.end88:                                         ; preds = %if.end85, %while.body
  %67 = load ptr, ptr %strm, align 8, !dbg !477
  %call89 = call i32 @zlib_inflate(ptr noundef %67, i32 noundef 0) #14, !dbg !478
  store i32 %call89, ptr %rc, align 4, !dbg !479
  %68 = load ptr, ptr %flush.addr, align 8, !dbg !480
  %tobool90 = icmp ne ptr %68, null, !dbg !480
  br i1 %tobool90, label %land.lhs.true, label %if.end103, !dbg !481

land.lhs.true:                                    ; preds = %if.end88
  %69 = load ptr, ptr %strm, align 8, !dbg !482
  %next_out91 = getelementptr inbounds %struct.z_stream_s, ptr %69, i32 0, i32 3, !dbg !483
  %70 = load ptr, ptr %next_out91, align 8, !dbg !483
  %71 = load ptr, ptr %out_buf.addr, align 8, !dbg !484
  %cmp92 = icmp ugt ptr %70, %71, !dbg !485
  br i1 %cmp92, label %if.then94, label %if.end103, !dbg !486

if.then94:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #12, !dbg !487
  call void @llvm.dbg.declare(metadata ptr %l, metadata !267, metadata !DIExpression()), !dbg !488
  %72 = load ptr, ptr %strm, align 8, !dbg !489
  %next_out95 = getelementptr inbounds %struct.z_stream_s, ptr %72, i32 0, i32 3, !dbg !490
  %73 = load ptr, ptr %next_out95, align 8, !dbg !490
  %74 = load ptr, ptr %out_buf.addr, align 8, !dbg !491
  %sub.ptr.lhs.cast = ptrtoint ptr %73 to i64, !dbg !492
  %sub.ptr.rhs.cast = ptrtoint ptr %74 to i64, !dbg !492
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !492
  store i64 %sub.ptr.sub, ptr %l, align 8, !dbg !488
  %75 = load i64, ptr %l, align 8, !dbg !493
  %76 = load ptr, ptr %flush.addr, align 8, !dbg !495
  %77 = load ptr, ptr %out_buf.addr, align 8, !dbg !496
  %78 = load i64, ptr %l, align 8, !dbg !497
  %call96 = call i64 %76(ptr noundef %77, i64 noundef %78) #14, !dbg !495
  %cmp97 = icmp ne i64 %75, %call96, !dbg !498
  br i1 %cmp97, label %if.then99, label %if.end100, !dbg !499

if.then99:                                        ; preds = %if.then94
  store i32 -1, ptr %rc, align 4, !dbg !500
  %79 = load ptr, ptr %error.addr, align 8, !dbg !502
  call void %79(ptr noundef @.str.7) #14, !dbg !502
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !503

if.end100:                                        ; preds = %if.then94
  %80 = load ptr, ptr %out_buf.addr, align 8, !dbg !504
  %81 = load ptr, ptr %strm, align 8, !dbg !505
  %next_out101 = getelementptr inbounds %struct.z_stream_s, ptr %81, i32 0, i32 3, !dbg !506
  store ptr %80, ptr %next_out101, align 8, !dbg !507
  %82 = load i64, ptr %out_len.addr, align 8, !dbg !508
  %83 = load ptr, ptr %strm, align 8, !dbg !509
  %avail_out102 = getelementptr inbounds %struct.z_stream_s, ptr %83, i32 0, i32 4, !dbg !510
  store i64 %82, ptr %avail_out102, align 8, !dbg !511
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !512
  br label %cleanup, !dbg !512

cleanup:                                          ; preds = %if.end100, %if.then99
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #12, !dbg !512
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 10, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end103, !dbg !513

if.end103:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end88
  %84 = load i32, ptr %rc, align 4, !dbg !514
  %cmp104 = icmp eq i32 %84, 1, !dbg !516
  br i1 %cmp104, label %if.then106, label %if.else107, !dbg !517

if.then106:                                       ; preds = %if.end103
  store i32 0, ptr %rc, align 4, !dbg !518
  br label %while.end, !dbg !520

if.else107:                                       ; preds = %if.end103
  %85 = load i32, ptr %rc, align 4, !dbg !521
  %cmp108 = icmp ne i32 %85, 0, !dbg !523
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !524

if.then110:                                       ; preds = %if.else107
  %86 = load ptr, ptr %error.addr, align 8, !dbg !525
  call void %86(ptr noundef @.str.8) #14, !dbg !525
  store i32 -1, ptr %rc, align 4, !dbg !527
  br label %if.end111, !dbg !528

if.end111:                                        ; preds = %if.then110, %if.else107
  br label %if.end112

if.end112:                                        ; preds = %if.end111
  br label %while.cond, !dbg !448, !llvm.loop !529

while.end:                                        ; preds = %if.then106, %cleanup, %if.then84, %while.cond
  %87 = load ptr, ptr %strm, align 8, !dbg !531
  %call113 = call i32 @zlib_inflateEnd(ptr noundef %87) #14, !dbg !532
  %88 = load ptr, ptr %pos.addr, align 8, !dbg !533
  %tobool114 = icmp ne ptr %88, null, !dbg !533
  br i1 %tobool114, label %if.then115, label %if.end120, !dbg !535

if.then115:                                       ; preds = %while.end
  %89 = load ptr, ptr %strm, align 8, !dbg !536
  %next_in116 = getelementptr inbounds %struct.z_stream_s, ptr %89, i32 0, i32 0, !dbg !537
  %90 = load ptr, ptr %next_in116, align 8, !dbg !537
  %91 = load ptr, ptr %zbuf, align 8, !dbg !538
  %sub.ptr.lhs.cast117 = ptrtoint ptr %90 to i64, !dbg !539
  %sub.ptr.rhs.cast118 = ptrtoint ptr %91 to i64, !dbg !539
  %sub.ptr.sub119 = sub i64 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118, !dbg !539
  %add = add i64 %sub.ptr.sub119, 8, !dbg !540
  %92 = load ptr, ptr %pos.addr, align 8, !dbg !541
  store i64 %add, ptr %92, align 8, !dbg !542
  br label %if.end120, !dbg !543

if.end120:                                        ; preds = %if.then115, %while.end
  br label %gunzip_5, !dbg !533

gunzip_5:                                         ; preds = %if.end120, %if.then62, %if.end52
  call void @llvm.dbg.label(metadata !271), !dbg !544
  %93 = load ptr, ptr %strm, align 8, !dbg !545
  %workspace121 = getelementptr inbounds %struct.z_stream_s, ptr %93, i32 0, i32 8, !dbg !545
  %94 = load ptr, ptr %workspace121, align 8, !dbg !545
  call void @kfree(ptr noundef %94) #14, !dbg !545
  br label %gunzip_nomem4, !dbg !545

gunzip_nomem4:                                    ; preds = %gunzip_5, %if.then24
  call void @llvm.dbg.label(metadata !272), !dbg !546
  %95 = load ptr, ptr %strm, align 8, !dbg !547
  call void @kfree(ptr noundef %95) #14, !dbg !547
  br label %gunzip_nomem3, !dbg !547

gunzip_nomem3:                                    ; preds = %gunzip_nomem4, %if.then16
  call void @llvm.dbg.label(metadata !273), !dbg !548
  %96 = load ptr, ptr %buf.addr, align 8, !dbg !549
  %tobool122 = icmp ne ptr %96, null, !dbg !549
  br i1 %tobool122, label %if.end124, label %if.then123, !dbg !551

if.then123:                                       ; preds = %gunzip_nomem3
  %97 = load ptr, ptr %zbuf, align 8, !dbg !552
  call void @kfree(ptr noundef %97) #14, !dbg !552
  br label %if.end124, !dbg !552

if.end124:                                        ; preds = %if.then123, %gunzip_nomem3
  br label %gunzip_nomem2, !dbg !549

gunzip_nomem2:                                    ; preds = %if.end124, %if.then13
  call void @llvm.dbg.label(metadata !274), !dbg !553
  %98 = load ptr, ptr %flush.addr, align 8, !dbg !554
  %tobool125 = icmp ne ptr %98, null, !dbg !554
  br i1 %tobool125, label %if.then126, label %if.end127, !dbg !556

if.then126:                                       ; preds = %gunzip_nomem2
  %99 = load ptr, ptr %out_buf.addr, align 8, !dbg !557
  call void @kfree(ptr noundef %99) #14, !dbg !557
  br label %if.end127, !dbg !557

if.end127:                                        ; preds = %if.then126, %gunzip_nomem2
  br label %gunzip_nomem1, !dbg !554

gunzip_nomem1:                                    ; preds = %if.end127, %if.then5
  call void @llvm.dbg.label(metadata !275), !dbg !558
  %100 = load i32, ptr %rc, align 4, !dbg !559
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #12, !dbg !560
  call void @llvm.lifetime.end.p0(i64 8, ptr %strm) #12, !dbg !560
  call void @llvm.lifetime.end.p0(i64 8, ptr %zbuf) #12, !dbg !560
  ret i32 %100, !dbg !561

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !562 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !566, metadata !DIExpression()), !dbg !571
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !567, metadata !DIExpression()), !dbg !572
  %0 = load i64, ptr %size.addr, align 8, !dbg !573
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !574
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !575

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !576
  %tobool = icmp ne i64 %2, 0, !dbg !576
  br i1 %tobool, label %if.then, label %if.end7, !dbg !577

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !578
  call void @llvm.dbg.declare(metadata ptr %index, metadata !568, metadata !DIExpression()), !dbg !579
  %3 = load i64, ptr %size.addr, align 8, !dbg !580
  %cmp = icmp ugt i64 %3, 8192, !dbg !582
  br i1 %cmp, label %if.then1, label %if.end, !dbg !583

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !584
  %5 = load i32, ptr %flags.addr, align 4, !dbg !585
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #13, !dbg !586
  store ptr %call, ptr %retval, align 8, !dbg !587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !587

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !588
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !588
  store i32 %call2, ptr %index, align 4, !dbg !589
  %7 = load i32, ptr %flags.addr, align 4, !dbg !590
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !591
  %9 = ptrtoint ptr %8 to i64, !dbg !591
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !592
  %idxprom = zext i32 %call3 to i64, !dbg !593
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !593
  %10 = load i32, ptr %index, align 4, !dbg !594
  %idxprom4 = zext i32 %10 to i64, !dbg !593
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !593
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !593
  %12 = load i32, ptr %flags.addr, align 4, !dbg !595
  %13 = load i64, ptr %size.addr, align 8, !dbg !596
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #15, !dbg !597
  store ptr %call6, ptr %retval, align 8, !dbg !598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !598

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !599
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !600
  %15 = load i32, ptr %flags.addr, align 4, !dbg !601
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #13, !dbg !602
  store ptr %call8, ptr %retval, align 8, !dbg !603
  br label %return, !dbg !603

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !604
  ret ptr %16, !dbg !604
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !605 dso_local i32 @zlib_inflate_workspacesize() #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @nofill(ptr noundef %buffer, i64 noundef %len) #0 section ".init.text" align 16 !dbg !608 {
entry:
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !610, metadata !DIExpression()), !dbg !612
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !611, metadata !DIExpression()), !dbg !613
  ret i64 -1, !dbg !614
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !615 dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !621 dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !622 dso_local i32 @zlib_inflateEnd(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !625 dso_local void @kfree(ptr noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !630 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !631 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !637, metadata !DIExpression()), !dbg !639
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !638, metadata !DIExpression()), !dbg !640
  %0 = load i64, ptr %size.addr, align 8, !dbg !641
  %tobool = icmp ne i64 %0, 0, !dbg !641
  br i1 %tobool, label %if.end, label %if.then, !dbg !643

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !644
  br label %return, !dbg !644

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !645
  %cmp = icmp ule i64 %1, 8, !dbg !647
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !648

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !649
  br label %return, !dbg !649

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !650
  %cmp3 = icmp ugt i64 %2, 64, !dbg !652
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !653

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !654
  %cmp4 = icmp ule i64 %3, 96, !dbg !655
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !656

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !657
  br label %return, !dbg !657

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !658
  %cmp7 = icmp ugt i64 %4, 128, !dbg !660
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !661

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !662
  %cmp9 = icmp ule i64 %5, 192, !dbg !663
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !664

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !665
  br label %return, !dbg !665

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !666
  %cmp12 = icmp ule i64 %6, 8, !dbg !668
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !669

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !670
  br label %return, !dbg !670

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !671
  %cmp15 = icmp ule i64 %7, 16, !dbg !673
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !674

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !675
  br label %return, !dbg !675

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !676
  %cmp18 = icmp ule i64 %8, 32, !dbg !678
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !679

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !680
  br label %return, !dbg !680

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !681
  %cmp21 = icmp ule i64 %9, 64, !dbg !683
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !684

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !685
  br label %return, !dbg !685

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !686
  %cmp24 = icmp ule i64 %10, 128, !dbg !688
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !689

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !690
  br label %return, !dbg !690

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !691
  %cmp27 = icmp ule i64 %11, 256, !dbg !693
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !694

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !695
  br label %return, !dbg !695

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !696
  %cmp30 = icmp ule i64 %12, 512, !dbg !698
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !699

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !700
  br label %return, !dbg !700

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !701
  %cmp33 = icmp ule i64 %13, 1024, !dbg !703
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !704

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !705
  br label %return, !dbg !705

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !706
  %cmp36 = icmp ule i64 %14, 2048, !dbg !708
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !709

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !710
  br label %return, !dbg !710

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !711
  %cmp39 = icmp ule i64 %15, 4096, !dbg !713
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !714

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !715
  br label %return, !dbg !715

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !716
  %cmp42 = icmp ule i64 %16, 8192, !dbg !718
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !719

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !720
  br label %return, !dbg !720

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !721
  %cmp45 = icmp ule i64 %17, 16384, !dbg !723
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !724

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !725
  br label %return, !dbg !725

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !726
  %cmp48 = icmp ule i64 %18, 32768, !dbg !728
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !729

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !730
  br label %return, !dbg !730

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !731
  %cmp51 = icmp ule i64 %19, 65536, !dbg !733
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !734

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !735
  br label %return, !dbg !735

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !736
  %cmp54 = icmp ule i64 %20, 131072, !dbg !738
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !739

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !740
  br label %return, !dbg !740

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !741
  %cmp57 = icmp ule i64 %21, 262144, !dbg !743
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !744

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !745
  br label %return, !dbg !745

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !746
  %cmp60 = icmp ule i64 %22, 524288, !dbg !748
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !749

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !750
  br label %return, !dbg !750

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !751
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !753
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !754

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !755
  br label %return, !dbg !755

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !756
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !758
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !759

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !760
  br label %return, !dbg !760

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !761, !range !763, !noundef !764
  %tobool69 = trunc i8 %25 to i1, !dbg !761
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !765

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !766

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #16, !dbg !767, !srcloc !770
  unreachable, !dbg !767

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !771

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !772

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !773

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !775

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !773

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 480, i32 0, i64 12) #12, !dbg !777, !srcloc !779
  br label %do.end75, !dbg !777

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !773

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !780
  br label %return, !dbg !780

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !781
  ret i32 %26, !dbg !781
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !782 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !788 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !792, metadata !DIExpression()), !dbg !794
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !793, metadata !DIExpression()), !dbg !795
  %0 = load i32, ptr %flags.addr, align 4, !dbg !796
  %and = and i32 %0, 17, !dbg !796
  %cmp = icmp eq i32 %and, 0, !dbg !796
  %lnot = xor i1 %cmp, true, !dbg !796
  %lnot1 = xor i1 %lnot, true, !dbg !796
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !796
  %conv = sext i32 %lnot.ext to i64, !dbg !796
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !796
  %tobool = icmp ne i64 %expval, 0, !dbg !796
  br i1 %tobool, label %if.then, label %if.end, !dbg !798

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !799
  br label %return, !dbg !799

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !800
  %and2 = and i32 %1, 1, !dbg !802
  %tobool3 = icmp ne i32 %and2, 0, !dbg !802
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !803

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !804
  br label %return, !dbg !804

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !805
  br label %return, !dbg !805

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !807
  ret i32 %2, !dbg !807
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !808 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !809 dso_local void @__compiletime_assert_245() #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind }
attributes #13 = { noredzone allocsize(0) }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(2) }
attributes #16 = { noredzone noreturn }

!llvm.dbg.cu = !{!53}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/decompress_inflate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "496642670b0213029d1d85012a4b3264")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 45)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 44)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 40)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 41)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 16)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 13)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 11)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 12)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 20)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !49, line: 480, type: !50, isLocal: true, isDefinition: true)
!49 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 21)
!53 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.decompress_inflate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/decompress_inflate\22 -D KBUILD_BASENAME=\22decompress_inflate\22 -D KBUILD_MODNAME=\22decompress_inflate\22 -D __KBUILD_MODNAME=kmod_decompress_inflate -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/decompress_inflate.ll lib/decompress_inflate.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !103, globals: !177, splitDebugInlining: false, nameTableKind: None)
!54 = !{!55, !89, !94}
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 17, baseType: !57, size: 32, elements: !58)
!56 = !DIFile(filename: "lib/zlib_inflate/inflate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ffb6590e74d2419381e17a965c0acd6")
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!59 = !DIEnumerator(name: "HEAD", value: 0)
!60 = !DIEnumerator(name: "FLAGS", value: 1)
!61 = !DIEnumerator(name: "TIME", value: 2)
!62 = !DIEnumerator(name: "OS", value: 3)
!63 = !DIEnumerator(name: "EXLEN", value: 4)
!64 = !DIEnumerator(name: "EXTRA", value: 5)
!65 = !DIEnumerator(name: "NAME", value: 6)
!66 = !DIEnumerator(name: "COMMENT", value: 7)
!67 = !DIEnumerator(name: "HCRC", value: 8)
!68 = !DIEnumerator(name: "DICTID", value: 9)
!69 = !DIEnumerator(name: "DICT", value: 10)
!70 = !DIEnumerator(name: "TYPE", value: 11)
!71 = !DIEnumerator(name: "TYPEDO", value: 12)
!72 = !DIEnumerator(name: "STORED", value: 13)
!73 = !DIEnumerator(name: "COPY", value: 14)
!74 = !DIEnumerator(name: "TABLE", value: 15)
!75 = !DIEnumerator(name: "LENLENS", value: 16)
!76 = !DIEnumerator(name: "CODELENS", value: 17)
!77 = !DIEnumerator(name: "LEN", value: 18)
!78 = !DIEnumerator(name: "LENEXT", value: 19)
!79 = !DIEnumerator(name: "DIST", value: 20)
!80 = !DIEnumerator(name: "DISTEXT", value: 21)
!81 = !DIEnumerator(name: "MATCH", value: 22)
!82 = !DIEnumerator(name: "LIT", value: 23)
!83 = !DIEnumerator(name: "CHECK", value: 24)
!84 = !DIEnumerator(name: "LENGTH", value: 25)
!85 = !DIEnumerator(name: "DONE", value: 26)
!86 = !DIEnumerator(name: "BAD", value: 27)
!87 = !DIEnumerator(name: "MEM", value: 28)
!88 = !DIEnumerator(name: "SYNC", value: 29)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 10, baseType: !57, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!91 = !{!92, !93}
!92 = !DIEnumerator(name: "false", value: 0)
!93 = !DIEnumerator(name: "true", value: 1)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !49, line: 364, baseType: !57, size: 32, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !102}
!96 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!97 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!98 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!99 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!100 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!101 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!102 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!103 = !{!104, !106, !111, !112, !110}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !105, line: 154, baseType: !57)
!105 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 61, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !108, line: 72, baseType: !109)
!108 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !108, line: 16, baseType: !110)
!110 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inflate_workspace", file: !114, line: 22, size: 338496, elements: !115)
!114 = !DIFile(filename: "lib/zlib_inflate/infutil.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a65eaf7481591cefdcaf8ac124df4f2")
!115 = !{!116, !173}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "inflate_state", scope: !113, file: !114, line: 23, baseType: !117, size: 76352)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inflate_state", file: !56, line: 74, size: 76352, elements: !118)
!118 = !{!119, !121, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !136, !137, !138, !139, !140, !141, !152, !153, !154, !155, !156, !157, !158, !159, !161, !165, !169}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !117, file: !56, line: 75, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "inflate_mode", file: !56, line: 48, baseType: !55)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !117, file: !56, line: 76, baseType: !122, size: 32, offset: 32)
!122 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "wrap", scope: !117, file: !56, line: 77, baseType: !122, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "havedict", scope: !117, file: !56, line: 78, baseType: !122, size: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !56, line: 79, baseType: !122, size: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !117, file: !56, line: 80, baseType: !57, size: 32, offset: 160)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !117, file: !56, line: 81, baseType: !110, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !117, file: !56, line: 82, baseType: !110, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "wbits", scope: !117, file: !56, line: 85, baseType: !57, size: 32, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "wsize", scope: !117, file: !56, line: 86, baseType: !57, size: 32, offset: 352)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "whave", scope: !117, file: !56, line: 87, baseType: !57, size: 32, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !117, file: !56, line: 88, baseType: !57, size: 32, offset: 416)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !117, file: !56, line: 89, baseType: !134, size: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "hold", scope: !117, file: !56, line: 91, baseType: !110, size: 64, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !117, file: !56, line: 92, baseType: !57, size: 32, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !117, file: !56, line: 94, baseType: !57, size: 32, offset: 608)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !117, file: !56, line: 95, baseType: !57, size: 32, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !117, file: !56, line: 97, baseType: !57, size: 32, offset: 672)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "lencode", scope: !117, file: !56, line: 99, baseType: !142, size: 64, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "code", file: !145, line: 31, baseType: !146)
!145 = !DIFile(filename: "lib/zlib_inflate/inftrees.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "196f76384b7df69194d57eded4138662")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !145, line: 27, size: 32, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !146, file: !145, line: 28, baseType: !135, size: 8)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !146, file: !145, line: 29, baseType: !135, size: 8, offset: 8)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !146, file: !145, line: 30, baseType: !151, size: 16, offset: 16)
!151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "distcode", scope: !117, file: !56, line: 100, baseType: !142, size: 64, offset: 768)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "lenbits", scope: !117, file: !56, line: 101, baseType: !57, size: 32, offset: 832)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "distbits", scope: !117, file: !56, line: 102, baseType: !57, size: 32, offset: 864)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ncode", scope: !117, file: !56, line: 104, baseType: !57, size: 32, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !117, file: !56, line: 105, baseType: !57, size: 32, offset: 928)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ndist", scope: !117, file: !56, line: 106, baseType: !57, size: 32, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !117, file: !56, line: 107, baseType: !57, size: 32, offset: 992)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !56, line: 108, baseType: !160, size: 64, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "lens", scope: !117, file: !56, line: 109, baseType: !162, size: 5120, offset: 1088)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 5120, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !117, file: !56, line: 110, baseType: !166, size: 4608, offset: 6208)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 4608, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 288)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "codes", scope: !117, file: !56, line: 111, baseType: !170, size: 65536, offset: 10816)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 65536, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 2048)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "working_window", scope: !113, file: !114, line: 28, baseType: !174, size: 262144, offset: 76352)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 262144, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 32768)
!177 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47}
!178 = !{i32 7, !"Dwarf Version", i32 5}
!179 = !{i32 2, !"Debug Info Version", i32 3}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 8, !"cf-protection-branch", i32 1}
!182 = !{i32 4, !"function_return_thunk_extern", i32 1}
!183 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!184 = !{i32 1, !"Code Model", i32 2}
!185 = !{i32 1, !"override-stack-alignment", i32 8}
!186 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!187 = distinct !DISubprogram(name: "gunzip", scope: !2, file: !2, line: 200, type: !188, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !199)
!188 = !DISubroutineType(types: !189)
!189 = !{!122, !134, !190, !191, !191, !134, !194, !195}
!190 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!190, !111, !110}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!199 = !{!200, !201, !202, !203, !204, !205, !206}
!200 = !DILocalVariable(name: "buf", arg: 1, scope: !187, file: !2, line: 200, type: !134)
!201 = !DILocalVariable(name: "len", arg: 2, scope: !187, file: !2, line: 200, type: !190)
!202 = !DILocalVariable(name: "fill", arg: 3, scope: !187, file: !2, line: 201, type: !191)
!203 = !DILocalVariable(name: "flush", arg: 4, scope: !187, file: !2, line: 202, type: !191)
!204 = !DILocalVariable(name: "out_buf", arg: 5, scope: !187, file: !2, line: 203, type: !134)
!205 = !DILocalVariable(name: "pos", arg: 6, scope: !187, file: !2, line: 204, type: !194)
!206 = !DILocalVariable(name: "error", arg: 7, scope: !187, file: !2, line: 205, type: !195)
!207 = !DILocation(line: 200, column: 39, scope: !187)
!208 = !DILocation(line: 200, column: 49, scope: !187)
!209 = !DILocation(line: 201, column: 17, scope: !187)
!210 = !DILocation(line: 202, column: 17, scope: !187)
!211 = !DILocation(line: 203, column: 25, scope: !187)
!212 = !DILocation(line: 204, column: 16, scope: !187)
!213 = !DILocation(line: 205, column: 17, scope: !187)
!214 = !DILocation(line: 207, column: 18, scope: !187)
!215 = !DILocation(line: 207, column: 23, scope: !187)
!216 = !DILocation(line: 207, column: 28, scope: !187)
!217 = !DILocation(line: 207, column: 34, scope: !187)
!218 = !DILocation(line: 207, column: 41, scope: !187)
!219 = !DILocation(line: 207, column: 53, scope: !187)
!220 = !DILocation(line: 207, column: 58, scope: !187)
!221 = !DILocation(line: 207, column: 9, scope: !187)
!222 = !DILocation(line: 207, column: 2, scope: !187)
!223 = distinct !DISubprogram(name: "__gunzip", scope: !2, file: !2, line: 42, type: !224, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !226)
!224 = !DISubroutineType(types: !225)
!225 = !{!122, !134, !190, !191, !191, !134, !190, !194, !195}
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !241, !266, !267, !271, !272, !273, !274, !275}
!227 = !DILocalVariable(name: "buf", arg: 1, scope: !223, file: !2, line: 42, type: !134)
!228 = !DILocalVariable(name: "len", arg: 2, scope: !223, file: !2, line: 42, type: !190)
!229 = !DILocalVariable(name: "fill", arg: 3, scope: !223, file: !2, line: 43, type: !191)
!230 = !DILocalVariable(name: "flush", arg: 4, scope: !223, file: !2, line: 44, type: !191)
!231 = !DILocalVariable(name: "out_buf", arg: 5, scope: !223, file: !2, line: 45, type: !134)
!232 = !DILocalVariable(name: "out_len", arg: 6, scope: !223, file: !2, line: 45, type: !190)
!233 = !DILocalVariable(name: "pos", arg: 7, scope: !223, file: !2, line: 46, type: !194)
!234 = !DILocalVariable(name: "error", arg: 8, scope: !223, file: !2, line: 47, type: !195)
!235 = !DILocalVariable(name: "zbuf", scope: !223, file: !2, line: 48, type: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !238, line: 17, baseType: !239)
!238 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !240, line: 21, baseType: !135)
!240 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!241 = !DILocalVariable(name: "strm", scope: !223, file: !2, line: 49, type: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !244, line: 84, size: 768, elements: !245)
!244 = !DIFile(filename: "./include/linux/zlib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "959204f2bbe0607cb05d45364420f12e")
!245 = !{!246, !251, !253, !254, !256, !257, !258, !259, !262, !263, !264, !265}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !243, file: !244, line: 85, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !250, line: 52, baseType: !135)
!250 = !DIFile(filename: "./include/linux/zconf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "66c2d885369ef0adc0f1780a0c1150c2")
!251 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !243, file: !244, line: 86, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !250, line: 54, baseType: !110)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !243, file: !244, line: 87, baseType: !252, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !243, file: !244, line: 89, baseType: !255, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !243, file: !244, line: 90, baseType: !252, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !243, file: !244, line: 91, baseType: !252, size: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !243, file: !244, line: 93, baseType: !198, size: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !243, file: !244, line: 94, baseType: !260, size: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !244, line: 82, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !243, file: !244, line: 96, baseType: !111, size: 64, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !243, file: !244, line: 98, baseType: !122, size: 32, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !243, file: !244, line: 99, baseType: !252, size: 64, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !243, file: !244, line: 100, baseType: !252, size: 64, offset: 704)
!266 = !DILocalVariable(name: "rc", scope: !223, file: !2, line: 50, type: !122)
!267 = !DILocalVariable(name: "l", scope: !268, file: !2, line: 160, type: !190)
!268 = distinct !DILexicalBlock(scope: !269, file: !2, line: 159, column: 42)
!269 = distinct !DILexicalBlock(scope: !270, file: !2, line: 159, column: 7)
!270 = distinct !DILexicalBlock(scope: !223, file: !2, line: 144, column: 21)
!271 = !DILabel(scope: !223, name: "gunzip_5", file: !2, line: 185)
!272 = !DILabel(scope: !223, name: "gunzip_nomem4", file: !2, line: 187)
!273 = !DILabel(scope: !223, name: "gunzip_nomem3", file: !2, line: 189)
!274 = !DILabel(scope: !223, name: "gunzip_nomem2", file: !2, line: 192)
!275 = !DILabel(scope: !223, name: "gunzip_nomem1", file: !2, line: 195)
!276 = !DILocation(line: 42, column: 41, scope: !223)
!277 = !DILocation(line: 42, column: 51, scope: !223)
!278 = !DILocation(line: 43, column: 17, scope: !223)
!279 = !DILocation(line: 44, column: 17, scope: !223)
!280 = !DILocation(line: 45, column: 25, scope: !223)
!281 = !DILocation(line: 45, column: 39, scope: !223)
!282 = !DILocation(line: 46, column: 16, scope: !223)
!283 = !DILocation(line: 47, column: 16, scope: !223)
!284 = !DILocation(line: 48, column: 2, scope: !223)
!285 = !DILocation(line: 48, column: 6, scope: !223)
!286 = !DILocation(line: 49, column: 2, scope: !223)
!287 = !DILocation(line: 49, column: 21, scope: !223)
!288 = !DILocation(line: 50, column: 2, scope: !223)
!289 = !DILocation(line: 50, column: 6, scope: !223)
!290 = !DILocation(line: 52, column: 5, scope: !223)
!291 = !DILocation(line: 53, column: 6, scope: !292)
!292 = distinct !DILexicalBlock(scope: !223, file: !2, line: 53, column: 6)
!293 = !DILocation(line: 53, column: 6, scope: !223)
!294 = !DILocation(line: 54, column: 11, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !2, line: 53, column: 13)
!296 = !DILocation(line: 55, column: 13, scope: !295)
!297 = !DILocation(line: 55, column: 11, scope: !295)
!298 = !DILocation(line: 56, column: 2, scope: !295)
!299 = !DILocation(line: 57, column: 8, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !2, line: 57, column: 7)
!301 = distinct !DILexicalBlock(scope: !292, file: !2, line: 56, column: 9)
!302 = !DILocation(line: 57, column: 7, scope: !301)
!303 = !DILocation(line: 58, column: 37, scope: !300)
!304 = !DILocation(line: 58, column: 29, scope: !300)
!305 = !DILocation(line: 58, column: 27, scope: !300)
!306 = !DILocation(line: 58, column: 12, scope: !300)
!307 = !DILocation(line: 58, column: 4, scope: !300)
!308 = !DILocation(line: 60, column: 7, scope: !309)
!309 = distinct !DILexicalBlock(scope: !223, file: !2, line: 60, column: 6)
!310 = !DILocation(line: 60, column: 6, scope: !223)
!311 = !DILocation(line: 61, column: 3, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !2, line: 60, column: 16)
!313 = !DILocation(line: 62, column: 3, scope: !312)
!314 = !DILocation(line: 65, column: 6, scope: !315)
!315 = distinct !DILexicalBlock(scope: !223, file: !2, line: 65, column: 6)
!316 = !DILocation(line: 65, column: 6, scope: !223)
!317 = !DILocation(line: 66, column: 10, scope: !315)
!318 = !DILocation(line: 66, column: 8, scope: !315)
!319 = !DILocation(line: 66, column: 3, scope: !315)
!320 = !DILocation(line: 68, column: 10, scope: !321)
!321 = distinct !DILexicalBlock(scope: !315, file: !2, line: 67, column: 7)
!322 = !DILocation(line: 68, column: 8, scope: !321)
!323 = !DILocation(line: 69, column: 7, scope: !321)
!324 = !DILocation(line: 71, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !223, file: !2, line: 71, column: 6)
!326 = !DILocation(line: 71, column: 6, scope: !223)
!327 = !DILocation(line: 72, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !2, line: 71, column: 13)
!329 = !DILocation(line: 73, column: 3, scope: !328)
!330 = !DILocation(line: 76, column: 9, scope: !223)
!331 = !DILocation(line: 76, column: 7, scope: !223)
!332 = !DILocation(line: 77, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !223, file: !2, line: 77, column: 6)
!334 = !DILocation(line: 77, column: 11, scope: !333)
!335 = !DILocation(line: 77, column: 6, scope: !223)
!336 = !DILocation(line: 78, column: 3, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !2, line: 77, column: 20)
!338 = !DILocation(line: 79, column: 3, scope: !337)
!339 = !DILocation(line: 82, column: 20, scope: !223)
!340 = !DILocation(line: 82, column: 2, scope: !223)
!341 = !DILocation(line: 82, column: 8, scope: !223)
!342 = !DILocation(line: 82, column: 18, scope: !223)
!343 = !DILocation(line: 89, column: 6, scope: !344)
!344 = distinct !DILexicalBlock(scope: !223, file: !2, line: 89, column: 6)
!345 = !DILocation(line: 89, column: 12, scope: !344)
!346 = !DILocation(line: 89, column: 22, scope: !344)
!347 = !DILocation(line: 89, column: 6, scope: !223)
!348 = !DILocation(line: 90, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !344, file: !2, line: 89, column: 31)
!350 = !DILocation(line: 91, column: 3, scope: !349)
!351 = !DILocation(line: 94, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !223, file: !2, line: 94, column: 6)
!353 = !DILocation(line: 94, column: 6, scope: !223)
!354 = !DILocation(line: 95, column: 8, scope: !352)
!355 = !DILocation(line: 95, column: 3, scope: !352)
!356 = !DILocation(line: 97, column: 6, scope: !357)
!357 = distinct !DILexicalBlock(scope: !223, file: !2, line: 97, column: 6)
!358 = !DILocation(line: 97, column: 10, scope: !357)
!359 = !DILocation(line: 97, column: 6, scope: !223)
!360 = !DILocation(line: 98, column: 9, scope: !357)
!361 = !DILocation(line: 98, column: 14, scope: !357)
!362 = !DILocation(line: 98, column: 7, scope: !357)
!363 = !DILocation(line: 98, column: 3, scope: !357)
!364 = !DILocation(line: 101, column: 6, scope: !365)
!365 = distinct !DILexicalBlock(scope: !223, file: !2, line: 101, column: 6)
!366 = !DILocation(line: 101, column: 10, scope: !365)
!367 = !DILocation(line: 101, column: 15, scope: !365)
!368 = !DILocation(line: 102, column: 5, scope: !365)
!369 = !DILocation(line: 102, column: 13, scope: !365)
!370 = !DILocation(line: 102, column: 21, scope: !365)
!371 = !DILocation(line: 102, column: 24, scope: !365)
!372 = !DILocation(line: 102, column: 32, scope: !365)
!373 = !DILocation(line: 102, column: 40, scope: !365)
!374 = !DILocation(line: 102, column: 43, scope: !365)
!375 = !DILocation(line: 102, column: 51, scope: !365)
!376 = !DILocation(line: 101, column: 6, scope: !223)
!377 = !DILocation(line: 103, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !2, line: 103, column: 7)
!379 = distinct !DILexicalBlock(scope: !365, file: !2, line: 102, column: 60)
!380 = !DILocation(line: 103, column: 7, scope: !379)
!381 = !DILocation(line: 104, column: 5, scope: !378)
!382 = !DILocation(line: 104, column: 9, scope: !378)
!383 = !DILocation(line: 104, column: 4, scope: !378)
!384 = !DILocation(line: 105, column: 3, scope: !379)
!385 = !DILocation(line: 106, column: 3, scope: !379)
!386 = !DILocation(line: 112, column: 18, scope: !223)
!387 = !DILocation(line: 112, column: 23, scope: !223)
!388 = !DILocation(line: 112, column: 2, scope: !223)
!389 = !DILocation(line: 112, column: 8, scope: !223)
!390 = !DILocation(line: 112, column: 16, scope: !223)
!391 = !DILocation(line: 113, column: 19, scope: !223)
!392 = !DILocation(line: 113, column: 23, scope: !223)
!393 = !DILocation(line: 113, column: 2, scope: !223)
!394 = !DILocation(line: 113, column: 8, scope: !223)
!395 = !DILocation(line: 113, column: 17, scope: !223)
!396 = !DILocation(line: 115, column: 6, scope: !397)
!397 = distinct !DILexicalBlock(scope: !223, file: !2, line: 115, column: 6)
!398 = !DILocation(line: 115, column: 14, scope: !397)
!399 = !DILocation(line: 115, column: 6, scope: !223)
!400 = !DILocation(line: 116, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !2, line: 115, column: 21)
!402 = !DILocation(line: 122, column: 8, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !2, line: 122, column: 8)
!404 = distinct !DILexicalBlock(scope: !401, file: !2, line: 116, column: 6)
!405 = !DILocation(line: 122, column: 14, scope: !403)
!406 = !DILocation(line: 122, column: 23, scope: !403)
!407 = !DILocation(line: 122, column: 8, scope: !404)
!408 = !DILocation(line: 123, column: 5, scope: !409)
!409 = distinct !DILexicalBlock(scope: !403, file: !2, line: 122, column: 29)
!410 = !DILocation(line: 124, column: 5, scope: !409)
!411 = !DILocation(line: 126, column: 6, scope: !404)
!412 = !DILocation(line: 126, column: 12, scope: !404)
!413 = !DILocation(line: 126, column: 4, scope: !404)
!414 = !DILocation(line: 127, column: 3, scope: !404)
!415 = !DILocation(line: 127, column: 13, scope: !401)
!416 = !DILocation(line: 127, column: 19, scope: !401)
!417 = !DILocation(line: 127, column: 26, scope: !401)
!418 = !DILocation(line: 127, column: 12, scope: !401)
!419 = distinct !{!419, !400, !420, !421, !422}
!420 = !DILocation(line: 127, column: 28, scope: !401)
!421 = !{!"llvm.loop.mustprogress"}
!422 = !{!"llvm.loop.unroll.disable"}
!423 = !DILocation(line: 128, column: 2, scope: !401)
!424 = !DILocation(line: 130, column: 19, scope: !223)
!425 = !DILocation(line: 130, column: 2, scope: !223)
!426 = !DILocation(line: 130, column: 8, scope: !223)
!427 = !DILocation(line: 130, column: 17, scope: !223)
!428 = !DILocation(line: 131, column: 20, scope: !223)
!429 = !DILocation(line: 131, column: 2, scope: !223)
!430 = !DILocation(line: 131, column: 8, scope: !223)
!431 = !DILocation(line: 131, column: 18, scope: !223)
!432 = !DILocation(line: 133, column: 25, scope: !223)
!433 = !DILocation(line: 133, column: 7, scope: !223)
!434 = !DILocation(line: 133, column: 5, scope: !223)
!435 = !DILocation(line: 138, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !223, file: !2, line: 138, column: 6)
!437 = !DILocation(line: 138, column: 6, scope: !223)
!438 = !DILocation(line: 139, column: 3, scope: !439)
!439 = distinct !DILexicalBlock(scope: !436, file: !2, line: 138, column: 14)
!440 = !DILocation(line: 139, column: 13, scope: !439)
!441 = !DILocation(line: 139, column: 27, scope: !439)
!442 = !DILocation(line: 139, column: 33, scope: !439)
!443 = !DILocation(line: 140, column: 3, scope: !439)
!444 = !DILocation(line: 140, column: 13, scope: !439)
!445 = !DILocation(line: 140, column: 27, scope: !439)
!446 = !DILocation(line: 140, column: 34, scope: !439)
!447 = !DILocation(line: 141, column: 2, scope: !439)
!448 = !DILocation(line: 144, column: 2, scope: !223)
!449 = !DILocation(line: 144, column: 9, scope: !223)
!450 = !DILocation(line: 144, column: 12, scope: !223)
!451 = !DILocation(line: 145, column: 7, scope: !452)
!452 = distinct !DILexicalBlock(scope: !270, file: !2, line: 145, column: 7)
!453 = !DILocation(line: 145, column: 13, scope: !452)
!454 = !DILocation(line: 145, column: 22, scope: !452)
!455 = !DILocation(line: 145, column: 7, scope: !270)
!456 = !DILocation(line: 147, column: 10, scope: !457)
!457 = distinct !DILexicalBlock(scope: !452, file: !2, line: 145, column: 28)
!458 = !DILocation(line: 147, column: 15, scope: !457)
!459 = !DILocation(line: 147, column: 8, scope: !457)
!460 = !DILocation(line: 148, column: 8, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !2, line: 148, column: 8)
!462 = !DILocation(line: 148, column: 12, scope: !461)
!463 = !DILocation(line: 148, column: 8, scope: !457)
!464 = !DILocation(line: 149, column: 8, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !2, line: 148, column: 17)
!466 = !DILocation(line: 150, column: 5, scope: !465)
!467 = !DILocation(line: 151, column: 5, scope: !465)
!468 = !DILocation(line: 153, column: 20, scope: !457)
!469 = !DILocation(line: 153, column: 4, scope: !457)
!470 = !DILocation(line: 153, column: 10, scope: !457)
!471 = !DILocation(line: 153, column: 18, scope: !457)
!472 = !DILocation(line: 154, column: 21, scope: !457)
!473 = !DILocation(line: 154, column: 4, scope: !457)
!474 = !DILocation(line: 154, column: 10, scope: !457)
!475 = !DILocation(line: 154, column: 19, scope: !457)
!476 = !DILocation(line: 155, column: 3, scope: !457)
!477 = !DILocation(line: 156, column: 21, scope: !270)
!478 = !DILocation(line: 156, column: 8, scope: !270)
!479 = !DILocation(line: 156, column: 6, scope: !270)
!480 = !DILocation(line: 159, column: 7, scope: !269)
!481 = !DILocation(line: 159, column: 13, scope: !269)
!482 = !DILocation(line: 159, column: 16, scope: !269)
!483 = !DILocation(line: 159, column: 22, scope: !269)
!484 = !DILocation(line: 159, column: 33, scope: !269)
!485 = !DILocation(line: 159, column: 31, scope: !269)
!486 = !DILocation(line: 159, column: 7, scope: !270)
!487 = !DILocation(line: 160, column: 4, scope: !268)
!488 = !DILocation(line: 160, column: 9, scope: !268)
!489 = !DILocation(line: 160, column: 13, scope: !268)
!490 = !DILocation(line: 160, column: 19, scope: !268)
!491 = !DILocation(line: 160, column: 30, scope: !268)
!492 = !DILocation(line: 160, column: 28, scope: !268)
!493 = !DILocation(line: 161, column: 8, scope: !494)
!494 = distinct !DILexicalBlock(scope: !268, file: !2, line: 161, column: 8)
!495 = !DILocation(line: 161, column: 13, scope: !494)
!496 = !DILocation(line: 161, column: 19, scope: !494)
!497 = !DILocation(line: 161, column: 28, scope: !494)
!498 = !DILocation(line: 161, column: 10, scope: !494)
!499 = !DILocation(line: 161, column: 8, scope: !268)
!500 = !DILocation(line: 162, column: 8, scope: !501)
!501 = distinct !DILexicalBlock(scope: !494, file: !2, line: 161, column: 32)
!502 = !DILocation(line: 163, column: 5, scope: !501)
!503 = !DILocation(line: 164, column: 5, scope: !501)
!504 = !DILocation(line: 166, column: 21, scope: !268)
!505 = !DILocation(line: 166, column: 4, scope: !268)
!506 = !DILocation(line: 166, column: 10, scope: !268)
!507 = !DILocation(line: 166, column: 19, scope: !268)
!508 = !DILocation(line: 167, column: 22, scope: !268)
!509 = !DILocation(line: 167, column: 4, scope: !268)
!510 = !DILocation(line: 167, column: 10, scope: !268)
!511 = !DILocation(line: 167, column: 20, scope: !268)
!512 = !DILocation(line: 168, column: 3, scope: !269)
!513 = !DILocation(line: 168, column: 3, scope: !268)
!514 = !DILocation(line: 171, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !270, file: !2, line: 171, column: 7)
!516 = !DILocation(line: 171, column: 10, scope: !515)
!517 = !DILocation(line: 171, column: 7, scope: !270)
!518 = !DILocation(line: 172, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !2, line: 171, column: 27)
!520 = !DILocation(line: 173, column: 4, scope: !519)
!521 = !DILocation(line: 174, column: 14, scope: !522)
!522 = distinct !DILexicalBlock(scope: !515, file: !2, line: 174, column: 14)
!523 = !DILocation(line: 174, column: 17, scope: !522)
!524 = !DILocation(line: 174, column: 14, scope: !515)
!525 = !DILocation(line: 175, column: 4, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !2, line: 174, column: 26)
!527 = !DILocation(line: 176, column: 7, scope: !526)
!528 = !DILocation(line: 177, column: 3, scope: !526)
!529 = distinct !{!529, !448, !530, !421, !422}
!530 = !DILocation(line: 178, column: 2, scope: !223)
!531 = !DILocation(line: 180, column: 18, scope: !223)
!532 = !DILocation(line: 180, column: 2, scope: !223)
!533 = !DILocation(line: 181, column: 6, scope: !534)
!534 = distinct !DILexicalBlock(scope: !223, file: !2, line: 181, column: 6)
!535 = !DILocation(line: 181, column: 6, scope: !223)
!536 = !DILocation(line: 183, column: 10, scope: !534)
!537 = !DILocation(line: 183, column: 16, scope: !534)
!538 = !DILocation(line: 183, column: 26, scope: !534)
!539 = !DILocation(line: 183, column: 24, scope: !534)
!540 = !DILocation(line: 183, column: 30, scope: !534)
!541 = !DILocation(line: 183, column: 4, scope: !534)
!542 = !DILocation(line: 183, column: 8, scope: !534)
!543 = !DILocation(line: 183, column: 3, scope: !534)
!544 = !DILocation(line: 185, column: 1, scope: !223)
!545 = !DILocation(line: 186, column: 2, scope: !223)
!546 = !DILocation(line: 187, column: 1, scope: !223)
!547 = !DILocation(line: 188, column: 2, scope: !223)
!548 = !DILocation(line: 189, column: 1, scope: !223)
!549 = !DILocation(line: 190, column: 7, scope: !550)
!550 = distinct !DILexicalBlock(scope: !223, file: !2, line: 190, column: 6)
!551 = !DILocation(line: 190, column: 6, scope: !223)
!552 = !DILocation(line: 191, column: 3, scope: !550)
!553 = !DILocation(line: 192, column: 1, scope: !223)
!554 = !DILocation(line: 193, column: 6, scope: !555)
!555 = distinct !DILexicalBlock(scope: !223, file: !2, line: 193, column: 6)
!556 = !DILocation(line: 193, column: 6, scope: !223)
!557 = !DILocation(line: 194, column: 3, scope: !555)
!558 = !DILocation(line: 195, column: 1, scope: !223)
!559 = !DILocation(line: 196, column: 9, scope: !223)
!560 = !DILocation(line: 197, column: 1, scope: !223)
!561 = !DILocation(line: 196, column: 2, scope: !223)
!562 = distinct !DISubprogram(name: "kmalloc", scope: !49, file: !49, line: 591, type: !563, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!111, !106, !104}
!565 = !{!566, !567, !568}
!566 = !DILocalVariable(name: "size", arg: 1, scope: !562, file: !49, line: 591, type: !106)
!567 = !DILocalVariable(name: "flags", arg: 2, scope: !562, file: !49, line: 591, type: !104)
!568 = !DILocalVariable(name: "index", scope: !569, file: !49, line: 594, type: !57)
!569 = distinct !DILexicalBlock(scope: !570, file: !49, line: 593, column: 42)
!570 = distinct !DILexicalBlock(scope: !562, file: !49, line: 593, column: 6)
!571 = !DILocation(line: 591, column: 61, scope: !562)
!572 = !DILocation(line: 591, column: 73, scope: !562)
!573 = !DILocation(line: 593, column: 27, scope: !570)
!574 = !DILocation(line: 593, column: 6, scope: !570)
!575 = !DILocation(line: 593, column: 33, scope: !570)
!576 = !DILocation(line: 593, column: 36, scope: !570)
!577 = !DILocation(line: 593, column: 6, scope: !562)
!578 = !DILocation(line: 594, column: 3, scope: !569)
!579 = !DILocation(line: 594, column: 16, scope: !569)
!580 = !DILocation(line: 596, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !569, file: !49, line: 596, column: 7)
!582 = !DILocation(line: 596, column: 12, scope: !581)
!583 = !DILocation(line: 596, column: 7, scope: !569)
!584 = !DILocation(line: 597, column: 25, scope: !581)
!585 = !DILocation(line: 597, column: 31, scope: !581)
!586 = !DILocation(line: 597, column: 11, scope: !581)
!587 = !DILocation(line: 597, column: 4, scope: !581)
!588 = !DILocation(line: 599, column: 11, scope: !569)
!589 = !DILocation(line: 599, column: 9, scope: !569)
!590 = !DILocation(line: 601, column: 33, scope: !569)
!591 = !DILocation(line: 601, column: 40, scope: !569)
!592 = !DILocation(line: 601, column: 20, scope: !569)
!593 = !DILocation(line: 601, column: 5, scope: !569)
!594 = !DILocation(line: 601, column: 51, scope: !569)
!595 = !DILocation(line: 602, column: 5, scope: !569)
!596 = !DILocation(line: 602, column: 12, scope: !569)
!597 = !DILocation(line: 600, column: 10, scope: !569)
!598 = !DILocation(line: 600, column: 3, scope: !569)
!599 = !DILocation(line: 603, column: 2, scope: !570)
!600 = !DILocation(line: 604, column: 19, scope: !562)
!601 = !DILocation(line: 604, column: 25, scope: !562)
!602 = !DILocation(line: 604, column: 9, scope: !562)
!603 = !DILocation(line: 604, column: 2, scope: !562)
!604 = !DILocation(line: 605, column: 1, scope: !562)
!605 = !DISubprogram(name: "zlib_inflate_workspacesize", scope: !244, file: !244, line: 315, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!606 = !DISubroutineType(types: !607)
!607 = !{!122}
!608 = distinct !DISubprogram(name: "nofill", scope: !2, file: !2, line: 36, type: !192, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !609)
!609 = !{!610, !611}
!610 = !DILocalVariable(name: "buffer", arg: 1, scope: !608, file: !2, line: 36, type: !111)
!611 = !DILocalVariable(name: "len", arg: 2, scope: !608, file: !2, line: 36, type: !110)
!612 = !DILocation(line: 36, column: 31, scope: !608)
!613 = !DILocation(line: 36, column: 53, scope: !608)
!614 = !DILocation(line: 38, column: 2, scope: !608)
!615 = !DISubprogram(name: "zlib_inflateInit2", scope: !244, file: !244, line: 589, type: !616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!616 = !DISubroutineType(types: !617)
!617 = !{!122, !618, !122}
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !244, line: 103, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !244, line: 101, baseType: !243)
!621 = !DISubprogram(name: "zlib_inflate", scope: !244, file: !244, line: 343, type: !616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!622 = !DISubprogram(name: "zlib_inflateEnd", scope: !244, file: !244, line: 442, type: !623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!623 = !DISubroutineType(types: !624)
!624 = !{!122, !618}
!625 = !DISubprogram(name: "kfree", scope: !49, file: !49, line: 227, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!630 = !DISubprogram(name: "kmalloc_large", scope: !49, file: !49, line: 531, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!631 = distinct !DISubprogram(name: "__kmalloc_index", scope: !49, file: !49, line: 444, type: !632, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !636)
!632 = !DISubroutineType(types: !633)
!633 = !{!57, !106, !634}
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !105, line: 35, baseType: !635)
!635 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!636 = !{!637, !638}
!637 = !DILocalVariable(name: "size", arg: 1, scope: !631, file: !49, line: 444, type: !106)
!638 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !631, file: !49, line: 445, type: !634)
!639 = !DILocation(line: 444, column: 60, scope: !631)
!640 = !DILocation(line: 445, column: 16, scope: !631)
!641 = !DILocation(line: 447, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !631, file: !49, line: 447, column: 6)
!643 = !DILocation(line: 447, column: 6, scope: !631)
!644 = !DILocation(line: 448, column: 3, scope: !642)
!645 = !DILocation(line: 450, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !631, file: !49, line: 450, column: 6)
!647 = !DILocation(line: 450, column: 11, scope: !646)
!648 = !DILocation(line: 450, column: 6, scope: !631)
!649 = !DILocation(line: 451, column: 3, scope: !646)
!650 = !DILocation(line: 453, column: 32, scope: !651)
!651 = distinct !DILexicalBlock(scope: !631, file: !49, line: 453, column: 6)
!652 = !DILocation(line: 453, column: 37, scope: !651)
!653 = !DILocation(line: 453, column: 42, scope: !651)
!654 = !DILocation(line: 453, column: 45, scope: !651)
!655 = !DILocation(line: 453, column: 50, scope: !651)
!656 = !DILocation(line: 453, column: 6, scope: !631)
!657 = !DILocation(line: 454, column: 3, scope: !651)
!658 = !DILocation(line: 455, column: 32, scope: !659)
!659 = distinct !DILexicalBlock(scope: !631, file: !49, line: 455, column: 6)
!660 = !DILocation(line: 455, column: 37, scope: !659)
!661 = !DILocation(line: 455, column: 43, scope: !659)
!662 = !DILocation(line: 455, column: 46, scope: !659)
!663 = !DILocation(line: 455, column: 51, scope: !659)
!664 = !DILocation(line: 455, column: 6, scope: !631)
!665 = !DILocation(line: 456, column: 3, scope: !659)
!666 = !DILocation(line: 457, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !631, file: !49, line: 457, column: 6)
!668 = !DILocation(line: 457, column: 11, scope: !667)
!669 = !DILocation(line: 457, column: 6, scope: !631)
!670 = !DILocation(line: 457, column: 26, scope: !667)
!671 = !DILocation(line: 458, column: 6, scope: !672)
!672 = distinct !DILexicalBlock(scope: !631, file: !49, line: 458, column: 6)
!673 = !DILocation(line: 458, column: 11, scope: !672)
!674 = !DILocation(line: 458, column: 6, scope: !631)
!675 = !DILocation(line: 458, column: 26, scope: !672)
!676 = !DILocation(line: 459, column: 6, scope: !677)
!677 = distinct !DILexicalBlock(scope: !631, file: !49, line: 459, column: 6)
!678 = !DILocation(line: 459, column: 11, scope: !677)
!679 = !DILocation(line: 459, column: 6, scope: !631)
!680 = !DILocation(line: 459, column: 26, scope: !677)
!681 = !DILocation(line: 460, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !631, file: !49, line: 460, column: 6)
!683 = !DILocation(line: 460, column: 11, scope: !682)
!684 = !DILocation(line: 460, column: 6, scope: !631)
!685 = !DILocation(line: 460, column: 26, scope: !682)
!686 = !DILocation(line: 461, column: 6, scope: !687)
!687 = distinct !DILexicalBlock(scope: !631, file: !49, line: 461, column: 6)
!688 = !DILocation(line: 461, column: 11, scope: !687)
!689 = !DILocation(line: 461, column: 6, scope: !631)
!690 = !DILocation(line: 461, column: 26, scope: !687)
!691 = !DILocation(line: 462, column: 6, scope: !692)
!692 = distinct !DILexicalBlock(scope: !631, file: !49, line: 462, column: 6)
!693 = !DILocation(line: 462, column: 11, scope: !692)
!694 = !DILocation(line: 462, column: 6, scope: !631)
!695 = !DILocation(line: 462, column: 26, scope: !692)
!696 = !DILocation(line: 463, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !631, file: !49, line: 463, column: 6)
!698 = !DILocation(line: 463, column: 11, scope: !697)
!699 = !DILocation(line: 463, column: 6, scope: !631)
!700 = !DILocation(line: 463, column: 26, scope: !697)
!701 = !DILocation(line: 464, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !631, file: !49, line: 464, column: 6)
!703 = !DILocation(line: 464, column: 11, scope: !702)
!704 = !DILocation(line: 464, column: 6, scope: !631)
!705 = !DILocation(line: 464, column: 26, scope: !702)
!706 = !DILocation(line: 465, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !631, file: !49, line: 465, column: 6)
!708 = !DILocation(line: 465, column: 11, scope: !707)
!709 = !DILocation(line: 465, column: 6, scope: !631)
!710 = !DILocation(line: 465, column: 26, scope: !707)
!711 = !DILocation(line: 466, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !631, file: !49, line: 466, column: 6)
!713 = !DILocation(line: 466, column: 11, scope: !712)
!714 = !DILocation(line: 466, column: 6, scope: !631)
!715 = !DILocation(line: 466, column: 26, scope: !712)
!716 = !DILocation(line: 467, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !631, file: !49, line: 467, column: 6)
!718 = !DILocation(line: 467, column: 11, scope: !717)
!719 = !DILocation(line: 467, column: 6, scope: !631)
!720 = !DILocation(line: 467, column: 26, scope: !717)
!721 = !DILocation(line: 468, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !631, file: !49, line: 468, column: 6)
!723 = !DILocation(line: 468, column: 11, scope: !722)
!724 = !DILocation(line: 468, column: 6, scope: !631)
!725 = !DILocation(line: 468, column: 26, scope: !722)
!726 = !DILocation(line: 469, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !631, file: !49, line: 469, column: 6)
!728 = !DILocation(line: 469, column: 11, scope: !727)
!729 = !DILocation(line: 469, column: 6, scope: !631)
!730 = !DILocation(line: 469, column: 26, scope: !727)
!731 = !DILocation(line: 470, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !631, file: !49, line: 470, column: 6)
!733 = !DILocation(line: 470, column: 11, scope: !732)
!734 = !DILocation(line: 470, column: 6, scope: !631)
!735 = !DILocation(line: 470, column: 26, scope: !732)
!736 = !DILocation(line: 471, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !631, file: !49, line: 471, column: 6)
!738 = !DILocation(line: 471, column: 11, scope: !737)
!739 = !DILocation(line: 471, column: 6, scope: !631)
!740 = !DILocation(line: 471, column: 26, scope: !737)
!741 = !DILocation(line: 472, column: 6, scope: !742)
!742 = distinct !DILexicalBlock(scope: !631, file: !49, line: 472, column: 6)
!743 = !DILocation(line: 472, column: 11, scope: !742)
!744 = !DILocation(line: 472, column: 6, scope: !631)
!745 = !DILocation(line: 472, column: 26, scope: !742)
!746 = !DILocation(line: 473, column: 6, scope: !747)
!747 = distinct !DILexicalBlock(scope: !631, file: !49, line: 473, column: 6)
!748 = !DILocation(line: 473, column: 11, scope: !747)
!749 = !DILocation(line: 473, column: 6, scope: !631)
!750 = !DILocation(line: 473, column: 26, scope: !747)
!751 = !DILocation(line: 474, column: 6, scope: !752)
!752 = distinct !DILexicalBlock(scope: !631, file: !49, line: 474, column: 6)
!753 = !DILocation(line: 474, column: 11, scope: !752)
!754 = !DILocation(line: 474, column: 6, scope: !631)
!755 = !DILocation(line: 474, column: 27, scope: !752)
!756 = !DILocation(line: 475, column: 6, scope: !757)
!757 = distinct !DILexicalBlock(scope: !631, file: !49, line: 475, column: 6)
!758 = !DILocation(line: 475, column: 11, scope: !757)
!759 = !DILocation(line: 475, column: 6, scope: !631)
!760 = !DILocation(line: 475, column: 32, scope: !757)
!761 = !DILocation(line: 477, column: 50, scope: !762)
!762 = distinct !DILexicalBlock(scope: !631, file: !49, line: 477, column: 6)
!763 = !{i8 0, i8 2}
!764 = !{}
!765 = !DILocation(line: 477, column: 6, scope: !631)
!766 = !DILocation(line: 478, column: 3, scope: !762)
!767 = !DILocation(line: 478, column: 3, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !49, line: 478, column: 3)
!769 = distinct !DILexicalBlock(scope: !762, file: !49, line: 478, column: 3)
!770 = !{i32 -2141673025}
!771 = !DILocation(line: 478, column: 3, scope: !769)
!772 = !DILocation(line: 480, column: 3, scope: !762)
!773 = !DILocation(line: 480, column: 3, scope: !774)
!774 = distinct !DILexicalBlock(scope: !762, file: !49, line: 480, column: 3)
!775 = !DILocation(line: 480, column: 3, scope: !776)
!776 = distinct !DILexicalBlock(scope: !774, file: !49, line: 480, column: 3)
!777 = !DILocation(line: 480, column: 3, scope: !778)
!778 = distinct !DILexicalBlock(scope: !774, file: !49, line: 480, column: 3)
!779 = !{i64 2153294474, i64 2153294503, i64 2153294549, i64 2153294607, i64 2153294661, i64 2153294715, i64 2153294770, i64 2153294801}
!780 = !DILocation(line: 483, column: 2, scope: !631)
!781 = !DILocation(line: 484, column: 1, scope: !631)
!782 = !DISubprogram(name: "kmalloc_trace", scope: !49, file: !49, line: 525, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DISubroutineType(types: !784)
!784 = !{!111, !785, !104, !106}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !787, line: 325, flags: DIFlagFwdDecl)
!787 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!788 = distinct !DISubprogram(name: "kmalloc_type", scope: !49, file: !49, line: 401, type: !789, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{!94, !104, !110}
!791 = !{!792, !793}
!792 = !DILocalVariable(name: "flags", arg: 1, scope: !788, file: !49, line: 401, type: !104)
!793 = !DILocalVariable(name: "caller", arg: 2, scope: !788, file: !49, line: 401, type: !110)
!794 = !DILocation(line: 401, column: 67, scope: !788)
!795 = !DILocation(line: 401, column: 88, scope: !788)
!796 = !DILocation(line: 407, column: 6, scope: !797)
!797 = distinct !DILexicalBlock(scope: !788, file: !49, line: 407, column: 6)
!798 = !DILocation(line: 407, column: 6, scope: !788)
!799 = !DILocation(line: 413, column: 3, scope: !797)
!800 = !DILocation(line: 423, column: 38, scope: !801)
!801 = distinct !DILexicalBlock(scope: !788, file: !49, line: 423, column: 6)
!802 = !DILocation(line: 423, column: 44, scope: !801)
!803 = !DILocation(line: 423, column: 6, scope: !788)
!804 = !DILocation(line: 424, column: 3, scope: !801)
!805 = !DILocation(line: 426, column: 3, scope: !806)
!806 = distinct !DILexicalBlock(scope: !788, file: !49, line: 425, column: 6)
!807 = !DILocation(line: 429, column: 1, scope: !788)
!808 = !DISubprogram(name: "__kmalloc", scope: !49, file: !49, line: 488, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DISubprogram(name: "__compiletime_assert_245", scope: !49, file: !49, line: 478, type: !810, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!810 = !DISubroutineType(types: !811)
!811 = !{null}
