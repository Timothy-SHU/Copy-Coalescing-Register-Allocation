; ModuleID = 'lib/decompress_unlzma.c'
source_filename = "lib/decompress_unlzma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_header = type <{ i8, i32, i64 }>
%struct.rc = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, ptr }
%struct.writer = type { ptr, i8, i64, i32, i64, ptr, ptr }
%struct.cstate = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Could not allocate input buffer\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"bad header\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [21 x i8] c"LZMA data is corrupt\00", align 1, !dbg !12
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [15 x i8] c"unexpected EOF\00", align 1, !dbg !20

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @unlzma(ptr noundef %buf, i64 noundef %in_len, ptr noundef %fill, ptr noundef %flush, ptr noundef %output, ptr noundef %posp, ptr noundef %error) #0 section ".init.text" align 16 !dbg !78 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %in_len.addr = alloca i64, align 8
  %fill.addr = alloca ptr, align 8
  %flush.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %posp.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %header = alloca %struct.lzma_header, align 1
  %lc = alloca i32, align 4
  %pb = alloca i32, align 4
  %lp = alloca i32, align 4
  %pos_state_mask = alloca i32, align 4
  %literal_pos_mask = alloca i32, align 4
  %p = alloca ptr, align 8
  %num_probs = alloca i32, align 4
  %rc = alloca %struct.rc, align 8
  %i = alloca i32, align 4
  %mi = alloca i32, align 4
  %wr = alloca %struct.writer, align 8
  %cst = alloca %struct.cstate, align 4
  %inbuf = alloca ptr, align 8
  %ret = alloca i32, align 4
  %pos_state = alloca i32, align 4
  %prob = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !91, metadata !DIExpression()), !dbg !157
  store i64 %in_len, ptr %in_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_len.addr, metadata !92, metadata !DIExpression()), !dbg !158
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !93, metadata !DIExpression()), !dbg !159
  store ptr %flush, ptr %flush.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !94, metadata !DIExpression()), !dbg !160
  store ptr %output, ptr %output.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !95, metadata !DIExpression()), !dbg !161
  store ptr %posp, ptr %posp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %posp.addr, metadata !96, metadata !DIExpression()), !dbg !162
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !97, metadata !DIExpression()), !dbg !163
  call void @llvm.lifetime.start.p0(i64 13, ptr %header) #12, !dbg !164
  call void @llvm.dbg.declare(metadata ptr %header, metadata !98, metadata !DIExpression()), !dbg !165
  call void @llvm.lifetime.start.p0(i64 4, ptr %lc) #12, !dbg !166
  call void @llvm.dbg.declare(metadata ptr %lc, metadata !104, metadata !DIExpression()), !dbg !167
  call void @llvm.lifetime.start.p0(i64 4, ptr %pb) #12, !dbg !166
  call void @llvm.dbg.declare(metadata ptr %pb, metadata !105, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 4, ptr %lp) #12, !dbg !166
  call void @llvm.dbg.declare(metadata ptr %lp, metadata !106, metadata !DIExpression()), !dbg !169
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos_state_mask) #12, !dbg !170
  call void @llvm.dbg.declare(metadata ptr %pos_state_mask, metadata !107, metadata !DIExpression()), !dbg !171
  call void @llvm.lifetime.start.p0(i64 4, ptr %literal_pos_mask) #12, !dbg !172
  call void @llvm.dbg.declare(metadata ptr %literal_pos_mask, metadata !108, metadata !DIExpression()), !dbg !173
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !174
  call void @llvm.dbg.declare(metadata ptr %p, metadata !109, metadata !DIExpression()), !dbg !175
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_probs) #12, !dbg !176
  call void @llvm.dbg.declare(metadata ptr %num_probs, metadata !110, metadata !DIExpression()), !dbg !177
  call void @llvm.lifetime.start.p0(i64 64, ptr %rc) #12, !dbg !178
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !111, metadata !DIExpression()), !dbg !179
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %i, metadata !123, metadata !DIExpression()), !dbg !181
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #12, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !124, metadata !DIExpression()), !dbg !182
  call void @llvm.lifetime.start.p0(i64 56, ptr %wr) #12, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %wr, metadata !125, metadata !DIExpression()), !dbg !184
  call void @llvm.lifetime.start.p0(i64 20, ptr %cst) #12, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %cst, metadata !140, metadata !DIExpression()), !dbg !186
  call void @llvm.lifetime.start.p0(i64 8, ptr %inbuf) #12, !dbg !187
  call void @llvm.dbg.declare(metadata ptr %inbuf, metadata !148, metadata !DIExpression()), !dbg !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !189
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !149, metadata !DIExpression()), !dbg !190
  store i32 -1, ptr %ret, align 4, !dbg !190
  %0 = load ptr, ptr %error.addr, align 8, !dbg !191
  %error1 = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 8, !dbg !192
  store ptr %0, ptr %error1, align 8, !dbg !193
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !194
  %tobool = icmp ne ptr %1, null, !dbg !194
  br i1 %tobool, label %if.then, label %if.else, !dbg !196

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !197
  store ptr %2, ptr %inbuf, align 8, !dbg !198
  br label %if.end, !dbg !199

if.else:                                          ; preds = %entry
  %call = call noalias ptr @kmalloc(i64 noundef 65536, i32 noundef 3264) #13, !dbg !200
  store ptr %call, ptr %inbuf, align 8, !dbg !201
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %inbuf, align 8, !dbg !202
  %tobool2 = icmp ne ptr %3, null, !dbg !202
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !204

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %error.addr, align 8, !dbg !205
  call void %4(ptr noundef @.str) #14, !dbg !205
  br label %exit_0, !dbg !207

if.end4:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 0, !dbg !208
  store i32 0, ptr %state, align 4, !dbg !209
  %rep3 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 4, !dbg !210
  store i32 1, ptr %rep3, align 4, !dbg !211
  %rep2 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 3, !dbg !212
  store i32 1, ptr %rep2, align 4, !dbg !213
  %rep1 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 2, !dbg !214
  store i32 1, ptr %rep1, align 4, !dbg !215
  %rep0 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 1, !dbg !216
  store i32 1, ptr %rep0, align 4, !dbg !217
  %header5 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 6, !dbg !218
  store ptr %header, ptr %header5, align 8, !dbg !219
  %5 = load ptr, ptr %flush.addr, align 8, !dbg !220
  %flush6 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 5, !dbg !221
  store ptr %5, ptr %flush6, align 8, !dbg !222
  %global_pos = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 4, !dbg !223
  store i64 0, ptr %global_pos, align 8, !dbg !224
  %previous_byte = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 1, !dbg !225
  store i8 0, ptr %previous_byte, align 8, !dbg !226
  %buffer_pos = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 2, !dbg !227
  store i64 0, ptr %buffer_pos, align 8, !dbg !228
  %6 = load ptr, ptr %fill.addr, align 8, !dbg !229
  %7 = load ptr, ptr %inbuf, align 8, !dbg !230
  %8 = load i64, ptr %in_len.addr, align 8, !dbg !231
  call void @rc_init(ptr noundef %rc, ptr noundef %6, ptr noundef %7, i64 noundef %8) #15, !dbg !232
  store i32 0, ptr %i, align 4, !dbg !233
  br label %for.cond, !dbg !235

for.cond:                                         ; preds = %for.inc, %if.end4
  %9 = load i32, ptr %i, align 4, !dbg !236
  %conv = sext i32 %9 to i64, !dbg !236
  %cmp = icmp ult i64 %conv, 13, !dbg !238
  br i1 %cmp, label %for.body, label %for.end, !dbg !239

for.body:                                         ; preds = %for.cond
  %ptr = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 1, !dbg !240
  %10 = load ptr, ptr %ptr, align 8, !dbg !240
  %buffer_end = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 3, !dbg !243
  %11 = load ptr, ptr %buffer_end, align 8, !dbg !243
  %cmp8 = icmp uge ptr %10, %11, !dbg !244
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !245

if.then10:                                        ; preds = %for.body
  call void @rc_read(ptr noundef %rc) #15, !dbg !246
  br label %if.end11, !dbg !246

if.end11:                                         ; preds = %if.then10, %for.body
  %ptr12 = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 1, !dbg !247
  %12 = load ptr, ptr %ptr12, align 8, !dbg !248
  %incdec.ptr = getelementptr i8, ptr %12, i32 1, !dbg !248
  store ptr %incdec.ptr, ptr %ptr12, align 8, !dbg !248
  %13 = load i8, ptr %12, align 1, !dbg !249
  %14 = load i32, ptr %i, align 4, !dbg !250
  %idxprom = sext i32 %14 to i64, !dbg !251
  %arrayidx = getelementptr i8, ptr %header, i64 %idxprom, !dbg !251
  store i8 %13, ptr %arrayidx, align 1, !dbg !252
  br label %for.inc, !dbg !253

for.inc:                                          ; preds = %if.end11
  %15 = load i32, ptr %i, align 4, !dbg !254
  %inc = add i32 %15, 1, !dbg !254
  store i32 %inc, ptr %i, align 4, !dbg !254
  br label %for.cond, !dbg !255, !llvm.loop !256

for.end:                                          ; preds = %for.cond
  %pos = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 0, !dbg !260
  %16 = load i8, ptr %pos, align 1, !dbg !260
  %conv13 = zext i8 %16 to i32, !dbg !262
  %cmp14 = icmp sge i32 %conv13, 225, !dbg !263
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !264

if.then16:                                        ; preds = %for.end
  %17 = load ptr, ptr %error.addr, align 8, !dbg !265
  call void %17(ptr noundef @.str.1) #14, !dbg !265
  br label %exit_1, !dbg !267

if.end17:                                         ; preds = %for.end
  store i32 0, ptr %mi, align 4, !dbg !268
  %pos18 = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 0, !dbg !269
  %18 = load i8, ptr %pos18, align 1, !dbg !269
  %conv19 = zext i8 %18 to i32, !dbg !270
  store i32 %conv19, ptr %lc, align 4, !dbg !271
  br label %while.cond, !dbg !272

while.cond:                                       ; preds = %while.body, %if.end17
  %19 = load i32, ptr %lc, align 4, !dbg !273
  %cmp20 = icmp sge i32 %19, 9, !dbg !274
  br i1 %cmp20, label %while.body, label %while.end, !dbg !272

while.body:                                       ; preds = %while.cond
  %20 = load i32, ptr %mi, align 4, !dbg !275
  %inc22 = add i32 %20, 1, !dbg !275
  store i32 %inc22, ptr %mi, align 4, !dbg !275
  %21 = load i32, ptr %lc, align 4, !dbg !277
  %sub = sub i32 %21, 9, !dbg !277
  store i32 %sub, ptr %lc, align 4, !dbg !277
  br label %while.cond, !dbg !272, !llvm.loop !278

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %pb, align 4, !dbg !280
  %22 = load i32, ptr %mi, align 4, !dbg !281
  store i32 %22, ptr %lp, align 4, !dbg !282
  br label %while.cond23, !dbg !283

while.cond23:                                     ; preds = %while.body26, %while.end
  %23 = load i32, ptr %lp, align 4, !dbg !284
  %cmp24 = icmp sge i32 %23, 5, !dbg !285
  br i1 %cmp24, label %while.body26, label %while.end29, !dbg !283

while.body26:                                     ; preds = %while.cond23
  %24 = load i32, ptr %pb, align 4, !dbg !286
  %inc27 = add i32 %24, 1, !dbg !286
  store i32 %inc27, ptr %pb, align 4, !dbg !286
  %25 = load i32, ptr %lp, align 4, !dbg !288
  %sub28 = sub i32 %25, 5, !dbg !288
  store i32 %sub28, ptr %lp, align 4, !dbg !288
  br label %while.cond23, !dbg !283, !llvm.loop !289

while.end29:                                      ; preds = %while.cond23
  %26 = load i32, ptr %pb, align 4, !dbg !291
  %shl = shl i32 1, %26, !dbg !292
  %sub30 = sub i32 %shl, 1, !dbg !293
  store i32 %sub30, ptr %pos_state_mask, align 4, !dbg !294
  %27 = load i32, ptr %lp, align 4, !dbg !295
  %shl31 = shl i32 1, %27, !dbg !296
  %sub32 = sub i32 %shl31, 1, !dbg !297
  store i32 %sub32, ptr %literal_pos_mask, align 4, !dbg !298
  %dict_size = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 1, !dbg !299
  %call33 = call i64 @read_int(ptr noundef %dict_size, i32 noundef 4) #15, !dbg !299
  %conv34 = trunc i64 %call33 to i32, !dbg !299
  %dict_size35 = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 1, !dbg !299
  store i32 %conv34, ptr %dict_size35, align 1, !dbg !299
  %dst_size = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 2, !dbg !300
  %call36 = call i64 @read_int(ptr noundef %dst_size, i32 noundef 8) #15, !dbg !300
  %dst_size37 = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 2, !dbg !300
  store i64 %call36, ptr %dst_size37, align 1, !dbg !300
  %dict_size38 = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 1, !dbg !301
  %28 = load i32, ptr %dict_size38, align 1, !dbg !301
  %cmp39 = icmp eq i32 %28, 0, !dbg !303
  br i1 %cmp39, label %if.then41, label %if.end43, !dbg !304

if.then41:                                        ; preds = %while.end29
  %dict_size42 = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 1, !dbg !305
  store i32 1, ptr %dict_size42, align 1, !dbg !306
  br label %if.end43, !dbg !307

if.end43:                                         ; preds = %if.then41, %while.end29
  %29 = load ptr, ptr %output.addr, align 8, !dbg !308
  %tobool44 = icmp ne ptr %29, null, !dbg !308
  br i1 %tobool44, label %if.then45, label %if.else46, !dbg !310

if.then45:                                        ; preds = %if.end43
  %30 = load ptr, ptr %output.addr, align 8, !dbg !311
  %buffer = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 0, !dbg !312
  store ptr %30, ptr %buffer, align 8, !dbg !313
  br label %if.end60, !dbg !314

if.else46:                                        ; preds = %if.end43
  %dst_size47 = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 2, !dbg !315
  %31 = load i64, ptr %dst_size47, align 1, !dbg !315
  %dict_size48 = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 1, !dbg !315
  %32 = load i32, ptr %dict_size48, align 1, !dbg !315
  %conv49 = zext i32 %32 to i64, !dbg !315
  %cmp50 = icmp ult i64 %31, %conv49, !dbg !315
  br i1 %cmp50, label %cond.true, label %cond.false, !dbg !315

cond.true:                                        ; preds = %if.else46
  %dst_size52 = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 2, !dbg !315
  %33 = load i64, ptr %dst_size52, align 1, !dbg !315
  br label %cond.end, !dbg !315

cond.false:                                       ; preds = %if.else46
  %dict_size53 = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 1, !dbg !315
  %34 = load i32, ptr %dict_size53, align 1, !dbg !315
  %conv54 = zext i32 %34 to i64, !dbg !315
  br label %cond.end, !dbg !315

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %33, %cond.true ], [ %conv54, %cond.false ], !dbg !315
  %conv55 = trunc i64 %cond to i32, !dbg !315
  %bufsize = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 3, !dbg !317
  store i32 %conv55, ptr %bufsize, align 8, !dbg !318
  %bufsize56 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 3, !dbg !319
  %35 = load i32, ptr %bufsize56, align 8, !dbg !319
  %conv57 = sext i32 %35 to i64, !dbg !319
  %call58 = call noalias ptr @vmalloc(i64 noundef %conv57) #13, !dbg !319
  %buffer59 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 0, !dbg !320
  store ptr %call58, ptr %buffer59, align 8, !dbg !321
  br label %if.end60

if.end60:                                         ; preds = %cond.end, %if.then45
  %buffer61 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 0, !dbg !322
  %36 = load ptr, ptr %buffer61, align 8, !dbg !322
  %cmp62 = icmp eq ptr %36, null, !dbg !324
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !325

if.then64:                                        ; preds = %if.end60
  br label %exit_1, !dbg !326

if.end65:                                         ; preds = %if.end60
  %37 = load i32, ptr %lc, align 4, !dbg !327
  %38 = load i32, ptr %lp, align 4, !dbg !328
  %add = add i32 %37, %38, !dbg !329
  %shl66 = shl i32 768, %add, !dbg !330
  %add67 = add i32 1846, %shl66, !dbg !331
  store i32 %add67, ptr %num_probs, align 4, !dbg !332
  %39 = load i32, ptr %num_probs, align 4, !dbg !333
  %conv68 = sext i32 %39 to i64, !dbg !333
  %mul = mul i64 %conv68, 2, !dbg !333
  %call69 = call noalias ptr @vmalloc(i64 noundef %mul) #13, !dbg !333
  store ptr %call69, ptr %p, align 8, !dbg !334
  %40 = load ptr, ptr %p, align 8, !dbg !335
  %cmp70 = icmp eq ptr %40, null, !dbg !337
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !338

if.then72:                                        ; preds = %if.end65
  br label %exit_2, !dbg !339

if.end73:                                         ; preds = %if.end65
  %41 = load i32, ptr %lc, align 4, !dbg !340
  %42 = load i32, ptr %lp, align 4, !dbg !341
  %add74 = add i32 %41, %42, !dbg !342
  %shl75 = shl i32 768, %add74, !dbg !343
  %add76 = add i32 1846, %shl75, !dbg !344
  store i32 %add76, ptr %num_probs, align 4, !dbg !345
  store i32 0, ptr %i, align 4, !dbg !346
  br label %for.cond77, !dbg !348

for.cond77:                                       ; preds = %for.inc83, %if.end73
  %43 = load i32, ptr %i, align 4, !dbg !349
  %44 = load i32, ptr %num_probs, align 4, !dbg !351
  %cmp78 = icmp slt i32 %43, %44, !dbg !352
  br i1 %cmp78, label %for.body80, label %for.end85, !dbg !353

for.body80:                                       ; preds = %for.cond77
  %45 = load ptr, ptr %p, align 8, !dbg !354
  %46 = load i32, ptr %i, align 4, !dbg !355
  %idxprom81 = sext i32 %46 to i64, !dbg !354
  %arrayidx82 = getelementptr i16, ptr %45, i64 %idxprom81, !dbg !354
  store i16 1024, ptr %arrayidx82, align 2, !dbg !356
  br label %for.inc83, !dbg !354

for.inc83:                                        ; preds = %for.body80
  %47 = load i32, ptr %i, align 4, !dbg !357
  %inc84 = add i32 %47, 1, !dbg !357
  store i32 %inc84, ptr %i, align 4, !dbg !357
  br label %for.cond77, !dbg !358, !llvm.loop !359

for.end85:                                        ; preds = %for.cond77
  call void @rc_init_code(ptr noundef %rc) #15, !dbg !361
  br label %while.cond86, !dbg !362

while.cond86:                                     ; preds = %cleanup.cont, %for.end85
  %call87 = call i64 @get_pos(ptr noundef %wr) #15, !dbg !363
  %dst_size88 = getelementptr inbounds %struct.lzma_header, ptr %header, i32 0, i32 2, !dbg !364
  %48 = load i64, ptr %dst_size88, align 1, !dbg !364
  %cmp89 = icmp ult i64 %call87, %48, !dbg !365
  br i1 %cmp89, label %while.body91, label %while.end123, !dbg !362

while.body91:                                     ; preds = %while.cond86
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos_state) #12, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %pos_state, metadata !150, metadata !DIExpression()), !dbg !367
  %call92 = call i64 @get_pos(ptr noundef %wr) #15, !dbg !368
  %49 = load i32, ptr %pos_state_mask, align 4, !dbg !369
  %conv93 = zext i32 %49 to i64, !dbg !369
  %and = and i64 %call92, %conv93, !dbg !370
  %conv94 = trunc i64 %and to i32, !dbg !368
  store i32 %conv94, ptr %pos_state, align 4, !dbg !367
  call void @llvm.lifetime.start.p0(i64 8, ptr %prob) #12, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %prob, metadata !152, metadata !DIExpression()), !dbg !372
  %50 = load ptr, ptr %p, align 8, !dbg !373
  %add.ptr = getelementptr i16, ptr %50, i64 0, !dbg !374
  %state95 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 0, !dbg !375
  %51 = load i32, ptr %state95, align 4, !dbg !375
  %shl96 = shl i32 %51, 4, !dbg !376
  %idx.ext = sext i32 %shl96 to i64, !dbg !377
  %add.ptr97 = getelementptr i16, ptr %add.ptr, i64 %idx.ext, !dbg !377
  %52 = load i32, ptr %pos_state, align 4, !dbg !378
  %idx.ext98 = sext i32 %52 to i64, !dbg !379
  %add.ptr99 = getelementptr i16, ptr %add.ptr97, i64 %idx.ext98, !dbg !379
  store ptr %add.ptr99, ptr %prob, align 8, !dbg !372
  %53 = load ptr, ptr %prob, align 8, !dbg !380
  %call100 = call i32 @rc_is_bit_0(ptr noundef %rc, ptr noundef %53) #15, !dbg !382
  %tobool101 = icmp ne i32 %call100, 0, !dbg !382
  br i1 %tobool101, label %if.then102, label %if.else107, !dbg !383

if.then102:                                       ; preds = %while.body91
  %54 = load ptr, ptr %p, align 8, !dbg !384
  %55 = load i32, ptr %pos_state, align 4, !dbg !387
  %56 = load ptr, ptr %prob, align 8, !dbg !388
  %57 = load i32, ptr %lc, align 4, !dbg !389
  %58 = load i32, ptr %literal_pos_mask, align 4, !dbg !390
  %call103 = call i32 @process_bit0(ptr noundef %wr, ptr noundef %rc, ptr noundef %cst, ptr noundef %54, i32 noundef %55, ptr noundef %56, i32 noundef %57, i32 noundef %58) #15, !dbg !391
  %tobool104 = icmp ne i32 %call103, 0, !dbg !391
  br i1 %tobool104, label %if.then105, label %if.end106, !dbg !392

if.then105:                                       ; preds = %if.then102
  %59 = load ptr, ptr %error.addr, align 8, !dbg !393
  call void %59(ptr noundef @.str.2) #14, !dbg !393
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !395

if.end106:                                        ; preds = %if.then102
  br label %if.end117, !dbg !396

if.else107:                                       ; preds = %while.body91
  %60 = load ptr, ptr %p, align 8, !dbg !397
  %61 = load i32, ptr %pos_state, align 4, !dbg !400
  %62 = load ptr, ptr %prob, align 8, !dbg !401
  %call108 = call i32 @process_bit1(ptr noundef %wr, ptr noundef %rc, ptr noundef %cst, ptr noundef %60, i32 noundef %61, ptr noundef %62) #15, !dbg !402
  %tobool109 = icmp ne i32 %call108, 0, !dbg !402
  br i1 %tobool109, label %if.then110, label %if.end111, !dbg !403

if.then110:                                       ; preds = %if.else107
  %63 = load ptr, ptr %error.addr, align 8, !dbg !404
  call void %63(ptr noundef @.str.2) #14, !dbg !404
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !406

if.end111:                                        ; preds = %if.else107
  %rep0112 = getelementptr inbounds %struct.cstate, ptr %cst, i32 0, i32 1, !dbg !407
  %64 = load i32, ptr %rep0112, align 4, !dbg !407
  %cmp113 = icmp eq i32 %64, 0, !dbg !409
  br i1 %cmp113, label %if.then115, label %if.end116, !dbg !410

if.then115:                                       ; preds = %if.end111
  store i32 16, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !411

if.end116:                                        ; preds = %if.end111
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end106
  %buffer_size = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 4, !dbg !412
  %65 = load i64, ptr %buffer_size, align 8, !dbg !412
  %cmp118 = icmp sle i64 %65, 0, !dbg !414
  br i1 %cmp118, label %if.then120, label %if.end121, !dbg !415

if.then120:                                       ; preds = %if.end117
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !416

if.end121:                                        ; preds = %if.end117
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !417
  br label %cleanup, !dbg !417

cleanup:                                          ; preds = %if.then120, %if.then110, %if.then105, %if.end121, %if.then115
  call void @llvm.lifetime.end.p0(i64 8, ptr %prob) #12, !dbg !417
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos_state) #12, !dbg !417
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup147 [
    i32 0, label %cleanup.cont
    i32 16, label %while.end123
    i32 17, label %exit_3
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond86, !dbg !362, !llvm.loop !418

while.end123:                                     ; preds = %cleanup, %while.cond86
  %66 = load ptr, ptr %posp.addr, align 8, !dbg !419
  %tobool124 = icmp ne ptr %66, null, !dbg !419
  br i1 %tobool124, label %if.then125, label %if.end128, !dbg !421

if.then125:                                       ; preds = %while.end123
  %ptr126 = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 1, !dbg !422
  %67 = load ptr, ptr %ptr126, align 8, !dbg !422
  %buffer127 = getelementptr inbounds %struct.rc, ptr %rc, i32 0, i32 2, !dbg !423
  %68 = load ptr, ptr %buffer127, align 8, !dbg !423
  %sub.ptr.lhs.cast = ptrtoint ptr %67 to i64, !dbg !424
  %sub.ptr.rhs.cast = ptrtoint ptr %68 to i64, !dbg !424
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !424
  %69 = load ptr, ptr %posp.addr, align 8, !dbg !425
  store i64 %sub.ptr.sub, ptr %69, align 8, !dbg !426
  br label %if.end128, !dbg !427

if.end128:                                        ; preds = %if.then125, %while.end123
  %flush129 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 5, !dbg !428
  %70 = load ptr, ptr %flush129, align 8, !dbg !428
  %tobool130 = icmp ne ptr %70, null, !dbg !430
  br i1 %tobool130, label %lor.lhs.false, label %if.then138, !dbg !431

lor.lhs.false:                                    ; preds = %if.end128
  %flush131 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 5, !dbg !432
  %71 = load ptr, ptr %flush131, align 8, !dbg !432
  %buffer132 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 0, !dbg !433
  %72 = load ptr, ptr %buffer132, align 8, !dbg !433
  %buffer_pos133 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 2, !dbg !434
  %73 = load i64, ptr %buffer_pos133, align 8, !dbg !434
  %call134 = call i64 %71(ptr noundef %72, i64 noundef %73) #14, !dbg !435
  %buffer_pos135 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 2, !dbg !436
  %74 = load i64, ptr %buffer_pos135, align 8, !dbg !436
  %cmp136 = icmp eq i64 %call134, %74, !dbg !437
  br i1 %cmp136, label %if.then138, label %if.end139, !dbg !438

if.then138:                                       ; preds = %lor.lhs.false, %if.end128
  store i32 0, ptr %ret, align 4, !dbg !439
  br label %if.end139, !dbg !440

if.end139:                                        ; preds = %if.then138, %lor.lhs.false
  br label %exit_3, !dbg !436

exit_3:                                           ; preds = %if.end139, %cleanup
  call void @llvm.dbg.label(metadata !153), !dbg !441
  %75 = load ptr, ptr %p, align 8, !dbg !442
  call void @vfree(ptr noundef %75) #14, !dbg !442
  br label %exit_2, !dbg !442

exit_2:                                           ; preds = %exit_3, %if.then72
  call void @llvm.dbg.label(metadata !154), !dbg !443
  %76 = load ptr, ptr %output.addr, align 8, !dbg !444
  %tobool140 = icmp ne ptr %76, null, !dbg !444
  br i1 %tobool140, label %if.end143, label %if.then141, !dbg !446

if.then141:                                       ; preds = %exit_2
  %buffer142 = getelementptr inbounds %struct.writer, ptr %wr, i32 0, i32 0, !dbg !447
  %77 = load ptr, ptr %buffer142, align 8, !dbg !447
  call void @vfree(ptr noundef %77) #14, !dbg !447
  br label %if.end143, !dbg !447

if.end143:                                        ; preds = %if.then141, %exit_2
  br label %exit_1, !dbg !444

exit_1:                                           ; preds = %if.end143, %if.then64, %if.then16
  call void @llvm.dbg.label(metadata !155), !dbg !448
  %78 = load ptr, ptr %buf.addr, align 8, !dbg !449
  %tobool144 = icmp ne ptr %78, null, !dbg !449
  br i1 %tobool144, label %if.end146, label %if.then145, !dbg !451

if.then145:                                       ; preds = %exit_1
  %79 = load ptr, ptr %inbuf, align 8, !dbg !452
  call void @kfree(ptr noundef %79) #14, !dbg !452
  br label %if.end146, !dbg !452

if.end146:                                        ; preds = %if.then145, %exit_1
  br label %exit_0, !dbg !449

exit_0:                                           ; preds = %if.end146, %if.then3
  call void @llvm.dbg.label(metadata !156), !dbg !453
  %80 = load i32, ptr %ret, align 4, !dbg !454
  store i32 %80, ptr %retval, align 4, !dbg !455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup147, !dbg !455

cleanup147:                                       ; preds = %exit_0, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 8, ptr %inbuf) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 20, ptr %cst) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 56, ptr %wr) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 64, ptr %rc) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_probs) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 4, ptr %literal_pos_mask) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos_state_mask) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 4, ptr %lp) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 4, ptr %pb) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 4, ptr %lc) #12, !dbg !456
  call void @llvm.lifetime.end.p0(i64 13, ptr %header) #12, !dbg !456
  %81 = load i32, ptr %retval, align 4, !dbg !456
  ret i32 %81, !dbg !456
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !457 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !461, metadata !DIExpression()), !dbg !466
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !462, metadata !DIExpression()), !dbg !467
  %0 = load i64, ptr %size.addr, align 8, !dbg !468
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !469
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !470

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !471
  %tobool = icmp ne i64 %2, 0, !dbg !471
  br i1 %tobool, label %if.then, label %if.end7, !dbg !472

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %index, metadata !463, metadata !DIExpression()), !dbg !474
  %3 = load i64, ptr %size.addr, align 8, !dbg !475
  %cmp = icmp ugt i64 %3, 8192, !dbg !477
  br i1 %cmp, label %if.then1, label %if.end, !dbg !478

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !479
  %5 = load i32, ptr %flags.addr, align 4, !dbg !480
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #13, !dbg !481
  store ptr %call, ptr %retval, align 8, !dbg !482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !482

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !483
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !483
  store i32 %call2, ptr %index, align 4, !dbg !484
  %7 = load i32, ptr %flags.addr, align 4, !dbg !485
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !486
  %9 = ptrtoint ptr %8 to i64, !dbg !486
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !487
  %idxprom = zext i32 %call3 to i64, !dbg !488
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !488
  %10 = load i32, ptr %index, align 4, !dbg !489
  %idxprom4 = zext i32 %10 to i64, !dbg !488
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !488
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !488
  %12 = load i32, ptr %flags.addr, align 4, !dbg !490
  %13 = load i64, ptr %size.addr, align 8, !dbg !491
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !492
  store ptr %call6, ptr %retval, align 8, !dbg !493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !493

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !494
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !495
  %15 = load i32, ptr %flags.addr, align 4, !dbg !496
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #13, !dbg !497
  store ptr %call8, ptr %retval, align 8, !dbg !498
  br label %return, !dbg !498

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !499
  ret ptr %16, !dbg !499
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @rc_init(ptr noundef %rc, ptr noundef %fill, ptr noundef %buffer, i64 noundef %buffer_size) #0 section ".init.text" align 16 !dbg !500 {
entry:
  %rc.addr = alloca ptr, align 8
  %fill.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %buffer_size.addr = alloca i64, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !505, metadata !DIExpression()), !dbg !509
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !506, metadata !DIExpression()), !dbg !510
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !507, metadata !DIExpression()), !dbg !511
  store i64 %buffer_size, ptr %buffer_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer_size.addr, metadata !508, metadata !DIExpression()), !dbg !512
  %0 = load ptr, ptr %fill.addr, align 8, !dbg !513
  %tobool = icmp ne ptr %0, null, !dbg !513
  br i1 %tobool, label %if.then, label %if.else, !dbg !515

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fill.addr, align 8, !dbg !516
  %2 = load ptr, ptr %rc.addr, align 8, !dbg !517
  %fill1 = getelementptr inbounds %struct.rc, ptr %2, i32 0, i32 0, !dbg !518
  store ptr %1, ptr %fill1, align 8, !dbg !519
  br label %if.end, !dbg !517

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %rc.addr, align 8, !dbg !520
  %fill2 = getelementptr inbounds %struct.rc, ptr %3, i32 0, i32 0, !dbg !521
  store ptr @nofill, ptr %fill2, align 8, !dbg !522
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr %buffer.addr, align 8, !dbg !523
  %5 = load ptr, ptr %rc.addr, align 8, !dbg !524
  %buffer3 = getelementptr inbounds %struct.rc, ptr %5, i32 0, i32 2, !dbg !525
  store ptr %4, ptr %buffer3, align 8, !dbg !526
  %6 = load i64, ptr %buffer_size.addr, align 8, !dbg !527
  %7 = load ptr, ptr %rc.addr, align 8, !dbg !528
  %buffer_size4 = getelementptr inbounds %struct.rc, ptr %7, i32 0, i32 4, !dbg !529
  store i64 %6, ptr %buffer_size4, align 8, !dbg !530
  %8 = load ptr, ptr %rc.addr, align 8, !dbg !531
  %buffer5 = getelementptr inbounds %struct.rc, ptr %8, i32 0, i32 2, !dbg !532
  %9 = load ptr, ptr %buffer5, align 8, !dbg !532
  %10 = load ptr, ptr %rc.addr, align 8, !dbg !533
  %buffer_size6 = getelementptr inbounds %struct.rc, ptr %10, i32 0, i32 4, !dbg !534
  %11 = load i64, ptr %buffer_size6, align 8, !dbg !534
  %add.ptr = getelementptr i8, ptr %9, i64 %11, !dbg !535
  %12 = load ptr, ptr %rc.addr, align 8, !dbg !536
  %buffer_end = getelementptr inbounds %struct.rc, ptr %12, i32 0, i32 3, !dbg !537
  store ptr %add.ptr, ptr %buffer_end, align 8, !dbg !538
  %13 = load ptr, ptr %rc.addr, align 8, !dbg !539
  %buffer7 = getelementptr inbounds %struct.rc, ptr %13, i32 0, i32 2, !dbg !540
  %14 = load ptr, ptr %buffer7, align 8, !dbg !540
  %15 = load ptr, ptr %rc.addr, align 8, !dbg !541
  %ptr = getelementptr inbounds %struct.rc, ptr %15, i32 0, i32 1, !dbg !542
  store ptr %14, ptr %ptr, align 8, !dbg !543
  %16 = load ptr, ptr %rc.addr, align 8, !dbg !544
  %code = getelementptr inbounds %struct.rc, ptr %16, i32 0, i32 5, !dbg !545
  store i32 0, ptr %code, align 8, !dbg !546
  %17 = load ptr, ptr %rc.addr, align 8, !dbg !547
  %range = getelementptr inbounds %struct.rc, ptr %17, i32 0, i32 6, !dbg !548
  store i32 -1, ptr %range, align 4, !dbg !549
  ret void, !dbg !550
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @rc_read(ptr noundef %rc) #4 section ".init.text" align 16 !dbg !551 {
entry:
  %rc.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !555, metadata !DIExpression()), !dbg !556
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !557
  %fill = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 0, !dbg !558
  %1 = load ptr, ptr %fill, align 8, !dbg !558
  %2 = load ptr, ptr %rc.addr, align 8, !dbg !559
  %buffer = getelementptr inbounds %struct.rc, ptr %2, i32 0, i32 2, !dbg !560
  %3 = load ptr, ptr %buffer, align 8, !dbg !560
  %call = call i64 %1(ptr noundef %3, i64 noundef 65536) #14, !dbg !557
  %4 = load ptr, ptr %rc.addr, align 8, !dbg !561
  %buffer_size = getelementptr inbounds %struct.rc, ptr %4, i32 0, i32 4, !dbg !562
  store i64 %call, ptr %buffer_size, align 8, !dbg !563
  %5 = load ptr, ptr %rc.addr, align 8, !dbg !564
  %buffer_size1 = getelementptr inbounds %struct.rc, ptr %5, i32 0, i32 4, !dbg !566
  %6 = load i64, ptr %buffer_size1, align 8, !dbg !566
  %cmp = icmp sle i64 %6, 0, !dbg !567
  br i1 %cmp, label %if.then, label %if.end, !dbg !568

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %rc.addr, align 8, !dbg !569
  %error = getelementptr inbounds %struct.rc, ptr %7, i32 0, i32 8, !dbg !570
  %8 = load ptr, ptr %error, align 8, !dbg !570
  call void %8(ptr noundef @.str.4) #14, !dbg !569
  br label %if.end, !dbg !569

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %rc.addr, align 8, !dbg !571
  %buffer2 = getelementptr inbounds %struct.rc, ptr %9, i32 0, i32 2, !dbg !572
  %10 = load ptr, ptr %buffer2, align 8, !dbg !572
  %11 = load ptr, ptr %rc.addr, align 8, !dbg !573
  %ptr = getelementptr inbounds %struct.rc, ptr %11, i32 0, i32 1, !dbg !574
  store ptr %10, ptr %ptr, align 8, !dbg !575
  %12 = load ptr, ptr %rc.addr, align 8, !dbg !576
  %buffer3 = getelementptr inbounds %struct.rc, ptr %12, i32 0, i32 2, !dbg !577
  %13 = load ptr, ptr %buffer3, align 8, !dbg !577
  %14 = load ptr, ptr %rc.addr, align 8, !dbg !578
  %buffer_size4 = getelementptr inbounds %struct.rc, ptr %14, i32 0, i32 4, !dbg !579
  %15 = load i64, ptr %buffer_size4, align 8, !dbg !579
  %add.ptr = getelementptr i8, ptr %13, i64 %15, !dbg !580
  %16 = load ptr, ptr %rc.addr, align 8, !dbg !581
  %buffer_end = getelementptr inbounds %struct.rc, ptr %16, i32 0, i32 3, !dbg !582
  store ptr %add.ptr, ptr %buffer_end, align 8, !dbg !583
  ret void, !dbg !584
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @read_int(ptr noundef %ptr, i32 noundef %size) #4 section ".init.text" align 16 !dbg !585 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !590, metadata !DIExpression()), !dbg !594
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !591, metadata !DIExpression()), !dbg !595
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %i, metadata !592, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !593, metadata !DIExpression()), !dbg !599
  store i64 0, ptr %ret, align 8, !dbg !599
  store i32 0, ptr %i, align 4, !dbg !600
  br label %for.cond, !dbg !602

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !603
  %1 = load i32, ptr %size.addr, align 4, !dbg !605
  %cmp = icmp slt i32 %0, %1, !dbg !606
  br i1 %cmp, label %for.body, label %for.end, !dbg !607

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %ret, align 8, !dbg !608
  %shl = shl i64 %2, 8, !dbg !609
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !610
  %4 = load i32, ptr %size.addr, align 4, !dbg !611
  %5 = load i32, ptr %i, align 4, !dbg !612
  %sub = sub i32 %4, %5, !dbg !613
  %sub1 = sub i32 %sub, 1, !dbg !614
  %idxprom = sext i32 %sub1 to i64, !dbg !610
  %arrayidx = getelementptr i8, ptr %3, i64 %idxprom, !dbg !610
  %6 = load i8, ptr %arrayidx, align 1, !dbg !610
  %conv = zext i8 %6 to i64, !dbg !610
  %or = or i64 %shl, %conv, !dbg !615
  store i64 %or, ptr %ret, align 8, !dbg !616
  br label %for.inc, !dbg !617

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !618
  %inc = add i32 %7, 1, !dbg !618
  store i32 %inc, ptr %i, align 4, !dbg !618
  br label %for.cond, !dbg !619, !llvm.loop !620

for.end:                                          ; preds = %for.cond
  %8 = load i64, ptr %ret, align 8, !dbg !622
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !623
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !623
  ret i64 %8, !dbg !624
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !625 dso_local noalias ptr @vmalloc(i64 noundef) #5

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @rc_init_code(ptr noundef %rc) #0 section ".init.text" align 16 !dbg !629 {
entry:
  %rc.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !631, metadata !DIExpression()), !dbg !633
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !634
  call void @llvm.dbg.declare(metadata ptr %i, metadata !632, metadata !DIExpression()), !dbg !635
  store i32 0, ptr %i, align 4, !dbg !636
  br label %for.cond, !dbg !638

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !639
  %cmp = icmp slt i32 %0, 5, !dbg !641
  br i1 %cmp, label %for.body, label %for.end, !dbg !642

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %rc.addr, align 8, !dbg !643
  %ptr = getelementptr inbounds %struct.rc, ptr %1, i32 0, i32 1, !dbg !646
  %2 = load ptr, ptr %ptr, align 8, !dbg !646
  %3 = load ptr, ptr %rc.addr, align 8, !dbg !647
  %buffer_end = getelementptr inbounds %struct.rc, ptr %3, i32 0, i32 3, !dbg !648
  %4 = load ptr, ptr %buffer_end, align 8, !dbg !648
  %cmp1 = icmp uge ptr %2, %4, !dbg !649
  br i1 %cmp1, label %if.then, label %if.end, !dbg !650

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %rc.addr, align 8, !dbg !651
  call void @rc_read(ptr noundef %5) #15, !dbg !652
  br label %if.end, !dbg !652

if.end:                                           ; preds = %if.then, %for.body
  %6 = load ptr, ptr %rc.addr, align 8, !dbg !653
  %code = getelementptr inbounds %struct.rc, ptr %6, i32 0, i32 5, !dbg !654
  %7 = load i32, ptr %code, align 8, !dbg !654
  %shl = shl i32 %7, 8, !dbg !655
  %8 = load ptr, ptr %rc.addr, align 8, !dbg !656
  %ptr2 = getelementptr inbounds %struct.rc, ptr %8, i32 0, i32 1, !dbg !657
  %9 = load ptr, ptr %ptr2, align 8, !dbg !658
  %incdec.ptr = getelementptr i8, ptr %9, i32 1, !dbg !658
  store ptr %incdec.ptr, ptr %ptr2, align 8, !dbg !658
  %10 = load i8, ptr %9, align 1, !dbg !659
  %conv = zext i8 %10 to i32, !dbg !659
  %or = or i32 %shl, %conv, !dbg !660
  %11 = load ptr, ptr %rc.addr, align 8, !dbg !661
  %code3 = getelementptr inbounds %struct.rc, ptr %11, i32 0, i32 5, !dbg !662
  store i32 %or, ptr %code3, align 8, !dbg !663
  br label %for.inc, !dbg !664

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !dbg !665
  %inc = add i32 %12, 1, !dbg !665
  store i32 %inc, ptr %i, align 4, !dbg !665
  br label %for.cond, !dbg !666, !llvm.loop !667

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !669
  ret void, !dbg !669
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @get_pos(ptr noundef %wr) #0 section ".init.text" align 16 !dbg !670 {
entry:
  %wr.addr = alloca ptr, align 8
  store ptr %wr, ptr %wr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wr.addr, metadata !675, metadata !DIExpression()), !dbg !676
  %0 = load ptr, ptr %wr.addr, align 8, !dbg !677
  %global_pos = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 4, !dbg !678
  %1 = load i64, ptr %global_pos, align 8, !dbg !678
  %2 = load ptr, ptr %wr.addr, align 8, !dbg !679
  %buffer_pos = getelementptr inbounds %struct.writer, ptr %2, i32 0, i32 2, !dbg !680
  %3 = load i64, ptr %buffer_pos, align 8, !dbg !680
  %add = add i64 %1, %3, !dbg !681
  ret i64 %add, !dbg !682
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @rc_is_bit_0(ptr noundef %rc, ptr noundef %p) #0 section ".init.text" align 16 !dbg !683 {
entry:
  %rc.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %t = alloca i32, align 4
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !687, metadata !DIExpression()), !dbg !690
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !688, metadata !DIExpression()), !dbg !691
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #12, !dbg !692
  call void @llvm.dbg.declare(metadata ptr %t, metadata !689, metadata !DIExpression()), !dbg !693
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !694
  %1 = load ptr, ptr %p.addr, align 8, !dbg !695
  %call = call i32 @rc_is_bit_0_helper(ptr noundef %0, ptr noundef %1) #15, !dbg !696
  store i32 %call, ptr %t, align 4, !dbg !693
  %2 = load ptr, ptr %rc.addr, align 8, !dbg !697
  %code = getelementptr inbounds %struct.rc, ptr %2, i32 0, i32 5, !dbg !698
  %3 = load i32, ptr %code, align 8, !dbg !698
  %4 = load i32, ptr %t, align 4, !dbg !699
  %cmp = icmp ult i32 %3, %4, !dbg !700
  %conv = zext i1 %cmp to i32, !dbg !700
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #12, !dbg !701
  ret i32 %conv, !dbg !702
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @process_bit0(ptr noundef %wr, ptr noundef %rc, ptr noundef %cst, ptr noundef %p, i32 noundef %pos_state, ptr noundef %prob, i32 noundef %lc, i32 noundef %literal_pos_mask) #0 section ".init.text" align 16 !dbg !703 {
entry:
  %wr.addr = alloca ptr, align 8
  %rc.addr = alloca ptr, align 8
  %cst.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pos_state.addr = alloca i32, align 4
  %prob.addr = alloca ptr, align 8
  %lc.addr = alloca i32, align 4
  %literal_pos_mask.addr = alloca i32, align 4
  %mi = alloca i32, align 4
  %match_byte = alloca i32, align 4
  %bit = alloca i32, align 4
  %prob_lit = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %prob_lit27 = alloca ptr, align 8
  store ptr %wr, ptr %wr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wr.addr, metadata !708, metadata !DIExpression()), !dbg !725
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !709, metadata !DIExpression()), !dbg !726
  store ptr %cst, ptr %cst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cst.addr, metadata !710, metadata !DIExpression()), !dbg !727
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !711, metadata !DIExpression()), !dbg !728
  store i32 %pos_state, ptr %pos_state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos_state.addr, metadata !712, metadata !DIExpression()), !dbg !729
  store ptr %prob, ptr %prob.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prob.addr, metadata !713, metadata !DIExpression()), !dbg !730
  store i32 %lc, ptr %lc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lc.addr, metadata !714, metadata !DIExpression()), !dbg !731
  store i32 %literal_pos_mask, ptr %literal_pos_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %literal_pos_mask.addr, metadata !715, metadata !DIExpression()), !dbg !732
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #12, !dbg !733
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !716, metadata !DIExpression()), !dbg !734
  store i32 1, ptr %mi, align 4, !dbg !734
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !735
  %1 = load ptr, ptr %prob.addr, align 8, !dbg !736
  call void @rc_update_bit_0(ptr noundef %0, ptr noundef %1) #15, !dbg !737
  %2 = load ptr, ptr %p.addr, align 8, !dbg !738
  %add.ptr = getelementptr i16, ptr %2, i64 1846, !dbg !739
  %3 = load ptr, ptr %wr.addr, align 8, !dbg !740
  %call = call i64 @get_pos(ptr noundef %3) #15, !dbg !741
  %4 = load i32, ptr %literal_pos_mask.addr, align 4, !dbg !742
  %conv = zext i32 %4 to i64, !dbg !742
  %and = and i64 %call, %conv, !dbg !743
  %5 = load i32, ptr %lc.addr, align 4, !dbg !744
  %sh_prom = zext i32 %5 to i64, !dbg !745
  %shl = shl i64 %and, %sh_prom, !dbg !745
  %6 = load ptr, ptr %wr.addr, align 8, !dbg !746
  %previous_byte = getelementptr inbounds %struct.writer, ptr %6, i32 0, i32 1, !dbg !747
  %7 = load i8, ptr %previous_byte, align 8, !dbg !747
  %conv1 = zext i8 %7 to i32, !dbg !746
  %8 = load i32, ptr %lc.addr, align 4, !dbg !748
  %sub = sub i32 8, %8, !dbg !749
  %shr = ashr i32 %conv1, %sub, !dbg !750
  %conv2 = sext i32 %shr to i64, !dbg !751
  %add = add i64 %shl, %conv2, !dbg !752
  %mul = mul i64 768, %add, !dbg !753
  %add.ptr3 = getelementptr i16, ptr %add.ptr, i64 %mul, !dbg !754
  store ptr %add.ptr3, ptr %prob.addr, align 8, !dbg !755
  %9 = load ptr, ptr %cst.addr, align 8, !dbg !756
  %state = getelementptr inbounds %struct.cstate, ptr %9, i32 0, i32 0, !dbg !757
  %10 = load i32, ptr %state, align 4, !dbg !757
  %cmp = icmp sge i32 %10, 7, !dbg !758
  br i1 %cmp, label %if.then, label %if.end24, !dbg !759

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %match_byte) #12, !dbg !760
  call void @llvm.dbg.declare(metadata ptr %match_byte, metadata !717, metadata !DIExpression()), !dbg !761
  %11 = load ptr, ptr %wr.addr, align 8, !dbg !762
  %12 = load ptr, ptr %cst.addr, align 8, !dbg !763
  %rep0 = getelementptr inbounds %struct.cstate, ptr %12, i32 0, i32 1, !dbg !764
  %13 = load i32, ptr %rep0, align 4, !dbg !764
  %call5 = call zeroext i8 @peek_old_byte(ptr noundef %11, i32 noundef %13) #15, !dbg !765
  %conv6 = zext i8 %call5 to i32, !dbg !765
  store i32 %conv6, ptr %match_byte, align 4, !dbg !761
  br label %do.body, !dbg !766

do.body:                                          ; preds = %do.cond, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #12, !dbg !767
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !720, metadata !DIExpression()), !dbg !768
  call void @llvm.lifetime.start.p0(i64 8, ptr %prob_lit) #12, !dbg !769
  call void @llvm.dbg.declare(metadata ptr %prob_lit, metadata !722, metadata !DIExpression()), !dbg !770
  %14 = load i32, ptr %match_byte, align 4, !dbg !771
  %shl7 = shl i32 %14, 1, !dbg !771
  store i32 %shl7, ptr %match_byte, align 4, !dbg !771
  %15 = load i32, ptr %match_byte, align 4, !dbg !772
  %and8 = and i32 %15, 256, !dbg !773
  store i32 %and8, ptr %bit, align 4, !dbg !774
  %16 = load ptr, ptr %prob.addr, align 8, !dbg !775
  %add.ptr9 = getelementptr i16, ptr %16, i64 256, !dbg !776
  %17 = load i32, ptr %bit, align 4, !dbg !777
  %idx.ext = sext i32 %17 to i64, !dbg !778
  %add.ptr10 = getelementptr i16, ptr %add.ptr9, i64 %idx.ext, !dbg !778
  %18 = load i32, ptr %mi, align 4, !dbg !779
  %idx.ext11 = sext i32 %18 to i64, !dbg !780
  %add.ptr12 = getelementptr i16, ptr %add.ptr10, i64 %idx.ext11, !dbg !780
  store ptr %add.ptr12, ptr %prob_lit, align 8, !dbg !781
  %19 = load ptr, ptr %rc.addr, align 8, !dbg !782
  %20 = load ptr, ptr %prob_lit, align 8, !dbg !784
  %call13 = call i32 @rc_get_bit(ptr noundef %19, ptr noundef %20, ptr noundef %mi) #15, !dbg !785
  %tobool = icmp ne i32 %call13, 0, !dbg !785
  br i1 %tobool, label %if.then14, label %if.else, !dbg !786

if.then14:                                        ; preds = %do.body
  %21 = load i32, ptr %bit, align 4, !dbg !787
  %tobool15 = icmp ne i32 %21, 0, !dbg !787
  br i1 %tobool15, label %if.end, label %if.then16, !dbg !790

if.then16:                                        ; preds = %if.then14
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !791

if.end:                                           ; preds = %if.then14
  br label %if.end20, !dbg !792

if.else:                                          ; preds = %do.body
  %22 = load i32, ptr %bit, align 4, !dbg !793
  %tobool17 = icmp ne i32 %22, 0, !dbg !793
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !796

if.then18:                                        ; preds = %if.else
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !797

if.end19:                                         ; preds = %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !798
  br label %cleanup, !dbg !798

cleanup:                                          ; preds = %if.end20, %if.then18, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %prob_lit) #12, !dbg !798
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #12, !dbg !798
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %do.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !799

do.cond:                                          ; preds = %cleanup.cont
  %23 = load i32, ptr %mi, align 4, !dbg !800
  %cmp22 = icmp slt i32 %23, 256, !dbg !801
  br i1 %cmp22, label %do.body, label %do.end, !dbg !799, !llvm.loop !802

do.end:                                           ; preds = %do.cond, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %match_byte) #12, !dbg !804
  br label %if.end24, !dbg !805

if.end24:                                         ; preds = %do.end, %entry
  br label %while.cond, !dbg !806

while.cond:                                       ; preds = %while.body, %if.end24
  %24 = load i32, ptr %mi, align 4, !dbg !807
  %cmp25 = icmp slt i32 %24, 256, !dbg !808
  br i1 %cmp25, label %while.body, label %while.end, !dbg !806

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %prob_lit27) #12, !dbg !809
  call void @llvm.dbg.declare(metadata ptr %prob_lit27, metadata !723, metadata !DIExpression()), !dbg !810
  %25 = load ptr, ptr %prob.addr, align 8, !dbg !811
  %26 = load i32, ptr %mi, align 4, !dbg !812
  %idx.ext28 = sext i32 %26 to i64, !dbg !813
  %add.ptr29 = getelementptr i16, ptr %25, i64 %idx.ext28, !dbg !813
  store ptr %add.ptr29, ptr %prob_lit27, align 8, !dbg !810
  %27 = load ptr, ptr %rc.addr, align 8, !dbg !814
  %28 = load ptr, ptr %prob_lit27, align 8, !dbg !815
  %call30 = call i32 @rc_get_bit(ptr noundef %27, ptr noundef %28, ptr noundef %mi) #15, !dbg !816
  call void @llvm.lifetime.end.p0(i64 8, ptr %prob_lit27) #12, !dbg !817
  br label %while.cond, !dbg !806, !llvm.loop !818

while.end:                                        ; preds = %while.cond
  %29 = load ptr, ptr %cst.addr, align 8, !dbg !819
  %state31 = getelementptr inbounds %struct.cstate, ptr %29, i32 0, i32 0, !dbg !821
  %30 = load i32, ptr %state31, align 4, !dbg !821
  %cmp32 = icmp slt i32 %30, 4, !dbg !822
  br i1 %cmp32, label %if.then34, label %if.else36, !dbg !823

if.then34:                                        ; preds = %while.end
  %31 = load ptr, ptr %cst.addr, align 8, !dbg !824
  %state35 = getelementptr inbounds %struct.cstate, ptr %31, i32 0, i32 0, !dbg !825
  store i32 0, ptr %state35, align 4, !dbg !826
  br label %if.end47, !dbg !824

if.else36:                                        ; preds = %while.end
  %32 = load ptr, ptr %cst.addr, align 8, !dbg !827
  %state37 = getelementptr inbounds %struct.cstate, ptr %32, i32 0, i32 0, !dbg !829
  %33 = load i32, ptr %state37, align 4, !dbg !829
  %cmp38 = icmp slt i32 %33, 10, !dbg !830
  br i1 %cmp38, label %if.then40, label %if.else43, !dbg !831

if.then40:                                        ; preds = %if.else36
  %34 = load ptr, ptr %cst.addr, align 8, !dbg !832
  %state41 = getelementptr inbounds %struct.cstate, ptr %34, i32 0, i32 0, !dbg !833
  %35 = load i32, ptr %state41, align 4, !dbg !834
  %sub42 = sub i32 %35, 3, !dbg !834
  store i32 %sub42, ptr %state41, align 4, !dbg !834
  br label %if.end46, !dbg !832

if.else43:                                        ; preds = %if.else36
  %36 = load ptr, ptr %cst.addr, align 8, !dbg !835
  %state44 = getelementptr inbounds %struct.cstate, ptr %36, i32 0, i32 0, !dbg !836
  %37 = load i32, ptr %state44, align 4, !dbg !837
  %sub45 = sub i32 %37, 6, !dbg !837
  store i32 %sub45, ptr %state44, align 4, !dbg !837
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then40
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then34
  %38 = load ptr, ptr %wr.addr, align 8, !dbg !838
  %39 = load i32, ptr %mi, align 4, !dbg !839
  %conv48 = trunc i32 %39 to i8, !dbg !839
  %call49 = call i32 @write_byte(ptr noundef %38, i8 noundef zeroext %conv48) #15, !dbg !840
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #12, !dbg !841
  ret i32 %call49, !dbg !842

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @process_bit1(ptr noundef %wr, ptr noundef %rc, ptr noundef %cst, ptr noundef %p, i32 noundef %pos_state, ptr noundef %prob) #0 section ".init.text" align 16 !dbg !843 {
entry:
  %retval = alloca i32, align 4
  %wr.addr = alloca ptr, align 8
  %rc.addr = alloca ptr, align 8
  %cst.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pos_state.addr = alloca i32, align 4
  %prob.addr = alloca ptr, align 8
  %offset = alloca i32, align 4
  %prob_len = alloca ptr, align 8
  %num_bits = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %distance = alloca i32, align 4
  %pos_slot = alloca i32, align 4
  %i = alloca i32, align 4
  %mi = alloca i32, align 4
  store ptr %wr, ptr %wr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wr.addr, metadata !847, metadata !DIExpression()), !dbg !869
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !848, metadata !DIExpression()), !dbg !870
  store ptr %cst, ptr %cst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cst.addr, metadata !849, metadata !DIExpression()), !dbg !871
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !850, metadata !DIExpression()), !dbg !872
  store i32 %pos_state, ptr %pos_state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos_state.addr, metadata !851, metadata !DIExpression()), !dbg !873
  store ptr %prob, ptr %prob.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prob.addr, metadata !852, metadata !DIExpression()), !dbg !874
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #12, !dbg !875
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !853, metadata !DIExpression()), !dbg !876
  call void @llvm.lifetime.start.p0(i64 8, ptr %prob_len) #12, !dbg !877
  call void @llvm.dbg.declare(metadata ptr %prob_len, metadata !854, metadata !DIExpression()), !dbg !878
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_bits) #12, !dbg !879
  call void @llvm.dbg.declare(metadata ptr %num_bits, metadata !855, metadata !DIExpression()), !dbg !880
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #12, !dbg !881
  call void @llvm.dbg.declare(metadata ptr %len, metadata !856, metadata !DIExpression()), !dbg !882
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !883
  %1 = load ptr, ptr %prob.addr, align 8, !dbg !884
  call void @rc_update_bit_1(ptr noundef %0, ptr noundef %1) #15, !dbg !885
  %2 = load ptr, ptr %p.addr, align 8, !dbg !886
  %add.ptr = getelementptr i16, ptr %2, i64 192, !dbg !887
  %3 = load ptr, ptr %cst.addr, align 8, !dbg !888
  %state = getelementptr inbounds %struct.cstate, ptr %3, i32 0, i32 0, !dbg !889
  %4 = load i32, ptr %state, align 4, !dbg !889
  %idx.ext = sext i32 %4 to i64, !dbg !890
  %add.ptr1 = getelementptr i16, ptr %add.ptr, i64 %idx.ext, !dbg !890
  store ptr %add.ptr1, ptr %prob.addr, align 8, !dbg !891
  %5 = load ptr, ptr %rc.addr, align 8, !dbg !892
  %6 = load ptr, ptr %prob.addr, align 8, !dbg !893
  %call = call i32 @rc_is_bit_0(ptr noundef %5, ptr noundef %6) #15, !dbg !894
  %tobool = icmp ne i32 %call, 0, !dbg !894
  br i1 %tobool, label %if.then, label %if.else, !dbg !895

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %rc.addr, align 8, !dbg !896
  %8 = load ptr, ptr %prob.addr, align 8, !dbg !898
  call void @rc_update_bit_0(ptr noundef %7, ptr noundef %8) #15, !dbg !899
  %9 = load ptr, ptr %cst.addr, align 8, !dbg !900
  %rep2 = getelementptr inbounds %struct.cstate, ptr %9, i32 0, i32 3, !dbg !901
  %10 = load i32, ptr %rep2, align 4, !dbg !901
  %11 = load ptr, ptr %cst.addr, align 8, !dbg !902
  %rep3 = getelementptr inbounds %struct.cstate, ptr %11, i32 0, i32 4, !dbg !903
  store i32 %10, ptr %rep3, align 4, !dbg !904
  %12 = load ptr, ptr %cst.addr, align 8, !dbg !905
  %rep1 = getelementptr inbounds %struct.cstate, ptr %12, i32 0, i32 2, !dbg !906
  %13 = load i32, ptr %rep1, align 4, !dbg !906
  %14 = load ptr, ptr %cst.addr, align 8, !dbg !907
  %rep22 = getelementptr inbounds %struct.cstate, ptr %14, i32 0, i32 3, !dbg !908
  store i32 %13, ptr %rep22, align 4, !dbg !909
  %15 = load ptr, ptr %cst.addr, align 8, !dbg !910
  %rep0 = getelementptr inbounds %struct.cstate, ptr %15, i32 0, i32 1, !dbg !911
  %16 = load i32, ptr %rep0, align 4, !dbg !911
  %17 = load ptr, ptr %cst.addr, align 8, !dbg !912
  %rep13 = getelementptr inbounds %struct.cstate, ptr %17, i32 0, i32 2, !dbg !913
  store i32 %16, ptr %rep13, align 4, !dbg !914
  %18 = load ptr, ptr %cst.addr, align 8, !dbg !915
  %state4 = getelementptr inbounds %struct.cstate, ptr %18, i32 0, i32 0, !dbg !916
  %19 = load i32, ptr %state4, align 4, !dbg !916
  %cmp = icmp slt i32 %19, 7, !dbg !917
  %20 = zext i1 %cmp to i64, !dbg !915
  %cond = select i1 %cmp, i32 0, i32 3, !dbg !915
  %21 = load ptr, ptr %cst.addr, align 8, !dbg !918
  %state5 = getelementptr inbounds %struct.cstate, ptr %21, i32 0, i32 0, !dbg !919
  store i32 %cond, ptr %state5, align 4, !dbg !920
  %22 = load ptr, ptr %p.addr, align 8, !dbg !921
  %add.ptr6 = getelementptr i16, ptr %22, i64 818, !dbg !922
  store ptr %add.ptr6, ptr %prob.addr, align 8, !dbg !923
  br label %if.end65, !dbg !924

if.else:                                          ; preds = %entry
  %23 = load ptr, ptr %rc.addr, align 8, !dbg !925
  %24 = load ptr, ptr %prob.addr, align 8, !dbg !926
  call void @rc_update_bit_1(ptr noundef %23, ptr noundef %24) #15, !dbg !927
  %25 = load ptr, ptr %p.addr, align 8, !dbg !928
  %add.ptr7 = getelementptr i16, ptr %25, i64 204, !dbg !929
  %26 = load ptr, ptr %cst.addr, align 8, !dbg !930
  %state8 = getelementptr inbounds %struct.cstate, ptr %26, i32 0, i32 0, !dbg !931
  %27 = load i32, ptr %state8, align 4, !dbg !931
  %idx.ext9 = sext i32 %27 to i64, !dbg !932
  %add.ptr10 = getelementptr i16, ptr %add.ptr7, i64 %idx.ext9, !dbg !932
  store ptr %add.ptr10, ptr %prob.addr, align 8, !dbg !933
  %28 = load ptr, ptr %rc.addr, align 8, !dbg !934
  %29 = load ptr, ptr %prob.addr, align 8, !dbg !935
  %call11 = call i32 @rc_is_bit_0(ptr noundef %28, ptr noundef %29) #15, !dbg !936
  %tobool12 = icmp ne i32 %call11, 0, !dbg !936
  br i1 %tobool12, label %if.then13, label %if.else30, !dbg !937

if.then13:                                        ; preds = %if.else
  %30 = load ptr, ptr %rc.addr, align 8, !dbg !938
  %31 = load ptr, ptr %prob.addr, align 8, !dbg !940
  call void @rc_update_bit_0(ptr noundef %30, ptr noundef %31) #15, !dbg !941
  %32 = load ptr, ptr %p.addr, align 8, !dbg !942
  %add.ptr14 = getelementptr i16, ptr %32, i64 240, !dbg !943
  %33 = load ptr, ptr %cst.addr, align 8, !dbg !944
  %state15 = getelementptr inbounds %struct.cstate, ptr %33, i32 0, i32 0, !dbg !945
  %34 = load i32, ptr %state15, align 4, !dbg !945
  %shl = shl i32 %34, 4, !dbg !946
  %idx.ext16 = sext i32 %shl to i64, !dbg !947
  %add.ptr17 = getelementptr i16, ptr %add.ptr14, i64 %idx.ext16, !dbg !947
  %35 = load i32, ptr %pos_state.addr, align 4, !dbg !948
  %idx.ext18 = sext i32 %35 to i64, !dbg !949
  %add.ptr19 = getelementptr i16, ptr %add.ptr17, i64 %idx.ext18, !dbg !949
  store ptr %add.ptr19, ptr %prob.addr, align 8, !dbg !950
  %36 = load ptr, ptr %rc.addr, align 8, !dbg !951
  %37 = load ptr, ptr %prob.addr, align 8, !dbg !953
  %call20 = call i32 @rc_is_bit_0(ptr noundef %36, ptr noundef %37) #15, !dbg !954
  %tobool21 = icmp ne i32 %call20, 0, !dbg !954
  br i1 %tobool21, label %if.then22, label %if.else29, !dbg !955

if.then22:                                        ; preds = %if.then13
  %38 = load ptr, ptr %rc.addr, align 8, !dbg !956
  %39 = load ptr, ptr %prob.addr, align 8, !dbg !958
  call void @rc_update_bit_0(ptr noundef %38, ptr noundef %39) #15, !dbg !959
  %40 = load ptr, ptr %cst.addr, align 8, !dbg !960
  %state23 = getelementptr inbounds %struct.cstate, ptr %40, i32 0, i32 0, !dbg !961
  %41 = load i32, ptr %state23, align 4, !dbg !961
  %cmp24 = icmp slt i32 %41, 7, !dbg !962
  %42 = zext i1 %cmp24 to i64, !dbg !960
  %cond25 = select i1 %cmp24, i32 9, i32 11, !dbg !960
  %43 = load ptr, ptr %cst.addr, align 8, !dbg !963
  %state26 = getelementptr inbounds %struct.cstate, ptr %43, i32 0, i32 0, !dbg !964
  store i32 %cond25, ptr %state26, align 4, !dbg !965
  %44 = load ptr, ptr %wr.addr, align 8, !dbg !966
  %45 = load ptr, ptr %cst.addr, align 8, !dbg !967
  %rep027 = getelementptr inbounds %struct.cstate, ptr %45, i32 0, i32 1, !dbg !968
  %46 = load i32, ptr %rep027, align 4, !dbg !968
  %call28 = call i32 @copy_byte(ptr noundef %44, i32 noundef %46) #15, !dbg !969
  store i32 %call28, ptr %retval, align 4, !dbg !970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup157, !dbg !970

if.else29:                                        ; preds = %if.then13
  %47 = load ptr, ptr %rc.addr, align 8, !dbg !971
  %48 = load ptr, ptr %prob.addr, align 8, !dbg !973
  call void @rc_update_bit_1(ptr noundef %47, ptr noundef %48) #15, !dbg !974
  br label %if.end

if.end:                                           ; preds = %if.else29
  br label %if.end59, !dbg !975

if.else30:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %distance) #12, !dbg !976
  call void @llvm.dbg.declare(metadata ptr %distance, metadata !857, metadata !DIExpression()), !dbg !977
  %49 = load ptr, ptr %rc.addr, align 8, !dbg !978
  %50 = load ptr, ptr %prob.addr, align 8, !dbg !979
  call void @rc_update_bit_1(ptr noundef %49, ptr noundef %50) #15, !dbg !980
  %51 = load ptr, ptr %p.addr, align 8, !dbg !981
  %add.ptr31 = getelementptr i16, ptr %51, i64 216, !dbg !982
  %52 = load ptr, ptr %cst.addr, align 8, !dbg !983
  %state32 = getelementptr inbounds %struct.cstate, ptr %52, i32 0, i32 0, !dbg !984
  %53 = load i32, ptr %state32, align 4, !dbg !984
  %idx.ext33 = sext i32 %53 to i64, !dbg !985
  %add.ptr34 = getelementptr i16, ptr %add.ptr31, i64 %idx.ext33, !dbg !985
  store ptr %add.ptr34, ptr %prob.addr, align 8, !dbg !986
  %54 = load ptr, ptr %rc.addr, align 8, !dbg !987
  %55 = load ptr, ptr %prob.addr, align 8, !dbg !989
  %call35 = call i32 @rc_is_bit_0(ptr noundef %54, ptr noundef %55) #15, !dbg !990
  %tobool36 = icmp ne i32 %call35, 0, !dbg !990
  br i1 %tobool36, label %if.then37, label %if.else39, !dbg !991

if.then37:                                        ; preds = %if.else30
  %56 = load ptr, ptr %rc.addr, align 8, !dbg !992
  %57 = load ptr, ptr %prob.addr, align 8, !dbg !994
  call void @rc_update_bit_0(ptr noundef %56, ptr noundef %57) #15, !dbg !995
  %58 = load ptr, ptr %cst.addr, align 8, !dbg !996
  %rep138 = getelementptr inbounds %struct.cstate, ptr %58, i32 0, i32 2, !dbg !997
  %59 = load i32, ptr %rep138, align 4, !dbg !997
  store i32 %59, ptr %distance, align 4, !dbg !998
  br label %if.end55, !dbg !999

if.else39:                                        ; preds = %if.else30
  %60 = load ptr, ptr %rc.addr, align 8, !dbg !1000
  %61 = load ptr, ptr %prob.addr, align 8, !dbg !1002
  call void @rc_update_bit_1(ptr noundef %60, ptr noundef %61) #15, !dbg !1003
  %62 = load ptr, ptr %p.addr, align 8, !dbg !1004
  %add.ptr40 = getelementptr i16, ptr %62, i64 228, !dbg !1005
  %63 = load ptr, ptr %cst.addr, align 8, !dbg !1006
  %state41 = getelementptr inbounds %struct.cstate, ptr %63, i32 0, i32 0, !dbg !1007
  %64 = load i32, ptr %state41, align 4, !dbg !1007
  %idx.ext42 = sext i32 %64 to i64, !dbg !1008
  %add.ptr43 = getelementptr i16, ptr %add.ptr40, i64 %idx.ext42, !dbg !1008
  store ptr %add.ptr43, ptr %prob.addr, align 8, !dbg !1009
  %65 = load ptr, ptr %rc.addr, align 8, !dbg !1010
  %66 = load ptr, ptr %prob.addr, align 8, !dbg !1012
  %call44 = call i32 @rc_is_bit_0(ptr noundef %65, ptr noundef %66) #15, !dbg !1013
  %tobool45 = icmp ne i32 %call44, 0, !dbg !1013
  br i1 %tobool45, label %if.then46, label %if.else48, !dbg !1014

if.then46:                                        ; preds = %if.else39
  %67 = load ptr, ptr %rc.addr, align 8, !dbg !1015
  %68 = load ptr, ptr %prob.addr, align 8, !dbg !1017
  call void @rc_update_bit_0(ptr noundef %67, ptr noundef %68) #15, !dbg !1018
  %69 = load ptr, ptr %cst.addr, align 8, !dbg !1019
  %rep247 = getelementptr inbounds %struct.cstate, ptr %69, i32 0, i32 3, !dbg !1020
  %70 = load i32, ptr %rep247, align 4, !dbg !1020
  store i32 %70, ptr %distance, align 4, !dbg !1021
  br label %if.end52, !dbg !1022

if.else48:                                        ; preds = %if.else39
  %71 = load ptr, ptr %rc.addr, align 8, !dbg !1023
  %72 = load ptr, ptr %prob.addr, align 8, !dbg !1025
  call void @rc_update_bit_1(ptr noundef %71, ptr noundef %72) #15, !dbg !1026
  %73 = load ptr, ptr %cst.addr, align 8, !dbg !1027
  %rep349 = getelementptr inbounds %struct.cstate, ptr %73, i32 0, i32 4, !dbg !1028
  %74 = load i32, ptr %rep349, align 4, !dbg !1028
  store i32 %74, ptr %distance, align 4, !dbg !1029
  %75 = load ptr, ptr %cst.addr, align 8, !dbg !1030
  %rep250 = getelementptr inbounds %struct.cstate, ptr %75, i32 0, i32 3, !dbg !1031
  %76 = load i32, ptr %rep250, align 4, !dbg !1031
  %77 = load ptr, ptr %cst.addr, align 8, !dbg !1032
  %rep351 = getelementptr inbounds %struct.cstate, ptr %77, i32 0, i32 4, !dbg !1033
  store i32 %76, ptr %rep351, align 4, !dbg !1034
  br label %if.end52

if.end52:                                         ; preds = %if.else48, %if.then46
  %78 = load ptr, ptr %cst.addr, align 8, !dbg !1035
  %rep153 = getelementptr inbounds %struct.cstate, ptr %78, i32 0, i32 2, !dbg !1036
  %79 = load i32, ptr %rep153, align 4, !dbg !1036
  %80 = load ptr, ptr %cst.addr, align 8, !dbg !1037
  %rep254 = getelementptr inbounds %struct.cstate, ptr %80, i32 0, i32 3, !dbg !1038
  store i32 %79, ptr %rep254, align 4, !dbg !1039
  br label %if.end55

if.end55:                                         ; preds = %if.end52, %if.then37
  %81 = load ptr, ptr %cst.addr, align 8, !dbg !1040
  %rep056 = getelementptr inbounds %struct.cstate, ptr %81, i32 0, i32 1, !dbg !1041
  %82 = load i32, ptr %rep056, align 4, !dbg !1041
  %83 = load ptr, ptr %cst.addr, align 8, !dbg !1042
  %rep157 = getelementptr inbounds %struct.cstate, ptr %83, i32 0, i32 2, !dbg !1043
  store i32 %82, ptr %rep157, align 4, !dbg !1044
  %84 = load i32, ptr %distance, align 4, !dbg !1045
  %85 = load ptr, ptr %cst.addr, align 8, !dbg !1046
  %rep058 = getelementptr inbounds %struct.cstate, ptr %85, i32 0, i32 1, !dbg !1047
  store i32 %84, ptr %rep058, align 4, !dbg !1048
  call void @llvm.lifetime.end.p0(i64 4, ptr %distance) #12, !dbg !1049
  br label %if.end59

if.end59:                                         ; preds = %if.end55, %if.end
  %86 = load ptr, ptr %cst.addr, align 8, !dbg !1050
  %state60 = getelementptr inbounds %struct.cstate, ptr %86, i32 0, i32 0, !dbg !1051
  %87 = load i32, ptr %state60, align 4, !dbg !1051
  %cmp61 = icmp slt i32 %87, 7, !dbg !1052
  %88 = zext i1 %cmp61 to i64, !dbg !1050
  %cond62 = select i1 %cmp61, i32 8, i32 11, !dbg !1050
  %89 = load ptr, ptr %cst.addr, align 8, !dbg !1053
  %state63 = getelementptr inbounds %struct.cstate, ptr %89, i32 0, i32 0, !dbg !1054
  store i32 %cond62, ptr %state63, align 4, !dbg !1055
  %90 = load ptr, ptr %p.addr, align 8, !dbg !1056
  %add.ptr64 = getelementptr i16, ptr %90, i64 1332, !dbg !1057
  store ptr %add.ptr64, ptr %prob.addr, align 8, !dbg !1058
  br label %if.end65

if.end65:                                         ; preds = %if.end59, %if.then
  %91 = load ptr, ptr %prob.addr, align 8, !dbg !1059
  %add.ptr66 = getelementptr i16, ptr %91, i64 0, !dbg !1060
  store ptr %add.ptr66, ptr %prob_len, align 8, !dbg !1061
  %92 = load ptr, ptr %rc.addr, align 8, !dbg !1062
  %93 = load ptr, ptr %prob_len, align 8, !dbg !1064
  %call67 = call i32 @rc_is_bit_0(ptr noundef %92, ptr noundef %93) #15, !dbg !1065
  %tobool68 = icmp ne i32 %call67, 0, !dbg !1065
  br i1 %tobool68, label %if.then69, label %if.else74, !dbg !1066

if.then69:                                        ; preds = %if.end65
  %94 = load ptr, ptr %rc.addr, align 8, !dbg !1067
  %95 = load ptr, ptr %prob_len, align 8, !dbg !1069
  call void @rc_update_bit_0(ptr noundef %94, ptr noundef %95) #15, !dbg !1070
  %96 = load ptr, ptr %prob.addr, align 8, !dbg !1071
  %add.ptr70 = getelementptr i16, ptr %96, i64 2, !dbg !1072
  %97 = load i32, ptr %pos_state.addr, align 4, !dbg !1073
  %shl71 = shl i32 %97, 3, !dbg !1074
  %idx.ext72 = sext i32 %shl71 to i64, !dbg !1075
  %add.ptr73 = getelementptr i16, ptr %add.ptr70, i64 %idx.ext72, !dbg !1075
  store ptr %add.ptr73, ptr %prob_len, align 8, !dbg !1076
  store i32 0, ptr %offset, align 4, !dbg !1077
  store i32 3, ptr %num_bits, align 4, !dbg !1078
  br label %if.end86, !dbg !1079

if.else74:                                        ; preds = %if.end65
  %98 = load ptr, ptr %rc.addr, align 8, !dbg !1080
  %99 = load ptr, ptr %prob_len, align 8, !dbg !1082
  call void @rc_update_bit_1(ptr noundef %98, ptr noundef %99) #15, !dbg !1083
  %100 = load ptr, ptr %prob.addr, align 8, !dbg !1084
  %add.ptr75 = getelementptr i16, ptr %100, i64 1, !dbg !1085
  store ptr %add.ptr75, ptr %prob_len, align 8, !dbg !1086
  %101 = load ptr, ptr %rc.addr, align 8, !dbg !1087
  %102 = load ptr, ptr %prob_len, align 8, !dbg !1089
  %call76 = call i32 @rc_is_bit_0(ptr noundef %101, ptr noundef %102) #15, !dbg !1090
  %tobool77 = icmp ne i32 %call76, 0, !dbg !1090
  br i1 %tobool77, label %if.then78, label %if.else83, !dbg !1091

if.then78:                                        ; preds = %if.else74
  %103 = load ptr, ptr %rc.addr, align 8, !dbg !1092
  %104 = load ptr, ptr %prob_len, align 8, !dbg !1094
  call void @rc_update_bit_0(ptr noundef %103, ptr noundef %104) #15, !dbg !1095
  %105 = load ptr, ptr %prob.addr, align 8, !dbg !1096
  %add.ptr79 = getelementptr i16, ptr %105, i64 130, !dbg !1097
  %106 = load i32, ptr %pos_state.addr, align 4, !dbg !1098
  %shl80 = shl i32 %106, 3, !dbg !1099
  %idx.ext81 = sext i32 %shl80 to i64, !dbg !1100
  %add.ptr82 = getelementptr i16, ptr %add.ptr79, i64 %idx.ext81, !dbg !1100
  store ptr %add.ptr82, ptr %prob_len, align 8, !dbg !1101
  store i32 8, ptr %offset, align 4, !dbg !1102
  store i32 3, ptr %num_bits, align 4, !dbg !1103
  br label %if.end85, !dbg !1104

if.else83:                                        ; preds = %if.else74
  %107 = load ptr, ptr %rc.addr, align 8, !dbg !1105
  %108 = load ptr, ptr %prob_len, align 8, !dbg !1107
  call void @rc_update_bit_1(ptr noundef %107, ptr noundef %108) #15, !dbg !1108
  %109 = load ptr, ptr %prob.addr, align 8, !dbg !1109
  %add.ptr84 = getelementptr i16, ptr %109, i64 258, !dbg !1110
  store ptr %add.ptr84, ptr %prob_len, align 8, !dbg !1111
  store i32 16, ptr %offset, align 4, !dbg !1112
  store i32 8, ptr %num_bits, align 4, !dbg !1113
  br label %if.end85

if.end85:                                         ; preds = %if.else83, %if.then78
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then69
  %110 = load ptr, ptr %rc.addr, align 8, !dbg !1114
  %111 = load ptr, ptr %prob_len, align 8, !dbg !1115
  %112 = load i32, ptr %num_bits, align 4, !dbg !1116
  call void @rc_bit_tree_decode(ptr noundef %110, ptr noundef %111, i32 noundef %112, ptr noundef %len) #15, !dbg !1117
  %113 = load i32, ptr %offset, align 4, !dbg !1118
  %114 = load i32, ptr %len, align 4, !dbg !1119
  %add = add i32 %114, %113, !dbg !1119
  store i32 %add, ptr %len, align 4, !dbg !1119
  %115 = load ptr, ptr %cst.addr, align 8, !dbg !1120
  %state87 = getelementptr inbounds %struct.cstate, ptr %115, i32 0, i32 0, !dbg !1121
  %116 = load i32, ptr %state87, align 4, !dbg !1121
  %cmp88 = icmp slt i32 %116, 4, !dbg !1122
  br i1 %cmp88, label %if.then89, label %if.end153, !dbg !1123

if.then89:                                        ; preds = %if.end86
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos_slot) #12, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %pos_slot, metadata !862, metadata !DIExpression()), !dbg !1125
  %117 = load ptr, ptr %cst.addr, align 8, !dbg !1126
  %state90 = getelementptr inbounds %struct.cstate, ptr %117, i32 0, i32 0, !dbg !1127
  %118 = load i32, ptr %state90, align 4, !dbg !1128
  %add91 = add i32 %118, 7, !dbg !1128
  store i32 %add91, ptr %state90, align 4, !dbg !1128
  %119 = load ptr, ptr %p.addr, align 8, !dbg !1129
  %add.ptr92 = getelementptr i16, ptr %119, i64 432, !dbg !1130
  %120 = load i32, ptr %len, align 4, !dbg !1131
  %cmp93 = icmp slt i32 %120, 4, !dbg !1132
  br i1 %cmp93, label %cond.true, label %cond.false, !dbg !1131

cond.true:                                        ; preds = %if.then89
  %121 = load i32, ptr %len, align 4, !dbg !1133
  br label %cond.end, !dbg !1131

cond.false:                                       ; preds = %if.then89
  br label %cond.end, !dbg !1131

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond94 = phi i32 [ %121, %cond.true ], [ 3, %cond.false ], !dbg !1131
  %shl95 = shl i32 %cond94, 6, !dbg !1134
  %idx.ext96 = sext i32 %shl95 to i64, !dbg !1135
  %add.ptr97 = getelementptr i16, ptr %add.ptr92, i64 %idx.ext96, !dbg !1135
  store ptr %add.ptr97, ptr %prob.addr, align 8, !dbg !1136
  %122 = load ptr, ptr %rc.addr, align 8, !dbg !1137
  %123 = load ptr, ptr %prob.addr, align 8, !dbg !1138
  call void @rc_bit_tree_decode(ptr noundef %122, ptr noundef %123, i32 noundef 6, ptr noundef %pos_slot) #15, !dbg !1139
  %124 = load i32, ptr %pos_slot, align 4, !dbg !1140
  %cmp98 = icmp sge i32 %124, 4, !dbg !1141
  br i1 %cmp98, label %if.then99, label %if.else138, !dbg !1142

if.then99:                                        ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %i, metadata !865, metadata !DIExpression()), !dbg !1144
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #12, !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !868, metadata !DIExpression()), !dbg !1145
  %125 = load i32, ptr %pos_slot, align 4, !dbg !1146
  %shr = ashr i32 %125, 1, !dbg !1147
  %sub = sub i32 %shr, 1, !dbg !1148
  store i32 %sub, ptr %num_bits, align 4, !dbg !1149
  %126 = load i32, ptr %pos_slot, align 4, !dbg !1150
  %and = and i32 %126, 1, !dbg !1151
  %or = or i32 2, %and, !dbg !1152
  %127 = load ptr, ptr %cst.addr, align 8, !dbg !1153
  %rep0100 = getelementptr inbounds %struct.cstate, ptr %127, i32 0, i32 1, !dbg !1154
  store i32 %or, ptr %rep0100, align 4, !dbg !1155
  %128 = load i32, ptr %pos_slot, align 4, !dbg !1156
  %cmp101 = icmp slt i32 %128, 14, !dbg !1158
  br i1 %cmp101, label %if.then102, label %if.else112, !dbg !1159

if.then102:                                       ; preds = %if.then99
  %129 = load i32, ptr %num_bits, align 4, !dbg !1160
  %130 = load ptr, ptr %cst.addr, align 8, !dbg !1162
  %rep0103 = getelementptr inbounds %struct.cstate, ptr %130, i32 0, i32 1, !dbg !1163
  %131 = load i32, ptr %rep0103, align 4, !dbg !1164
  %shl104 = shl i32 %131, %129, !dbg !1164
  store i32 %shl104, ptr %rep0103, align 4, !dbg !1164
  %132 = load ptr, ptr %p.addr, align 8, !dbg !1165
  %add.ptr105 = getelementptr i16, ptr %132, i64 688, !dbg !1166
  %133 = load ptr, ptr %cst.addr, align 8, !dbg !1167
  %rep0106 = getelementptr inbounds %struct.cstate, ptr %133, i32 0, i32 1, !dbg !1168
  %134 = load i32, ptr %rep0106, align 4, !dbg !1168
  %idx.ext107 = zext i32 %134 to i64, !dbg !1169
  %add.ptr108 = getelementptr i16, ptr %add.ptr105, i64 %idx.ext107, !dbg !1169
  %135 = load i32, ptr %pos_slot, align 4, !dbg !1170
  %idx.ext109 = sext i32 %135 to i64, !dbg !1171
  %idx.neg = sub i64 0, %idx.ext109, !dbg !1171
  %add.ptr110 = getelementptr i16, ptr %add.ptr108, i64 %idx.neg, !dbg !1171
  %add.ptr111 = getelementptr i16, ptr %add.ptr110, i64 -1, !dbg !1172
  store ptr %add.ptr111, ptr %prob.addr, align 8, !dbg !1173
  br label %if.end123, !dbg !1174

if.else112:                                       ; preds = %if.then99
  %136 = load i32, ptr %num_bits, align 4, !dbg !1175
  %sub113 = sub i32 %136, 4, !dbg !1175
  store i32 %sub113, ptr %num_bits, align 4, !dbg !1175
  br label %while.cond, !dbg !1177

while.cond:                                       ; preds = %while.body, %if.else112
  %137 = load i32, ptr %num_bits, align 4, !dbg !1178
  %dec = add i32 %137, -1, !dbg !1178
  store i32 %dec, ptr %num_bits, align 4, !dbg !1178
  %tobool114 = icmp ne i32 %137, 0, !dbg !1177
  br i1 %tobool114, label %while.body, label %while.end, !dbg !1177

while.body:                                       ; preds = %while.cond
  %138 = load ptr, ptr %cst.addr, align 8, !dbg !1179
  %rep0115 = getelementptr inbounds %struct.cstate, ptr %138, i32 0, i32 1, !dbg !1180
  %139 = load i32, ptr %rep0115, align 4, !dbg !1180
  %shl116 = shl i32 %139, 1, !dbg !1181
  %140 = load ptr, ptr %rc.addr, align 8, !dbg !1182
  %call117 = call i32 @rc_direct_bit(ptr noundef %140) #15, !dbg !1183
  %or118 = or i32 %shl116, %call117, !dbg !1184
  %141 = load ptr, ptr %cst.addr, align 8, !dbg !1185
  %rep0119 = getelementptr inbounds %struct.cstate, ptr %141, i32 0, i32 1, !dbg !1186
  store i32 %or118, ptr %rep0119, align 4, !dbg !1187
  br label %while.cond, !dbg !1177, !llvm.loop !1188

while.end:                                        ; preds = %while.cond
  %142 = load ptr, ptr %p.addr, align 8, !dbg !1190
  %add.ptr120 = getelementptr i16, ptr %142, i64 802, !dbg !1191
  store ptr %add.ptr120, ptr %prob.addr, align 8, !dbg !1192
  %143 = load ptr, ptr %cst.addr, align 8, !dbg !1193
  %rep0121 = getelementptr inbounds %struct.cstate, ptr %143, i32 0, i32 1, !dbg !1194
  %144 = load i32, ptr %rep0121, align 4, !dbg !1195
  %shl122 = shl i32 %144, 4, !dbg !1195
  store i32 %shl122, ptr %rep0121, align 4, !dbg !1195
  store i32 4, ptr %num_bits, align 4, !dbg !1196
  br label %if.end123

if.end123:                                        ; preds = %while.end, %if.then102
  store i32 1, ptr %i, align 4, !dbg !1197
  store i32 1, ptr %mi, align 4, !dbg !1198
  br label %while.cond124, !dbg !1199

while.cond124:                                    ; preds = %if.end135, %if.end123
  %145 = load i32, ptr %num_bits, align 4, !dbg !1200
  %dec125 = add i32 %145, -1, !dbg !1200
  store i32 %dec125, ptr %num_bits, align 4, !dbg !1200
  %tobool126 = icmp ne i32 %145, 0, !dbg !1199
  br i1 %tobool126, label %while.body127, label %while.end137, !dbg !1199

while.body127:                                    ; preds = %while.cond124
  %146 = load ptr, ptr %rc.addr, align 8, !dbg !1201
  %147 = load ptr, ptr %prob.addr, align 8, !dbg !1204
  %148 = load i32, ptr %mi, align 4, !dbg !1205
  %idx.ext128 = sext i32 %148 to i64, !dbg !1206
  %add.ptr129 = getelementptr i16, ptr %147, i64 %idx.ext128, !dbg !1206
  %call130 = call i32 @rc_get_bit(ptr noundef %146, ptr noundef %add.ptr129, ptr noundef %mi) #15, !dbg !1207
  %tobool131 = icmp ne i32 %call130, 0, !dbg !1207
  br i1 %tobool131, label %if.then132, label %if.end135, !dbg !1208

if.then132:                                       ; preds = %while.body127
  %149 = load i32, ptr %i, align 4, !dbg !1209
  %150 = load ptr, ptr %cst.addr, align 8, !dbg !1210
  %rep0133 = getelementptr inbounds %struct.cstate, ptr %150, i32 0, i32 1, !dbg !1211
  %151 = load i32, ptr %rep0133, align 4, !dbg !1212
  %or134 = or i32 %151, %149, !dbg !1212
  store i32 %or134, ptr %rep0133, align 4, !dbg !1212
  br label %if.end135, !dbg !1210

if.end135:                                        ; preds = %if.then132, %while.body127
  %152 = load i32, ptr %i, align 4, !dbg !1213
  %shl136 = shl i32 %152, 1, !dbg !1213
  store i32 %shl136, ptr %i, align 4, !dbg !1213
  br label %while.cond124, !dbg !1199, !llvm.loop !1214

while.end137:                                     ; preds = %while.cond124
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #12, !dbg !1216
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1216
  br label %if.end140, !dbg !1217

if.else138:                                       ; preds = %cond.end
  %153 = load i32, ptr %pos_slot, align 4, !dbg !1218
  %154 = load ptr, ptr %cst.addr, align 8, !dbg !1219
  %rep0139 = getelementptr inbounds %struct.cstate, ptr %154, i32 0, i32 1, !dbg !1220
  store i32 %153, ptr %rep0139, align 4, !dbg !1221
  br label %if.end140

if.end140:                                        ; preds = %if.else138, %while.end137
  %155 = load ptr, ptr %cst.addr, align 8, !dbg !1222
  %rep0141 = getelementptr inbounds %struct.cstate, ptr %155, i32 0, i32 1, !dbg !1224
  %156 = load i32, ptr %rep0141, align 4, !dbg !1225
  %inc = add i32 %156, 1, !dbg !1225
  store i32 %inc, ptr %rep0141, align 4, !dbg !1225
  %cmp142 = icmp eq i32 %inc, 0, !dbg !1226
  br i1 %cmp142, label %if.then143, label %if.end144, !dbg !1227

if.then143:                                       ; preds = %if.end140
  store i32 0, ptr %retval, align 4, !dbg !1228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1228

if.end144:                                        ; preds = %if.end140
  %157 = load ptr, ptr %cst.addr, align 8, !dbg !1229
  %rep0145 = getelementptr inbounds %struct.cstate, ptr %157, i32 0, i32 1, !dbg !1231
  %158 = load i32, ptr %rep0145, align 4, !dbg !1231
  %159 = load ptr, ptr %wr.addr, align 8, !dbg !1232
  %header = getelementptr inbounds %struct.writer, ptr %159, i32 0, i32 6, !dbg !1233
  %160 = load ptr, ptr %header, align 8, !dbg !1233
  %dict_size = getelementptr inbounds %struct.lzma_header, ptr %160, i32 0, i32 1, !dbg !1234
  %161 = load i32, ptr %dict_size, align 1, !dbg !1234
  %cmp146 = icmp ugt i32 %158, %161, !dbg !1235
  br i1 %cmp146, label %if.then151, label %lor.lhs.false, !dbg !1236

lor.lhs.false:                                    ; preds = %if.end144
  %162 = load ptr, ptr %cst.addr, align 8, !dbg !1237
  %rep0147 = getelementptr inbounds %struct.cstate, ptr %162, i32 0, i32 1, !dbg !1238
  %163 = load i32, ptr %rep0147, align 4, !dbg !1238
  %conv = zext i32 %163 to i64, !dbg !1237
  %164 = load ptr, ptr %wr.addr, align 8, !dbg !1239
  %call148 = call i64 @get_pos(ptr noundef %164) #15, !dbg !1240
  %cmp149 = icmp ugt i64 %conv, %call148, !dbg !1241
  br i1 %cmp149, label %if.then151, label %if.end152, !dbg !1242

if.then151:                                       ; preds = %lor.lhs.false, %if.end144
  store i32 -1, ptr %retval, align 4, !dbg !1243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1243

if.end152:                                        ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1244
  br label %cleanup, !dbg !1244

cleanup:                                          ; preds = %if.end152, %if.then151, %if.then143
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos_slot) #12, !dbg !1244
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup157 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end153, !dbg !1245

if.end153:                                        ; preds = %cleanup.cont, %if.end86
  %165 = load i32, ptr %len, align 4, !dbg !1246
  %add154 = add i32 %165, 2, !dbg !1246
  store i32 %add154, ptr %len, align 4, !dbg !1246
  %166 = load ptr, ptr %wr.addr, align 8, !dbg !1247
  %167 = load ptr, ptr %cst.addr, align 8, !dbg !1248
  %rep0155 = getelementptr inbounds %struct.cstate, ptr %167, i32 0, i32 1, !dbg !1249
  %168 = load i32, ptr %rep0155, align 4, !dbg !1249
  %169 = load i32, ptr %len, align 4, !dbg !1250
  %call156 = call i32 @copy_bytes(ptr noundef %166, i32 noundef %168, i32 noundef %169) #15, !dbg !1251
  store i32 %call156, ptr %retval, align 4, !dbg !1252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup157, !dbg !1252

cleanup157:                                       ; preds = %if.end153, %cleanup, %if.then22
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #12, !dbg !1253
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_bits) #12, !dbg !1253
  call void @llvm.lifetime.end.p0(i64 8, ptr %prob_len) #12, !dbg !1253
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #12, !dbg !1253
  %170 = load i32, ptr %retval, align 4, !dbg !1253
  ret i32 %170, !dbg !1253
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1254 dso_local void @vfree(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1259 dso_local void @kfree(ptr noundef) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1260 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !1261 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1267, metadata !DIExpression()), !dbg !1269
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1268, metadata !DIExpression()), !dbg !1270
  %0 = load i64, ptr %size.addr, align 8, !dbg !1271
  %tobool = icmp ne i64 %0, 0, !dbg !1271
  br i1 %tobool, label %if.end, label %if.then, !dbg !1273

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1274
  br label %return, !dbg !1274

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1275
  %cmp = icmp ule i64 %1, 8, !dbg !1277
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1278

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1279
  br label %return, !dbg !1279

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1280
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1282
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1283

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1284
  %cmp4 = icmp ule i64 %3, 96, !dbg !1285
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1286

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1287
  br label %return, !dbg !1287

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1288
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1290
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1291

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1292
  %cmp9 = icmp ule i64 %5, 192, !dbg !1293
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1294

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1295
  br label %return, !dbg !1295

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1296
  %cmp12 = icmp ule i64 %6, 8, !dbg !1298
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1299

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1300
  br label %return, !dbg !1300

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1301
  %cmp15 = icmp ule i64 %7, 16, !dbg !1303
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1304

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1305
  br label %return, !dbg !1305

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1306
  %cmp18 = icmp ule i64 %8, 32, !dbg !1308
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1309

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1310
  br label %return, !dbg !1310

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1311
  %cmp21 = icmp ule i64 %9, 64, !dbg !1313
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1314

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1315
  br label %return, !dbg !1315

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1316
  %cmp24 = icmp ule i64 %10, 128, !dbg !1318
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1319

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1320
  br label %return, !dbg !1320

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1321
  %cmp27 = icmp ule i64 %11, 256, !dbg !1323
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1324

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1325
  br label %return, !dbg !1325

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1326
  %cmp30 = icmp ule i64 %12, 512, !dbg !1328
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1329

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1330
  br label %return, !dbg !1330

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1331
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1333
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1334

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1335
  br label %return, !dbg !1335

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1336
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1338
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1339

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1340
  br label %return, !dbg !1340

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1341
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1343
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1344

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1345
  br label %return, !dbg !1345

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1346
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1348
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1349

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1350
  br label %return, !dbg !1350

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1351
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1353
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1354

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1355
  br label %return, !dbg !1355

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1356
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1358
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1359

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1360
  br label %return, !dbg !1360

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1361
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1363
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1364

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1365
  br label %return, !dbg !1365

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1366
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1368
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1369

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1370
  br label %return, !dbg !1370

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1371
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1373
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1374

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1375
  br label %return, !dbg !1375

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1376
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1378
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1379

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1380
  br label %return, !dbg !1380

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1381
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1383
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1384

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1385
  br label %return, !dbg !1385

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1386
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1388
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1389

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1390
  br label %return, !dbg !1390

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1391, !range !1393, !noundef !1394
  %tobool69 = trunc i8 %25 to i1, !dbg !1391
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1395

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1396

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #17, !dbg !1397, !srcloc !1400
  unreachable, !dbg !1397

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1401

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1402

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1403

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1405

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1403

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #12, !dbg !1407, !srcloc !1409
  br label %do.end75, !dbg !1407

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1403

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1410
  br label %return, !dbg !1410

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1411
  ret i32 %26, !dbg !1411
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1412 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !1418 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1422, metadata !DIExpression()), !dbg !1424
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1423, metadata !DIExpression()), !dbg !1425
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1426
  %and = and i32 %0, 17, !dbg !1426
  %cmp = icmp eq i32 %and, 0, !dbg !1426
  %lnot = xor i1 %cmp, true, !dbg !1426
  %lnot1 = xor i1 %lnot, true, !dbg !1426
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1426
  %conv = sext i32 %lnot.ext to i64, !dbg !1426
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1426
  %tobool = icmp ne i64 %expval, 0, !dbg !1426
  br i1 %tobool, label %if.then, label %if.end, !dbg !1428

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1429
  br label %return, !dbg !1429

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1430
  %and2 = and i32 %1, 1, !dbg !1432
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1432
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1433

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1434
  br label %return, !dbg !1434

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1435
  br label %return, !dbg !1435

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1437
  ret i32 %2, !dbg !1437
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1438 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #5

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1439 dso_local void @__compiletime_assert_245() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @nofill(ptr noundef %buffer, i64 noundef %len) #4 section ".init.text" align 16 !dbg !1442 {
entry:
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1444, metadata !DIExpression()), !dbg !1446
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1445, metadata !DIExpression()), !dbg !1447
  ret i64 -1, !dbg !1448
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @rc_is_bit_0_helper(ptr noundef %rc, ptr noundef %p) #0 section ".init.text" align 16 !dbg !1449 {
entry:
  %rc.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !1453, metadata !DIExpression()), !dbg !1455
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1454, metadata !DIExpression()), !dbg !1456
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !1457
  call void @rc_normalize(ptr noundef %0) #15, !dbg !1458
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1459
  %2 = load i16, ptr %1, align 2, !dbg !1460
  %conv = zext i16 %2 to i32, !dbg !1460
  %3 = load ptr, ptr %rc.addr, align 8, !dbg !1461
  %range = getelementptr inbounds %struct.rc, ptr %3, i32 0, i32 6, !dbg !1462
  %4 = load i32, ptr %range, align 4, !dbg !1462
  %shr = lshr i32 %4, 11, !dbg !1463
  %mul = mul i32 %conv, %shr, !dbg !1464
  %5 = load ptr, ptr %rc.addr, align 8, !dbg !1465
  %bound = getelementptr inbounds %struct.rc, ptr %5, i32 0, i32 7, !dbg !1466
  store i32 %mul, ptr %bound, align 8, !dbg !1467
  %6 = load ptr, ptr %rc.addr, align 8, !dbg !1468
  %bound1 = getelementptr inbounds %struct.rc, ptr %6, i32 0, i32 7, !dbg !1469
  %7 = load i32, ptr %bound1, align 8, !dbg !1469
  ret i32 %7, !dbg !1470
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @rc_normalize(ptr noundef %rc) #0 section ".init.text" align 16 !dbg !1471 {
entry:
  %rc.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !1473, metadata !DIExpression()), !dbg !1474
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !1475
  %range = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 6, !dbg !1477
  %1 = load i32, ptr %range, align 4, !dbg !1477
  %cmp = icmp ult i32 %1, 16777216, !dbg !1478
  br i1 %cmp, label %if.then, label %if.end, !dbg !1479

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %rc.addr, align 8, !dbg !1480
  call void @rc_do_normalize(ptr noundef %2) #15, !dbg !1481
  br label %if.end, !dbg !1481

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1482
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @rc_do_normalize(ptr noundef %rc) #4 section ".init.text" align 16 !dbg !1483 {
entry:
  %rc.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !1485, metadata !DIExpression()), !dbg !1486
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !1487
  %ptr = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 1, !dbg !1489
  %1 = load ptr, ptr %ptr, align 8, !dbg !1489
  %2 = load ptr, ptr %rc.addr, align 8, !dbg !1490
  %buffer_end = getelementptr inbounds %struct.rc, ptr %2, i32 0, i32 3, !dbg !1491
  %3 = load ptr, ptr %buffer_end, align 8, !dbg !1491
  %cmp = icmp uge ptr %1, %3, !dbg !1492
  br i1 %cmp, label %if.then, label %if.end, !dbg !1493

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %rc.addr, align 8, !dbg !1494
  call void @rc_read(ptr noundef %4) #15, !dbg !1495
  br label %if.end, !dbg !1495

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %rc.addr, align 8, !dbg !1496
  %range = getelementptr inbounds %struct.rc, ptr %5, i32 0, i32 6, !dbg !1497
  %6 = load i32, ptr %range, align 4, !dbg !1498
  %shl = shl i32 %6, 8, !dbg !1498
  store i32 %shl, ptr %range, align 4, !dbg !1498
  %7 = load ptr, ptr %rc.addr, align 8, !dbg !1499
  %code = getelementptr inbounds %struct.rc, ptr %7, i32 0, i32 5, !dbg !1500
  %8 = load i32, ptr %code, align 8, !dbg !1500
  %shl1 = shl i32 %8, 8, !dbg !1501
  %9 = load ptr, ptr %rc.addr, align 8, !dbg !1502
  %ptr2 = getelementptr inbounds %struct.rc, ptr %9, i32 0, i32 1, !dbg !1503
  %10 = load ptr, ptr %ptr2, align 8, !dbg !1504
  %incdec.ptr = getelementptr i8, ptr %10, i32 1, !dbg !1504
  store ptr %incdec.ptr, ptr %ptr2, align 8, !dbg !1504
  %11 = load i8, ptr %10, align 1, !dbg !1505
  %conv = zext i8 %11 to i32, !dbg !1505
  %or = or i32 %shl1, %conv, !dbg !1506
  %12 = load ptr, ptr %rc.addr, align 8, !dbg !1507
  %code3 = getelementptr inbounds %struct.rc, ptr %12, i32 0, i32 5, !dbg !1508
  store i32 %or, ptr %code3, align 8, !dbg !1509
  ret void, !dbg !1510
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @rc_update_bit_0(ptr noundef %rc, ptr noundef %p) #0 section ".init.text" align 16 !dbg !1511 {
entry:
  %rc.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !1515, metadata !DIExpression()), !dbg !1517
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1516, metadata !DIExpression()), !dbg !1518
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !1519
  %bound = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 7, !dbg !1520
  %1 = load i32, ptr %bound, align 8, !dbg !1520
  %2 = load ptr, ptr %rc.addr, align 8, !dbg !1521
  %range = getelementptr inbounds %struct.rc, ptr %2, i32 0, i32 6, !dbg !1522
  store i32 %1, ptr %range, align 4, !dbg !1523
  %3 = load ptr, ptr %p.addr, align 8, !dbg !1524
  %4 = load i16, ptr %3, align 2, !dbg !1525
  %conv = zext i16 %4 to i32, !dbg !1525
  %sub = sub i32 2048, %conv, !dbg !1526
  %shr = ashr i32 %sub, 5, !dbg !1527
  %5 = load ptr, ptr %p.addr, align 8, !dbg !1528
  %6 = load i16, ptr %5, align 2, !dbg !1529
  %conv1 = zext i16 %6 to i32, !dbg !1529
  %add = add i32 %conv1, %shr, !dbg !1529
  %conv2 = trunc i32 %add to i16, !dbg !1529
  store i16 %conv2, ptr %5, align 2, !dbg !1529
  ret void, !dbg !1530
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i8 @peek_old_byte(ptr noundef %wr, i32 noundef %offs) #0 section ".init.text" align 16 !dbg !1531 {
entry:
  %retval = alloca i8, align 1
  %wr.addr = alloca ptr, align 8
  %offs.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %pos5 = alloca i32, align 4
  store ptr %wr, ptr %wr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wr.addr, metadata !1535, metadata !DIExpression()), !dbg !1545
  store i32 %offs, ptr %offs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offs.addr, metadata !1536, metadata !DIExpression()), !dbg !1546
  %0 = load ptr, ptr %wr.addr, align 8, !dbg !1547
  %flush = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 5, !dbg !1548
  %1 = load ptr, ptr %flush, align 8, !dbg !1548
  %tobool = icmp ne ptr %1, null, !dbg !1547
  br i1 %tobool, label %if.else, label %if.then, !dbg !1549

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #12, !dbg !1550
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !1537, metadata !DIExpression()), !dbg !1551
  br label %while.cond, !dbg !1552

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i32, ptr %offs.addr, align 4, !dbg !1553
  %3 = load ptr, ptr %wr.addr, align 8, !dbg !1554
  %header = getelementptr inbounds %struct.writer, ptr %3, i32 0, i32 6, !dbg !1555
  %4 = load ptr, ptr %header, align 8, !dbg !1555
  %dict_size = getelementptr inbounds %struct.lzma_header, ptr %4, i32 0, i32 1, !dbg !1556
  %5 = load i32, ptr %dict_size, align 1, !dbg !1556
  %cmp = icmp ugt i32 %2, %5, !dbg !1557
  br i1 %cmp, label %while.body, label %while.end, !dbg !1552

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %wr.addr, align 8, !dbg !1558
  %header1 = getelementptr inbounds %struct.writer, ptr %6, i32 0, i32 6, !dbg !1559
  %7 = load ptr, ptr %header1, align 8, !dbg !1559
  %dict_size2 = getelementptr inbounds %struct.lzma_header, ptr %7, i32 0, i32 1, !dbg !1560
  %8 = load i32, ptr %dict_size2, align 1, !dbg !1560
  %9 = load i32, ptr %offs.addr, align 4, !dbg !1561
  %sub = sub i32 %9, %8, !dbg !1561
  store i32 %sub, ptr %offs.addr, align 4, !dbg !1561
  br label %while.cond, !dbg !1552, !llvm.loop !1562

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %wr.addr, align 8, !dbg !1563
  %buffer_pos = getelementptr inbounds %struct.writer, ptr %10, i32 0, i32 2, !dbg !1564
  %11 = load i64, ptr %buffer_pos, align 8, !dbg !1564
  %12 = load i32, ptr %offs.addr, align 4, !dbg !1565
  %conv = zext i32 %12 to i64, !dbg !1565
  %sub3 = sub i64 %11, %conv, !dbg !1566
  %conv4 = trunc i64 %sub3 to i32, !dbg !1563
  store i32 %conv4, ptr %pos, align 4, !dbg !1567
  %13 = load ptr, ptr %wr.addr, align 8, !dbg !1568
  %buffer = getelementptr inbounds %struct.writer, ptr %13, i32 0, i32 0, !dbg !1569
  %14 = load ptr, ptr %buffer, align 8, !dbg !1569
  %15 = load i32, ptr %pos, align 4, !dbg !1570
  %idxprom = sext i32 %15 to i64, !dbg !1568
  %arrayidx = getelementptr i8, ptr %14, i64 %idxprom, !dbg !1568
  %16 = load i8, ptr %arrayidx, align 1, !dbg !1568
  store i8 %16, ptr %retval, align 1, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #12, !dbg !1572
  br label %return

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos5) #12, !dbg !1573
  call void @llvm.dbg.declare(metadata ptr %pos5, metadata !1543, metadata !DIExpression()), !dbg !1574
  %17 = load ptr, ptr %wr.addr, align 8, !dbg !1575
  %buffer_pos6 = getelementptr inbounds %struct.writer, ptr %17, i32 0, i32 2, !dbg !1576
  %18 = load i64, ptr %buffer_pos6, align 8, !dbg !1576
  %19 = load i32, ptr %offs.addr, align 4, !dbg !1577
  %conv7 = zext i32 %19 to i64, !dbg !1577
  %sub8 = sub i64 %18, %conv7, !dbg !1578
  %conv9 = trunc i64 %sub8 to i32, !dbg !1575
  store i32 %conv9, ptr %pos5, align 4, !dbg !1574
  br label %while.cond10, !dbg !1579

while.cond10:                                     ; preds = %while.body15, %if.else
  %20 = load i32, ptr %pos5, align 4, !dbg !1580
  %21 = load ptr, ptr %wr.addr, align 8, !dbg !1581
  %header11 = getelementptr inbounds %struct.writer, ptr %21, i32 0, i32 6, !dbg !1582
  %22 = load ptr, ptr %header11, align 8, !dbg !1582
  %dict_size12 = getelementptr inbounds %struct.lzma_header, ptr %22, i32 0, i32 1, !dbg !1583
  %23 = load i32, ptr %dict_size12, align 1, !dbg !1583
  %cmp13 = icmp uge i32 %20, %23, !dbg !1584
  br i1 %cmp13, label %while.body15, label %while.end18, !dbg !1579

while.body15:                                     ; preds = %while.cond10
  %24 = load ptr, ptr %wr.addr, align 8, !dbg !1585
  %header16 = getelementptr inbounds %struct.writer, ptr %24, i32 0, i32 6, !dbg !1586
  %25 = load ptr, ptr %header16, align 8, !dbg !1586
  %dict_size17 = getelementptr inbounds %struct.lzma_header, ptr %25, i32 0, i32 1, !dbg !1587
  %26 = load i32, ptr %dict_size17, align 1, !dbg !1587
  %27 = load i32, ptr %pos5, align 4, !dbg !1588
  %add = add i32 %27, %26, !dbg !1588
  store i32 %add, ptr %pos5, align 4, !dbg !1588
  br label %while.cond10, !dbg !1579, !llvm.loop !1589

while.end18:                                      ; preds = %while.cond10
  %28 = load ptr, ptr %wr.addr, align 8, !dbg !1590
  %buffer19 = getelementptr inbounds %struct.writer, ptr %28, i32 0, i32 0, !dbg !1591
  %29 = load ptr, ptr %buffer19, align 8, !dbg !1591
  %30 = load i32, ptr %pos5, align 4, !dbg !1592
  %idxprom20 = zext i32 %30 to i64, !dbg !1590
  %arrayidx21 = getelementptr i8, ptr %29, i64 %idxprom20, !dbg !1590
  %31 = load i8, ptr %arrayidx21, align 1, !dbg !1590
  store i8 %31, ptr %retval, align 1, !dbg !1593
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos5) #12, !dbg !1594
  br label %return

return:                                           ; preds = %while.end18, %while.end
  %32 = load i8, ptr %retval, align 1, !dbg !1595
  ret i8 %32, !dbg !1595
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @rc_get_bit(ptr noundef %rc, ptr noundef %p, ptr noundef %symbol) #4 section ".init.text" align 16 !dbg !1596 {
entry:
  %retval = alloca i32, align 4
  %rc.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %symbol.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !1601, metadata !DIExpression()), !dbg !1604
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1602, metadata !DIExpression()), !dbg !1605
  store ptr %symbol, ptr %symbol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %symbol.addr, metadata !1603, metadata !DIExpression()), !dbg !1606
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !1607
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1609
  %call = call i32 @rc_is_bit_0(ptr noundef %0, ptr noundef %1) #15, !dbg !1610
  %tobool = icmp ne i32 %call, 0, !dbg !1610
  br i1 %tobool, label %if.then, label %if.else, !dbg !1611

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %rc.addr, align 8, !dbg !1612
  %3 = load ptr, ptr %p.addr, align 8, !dbg !1614
  call void @rc_update_bit_0(ptr noundef %2, ptr noundef %3) #15, !dbg !1615
  %4 = load ptr, ptr %symbol.addr, align 8, !dbg !1616
  %5 = load i32, ptr %4, align 4, !dbg !1617
  %mul = mul i32 %5, 2, !dbg !1617
  store i32 %mul, ptr %4, align 4, !dbg !1617
  store i32 0, ptr %retval, align 4, !dbg !1618
  br label %return, !dbg !1618

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %rc.addr, align 8, !dbg !1619
  %7 = load ptr, ptr %p.addr, align 8, !dbg !1621
  call void @rc_update_bit_1(ptr noundef %6, ptr noundef %7) #15, !dbg !1622
  %8 = load ptr, ptr %symbol.addr, align 8, !dbg !1623
  %9 = load i32, ptr %8, align 4, !dbg !1624
  %mul1 = mul i32 %9, 2, !dbg !1625
  %add = add i32 %mul1, 1, !dbg !1626
  %10 = load ptr, ptr %symbol.addr, align 8, !dbg !1627
  store i32 %add, ptr %10, align 4, !dbg !1628
  store i32 1, ptr %retval, align 4, !dbg !1629
  br label %return, !dbg !1629

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !1630
  ret i32 %11, !dbg !1630
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @write_byte(ptr noundef %wr, i8 noundef zeroext %byte) #0 section ".init.text" align 16 !dbg !1631 {
entry:
  %retval = alloca i32, align 4
  %wr.addr = alloca ptr, align 8
  %byte.addr = alloca i8, align 1
  store ptr %wr, ptr %wr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wr.addr, metadata !1635, metadata !DIExpression()), !dbg !1637
  store i8 %byte, ptr %byte.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %byte.addr, metadata !1636, metadata !DIExpression()), !dbg !1638
  %0 = load i8, ptr %byte.addr, align 1, !dbg !1639
  %1 = load ptr, ptr %wr.addr, align 8, !dbg !1640
  %previous_byte = getelementptr inbounds %struct.writer, ptr %1, i32 0, i32 1, !dbg !1641
  store i8 %0, ptr %previous_byte, align 8, !dbg !1642
  %2 = load ptr, ptr %wr.addr, align 8, !dbg !1643
  %buffer = getelementptr inbounds %struct.writer, ptr %2, i32 0, i32 0, !dbg !1644
  %3 = load ptr, ptr %buffer, align 8, !dbg !1644
  %4 = load ptr, ptr %wr.addr, align 8, !dbg !1645
  %buffer_pos = getelementptr inbounds %struct.writer, ptr %4, i32 0, i32 2, !dbg !1646
  %5 = load i64, ptr %buffer_pos, align 8, !dbg !1647
  %inc = add i64 %5, 1, !dbg !1647
  store i64 %inc, ptr %buffer_pos, align 8, !dbg !1647
  %arrayidx = getelementptr i8, ptr %3, i64 %5, !dbg !1643
  store i8 %0, ptr %arrayidx, align 1, !dbg !1648
  %6 = load ptr, ptr %wr.addr, align 8, !dbg !1649
  %flush = getelementptr inbounds %struct.writer, ptr %6, i32 0, i32 5, !dbg !1651
  %7 = load ptr, ptr %flush, align 8, !dbg !1651
  %tobool = icmp ne ptr %7, null, !dbg !1649
  br i1 %tobool, label %land.lhs.true, label %if.end18, !dbg !1652

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %wr.addr, align 8, !dbg !1653
  %buffer_pos1 = getelementptr inbounds %struct.writer, ptr %8, i32 0, i32 2, !dbg !1654
  %9 = load i64, ptr %buffer_pos1, align 8, !dbg !1654
  %10 = load ptr, ptr %wr.addr, align 8, !dbg !1655
  %header = getelementptr inbounds %struct.writer, ptr %10, i32 0, i32 6, !dbg !1656
  %11 = load ptr, ptr %header, align 8, !dbg !1656
  %dict_size = getelementptr inbounds %struct.lzma_header, ptr %11, i32 0, i32 1, !dbg !1657
  %12 = load i32, ptr %dict_size, align 1, !dbg !1657
  %conv = zext i32 %12 to i64, !dbg !1655
  %cmp = icmp eq i64 %9, %conv, !dbg !1658
  br i1 %cmp, label %if.then, label %if.end18, !dbg !1659

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %wr.addr, align 8, !dbg !1660
  %buffer_pos3 = getelementptr inbounds %struct.writer, ptr %13, i32 0, i32 2, !dbg !1662
  store i64 0, ptr %buffer_pos3, align 8, !dbg !1663
  %14 = load ptr, ptr %wr.addr, align 8, !dbg !1664
  %header4 = getelementptr inbounds %struct.writer, ptr %14, i32 0, i32 6, !dbg !1665
  %15 = load ptr, ptr %header4, align 8, !dbg !1665
  %dict_size5 = getelementptr inbounds %struct.lzma_header, ptr %15, i32 0, i32 1, !dbg !1666
  %16 = load i32, ptr %dict_size5, align 1, !dbg !1666
  %conv6 = zext i32 %16 to i64, !dbg !1664
  %17 = load ptr, ptr %wr.addr, align 8, !dbg !1667
  %global_pos = getelementptr inbounds %struct.writer, ptr %17, i32 0, i32 4, !dbg !1668
  %18 = load i64, ptr %global_pos, align 8, !dbg !1669
  %add = add i64 %18, %conv6, !dbg !1669
  store i64 %add, ptr %global_pos, align 8, !dbg !1669
  %19 = load ptr, ptr %wr.addr, align 8, !dbg !1670
  %flush7 = getelementptr inbounds %struct.writer, ptr %19, i32 0, i32 5, !dbg !1672
  %20 = load ptr, ptr %flush7, align 8, !dbg !1672
  %21 = load ptr, ptr %wr.addr, align 8, !dbg !1673
  %buffer8 = getelementptr inbounds %struct.writer, ptr %21, i32 0, i32 0, !dbg !1674
  %22 = load ptr, ptr %buffer8, align 8, !dbg !1674
  %23 = load ptr, ptr %wr.addr, align 8, !dbg !1675
  %header9 = getelementptr inbounds %struct.writer, ptr %23, i32 0, i32 6, !dbg !1676
  %24 = load ptr, ptr %header9, align 8, !dbg !1676
  %dict_size10 = getelementptr inbounds %struct.lzma_header, ptr %24, i32 0, i32 1, !dbg !1677
  %25 = load i32, ptr %dict_size10, align 1, !dbg !1677
  %conv11 = zext i32 %25 to i64, !dbg !1675
  %call = call i64 %20(ptr noundef %22, i64 noundef %conv11) #14, !dbg !1670
  %26 = load ptr, ptr %wr.addr, align 8, !dbg !1678
  %header12 = getelementptr inbounds %struct.writer, ptr %26, i32 0, i32 6, !dbg !1679
  %27 = load ptr, ptr %header12, align 8, !dbg !1679
  %dict_size13 = getelementptr inbounds %struct.lzma_header, ptr %27, i32 0, i32 1, !dbg !1680
  %28 = load i32, ptr %dict_size13, align 1, !dbg !1680
  %conv14 = zext i32 %28 to i64, !dbg !1678
  %cmp15 = icmp ne i64 %call, %conv14, !dbg !1681
  br i1 %cmp15, label %if.then17, label %if.end, !dbg !1682

if.then17:                                        ; preds = %if.then
  store i32 -1, ptr %retval, align 4, !dbg !1683
  br label %return, !dbg !1683

if.end:                                           ; preds = %if.then
  br label %if.end18, !dbg !1684

if.end18:                                         ; preds = %if.end, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !1685
  br label %return, !dbg !1685

return:                                           ; preds = %if.end18, %if.then17
  %29 = load i32, ptr %retval, align 4, !dbg !1686
  ret i32 %29, !dbg !1686
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @rc_update_bit_1(ptr noundef %rc, ptr noundef %p) #0 section ".init.text" align 16 !dbg !1687 {
entry:
  %rc.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !1689, metadata !DIExpression()), !dbg !1691
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1690, metadata !DIExpression()), !dbg !1692
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !1693
  %bound = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 7, !dbg !1694
  %1 = load i32, ptr %bound, align 8, !dbg !1694
  %2 = load ptr, ptr %rc.addr, align 8, !dbg !1695
  %range = getelementptr inbounds %struct.rc, ptr %2, i32 0, i32 6, !dbg !1696
  %3 = load i32, ptr %range, align 4, !dbg !1697
  %sub = sub i32 %3, %1, !dbg !1697
  store i32 %sub, ptr %range, align 4, !dbg !1697
  %4 = load ptr, ptr %rc.addr, align 8, !dbg !1698
  %bound1 = getelementptr inbounds %struct.rc, ptr %4, i32 0, i32 7, !dbg !1699
  %5 = load i32, ptr %bound1, align 8, !dbg !1699
  %6 = load ptr, ptr %rc.addr, align 8, !dbg !1700
  %code = getelementptr inbounds %struct.rc, ptr %6, i32 0, i32 5, !dbg !1701
  %7 = load i32, ptr %code, align 8, !dbg !1702
  %sub2 = sub i32 %7, %5, !dbg !1702
  store i32 %sub2, ptr %code, align 8, !dbg !1702
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1703
  %9 = load i16, ptr %8, align 2, !dbg !1704
  %conv = zext i16 %9 to i32, !dbg !1704
  %shr = ashr i32 %conv, 5, !dbg !1705
  %10 = load ptr, ptr %p.addr, align 8, !dbg !1706
  %11 = load i16, ptr %10, align 2, !dbg !1707
  %conv3 = zext i16 %11 to i32, !dbg !1707
  %sub4 = sub i32 %conv3, %shr, !dbg !1707
  %conv5 = trunc i32 %sub4 to i16, !dbg !1707
  store i16 %conv5, ptr %10, align 2, !dbg !1707
  ret void, !dbg !1708
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @copy_byte(ptr noundef %wr, i32 noundef %offs) #0 section ".init.text" align 16 !dbg !1709 {
entry:
  %wr.addr = alloca ptr, align 8
  %offs.addr = alloca i32, align 4
  store ptr %wr, ptr %wr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wr.addr, metadata !1713, metadata !DIExpression()), !dbg !1715
  store i32 %offs, ptr %offs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offs.addr, metadata !1714, metadata !DIExpression()), !dbg !1716
  %0 = load ptr, ptr %wr.addr, align 8, !dbg !1717
  %1 = load ptr, ptr %wr.addr, align 8, !dbg !1718
  %2 = load i32, ptr %offs.addr, align 4, !dbg !1719
  %call = call zeroext i8 @peek_old_byte(ptr noundef %1, i32 noundef %2) #15, !dbg !1720
  %call1 = call i32 @write_byte(ptr noundef %0, i8 noundef zeroext %call) #15, !dbg !1721
  ret i32 %call1, !dbg !1722
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @rc_bit_tree_decode(ptr noundef %rc, ptr noundef %p, i32 noundef %num_levels, ptr noundef %symbol) #0 section ".init.text" align 16 !dbg !1723 {
entry:
  %rc.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %num_levels.addr = alloca i32, align 4
  %symbol.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !1727, metadata !DIExpression()), !dbg !1732
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1728, metadata !DIExpression()), !dbg !1733
  store i32 %num_levels, ptr %num_levels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_levels.addr, metadata !1729, metadata !DIExpression()), !dbg !1734
  store ptr %symbol, ptr %symbol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %symbol.addr, metadata !1730, metadata !DIExpression()), !dbg !1735
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1736
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1731, metadata !DIExpression()), !dbg !1737
  %0 = load i32, ptr %num_levels.addr, align 4, !dbg !1738
  store i32 %0, ptr %i, align 4, !dbg !1737
  %1 = load ptr, ptr %symbol.addr, align 8, !dbg !1739
  store i32 1, ptr %1, align 4, !dbg !1740
  br label %while.cond, !dbg !1741

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, ptr %i, align 4, !dbg !1742
  %dec = add i32 %2, -1, !dbg !1742
  store i32 %dec, ptr %i, align 4, !dbg !1742
  %tobool = icmp ne i32 %2, 0, !dbg !1741
  br i1 %tobool, label %while.body, label %while.end, !dbg !1741

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %rc.addr, align 8, !dbg !1743
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1744
  %5 = load ptr, ptr %symbol.addr, align 8, !dbg !1745
  %6 = load i32, ptr %5, align 4, !dbg !1746
  %idx.ext = sext i32 %6 to i64, !dbg !1747
  %add.ptr = getelementptr i16, ptr %4, i64 %idx.ext, !dbg !1747
  %7 = load ptr, ptr %symbol.addr, align 8, !dbg !1748
  %call = call i32 @rc_get_bit(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %7) #15, !dbg !1749
  br label %while.cond, !dbg !1741, !llvm.loop !1750

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %num_levels.addr, align 4, !dbg !1752
  %shl = shl i32 1, %8, !dbg !1753
  %9 = load ptr, ptr %symbol.addr, align 8, !dbg !1754
  %10 = load i32, ptr %9, align 4, !dbg !1755
  %sub = sub i32 %10, %shl, !dbg !1755
  store i32 %sub, ptr %9, align 4, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1756
  ret void, !dbg !1756
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @rc_direct_bit(ptr noundef %rc) #0 section ".init.text" align 16 !dbg !1757 {
entry:
  %retval = alloca i32, align 4
  %rc.addr = alloca ptr, align 8
  store ptr %rc, ptr %rc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !1761, metadata !DIExpression()), !dbg !1762
  %0 = load ptr, ptr %rc.addr, align 8, !dbg !1763
  call void @rc_normalize(ptr noundef %0) #15, !dbg !1764
  %1 = load ptr, ptr %rc.addr, align 8, !dbg !1765
  %range = getelementptr inbounds %struct.rc, ptr %1, i32 0, i32 6, !dbg !1766
  %2 = load i32, ptr %range, align 4, !dbg !1767
  %shr = lshr i32 %2, 1, !dbg !1767
  store i32 %shr, ptr %range, align 4, !dbg !1767
  %3 = load ptr, ptr %rc.addr, align 8, !dbg !1768
  %code = getelementptr inbounds %struct.rc, ptr %3, i32 0, i32 5, !dbg !1770
  %4 = load i32, ptr %code, align 8, !dbg !1770
  %5 = load ptr, ptr %rc.addr, align 8, !dbg !1771
  %range1 = getelementptr inbounds %struct.rc, ptr %5, i32 0, i32 6, !dbg !1772
  %6 = load i32, ptr %range1, align 4, !dbg !1772
  %cmp = icmp uge i32 %4, %6, !dbg !1773
  br i1 %cmp, label %if.then, label %if.end, !dbg !1774

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %rc.addr, align 8, !dbg !1775
  %range2 = getelementptr inbounds %struct.rc, ptr %7, i32 0, i32 6, !dbg !1777
  %8 = load i32, ptr %range2, align 4, !dbg !1777
  %9 = load ptr, ptr %rc.addr, align 8, !dbg !1778
  %code3 = getelementptr inbounds %struct.rc, ptr %9, i32 0, i32 5, !dbg !1779
  %10 = load i32, ptr %code3, align 8, !dbg !1780
  %sub = sub i32 %10, %8, !dbg !1780
  store i32 %sub, ptr %code3, align 8, !dbg !1780
  store i32 1, ptr %retval, align 4, !dbg !1781
  br label %return, !dbg !1781

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1782
  br label %return, !dbg !1782

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !1783
  ret i32 %11, !dbg !1783
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @copy_bytes(ptr noundef %wr, i32 noundef %rep0, i32 noundef %len) #0 section ".init.text" align 16 !dbg !1784 {
entry:
  %retval = alloca i32, align 4
  %wr.addr = alloca ptr, align 8
  %rep0.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store ptr %wr, ptr %wr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wr.addr, metadata !1788, metadata !DIExpression()), !dbg !1791
  store i32 %rep0, ptr %rep0.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rep0.addr, metadata !1789, metadata !DIExpression()), !dbg !1792
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1790, metadata !DIExpression()), !dbg !1793
  br label %do.body, !dbg !1794

do.body:                                          ; preds = %land.end, %entry
  %0 = load ptr, ptr %wr.addr, align 8, !dbg !1795
  %1 = load i32, ptr %rep0.addr, align 4, !dbg !1798
  %call = call i32 @copy_byte(ptr noundef %0, i32 noundef %1) #15, !dbg !1799
  %tobool = icmp ne i32 %call, 0, !dbg !1799
  br i1 %tobool, label %if.then, label %if.end, !dbg !1800

if.then:                                          ; preds = %do.body
  store i32 -1, ptr %retval, align 4, !dbg !1801
  br label %return, !dbg !1801

if.end:                                           ; preds = %do.body
  %2 = load i32, ptr %len.addr, align 4, !dbg !1802
  %dec = add i32 %2, -1, !dbg !1802
  store i32 %dec, ptr %len.addr, align 4, !dbg !1802
  br label %do.cond, !dbg !1803

do.cond:                                          ; preds = %if.end
  %3 = load i32, ptr %len.addr, align 4, !dbg !1804
  %cmp = icmp ne i32 %3, 0, !dbg !1805
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1806

land.rhs:                                         ; preds = %do.cond
  %4 = load ptr, ptr %wr.addr, align 8, !dbg !1807
  %buffer_pos = getelementptr inbounds %struct.writer, ptr %4, i32 0, i32 2, !dbg !1808
  %5 = load i64, ptr %buffer_pos, align 8, !dbg !1808
  %6 = load ptr, ptr %wr.addr, align 8, !dbg !1809
  %header = getelementptr inbounds %struct.writer, ptr %6, i32 0, i32 6, !dbg !1810
  %7 = load ptr, ptr %header, align 8, !dbg !1810
  %dst_size = getelementptr inbounds %struct.lzma_header, ptr %7, i32 0, i32 2, !dbg !1811
  %8 = load i64, ptr %dst_size, align 1, !dbg !1811
  %cmp1 = icmp ult i64 %5, %8, !dbg !1812
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %9 = phi i1 [ false, %do.cond ], [ %cmp1, %land.rhs ], !dbg !1813
  br i1 %9, label %do.body, label %do.end, !dbg !1803, !llvm.loop !1814

do.end:                                           ; preds = %land.end
  %10 = load i32, ptr %len.addr, align 4, !dbg !1816
  store i32 %10, ptr %retval, align 4, !dbg !1817
  br label %return, !dbg !1817

return:                                           ; preds = %do.end, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !1818
  ret i32 %11, !dbg !1818
}

attributes #0 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone allocsize(0) }
attributes #14 = { noredzone }
attributes #15 = { cold noredzone }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!25}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 565, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/decompress_unlzma.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5eb2768d99b949b3890aadc128c1f4fc")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 32)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 587, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 638, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 21)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !19, line: 480, type: !14, isLocal: true, isDefinition: true)
!19 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 15)
!25 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.decompress_unlzma.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/decompress_unlzma\22 -D KBUILD_BASENAME=\22decompress_unlzma\22 -D KBUILD_MODNAME=\22decompress_unlzma\22 -D __KBUILD_MODNAME=kmod_decompress_unlzma -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/decompress_unlzma.ll lib/decompress_unlzma.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !26, retainedTypes: !42, globals: !68, splitDebugInlining: false, nameTableKind: None)
!26 = !{!27, !33}
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 10, baseType: !29, size: 32, elements: !30)
!28 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "false", value: 0)
!32 = !DIEnumerator(name: "true", value: 1)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !19, line: 364, baseType: !29, size: 32, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !40, !41}
!35 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!36 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!37 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!38 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!39 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!40 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!41 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!42 = !{!43, !45, !47, !52, !56, !57, !62, !63, !67}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !44, line: 154, baseType: !29)
!44 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !44, line: 110, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !49, line: 21, baseType: !50)
!49 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !51, line: 27, baseType: !29)
!51 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !44, line: 113, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !49, line: 23, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !51, line: 31, baseType: !55)
!55 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !44, line: 109, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !49, line: 19, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !51, line: 24, baseType: !61)
!61 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !44, line: 108, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !49, line: 17, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !51, line: 21, baseType: !46)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!68 = !{!0, !7, !12, !17, !20}
!69 = !{i32 7, !"Dwarf Version", i32 5}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 8, !"cf-protection-branch", i32 1}
!73 = !{i32 4, !"function_return_thunk_extern", i32 1}
!74 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!75 = !{i32 1, !"Code Model", i32 2}
!76 = !{i32 1, !"override-stack-alignment", i32 8}
!77 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!78 = distinct !DISubprogram(name: "unlzma", scope: !2, file: !2, line: 537, type: !79, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !90)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !45, !82, !83, !83, !45, !86, !87}
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!82, !56, !62}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !67}
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !104, !105, !106, !107, !108, !109, !110, !111, !123, !124, !125, !140, !148, !149, !150, !152, !153, !154, !155, !156}
!91 = !DILocalVariable(name: "buf", arg: 1, scope: !78, file: !2, line: 537, type: !45)
!92 = !DILocalVariable(name: "in_len", arg: 2, scope: !78, file: !2, line: 537, type: !82)
!93 = !DILocalVariable(name: "fill", arg: 3, scope: !78, file: !2, line: 538, type: !83)
!94 = !DILocalVariable(name: "flush", arg: 4, scope: !78, file: !2, line: 539, type: !83)
!95 = !DILocalVariable(name: "output", arg: 5, scope: !78, file: !2, line: 540, type: !45)
!96 = !DILocalVariable(name: "posp", arg: 6, scope: !78, file: !2, line: 541, type: !86)
!97 = !DILocalVariable(name: "error", arg: 7, scope: !78, file: !2, line: 542, type: !87)
!98 = !DILocalVariable(name: "header", scope: !78, file: !2, line: 545, type: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_header", file: !2, line: 221, size: 104, elements: !100)
!100 = !{!101, !102, !103}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !99, file: !2, line: 222, baseType: !64, size: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !99, file: !2, line: 223, baseType: !47, size: 32, offset: 8)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "dst_size", scope: !99, file: !2, line: 224, baseType: !52, size: 64, offset: 40)
!104 = !DILocalVariable(name: "lc", scope: !78, file: !2, line: 546, type: !81)
!105 = !DILocalVariable(name: "pb", scope: !78, file: !2, line: 546, type: !81)
!106 = !DILocalVariable(name: "lp", scope: !78, file: !2, line: 546, type: !81)
!107 = !DILocalVariable(name: "pos_state_mask", scope: !78, file: !2, line: 547, type: !47)
!108 = !DILocalVariable(name: "literal_pos_mask", scope: !78, file: !2, line: 548, type: !47)
!109 = !DILocalVariable(name: "p", scope: !78, file: !2, line: 549, type: !57)
!110 = !DILocalVariable(name: "num_probs", scope: !78, file: !2, line: 550, type: !81)
!111 = !DILocalVariable(name: "rc", scope: !78, file: !2, line: 551, type: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc", file: !2, line: 67, size: 512, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !112, file: !2, line: 68, baseType: !83, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !112, file: !2, line: 69, baseType: !63, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !112, file: !2, line: 70, baseType: !63, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !112, file: !2, line: 71, baseType: !63, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !112, file: !2, line: 72, baseType: !82, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !112, file: !2, line: 73, baseType: !47, size: 32, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !112, file: !2, line: 74, baseType: !47, size: 32, offset: 352)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !112, file: !2, line: 75, baseType: !47, size: 32, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !112, file: !2, line: 76, baseType: !87, size: 64, offset: 448)
!123 = !DILocalVariable(name: "i", scope: !78, file: !2, line: 552, type: !81)
!124 = !DILocalVariable(name: "mi", scope: !78, file: !2, line: 552, type: !81)
!125 = !DILocalVariable(name: "wr", scope: !78, file: !2, line: 553, type: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writer", file: !2, line: 277, size: 448, elements: !127)
!127 = !{!128, !129, !130, !135, !136, !137, !138}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !126, file: !2, line: 278, baseType: !63, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "previous_byte", scope: !126, file: !2, line: 279, baseType: !64, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_pos", scope: !126, file: !2, line: 280, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 61, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !133, line: 72, baseType: !134)
!133 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !133, line: 16, baseType: !62)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !126, file: !2, line: 281, baseType: !81, size: 32, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "global_pos", scope: !126, file: !2, line: 282, baseType: !131, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !126, file: !2, line: 283, baseType: !83, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !126, file: !2, line: 284, baseType: !139, size: 64, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!140 = !DILocalVariable(name: "cst", scope: !78, file: !2, line: 554, type: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cstate", file: !2, line: 287, size: 160, elements: !142)
!142 = !{!143, !144, !145, !146, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !141, file: !2, line: 288, baseType: !81, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "rep0", scope: !141, file: !2, line: 289, baseType: !47, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rep1", scope: !141, file: !2, line: 289, baseType: !47, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rep2", scope: !141, file: !2, line: 289, baseType: !47, size: 32, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rep3", scope: !141, file: !2, line: 289, baseType: !47, size: 32, offset: 128)
!148 = !DILocalVariable(name: "inbuf", scope: !78, file: !2, line: 555, type: !45)
!149 = !DILocalVariable(name: "ret", scope: !78, file: !2, line: 556, type: !81)
!150 = !DILocalVariable(name: "pos_state", scope: !151, file: !2, line: 632, type: !81)
!151 = distinct !DILexicalBlock(scope: !78, file: !2, line: 631, column: 41)
!152 = !DILocalVariable(name: "prob", scope: !151, file: !2, line: 633, type: !57)
!153 = !DILabel(scope: !78, name: "exit_3", file: !2, line: 657)
!154 = !DILabel(scope: !78, name: "exit_2", file: !2, line: 659)
!155 = !DILabel(scope: !78, name: "exit_1", file: !2, line: 662)
!156 = !DILabel(scope: !78, name: "exit_0", file: !2, line: 665)
!157 = !DILocation(line: 537, column: 46, scope: !78)
!158 = !DILocation(line: 537, column: 56, scope: !78)
!159 = !DILocation(line: 538, column: 17, scope: !78)
!160 = !DILocation(line: 539, column: 17, scope: !78)
!161 = !DILocation(line: 540, column: 25, scope: !78)
!162 = !DILocation(line: 541, column: 16, scope: !78)
!163 = !DILocation(line: 542, column: 16, scope: !78)
!164 = !DILocation(line: 545, column: 2, scope: !78)
!165 = !DILocation(line: 545, column: 21, scope: !78)
!166 = !DILocation(line: 546, column: 2, scope: !78)
!167 = !DILocation(line: 546, column: 6, scope: !78)
!168 = !DILocation(line: 546, column: 10, scope: !78)
!169 = !DILocation(line: 546, column: 14, scope: !78)
!170 = !DILocation(line: 547, column: 2, scope: !78)
!171 = !DILocation(line: 547, column: 11, scope: !78)
!172 = !DILocation(line: 548, column: 2, scope: !78)
!173 = !DILocation(line: 548, column: 11, scope: !78)
!174 = !DILocation(line: 549, column: 2, scope: !78)
!175 = !DILocation(line: 549, column: 12, scope: !78)
!176 = !DILocation(line: 550, column: 2, scope: !78)
!177 = !DILocation(line: 550, column: 6, scope: !78)
!178 = !DILocation(line: 551, column: 2, scope: !78)
!179 = !DILocation(line: 551, column: 12, scope: !78)
!180 = !DILocation(line: 552, column: 2, scope: !78)
!181 = !DILocation(line: 552, column: 6, scope: !78)
!182 = !DILocation(line: 552, column: 9, scope: !78)
!183 = !DILocation(line: 553, column: 2, scope: !78)
!184 = !DILocation(line: 553, column: 16, scope: !78)
!185 = !DILocation(line: 554, column: 2, scope: !78)
!186 = !DILocation(line: 554, column: 16, scope: !78)
!187 = !DILocation(line: 555, column: 2, scope: !78)
!188 = !DILocation(line: 555, column: 17, scope: !78)
!189 = !DILocation(line: 556, column: 2, scope: !78)
!190 = !DILocation(line: 556, column: 6, scope: !78)
!191 = !DILocation(line: 558, column: 13, scope: !78)
!192 = !DILocation(line: 558, column: 5, scope: !78)
!193 = !DILocation(line: 558, column: 11, scope: !78)
!194 = !DILocation(line: 560, column: 6, scope: !195)
!195 = distinct !DILexicalBlock(scope: !78, file: !2, line: 560, column: 6)
!196 = !DILocation(line: 560, column: 6, scope: !78)
!197 = !DILocation(line: 561, column: 11, scope: !195)
!198 = !DILocation(line: 561, column: 9, scope: !195)
!199 = !DILocation(line: 561, column: 3, scope: !195)
!200 = !DILocation(line: 563, column: 11, scope: !195)
!201 = !DILocation(line: 563, column: 9, scope: !195)
!202 = !DILocation(line: 564, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !78, file: !2, line: 564, column: 6)
!204 = !DILocation(line: 564, column: 6, scope: !78)
!205 = !DILocation(line: 565, column: 3, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !2, line: 564, column: 14)
!207 = !DILocation(line: 566, column: 3, scope: !206)
!208 = !DILocation(line: 569, column: 6, scope: !78)
!209 = !DILocation(line: 569, column: 12, scope: !78)
!210 = !DILocation(line: 570, column: 39, scope: !78)
!211 = !DILocation(line: 570, column: 44, scope: !78)
!212 = !DILocation(line: 570, column: 28, scope: !78)
!213 = !DILocation(line: 570, column: 33, scope: !78)
!214 = !DILocation(line: 570, column: 17, scope: !78)
!215 = !DILocation(line: 570, column: 22, scope: !78)
!216 = !DILocation(line: 570, column: 6, scope: !78)
!217 = !DILocation(line: 570, column: 11, scope: !78)
!218 = !DILocation(line: 572, column: 5, scope: !78)
!219 = !DILocation(line: 572, column: 12, scope: !78)
!220 = !DILocation(line: 573, column: 13, scope: !78)
!221 = !DILocation(line: 573, column: 5, scope: !78)
!222 = !DILocation(line: 573, column: 11, scope: !78)
!223 = !DILocation(line: 574, column: 5, scope: !78)
!224 = !DILocation(line: 574, column: 16, scope: !78)
!225 = !DILocation(line: 575, column: 5, scope: !78)
!226 = !DILocation(line: 575, column: 19, scope: !78)
!227 = !DILocation(line: 576, column: 5, scope: !78)
!228 = !DILocation(line: 576, column: 16, scope: !78)
!229 = !DILocation(line: 578, column: 15, scope: !78)
!230 = !DILocation(line: 578, column: 21, scope: !78)
!231 = !DILocation(line: 578, column: 28, scope: !78)
!232 = !DILocation(line: 578, column: 2, scope: !78)
!233 = !DILocation(line: 580, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !78, file: !2, line: 580, column: 2)
!235 = !DILocation(line: 580, column: 7, scope: !234)
!236 = !DILocation(line: 580, column: 14, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !2, line: 580, column: 2)
!238 = !DILocation(line: 580, column: 16, scope: !237)
!239 = !DILocation(line: 580, column: 2, scope: !234)
!240 = !DILocation(line: 581, column: 10, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !2, line: 581, column: 7)
!242 = distinct !DILexicalBlock(scope: !237, file: !2, line: 580, column: 39)
!243 = !DILocation(line: 581, column: 20, scope: !241)
!244 = !DILocation(line: 581, column: 14, scope: !241)
!245 = !DILocation(line: 581, column: 7, scope: !242)
!246 = !DILocation(line: 582, column: 4, scope: !241)
!247 = !DILocation(line: 583, column: 39, scope: !242)
!248 = !DILocation(line: 583, column: 42, scope: !242)
!249 = !DILocation(line: 583, column: 35, scope: !242)
!250 = !DILocation(line: 583, column: 30, scope: !242)
!251 = !DILocation(line: 583, column: 3, scope: !242)
!252 = !DILocation(line: 583, column: 33, scope: !242)
!253 = !DILocation(line: 584, column: 2, scope: !242)
!254 = !DILocation(line: 580, column: 35, scope: !237)
!255 = !DILocation(line: 580, column: 2, scope: !237)
!256 = distinct !{!256, !239, !257, !258, !259}
!257 = !DILocation(line: 584, column: 2, scope: !234)
!258 = !{!"llvm.loop.mustprogress"}
!259 = !{!"llvm.loop.unroll.disable"}
!260 = !DILocation(line: 586, column: 13, scope: !261)
!261 = distinct !DILexicalBlock(scope: !78, file: !2, line: 586, column: 6)
!262 = !DILocation(line: 586, column: 6, scope: !261)
!263 = !DILocation(line: 586, column: 17, scope: !261)
!264 = !DILocation(line: 586, column: 6, scope: !78)
!265 = !DILocation(line: 587, column: 3, scope: !266)
!266 = distinct !DILexicalBlock(scope: !261, file: !2, line: 586, column: 33)
!267 = !DILocation(line: 588, column: 3, scope: !266)
!268 = !DILocation(line: 591, column: 5, scope: !78)
!269 = !DILocation(line: 592, column: 14, scope: !78)
!270 = !DILocation(line: 592, column: 7, scope: !78)
!271 = !DILocation(line: 592, column: 5, scope: !78)
!272 = !DILocation(line: 593, column: 2, scope: !78)
!273 = !DILocation(line: 593, column: 9, scope: !78)
!274 = !DILocation(line: 593, column: 12, scope: !78)
!275 = !DILocation(line: 594, column: 5, scope: !276)
!276 = distinct !DILexicalBlock(scope: !78, file: !2, line: 593, column: 18)
!277 = !DILocation(line: 595, column: 6, scope: !276)
!278 = distinct !{!278, !272, !279, !258, !259}
!279 = !DILocation(line: 596, column: 2, scope: !78)
!280 = !DILocation(line: 597, column: 5, scope: !78)
!281 = !DILocation(line: 598, column: 7, scope: !78)
!282 = !DILocation(line: 598, column: 5, scope: !78)
!283 = !DILocation(line: 599, column: 2, scope: !78)
!284 = !DILocation(line: 599, column: 9, scope: !78)
!285 = !DILocation(line: 599, column: 12, scope: !78)
!286 = !DILocation(line: 600, column: 5, scope: !287)
!287 = distinct !DILexicalBlock(scope: !78, file: !2, line: 599, column: 18)
!288 = !DILocation(line: 601, column: 6, scope: !287)
!289 = distinct !{!289, !283, !290, !258, !259}
!290 = !DILocation(line: 602, column: 2, scope: !78)
!291 = !DILocation(line: 603, column: 25, scope: !78)
!292 = !DILocation(line: 603, column: 22, scope: !78)
!293 = !DILocation(line: 603, column: 29, scope: !78)
!294 = !DILocation(line: 603, column: 17, scope: !78)
!295 = !DILocation(line: 604, column: 27, scope: !78)
!296 = !DILocation(line: 604, column: 24, scope: !78)
!297 = !DILocation(line: 604, column: 31, scope: !78)
!298 = !DILocation(line: 604, column: 19, scope: !78)
!299 = !DILocation(line: 606, column: 2, scope: !78)
!300 = !DILocation(line: 607, column: 2, scope: !78)
!301 = !DILocation(line: 609, column: 13, scope: !302)
!302 = distinct !DILexicalBlock(scope: !78, file: !2, line: 609, column: 6)
!303 = !DILocation(line: 609, column: 23, scope: !302)
!304 = !DILocation(line: 609, column: 6, scope: !78)
!305 = !DILocation(line: 610, column: 10, scope: !302)
!306 = !DILocation(line: 610, column: 20, scope: !302)
!307 = !DILocation(line: 610, column: 3, scope: !302)
!308 = !DILocation(line: 612, column: 6, scope: !309)
!309 = distinct !DILexicalBlock(scope: !78, file: !2, line: 612, column: 6)
!310 = !DILocation(line: 612, column: 6, scope: !78)
!311 = !DILocation(line: 613, column: 15, scope: !309)
!312 = !DILocation(line: 613, column: 6, scope: !309)
!313 = !DILocation(line: 613, column: 13, scope: !309)
!314 = !DILocation(line: 613, column: 3, scope: !309)
!315 = !DILocation(line: 615, column: 16, scope: !316)
!316 = distinct !DILexicalBlock(scope: !309, file: !2, line: 614, column: 7)
!317 = !DILocation(line: 615, column: 6, scope: !316)
!318 = !DILocation(line: 615, column: 14, scope: !316)
!319 = !DILocation(line: 616, column: 15, scope: !316)
!320 = !DILocation(line: 616, column: 6, scope: !316)
!321 = !DILocation(line: 616, column: 13, scope: !316)
!322 = !DILocation(line: 618, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !78, file: !2, line: 618, column: 6)
!324 = !DILocation(line: 618, column: 16, scope: !323)
!325 = !DILocation(line: 618, column: 6, scope: !78)
!326 = !DILocation(line: 619, column: 3, scope: !323)
!327 = !DILocation(line: 621, column: 50, scope: !78)
!328 = !DILocation(line: 621, column: 55, scope: !78)
!329 = !DILocation(line: 621, column: 53, scope: !78)
!330 = !DILocation(line: 621, column: 46, scope: !78)
!331 = !DILocation(line: 621, column: 29, scope: !78)
!332 = !DILocation(line: 621, column: 12, scope: !78)
!333 = !DILocation(line: 622, column: 19, scope: !78)
!334 = !DILocation(line: 622, column: 4, scope: !78)
!335 = !DILocation(line: 623, column: 6, scope: !336)
!336 = distinct !DILexicalBlock(scope: !78, file: !2, line: 623, column: 6)
!337 = !DILocation(line: 623, column: 8, scope: !336)
!338 = !DILocation(line: 623, column: 6, scope: !78)
!339 = !DILocation(line: 624, column: 3, scope: !336)
!340 = !DILocation(line: 625, column: 48, scope: !78)
!341 = !DILocation(line: 625, column: 53, scope: !78)
!342 = !DILocation(line: 625, column: 51, scope: !78)
!343 = !DILocation(line: 625, column: 44, scope: !78)
!344 = !DILocation(line: 625, column: 27, scope: !78)
!345 = !DILocation(line: 625, column: 12, scope: !78)
!346 = !DILocation(line: 626, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !78, file: !2, line: 626, column: 2)
!348 = !DILocation(line: 626, column: 7, scope: !347)
!349 = !DILocation(line: 626, column: 14, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !2, line: 626, column: 2)
!351 = !DILocation(line: 626, column: 18, scope: !350)
!352 = !DILocation(line: 626, column: 16, scope: !350)
!353 = !DILocation(line: 626, column: 2, scope: !347)
!354 = !DILocation(line: 627, column: 3, scope: !350)
!355 = !DILocation(line: 627, column: 5, scope: !350)
!356 = !DILocation(line: 627, column: 8, scope: !350)
!357 = !DILocation(line: 626, column: 30, scope: !350)
!358 = !DILocation(line: 626, column: 2, scope: !350)
!359 = distinct !{!359, !353, !360, !258, !259}
!360 = !DILocation(line: 627, column: 40, scope: !347)
!361 = !DILocation(line: 629, column: 2, scope: !78)
!362 = !DILocation(line: 631, column: 2, scope: !78)
!363 = !DILocation(line: 631, column: 9, scope: !78)
!364 = !DILocation(line: 631, column: 31, scope: !78)
!365 = !DILocation(line: 631, column: 22, scope: !78)
!366 = !DILocation(line: 632, column: 3, scope: !151)
!367 = !DILocation(line: 632, column: 7, scope: !151)
!368 = !DILocation(line: 632, column: 19, scope: !151)
!369 = !DILocation(line: 632, column: 34, scope: !151)
!370 = !DILocation(line: 632, column: 32, scope: !151)
!371 = !DILocation(line: 633, column: 3, scope: !151)
!372 = !DILocation(line: 633, column: 13, scope: !151)
!373 = !DILocation(line: 633, column: 20, scope: !151)
!374 = !DILocation(line: 633, column: 22, scope: !151)
!375 = !DILocation(line: 634, column: 9, scope: !151)
!376 = !DILocation(line: 634, column: 15, scope: !151)
!377 = !DILocation(line: 633, column: 38, scope: !151)
!378 = !DILocation(line: 634, column: 43, scope: !151)
!379 = !DILocation(line: 634, column: 41, scope: !151)
!380 = !DILocation(line: 635, column: 24, scope: !381)
!381 = distinct !DILexicalBlock(scope: !151, file: !2, line: 635, column: 7)
!382 = !DILocation(line: 635, column: 7, scope: !381)
!383 = !DILocation(line: 635, column: 7, scope: !151)
!384 = !DILocation(line: 636, column: 37, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !2, line: 636, column: 8)
!386 = distinct !DILexicalBlock(scope: !381, file: !2, line: 635, column: 31)
!387 = !DILocation(line: 636, column: 40, scope: !385)
!388 = !DILocation(line: 636, column: 51, scope: !385)
!389 = !DILocation(line: 637, column: 6, scope: !385)
!390 = !DILocation(line: 637, column: 10, scope: !385)
!391 = !DILocation(line: 636, column: 8, scope: !385)
!392 = !DILocation(line: 636, column: 8, scope: !386)
!393 = !DILocation(line: 638, column: 5, scope: !394)
!394 = distinct !DILexicalBlock(scope: !385, file: !2, line: 637, column: 29)
!395 = !DILocation(line: 639, column: 5, scope: !394)
!396 = !DILocation(line: 641, column: 3, scope: !386)
!397 = !DILocation(line: 642, column: 37, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !2, line: 642, column: 8)
!399 = distinct !DILexicalBlock(scope: !381, file: !2, line: 641, column: 10)
!400 = !DILocation(line: 642, column: 40, scope: !398)
!401 = !DILocation(line: 642, column: 51, scope: !398)
!402 = !DILocation(line: 642, column: 8, scope: !398)
!403 = !DILocation(line: 642, column: 8, scope: !399)
!404 = !DILocation(line: 643, column: 5, scope: !405)
!405 = distinct !DILexicalBlock(scope: !398, file: !2, line: 642, column: 58)
!406 = !DILocation(line: 644, column: 5, scope: !405)
!407 = !DILocation(line: 646, column: 12, scope: !408)
!408 = distinct !DILexicalBlock(scope: !399, file: !2, line: 646, column: 8)
!409 = !DILocation(line: 646, column: 17, scope: !408)
!410 = !DILocation(line: 646, column: 8, scope: !399)
!411 = !DILocation(line: 647, column: 5, scope: !408)
!412 = !DILocation(line: 649, column: 10, scope: !413)
!413 = distinct !DILexicalBlock(scope: !151, file: !2, line: 649, column: 7)
!414 = !DILocation(line: 649, column: 22, scope: !413)
!415 = !DILocation(line: 649, column: 7, scope: !151)
!416 = !DILocation(line: 650, column: 4, scope: !413)
!417 = !DILocation(line: 651, column: 2, scope: !78)
!418 = distinct !{!418, !362, !417, !258, !259}
!419 = !DILocation(line: 653, column: 6, scope: !420)
!420 = distinct !DILexicalBlock(scope: !78, file: !2, line: 653, column: 6)
!421 = !DILocation(line: 653, column: 6, scope: !78)
!422 = !DILocation(line: 654, column: 14, scope: !420)
!423 = !DILocation(line: 654, column: 21, scope: !420)
!424 = !DILocation(line: 654, column: 17, scope: !420)
!425 = !DILocation(line: 654, column: 4, scope: !420)
!426 = !DILocation(line: 654, column: 9, scope: !420)
!427 = !DILocation(line: 654, column: 3, scope: !420)
!428 = !DILocation(line: 655, column: 10, scope: !429)
!429 = distinct !DILexicalBlock(scope: !78, file: !2, line: 655, column: 6)
!430 = !DILocation(line: 655, column: 7, scope: !429)
!431 = !DILocation(line: 655, column: 16, scope: !429)
!432 = !DILocation(line: 655, column: 22, scope: !429)
!433 = !DILocation(line: 655, column: 31, scope: !429)
!434 = !DILocation(line: 655, column: 42, scope: !429)
!435 = !DILocation(line: 655, column: 19, scope: !429)
!436 = !DILocation(line: 655, column: 60, scope: !429)
!437 = !DILocation(line: 655, column: 54, scope: !429)
!438 = !DILocation(line: 655, column: 6, scope: !78)
!439 = !DILocation(line: 656, column: 7, scope: !429)
!440 = !DILocation(line: 656, column: 3, scope: !429)
!441 = !DILocation(line: 657, column: 1, scope: !78)
!442 = !DILocation(line: 658, column: 2, scope: !78)
!443 = !DILocation(line: 659, column: 1, scope: !78)
!444 = !DILocation(line: 660, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !78, file: !2, line: 660, column: 6)
!446 = !DILocation(line: 660, column: 6, scope: !78)
!447 = !DILocation(line: 661, column: 3, scope: !445)
!448 = !DILocation(line: 662, column: 1, scope: !78)
!449 = !DILocation(line: 663, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !78, file: !2, line: 663, column: 6)
!451 = !DILocation(line: 663, column: 6, scope: !78)
!452 = !DILocation(line: 664, column: 3, scope: !450)
!453 = !DILocation(line: 665, column: 1, scope: !78)
!454 = !DILocation(line: 666, column: 9, scope: !78)
!455 = !DILocation(line: 666, column: 2, scope: !78)
!456 = !DILocation(line: 667, column: 1, scope: !78)
!457 = distinct !DISubprogram(name: "kmalloc", scope: !19, file: !19, line: 591, type: !458, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{!56, !131, !43}
!460 = !{!461, !462, !463}
!461 = !DILocalVariable(name: "size", arg: 1, scope: !457, file: !19, line: 591, type: !131)
!462 = !DILocalVariable(name: "flags", arg: 2, scope: !457, file: !19, line: 591, type: !43)
!463 = !DILocalVariable(name: "index", scope: !464, file: !19, line: 594, type: !29)
!464 = distinct !DILexicalBlock(scope: !465, file: !19, line: 593, column: 42)
!465 = distinct !DILexicalBlock(scope: !457, file: !19, line: 593, column: 6)
!466 = !DILocation(line: 591, column: 61, scope: !457)
!467 = !DILocation(line: 591, column: 73, scope: !457)
!468 = !DILocation(line: 593, column: 27, scope: !465)
!469 = !DILocation(line: 593, column: 6, scope: !465)
!470 = !DILocation(line: 593, column: 33, scope: !465)
!471 = !DILocation(line: 593, column: 36, scope: !465)
!472 = !DILocation(line: 593, column: 6, scope: !457)
!473 = !DILocation(line: 594, column: 3, scope: !464)
!474 = !DILocation(line: 594, column: 16, scope: !464)
!475 = !DILocation(line: 596, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !464, file: !19, line: 596, column: 7)
!477 = !DILocation(line: 596, column: 12, scope: !476)
!478 = !DILocation(line: 596, column: 7, scope: !464)
!479 = !DILocation(line: 597, column: 25, scope: !476)
!480 = !DILocation(line: 597, column: 31, scope: !476)
!481 = !DILocation(line: 597, column: 11, scope: !476)
!482 = !DILocation(line: 597, column: 4, scope: !476)
!483 = !DILocation(line: 599, column: 11, scope: !464)
!484 = !DILocation(line: 599, column: 9, scope: !464)
!485 = !DILocation(line: 601, column: 33, scope: !464)
!486 = !DILocation(line: 601, column: 40, scope: !464)
!487 = !DILocation(line: 601, column: 20, scope: !464)
!488 = !DILocation(line: 601, column: 5, scope: !464)
!489 = !DILocation(line: 601, column: 51, scope: !464)
!490 = !DILocation(line: 602, column: 5, scope: !464)
!491 = !DILocation(line: 602, column: 12, scope: !464)
!492 = !DILocation(line: 600, column: 10, scope: !464)
!493 = !DILocation(line: 600, column: 3, scope: !464)
!494 = !DILocation(line: 603, column: 2, scope: !465)
!495 = !DILocation(line: 604, column: 19, scope: !457)
!496 = !DILocation(line: 604, column: 25, scope: !457)
!497 = !DILocation(line: 604, column: 9, scope: !457)
!498 = !DILocation(line: 604, column: 2, scope: !457)
!499 = !DILocation(line: 605, column: 1, scope: !457)
!500 = distinct !DISubprogram(name: "rc_init", scope: !2, file: !2, line: 101, type: !501, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !504)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !503, !83, !67, !82}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!504 = !{!505, !506, !507, !508}
!505 = !DILocalVariable(name: "rc", arg: 1, scope: !500, file: !2, line: 101, type: !503)
!506 = !DILocalVariable(name: "fill", arg: 2, scope: !500, file: !2, line: 102, type: !83)
!507 = !DILocalVariable(name: "buffer", arg: 3, scope: !500, file: !2, line: 103, type: !67)
!508 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !500, file: !2, line: 103, type: !82)
!509 = !DILocation(line: 101, column: 44, scope: !500)
!510 = !DILocation(line: 102, column: 19, scope: !500)
!511 = !DILocation(line: 103, column: 18, scope: !500)
!512 = !DILocation(line: 103, column: 31, scope: !500)
!513 = !DILocation(line: 105, column: 6, scope: !514)
!514 = distinct !DILexicalBlock(scope: !500, file: !2, line: 105, column: 6)
!515 = !DILocation(line: 105, column: 6, scope: !500)
!516 = !DILocation(line: 106, column: 14, scope: !514)
!517 = !DILocation(line: 106, column: 3, scope: !514)
!518 = !DILocation(line: 106, column: 7, scope: !514)
!519 = !DILocation(line: 106, column: 12, scope: !514)
!520 = !DILocation(line: 108, column: 3, scope: !514)
!521 = !DILocation(line: 108, column: 7, scope: !514)
!522 = !DILocation(line: 108, column: 12, scope: !514)
!523 = !DILocation(line: 109, column: 26, scope: !500)
!524 = !DILocation(line: 109, column: 2, scope: !500)
!525 = !DILocation(line: 109, column: 6, scope: !500)
!526 = !DILocation(line: 109, column: 13, scope: !500)
!527 = !DILocation(line: 110, column: 20, scope: !500)
!528 = !DILocation(line: 110, column: 2, scope: !500)
!529 = !DILocation(line: 110, column: 6, scope: !500)
!530 = !DILocation(line: 110, column: 18, scope: !500)
!531 = !DILocation(line: 111, column: 19, scope: !500)
!532 = !DILocation(line: 111, column: 23, scope: !500)
!533 = !DILocation(line: 111, column: 32, scope: !500)
!534 = !DILocation(line: 111, column: 36, scope: !500)
!535 = !DILocation(line: 111, column: 30, scope: !500)
!536 = !DILocation(line: 111, column: 2, scope: !500)
!537 = !DILocation(line: 111, column: 6, scope: !500)
!538 = !DILocation(line: 111, column: 17, scope: !500)
!539 = !DILocation(line: 112, column: 12, scope: !500)
!540 = !DILocation(line: 112, column: 16, scope: !500)
!541 = !DILocation(line: 112, column: 2, scope: !500)
!542 = !DILocation(line: 112, column: 6, scope: !500)
!543 = !DILocation(line: 112, column: 10, scope: !500)
!544 = !DILocation(line: 114, column: 2, scope: !500)
!545 = !DILocation(line: 114, column: 6, scope: !500)
!546 = !DILocation(line: 114, column: 11, scope: !500)
!547 = !DILocation(line: 115, column: 2, scope: !500)
!548 = !DILocation(line: 115, column: 6, scope: !500)
!549 = !DILocation(line: 115, column: 12, scope: !500)
!550 = !DILocation(line: 116, column: 1, scope: !500)
!551 = distinct !DISubprogram(name: "rc_read", scope: !2, file: !2, line: 91, type: !552, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !554)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !503}
!554 = !{!555}
!555 = !DILocalVariable(name: "rc", arg: 1, scope: !551, file: !2, line: 91, type: !503)
!556 = !DILocation(line: 91, column: 37, scope: !551)
!557 = !DILocation(line: 93, column: 20, scope: !551)
!558 = !DILocation(line: 93, column: 24, scope: !551)
!559 = !DILocation(line: 93, column: 37, scope: !551)
!560 = !DILocation(line: 93, column: 41, scope: !551)
!561 = !DILocation(line: 93, column: 2, scope: !551)
!562 = !DILocation(line: 93, column: 6, scope: !551)
!563 = !DILocation(line: 93, column: 18, scope: !551)
!564 = !DILocation(line: 94, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !551, file: !2, line: 94, column: 6)
!566 = !DILocation(line: 94, column: 10, scope: !565)
!567 = !DILocation(line: 94, column: 22, scope: !565)
!568 = !DILocation(line: 94, column: 6, scope: !551)
!569 = !DILocation(line: 95, column: 3, scope: !565)
!570 = !DILocation(line: 95, column: 7, scope: !565)
!571 = !DILocation(line: 96, column: 12, scope: !551)
!572 = !DILocation(line: 96, column: 16, scope: !551)
!573 = !DILocation(line: 96, column: 2, scope: !551)
!574 = !DILocation(line: 96, column: 6, scope: !551)
!575 = !DILocation(line: 96, column: 10, scope: !551)
!576 = !DILocation(line: 97, column: 19, scope: !551)
!577 = !DILocation(line: 97, column: 23, scope: !551)
!578 = !DILocation(line: 97, column: 32, scope: !551)
!579 = !DILocation(line: 97, column: 36, scope: !551)
!580 = !DILocation(line: 97, column: 30, scope: !551)
!581 = !DILocation(line: 97, column: 2, scope: !551)
!582 = !DILocation(line: 97, column: 6, scope: !551)
!583 = !DILocation(line: 97, column: 17, scope: !551)
!584 = !DILocation(line: 98, column: 1, scope: !551)
!585 = distinct !DISubprogram(name: "read_int", scope: !2, file: !2, line: 42, type: !586, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !589)
!586 = !DISubroutineType(types: !587)
!587 = !{!588, !45, !81}
!588 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!589 = !{!590, !591, !592, !593}
!590 = !DILocalVariable(name: "ptr", arg: 1, scope: !585, file: !2, line: 42, type: !45)
!591 = !DILocalVariable(name: "size", arg: 2, scope: !585, file: !2, line: 42, type: !81)
!592 = !DILocalVariable(name: "i", scope: !585, file: !2, line: 44, type: !81)
!593 = !DILocalVariable(name: "ret", scope: !585, file: !2, line: 45, type: !588)
!594 = !DILocation(line: 42, column: 47, scope: !585)
!595 = !DILocation(line: 42, column: 56, scope: !585)
!596 = !DILocation(line: 44, column: 2, scope: !585)
!597 = !DILocation(line: 44, column: 6, scope: !585)
!598 = !DILocation(line: 45, column: 2, scope: !585)
!599 = !DILocation(line: 45, column: 12, scope: !585)
!600 = !DILocation(line: 47, column: 9, scope: !601)
!601 = distinct !DILexicalBlock(scope: !585, file: !2, line: 47, column: 2)
!602 = !DILocation(line: 47, column: 7, scope: !601)
!603 = !DILocation(line: 47, column: 14, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !2, line: 47, column: 2)
!605 = !DILocation(line: 47, column: 18, scope: !604)
!606 = !DILocation(line: 47, column: 16, scope: !604)
!607 = !DILocation(line: 47, column: 2, scope: !601)
!608 = !DILocation(line: 48, column: 10, scope: !604)
!609 = !DILocation(line: 48, column: 14, scope: !604)
!610 = !DILocation(line: 48, column: 22, scope: !604)
!611 = !DILocation(line: 48, column: 26, scope: !604)
!612 = !DILocation(line: 48, column: 31, scope: !604)
!613 = !DILocation(line: 48, column: 30, scope: !604)
!614 = !DILocation(line: 48, column: 32, scope: !604)
!615 = !DILocation(line: 48, column: 20, scope: !604)
!616 = !DILocation(line: 48, column: 7, scope: !604)
!617 = !DILocation(line: 48, column: 3, scope: !604)
!618 = !DILocation(line: 47, column: 25, scope: !604)
!619 = !DILocation(line: 47, column: 2, scope: !604)
!620 = distinct !{!620, !607, !621, !258, !259}
!621 = !DILocation(line: 48, column: 34, scope: !601)
!622 = !DILocation(line: 49, column: 9, scope: !585)
!623 = !DILocation(line: 50, column: 1, scope: !585)
!624 = !DILocation(line: 49, column: 2, scope: !585)
!625 = !DISubprogram(name: "vmalloc", scope: !626, file: !626, line: 140, type: !627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!626 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!627 = !DISubroutineType(types: !628)
!628 = !{!56, !62}
!629 = distinct !DISubprogram(name: "rc_init_code", scope: !2, file: !2, line: 118, type: !552, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !630)
!630 = !{!631, !632}
!631 = !DILocalVariable(name: "rc", arg: 1, scope: !629, file: !2, line: 118, type: !503)
!632 = !DILocalVariable(name: "i", scope: !629, file: !2, line: 120, type: !81)
!633 = !DILocation(line: 118, column: 49, scope: !629)
!634 = !DILocation(line: 120, column: 2, scope: !629)
!635 = !DILocation(line: 120, column: 6, scope: !629)
!636 = !DILocation(line: 122, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !629, file: !2, line: 122, column: 2)
!638 = !DILocation(line: 122, column: 7, scope: !637)
!639 = !DILocation(line: 122, column: 14, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !2, line: 122, column: 2)
!641 = !DILocation(line: 122, column: 16, scope: !640)
!642 = !DILocation(line: 122, column: 2, scope: !637)
!643 = !DILocation(line: 123, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !2, line: 123, column: 7)
!645 = distinct !DILexicalBlock(scope: !640, file: !2, line: 122, column: 26)
!646 = !DILocation(line: 123, column: 11, scope: !644)
!647 = !DILocation(line: 123, column: 18, scope: !644)
!648 = !DILocation(line: 123, column: 22, scope: !644)
!649 = !DILocation(line: 123, column: 15, scope: !644)
!650 = !DILocation(line: 123, column: 7, scope: !645)
!651 = !DILocation(line: 124, column: 12, scope: !644)
!652 = !DILocation(line: 124, column: 4, scope: !644)
!653 = !DILocation(line: 125, column: 15, scope: !645)
!654 = !DILocation(line: 125, column: 19, scope: !645)
!655 = !DILocation(line: 125, column: 24, scope: !645)
!656 = !DILocation(line: 125, column: 33, scope: !645)
!657 = !DILocation(line: 125, column: 37, scope: !645)
!658 = !DILocation(line: 125, column: 40, scope: !645)
!659 = !DILocation(line: 125, column: 32, scope: !645)
!660 = !DILocation(line: 125, column: 30, scope: !645)
!661 = !DILocation(line: 125, column: 3, scope: !645)
!662 = !DILocation(line: 125, column: 7, scope: !645)
!663 = !DILocation(line: 125, column: 12, scope: !645)
!664 = !DILocation(line: 126, column: 2, scope: !645)
!665 = !DILocation(line: 122, column: 22, scope: !640)
!666 = !DILocation(line: 122, column: 2, scope: !640)
!667 = distinct !{!667, !642, !668, !258, !259}
!668 = !DILocation(line: 126, column: 2, scope: !637)
!669 = !DILocation(line: 127, column: 1, scope: !629)
!670 = distinct !DISubprogram(name: "get_pos", scope: !2, file: !2, line: 292, type: !671, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !674)
!671 = !DISubroutineType(types: !672)
!672 = !{!131, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!674 = !{!675}
!675 = !DILocalVariable(name: "wr", arg: 1, scope: !670, file: !2, line: 292, type: !673)
!676 = !DILocation(line: 292, column: 50, scope: !670)
!677 = !DILocation(line: 295, column: 3, scope: !670)
!678 = !DILocation(line: 295, column: 7, scope: !670)
!679 = !DILocation(line: 295, column: 20, scope: !670)
!680 = !DILocation(line: 295, column: 24, scope: !670)
!681 = !DILocation(line: 295, column: 18, scope: !670)
!682 = !DILocation(line: 294, column: 2, scope: !670)
!683 = distinct !DISubprogram(name: "rc_is_bit_0", scope: !2, file: !2, line: 154, type: !684, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{!81, !503, !57}
!686 = !{!687, !688, !689}
!687 = !DILocalVariable(name: "rc", arg: 1, scope: !683, file: !2, line: 154, type: !503)
!688 = !DILocalVariable(name: "p", arg: 2, scope: !683, file: !2, line: 154, type: !57)
!689 = !DILocalVariable(name: "t", scope: !683, file: !2, line: 156, type: !47)
!690 = !DILocation(line: 154, column: 47, scope: !683)
!691 = !DILocation(line: 154, column: 61, scope: !683)
!692 = !DILocation(line: 156, column: 2, scope: !683)
!693 = !DILocation(line: 156, column: 11, scope: !683)
!694 = !DILocation(line: 156, column: 34, scope: !683)
!695 = !DILocation(line: 156, column: 38, scope: !683)
!696 = !DILocation(line: 156, column: 15, scope: !683)
!697 = !DILocation(line: 157, column: 9, scope: !683)
!698 = !DILocation(line: 157, column: 13, scope: !683)
!699 = !DILocation(line: 157, column: 20, scope: !683)
!700 = !DILocation(line: 157, column: 18, scope: !683)
!701 = !DILocation(line: 158, column: 1, scope: !683)
!702 = !DILocation(line: 157, column: 2, scope: !683)
!703 = distinct !DISubprogram(name: "process_bit0", scope: !2, file: !2, line: 347, type: !704, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !707)
!704 = !DISubroutineType(types: !705)
!705 = !{!81, !673, !503, !706, !57, !81, !57, !81, !47}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !720, !722, !723}
!708 = !DILocalVariable(name: "wr", arg: 1, scope: !703, file: !2, line: 347, type: !673)
!709 = !DILocalVariable(name: "rc", arg: 2, scope: !703, file: !2, line: 347, type: !503)
!710 = !DILocalVariable(name: "cst", arg: 3, scope: !703, file: !2, line: 348, type: !706)
!711 = !DILocalVariable(name: "p", arg: 4, scope: !703, file: !2, line: 348, type: !57)
!712 = !DILocalVariable(name: "pos_state", arg: 5, scope: !703, file: !2, line: 349, type: !81)
!713 = !DILocalVariable(name: "prob", arg: 6, scope: !703, file: !2, line: 349, type: !57)
!714 = !DILocalVariable(name: "lc", arg: 7, scope: !703, file: !2, line: 350, type: !81)
!715 = !DILocalVariable(name: "literal_pos_mask", arg: 8, scope: !703, file: !2, line: 350, type: !47)
!716 = !DILocalVariable(name: "mi", scope: !703, file: !2, line: 351, type: !81)
!717 = !DILocalVariable(name: "match_byte", scope: !718, file: !2, line: 360, type: !81)
!718 = distinct !DILexicalBlock(scope: !719, file: !2, line: 359, column: 41)
!719 = distinct !DILexicalBlock(scope: !703, file: !2, line: 359, column: 6)
!720 = !DILocalVariable(name: "bit", scope: !721, file: !2, line: 362, type: !81)
!721 = distinct !DILexicalBlock(scope: !718, file: !2, line: 361, column: 6)
!722 = !DILocalVariable(name: "prob_lit", scope: !721, file: !2, line: 363, type: !57)
!723 = !DILocalVariable(name: "prob_lit", scope: !724, file: !2, line: 378, type: !57)
!724 = distinct !DILexicalBlock(scope: !703, file: !2, line: 377, column: 21)
!725 = !DILocation(line: 347, column: 52, scope: !703)
!726 = !DILocation(line: 347, column: 67, scope: !703)
!727 = !DILocation(line: 348, column: 25, scope: !703)
!728 = !DILocation(line: 348, column: 40, scope: !703)
!729 = !DILocation(line: 349, column: 14, scope: !703)
!730 = !DILocation(line: 349, column: 35, scope: !703)
!731 = !DILocation(line: 350, column: 14, scope: !703)
!732 = !DILocation(line: 350, column: 27, scope: !703)
!733 = !DILocation(line: 351, column: 2, scope: !703)
!734 = !DILocation(line: 351, column: 6, scope: !703)
!735 = !DILocation(line: 352, column: 18, scope: !703)
!736 = !DILocation(line: 352, column: 22, scope: !703)
!737 = !DILocation(line: 352, column: 2, scope: !703)
!738 = !DILocation(line: 353, column: 10, scope: !703)
!739 = !DILocation(line: 353, column: 12, scope: !703)
!740 = !DILocation(line: 355, column: 17, scope: !703)
!741 = !DILocation(line: 355, column: 9, scope: !703)
!742 = !DILocation(line: 355, column: 23, scope: !703)
!743 = !DILocation(line: 355, column: 21, scope: !703)
!744 = !DILocation(line: 355, column: 44, scope: !703)
!745 = !DILocation(line: 355, column: 41, scope: !703)
!746 = !DILocation(line: 356, column: 10, scope: !703)
!747 = !DILocation(line: 356, column: 14, scope: !703)
!748 = !DILocation(line: 356, column: 36, scope: !703)
!749 = !DILocation(line: 356, column: 34, scope: !703)
!750 = !DILocation(line: 356, column: 28, scope: !703)
!751 = !DILocation(line: 356, column: 9, scope: !703)
!752 = !DILocation(line: 356, column: 7, scope: !703)
!753 = !DILocation(line: 355, column: 4, scope: !703)
!754 = !DILocation(line: 353, column: 27, scope: !703)
!755 = !DILocation(line: 353, column: 7, scope: !703)
!756 = !DILocation(line: 359, column: 6, scope: !719)
!757 = !DILocation(line: 359, column: 11, scope: !719)
!758 = !DILocation(line: 359, column: 17, scope: !719)
!759 = !DILocation(line: 359, column: 6, scope: !703)
!760 = !DILocation(line: 360, column: 3, scope: !718)
!761 = !DILocation(line: 360, column: 7, scope: !718)
!762 = !DILocation(line: 360, column: 34, scope: !718)
!763 = !DILocation(line: 360, column: 38, scope: !718)
!764 = !DILocation(line: 360, column: 43, scope: !718)
!765 = !DILocation(line: 360, column: 20, scope: !718)
!766 = !DILocation(line: 361, column: 3, scope: !718)
!767 = !DILocation(line: 362, column: 4, scope: !721)
!768 = !DILocation(line: 362, column: 8, scope: !721)
!769 = !DILocation(line: 363, column: 4, scope: !721)
!770 = !DILocation(line: 363, column: 14, scope: !721)
!771 = !DILocation(line: 365, column: 15, scope: !721)
!772 = !DILocation(line: 366, column: 10, scope: !721)
!773 = !DILocation(line: 366, column: 21, scope: !721)
!774 = !DILocation(line: 366, column: 8, scope: !721)
!775 = !DILocation(line: 367, column: 15, scope: !721)
!776 = !DILocation(line: 367, column: 20, scope: !721)
!777 = !DILocation(line: 367, column: 30, scope: !721)
!778 = !DILocation(line: 367, column: 28, scope: !721)
!779 = !DILocation(line: 367, column: 36, scope: !721)
!780 = !DILocation(line: 367, column: 34, scope: !721)
!781 = !DILocation(line: 367, column: 13, scope: !721)
!782 = !DILocation(line: 368, column: 19, scope: !783)
!783 = distinct !DILexicalBlock(scope: !721, file: !2, line: 368, column: 8)
!784 = !DILocation(line: 368, column: 23, scope: !783)
!785 = !DILocation(line: 368, column: 8, scope: !783)
!786 = !DILocation(line: 368, column: 8, scope: !721)
!787 = !DILocation(line: 369, column: 10, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !2, line: 369, column: 9)
!789 = distinct !DILexicalBlock(scope: !783, file: !2, line: 368, column: 39)
!790 = !DILocation(line: 369, column: 9, scope: !789)
!791 = !DILocation(line: 370, column: 6, scope: !788)
!792 = !DILocation(line: 371, column: 4, scope: !789)
!793 = !DILocation(line: 372, column: 9, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !2, line: 372, column: 9)
!795 = distinct !DILexicalBlock(scope: !783, file: !2, line: 371, column: 11)
!796 = !DILocation(line: 372, column: 9, scope: !795)
!797 = !DILocation(line: 373, column: 6, scope: !794)
!798 = !DILocation(line: 375, column: 3, scope: !718)
!799 = !DILocation(line: 375, column: 3, scope: !721)
!800 = !DILocation(line: 375, column: 12, scope: !718)
!801 = !DILocation(line: 375, column: 15, scope: !718)
!802 = distinct !{!802, !766, !803, !258, !259}
!803 = !DILocation(line: 375, column: 22, scope: !718)
!804 = !DILocation(line: 376, column: 2, scope: !719)
!805 = !DILocation(line: 376, column: 2, scope: !718)
!806 = !DILocation(line: 377, column: 2, scope: !703)
!807 = !DILocation(line: 377, column: 9, scope: !703)
!808 = !DILocation(line: 377, column: 12, scope: !703)
!809 = !DILocation(line: 378, column: 3, scope: !724)
!810 = !DILocation(line: 378, column: 13, scope: !724)
!811 = !DILocation(line: 378, column: 24, scope: !724)
!812 = !DILocation(line: 378, column: 31, scope: !724)
!813 = !DILocation(line: 378, column: 29, scope: !724)
!814 = !DILocation(line: 379, column: 14, scope: !724)
!815 = !DILocation(line: 379, column: 18, scope: !724)
!816 = !DILocation(line: 379, column: 3, scope: !724)
!817 = !DILocation(line: 380, column: 2, scope: !703)
!818 = distinct !{!818, !806, !817, !258, !259}
!819 = !DILocation(line: 381, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !703, file: !2, line: 381, column: 6)
!821 = !DILocation(line: 381, column: 11, scope: !820)
!822 = !DILocation(line: 381, column: 17, scope: !820)
!823 = !DILocation(line: 381, column: 6, scope: !703)
!824 = !DILocation(line: 382, column: 3, scope: !820)
!825 = !DILocation(line: 382, column: 8, scope: !820)
!826 = !DILocation(line: 382, column: 14, scope: !820)
!827 = !DILocation(line: 383, column: 11, scope: !828)
!828 = distinct !DILexicalBlock(scope: !820, file: !2, line: 383, column: 11)
!829 = !DILocation(line: 383, column: 16, scope: !828)
!830 = !DILocation(line: 383, column: 22, scope: !828)
!831 = !DILocation(line: 383, column: 11, scope: !820)
!832 = !DILocation(line: 384, column: 3, scope: !828)
!833 = !DILocation(line: 384, column: 8, scope: !828)
!834 = !DILocation(line: 384, column: 14, scope: !828)
!835 = !DILocation(line: 386, column: 3, scope: !828)
!836 = !DILocation(line: 386, column: 8, scope: !828)
!837 = !DILocation(line: 386, column: 14, scope: !828)
!838 = !DILocation(line: 388, column: 20, scope: !703)
!839 = !DILocation(line: 388, column: 24, scope: !703)
!840 = !DILocation(line: 388, column: 9, scope: !703)
!841 = !DILocation(line: 389, column: 1, scope: !703)
!842 = !DILocation(line: 388, column: 2, scope: !703)
!843 = distinct !DISubprogram(name: "process_bit1", scope: !2, file: !2, line: 391, type: !844, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{!81, !673, !503, !706, !57, !81, !57}
!846 = !{!847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !862, !865, !868}
!847 = !DILocalVariable(name: "wr", arg: 1, scope: !843, file: !2, line: 391, type: !673)
!848 = !DILocalVariable(name: "rc", arg: 2, scope: !843, file: !2, line: 391, type: !503)
!849 = !DILocalVariable(name: "cst", arg: 3, scope: !843, file: !2, line: 392, type: !706)
!850 = !DILocalVariable(name: "p", arg: 4, scope: !843, file: !2, line: 392, type: !57)
!851 = !DILocalVariable(name: "pos_state", arg: 5, scope: !843, file: !2, line: 393, type: !81)
!852 = !DILocalVariable(name: "prob", arg: 6, scope: !843, file: !2, line: 393, type: !57)
!853 = !DILocalVariable(name: "offset", scope: !843, file: !2, line: 394, type: !81)
!854 = !DILocalVariable(name: "prob_len", scope: !843, file: !2, line: 395, type: !57)
!855 = !DILocalVariable(name: "num_bits", scope: !843, file: !2, line: 396, type: !81)
!856 = !DILocalVariable(name: "len", scope: !843, file: !2, line: 397, type: !81)
!857 = !DILocalVariable(name: "distance", scope: !858, file: !2, line: 427, type: !47)
!858 = distinct !DILexicalBlock(scope: !859, file: !2, line: 426, column: 10)
!859 = distinct !DILexicalBlock(scope: !860, file: !2, line: 411, column: 7)
!860 = distinct !DILexicalBlock(scope: !861, file: !2, line: 408, column: 9)
!861 = distinct !DILexicalBlock(scope: !843, file: !2, line: 401, column: 6)
!862 = !DILocalVariable(name: "pos_slot", scope: !863, file: !2, line: 485, type: !81)
!863 = distinct !DILexicalBlock(scope: !864, file: !2, line: 484, column: 22)
!864 = distinct !DILexicalBlock(scope: !843, file: !2, line: 484, column: 6)
!865 = !DILocalVariable(name: "i", scope: !866, file: !2, line: 498, type: !81)
!866 = distinct !DILexicalBlock(scope: !867, file: !2, line: 497, column: 47)
!867 = distinct !DILexicalBlock(scope: !863, file: !2, line: 497, column: 7)
!868 = !DILocalVariable(name: "mi", scope: !866, file: !2, line: 498, type: !81)
!869 = !DILocation(line: 391, column: 52, scope: !843)
!870 = !DILocation(line: 391, column: 67, scope: !843)
!871 = !DILocation(line: 392, column: 25, scope: !843)
!872 = !DILocation(line: 392, column: 40, scope: !843)
!873 = !DILocation(line: 393, column: 14, scope: !843)
!874 = !DILocation(line: 393, column: 35, scope: !843)
!875 = !DILocation(line: 394, column: 2, scope: !843)
!876 = !DILocation(line: 394, column: 6, scope: !843)
!877 = !DILocation(line: 395, column: 2, scope: !843)
!878 = !DILocation(line: 395, column: 12, scope: !843)
!879 = !DILocation(line: 396, column: 2, scope: !843)
!880 = !DILocation(line: 396, column: 6, scope: !843)
!881 = !DILocation(line: 397, column: 2, scope: !843)
!882 = !DILocation(line: 397, column: 6, scope: !843)
!883 = !DILocation(line: 399, column: 18, scope: !843)
!884 = !DILocation(line: 399, column: 22, scope: !843)
!885 = !DILocation(line: 399, column: 2, scope: !843)
!886 = !DILocation(line: 400, column: 9, scope: !843)
!887 = !DILocation(line: 400, column: 11, scope: !843)
!888 = !DILocation(line: 400, column: 27, scope: !843)
!889 = !DILocation(line: 400, column: 32, scope: !843)
!890 = !DILocation(line: 400, column: 25, scope: !843)
!891 = !DILocation(line: 400, column: 7, scope: !843)
!892 = !DILocation(line: 401, column: 18, scope: !861)
!893 = !DILocation(line: 401, column: 22, scope: !861)
!894 = !DILocation(line: 401, column: 6, scope: !861)
!895 = !DILocation(line: 401, column: 6, scope: !843)
!896 = !DILocation(line: 402, column: 19, scope: !897)
!897 = distinct !DILexicalBlock(scope: !861, file: !2, line: 401, column: 29)
!898 = !DILocation(line: 402, column: 23, scope: !897)
!899 = !DILocation(line: 402, column: 3, scope: !897)
!900 = !DILocation(line: 403, column: 15, scope: !897)
!901 = !DILocation(line: 403, column: 20, scope: !897)
!902 = !DILocation(line: 403, column: 3, scope: !897)
!903 = !DILocation(line: 403, column: 8, scope: !897)
!904 = !DILocation(line: 403, column: 13, scope: !897)
!905 = !DILocation(line: 404, column: 15, scope: !897)
!906 = !DILocation(line: 404, column: 20, scope: !897)
!907 = !DILocation(line: 404, column: 3, scope: !897)
!908 = !DILocation(line: 404, column: 8, scope: !897)
!909 = !DILocation(line: 404, column: 13, scope: !897)
!910 = !DILocation(line: 405, column: 15, scope: !897)
!911 = !DILocation(line: 405, column: 20, scope: !897)
!912 = !DILocation(line: 405, column: 3, scope: !897)
!913 = !DILocation(line: 405, column: 8, scope: !897)
!914 = !DILocation(line: 405, column: 13, scope: !897)
!915 = !DILocation(line: 406, column: 16, scope: !897)
!916 = !DILocation(line: 406, column: 21, scope: !897)
!917 = !DILocation(line: 406, column: 27, scope: !897)
!918 = !DILocation(line: 406, column: 3, scope: !897)
!919 = !DILocation(line: 406, column: 8, scope: !897)
!920 = !DILocation(line: 406, column: 14, scope: !897)
!921 = !DILocation(line: 407, column: 10, scope: !897)
!922 = !DILocation(line: 407, column: 12, scope: !897)
!923 = !DILocation(line: 407, column: 8, scope: !897)
!924 = !DILocation(line: 408, column: 2, scope: !897)
!925 = !DILocation(line: 409, column: 19, scope: !860)
!926 = !DILocation(line: 409, column: 23, scope: !860)
!927 = !DILocation(line: 409, column: 3, scope: !860)
!928 = !DILocation(line: 410, column: 10, scope: !860)
!929 = !DILocation(line: 410, column: 12, scope: !860)
!930 = !DILocation(line: 410, column: 31, scope: !860)
!931 = !DILocation(line: 410, column: 36, scope: !860)
!932 = !DILocation(line: 410, column: 29, scope: !860)
!933 = !DILocation(line: 410, column: 8, scope: !860)
!934 = !DILocation(line: 411, column: 19, scope: !859)
!935 = !DILocation(line: 411, column: 23, scope: !859)
!936 = !DILocation(line: 411, column: 7, scope: !859)
!937 = !DILocation(line: 411, column: 7, scope: !860)
!938 = !DILocation(line: 412, column: 20, scope: !939)
!939 = distinct !DILexicalBlock(scope: !859, file: !2, line: 411, column: 30)
!940 = !DILocation(line: 412, column: 24, scope: !939)
!941 = !DILocation(line: 412, column: 4, scope: !939)
!942 = !DILocation(line: 413, column: 12, scope: !939)
!943 = !DILocation(line: 413, column: 14, scope: !939)
!944 = !DILocation(line: 414, column: 8, scope: !939)
!945 = !DILocation(line: 414, column: 13, scope: !939)
!946 = !DILocation(line: 414, column: 19, scope: !939)
!947 = !DILocation(line: 414, column: 5, scope: !939)
!948 = !DILocation(line: 416, column: 5, scope: !939)
!949 = !DILocation(line: 415, column: 31, scope: !939)
!950 = !DILocation(line: 413, column: 9, scope: !939)
!951 = !DILocation(line: 417, column: 20, scope: !952)
!952 = distinct !DILexicalBlock(scope: !939, file: !2, line: 417, column: 8)
!953 = !DILocation(line: 417, column: 24, scope: !952)
!954 = !DILocation(line: 417, column: 8, scope: !952)
!955 = !DILocation(line: 417, column: 8, scope: !939)
!956 = !DILocation(line: 418, column: 21, scope: !957)
!957 = distinct !DILexicalBlock(scope: !952, file: !2, line: 417, column: 31)
!958 = !DILocation(line: 418, column: 25, scope: !957)
!959 = !DILocation(line: 418, column: 5, scope: !957)
!960 = !DILocation(line: 420, column: 18, scope: !957)
!961 = !DILocation(line: 420, column: 23, scope: !957)
!962 = !DILocation(line: 420, column: 29, scope: !957)
!963 = !DILocation(line: 420, column: 5, scope: !957)
!964 = !DILocation(line: 420, column: 10, scope: !957)
!965 = !DILocation(line: 420, column: 16, scope: !957)
!966 = !DILocation(line: 422, column: 22, scope: !957)
!967 = !DILocation(line: 422, column: 26, scope: !957)
!968 = !DILocation(line: 422, column: 31, scope: !957)
!969 = !DILocation(line: 422, column: 12, scope: !957)
!970 = !DILocation(line: 422, column: 5, scope: !957)
!971 = !DILocation(line: 424, column: 21, scope: !972)
!972 = distinct !DILexicalBlock(scope: !952, file: !2, line: 423, column: 11)
!973 = !DILocation(line: 424, column: 25, scope: !972)
!974 = !DILocation(line: 424, column: 5, scope: !972)
!975 = !DILocation(line: 426, column: 3, scope: !939)
!976 = !DILocation(line: 427, column: 4, scope: !858)
!977 = !DILocation(line: 427, column: 13, scope: !858)
!978 = !DILocation(line: 429, column: 20, scope: !858)
!979 = !DILocation(line: 429, column: 24, scope: !858)
!980 = !DILocation(line: 429, column: 4, scope: !858)
!981 = !DILocation(line: 430, column: 11, scope: !858)
!982 = !DILocation(line: 430, column: 13, scope: !858)
!983 = !DILocation(line: 430, column: 32, scope: !858)
!984 = !DILocation(line: 430, column: 37, scope: !858)
!985 = !DILocation(line: 430, column: 30, scope: !858)
!986 = !DILocation(line: 430, column: 9, scope: !858)
!987 = !DILocation(line: 431, column: 20, scope: !988)
!988 = distinct !DILexicalBlock(scope: !858, file: !2, line: 431, column: 8)
!989 = !DILocation(line: 431, column: 24, scope: !988)
!990 = !DILocation(line: 431, column: 8, scope: !988)
!991 = !DILocation(line: 431, column: 8, scope: !858)
!992 = !DILocation(line: 432, column: 21, scope: !993)
!993 = distinct !DILexicalBlock(scope: !988, file: !2, line: 431, column: 31)
!994 = !DILocation(line: 432, column: 25, scope: !993)
!995 = !DILocation(line: 432, column: 5, scope: !993)
!996 = !DILocation(line: 433, column: 16, scope: !993)
!997 = !DILocation(line: 433, column: 21, scope: !993)
!998 = !DILocation(line: 433, column: 14, scope: !993)
!999 = !DILocation(line: 434, column: 4, scope: !993)
!1000 = !DILocation(line: 435, column: 21, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !988, file: !2, line: 434, column: 11)
!1002 = !DILocation(line: 435, column: 25, scope: !1001)
!1003 = !DILocation(line: 435, column: 5, scope: !1001)
!1004 = !DILocation(line: 436, column: 12, scope: !1001)
!1005 = !DILocation(line: 436, column: 14, scope: !1001)
!1006 = !DILocation(line: 436, column: 33, scope: !1001)
!1007 = !DILocation(line: 436, column: 38, scope: !1001)
!1008 = !DILocation(line: 436, column: 31, scope: !1001)
!1009 = !DILocation(line: 436, column: 10, scope: !1001)
!1010 = !DILocation(line: 437, column: 21, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 437, column: 9)
!1012 = !DILocation(line: 437, column: 25, scope: !1011)
!1013 = !DILocation(line: 437, column: 9, scope: !1011)
!1014 = !DILocation(line: 437, column: 9, scope: !1001)
!1015 = !DILocation(line: 438, column: 22, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 437, column: 32)
!1017 = !DILocation(line: 438, column: 26, scope: !1016)
!1018 = !DILocation(line: 438, column: 6, scope: !1016)
!1019 = !DILocation(line: 439, column: 17, scope: !1016)
!1020 = !DILocation(line: 439, column: 22, scope: !1016)
!1021 = !DILocation(line: 439, column: 15, scope: !1016)
!1022 = !DILocation(line: 440, column: 5, scope: !1016)
!1023 = !DILocation(line: 441, column: 22, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 440, column: 12)
!1025 = !DILocation(line: 441, column: 26, scope: !1024)
!1026 = !DILocation(line: 441, column: 6, scope: !1024)
!1027 = !DILocation(line: 442, column: 17, scope: !1024)
!1028 = !DILocation(line: 442, column: 22, scope: !1024)
!1029 = !DILocation(line: 442, column: 15, scope: !1024)
!1030 = !DILocation(line: 443, column: 18, scope: !1024)
!1031 = !DILocation(line: 443, column: 23, scope: !1024)
!1032 = !DILocation(line: 443, column: 6, scope: !1024)
!1033 = !DILocation(line: 443, column: 11, scope: !1024)
!1034 = !DILocation(line: 443, column: 16, scope: !1024)
!1035 = !DILocation(line: 445, column: 17, scope: !1001)
!1036 = !DILocation(line: 445, column: 22, scope: !1001)
!1037 = !DILocation(line: 445, column: 5, scope: !1001)
!1038 = !DILocation(line: 445, column: 10, scope: !1001)
!1039 = !DILocation(line: 445, column: 15, scope: !1001)
!1040 = !DILocation(line: 447, column: 16, scope: !858)
!1041 = !DILocation(line: 447, column: 21, scope: !858)
!1042 = !DILocation(line: 447, column: 4, scope: !858)
!1043 = !DILocation(line: 447, column: 9, scope: !858)
!1044 = !DILocation(line: 447, column: 14, scope: !858)
!1045 = !DILocation(line: 448, column: 16, scope: !858)
!1046 = !DILocation(line: 448, column: 4, scope: !858)
!1047 = !DILocation(line: 448, column: 9, scope: !858)
!1048 = !DILocation(line: 448, column: 14, scope: !858)
!1049 = !DILocation(line: 449, column: 3, scope: !859)
!1050 = !DILocation(line: 450, column: 16, scope: !860)
!1051 = !DILocation(line: 450, column: 21, scope: !860)
!1052 = !DILocation(line: 450, column: 27, scope: !860)
!1053 = !DILocation(line: 450, column: 3, scope: !860)
!1054 = !DILocation(line: 450, column: 8, scope: !860)
!1055 = !DILocation(line: 450, column: 14, scope: !860)
!1056 = !DILocation(line: 451, column: 10, scope: !860)
!1057 = !DILocation(line: 451, column: 12, scope: !860)
!1058 = !DILocation(line: 451, column: 8, scope: !860)
!1059 = !DILocation(line: 454, column: 13, scope: !843)
!1060 = !DILocation(line: 454, column: 18, scope: !843)
!1061 = !DILocation(line: 454, column: 11, scope: !843)
!1062 = !DILocation(line: 455, column: 18, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !843, file: !2, line: 455, column: 6)
!1064 = !DILocation(line: 455, column: 22, scope: !1063)
!1065 = !DILocation(line: 455, column: 6, scope: !1063)
!1066 = !DILocation(line: 455, column: 6, scope: !843)
!1067 = !DILocation(line: 456, column: 19, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 455, column: 33)
!1069 = !DILocation(line: 456, column: 23, scope: !1068)
!1070 = !DILocation(line: 456, column: 3, scope: !1068)
!1071 = !DILocation(line: 457, column: 15, scope: !1068)
!1072 = !DILocation(line: 457, column: 20, scope: !1068)
!1073 = !DILocation(line: 458, column: 11, scope: !1068)
!1074 = !DILocation(line: 458, column: 21, scope: !1068)
!1075 = !DILocation(line: 458, column: 8, scope: !1068)
!1076 = !DILocation(line: 457, column: 12, scope: !1068)
!1077 = !DILocation(line: 460, column: 10, scope: !1068)
!1078 = !DILocation(line: 461, column: 12, scope: !1068)
!1079 = !DILocation(line: 462, column: 2, scope: !1068)
!1080 = !DILocation(line: 463, column: 19, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 462, column: 9)
!1082 = !DILocation(line: 463, column: 23, scope: !1081)
!1083 = !DILocation(line: 463, column: 3, scope: !1081)
!1084 = !DILocation(line: 464, column: 14, scope: !1081)
!1085 = !DILocation(line: 464, column: 19, scope: !1081)
!1086 = !DILocation(line: 464, column: 12, scope: !1081)
!1087 = !DILocation(line: 465, column: 19, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 465, column: 7)
!1089 = !DILocation(line: 465, column: 23, scope: !1088)
!1090 = !DILocation(line: 465, column: 7, scope: !1088)
!1091 = !DILocation(line: 465, column: 7, scope: !1081)
!1092 = !DILocation(line: 466, column: 20, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 465, column: 34)
!1094 = !DILocation(line: 466, column: 24, scope: !1093)
!1095 = !DILocation(line: 466, column: 4, scope: !1093)
!1096 = !DILocation(line: 467, column: 16, scope: !1093)
!1097 = !DILocation(line: 467, column: 21, scope: !1093)
!1098 = !DILocation(line: 468, column: 12, scope: !1093)
!1099 = !DILocation(line: 468, column: 22, scope: !1093)
!1100 = !DILocation(line: 468, column: 9, scope: !1093)
!1101 = !DILocation(line: 467, column: 13, scope: !1093)
!1102 = !DILocation(line: 470, column: 11, scope: !1093)
!1103 = !DILocation(line: 471, column: 13, scope: !1093)
!1104 = !DILocation(line: 472, column: 3, scope: !1093)
!1105 = !DILocation(line: 473, column: 20, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 472, column: 10)
!1107 = !DILocation(line: 473, column: 24, scope: !1106)
!1108 = !DILocation(line: 473, column: 4, scope: !1106)
!1109 = !DILocation(line: 474, column: 15, scope: !1106)
!1110 = !DILocation(line: 474, column: 20, scope: !1106)
!1111 = !DILocation(line: 474, column: 13, scope: !1106)
!1112 = !DILocation(line: 475, column: 11, scope: !1106)
!1113 = !DILocation(line: 477, column: 13, scope: !1106)
!1114 = !DILocation(line: 481, column: 21, scope: !843)
!1115 = !DILocation(line: 481, column: 25, scope: !843)
!1116 = !DILocation(line: 481, column: 35, scope: !843)
!1117 = !DILocation(line: 481, column: 2, scope: !843)
!1118 = !DILocation(line: 482, column: 9, scope: !843)
!1119 = !DILocation(line: 482, column: 6, scope: !843)
!1120 = !DILocation(line: 484, column: 6, scope: !864)
!1121 = !DILocation(line: 484, column: 11, scope: !864)
!1122 = !DILocation(line: 484, column: 17, scope: !864)
!1123 = !DILocation(line: 484, column: 6, scope: !843)
!1124 = !DILocation(line: 485, column: 3, scope: !863)
!1125 = !DILocation(line: 485, column: 7, scope: !863)
!1126 = !DILocation(line: 487, column: 3, scope: !863)
!1127 = !DILocation(line: 487, column: 8, scope: !863)
!1128 = !DILocation(line: 487, column: 14, scope: !863)
!1129 = !DILocation(line: 489, column: 4, scope: !863)
!1130 = !DILocation(line: 489, column: 6, scope: !863)
!1131 = !DILocation(line: 490, column: 6, scope: !863)
!1132 = !DILocation(line: 490, column: 10, scope: !863)
!1133 = !DILocation(line: 491, column: 35, scope: !863)
!1134 = !DILocation(line: 493, column: 5, scope: !863)
!1135 = !DILocation(line: 489, column: 22, scope: !863)
!1136 = !DILocation(line: 488, column: 8, scope: !863)
!1137 = !DILocation(line: 494, column: 22, scope: !863)
!1138 = !DILocation(line: 494, column: 26, scope: !863)
!1139 = !DILocation(line: 494, column: 3, scope: !863)
!1140 = !DILocation(line: 497, column: 7, scope: !867)
!1141 = !DILocation(line: 497, column: 16, scope: !867)
!1142 = !DILocation(line: 497, column: 7, scope: !863)
!1143 = !DILocation(line: 498, column: 4, scope: !866)
!1144 = !DILocation(line: 498, column: 8, scope: !866)
!1145 = !DILocation(line: 498, column: 11, scope: !866)
!1146 = !DILocation(line: 499, column: 16, scope: !866)
!1147 = !DILocation(line: 499, column: 25, scope: !866)
!1148 = !DILocation(line: 499, column: 31, scope: !866)
!1149 = !DILocation(line: 499, column: 13, scope: !866)
!1150 = !DILocation(line: 500, column: 21, scope: !866)
!1151 = !DILocation(line: 500, column: 30, scope: !866)
!1152 = !DILocation(line: 500, column: 18, scope: !866)
!1153 = !DILocation(line: 500, column: 4, scope: !866)
!1154 = !DILocation(line: 500, column: 9, scope: !866)
!1155 = !DILocation(line: 500, column: 14, scope: !866)
!1156 = !DILocation(line: 501, column: 8, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !866, file: !2, line: 501, column: 8)
!1158 = !DILocation(line: 501, column: 17, scope: !1157)
!1159 = !DILocation(line: 501, column: 8, scope: !866)
!1160 = !DILocation(line: 502, column: 19, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 501, column: 45)
!1162 = !DILocation(line: 502, column: 5, scope: !1161)
!1163 = !DILocation(line: 502, column: 10, scope: !1161)
!1164 = !DILocation(line: 502, column: 15, scope: !1161)
!1165 = !DILocation(line: 503, column: 12, scope: !1161)
!1166 = !DILocation(line: 503, column: 14, scope: !1161)
!1167 = !DILocation(line: 504, column: 6, scope: !1161)
!1168 = !DILocation(line: 504, column: 11, scope: !1161)
!1169 = !DILocation(line: 503, column: 30, scope: !1161)
!1170 = !DILocation(line: 504, column: 18, scope: !1161)
!1171 = !DILocation(line: 504, column: 16, scope: !1161)
!1172 = !DILocation(line: 504, column: 27, scope: !1161)
!1173 = !DILocation(line: 503, column: 10, scope: !1161)
!1174 = !DILocation(line: 505, column: 4, scope: !1161)
!1175 = !DILocation(line: 506, column: 14, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 505, column: 11)
!1177 = !DILocation(line: 507, column: 5, scope: !1176)
!1178 = !DILocation(line: 507, column: 20, scope: !1176)
!1179 = !DILocation(line: 508, column: 19, scope: !1176)
!1180 = !DILocation(line: 508, column: 24, scope: !1176)
!1181 = !DILocation(line: 508, column: 29, scope: !1176)
!1182 = !DILocation(line: 509, column: 21, scope: !1176)
!1183 = !DILocation(line: 509, column: 7, scope: !1176)
!1184 = !DILocation(line: 508, column: 35, scope: !1176)
!1185 = !DILocation(line: 508, column: 6, scope: !1176)
!1186 = !DILocation(line: 508, column: 11, scope: !1176)
!1187 = !DILocation(line: 508, column: 16, scope: !1176)
!1188 = distinct !{!1188, !1177, !1189, !258, !259}
!1189 = !DILocation(line: 509, column: 23, scope: !1176)
!1190 = !DILocation(line: 510, column: 12, scope: !1176)
!1191 = !DILocation(line: 510, column: 14, scope: !1176)
!1192 = !DILocation(line: 510, column: 10, scope: !1176)
!1193 = !DILocation(line: 511, column: 5, scope: !1176)
!1194 = !DILocation(line: 511, column: 10, scope: !1176)
!1195 = !DILocation(line: 511, column: 15, scope: !1176)
!1196 = !DILocation(line: 512, column: 14, scope: !1176)
!1197 = !DILocation(line: 514, column: 6, scope: !866)
!1198 = !DILocation(line: 515, column: 7, scope: !866)
!1199 = !DILocation(line: 516, column: 4, scope: !866)
!1200 = !DILocation(line: 516, column: 19, scope: !866)
!1201 = !DILocation(line: 517, column: 20, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 517, column: 9)
!1203 = distinct !DILexicalBlock(scope: !866, file: !2, line: 516, column: 23)
!1204 = !DILocation(line: 517, column: 24, scope: !1202)
!1205 = !DILocation(line: 517, column: 31, scope: !1202)
!1206 = !DILocation(line: 517, column: 29, scope: !1202)
!1207 = !DILocation(line: 517, column: 9, scope: !1202)
!1208 = !DILocation(line: 517, column: 9, scope: !1203)
!1209 = !DILocation(line: 518, column: 19, scope: !1202)
!1210 = !DILocation(line: 518, column: 6, scope: !1202)
!1211 = !DILocation(line: 518, column: 11, scope: !1202)
!1212 = !DILocation(line: 518, column: 16, scope: !1202)
!1213 = !DILocation(line: 519, column: 7, scope: !1203)
!1214 = distinct !{!1214, !1199, !1215, !258, !259}
!1215 = !DILocation(line: 520, column: 4, scope: !866)
!1216 = !DILocation(line: 521, column: 3, scope: !867)
!1217 = !DILocation(line: 521, column: 3, scope: !866)
!1218 = !DILocation(line: 522, column: 16, scope: !867)
!1219 = !DILocation(line: 522, column: 4, scope: !867)
!1220 = !DILocation(line: 522, column: 9, scope: !867)
!1221 = !DILocation(line: 522, column: 14, scope: !867)
!1222 = !DILocation(line: 523, column: 10, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !863, file: !2, line: 523, column: 7)
!1224 = !DILocation(line: 523, column: 15, scope: !1223)
!1225 = !DILocation(line: 523, column: 7, scope: !1223)
!1226 = !DILocation(line: 523, column: 21, scope: !1223)
!1227 = !DILocation(line: 523, column: 7, scope: !863)
!1228 = !DILocation(line: 524, column: 4, scope: !1223)
!1229 = !DILocation(line: 525, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !863, file: !2, line: 525, column: 7)
!1231 = !DILocation(line: 525, column: 12, scope: !1230)
!1232 = !DILocation(line: 525, column: 19, scope: !1230)
!1233 = !DILocation(line: 525, column: 23, scope: !1230)
!1234 = !DILocation(line: 525, column: 31, scope: !1230)
!1235 = !DILocation(line: 525, column: 17, scope: !1230)
!1236 = !DILocation(line: 526, column: 5, scope: !1230)
!1237 = !DILocation(line: 526, column: 8, scope: !1230)
!1238 = !DILocation(line: 526, column: 13, scope: !1230)
!1239 = !DILocation(line: 526, column: 28, scope: !1230)
!1240 = !DILocation(line: 526, column: 20, scope: !1230)
!1241 = !DILocation(line: 526, column: 18, scope: !1230)
!1242 = !DILocation(line: 525, column: 7, scope: !863)
!1243 = !DILocation(line: 527, column: 4, scope: !1230)
!1244 = !DILocation(line: 528, column: 2, scope: !864)
!1245 = !DILocation(line: 528, column: 2, scope: !863)
!1246 = !DILocation(line: 530, column: 6, scope: !843)
!1247 = !DILocation(line: 532, column: 20, scope: !843)
!1248 = !DILocation(line: 532, column: 24, scope: !843)
!1249 = !DILocation(line: 532, column: 29, scope: !843)
!1250 = !DILocation(line: 532, column: 35, scope: !843)
!1251 = !DILocation(line: 532, column: 9, scope: !843)
!1252 = !DILocation(line: 532, column: 2, scope: !843)
!1253 = !DILocation(line: 533, column: 1, scope: !843)
!1254 = !DISubprogram(name: "vfree", scope: !626, file: !626, line: 161, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !1257}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1259 = !DISubprogram(name: "kfree", scope: !19, file: !19, line: 227, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1260 = !DISubprogram(name: "kmalloc_large", scope: !19, file: !19, line: 531, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1261 = distinct !DISubprogram(name: "__kmalloc_index", scope: !19, file: !19, line: 444, type: !1262, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1266)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!29, !131, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !44, line: 35, baseType: !1265)
!1265 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1266 = !{!1267, !1268}
!1267 = !DILocalVariable(name: "size", arg: 1, scope: !1261, file: !19, line: 444, type: !131)
!1268 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1261, file: !19, line: 445, type: !1264)
!1269 = !DILocation(line: 444, column: 60, scope: !1261)
!1270 = !DILocation(line: 445, column: 16, scope: !1261)
!1271 = !DILocation(line: 447, column: 7, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 447, column: 6)
!1273 = !DILocation(line: 447, column: 6, scope: !1261)
!1274 = !DILocation(line: 448, column: 3, scope: !1272)
!1275 = !DILocation(line: 450, column: 6, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 450, column: 6)
!1277 = !DILocation(line: 450, column: 11, scope: !1276)
!1278 = !DILocation(line: 450, column: 6, scope: !1261)
!1279 = !DILocation(line: 451, column: 3, scope: !1276)
!1280 = !DILocation(line: 453, column: 32, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 453, column: 6)
!1282 = !DILocation(line: 453, column: 37, scope: !1281)
!1283 = !DILocation(line: 453, column: 42, scope: !1281)
!1284 = !DILocation(line: 453, column: 45, scope: !1281)
!1285 = !DILocation(line: 453, column: 50, scope: !1281)
!1286 = !DILocation(line: 453, column: 6, scope: !1261)
!1287 = !DILocation(line: 454, column: 3, scope: !1281)
!1288 = !DILocation(line: 455, column: 32, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 455, column: 6)
!1290 = !DILocation(line: 455, column: 37, scope: !1289)
!1291 = !DILocation(line: 455, column: 43, scope: !1289)
!1292 = !DILocation(line: 455, column: 46, scope: !1289)
!1293 = !DILocation(line: 455, column: 51, scope: !1289)
!1294 = !DILocation(line: 455, column: 6, scope: !1261)
!1295 = !DILocation(line: 456, column: 3, scope: !1289)
!1296 = !DILocation(line: 457, column: 6, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 457, column: 6)
!1298 = !DILocation(line: 457, column: 11, scope: !1297)
!1299 = !DILocation(line: 457, column: 6, scope: !1261)
!1300 = !DILocation(line: 457, column: 26, scope: !1297)
!1301 = !DILocation(line: 458, column: 6, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 458, column: 6)
!1303 = !DILocation(line: 458, column: 11, scope: !1302)
!1304 = !DILocation(line: 458, column: 6, scope: !1261)
!1305 = !DILocation(line: 458, column: 26, scope: !1302)
!1306 = !DILocation(line: 459, column: 6, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 459, column: 6)
!1308 = !DILocation(line: 459, column: 11, scope: !1307)
!1309 = !DILocation(line: 459, column: 6, scope: !1261)
!1310 = !DILocation(line: 459, column: 26, scope: !1307)
!1311 = !DILocation(line: 460, column: 6, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 460, column: 6)
!1313 = !DILocation(line: 460, column: 11, scope: !1312)
!1314 = !DILocation(line: 460, column: 6, scope: !1261)
!1315 = !DILocation(line: 460, column: 26, scope: !1312)
!1316 = !DILocation(line: 461, column: 6, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 461, column: 6)
!1318 = !DILocation(line: 461, column: 11, scope: !1317)
!1319 = !DILocation(line: 461, column: 6, scope: !1261)
!1320 = !DILocation(line: 461, column: 26, scope: !1317)
!1321 = !DILocation(line: 462, column: 6, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 462, column: 6)
!1323 = !DILocation(line: 462, column: 11, scope: !1322)
!1324 = !DILocation(line: 462, column: 6, scope: !1261)
!1325 = !DILocation(line: 462, column: 26, scope: !1322)
!1326 = !DILocation(line: 463, column: 6, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 463, column: 6)
!1328 = !DILocation(line: 463, column: 11, scope: !1327)
!1329 = !DILocation(line: 463, column: 6, scope: !1261)
!1330 = !DILocation(line: 463, column: 26, scope: !1327)
!1331 = !DILocation(line: 464, column: 6, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 464, column: 6)
!1333 = !DILocation(line: 464, column: 11, scope: !1332)
!1334 = !DILocation(line: 464, column: 6, scope: !1261)
!1335 = !DILocation(line: 464, column: 26, scope: !1332)
!1336 = !DILocation(line: 465, column: 6, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 465, column: 6)
!1338 = !DILocation(line: 465, column: 11, scope: !1337)
!1339 = !DILocation(line: 465, column: 6, scope: !1261)
!1340 = !DILocation(line: 465, column: 26, scope: !1337)
!1341 = !DILocation(line: 466, column: 6, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 466, column: 6)
!1343 = !DILocation(line: 466, column: 11, scope: !1342)
!1344 = !DILocation(line: 466, column: 6, scope: !1261)
!1345 = !DILocation(line: 466, column: 26, scope: !1342)
!1346 = !DILocation(line: 467, column: 6, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 467, column: 6)
!1348 = !DILocation(line: 467, column: 11, scope: !1347)
!1349 = !DILocation(line: 467, column: 6, scope: !1261)
!1350 = !DILocation(line: 467, column: 26, scope: !1347)
!1351 = !DILocation(line: 468, column: 6, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 468, column: 6)
!1353 = !DILocation(line: 468, column: 11, scope: !1352)
!1354 = !DILocation(line: 468, column: 6, scope: !1261)
!1355 = !DILocation(line: 468, column: 26, scope: !1352)
!1356 = !DILocation(line: 469, column: 6, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 469, column: 6)
!1358 = !DILocation(line: 469, column: 11, scope: !1357)
!1359 = !DILocation(line: 469, column: 6, scope: !1261)
!1360 = !DILocation(line: 469, column: 26, scope: !1357)
!1361 = !DILocation(line: 470, column: 6, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 470, column: 6)
!1363 = !DILocation(line: 470, column: 11, scope: !1362)
!1364 = !DILocation(line: 470, column: 6, scope: !1261)
!1365 = !DILocation(line: 470, column: 26, scope: !1362)
!1366 = !DILocation(line: 471, column: 6, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 471, column: 6)
!1368 = !DILocation(line: 471, column: 11, scope: !1367)
!1369 = !DILocation(line: 471, column: 6, scope: !1261)
!1370 = !DILocation(line: 471, column: 26, scope: !1367)
!1371 = !DILocation(line: 472, column: 6, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 472, column: 6)
!1373 = !DILocation(line: 472, column: 11, scope: !1372)
!1374 = !DILocation(line: 472, column: 6, scope: !1261)
!1375 = !DILocation(line: 472, column: 26, scope: !1372)
!1376 = !DILocation(line: 473, column: 6, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 473, column: 6)
!1378 = !DILocation(line: 473, column: 11, scope: !1377)
!1379 = !DILocation(line: 473, column: 6, scope: !1261)
!1380 = !DILocation(line: 473, column: 26, scope: !1377)
!1381 = !DILocation(line: 474, column: 6, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 474, column: 6)
!1383 = !DILocation(line: 474, column: 11, scope: !1382)
!1384 = !DILocation(line: 474, column: 6, scope: !1261)
!1385 = !DILocation(line: 474, column: 27, scope: !1382)
!1386 = !DILocation(line: 475, column: 6, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 475, column: 6)
!1388 = !DILocation(line: 475, column: 11, scope: !1387)
!1389 = !DILocation(line: 475, column: 6, scope: !1261)
!1390 = !DILocation(line: 475, column: 32, scope: !1387)
!1391 = !DILocation(line: 477, column: 50, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1261, file: !19, line: 477, column: 6)
!1393 = !{i8 0, i8 2}
!1394 = !{}
!1395 = !DILocation(line: 477, column: 6, scope: !1261)
!1396 = !DILocation(line: 478, column: 3, scope: !1392)
!1397 = !DILocation(line: 478, column: 3, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !19, line: 478, column: 3)
!1399 = distinct !DILexicalBlock(scope: !1392, file: !19, line: 478, column: 3)
!1400 = !{i32 -2141706506}
!1401 = !DILocation(line: 478, column: 3, scope: !1399)
!1402 = !DILocation(line: 480, column: 3, scope: !1392)
!1403 = !DILocation(line: 480, column: 3, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1392, file: !19, line: 480, column: 3)
!1405 = !DILocation(line: 480, column: 3, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1404, file: !19, line: 480, column: 3)
!1407 = !DILocation(line: 480, column: 3, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !19, line: 480, column: 3)
!1409 = !{i64 2153260993, i64 2153261022, i64 2153261068, i64 2153261126, i64 2153261180, i64 2153261234, i64 2153261289, i64 2153261320}
!1410 = !DILocation(line: 483, column: 2, scope: !1261)
!1411 = !DILocation(line: 484, column: 1, scope: !1261)
!1412 = !DISubprogram(name: "kmalloc_trace", scope: !19, file: !19, line: 525, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!56, !1415, !43, !131}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1417, line: 325, flags: DIFlagFwdDecl)
!1417 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!1418 = distinct !DISubprogram(name: "kmalloc_type", scope: !19, file: !19, line: 401, type: !1419, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!33, !43, !62}
!1421 = !{!1422, !1423}
!1422 = !DILocalVariable(name: "flags", arg: 1, scope: !1418, file: !19, line: 401, type: !43)
!1423 = !DILocalVariable(name: "caller", arg: 2, scope: !1418, file: !19, line: 401, type: !62)
!1424 = !DILocation(line: 401, column: 67, scope: !1418)
!1425 = !DILocation(line: 401, column: 88, scope: !1418)
!1426 = !DILocation(line: 407, column: 6, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1418, file: !19, line: 407, column: 6)
!1428 = !DILocation(line: 407, column: 6, scope: !1418)
!1429 = !DILocation(line: 413, column: 3, scope: !1427)
!1430 = !DILocation(line: 423, column: 38, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1418, file: !19, line: 423, column: 6)
!1432 = !DILocation(line: 423, column: 44, scope: !1431)
!1433 = !DILocation(line: 423, column: 6, scope: !1418)
!1434 = !DILocation(line: 424, column: 3, scope: !1431)
!1435 = !DILocation(line: 426, column: 3, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1418, file: !19, line: 425, column: 6)
!1437 = !DILocation(line: 429, column: 1, scope: !1418)
!1438 = !DISubprogram(name: "__kmalloc", scope: !19, file: !19, line: 488, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1439 = !DISubprogram(name: "__compiletime_assert_245", scope: !19, file: !19, line: 478, type: !1440, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null}
!1442 = distinct !DISubprogram(name: "nofill", scope: !2, file: !2, line: 85, type: !84, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1443)
!1443 = !{!1444, !1445}
!1444 = !DILocalVariable(name: "buffer", arg: 1, scope: !1442, file: !2, line: 85, type: !56)
!1445 = !DILocalVariable(name: "len", arg: 2, scope: !1442, file: !2, line: 85, type: !62)
!1446 = !DILocation(line: 85, column: 31, scope: !1442)
!1447 = !DILocation(line: 85, column: 53, scope: !1442)
!1448 = !DILocation(line: 87, column: 2, scope: !1442)
!1449 = distinct !DISubprogram(name: "rc_is_bit_0_helper", scope: !2, file: !2, line: 148, type: !1450, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!47, !503, !57}
!1452 = !{!1453, !1454}
!1453 = !DILocalVariable(name: "rc", arg: 1, scope: !1449, file: !2, line: 148, type: !503)
!1454 = !DILocalVariable(name: "p", arg: 2, scope: !1449, file: !2, line: 148, type: !57)
!1455 = !DILocation(line: 148, column: 59, scope: !1449)
!1456 = !DILocation(line: 148, column: 73, scope: !1449)
!1457 = !DILocation(line: 150, column: 15, scope: !1449)
!1458 = !DILocation(line: 150, column: 2, scope: !1449)
!1459 = !DILocation(line: 151, column: 15, scope: !1449)
!1460 = !DILocation(line: 151, column: 14, scope: !1449)
!1461 = !DILocation(line: 151, column: 20, scope: !1449)
!1462 = !DILocation(line: 151, column: 24, scope: !1449)
!1463 = !DILocation(line: 151, column: 30, scope: !1449)
!1464 = !DILocation(line: 151, column: 17, scope: !1449)
!1465 = !DILocation(line: 151, column: 2, scope: !1449)
!1466 = !DILocation(line: 151, column: 6, scope: !1449)
!1467 = !DILocation(line: 151, column: 12, scope: !1449)
!1468 = !DILocation(line: 152, column: 9, scope: !1449)
!1469 = !DILocation(line: 152, column: 13, scope: !1449)
!1470 = !DILocation(line: 152, column: 2, scope: !1449)
!1471 = distinct !DISubprogram(name: "rc_normalize", scope: !2, file: !2, line: 138, type: !552, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1472)
!1472 = !{!1473}
!1473 = !DILocalVariable(name: "rc", arg: 1, scope: !1471, file: !2, line: 138, type: !503)
!1474 = !DILocation(line: 138, column: 49, scope: !1471)
!1475 = !DILocation(line: 140, column: 6, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 140, column: 6)
!1477 = !DILocation(line: 140, column: 10, scope: !1476)
!1478 = !DILocation(line: 140, column: 16, scope: !1476)
!1479 = !DILocation(line: 140, column: 6, scope: !1471)
!1480 = !DILocation(line: 141, column: 19, scope: !1476)
!1481 = !DILocation(line: 141, column: 3, scope: !1476)
!1482 = !DILocation(line: 142, column: 1, scope: !1471)
!1483 = distinct !DISubprogram(name: "rc_do_normalize", scope: !2, file: !2, line: 131, type: !552, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1484)
!1484 = !{!1485}
!1485 = !DILocalVariable(name: "rc", arg: 1, scope: !1483, file: !2, line: 131, type: !503)
!1486 = !DILocation(line: 131, column: 45, scope: !1483)
!1487 = !DILocation(line: 133, column: 6, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 133, column: 6)
!1489 = !DILocation(line: 133, column: 10, scope: !1488)
!1490 = !DILocation(line: 133, column: 17, scope: !1488)
!1491 = !DILocation(line: 133, column: 21, scope: !1488)
!1492 = !DILocation(line: 133, column: 14, scope: !1488)
!1493 = !DILocation(line: 133, column: 6, scope: !1483)
!1494 = !DILocation(line: 134, column: 11, scope: !1488)
!1495 = !DILocation(line: 134, column: 3, scope: !1488)
!1496 = !DILocation(line: 135, column: 2, scope: !1483)
!1497 = !DILocation(line: 135, column: 6, scope: !1483)
!1498 = !DILocation(line: 135, column: 12, scope: !1483)
!1499 = !DILocation(line: 136, column: 14, scope: !1483)
!1500 = !DILocation(line: 136, column: 18, scope: !1483)
!1501 = !DILocation(line: 136, column: 23, scope: !1483)
!1502 = !DILocation(line: 136, column: 32, scope: !1483)
!1503 = !DILocation(line: 136, column: 36, scope: !1483)
!1504 = !DILocation(line: 136, column: 39, scope: !1483)
!1505 = !DILocation(line: 136, column: 31, scope: !1483)
!1506 = !DILocation(line: 136, column: 29, scope: !1483)
!1507 = !DILocation(line: 136, column: 2, scope: !1483)
!1508 = !DILocation(line: 136, column: 6, scope: !1483)
!1509 = !DILocation(line: 136, column: 11, scope: !1483)
!1510 = !DILocation(line: 137, column: 1, scope: !1483)
!1511 = distinct !DISubprogram(name: "rc_update_bit_0", scope: !2, file: !2, line: 161, type: !1512, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !503, !57}
!1514 = !{!1515, !1516}
!1515 = !DILocalVariable(name: "rc", arg: 1, scope: !1511, file: !2, line: 161, type: !503)
!1516 = !DILocalVariable(name: "p", arg: 2, scope: !1511, file: !2, line: 161, type: !57)
!1517 = !DILocation(line: 161, column: 52, scope: !1511)
!1518 = !DILocation(line: 161, column: 66, scope: !1511)
!1519 = !DILocation(line: 163, column: 14, scope: !1511)
!1520 = !DILocation(line: 163, column: 18, scope: !1511)
!1521 = !DILocation(line: 163, column: 2, scope: !1511)
!1522 = !DILocation(line: 163, column: 6, scope: !1511)
!1523 = !DILocation(line: 163, column: 12, scope: !1511)
!1524 = !DILocation(line: 164, column: 39, scope: !1511)
!1525 = !DILocation(line: 164, column: 38, scope: !1511)
!1526 = !DILocation(line: 164, column: 36, scope: !1511)
!1527 = !DILocation(line: 164, column: 42, scope: !1511)
!1528 = !DILocation(line: 164, column: 3, scope: !1511)
!1529 = !DILocation(line: 164, column: 5, scope: !1511)
!1530 = !DILocation(line: 165, column: 1, scope: !1511)
!1531 = distinct !DISubprogram(name: "peek_old_byte", scope: !2, file: !2, line: 298, type: !1532, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1534)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!64, !673, !47}
!1534 = !{!1535, !1536, !1537, !1543}
!1535 = !DILocalVariable(name: "wr", arg: 1, scope: !1531, file: !2, line: 298, type: !673)
!1536 = !DILocalVariable(name: "offs", arg: 2, scope: !1531, file: !2, line: 299, type: !47)
!1537 = !DILocalVariable(name: "pos", scope: !1538, file: !2, line: 302, type: !1540)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 301, column: 18)
!1539 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 301, column: 6)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !44, line: 104, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !49, line: 20, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !51, line: 26, baseType: !81)
!1543 = !DILocalVariable(name: "pos", scope: !1544, file: !2, line: 308, type: !47)
!1544 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 307, column: 9)
!1545 = !DILocation(line: 298, column: 57, scope: !1531)
!1546 = !DILocation(line: 299, column: 16, scope: !1531)
!1547 = !DILocation(line: 301, column: 7, scope: !1539)
!1548 = !DILocation(line: 301, column: 11, scope: !1539)
!1549 = !DILocation(line: 301, column: 6, scope: !1531)
!1550 = !DILocation(line: 302, column: 3, scope: !1538)
!1551 = !DILocation(line: 302, column: 11, scope: !1538)
!1552 = !DILocation(line: 303, column: 3, scope: !1538)
!1553 = !DILocation(line: 303, column: 10, scope: !1538)
!1554 = !DILocation(line: 303, column: 17, scope: !1538)
!1555 = !DILocation(line: 303, column: 21, scope: !1538)
!1556 = !DILocation(line: 303, column: 29, scope: !1538)
!1557 = !DILocation(line: 303, column: 15, scope: !1538)
!1558 = !DILocation(line: 304, column: 12, scope: !1538)
!1559 = !DILocation(line: 304, column: 16, scope: !1538)
!1560 = !DILocation(line: 304, column: 24, scope: !1538)
!1561 = !DILocation(line: 304, column: 9, scope: !1538)
!1562 = distinct !{!1562, !1552, !1560, !258, !259}
!1563 = !DILocation(line: 305, column: 9, scope: !1538)
!1564 = !DILocation(line: 305, column: 13, scope: !1538)
!1565 = !DILocation(line: 305, column: 26, scope: !1538)
!1566 = !DILocation(line: 305, column: 24, scope: !1538)
!1567 = !DILocation(line: 305, column: 7, scope: !1538)
!1568 = !DILocation(line: 306, column: 10, scope: !1538)
!1569 = !DILocation(line: 306, column: 14, scope: !1538)
!1570 = !DILocation(line: 306, column: 21, scope: !1538)
!1571 = !DILocation(line: 306, column: 3, scope: !1538)
!1572 = !DILocation(line: 307, column: 2, scope: !1539)
!1573 = !DILocation(line: 308, column: 3, scope: !1544)
!1574 = !DILocation(line: 308, column: 12, scope: !1544)
!1575 = !DILocation(line: 308, column: 18, scope: !1544)
!1576 = !DILocation(line: 308, column: 22, scope: !1544)
!1577 = !DILocation(line: 308, column: 35, scope: !1544)
!1578 = !DILocation(line: 308, column: 33, scope: !1544)
!1579 = !DILocation(line: 309, column: 3, scope: !1544)
!1580 = !DILocation(line: 309, column: 10, scope: !1544)
!1581 = !DILocation(line: 309, column: 17, scope: !1544)
!1582 = !DILocation(line: 309, column: 21, scope: !1544)
!1583 = !DILocation(line: 309, column: 29, scope: !1544)
!1584 = !DILocation(line: 309, column: 14, scope: !1544)
!1585 = !DILocation(line: 310, column: 11, scope: !1544)
!1586 = !DILocation(line: 310, column: 15, scope: !1544)
!1587 = !DILocation(line: 310, column: 23, scope: !1544)
!1588 = !DILocation(line: 310, column: 8, scope: !1544)
!1589 = distinct !{!1589, !1579, !1587, !258, !259}
!1590 = !DILocation(line: 311, column: 10, scope: !1544)
!1591 = !DILocation(line: 311, column: 14, scope: !1544)
!1592 = !DILocation(line: 311, column: 21, scope: !1544)
!1593 = !DILocation(line: 311, column: 3, scope: !1544)
!1594 = !DILocation(line: 312, column: 2, scope: !1539)
!1595 = !DILocation(line: 314, column: 1, scope: !1531)
!1596 = distinct !DISubprogram(name: "rc_get_bit", scope: !2, file: !2, line: 174, type: !1597, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1600)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!81, !503, !57, !1599}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1600 = !{!1601, !1602, !1603}
!1601 = !DILocalVariable(name: "rc", arg: 1, scope: !1596, file: !2, line: 174, type: !503)
!1602 = !DILocalVariable(name: "p", arg: 2, scope: !1596, file: !2, line: 174, type: !57)
!1603 = !DILocalVariable(name: "symbol", arg: 3, scope: !1596, file: !2, line: 174, type: !1599)
!1604 = !DILocation(line: 174, column: 39, scope: !1596)
!1605 = !DILocation(line: 174, column: 53, scope: !1596)
!1606 = !DILocation(line: 174, column: 61, scope: !1596)
!1607 = !DILocation(line: 176, column: 18, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 176, column: 6)
!1609 = !DILocation(line: 176, column: 22, scope: !1608)
!1610 = !DILocation(line: 176, column: 6, scope: !1608)
!1611 = !DILocation(line: 176, column: 6, scope: !1596)
!1612 = !DILocation(line: 177, column: 19, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 176, column: 26)
!1614 = !DILocation(line: 177, column: 23, scope: !1613)
!1615 = !DILocation(line: 177, column: 3, scope: !1613)
!1616 = !DILocation(line: 178, column: 4, scope: !1613)
!1617 = !DILocation(line: 178, column: 11, scope: !1613)
!1618 = !DILocation(line: 179, column: 3, scope: !1613)
!1619 = !DILocation(line: 181, column: 19, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 180, column: 9)
!1621 = !DILocation(line: 181, column: 23, scope: !1620)
!1622 = !DILocation(line: 181, column: 3, scope: !1620)
!1623 = !DILocation(line: 182, column: 14, scope: !1620)
!1624 = !DILocation(line: 182, column: 13, scope: !1620)
!1625 = !DILocation(line: 182, column: 21, scope: !1620)
!1626 = !DILocation(line: 182, column: 25, scope: !1620)
!1627 = !DILocation(line: 182, column: 4, scope: !1620)
!1628 = !DILocation(line: 182, column: 11, scope: !1620)
!1629 = !DILocation(line: 183, column: 3, scope: !1620)
!1630 = !DILocation(line: 185, column: 1, scope: !1596)
!1631 = distinct !DISubprogram(name: "write_byte", scope: !2, file: !2, line: 316, type: !1632, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!81, !673, !64}
!1634 = !{!1635, !1636}
!1635 = !DILocalVariable(name: "wr", arg: 1, scope: !1631, file: !2, line: 316, type: !673)
!1636 = !DILocalVariable(name: "byte", arg: 2, scope: !1631, file: !2, line: 316, type: !64)
!1637 = !DILocation(line: 316, column: 50, scope: !1631)
!1638 = !DILocation(line: 316, column: 62, scope: !1631)
!1639 = !DILocation(line: 318, column: 53, scope: !1631)
!1640 = !DILocation(line: 318, column: 33, scope: !1631)
!1641 = !DILocation(line: 318, column: 37, scope: !1631)
!1642 = !DILocation(line: 318, column: 51, scope: !1631)
!1643 = !DILocation(line: 318, column: 2, scope: !1631)
!1644 = !DILocation(line: 318, column: 6, scope: !1631)
!1645 = !DILocation(line: 318, column: 13, scope: !1631)
!1646 = !DILocation(line: 318, column: 17, scope: !1631)
!1647 = !DILocation(line: 318, column: 27, scope: !1631)
!1648 = !DILocation(line: 318, column: 31, scope: !1631)
!1649 = !DILocation(line: 319, column: 6, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 319, column: 6)
!1651 = !DILocation(line: 319, column: 10, scope: !1650)
!1652 = !DILocation(line: 319, column: 16, scope: !1650)
!1653 = !DILocation(line: 319, column: 19, scope: !1650)
!1654 = !DILocation(line: 319, column: 23, scope: !1650)
!1655 = !DILocation(line: 319, column: 37, scope: !1650)
!1656 = !DILocation(line: 319, column: 41, scope: !1650)
!1657 = !DILocation(line: 319, column: 49, scope: !1650)
!1658 = !DILocation(line: 319, column: 34, scope: !1650)
!1659 = !DILocation(line: 319, column: 6, scope: !1631)
!1660 = !DILocation(line: 320, column: 3, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 319, column: 60)
!1662 = !DILocation(line: 320, column: 7, scope: !1661)
!1663 = !DILocation(line: 320, column: 18, scope: !1661)
!1664 = !DILocation(line: 321, column: 21, scope: !1661)
!1665 = !DILocation(line: 321, column: 25, scope: !1661)
!1666 = !DILocation(line: 321, column: 33, scope: !1661)
!1667 = !DILocation(line: 321, column: 3, scope: !1661)
!1668 = !DILocation(line: 321, column: 7, scope: !1661)
!1669 = !DILocation(line: 321, column: 18, scope: !1661)
!1670 = !DILocation(line: 322, column: 7, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1661, file: !2, line: 322, column: 7)
!1672 = !DILocation(line: 322, column: 11, scope: !1671)
!1673 = !DILocation(line: 322, column: 25, scope: !1671)
!1674 = !DILocation(line: 322, column: 29, scope: !1671)
!1675 = !DILocation(line: 322, column: 37, scope: !1671)
!1676 = !DILocation(line: 322, column: 41, scope: !1671)
!1677 = !DILocation(line: 322, column: 49, scope: !1671)
!1678 = !DILocation(line: 323, column: 8, scope: !1671)
!1679 = !DILocation(line: 323, column: 12, scope: !1671)
!1680 = !DILocation(line: 323, column: 20, scope: !1671)
!1681 = !DILocation(line: 323, column: 5, scope: !1671)
!1682 = !DILocation(line: 322, column: 7, scope: !1661)
!1683 = !DILocation(line: 324, column: 4, scope: !1671)
!1684 = !DILocation(line: 325, column: 2, scope: !1661)
!1685 = !DILocation(line: 326, column: 2, scope: !1631)
!1686 = !DILocation(line: 327, column: 1, scope: !1631)
!1687 = distinct !DISubprogram(name: "rc_update_bit_1", scope: !2, file: !2, line: 166, type: !1512, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1688)
!1688 = !{!1689, !1690}
!1689 = !DILocalVariable(name: "rc", arg: 1, scope: !1687, file: !2, line: 166, type: !503)
!1690 = !DILocalVariable(name: "p", arg: 2, scope: !1687, file: !2, line: 166, type: !57)
!1691 = !DILocation(line: 166, column: 52, scope: !1687)
!1692 = !DILocation(line: 166, column: 66, scope: !1687)
!1693 = !DILocation(line: 168, column: 15, scope: !1687)
!1694 = !DILocation(line: 168, column: 19, scope: !1687)
!1695 = !DILocation(line: 168, column: 2, scope: !1687)
!1696 = !DILocation(line: 168, column: 6, scope: !1687)
!1697 = !DILocation(line: 168, column: 12, scope: !1687)
!1698 = !DILocation(line: 169, column: 14, scope: !1687)
!1699 = !DILocation(line: 169, column: 18, scope: !1687)
!1700 = !DILocation(line: 169, column: 2, scope: !1687)
!1701 = !DILocation(line: 169, column: 6, scope: !1687)
!1702 = !DILocation(line: 169, column: 11, scope: !1687)
!1703 = !DILocation(line: 170, column: 9, scope: !1687)
!1704 = !DILocation(line: 170, column: 8, scope: !1687)
!1705 = !DILocation(line: 170, column: 11, scope: !1687)
!1706 = !DILocation(line: 170, column: 3, scope: !1687)
!1707 = !DILocation(line: 170, column: 5, scope: !1687)
!1708 = !DILocation(line: 171, column: 1, scope: !1687)
!1709 = distinct !DISubprogram(name: "copy_byte", scope: !2, file: !2, line: 330, type: !1710, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1712)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!81, !673, !47}
!1712 = !{!1713, !1714}
!1713 = !DILocalVariable(name: "wr", arg: 1, scope: !1709, file: !2, line: 330, type: !673)
!1714 = !DILocalVariable(name: "offs", arg: 2, scope: !1709, file: !2, line: 330, type: !47)
!1715 = !DILocation(line: 330, column: 49, scope: !1709)
!1716 = !DILocation(line: 330, column: 62, scope: !1709)
!1717 = !DILocation(line: 332, column: 20, scope: !1709)
!1718 = !DILocation(line: 332, column: 38, scope: !1709)
!1719 = !DILocation(line: 332, column: 42, scope: !1709)
!1720 = !DILocation(line: 332, column: 24, scope: !1709)
!1721 = !DILocation(line: 332, column: 9, scope: !1709)
!1722 = !DILocation(line: 332, column: 2, scope: !1709)
!1723 = distinct !DISubprogram(name: "rc_bit_tree_decode", scope: !2, file: !2, line: 201, type: !1724, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !503, !57, !81, !1599}
!1726 = !{!1727, !1728, !1729, !1730, !1731}
!1727 = !DILocalVariable(name: "rc", arg: 1, scope: !1723, file: !2, line: 201, type: !503)
!1728 = !DILocalVariable(name: "p", arg: 2, scope: !1723, file: !2, line: 201, type: !57)
!1729 = !DILocalVariable(name: "num_levels", arg: 3, scope: !1723, file: !2, line: 201, type: !81)
!1730 = !DILocalVariable(name: "symbol", arg: 4, scope: !1723, file: !2, line: 201, type: !1599)
!1731 = !DILocalVariable(name: "i", scope: !1723, file: !2, line: 203, type: !81)
!1732 = !DILocation(line: 201, column: 31, scope: !1723)
!1733 = !DILocation(line: 201, column: 45, scope: !1723)
!1734 = !DILocation(line: 201, column: 52, scope: !1723)
!1735 = !DILocation(line: 201, column: 69, scope: !1723)
!1736 = !DILocation(line: 203, column: 2, scope: !1723)
!1737 = !DILocation(line: 203, column: 6, scope: !1723)
!1738 = !DILocation(line: 203, column: 10, scope: !1723)
!1739 = !DILocation(line: 205, column: 3, scope: !1723)
!1740 = !DILocation(line: 205, column: 10, scope: !1723)
!1741 = !DILocation(line: 206, column: 2, scope: !1723)
!1742 = !DILocation(line: 206, column: 10, scope: !1723)
!1743 = !DILocation(line: 207, column: 14, scope: !1723)
!1744 = !DILocation(line: 207, column: 18, scope: !1723)
!1745 = !DILocation(line: 207, column: 23, scope: !1723)
!1746 = !DILocation(line: 207, column: 22, scope: !1723)
!1747 = !DILocation(line: 207, column: 20, scope: !1723)
!1748 = !DILocation(line: 207, column: 31, scope: !1723)
!1749 = !DILocation(line: 207, column: 3, scope: !1723)
!1750 = distinct !{!1750, !1741, !1751, !258, !259}
!1751 = !DILocation(line: 207, column: 37, scope: !1723)
!1752 = !DILocation(line: 208, column: 18, scope: !1723)
!1753 = !DILocation(line: 208, column: 15, scope: !1723)
!1754 = !DILocation(line: 208, column: 3, scope: !1723)
!1755 = !DILocation(line: 208, column: 10, scope: !1723)
!1756 = !DILocation(line: 209, column: 1, scope: !1723)
!1757 = distinct !DISubprogram(name: "rc_direct_bit", scope: !2, file: !2, line: 188, type: !1758, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1760)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!81, !503}
!1760 = !{!1761}
!1761 = !DILocalVariable(name: "rc", arg: 1, scope: !1757, file: !2, line: 188, type: !503)
!1762 = !DILocation(line: 188, column: 49, scope: !1757)
!1763 = !DILocation(line: 190, column: 15, scope: !1757)
!1764 = !DILocation(line: 190, column: 2, scope: !1757)
!1765 = !DILocation(line: 191, column: 2, scope: !1757)
!1766 = !DILocation(line: 191, column: 6, scope: !1757)
!1767 = !DILocation(line: 191, column: 12, scope: !1757)
!1768 = !DILocation(line: 192, column: 6, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 192, column: 6)
!1770 = !DILocation(line: 192, column: 10, scope: !1769)
!1771 = !DILocation(line: 192, column: 18, scope: !1769)
!1772 = !DILocation(line: 192, column: 22, scope: !1769)
!1773 = !DILocation(line: 192, column: 15, scope: !1769)
!1774 = !DILocation(line: 192, column: 6, scope: !1757)
!1775 = !DILocation(line: 193, column: 15, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 192, column: 29)
!1777 = !DILocation(line: 193, column: 19, scope: !1776)
!1778 = !DILocation(line: 193, column: 3, scope: !1776)
!1779 = !DILocation(line: 193, column: 7, scope: !1776)
!1780 = !DILocation(line: 193, column: 12, scope: !1776)
!1781 = !DILocation(line: 194, column: 3, scope: !1776)
!1782 = !DILocation(line: 196, column: 2, scope: !1757)
!1783 = !DILocation(line: 197, column: 1, scope: !1757)
!1784 = distinct !DISubprogram(name: "copy_bytes", scope: !2, file: !2, line: 335, type: !1785, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !25, retainedNodes: !1787)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!81, !673, !47, !81}
!1787 = !{!1788, !1789, !1790}
!1788 = !DILocalVariable(name: "wr", arg: 1, scope: !1784, file: !2, line: 335, type: !673)
!1789 = !DILocalVariable(name: "rep0", arg: 2, scope: !1784, file: !2, line: 336, type: !47)
!1790 = !DILocalVariable(name: "len", arg: 3, scope: !1784, file: !2, line: 336, type: !81)
!1791 = !DILocation(line: 335, column: 50, scope: !1784)
!1792 = !DILocation(line: 336, column: 16, scope: !1784)
!1793 = !DILocation(line: 336, column: 26, scope: !1784)
!1794 = !DILocation(line: 338, column: 2, scope: !1784)
!1795 = !DILocation(line: 339, column: 17, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 339, column: 7)
!1797 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 338, column: 5)
!1798 = !DILocation(line: 339, column: 21, scope: !1796)
!1799 = !DILocation(line: 339, column: 7, scope: !1796)
!1800 = !DILocation(line: 339, column: 7, scope: !1797)
!1801 = !DILocation(line: 340, column: 4, scope: !1796)
!1802 = !DILocation(line: 341, column: 6, scope: !1797)
!1803 = !DILocation(line: 342, column: 2, scope: !1797)
!1804 = !DILocation(line: 342, column: 11, scope: !1784)
!1805 = !DILocation(line: 342, column: 15, scope: !1784)
!1806 = !DILocation(line: 342, column: 20, scope: !1784)
!1807 = !DILocation(line: 342, column: 23, scope: !1784)
!1808 = !DILocation(line: 342, column: 27, scope: !1784)
!1809 = !DILocation(line: 342, column: 40, scope: !1784)
!1810 = !DILocation(line: 342, column: 44, scope: !1784)
!1811 = !DILocation(line: 342, column: 52, scope: !1784)
!1812 = !DILocation(line: 342, column: 38, scope: !1784)
!1813 = !DILocation(line: 0, scope: !1784)
!1814 = distinct !{!1814, !1794, !1815, !258, !259}
!1815 = !DILocation(line: 342, column: 60, scope: !1784)
!1816 = !DILocation(line: 344, column: 9, scope: !1784)
!1817 = !DILocation(line: 344, column: 2, scope: !1784)
!1818 = !DILocation(line: 345, column: 1, scope: !1784)
