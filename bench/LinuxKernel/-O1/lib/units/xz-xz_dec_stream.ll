; ModuleID = 'lib/xz/xz_dec_stream.c'
source_filename = "lib/xz/xz_dec_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i32, i32, i64, i64, i64, i32, i32, i32, i8, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.anon.2, ptr, ptr, i8 }
%struct.anon = type { i64, i64, i32 }
%struct.anon.0 = type { i64, i64, i64, %struct.xz_dec_hash }
%struct.xz_dec_hash = type { i64, i64, i32 }
%struct.anon.1 = type { i32, i64, i64, %struct.xz_dec_hash }
%struct.anon.2 = type { i64, i64, [1024 x i8] }
%struct.xz_buf = type { ptr, i64, i64, ptr, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"\FD7zXZ\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"YZ\00", align 1, !dbg !7
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xz_dec_run(ptr noundef %s, ptr noundef %b) #0 align 16 !dbg !168 {
entry:
  %s.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %in_start = alloca i64, align 8
  %out_start = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !183, metadata !DIExpression()), !dbg !188
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !184, metadata !DIExpression()), !dbg !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_start) #14, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %in_start, metadata !185, metadata !DIExpression()), !dbg !191
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_start) #14, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %out_start, metadata !186, metadata !DIExpression()), !dbg !193
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !187, metadata !DIExpression()), !dbg !195
  %0 = load ptr, ptr %s.addr, align 8, !dbg !196
  %mode = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 7, !dbg !196
  %1 = load i32, ptr %mode, align 8, !dbg !196
  %cmp = icmp eq i32 %1, 0, !dbg !196
  br i1 %cmp, label %if.then, label %if.end, !dbg !198

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !199
  call void @xz_dec_reset(ptr noundef %2) #15, !dbg !200
  br label %if.end, !dbg !200

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %b.addr, align 8, !dbg !201
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %3, i32 0, i32 1, !dbg !202
  %4 = load i64, ptr %in_pos, align 8, !dbg !202
  store i64 %4, ptr %in_start, align 8, !dbg !203
  %5 = load ptr, ptr %b.addr, align 8, !dbg !204
  %out_pos = getelementptr inbounds %struct.xz_buf, ptr %5, i32 0, i32 4, !dbg !205
  %6 = load i64, ptr %out_pos, align 8, !dbg !205
  store i64 %6, ptr %out_start, align 8, !dbg !206
  %7 = load ptr, ptr %s.addr, align 8, !dbg !207
  %8 = load ptr, ptr %b.addr, align 8, !dbg !208
  %call = call i32 @dec_main(ptr noundef %7, ptr noundef %8) #15, !dbg !209
  store i32 %call, ptr %ret, align 4, !dbg !210
  %9 = load ptr, ptr %s.addr, align 8, !dbg !211
  %mode1 = getelementptr inbounds %struct.xz_dec, ptr %9, i32 0, i32 7, !dbg !211
  %10 = load i32, ptr %mode1, align 8, !dbg !211
  %cmp2 = icmp eq i32 %10, 0, !dbg !211
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !213

if.then3:                                         ; preds = %if.end
  %11 = load i32, ptr %ret, align 4, !dbg !214
  %cmp4 = icmp eq i32 %11, 0, !dbg !217
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !218

if.then5:                                         ; preds = %if.then3
  %12 = load ptr, ptr %b.addr, align 8, !dbg !219
  %in_pos6 = getelementptr inbounds %struct.xz_buf, ptr %12, i32 0, i32 1, !dbg !220
  %13 = load i64, ptr %in_pos6, align 8, !dbg !220
  %14 = load ptr, ptr %b.addr, align 8, !dbg !221
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %14, i32 0, i32 2, !dbg !222
  %15 = load i64, ptr %in_size, align 8, !dbg !222
  %cmp7 = icmp eq i64 %13, %15, !dbg !223
  %16 = zext i1 %cmp7 to i64, !dbg !219
  %cond = select i1 %cmp7, i32 7, i32 8, !dbg !219
  store i32 %cond, ptr %ret, align 4, !dbg !224
  br label %if.end8, !dbg !225

if.end8:                                          ; preds = %if.then5, %if.then3
  %17 = load i32, ptr %ret, align 4, !dbg !226
  %cmp9 = icmp ne i32 %17, 1, !dbg !228
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !229

if.then10:                                        ; preds = %if.end8
  %18 = load i64, ptr %in_start, align 8, !dbg !230
  %19 = load ptr, ptr %b.addr, align 8, !dbg !232
  %in_pos11 = getelementptr inbounds %struct.xz_buf, ptr %19, i32 0, i32 1, !dbg !233
  store i64 %18, ptr %in_pos11, align 8, !dbg !234
  %20 = load i64, ptr %out_start, align 8, !dbg !235
  %21 = load ptr, ptr %b.addr, align 8, !dbg !236
  %out_pos12 = getelementptr inbounds %struct.xz_buf, ptr %21, i32 0, i32 4, !dbg !237
  store i64 %20, ptr %out_pos12, align 8, !dbg !238
  br label %if.end13, !dbg !239

if.end13:                                         ; preds = %if.then10, %if.end8
  br label %if.end27, !dbg !240

if.else:                                          ; preds = %if.end
  %22 = load i32, ptr %ret, align 4, !dbg !241
  %cmp14 = icmp eq i32 %22, 0, !dbg !243
  br i1 %cmp14, label %land.lhs.true, label %if.else24, !dbg !244

land.lhs.true:                                    ; preds = %if.else
  %23 = load i64, ptr %in_start, align 8, !dbg !245
  %24 = load ptr, ptr %b.addr, align 8, !dbg !246
  %in_pos15 = getelementptr inbounds %struct.xz_buf, ptr %24, i32 0, i32 1, !dbg !247
  %25 = load i64, ptr %in_pos15, align 8, !dbg !247
  %cmp16 = icmp eq i64 %23, %25, !dbg !248
  br i1 %cmp16, label %land.lhs.true17, label %if.else24, !dbg !249

land.lhs.true17:                                  ; preds = %land.lhs.true
  %26 = load i64, ptr %out_start, align 8, !dbg !250
  %27 = load ptr, ptr %b.addr, align 8, !dbg !251
  %out_pos18 = getelementptr inbounds %struct.xz_buf, ptr %27, i32 0, i32 4, !dbg !252
  %28 = load i64, ptr %out_pos18, align 8, !dbg !252
  %cmp19 = icmp eq i64 %26, %28, !dbg !253
  br i1 %cmp19, label %if.then20, label %if.else24, !dbg !254

if.then20:                                        ; preds = %land.lhs.true17
  %29 = load ptr, ptr %s.addr, align 8, !dbg !255
  %allow_buf_error = getelementptr inbounds %struct.xz_dec, ptr %29, i32 0, i32 8, !dbg !258
  %30 = load i8, ptr %allow_buf_error, align 4, !dbg !258, !range !259, !noundef !260
  %tobool = trunc i8 %30 to i1, !dbg !258
  br i1 %tobool, label %if.then21, label %if.end22, !dbg !261

if.then21:                                        ; preds = %if.then20
  store i32 8, ptr %ret, align 4, !dbg !262
  br label %if.end22, !dbg !263

if.end22:                                         ; preds = %if.then21, %if.then20
  %31 = load ptr, ptr %s.addr, align 8, !dbg !264
  %allow_buf_error23 = getelementptr inbounds %struct.xz_dec, ptr %31, i32 0, i32 8, !dbg !265
  store i8 1, ptr %allow_buf_error23, align 4, !dbg !266
  br label %if.end26, !dbg !267

if.else24:                                        ; preds = %land.lhs.true17, %land.lhs.true, %if.else
  %32 = load ptr, ptr %s.addr, align 8, !dbg !268
  %allow_buf_error25 = getelementptr inbounds %struct.xz_dec, ptr %32, i32 0, i32 8, !dbg !270
  store i8 0, ptr %allow_buf_error25, align 4, !dbg !271
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.end22
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end13
  %33 = load i32, ptr %ret, align 4, !dbg !272
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !273
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_start) #14, !dbg !273
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_start) #14, !dbg !273
  ret i32 %33, !dbg !274
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @xz_dec_reset(ptr noundef %s) #0 align 16 !dbg !275 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !279, metadata !DIExpression()), !dbg !280
  %0 = load ptr, ptr %s.addr, align 8, !dbg !281
  %sequence = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 0, !dbg !282
  store i32 0, ptr %sequence, align 8, !dbg !283
  %1 = load ptr, ptr %s.addr, align 8, !dbg !284
  %allow_buf_error = getelementptr inbounds %struct.xz_dec, ptr %1, i32 0, i32 8, !dbg !285
  store i8 0, ptr %allow_buf_error, align 4, !dbg !286
  %2 = load ptr, ptr %s.addr, align 8, !dbg !287
  %pos = getelementptr inbounds %struct.xz_dec, ptr %2, i32 0, i32 1, !dbg !288
  store i32 0, ptr %pos, align 4, !dbg !289
  %3 = load ptr, ptr %s.addr, align 8, !dbg !290
  %crc32 = getelementptr inbounds %struct.xz_dec, ptr %3, i32 0, i32 5, !dbg !291
  store i32 0, ptr %crc32, align 8, !dbg !292
  %4 = load ptr, ptr %s.addr, align 8, !dbg !293
  %block = getelementptr inbounds %struct.xz_dec, ptr %4, i32 0, i32 10, !dbg !293
  call void @llvm.memset.p0.i64(ptr align 8 %block, i8 0, i64 48, i1 false), !dbg !293
  %5 = load ptr, ptr %s.addr, align 8, !dbg !294
  %index = getelementptr inbounds %struct.xz_dec, ptr %5, i32 0, i32 11, !dbg !294
  call void @llvm.memset.p0.i64(ptr align 8 %index, i8 0, i64 48, i1 false), !dbg !294
  %6 = load ptr, ptr %s.addr, align 8, !dbg !295
  %temp = getelementptr inbounds %struct.xz_dec, ptr %6, i32 0, i32 12, !dbg !296
  %pos1 = getelementptr inbounds %struct.anon.2, ptr %temp, i32 0, i32 0, !dbg !297
  store i64 0, ptr %pos1, align 8, !dbg !298
  %7 = load ptr, ptr %s.addr, align 8, !dbg !299
  %temp2 = getelementptr inbounds %struct.xz_dec, ptr %7, i32 0, i32 12, !dbg !300
  %size = getelementptr inbounds %struct.anon.2, ptr %temp2, i32 0, i32 1, !dbg !301
  store i64 12, ptr %size, align 8, !dbg !302
  ret void, !dbg !303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dec_main(ptr noundef %s, ptr noundef %b) #0 align 16 !dbg !304 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !306, metadata !DIExpression()), !dbg !309
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !307, metadata !DIExpression()), !dbg !310
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !308, metadata !DIExpression()), !dbg !312
  %0 = load ptr, ptr %b.addr, align 8, !dbg !313
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %0, i32 0, i32 1, !dbg !314
  %1 = load i64, ptr %in_pos, align 8, !dbg !314
  %2 = load ptr, ptr %s.addr, align 8, !dbg !315
  %in_start = getelementptr inbounds %struct.xz_dec, ptr %2, i32 0, i32 3, !dbg !316
  store i64 %1, ptr %in_start, align 8, !dbg !317
  br label %while.cond, !dbg !318

while.cond:                                       ; preds = %sw.epilog, %entry
  br label %while.body, !dbg !318

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %s.addr, align 8, !dbg !319
  %sequence = getelementptr inbounds %struct.xz_dec, ptr %3, i32 0, i32 0, !dbg !321
  %4 = load i32, ptr %sequence, align 8, !dbg !321
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb28
    i32 3, label %sw.bb38
    i32 4, label %sw.bb45
    i32 5, label %sw.bb67
    i32 6, label %sw.bb78
    i32 7, label %sw.bb85
    i32 8, label %sw.bb119
    i32 9, label %sw.bb128
  ], !dbg !322

sw.bb:                                            ; preds = %while.body
  %5 = load ptr, ptr %s.addr, align 8, !dbg !323
  %6 = load ptr, ptr %b.addr, align 8, !dbg !326
  %call = call zeroext i1 @fill_temp(ptr noundef %5, ptr noundef %6) #15, !dbg !327
  br i1 %call, label %if.end, label %if.then, !dbg !328

if.then:                                          ; preds = %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !329

if.end:                                           ; preds = %sw.bb
  %7 = load ptr, ptr %s.addr, align 8, !dbg !330
  %sequence1 = getelementptr inbounds %struct.xz_dec, ptr %7, i32 0, i32 0, !dbg !331
  store i32 1, ptr %sequence1, align 8, !dbg !332
  %8 = load ptr, ptr %s.addr, align 8, !dbg !333
  %call2 = call i32 @dec_stream_header(ptr noundef %8) #15, !dbg !334
  store i32 %call2, ptr %ret, align 4, !dbg !335
  %9 = load i32, ptr %ret, align 4, !dbg !336
  %cmp = icmp ne i32 %9, 0, !dbg !338
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !339

if.then3:                                         ; preds = %if.end
  %10 = load i32, ptr %ret, align 4, !dbg !340
  store i32 %10, ptr %retval, align 4, !dbg !341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !341

if.end4:                                          ; preds = %if.end
  br label %sw.bb5, !dbg !342

sw.bb5:                                           ; preds = %while.body, %if.end4
  %11 = load ptr, ptr %b.addr, align 8, !dbg !343
  %in_pos6 = getelementptr inbounds %struct.xz_buf, ptr %11, i32 0, i32 1, !dbg !345
  %12 = load i64, ptr %in_pos6, align 8, !dbg !345
  %13 = load ptr, ptr %b.addr, align 8, !dbg !346
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %13, i32 0, i32 2, !dbg !347
  %14 = load i64, ptr %in_size, align 8, !dbg !347
  %cmp7 = icmp eq i64 %12, %14, !dbg !348
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !349

if.then8:                                         ; preds = %sw.bb5
  store i32 0, ptr %retval, align 4, !dbg !350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !350

if.end9:                                          ; preds = %sw.bb5
  %15 = load ptr, ptr %b.addr, align 8, !dbg !351
  %in = getelementptr inbounds %struct.xz_buf, ptr %15, i32 0, i32 0, !dbg !353
  %16 = load ptr, ptr %in, align 8, !dbg !353
  %17 = load ptr, ptr %b.addr, align 8, !dbg !354
  %in_pos10 = getelementptr inbounds %struct.xz_buf, ptr %17, i32 0, i32 1, !dbg !355
  %18 = load i64, ptr %in_pos10, align 8, !dbg !355
  %arrayidx = getelementptr i8, ptr %16, i64 %18, !dbg !351
  %19 = load i8, ptr %arrayidx, align 1, !dbg !351
  %conv = zext i8 %19 to i32, !dbg !351
  %cmp11 = icmp eq i32 %conv, 0, !dbg !356
  br i1 %cmp11, label %if.then13, label %if.end17, !dbg !357

if.then13:                                        ; preds = %if.end9
  %20 = load ptr, ptr %b.addr, align 8, !dbg !358
  %in_pos14 = getelementptr inbounds %struct.xz_buf, ptr %20, i32 0, i32 1, !dbg !360
  %21 = load i64, ptr %in_pos14, align 8, !dbg !361
  %inc = add i64 %21, 1, !dbg !361
  store i64 %inc, ptr %in_pos14, align 8, !dbg !361
  %22 = load ptr, ptr %s.addr, align 8, !dbg !362
  %in_start15 = getelementptr inbounds %struct.xz_dec, ptr %22, i32 0, i32 3, !dbg !363
  store i64 %21, ptr %in_start15, align 8, !dbg !364
  %23 = load ptr, ptr %s.addr, align 8, !dbg !365
  %sequence16 = getelementptr inbounds %struct.xz_dec, ptr %23, i32 0, i32 0, !dbg !366
  store i32 6, ptr %sequence16, align 8, !dbg !367
  br label %sw.epilog, !dbg !368

if.end17:                                         ; preds = %if.end9
  %24 = load ptr, ptr %b.addr, align 8, !dbg !369
  %in18 = getelementptr inbounds %struct.xz_buf, ptr %24, i32 0, i32 0, !dbg !370
  %25 = load ptr, ptr %in18, align 8, !dbg !370
  %26 = load ptr, ptr %b.addr, align 8, !dbg !371
  %in_pos19 = getelementptr inbounds %struct.xz_buf, ptr %26, i32 0, i32 1, !dbg !372
  %27 = load i64, ptr %in_pos19, align 8, !dbg !372
  %arrayidx20 = getelementptr i8, ptr %25, i64 %27, !dbg !369
  %28 = load i8, ptr %arrayidx20, align 1, !dbg !369
  %conv21 = zext i8 %28 to i32, !dbg !373
  %add = add i32 %conv21, 1, !dbg !374
  %mul = mul i32 %add, 4, !dbg !375
  %29 = load ptr, ptr %s.addr, align 8, !dbg !376
  %block_header = getelementptr inbounds %struct.xz_dec, ptr %29, i32 0, i32 9, !dbg !377
  %size = getelementptr inbounds %struct.anon, ptr %block_header, i32 0, i32 2, !dbg !378
  store i32 %mul, ptr %size, align 8, !dbg !379
  %30 = load ptr, ptr %s.addr, align 8, !dbg !380
  %block_header22 = getelementptr inbounds %struct.xz_dec, ptr %30, i32 0, i32 9, !dbg !381
  %size23 = getelementptr inbounds %struct.anon, ptr %block_header22, i32 0, i32 2, !dbg !382
  %31 = load i32, ptr %size23, align 8, !dbg !382
  %conv24 = zext i32 %31 to i64, !dbg !380
  %32 = load ptr, ptr %s.addr, align 8, !dbg !383
  %temp = getelementptr inbounds %struct.xz_dec, ptr %32, i32 0, i32 12, !dbg !384
  %size25 = getelementptr inbounds %struct.anon.2, ptr %temp, i32 0, i32 1, !dbg !385
  store i64 %conv24, ptr %size25, align 8, !dbg !386
  %33 = load ptr, ptr %s.addr, align 8, !dbg !387
  %temp26 = getelementptr inbounds %struct.xz_dec, ptr %33, i32 0, i32 12, !dbg !388
  %pos = getelementptr inbounds %struct.anon.2, ptr %temp26, i32 0, i32 0, !dbg !389
  store i64 0, ptr %pos, align 8, !dbg !390
  %34 = load ptr, ptr %s.addr, align 8, !dbg !391
  %sequence27 = getelementptr inbounds %struct.xz_dec, ptr %34, i32 0, i32 0, !dbg !392
  store i32 2, ptr %sequence27, align 8, !dbg !393
  br label %sw.bb28, !dbg !391

sw.bb28:                                          ; preds = %while.body, %if.end17
  %35 = load ptr, ptr %s.addr, align 8, !dbg !394
  %36 = load ptr, ptr %b.addr, align 8, !dbg !396
  %call29 = call zeroext i1 @fill_temp(ptr noundef %35, ptr noundef %36) #15, !dbg !397
  br i1 %call29, label %if.end31, label %if.then30, !dbg !398

if.then30:                                        ; preds = %sw.bb28
  store i32 0, ptr %retval, align 4, !dbg !399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !399

if.end31:                                         ; preds = %sw.bb28
  %37 = load ptr, ptr %s.addr, align 8, !dbg !400
  %call32 = call i32 @dec_block_header(ptr noundef %37) #15, !dbg !401
  store i32 %call32, ptr %ret, align 4, !dbg !402
  %38 = load i32, ptr %ret, align 4, !dbg !403
  %cmp33 = icmp ne i32 %38, 0, !dbg !405
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !406

if.then35:                                        ; preds = %if.end31
  %39 = load i32, ptr %ret, align 4, !dbg !407
  store i32 %39, ptr %retval, align 4, !dbg !408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !408

if.end36:                                         ; preds = %if.end31
  %40 = load ptr, ptr %s.addr, align 8, !dbg !409
  %sequence37 = getelementptr inbounds %struct.xz_dec, ptr %40, i32 0, i32 0, !dbg !410
  store i32 3, ptr %sequence37, align 8, !dbg !411
  br label %sw.bb38, !dbg !409

sw.bb38:                                          ; preds = %while.body, %if.end36
  %41 = load ptr, ptr %s.addr, align 8, !dbg !412
  %42 = load ptr, ptr %b.addr, align 8, !dbg !413
  %call39 = call i32 @dec_block(ptr noundef %41, ptr noundef %42) #15, !dbg !414
  store i32 %call39, ptr %ret, align 4, !dbg !415
  %43 = load i32, ptr %ret, align 4, !dbg !416
  %cmp40 = icmp ne i32 %43, 1, !dbg !418
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !419

if.then42:                                        ; preds = %sw.bb38
  %44 = load i32, ptr %ret, align 4, !dbg !420
  store i32 %44, ptr %retval, align 4, !dbg !421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !421

if.end43:                                         ; preds = %sw.bb38
  %45 = load ptr, ptr %s.addr, align 8, !dbg !422
  %sequence44 = getelementptr inbounds %struct.xz_dec, ptr %45, i32 0, i32 0, !dbg !423
  store i32 4, ptr %sequence44, align 8, !dbg !424
  br label %sw.bb45, !dbg !422

sw.bb45:                                          ; preds = %while.body, %if.end43
  br label %while.cond46, !dbg !425

while.cond46:                                     ; preds = %if.end62, %sw.bb45
  %46 = load ptr, ptr %s.addr, align 8, !dbg !426
  %block = getelementptr inbounds %struct.xz_dec, ptr %46, i32 0, i32 10, !dbg !427
  %compressed = getelementptr inbounds %struct.anon.0, ptr %block, i32 0, i32 0, !dbg !428
  %47 = load i64, ptr %compressed, align 8, !dbg !428
  %and = and i64 %47, 3, !dbg !429
  %tobool = icmp ne i64 %and, 0, !dbg !425
  br i1 %tobool, label %while.body47, label %while.end, !dbg !425

while.body47:                                     ; preds = %while.cond46
  %48 = load ptr, ptr %b.addr, align 8, !dbg !430
  %in_pos48 = getelementptr inbounds %struct.xz_buf, ptr %48, i32 0, i32 1, !dbg !433
  %49 = load i64, ptr %in_pos48, align 8, !dbg !433
  %50 = load ptr, ptr %b.addr, align 8, !dbg !434
  %in_size49 = getelementptr inbounds %struct.xz_buf, ptr %50, i32 0, i32 2, !dbg !435
  %51 = load i64, ptr %in_size49, align 8, !dbg !435
  %cmp50 = icmp eq i64 %49, %51, !dbg !436
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !437

if.then52:                                        ; preds = %while.body47
  store i32 0, ptr %retval, align 4, !dbg !438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !438

if.end53:                                         ; preds = %while.body47
  %52 = load ptr, ptr %b.addr, align 8, !dbg !439
  %in54 = getelementptr inbounds %struct.xz_buf, ptr %52, i32 0, i32 0, !dbg !441
  %53 = load ptr, ptr %in54, align 8, !dbg !441
  %54 = load ptr, ptr %b.addr, align 8, !dbg !442
  %in_pos55 = getelementptr inbounds %struct.xz_buf, ptr %54, i32 0, i32 1, !dbg !443
  %55 = load i64, ptr %in_pos55, align 8, !dbg !444
  %inc56 = add i64 %55, 1, !dbg !444
  store i64 %inc56, ptr %in_pos55, align 8, !dbg !444
  %arrayidx57 = getelementptr i8, ptr %53, i64 %55, !dbg !439
  %56 = load i8, ptr %arrayidx57, align 1, !dbg !439
  %conv58 = zext i8 %56 to i32, !dbg !439
  %cmp59 = icmp ne i32 %conv58, 0, !dbg !445
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !446

if.then61:                                        ; preds = %if.end53
  store i32 7, ptr %retval, align 4, !dbg !447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !447

if.end62:                                         ; preds = %if.end53
  %57 = load ptr, ptr %s.addr, align 8, !dbg !448
  %block63 = getelementptr inbounds %struct.xz_dec, ptr %57, i32 0, i32 10, !dbg !449
  %compressed64 = getelementptr inbounds %struct.anon.0, ptr %block63, i32 0, i32 0, !dbg !450
  %58 = load i64, ptr %compressed64, align 8, !dbg !451
  %inc65 = add i64 %58, 1, !dbg !451
  store i64 %inc65, ptr %compressed64, align 8, !dbg !451
  br label %while.cond46, !dbg !425, !llvm.loop !452

while.end:                                        ; preds = %while.cond46
  %59 = load ptr, ptr %s.addr, align 8, !dbg !456
  %sequence66 = getelementptr inbounds %struct.xz_dec, ptr %59, i32 0, i32 0, !dbg !457
  store i32 5, ptr %sequence66, align 8, !dbg !458
  br label %sw.bb67, !dbg !456

sw.bb67:                                          ; preds = %while.body, %while.end
  %60 = load ptr, ptr %s.addr, align 8, !dbg !459
  %check_type = getelementptr inbounds %struct.xz_dec, ptr %60, i32 0, i32 6, !dbg !461
  %61 = load i32, ptr %check_type, align 4, !dbg !461
  %cmp68 = icmp eq i32 %61, 1, !dbg !462
  br i1 %cmp68, label %if.then70, label %if.end76, !dbg !463

if.then70:                                        ; preds = %sw.bb67
  %62 = load ptr, ptr %s.addr, align 8, !dbg !464
  %63 = load ptr, ptr %b.addr, align 8, !dbg !466
  %call71 = call i32 @crc32_validate(ptr noundef %62, ptr noundef %63) #15, !dbg !467
  store i32 %call71, ptr %ret, align 4, !dbg !468
  %64 = load i32, ptr %ret, align 4, !dbg !469
  %cmp72 = icmp ne i32 %64, 1, !dbg !471
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !472

if.then74:                                        ; preds = %if.then70
  %65 = load i32, ptr %ret, align 4, !dbg !473
  store i32 %65, ptr %retval, align 4, !dbg !474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !474

if.end75:                                         ; preds = %if.then70
  br label %if.end76, !dbg !475

if.end76:                                         ; preds = %if.end75, %sw.bb67
  %66 = load ptr, ptr %s.addr, align 8, !dbg !476
  %sequence77 = getelementptr inbounds %struct.xz_dec, ptr %66, i32 0, i32 0, !dbg !477
  store i32 1, ptr %sequence77, align 8, !dbg !478
  br label %sw.epilog, !dbg !479

sw.bb78:                                          ; preds = %while.body
  %67 = load ptr, ptr %s.addr, align 8, !dbg !480
  %68 = load ptr, ptr %b.addr, align 8, !dbg !481
  %call79 = call i32 @dec_index(ptr noundef %67, ptr noundef %68) #15, !dbg !482
  store i32 %call79, ptr %ret, align 4, !dbg !483
  %69 = load i32, ptr %ret, align 4, !dbg !484
  %cmp80 = icmp ne i32 %69, 1, !dbg !486
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !487

if.then82:                                        ; preds = %sw.bb78
  %70 = load i32, ptr %ret, align 4, !dbg !488
  store i32 %70, ptr %retval, align 4, !dbg !489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !489

if.end83:                                         ; preds = %sw.bb78
  %71 = load ptr, ptr %s.addr, align 8, !dbg !490
  %sequence84 = getelementptr inbounds %struct.xz_dec, ptr %71, i32 0, i32 0, !dbg !491
  store i32 7, ptr %sequence84, align 8, !dbg !492
  br label %sw.bb85, !dbg !490

sw.bb85:                                          ; preds = %while.body, %if.end83
  br label %while.cond86, !dbg !493

while.cond86:                                     ; preds = %if.end108, %sw.bb85
  %72 = load ptr, ptr %s.addr, align 8, !dbg !494
  %index = getelementptr inbounds %struct.xz_dec, ptr %72, i32 0, i32 11, !dbg !495
  %size87 = getelementptr inbounds %struct.anon.1, ptr %index, i32 0, i32 1, !dbg !496
  %73 = load i64, ptr %size87, align 8, !dbg !496
  %74 = load ptr, ptr %b.addr, align 8, !dbg !497
  %in_pos88 = getelementptr inbounds %struct.xz_buf, ptr %74, i32 0, i32 1, !dbg !498
  %75 = load i64, ptr %in_pos88, align 8, !dbg !498
  %76 = load ptr, ptr %s.addr, align 8, !dbg !499
  %in_start89 = getelementptr inbounds %struct.xz_dec, ptr %76, i32 0, i32 3, !dbg !500
  %77 = load i64, ptr %in_start89, align 8, !dbg !500
  %sub = sub i64 %75, %77, !dbg !501
  %add90 = add i64 %73, %sub, !dbg !502
  %and91 = and i64 %add90, 3, !dbg !503
  %tobool92 = icmp ne i64 %and91, 0, !dbg !493
  br i1 %tobool92, label %while.body93, label %while.end109, !dbg !493

while.body93:                                     ; preds = %while.cond86
  %78 = load ptr, ptr %b.addr, align 8, !dbg !504
  %in_pos94 = getelementptr inbounds %struct.xz_buf, ptr %78, i32 0, i32 1, !dbg !507
  %79 = load i64, ptr %in_pos94, align 8, !dbg !507
  %80 = load ptr, ptr %b.addr, align 8, !dbg !508
  %in_size95 = getelementptr inbounds %struct.xz_buf, ptr %80, i32 0, i32 2, !dbg !509
  %81 = load i64, ptr %in_size95, align 8, !dbg !509
  %cmp96 = icmp eq i64 %79, %81, !dbg !510
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !511

if.then98:                                        ; preds = %while.body93
  %82 = load ptr, ptr %s.addr, align 8, !dbg !512
  %83 = load ptr, ptr %b.addr, align 8, !dbg !514
  call void @index_update(ptr noundef %82, ptr noundef %83) #15, !dbg !515
  store i32 0, ptr %retval, align 4, !dbg !516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !516

if.end99:                                         ; preds = %while.body93
  %84 = load ptr, ptr %b.addr, align 8, !dbg !517
  %in100 = getelementptr inbounds %struct.xz_buf, ptr %84, i32 0, i32 0, !dbg !519
  %85 = load ptr, ptr %in100, align 8, !dbg !519
  %86 = load ptr, ptr %b.addr, align 8, !dbg !520
  %in_pos101 = getelementptr inbounds %struct.xz_buf, ptr %86, i32 0, i32 1, !dbg !521
  %87 = load i64, ptr %in_pos101, align 8, !dbg !522
  %inc102 = add i64 %87, 1, !dbg !522
  store i64 %inc102, ptr %in_pos101, align 8, !dbg !522
  %arrayidx103 = getelementptr i8, ptr %85, i64 %87, !dbg !517
  %88 = load i8, ptr %arrayidx103, align 1, !dbg !517
  %conv104 = zext i8 %88 to i32, !dbg !517
  %cmp105 = icmp ne i32 %conv104, 0, !dbg !523
  br i1 %cmp105, label %if.then107, label %if.end108, !dbg !524

if.then107:                                       ; preds = %if.end99
  store i32 7, ptr %retval, align 4, !dbg !525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !525

if.end108:                                        ; preds = %if.end99
  br label %while.cond86, !dbg !493, !llvm.loop !526

while.end109:                                     ; preds = %while.cond86
  %89 = load ptr, ptr %s.addr, align 8, !dbg !528
  %90 = load ptr, ptr %b.addr, align 8, !dbg !529
  call void @index_update(ptr noundef %89, ptr noundef %90) #15, !dbg !530
  %91 = load ptr, ptr %s.addr, align 8, !dbg !531
  %block110 = getelementptr inbounds %struct.xz_dec, ptr %91, i32 0, i32 10, !dbg !531
  %hash = getelementptr inbounds %struct.anon.0, ptr %block110, i32 0, i32 3, !dbg !531
  %92 = load ptr, ptr %s.addr, align 8, !dbg !531
  %index111 = getelementptr inbounds %struct.xz_dec, ptr %92, i32 0, i32 11, !dbg !531
  %hash112 = getelementptr inbounds %struct.anon.1, ptr %index111, i32 0, i32 3, !dbg !531
  %call113 = call i32 @memcmp(ptr noundef %hash, ptr noundef %hash112, i64 noundef 24) #15, !dbg !531
  %cmp114 = icmp eq i32 %call113, 0, !dbg !531
  br i1 %cmp114, label %if.end117, label %if.then116, !dbg !533

if.then116:                                       ; preds = %while.end109
  store i32 7, ptr %retval, align 4, !dbg !534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !534

if.end117:                                        ; preds = %while.end109
  %93 = load ptr, ptr %s.addr, align 8, !dbg !535
  %sequence118 = getelementptr inbounds %struct.xz_dec, ptr %93, i32 0, i32 0, !dbg !536
  store i32 8, ptr %sequence118, align 8, !dbg !537
  br label %sw.bb119, !dbg !535

sw.bb119:                                         ; preds = %while.body, %if.end117
  %94 = load ptr, ptr %s.addr, align 8, !dbg !538
  %95 = load ptr, ptr %b.addr, align 8, !dbg !539
  %call120 = call i32 @crc32_validate(ptr noundef %94, ptr noundef %95) #15, !dbg !540
  store i32 %call120, ptr %ret, align 4, !dbg !541
  %96 = load i32, ptr %ret, align 4, !dbg !542
  %cmp121 = icmp ne i32 %96, 1, !dbg !544
  br i1 %cmp121, label %if.then123, label %if.end124, !dbg !545

if.then123:                                       ; preds = %sw.bb119
  %97 = load i32, ptr %ret, align 4, !dbg !546
  store i32 %97, ptr %retval, align 4, !dbg !547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !547

if.end124:                                        ; preds = %sw.bb119
  %98 = load ptr, ptr %s.addr, align 8, !dbg !548
  %temp125 = getelementptr inbounds %struct.xz_dec, ptr %98, i32 0, i32 12, !dbg !549
  %size126 = getelementptr inbounds %struct.anon.2, ptr %temp125, i32 0, i32 1, !dbg !550
  store i64 12, ptr %size126, align 8, !dbg !551
  %99 = load ptr, ptr %s.addr, align 8, !dbg !552
  %sequence127 = getelementptr inbounds %struct.xz_dec, ptr %99, i32 0, i32 0, !dbg !553
  store i32 9, ptr %sequence127, align 8, !dbg !554
  br label %sw.bb128, !dbg !552

sw.bb128:                                         ; preds = %while.body, %if.end124
  %100 = load ptr, ptr %s.addr, align 8, !dbg !555
  %101 = load ptr, ptr %b.addr, align 8, !dbg !557
  %call129 = call zeroext i1 @fill_temp(ptr noundef %100, ptr noundef %101) #15, !dbg !558
  br i1 %call129, label %if.end131, label %if.then130, !dbg !559

if.then130:                                       ; preds = %sw.bb128
  store i32 0, ptr %retval, align 4, !dbg !560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !560

if.end131:                                        ; preds = %sw.bb128
  %102 = load ptr, ptr %s.addr, align 8, !dbg !561
  %call132 = call i32 @dec_stream_footer(ptr noundef %102) #15, !dbg !562
  store i32 %call132, ptr %retval, align 4, !dbg !563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !563

sw.epilog:                                        ; preds = %while.body, %if.end76, %if.then13
  br label %while.cond, !dbg !318, !llvm.loop !564

cleanup:                                          ; preds = %if.end131, %if.then130, %if.then123, %if.then116, %if.then107, %if.then98, %if.then82, %if.then74, %if.then61, %if.then52, %if.then42, %if.then35, %if.then30, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !566
  %103 = load i32, ptr %retval, align 4, !dbg !566
  ret i32 %103, !dbg !566
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xz_dec_init(i32 noundef %mode, i32 noundef %dict_max) #0 align 16 !dbg !567 {
entry:
  %retval = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %dict_max.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !571, metadata !DIExpression()), !dbg !576
  store i32 %dict_max, ptr %dict_max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dict_max.addr, metadata !572, metadata !DIExpression()), !dbg !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !578
  call void @llvm.dbg.declare(metadata ptr %s, metadata !573, metadata !DIExpression()), !dbg !579
  %call = call noalias ptr @kmalloc(i64 noundef 1232, i32 noundef 3264) #16, !dbg !580
  store ptr %call, ptr %s, align 8, !dbg !579
  %0 = load ptr, ptr %s, align 8, !dbg !581
  %cmp = icmp eq ptr %0, null, !dbg !583
  br i1 %cmp, label %if.then, label %if.end, !dbg !584

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !585

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4, !dbg !586
  %2 = load ptr, ptr %s, align 8, !dbg !587
  %mode1 = getelementptr inbounds %struct.xz_dec, ptr %2, i32 0, i32 7, !dbg !588
  store i32 %1, ptr %mode1, align 8, !dbg !589
  %3 = load i32, ptr %mode.addr, align 4, !dbg !590
  %cmp2 = icmp eq i32 %3, 0, !dbg !590
  %call3 = call ptr @xz_dec_bcj_create(i1 noundef zeroext %cmp2) #15, !dbg !591
  %4 = load ptr, ptr %s, align 8, !dbg !592
  %bcj = getelementptr inbounds %struct.xz_dec, ptr %4, i32 0, i32 14, !dbg !593
  store ptr %call3, ptr %bcj, align 8, !dbg !594
  %5 = load ptr, ptr %s, align 8, !dbg !595
  %bcj4 = getelementptr inbounds %struct.xz_dec, ptr %5, i32 0, i32 14, !dbg !597
  %6 = load ptr, ptr %bcj4, align 8, !dbg !597
  %cmp5 = icmp eq ptr %6, null, !dbg !598
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !599

if.then6:                                         ; preds = %if.end
  br label %error_bcj, !dbg !600

if.end7:                                          ; preds = %if.end
  %7 = load i32, ptr %mode.addr, align 4, !dbg !601
  %8 = load i32, ptr %dict_max.addr, align 4, !dbg !602
  %call8 = call ptr @xz_dec_lzma2_create(i32 noundef %7, i32 noundef %8) #15, !dbg !603
  %9 = load ptr, ptr %s, align 8, !dbg !604
  %lzma2 = getelementptr inbounds %struct.xz_dec, ptr %9, i32 0, i32 13, !dbg !605
  store ptr %call8, ptr %lzma2, align 8, !dbg !606
  %10 = load ptr, ptr %s, align 8, !dbg !607
  %lzma29 = getelementptr inbounds %struct.xz_dec, ptr %10, i32 0, i32 13, !dbg !609
  %11 = load ptr, ptr %lzma29, align 8, !dbg !609
  %cmp10 = icmp eq ptr %11, null, !dbg !610
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !611

if.then11:                                        ; preds = %if.end7
  br label %error_lzma2, !dbg !612

if.end12:                                         ; preds = %if.end7
  %12 = load ptr, ptr %s, align 8, !dbg !613
  call void @xz_dec_reset(ptr noundef %12) #15, !dbg !614
  %13 = load ptr, ptr %s, align 8, !dbg !615
  store ptr %13, ptr %retval, align 8, !dbg !616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !616

error_lzma2:                                      ; preds = %if.then11
  call void @llvm.dbg.label(metadata !574), !dbg !617
  %14 = load ptr, ptr %s, align 8, !dbg !618
  %bcj13 = getelementptr inbounds %struct.xz_dec, ptr %14, i32 0, i32 14, !dbg !618
  %15 = load ptr, ptr %bcj13, align 8, !dbg !618
  call void @kfree(ptr noundef %15) #15, !dbg !618
  br label %error_bcj, !dbg !618

error_bcj:                                        ; preds = %error_lzma2, %if.then6
  call void @llvm.dbg.label(metadata !575), !dbg !619
  %16 = load ptr, ptr %s, align 8, !dbg !620
  call void @kfree(ptr noundef %16) #15, !dbg !621
  store ptr null, ptr %retval, align 8, !dbg !622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !622

cleanup:                                          ; preds = %error_bcj, %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !623
  %17 = load ptr, ptr %retval, align 8, !dbg !623
  ret ptr %17, !dbg !623
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !624 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !628, metadata !DIExpression()), !dbg !633
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !629, metadata !DIExpression()), !dbg !634
  %0 = load i64, ptr %size.addr, align 8, !dbg !635
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !636
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !637

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !638
  %tobool = icmp ne i64 %2, 0, !dbg !638
  br i1 %tobool, label %if.then, label %if.end7, !dbg !639

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !640
  call void @llvm.dbg.declare(metadata ptr %index, metadata !630, metadata !DIExpression()), !dbg !641
  %3 = load i64, ptr %size.addr, align 8, !dbg !642
  %cmp = icmp ugt i64 %3, 8192, !dbg !644
  br i1 %cmp, label %if.then1, label %if.end, !dbg !645

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !646
  %5 = load i32, ptr %flags.addr, align 4, !dbg !647
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !648
  store ptr %call, ptr %retval, align 8, !dbg !649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !649

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !650
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !650
  store i32 %call2, ptr %index, align 4, !dbg !651
  %7 = load i32, ptr %flags.addr, align 4, !dbg !652
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !653
  %9 = ptrtoint ptr %8 to i64, !dbg !653
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !654
  %idxprom = zext i32 %call3 to i64, !dbg !655
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !655
  %10 = load i32, ptr %index, align 4, !dbg !656
  %idxprom4 = zext i32 %10 to i64, !dbg !655
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !655
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !655
  %12 = load i32, ptr %flags.addr, align 4, !dbg !657
  %13 = load i64, ptr %size.addr, align 8, !dbg !658
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !659
  store ptr %call6, ptr %retval, align 8, !dbg !660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !660

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !661
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !662
  %15 = load i32, ptr %flags.addr, align 4, !dbg !663
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !664
  store ptr %call8, ptr %retval, align 8, !dbg !665
  br label %return, !dbg !665

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !666
  ret ptr %16, !dbg !666
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !667 dso_local ptr @xz_dec_bcj_create(i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !670 dso_local ptr @xz_dec_lzma2_create(i32 noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !673 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @xz_dec_end(ptr noundef %s) #0 align 16 !dbg !678 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !680, metadata !DIExpression()), !dbg !681
  %0 = load ptr, ptr %s.addr, align 8, !dbg !682
  %cmp = icmp ne ptr %0, null, !dbg !684
  br i1 %cmp, label %if.then, label %if.end, !dbg !685

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !686
  %lzma2 = getelementptr inbounds %struct.xz_dec, ptr %1, i32 0, i32 13, !dbg !688
  %2 = load ptr, ptr %lzma2, align 8, !dbg !688
  call void @xz_dec_lzma2_end(ptr noundef %2) #15, !dbg !689
  %3 = load ptr, ptr %s.addr, align 8, !dbg !690
  %bcj = getelementptr inbounds %struct.xz_dec, ptr %3, i32 0, i32 14, !dbg !690
  %4 = load ptr, ptr %bcj, align 8, !dbg !690
  call void @kfree(ptr noundef %4) #15, !dbg !690
  %5 = load ptr, ptr %s.addr, align 8, !dbg !691
  call void @kfree(ptr noundef %5) #15, !dbg !692
  br label %if.end, !dbg !693

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !694
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !695 dso_local void @xz_dec_lzma2_end(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fill_temp(ptr noundef %s, ptr noundef %b) #0 align 16 !dbg !698 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %copy_size = alloca i64, align 8
  %__UNIQUE_ID___x118 = alloca i64, align 8
  %__UNIQUE_ID___y119 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !702, metadata !DIExpression()), !dbg !708
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !703, metadata !DIExpression()), !dbg !709
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy_size) #14, !dbg !710
  call void @llvm.dbg.declare(metadata ptr %copy_size, metadata !704, metadata !DIExpression()), !dbg !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x118) #14, !dbg !712
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x118, metadata !705, metadata !DIExpression()), !dbg !712
  %0 = load ptr, ptr %b.addr, align 8, !dbg !712
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %0, i32 0, i32 2, !dbg !712
  %1 = load i64, ptr %in_size, align 8, !dbg !712
  %2 = load ptr, ptr %b.addr, align 8, !dbg !712
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 1, !dbg !712
  %3 = load i64, ptr %in_pos, align 8, !dbg !712
  %sub = sub i64 %1, %3, !dbg !712
  store i64 %sub, ptr %__UNIQUE_ID___x118, align 8, !dbg !712
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y119) #14, !dbg !712
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y119, metadata !707, metadata !DIExpression()), !dbg !712
  %4 = load ptr, ptr %s.addr, align 8, !dbg !712
  %temp = getelementptr inbounds %struct.xz_dec, ptr %4, i32 0, i32 12, !dbg !712
  %size = getelementptr inbounds %struct.anon.2, ptr %temp, i32 0, i32 1, !dbg !712
  %5 = load i64, ptr %size, align 8, !dbg !712
  %6 = load ptr, ptr %s.addr, align 8, !dbg !712
  %temp1 = getelementptr inbounds %struct.xz_dec, ptr %6, i32 0, i32 12, !dbg !712
  %pos = getelementptr inbounds %struct.anon.2, ptr %temp1, i32 0, i32 0, !dbg !712
  %7 = load i64, ptr %pos, align 8, !dbg !712
  %sub2 = sub i64 %5, %7, !dbg !712
  store i64 %sub2, ptr %__UNIQUE_ID___y119, align 8, !dbg !712
  %8 = load i64, ptr %__UNIQUE_ID___x118, align 8, !dbg !712
  %9 = load i64, ptr %__UNIQUE_ID___y119, align 8, !dbg !712
  %cmp = icmp ult i64 %8, %9, !dbg !712
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !712

cond.true:                                        ; preds = %entry
  %10 = load i64, ptr %__UNIQUE_ID___x118, align 8, !dbg !712
  br label %cond.end, !dbg !712

cond.false:                                       ; preds = %entry
  %11 = load i64, ptr %__UNIQUE_ID___y119, align 8, !dbg !712
  br label %cond.end, !dbg !712

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !712
  store i64 %cond, ptr %tmp, align 8, !dbg !712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y119) #14, !dbg !713
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x118) #14, !dbg !713
  %12 = load i64, ptr %tmp, align 8, !dbg !712
  store i64 %12, ptr %copy_size, align 8, !dbg !711
  %13 = load ptr, ptr %s.addr, align 8, !dbg !714
  %temp3 = getelementptr inbounds %struct.xz_dec, ptr %13, i32 0, i32 12, !dbg !715
  %buf = getelementptr inbounds %struct.anon.2, ptr %temp3, i32 0, i32 2, !dbg !716
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !714
  %14 = load ptr, ptr %s.addr, align 8, !dbg !717
  %temp4 = getelementptr inbounds %struct.xz_dec, ptr %14, i32 0, i32 12, !dbg !718
  %pos5 = getelementptr inbounds %struct.anon.2, ptr %temp4, i32 0, i32 0, !dbg !719
  %15 = load i64, ptr %pos5, align 8, !dbg !719
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %15, !dbg !720
  %16 = load ptr, ptr %b.addr, align 8, !dbg !721
  %in = getelementptr inbounds %struct.xz_buf, ptr %16, i32 0, i32 0, !dbg !722
  %17 = load ptr, ptr %in, align 8, !dbg !722
  %18 = load ptr, ptr %b.addr, align 8, !dbg !723
  %in_pos6 = getelementptr inbounds %struct.xz_buf, ptr %18, i32 0, i32 1, !dbg !724
  %19 = load i64, ptr %in_pos6, align 8, !dbg !724
  %add.ptr7 = getelementptr i8, ptr %17, i64 %19, !dbg !725
  %20 = load i64, ptr %copy_size, align 8, !dbg !726
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr7, i64 %20, i1 false), !dbg !727
  %21 = load i64, ptr %copy_size, align 8, !dbg !728
  %22 = load ptr, ptr %b.addr, align 8, !dbg !729
  %in_pos8 = getelementptr inbounds %struct.xz_buf, ptr %22, i32 0, i32 1, !dbg !730
  %23 = load i64, ptr %in_pos8, align 8, !dbg !731
  %add = add i64 %23, %21, !dbg !731
  store i64 %add, ptr %in_pos8, align 8, !dbg !731
  %24 = load i64, ptr %copy_size, align 8, !dbg !732
  %25 = load ptr, ptr %s.addr, align 8, !dbg !733
  %temp9 = getelementptr inbounds %struct.xz_dec, ptr %25, i32 0, i32 12, !dbg !734
  %pos10 = getelementptr inbounds %struct.anon.2, ptr %temp9, i32 0, i32 0, !dbg !735
  %26 = load i64, ptr %pos10, align 8, !dbg !736
  %add11 = add i64 %26, %24, !dbg !736
  store i64 %add11, ptr %pos10, align 8, !dbg !736
  %27 = load ptr, ptr %s.addr, align 8, !dbg !737
  %temp12 = getelementptr inbounds %struct.xz_dec, ptr %27, i32 0, i32 12, !dbg !739
  %pos13 = getelementptr inbounds %struct.anon.2, ptr %temp12, i32 0, i32 0, !dbg !740
  %28 = load i64, ptr %pos13, align 8, !dbg !740
  %29 = load ptr, ptr %s.addr, align 8, !dbg !741
  %temp14 = getelementptr inbounds %struct.xz_dec, ptr %29, i32 0, i32 12, !dbg !742
  %size15 = getelementptr inbounds %struct.anon.2, ptr %temp14, i32 0, i32 1, !dbg !743
  %30 = load i64, ptr %size15, align 8, !dbg !743
  %cmp16 = icmp eq i64 %28, %30, !dbg !744
  br i1 %cmp16, label %if.then, label %if.end, !dbg !745

if.then:                                          ; preds = %cond.end
  %31 = load ptr, ptr %s.addr, align 8, !dbg !746
  %temp17 = getelementptr inbounds %struct.xz_dec, ptr %31, i32 0, i32 12, !dbg !748
  %pos18 = getelementptr inbounds %struct.anon.2, ptr %temp17, i32 0, i32 0, !dbg !749
  store i64 0, ptr %pos18, align 8, !dbg !750
  store i1 true, ptr %retval, align 1, !dbg !751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !751

if.end:                                           ; preds = %cond.end
  store i1 false, ptr %retval, align 1, !dbg !752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !752

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy_size) #14, !dbg !753
  %32 = load i1, ptr %retval, align 1, !dbg !753
  ret i1 %32, !dbg !753
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dec_stream_header(ptr noundef %s) #0 align 16 !dbg !754 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !758, metadata !DIExpression()), !dbg !759
  %0 = load ptr, ptr %s.addr, align 8, !dbg !760
  %temp = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 12, !dbg !760
  %buf = getelementptr inbounds %struct.anon.2, ptr %temp, i32 0, i32 2, !dbg !760
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !760
  %call = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef @.str, i64 noundef 6) #15, !dbg !760
  %cmp = icmp eq i32 %call, 0, !dbg !760
  br i1 %cmp, label %if.end, label %if.then, !dbg !762

if.then:                                          ; preds = %entry
  store i32 5, ptr %retval, align 4, !dbg !763
  br label %return, !dbg !763

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !764
  %temp1 = getelementptr inbounds %struct.xz_dec, ptr %1, i32 0, i32 12, !dbg !764
  %buf2 = getelementptr inbounds %struct.anon.2, ptr %temp1, i32 0, i32 2, !dbg !764
  %arraydecay3 = getelementptr inbounds [1024 x i8], ptr %buf2, i64 0, i64 0, !dbg !764
  %add.ptr = getelementptr i8, ptr %arraydecay3, i64 6, !dbg !764
  %call4 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr, i64 noundef 2) #18, !dbg !764
  %not = xor i32 %call4, -1, !dbg !764
  %2 = load ptr, ptr %s.addr, align 8, !dbg !766
  %temp5 = getelementptr inbounds %struct.xz_dec, ptr %2, i32 0, i32 12, !dbg !766
  %buf6 = getelementptr inbounds %struct.anon.2, ptr %temp5, i32 0, i32 2, !dbg !766
  %arraydecay7 = getelementptr inbounds [1024 x i8], ptr %buf6, i64 0, i64 0, !dbg !766
  %add.ptr8 = getelementptr i8, ptr %arraydecay7, i64 6, !dbg !766
  %add.ptr9 = getelementptr i8, ptr %add.ptr8, i64 2, !dbg !766
  %call10 = call i32 @__le32_to_cpup(ptr noundef %add.ptr9) #15, !dbg !766
  %cmp11 = icmp ne i32 %not, %call10, !dbg !767
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !768

if.then12:                                        ; preds = %if.end
  store i32 7, ptr %retval, align 4, !dbg !769
  br label %return, !dbg !769

if.end13:                                         ; preds = %if.end
  %3 = load ptr, ptr %s.addr, align 8, !dbg !770
  %temp14 = getelementptr inbounds %struct.xz_dec, ptr %3, i32 0, i32 12, !dbg !772
  %buf15 = getelementptr inbounds %struct.anon.2, ptr %temp14, i32 0, i32 2, !dbg !773
  %arrayidx = getelementptr [1024 x i8], ptr %buf15, i64 0, i64 6, !dbg !770
  %4 = load i8, ptr %arrayidx, align 2, !dbg !770
  %conv = zext i8 %4 to i32, !dbg !770
  %cmp16 = icmp ne i32 %conv, 0, !dbg !774
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !775

if.then18:                                        ; preds = %if.end13
  store i32 6, ptr %retval, align 4, !dbg !776
  br label %return, !dbg !776

if.end19:                                         ; preds = %if.end13
  %5 = load ptr, ptr %s.addr, align 8, !dbg !777
  %temp20 = getelementptr inbounds %struct.xz_dec, ptr %5, i32 0, i32 12, !dbg !779
  %buf21 = getelementptr inbounds %struct.anon.2, ptr %temp20, i32 0, i32 2, !dbg !780
  %arrayidx22 = getelementptr [1024 x i8], ptr %buf21, i64 0, i64 7, !dbg !777
  %6 = load i8, ptr %arrayidx22, align 1, !dbg !777
  %conv23 = zext i8 %6 to i32, !dbg !777
  %cmp24 = icmp sgt i32 %conv23, 15, !dbg !781
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !782

if.then26:                                        ; preds = %if.end19
  store i32 6, ptr %retval, align 4, !dbg !783
  br label %return, !dbg !783

if.end27:                                         ; preds = %if.end19
  %7 = load ptr, ptr %s.addr, align 8, !dbg !784
  %temp28 = getelementptr inbounds %struct.xz_dec, ptr %7, i32 0, i32 12, !dbg !785
  %buf29 = getelementptr inbounds %struct.anon.2, ptr %temp28, i32 0, i32 2, !dbg !786
  %arrayidx30 = getelementptr [1024 x i8], ptr %buf29, i64 0, i64 7, !dbg !784
  %8 = load i8, ptr %arrayidx30, align 1, !dbg !784
  %conv31 = zext i8 %8 to i32, !dbg !784
  %9 = load ptr, ptr %s.addr, align 8, !dbg !787
  %check_type = getelementptr inbounds %struct.xz_dec, ptr %9, i32 0, i32 6, !dbg !788
  store i32 %conv31, ptr %check_type, align 4, !dbg !789
  %10 = load ptr, ptr %s.addr, align 8, !dbg !790
  %check_type32 = getelementptr inbounds %struct.xz_dec, ptr %10, i32 0, i32 6, !dbg !792
  %11 = load i32, ptr %check_type32, align 4, !dbg !792
  %cmp33 = icmp ugt i32 %11, 1, !dbg !793
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !794

if.then35:                                        ; preds = %if.end27
  store i32 6, ptr %retval, align 4, !dbg !795
  br label %return, !dbg !795

if.end36:                                         ; preds = %if.end27
  store i32 0, ptr %retval, align 4, !dbg !796
  br label %return, !dbg !796

return:                                           ; preds = %if.end36, %if.then35, %if.then26, %if.then18, %if.then12, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !797
  ret i32 %12, !dbg !797
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dec_block_header(ptr noundef %s) #0 align 16 !dbg !798 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !800, metadata !DIExpression()), !dbg !802
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !803
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !801, metadata !DIExpression()), !dbg !804
  %0 = load ptr, ptr %s.addr, align 8, !dbg !805
  %temp = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 12, !dbg !806
  %size = getelementptr inbounds %struct.anon.2, ptr %temp, i32 0, i32 1, !dbg !807
  %1 = load i64, ptr %size, align 8, !dbg !808
  %sub = sub i64 %1, 4, !dbg !808
  store i64 %sub, ptr %size, align 8, !dbg !808
  %2 = load ptr, ptr %s.addr, align 8, !dbg !809
  %temp1 = getelementptr inbounds %struct.xz_dec, ptr %2, i32 0, i32 12, !dbg !809
  %buf = getelementptr inbounds %struct.anon.2, ptr %temp1, i32 0, i32 2, !dbg !809
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !809
  %3 = load ptr, ptr %s.addr, align 8, !dbg !809
  %temp2 = getelementptr inbounds %struct.xz_dec, ptr %3, i32 0, i32 12, !dbg !809
  %size3 = getelementptr inbounds %struct.anon.2, ptr %temp2, i32 0, i32 1, !dbg !809
  %4 = load i64, ptr %size3, align 8, !dbg !809
  %call = call i32 @crc32_le(i32 noundef -1, ptr noundef %arraydecay, i64 noundef %4) #18, !dbg !809
  %not = xor i32 %call, -1, !dbg !809
  %5 = load ptr, ptr %s.addr, align 8, !dbg !811
  %temp4 = getelementptr inbounds %struct.xz_dec, ptr %5, i32 0, i32 12, !dbg !811
  %buf5 = getelementptr inbounds %struct.anon.2, ptr %temp4, i32 0, i32 2, !dbg !811
  %arraydecay6 = getelementptr inbounds [1024 x i8], ptr %buf5, i64 0, i64 0, !dbg !811
  %6 = load ptr, ptr %s.addr, align 8, !dbg !811
  %temp7 = getelementptr inbounds %struct.xz_dec, ptr %6, i32 0, i32 12, !dbg !811
  %size8 = getelementptr inbounds %struct.anon.2, ptr %temp7, i32 0, i32 1, !dbg !811
  %7 = load i64, ptr %size8, align 8, !dbg !811
  %add.ptr = getelementptr i8, ptr %arraydecay6, i64 %7, !dbg !811
  %call9 = call i32 @__le32_to_cpup(ptr noundef %add.ptr) #15, !dbg !811
  %cmp = icmp ne i32 %not, %call9, !dbg !812
  br i1 %cmp, label %if.then, label %if.end, !dbg !813

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4, !dbg !814
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !814

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %s.addr, align 8, !dbg !815
  %temp10 = getelementptr inbounds %struct.xz_dec, ptr %8, i32 0, i32 12, !dbg !816
  %pos = getelementptr inbounds %struct.anon.2, ptr %temp10, i32 0, i32 0, !dbg !817
  store i64 2, ptr %pos, align 8, !dbg !818
  %9 = load ptr, ptr %s.addr, align 8, !dbg !819
  %temp11 = getelementptr inbounds %struct.xz_dec, ptr %9, i32 0, i32 12, !dbg !821
  %buf12 = getelementptr inbounds %struct.anon.2, ptr %temp11, i32 0, i32 2, !dbg !822
  %arrayidx = getelementptr [1024 x i8], ptr %buf12, i64 0, i64 1, !dbg !819
  %10 = load i8, ptr %arrayidx, align 1, !dbg !819
  %conv = zext i8 %10 to i32, !dbg !819
  %and = and i32 %conv, 62, !dbg !823
  %tobool = icmp ne i32 %and, 0, !dbg !823
  br i1 %tobool, label %if.then13, label %if.end14, !dbg !824

if.then13:                                        ; preds = %if.end
  store i32 6, ptr %retval, align 4, !dbg !825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !825

if.end14:                                         ; preds = %if.end
  %11 = load ptr, ptr %s.addr, align 8, !dbg !826
  %temp15 = getelementptr inbounds %struct.xz_dec, ptr %11, i32 0, i32 12, !dbg !828
  %buf16 = getelementptr inbounds %struct.anon.2, ptr %temp15, i32 0, i32 2, !dbg !829
  %arrayidx17 = getelementptr [1024 x i8], ptr %buf16, i64 0, i64 1, !dbg !826
  %12 = load i8, ptr %arrayidx17, align 1, !dbg !826
  %conv18 = zext i8 %12 to i32, !dbg !826
  %and19 = and i32 %conv18, 64, !dbg !830
  %tobool20 = icmp ne i32 %and19, 0, !dbg !830
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !831

if.then21:                                        ; preds = %if.end14
  %13 = load ptr, ptr %s.addr, align 8, !dbg !832
  %14 = load ptr, ptr %s.addr, align 8, !dbg !835
  %temp22 = getelementptr inbounds %struct.xz_dec, ptr %14, i32 0, i32 12, !dbg !836
  %buf23 = getelementptr inbounds %struct.anon.2, ptr %temp22, i32 0, i32 2, !dbg !837
  %arraydecay24 = getelementptr inbounds [1024 x i8], ptr %buf23, i64 0, i64 0, !dbg !835
  %15 = load ptr, ptr %s.addr, align 8, !dbg !838
  %temp25 = getelementptr inbounds %struct.xz_dec, ptr %15, i32 0, i32 12, !dbg !839
  %pos26 = getelementptr inbounds %struct.anon.2, ptr %temp25, i32 0, i32 0, !dbg !840
  %16 = load ptr, ptr %s.addr, align 8, !dbg !841
  %temp27 = getelementptr inbounds %struct.xz_dec, ptr %16, i32 0, i32 12, !dbg !842
  %size28 = getelementptr inbounds %struct.anon.2, ptr %temp27, i32 0, i32 1, !dbg !843
  %17 = load i64, ptr %size28, align 8, !dbg !843
  %call29 = call i32 @dec_vli(ptr noundef %13, ptr noundef %arraydecay24, ptr noundef %pos26, i64 noundef %17) #15, !dbg !844
  %cmp30 = icmp ne i32 %call29, 1, !dbg !845
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !846

if.then32:                                        ; preds = %if.then21
  store i32 7, ptr %retval, align 4, !dbg !847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !847

if.end33:                                         ; preds = %if.then21
  %18 = load ptr, ptr %s.addr, align 8, !dbg !848
  %vli = getelementptr inbounds %struct.xz_dec, ptr %18, i32 0, i32 2, !dbg !849
  %19 = load i64, ptr %vli, align 8, !dbg !849
  %20 = load ptr, ptr %s.addr, align 8, !dbg !850
  %block_header = getelementptr inbounds %struct.xz_dec, ptr %20, i32 0, i32 9, !dbg !851
  %compressed = getelementptr inbounds %struct.anon, ptr %block_header, i32 0, i32 0, !dbg !852
  store i64 %19, ptr %compressed, align 8, !dbg !853
  br label %if.end36, !dbg !854

if.else:                                          ; preds = %if.end14
  %21 = load ptr, ptr %s.addr, align 8, !dbg !855
  %block_header34 = getelementptr inbounds %struct.xz_dec, ptr %21, i32 0, i32 9, !dbg !857
  %compressed35 = getelementptr inbounds %struct.anon, ptr %block_header34, i32 0, i32 0, !dbg !858
  store i64 -1, ptr %compressed35, align 8, !dbg !859
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end33
  %22 = load ptr, ptr %s.addr, align 8, !dbg !860
  %temp37 = getelementptr inbounds %struct.xz_dec, ptr %22, i32 0, i32 12, !dbg !862
  %buf38 = getelementptr inbounds %struct.anon.2, ptr %temp37, i32 0, i32 2, !dbg !863
  %arrayidx39 = getelementptr [1024 x i8], ptr %buf38, i64 0, i64 1, !dbg !860
  %23 = load i8, ptr %arrayidx39, align 1, !dbg !860
  %conv40 = zext i8 %23 to i32, !dbg !860
  %and41 = and i32 %conv40, 128, !dbg !864
  %tobool42 = icmp ne i32 %and41, 0, !dbg !864
  br i1 %tobool42, label %if.then43, label %if.else58, !dbg !865

if.then43:                                        ; preds = %if.end36
  %24 = load ptr, ptr %s.addr, align 8, !dbg !866
  %25 = load ptr, ptr %s.addr, align 8, !dbg !869
  %temp44 = getelementptr inbounds %struct.xz_dec, ptr %25, i32 0, i32 12, !dbg !870
  %buf45 = getelementptr inbounds %struct.anon.2, ptr %temp44, i32 0, i32 2, !dbg !871
  %arraydecay46 = getelementptr inbounds [1024 x i8], ptr %buf45, i64 0, i64 0, !dbg !869
  %26 = load ptr, ptr %s.addr, align 8, !dbg !872
  %temp47 = getelementptr inbounds %struct.xz_dec, ptr %26, i32 0, i32 12, !dbg !873
  %pos48 = getelementptr inbounds %struct.anon.2, ptr %temp47, i32 0, i32 0, !dbg !874
  %27 = load ptr, ptr %s.addr, align 8, !dbg !875
  %temp49 = getelementptr inbounds %struct.xz_dec, ptr %27, i32 0, i32 12, !dbg !876
  %size50 = getelementptr inbounds %struct.anon.2, ptr %temp49, i32 0, i32 1, !dbg !877
  %28 = load i64, ptr %size50, align 8, !dbg !877
  %call51 = call i32 @dec_vli(ptr noundef %24, ptr noundef %arraydecay46, ptr noundef %pos48, i64 noundef %28) #15, !dbg !878
  %cmp52 = icmp ne i32 %call51, 1, !dbg !879
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !880

if.then54:                                        ; preds = %if.then43
  store i32 7, ptr %retval, align 4, !dbg !881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !881

if.end55:                                         ; preds = %if.then43
  %29 = load ptr, ptr %s.addr, align 8, !dbg !882
  %vli56 = getelementptr inbounds %struct.xz_dec, ptr %29, i32 0, i32 2, !dbg !883
  %30 = load i64, ptr %vli56, align 8, !dbg !883
  %31 = load ptr, ptr %s.addr, align 8, !dbg !884
  %block_header57 = getelementptr inbounds %struct.xz_dec, ptr %31, i32 0, i32 9, !dbg !885
  %uncompressed = getelementptr inbounds %struct.anon, ptr %block_header57, i32 0, i32 1, !dbg !886
  store i64 %30, ptr %uncompressed, align 8, !dbg !887
  br label %if.end61, !dbg !888

if.else58:                                        ; preds = %if.end36
  %32 = load ptr, ptr %s.addr, align 8, !dbg !889
  %block_header59 = getelementptr inbounds %struct.xz_dec, ptr %32, i32 0, i32 9, !dbg !891
  %uncompressed60 = getelementptr inbounds %struct.anon, ptr %block_header59, i32 0, i32 1, !dbg !892
  store i64 -1, ptr %uncompressed60, align 8, !dbg !893
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.end55
  %33 = load ptr, ptr %s.addr, align 8, !dbg !894
  %temp62 = getelementptr inbounds %struct.xz_dec, ptr %33, i32 0, i32 12, !dbg !895
  %buf63 = getelementptr inbounds %struct.anon.2, ptr %temp62, i32 0, i32 2, !dbg !896
  %arrayidx64 = getelementptr [1024 x i8], ptr %buf63, i64 0, i64 1, !dbg !894
  %34 = load i8, ptr %arrayidx64, align 1, !dbg !894
  %conv65 = zext i8 %34 to i32, !dbg !894
  %and66 = and i32 %conv65, 1, !dbg !897
  %tobool67 = icmp ne i32 %and66, 0, !dbg !894
  %35 = load ptr, ptr %s.addr, align 8, !dbg !898
  %bcj_active = getelementptr inbounds %struct.xz_dec, ptr %35, i32 0, i32 15, !dbg !899
  %frombool = zext i1 %tobool67 to i8, !dbg !900
  store i8 %frombool, ptr %bcj_active, align 8, !dbg !900
  %36 = load ptr, ptr %s.addr, align 8, !dbg !901
  %bcj_active68 = getelementptr inbounds %struct.xz_dec, ptr %36, i32 0, i32 15, !dbg !903
  %37 = load i8, ptr %bcj_active68, align 8, !dbg !903, !range !259, !noundef !260
  %tobool69 = trunc i8 %37 to i1, !dbg !903
  br i1 %tobool69, label %if.then70, label %if.end101, !dbg !904

if.then70:                                        ; preds = %if.end61
  %38 = load ptr, ptr %s.addr, align 8, !dbg !905
  %temp71 = getelementptr inbounds %struct.xz_dec, ptr %38, i32 0, i32 12, !dbg !908
  %size72 = getelementptr inbounds %struct.anon.2, ptr %temp71, i32 0, i32 1, !dbg !909
  %39 = load i64, ptr %size72, align 8, !dbg !909
  %40 = load ptr, ptr %s.addr, align 8, !dbg !910
  %temp73 = getelementptr inbounds %struct.xz_dec, ptr %40, i32 0, i32 12, !dbg !911
  %pos74 = getelementptr inbounds %struct.anon.2, ptr %temp73, i32 0, i32 0, !dbg !912
  %41 = load i64, ptr %pos74, align 8, !dbg !912
  %sub75 = sub i64 %39, %41, !dbg !913
  %cmp76 = icmp ult i64 %sub75, 2, !dbg !914
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !915

if.then78:                                        ; preds = %if.then70
  store i32 6, ptr %retval, align 4, !dbg !916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !916

if.end79:                                         ; preds = %if.then70
  %42 = load ptr, ptr %s.addr, align 8, !dbg !917
  %bcj = getelementptr inbounds %struct.xz_dec, ptr %42, i32 0, i32 14, !dbg !918
  %43 = load ptr, ptr %bcj, align 8, !dbg !918
  %44 = load ptr, ptr %s.addr, align 8, !dbg !919
  %temp80 = getelementptr inbounds %struct.xz_dec, ptr %44, i32 0, i32 12, !dbg !920
  %buf81 = getelementptr inbounds %struct.anon.2, ptr %temp80, i32 0, i32 2, !dbg !921
  %45 = load ptr, ptr %s.addr, align 8, !dbg !922
  %temp82 = getelementptr inbounds %struct.xz_dec, ptr %45, i32 0, i32 12, !dbg !923
  %pos83 = getelementptr inbounds %struct.anon.2, ptr %temp82, i32 0, i32 0, !dbg !924
  %46 = load i64, ptr %pos83, align 8, !dbg !925
  %inc = add i64 %46, 1, !dbg !925
  store i64 %inc, ptr %pos83, align 8, !dbg !925
  %arrayidx84 = getelementptr [1024 x i8], ptr %buf81, i64 0, i64 %46, !dbg !919
  %47 = load i8, ptr %arrayidx84, align 1, !dbg !919
  %call85 = call i32 @xz_dec_bcj_reset(ptr noundef %43, i8 noundef zeroext %47) #15, !dbg !926
  store i32 %call85, ptr %ret, align 4, !dbg !927
  %48 = load i32, ptr %ret, align 4, !dbg !928
  %cmp86 = icmp ne i32 %48, 0, !dbg !930
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !931

if.then88:                                        ; preds = %if.end79
  %49 = load i32, ptr %ret, align 4, !dbg !932
  store i32 %49, ptr %retval, align 4, !dbg !933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !933

if.end89:                                         ; preds = %if.end79
  %50 = load ptr, ptr %s.addr, align 8, !dbg !934
  %temp90 = getelementptr inbounds %struct.xz_dec, ptr %50, i32 0, i32 12, !dbg !936
  %buf91 = getelementptr inbounds %struct.anon.2, ptr %temp90, i32 0, i32 2, !dbg !937
  %51 = load ptr, ptr %s.addr, align 8, !dbg !938
  %temp92 = getelementptr inbounds %struct.xz_dec, ptr %51, i32 0, i32 12, !dbg !939
  %pos93 = getelementptr inbounds %struct.anon.2, ptr %temp92, i32 0, i32 0, !dbg !940
  %52 = load i64, ptr %pos93, align 8, !dbg !941
  %inc94 = add i64 %52, 1, !dbg !941
  store i64 %inc94, ptr %pos93, align 8, !dbg !941
  %arrayidx95 = getelementptr [1024 x i8], ptr %buf91, i64 0, i64 %52, !dbg !934
  %53 = load i8, ptr %arrayidx95, align 1, !dbg !934
  %conv96 = zext i8 %53 to i32, !dbg !934
  %cmp97 = icmp ne i32 %conv96, 0, !dbg !942
  br i1 %cmp97, label %if.then99, label %if.end100, !dbg !943

if.then99:                                        ; preds = %if.end89
  store i32 6, ptr %retval, align 4, !dbg !944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !944

if.end100:                                        ; preds = %if.end89
  br label %if.end101, !dbg !945

if.end101:                                        ; preds = %if.end100, %if.end61
  %54 = load ptr, ptr %s.addr, align 8, !dbg !946
  %temp102 = getelementptr inbounds %struct.xz_dec, ptr %54, i32 0, i32 12, !dbg !948
  %size103 = getelementptr inbounds %struct.anon.2, ptr %temp102, i32 0, i32 1, !dbg !949
  %55 = load i64, ptr %size103, align 8, !dbg !949
  %56 = load ptr, ptr %s.addr, align 8, !dbg !950
  %temp104 = getelementptr inbounds %struct.xz_dec, ptr %56, i32 0, i32 12, !dbg !951
  %pos105 = getelementptr inbounds %struct.anon.2, ptr %temp104, i32 0, i32 0, !dbg !952
  %57 = load i64, ptr %pos105, align 8, !dbg !952
  %sub106 = sub i64 %55, %57, !dbg !953
  %cmp107 = icmp ult i64 %sub106, 2, !dbg !954
  br i1 %cmp107, label %if.then109, label %if.end110, !dbg !955

if.then109:                                       ; preds = %if.end101
  store i32 7, ptr %retval, align 4, !dbg !956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !956

if.end110:                                        ; preds = %if.end101
  %58 = load ptr, ptr %s.addr, align 8, !dbg !957
  %temp111 = getelementptr inbounds %struct.xz_dec, ptr %58, i32 0, i32 12, !dbg !959
  %buf112 = getelementptr inbounds %struct.anon.2, ptr %temp111, i32 0, i32 2, !dbg !960
  %59 = load ptr, ptr %s.addr, align 8, !dbg !961
  %temp113 = getelementptr inbounds %struct.xz_dec, ptr %59, i32 0, i32 12, !dbg !962
  %pos114 = getelementptr inbounds %struct.anon.2, ptr %temp113, i32 0, i32 0, !dbg !963
  %60 = load i64, ptr %pos114, align 8, !dbg !964
  %inc115 = add i64 %60, 1, !dbg !964
  store i64 %inc115, ptr %pos114, align 8, !dbg !964
  %arrayidx116 = getelementptr [1024 x i8], ptr %buf112, i64 0, i64 %60, !dbg !957
  %61 = load i8, ptr %arrayidx116, align 1, !dbg !957
  %conv117 = zext i8 %61 to i32, !dbg !957
  %cmp118 = icmp ne i32 %conv117, 33, !dbg !965
  br i1 %cmp118, label %if.then120, label %if.end121, !dbg !966

if.then120:                                       ; preds = %if.end110
  store i32 6, ptr %retval, align 4, !dbg !967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !967

if.end121:                                        ; preds = %if.end110
  %62 = load ptr, ptr %s.addr, align 8, !dbg !968
  %temp122 = getelementptr inbounds %struct.xz_dec, ptr %62, i32 0, i32 12, !dbg !970
  %buf123 = getelementptr inbounds %struct.anon.2, ptr %temp122, i32 0, i32 2, !dbg !971
  %63 = load ptr, ptr %s.addr, align 8, !dbg !972
  %temp124 = getelementptr inbounds %struct.xz_dec, ptr %63, i32 0, i32 12, !dbg !973
  %pos125 = getelementptr inbounds %struct.anon.2, ptr %temp124, i32 0, i32 0, !dbg !974
  %64 = load i64, ptr %pos125, align 8, !dbg !975
  %inc126 = add i64 %64, 1, !dbg !975
  store i64 %inc126, ptr %pos125, align 8, !dbg !975
  %arrayidx127 = getelementptr [1024 x i8], ptr %buf123, i64 0, i64 %64, !dbg !968
  %65 = load i8, ptr %arrayidx127, align 1, !dbg !968
  %conv128 = zext i8 %65 to i32, !dbg !968
  %cmp129 = icmp ne i32 %conv128, 1, !dbg !976
  br i1 %cmp129, label %if.then131, label %if.end132, !dbg !977

if.then131:                                       ; preds = %if.end121
  store i32 6, ptr %retval, align 4, !dbg !978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !978

if.end132:                                        ; preds = %if.end121
  %66 = load ptr, ptr %s.addr, align 8, !dbg !979
  %temp133 = getelementptr inbounds %struct.xz_dec, ptr %66, i32 0, i32 12, !dbg !981
  %size134 = getelementptr inbounds %struct.anon.2, ptr %temp133, i32 0, i32 1, !dbg !982
  %67 = load i64, ptr %size134, align 8, !dbg !982
  %68 = load ptr, ptr %s.addr, align 8, !dbg !983
  %temp135 = getelementptr inbounds %struct.xz_dec, ptr %68, i32 0, i32 12, !dbg !984
  %pos136 = getelementptr inbounds %struct.anon.2, ptr %temp135, i32 0, i32 0, !dbg !985
  %69 = load i64, ptr %pos136, align 8, !dbg !985
  %sub137 = sub i64 %67, %69, !dbg !986
  %cmp138 = icmp ult i64 %sub137, 1, !dbg !987
  br i1 %cmp138, label %if.then140, label %if.end141, !dbg !988

if.then140:                                       ; preds = %if.end132
  store i32 7, ptr %retval, align 4, !dbg !989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !989

if.end141:                                        ; preds = %if.end132
  %70 = load ptr, ptr %s.addr, align 8, !dbg !990
  %lzma2 = getelementptr inbounds %struct.xz_dec, ptr %70, i32 0, i32 13, !dbg !991
  %71 = load ptr, ptr %lzma2, align 8, !dbg !991
  %72 = load ptr, ptr %s.addr, align 8, !dbg !992
  %temp142 = getelementptr inbounds %struct.xz_dec, ptr %72, i32 0, i32 12, !dbg !993
  %buf143 = getelementptr inbounds %struct.anon.2, ptr %temp142, i32 0, i32 2, !dbg !994
  %73 = load ptr, ptr %s.addr, align 8, !dbg !995
  %temp144 = getelementptr inbounds %struct.xz_dec, ptr %73, i32 0, i32 12, !dbg !996
  %pos145 = getelementptr inbounds %struct.anon.2, ptr %temp144, i32 0, i32 0, !dbg !997
  %74 = load i64, ptr %pos145, align 8, !dbg !998
  %inc146 = add i64 %74, 1, !dbg !998
  store i64 %inc146, ptr %pos145, align 8, !dbg !998
  %arrayidx147 = getelementptr [1024 x i8], ptr %buf143, i64 0, i64 %74, !dbg !992
  %75 = load i8, ptr %arrayidx147, align 1, !dbg !992
  %call148 = call i32 @xz_dec_lzma2_reset(ptr noundef %71, i8 noundef zeroext %75) #15, !dbg !999
  store i32 %call148, ptr %ret, align 4, !dbg !1000
  %76 = load i32, ptr %ret, align 4, !dbg !1001
  %cmp149 = icmp ne i32 %76, 0, !dbg !1003
  br i1 %cmp149, label %if.then151, label %if.end152, !dbg !1004

if.then151:                                       ; preds = %if.end141
  %77 = load i32, ptr %ret, align 4, !dbg !1005
  store i32 %77, ptr %retval, align 4, !dbg !1006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1006

if.end152:                                        ; preds = %if.end141
  br label %while.cond, !dbg !1007

while.cond:                                       ; preds = %if.end169, %if.end152
  %78 = load ptr, ptr %s.addr, align 8, !dbg !1008
  %temp153 = getelementptr inbounds %struct.xz_dec, ptr %78, i32 0, i32 12, !dbg !1009
  %pos154 = getelementptr inbounds %struct.anon.2, ptr %temp153, i32 0, i32 0, !dbg !1010
  %79 = load i64, ptr %pos154, align 8, !dbg !1010
  %80 = load ptr, ptr %s.addr, align 8, !dbg !1011
  %temp155 = getelementptr inbounds %struct.xz_dec, ptr %80, i32 0, i32 12, !dbg !1012
  %size156 = getelementptr inbounds %struct.anon.2, ptr %temp155, i32 0, i32 1, !dbg !1013
  %81 = load i64, ptr %size156, align 8, !dbg !1013
  %cmp157 = icmp ult i64 %79, %81, !dbg !1014
  br i1 %cmp157, label %while.body, label %while.end, !dbg !1007

while.body:                                       ; preds = %while.cond
  %82 = load ptr, ptr %s.addr, align 8, !dbg !1015
  %temp159 = getelementptr inbounds %struct.xz_dec, ptr %82, i32 0, i32 12, !dbg !1017
  %buf160 = getelementptr inbounds %struct.anon.2, ptr %temp159, i32 0, i32 2, !dbg !1018
  %83 = load ptr, ptr %s.addr, align 8, !dbg !1019
  %temp161 = getelementptr inbounds %struct.xz_dec, ptr %83, i32 0, i32 12, !dbg !1020
  %pos162 = getelementptr inbounds %struct.anon.2, ptr %temp161, i32 0, i32 0, !dbg !1021
  %84 = load i64, ptr %pos162, align 8, !dbg !1022
  %inc163 = add i64 %84, 1, !dbg !1022
  store i64 %inc163, ptr %pos162, align 8, !dbg !1022
  %arrayidx164 = getelementptr [1024 x i8], ptr %buf160, i64 0, i64 %84, !dbg !1015
  %85 = load i8, ptr %arrayidx164, align 1, !dbg !1015
  %conv165 = zext i8 %85 to i32, !dbg !1015
  %cmp166 = icmp ne i32 %conv165, 0, !dbg !1023
  br i1 %cmp166, label %if.then168, label %if.end169, !dbg !1024

if.then168:                                       ; preds = %while.body
  store i32 6, ptr %retval, align 4, !dbg !1025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1025

if.end169:                                        ; preds = %while.body
  br label %while.cond, !dbg !1007, !llvm.loop !1026

while.end:                                        ; preds = %while.cond
  %86 = load ptr, ptr %s.addr, align 8, !dbg !1028
  %temp170 = getelementptr inbounds %struct.xz_dec, ptr %86, i32 0, i32 12, !dbg !1029
  %pos171 = getelementptr inbounds %struct.anon.2, ptr %temp170, i32 0, i32 0, !dbg !1030
  store i64 0, ptr %pos171, align 8, !dbg !1031
  %87 = load ptr, ptr %s.addr, align 8, !dbg !1032
  %block = getelementptr inbounds %struct.xz_dec, ptr %87, i32 0, i32 10, !dbg !1033
  %compressed172 = getelementptr inbounds %struct.anon.0, ptr %block, i32 0, i32 0, !dbg !1034
  store i64 0, ptr %compressed172, align 8, !dbg !1035
  %88 = load ptr, ptr %s.addr, align 8, !dbg !1036
  %block173 = getelementptr inbounds %struct.xz_dec, ptr %88, i32 0, i32 10, !dbg !1037
  %uncompressed174 = getelementptr inbounds %struct.anon.0, ptr %block173, i32 0, i32 1, !dbg !1038
  store i64 0, ptr %uncompressed174, align 8, !dbg !1039
  store i32 0, ptr %retval, align 4, !dbg !1040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1040

cleanup:                                          ; preds = %while.end, %if.then168, %if.then151, %if.then140, %if.then131, %if.then120, %if.then109, %if.then99, %if.then88, %if.then78, %if.then54, %if.then32, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !1041
  %89 = load i32, ptr %retval, align 4, !dbg !1041
  ret i32 %89, !dbg !1041
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dec_block(ptr noundef %s, ptr noundef %b) #0 align 16 !dbg !1042 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1044, metadata !DIExpression()), !dbg !1047
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1045, metadata !DIExpression()), !dbg !1048
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !1049
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1046, metadata !DIExpression()), !dbg !1050
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1051
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %0, i32 0, i32 1, !dbg !1052
  %1 = load i64, ptr %in_pos, align 8, !dbg !1052
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1053
  %in_start = getelementptr inbounds %struct.xz_dec, ptr %2, i32 0, i32 3, !dbg !1054
  store i64 %1, ptr %in_start, align 8, !dbg !1055
  %3 = load ptr, ptr %b.addr, align 8, !dbg !1056
  %out_pos = getelementptr inbounds %struct.xz_buf, ptr %3, i32 0, i32 4, !dbg !1057
  %4 = load i64, ptr %out_pos, align 8, !dbg !1057
  %5 = load ptr, ptr %s.addr, align 8, !dbg !1058
  %out_start = getelementptr inbounds %struct.xz_dec, ptr %5, i32 0, i32 4, !dbg !1059
  store i64 %4, ptr %out_start, align 8, !dbg !1060
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1061
  %bcj_active = getelementptr inbounds %struct.xz_dec, ptr %6, i32 0, i32 15, !dbg !1063
  %7 = load i8, ptr %bcj_active, align 8, !dbg !1063, !range !259, !noundef !260
  %tobool = trunc i8 %7 to i1, !dbg !1063
  br i1 %tobool, label %if.then, label %if.else, !dbg !1064

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1065
  %bcj = getelementptr inbounds %struct.xz_dec, ptr %8, i32 0, i32 14, !dbg !1066
  %9 = load ptr, ptr %bcj, align 8, !dbg !1066
  %10 = load ptr, ptr %s.addr, align 8, !dbg !1067
  %lzma2 = getelementptr inbounds %struct.xz_dec, ptr %10, i32 0, i32 13, !dbg !1068
  %11 = load ptr, ptr %lzma2, align 8, !dbg !1068
  %12 = load ptr, ptr %b.addr, align 8, !dbg !1069
  %call = call i32 @xz_dec_bcj_run(ptr noundef %9, ptr noundef %11, ptr noundef %12) #15, !dbg !1070
  store i32 %call, ptr %ret, align 4, !dbg !1071
  br label %if.end, !dbg !1072

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %s.addr, align 8, !dbg !1073
  %lzma21 = getelementptr inbounds %struct.xz_dec, ptr %13, i32 0, i32 13, !dbg !1074
  %14 = load ptr, ptr %lzma21, align 8, !dbg !1074
  %15 = load ptr, ptr %b.addr, align 8, !dbg !1075
  %call2 = call i32 @xz_dec_lzma2_run(ptr noundef %14, ptr noundef %15) #15, !dbg !1076
  store i32 %call2, ptr %ret, align 4, !dbg !1077
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load ptr, ptr %b.addr, align 8, !dbg !1078
  %in_pos3 = getelementptr inbounds %struct.xz_buf, ptr %16, i32 0, i32 1, !dbg !1079
  %17 = load i64, ptr %in_pos3, align 8, !dbg !1079
  %18 = load ptr, ptr %s.addr, align 8, !dbg !1080
  %in_start4 = getelementptr inbounds %struct.xz_dec, ptr %18, i32 0, i32 3, !dbg !1081
  %19 = load i64, ptr %in_start4, align 8, !dbg !1081
  %sub = sub i64 %17, %19, !dbg !1082
  %20 = load ptr, ptr %s.addr, align 8, !dbg !1083
  %block = getelementptr inbounds %struct.xz_dec, ptr %20, i32 0, i32 10, !dbg !1084
  %compressed = getelementptr inbounds %struct.anon.0, ptr %block, i32 0, i32 0, !dbg !1085
  %21 = load i64, ptr %compressed, align 8, !dbg !1086
  %add = add i64 %21, %sub, !dbg !1086
  store i64 %add, ptr %compressed, align 8, !dbg !1086
  %22 = load ptr, ptr %b.addr, align 8, !dbg !1087
  %out_pos5 = getelementptr inbounds %struct.xz_buf, ptr %22, i32 0, i32 4, !dbg !1088
  %23 = load i64, ptr %out_pos5, align 8, !dbg !1088
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1089
  %out_start6 = getelementptr inbounds %struct.xz_dec, ptr %24, i32 0, i32 4, !dbg !1090
  %25 = load i64, ptr %out_start6, align 8, !dbg !1090
  %sub7 = sub i64 %23, %25, !dbg !1091
  %26 = load ptr, ptr %s.addr, align 8, !dbg !1092
  %block8 = getelementptr inbounds %struct.xz_dec, ptr %26, i32 0, i32 10, !dbg !1093
  %uncompressed = getelementptr inbounds %struct.anon.0, ptr %block8, i32 0, i32 1, !dbg !1094
  %27 = load i64, ptr %uncompressed, align 8, !dbg !1095
  %add9 = add i64 %27, %sub7, !dbg !1095
  store i64 %add9, ptr %uncompressed, align 8, !dbg !1095
  %28 = load ptr, ptr %s.addr, align 8, !dbg !1096
  %block10 = getelementptr inbounds %struct.xz_dec, ptr %28, i32 0, i32 10, !dbg !1098
  %compressed11 = getelementptr inbounds %struct.anon.0, ptr %block10, i32 0, i32 0, !dbg !1099
  %29 = load i64, ptr %compressed11, align 8, !dbg !1099
  %30 = load ptr, ptr %s.addr, align 8, !dbg !1100
  %block_header = getelementptr inbounds %struct.xz_dec, ptr %30, i32 0, i32 9, !dbg !1101
  %compressed12 = getelementptr inbounds %struct.anon, ptr %block_header, i32 0, i32 0, !dbg !1102
  %31 = load i64, ptr %compressed12, align 8, !dbg !1102
  %cmp = icmp ugt i64 %29, %31, !dbg !1103
  br i1 %cmp, label %if.then18, label %lor.lhs.false, !dbg !1104

lor.lhs.false:                                    ; preds = %if.end
  %32 = load ptr, ptr %s.addr, align 8, !dbg !1105
  %block13 = getelementptr inbounds %struct.xz_dec, ptr %32, i32 0, i32 10, !dbg !1106
  %uncompressed14 = getelementptr inbounds %struct.anon.0, ptr %block13, i32 0, i32 1, !dbg !1107
  %33 = load i64, ptr %uncompressed14, align 8, !dbg !1107
  %34 = load ptr, ptr %s.addr, align 8, !dbg !1108
  %block_header15 = getelementptr inbounds %struct.xz_dec, ptr %34, i32 0, i32 9, !dbg !1109
  %uncompressed16 = getelementptr inbounds %struct.anon, ptr %block_header15, i32 0, i32 1, !dbg !1110
  %35 = load i64, ptr %uncompressed16, align 8, !dbg !1110
  %cmp17 = icmp ugt i64 %33, %35, !dbg !1111
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !1112

if.then18:                                        ; preds = %lor.lhs.false, %if.end
  store i32 7, ptr %retval, align 4, !dbg !1113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1113

if.end19:                                         ; preds = %lor.lhs.false
  %36 = load ptr, ptr %s.addr, align 8, !dbg !1114
  %check_type = getelementptr inbounds %struct.xz_dec, ptr %36, i32 0, i32 6, !dbg !1116
  %37 = load i32, ptr %check_type, align 4, !dbg !1116
  %cmp20 = icmp eq i32 %37, 1, !dbg !1117
  br i1 %cmp20, label %if.then21, label %if.end29, !dbg !1118

if.then21:                                        ; preds = %if.end19
  %38 = load ptr, ptr %s.addr, align 8, !dbg !1119
  %crc32 = getelementptr inbounds %struct.xz_dec, ptr %38, i32 0, i32 5, !dbg !1119
  %39 = load i32, ptr %crc32, align 8, !dbg !1119
  %not = xor i32 %39, -1, !dbg !1119
  %40 = load ptr, ptr %b.addr, align 8, !dbg !1119
  %out = getelementptr inbounds %struct.xz_buf, ptr %40, i32 0, i32 3, !dbg !1119
  %41 = load ptr, ptr %out, align 8, !dbg !1119
  %42 = load ptr, ptr %s.addr, align 8, !dbg !1119
  %out_start22 = getelementptr inbounds %struct.xz_dec, ptr %42, i32 0, i32 4, !dbg !1119
  %43 = load i64, ptr %out_start22, align 8, !dbg !1119
  %add.ptr = getelementptr i8, ptr %41, i64 %43, !dbg !1119
  %44 = load ptr, ptr %b.addr, align 8, !dbg !1119
  %out_pos23 = getelementptr inbounds %struct.xz_buf, ptr %44, i32 0, i32 4, !dbg !1119
  %45 = load i64, ptr %out_pos23, align 8, !dbg !1119
  %46 = load ptr, ptr %s.addr, align 8, !dbg !1119
  %out_start24 = getelementptr inbounds %struct.xz_dec, ptr %46, i32 0, i32 4, !dbg !1119
  %47 = load i64, ptr %out_start24, align 8, !dbg !1119
  %sub25 = sub i64 %45, %47, !dbg !1119
  %call26 = call i32 @crc32_le(i32 noundef %not, ptr noundef %add.ptr, i64 noundef %sub25) #18, !dbg !1119
  %not27 = xor i32 %call26, -1, !dbg !1119
  %48 = load ptr, ptr %s.addr, align 8, !dbg !1120
  %crc3228 = getelementptr inbounds %struct.xz_dec, ptr %48, i32 0, i32 5, !dbg !1121
  store i32 %not27, ptr %crc3228, align 8, !dbg !1122
  br label %if.end29, !dbg !1120

if.end29:                                         ; preds = %if.then21, %if.end19
  %49 = load i32, ptr %ret, align 4, !dbg !1123
  %cmp30 = icmp eq i32 %49, 1, !dbg !1125
  br i1 %cmp30, label %if.then31, label %if.end86, !dbg !1126

if.then31:                                        ; preds = %if.end29
  %50 = load ptr, ptr %s.addr, align 8, !dbg !1127
  %block_header32 = getelementptr inbounds %struct.xz_dec, ptr %50, i32 0, i32 9, !dbg !1130
  %compressed33 = getelementptr inbounds %struct.anon, ptr %block_header32, i32 0, i32 0, !dbg !1131
  %51 = load i64, ptr %compressed33, align 8, !dbg !1131
  %cmp34 = icmp ne i64 %51, -1, !dbg !1132
  br i1 %cmp34, label %land.lhs.true, label %if.end41, !dbg !1133

land.lhs.true:                                    ; preds = %if.then31
  %52 = load ptr, ptr %s.addr, align 8, !dbg !1134
  %block_header35 = getelementptr inbounds %struct.xz_dec, ptr %52, i32 0, i32 9, !dbg !1135
  %compressed36 = getelementptr inbounds %struct.anon, ptr %block_header35, i32 0, i32 0, !dbg !1136
  %53 = load i64, ptr %compressed36, align 8, !dbg !1136
  %54 = load ptr, ptr %s.addr, align 8, !dbg !1137
  %block37 = getelementptr inbounds %struct.xz_dec, ptr %54, i32 0, i32 10, !dbg !1138
  %compressed38 = getelementptr inbounds %struct.anon.0, ptr %block37, i32 0, i32 0, !dbg !1139
  %55 = load i64, ptr %compressed38, align 8, !dbg !1139
  %cmp39 = icmp ne i64 %53, %55, !dbg !1140
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1141

if.then40:                                        ; preds = %land.lhs.true
  store i32 7, ptr %retval, align 4, !dbg !1142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1142

if.end41:                                         ; preds = %land.lhs.true, %if.then31
  %56 = load ptr, ptr %s.addr, align 8, !dbg !1143
  %block_header42 = getelementptr inbounds %struct.xz_dec, ptr %56, i32 0, i32 9, !dbg !1145
  %uncompressed43 = getelementptr inbounds %struct.anon, ptr %block_header42, i32 0, i32 1, !dbg !1146
  %57 = load i64, ptr %uncompressed43, align 8, !dbg !1146
  %cmp44 = icmp ne i64 %57, -1, !dbg !1147
  br i1 %cmp44, label %land.lhs.true45, label %if.end52, !dbg !1148

land.lhs.true45:                                  ; preds = %if.end41
  %58 = load ptr, ptr %s.addr, align 8, !dbg !1149
  %block_header46 = getelementptr inbounds %struct.xz_dec, ptr %58, i32 0, i32 9, !dbg !1150
  %uncompressed47 = getelementptr inbounds %struct.anon, ptr %block_header46, i32 0, i32 1, !dbg !1151
  %59 = load i64, ptr %uncompressed47, align 8, !dbg !1151
  %60 = load ptr, ptr %s.addr, align 8, !dbg !1152
  %block48 = getelementptr inbounds %struct.xz_dec, ptr %60, i32 0, i32 10, !dbg !1153
  %uncompressed49 = getelementptr inbounds %struct.anon.0, ptr %block48, i32 0, i32 1, !dbg !1154
  %61 = load i64, ptr %uncompressed49, align 8, !dbg !1154
  %cmp50 = icmp ne i64 %59, %61, !dbg !1155
  br i1 %cmp50, label %if.then51, label %if.end52, !dbg !1156

if.then51:                                        ; preds = %land.lhs.true45
  store i32 7, ptr %retval, align 4, !dbg !1157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1157

if.end52:                                         ; preds = %land.lhs.true45, %if.end41
  %62 = load ptr, ptr %s.addr, align 8, !dbg !1158
  %block_header53 = getelementptr inbounds %struct.xz_dec, ptr %62, i32 0, i32 9, !dbg !1159
  %size = getelementptr inbounds %struct.anon, ptr %block_header53, i32 0, i32 2, !dbg !1160
  %63 = load i32, ptr %size, align 8, !dbg !1160
  %conv = zext i32 %63 to i64, !dbg !1158
  %64 = load ptr, ptr %s.addr, align 8, !dbg !1161
  %block54 = getelementptr inbounds %struct.xz_dec, ptr %64, i32 0, i32 10, !dbg !1162
  %compressed55 = getelementptr inbounds %struct.anon.0, ptr %block54, i32 0, i32 0, !dbg !1163
  %65 = load i64, ptr %compressed55, align 8, !dbg !1163
  %add56 = add i64 %conv, %65, !dbg !1164
  %66 = load ptr, ptr %s.addr, align 8, !dbg !1165
  %block57 = getelementptr inbounds %struct.xz_dec, ptr %66, i32 0, i32 10, !dbg !1166
  %hash = getelementptr inbounds %struct.anon.0, ptr %block57, i32 0, i32 3, !dbg !1167
  %unpadded = getelementptr inbounds %struct.xz_dec_hash, ptr %hash, i32 0, i32 0, !dbg !1168
  %67 = load i64, ptr %unpadded, align 8, !dbg !1169
  %add58 = add i64 %67, %add56, !dbg !1169
  store i64 %add58, ptr %unpadded, align 8, !dbg !1169
  %68 = load ptr, ptr %s.addr, align 8, !dbg !1170
  %check_type59 = getelementptr inbounds %struct.xz_dec, ptr %68, i32 0, i32 6, !dbg !1172
  %69 = load i32, ptr %check_type59, align 4, !dbg !1172
  %cmp60 = icmp eq i32 %69, 1, !dbg !1173
  br i1 %cmp60, label %if.then62, label %if.end67, !dbg !1174

if.then62:                                        ; preds = %if.end52
  %70 = load ptr, ptr %s.addr, align 8, !dbg !1175
  %block63 = getelementptr inbounds %struct.xz_dec, ptr %70, i32 0, i32 10, !dbg !1176
  %hash64 = getelementptr inbounds %struct.anon.0, ptr %block63, i32 0, i32 3, !dbg !1177
  %unpadded65 = getelementptr inbounds %struct.xz_dec_hash, ptr %hash64, i32 0, i32 0, !dbg !1178
  %71 = load i64, ptr %unpadded65, align 8, !dbg !1179
  %add66 = add i64 %71, 4, !dbg !1179
  store i64 %add66, ptr %unpadded65, align 8, !dbg !1179
  br label %if.end67, !dbg !1175

if.end67:                                         ; preds = %if.then62, %if.end52
  %72 = load ptr, ptr %s.addr, align 8, !dbg !1180
  %block68 = getelementptr inbounds %struct.xz_dec, ptr %72, i32 0, i32 10, !dbg !1181
  %uncompressed69 = getelementptr inbounds %struct.anon.0, ptr %block68, i32 0, i32 1, !dbg !1182
  %73 = load i64, ptr %uncompressed69, align 8, !dbg !1182
  %74 = load ptr, ptr %s.addr, align 8, !dbg !1183
  %block70 = getelementptr inbounds %struct.xz_dec, ptr %74, i32 0, i32 10, !dbg !1184
  %hash71 = getelementptr inbounds %struct.anon.0, ptr %block70, i32 0, i32 3, !dbg !1185
  %uncompressed72 = getelementptr inbounds %struct.xz_dec_hash, ptr %hash71, i32 0, i32 1, !dbg !1186
  %75 = load i64, ptr %uncompressed72, align 8, !dbg !1187
  %add73 = add i64 %75, %73, !dbg !1187
  store i64 %add73, ptr %uncompressed72, align 8, !dbg !1187
  %76 = load ptr, ptr %s.addr, align 8, !dbg !1188
  %block74 = getelementptr inbounds %struct.xz_dec, ptr %76, i32 0, i32 10, !dbg !1188
  %hash75 = getelementptr inbounds %struct.anon.0, ptr %block74, i32 0, i32 3, !dbg !1188
  %crc3276 = getelementptr inbounds %struct.xz_dec_hash, ptr %hash75, i32 0, i32 2, !dbg !1188
  %77 = load i32, ptr %crc3276, align 8, !dbg !1188
  %not77 = xor i32 %77, -1, !dbg !1188
  %78 = load ptr, ptr %s.addr, align 8, !dbg !1188
  %block78 = getelementptr inbounds %struct.xz_dec, ptr %78, i32 0, i32 10, !dbg !1188
  %hash79 = getelementptr inbounds %struct.anon.0, ptr %block78, i32 0, i32 3, !dbg !1188
  %call80 = call i32 @crc32_le(i32 noundef %not77, ptr noundef %hash79, i64 noundef 24) #18, !dbg !1188
  %not81 = xor i32 %call80, -1, !dbg !1188
  %79 = load ptr, ptr %s.addr, align 8, !dbg !1189
  %block82 = getelementptr inbounds %struct.xz_dec, ptr %79, i32 0, i32 10, !dbg !1190
  %hash83 = getelementptr inbounds %struct.anon.0, ptr %block82, i32 0, i32 3, !dbg !1191
  %crc3284 = getelementptr inbounds %struct.xz_dec_hash, ptr %hash83, i32 0, i32 2, !dbg !1192
  store i32 %not81, ptr %crc3284, align 8, !dbg !1193
  %80 = load ptr, ptr %s.addr, align 8, !dbg !1194
  %block85 = getelementptr inbounds %struct.xz_dec, ptr %80, i32 0, i32 10, !dbg !1195
  %count = getelementptr inbounds %struct.anon.0, ptr %block85, i32 0, i32 2, !dbg !1196
  %81 = load i64, ptr %count, align 8, !dbg !1197
  %inc = add i64 %81, 1, !dbg !1197
  store i64 %inc, ptr %count, align 8, !dbg !1197
  br label %if.end86, !dbg !1198

if.end86:                                         ; preds = %if.end67, %if.end29
  %82 = load i32, ptr %ret, align 4, !dbg !1199
  store i32 %82, ptr %retval, align 4, !dbg !1200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1200

cleanup:                                          ; preds = %if.end86, %if.then51, %if.then40, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !1201
  %83 = load i32, ptr %retval, align 4, !dbg !1201
  ret i32 %83, !dbg !1201
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crc32_validate(ptr noundef %s, ptr noundef %b) #0 align 16 !dbg !1202 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1204, metadata !DIExpression()), !dbg !1206
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1205, metadata !DIExpression()), !dbg !1207
  br label %do.body, !dbg !1208

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1209
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %0, i32 0, i32 1, !dbg !1212
  %1 = load i64, ptr %in_pos, align 8, !dbg !1212
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1213
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %2, i32 0, i32 2, !dbg !1214
  %3 = load i64, ptr %in_size, align 8, !dbg !1214
  %cmp = icmp eq i64 %1, %3, !dbg !1215
  br i1 %cmp, label %if.then, label %if.end, !dbg !1216

if.then:                                          ; preds = %do.body
  store i32 0, ptr %retval, align 4, !dbg !1217
  br label %return, !dbg !1217

if.end:                                           ; preds = %do.body
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1218
  %crc32 = getelementptr inbounds %struct.xz_dec, ptr %4, i32 0, i32 5, !dbg !1220
  %5 = load i32, ptr %crc32, align 8, !dbg !1220
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1221
  %pos = getelementptr inbounds %struct.xz_dec, ptr %6, i32 0, i32 1, !dbg !1222
  %7 = load i32, ptr %pos, align 4, !dbg !1222
  %shr = lshr i32 %5, %7, !dbg !1223
  %and = and i32 %shr, 255, !dbg !1224
  %8 = load ptr, ptr %b.addr, align 8, !dbg !1225
  %in = getelementptr inbounds %struct.xz_buf, ptr %8, i32 0, i32 0, !dbg !1226
  %9 = load ptr, ptr %in, align 8, !dbg !1226
  %10 = load ptr, ptr %b.addr, align 8, !dbg !1227
  %in_pos1 = getelementptr inbounds %struct.xz_buf, ptr %10, i32 0, i32 1, !dbg !1228
  %11 = load i64, ptr %in_pos1, align 8, !dbg !1229
  %inc = add i64 %11, 1, !dbg !1229
  store i64 %inc, ptr %in_pos1, align 8, !dbg !1229
  %arrayidx = getelementptr i8, ptr %9, i64 %11, !dbg !1225
  %12 = load i8, ptr %arrayidx, align 1, !dbg !1225
  %conv = zext i8 %12 to i32, !dbg !1225
  %cmp2 = icmp ne i32 %and, %conv, !dbg !1230
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1231

if.then4:                                         ; preds = %if.end
  store i32 7, ptr %retval, align 4, !dbg !1232
  br label %return, !dbg !1232

if.end5:                                          ; preds = %if.end
  %13 = load ptr, ptr %s.addr, align 8, !dbg !1233
  %pos6 = getelementptr inbounds %struct.xz_dec, ptr %13, i32 0, i32 1, !dbg !1234
  %14 = load i32, ptr %pos6, align 4, !dbg !1235
  %add = add i32 %14, 8, !dbg !1235
  store i32 %add, ptr %pos6, align 4, !dbg !1235
  br label %do.cond, !dbg !1236

do.cond:                                          ; preds = %if.end5
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1237
  %pos7 = getelementptr inbounds %struct.xz_dec, ptr %15, i32 0, i32 1, !dbg !1238
  %16 = load i32, ptr %pos7, align 4, !dbg !1238
  %cmp8 = icmp ult i32 %16, 32, !dbg !1239
  br i1 %cmp8, label %do.body, label %do.end, !dbg !1236, !llvm.loop !1240

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %s.addr, align 8, !dbg !1242
  %crc3210 = getelementptr inbounds %struct.xz_dec, ptr %17, i32 0, i32 5, !dbg !1243
  store i32 0, ptr %crc3210, align 8, !dbg !1244
  %18 = load ptr, ptr %s.addr, align 8, !dbg !1245
  %pos11 = getelementptr inbounds %struct.xz_dec, ptr %18, i32 0, i32 1, !dbg !1246
  store i32 0, ptr %pos11, align 4, !dbg !1247
  store i32 1, ptr %retval, align 4, !dbg !1248
  br label %return, !dbg !1248

return:                                           ; preds = %do.end, %if.then4, %if.then
  %19 = load i32, ptr %retval, align 4, !dbg !1249
  ret i32 %19, !dbg !1249
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dec_index(ptr noundef %s, ptr noundef %b) #0 align 16 !dbg !1250 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1252, metadata !DIExpression()), !dbg !1255
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1253, metadata !DIExpression()), !dbg !1256
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !1257
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1254, metadata !DIExpression()), !dbg !1258
  br label %do.body, !dbg !1259

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1260
  %1 = load ptr, ptr %b.addr, align 8, !dbg !1262
  %in = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 0, !dbg !1263
  %2 = load ptr, ptr %in, align 8, !dbg !1263
  %3 = load ptr, ptr %b.addr, align 8, !dbg !1264
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %3, i32 0, i32 1, !dbg !1265
  %4 = load ptr, ptr %b.addr, align 8, !dbg !1266
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %4, i32 0, i32 2, !dbg !1267
  %5 = load i64, ptr %in_size, align 8, !dbg !1267
  %call = call i32 @dec_vli(ptr noundef %0, ptr noundef %2, ptr noundef %in_pos, i64 noundef %5) #15, !dbg !1268
  store i32 %call, ptr %ret, align 4, !dbg !1269
  %6 = load i32, ptr %ret, align 4, !dbg !1270
  %cmp = icmp ne i32 %6, 1, !dbg !1272
  br i1 %cmp, label %if.then, label %if.end, !dbg !1273

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %s.addr, align 8, !dbg !1274
  %8 = load ptr, ptr %b.addr, align 8, !dbg !1276
  call void @index_update(ptr noundef %7, ptr noundef %8) #15, !dbg !1277
  %9 = load i32, ptr %ret, align 4, !dbg !1278
  store i32 %9, ptr %retval, align 4, !dbg !1279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1279

if.end:                                           ; preds = %do.body
  %10 = load ptr, ptr %s.addr, align 8, !dbg !1280
  %index = getelementptr inbounds %struct.xz_dec, ptr %10, i32 0, i32 11, !dbg !1281
  %sequence = getelementptr inbounds %struct.anon.1, ptr %index, i32 0, i32 0, !dbg !1282
  %11 = load i32, ptr %sequence, align 8, !dbg !1282
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb15
  ], !dbg !1283

sw.bb:                                            ; preds = %if.end
  %12 = load ptr, ptr %s.addr, align 8, !dbg !1284
  %vli = getelementptr inbounds %struct.xz_dec, ptr %12, i32 0, i32 2, !dbg !1286
  %13 = load i64, ptr %vli, align 8, !dbg !1286
  %14 = load ptr, ptr %s.addr, align 8, !dbg !1287
  %index1 = getelementptr inbounds %struct.xz_dec, ptr %14, i32 0, i32 11, !dbg !1288
  %count = getelementptr inbounds %struct.anon.1, ptr %index1, i32 0, i32 2, !dbg !1289
  store i64 %13, ptr %count, align 8, !dbg !1290
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1291
  %index2 = getelementptr inbounds %struct.xz_dec, ptr %15, i32 0, i32 11, !dbg !1293
  %count3 = getelementptr inbounds %struct.anon.1, ptr %index2, i32 0, i32 2, !dbg !1294
  %16 = load i64, ptr %count3, align 8, !dbg !1294
  %17 = load ptr, ptr %s.addr, align 8, !dbg !1295
  %block = getelementptr inbounds %struct.xz_dec, ptr %17, i32 0, i32 10, !dbg !1296
  %count4 = getelementptr inbounds %struct.anon.0, ptr %block, i32 0, i32 2, !dbg !1297
  %18 = load i64, ptr %count4, align 8, !dbg !1297
  %cmp5 = icmp ne i64 %16, %18, !dbg !1298
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1299

if.then6:                                         ; preds = %sw.bb
  store i32 7, ptr %retval, align 4, !dbg !1300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1300

if.end7:                                          ; preds = %sw.bb
  %19 = load ptr, ptr %s.addr, align 8, !dbg !1301
  %index8 = getelementptr inbounds %struct.xz_dec, ptr %19, i32 0, i32 11, !dbg !1302
  %sequence9 = getelementptr inbounds %struct.anon.1, ptr %index8, i32 0, i32 0, !dbg !1303
  store i32 1, ptr %sequence9, align 8, !dbg !1304
  br label %sw.epilog, !dbg !1305

sw.bb10:                                          ; preds = %if.end
  %20 = load ptr, ptr %s.addr, align 8, !dbg !1306
  %vli11 = getelementptr inbounds %struct.xz_dec, ptr %20, i32 0, i32 2, !dbg !1307
  %21 = load i64, ptr %vli11, align 8, !dbg !1307
  %22 = load ptr, ptr %s.addr, align 8, !dbg !1308
  %index12 = getelementptr inbounds %struct.xz_dec, ptr %22, i32 0, i32 11, !dbg !1309
  %hash = getelementptr inbounds %struct.anon.1, ptr %index12, i32 0, i32 3, !dbg !1310
  %unpadded = getelementptr inbounds %struct.xz_dec_hash, ptr %hash, i32 0, i32 0, !dbg !1311
  %23 = load i64, ptr %unpadded, align 8, !dbg !1312
  %add = add i64 %23, %21, !dbg !1312
  store i64 %add, ptr %unpadded, align 8, !dbg !1312
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1313
  %index13 = getelementptr inbounds %struct.xz_dec, ptr %24, i32 0, i32 11, !dbg !1314
  %sequence14 = getelementptr inbounds %struct.anon.1, ptr %index13, i32 0, i32 0, !dbg !1315
  store i32 2, ptr %sequence14, align 8, !dbg !1316
  br label %sw.epilog, !dbg !1317

sw.bb15:                                          ; preds = %if.end
  %25 = load ptr, ptr %s.addr, align 8, !dbg !1318
  %vli16 = getelementptr inbounds %struct.xz_dec, ptr %25, i32 0, i32 2, !dbg !1319
  %26 = load i64, ptr %vli16, align 8, !dbg !1319
  %27 = load ptr, ptr %s.addr, align 8, !dbg !1320
  %index17 = getelementptr inbounds %struct.xz_dec, ptr %27, i32 0, i32 11, !dbg !1321
  %hash18 = getelementptr inbounds %struct.anon.1, ptr %index17, i32 0, i32 3, !dbg !1322
  %uncompressed = getelementptr inbounds %struct.xz_dec_hash, ptr %hash18, i32 0, i32 1, !dbg !1323
  %28 = load i64, ptr %uncompressed, align 8, !dbg !1324
  %add19 = add i64 %28, %26, !dbg !1324
  store i64 %add19, ptr %uncompressed, align 8, !dbg !1324
  %29 = load ptr, ptr %s.addr, align 8, !dbg !1325
  %index20 = getelementptr inbounds %struct.xz_dec, ptr %29, i32 0, i32 11, !dbg !1325
  %hash21 = getelementptr inbounds %struct.anon.1, ptr %index20, i32 0, i32 3, !dbg !1325
  %crc32 = getelementptr inbounds %struct.xz_dec_hash, ptr %hash21, i32 0, i32 2, !dbg !1325
  %30 = load i32, ptr %crc32, align 8, !dbg !1325
  %not = xor i32 %30, -1, !dbg !1325
  %31 = load ptr, ptr %s.addr, align 8, !dbg !1325
  %index22 = getelementptr inbounds %struct.xz_dec, ptr %31, i32 0, i32 11, !dbg !1325
  %hash23 = getelementptr inbounds %struct.anon.1, ptr %index22, i32 0, i32 3, !dbg !1325
  %call24 = call i32 @crc32_le(i32 noundef %not, ptr noundef %hash23, i64 noundef 24) #18, !dbg !1325
  %not25 = xor i32 %call24, -1, !dbg !1325
  %32 = load ptr, ptr %s.addr, align 8, !dbg !1326
  %index26 = getelementptr inbounds %struct.xz_dec, ptr %32, i32 0, i32 11, !dbg !1327
  %hash27 = getelementptr inbounds %struct.anon.1, ptr %index26, i32 0, i32 3, !dbg !1328
  %crc3228 = getelementptr inbounds %struct.xz_dec_hash, ptr %hash27, i32 0, i32 2, !dbg !1329
  store i32 %not25, ptr %crc3228, align 8, !dbg !1330
  %33 = load ptr, ptr %s.addr, align 8, !dbg !1331
  %index29 = getelementptr inbounds %struct.xz_dec, ptr %33, i32 0, i32 11, !dbg !1332
  %count30 = getelementptr inbounds %struct.anon.1, ptr %index29, i32 0, i32 2, !dbg !1333
  %34 = load i64, ptr %count30, align 8, !dbg !1334
  %dec = add i64 %34, -1, !dbg !1334
  store i64 %dec, ptr %count30, align 8, !dbg !1334
  %35 = load ptr, ptr %s.addr, align 8, !dbg !1335
  %index31 = getelementptr inbounds %struct.xz_dec, ptr %35, i32 0, i32 11, !dbg !1336
  %sequence32 = getelementptr inbounds %struct.anon.1, ptr %index31, i32 0, i32 0, !dbg !1337
  store i32 1, ptr %sequence32, align 8, !dbg !1338
  br label %sw.epilog, !dbg !1339

sw.epilog:                                        ; preds = %if.end, %sw.bb15, %sw.bb10, %if.end7
  br label %do.cond, !dbg !1340

do.cond:                                          ; preds = %sw.epilog
  %36 = load ptr, ptr %s.addr, align 8, !dbg !1341
  %index33 = getelementptr inbounds %struct.xz_dec, ptr %36, i32 0, i32 11, !dbg !1342
  %count34 = getelementptr inbounds %struct.anon.1, ptr %index33, i32 0, i32 2, !dbg !1343
  %37 = load i64, ptr %count34, align 8, !dbg !1343
  %cmp35 = icmp ugt i64 %37, 0, !dbg !1344
  br i1 %cmp35, label %do.body, label %do.end, !dbg !1340, !llvm.loop !1345

do.end:                                           ; preds = %do.cond
  store i32 1, ptr %retval, align 4, !dbg !1347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1347

cleanup:                                          ; preds = %do.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !1348
  %38 = load i32, ptr %retval, align 4, !dbg !1348
  ret i32 %38, !dbg !1348
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @index_update(ptr noundef %s, ptr noundef %b) #0 align 16 !dbg !1349 {
entry:
  %s.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %in_used = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1355, metadata !DIExpression()), !dbg !1358
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1356, metadata !DIExpression()), !dbg !1359
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_used) #14, !dbg !1360
  call void @llvm.dbg.declare(metadata ptr %in_used, metadata !1357, metadata !DIExpression()), !dbg !1361
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1362
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %0, i32 0, i32 1, !dbg !1363
  %1 = load i64, ptr %in_pos, align 8, !dbg !1363
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1364
  %in_start = getelementptr inbounds %struct.xz_dec, ptr %2, i32 0, i32 3, !dbg !1365
  %3 = load i64, ptr %in_start, align 8, !dbg !1365
  %sub = sub i64 %1, %3, !dbg !1366
  store i64 %sub, ptr %in_used, align 8, !dbg !1361
  %4 = load i64, ptr %in_used, align 8, !dbg !1367
  %5 = load ptr, ptr %s.addr, align 8, !dbg !1368
  %index = getelementptr inbounds %struct.xz_dec, ptr %5, i32 0, i32 11, !dbg !1369
  %size = getelementptr inbounds %struct.anon.1, ptr %index, i32 0, i32 1, !dbg !1370
  %6 = load i64, ptr %size, align 8, !dbg !1371
  %add = add i64 %6, %4, !dbg !1371
  store i64 %add, ptr %size, align 8, !dbg !1371
  %7 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %crc32 = getelementptr inbounds %struct.xz_dec, ptr %7, i32 0, i32 5, !dbg !1372
  %8 = load i32, ptr %crc32, align 8, !dbg !1372
  %not = xor i32 %8, -1, !dbg !1372
  %9 = load ptr, ptr %b.addr, align 8, !dbg !1372
  %in = getelementptr inbounds %struct.xz_buf, ptr %9, i32 0, i32 0, !dbg !1372
  %10 = load ptr, ptr %in, align 8, !dbg !1372
  %11 = load ptr, ptr %s.addr, align 8, !dbg !1372
  %in_start1 = getelementptr inbounds %struct.xz_dec, ptr %11, i32 0, i32 3, !dbg !1372
  %12 = load i64, ptr %in_start1, align 8, !dbg !1372
  %add.ptr = getelementptr i8, ptr %10, i64 %12, !dbg !1372
  %13 = load i64, ptr %in_used, align 8, !dbg !1372
  %call = call i32 @crc32_le(i32 noundef %not, ptr noundef %add.ptr, i64 noundef %13) #18, !dbg !1372
  %not2 = xor i32 %call, -1, !dbg !1372
  %14 = load ptr, ptr %s.addr, align 8, !dbg !1373
  %crc323 = getelementptr inbounds %struct.xz_dec, ptr %14, i32 0, i32 5, !dbg !1374
  store i32 %not2, ptr %crc323, align 8, !dbg !1375
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_used) #14, !dbg !1376
  ret void, !dbg !1376
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1377 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dec_stream_footer(ptr noundef %s) #0 align 16 !dbg !1382 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1384, metadata !DIExpression()), !dbg !1385
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1386
  %temp = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 12, !dbg !1386
  %buf = getelementptr inbounds %struct.anon.2, ptr %temp, i32 0, i32 2, !dbg !1386
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !1386
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 10, !dbg !1386
  %call = call i32 @memcmp(ptr noundef %add.ptr, ptr noundef @.str.1, i64 noundef 2) #15, !dbg !1386
  %cmp = icmp eq i32 %call, 0, !dbg !1386
  br i1 %cmp, label %if.end, label %if.then, !dbg !1388

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4, !dbg !1389
  br label %return, !dbg !1389

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1390
  %temp1 = getelementptr inbounds %struct.xz_dec, ptr %1, i32 0, i32 12, !dbg !1390
  %buf2 = getelementptr inbounds %struct.anon.2, ptr %temp1, i32 0, i32 2, !dbg !1390
  %arraydecay3 = getelementptr inbounds [1024 x i8], ptr %buf2, i64 0, i64 0, !dbg !1390
  %add.ptr4 = getelementptr i8, ptr %arraydecay3, i64 4, !dbg !1390
  %call5 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr4, i64 noundef 6) #18, !dbg !1390
  %not = xor i32 %call5, -1, !dbg !1390
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1392
  %temp6 = getelementptr inbounds %struct.xz_dec, ptr %2, i32 0, i32 12, !dbg !1392
  %buf7 = getelementptr inbounds %struct.anon.2, ptr %temp6, i32 0, i32 2, !dbg !1392
  %arraydecay8 = getelementptr inbounds [1024 x i8], ptr %buf7, i64 0, i64 0, !dbg !1392
  %call9 = call i32 @__le32_to_cpup(ptr noundef %arraydecay8) #15, !dbg !1392
  %cmp10 = icmp ne i32 %not, %call9, !dbg !1393
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1394

if.then11:                                        ; preds = %if.end
  store i32 7, ptr %retval, align 4, !dbg !1395
  br label %return, !dbg !1395

if.end12:                                         ; preds = %if.end
  %3 = load ptr, ptr %s.addr, align 8, !dbg !1396
  %index = getelementptr inbounds %struct.xz_dec, ptr %3, i32 0, i32 11, !dbg !1398
  %size = getelementptr inbounds %struct.anon.1, ptr %index, i32 0, i32 1, !dbg !1399
  %4 = load i64, ptr %size, align 8, !dbg !1399
  %shr = lshr i64 %4, 2, !dbg !1400
  %5 = load ptr, ptr %s.addr, align 8, !dbg !1401
  %temp13 = getelementptr inbounds %struct.xz_dec, ptr %5, i32 0, i32 12, !dbg !1401
  %buf14 = getelementptr inbounds %struct.anon.2, ptr %temp13, i32 0, i32 2, !dbg !1401
  %arraydecay15 = getelementptr inbounds [1024 x i8], ptr %buf14, i64 0, i64 0, !dbg !1401
  %add.ptr16 = getelementptr i8, ptr %arraydecay15, i64 4, !dbg !1401
  %call17 = call i32 @__le32_to_cpup(ptr noundef %add.ptr16) #15, !dbg !1401
  %conv = zext i32 %call17 to i64, !dbg !1401
  %cmp18 = icmp ne i64 %shr, %conv, !dbg !1402
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !1403

if.then20:                                        ; preds = %if.end12
  store i32 7, ptr %retval, align 4, !dbg !1404
  br label %return, !dbg !1404

if.end21:                                         ; preds = %if.end12
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1405
  %temp22 = getelementptr inbounds %struct.xz_dec, ptr %6, i32 0, i32 12, !dbg !1407
  %buf23 = getelementptr inbounds %struct.anon.2, ptr %temp22, i32 0, i32 2, !dbg !1408
  %arrayidx = getelementptr [1024 x i8], ptr %buf23, i64 0, i64 8, !dbg !1405
  %7 = load i8, ptr %arrayidx, align 8, !dbg !1405
  %conv24 = zext i8 %7 to i32, !dbg !1405
  %cmp25 = icmp ne i32 %conv24, 0, !dbg !1409
  br i1 %cmp25, label %if.then33, label %lor.lhs.false, !dbg !1410

lor.lhs.false:                                    ; preds = %if.end21
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1411
  %temp27 = getelementptr inbounds %struct.xz_dec, ptr %8, i32 0, i32 12, !dbg !1412
  %buf28 = getelementptr inbounds %struct.anon.2, ptr %temp27, i32 0, i32 2, !dbg !1413
  %arrayidx29 = getelementptr [1024 x i8], ptr %buf28, i64 0, i64 9, !dbg !1411
  %9 = load i8, ptr %arrayidx29, align 1, !dbg !1411
  %conv30 = zext i8 %9 to i32, !dbg !1411
  %10 = load ptr, ptr %s.addr, align 8, !dbg !1414
  %check_type = getelementptr inbounds %struct.xz_dec, ptr %10, i32 0, i32 6, !dbg !1415
  %11 = load i32, ptr %check_type, align 4, !dbg !1415
  %cmp31 = icmp ne i32 %conv30, %11, !dbg !1416
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !1417

if.then33:                                        ; preds = %lor.lhs.false, %if.end21
  store i32 7, ptr %retval, align 4, !dbg !1418
  br label %return, !dbg !1418

if.end34:                                         ; preds = %lor.lhs.false
  store i32 1, ptr %retval, align 4, !dbg !1419
  br label %return, !dbg !1419

return:                                           ; preds = %if.end34, %if.then33, %if.then20, %if.then11, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !1420
  ret i32 %12, !dbg !1420
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !1421 dso_local i32 @crc32_le(i32 noundef, ptr noundef, i64 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__le32_to_cpup(ptr noundef %p) #8 align 16 !dbg !1427 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1436, metadata !DIExpression()), !dbg !1437
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1438
  %1 = load i32, ptr %0, align 4, !dbg !1439
  ret i32 %1, !dbg !1440
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dec_vli(ptr noundef %s, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) #0 align 16 !dbg !1441 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %in_pos.addr = alloca ptr, align 8
  %in_size.addr = alloca i64, align 8
  %byte = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1446, metadata !DIExpression()), !dbg !1451
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !1447, metadata !DIExpression()), !dbg !1452
  store ptr %in_pos, ptr %in_pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_pos.addr, metadata !1448, metadata !DIExpression()), !dbg !1453
  store i64 %in_size, ptr %in_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_size.addr, metadata !1449, metadata !DIExpression()), !dbg !1454
  call void @llvm.lifetime.start.p0(i64 1, ptr %byte) #14, !dbg !1455
  call void @llvm.dbg.declare(metadata ptr %byte, metadata !1450, metadata !DIExpression()), !dbg !1456
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1457
  %pos = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 1, !dbg !1459
  %1 = load i32, ptr %pos, align 4, !dbg !1459
  %cmp = icmp eq i32 %1, 0, !dbg !1460
  br i1 %cmp, label %if.then, label %if.end, !dbg !1461

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1462
  %vli = getelementptr inbounds %struct.xz_dec, ptr %2, i32 0, i32 2, !dbg !1463
  store i64 0, ptr %vli, align 8, !dbg !1464
  br label %if.end, !dbg !1462

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !1465

while.cond:                                       ; preds = %if.end26, %if.end
  %3 = load ptr, ptr %in_pos.addr, align 8, !dbg !1466
  %4 = load i64, ptr %3, align 8, !dbg !1467
  %5 = load i64, ptr %in_size.addr, align 8, !dbg !1468
  %cmp1 = icmp ult i64 %4, %5, !dbg !1469
  br i1 %cmp1, label %while.body, label %while.end, !dbg !1465

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %in.addr, align 8, !dbg !1470
  %7 = load ptr, ptr %in_pos.addr, align 8, !dbg !1472
  %8 = load i64, ptr %7, align 8, !dbg !1473
  %arrayidx = getelementptr i8, ptr %6, i64 %8, !dbg !1470
  %9 = load i8, ptr %arrayidx, align 1, !dbg !1470
  store i8 %9, ptr %byte, align 1, !dbg !1474
  %10 = load ptr, ptr %in_pos.addr, align 8, !dbg !1475
  %11 = load i64, ptr %10, align 8, !dbg !1476
  %inc = add i64 %11, 1, !dbg !1476
  store i64 %inc, ptr %10, align 8, !dbg !1476
  %12 = load i8, ptr %byte, align 1, !dbg !1477
  %conv = zext i8 %12 to i32, !dbg !1477
  %and = and i32 %conv, 127, !dbg !1478
  %conv2 = sext i32 %and to i64, !dbg !1479
  %13 = load ptr, ptr %s.addr, align 8, !dbg !1480
  %pos3 = getelementptr inbounds %struct.xz_dec, ptr %13, i32 0, i32 1, !dbg !1481
  %14 = load i32, ptr %pos3, align 4, !dbg !1481
  %sh_prom = zext i32 %14 to i64, !dbg !1482
  %shl = shl i64 %conv2, %sh_prom, !dbg !1482
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1483
  %vli4 = getelementptr inbounds %struct.xz_dec, ptr %15, i32 0, i32 2, !dbg !1484
  %16 = load i64, ptr %vli4, align 8, !dbg !1485
  %or = or i64 %16, %shl, !dbg !1485
  store i64 %or, ptr %vli4, align 8, !dbg !1485
  %17 = load i8, ptr %byte, align 1, !dbg !1486
  %conv5 = zext i8 %17 to i32, !dbg !1486
  %and6 = and i32 %conv5, 128, !dbg !1488
  %cmp7 = icmp eq i32 %and6, 0, !dbg !1489
  br i1 %cmp7, label %if.then9, label %if.end19, !dbg !1490

if.then9:                                         ; preds = %while.body
  %18 = load i8, ptr %byte, align 1, !dbg !1491
  %conv10 = zext i8 %18 to i32, !dbg !1491
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !1494
  br i1 %cmp11, label %land.lhs.true, label %if.end17, !dbg !1495

land.lhs.true:                                    ; preds = %if.then9
  %19 = load ptr, ptr %s.addr, align 8, !dbg !1496
  %pos13 = getelementptr inbounds %struct.xz_dec, ptr %19, i32 0, i32 1, !dbg !1497
  %20 = load i32, ptr %pos13, align 4, !dbg !1497
  %cmp14 = icmp ne i32 %20, 0, !dbg !1498
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1499

if.then16:                                        ; preds = %land.lhs.true
  store i32 7, ptr %retval, align 4, !dbg !1500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1500

if.end17:                                         ; preds = %land.lhs.true, %if.then9
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1501
  %pos18 = getelementptr inbounds %struct.xz_dec, ptr %21, i32 0, i32 1, !dbg !1502
  store i32 0, ptr %pos18, align 4, !dbg !1503
  store i32 1, ptr %retval, align 4, !dbg !1504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1504

if.end19:                                         ; preds = %while.body
  %22 = load ptr, ptr %s.addr, align 8, !dbg !1505
  %pos20 = getelementptr inbounds %struct.xz_dec, ptr %22, i32 0, i32 1, !dbg !1506
  %23 = load i32, ptr %pos20, align 4, !dbg !1507
  %add = add i32 %23, 7, !dbg !1507
  store i32 %add, ptr %pos20, align 4, !dbg !1507
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1508
  %pos21 = getelementptr inbounds %struct.xz_dec, ptr %24, i32 0, i32 1, !dbg !1510
  %25 = load i32, ptr %pos21, align 4, !dbg !1510
  %conv22 = zext i32 %25 to i64, !dbg !1508
  %cmp23 = icmp eq i64 %conv22, 63, !dbg !1511
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !1512

if.then25:                                        ; preds = %if.end19
  store i32 7, ptr %retval, align 4, !dbg !1513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1513

if.end26:                                         ; preds = %if.end19
  br label %while.cond, !dbg !1465, !llvm.loop !1514

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1516

cleanup:                                          ; preds = %while.end, %if.then25, %if.end17, %if.then16
  call void @llvm.lifetime.end.p0(i64 1, ptr %byte) #14, !dbg !1517
  %26 = load i32, ptr %retval, align 4, !dbg !1517
  ret i32 %26, !dbg !1517
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1518 dso_local i32 @xz_dec_bcj_reset(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1521 dso_local i32 @xz_dec_lzma2_reset(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1524 dso_local i32 @xz_dec_bcj_run(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1527 dso_local i32 @xz_dec_lzma2_run(ptr noundef, ptr noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1530 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !1531 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1535, metadata !DIExpression()), !dbg !1537
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1536, metadata !DIExpression()), !dbg !1538
  %0 = load i64, ptr %size.addr, align 8, !dbg !1539
  %tobool = icmp ne i64 %0, 0, !dbg !1539
  br i1 %tobool, label %if.end, label %if.then, !dbg !1541

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1542
  br label %return, !dbg !1542

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1543
  %cmp = icmp ule i64 %1, 8, !dbg !1545
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1546

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1547
  br label %return, !dbg !1547

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1548
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1550
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1551

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1552
  %cmp4 = icmp ule i64 %3, 96, !dbg !1553
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1554

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1555
  br label %return, !dbg !1555

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1556
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1558
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1559

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1560
  %cmp9 = icmp ule i64 %5, 192, !dbg !1561
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1562

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1563
  br label %return, !dbg !1563

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1564
  %cmp12 = icmp ule i64 %6, 8, !dbg !1566
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1567

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1568
  br label %return, !dbg !1568

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1569
  %cmp15 = icmp ule i64 %7, 16, !dbg !1571
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1572

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1573
  br label %return, !dbg !1573

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1574
  %cmp18 = icmp ule i64 %8, 32, !dbg !1576
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1577

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1578
  br label %return, !dbg !1578

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1579
  %cmp21 = icmp ule i64 %9, 64, !dbg !1581
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1582

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1583
  br label %return, !dbg !1583

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1584
  %cmp24 = icmp ule i64 %10, 128, !dbg !1586
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1587

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1588
  br label %return, !dbg !1588

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1589
  %cmp27 = icmp ule i64 %11, 256, !dbg !1591
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1592

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1593
  br label %return, !dbg !1593

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1594
  %cmp30 = icmp ule i64 %12, 512, !dbg !1596
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1597

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1598
  br label %return, !dbg !1598

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1599
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1601
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1602

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1603
  br label %return, !dbg !1603

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1604
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1606
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1607

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1608
  br label %return, !dbg !1608

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1609
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1611
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1612

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1613
  br label %return, !dbg !1613

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1614
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1616
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1617

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1618
  br label %return, !dbg !1618

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1619
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1621
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1622

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1623
  br label %return, !dbg !1623

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1624
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1626
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1627

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1628
  br label %return, !dbg !1628

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1629
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1631
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1632

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1633
  br label %return, !dbg !1633

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1634
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1636
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1637

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1638
  br label %return, !dbg !1638

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1639
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1641
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1642

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1643
  br label %return, !dbg !1643

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1644
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1646
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1647

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1648
  br label %return, !dbg !1648

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1649
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1651
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1652

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1653
  br label %return, !dbg !1653

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1654
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1656
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1657

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1658
  br label %return, !dbg !1658

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1659, !range !259, !noundef !260
  %tobool69 = trunc i8 %25 to i1, !dbg !1659
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1661

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1662

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #19, !dbg !1663, !srcloc !1666
  unreachable, !dbg !1663

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1667

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1668

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1669

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1671

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1669

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #14, !dbg !1673, !srcloc !1675
  br label %do.end75, !dbg !1673

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1669

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1676
  br label %return, !dbg !1676

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1677
  ret i32 %26, !dbg !1677
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1678 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !1684 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1688, metadata !DIExpression()), !dbg !1690
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1689, metadata !DIExpression()), !dbg !1691
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1692
  %and = and i32 %0, 17, !dbg !1692
  %cmp = icmp eq i32 %and, 0, !dbg !1692
  %lnot = xor i1 %cmp, true, !dbg !1692
  %lnot1 = xor i1 %lnot, true, !dbg !1692
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1692
  %conv = sext i32 %lnot.ext to i64, !dbg !1692
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1692
  %tobool = icmp ne i64 %expval, 0, !dbg !1692
  br i1 %tobool, label %if.then, label %if.end, !dbg !1694

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1695
  br label %return, !dbg !1695

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1696
  %and2 = and i32 %1, 1, !dbg !1698
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1698
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1699

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1700
  br label %return, !dbg !1700

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1701
  br label %return, !dbg !1701

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1703
  ret i32 %2, !dbg !1703
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1704 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1705 dso_local void @__compiletime_assert_117() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noredzone nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone nounwind willreturn memory(read) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 389, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/xz/xz_dec_stream.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a534a33e62da6baf14c6fa2bba43110")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 424, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 3)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !14, line: 480, type: !15, isLocal: true, isDefinition: true)
!14 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 21)
!18 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/xz/.xz_dec_stream.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/xz/xz_dec\22 -D KBUILD_BASENAME=\22xz_dec_stream\22 -D KBUILD_MODNAME=\22xz_dec\22 -D __KBUILD_MODNAME=kmod_xz_dec -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/xz/xz_dec_stream.ll lib/xz/xz_dec_stream.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !151, globals: !158, splitDebugInlining: false, nameTableKind: None)
!19 = !{!20, !33, !60, !67, !97, !137, !142}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xz_ret", file: !21, line: 108, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "./include/linux/xz.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffd75faa50baf17c238f800fe0cc3300")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32}
!24 = !DIEnumerator(name: "XZ_OK", value: 0)
!25 = !DIEnumerator(name: "XZ_STREAM_END", value: 1)
!26 = !DIEnumerator(name: "XZ_UNSUPPORTED_CHECK", value: 2)
!27 = !DIEnumerator(name: "XZ_MEM_ERROR", value: 3)
!28 = !DIEnumerator(name: "XZ_MEMLIMIT_ERROR", value: 4)
!29 = !DIEnumerator(name: "XZ_FORMAT_ERROR", value: 5)
!30 = !DIEnumerator(name: "XZ_OPTIONS_ERROR", value: 6)
!31 = !DIEnumerator(name: "XZ_DATA_ERROR", value: 7)
!32 = !DIEnumerator(name: "XZ_BUF_ERROR", value: 8)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !2, line: 22, baseType: !22, size: 32, elements: !126)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xz_dec", file: !2, line: 20, size: 9856, elements: !35)
!35 = !{!36, !37, !44, !51, !57, !58, !59, !66, !72, !75, !81, !93, !105, !118, !122, !125}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !34, file: !2, line: 33, baseType: !33, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !34, file: !2, line: 36, baseType: !38, size: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !39, line: 110, baseType: !40)
!39 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !41, line: 21, baseType: !42)
!41 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !43, line: 27, baseType: !22)
!43 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!44 = !DIDerivedType(tag: DW_TAG_member, name: "vli", scope: !34, file: !2, line: 39, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "vli_type", file: !46, line: 43, baseType: !47)
!46 = !DIFile(filename: "lib/xz/xz_stream.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "21896da0d2019638d4594f2d451470fb")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !39, line: 113, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !41, line: 23, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !43, line: 31, baseType: !50)
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "in_start", scope: !34, file: !2, line: 42, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 61, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !54, line: 72, baseType: !55)
!54 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !54, line: 16, baseType: !56)
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "out_start", scope: !34, file: !2, line: 43, baseType: !52, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !34, file: !2, line: 46, baseType: !38, size: 32, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "check_type", scope: !34, file: !2, line: 49, baseType: !60, size: 32, offset: 288)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xz_check", file: !46, line: 52, baseType: !22, size: 32, elements: !61)
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "XZ_CHECK_NONE", value: 0)
!63 = !DIEnumerator(name: "XZ_CHECK_CRC32", value: 1)
!64 = !DIEnumerator(name: "XZ_CHECK_CRC64", value: 4)
!65 = !DIEnumerator(name: "XZ_CHECK_SHA256", value: 10)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !34, file: !2, line: 52, baseType: !67, size: 32, offset: 320)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xz_mode", file: !21, line: 52, baseType: !22, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "XZ_SINGLE", value: 0)
!70 = !DIEnumerator(name: "XZ_PREALLOC", value: 1)
!71 = !DIEnumerator(name: "XZ_DYNALLOC", value: 2)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !34, file: !2, line: 58, baseType: !73, size: 8, offset: 352)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !39, line: 35, baseType: !74)
!74 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "block_header", scope: !34, file: !2, line: 76, baseType: !76, size: 192, offset: 384)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !2, line: 61, size: 192, elements: !77)
!77 = !{!78, !79, !80}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !76, file: !2, line: 66, baseType: !45, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed", scope: !76, file: !2, line: 72, baseType: !45, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !76, file: !2, line: 75, baseType: !38, size: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !34, file: !2, line: 94, baseType: !82, size: 384, offset: 576)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !2, line: 79, size: 384, elements: !83)
!83 = !{!84, !85, !86, !87}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !82, file: !2, line: 81, baseType: !45, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed", scope: !82, file: !2, line: 84, baseType: !45, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !82, file: !2, line: 87, baseType: !45, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !82, file: !2, line: 93, baseType: !88, size: 192, offset: 192)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xz_dec_hash", file: !2, line: 14, size: 192, elements: !89)
!89 = !{!90, !91, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "unpadded", scope: !88, file: !2, line: 15, baseType: !45, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed", scope: !88, file: !2, line: 16, baseType: !45, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !88, file: !2, line: 17, baseType: !38, size: 32, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !34, file: !2, line: 116, baseType: !94, size: 384, offset: 960)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !2, line: 97, size: 384, elements: !95)
!95 = !{!96, !102, !103, !104}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !94, file: !2, line: 103, baseType: !97, size: 32)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !94, file: !2, line: 99, baseType: !22, size: 32, elements: !98)
!98 = !{!99, !100, !101}
!99 = !DIEnumerator(name: "SEQ_INDEX_COUNT", value: 0)
!100 = !DIEnumerator(name: "SEQ_INDEX_UNPADDED", value: 1)
!101 = !DIEnumerator(name: "SEQ_INDEX_UNCOMPRESSED", value: 2)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !94, file: !2, line: 106, baseType: !45, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !94, file: !2, line: 109, baseType: !45, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !94, file: !2, line: 115, baseType: !88, size: 192, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !34, file: !2, line: 129, baseType: !106, size: 8320, offset: 1344)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !2, line: 125, size: 8320, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !106, file: !2, line: 126, baseType: !52, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !106, file: !2, line: 127, baseType: !52, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !106, file: !2, line: 128, baseType: !111, size: 8192, offset: 128)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 8192, elements: !116)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !39, line: 108, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !41, line: 17, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !43, line: 21, baseType: !115)
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !{!117}
!117 = !DISubrange(count: 1024)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "lzma2", scope: !34, file: !2, line: 131, baseType: !119, size: 64, offset: 9664)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "xz_dec_lzma2", file: !121, line: 112, flags: DIFlagFwdDecl)
!121 = !DIFile(filename: "lib/xz/xz_private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6a924581687e16d88852d4bc1283b73b")
!122 = !DIDerivedType(tag: DW_TAG_member, name: "bcj", scope: !34, file: !2, line: 134, baseType: !123, size: 64, offset: 9728)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "xz_dec_bcj", file: !121, line: 136, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "bcj_active", scope: !34, file: !2, line: 135, baseType: !73, size: 8, offset: 9792)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!127 = !DIEnumerator(name: "SEQ_STREAM_HEADER", value: 0)
!128 = !DIEnumerator(name: "SEQ_BLOCK_START", value: 1)
!129 = !DIEnumerator(name: "SEQ_BLOCK_HEADER", value: 2)
!130 = !DIEnumerator(name: "SEQ_BLOCK_UNCOMPRESS", value: 3)
!131 = !DIEnumerator(name: "SEQ_BLOCK_PADDING", value: 4)
!132 = !DIEnumerator(name: "SEQ_BLOCK_CHECK", value: 5)
!133 = !DIEnumerator(name: "SEQ_INDEX", value: 6)
!134 = !DIEnumerator(name: "SEQ_INDEX_PADDING", value: 7)
!135 = !DIEnumerator(name: "SEQ_INDEX_CRC32", value: 8)
!136 = !DIEnumerator(name: "SEQ_STREAM_FOOTER", value: 9)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 10, baseType: !22, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!139 = !{!140, !141}
!140 = !DIEnumerator(name: "false", value: 0)
!141 = !DIEnumerator(name: "true", value: 1)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !14, line: 364, baseType: !22, size: 32, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150}
!144 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!145 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!146 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!147 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!148 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!149 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!150 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!151 = !{!152, !153, !38, !52, !154, !42, !45, !156, !56}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !39, line: 154, baseType: !22)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!158 = !{!0, !7, !12}
!159 = !{i32 7, !"Dwarf Version", i32 5}
!160 = !{i32 2, !"Debug Info Version", i32 3}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 8, !"cf-protection-branch", i32 1}
!163 = !{i32 4, !"function_return_thunk_extern", i32 1}
!164 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!165 = !{i32 1, !"Code Model", i32 2}
!166 = !{i32 1, !"override-stack-alignment", i32 8}
!167 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!168 = distinct !DISubprogram(name: "xz_dec_run", scope: !2, file: !2, line: 750, type: !169, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !182)
!169 = !DISubroutineType(types: !170)
!170 = !{!20, !171, !172}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xz_buf", file: !21, line: 136, size: 384, elements: !174)
!174 = !{!175, !176, !177, !178, !180, !181}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !173, file: !21, line: 137, baseType: !156, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "in_pos", scope: !173, file: !21, line: 138, baseType: !52, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "in_size", scope: !173, file: !21, line: 139, baseType: !52, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !173, file: !21, line: 141, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "out_pos", scope: !173, file: !21, line: 142, baseType: !52, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "out_size", scope: !173, file: !21, line: 143, baseType: !52, size: 64, offset: 320)
!182 = !{!183, !184, !185, !186, !187}
!183 = !DILocalVariable(name: "s", arg: 1, scope: !168, file: !2, line: 750, type: !171)
!184 = !DILocalVariable(name: "b", arg: 2, scope: !168, file: !2, line: 750, type: !172)
!185 = !DILocalVariable(name: "in_start", scope: !168, file: !2, line: 752, type: !52)
!186 = !DILocalVariable(name: "out_start", scope: !168, file: !2, line: 753, type: !52)
!187 = !DILocalVariable(name: "ret", scope: !168, file: !2, line: 754, type: !20)
!188 = !DILocation(line: 750, column: 49, scope: !168)
!189 = !DILocation(line: 750, column: 67, scope: !168)
!190 = !DILocation(line: 752, column: 2, scope: !168)
!191 = !DILocation(line: 752, column: 9, scope: !168)
!192 = !DILocation(line: 753, column: 2, scope: !168)
!193 = !DILocation(line: 753, column: 9, scope: !168)
!194 = !DILocation(line: 754, column: 2, scope: !168)
!195 = !DILocation(line: 754, column: 14, scope: !168)
!196 = !DILocation(line: 756, column: 6, scope: !197)
!197 = distinct !DILexicalBlock(scope: !168, file: !2, line: 756, column: 6)
!198 = !DILocation(line: 756, column: 6, scope: !168)
!199 = !DILocation(line: 757, column: 16, scope: !197)
!200 = !DILocation(line: 757, column: 3, scope: !197)
!201 = !DILocation(line: 759, column: 13, scope: !168)
!202 = !DILocation(line: 759, column: 16, scope: !168)
!203 = !DILocation(line: 759, column: 11, scope: !168)
!204 = !DILocation(line: 760, column: 14, scope: !168)
!205 = !DILocation(line: 760, column: 17, scope: !168)
!206 = !DILocation(line: 760, column: 12, scope: !168)
!207 = !DILocation(line: 761, column: 17, scope: !168)
!208 = !DILocation(line: 761, column: 20, scope: !168)
!209 = !DILocation(line: 761, column: 8, scope: !168)
!210 = !DILocation(line: 761, column: 6, scope: !168)
!211 = !DILocation(line: 763, column: 6, scope: !212)
!212 = distinct !DILexicalBlock(scope: !168, file: !2, line: 763, column: 6)
!213 = !DILocation(line: 763, column: 6, scope: !168)
!214 = !DILocation(line: 764, column: 7, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !2, line: 764, column: 7)
!216 = distinct !DILexicalBlock(scope: !212, file: !2, line: 763, column: 30)
!217 = !DILocation(line: 764, column: 11, scope: !215)
!218 = !DILocation(line: 764, column: 7, scope: !216)
!219 = !DILocation(line: 765, column: 10, scope: !215)
!220 = !DILocation(line: 765, column: 13, scope: !215)
!221 = !DILocation(line: 765, column: 23, scope: !215)
!222 = !DILocation(line: 765, column: 26, scope: !215)
!223 = !DILocation(line: 765, column: 20, scope: !215)
!224 = !DILocation(line: 765, column: 8, scope: !215)
!225 = !DILocation(line: 765, column: 4, scope: !215)
!226 = !DILocation(line: 768, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !216, file: !2, line: 768, column: 7)
!228 = !DILocation(line: 768, column: 11, scope: !227)
!229 = !DILocation(line: 768, column: 7, scope: !216)
!230 = !DILocation(line: 769, column: 16, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !2, line: 768, column: 29)
!232 = !DILocation(line: 769, column: 4, scope: !231)
!233 = !DILocation(line: 769, column: 7, scope: !231)
!234 = !DILocation(line: 769, column: 14, scope: !231)
!235 = !DILocation(line: 770, column: 17, scope: !231)
!236 = !DILocation(line: 770, column: 4, scope: !231)
!237 = !DILocation(line: 770, column: 7, scope: !231)
!238 = !DILocation(line: 770, column: 15, scope: !231)
!239 = !DILocation(line: 771, column: 3, scope: !231)
!240 = !DILocation(line: 773, column: 2, scope: !216)
!241 = !DILocation(line: 773, column: 13, scope: !242)
!242 = distinct !DILexicalBlock(scope: !212, file: !2, line: 773, column: 13)
!243 = !DILocation(line: 773, column: 17, scope: !242)
!244 = !DILocation(line: 773, column: 26, scope: !242)
!245 = !DILocation(line: 773, column: 29, scope: !242)
!246 = !DILocation(line: 773, column: 41, scope: !242)
!247 = !DILocation(line: 773, column: 44, scope: !242)
!248 = !DILocation(line: 773, column: 38, scope: !242)
!249 = !DILocation(line: 774, column: 4, scope: !242)
!250 = !DILocation(line: 774, column: 7, scope: !242)
!251 = !DILocation(line: 774, column: 20, scope: !242)
!252 = !DILocation(line: 774, column: 23, scope: !242)
!253 = !DILocation(line: 774, column: 17, scope: !242)
!254 = !DILocation(line: 773, column: 13, scope: !212)
!255 = !DILocation(line: 775, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !2, line: 775, column: 7)
!257 = distinct !DILexicalBlock(scope: !242, file: !2, line: 774, column: 32)
!258 = !DILocation(line: 775, column: 10, scope: !256)
!259 = !{i8 0, i8 2}
!260 = !{}
!261 = !DILocation(line: 775, column: 7, scope: !257)
!262 = !DILocation(line: 776, column: 8, scope: !256)
!263 = !DILocation(line: 776, column: 4, scope: !256)
!264 = !DILocation(line: 778, column: 3, scope: !257)
!265 = !DILocation(line: 778, column: 6, scope: !257)
!266 = !DILocation(line: 778, column: 22, scope: !257)
!267 = !DILocation(line: 779, column: 2, scope: !257)
!268 = !DILocation(line: 780, column: 3, scope: !269)
!269 = distinct !DILexicalBlock(scope: !242, file: !2, line: 779, column: 9)
!270 = !DILocation(line: 780, column: 6, scope: !269)
!271 = !DILocation(line: 780, column: 22, scope: !269)
!272 = !DILocation(line: 783, column: 9, scope: !168)
!273 = !DILocation(line: 784, column: 1, scope: !168)
!274 = !DILocation(line: 783, column: 2, scope: !168)
!275 = distinct !DISubprogram(name: "xz_dec_reset", scope: !2, file: !2, line: 816, type: !276, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !171}
!278 = !{!279}
!279 = !DILocalVariable(name: "s", arg: 1, scope: !275, file: !2, line: 816, type: !171)
!280 = !DILocation(line: 816, column: 44, scope: !275)
!281 = !DILocation(line: 818, column: 2, scope: !275)
!282 = !DILocation(line: 818, column: 5, scope: !275)
!283 = !DILocation(line: 818, column: 14, scope: !275)
!284 = !DILocation(line: 819, column: 2, scope: !275)
!285 = !DILocation(line: 819, column: 5, scope: !275)
!286 = !DILocation(line: 819, column: 21, scope: !275)
!287 = !DILocation(line: 820, column: 2, scope: !275)
!288 = !DILocation(line: 820, column: 5, scope: !275)
!289 = !DILocation(line: 820, column: 9, scope: !275)
!290 = !DILocation(line: 821, column: 2, scope: !275)
!291 = !DILocation(line: 821, column: 5, scope: !275)
!292 = !DILocation(line: 821, column: 11, scope: !275)
!293 = !DILocation(line: 822, column: 2, scope: !275)
!294 = !DILocation(line: 823, column: 2, scope: !275)
!295 = !DILocation(line: 824, column: 2, scope: !275)
!296 = !DILocation(line: 824, column: 5, scope: !275)
!297 = !DILocation(line: 824, column: 10, scope: !275)
!298 = !DILocation(line: 824, column: 14, scope: !275)
!299 = !DILocation(line: 825, column: 2, scope: !275)
!300 = !DILocation(line: 825, column: 5, scope: !275)
!301 = !DILocation(line: 825, column: 10, scope: !275)
!302 = !DILocation(line: 825, column: 15, scope: !275)
!303 = !DILocation(line: 826, column: 1, scope: !275)
!304 = distinct !DISubprogram(name: "dec_main", scope: !2, file: !2, line: 549, type: !169, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !305)
!305 = !{!306, !307, !308}
!306 = !DILocalVariable(name: "s", arg: 1, scope: !304, file: !2, line: 549, type: !171)
!307 = !DILocalVariable(name: "b", arg: 2, scope: !304, file: !2, line: 549, type: !172)
!308 = !DILocalVariable(name: "ret", scope: !304, file: !2, line: 551, type: !20)
!309 = !DILocation(line: 549, column: 44, scope: !304)
!310 = !DILocation(line: 549, column: 62, scope: !304)
!311 = !DILocation(line: 551, column: 2, scope: !304)
!312 = !DILocation(line: 551, column: 14, scope: !304)
!313 = !DILocation(line: 557, column: 16, scope: !304)
!314 = !DILocation(line: 557, column: 19, scope: !304)
!315 = !DILocation(line: 557, column: 2, scope: !304)
!316 = !DILocation(line: 557, column: 5, scope: !304)
!317 = !DILocation(line: 557, column: 14, scope: !304)
!318 = !DILocation(line: 559, column: 2, scope: !304)
!319 = !DILocation(line: 560, column: 11, scope: !320)
!320 = distinct !DILexicalBlock(scope: !304, file: !2, line: 559, column: 15)
!321 = !DILocation(line: 560, column: 14, scope: !320)
!322 = !DILocation(line: 560, column: 3, scope: !320)
!323 = !DILocation(line: 570, column: 19, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 570, column: 8)
!325 = distinct !DILexicalBlock(scope: !320, file: !2, line: 560, column: 24)
!326 = !DILocation(line: 570, column: 22, scope: !324)
!327 = !DILocation(line: 570, column: 9, scope: !324)
!328 = !DILocation(line: 570, column: 8, scope: !325)
!329 = !DILocation(line: 571, column: 5, scope: !324)
!330 = !DILocation(line: 580, column: 4, scope: !325)
!331 = !DILocation(line: 580, column: 7, scope: !325)
!332 = !DILocation(line: 580, column: 16, scope: !325)
!333 = !DILocation(line: 582, column: 28, scope: !325)
!334 = !DILocation(line: 582, column: 10, scope: !325)
!335 = !DILocation(line: 582, column: 8, scope: !325)
!336 = !DILocation(line: 583, column: 8, scope: !337)
!337 = distinct !DILexicalBlock(scope: !325, file: !2, line: 583, column: 8)
!338 = !DILocation(line: 583, column: 12, scope: !337)
!339 = !DILocation(line: 583, column: 8, scope: !325)
!340 = !DILocation(line: 584, column: 12, scope: !337)
!341 = !DILocation(line: 584, column: 5, scope: !337)
!342 = !DILocation(line: 583, column: 15, scope: !337)
!343 = !DILocation(line: 590, column: 8, scope: !344)
!344 = distinct !DILexicalBlock(scope: !325, file: !2, line: 590, column: 8)
!345 = !DILocation(line: 590, column: 11, scope: !344)
!346 = !DILocation(line: 590, column: 21, scope: !344)
!347 = !DILocation(line: 590, column: 24, scope: !344)
!348 = !DILocation(line: 590, column: 18, scope: !344)
!349 = !DILocation(line: 590, column: 8, scope: !325)
!350 = !DILocation(line: 591, column: 5, scope: !344)
!351 = !DILocation(line: 594, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !325, file: !2, line: 594, column: 8)
!353 = !DILocation(line: 594, column: 11, scope: !352)
!354 = !DILocation(line: 594, column: 14, scope: !352)
!355 = !DILocation(line: 594, column: 17, scope: !352)
!356 = !DILocation(line: 594, column: 25, scope: !352)
!357 = !DILocation(line: 594, column: 8, scope: !325)
!358 = !DILocation(line: 595, column: 19, scope: !359)
!359 = distinct !DILexicalBlock(scope: !352, file: !2, line: 594, column: 31)
!360 = !DILocation(line: 595, column: 22, scope: !359)
!361 = !DILocation(line: 595, column: 28, scope: !359)
!362 = !DILocation(line: 595, column: 5, scope: !359)
!363 = !DILocation(line: 595, column: 8, scope: !359)
!364 = !DILocation(line: 595, column: 17, scope: !359)
!365 = !DILocation(line: 596, column: 5, scope: !359)
!366 = !DILocation(line: 596, column: 8, scope: !359)
!367 = !DILocation(line: 596, column: 17, scope: !359)
!368 = !DILocation(line: 597, column: 5, scope: !359)
!369 = !DILocation(line: 605, column: 18, scope: !325)
!370 = !DILocation(line: 605, column: 21, scope: !325)
!371 = !DILocation(line: 605, column: 24, scope: !325)
!372 = !DILocation(line: 605, column: 27, scope: !325)
!373 = !DILocation(line: 605, column: 8, scope: !325)
!374 = !DILocation(line: 605, column: 35, scope: !325)
!375 = !DILocation(line: 605, column: 40, scope: !325)
!376 = !DILocation(line: 604, column: 4, scope: !325)
!377 = !DILocation(line: 604, column: 7, scope: !325)
!378 = !DILocation(line: 604, column: 20, scope: !325)
!379 = !DILocation(line: 605, column: 5, scope: !325)
!380 = !DILocation(line: 607, column: 19, scope: !325)
!381 = !DILocation(line: 607, column: 22, scope: !325)
!382 = !DILocation(line: 607, column: 35, scope: !325)
!383 = !DILocation(line: 607, column: 4, scope: !325)
!384 = !DILocation(line: 607, column: 7, scope: !325)
!385 = !DILocation(line: 607, column: 12, scope: !325)
!386 = !DILocation(line: 607, column: 17, scope: !325)
!387 = !DILocation(line: 608, column: 4, scope: !325)
!388 = !DILocation(line: 608, column: 7, scope: !325)
!389 = !DILocation(line: 608, column: 12, scope: !325)
!390 = !DILocation(line: 608, column: 16, scope: !325)
!391 = !DILocation(line: 609, column: 4, scope: !325)
!392 = !DILocation(line: 609, column: 7, scope: !325)
!393 = !DILocation(line: 609, column: 16, scope: !325)
!394 = !DILocation(line: 614, column: 19, scope: !395)
!395 = distinct !DILexicalBlock(scope: !325, file: !2, line: 614, column: 8)
!396 = !DILocation(line: 614, column: 22, scope: !395)
!397 = !DILocation(line: 614, column: 9, scope: !395)
!398 = !DILocation(line: 614, column: 8, scope: !325)
!399 = !DILocation(line: 615, column: 5, scope: !395)
!400 = !DILocation(line: 617, column: 27, scope: !325)
!401 = !DILocation(line: 617, column: 10, scope: !325)
!402 = !DILocation(line: 617, column: 8, scope: !325)
!403 = !DILocation(line: 618, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !325, file: !2, line: 618, column: 8)
!405 = !DILocation(line: 618, column: 12, scope: !404)
!406 = !DILocation(line: 618, column: 8, scope: !325)
!407 = !DILocation(line: 619, column: 12, scope: !404)
!408 = !DILocation(line: 619, column: 5, scope: !404)
!409 = !DILocation(line: 621, column: 4, scope: !325)
!410 = !DILocation(line: 621, column: 7, scope: !325)
!411 = !DILocation(line: 621, column: 16, scope: !325)
!412 = !DILocation(line: 626, column: 20, scope: !325)
!413 = !DILocation(line: 626, column: 23, scope: !325)
!414 = !DILocation(line: 626, column: 10, scope: !325)
!415 = !DILocation(line: 626, column: 8, scope: !325)
!416 = !DILocation(line: 627, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !325, file: !2, line: 627, column: 8)
!418 = !DILocation(line: 627, column: 12, scope: !417)
!419 = !DILocation(line: 627, column: 8, scope: !325)
!420 = !DILocation(line: 628, column: 12, scope: !417)
!421 = !DILocation(line: 628, column: 5, scope: !417)
!422 = !DILocation(line: 630, column: 4, scope: !325)
!423 = !DILocation(line: 630, column: 7, scope: !325)
!424 = !DILocation(line: 630, column: 16, scope: !325)
!425 = !DILocation(line: 642, column: 4, scope: !325)
!426 = !DILocation(line: 642, column: 11, scope: !325)
!427 = !DILocation(line: 642, column: 14, scope: !325)
!428 = !DILocation(line: 642, column: 20, scope: !325)
!429 = !DILocation(line: 642, column: 31, scope: !325)
!430 = !DILocation(line: 643, column: 9, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !2, line: 643, column: 9)
!432 = distinct !DILexicalBlock(scope: !325, file: !2, line: 642, column: 36)
!433 = !DILocation(line: 643, column: 12, scope: !431)
!434 = !DILocation(line: 643, column: 22, scope: !431)
!435 = !DILocation(line: 643, column: 25, scope: !431)
!436 = !DILocation(line: 643, column: 19, scope: !431)
!437 = !DILocation(line: 643, column: 9, scope: !432)
!438 = !DILocation(line: 644, column: 6, scope: !431)
!439 = !DILocation(line: 646, column: 9, scope: !440)
!440 = distinct !DILexicalBlock(scope: !432, file: !2, line: 646, column: 9)
!441 = !DILocation(line: 646, column: 12, scope: !440)
!442 = !DILocation(line: 646, column: 15, scope: !440)
!443 = !DILocation(line: 646, column: 18, scope: !440)
!444 = !DILocation(line: 646, column: 24, scope: !440)
!445 = !DILocation(line: 646, column: 28, scope: !440)
!446 = !DILocation(line: 646, column: 9, scope: !432)
!447 = !DILocation(line: 647, column: 6, scope: !440)
!448 = !DILocation(line: 649, column: 7, scope: !432)
!449 = !DILocation(line: 649, column: 10, scope: !432)
!450 = !DILocation(line: 649, column: 16, scope: !432)
!451 = !DILocation(line: 649, column: 5, scope: !432)
!452 = distinct !{!452, !425, !453, !454, !455}
!453 = !DILocation(line: 650, column: 4, scope: !325)
!454 = !{!"llvm.loop.mustprogress"}
!455 = !{!"llvm.loop.unroll.disable"}
!456 = !DILocation(line: 652, column: 4, scope: !325)
!457 = !DILocation(line: 652, column: 7, scope: !325)
!458 = !DILocation(line: 652, column: 16, scope: !325)
!459 = !DILocation(line: 657, column: 8, scope: !460)
!460 = distinct !DILexicalBlock(scope: !325, file: !2, line: 657, column: 8)
!461 = !DILocation(line: 657, column: 11, scope: !460)
!462 = !DILocation(line: 657, column: 22, scope: !460)
!463 = !DILocation(line: 657, column: 8, scope: !325)
!464 = !DILocation(line: 658, column: 26, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !2, line: 657, column: 41)
!466 = !DILocation(line: 658, column: 29, scope: !465)
!467 = !DILocation(line: 658, column: 11, scope: !465)
!468 = !DILocation(line: 658, column: 9, scope: !465)
!469 = !DILocation(line: 659, column: 9, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !2, line: 659, column: 9)
!471 = !DILocation(line: 659, column: 13, scope: !470)
!472 = !DILocation(line: 659, column: 9, scope: !465)
!473 = !DILocation(line: 660, column: 13, scope: !470)
!474 = !DILocation(line: 660, column: 6, scope: !470)
!475 = !DILocation(line: 661, column: 4, scope: !465)
!476 = !DILocation(line: 668, column: 4, scope: !325)
!477 = !DILocation(line: 668, column: 7, scope: !325)
!478 = !DILocation(line: 668, column: 16, scope: !325)
!479 = !DILocation(line: 669, column: 4, scope: !325)
!480 = !DILocation(line: 672, column: 20, scope: !325)
!481 = !DILocation(line: 672, column: 23, scope: !325)
!482 = !DILocation(line: 672, column: 10, scope: !325)
!483 = !DILocation(line: 672, column: 8, scope: !325)
!484 = !DILocation(line: 673, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !325, file: !2, line: 673, column: 8)
!486 = !DILocation(line: 673, column: 12, scope: !485)
!487 = !DILocation(line: 673, column: 8, scope: !325)
!488 = !DILocation(line: 674, column: 12, scope: !485)
!489 = !DILocation(line: 674, column: 5, scope: !485)
!490 = !DILocation(line: 676, column: 4, scope: !325)
!491 = !DILocation(line: 676, column: 7, scope: !325)
!492 = !DILocation(line: 676, column: 16, scope: !325)
!493 = !DILocation(line: 681, column: 4, scope: !325)
!494 = !DILocation(line: 681, column: 12, scope: !325)
!495 = !DILocation(line: 681, column: 15, scope: !325)
!496 = !DILocation(line: 681, column: 21, scope: !325)
!497 = !DILocation(line: 681, column: 29, scope: !325)
!498 = !DILocation(line: 681, column: 32, scope: !325)
!499 = !DILocation(line: 681, column: 41, scope: !325)
!500 = !DILocation(line: 681, column: 44, scope: !325)
!501 = !DILocation(line: 681, column: 39, scope: !325)
!502 = !DILocation(line: 681, column: 26, scope: !325)
!503 = !DILocation(line: 682, column: 6, scope: !325)
!504 = !DILocation(line: 683, column: 9, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 683, column: 9)
!506 = distinct !DILexicalBlock(scope: !325, file: !2, line: 682, column: 11)
!507 = !DILocation(line: 683, column: 12, scope: !505)
!508 = !DILocation(line: 683, column: 22, scope: !505)
!509 = !DILocation(line: 683, column: 25, scope: !505)
!510 = !DILocation(line: 683, column: 19, scope: !505)
!511 = !DILocation(line: 683, column: 9, scope: !506)
!512 = !DILocation(line: 684, column: 19, scope: !513)
!513 = distinct !DILexicalBlock(scope: !505, file: !2, line: 683, column: 34)
!514 = !DILocation(line: 684, column: 22, scope: !513)
!515 = !DILocation(line: 684, column: 6, scope: !513)
!516 = !DILocation(line: 685, column: 6, scope: !513)
!517 = !DILocation(line: 688, column: 9, scope: !518)
!518 = distinct !DILexicalBlock(scope: !506, file: !2, line: 688, column: 9)
!519 = !DILocation(line: 688, column: 12, scope: !518)
!520 = !DILocation(line: 688, column: 15, scope: !518)
!521 = !DILocation(line: 688, column: 18, scope: !518)
!522 = !DILocation(line: 688, column: 24, scope: !518)
!523 = !DILocation(line: 688, column: 28, scope: !518)
!524 = !DILocation(line: 688, column: 9, scope: !506)
!525 = !DILocation(line: 689, column: 6, scope: !518)
!526 = distinct !{!526, !493, !527, !454, !455}
!527 = !DILocation(line: 690, column: 4, scope: !325)
!528 = !DILocation(line: 693, column: 17, scope: !325)
!529 = !DILocation(line: 693, column: 20, scope: !325)
!530 = !DILocation(line: 693, column: 4, scope: !325)
!531 = !DILocation(line: 696, column: 9, scope: !532)
!532 = distinct !DILexicalBlock(scope: !325, file: !2, line: 696, column: 8)
!533 = !DILocation(line: 696, column: 8, scope: !325)
!534 = !DILocation(line: 698, column: 5, scope: !532)
!535 = !DILocation(line: 700, column: 4, scope: !325)
!536 = !DILocation(line: 700, column: 7, scope: !325)
!537 = !DILocation(line: 700, column: 16, scope: !325)
!538 = !DILocation(line: 705, column: 25, scope: !325)
!539 = !DILocation(line: 705, column: 28, scope: !325)
!540 = !DILocation(line: 705, column: 10, scope: !325)
!541 = !DILocation(line: 705, column: 8, scope: !325)
!542 = !DILocation(line: 706, column: 8, scope: !543)
!543 = distinct !DILexicalBlock(scope: !325, file: !2, line: 706, column: 8)
!544 = !DILocation(line: 706, column: 12, scope: !543)
!545 = !DILocation(line: 706, column: 8, scope: !325)
!546 = !DILocation(line: 707, column: 12, scope: !543)
!547 = !DILocation(line: 707, column: 5, scope: !543)
!548 = !DILocation(line: 709, column: 4, scope: !325)
!549 = !DILocation(line: 709, column: 7, scope: !325)
!550 = !DILocation(line: 709, column: 12, scope: !325)
!551 = !DILocation(line: 709, column: 17, scope: !325)
!552 = !DILocation(line: 710, column: 4, scope: !325)
!553 = !DILocation(line: 710, column: 7, scope: !325)
!554 = !DILocation(line: 710, column: 16, scope: !325)
!555 = !DILocation(line: 715, column: 19, scope: !556)
!556 = distinct !DILexicalBlock(scope: !325, file: !2, line: 715, column: 8)
!557 = !DILocation(line: 715, column: 22, scope: !556)
!558 = !DILocation(line: 715, column: 9, scope: !556)
!559 = !DILocation(line: 715, column: 8, scope: !325)
!560 = !DILocation(line: 716, column: 5, scope: !556)
!561 = !DILocation(line: 718, column: 29, scope: !325)
!562 = !DILocation(line: 718, column: 11, scope: !325)
!563 = !DILocation(line: 718, column: 4, scope: !325)
!564 = distinct !{!564, !318, !565, !455}
!565 = !DILocation(line: 720, column: 2, scope: !304)
!566 = !DILocation(line: 723, column: 1, scope: !304)
!567 = distinct !DISubprogram(name: "xz_dec_init", scope: !2, file: !2, line: 786, type: !568, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{!171, !67, !38}
!570 = !{!571, !572, !573, !574, !575}
!571 = !DILocalVariable(name: "mode", arg: 1, scope: !567, file: !2, line: 786, type: !67)
!572 = !DILocalVariable(name: "dict_max", arg: 2, scope: !567, file: !2, line: 786, type: !38)
!573 = !DILocalVariable(name: "s", scope: !567, file: !2, line: 788, type: !171)
!574 = !DILabel(scope: !567, name: "error_lzma2", file: !2, line: 807)
!575 = !DILabel(scope: !567, name: "error_bcj", file: !2, line: 810)
!576 = !DILocation(line: 786, column: 51, scope: !567)
!577 = !DILocation(line: 786, column: 66, scope: !567)
!578 = !DILocation(line: 788, column: 2, scope: !567)
!579 = !DILocation(line: 788, column: 17, scope: !567)
!580 = !DILocation(line: 788, column: 21, scope: !567)
!581 = !DILocation(line: 789, column: 6, scope: !582)
!582 = distinct !DILexicalBlock(scope: !567, file: !2, line: 789, column: 6)
!583 = !DILocation(line: 789, column: 8, scope: !582)
!584 = !DILocation(line: 789, column: 6, scope: !567)
!585 = !DILocation(line: 790, column: 3, scope: !582)
!586 = !DILocation(line: 792, column: 12, scope: !567)
!587 = !DILocation(line: 792, column: 2, scope: !567)
!588 = !DILocation(line: 792, column: 5, scope: !567)
!589 = !DILocation(line: 792, column: 10, scope: !567)
!590 = !DILocation(line: 795, column: 29, scope: !567)
!591 = !DILocation(line: 795, column: 11, scope: !567)
!592 = !DILocation(line: 795, column: 2, scope: !567)
!593 = !DILocation(line: 795, column: 5, scope: !567)
!594 = !DILocation(line: 795, column: 9, scope: !567)
!595 = !DILocation(line: 796, column: 6, scope: !596)
!596 = distinct !DILexicalBlock(scope: !567, file: !2, line: 796, column: 6)
!597 = !DILocation(line: 796, column: 9, scope: !596)
!598 = !DILocation(line: 796, column: 13, scope: !596)
!599 = !DILocation(line: 796, column: 6, scope: !567)
!600 = !DILocation(line: 797, column: 3, scope: !596)
!601 = !DILocation(line: 800, column: 33, scope: !567)
!602 = !DILocation(line: 800, column: 39, scope: !567)
!603 = !DILocation(line: 800, column: 13, scope: !567)
!604 = !DILocation(line: 800, column: 2, scope: !567)
!605 = !DILocation(line: 800, column: 5, scope: !567)
!606 = !DILocation(line: 800, column: 11, scope: !567)
!607 = !DILocation(line: 801, column: 6, scope: !608)
!608 = distinct !DILexicalBlock(scope: !567, file: !2, line: 801, column: 6)
!609 = !DILocation(line: 801, column: 9, scope: !608)
!610 = !DILocation(line: 801, column: 15, scope: !608)
!611 = !DILocation(line: 801, column: 6, scope: !567)
!612 = !DILocation(line: 802, column: 3, scope: !608)
!613 = !DILocation(line: 804, column: 15, scope: !567)
!614 = !DILocation(line: 804, column: 2, scope: !567)
!615 = !DILocation(line: 805, column: 9, scope: !567)
!616 = !DILocation(line: 805, column: 2, scope: !567)
!617 = !DILocation(line: 807, column: 1, scope: !567)
!618 = !DILocation(line: 809, column: 2, scope: !567)
!619 = !DILocation(line: 810, column: 1, scope: !567)
!620 = !DILocation(line: 812, column: 8, scope: !567)
!621 = !DILocation(line: 812, column: 2, scope: !567)
!622 = !DILocation(line: 813, column: 2, scope: !567)
!623 = !DILocation(line: 814, column: 1, scope: !567)
!624 = distinct !DISubprogram(name: "kmalloc", scope: !14, file: !14, line: 591, type: !625, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{!153, !52, !152}
!627 = !{!628, !629, !630}
!628 = !DILocalVariable(name: "size", arg: 1, scope: !624, file: !14, line: 591, type: !52)
!629 = !DILocalVariable(name: "flags", arg: 2, scope: !624, file: !14, line: 591, type: !152)
!630 = !DILocalVariable(name: "index", scope: !631, file: !14, line: 594, type: !22)
!631 = distinct !DILexicalBlock(scope: !632, file: !14, line: 593, column: 42)
!632 = distinct !DILexicalBlock(scope: !624, file: !14, line: 593, column: 6)
!633 = !DILocation(line: 591, column: 61, scope: !624)
!634 = !DILocation(line: 591, column: 73, scope: !624)
!635 = !DILocation(line: 593, column: 27, scope: !632)
!636 = !DILocation(line: 593, column: 6, scope: !632)
!637 = !DILocation(line: 593, column: 33, scope: !632)
!638 = !DILocation(line: 593, column: 36, scope: !632)
!639 = !DILocation(line: 593, column: 6, scope: !624)
!640 = !DILocation(line: 594, column: 3, scope: !631)
!641 = !DILocation(line: 594, column: 16, scope: !631)
!642 = !DILocation(line: 596, column: 7, scope: !643)
!643 = distinct !DILexicalBlock(scope: !631, file: !14, line: 596, column: 7)
!644 = !DILocation(line: 596, column: 12, scope: !643)
!645 = !DILocation(line: 596, column: 7, scope: !631)
!646 = !DILocation(line: 597, column: 25, scope: !643)
!647 = !DILocation(line: 597, column: 31, scope: !643)
!648 = !DILocation(line: 597, column: 11, scope: !643)
!649 = !DILocation(line: 597, column: 4, scope: !643)
!650 = !DILocation(line: 599, column: 11, scope: !631)
!651 = !DILocation(line: 599, column: 9, scope: !631)
!652 = !DILocation(line: 601, column: 33, scope: !631)
!653 = !DILocation(line: 601, column: 40, scope: !631)
!654 = !DILocation(line: 601, column: 20, scope: !631)
!655 = !DILocation(line: 601, column: 5, scope: !631)
!656 = !DILocation(line: 601, column: 51, scope: !631)
!657 = !DILocation(line: 602, column: 5, scope: !631)
!658 = !DILocation(line: 602, column: 12, scope: !631)
!659 = !DILocation(line: 600, column: 10, scope: !631)
!660 = !DILocation(line: 600, column: 3, scope: !631)
!661 = !DILocation(line: 603, column: 2, scope: !632)
!662 = !DILocation(line: 604, column: 19, scope: !624)
!663 = !DILocation(line: 604, column: 25, scope: !624)
!664 = !DILocation(line: 604, column: 9, scope: !624)
!665 = !DILocation(line: 604, column: 2, scope: !624)
!666 = !DILocation(line: 605, column: 1, scope: !624)
!667 = !DISubprogram(name: "xz_dec_bcj_create", scope: !121, file: !121, line: 136, type: !668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!668 = !DISubroutineType(types: !669)
!669 = !{!123, !73}
!670 = !DISubprogram(name: "xz_dec_lzma2_create", scope: !121, file: !121, line: 112, type: !671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!671 = !DISubroutineType(types: !672)
!672 = !{!119, !67, !38}
!673 = !DISubprogram(name: "kfree", scope: !14, file: !14, line: 227, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!678 = distinct !DISubprogram(name: "xz_dec_end", scope: !2, file: !2, line: 828, type: !276, scopeLine: 829, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !679)
!679 = !{!680}
!680 = !DILocalVariable(name: "s", arg: 1, scope: !678, file: !2, line: 828, type: !171)
!681 = !DILocation(line: 828, column: 42, scope: !678)
!682 = !DILocation(line: 830, column: 6, scope: !683)
!683 = distinct !DILexicalBlock(scope: !678, file: !2, line: 830, column: 6)
!684 = !DILocation(line: 830, column: 8, scope: !683)
!685 = !DILocation(line: 830, column: 6, scope: !678)
!686 = !DILocation(line: 831, column: 20, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !2, line: 830, column: 17)
!688 = !DILocation(line: 831, column: 23, scope: !687)
!689 = !DILocation(line: 831, column: 3, scope: !687)
!690 = !DILocation(line: 833, column: 3, scope: !687)
!691 = !DILocation(line: 835, column: 9, scope: !687)
!692 = !DILocation(line: 835, column: 3, scope: !687)
!693 = !DILocation(line: 836, column: 2, scope: !687)
!694 = !DILocation(line: 837, column: 1, scope: !678)
!695 = !DISubprogram(name: "xz_dec_lzma2_end", scope: !121, file: !121, line: 129, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !119}
!698 = distinct !DISubprogram(name: "fill_temp", scope: !2, file: !2, line: 157, type: !699, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{!73, !171, !172}
!701 = !{!702, !703, !704, !705, !707}
!702 = !DILocalVariable(name: "s", arg: 1, scope: !698, file: !2, line: 157, type: !171)
!703 = !DILocalVariable(name: "b", arg: 2, scope: !698, file: !2, line: 157, type: !172)
!704 = !DILocalVariable(name: "copy_size", scope: !698, file: !2, line: 159, type: !52)
!705 = !DILocalVariable(name: "__UNIQUE_ID___x118", scope: !706, file: !2, line: 159, type: !52)
!706 = distinct !DILexicalBlock(scope: !698, file: !2, line: 159, column: 21)
!707 = !DILocalVariable(name: "__UNIQUE_ID___y119", scope: !706, file: !2, line: 159, type: !52)
!708 = !DILocation(line: 157, column: 38, scope: !698)
!709 = !DILocation(line: 157, column: 56, scope: !698)
!710 = !DILocation(line: 159, column: 2, scope: !698)
!711 = !DILocation(line: 159, column: 9, scope: !698)
!712 = !DILocation(line: 159, column: 21, scope: !706)
!713 = !DILocation(line: 159, column: 21, scope: !698)
!714 = !DILocation(line: 162, column: 9, scope: !698)
!715 = !DILocation(line: 162, column: 12, scope: !698)
!716 = !DILocation(line: 162, column: 17, scope: !698)
!717 = !DILocation(line: 162, column: 23, scope: !698)
!718 = !DILocation(line: 162, column: 26, scope: !698)
!719 = !DILocation(line: 162, column: 31, scope: !698)
!720 = !DILocation(line: 162, column: 21, scope: !698)
!721 = !DILocation(line: 162, column: 36, scope: !698)
!722 = !DILocation(line: 162, column: 39, scope: !698)
!723 = !DILocation(line: 162, column: 44, scope: !698)
!724 = !DILocation(line: 162, column: 47, scope: !698)
!725 = !DILocation(line: 162, column: 42, scope: !698)
!726 = !DILocation(line: 162, column: 55, scope: !698)
!727 = !DILocation(line: 162, column: 2, scope: !698)
!728 = !DILocation(line: 163, column: 15, scope: !698)
!729 = !DILocation(line: 163, column: 2, scope: !698)
!730 = !DILocation(line: 163, column: 5, scope: !698)
!731 = !DILocation(line: 163, column: 12, scope: !698)
!732 = !DILocation(line: 164, column: 17, scope: !698)
!733 = !DILocation(line: 164, column: 2, scope: !698)
!734 = !DILocation(line: 164, column: 5, scope: !698)
!735 = !DILocation(line: 164, column: 10, scope: !698)
!736 = !DILocation(line: 164, column: 14, scope: !698)
!737 = !DILocation(line: 166, column: 6, scope: !738)
!738 = distinct !DILexicalBlock(scope: !698, file: !2, line: 166, column: 6)
!739 = !DILocation(line: 166, column: 9, scope: !738)
!740 = !DILocation(line: 166, column: 14, scope: !738)
!741 = !DILocation(line: 166, column: 21, scope: !738)
!742 = !DILocation(line: 166, column: 24, scope: !738)
!743 = !DILocation(line: 166, column: 29, scope: !738)
!744 = !DILocation(line: 166, column: 18, scope: !738)
!745 = !DILocation(line: 166, column: 6, scope: !698)
!746 = !DILocation(line: 167, column: 3, scope: !747)
!747 = distinct !DILexicalBlock(scope: !738, file: !2, line: 166, column: 35)
!748 = !DILocation(line: 167, column: 6, scope: !747)
!749 = !DILocation(line: 167, column: 11, scope: !747)
!750 = !DILocation(line: 167, column: 15, scope: !747)
!751 = !DILocation(line: 168, column: 3, scope: !747)
!752 = !DILocation(line: 171, column: 2, scope: !698)
!753 = !DILocation(line: 172, column: 1, scope: !698)
!754 = distinct !DISubprogram(name: "dec_stream_header", scope: !2, file: !2, line: 387, type: !755, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!20, !171}
!757 = !{!758}
!758 = !DILocalVariable(name: "s", arg: 1, scope: !754, file: !2, line: 387, type: !171)
!759 = !DILocation(line: 387, column: 53, scope: !754)
!760 = !DILocation(line: 389, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !754, file: !2, line: 389, column: 6)
!762 = !DILocation(line: 389, column: 6, scope: !754)
!763 = !DILocation(line: 390, column: 3, scope: !761)
!764 = !DILocation(line: 392, column: 6, scope: !765)
!765 = distinct !DILexicalBlock(scope: !754, file: !2, line: 392, column: 6)
!766 = !DILocation(line: 393, column: 7, scope: !765)
!767 = !DILocation(line: 393, column: 4, scope: !765)
!768 = !DILocation(line: 392, column: 6, scope: !754)
!769 = !DILocation(line: 394, column: 3, scope: !765)
!770 = !DILocation(line: 396, column: 6, scope: !771)
!771 = distinct !DILexicalBlock(scope: !754, file: !2, line: 396, column: 6)
!772 = !DILocation(line: 396, column: 9, scope: !771)
!773 = !DILocation(line: 396, column: 14, scope: !771)
!774 = !DILocation(line: 396, column: 37, scope: !771)
!775 = !DILocation(line: 396, column: 6, scope: !754)
!776 = !DILocation(line: 397, column: 3, scope: !771)
!777 = !DILocation(line: 405, column: 6, scope: !778)
!778 = distinct !DILexicalBlock(scope: !754, file: !2, line: 405, column: 6)
!779 = !DILocation(line: 405, column: 9, scope: !778)
!780 = !DILocation(line: 405, column: 14, scope: !778)
!781 = !DILocation(line: 405, column: 41, scope: !778)
!782 = !DILocation(line: 405, column: 6, scope: !754)
!783 = !DILocation(line: 406, column: 3, scope: !778)
!784 = !DILocation(line: 408, column: 18, scope: !754)
!785 = !DILocation(line: 408, column: 21, scope: !754)
!786 = !DILocation(line: 408, column: 26, scope: !754)
!787 = !DILocation(line: 408, column: 2, scope: !754)
!788 = !DILocation(line: 408, column: 5, scope: !754)
!789 = !DILocation(line: 408, column: 16, scope: !754)
!790 = !DILocation(line: 414, column: 6, scope: !791)
!791 = distinct !DILexicalBlock(scope: !754, file: !2, line: 414, column: 6)
!792 = !DILocation(line: 414, column: 9, scope: !791)
!793 = !DILocation(line: 414, column: 20, scope: !791)
!794 = !DILocation(line: 414, column: 6, scope: !754)
!795 = !DILocation(line: 415, column: 3, scope: !791)
!796 = !DILocation(line: 418, column: 2, scope: !754)
!797 = !DILocation(line: 419, column: 1, scope: !754)
!798 = distinct !DISubprogram(name: "dec_block_header", scope: !2, file: !2, line: 449, type: !755, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !799)
!799 = !{!800, !801}
!800 = !DILocalVariable(name: "s", arg: 1, scope: !798, file: !2, line: 449, type: !171)
!801 = !DILocalVariable(name: "ret", scope: !798, file: !2, line: 451, type: !20)
!802 = !DILocation(line: 449, column: 52, scope: !798)
!803 = !DILocation(line: 451, column: 2, scope: !798)
!804 = !DILocation(line: 451, column: 14, scope: !798)
!805 = !DILocation(line: 457, column: 2, scope: !798)
!806 = !DILocation(line: 457, column: 5, scope: !798)
!807 = !DILocation(line: 457, column: 10, scope: !798)
!808 = !DILocation(line: 457, column: 15, scope: !798)
!809 = !DILocation(line: 458, column: 6, scope: !810)
!810 = distinct !DILexicalBlock(scope: !798, file: !2, line: 458, column: 6)
!811 = !DILocation(line: 459, column: 7, scope: !810)
!812 = !DILocation(line: 459, column: 4, scope: !810)
!813 = !DILocation(line: 458, column: 6, scope: !798)
!814 = !DILocation(line: 460, column: 3, scope: !810)
!815 = !DILocation(line: 462, column: 2, scope: !798)
!816 = !DILocation(line: 462, column: 5, scope: !798)
!817 = !DILocation(line: 462, column: 10, scope: !798)
!818 = !DILocation(line: 462, column: 14, scope: !798)
!819 = !DILocation(line: 469, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !798, file: !2, line: 469, column: 6)
!821 = !DILocation(line: 469, column: 9, scope: !820)
!822 = !DILocation(line: 469, column: 14, scope: !820)
!823 = !DILocation(line: 469, column: 21, scope: !820)
!824 = !DILocation(line: 469, column: 6, scope: !798)
!825 = !DILocation(line: 473, column: 3, scope: !820)
!826 = !DILocation(line: 476, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !798, file: !2, line: 476, column: 6)
!828 = !DILocation(line: 476, column: 9, scope: !827)
!829 = !DILocation(line: 476, column: 14, scope: !827)
!830 = !DILocation(line: 476, column: 21, scope: !827)
!831 = !DILocation(line: 476, column: 6, scope: !798)
!832 = !DILocation(line: 477, column: 15, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !2, line: 477, column: 7)
!834 = distinct !DILexicalBlock(scope: !827, file: !2, line: 476, column: 29)
!835 = !DILocation(line: 477, column: 18, scope: !833)
!836 = !DILocation(line: 477, column: 21, scope: !833)
!837 = !DILocation(line: 477, column: 26, scope: !833)
!838 = !DILocation(line: 477, column: 32, scope: !833)
!839 = !DILocation(line: 477, column: 35, scope: !833)
!840 = !DILocation(line: 477, column: 40, scope: !833)
!841 = !DILocation(line: 477, column: 45, scope: !833)
!842 = !DILocation(line: 477, column: 48, scope: !833)
!843 = !DILocation(line: 477, column: 53, scope: !833)
!844 = !DILocation(line: 477, column: 7, scope: !833)
!845 = !DILocation(line: 478, column: 6, scope: !833)
!846 = !DILocation(line: 477, column: 7, scope: !834)
!847 = !DILocation(line: 479, column: 4, scope: !833)
!848 = !DILocation(line: 481, column: 32, scope: !834)
!849 = !DILocation(line: 481, column: 35, scope: !834)
!850 = !DILocation(line: 481, column: 3, scope: !834)
!851 = !DILocation(line: 481, column: 6, scope: !834)
!852 = !DILocation(line: 481, column: 19, scope: !834)
!853 = !DILocation(line: 481, column: 30, scope: !834)
!854 = !DILocation(line: 482, column: 2, scope: !834)
!855 = !DILocation(line: 483, column: 3, scope: !856)
!856 = distinct !DILexicalBlock(scope: !827, file: !2, line: 482, column: 9)
!857 = !DILocation(line: 483, column: 6, scope: !856)
!858 = !DILocation(line: 483, column: 19, scope: !856)
!859 = !DILocation(line: 483, column: 30, scope: !856)
!860 = !DILocation(line: 487, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !798, file: !2, line: 487, column: 6)
!862 = !DILocation(line: 487, column: 9, scope: !861)
!863 = !DILocation(line: 487, column: 14, scope: !861)
!864 = !DILocation(line: 487, column: 21, scope: !861)
!865 = !DILocation(line: 487, column: 6, scope: !798)
!866 = !DILocation(line: 488, column: 15, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !2, line: 488, column: 7)
!868 = distinct !DILexicalBlock(scope: !861, file: !2, line: 487, column: 29)
!869 = !DILocation(line: 488, column: 18, scope: !867)
!870 = !DILocation(line: 488, column: 21, scope: !867)
!871 = !DILocation(line: 488, column: 26, scope: !867)
!872 = !DILocation(line: 488, column: 32, scope: !867)
!873 = !DILocation(line: 488, column: 35, scope: !867)
!874 = !DILocation(line: 488, column: 40, scope: !867)
!875 = !DILocation(line: 488, column: 45, scope: !867)
!876 = !DILocation(line: 488, column: 48, scope: !867)
!877 = !DILocation(line: 488, column: 53, scope: !867)
!878 = !DILocation(line: 488, column: 7, scope: !867)
!879 = !DILocation(line: 489, column: 5, scope: !867)
!880 = !DILocation(line: 488, column: 7, scope: !868)
!881 = !DILocation(line: 490, column: 4, scope: !867)
!882 = !DILocation(line: 492, column: 34, scope: !868)
!883 = !DILocation(line: 492, column: 37, scope: !868)
!884 = !DILocation(line: 492, column: 3, scope: !868)
!885 = !DILocation(line: 492, column: 6, scope: !868)
!886 = !DILocation(line: 492, column: 19, scope: !868)
!887 = !DILocation(line: 492, column: 32, scope: !868)
!888 = !DILocation(line: 493, column: 2, scope: !868)
!889 = !DILocation(line: 494, column: 3, scope: !890)
!890 = distinct !DILexicalBlock(scope: !861, file: !2, line: 493, column: 9)
!891 = !DILocation(line: 494, column: 6, scope: !890)
!892 = !DILocation(line: 494, column: 19, scope: !890)
!893 = !DILocation(line: 494, column: 32, scope: !890)
!894 = !DILocation(line: 499, column: 18, scope: !798)
!895 = !DILocation(line: 499, column: 21, scope: !798)
!896 = !DILocation(line: 499, column: 26, scope: !798)
!897 = !DILocation(line: 499, column: 33, scope: !798)
!898 = !DILocation(line: 499, column: 2, scope: !798)
!899 = !DILocation(line: 499, column: 5, scope: !798)
!900 = !DILocation(line: 499, column: 16, scope: !798)
!901 = !DILocation(line: 500, column: 6, scope: !902)
!902 = distinct !DILexicalBlock(scope: !798, file: !2, line: 500, column: 6)
!903 = !DILocation(line: 500, column: 9, scope: !902)
!904 = !DILocation(line: 500, column: 6, scope: !798)
!905 = !DILocation(line: 501, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !2, line: 501, column: 7)
!907 = distinct !DILexicalBlock(scope: !902, file: !2, line: 500, column: 21)
!908 = !DILocation(line: 501, column: 10, scope: !906)
!909 = !DILocation(line: 501, column: 15, scope: !906)
!910 = !DILocation(line: 501, column: 22, scope: !906)
!911 = !DILocation(line: 501, column: 25, scope: !906)
!912 = !DILocation(line: 501, column: 30, scope: !906)
!913 = !DILocation(line: 501, column: 20, scope: !906)
!914 = !DILocation(line: 501, column: 34, scope: !906)
!915 = !DILocation(line: 501, column: 7, scope: !907)
!916 = !DILocation(line: 502, column: 4, scope: !906)
!917 = !DILocation(line: 504, column: 26, scope: !907)
!918 = !DILocation(line: 504, column: 29, scope: !907)
!919 = !DILocation(line: 504, column: 34, scope: !907)
!920 = !DILocation(line: 504, column: 37, scope: !907)
!921 = !DILocation(line: 504, column: 42, scope: !907)
!922 = !DILocation(line: 504, column: 46, scope: !907)
!923 = !DILocation(line: 504, column: 49, scope: !907)
!924 = !DILocation(line: 504, column: 54, scope: !907)
!925 = !DILocation(line: 504, column: 57, scope: !907)
!926 = !DILocation(line: 504, column: 9, scope: !907)
!927 = !DILocation(line: 504, column: 7, scope: !907)
!928 = !DILocation(line: 505, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !907, file: !2, line: 505, column: 7)
!930 = !DILocation(line: 505, column: 11, scope: !929)
!931 = !DILocation(line: 505, column: 7, scope: !907)
!932 = !DILocation(line: 506, column: 11, scope: !929)
!933 = !DILocation(line: 506, column: 4, scope: !929)
!934 = !DILocation(line: 512, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !907, file: !2, line: 512, column: 7)
!936 = !DILocation(line: 512, column: 10, scope: !935)
!937 = !DILocation(line: 512, column: 15, scope: !935)
!938 = !DILocation(line: 512, column: 19, scope: !935)
!939 = !DILocation(line: 512, column: 22, scope: !935)
!940 = !DILocation(line: 512, column: 27, scope: !935)
!941 = !DILocation(line: 512, column: 30, scope: !935)
!942 = !DILocation(line: 512, column: 34, scope: !935)
!943 = !DILocation(line: 512, column: 7, scope: !907)
!944 = !DILocation(line: 513, column: 4, scope: !935)
!945 = !DILocation(line: 514, column: 2, scope: !907)
!946 = !DILocation(line: 518, column: 6, scope: !947)
!947 = distinct !DILexicalBlock(scope: !798, file: !2, line: 518, column: 6)
!948 = !DILocation(line: 518, column: 9, scope: !947)
!949 = !DILocation(line: 518, column: 14, scope: !947)
!950 = !DILocation(line: 518, column: 21, scope: !947)
!951 = !DILocation(line: 518, column: 24, scope: !947)
!952 = !DILocation(line: 518, column: 29, scope: !947)
!953 = !DILocation(line: 518, column: 19, scope: !947)
!954 = !DILocation(line: 518, column: 33, scope: !947)
!955 = !DILocation(line: 518, column: 6, scope: !798)
!956 = !DILocation(line: 519, column: 3, scope: !947)
!957 = !DILocation(line: 522, column: 6, scope: !958)
!958 = distinct !DILexicalBlock(scope: !798, file: !2, line: 522, column: 6)
!959 = !DILocation(line: 522, column: 9, scope: !958)
!960 = !DILocation(line: 522, column: 14, scope: !958)
!961 = !DILocation(line: 522, column: 18, scope: !958)
!962 = !DILocation(line: 522, column: 21, scope: !958)
!963 = !DILocation(line: 522, column: 26, scope: !958)
!964 = !DILocation(line: 522, column: 29, scope: !958)
!965 = !DILocation(line: 522, column: 33, scope: !958)
!966 = !DILocation(line: 522, column: 6, scope: !798)
!967 = !DILocation(line: 523, column: 3, scope: !958)
!968 = !DILocation(line: 526, column: 6, scope: !969)
!969 = distinct !DILexicalBlock(scope: !798, file: !2, line: 526, column: 6)
!970 = !DILocation(line: 526, column: 9, scope: !969)
!971 = !DILocation(line: 526, column: 14, scope: !969)
!972 = !DILocation(line: 526, column: 18, scope: !969)
!973 = !DILocation(line: 526, column: 21, scope: !969)
!974 = !DILocation(line: 526, column: 26, scope: !969)
!975 = !DILocation(line: 526, column: 29, scope: !969)
!976 = !DILocation(line: 526, column: 33, scope: !969)
!977 = !DILocation(line: 526, column: 6, scope: !798)
!978 = !DILocation(line: 527, column: 3, scope: !969)
!979 = !DILocation(line: 530, column: 6, scope: !980)
!980 = distinct !DILexicalBlock(scope: !798, file: !2, line: 530, column: 6)
!981 = !DILocation(line: 530, column: 9, scope: !980)
!982 = !DILocation(line: 530, column: 14, scope: !980)
!983 = !DILocation(line: 530, column: 21, scope: !980)
!984 = !DILocation(line: 530, column: 24, scope: !980)
!985 = !DILocation(line: 530, column: 29, scope: !980)
!986 = !DILocation(line: 530, column: 19, scope: !980)
!987 = !DILocation(line: 530, column: 33, scope: !980)
!988 = !DILocation(line: 530, column: 6, scope: !798)
!989 = !DILocation(line: 531, column: 3, scope: !980)
!990 = !DILocation(line: 533, column: 27, scope: !798)
!991 = !DILocation(line: 533, column: 30, scope: !798)
!992 = !DILocation(line: 533, column: 37, scope: !798)
!993 = !DILocation(line: 533, column: 40, scope: !798)
!994 = !DILocation(line: 533, column: 45, scope: !798)
!995 = !DILocation(line: 533, column: 49, scope: !798)
!996 = !DILocation(line: 533, column: 52, scope: !798)
!997 = !DILocation(line: 533, column: 57, scope: !798)
!998 = !DILocation(line: 533, column: 60, scope: !798)
!999 = !DILocation(line: 533, column: 8, scope: !798)
!1000 = !DILocation(line: 533, column: 6, scope: !798)
!1001 = !DILocation(line: 534, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !798, file: !2, line: 534, column: 6)
!1003 = !DILocation(line: 534, column: 10, scope: !1002)
!1004 = !DILocation(line: 534, column: 6, scope: !798)
!1005 = !DILocation(line: 535, column: 10, scope: !1002)
!1006 = !DILocation(line: 535, column: 3, scope: !1002)
!1007 = !DILocation(line: 538, column: 2, scope: !798)
!1008 = !DILocation(line: 538, column: 9, scope: !798)
!1009 = !DILocation(line: 538, column: 12, scope: !798)
!1010 = !DILocation(line: 538, column: 17, scope: !798)
!1011 = !DILocation(line: 538, column: 23, scope: !798)
!1012 = !DILocation(line: 538, column: 26, scope: !798)
!1013 = !DILocation(line: 538, column: 31, scope: !798)
!1014 = !DILocation(line: 538, column: 21, scope: !798)
!1015 = !DILocation(line: 539, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !798, file: !2, line: 539, column: 7)
!1017 = !DILocation(line: 539, column: 10, scope: !1016)
!1018 = !DILocation(line: 539, column: 15, scope: !1016)
!1019 = !DILocation(line: 539, column: 19, scope: !1016)
!1020 = !DILocation(line: 539, column: 22, scope: !1016)
!1021 = !DILocation(line: 539, column: 27, scope: !1016)
!1022 = !DILocation(line: 539, column: 30, scope: !1016)
!1023 = !DILocation(line: 539, column: 34, scope: !1016)
!1024 = !DILocation(line: 539, column: 7, scope: !798)
!1025 = !DILocation(line: 540, column: 4, scope: !1016)
!1026 = distinct !{!1026, !1007, !1027, !454, !455}
!1027 = !DILocation(line: 540, column: 11, scope: !798)
!1028 = !DILocation(line: 542, column: 2, scope: !798)
!1029 = !DILocation(line: 542, column: 5, scope: !798)
!1030 = !DILocation(line: 542, column: 10, scope: !798)
!1031 = !DILocation(line: 542, column: 14, scope: !798)
!1032 = !DILocation(line: 543, column: 2, scope: !798)
!1033 = !DILocation(line: 543, column: 5, scope: !798)
!1034 = !DILocation(line: 543, column: 11, scope: !798)
!1035 = !DILocation(line: 543, column: 22, scope: !798)
!1036 = !DILocation(line: 544, column: 2, scope: !798)
!1037 = !DILocation(line: 544, column: 5, scope: !798)
!1038 = !DILocation(line: 544, column: 11, scope: !798)
!1039 = !DILocation(line: 544, column: 24, scope: !798)
!1040 = !DILocation(line: 546, column: 2, scope: !798)
!1041 = !DILocation(line: 547, column: 1, scope: !798)
!1042 = distinct !DISubprogram(name: "dec_block", scope: !2, file: !2, line: 218, type: !169, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !1043)
!1043 = !{!1044, !1045, !1046}
!1044 = !DILocalVariable(name: "s", arg: 1, scope: !1042, file: !2, line: 218, type: !171)
!1045 = !DILocalVariable(name: "b", arg: 2, scope: !1042, file: !2, line: 218, type: !172)
!1046 = !DILocalVariable(name: "ret", scope: !1042, file: !2, line: 220, type: !20)
!1047 = !DILocation(line: 218, column: 45, scope: !1042)
!1048 = !DILocation(line: 218, column: 63, scope: !1042)
!1049 = !DILocation(line: 220, column: 2, scope: !1042)
!1050 = !DILocation(line: 220, column: 14, scope: !1042)
!1051 = !DILocation(line: 222, column: 16, scope: !1042)
!1052 = !DILocation(line: 222, column: 19, scope: !1042)
!1053 = !DILocation(line: 222, column: 2, scope: !1042)
!1054 = !DILocation(line: 222, column: 5, scope: !1042)
!1055 = !DILocation(line: 222, column: 14, scope: !1042)
!1056 = !DILocation(line: 223, column: 17, scope: !1042)
!1057 = !DILocation(line: 223, column: 20, scope: !1042)
!1058 = !DILocation(line: 223, column: 2, scope: !1042)
!1059 = !DILocation(line: 223, column: 5, scope: !1042)
!1060 = !DILocation(line: 223, column: 15, scope: !1042)
!1061 = !DILocation(line: 226, column: 6, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 226, column: 6)
!1063 = !DILocation(line: 226, column: 9, scope: !1062)
!1064 = !DILocation(line: 226, column: 6, scope: !1042)
!1065 = !DILocation(line: 227, column: 24, scope: !1062)
!1066 = !DILocation(line: 227, column: 27, scope: !1062)
!1067 = !DILocation(line: 227, column: 32, scope: !1062)
!1068 = !DILocation(line: 227, column: 35, scope: !1062)
!1069 = !DILocation(line: 227, column: 42, scope: !1062)
!1070 = !DILocation(line: 227, column: 9, scope: !1062)
!1071 = !DILocation(line: 227, column: 7, scope: !1062)
!1072 = !DILocation(line: 227, column: 3, scope: !1062)
!1073 = !DILocation(line: 230, column: 26, scope: !1062)
!1074 = !DILocation(line: 230, column: 29, scope: !1062)
!1075 = !DILocation(line: 230, column: 36, scope: !1062)
!1076 = !DILocation(line: 230, column: 9, scope: !1062)
!1077 = !DILocation(line: 230, column: 7, scope: !1062)
!1078 = !DILocation(line: 232, column: 25, scope: !1042)
!1079 = !DILocation(line: 232, column: 28, scope: !1042)
!1080 = !DILocation(line: 232, column: 37, scope: !1042)
!1081 = !DILocation(line: 232, column: 40, scope: !1042)
!1082 = !DILocation(line: 232, column: 35, scope: !1042)
!1083 = !DILocation(line: 232, column: 2, scope: !1042)
!1084 = !DILocation(line: 232, column: 5, scope: !1042)
!1085 = !DILocation(line: 232, column: 11, scope: !1042)
!1086 = !DILocation(line: 232, column: 22, scope: !1042)
!1087 = !DILocation(line: 233, column: 27, scope: !1042)
!1088 = !DILocation(line: 233, column: 30, scope: !1042)
!1089 = !DILocation(line: 233, column: 40, scope: !1042)
!1090 = !DILocation(line: 233, column: 43, scope: !1042)
!1091 = !DILocation(line: 233, column: 38, scope: !1042)
!1092 = !DILocation(line: 233, column: 2, scope: !1042)
!1093 = !DILocation(line: 233, column: 5, scope: !1042)
!1094 = !DILocation(line: 233, column: 11, scope: !1042)
!1095 = !DILocation(line: 233, column: 24, scope: !1042)
!1096 = !DILocation(line: 239, column: 6, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 239, column: 6)
!1098 = !DILocation(line: 239, column: 9, scope: !1097)
!1099 = !DILocation(line: 239, column: 15, scope: !1097)
!1100 = !DILocation(line: 239, column: 28, scope: !1097)
!1101 = !DILocation(line: 239, column: 31, scope: !1097)
!1102 = !DILocation(line: 239, column: 44, scope: !1097)
!1103 = !DILocation(line: 239, column: 26, scope: !1097)
!1104 = !DILocation(line: 240, column: 4, scope: !1097)
!1105 = !DILocation(line: 240, column: 7, scope: !1097)
!1106 = !DILocation(line: 240, column: 10, scope: !1097)
!1107 = !DILocation(line: 240, column: 16, scope: !1097)
!1108 = !DILocation(line: 241, column: 7, scope: !1097)
!1109 = !DILocation(line: 241, column: 10, scope: !1097)
!1110 = !DILocation(line: 241, column: 23, scope: !1097)
!1111 = !DILocation(line: 241, column: 5, scope: !1097)
!1112 = !DILocation(line: 239, column: 6, scope: !1042)
!1113 = !DILocation(line: 242, column: 3, scope: !1097)
!1114 = !DILocation(line: 244, column: 6, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 244, column: 6)
!1116 = !DILocation(line: 244, column: 9, scope: !1115)
!1117 = !DILocation(line: 244, column: 20, scope: !1115)
!1118 = !DILocation(line: 244, column: 6, scope: !1042)
!1119 = !DILocation(line: 245, column: 14, scope: !1115)
!1120 = !DILocation(line: 245, column: 3, scope: !1115)
!1121 = !DILocation(line: 245, column: 6, scope: !1115)
!1122 = !DILocation(line: 245, column: 12, scope: !1115)
!1123 = !DILocation(line: 248, column: 6, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 248, column: 6)
!1125 = !DILocation(line: 248, column: 10, scope: !1124)
!1126 = !DILocation(line: 248, column: 6, scope: !1042)
!1127 = !DILocation(line: 249, column: 7, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 249, column: 7)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 248, column: 28)
!1130 = !DILocation(line: 249, column: 10, scope: !1128)
!1131 = !DILocation(line: 249, column: 23, scope: !1128)
!1132 = !DILocation(line: 249, column: 34, scope: !1128)
!1133 = !DILocation(line: 250, column: 5, scope: !1128)
!1134 = !DILocation(line: 250, column: 8, scope: !1128)
!1135 = !DILocation(line: 250, column: 11, scope: !1128)
!1136 = !DILocation(line: 250, column: 24, scope: !1128)
!1137 = !DILocation(line: 251, column: 9, scope: !1128)
!1138 = !DILocation(line: 251, column: 12, scope: !1128)
!1139 = !DILocation(line: 251, column: 18, scope: !1128)
!1140 = !DILocation(line: 251, column: 6, scope: !1128)
!1141 = !DILocation(line: 249, column: 7, scope: !1129)
!1142 = !DILocation(line: 252, column: 4, scope: !1128)
!1143 = !DILocation(line: 254, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 254, column: 7)
!1145 = !DILocation(line: 254, column: 10, scope: !1144)
!1146 = !DILocation(line: 254, column: 23, scope: !1144)
!1147 = !DILocation(line: 254, column: 36, scope: !1144)
!1148 = !DILocation(line: 255, column: 5, scope: !1144)
!1149 = !DILocation(line: 255, column: 8, scope: !1144)
!1150 = !DILocation(line: 255, column: 11, scope: !1144)
!1151 = !DILocation(line: 255, column: 24, scope: !1144)
!1152 = !DILocation(line: 256, column: 9, scope: !1144)
!1153 = !DILocation(line: 256, column: 12, scope: !1144)
!1154 = !DILocation(line: 256, column: 18, scope: !1144)
!1155 = !DILocation(line: 256, column: 6, scope: !1144)
!1156 = !DILocation(line: 254, column: 7, scope: !1129)
!1157 = !DILocation(line: 257, column: 4, scope: !1144)
!1158 = !DILocation(line: 259, column: 29, scope: !1129)
!1159 = !DILocation(line: 259, column: 32, scope: !1129)
!1160 = !DILocation(line: 259, column: 45, scope: !1129)
!1161 = !DILocation(line: 260, column: 7, scope: !1129)
!1162 = !DILocation(line: 260, column: 10, scope: !1129)
!1163 = !DILocation(line: 260, column: 16, scope: !1129)
!1164 = !DILocation(line: 260, column: 5, scope: !1129)
!1165 = !DILocation(line: 259, column: 3, scope: !1129)
!1166 = !DILocation(line: 259, column: 6, scope: !1129)
!1167 = !DILocation(line: 259, column: 12, scope: !1129)
!1168 = !DILocation(line: 259, column: 17, scope: !1129)
!1169 = !DILocation(line: 259, column: 26, scope: !1129)
!1170 = !DILocation(line: 265, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 265, column: 7)
!1172 = !DILocation(line: 265, column: 10, scope: !1171)
!1173 = !DILocation(line: 265, column: 21, scope: !1171)
!1174 = !DILocation(line: 265, column: 7, scope: !1129)
!1175 = !DILocation(line: 266, column: 4, scope: !1171)
!1176 = !DILocation(line: 266, column: 7, scope: !1171)
!1177 = !DILocation(line: 266, column: 13, scope: !1171)
!1178 = !DILocation(line: 266, column: 18, scope: !1171)
!1179 = !DILocation(line: 266, column: 27, scope: !1171)
!1180 = !DILocation(line: 269, column: 33, scope: !1129)
!1181 = !DILocation(line: 269, column: 36, scope: !1129)
!1182 = !DILocation(line: 269, column: 42, scope: !1129)
!1183 = !DILocation(line: 269, column: 3, scope: !1129)
!1184 = !DILocation(line: 269, column: 6, scope: !1129)
!1185 = !DILocation(line: 269, column: 12, scope: !1129)
!1186 = !DILocation(line: 269, column: 17, scope: !1129)
!1187 = !DILocation(line: 269, column: 30, scope: !1129)
!1188 = !DILocation(line: 270, column: 25, scope: !1129)
!1189 = !DILocation(line: 270, column: 3, scope: !1129)
!1190 = !DILocation(line: 270, column: 6, scope: !1129)
!1191 = !DILocation(line: 270, column: 12, scope: !1129)
!1192 = !DILocation(line: 270, column: 17, scope: !1129)
!1193 = !DILocation(line: 270, column: 23, scope: !1129)
!1194 = !DILocation(line: 274, column: 5, scope: !1129)
!1195 = !DILocation(line: 274, column: 8, scope: !1129)
!1196 = !DILocation(line: 274, column: 14, scope: !1129)
!1197 = !DILocation(line: 274, column: 3, scope: !1129)
!1198 = !DILocation(line: 275, column: 2, scope: !1129)
!1199 = !DILocation(line: 277, column: 9, scope: !1042)
!1200 = !DILocation(line: 277, column: 2, scope: !1042)
!1201 = !DILocation(line: 278, column: 1, scope: !1042)
!1202 = distinct !DISubprogram(name: "crc32_validate", scope: !2, file: !2, line: 346, type: !169, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !1203)
!1203 = !{!1204, !1205}
!1204 = !DILocalVariable(name: "s", arg: 1, scope: !1202, file: !2, line: 346, type: !171)
!1205 = !DILocalVariable(name: "b", arg: 2, scope: !1202, file: !2, line: 346, type: !172)
!1206 = !DILocation(line: 346, column: 50, scope: !1202)
!1207 = !DILocation(line: 346, column: 68, scope: !1202)
!1208 = !DILocation(line: 348, column: 2, scope: !1202)
!1209 = !DILocation(line: 349, column: 7, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 349, column: 7)
!1211 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 348, column: 5)
!1212 = !DILocation(line: 349, column: 10, scope: !1210)
!1213 = !DILocation(line: 349, column: 20, scope: !1210)
!1214 = !DILocation(line: 349, column: 23, scope: !1210)
!1215 = !DILocation(line: 349, column: 17, scope: !1210)
!1216 = !DILocation(line: 349, column: 7, scope: !1211)
!1217 = !DILocation(line: 350, column: 4, scope: !1210)
!1218 = !DILocation(line: 352, column: 9, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 352, column: 7)
!1220 = !DILocation(line: 352, column: 12, scope: !1219)
!1221 = !DILocation(line: 352, column: 21, scope: !1219)
!1222 = !DILocation(line: 352, column: 24, scope: !1219)
!1223 = !DILocation(line: 352, column: 18, scope: !1219)
!1224 = !DILocation(line: 352, column: 29, scope: !1219)
!1225 = !DILocation(line: 352, column: 40, scope: !1219)
!1226 = !DILocation(line: 352, column: 43, scope: !1219)
!1227 = !DILocation(line: 352, column: 46, scope: !1219)
!1228 = !DILocation(line: 352, column: 49, scope: !1219)
!1229 = !DILocation(line: 352, column: 55, scope: !1219)
!1230 = !DILocation(line: 352, column: 37, scope: !1219)
!1231 = !DILocation(line: 352, column: 7, scope: !1211)
!1232 = !DILocation(line: 353, column: 4, scope: !1219)
!1233 = !DILocation(line: 355, column: 3, scope: !1211)
!1234 = !DILocation(line: 355, column: 6, scope: !1211)
!1235 = !DILocation(line: 355, column: 10, scope: !1211)
!1236 = !DILocation(line: 357, column: 2, scope: !1211)
!1237 = !DILocation(line: 357, column: 11, scope: !1202)
!1238 = !DILocation(line: 357, column: 14, scope: !1202)
!1239 = !DILocation(line: 357, column: 18, scope: !1202)
!1240 = distinct !{!1240, !1208, !1241, !454, !455}
!1241 = !DILocation(line: 357, column: 22, scope: !1202)
!1242 = !DILocation(line: 359, column: 2, scope: !1202)
!1243 = !DILocation(line: 359, column: 5, scope: !1202)
!1244 = !DILocation(line: 359, column: 11, scope: !1202)
!1245 = !DILocation(line: 360, column: 2, scope: !1202)
!1246 = !DILocation(line: 360, column: 5, scope: !1202)
!1247 = !DILocation(line: 360, column: 9, scope: !1202)
!1248 = !DILocation(line: 362, column: 2, scope: !1202)
!1249 = !DILocation(line: 363, column: 1, scope: !1202)
!1250 = distinct !DISubprogram(name: "dec_index", scope: !2, file: !2, line: 296, type: !169, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !1251)
!1251 = !{!1252, !1253, !1254}
!1252 = !DILocalVariable(name: "s", arg: 1, scope: !1250, file: !2, line: 296, type: !171)
!1253 = !DILocalVariable(name: "b", arg: 2, scope: !1250, file: !2, line: 296, type: !172)
!1254 = !DILocalVariable(name: "ret", scope: !1250, file: !2, line: 298, type: !20)
!1255 = !DILocation(line: 296, column: 45, scope: !1250)
!1256 = !DILocation(line: 296, column: 63, scope: !1250)
!1257 = !DILocation(line: 298, column: 2, scope: !1250)
!1258 = !DILocation(line: 298, column: 14, scope: !1250)
!1259 = !DILocation(line: 300, column: 2, scope: !1250)
!1260 = !DILocation(line: 301, column: 17, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 300, column: 5)
!1262 = !DILocation(line: 301, column: 20, scope: !1261)
!1263 = !DILocation(line: 301, column: 23, scope: !1261)
!1264 = !DILocation(line: 301, column: 28, scope: !1261)
!1265 = !DILocation(line: 301, column: 31, scope: !1261)
!1266 = !DILocation(line: 301, column: 39, scope: !1261)
!1267 = !DILocation(line: 301, column: 42, scope: !1261)
!1268 = !DILocation(line: 301, column: 9, scope: !1261)
!1269 = !DILocation(line: 301, column: 7, scope: !1261)
!1270 = !DILocation(line: 302, column: 7, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 302, column: 7)
!1272 = !DILocation(line: 302, column: 11, scope: !1271)
!1273 = !DILocation(line: 302, column: 7, scope: !1261)
!1274 = !DILocation(line: 303, column: 17, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 302, column: 29)
!1276 = !DILocation(line: 303, column: 20, scope: !1275)
!1277 = !DILocation(line: 303, column: 4, scope: !1275)
!1278 = !DILocation(line: 304, column: 11, scope: !1275)
!1279 = !DILocation(line: 304, column: 4, scope: !1275)
!1280 = !DILocation(line: 307, column: 11, scope: !1261)
!1281 = !DILocation(line: 307, column: 14, scope: !1261)
!1282 = !DILocation(line: 307, column: 20, scope: !1261)
!1283 = !DILocation(line: 307, column: 3, scope: !1261)
!1284 = !DILocation(line: 309, column: 21, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 307, column: 30)
!1286 = !DILocation(line: 309, column: 24, scope: !1285)
!1287 = !DILocation(line: 309, column: 4, scope: !1285)
!1288 = !DILocation(line: 309, column: 7, scope: !1285)
!1289 = !DILocation(line: 309, column: 13, scope: !1285)
!1290 = !DILocation(line: 309, column: 19, scope: !1285)
!1291 = !DILocation(line: 316, column: 8, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 316, column: 8)
!1293 = !DILocation(line: 316, column: 11, scope: !1292)
!1294 = !DILocation(line: 316, column: 17, scope: !1292)
!1295 = !DILocation(line: 316, column: 26, scope: !1292)
!1296 = !DILocation(line: 316, column: 29, scope: !1292)
!1297 = !DILocation(line: 316, column: 35, scope: !1292)
!1298 = !DILocation(line: 316, column: 23, scope: !1292)
!1299 = !DILocation(line: 316, column: 8, scope: !1285)
!1300 = !DILocation(line: 317, column: 5, scope: !1292)
!1301 = !DILocation(line: 319, column: 4, scope: !1285)
!1302 = !DILocation(line: 319, column: 7, scope: !1285)
!1303 = !DILocation(line: 319, column: 13, scope: !1285)
!1304 = !DILocation(line: 319, column: 22, scope: !1285)
!1305 = !DILocation(line: 320, column: 4, scope: !1285)
!1306 = !DILocation(line: 323, column: 30, scope: !1285)
!1307 = !DILocation(line: 323, column: 33, scope: !1285)
!1308 = !DILocation(line: 323, column: 4, scope: !1285)
!1309 = !DILocation(line: 323, column: 7, scope: !1285)
!1310 = !DILocation(line: 323, column: 13, scope: !1285)
!1311 = !DILocation(line: 323, column: 18, scope: !1285)
!1312 = !DILocation(line: 323, column: 27, scope: !1285)
!1313 = !DILocation(line: 324, column: 4, scope: !1285)
!1314 = !DILocation(line: 324, column: 7, scope: !1285)
!1315 = !DILocation(line: 324, column: 13, scope: !1285)
!1316 = !DILocation(line: 324, column: 22, scope: !1285)
!1317 = !DILocation(line: 325, column: 4, scope: !1285)
!1318 = !DILocation(line: 328, column: 34, scope: !1285)
!1319 = !DILocation(line: 328, column: 37, scope: !1285)
!1320 = !DILocation(line: 328, column: 4, scope: !1285)
!1321 = !DILocation(line: 328, column: 7, scope: !1285)
!1322 = !DILocation(line: 328, column: 13, scope: !1285)
!1323 = !DILocation(line: 328, column: 18, scope: !1285)
!1324 = !DILocation(line: 328, column: 31, scope: !1285)
!1325 = !DILocation(line: 329, column: 26, scope: !1285)
!1326 = !DILocation(line: 329, column: 4, scope: !1285)
!1327 = !DILocation(line: 329, column: 7, scope: !1285)
!1328 = !DILocation(line: 329, column: 13, scope: !1285)
!1329 = !DILocation(line: 329, column: 18, scope: !1285)
!1330 = !DILocation(line: 329, column: 24, scope: !1285)
!1331 = !DILocation(line: 333, column: 6, scope: !1285)
!1332 = !DILocation(line: 333, column: 9, scope: !1285)
!1333 = !DILocation(line: 333, column: 15, scope: !1285)
!1334 = !DILocation(line: 333, column: 4, scope: !1285)
!1335 = !DILocation(line: 334, column: 4, scope: !1285)
!1336 = !DILocation(line: 334, column: 7, scope: !1285)
!1337 = !DILocation(line: 334, column: 13, scope: !1285)
!1338 = !DILocation(line: 334, column: 22, scope: !1285)
!1339 = !DILocation(line: 335, column: 4, scope: !1285)
!1340 = !DILocation(line: 337, column: 2, scope: !1261)
!1341 = !DILocation(line: 337, column: 11, scope: !1250)
!1342 = !DILocation(line: 337, column: 14, scope: !1250)
!1343 = !DILocation(line: 337, column: 20, scope: !1250)
!1344 = !DILocation(line: 337, column: 26, scope: !1250)
!1345 = distinct !{!1345, !1259, !1346, !454, !455}
!1346 = !DILocation(line: 337, column: 29, scope: !1250)
!1347 = !DILocation(line: 339, column: 2, scope: !1250)
!1348 = !DILocation(line: 340, column: 1, scope: !1250)
!1349 = distinct !DISubprogram(name: "index_update", scope: !2, file: !2, line: 281, type: !1350, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !1354)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !171, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!1354 = !{!1355, !1356, !1357}
!1355 = !DILocalVariable(name: "s", arg: 1, scope: !1349, file: !2, line: 281, type: !171)
!1356 = !DILocalVariable(name: "b", arg: 2, scope: !1349, file: !2, line: 281, type: !1352)
!1357 = !DILocalVariable(name: "in_used", scope: !1349, file: !2, line: 283, type: !52)
!1358 = !DILocation(line: 281, column: 41, scope: !1349)
!1359 = !DILocation(line: 281, column: 65, scope: !1349)
!1360 = !DILocation(line: 283, column: 2, scope: !1349)
!1361 = !DILocation(line: 283, column: 9, scope: !1349)
!1362 = !DILocation(line: 283, column: 19, scope: !1349)
!1363 = !DILocation(line: 283, column: 22, scope: !1349)
!1364 = !DILocation(line: 283, column: 31, scope: !1349)
!1365 = !DILocation(line: 283, column: 34, scope: !1349)
!1366 = !DILocation(line: 283, column: 29, scope: !1349)
!1367 = !DILocation(line: 284, column: 19, scope: !1349)
!1368 = !DILocation(line: 284, column: 2, scope: !1349)
!1369 = !DILocation(line: 284, column: 5, scope: !1349)
!1370 = !DILocation(line: 284, column: 11, scope: !1349)
!1371 = !DILocation(line: 284, column: 16, scope: !1349)
!1372 = !DILocation(line: 285, column: 13, scope: !1349)
!1373 = !DILocation(line: 285, column: 2, scope: !1349)
!1374 = !DILocation(line: 285, column: 5, scope: !1349)
!1375 = !DILocation(line: 285, column: 11, scope: !1349)
!1376 = !DILocation(line: 286, column: 1, scope: !1349)
!1377 = !DISubprogram(name: "memcmp", scope: !1378, file: !1378, line: 196, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1378 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!1381, !676, !676, !53}
!1381 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1382 = distinct !DISubprogram(name: "dec_stream_footer", scope: !2, file: !2, line: 422, type: !755, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !1383)
!1383 = !{!1384}
!1384 = !DILocalVariable(name: "s", arg: 1, scope: !1382, file: !2, line: 422, type: !171)
!1385 = !DILocation(line: 422, column: 53, scope: !1382)
!1386 = !DILocation(line: 424, column: 7, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 424, column: 6)
!1388 = !DILocation(line: 424, column: 6, scope: !1382)
!1389 = !DILocation(line: 425, column: 3, scope: !1387)
!1390 = !DILocation(line: 427, column: 6, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 427, column: 6)
!1392 = !DILocation(line: 427, column: 41, scope: !1391)
!1393 = !DILocation(line: 427, column: 38, scope: !1391)
!1394 = !DILocation(line: 427, column: 6, scope: !1382)
!1395 = !DILocation(line: 428, column: 3, scope: !1391)
!1396 = !DILocation(line: 435, column: 7, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 435, column: 6)
!1398 = !DILocation(line: 435, column: 10, scope: !1397)
!1399 = !DILocation(line: 435, column: 16, scope: !1397)
!1400 = !DILocation(line: 435, column: 21, scope: !1397)
!1401 = !DILocation(line: 435, column: 30, scope: !1397)
!1402 = !DILocation(line: 435, column: 27, scope: !1397)
!1403 = !DILocation(line: 435, column: 6, scope: !1382)
!1404 = !DILocation(line: 436, column: 3, scope: !1397)
!1405 = !DILocation(line: 438, column: 6, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 438, column: 6)
!1407 = !DILocation(line: 438, column: 9, scope: !1406)
!1408 = !DILocation(line: 438, column: 14, scope: !1406)
!1409 = !DILocation(line: 438, column: 21, scope: !1406)
!1410 = !DILocation(line: 438, column: 26, scope: !1406)
!1411 = !DILocation(line: 438, column: 29, scope: !1406)
!1412 = !DILocation(line: 438, column: 32, scope: !1406)
!1413 = !DILocation(line: 438, column: 37, scope: !1406)
!1414 = !DILocation(line: 438, column: 47, scope: !1406)
!1415 = !DILocation(line: 438, column: 50, scope: !1406)
!1416 = !DILocation(line: 438, column: 44, scope: !1406)
!1417 = !DILocation(line: 438, column: 6, scope: !1382)
!1418 = !DILocation(line: 439, column: 3, scope: !1406)
!1419 = !DILocation(line: 445, column: 2, scope: !1382)
!1420 = !DILocation(line: 446, column: 1, scope: !1382)
!1421 = !DISubprogram(name: "crc32_le", scope: !1422, file: !1422, line: 11, type: !1423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = !DIFile(filename: "./include/linux/crc32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "599e6bac06870ac8b267770ea75a1e89")
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!40, !40, !1425, !52}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1427 = distinct !DISubprogram(name: "__le32_to_cpup", scope: !1428, file: !1428, line: 57, type: !1429, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !1435)
!1428 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e83ca9c46c7eccd1fa31a0d39b270d0a")
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!42, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1434, line: 38, baseType: !42)
!1434 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1435 = !{!1436}
!1436 = !DILocalVariable(name: "p", arg: 1, scope: !1427, file: !1428, line: 57, type: !1431)
!1437 = !DILocation(line: 57, column: 59, scope: !1427)
!1438 = !DILocation(line: 59, column: 25, scope: !1427)
!1439 = !DILocation(line: 59, column: 24, scope: !1427)
!1440 = !DILocation(line: 59, column: 2, scope: !1427)
!1441 = distinct !DISubprogram(name: "dec_vli", scope: !2, file: !2, line: 175, type: !1442, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !1445)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!20, !171, !156, !1444, !52}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1445 = !{!1446, !1447, !1448, !1449, !1450}
!1446 = !DILocalVariable(name: "s", arg: 1, scope: !1441, file: !2, line: 175, type: !171)
!1447 = !DILocalVariable(name: "in", arg: 2, scope: !1441, file: !2, line: 175, type: !156)
!1448 = !DILocalVariable(name: "in_pos", arg: 3, scope: !1441, file: !2, line: 176, type: !1444)
!1449 = !DILocalVariable(name: "in_size", arg: 4, scope: !1441, file: !2, line: 176, type: !52)
!1450 = !DILocalVariable(name: "byte", scope: !1441, file: !2, line: 178, type: !112)
!1451 = !DILocation(line: 175, column: 43, scope: !1441)
!1452 = !DILocation(line: 175, column: 61, scope: !1441)
!1453 = !DILocation(line: 176, column: 15, scope: !1441)
!1454 = !DILocation(line: 176, column: 30, scope: !1441)
!1455 = !DILocation(line: 178, column: 2, scope: !1441)
!1456 = !DILocation(line: 178, column: 10, scope: !1441)
!1457 = !DILocation(line: 180, column: 6, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1441, file: !2, line: 180, column: 6)
!1459 = !DILocation(line: 180, column: 9, scope: !1458)
!1460 = !DILocation(line: 180, column: 13, scope: !1458)
!1461 = !DILocation(line: 180, column: 6, scope: !1441)
!1462 = !DILocation(line: 181, column: 3, scope: !1458)
!1463 = !DILocation(line: 181, column: 6, scope: !1458)
!1464 = !DILocation(line: 181, column: 10, scope: !1458)
!1465 = !DILocation(line: 183, column: 2, scope: !1441)
!1466 = !DILocation(line: 183, column: 10, scope: !1441)
!1467 = !DILocation(line: 183, column: 9, scope: !1441)
!1468 = !DILocation(line: 183, column: 19, scope: !1441)
!1469 = !DILocation(line: 183, column: 17, scope: !1441)
!1470 = !DILocation(line: 184, column: 10, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1441, file: !2, line: 183, column: 28)
!1472 = !DILocation(line: 184, column: 14, scope: !1471)
!1473 = !DILocation(line: 184, column: 13, scope: !1471)
!1474 = !DILocation(line: 184, column: 8, scope: !1471)
!1475 = !DILocation(line: 185, column: 6, scope: !1471)
!1476 = !DILocation(line: 185, column: 3, scope: !1471)
!1477 = !DILocation(line: 187, column: 24, scope: !1471)
!1478 = !DILocation(line: 187, column: 29, scope: !1471)
!1479 = !DILocation(line: 187, column: 13, scope: !1471)
!1480 = !DILocation(line: 187, column: 40, scope: !1471)
!1481 = !DILocation(line: 187, column: 43, scope: !1471)
!1482 = !DILocation(line: 187, column: 37, scope: !1471)
!1483 = !DILocation(line: 187, column: 3, scope: !1471)
!1484 = !DILocation(line: 187, column: 6, scope: !1471)
!1485 = !DILocation(line: 187, column: 10, scope: !1471)
!1486 = !DILocation(line: 189, column: 8, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 189, column: 7)
!1488 = !DILocation(line: 189, column: 13, scope: !1487)
!1489 = !DILocation(line: 189, column: 21, scope: !1487)
!1490 = !DILocation(line: 189, column: 7, scope: !1471)
!1491 = !DILocation(line: 191, column: 8, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 191, column: 8)
!1493 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 189, column: 27)
!1494 = !DILocation(line: 191, column: 13, scope: !1492)
!1495 = !DILocation(line: 191, column: 18, scope: !1492)
!1496 = !DILocation(line: 191, column: 21, scope: !1492)
!1497 = !DILocation(line: 191, column: 24, scope: !1492)
!1498 = !DILocation(line: 191, column: 28, scope: !1492)
!1499 = !DILocation(line: 191, column: 8, scope: !1493)
!1500 = !DILocation(line: 192, column: 5, scope: !1492)
!1501 = !DILocation(line: 194, column: 4, scope: !1493)
!1502 = !DILocation(line: 194, column: 7, scope: !1493)
!1503 = !DILocation(line: 194, column: 11, scope: !1493)
!1504 = !DILocation(line: 195, column: 4, scope: !1493)
!1505 = !DILocation(line: 198, column: 3, scope: !1471)
!1506 = !DILocation(line: 198, column: 6, scope: !1471)
!1507 = !DILocation(line: 198, column: 10, scope: !1471)
!1508 = !DILocation(line: 199, column: 7, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 199, column: 7)
!1510 = !DILocation(line: 199, column: 10, scope: !1509)
!1511 = !DILocation(line: 199, column: 14, scope: !1509)
!1512 = !DILocation(line: 199, column: 7, scope: !1471)
!1513 = !DILocation(line: 200, column: 4, scope: !1509)
!1514 = distinct !{!1514, !1465, !1515, !454, !455}
!1515 = !DILocation(line: 201, column: 2, scope: !1441)
!1516 = !DILocation(line: 203, column: 2, scope: !1441)
!1517 = !DILocation(line: 204, column: 1, scope: !1441)
!1518 = !DISubprogram(name: "xz_dec_bcj_reset", scope: !121, file: !121, line: 144, type: !1519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!20, !123, !112}
!1521 = !DISubprogram(name: "xz_dec_lzma2_reset", scope: !121, file: !121, line: 121, type: !1522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!20, !119, !112}
!1524 = !DISubprogram(name: "xz_dec_bcj_run", scope: !121, file: !121, line: 151, type: !1525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!20, !123, !119, !172}
!1527 = !DISubprogram(name: "xz_dec_lzma2_run", scope: !121, file: !121, line: 125, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!20, !119, !172}
!1530 = !DISubprogram(name: "kmalloc_large", scope: !14, file: !14, line: 531, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1531 = distinct !DISubprogram(name: "__kmalloc_index", scope: !14, file: !14, line: 444, type: !1532, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !1534)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!22, !52, !73}
!1534 = !{!1535, !1536}
!1535 = !DILocalVariable(name: "size", arg: 1, scope: !1531, file: !14, line: 444, type: !52)
!1536 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1531, file: !14, line: 445, type: !73)
!1537 = !DILocation(line: 444, column: 60, scope: !1531)
!1538 = !DILocation(line: 445, column: 16, scope: !1531)
!1539 = !DILocation(line: 447, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 447, column: 6)
!1541 = !DILocation(line: 447, column: 6, scope: !1531)
!1542 = !DILocation(line: 448, column: 3, scope: !1540)
!1543 = !DILocation(line: 450, column: 6, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 450, column: 6)
!1545 = !DILocation(line: 450, column: 11, scope: !1544)
!1546 = !DILocation(line: 450, column: 6, scope: !1531)
!1547 = !DILocation(line: 451, column: 3, scope: !1544)
!1548 = !DILocation(line: 453, column: 32, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 453, column: 6)
!1550 = !DILocation(line: 453, column: 37, scope: !1549)
!1551 = !DILocation(line: 453, column: 42, scope: !1549)
!1552 = !DILocation(line: 453, column: 45, scope: !1549)
!1553 = !DILocation(line: 453, column: 50, scope: !1549)
!1554 = !DILocation(line: 453, column: 6, scope: !1531)
!1555 = !DILocation(line: 454, column: 3, scope: !1549)
!1556 = !DILocation(line: 455, column: 32, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 455, column: 6)
!1558 = !DILocation(line: 455, column: 37, scope: !1557)
!1559 = !DILocation(line: 455, column: 43, scope: !1557)
!1560 = !DILocation(line: 455, column: 46, scope: !1557)
!1561 = !DILocation(line: 455, column: 51, scope: !1557)
!1562 = !DILocation(line: 455, column: 6, scope: !1531)
!1563 = !DILocation(line: 456, column: 3, scope: !1557)
!1564 = !DILocation(line: 457, column: 6, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 457, column: 6)
!1566 = !DILocation(line: 457, column: 11, scope: !1565)
!1567 = !DILocation(line: 457, column: 6, scope: !1531)
!1568 = !DILocation(line: 457, column: 26, scope: !1565)
!1569 = !DILocation(line: 458, column: 6, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 458, column: 6)
!1571 = !DILocation(line: 458, column: 11, scope: !1570)
!1572 = !DILocation(line: 458, column: 6, scope: !1531)
!1573 = !DILocation(line: 458, column: 26, scope: !1570)
!1574 = !DILocation(line: 459, column: 6, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 459, column: 6)
!1576 = !DILocation(line: 459, column: 11, scope: !1575)
!1577 = !DILocation(line: 459, column: 6, scope: !1531)
!1578 = !DILocation(line: 459, column: 26, scope: !1575)
!1579 = !DILocation(line: 460, column: 6, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 460, column: 6)
!1581 = !DILocation(line: 460, column: 11, scope: !1580)
!1582 = !DILocation(line: 460, column: 6, scope: !1531)
!1583 = !DILocation(line: 460, column: 26, scope: !1580)
!1584 = !DILocation(line: 461, column: 6, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 461, column: 6)
!1586 = !DILocation(line: 461, column: 11, scope: !1585)
!1587 = !DILocation(line: 461, column: 6, scope: !1531)
!1588 = !DILocation(line: 461, column: 26, scope: !1585)
!1589 = !DILocation(line: 462, column: 6, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 462, column: 6)
!1591 = !DILocation(line: 462, column: 11, scope: !1590)
!1592 = !DILocation(line: 462, column: 6, scope: !1531)
!1593 = !DILocation(line: 462, column: 26, scope: !1590)
!1594 = !DILocation(line: 463, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 463, column: 6)
!1596 = !DILocation(line: 463, column: 11, scope: !1595)
!1597 = !DILocation(line: 463, column: 6, scope: !1531)
!1598 = !DILocation(line: 463, column: 26, scope: !1595)
!1599 = !DILocation(line: 464, column: 6, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 464, column: 6)
!1601 = !DILocation(line: 464, column: 11, scope: !1600)
!1602 = !DILocation(line: 464, column: 6, scope: !1531)
!1603 = !DILocation(line: 464, column: 26, scope: !1600)
!1604 = !DILocation(line: 465, column: 6, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 465, column: 6)
!1606 = !DILocation(line: 465, column: 11, scope: !1605)
!1607 = !DILocation(line: 465, column: 6, scope: !1531)
!1608 = !DILocation(line: 465, column: 26, scope: !1605)
!1609 = !DILocation(line: 466, column: 6, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 466, column: 6)
!1611 = !DILocation(line: 466, column: 11, scope: !1610)
!1612 = !DILocation(line: 466, column: 6, scope: !1531)
!1613 = !DILocation(line: 466, column: 26, scope: !1610)
!1614 = !DILocation(line: 467, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 467, column: 6)
!1616 = !DILocation(line: 467, column: 11, scope: !1615)
!1617 = !DILocation(line: 467, column: 6, scope: !1531)
!1618 = !DILocation(line: 467, column: 26, scope: !1615)
!1619 = !DILocation(line: 468, column: 6, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 468, column: 6)
!1621 = !DILocation(line: 468, column: 11, scope: !1620)
!1622 = !DILocation(line: 468, column: 6, scope: !1531)
!1623 = !DILocation(line: 468, column: 26, scope: !1620)
!1624 = !DILocation(line: 469, column: 6, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 469, column: 6)
!1626 = !DILocation(line: 469, column: 11, scope: !1625)
!1627 = !DILocation(line: 469, column: 6, scope: !1531)
!1628 = !DILocation(line: 469, column: 26, scope: !1625)
!1629 = !DILocation(line: 470, column: 6, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 470, column: 6)
!1631 = !DILocation(line: 470, column: 11, scope: !1630)
!1632 = !DILocation(line: 470, column: 6, scope: !1531)
!1633 = !DILocation(line: 470, column: 26, scope: !1630)
!1634 = !DILocation(line: 471, column: 6, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 471, column: 6)
!1636 = !DILocation(line: 471, column: 11, scope: !1635)
!1637 = !DILocation(line: 471, column: 6, scope: !1531)
!1638 = !DILocation(line: 471, column: 26, scope: !1635)
!1639 = !DILocation(line: 472, column: 6, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 472, column: 6)
!1641 = !DILocation(line: 472, column: 11, scope: !1640)
!1642 = !DILocation(line: 472, column: 6, scope: !1531)
!1643 = !DILocation(line: 472, column: 26, scope: !1640)
!1644 = !DILocation(line: 473, column: 6, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 473, column: 6)
!1646 = !DILocation(line: 473, column: 11, scope: !1645)
!1647 = !DILocation(line: 473, column: 6, scope: !1531)
!1648 = !DILocation(line: 473, column: 26, scope: !1645)
!1649 = !DILocation(line: 474, column: 6, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 474, column: 6)
!1651 = !DILocation(line: 474, column: 11, scope: !1650)
!1652 = !DILocation(line: 474, column: 6, scope: !1531)
!1653 = !DILocation(line: 474, column: 27, scope: !1650)
!1654 = !DILocation(line: 475, column: 6, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 475, column: 6)
!1656 = !DILocation(line: 475, column: 11, scope: !1655)
!1657 = !DILocation(line: 475, column: 6, scope: !1531)
!1658 = !DILocation(line: 475, column: 32, scope: !1655)
!1659 = !DILocation(line: 477, column: 50, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1531, file: !14, line: 477, column: 6)
!1661 = !DILocation(line: 477, column: 6, scope: !1531)
!1662 = !DILocation(line: 478, column: 3, scope: !1660)
!1663 = !DILocation(line: 478, column: 3, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !14, line: 478, column: 3)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !14, line: 478, column: 3)
!1666 = !{i32 -2143508462}
!1667 = !DILocation(line: 478, column: 3, scope: !1665)
!1668 = !DILocation(line: 480, column: 3, scope: !1660)
!1669 = !DILocation(line: 480, column: 3, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1660, file: !14, line: 480, column: 3)
!1671 = !DILocation(line: 480, column: 3, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1670, file: !14, line: 480, column: 3)
!1673 = !DILocation(line: 480, column: 3, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !14, line: 480, column: 3)
!1675 = !{i64 2151459037, i64 2151459066, i64 2151459112, i64 2151459170, i64 2151459224, i64 2151459278, i64 2151459333, i64 2151459364}
!1676 = !DILocation(line: 483, column: 2, scope: !1531)
!1677 = !DILocation(line: 484, column: 1, scope: !1531)
!1678 = !DISubprogram(name: "kmalloc_trace", scope: !14, file: !14, line: 525, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!153, !1681, !152, !52}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1683, line: 11, flags: DIFlagFwdDecl)
!1683 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1684 = distinct !DISubprogram(name: "kmalloc_type", scope: !14, file: !14, line: 401, type: !1685, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !1687)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!142, !152, !56}
!1687 = !{!1688, !1689}
!1688 = !DILocalVariable(name: "flags", arg: 1, scope: !1684, file: !14, line: 401, type: !152)
!1689 = !DILocalVariable(name: "caller", arg: 2, scope: !1684, file: !14, line: 401, type: !56)
!1690 = !DILocation(line: 401, column: 67, scope: !1684)
!1691 = !DILocation(line: 401, column: 88, scope: !1684)
!1692 = !DILocation(line: 407, column: 6, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1684, file: !14, line: 407, column: 6)
!1694 = !DILocation(line: 407, column: 6, scope: !1684)
!1695 = !DILocation(line: 413, column: 3, scope: !1693)
!1696 = !DILocation(line: 423, column: 38, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1684, file: !14, line: 423, column: 6)
!1698 = !DILocation(line: 423, column: 44, scope: !1697)
!1699 = !DILocation(line: 423, column: 6, scope: !1684)
!1700 = !DILocation(line: 424, column: 3, scope: !1697)
!1701 = !DILocation(line: 426, column: 3, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1684, file: !14, line: 425, column: 6)
!1703 = !DILocation(line: 429, column: 1, scope: !1684)
!1704 = !DISubprogram(name: "__kmalloc", scope: !14, file: !14, line: 488, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1705 = !DISubprogram(name: "__compiletime_assert_117", scope: !14, file: !14, line: 478, type: !1706, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null}
