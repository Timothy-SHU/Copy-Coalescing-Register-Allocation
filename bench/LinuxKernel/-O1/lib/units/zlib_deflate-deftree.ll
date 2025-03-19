; ModuleID = 'lib/zlib_deflate/deftree.c'
source_filename = "lib/zlib_deflate/deftree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_tree_desc_s = type { ptr, ptr, i32, i32, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.deflate_state = type { ptr, i32, ptr, i64, ptr, i32, i32, i8, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i64, i64, i64, i32, i32, i16, i32 }
%struct.tree_desc_s = type { ptr, i32, ptr }

@static_l_desc = internal global %struct.static_tree_desc_s { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15 }, align 8, !dbg !0
@static_d_desc = internal global %struct.static_tree_desc_s { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15 }, align 8, !dbg !112
@static_bl_desc = internal global %struct.static_tree_desc_s { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7 }, align 8, !dbg !114
@static_ltree = internal global [288 x %struct.ct_data_s] zeroinitializer, align 16, !dbg !59
@static_dtree = internal global [30 x %struct.ct_data_s] zeroinitializer, align 16, !dbg !64
@length_code = internal global [256 x i8] zeroinitializer, align 16, !dbg !74
@dist_code = internal global [512 x i8] zeroinitializer, align 16, !dbg !69
@extra_dbits = internal constant [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 16, !dbg !125
@tr_static_init.static_init_done = internal global i32 0, align 4, !dbg !79
@base_length = internal global [29 x i32] zeroinitializer, align 16, !dbg !101
@extra_lbits = internal constant [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 16, !dbg !106
@base_dist = internal global [30 x i32] zeroinitializer, align 16, !dbg !109
@byte_rev_table = external dso_local constant [256 x i8], align 16
@extra_blbits = internal constant [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 16, !dbg !116
@bl_order = internal constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16, !dbg !121

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @zlib_tr_init(ptr noundef %s) #0 align 16 !dbg !137 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !245, metadata !DIExpression()), !dbg !246
  call void @tr_static_init() #6, !dbg !247
  %0 = load ptr, ptr %s.addr, align 8, !dbg !248
  %compressed_len = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 53, !dbg !249
  store i64 0, ptr %compressed_len, align 8, !dbg !250
  %1 = load ptr, ptr %s.addr, align 8, !dbg !251
  %dyn_ltree = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 36, !dbg !252
  %arraydecay = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 0, !dbg !251
  %2 = load ptr, ptr %s.addr, align 8, !dbg !253
  %l_desc = getelementptr inbounds %struct.deflate_state, ptr %2, i32 0, i32 39, !dbg !254
  %dyn_tree = getelementptr inbounds %struct.tree_desc_s, ptr %l_desc, i32 0, i32 0, !dbg !255
  store ptr %arraydecay, ptr %dyn_tree, align 8, !dbg !256
  %3 = load ptr, ptr %s.addr, align 8, !dbg !257
  %l_desc1 = getelementptr inbounds %struct.deflate_state, ptr %3, i32 0, i32 39, !dbg !258
  %stat_desc = getelementptr inbounds %struct.tree_desc_s, ptr %l_desc1, i32 0, i32 2, !dbg !259
  store ptr @static_l_desc, ptr %stat_desc, align 8, !dbg !260
  %4 = load ptr, ptr %s.addr, align 8, !dbg !261
  %dyn_dtree = getelementptr inbounds %struct.deflate_state, ptr %4, i32 0, i32 37, !dbg !262
  %arraydecay2 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 0, !dbg !261
  %5 = load ptr, ptr %s.addr, align 8, !dbg !263
  %d_desc = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 40, !dbg !264
  %dyn_tree3 = getelementptr inbounds %struct.tree_desc_s, ptr %d_desc, i32 0, i32 0, !dbg !265
  store ptr %arraydecay2, ptr %dyn_tree3, align 8, !dbg !266
  %6 = load ptr, ptr %s.addr, align 8, !dbg !267
  %d_desc4 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 40, !dbg !268
  %stat_desc5 = getelementptr inbounds %struct.tree_desc_s, ptr %d_desc4, i32 0, i32 2, !dbg !269
  store ptr @static_d_desc, ptr %stat_desc5, align 8, !dbg !270
  %7 = load ptr, ptr %s.addr, align 8, !dbg !271
  %bl_tree = getelementptr inbounds %struct.deflate_state, ptr %7, i32 0, i32 38, !dbg !272
  %arraydecay6 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 0, !dbg !271
  %8 = load ptr, ptr %s.addr, align 8, !dbg !273
  %bl_desc = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 41, !dbg !274
  %dyn_tree7 = getelementptr inbounds %struct.tree_desc_s, ptr %bl_desc, i32 0, i32 0, !dbg !275
  store ptr %arraydecay6, ptr %dyn_tree7, align 8, !dbg !276
  %9 = load ptr, ptr %s.addr, align 8, !dbg !277
  %bl_desc8 = getelementptr inbounds %struct.deflate_state, ptr %9, i32 0, i32 41, !dbg !278
  %stat_desc9 = getelementptr inbounds %struct.tree_desc_s, ptr %bl_desc8, i32 0, i32 2, !dbg !279
  store ptr @static_bl_desc, ptr %stat_desc9, align 8, !dbg !280
  %10 = load ptr, ptr %s.addr, align 8, !dbg !281
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %10, i32 0, i32 56, !dbg !282
  store i16 0, ptr %bi_buf, align 8, !dbg !283
  %11 = load ptr, ptr %s.addr, align 8, !dbg !284
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %11, i32 0, i32 57, !dbg !285
  store i32 0, ptr %bi_valid, align 4, !dbg !286
  %12 = load ptr, ptr %s.addr, align 8, !dbg !287
  %last_eob_len = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 55, !dbg !288
  store i32 8, ptr %last_eob_len, align 4, !dbg !289
  %13 = load ptr, ptr %s.addr, align 8, !dbg !290
  call void @init_block(ptr noundef %13) #6, !dbg !291
  ret void, !dbg !292
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tr_static_init() #0 align 16 !dbg !81 {
entry:
  %n = alloca i32, align 4
  %bits = alloca i32, align 4
  %length = alloca i32, align 4
  %code = alloca i32, align 4
  %dist = alloca i32, align 4
  %bl_count = alloca [16 x i16], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %___x = alloca i32, align 4
  %tmp140 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %n, metadata !85, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #7, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !86, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #7, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %length, metadata !87, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 4, ptr %code) #7, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %code, metadata !88, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist) #7, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %dist, metadata !89, metadata !DIExpression()), !dbg !302
  call void @llvm.lifetime.start.p0(i64 32, ptr %bl_count) #7, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %bl_count, metadata !90, metadata !DIExpression()), !dbg !304
  %0 = load i32, ptr @tr_static_init.static_init_done, align 4, !dbg !305
  %tobool = icmp ne i32 %0, 0, !dbg !305
  br i1 %tobool, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !308

if.end:                                           ; preds = %entry
  store i32 0, ptr %length, align 4, !dbg !309
  store i32 0, ptr %code, align 4, !dbg !310
  br label %for.cond, !dbg !312

for.cond:                                         ; preds = %for.inc9, %if.end
  %1 = load i32, ptr %code, align 4, !dbg !313
  %cmp = icmp slt i32 %1, 28, !dbg !315
  br i1 %cmp, label %for.body, label %for.end11, !dbg !316

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %length, align 4, !dbg !317
  %3 = load i32, ptr %code, align 4, !dbg !319
  %idxprom = sext i32 %3 to i64, !dbg !320
  %arrayidx = getelementptr [29 x i32], ptr @base_length, i64 0, i64 %idxprom, !dbg !320
  store i32 %2, ptr %arrayidx, align 4, !dbg !321
  store i32 0, ptr %n, align 4, !dbg !322
  br label %for.cond1, !dbg !324

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %n, align 4, !dbg !325
  %5 = load i32, ptr %code, align 4, !dbg !327
  %idxprom2 = sext i32 %5 to i64, !dbg !328
  %arrayidx3 = getelementptr [29 x i32], ptr @extra_lbits, i64 0, i64 %idxprom2, !dbg !328
  %6 = load i32, ptr %arrayidx3, align 4, !dbg !328
  %shl = shl i32 1, %6, !dbg !329
  %cmp4 = icmp slt i32 %4, %shl, !dbg !330
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !331

for.body5:                                        ; preds = %for.cond1
  %7 = load i32, ptr %code, align 4, !dbg !332
  %conv = trunc i32 %7 to i8, !dbg !334
  %8 = load i32, ptr %length, align 4, !dbg !335
  %inc = add i32 %8, 1, !dbg !335
  store i32 %inc, ptr %length, align 4, !dbg !335
  %idxprom6 = sext i32 %8 to i64, !dbg !336
  %arrayidx7 = getelementptr [256 x i8], ptr @length_code, i64 0, i64 %idxprom6, !dbg !336
  store i8 %conv, ptr %arrayidx7, align 1, !dbg !337
  br label %for.inc, !dbg !338

for.inc:                                          ; preds = %for.body5
  %9 = load i32, ptr %n, align 4, !dbg !339
  %inc8 = add i32 %9, 1, !dbg !339
  store i32 %inc8, ptr %n, align 4, !dbg !339
  br label %for.cond1, !dbg !340, !llvm.loop !341

for.end:                                          ; preds = %for.cond1
  br label %for.inc9, !dbg !345

for.inc9:                                         ; preds = %for.end
  %10 = load i32, ptr %code, align 4, !dbg !346
  %inc10 = add i32 %10, 1, !dbg !346
  store i32 %inc10, ptr %code, align 4, !dbg !346
  br label %for.cond, !dbg !347, !llvm.loop !348

for.end11:                                        ; preds = %for.cond
  %11 = load i32, ptr %code, align 4, !dbg !350
  %conv12 = trunc i32 %11 to i8, !dbg !351
  %12 = load i32, ptr %length, align 4, !dbg !352
  %sub = sub i32 %12, 1, !dbg !353
  %idxprom13 = sext i32 %sub to i64, !dbg !354
  %arrayidx14 = getelementptr [256 x i8], ptr @length_code, i64 0, i64 %idxprom13, !dbg !354
  store i8 %conv12, ptr %arrayidx14, align 1, !dbg !355
  store i32 0, ptr %dist, align 4, !dbg !356
  store i32 0, ptr %code, align 4, !dbg !357
  br label %for.cond15, !dbg !359

for.cond15:                                       ; preds = %for.inc35, %for.end11
  %13 = load i32, ptr %code, align 4, !dbg !360
  %cmp16 = icmp slt i32 %13, 16, !dbg !362
  br i1 %cmp16, label %for.body18, label %for.end37, !dbg !363

for.body18:                                       ; preds = %for.cond15
  %14 = load i32, ptr %dist, align 4, !dbg !364
  %15 = load i32, ptr %code, align 4, !dbg !366
  %idxprom19 = sext i32 %15 to i64, !dbg !367
  %arrayidx20 = getelementptr [30 x i32], ptr @base_dist, i64 0, i64 %idxprom19, !dbg !367
  store i32 %14, ptr %arrayidx20, align 4, !dbg !368
  store i32 0, ptr %n, align 4, !dbg !369
  br label %for.cond21, !dbg !371

for.cond21:                                       ; preds = %for.inc32, %for.body18
  %16 = load i32, ptr %n, align 4, !dbg !372
  %17 = load i32, ptr %code, align 4, !dbg !374
  %idxprom22 = sext i32 %17 to i64, !dbg !375
  %arrayidx23 = getelementptr [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom22, !dbg !375
  %18 = load i32, ptr %arrayidx23, align 4, !dbg !375
  %shl24 = shl i32 1, %18, !dbg !376
  %cmp25 = icmp slt i32 %16, %shl24, !dbg !377
  br i1 %cmp25, label %for.body27, label %for.end34, !dbg !378

for.body27:                                       ; preds = %for.cond21
  %19 = load i32, ptr %code, align 4, !dbg !379
  %conv28 = trunc i32 %19 to i8, !dbg !381
  %20 = load i32, ptr %dist, align 4, !dbg !382
  %inc29 = add i32 %20, 1, !dbg !382
  store i32 %inc29, ptr %dist, align 4, !dbg !382
  %idxprom30 = sext i32 %20 to i64, !dbg !383
  %arrayidx31 = getelementptr [512 x i8], ptr @dist_code, i64 0, i64 %idxprom30, !dbg !383
  store i8 %conv28, ptr %arrayidx31, align 1, !dbg !384
  br label %for.inc32, !dbg !385

for.inc32:                                        ; preds = %for.body27
  %21 = load i32, ptr %n, align 4, !dbg !386
  %inc33 = add i32 %21, 1, !dbg !386
  store i32 %inc33, ptr %n, align 4, !dbg !386
  br label %for.cond21, !dbg !387, !llvm.loop !388

for.end34:                                        ; preds = %for.cond21
  br label %for.inc35, !dbg !390

for.inc35:                                        ; preds = %for.end34
  %22 = load i32, ptr %code, align 4, !dbg !391
  %inc36 = add i32 %22, 1, !dbg !391
  store i32 %inc36, ptr %code, align 4, !dbg !391
  br label %for.cond15, !dbg !392, !llvm.loop !393

for.end37:                                        ; preds = %for.cond15
  %23 = load i32, ptr %dist, align 4, !dbg !395
  %shr = ashr i32 %23, 7, !dbg !395
  store i32 %shr, ptr %dist, align 4, !dbg !395
  br label %for.cond38, !dbg !396

for.cond38:                                       ; preds = %for.inc60, %for.end37
  %24 = load i32, ptr %code, align 4, !dbg !397
  %cmp39 = icmp slt i32 %24, 30, !dbg !400
  br i1 %cmp39, label %for.body41, label %for.end62, !dbg !401

for.body41:                                       ; preds = %for.cond38
  %25 = load i32, ptr %dist, align 4, !dbg !402
  %shl42 = shl i32 %25, 7, !dbg !404
  %26 = load i32, ptr %code, align 4, !dbg !405
  %idxprom43 = sext i32 %26 to i64, !dbg !406
  %arrayidx44 = getelementptr [30 x i32], ptr @base_dist, i64 0, i64 %idxprom43, !dbg !406
  store i32 %shl42, ptr %arrayidx44, align 4, !dbg !407
  store i32 0, ptr %n, align 4, !dbg !408
  br label %for.cond45, !dbg !410

for.cond45:                                       ; preds = %for.inc57, %for.body41
  %27 = load i32, ptr %n, align 4, !dbg !411
  %28 = load i32, ptr %code, align 4, !dbg !413
  %idxprom46 = sext i32 %28 to i64, !dbg !414
  %arrayidx47 = getelementptr [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom46, !dbg !414
  %29 = load i32, ptr %arrayidx47, align 4, !dbg !414
  %sub48 = sub i32 %29, 7, !dbg !415
  %shl49 = shl i32 1, %sub48, !dbg !416
  %cmp50 = icmp slt i32 %27, %shl49, !dbg !417
  br i1 %cmp50, label %for.body52, label %for.end59, !dbg !418

for.body52:                                       ; preds = %for.cond45
  %30 = load i32, ptr %code, align 4, !dbg !419
  %conv53 = trunc i32 %30 to i8, !dbg !421
  %31 = load i32, ptr %dist, align 4, !dbg !422
  %inc54 = add i32 %31, 1, !dbg !422
  store i32 %inc54, ptr %dist, align 4, !dbg !422
  %add = add i32 256, %31, !dbg !423
  %idxprom55 = sext i32 %add to i64, !dbg !424
  %arrayidx56 = getelementptr [512 x i8], ptr @dist_code, i64 0, i64 %idxprom55, !dbg !424
  store i8 %conv53, ptr %arrayidx56, align 1, !dbg !425
  br label %for.inc57, !dbg !426

for.inc57:                                        ; preds = %for.body52
  %32 = load i32, ptr %n, align 4, !dbg !427
  %inc58 = add i32 %32, 1, !dbg !427
  store i32 %inc58, ptr %n, align 4, !dbg !427
  br label %for.cond45, !dbg !428, !llvm.loop !429

for.end59:                                        ; preds = %for.cond45
  br label %for.inc60, !dbg !431

for.inc60:                                        ; preds = %for.end59
  %33 = load i32, ptr %code, align 4, !dbg !432
  %inc61 = add i32 %33, 1, !dbg !432
  store i32 %inc61, ptr %code, align 4, !dbg !432
  br label %for.cond38, !dbg !433, !llvm.loop !434

for.end62:                                        ; preds = %for.cond38
  store i32 0, ptr %bits, align 4, !dbg !436
  br label %for.cond63, !dbg !438

for.cond63:                                       ; preds = %for.inc69, %for.end62
  %34 = load i32, ptr %bits, align 4, !dbg !439
  %cmp64 = icmp sle i32 %34, 15, !dbg !441
  br i1 %cmp64, label %for.body66, label %for.end71, !dbg !442

for.body66:                                       ; preds = %for.cond63
  %35 = load i32, ptr %bits, align 4, !dbg !443
  %idxprom67 = sext i32 %35 to i64, !dbg !444
  %arrayidx68 = getelementptr [16 x i16], ptr %bl_count, i64 0, i64 %idxprom67, !dbg !444
  store i16 0, ptr %arrayidx68, align 2, !dbg !445
  br label %for.inc69, !dbg !444

for.inc69:                                        ; preds = %for.body66
  %36 = load i32, ptr %bits, align 4, !dbg !446
  %inc70 = add i32 %36, 1, !dbg !446
  store i32 %inc70, ptr %bits, align 4, !dbg !446
  br label %for.cond63, !dbg !447, !llvm.loop !448

for.end71:                                        ; preds = %for.cond63
  store i32 0, ptr %n, align 4, !dbg !450
  br label %while.cond, !dbg !451

while.cond:                                       ; preds = %while.body, %for.end71
  %37 = load i32, ptr %n, align 4, !dbg !452
  %cmp72 = icmp sle i32 %37, 143, !dbg !453
  br i1 %cmp72, label %while.body, label %while.end, !dbg !451

while.body:                                       ; preds = %while.cond
  %38 = load i32, ptr %n, align 4, !dbg !454
  %inc74 = add i32 %38, 1, !dbg !454
  store i32 %inc74, ptr %n, align 4, !dbg !454
  %idxprom75 = sext i32 %38 to i64, !dbg !455
  %arrayidx76 = getelementptr [288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 %idxprom75, !dbg !455
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx76, i32 0, i32 1, !dbg !456
  store i16 8, ptr %dl, align 2, !dbg !457
  %arrayidx77 = getelementptr [16 x i16], ptr %bl_count, i64 0, i64 8, !dbg !458
  %39 = load i16, ptr %arrayidx77, align 16, !dbg !459
  %inc78 = add i16 %39, 1, !dbg !459
  store i16 %inc78, ptr %arrayidx77, align 16, !dbg !459
  br label %while.cond, !dbg !451, !llvm.loop !460

while.end:                                        ; preds = %while.cond
  br label %while.cond79, !dbg !461

while.cond79:                                     ; preds = %while.body82, %while.end
  %40 = load i32, ptr %n, align 4, !dbg !462
  %cmp80 = icmp sle i32 %40, 255, !dbg !463
  br i1 %cmp80, label %while.body82, label %while.end89, !dbg !461

while.body82:                                     ; preds = %while.cond79
  %41 = load i32, ptr %n, align 4, !dbg !464
  %inc83 = add i32 %41, 1, !dbg !464
  store i32 %inc83, ptr %n, align 4, !dbg !464
  %idxprom84 = sext i32 %41 to i64, !dbg !465
  %arrayidx85 = getelementptr [288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 %idxprom84, !dbg !465
  %dl86 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx85, i32 0, i32 1, !dbg !466
  store i16 9, ptr %dl86, align 2, !dbg !467
  %arrayidx87 = getelementptr [16 x i16], ptr %bl_count, i64 0, i64 9, !dbg !468
  %42 = load i16, ptr %arrayidx87, align 2, !dbg !469
  %inc88 = add i16 %42, 1, !dbg !469
  store i16 %inc88, ptr %arrayidx87, align 2, !dbg !469
  br label %while.cond79, !dbg !461, !llvm.loop !470

while.end89:                                      ; preds = %while.cond79
  br label %while.cond90, !dbg !471

while.cond90:                                     ; preds = %while.body93, %while.end89
  %43 = load i32, ptr %n, align 4, !dbg !472
  %cmp91 = icmp sle i32 %43, 279, !dbg !473
  br i1 %cmp91, label %while.body93, label %while.end100, !dbg !471

while.body93:                                     ; preds = %while.cond90
  %44 = load i32, ptr %n, align 4, !dbg !474
  %inc94 = add i32 %44, 1, !dbg !474
  store i32 %inc94, ptr %n, align 4, !dbg !474
  %idxprom95 = sext i32 %44 to i64, !dbg !475
  %arrayidx96 = getelementptr [288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 %idxprom95, !dbg !475
  %dl97 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx96, i32 0, i32 1, !dbg !476
  store i16 7, ptr %dl97, align 2, !dbg !477
  %arrayidx98 = getelementptr [16 x i16], ptr %bl_count, i64 0, i64 7, !dbg !478
  %45 = load i16, ptr %arrayidx98, align 2, !dbg !479
  %inc99 = add i16 %45, 1, !dbg !479
  store i16 %inc99, ptr %arrayidx98, align 2, !dbg !479
  br label %while.cond90, !dbg !471, !llvm.loop !480

while.end100:                                     ; preds = %while.cond90
  br label %while.cond101, !dbg !481

while.cond101:                                    ; preds = %while.body104, %while.end100
  %46 = load i32, ptr %n, align 4, !dbg !482
  %cmp102 = icmp sle i32 %46, 287, !dbg !483
  br i1 %cmp102, label %while.body104, label %while.end111, !dbg !481

while.body104:                                    ; preds = %while.cond101
  %47 = load i32, ptr %n, align 4, !dbg !484
  %inc105 = add i32 %47, 1, !dbg !484
  store i32 %inc105, ptr %n, align 4, !dbg !484
  %idxprom106 = sext i32 %47 to i64, !dbg !485
  %arrayidx107 = getelementptr [288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 %idxprom106, !dbg !485
  %dl108 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx107, i32 0, i32 1, !dbg !486
  store i16 8, ptr %dl108, align 2, !dbg !487
  %arrayidx109 = getelementptr [16 x i16], ptr %bl_count, i64 0, i64 8, !dbg !488
  %48 = load i16, ptr %arrayidx109, align 16, !dbg !489
  %inc110 = add i16 %48, 1, !dbg !489
  store i16 %inc110, ptr %arrayidx109, align 16, !dbg !489
  br label %while.cond101, !dbg !481, !llvm.loop !490

while.end111:                                     ; preds = %while.cond101
  %arraydecay = getelementptr inbounds [16 x i16], ptr %bl_count, i64 0, i64 0, !dbg !491
  call void @gen_codes(ptr noundef @static_ltree, i32 noundef 287, ptr noundef %arraydecay) #6, !dbg !492
  store i32 0, ptr %n, align 4, !dbg !493
  br label %for.cond112, !dbg !494

for.cond112:                                      ; preds = %for.inc145, %while.end111
  %49 = load i32, ptr %n, align 4, !dbg !495
  %cmp113 = icmp slt i32 %49, 30, !dbg !496
  br i1 %cmp113, label %for.body115, label %for.end147, !dbg !497

for.body115:                                      ; preds = %for.cond112
  %50 = load i32, ptr %n, align 4, !dbg !498
  %idxprom116 = sext i32 %50 to i64, !dbg !499
  %arrayidx117 = getelementptr [30 x %struct.ct_data_s], ptr @static_dtree, i64 0, i64 %idxprom116, !dbg !499
  %dl118 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx117, i32 0, i32 1, !dbg !500
  store i16 5, ptr %dl118, align 2, !dbg !501
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #7, !dbg !502
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !94, metadata !DIExpression()), !dbg !502
  %51 = load i32, ptr %n, align 4, !dbg !502
  store i32 %51, ptr %__x, align 4, !dbg !502
  %52 = load i32, ptr %__x, align 4, !dbg !502
  %53 = call i1 @llvm.is.constant.i32(i32 %52), !dbg !502
  br i1 %53, label %cond.true, label %cond.false, !dbg !502

cond.true:                                        ; preds = %for.body115
  call void @llvm.lifetime.start.p0(i64 4, ptr %___x) #7, !dbg !503
  call void @llvm.dbg.declare(metadata ptr %___x, metadata !99, metadata !DIExpression()), !dbg !503
  %54 = load i32, ptr %__x, align 4, !dbg !503
  store i32 %54, ptr %___x, align 4, !dbg !503
  %55 = load i32, ptr %___x, align 4, !dbg !503
  %shr119 = lshr i32 %55, 16, !dbg !503
  %56 = load i32, ptr %___x, align 4, !dbg !503
  %shl120 = shl i32 %56, 16, !dbg !503
  %or = or i32 %shr119, %shl120, !dbg !503
  store i32 %or, ptr %___x, align 4, !dbg !503
  %57 = load i32, ptr %___x, align 4, !dbg !503
  %and = and i32 %57, -16711936, !dbg !503
  %shr121 = lshr i32 %and, 8, !dbg !503
  %58 = load i32, ptr %___x, align 4, !dbg !503
  %and122 = and i32 %58, 16711935, !dbg !503
  %shl123 = shl i32 %and122, 8, !dbg !503
  %or124 = or i32 %shr121, %shl123, !dbg !503
  store i32 %or124, ptr %___x, align 4, !dbg !503
  %59 = load i32, ptr %___x, align 4, !dbg !503
  %and125 = and i32 %59, -252645136, !dbg !503
  %shr126 = lshr i32 %and125, 4, !dbg !503
  %60 = load i32, ptr %___x, align 4, !dbg !503
  %and127 = and i32 %60, 252645135, !dbg !503
  %shl128 = shl i32 %and127, 4, !dbg !503
  %or129 = or i32 %shr126, %shl128, !dbg !503
  store i32 %or129, ptr %___x, align 4, !dbg !503
  %61 = load i32, ptr %___x, align 4, !dbg !503
  %and130 = and i32 %61, -858993460, !dbg !503
  %shr131 = lshr i32 %and130, 2, !dbg !503
  %62 = load i32, ptr %___x, align 4, !dbg !503
  %and132 = and i32 %62, 858993459, !dbg !503
  %shl133 = shl i32 %and132, 2, !dbg !503
  %or134 = or i32 %shr131, %shl133, !dbg !503
  store i32 %or134, ptr %___x, align 4, !dbg !503
  %63 = load i32, ptr %___x, align 4, !dbg !503
  %and135 = and i32 %63, -1431655766, !dbg !503
  %shr136 = lshr i32 %and135, 1, !dbg !503
  %64 = load i32, ptr %___x, align 4, !dbg !503
  %and137 = and i32 %64, 1431655765, !dbg !503
  %shl138 = shl i32 %and137, 1, !dbg !503
  %or139 = or i32 %shr136, %shl138, !dbg !503
  store i32 %or139, ptr %___x, align 4, !dbg !503
  %65 = load i32, ptr %___x, align 4, !dbg !503
  store i32 %65, ptr %tmp140, align 4, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %___x) #7, !dbg !502
  %66 = load i32, ptr %tmp140, align 4, !dbg !503
  br label %cond.end, !dbg !502

cond.false:                                       ; preds = %for.body115
  %67 = load i32, ptr %__x, align 4, !dbg !502
  %call = call i32 @__bitrev32(i32 noundef %67) #6, !dbg !502
  br label %cond.end, !dbg !502

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %66, %cond.true ], [ %call, %cond.false ], !dbg !502
  store i32 %cond, ptr %tmp, align 4, !dbg !502
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #7, !dbg !504
  %68 = load i32, ptr %tmp, align 4, !dbg !502
  %shr141 = lshr i32 %68, 27, !dbg !505
  %conv142 = trunc i32 %shr141 to i16, !dbg !504
  %69 = load i32, ptr %n, align 4, !dbg !506
  %idxprom143 = sext i32 %69 to i64, !dbg !507
  %arrayidx144 = getelementptr [30 x %struct.ct_data_s], ptr @static_dtree, i64 0, i64 %idxprom143, !dbg !507
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx144, i32 0, i32 0, !dbg !508
  store i16 %conv142, ptr %fc, align 4, !dbg !509
  br label %for.inc145, !dbg !510

for.inc145:                                       ; preds = %cond.end
  %70 = load i32, ptr %n, align 4, !dbg !511
  %inc146 = add i32 %70, 1, !dbg !511
  store i32 %inc146, ptr %n, align 4, !dbg !511
  br label %for.cond112, !dbg !512, !llvm.loop !513

for.end147:                                       ; preds = %for.cond112
  store i32 1, ptr @tr_static_init.static_init_done, align 4, !dbg !515
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !516
  br label %cleanup, !dbg !516

cleanup:                                          ; preds = %for.end147, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %bl_count) #7, !dbg !516
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist) #7, !dbg !516
  call void @llvm.lifetime.end.p0(i64 4, ptr %code) #7, !dbg !516
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #7, !dbg !516
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #7, !dbg !516
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !516
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !516

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_block(ptr noundef %s) #0 align 16 !dbg !517 {
entry:
  %s.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !519, metadata !DIExpression()), !dbg !521
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !522
  call void @llvm.dbg.declare(metadata ptr %n, metadata !520, metadata !DIExpression()), !dbg !523
  store i32 0, ptr %n, align 4, !dbg !524
  br label %for.cond, !dbg !526

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4, !dbg !527
  %cmp = icmp slt i32 %0, 286, !dbg !529
  br i1 %cmp, label %for.body, label %for.end, !dbg !530

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %s.addr, align 8, !dbg !531
  %dyn_ltree = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 36, !dbg !532
  %2 = load i32, ptr %n, align 4, !dbg !533
  %idxprom = sext i32 %2 to i64, !dbg !531
  %arrayidx = getelementptr [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom, !dbg !531
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx, i32 0, i32 0, !dbg !534
  store i16 0, ptr %fc, align 4, !dbg !535
  br label %for.inc, !dbg !531

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %n, align 4, !dbg !536
  %inc = add i32 %3, 1, !dbg !536
  store i32 %inc, ptr %n, align 4, !dbg !536
  br label %for.cond, !dbg !537, !llvm.loop !538

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4, !dbg !540
  br label %for.cond1, !dbg !542

for.cond1:                                        ; preds = %for.inc7, %for.end
  %4 = load i32, ptr %n, align 4, !dbg !543
  %cmp2 = icmp slt i32 %4, 30, !dbg !545
  br i1 %cmp2, label %for.body3, label %for.end9, !dbg !546

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %s.addr, align 8, !dbg !547
  %dyn_dtree = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 37, !dbg !548
  %6 = load i32, ptr %n, align 4, !dbg !549
  %idxprom4 = sext i32 %6 to i64, !dbg !547
  %arrayidx5 = getelementptr [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 %idxprom4, !dbg !547
  %fc6 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx5, i32 0, i32 0, !dbg !550
  store i16 0, ptr %fc6, align 4, !dbg !551
  br label %for.inc7, !dbg !547

for.inc7:                                         ; preds = %for.body3
  %7 = load i32, ptr %n, align 4, !dbg !552
  %inc8 = add i32 %7, 1, !dbg !552
  store i32 %inc8, ptr %n, align 4, !dbg !552
  br label %for.cond1, !dbg !553, !llvm.loop !554

for.end9:                                         ; preds = %for.cond1
  store i32 0, ptr %n, align 4, !dbg !556
  br label %for.cond10, !dbg !558

for.cond10:                                       ; preds = %for.inc16, %for.end9
  %8 = load i32, ptr %n, align 4, !dbg !559
  %cmp11 = icmp slt i32 %8, 19, !dbg !561
  br i1 %cmp11, label %for.body12, label %for.end18, !dbg !562

for.body12:                                       ; preds = %for.cond10
  %9 = load ptr, ptr %s.addr, align 8, !dbg !563
  %bl_tree = getelementptr inbounds %struct.deflate_state, ptr %9, i32 0, i32 38, !dbg !564
  %10 = load i32, ptr %n, align 4, !dbg !565
  %idxprom13 = sext i32 %10 to i64, !dbg !563
  %arrayidx14 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 %idxprom13, !dbg !563
  %fc15 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx14, i32 0, i32 0, !dbg !566
  store i16 0, ptr %fc15, align 4, !dbg !567
  br label %for.inc16, !dbg !563

for.inc16:                                        ; preds = %for.body12
  %11 = load i32, ptr %n, align 4, !dbg !568
  %inc17 = add i32 %11, 1, !dbg !568
  store i32 %inc17, ptr %n, align 4, !dbg !568
  br label %for.cond10, !dbg !569, !llvm.loop !570

for.end18:                                        ; preds = %for.cond10
  %12 = load ptr, ptr %s.addr, align 8, !dbg !572
  %dyn_ltree19 = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 36, !dbg !573
  %arrayidx20 = getelementptr [573 x %struct.ct_data_s], ptr %dyn_ltree19, i64 0, i64 256, !dbg !572
  %fc21 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx20, i32 0, i32 0, !dbg !574
  store i16 1, ptr %fc21, align 4, !dbg !575
  %13 = load ptr, ptr %s.addr, align 8, !dbg !576
  %static_len = getelementptr inbounds %struct.deflate_state, ptr %13, i32 0, i32 52, !dbg !577
  store i64 0, ptr %static_len, align 8, !dbg !578
  %14 = load ptr, ptr %s.addr, align 8, !dbg !579
  %opt_len = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 51, !dbg !580
  store i64 0, ptr %opt_len, align 8, !dbg !581
  %15 = load ptr, ptr %s.addr, align 8, !dbg !582
  %matches = getelementptr inbounds %struct.deflate_state, ptr %15, i32 0, i32 54, !dbg !583
  store i32 0, ptr %matches, align 8, !dbg !584
  %16 = load ptr, ptr %s.addr, align 8, !dbg !585
  %last_lit = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 49, !dbg !586
  store i32 0, ptr %last_lit, align 4, !dbg !587
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !588
  ret void, !dbg !588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @zlib_tr_stored_block(ptr noundef %s, ptr noundef %buf, i64 noundef %stored_len, i32 noundef %eof) #0 align 16 !dbg !589 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %stored_len.addr = alloca i64, align 8
  %eof.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !593, metadata !DIExpression()), !dbg !602
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !594, metadata !DIExpression()), !dbg !603
  store i64 %stored_len, ptr %stored_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stored_len.addr, metadata !595, metadata !DIExpression()), !dbg !604
  store i32 %eof, ptr %eof.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %eof.addr, metadata !596, metadata !DIExpression()), !dbg !605
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7, !dbg !606
  call void @llvm.dbg.declare(metadata ptr %len, metadata !597, metadata !DIExpression()), !dbg !606
  store i32 3, ptr %len, align 4, !dbg !606
  %0 = load ptr, ptr %s.addr, align 8, !dbg !607
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57, !dbg !607
  %1 = load i32, ptr %bi_valid, align 4, !dbg !607
  %2 = load i32, ptr %len, align 4, !dbg !607
  %sub = sub i32 16, %2, !dbg !607
  %cmp = icmp sgt i32 %1, %sub, !dbg !607
  br i1 %cmp, label %if.then, label %if.else, !dbg !606

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #7, !dbg !608
  call void @llvm.dbg.declare(metadata ptr %val, metadata !599, metadata !DIExpression()), !dbg !608
  %3 = load i32, ptr %eof.addr, align 4, !dbg !608
  %add = add i32 0, %3, !dbg !608
  store i32 %add, ptr %val, align 4, !dbg !608
  %4 = load i32, ptr %val, align 4, !dbg !608
  %5 = load ptr, ptr %s.addr, align 8, !dbg !608
  %bi_valid1 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 57, !dbg !608
  %6 = load i32, ptr %bi_valid1, align 4, !dbg !608
  %shl = shl i32 %4, %6, !dbg !608
  %7 = load ptr, ptr %s.addr, align 8, !dbg !608
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %7, i32 0, i32 56, !dbg !608
  %8 = load i16, ptr %bi_buf, align 8, !dbg !608
  %conv = zext i16 %8 to i32, !dbg !608
  %or = or i32 %conv, %shl, !dbg !608
  %conv2 = trunc i32 %or to i16, !dbg !608
  store i16 %conv2, ptr %bi_buf, align 8, !dbg !608
  %9 = load ptr, ptr %s.addr, align 8, !dbg !609
  %bi_buf3 = getelementptr inbounds %struct.deflate_state, ptr %9, i32 0, i32 56, !dbg !609
  %10 = load i16, ptr %bi_buf3, align 8, !dbg !609
  %conv4 = zext i16 %10 to i32, !dbg !609
  %and = and i32 %conv4, 255, !dbg !609
  %conv5 = trunc i32 %and to i8, !dbg !609
  %11 = load ptr, ptr %s.addr, align 8, !dbg !609
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %11, i32 0, i32 2, !dbg !609
  %12 = load ptr, ptr %pending_buf, align 8, !dbg !609
  %13 = load ptr, ptr %s.addr, align 8, !dbg !609
  %pending = getelementptr inbounds %struct.deflate_state, ptr %13, i32 0, i32 5, !dbg !609
  %14 = load i32, ptr %pending, align 8, !dbg !609
  %inc = add i32 %14, 1, !dbg !609
  store i32 %inc, ptr %pending, align 8, !dbg !609
  %idxprom = sext i32 %14 to i64, !dbg !609
  %arrayidx = getelementptr i8, ptr %12, i64 %idxprom, !dbg !609
  store i8 %conv5, ptr %arrayidx, align 1, !dbg !609
  %15 = load ptr, ptr %s.addr, align 8, !dbg !612
  %bi_buf6 = getelementptr inbounds %struct.deflate_state, ptr %15, i32 0, i32 56, !dbg !612
  %16 = load i16, ptr %bi_buf6, align 8, !dbg !612
  %conv7 = zext i16 %16 to i32, !dbg !612
  %shr = ashr i32 %conv7, 8, !dbg !612
  %conv8 = trunc i32 %shr to i8, !dbg !612
  %17 = load ptr, ptr %s.addr, align 8, !dbg !612
  %pending_buf9 = getelementptr inbounds %struct.deflate_state, ptr %17, i32 0, i32 2, !dbg !612
  %18 = load ptr, ptr %pending_buf9, align 8, !dbg !612
  %19 = load ptr, ptr %s.addr, align 8, !dbg !612
  %pending10 = getelementptr inbounds %struct.deflate_state, ptr %19, i32 0, i32 5, !dbg !612
  %20 = load i32, ptr %pending10, align 8, !dbg !612
  %inc11 = add i32 %20, 1, !dbg !612
  store i32 %inc11, ptr %pending10, align 8, !dbg !612
  %idxprom12 = sext i32 %20 to i64, !dbg !612
  %arrayidx13 = getelementptr i8, ptr %18, i64 %idxprom12, !dbg !612
  store i8 %conv8, ptr %arrayidx13, align 1, !dbg !612
  %21 = load i32, ptr %val, align 4, !dbg !608
  %conv14 = trunc i32 %21 to i16, !dbg !608
  %conv15 = zext i16 %conv14 to i32, !dbg !608
  %22 = load ptr, ptr %s.addr, align 8, !dbg !608
  %bi_valid16 = getelementptr inbounds %struct.deflate_state, ptr %22, i32 0, i32 57, !dbg !608
  %23 = load i32, ptr %bi_valid16, align 4, !dbg !608
  %conv17 = sext i32 %23 to i64, !dbg !608
  %sub18 = sub i64 16, %conv17, !dbg !608
  %sh_prom = trunc i64 %sub18 to i32, !dbg !608
  %shr19 = ashr i32 %conv15, %sh_prom, !dbg !608
  %conv20 = trunc i32 %shr19 to i16, !dbg !608
  %24 = load ptr, ptr %s.addr, align 8, !dbg !608
  %bi_buf21 = getelementptr inbounds %struct.deflate_state, ptr %24, i32 0, i32 56, !dbg !608
  store i16 %conv20, ptr %bi_buf21, align 8, !dbg !608
  %25 = load i32, ptr %len, align 4, !dbg !608
  %conv22 = sext i32 %25 to i64, !dbg !608
  %sub23 = sub i64 %conv22, 16, !dbg !608
  %26 = load ptr, ptr %s.addr, align 8, !dbg !608
  %bi_valid24 = getelementptr inbounds %struct.deflate_state, ptr %26, i32 0, i32 57, !dbg !608
  %27 = load i32, ptr %bi_valid24, align 4, !dbg !608
  %conv25 = sext i32 %27 to i64, !dbg !608
  %add26 = add i64 %conv25, %sub23, !dbg !608
  %conv27 = trunc i64 %add26 to i32, !dbg !608
  store i32 %conv27, ptr %bi_valid24, align 4, !dbg !608
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #7, !dbg !607
  br label %if.end, !dbg !608

if.else:                                          ; preds = %entry
  %28 = load i32, ptr %eof.addr, align 4, !dbg !614
  %add28 = add i32 0, %28, !dbg !614
  %29 = load ptr, ptr %s.addr, align 8, !dbg !614
  %bi_valid29 = getelementptr inbounds %struct.deflate_state, ptr %29, i32 0, i32 57, !dbg !614
  %30 = load i32, ptr %bi_valid29, align 4, !dbg !614
  %shl30 = shl i32 %add28, %30, !dbg !614
  %31 = load ptr, ptr %s.addr, align 8, !dbg !614
  %bi_buf31 = getelementptr inbounds %struct.deflate_state, ptr %31, i32 0, i32 56, !dbg !614
  %32 = load i16, ptr %bi_buf31, align 8, !dbg !614
  %conv32 = zext i16 %32 to i32, !dbg !614
  %or33 = or i32 %conv32, %shl30, !dbg !614
  %conv34 = trunc i32 %or33 to i16, !dbg !614
  store i16 %conv34, ptr %bi_buf31, align 8, !dbg !614
  %33 = load i32, ptr %len, align 4, !dbg !614
  %34 = load ptr, ptr %s.addr, align 8, !dbg !614
  %bi_valid35 = getelementptr inbounds %struct.deflate_state, ptr %34, i32 0, i32 57, !dbg !614
  %35 = load i32, ptr %bi_valid35, align 4, !dbg !614
  %add36 = add i32 %35, %33, !dbg !614
  store i32 %add36, ptr %bi_valid35, align 4, !dbg !614
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7, !dbg !616
  %36 = load ptr, ptr %s.addr, align 8, !dbg !617
  %compressed_len = getelementptr inbounds %struct.deflate_state, ptr %36, i32 0, i32 53, !dbg !618
  %37 = load i64, ptr %compressed_len, align 8, !dbg !618
  %add37 = add i64 %37, 3, !dbg !619
  %add38 = add i64 %add37, 7, !dbg !620
  %and39 = and i64 %add38, -8, !dbg !621
  %38 = load ptr, ptr %s.addr, align 8, !dbg !622
  %compressed_len40 = getelementptr inbounds %struct.deflate_state, ptr %38, i32 0, i32 53, !dbg !623
  store i64 %and39, ptr %compressed_len40, align 8, !dbg !624
  %39 = load i64, ptr %stored_len.addr, align 8, !dbg !625
  %add41 = add i64 %39, 4, !dbg !626
  %shl42 = shl i64 %add41, 3, !dbg !627
  %40 = load ptr, ptr %s.addr, align 8, !dbg !628
  %compressed_len43 = getelementptr inbounds %struct.deflate_state, ptr %40, i32 0, i32 53, !dbg !629
  %41 = load i64, ptr %compressed_len43, align 8, !dbg !630
  %add44 = add i64 %41, %shl42, !dbg !630
  store i64 %add44, ptr %compressed_len43, align 8, !dbg !630
  %42 = load ptr, ptr %s.addr, align 8, !dbg !631
  %43 = load ptr, ptr %buf.addr, align 8, !dbg !632
  %44 = load i64, ptr %stored_len.addr, align 8, !dbg !633
  %conv45 = trunc i64 %44 to i32, !dbg !634
  call void @copy_block(ptr noundef %42, ptr noundef %43, i32 noundef %conv45, i32 noundef 1) #6, !dbg !635
  ret void, !dbg !636
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_block(ptr noundef %s, ptr noundef %buf, i32 noundef %len, i32 noundef %header) #0 align 16 !dbg !637 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %header.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !641, metadata !DIExpression()), !dbg !645
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !642, metadata !DIExpression()), !dbg !646
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !643, metadata !DIExpression()), !dbg !647
  store i32 %header, ptr %header.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !644, metadata !DIExpression()), !dbg !648
  %0 = load ptr, ptr %s.addr, align 8, !dbg !649
  call void @bi_windup(ptr noundef %0) #6, !dbg !650
  %1 = load ptr, ptr %s.addr, align 8, !dbg !651
  %last_eob_len = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 55, !dbg !652
  store i32 8, ptr %last_eob_len, align 4, !dbg !653
  %2 = load i32, ptr %header.addr, align 4, !dbg !654
  %tobool = icmp ne i32 %2, 0, !dbg !654
  br i1 %tobool, label %if.then, label %if.end, !dbg !656

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %len.addr, align 4, !dbg !657
  %conv = trunc i32 %3 to i16, !dbg !657
  %conv1 = zext i16 %conv to i32, !dbg !657
  %and = and i32 %conv1, 255, !dbg !657
  %conv2 = trunc i32 %and to i8, !dbg !657
  %4 = load ptr, ptr %s.addr, align 8, !dbg !657
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %4, i32 0, i32 2, !dbg !657
  %5 = load ptr, ptr %pending_buf, align 8, !dbg !657
  %6 = load ptr, ptr %s.addr, align 8, !dbg !657
  %pending = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 5, !dbg !657
  %7 = load i32, ptr %pending, align 8, !dbg !657
  %inc = add i32 %7, 1, !dbg !657
  store i32 %inc, ptr %pending, align 8, !dbg !657
  %idxprom = sext i32 %7 to i64, !dbg !657
  %arrayidx = getelementptr i8, ptr %5, i64 %idxprom, !dbg !657
  store i8 %conv2, ptr %arrayidx, align 1, !dbg !657
  %8 = load i32, ptr %len.addr, align 4, !dbg !661
  %conv3 = trunc i32 %8 to i16, !dbg !661
  %conv4 = zext i16 %conv3 to i32, !dbg !661
  %shr = ashr i32 %conv4, 8, !dbg !661
  %conv5 = trunc i32 %shr to i8, !dbg !661
  %9 = load ptr, ptr %s.addr, align 8, !dbg !661
  %pending_buf6 = getelementptr inbounds %struct.deflate_state, ptr %9, i32 0, i32 2, !dbg !661
  %10 = load ptr, ptr %pending_buf6, align 8, !dbg !661
  %11 = load ptr, ptr %s.addr, align 8, !dbg !661
  %pending7 = getelementptr inbounds %struct.deflate_state, ptr %11, i32 0, i32 5, !dbg !661
  %12 = load i32, ptr %pending7, align 8, !dbg !661
  %inc8 = add i32 %12, 1, !dbg !661
  store i32 %inc8, ptr %pending7, align 8, !dbg !661
  %idxprom9 = sext i32 %12 to i64, !dbg !661
  %arrayidx10 = getelementptr i8, ptr %10, i64 %idxprom9, !dbg !661
  store i8 %conv5, ptr %arrayidx10, align 1, !dbg !661
  %13 = load i32, ptr %len.addr, align 4, !dbg !663
  %not = xor i32 %13, -1, !dbg !663
  %conv11 = trunc i32 %not to i16, !dbg !663
  %conv12 = zext i16 %conv11 to i32, !dbg !663
  %and13 = and i32 %conv12, 255, !dbg !663
  %conv14 = trunc i32 %and13 to i8, !dbg !663
  %14 = load ptr, ptr %s.addr, align 8, !dbg !663
  %pending_buf15 = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 2, !dbg !663
  %15 = load ptr, ptr %pending_buf15, align 8, !dbg !663
  %16 = load ptr, ptr %s.addr, align 8, !dbg !663
  %pending16 = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 5, !dbg !663
  %17 = load i32, ptr %pending16, align 8, !dbg !663
  %inc17 = add i32 %17, 1, !dbg !663
  store i32 %inc17, ptr %pending16, align 8, !dbg !663
  %idxprom18 = sext i32 %17 to i64, !dbg !663
  %arrayidx19 = getelementptr i8, ptr %15, i64 %idxprom18, !dbg !663
  store i8 %conv14, ptr %arrayidx19, align 1, !dbg !663
  %18 = load i32, ptr %len.addr, align 4, !dbg !666
  %not20 = xor i32 %18, -1, !dbg !666
  %conv21 = trunc i32 %not20 to i16, !dbg !666
  %conv22 = zext i16 %conv21 to i32, !dbg !666
  %shr23 = ashr i32 %conv22, 8, !dbg !666
  %conv24 = trunc i32 %shr23 to i8, !dbg !666
  %19 = load ptr, ptr %s.addr, align 8, !dbg !666
  %pending_buf25 = getelementptr inbounds %struct.deflate_state, ptr %19, i32 0, i32 2, !dbg !666
  %20 = load ptr, ptr %pending_buf25, align 8, !dbg !666
  %21 = load ptr, ptr %s.addr, align 8, !dbg !666
  %pending26 = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 5, !dbg !666
  %22 = load i32, ptr %pending26, align 8, !dbg !666
  %inc27 = add i32 %22, 1, !dbg !666
  store i32 %inc27, ptr %pending26, align 8, !dbg !666
  %idxprom28 = sext i32 %22 to i64, !dbg !666
  %arrayidx29 = getelementptr i8, ptr %20, i64 %idxprom28, !dbg !666
  store i8 %conv24, ptr %arrayidx29, align 1, !dbg !666
  br label %if.end, !dbg !668

if.end:                                           ; preds = %if.then, %entry
  %23 = load ptr, ptr %s.addr, align 8, !dbg !669
  %pending_buf30 = getelementptr inbounds %struct.deflate_state, ptr %23, i32 0, i32 2, !dbg !670
  %24 = load ptr, ptr %pending_buf30, align 8, !dbg !670
  %25 = load ptr, ptr %s.addr, align 8, !dbg !671
  %pending31 = getelementptr inbounds %struct.deflate_state, ptr %25, i32 0, i32 5, !dbg !672
  %26 = load i32, ptr %pending31, align 8, !dbg !672
  %idxprom32 = sext i32 %26 to i64, !dbg !669
  %arrayidx33 = getelementptr i8, ptr %24, i64 %idxprom32, !dbg !669
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !673
  %28 = load i32, ptr %len.addr, align 4, !dbg !674
  %conv34 = zext i32 %28 to i64, !dbg !674
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx33, ptr align 1 %27, i64 %conv34, i1 false), !dbg !675
  %29 = load i32, ptr %len.addr, align 4, !dbg !676
  %30 = load ptr, ptr %s.addr, align 8, !dbg !677
  %pending35 = getelementptr inbounds %struct.deflate_state, ptr %30, i32 0, i32 5, !dbg !678
  %31 = load i32, ptr %pending35, align 8, !dbg !679
  %add = add i32 %31, %29, !dbg !679
  store i32 %add, ptr %pending35, align 8, !dbg !679
  ret void, !dbg !680
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @zlib_tr_stored_type_only(ptr noundef %s) #0 align 16 !dbg !681 {
entry:
  %s.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !683, metadata !DIExpression()), !dbg !689
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7, !dbg !690
  call void @llvm.dbg.declare(metadata ptr %len, metadata !684, metadata !DIExpression()), !dbg !690
  store i32 3, ptr %len, align 4, !dbg !690
  %0 = load ptr, ptr %s.addr, align 8, !dbg !691
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57, !dbg !691
  %1 = load i32, ptr %bi_valid, align 4, !dbg !691
  %2 = load i32, ptr %len, align 4, !dbg !691
  %sub = sub i32 16, %2, !dbg !691
  %cmp = icmp sgt i32 %1, %sub, !dbg !691
  br i1 %cmp, label %if.then, label %if.else, !dbg !690

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #7, !dbg !692
  call void @llvm.dbg.declare(metadata ptr %val, metadata !686, metadata !DIExpression()), !dbg !692
  store i32 0, ptr %val, align 4, !dbg !692
  %3 = load i32, ptr %val, align 4, !dbg !692
  %4 = load ptr, ptr %s.addr, align 8, !dbg !692
  %bi_valid1 = getelementptr inbounds %struct.deflate_state, ptr %4, i32 0, i32 57, !dbg !692
  %5 = load i32, ptr %bi_valid1, align 4, !dbg !692
  %shl = shl i32 %3, %5, !dbg !692
  %6 = load ptr, ptr %s.addr, align 8, !dbg !692
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 56, !dbg !692
  %7 = load i16, ptr %bi_buf, align 8, !dbg !692
  %conv = zext i16 %7 to i32, !dbg !692
  %or = or i32 %conv, %shl, !dbg !692
  %conv2 = trunc i32 %or to i16, !dbg !692
  store i16 %conv2, ptr %bi_buf, align 8, !dbg !692
  %8 = load ptr, ptr %s.addr, align 8, !dbg !693
  %bi_buf3 = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 56, !dbg !693
  %9 = load i16, ptr %bi_buf3, align 8, !dbg !693
  %conv4 = zext i16 %9 to i32, !dbg !693
  %and = and i32 %conv4, 255, !dbg !693
  %conv5 = trunc i32 %and to i8, !dbg !693
  %10 = load ptr, ptr %s.addr, align 8, !dbg !693
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %10, i32 0, i32 2, !dbg !693
  %11 = load ptr, ptr %pending_buf, align 8, !dbg !693
  %12 = load ptr, ptr %s.addr, align 8, !dbg !693
  %pending = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 5, !dbg !693
  %13 = load i32, ptr %pending, align 8, !dbg !693
  %inc = add i32 %13, 1, !dbg !693
  store i32 %inc, ptr %pending, align 8, !dbg !693
  %idxprom = sext i32 %13 to i64, !dbg !693
  %arrayidx = getelementptr i8, ptr %11, i64 %idxprom, !dbg !693
  store i8 %conv5, ptr %arrayidx, align 1, !dbg !693
  %14 = load ptr, ptr %s.addr, align 8, !dbg !696
  %bi_buf6 = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 56, !dbg !696
  %15 = load i16, ptr %bi_buf6, align 8, !dbg !696
  %conv7 = zext i16 %15 to i32, !dbg !696
  %shr = ashr i32 %conv7, 8, !dbg !696
  %conv8 = trunc i32 %shr to i8, !dbg !696
  %16 = load ptr, ptr %s.addr, align 8, !dbg !696
  %pending_buf9 = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 2, !dbg !696
  %17 = load ptr, ptr %pending_buf9, align 8, !dbg !696
  %18 = load ptr, ptr %s.addr, align 8, !dbg !696
  %pending10 = getelementptr inbounds %struct.deflate_state, ptr %18, i32 0, i32 5, !dbg !696
  %19 = load i32, ptr %pending10, align 8, !dbg !696
  %inc11 = add i32 %19, 1, !dbg !696
  store i32 %inc11, ptr %pending10, align 8, !dbg !696
  %idxprom12 = sext i32 %19 to i64, !dbg !696
  %arrayidx13 = getelementptr i8, ptr %17, i64 %idxprom12, !dbg !696
  store i8 %conv8, ptr %arrayidx13, align 1, !dbg !696
  %20 = load i32, ptr %val, align 4, !dbg !692
  %conv14 = trunc i32 %20 to i16, !dbg !692
  %conv15 = zext i16 %conv14 to i32, !dbg !692
  %21 = load ptr, ptr %s.addr, align 8, !dbg !692
  %bi_valid16 = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 57, !dbg !692
  %22 = load i32, ptr %bi_valid16, align 4, !dbg !692
  %conv17 = sext i32 %22 to i64, !dbg !692
  %sub18 = sub i64 16, %conv17, !dbg !692
  %sh_prom = trunc i64 %sub18 to i32, !dbg !692
  %shr19 = ashr i32 %conv15, %sh_prom, !dbg !692
  %conv20 = trunc i32 %shr19 to i16, !dbg !692
  %23 = load ptr, ptr %s.addr, align 8, !dbg !692
  %bi_buf21 = getelementptr inbounds %struct.deflate_state, ptr %23, i32 0, i32 56, !dbg !692
  store i16 %conv20, ptr %bi_buf21, align 8, !dbg !692
  %24 = load i32, ptr %len, align 4, !dbg !692
  %conv22 = sext i32 %24 to i64, !dbg !692
  %sub23 = sub i64 %conv22, 16, !dbg !692
  %25 = load ptr, ptr %s.addr, align 8, !dbg !692
  %bi_valid24 = getelementptr inbounds %struct.deflate_state, ptr %25, i32 0, i32 57, !dbg !692
  %26 = load i32, ptr %bi_valid24, align 4, !dbg !692
  %conv25 = sext i32 %26 to i64, !dbg !692
  %add = add i64 %conv25, %sub23, !dbg !692
  %conv26 = trunc i64 %add to i32, !dbg !692
  store i32 %conv26, ptr %bi_valid24, align 4, !dbg !692
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #7, !dbg !691
  br label %if.end, !dbg !692

if.else:                                          ; preds = %entry
  %27 = load ptr, ptr %s.addr, align 8, !dbg !698
  %bi_valid27 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 57, !dbg !698
  %28 = load i32, ptr %bi_valid27, align 4, !dbg !698
  %shl28 = shl i32 0, %28, !dbg !698
  %29 = load ptr, ptr %s.addr, align 8, !dbg !698
  %bi_buf29 = getelementptr inbounds %struct.deflate_state, ptr %29, i32 0, i32 56, !dbg !698
  %30 = load i16, ptr %bi_buf29, align 8, !dbg !698
  %conv30 = zext i16 %30 to i32, !dbg !698
  %or31 = or i32 %conv30, %shl28, !dbg !698
  %conv32 = trunc i32 %or31 to i16, !dbg !698
  store i16 %conv32, ptr %bi_buf29, align 8, !dbg !698
  %31 = load i32, ptr %len, align 4, !dbg !698
  %32 = load ptr, ptr %s.addr, align 8, !dbg !698
  %bi_valid33 = getelementptr inbounds %struct.deflate_state, ptr %32, i32 0, i32 57, !dbg !698
  %33 = load i32, ptr %bi_valid33, align 4, !dbg !698
  %add34 = add i32 %33, %31, !dbg !698
  store i32 %add34, ptr %bi_valid33, align 4, !dbg !698
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7, !dbg !700
  %34 = load ptr, ptr %s.addr, align 8, !dbg !701
  call void @bi_windup(ptr noundef %34) #6, !dbg !702
  %35 = load ptr, ptr %s.addr, align 8, !dbg !703
  %compressed_len = getelementptr inbounds %struct.deflate_state, ptr %35, i32 0, i32 53, !dbg !704
  %36 = load i64, ptr %compressed_len, align 8, !dbg !704
  %add35 = add i64 %36, 3, !dbg !705
  %and36 = and i64 %add35, -8, !dbg !706
  %37 = load ptr, ptr %s.addr, align 8, !dbg !707
  %compressed_len37 = getelementptr inbounds %struct.deflate_state, ptr %37, i32 0, i32 53, !dbg !708
  store i64 %and36, ptr %compressed_len37, align 8, !dbg !709
  ret void, !dbg !710
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bi_windup(ptr noundef %s) #3 align 16 !dbg !711 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !713, metadata !DIExpression()), !dbg !714
  %0 = load ptr, ptr %s.addr, align 8, !dbg !715
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57, !dbg !717
  %1 = load i32, ptr %bi_valid, align 4, !dbg !717
  %cmp = icmp sgt i32 %1, 8, !dbg !718
  br i1 %cmp, label %if.then, label %if.else, !dbg !719

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !720
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %2, i32 0, i32 56, !dbg !720
  %3 = load i16, ptr %bi_buf, align 8, !dbg !720
  %conv = zext i16 %3 to i32, !dbg !720
  %and = and i32 %conv, 255, !dbg !720
  %conv1 = trunc i32 %and to i8, !dbg !720
  %4 = load ptr, ptr %s.addr, align 8, !dbg !720
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %4, i32 0, i32 2, !dbg !720
  %5 = load ptr, ptr %pending_buf, align 8, !dbg !720
  %6 = load ptr, ptr %s.addr, align 8, !dbg !720
  %pending = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 5, !dbg !720
  %7 = load i32, ptr %pending, align 8, !dbg !720
  %inc = add i32 %7, 1, !dbg !720
  store i32 %inc, ptr %pending, align 8, !dbg !720
  %idxprom = sext i32 %7 to i64, !dbg !720
  %arrayidx = getelementptr i8, ptr %5, i64 %idxprom, !dbg !720
  store i8 %conv1, ptr %arrayidx, align 1, !dbg !720
  %8 = load ptr, ptr %s.addr, align 8, !dbg !724
  %bi_buf2 = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 56, !dbg !724
  %9 = load i16, ptr %bi_buf2, align 8, !dbg !724
  %conv3 = zext i16 %9 to i32, !dbg !724
  %shr = ashr i32 %conv3, 8, !dbg !724
  %conv4 = trunc i32 %shr to i8, !dbg !724
  %10 = load ptr, ptr %s.addr, align 8, !dbg !724
  %pending_buf5 = getelementptr inbounds %struct.deflate_state, ptr %10, i32 0, i32 2, !dbg !724
  %11 = load ptr, ptr %pending_buf5, align 8, !dbg !724
  %12 = load ptr, ptr %s.addr, align 8, !dbg !724
  %pending6 = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 5, !dbg !724
  %13 = load i32, ptr %pending6, align 8, !dbg !724
  %inc7 = add i32 %13, 1, !dbg !724
  store i32 %inc7, ptr %pending6, align 8, !dbg !724
  %idxprom8 = sext i32 %13 to i64, !dbg !724
  %arrayidx9 = getelementptr i8, ptr %11, i64 %idxprom8, !dbg !724
  store i8 %conv4, ptr %arrayidx9, align 1, !dbg !724
  br label %if.end21, !dbg !726

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %s.addr, align 8, !dbg !727
  %bi_valid10 = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 57, !dbg !729
  %15 = load i32, ptr %bi_valid10, align 4, !dbg !729
  %cmp11 = icmp sgt i32 %15, 0, !dbg !730
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !731

if.then13:                                        ; preds = %if.else
  %16 = load ptr, ptr %s.addr, align 8, !dbg !732
  %bi_buf14 = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 56, !dbg !732
  %17 = load i16, ptr %bi_buf14, align 8, !dbg !732
  %conv15 = trunc i16 %17 to i8, !dbg !732
  %18 = load ptr, ptr %s.addr, align 8, !dbg !732
  %pending_buf16 = getelementptr inbounds %struct.deflate_state, ptr %18, i32 0, i32 2, !dbg !732
  %19 = load ptr, ptr %pending_buf16, align 8, !dbg !732
  %20 = load ptr, ptr %s.addr, align 8, !dbg !732
  %pending17 = getelementptr inbounds %struct.deflate_state, ptr %20, i32 0, i32 5, !dbg !732
  %21 = load i32, ptr %pending17, align 8, !dbg !732
  %inc18 = add i32 %21, 1, !dbg !732
  store i32 %inc18, ptr %pending17, align 8, !dbg !732
  %idxprom19 = sext i32 %21 to i64, !dbg !732
  %arrayidx20 = getelementptr i8, ptr %19, i64 %idxprom19, !dbg !732
  store i8 %conv15, ptr %arrayidx20, align 1, !dbg !732
  br label %if.end, !dbg !735

if.end:                                           ; preds = %if.then13, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %22 = load ptr, ptr %s.addr, align 8, !dbg !736
  %bi_buf22 = getelementptr inbounds %struct.deflate_state, ptr %22, i32 0, i32 56, !dbg !737
  store i16 0, ptr %bi_buf22, align 8, !dbg !738
  %23 = load ptr, ptr %s.addr, align 8, !dbg !739
  %bi_valid23 = getelementptr inbounds %struct.deflate_state, ptr %23, i32 0, i32 57, !dbg !740
  store i32 0, ptr %bi_valid23, align 4, !dbg !741
  ret void, !dbg !742
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @zlib_tr_align(ptr noundef %s) #0 align 16 !dbg !743 {
entry:
  %s.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %len35 = alloca i32, align 4
  %val42 = alloca i32, align 4
  %len102 = alloca i32, align 4
  %val108 = alloca i32, align 4
  %len158 = alloca i32, align 4
  %val165 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !745, metadata !DIExpression()), !dbg !768
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7, !dbg !769
  call void @llvm.dbg.declare(metadata ptr %len, metadata !746, metadata !DIExpression()), !dbg !769
  store i32 3, ptr %len, align 4, !dbg !769
  %0 = load ptr, ptr %s.addr, align 8, !dbg !770
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57, !dbg !770
  %1 = load i32, ptr %bi_valid, align 4, !dbg !770
  %2 = load i32, ptr %len, align 4, !dbg !770
  %sub = sub i32 16, %2, !dbg !770
  %cmp = icmp sgt i32 %1, %sub, !dbg !770
  br i1 %cmp, label %if.then, label %if.else, !dbg !769

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #7, !dbg !771
  call void @llvm.dbg.declare(metadata ptr %val, metadata !748, metadata !DIExpression()), !dbg !771
  store i32 2, ptr %val, align 4, !dbg !771
  %3 = load i32, ptr %val, align 4, !dbg !771
  %4 = load ptr, ptr %s.addr, align 8, !dbg !771
  %bi_valid1 = getelementptr inbounds %struct.deflate_state, ptr %4, i32 0, i32 57, !dbg !771
  %5 = load i32, ptr %bi_valid1, align 4, !dbg !771
  %shl = shl i32 %3, %5, !dbg !771
  %6 = load ptr, ptr %s.addr, align 8, !dbg !771
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 56, !dbg !771
  %7 = load i16, ptr %bi_buf, align 8, !dbg !771
  %conv = zext i16 %7 to i32, !dbg !771
  %or = or i32 %conv, %shl, !dbg !771
  %conv2 = trunc i32 %or to i16, !dbg !771
  store i16 %conv2, ptr %bi_buf, align 8, !dbg !771
  %8 = load ptr, ptr %s.addr, align 8, !dbg !772
  %bi_buf3 = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 56, !dbg !772
  %9 = load i16, ptr %bi_buf3, align 8, !dbg !772
  %conv4 = zext i16 %9 to i32, !dbg !772
  %and = and i32 %conv4, 255, !dbg !772
  %conv5 = trunc i32 %and to i8, !dbg !772
  %10 = load ptr, ptr %s.addr, align 8, !dbg !772
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %10, i32 0, i32 2, !dbg !772
  %11 = load ptr, ptr %pending_buf, align 8, !dbg !772
  %12 = load ptr, ptr %s.addr, align 8, !dbg !772
  %pending = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 5, !dbg !772
  %13 = load i32, ptr %pending, align 8, !dbg !772
  %inc = add i32 %13, 1, !dbg !772
  store i32 %inc, ptr %pending, align 8, !dbg !772
  %idxprom = sext i32 %13 to i64, !dbg !772
  %arrayidx = getelementptr i8, ptr %11, i64 %idxprom, !dbg !772
  store i8 %conv5, ptr %arrayidx, align 1, !dbg !772
  %14 = load ptr, ptr %s.addr, align 8, !dbg !775
  %bi_buf6 = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 56, !dbg !775
  %15 = load i16, ptr %bi_buf6, align 8, !dbg !775
  %conv7 = zext i16 %15 to i32, !dbg !775
  %shr = ashr i32 %conv7, 8, !dbg !775
  %conv8 = trunc i32 %shr to i8, !dbg !775
  %16 = load ptr, ptr %s.addr, align 8, !dbg !775
  %pending_buf9 = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 2, !dbg !775
  %17 = load ptr, ptr %pending_buf9, align 8, !dbg !775
  %18 = load ptr, ptr %s.addr, align 8, !dbg !775
  %pending10 = getelementptr inbounds %struct.deflate_state, ptr %18, i32 0, i32 5, !dbg !775
  %19 = load i32, ptr %pending10, align 8, !dbg !775
  %inc11 = add i32 %19, 1, !dbg !775
  store i32 %inc11, ptr %pending10, align 8, !dbg !775
  %idxprom12 = sext i32 %19 to i64, !dbg !775
  %arrayidx13 = getelementptr i8, ptr %17, i64 %idxprom12, !dbg !775
  store i8 %conv8, ptr %arrayidx13, align 1, !dbg !775
  %20 = load i32, ptr %val, align 4, !dbg !771
  %conv14 = trunc i32 %20 to i16, !dbg !771
  %conv15 = zext i16 %conv14 to i32, !dbg !771
  %21 = load ptr, ptr %s.addr, align 8, !dbg !771
  %bi_valid16 = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 57, !dbg !771
  %22 = load i32, ptr %bi_valid16, align 4, !dbg !771
  %conv17 = sext i32 %22 to i64, !dbg !771
  %sub18 = sub i64 16, %conv17, !dbg !771
  %sh_prom = trunc i64 %sub18 to i32, !dbg !771
  %shr19 = ashr i32 %conv15, %sh_prom, !dbg !771
  %conv20 = trunc i32 %shr19 to i16, !dbg !771
  %23 = load ptr, ptr %s.addr, align 8, !dbg !771
  %bi_buf21 = getelementptr inbounds %struct.deflate_state, ptr %23, i32 0, i32 56, !dbg !771
  store i16 %conv20, ptr %bi_buf21, align 8, !dbg !771
  %24 = load i32, ptr %len, align 4, !dbg !771
  %conv22 = sext i32 %24 to i64, !dbg !771
  %sub23 = sub i64 %conv22, 16, !dbg !771
  %25 = load ptr, ptr %s.addr, align 8, !dbg !771
  %bi_valid24 = getelementptr inbounds %struct.deflate_state, ptr %25, i32 0, i32 57, !dbg !771
  %26 = load i32, ptr %bi_valid24, align 4, !dbg !771
  %conv25 = sext i32 %26 to i64, !dbg !771
  %add = add i64 %conv25, %sub23, !dbg !771
  %conv26 = trunc i64 %add to i32, !dbg !771
  store i32 %conv26, ptr %bi_valid24, align 4, !dbg !771
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #7, !dbg !770
  br label %if.end, !dbg !771

if.else:                                          ; preds = %entry
  %27 = load ptr, ptr %s.addr, align 8, !dbg !777
  %bi_valid27 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 57, !dbg !777
  %28 = load i32, ptr %bi_valid27, align 4, !dbg !777
  %shl28 = shl i32 2, %28, !dbg !777
  %29 = load ptr, ptr %s.addr, align 8, !dbg !777
  %bi_buf29 = getelementptr inbounds %struct.deflate_state, ptr %29, i32 0, i32 56, !dbg !777
  %30 = load i16, ptr %bi_buf29, align 8, !dbg !777
  %conv30 = zext i16 %30 to i32, !dbg !777
  %or31 = or i32 %conv30, %shl28, !dbg !777
  %conv32 = trunc i32 %or31 to i16, !dbg !777
  store i16 %conv32, ptr %bi_buf29, align 8, !dbg !777
  %31 = load i32, ptr %len, align 4, !dbg !777
  %32 = load ptr, ptr %s.addr, align 8, !dbg !777
  %bi_valid33 = getelementptr inbounds %struct.deflate_state, ptr %32, i32 0, i32 57, !dbg !777
  %33 = load i32, ptr %bi_valid33, align 4, !dbg !777
  %add34 = add i32 %33, %31, !dbg !777
  store i32 %add34, ptr %bi_valid33, align 4, !dbg !777
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7, !dbg !779
  call void @llvm.lifetime.start.p0(i64 4, ptr %len35) #7, !dbg !780
  call void @llvm.dbg.declare(metadata ptr %len35, metadata !751, metadata !DIExpression()), !dbg !780
  %34 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256, i32 1), align 2, !dbg !780
  %conv36 = zext i16 %34 to i32, !dbg !780
  store i32 %conv36, ptr %len35, align 4, !dbg !780
  %35 = load ptr, ptr %s.addr, align 8, !dbg !781
  %bi_valid37 = getelementptr inbounds %struct.deflate_state, ptr %35, i32 0, i32 57, !dbg !781
  %36 = load i32, ptr %bi_valid37, align 4, !dbg !781
  %37 = load i32, ptr %len35, align 4, !dbg !781
  %sub38 = sub i32 16, %37, !dbg !781
  %cmp39 = icmp sgt i32 %36, %sub38, !dbg !781
  br i1 %cmp39, label %if.then41, label %if.else83, !dbg !780

if.then41:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %val42) #7, !dbg !782
  call void @llvm.dbg.declare(metadata ptr %val42, metadata !753, metadata !DIExpression()), !dbg !782
  %38 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256), align 16, !dbg !782
  %conv43 = zext i16 %38 to i32, !dbg !782
  store i32 %conv43, ptr %val42, align 4, !dbg !782
  %39 = load i32, ptr %val42, align 4, !dbg !782
  %40 = load ptr, ptr %s.addr, align 8, !dbg !782
  %bi_valid44 = getelementptr inbounds %struct.deflate_state, ptr %40, i32 0, i32 57, !dbg !782
  %41 = load i32, ptr %bi_valid44, align 4, !dbg !782
  %shl45 = shl i32 %39, %41, !dbg !782
  %42 = load ptr, ptr %s.addr, align 8, !dbg !782
  %bi_buf46 = getelementptr inbounds %struct.deflate_state, ptr %42, i32 0, i32 56, !dbg !782
  %43 = load i16, ptr %bi_buf46, align 8, !dbg !782
  %conv47 = zext i16 %43 to i32, !dbg !782
  %or48 = or i32 %conv47, %shl45, !dbg !782
  %conv49 = trunc i32 %or48 to i16, !dbg !782
  store i16 %conv49, ptr %bi_buf46, align 8, !dbg !782
  %44 = load ptr, ptr %s.addr, align 8, !dbg !783
  %bi_buf50 = getelementptr inbounds %struct.deflate_state, ptr %44, i32 0, i32 56, !dbg !783
  %45 = load i16, ptr %bi_buf50, align 8, !dbg !783
  %conv51 = zext i16 %45 to i32, !dbg !783
  %and52 = and i32 %conv51, 255, !dbg !783
  %conv53 = trunc i32 %and52 to i8, !dbg !783
  %46 = load ptr, ptr %s.addr, align 8, !dbg !783
  %pending_buf54 = getelementptr inbounds %struct.deflate_state, ptr %46, i32 0, i32 2, !dbg !783
  %47 = load ptr, ptr %pending_buf54, align 8, !dbg !783
  %48 = load ptr, ptr %s.addr, align 8, !dbg !783
  %pending55 = getelementptr inbounds %struct.deflate_state, ptr %48, i32 0, i32 5, !dbg !783
  %49 = load i32, ptr %pending55, align 8, !dbg !783
  %inc56 = add i32 %49, 1, !dbg !783
  store i32 %inc56, ptr %pending55, align 8, !dbg !783
  %idxprom57 = sext i32 %49 to i64, !dbg !783
  %arrayidx58 = getelementptr i8, ptr %47, i64 %idxprom57, !dbg !783
  store i8 %conv53, ptr %arrayidx58, align 1, !dbg !783
  %50 = load ptr, ptr %s.addr, align 8, !dbg !786
  %bi_buf59 = getelementptr inbounds %struct.deflate_state, ptr %50, i32 0, i32 56, !dbg !786
  %51 = load i16, ptr %bi_buf59, align 8, !dbg !786
  %conv60 = zext i16 %51 to i32, !dbg !786
  %shr61 = ashr i32 %conv60, 8, !dbg !786
  %conv62 = trunc i32 %shr61 to i8, !dbg !786
  %52 = load ptr, ptr %s.addr, align 8, !dbg !786
  %pending_buf63 = getelementptr inbounds %struct.deflate_state, ptr %52, i32 0, i32 2, !dbg !786
  %53 = load ptr, ptr %pending_buf63, align 8, !dbg !786
  %54 = load ptr, ptr %s.addr, align 8, !dbg !786
  %pending64 = getelementptr inbounds %struct.deflate_state, ptr %54, i32 0, i32 5, !dbg !786
  %55 = load i32, ptr %pending64, align 8, !dbg !786
  %inc65 = add i32 %55, 1, !dbg !786
  store i32 %inc65, ptr %pending64, align 8, !dbg !786
  %idxprom66 = sext i32 %55 to i64, !dbg !786
  %arrayidx67 = getelementptr i8, ptr %53, i64 %idxprom66, !dbg !786
  store i8 %conv62, ptr %arrayidx67, align 1, !dbg !786
  %56 = load i32, ptr %val42, align 4, !dbg !782
  %conv68 = trunc i32 %56 to i16, !dbg !782
  %conv69 = zext i16 %conv68 to i32, !dbg !782
  %57 = load ptr, ptr %s.addr, align 8, !dbg !782
  %bi_valid70 = getelementptr inbounds %struct.deflate_state, ptr %57, i32 0, i32 57, !dbg !782
  %58 = load i32, ptr %bi_valid70, align 4, !dbg !782
  %conv71 = sext i32 %58 to i64, !dbg !782
  %sub72 = sub i64 16, %conv71, !dbg !782
  %sh_prom73 = trunc i64 %sub72 to i32, !dbg !782
  %shr74 = ashr i32 %conv69, %sh_prom73, !dbg !782
  %conv75 = trunc i32 %shr74 to i16, !dbg !782
  %59 = load ptr, ptr %s.addr, align 8, !dbg !782
  %bi_buf76 = getelementptr inbounds %struct.deflate_state, ptr %59, i32 0, i32 56, !dbg !782
  store i16 %conv75, ptr %bi_buf76, align 8, !dbg !782
  %60 = load i32, ptr %len35, align 4, !dbg !782
  %conv77 = sext i32 %60 to i64, !dbg !782
  %sub78 = sub i64 %conv77, 16, !dbg !782
  %61 = load ptr, ptr %s.addr, align 8, !dbg !782
  %bi_valid79 = getelementptr inbounds %struct.deflate_state, ptr %61, i32 0, i32 57, !dbg !782
  %62 = load i32, ptr %bi_valid79, align 4, !dbg !782
  %conv80 = sext i32 %62 to i64, !dbg !782
  %add81 = add i64 %conv80, %sub78, !dbg !782
  %conv82 = trunc i64 %add81 to i32, !dbg !782
  store i32 %conv82, ptr %bi_valid79, align 4, !dbg !782
  call void @llvm.lifetime.end.p0(i64 4, ptr %val42) #7, !dbg !781
  br label %if.end93, !dbg !782

if.else83:                                        ; preds = %if.end
  %63 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256), align 16, !dbg !788
  %conv84 = zext i16 %63 to i32, !dbg !788
  %64 = load ptr, ptr %s.addr, align 8, !dbg !788
  %bi_valid85 = getelementptr inbounds %struct.deflate_state, ptr %64, i32 0, i32 57, !dbg !788
  %65 = load i32, ptr %bi_valid85, align 4, !dbg !788
  %shl86 = shl i32 %conv84, %65, !dbg !788
  %66 = load ptr, ptr %s.addr, align 8, !dbg !788
  %bi_buf87 = getelementptr inbounds %struct.deflate_state, ptr %66, i32 0, i32 56, !dbg !788
  %67 = load i16, ptr %bi_buf87, align 8, !dbg !788
  %conv88 = zext i16 %67 to i32, !dbg !788
  %or89 = or i32 %conv88, %shl86, !dbg !788
  %conv90 = trunc i32 %or89 to i16, !dbg !788
  store i16 %conv90, ptr %bi_buf87, align 8, !dbg !788
  %68 = load i32, ptr %len35, align 4, !dbg !788
  %69 = load ptr, ptr %s.addr, align 8, !dbg !788
  %bi_valid91 = getelementptr inbounds %struct.deflate_state, ptr %69, i32 0, i32 57, !dbg !788
  %70 = load i32, ptr %bi_valid91, align 4, !dbg !788
  %add92 = add i32 %70, %68, !dbg !788
  store i32 %add92, ptr %bi_valid91, align 4, !dbg !788
  br label %if.end93

if.end93:                                         ; preds = %if.else83, %if.then41
  call void @llvm.lifetime.end.p0(i64 4, ptr %len35) #7, !dbg !790
  %71 = load ptr, ptr %s.addr, align 8, !dbg !791
  %compressed_len = getelementptr inbounds %struct.deflate_state, ptr %71, i32 0, i32 53, !dbg !792
  %72 = load i64, ptr %compressed_len, align 8, !dbg !793
  %add94 = add i64 %72, 10, !dbg !793
  store i64 %add94, ptr %compressed_len, align 8, !dbg !793
  %73 = load ptr, ptr %s.addr, align 8, !dbg !794
  call void @bi_flush(ptr noundef %73) #6, !dbg !795
  %74 = load ptr, ptr %s.addr, align 8, !dbg !796
  %last_eob_len = getelementptr inbounds %struct.deflate_state, ptr %74, i32 0, i32 55, !dbg !797
  %75 = load i32, ptr %last_eob_len, align 4, !dbg !797
  %add95 = add i32 1, %75, !dbg !798
  %add96 = add i32 %add95, 10, !dbg !799
  %76 = load ptr, ptr %s.addr, align 8, !dbg !800
  %bi_valid97 = getelementptr inbounds %struct.deflate_state, ptr %76, i32 0, i32 57, !dbg !801
  %77 = load i32, ptr %bi_valid97, align 4, !dbg !801
  %sub98 = sub i32 %add96, %77, !dbg !802
  %cmp99 = icmp slt i32 %sub98, 9, !dbg !803
  br i1 %cmp99, label %if.then101, label %if.end219, !dbg !804

if.then101:                                       ; preds = %if.end93
  call void @llvm.lifetime.start.p0(i64 4, ptr %len102) #7, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %len102, metadata !756, metadata !DIExpression()), !dbg !805
  store i32 3, ptr %len102, align 4, !dbg !805
  %78 = load ptr, ptr %s.addr, align 8, !dbg !806
  %bi_valid103 = getelementptr inbounds %struct.deflate_state, ptr %78, i32 0, i32 57, !dbg !806
  %79 = load i32, ptr %bi_valid103, align 4, !dbg !806
  %80 = load i32, ptr %len102, align 4, !dbg !806
  %sub104 = sub i32 16, %80, !dbg !806
  %cmp105 = icmp sgt i32 %79, %sub104, !dbg !806
  br i1 %cmp105, label %if.then107, label %if.else148, !dbg !805

if.then107:                                       ; preds = %if.then101
  call void @llvm.lifetime.start.p0(i64 4, ptr %val108) #7, !dbg !807
  call void @llvm.dbg.declare(metadata ptr %val108, metadata !760, metadata !DIExpression()), !dbg !807
  store i32 2, ptr %val108, align 4, !dbg !807
  %81 = load i32, ptr %val108, align 4, !dbg !807
  %82 = load ptr, ptr %s.addr, align 8, !dbg !807
  %bi_valid109 = getelementptr inbounds %struct.deflate_state, ptr %82, i32 0, i32 57, !dbg !807
  %83 = load i32, ptr %bi_valid109, align 4, !dbg !807
  %shl110 = shl i32 %81, %83, !dbg !807
  %84 = load ptr, ptr %s.addr, align 8, !dbg !807
  %bi_buf111 = getelementptr inbounds %struct.deflate_state, ptr %84, i32 0, i32 56, !dbg !807
  %85 = load i16, ptr %bi_buf111, align 8, !dbg !807
  %conv112 = zext i16 %85 to i32, !dbg !807
  %or113 = or i32 %conv112, %shl110, !dbg !807
  %conv114 = trunc i32 %or113 to i16, !dbg !807
  store i16 %conv114, ptr %bi_buf111, align 8, !dbg !807
  %86 = load ptr, ptr %s.addr, align 8, !dbg !808
  %bi_buf115 = getelementptr inbounds %struct.deflate_state, ptr %86, i32 0, i32 56, !dbg !808
  %87 = load i16, ptr %bi_buf115, align 8, !dbg !808
  %conv116 = zext i16 %87 to i32, !dbg !808
  %and117 = and i32 %conv116, 255, !dbg !808
  %conv118 = trunc i32 %and117 to i8, !dbg !808
  %88 = load ptr, ptr %s.addr, align 8, !dbg !808
  %pending_buf119 = getelementptr inbounds %struct.deflate_state, ptr %88, i32 0, i32 2, !dbg !808
  %89 = load ptr, ptr %pending_buf119, align 8, !dbg !808
  %90 = load ptr, ptr %s.addr, align 8, !dbg !808
  %pending120 = getelementptr inbounds %struct.deflate_state, ptr %90, i32 0, i32 5, !dbg !808
  %91 = load i32, ptr %pending120, align 8, !dbg !808
  %inc121 = add i32 %91, 1, !dbg !808
  store i32 %inc121, ptr %pending120, align 8, !dbg !808
  %idxprom122 = sext i32 %91 to i64, !dbg !808
  %arrayidx123 = getelementptr i8, ptr %89, i64 %idxprom122, !dbg !808
  store i8 %conv118, ptr %arrayidx123, align 1, !dbg !808
  %92 = load ptr, ptr %s.addr, align 8, !dbg !811
  %bi_buf124 = getelementptr inbounds %struct.deflate_state, ptr %92, i32 0, i32 56, !dbg !811
  %93 = load i16, ptr %bi_buf124, align 8, !dbg !811
  %conv125 = zext i16 %93 to i32, !dbg !811
  %shr126 = ashr i32 %conv125, 8, !dbg !811
  %conv127 = trunc i32 %shr126 to i8, !dbg !811
  %94 = load ptr, ptr %s.addr, align 8, !dbg !811
  %pending_buf128 = getelementptr inbounds %struct.deflate_state, ptr %94, i32 0, i32 2, !dbg !811
  %95 = load ptr, ptr %pending_buf128, align 8, !dbg !811
  %96 = load ptr, ptr %s.addr, align 8, !dbg !811
  %pending129 = getelementptr inbounds %struct.deflate_state, ptr %96, i32 0, i32 5, !dbg !811
  %97 = load i32, ptr %pending129, align 8, !dbg !811
  %inc130 = add i32 %97, 1, !dbg !811
  store i32 %inc130, ptr %pending129, align 8, !dbg !811
  %idxprom131 = sext i32 %97 to i64, !dbg !811
  %arrayidx132 = getelementptr i8, ptr %95, i64 %idxprom131, !dbg !811
  store i8 %conv127, ptr %arrayidx132, align 1, !dbg !811
  %98 = load i32, ptr %val108, align 4, !dbg !807
  %conv133 = trunc i32 %98 to i16, !dbg !807
  %conv134 = zext i16 %conv133 to i32, !dbg !807
  %99 = load ptr, ptr %s.addr, align 8, !dbg !807
  %bi_valid135 = getelementptr inbounds %struct.deflate_state, ptr %99, i32 0, i32 57, !dbg !807
  %100 = load i32, ptr %bi_valid135, align 4, !dbg !807
  %conv136 = sext i32 %100 to i64, !dbg !807
  %sub137 = sub i64 16, %conv136, !dbg !807
  %sh_prom138 = trunc i64 %sub137 to i32, !dbg !807
  %shr139 = ashr i32 %conv134, %sh_prom138, !dbg !807
  %conv140 = trunc i32 %shr139 to i16, !dbg !807
  %101 = load ptr, ptr %s.addr, align 8, !dbg !807
  %bi_buf141 = getelementptr inbounds %struct.deflate_state, ptr %101, i32 0, i32 56, !dbg !807
  store i16 %conv140, ptr %bi_buf141, align 8, !dbg !807
  %102 = load i32, ptr %len102, align 4, !dbg !807
  %conv142 = sext i32 %102 to i64, !dbg !807
  %sub143 = sub i64 %conv142, 16, !dbg !807
  %103 = load ptr, ptr %s.addr, align 8, !dbg !807
  %bi_valid144 = getelementptr inbounds %struct.deflate_state, ptr %103, i32 0, i32 57, !dbg !807
  %104 = load i32, ptr %bi_valid144, align 4, !dbg !807
  %conv145 = sext i32 %104 to i64, !dbg !807
  %add146 = add i64 %conv145, %sub143, !dbg !807
  %conv147 = trunc i64 %add146 to i32, !dbg !807
  store i32 %conv147, ptr %bi_valid144, align 4, !dbg !807
  call void @llvm.lifetime.end.p0(i64 4, ptr %val108) #7, !dbg !806
  br label %if.end157, !dbg !807

if.else148:                                       ; preds = %if.then101
  %105 = load ptr, ptr %s.addr, align 8, !dbg !813
  %bi_valid149 = getelementptr inbounds %struct.deflate_state, ptr %105, i32 0, i32 57, !dbg !813
  %106 = load i32, ptr %bi_valid149, align 4, !dbg !813
  %shl150 = shl i32 2, %106, !dbg !813
  %107 = load ptr, ptr %s.addr, align 8, !dbg !813
  %bi_buf151 = getelementptr inbounds %struct.deflate_state, ptr %107, i32 0, i32 56, !dbg !813
  %108 = load i16, ptr %bi_buf151, align 8, !dbg !813
  %conv152 = zext i16 %108 to i32, !dbg !813
  %or153 = or i32 %conv152, %shl150, !dbg !813
  %conv154 = trunc i32 %or153 to i16, !dbg !813
  store i16 %conv154, ptr %bi_buf151, align 8, !dbg !813
  %109 = load i32, ptr %len102, align 4, !dbg !813
  %110 = load ptr, ptr %s.addr, align 8, !dbg !813
  %bi_valid155 = getelementptr inbounds %struct.deflate_state, ptr %110, i32 0, i32 57, !dbg !813
  %111 = load i32, ptr %bi_valid155, align 4, !dbg !813
  %add156 = add i32 %111, %109, !dbg !813
  store i32 %add156, ptr %bi_valid155, align 4, !dbg !813
  br label %if.end157

if.end157:                                        ; preds = %if.else148, %if.then107
  call void @llvm.lifetime.end.p0(i64 4, ptr %len102) #7, !dbg !815
  call void @llvm.lifetime.start.p0(i64 4, ptr %len158) #7, !dbg !816
  call void @llvm.dbg.declare(metadata ptr %len158, metadata !763, metadata !DIExpression()), !dbg !816
  %112 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256, i32 1), align 2, !dbg !816
  %conv159 = zext i16 %112 to i32, !dbg !816
  store i32 %conv159, ptr %len158, align 4, !dbg !816
  %113 = load ptr, ptr %s.addr, align 8, !dbg !817
  %bi_valid160 = getelementptr inbounds %struct.deflate_state, ptr %113, i32 0, i32 57, !dbg !817
  %114 = load i32, ptr %bi_valid160, align 4, !dbg !817
  %115 = load i32, ptr %len158, align 4, !dbg !817
  %sub161 = sub i32 16, %115, !dbg !817
  %cmp162 = icmp sgt i32 %114, %sub161, !dbg !817
  br i1 %cmp162, label %if.then164, label %if.else206, !dbg !816

if.then164:                                       ; preds = %if.end157
  call void @llvm.lifetime.start.p0(i64 4, ptr %val165) #7, !dbg !818
  call void @llvm.dbg.declare(metadata ptr %val165, metadata !765, metadata !DIExpression()), !dbg !818
  %116 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256), align 16, !dbg !818
  %conv166 = zext i16 %116 to i32, !dbg !818
  store i32 %conv166, ptr %val165, align 4, !dbg !818
  %117 = load i32, ptr %val165, align 4, !dbg !818
  %118 = load ptr, ptr %s.addr, align 8, !dbg !818
  %bi_valid167 = getelementptr inbounds %struct.deflate_state, ptr %118, i32 0, i32 57, !dbg !818
  %119 = load i32, ptr %bi_valid167, align 4, !dbg !818
  %shl168 = shl i32 %117, %119, !dbg !818
  %120 = load ptr, ptr %s.addr, align 8, !dbg !818
  %bi_buf169 = getelementptr inbounds %struct.deflate_state, ptr %120, i32 0, i32 56, !dbg !818
  %121 = load i16, ptr %bi_buf169, align 8, !dbg !818
  %conv170 = zext i16 %121 to i32, !dbg !818
  %or171 = or i32 %conv170, %shl168, !dbg !818
  %conv172 = trunc i32 %or171 to i16, !dbg !818
  store i16 %conv172, ptr %bi_buf169, align 8, !dbg !818
  %122 = load ptr, ptr %s.addr, align 8, !dbg !819
  %bi_buf173 = getelementptr inbounds %struct.deflate_state, ptr %122, i32 0, i32 56, !dbg !819
  %123 = load i16, ptr %bi_buf173, align 8, !dbg !819
  %conv174 = zext i16 %123 to i32, !dbg !819
  %and175 = and i32 %conv174, 255, !dbg !819
  %conv176 = trunc i32 %and175 to i8, !dbg !819
  %124 = load ptr, ptr %s.addr, align 8, !dbg !819
  %pending_buf177 = getelementptr inbounds %struct.deflate_state, ptr %124, i32 0, i32 2, !dbg !819
  %125 = load ptr, ptr %pending_buf177, align 8, !dbg !819
  %126 = load ptr, ptr %s.addr, align 8, !dbg !819
  %pending178 = getelementptr inbounds %struct.deflate_state, ptr %126, i32 0, i32 5, !dbg !819
  %127 = load i32, ptr %pending178, align 8, !dbg !819
  %inc179 = add i32 %127, 1, !dbg !819
  store i32 %inc179, ptr %pending178, align 8, !dbg !819
  %idxprom180 = sext i32 %127 to i64, !dbg !819
  %arrayidx181 = getelementptr i8, ptr %125, i64 %idxprom180, !dbg !819
  store i8 %conv176, ptr %arrayidx181, align 1, !dbg !819
  %128 = load ptr, ptr %s.addr, align 8, !dbg !822
  %bi_buf182 = getelementptr inbounds %struct.deflate_state, ptr %128, i32 0, i32 56, !dbg !822
  %129 = load i16, ptr %bi_buf182, align 8, !dbg !822
  %conv183 = zext i16 %129 to i32, !dbg !822
  %shr184 = ashr i32 %conv183, 8, !dbg !822
  %conv185 = trunc i32 %shr184 to i8, !dbg !822
  %130 = load ptr, ptr %s.addr, align 8, !dbg !822
  %pending_buf186 = getelementptr inbounds %struct.deflate_state, ptr %130, i32 0, i32 2, !dbg !822
  %131 = load ptr, ptr %pending_buf186, align 8, !dbg !822
  %132 = load ptr, ptr %s.addr, align 8, !dbg !822
  %pending187 = getelementptr inbounds %struct.deflate_state, ptr %132, i32 0, i32 5, !dbg !822
  %133 = load i32, ptr %pending187, align 8, !dbg !822
  %inc188 = add i32 %133, 1, !dbg !822
  store i32 %inc188, ptr %pending187, align 8, !dbg !822
  %idxprom189 = sext i32 %133 to i64, !dbg !822
  %arrayidx190 = getelementptr i8, ptr %131, i64 %idxprom189, !dbg !822
  store i8 %conv185, ptr %arrayidx190, align 1, !dbg !822
  %134 = load i32, ptr %val165, align 4, !dbg !818
  %conv191 = trunc i32 %134 to i16, !dbg !818
  %conv192 = zext i16 %conv191 to i32, !dbg !818
  %135 = load ptr, ptr %s.addr, align 8, !dbg !818
  %bi_valid193 = getelementptr inbounds %struct.deflate_state, ptr %135, i32 0, i32 57, !dbg !818
  %136 = load i32, ptr %bi_valid193, align 4, !dbg !818
  %conv194 = sext i32 %136 to i64, !dbg !818
  %sub195 = sub i64 16, %conv194, !dbg !818
  %sh_prom196 = trunc i64 %sub195 to i32, !dbg !818
  %shr197 = ashr i32 %conv192, %sh_prom196, !dbg !818
  %conv198 = trunc i32 %shr197 to i16, !dbg !818
  %137 = load ptr, ptr %s.addr, align 8, !dbg !818
  %bi_buf199 = getelementptr inbounds %struct.deflate_state, ptr %137, i32 0, i32 56, !dbg !818
  store i16 %conv198, ptr %bi_buf199, align 8, !dbg !818
  %138 = load i32, ptr %len158, align 4, !dbg !818
  %conv200 = sext i32 %138 to i64, !dbg !818
  %sub201 = sub i64 %conv200, 16, !dbg !818
  %139 = load ptr, ptr %s.addr, align 8, !dbg !818
  %bi_valid202 = getelementptr inbounds %struct.deflate_state, ptr %139, i32 0, i32 57, !dbg !818
  %140 = load i32, ptr %bi_valid202, align 4, !dbg !818
  %conv203 = sext i32 %140 to i64, !dbg !818
  %add204 = add i64 %conv203, %sub201, !dbg !818
  %conv205 = trunc i64 %add204 to i32, !dbg !818
  store i32 %conv205, ptr %bi_valid202, align 4, !dbg !818
  call void @llvm.lifetime.end.p0(i64 4, ptr %val165) #7, !dbg !817
  br label %if.end216, !dbg !818

if.else206:                                       ; preds = %if.end157
  %141 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i64 0, i64 256), align 16, !dbg !824
  %conv207 = zext i16 %141 to i32, !dbg !824
  %142 = load ptr, ptr %s.addr, align 8, !dbg !824
  %bi_valid208 = getelementptr inbounds %struct.deflate_state, ptr %142, i32 0, i32 57, !dbg !824
  %143 = load i32, ptr %bi_valid208, align 4, !dbg !824
  %shl209 = shl i32 %conv207, %143, !dbg !824
  %144 = load ptr, ptr %s.addr, align 8, !dbg !824
  %bi_buf210 = getelementptr inbounds %struct.deflate_state, ptr %144, i32 0, i32 56, !dbg !824
  %145 = load i16, ptr %bi_buf210, align 8, !dbg !824
  %conv211 = zext i16 %145 to i32, !dbg !824
  %or212 = or i32 %conv211, %shl209, !dbg !824
  %conv213 = trunc i32 %or212 to i16, !dbg !824
  store i16 %conv213, ptr %bi_buf210, align 8, !dbg !824
  %146 = load i32, ptr %len158, align 4, !dbg !824
  %147 = load ptr, ptr %s.addr, align 8, !dbg !824
  %bi_valid214 = getelementptr inbounds %struct.deflate_state, ptr %147, i32 0, i32 57, !dbg !824
  %148 = load i32, ptr %bi_valid214, align 4, !dbg !824
  %add215 = add i32 %148, %146, !dbg !824
  store i32 %add215, ptr %bi_valid214, align 4, !dbg !824
  br label %if.end216

if.end216:                                        ; preds = %if.else206, %if.then164
  call void @llvm.lifetime.end.p0(i64 4, ptr %len158) #7, !dbg !826
  %149 = load ptr, ptr %s.addr, align 8, !dbg !827
  %compressed_len217 = getelementptr inbounds %struct.deflate_state, ptr %149, i32 0, i32 53, !dbg !828
  %150 = load i64, ptr %compressed_len217, align 8, !dbg !829
  %add218 = add i64 %150, 10, !dbg !829
  store i64 %add218, ptr %compressed_len217, align 8, !dbg !829
  %151 = load ptr, ptr %s.addr, align 8, !dbg !830
  call void @bi_flush(ptr noundef %151) #6, !dbg !831
  br label %if.end219, !dbg !832

if.end219:                                        ; preds = %if.end216, %if.end93
  %152 = load ptr, ptr %s.addr, align 8, !dbg !833
  %last_eob_len220 = getelementptr inbounds %struct.deflate_state, ptr %152, i32 0, i32 55, !dbg !834
  store i32 7, ptr %last_eob_len220, align 4, !dbg !835
  ret void, !dbg !836
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bi_flush(ptr noundef %s) #3 align 16 !dbg !837 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !839, metadata !DIExpression()), !dbg !840
  %0 = load ptr, ptr %s.addr, align 8, !dbg !841
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57, !dbg !843
  %1 = load i32, ptr %bi_valid, align 4, !dbg !843
  %cmp = icmp eq i32 %1, 16, !dbg !844
  br i1 %cmp, label %if.then, label %if.else, !dbg !845

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !846
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %2, i32 0, i32 56, !dbg !846
  %3 = load i16, ptr %bi_buf, align 8, !dbg !846
  %conv = zext i16 %3 to i32, !dbg !846
  %and = and i32 %conv, 255, !dbg !846
  %conv1 = trunc i32 %and to i8, !dbg !846
  %4 = load ptr, ptr %s.addr, align 8, !dbg !846
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %4, i32 0, i32 2, !dbg !846
  %5 = load ptr, ptr %pending_buf, align 8, !dbg !846
  %6 = load ptr, ptr %s.addr, align 8, !dbg !846
  %pending = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 5, !dbg !846
  %7 = load i32, ptr %pending, align 8, !dbg !846
  %inc = add i32 %7, 1, !dbg !846
  store i32 %inc, ptr %pending, align 8, !dbg !846
  %idxprom = sext i32 %7 to i64, !dbg !846
  %arrayidx = getelementptr i8, ptr %5, i64 %idxprom, !dbg !846
  store i8 %conv1, ptr %arrayidx, align 1, !dbg !846
  %8 = load ptr, ptr %s.addr, align 8, !dbg !850
  %bi_buf2 = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 56, !dbg !850
  %9 = load i16, ptr %bi_buf2, align 8, !dbg !850
  %conv3 = zext i16 %9 to i32, !dbg !850
  %shr = ashr i32 %conv3, 8, !dbg !850
  %conv4 = trunc i32 %shr to i8, !dbg !850
  %10 = load ptr, ptr %s.addr, align 8, !dbg !850
  %pending_buf5 = getelementptr inbounds %struct.deflate_state, ptr %10, i32 0, i32 2, !dbg !850
  %11 = load ptr, ptr %pending_buf5, align 8, !dbg !850
  %12 = load ptr, ptr %s.addr, align 8, !dbg !850
  %pending6 = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 5, !dbg !850
  %13 = load i32, ptr %pending6, align 8, !dbg !850
  %inc7 = add i32 %13, 1, !dbg !850
  store i32 %inc7, ptr %pending6, align 8, !dbg !850
  %idxprom8 = sext i32 %13 to i64, !dbg !850
  %arrayidx9 = getelementptr i8, ptr %11, i64 %idxprom8, !dbg !850
  store i8 %conv4, ptr %arrayidx9, align 1, !dbg !850
  %14 = load ptr, ptr %s.addr, align 8, !dbg !852
  %bi_buf10 = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 56, !dbg !853
  store i16 0, ptr %bi_buf10, align 8, !dbg !854
  %15 = load ptr, ptr %s.addr, align 8, !dbg !855
  %bi_valid11 = getelementptr inbounds %struct.deflate_state, ptr %15, i32 0, i32 57, !dbg !856
  store i32 0, ptr %bi_valid11, align 4, !dbg !857
  br label %if.end28, !dbg !858

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %s.addr, align 8, !dbg !859
  %bi_valid12 = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 57, !dbg !861
  %17 = load i32, ptr %bi_valid12, align 4, !dbg !861
  %cmp13 = icmp sge i32 %17, 8, !dbg !862
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !863

if.then15:                                        ; preds = %if.else
  %18 = load ptr, ptr %s.addr, align 8, !dbg !864
  %bi_buf16 = getelementptr inbounds %struct.deflate_state, ptr %18, i32 0, i32 56, !dbg !864
  %19 = load i16, ptr %bi_buf16, align 8, !dbg !864
  %conv17 = trunc i16 %19 to i8, !dbg !864
  %20 = load ptr, ptr %s.addr, align 8, !dbg !864
  %pending_buf18 = getelementptr inbounds %struct.deflate_state, ptr %20, i32 0, i32 2, !dbg !864
  %21 = load ptr, ptr %pending_buf18, align 8, !dbg !864
  %22 = load ptr, ptr %s.addr, align 8, !dbg !864
  %pending19 = getelementptr inbounds %struct.deflate_state, ptr %22, i32 0, i32 5, !dbg !864
  %23 = load i32, ptr %pending19, align 8, !dbg !864
  %inc20 = add i32 %23, 1, !dbg !864
  store i32 %inc20, ptr %pending19, align 8, !dbg !864
  %idxprom21 = sext i32 %23 to i64, !dbg !864
  %arrayidx22 = getelementptr i8, ptr %21, i64 %idxprom21, !dbg !864
  store i8 %conv17, ptr %arrayidx22, align 1, !dbg !864
  %24 = load ptr, ptr %s.addr, align 8, !dbg !867
  %bi_buf23 = getelementptr inbounds %struct.deflate_state, ptr %24, i32 0, i32 56, !dbg !868
  %25 = load i16, ptr %bi_buf23, align 8, !dbg !869
  %conv24 = zext i16 %25 to i32, !dbg !869
  %shr25 = ashr i32 %conv24, 8, !dbg !869
  %conv26 = trunc i32 %shr25 to i16, !dbg !869
  store i16 %conv26, ptr %bi_buf23, align 8, !dbg !869
  %26 = load ptr, ptr %s.addr, align 8, !dbg !870
  %bi_valid27 = getelementptr inbounds %struct.deflate_state, ptr %26, i32 0, i32 57, !dbg !871
  %27 = load i32, ptr %bi_valid27, align 4, !dbg !872
  %sub = sub i32 %27, 8, !dbg !872
  store i32 %sub, ptr %bi_valid27, align 4, !dbg !872
  br label %if.end, !dbg !873

if.end:                                           ; preds = %if.then15, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then
  ret void, !dbg !874
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @zlib_tr_flush_block(ptr noundef %s, ptr noundef %buf, i64 noundef %stored_len, i32 noundef %eof) #0 align 16 !dbg !875 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %stored_len.addr = alloca i64, align 8
  %eof.addr = alloca i32, align 4
  %opt_lenb = alloca i64, align 8
  %static_lenb = alloca i64, align 8
  %max_blindex = alloca i32, align 4
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %len72 = alloca i32, align 4
  %val78 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !879, metadata !DIExpression()), !dbg !900
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !880, metadata !DIExpression()), !dbg !901
  store i64 %stored_len, ptr %stored_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stored_len.addr, metadata !881, metadata !DIExpression()), !dbg !902
  store i32 %eof, ptr %eof.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %eof.addr, metadata !882, metadata !DIExpression()), !dbg !903
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt_lenb) #7, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %opt_lenb, metadata !883, metadata !DIExpression()), !dbg !905
  call void @llvm.lifetime.start.p0(i64 8, ptr %static_lenb) #7, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %static_lenb, metadata !884, metadata !DIExpression()), !dbg !906
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_blindex) #7, !dbg !907
  call void @llvm.dbg.declare(metadata ptr %max_blindex, metadata !885, metadata !DIExpression()), !dbg !908
  store i32 0, ptr %max_blindex, align 4, !dbg !908
  %0 = load ptr, ptr %s.addr, align 8, !dbg !909
  %level = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 32, !dbg !911
  %1 = load i32, ptr %level, align 4, !dbg !911
  %cmp = icmp sgt i32 %1, 0, !dbg !912
  br i1 %cmp, label %if.then, label %if.else, !dbg !913

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !914
  %data_type = getelementptr inbounds %struct.deflate_state, ptr %2, i32 0, i32 7, !dbg !917
  %3 = load i8, ptr %data_type, align 8, !dbg !917
  %conv = zext i8 %3 to i32, !dbg !914
  %cmp1 = icmp eq i32 %conv, 2, !dbg !918
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !919

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %s.addr, align 8, !dbg !920
  call void @set_data_type(ptr noundef %4) #6, !dbg !921
  br label %if.end, !dbg !921

if.end:                                           ; preds = %if.then3, %if.then
  %5 = load ptr, ptr %s.addr, align 8, !dbg !922
  %6 = load ptr, ptr %s.addr, align 8, !dbg !923
  %l_desc = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 39, !dbg !924
  call void @build_tree(ptr noundef %5, ptr noundef %l_desc) #6, !dbg !925
  %7 = load ptr, ptr %s.addr, align 8, !dbg !926
  %8 = load ptr, ptr %s.addr, align 8, !dbg !927
  %d_desc = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 40, !dbg !928
  call void @build_tree(ptr noundef %7, ptr noundef %d_desc) #6, !dbg !929
  %9 = load ptr, ptr %s.addr, align 8, !dbg !930
  %call = call i32 @build_bl_tree(ptr noundef %9) #6, !dbg !931
  store i32 %call, ptr %max_blindex, align 4, !dbg !932
  %10 = load ptr, ptr %s.addr, align 8, !dbg !933
  %opt_len = getelementptr inbounds %struct.deflate_state, ptr %10, i32 0, i32 51, !dbg !934
  %11 = load i64, ptr %opt_len, align 8, !dbg !934
  %add = add i64 %11, 3, !dbg !935
  %add4 = add i64 %add, 7, !dbg !936
  %shr = lshr i64 %add4, 3, !dbg !937
  store i64 %shr, ptr %opt_lenb, align 8, !dbg !938
  %12 = load ptr, ptr %s.addr, align 8, !dbg !939
  %static_len = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 52, !dbg !940
  %13 = load i64, ptr %static_len, align 8, !dbg !940
  %add5 = add i64 %13, 3, !dbg !941
  %add6 = add i64 %add5, 7, !dbg !942
  %shr7 = lshr i64 %add6, 3, !dbg !943
  store i64 %shr7, ptr %static_lenb, align 8, !dbg !944
  %14 = load i64, ptr %static_lenb, align 8, !dbg !945
  %15 = load i64, ptr %opt_lenb, align 8, !dbg !947
  %cmp8 = icmp ule i64 %14, %15, !dbg !948
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !949

if.then10:                                        ; preds = %if.end
  %16 = load i64, ptr %static_lenb, align 8, !dbg !950
  store i64 %16, ptr %opt_lenb, align 8, !dbg !951
  br label %if.end11, !dbg !952

if.end11:                                         ; preds = %if.then10, %if.end
  br label %if.end13, !dbg !953

if.else:                                          ; preds = %entry
  %17 = load i64, ptr %stored_len.addr, align 8, !dbg !954
  %add12 = add i64 %17, 5, !dbg !956
  store i64 %add12, ptr %static_lenb, align 8, !dbg !957
  store i64 %add12, ptr %opt_lenb, align 8, !dbg !958
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end11
  %18 = load i64, ptr %stored_len.addr, align 8, !dbg !959
  %add14 = add i64 %18, 4, !dbg !960
  %19 = load i64, ptr %opt_lenb, align 8, !dbg !961
  %cmp15 = icmp ule i64 %add14, %19, !dbg !962
  br i1 %cmp15, label %land.lhs.true, label %if.else20, !dbg !963

land.lhs.true:                                    ; preds = %if.end13
  %20 = load ptr, ptr %buf.addr, align 8, !dbg !964
  %cmp17 = icmp ne ptr %20, null, !dbg !965
  br i1 %cmp17, label %if.then19, label %if.else20, !dbg !966

if.then19:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %s.addr, align 8, !dbg !967
  %22 = load ptr, ptr %buf.addr, align 8, !dbg !969
  %23 = load i64, ptr %stored_len.addr, align 8, !dbg !970
  %24 = load i32, ptr %eof.addr, align 4, !dbg !971
  call void @zlib_tr_stored_block(ptr noundef %21, ptr noundef %22, i64 noundef %23, i32 noundef %24) #6, !dbg !972
  br label %if.end142, !dbg !973

if.else20:                                        ; preds = %land.lhs.true, %if.end13
  %25 = load i64, ptr %static_lenb, align 8, !dbg !974
  %26 = load i64, ptr %opt_lenb, align 8, !dbg !975
  %cmp21 = icmp eq i64 %25, %26, !dbg !976
  br i1 %cmp21, label %if.then23, label %if.else71, !dbg !977

if.then23:                                        ; preds = %if.else20
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7, !dbg !978
  call void @llvm.dbg.declare(metadata ptr %len, metadata !886, metadata !DIExpression()), !dbg !978
  store i32 3, ptr %len, align 4, !dbg !978
  %27 = load ptr, ptr %s.addr, align 8, !dbg !979
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 57, !dbg !979
  %28 = load i32, ptr %bi_valid, align 4, !dbg !979
  %29 = load i32, ptr %len, align 4, !dbg !979
  %sub = sub i32 16, %29, !dbg !979
  %cmp24 = icmp sgt i32 %28, %sub, !dbg !979
  br i1 %cmp24, label %if.then26, label %if.else57, !dbg !978

if.then26:                                        ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #7, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %val, metadata !891, metadata !DIExpression()), !dbg !980
  %30 = load i32, ptr %eof.addr, align 4, !dbg !980
  %add27 = add i32 2, %30, !dbg !980
  store i32 %add27, ptr %val, align 4, !dbg !980
  %31 = load i32, ptr %val, align 4, !dbg !980
  %32 = load ptr, ptr %s.addr, align 8, !dbg !980
  %bi_valid28 = getelementptr inbounds %struct.deflate_state, ptr %32, i32 0, i32 57, !dbg !980
  %33 = load i32, ptr %bi_valid28, align 4, !dbg !980
  %shl = shl i32 %31, %33, !dbg !980
  %34 = load ptr, ptr %s.addr, align 8, !dbg !980
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %34, i32 0, i32 56, !dbg !980
  %35 = load i16, ptr %bi_buf, align 8, !dbg !980
  %conv29 = zext i16 %35 to i32, !dbg !980
  %or = or i32 %conv29, %shl, !dbg !980
  %conv30 = trunc i32 %or to i16, !dbg !980
  store i16 %conv30, ptr %bi_buf, align 8, !dbg !980
  %36 = load ptr, ptr %s.addr, align 8, !dbg !981
  %bi_buf31 = getelementptr inbounds %struct.deflate_state, ptr %36, i32 0, i32 56, !dbg !981
  %37 = load i16, ptr %bi_buf31, align 8, !dbg !981
  %conv32 = zext i16 %37 to i32, !dbg !981
  %and = and i32 %conv32, 255, !dbg !981
  %conv33 = trunc i32 %and to i8, !dbg !981
  %38 = load ptr, ptr %s.addr, align 8, !dbg !981
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %38, i32 0, i32 2, !dbg !981
  %39 = load ptr, ptr %pending_buf, align 8, !dbg !981
  %40 = load ptr, ptr %s.addr, align 8, !dbg !981
  %pending = getelementptr inbounds %struct.deflate_state, ptr %40, i32 0, i32 5, !dbg !981
  %41 = load i32, ptr %pending, align 8, !dbg !981
  %inc = add i32 %41, 1, !dbg !981
  store i32 %inc, ptr %pending, align 8, !dbg !981
  %idxprom = sext i32 %41 to i64, !dbg !981
  %arrayidx = getelementptr i8, ptr %39, i64 %idxprom, !dbg !981
  store i8 %conv33, ptr %arrayidx, align 1, !dbg !981
  %42 = load ptr, ptr %s.addr, align 8, !dbg !984
  %bi_buf34 = getelementptr inbounds %struct.deflate_state, ptr %42, i32 0, i32 56, !dbg !984
  %43 = load i16, ptr %bi_buf34, align 8, !dbg !984
  %conv35 = zext i16 %43 to i32, !dbg !984
  %shr36 = ashr i32 %conv35, 8, !dbg !984
  %conv37 = trunc i32 %shr36 to i8, !dbg !984
  %44 = load ptr, ptr %s.addr, align 8, !dbg !984
  %pending_buf38 = getelementptr inbounds %struct.deflate_state, ptr %44, i32 0, i32 2, !dbg !984
  %45 = load ptr, ptr %pending_buf38, align 8, !dbg !984
  %46 = load ptr, ptr %s.addr, align 8, !dbg !984
  %pending39 = getelementptr inbounds %struct.deflate_state, ptr %46, i32 0, i32 5, !dbg !984
  %47 = load i32, ptr %pending39, align 8, !dbg !984
  %inc40 = add i32 %47, 1, !dbg !984
  store i32 %inc40, ptr %pending39, align 8, !dbg !984
  %idxprom41 = sext i32 %47 to i64, !dbg !984
  %arrayidx42 = getelementptr i8, ptr %45, i64 %idxprom41, !dbg !984
  store i8 %conv37, ptr %arrayidx42, align 1, !dbg !984
  %48 = load i32, ptr %val, align 4, !dbg !980
  %conv43 = trunc i32 %48 to i16, !dbg !980
  %conv44 = zext i16 %conv43 to i32, !dbg !980
  %49 = load ptr, ptr %s.addr, align 8, !dbg !980
  %bi_valid45 = getelementptr inbounds %struct.deflate_state, ptr %49, i32 0, i32 57, !dbg !980
  %50 = load i32, ptr %bi_valid45, align 4, !dbg !980
  %conv46 = sext i32 %50 to i64, !dbg !980
  %sub47 = sub i64 16, %conv46, !dbg !980
  %sh_prom = trunc i64 %sub47 to i32, !dbg !980
  %shr48 = ashr i32 %conv44, %sh_prom, !dbg !980
  %conv49 = trunc i32 %shr48 to i16, !dbg !980
  %51 = load ptr, ptr %s.addr, align 8, !dbg !980
  %bi_buf50 = getelementptr inbounds %struct.deflate_state, ptr %51, i32 0, i32 56, !dbg !980
  store i16 %conv49, ptr %bi_buf50, align 8, !dbg !980
  %52 = load i32, ptr %len, align 4, !dbg !980
  %conv51 = sext i32 %52 to i64, !dbg !980
  %sub52 = sub i64 %conv51, 16, !dbg !980
  %53 = load ptr, ptr %s.addr, align 8, !dbg !980
  %bi_valid53 = getelementptr inbounds %struct.deflate_state, ptr %53, i32 0, i32 57, !dbg !980
  %54 = load i32, ptr %bi_valid53, align 4, !dbg !980
  %conv54 = sext i32 %54 to i64, !dbg !980
  %add55 = add i64 %conv54, %sub52, !dbg !980
  %conv56 = trunc i64 %add55 to i32, !dbg !980
  store i32 %conv56, ptr %bi_valid53, align 4, !dbg !980
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #7, !dbg !979
  br label %if.end67, !dbg !980

if.else57:                                        ; preds = %if.then23
  %55 = load i32, ptr %eof.addr, align 4, !dbg !986
  %add58 = add i32 2, %55, !dbg !986
  %56 = load ptr, ptr %s.addr, align 8, !dbg !986
  %bi_valid59 = getelementptr inbounds %struct.deflate_state, ptr %56, i32 0, i32 57, !dbg !986
  %57 = load i32, ptr %bi_valid59, align 4, !dbg !986
  %shl60 = shl i32 %add58, %57, !dbg !986
  %58 = load ptr, ptr %s.addr, align 8, !dbg !986
  %bi_buf61 = getelementptr inbounds %struct.deflate_state, ptr %58, i32 0, i32 56, !dbg !986
  %59 = load i16, ptr %bi_buf61, align 8, !dbg !986
  %conv62 = zext i16 %59 to i32, !dbg !986
  %or63 = or i32 %conv62, %shl60, !dbg !986
  %conv64 = trunc i32 %or63 to i16, !dbg !986
  store i16 %conv64, ptr %bi_buf61, align 8, !dbg !986
  %60 = load i32, ptr %len, align 4, !dbg !986
  %61 = load ptr, ptr %s.addr, align 8, !dbg !986
  %bi_valid65 = getelementptr inbounds %struct.deflate_state, ptr %61, i32 0, i32 57, !dbg !986
  %62 = load i32, ptr %bi_valid65, align 4, !dbg !986
  %add66 = add i32 %62, %60, !dbg !986
  store i32 %add66, ptr %bi_valid65, align 4, !dbg !986
  br label %if.end67

if.end67:                                         ; preds = %if.else57, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7, !dbg !988
  %63 = load ptr, ptr %s.addr, align 8, !dbg !989
  call void @compress_block(ptr noundef %63, ptr noundef @static_ltree, ptr noundef @static_dtree) #6, !dbg !990
  %64 = load ptr, ptr %s.addr, align 8, !dbg !991
  %static_len68 = getelementptr inbounds %struct.deflate_state, ptr %64, i32 0, i32 52, !dbg !992
  %65 = load i64, ptr %static_len68, align 8, !dbg !992
  %add69 = add i64 3, %65, !dbg !993
  %66 = load ptr, ptr %s.addr, align 8, !dbg !994
  %compressed_len = getelementptr inbounds %struct.deflate_state, ptr %66, i32 0, i32 53, !dbg !995
  %67 = load i64, ptr %compressed_len, align 8, !dbg !996
  %add70 = add i64 %67, %add69, !dbg !996
  store i64 %add70, ptr %compressed_len, align 8, !dbg !996
  br label %if.end141, !dbg !997

if.else71:                                        ; preds = %if.else20
  call void @llvm.lifetime.start.p0(i64 4, ptr %len72) #7, !dbg !998
  call void @llvm.dbg.declare(metadata ptr %len72, metadata !894, metadata !DIExpression()), !dbg !998
  store i32 3, ptr %len72, align 4, !dbg !998
  %68 = load ptr, ptr %s.addr, align 8, !dbg !999
  %bi_valid73 = getelementptr inbounds %struct.deflate_state, ptr %68, i32 0, i32 57, !dbg !999
  %69 = load i32, ptr %bi_valid73, align 4, !dbg !999
  %70 = load i32, ptr %len72, align 4, !dbg !999
  %sub74 = sub i32 16, %70, !dbg !999
  %cmp75 = icmp sgt i32 %69, %sub74, !dbg !999
  br i1 %cmp75, label %if.then77, label %if.else119, !dbg !998

if.then77:                                        ; preds = %if.else71
  call void @llvm.lifetime.start.p0(i64 4, ptr %val78) #7, !dbg !1000
  call void @llvm.dbg.declare(metadata ptr %val78, metadata !897, metadata !DIExpression()), !dbg !1000
  %71 = load i32, ptr %eof.addr, align 4, !dbg !1000
  %add79 = add i32 4, %71, !dbg !1000
  store i32 %add79, ptr %val78, align 4, !dbg !1000
  %72 = load i32, ptr %val78, align 4, !dbg !1000
  %73 = load ptr, ptr %s.addr, align 8, !dbg !1000
  %bi_valid80 = getelementptr inbounds %struct.deflate_state, ptr %73, i32 0, i32 57, !dbg !1000
  %74 = load i32, ptr %bi_valid80, align 4, !dbg !1000
  %shl81 = shl i32 %72, %74, !dbg !1000
  %75 = load ptr, ptr %s.addr, align 8, !dbg !1000
  %bi_buf82 = getelementptr inbounds %struct.deflate_state, ptr %75, i32 0, i32 56, !dbg !1000
  %76 = load i16, ptr %bi_buf82, align 8, !dbg !1000
  %conv83 = zext i16 %76 to i32, !dbg !1000
  %or84 = or i32 %conv83, %shl81, !dbg !1000
  %conv85 = trunc i32 %or84 to i16, !dbg !1000
  store i16 %conv85, ptr %bi_buf82, align 8, !dbg !1000
  %77 = load ptr, ptr %s.addr, align 8, !dbg !1001
  %bi_buf86 = getelementptr inbounds %struct.deflate_state, ptr %77, i32 0, i32 56, !dbg !1001
  %78 = load i16, ptr %bi_buf86, align 8, !dbg !1001
  %conv87 = zext i16 %78 to i32, !dbg !1001
  %and88 = and i32 %conv87, 255, !dbg !1001
  %conv89 = trunc i32 %and88 to i8, !dbg !1001
  %79 = load ptr, ptr %s.addr, align 8, !dbg !1001
  %pending_buf90 = getelementptr inbounds %struct.deflate_state, ptr %79, i32 0, i32 2, !dbg !1001
  %80 = load ptr, ptr %pending_buf90, align 8, !dbg !1001
  %81 = load ptr, ptr %s.addr, align 8, !dbg !1001
  %pending91 = getelementptr inbounds %struct.deflate_state, ptr %81, i32 0, i32 5, !dbg !1001
  %82 = load i32, ptr %pending91, align 8, !dbg !1001
  %inc92 = add i32 %82, 1, !dbg !1001
  store i32 %inc92, ptr %pending91, align 8, !dbg !1001
  %idxprom93 = sext i32 %82 to i64, !dbg !1001
  %arrayidx94 = getelementptr i8, ptr %80, i64 %idxprom93, !dbg !1001
  store i8 %conv89, ptr %arrayidx94, align 1, !dbg !1001
  %83 = load ptr, ptr %s.addr, align 8, !dbg !1004
  %bi_buf95 = getelementptr inbounds %struct.deflate_state, ptr %83, i32 0, i32 56, !dbg !1004
  %84 = load i16, ptr %bi_buf95, align 8, !dbg !1004
  %conv96 = zext i16 %84 to i32, !dbg !1004
  %shr97 = ashr i32 %conv96, 8, !dbg !1004
  %conv98 = trunc i32 %shr97 to i8, !dbg !1004
  %85 = load ptr, ptr %s.addr, align 8, !dbg !1004
  %pending_buf99 = getelementptr inbounds %struct.deflate_state, ptr %85, i32 0, i32 2, !dbg !1004
  %86 = load ptr, ptr %pending_buf99, align 8, !dbg !1004
  %87 = load ptr, ptr %s.addr, align 8, !dbg !1004
  %pending100 = getelementptr inbounds %struct.deflate_state, ptr %87, i32 0, i32 5, !dbg !1004
  %88 = load i32, ptr %pending100, align 8, !dbg !1004
  %inc101 = add i32 %88, 1, !dbg !1004
  store i32 %inc101, ptr %pending100, align 8, !dbg !1004
  %idxprom102 = sext i32 %88 to i64, !dbg !1004
  %arrayidx103 = getelementptr i8, ptr %86, i64 %idxprom102, !dbg !1004
  store i8 %conv98, ptr %arrayidx103, align 1, !dbg !1004
  %89 = load i32, ptr %val78, align 4, !dbg !1000
  %conv104 = trunc i32 %89 to i16, !dbg !1000
  %conv105 = zext i16 %conv104 to i32, !dbg !1000
  %90 = load ptr, ptr %s.addr, align 8, !dbg !1000
  %bi_valid106 = getelementptr inbounds %struct.deflate_state, ptr %90, i32 0, i32 57, !dbg !1000
  %91 = load i32, ptr %bi_valid106, align 4, !dbg !1000
  %conv107 = sext i32 %91 to i64, !dbg !1000
  %sub108 = sub i64 16, %conv107, !dbg !1000
  %sh_prom109 = trunc i64 %sub108 to i32, !dbg !1000
  %shr110 = ashr i32 %conv105, %sh_prom109, !dbg !1000
  %conv111 = trunc i32 %shr110 to i16, !dbg !1000
  %92 = load ptr, ptr %s.addr, align 8, !dbg !1000
  %bi_buf112 = getelementptr inbounds %struct.deflate_state, ptr %92, i32 0, i32 56, !dbg !1000
  store i16 %conv111, ptr %bi_buf112, align 8, !dbg !1000
  %93 = load i32, ptr %len72, align 4, !dbg !1000
  %conv113 = sext i32 %93 to i64, !dbg !1000
  %sub114 = sub i64 %conv113, 16, !dbg !1000
  %94 = load ptr, ptr %s.addr, align 8, !dbg !1000
  %bi_valid115 = getelementptr inbounds %struct.deflate_state, ptr %94, i32 0, i32 57, !dbg !1000
  %95 = load i32, ptr %bi_valid115, align 4, !dbg !1000
  %conv116 = sext i32 %95 to i64, !dbg !1000
  %add117 = add i64 %conv116, %sub114, !dbg !1000
  %conv118 = trunc i64 %add117 to i32, !dbg !1000
  store i32 %conv118, ptr %bi_valid115, align 4, !dbg !1000
  call void @llvm.lifetime.end.p0(i64 4, ptr %val78) #7, !dbg !999
  br label %if.end129, !dbg !1000

if.else119:                                       ; preds = %if.else71
  %96 = load i32, ptr %eof.addr, align 4, !dbg !1006
  %add120 = add i32 4, %96, !dbg !1006
  %97 = load ptr, ptr %s.addr, align 8, !dbg !1006
  %bi_valid121 = getelementptr inbounds %struct.deflate_state, ptr %97, i32 0, i32 57, !dbg !1006
  %98 = load i32, ptr %bi_valid121, align 4, !dbg !1006
  %shl122 = shl i32 %add120, %98, !dbg !1006
  %99 = load ptr, ptr %s.addr, align 8, !dbg !1006
  %bi_buf123 = getelementptr inbounds %struct.deflate_state, ptr %99, i32 0, i32 56, !dbg !1006
  %100 = load i16, ptr %bi_buf123, align 8, !dbg !1006
  %conv124 = zext i16 %100 to i32, !dbg !1006
  %or125 = or i32 %conv124, %shl122, !dbg !1006
  %conv126 = trunc i32 %or125 to i16, !dbg !1006
  store i16 %conv126, ptr %bi_buf123, align 8, !dbg !1006
  %101 = load i32, ptr %len72, align 4, !dbg !1006
  %102 = load ptr, ptr %s.addr, align 8, !dbg !1006
  %bi_valid127 = getelementptr inbounds %struct.deflate_state, ptr %102, i32 0, i32 57, !dbg !1006
  %103 = load i32, ptr %bi_valid127, align 4, !dbg !1006
  %add128 = add i32 %103, %101, !dbg !1006
  store i32 %add128, ptr %bi_valid127, align 4, !dbg !1006
  br label %if.end129

if.end129:                                        ; preds = %if.else119, %if.then77
  call void @llvm.lifetime.end.p0(i64 4, ptr %len72) #7, !dbg !1008
  %104 = load ptr, ptr %s.addr, align 8, !dbg !1009
  %105 = load ptr, ptr %s.addr, align 8, !dbg !1010
  %l_desc130 = getelementptr inbounds %struct.deflate_state, ptr %105, i32 0, i32 39, !dbg !1011
  %max_code = getelementptr inbounds %struct.tree_desc_s, ptr %l_desc130, i32 0, i32 1, !dbg !1012
  %106 = load i32, ptr %max_code, align 8, !dbg !1012
  %add131 = add i32 %106, 1, !dbg !1013
  %107 = load ptr, ptr %s.addr, align 8, !dbg !1014
  %d_desc132 = getelementptr inbounds %struct.deflate_state, ptr %107, i32 0, i32 40, !dbg !1015
  %max_code133 = getelementptr inbounds %struct.tree_desc_s, ptr %d_desc132, i32 0, i32 1, !dbg !1016
  %108 = load i32, ptr %max_code133, align 8, !dbg !1016
  %add134 = add i32 %108, 1, !dbg !1017
  %109 = load i32, ptr %max_blindex, align 4, !dbg !1018
  %add135 = add i32 %109, 1, !dbg !1019
  call void @send_all_trees(ptr noundef %104, i32 noundef %add131, i32 noundef %add134, i32 noundef %add135) #6, !dbg !1020
  %110 = load ptr, ptr %s.addr, align 8, !dbg !1021
  %111 = load ptr, ptr %s.addr, align 8, !dbg !1022
  %dyn_ltree = getelementptr inbounds %struct.deflate_state, ptr %111, i32 0, i32 36, !dbg !1023
  %arraydecay = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 0, !dbg !1022
  %112 = load ptr, ptr %s.addr, align 8, !dbg !1024
  %dyn_dtree = getelementptr inbounds %struct.deflate_state, ptr %112, i32 0, i32 37, !dbg !1025
  %arraydecay136 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 0, !dbg !1024
  call void @compress_block(ptr noundef %110, ptr noundef %arraydecay, ptr noundef %arraydecay136) #6, !dbg !1026
  %113 = load ptr, ptr %s.addr, align 8, !dbg !1027
  %opt_len137 = getelementptr inbounds %struct.deflate_state, ptr %113, i32 0, i32 51, !dbg !1028
  %114 = load i64, ptr %opt_len137, align 8, !dbg !1028
  %add138 = add i64 3, %114, !dbg !1029
  %115 = load ptr, ptr %s.addr, align 8, !dbg !1030
  %compressed_len139 = getelementptr inbounds %struct.deflate_state, ptr %115, i32 0, i32 53, !dbg !1031
  %116 = load i64, ptr %compressed_len139, align 8, !dbg !1032
  %add140 = add i64 %116, %add138, !dbg !1032
  store i64 %add140, ptr %compressed_len139, align 8, !dbg !1032
  br label %if.end141

if.end141:                                        ; preds = %if.end129, %if.end67
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.then19
  %117 = load ptr, ptr %s.addr, align 8, !dbg !1033
  call void @init_block(ptr noundef %117) #6, !dbg !1034
  %118 = load i32, ptr %eof.addr, align 4, !dbg !1035
  %tobool = icmp ne i32 %118, 0, !dbg !1035
  br i1 %tobool, label %if.then143, label %if.end146, !dbg !1037

if.then143:                                       ; preds = %if.end142
  %119 = load ptr, ptr %s.addr, align 8, !dbg !1038
  call void @bi_windup(ptr noundef %119) #6, !dbg !1040
  %120 = load ptr, ptr %s.addr, align 8, !dbg !1041
  %compressed_len144 = getelementptr inbounds %struct.deflate_state, ptr %120, i32 0, i32 53, !dbg !1042
  %121 = load i64, ptr %compressed_len144, align 8, !dbg !1043
  %add145 = add i64 %121, 7, !dbg !1043
  store i64 %add145, ptr %compressed_len144, align 8, !dbg !1043
  br label %if.end146, !dbg !1044

if.end146:                                        ; preds = %if.then143, %if.end142
  %122 = load ptr, ptr %s.addr, align 8, !dbg !1045
  %compressed_len147 = getelementptr inbounds %struct.deflate_state, ptr %122, i32 0, i32 53, !dbg !1046
  %123 = load i64, ptr %compressed_len147, align 8, !dbg !1046
  %shr148 = lshr i64 %123, 3, !dbg !1047
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_blindex) #7, !dbg !1048
  call void @llvm.lifetime.end.p0(i64 8, ptr %static_lenb) #7, !dbg !1048
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt_lenb) #7, !dbg !1048
  ret i64 %shr148, !dbg !1049
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_data_type(ptr noundef %s) #0 align 16 !dbg !1050 {
entry:
  %s.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %ascii_freq = alloca i32, align 4
  %bin_freq = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1052, metadata !DIExpression()), !dbg !1056
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1057
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1053, metadata !DIExpression()), !dbg !1058
  store i32 0, ptr %n, align 4, !dbg !1058
  call void @llvm.lifetime.start.p0(i64 4, ptr %ascii_freq) #7, !dbg !1059
  call void @llvm.dbg.declare(metadata ptr %ascii_freq, metadata !1054, metadata !DIExpression()), !dbg !1060
  store i32 0, ptr %ascii_freq, align 4, !dbg !1060
  call void @llvm.lifetime.start.p0(i64 4, ptr %bin_freq) #7, !dbg !1061
  call void @llvm.dbg.declare(metadata ptr %bin_freq, metadata !1055, metadata !DIExpression()), !dbg !1062
  store i32 0, ptr %bin_freq, align 4, !dbg !1062
  br label %while.cond, !dbg !1063

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %n, align 4, !dbg !1064
  %cmp = icmp slt i32 %0, 7, !dbg !1065
  br i1 %cmp, label %while.body, label %while.end, !dbg !1063

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1066
  %dyn_ltree = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 36, !dbg !1067
  %2 = load i32, ptr %n, align 4, !dbg !1068
  %inc = add i32 %2, 1, !dbg !1068
  store i32 %inc, ptr %n, align 4, !dbg !1068
  %idxprom = sext i32 %2 to i64, !dbg !1066
  %arrayidx = getelementptr [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom, !dbg !1066
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx, i32 0, i32 0, !dbg !1069
  %3 = load i16, ptr %fc, align 4, !dbg !1069
  %conv = zext i16 %3 to i32, !dbg !1066
  %4 = load i32, ptr %bin_freq, align 4, !dbg !1070
  %add = add i32 %4, %conv, !dbg !1070
  store i32 %add, ptr %bin_freq, align 4, !dbg !1070
  br label %while.cond, !dbg !1063, !llvm.loop !1071

while.end:                                        ; preds = %while.cond
  br label %while.cond1, !dbg !1072

while.cond1:                                      ; preds = %while.body4, %while.end
  %5 = load i32, ptr %n, align 4, !dbg !1073
  %cmp2 = icmp slt i32 %5, 128, !dbg !1074
  br i1 %cmp2, label %while.body4, label %while.end12, !dbg !1072

while.body4:                                      ; preds = %while.cond1
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1075
  %dyn_ltree5 = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 36, !dbg !1076
  %7 = load i32, ptr %n, align 4, !dbg !1077
  %inc6 = add i32 %7, 1, !dbg !1077
  store i32 %inc6, ptr %n, align 4, !dbg !1077
  %idxprom7 = sext i32 %7 to i64, !dbg !1075
  %arrayidx8 = getelementptr [573 x %struct.ct_data_s], ptr %dyn_ltree5, i64 0, i64 %idxprom7, !dbg !1075
  %fc9 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx8, i32 0, i32 0, !dbg !1078
  %8 = load i16, ptr %fc9, align 4, !dbg !1078
  %conv10 = zext i16 %8 to i32, !dbg !1075
  %9 = load i32, ptr %ascii_freq, align 4, !dbg !1079
  %add11 = add i32 %9, %conv10, !dbg !1079
  store i32 %add11, ptr %ascii_freq, align 4, !dbg !1079
  br label %while.cond1, !dbg !1072, !llvm.loop !1080

while.end12:                                      ; preds = %while.cond1
  br label %while.cond13, !dbg !1081

while.cond13:                                     ; preds = %while.body16, %while.end12
  %10 = load i32, ptr %n, align 4, !dbg !1082
  %cmp14 = icmp slt i32 %10, 256, !dbg !1083
  br i1 %cmp14, label %while.body16, label %while.end24, !dbg !1081

while.body16:                                     ; preds = %while.cond13
  %11 = load ptr, ptr %s.addr, align 8, !dbg !1084
  %dyn_ltree17 = getelementptr inbounds %struct.deflate_state, ptr %11, i32 0, i32 36, !dbg !1085
  %12 = load i32, ptr %n, align 4, !dbg !1086
  %inc18 = add i32 %12, 1, !dbg !1086
  store i32 %inc18, ptr %n, align 4, !dbg !1086
  %idxprom19 = sext i32 %12 to i64, !dbg !1084
  %arrayidx20 = getelementptr [573 x %struct.ct_data_s], ptr %dyn_ltree17, i64 0, i64 %idxprom19, !dbg !1084
  %fc21 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx20, i32 0, i32 0, !dbg !1087
  %13 = load i16, ptr %fc21, align 4, !dbg !1087
  %conv22 = zext i16 %13 to i32, !dbg !1084
  %14 = load i32, ptr %bin_freq, align 4, !dbg !1088
  %add23 = add i32 %14, %conv22, !dbg !1088
  store i32 %add23, ptr %bin_freq, align 4, !dbg !1088
  br label %while.cond13, !dbg !1081, !llvm.loop !1089

while.end24:                                      ; preds = %while.cond13
  %15 = load i32, ptr %bin_freq, align 4, !dbg !1090
  %16 = load i32, ptr %ascii_freq, align 4, !dbg !1091
  %shr = lshr i32 %16, 2, !dbg !1092
  %cmp25 = icmp ugt i32 %15, %shr, !dbg !1093
  %17 = zext i1 %cmp25 to i64, !dbg !1090
  %cond = select i1 %cmp25, i32 0, i32 1, !dbg !1090
  %conv27 = trunc i32 %cond to i8, !dbg !1094
  %18 = load ptr, ptr %s.addr, align 8, !dbg !1095
  %data_type = getelementptr inbounds %struct.deflate_state, ptr %18, i32 0, i32 7, !dbg !1096
  store i8 %conv27, ptr %data_type, align 8, !dbg !1097
  call void @llvm.lifetime.end.p0(i64 4, ptr %bin_freq) #7, !dbg !1098
  call void @llvm.lifetime.end.p0(i64 4, ptr %ascii_freq) #7, !dbg !1098
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1098
  ret void, !dbg !1098
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @build_tree(ptr noundef %s, ptr noundef %desc) #0 align 16 !dbg !1099 {
entry:
  %s.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %tree = alloca ptr, align 8
  %stree = alloca ptr, align 8
  %elems = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %max_code = alloca i32, align 4
  %node = alloca i32, align 4
  %__UNIQUE_ID___x3 = alloca i8, align 1
  %__UNIQUE_ID___y4 = alloca i8, align 1
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1103, metadata !DIExpression()), !dbg !1116
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !1104, metadata !DIExpression()), !dbg !1117
  call void @llvm.lifetime.start.p0(i64 8, ptr %tree) #7, !dbg !1118
  call void @llvm.dbg.declare(metadata ptr %tree, metadata !1105, metadata !DIExpression()), !dbg !1119
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !1120
  %dyn_tree = getelementptr inbounds %struct.tree_desc_s, ptr %0, i32 0, i32 0, !dbg !1121
  %1 = load ptr, ptr %dyn_tree, align 8, !dbg !1121
  store ptr %1, ptr %tree, align 8, !dbg !1119
  call void @llvm.lifetime.start.p0(i64 8, ptr %stree) #7, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %stree, metadata !1106, metadata !DIExpression()), !dbg !1123
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !1124
  %stat_desc = getelementptr inbounds %struct.tree_desc_s, ptr %2, i32 0, i32 2, !dbg !1125
  %3 = load ptr, ptr %stat_desc, align 8, !dbg !1125
  %static_tree = getelementptr inbounds %struct.static_tree_desc_s, ptr %3, i32 0, i32 0, !dbg !1126
  %4 = load ptr, ptr %static_tree, align 8, !dbg !1126
  store ptr %4, ptr %stree, align 8, !dbg !1123
  call void @llvm.lifetime.start.p0(i64 4, ptr %elems) #7, !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %elems, metadata !1107, metadata !DIExpression()), !dbg !1128
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !1129
  %stat_desc1 = getelementptr inbounds %struct.tree_desc_s, ptr %5, i32 0, i32 2, !dbg !1130
  %6 = load ptr, ptr %stat_desc1, align 8, !dbg !1130
  %elems2 = getelementptr inbounds %struct.static_tree_desc_s, ptr %6, i32 0, i32 3, !dbg !1131
  %7 = load i32, ptr %elems2, align 4, !dbg !1131
  store i32 %7, ptr %elems, align 4, !dbg !1128
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1108, metadata !DIExpression()), !dbg !1133
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #7, !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %m, metadata !1109, metadata !DIExpression()), !dbg !1134
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_code) #7, !dbg !1135
  call void @llvm.dbg.declare(metadata ptr %max_code, metadata !1110, metadata !DIExpression()), !dbg !1136
  store i32 -1, ptr %max_code, align 4, !dbg !1136
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #7, !dbg !1137
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1111, metadata !DIExpression()), !dbg !1138
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1139
  %heap_len = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 44, !dbg !1140
  store i32 0, ptr %heap_len, align 4, !dbg !1141
  %9 = load ptr, ptr %s.addr, align 8, !dbg !1142
  %heap_max = getelementptr inbounds %struct.deflate_state, ptr %9, i32 0, i32 45, !dbg !1143
  store i32 573, ptr %heap_max, align 8, !dbg !1144
  store i32 0, ptr %n, align 4, !dbg !1145
  br label %for.cond, !dbg !1147

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %n, align 4, !dbg !1148
  %11 = load i32, ptr %elems, align 4, !dbg !1150
  %cmp = icmp slt i32 %10, %11, !dbg !1151
  br i1 %cmp, label %for.body, label %for.end, !dbg !1152

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %tree, align 8, !dbg !1153
  %13 = load i32, ptr %n, align 4, !dbg !1156
  %idxprom = sext i32 %13 to i64, !dbg !1153
  %arrayidx = getelementptr %struct.ct_data_s, ptr %12, i64 %idxprom, !dbg !1153
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx, i32 0, i32 0, !dbg !1157
  %14 = load i16, ptr %fc, align 2, !dbg !1157
  %conv = zext i16 %14 to i32, !dbg !1153
  %cmp3 = icmp ne i32 %conv, 0, !dbg !1158
  br i1 %cmp3, label %if.then, label %if.else, !dbg !1159

if.then:                                          ; preds = %for.body
  %15 = load i32, ptr %n, align 4, !dbg !1160
  store i32 %15, ptr %max_code, align 4, !dbg !1162
  %16 = load ptr, ptr %s.addr, align 8, !dbg !1163
  %heap = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 43, !dbg !1164
  %17 = load ptr, ptr %s.addr, align 8, !dbg !1165
  %heap_len5 = getelementptr inbounds %struct.deflate_state, ptr %17, i32 0, i32 44, !dbg !1166
  %18 = load i32, ptr %heap_len5, align 4, !dbg !1167
  %inc = add i32 %18, 1, !dbg !1167
  store i32 %inc, ptr %heap_len5, align 4, !dbg !1167
  %idxprom6 = sext i32 %inc to i64, !dbg !1163
  %arrayidx7 = getelementptr [573 x i32], ptr %heap, i64 0, i64 %idxprom6, !dbg !1163
  store i32 %15, ptr %arrayidx7, align 4, !dbg !1168
  %19 = load ptr, ptr %s.addr, align 8, !dbg !1169
  %depth = getelementptr inbounds %struct.deflate_state, ptr %19, i32 0, i32 46, !dbg !1170
  %20 = load i32, ptr %n, align 4, !dbg !1171
  %idxprom8 = sext i32 %20 to i64, !dbg !1169
  %arrayidx9 = getelementptr [573 x i8], ptr %depth, i64 0, i64 %idxprom8, !dbg !1169
  store i8 0, ptr %arrayidx9, align 1, !dbg !1172
  br label %if.end, !dbg !1173

if.else:                                          ; preds = %for.body
  %21 = load ptr, ptr %tree, align 8, !dbg !1174
  %22 = load i32, ptr %n, align 4, !dbg !1176
  %idxprom10 = sext i32 %22 to i64, !dbg !1174
  %arrayidx11 = getelementptr %struct.ct_data_s, ptr %21, i64 %idxprom10, !dbg !1174
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx11, i32 0, i32 1, !dbg !1177
  store i16 0, ptr %dl, align 2, !dbg !1178
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !1179

for.inc:                                          ; preds = %if.end
  %23 = load i32, ptr %n, align 4, !dbg !1180
  %inc12 = add i32 %23, 1, !dbg !1180
  store i32 %inc12, ptr %n, align 4, !dbg !1180
  br label %for.cond, !dbg !1181, !llvm.loop !1182

for.end:                                          ; preds = %for.cond
  br label %while.cond, !dbg !1184

while.cond:                                       ; preds = %if.end35, %for.end
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1185
  %heap_len13 = getelementptr inbounds %struct.deflate_state, ptr %24, i32 0, i32 44, !dbg !1186
  %25 = load i32, ptr %heap_len13, align 4, !dbg !1186
  %cmp14 = icmp slt i32 %25, 2, !dbg !1187
  br i1 %cmp14, label %while.body, label %while.end, !dbg !1184

while.body:                                       ; preds = %while.cond
  %26 = load i32, ptr %max_code, align 4, !dbg !1188
  %cmp16 = icmp slt i32 %26, 2, !dbg !1190
  br i1 %cmp16, label %cond.true, label %cond.false, !dbg !1188

cond.true:                                        ; preds = %while.body
  %27 = load i32, ptr %max_code, align 4, !dbg !1191
  %inc18 = add i32 %27, 1, !dbg !1191
  store i32 %inc18, ptr %max_code, align 4, !dbg !1191
  br label %cond.end, !dbg !1188

cond.false:                                       ; preds = %while.body
  br label %cond.end, !dbg !1188

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %inc18, %cond.true ], [ 0, %cond.false ], !dbg !1188
  %28 = load ptr, ptr %s.addr, align 8, !dbg !1192
  %heap19 = getelementptr inbounds %struct.deflate_state, ptr %28, i32 0, i32 43, !dbg !1193
  %29 = load ptr, ptr %s.addr, align 8, !dbg !1194
  %heap_len20 = getelementptr inbounds %struct.deflate_state, ptr %29, i32 0, i32 44, !dbg !1195
  %30 = load i32, ptr %heap_len20, align 4, !dbg !1196
  %inc21 = add i32 %30, 1, !dbg !1196
  store i32 %inc21, ptr %heap_len20, align 4, !dbg !1196
  %idxprom22 = sext i32 %inc21 to i64, !dbg !1192
  %arrayidx23 = getelementptr [573 x i32], ptr %heap19, i64 0, i64 %idxprom22, !dbg !1192
  store i32 %cond, ptr %arrayidx23, align 4, !dbg !1197
  store i32 %cond, ptr %node, align 4, !dbg !1198
  %31 = load ptr, ptr %tree, align 8, !dbg !1199
  %32 = load i32, ptr %node, align 4, !dbg !1200
  %idxprom24 = sext i32 %32 to i64, !dbg !1199
  %arrayidx25 = getelementptr %struct.ct_data_s, ptr %31, i64 %idxprom24, !dbg !1199
  %fc26 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx25, i32 0, i32 0, !dbg !1201
  store i16 1, ptr %fc26, align 2, !dbg !1202
  %33 = load ptr, ptr %s.addr, align 8, !dbg !1203
  %depth27 = getelementptr inbounds %struct.deflate_state, ptr %33, i32 0, i32 46, !dbg !1204
  %34 = load i32, ptr %node, align 4, !dbg !1205
  %idxprom28 = sext i32 %34 to i64, !dbg !1203
  %arrayidx29 = getelementptr [573 x i8], ptr %depth27, i64 0, i64 %idxprom28, !dbg !1203
  store i8 0, ptr %arrayidx29, align 1, !dbg !1206
  %35 = load ptr, ptr %s.addr, align 8, !dbg !1207
  %opt_len = getelementptr inbounds %struct.deflate_state, ptr %35, i32 0, i32 51, !dbg !1208
  %36 = load i64, ptr %opt_len, align 8, !dbg !1209
  %dec = add i64 %36, -1, !dbg !1209
  store i64 %dec, ptr %opt_len, align 8, !dbg !1209
  %37 = load ptr, ptr %stree, align 8, !dbg !1210
  %tobool = icmp ne ptr %37, null, !dbg !1210
  br i1 %tobool, label %if.then30, label %if.end35, !dbg !1212

if.then30:                                        ; preds = %cond.end
  %38 = load ptr, ptr %stree, align 8, !dbg !1213
  %39 = load i32, ptr %node, align 4, !dbg !1214
  %idxprom31 = sext i32 %39 to i64, !dbg !1213
  %arrayidx32 = getelementptr %struct.ct_data_s, ptr %38, i64 %idxprom31, !dbg !1213
  %dl33 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx32, i32 0, i32 1, !dbg !1215
  %40 = load i16, ptr %dl33, align 2, !dbg !1215
  %conv34 = zext i16 %40 to i64, !dbg !1213
  %41 = load ptr, ptr %s.addr, align 8, !dbg !1216
  %static_len = getelementptr inbounds %struct.deflate_state, ptr %41, i32 0, i32 52, !dbg !1217
  %42 = load i64, ptr %static_len, align 8, !dbg !1218
  %sub = sub i64 %42, %conv34, !dbg !1218
  store i64 %sub, ptr %static_len, align 8, !dbg !1218
  br label %if.end35, !dbg !1216

if.end35:                                         ; preds = %if.then30, %cond.end
  br label %while.cond, !dbg !1184, !llvm.loop !1219

while.end:                                        ; preds = %while.cond
  %43 = load i32, ptr %max_code, align 4, !dbg !1221
  %44 = load ptr, ptr %desc.addr, align 8, !dbg !1222
  %max_code36 = getelementptr inbounds %struct.tree_desc_s, ptr %44, i32 0, i32 1, !dbg !1223
  store i32 %43, ptr %max_code36, align 8, !dbg !1224
  %45 = load ptr, ptr %s.addr, align 8, !dbg !1225
  %heap_len37 = getelementptr inbounds %struct.deflate_state, ptr %45, i32 0, i32 44, !dbg !1227
  %46 = load i32, ptr %heap_len37, align 4, !dbg !1227
  %div = sdiv i32 %46, 2, !dbg !1228
  store i32 %div, ptr %n, align 4, !dbg !1229
  br label %for.cond38, !dbg !1230

for.cond38:                                       ; preds = %for.inc42, %while.end
  %47 = load i32, ptr %n, align 4, !dbg !1231
  %cmp39 = icmp sge i32 %47, 1, !dbg !1233
  br i1 %cmp39, label %for.body41, label %for.end44, !dbg !1234

for.body41:                                       ; preds = %for.cond38
  %48 = load ptr, ptr %s.addr, align 8, !dbg !1235
  %49 = load ptr, ptr %tree, align 8, !dbg !1236
  %50 = load i32, ptr %n, align 4, !dbg !1237
  call void @pqdownheap(ptr noundef %48, ptr noundef %49, i32 noundef %50) #6, !dbg !1238
  br label %for.inc42, !dbg !1238

for.inc42:                                        ; preds = %for.body41
  %51 = load i32, ptr %n, align 4, !dbg !1239
  %dec43 = add i32 %51, -1, !dbg !1239
  store i32 %dec43, ptr %n, align 4, !dbg !1239
  br label %for.cond38, !dbg !1240, !llvm.loop !1241

for.end44:                                        ; preds = %for.cond38
  %52 = load i32, ptr %elems, align 4, !dbg !1243
  store i32 %52, ptr %node, align 4, !dbg !1244
  br label %do.body, !dbg !1245

do.body:                                          ; preds = %do.cond, %for.end44
  %53 = load ptr, ptr %s.addr, align 8, !dbg !1246
  %heap45 = getelementptr inbounds %struct.deflate_state, ptr %53, i32 0, i32 43, !dbg !1246
  %arrayidx46 = getelementptr [573 x i32], ptr %heap45, i64 0, i64 1, !dbg !1246
  %54 = load i32, ptr %arrayidx46, align 4, !dbg !1246
  store i32 %54, ptr %n, align 4, !dbg !1246
  %55 = load ptr, ptr %s.addr, align 8, !dbg !1246
  %heap47 = getelementptr inbounds %struct.deflate_state, ptr %55, i32 0, i32 43, !dbg !1246
  %56 = load ptr, ptr %s.addr, align 8, !dbg !1246
  %heap_len48 = getelementptr inbounds %struct.deflate_state, ptr %56, i32 0, i32 44, !dbg !1246
  %57 = load i32, ptr %heap_len48, align 4, !dbg !1246
  %dec49 = add i32 %57, -1, !dbg !1246
  store i32 %dec49, ptr %heap_len48, align 4, !dbg !1246
  %idxprom50 = sext i32 %57 to i64, !dbg !1246
  %arrayidx51 = getelementptr [573 x i32], ptr %heap47, i64 0, i64 %idxprom50, !dbg !1246
  %58 = load i32, ptr %arrayidx51, align 4, !dbg !1246
  %59 = load ptr, ptr %s.addr, align 8, !dbg !1246
  %heap52 = getelementptr inbounds %struct.deflate_state, ptr %59, i32 0, i32 43, !dbg !1246
  %arrayidx53 = getelementptr [573 x i32], ptr %heap52, i64 0, i64 1, !dbg !1246
  store i32 %58, ptr %arrayidx53, align 4, !dbg !1246
  %60 = load ptr, ptr %s.addr, align 8, !dbg !1246
  %61 = load ptr, ptr %tree, align 8, !dbg !1246
  call void @pqdownheap(ptr noundef %60, ptr noundef %61, i32 noundef 1) #6, !dbg !1246
  %62 = load ptr, ptr %s.addr, align 8, !dbg !1248
  %heap54 = getelementptr inbounds %struct.deflate_state, ptr %62, i32 0, i32 43, !dbg !1249
  %arrayidx55 = getelementptr [573 x i32], ptr %heap54, i64 0, i64 1, !dbg !1248
  %63 = load i32, ptr %arrayidx55, align 4, !dbg !1248
  store i32 %63, ptr %m, align 4, !dbg !1250
  %64 = load i32, ptr %n, align 4, !dbg !1251
  %65 = load ptr, ptr %s.addr, align 8, !dbg !1252
  %heap56 = getelementptr inbounds %struct.deflate_state, ptr %65, i32 0, i32 43, !dbg !1253
  %66 = load ptr, ptr %s.addr, align 8, !dbg !1254
  %heap_max57 = getelementptr inbounds %struct.deflate_state, ptr %66, i32 0, i32 45, !dbg !1255
  %67 = load i32, ptr %heap_max57, align 8, !dbg !1256
  %dec58 = add i32 %67, -1, !dbg !1256
  store i32 %dec58, ptr %heap_max57, align 8, !dbg !1256
  %idxprom59 = sext i32 %dec58 to i64, !dbg !1252
  %arrayidx60 = getelementptr [573 x i32], ptr %heap56, i64 0, i64 %idxprom59, !dbg !1252
  store i32 %64, ptr %arrayidx60, align 4, !dbg !1257
  %68 = load i32, ptr %m, align 4, !dbg !1258
  %69 = load ptr, ptr %s.addr, align 8, !dbg !1259
  %heap61 = getelementptr inbounds %struct.deflate_state, ptr %69, i32 0, i32 43, !dbg !1260
  %70 = load ptr, ptr %s.addr, align 8, !dbg !1261
  %heap_max62 = getelementptr inbounds %struct.deflate_state, ptr %70, i32 0, i32 45, !dbg !1262
  %71 = load i32, ptr %heap_max62, align 8, !dbg !1263
  %dec63 = add i32 %71, -1, !dbg !1263
  store i32 %dec63, ptr %heap_max62, align 8, !dbg !1263
  %idxprom64 = sext i32 %dec63 to i64, !dbg !1259
  %arrayidx65 = getelementptr [573 x i32], ptr %heap61, i64 0, i64 %idxprom64, !dbg !1259
  store i32 %68, ptr %arrayidx65, align 4, !dbg !1264
  %72 = load ptr, ptr %tree, align 8, !dbg !1265
  %73 = load i32, ptr %n, align 4, !dbg !1266
  %idxprom66 = sext i32 %73 to i64, !dbg !1265
  %arrayidx67 = getelementptr %struct.ct_data_s, ptr %72, i64 %idxprom66, !dbg !1265
  %fc68 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx67, i32 0, i32 0, !dbg !1267
  %74 = load i16, ptr %fc68, align 2, !dbg !1267
  %conv69 = zext i16 %74 to i32, !dbg !1265
  %75 = load ptr, ptr %tree, align 8, !dbg !1268
  %76 = load i32, ptr %m, align 4, !dbg !1269
  %idxprom70 = sext i32 %76 to i64, !dbg !1268
  %arrayidx71 = getelementptr %struct.ct_data_s, ptr %75, i64 %idxprom70, !dbg !1268
  %fc72 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx71, i32 0, i32 0, !dbg !1270
  %77 = load i16, ptr %fc72, align 2, !dbg !1270
  %conv73 = zext i16 %77 to i32, !dbg !1268
  %add = add i32 %conv69, %conv73, !dbg !1271
  %conv74 = trunc i32 %add to i16, !dbg !1265
  %78 = load ptr, ptr %tree, align 8, !dbg !1272
  %79 = load i32, ptr %node, align 4, !dbg !1273
  %idxprom75 = sext i32 %79 to i64, !dbg !1272
  %arrayidx76 = getelementptr %struct.ct_data_s, ptr %78, i64 %idxprom75, !dbg !1272
  %fc77 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx76, i32 0, i32 0, !dbg !1274
  store i16 %conv74, ptr %fc77, align 2, !dbg !1275
  call void @llvm.lifetime.start.p0(i64 1, ptr %__UNIQUE_ID___x3) #7, !dbg !1276
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x3, metadata !1112, metadata !DIExpression()), !dbg !1276
  %80 = load ptr, ptr %s.addr, align 8, !dbg !1276
  %depth78 = getelementptr inbounds %struct.deflate_state, ptr %80, i32 0, i32 46, !dbg !1276
  %81 = load i32, ptr %n, align 4, !dbg !1276
  %idxprom79 = sext i32 %81 to i64, !dbg !1276
  %arrayidx80 = getelementptr [573 x i8], ptr %depth78, i64 0, i64 %idxprom79, !dbg !1276
  %82 = load i8, ptr %arrayidx80, align 1, !dbg !1276
  store i8 %82, ptr %__UNIQUE_ID___x3, align 1, !dbg !1276
  call void @llvm.lifetime.start.p0(i64 1, ptr %__UNIQUE_ID___y4) #7, !dbg !1276
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y4, metadata !1115, metadata !DIExpression()), !dbg !1276
  %83 = load ptr, ptr %s.addr, align 8, !dbg !1276
  %depth81 = getelementptr inbounds %struct.deflate_state, ptr %83, i32 0, i32 46, !dbg !1276
  %84 = load i32, ptr %m, align 4, !dbg !1276
  %idxprom82 = sext i32 %84 to i64, !dbg !1276
  %arrayidx83 = getelementptr [573 x i8], ptr %depth81, i64 0, i64 %idxprom82, !dbg !1276
  %85 = load i8, ptr %arrayidx83, align 1, !dbg !1276
  store i8 %85, ptr %__UNIQUE_ID___y4, align 1, !dbg !1276
  %86 = load i8, ptr %__UNIQUE_ID___x3, align 1, !dbg !1276
  %conv84 = zext i8 %86 to i32, !dbg !1276
  %87 = load i8, ptr %__UNIQUE_ID___y4, align 1, !dbg !1276
  %conv85 = zext i8 %87 to i32, !dbg !1276
  %cmp86 = icmp sgt i32 %conv84, %conv85, !dbg !1276
  br i1 %cmp86, label %cond.true88, label %cond.false90, !dbg !1276

cond.true88:                                      ; preds = %do.body
  %88 = load i8, ptr %__UNIQUE_ID___x3, align 1, !dbg !1276
  %conv89 = zext i8 %88 to i32, !dbg !1276
  br label %cond.end92, !dbg !1276

cond.false90:                                     ; preds = %do.body
  %89 = load i8, ptr %__UNIQUE_ID___y4, align 1, !dbg !1276
  %conv91 = zext i8 %89 to i32, !dbg !1276
  br label %cond.end92, !dbg !1276

cond.end92:                                       ; preds = %cond.false90, %cond.true88
  %cond93 = phi i32 [ %conv89, %cond.true88 ], [ %conv91, %cond.false90 ], !dbg !1276
  store i32 %cond93, ptr %tmp, align 4, !dbg !1276
  call void @llvm.lifetime.end.p0(i64 1, ptr %__UNIQUE_ID___y4) #7, !dbg !1277
  call void @llvm.lifetime.end.p0(i64 1, ptr %__UNIQUE_ID___x3) #7, !dbg !1277
  %90 = load i32, ptr %tmp, align 4, !dbg !1276
  %add94 = add i32 %90, 1, !dbg !1278
  %conv95 = trunc i32 %add94 to i8, !dbg !1279
  %91 = load ptr, ptr %s.addr, align 8, !dbg !1280
  %depth96 = getelementptr inbounds %struct.deflate_state, ptr %91, i32 0, i32 46, !dbg !1281
  %92 = load i32, ptr %node, align 4, !dbg !1282
  %idxprom97 = sext i32 %92 to i64, !dbg !1280
  %arrayidx98 = getelementptr [573 x i8], ptr %depth96, i64 0, i64 %idxprom97, !dbg !1280
  store i8 %conv95, ptr %arrayidx98, align 1, !dbg !1283
  %93 = load i32, ptr %node, align 4, !dbg !1284
  %conv99 = trunc i32 %93 to i16, !dbg !1285
  %94 = load ptr, ptr %tree, align 8, !dbg !1286
  %95 = load i32, ptr %m, align 4, !dbg !1287
  %idxprom100 = sext i32 %95 to i64, !dbg !1286
  %arrayidx101 = getelementptr %struct.ct_data_s, ptr %94, i64 %idxprom100, !dbg !1286
  %dl102 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx101, i32 0, i32 1, !dbg !1288
  store i16 %conv99, ptr %dl102, align 2, !dbg !1289
  %96 = load ptr, ptr %tree, align 8, !dbg !1290
  %97 = load i32, ptr %n, align 4, !dbg !1291
  %idxprom103 = sext i32 %97 to i64, !dbg !1290
  %arrayidx104 = getelementptr %struct.ct_data_s, ptr %96, i64 %idxprom103, !dbg !1290
  %dl105 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx104, i32 0, i32 1, !dbg !1292
  store i16 %conv99, ptr %dl105, align 2, !dbg !1293
  %98 = load i32, ptr %node, align 4, !dbg !1294
  %inc106 = add i32 %98, 1, !dbg !1294
  store i32 %inc106, ptr %node, align 4, !dbg !1294
  %99 = load ptr, ptr %s.addr, align 8, !dbg !1295
  %heap107 = getelementptr inbounds %struct.deflate_state, ptr %99, i32 0, i32 43, !dbg !1296
  %arrayidx108 = getelementptr [573 x i32], ptr %heap107, i64 0, i64 1, !dbg !1295
  store i32 %98, ptr %arrayidx108, align 4, !dbg !1297
  %100 = load ptr, ptr %s.addr, align 8, !dbg !1298
  %101 = load ptr, ptr %tree, align 8, !dbg !1299
  call void @pqdownheap(ptr noundef %100, ptr noundef %101, i32 noundef 1) #6, !dbg !1300
  br label %do.cond, !dbg !1301

do.cond:                                          ; preds = %cond.end92
  %102 = load ptr, ptr %s.addr, align 8, !dbg !1302
  %heap_len109 = getelementptr inbounds %struct.deflate_state, ptr %102, i32 0, i32 44, !dbg !1303
  %103 = load i32, ptr %heap_len109, align 4, !dbg !1303
  %cmp110 = icmp sge i32 %103, 2, !dbg !1304
  br i1 %cmp110, label %do.body, label %do.end, !dbg !1301, !llvm.loop !1305

do.end:                                           ; preds = %do.cond
  %104 = load ptr, ptr %s.addr, align 8, !dbg !1307
  %heap112 = getelementptr inbounds %struct.deflate_state, ptr %104, i32 0, i32 43, !dbg !1308
  %arrayidx113 = getelementptr [573 x i32], ptr %heap112, i64 0, i64 1, !dbg !1307
  %105 = load i32, ptr %arrayidx113, align 4, !dbg !1307
  %106 = load ptr, ptr %s.addr, align 8, !dbg !1309
  %heap114 = getelementptr inbounds %struct.deflate_state, ptr %106, i32 0, i32 43, !dbg !1310
  %107 = load ptr, ptr %s.addr, align 8, !dbg !1311
  %heap_max115 = getelementptr inbounds %struct.deflate_state, ptr %107, i32 0, i32 45, !dbg !1312
  %108 = load i32, ptr %heap_max115, align 8, !dbg !1313
  %dec116 = add i32 %108, -1, !dbg !1313
  store i32 %dec116, ptr %heap_max115, align 8, !dbg !1313
  %idxprom117 = sext i32 %dec116 to i64, !dbg !1309
  %arrayidx118 = getelementptr [573 x i32], ptr %heap114, i64 0, i64 %idxprom117, !dbg !1309
  store i32 %105, ptr %arrayidx118, align 4, !dbg !1314
  %109 = load ptr, ptr %s.addr, align 8, !dbg !1315
  %110 = load ptr, ptr %desc.addr, align 8, !dbg !1316
  call void @gen_bitlen(ptr noundef %109, ptr noundef %110) #6, !dbg !1317
  %111 = load ptr, ptr %tree, align 8, !dbg !1318
  %112 = load i32, ptr %max_code, align 4, !dbg !1319
  %113 = load ptr, ptr %s.addr, align 8, !dbg !1320
  %bl_count = getelementptr inbounds %struct.deflate_state, ptr %113, i32 0, i32 42, !dbg !1321
  %arraydecay = getelementptr inbounds [16 x i16], ptr %bl_count, i64 0, i64 0, !dbg !1320
  call void @gen_codes(ptr noundef %111, i32 noundef %112, ptr noundef %arraydecay) #6, !dbg !1322
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #7, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_code) #7, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #7, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 4, ptr %elems) #7, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 8, ptr %stree) #7, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 8, ptr %tree) #7, !dbg !1323
  ret void, !dbg !1323
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @build_bl_tree(ptr noundef %s) #0 align 16 !dbg !1324 {
entry:
  %s.addr = alloca ptr, align 8
  %max_blindex = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1328, metadata !DIExpression()), !dbg !1330
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_blindex) #7, !dbg !1331
  call void @llvm.dbg.declare(metadata ptr %max_blindex, metadata !1329, metadata !DIExpression()), !dbg !1332
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1333
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1334
  %dyn_ltree = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 36, !dbg !1335
  %arraydecay = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 0, !dbg !1334
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1336
  %l_desc = getelementptr inbounds %struct.deflate_state, ptr %2, i32 0, i32 39, !dbg !1337
  %max_code = getelementptr inbounds %struct.tree_desc_s, ptr %l_desc, i32 0, i32 1, !dbg !1338
  %3 = load i32, ptr %max_code, align 8, !dbg !1338
  call void @scan_tree(ptr noundef %0, ptr noundef %arraydecay, i32 noundef %3) #6, !dbg !1339
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1340
  %5 = load ptr, ptr %s.addr, align 8, !dbg !1341
  %dyn_dtree = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 37, !dbg !1342
  %arraydecay1 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 0, !dbg !1341
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1343
  %d_desc = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 40, !dbg !1344
  %max_code2 = getelementptr inbounds %struct.tree_desc_s, ptr %d_desc, i32 0, i32 1, !dbg !1345
  %7 = load i32, ptr %max_code2, align 8, !dbg !1345
  call void @scan_tree(ptr noundef %4, ptr noundef %arraydecay1, i32 noundef %7) #6, !dbg !1346
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1347
  %9 = load ptr, ptr %s.addr, align 8, !dbg !1348
  %bl_desc = getelementptr inbounds %struct.deflate_state, ptr %9, i32 0, i32 41, !dbg !1349
  call void @build_tree(ptr noundef %8, ptr noundef %bl_desc) #6, !dbg !1350
  store i32 18, ptr %max_blindex, align 4, !dbg !1351
  br label %for.cond, !dbg !1353

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %max_blindex, align 4, !dbg !1354
  %cmp = icmp sge i32 %10, 3, !dbg !1356
  br i1 %cmp, label %for.body, label %for.end, !dbg !1357

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %s.addr, align 8, !dbg !1358
  %bl_tree = getelementptr inbounds %struct.deflate_state, ptr %11, i32 0, i32 38, !dbg !1361
  %12 = load i32, ptr %max_blindex, align 4, !dbg !1362
  %idxprom = sext i32 %12 to i64, !dbg !1363
  %arrayidx = getelementptr [19 x i8], ptr @bl_order, i64 0, i64 %idxprom, !dbg !1363
  %13 = load i8, ptr %arrayidx, align 1, !dbg !1363
  %idxprom3 = zext i8 %13 to i64, !dbg !1358
  %arrayidx4 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 %idxprom3, !dbg !1358
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx4, i32 0, i32 1, !dbg !1364
  %14 = load i16, ptr %dl, align 2, !dbg !1364
  %conv = zext i16 %14 to i32, !dbg !1358
  %cmp5 = icmp ne i32 %conv, 0, !dbg !1365
  br i1 %cmp5, label %if.then, label %if.end, !dbg !1366

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !1367

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1368

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %max_blindex, align 4, !dbg !1369
  %dec = add i32 %15, -1, !dbg !1369
  store i32 %dec, ptr %max_blindex, align 4, !dbg !1369
  br label %for.cond, !dbg !1370, !llvm.loop !1371

for.end:                                          ; preds = %if.then, %for.cond
  %16 = load i32, ptr %max_blindex, align 4, !dbg !1373
  %add = add i32 %16, 1, !dbg !1374
  %mul = mul i32 3, %add, !dbg !1375
  %add7 = add i32 %mul, 5, !dbg !1376
  %add8 = add i32 %add7, 5, !dbg !1377
  %add9 = add i32 %add8, 4, !dbg !1378
  %conv10 = sext i32 %add9 to i64, !dbg !1379
  %17 = load ptr, ptr %s.addr, align 8, !dbg !1380
  %opt_len = getelementptr inbounds %struct.deflate_state, ptr %17, i32 0, i32 51, !dbg !1381
  %18 = load i64, ptr %opt_len, align 8, !dbg !1382
  %add11 = add i64 %18, %conv10, !dbg !1382
  store i64 %add11, ptr %opt_len, align 8, !dbg !1382
  %19 = load i32, ptr %max_blindex, align 4, !dbg !1383
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_blindex) #7, !dbg !1384
  ret i32 %19, !dbg !1385
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @compress_block(ptr noundef %s, ptr noundef %ltree, ptr noundef %dtree) #0 align 16 !dbg !1386 {
entry:
  %s.addr = alloca ptr, align 8
  %ltree.addr = alloca ptr, align 8
  %dtree.addr = alloca ptr, align 8
  %dist = alloca i32, align 4
  %lc = alloca i32, align 4
  %lx = alloca i32, align 4
  %code = alloca i32, align 4
  %extra = alloca i32, align 4
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %len62 = alloca i32, align 4
  %val74 = alloca i32, align 4
  %len144 = alloca i32, align 4
  %val150 = alloca i32, align 4
  %len211 = alloca i32, align 4
  %val221 = alloca i32, align 4
  %len287 = alloca i32, align 4
  %val293 = alloca i32, align 4
  %len349 = alloca i32, align 4
  %val358 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1390, metadata !DIExpression()), !dbg !1437
  store ptr %ltree, ptr %ltree.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ltree.addr, metadata !1391, metadata !DIExpression()), !dbg !1438
  store ptr %dtree, ptr %dtree.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dtree.addr, metadata !1392, metadata !DIExpression()), !dbg !1439
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist) #7, !dbg !1440
  call void @llvm.dbg.declare(metadata ptr %dist, metadata !1393, metadata !DIExpression()), !dbg !1441
  call void @llvm.lifetime.start.p0(i64 4, ptr %lc) #7, !dbg !1442
  call void @llvm.dbg.declare(metadata ptr %lc, metadata !1394, metadata !DIExpression()), !dbg !1443
  call void @llvm.lifetime.start.p0(i64 4, ptr %lx) #7, !dbg !1444
  call void @llvm.dbg.declare(metadata ptr %lx, metadata !1395, metadata !DIExpression()), !dbg !1445
  store i32 0, ptr %lx, align 4, !dbg !1445
  call void @llvm.lifetime.start.p0(i64 4, ptr %code) #7, !dbg !1446
  call void @llvm.dbg.declare(metadata ptr %code, metadata !1396, metadata !DIExpression()), !dbg !1447
  call void @llvm.lifetime.start.p0(i64 4, ptr %extra) #7, !dbg !1448
  call void @llvm.dbg.declare(metadata ptr %extra, metadata !1397, metadata !DIExpression()), !dbg !1449
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1450
  %last_lit = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 49, !dbg !1451
  %1 = load i32, ptr %last_lit, align 4, !dbg !1451
  %cmp = icmp ne i32 %1, 0, !dbg !1452
  br i1 %cmp, label %if.then, label %if.end348, !dbg !1453

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1454

do.body:                                          ; preds = %do.cond, %if.then
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1455
  %d_buf = getelementptr inbounds %struct.deflate_state, ptr %2, i32 0, i32 50, !dbg !1456
  %3 = load ptr, ptr %d_buf, align 8, !dbg !1456
  %4 = load i32, ptr %lx, align 4, !dbg !1457
  %idxprom = zext i32 %4 to i64, !dbg !1455
  %arrayidx = getelementptr i16, ptr %3, i64 %idxprom, !dbg !1455
  %5 = load i16, ptr %arrayidx, align 2, !dbg !1455
  %conv = zext i16 %5 to i32, !dbg !1455
  store i32 %conv, ptr %dist, align 4, !dbg !1458
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1459
  %l_buf = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 47, !dbg !1460
  %7 = load ptr, ptr %l_buf, align 8, !dbg !1460
  %8 = load i32, ptr %lx, align 4, !dbg !1461
  %inc = add i32 %8, 1, !dbg !1461
  store i32 %inc, ptr %lx, align 4, !dbg !1461
  %idxprom1 = zext i32 %8 to i64, !dbg !1459
  %arrayidx2 = getelementptr i8, ptr %7, i64 %idxprom1, !dbg !1459
  %9 = load i8, ptr %arrayidx2, align 1, !dbg !1459
  %conv3 = zext i8 %9 to i32, !dbg !1459
  store i32 %conv3, ptr %lc, align 4, !dbg !1462
  %10 = load i32, ptr %dist, align 4, !dbg !1463
  %cmp4 = icmp eq i32 %10, 0, !dbg !1464
  br i1 %cmp4, label %if.then6, label %if.else58, !dbg !1465

if.then6:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7, !dbg !1466
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1398, metadata !DIExpression()), !dbg !1466
  %11 = load ptr, ptr %ltree.addr, align 8, !dbg !1466
  %12 = load i32, ptr %lc, align 4, !dbg !1466
  %idxprom7 = sext i32 %12 to i64, !dbg !1466
  %arrayidx8 = getelementptr %struct.ct_data_s, ptr %11, i64 %idxprom7, !dbg !1466
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx8, i32 0, i32 1, !dbg !1466
  %13 = load i16, ptr %dl, align 2, !dbg !1466
  %conv9 = zext i16 %13 to i32, !dbg !1466
  store i32 %conv9, ptr %len, align 4, !dbg !1466
  %14 = load ptr, ptr %s.addr, align 8, !dbg !1467
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 57, !dbg !1467
  %15 = load i32, ptr %bi_valid, align 4, !dbg !1467
  %16 = load i32, ptr %len, align 4, !dbg !1467
  %sub = sub i32 16, %16, !dbg !1467
  %cmp10 = icmp sgt i32 %15, %sub, !dbg !1467
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1466

if.then12:                                        ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #7, !dbg !1468
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1404, metadata !DIExpression()), !dbg !1468
  %17 = load ptr, ptr %ltree.addr, align 8, !dbg !1468
  %18 = load i32, ptr %lc, align 4, !dbg !1468
  %idxprom13 = sext i32 %18 to i64, !dbg !1468
  %arrayidx14 = getelementptr %struct.ct_data_s, ptr %17, i64 %idxprom13, !dbg !1468
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx14, i32 0, i32 0, !dbg !1468
  %19 = load i16, ptr %fc, align 2, !dbg !1468
  %conv15 = zext i16 %19 to i32, !dbg !1468
  store i32 %conv15, ptr %val, align 4, !dbg !1468
  %20 = load i32, ptr %val, align 4, !dbg !1468
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1468
  %bi_valid16 = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 57, !dbg !1468
  %22 = load i32, ptr %bi_valid16, align 4, !dbg !1468
  %shl = shl i32 %20, %22, !dbg !1468
  %23 = load ptr, ptr %s.addr, align 8, !dbg !1468
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %23, i32 0, i32 56, !dbg !1468
  %24 = load i16, ptr %bi_buf, align 8, !dbg !1468
  %conv17 = zext i16 %24 to i32, !dbg !1468
  %or = or i32 %conv17, %shl, !dbg !1468
  %conv18 = trunc i32 %or to i16, !dbg !1468
  store i16 %conv18, ptr %bi_buf, align 8, !dbg !1468
  %25 = load ptr, ptr %s.addr, align 8, !dbg !1469
  %bi_buf19 = getelementptr inbounds %struct.deflate_state, ptr %25, i32 0, i32 56, !dbg !1469
  %26 = load i16, ptr %bi_buf19, align 8, !dbg !1469
  %conv20 = zext i16 %26 to i32, !dbg !1469
  %and = and i32 %conv20, 255, !dbg !1469
  %conv21 = trunc i32 %and to i8, !dbg !1469
  %27 = load ptr, ptr %s.addr, align 8, !dbg !1469
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 2, !dbg !1469
  %28 = load ptr, ptr %pending_buf, align 8, !dbg !1469
  %29 = load ptr, ptr %s.addr, align 8, !dbg !1469
  %pending = getelementptr inbounds %struct.deflate_state, ptr %29, i32 0, i32 5, !dbg !1469
  %30 = load i32, ptr %pending, align 8, !dbg !1469
  %inc22 = add i32 %30, 1, !dbg !1469
  store i32 %inc22, ptr %pending, align 8, !dbg !1469
  %idxprom23 = sext i32 %30 to i64, !dbg !1469
  %arrayidx24 = getelementptr i8, ptr %28, i64 %idxprom23, !dbg !1469
  store i8 %conv21, ptr %arrayidx24, align 1, !dbg !1469
  %31 = load ptr, ptr %s.addr, align 8, !dbg !1472
  %bi_buf25 = getelementptr inbounds %struct.deflate_state, ptr %31, i32 0, i32 56, !dbg !1472
  %32 = load i16, ptr %bi_buf25, align 8, !dbg !1472
  %conv26 = zext i16 %32 to i32, !dbg !1472
  %shr = ashr i32 %conv26, 8, !dbg !1472
  %conv27 = trunc i32 %shr to i8, !dbg !1472
  %33 = load ptr, ptr %s.addr, align 8, !dbg !1472
  %pending_buf28 = getelementptr inbounds %struct.deflate_state, ptr %33, i32 0, i32 2, !dbg !1472
  %34 = load ptr, ptr %pending_buf28, align 8, !dbg !1472
  %35 = load ptr, ptr %s.addr, align 8, !dbg !1472
  %pending29 = getelementptr inbounds %struct.deflate_state, ptr %35, i32 0, i32 5, !dbg !1472
  %36 = load i32, ptr %pending29, align 8, !dbg !1472
  %inc30 = add i32 %36, 1, !dbg !1472
  store i32 %inc30, ptr %pending29, align 8, !dbg !1472
  %idxprom31 = sext i32 %36 to i64, !dbg !1472
  %arrayidx32 = getelementptr i8, ptr %34, i64 %idxprom31, !dbg !1472
  store i8 %conv27, ptr %arrayidx32, align 1, !dbg !1472
  %37 = load i32, ptr %val, align 4, !dbg !1468
  %conv33 = trunc i32 %37 to i16, !dbg !1468
  %conv34 = zext i16 %conv33 to i32, !dbg !1468
  %38 = load ptr, ptr %s.addr, align 8, !dbg !1468
  %bi_valid35 = getelementptr inbounds %struct.deflate_state, ptr %38, i32 0, i32 57, !dbg !1468
  %39 = load i32, ptr %bi_valid35, align 4, !dbg !1468
  %conv36 = sext i32 %39 to i64, !dbg !1468
  %sub37 = sub i64 16, %conv36, !dbg !1468
  %sh_prom = trunc i64 %sub37 to i32, !dbg !1468
  %shr38 = ashr i32 %conv34, %sh_prom, !dbg !1468
  %conv39 = trunc i32 %shr38 to i16, !dbg !1468
  %40 = load ptr, ptr %s.addr, align 8, !dbg !1468
  %bi_buf40 = getelementptr inbounds %struct.deflate_state, ptr %40, i32 0, i32 56, !dbg !1468
  store i16 %conv39, ptr %bi_buf40, align 8, !dbg !1468
  %41 = load i32, ptr %len, align 4, !dbg !1468
  %conv41 = sext i32 %41 to i64, !dbg !1468
  %sub42 = sub i64 %conv41, 16, !dbg !1468
  %42 = load ptr, ptr %s.addr, align 8, !dbg !1468
  %bi_valid43 = getelementptr inbounds %struct.deflate_state, ptr %42, i32 0, i32 57, !dbg !1468
  %43 = load i32, ptr %bi_valid43, align 4, !dbg !1468
  %conv44 = sext i32 %43 to i64, !dbg !1468
  %add = add i64 %conv44, %sub42, !dbg !1468
  %conv45 = trunc i64 %add to i32, !dbg !1468
  store i32 %conv45, ptr %bi_valid43, align 4, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #7, !dbg !1467
  br label %if.end, !dbg !1468

if.else:                                          ; preds = %if.then6
  %44 = load ptr, ptr %ltree.addr, align 8, !dbg !1474
  %45 = load i32, ptr %lc, align 4, !dbg !1474
  %idxprom46 = sext i32 %45 to i64, !dbg !1474
  %arrayidx47 = getelementptr %struct.ct_data_s, ptr %44, i64 %idxprom46, !dbg !1474
  %fc48 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx47, i32 0, i32 0, !dbg !1474
  %46 = load i16, ptr %fc48, align 2, !dbg !1474
  %conv49 = zext i16 %46 to i32, !dbg !1474
  %47 = load ptr, ptr %s.addr, align 8, !dbg !1474
  %bi_valid50 = getelementptr inbounds %struct.deflate_state, ptr %47, i32 0, i32 57, !dbg !1474
  %48 = load i32, ptr %bi_valid50, align 4, !dbg !1474
  %shl51 = shl i32 %conv49, %48, !dbg !1474
  %49 = load ptr, ptr %s.addr, align 8, !dbg !1474
  %bi_buf52 = getelementptr inbounds %struct.deflate_state, ptr %49, i32 0, i32 56, !dbg !1474
  %50 = load i16, ptr %bi_buf52, align 8, !dbg !1474
  %conv53 = zext i16 %50 to i32, !dbg !1474
  %or54 = or i32 %conv53, %shl51, !dbg !1474
  %conv55 = trunc i32 %or54 to i16, !dbg !1474
  store i16 %conv55, ptr %bi_buf52, align 8, !dbg !1474
  %51 = load i32, ptr %len, align 4, !dbg !1474
  %52 = load ptr, ptr %s.addr, align 8, !dbg !1474
  %bi_valid56 = getelementptr inbounds %struct.deflate_state, ptr %52, i32 0, i32 57, !dbg !1474
  %53 = load i32, ptr %bi_valid56, align 4, !dbg !1474
  %add57 = add i32 %53, %51, !dbg !1474
  store i32 %add57, ptr %bi_valid56, align 4, !dbg !1474
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7, !dbg !1476
  br label %if.end344, !dbg !1477

if.else58:                                        ; preds = %do.body
  %54 = load i32, ptr %lc, align 4, !dbg !1478
  %idxprom59 = sext i32 %54 to i64, !dbg !1479
  %arrayidx60 = getelementptr [256 x i8], ptr @length_code, i64 0, i64 %idxprom59, !dbg !1479
  %55 = load i8, ptr %arrayidx60, align 1, !dbg !1479
  %conv61 = zext i8 %55 to i32, !dbg !1479
  store i32 %conv61, ptr %code, align 4, !dbg !1480
  call void @llvm.lifetime.start.p0(i64 4, ptr %len62) #7, !dbg !1481
  call void @llvm.dbg.declare(metadata ptr %len62, metadata !1407, metadata !DIExpression()), !dbg !1481
  %56 = load ptr, ptr %ltree.addr, align 8, !dbg !1481
  %57 = load i32, ptr %code, align 4, !dbg !1481
  %add63 = add i32 %57, 256, !dbg !1481
  %add64 = add i32 %add63, 1, !dbg !1481
  %idxprom65 = zext i32 %add64 to i64, !dbg !1481
  %arrayidx66 = getelementptr %struct.ct_data_s, ptr %56, i64 %idxprom65, !dbg !1481
  %dl67 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx66, i32 0, i32 1, !dbg !1481
  %58 = load i16, ptr %dl67, align 2, !dbg !1481
  %conv68 = zext i16 %58 to i32, !dbg !1481
  store i32 %conv68, ptr %len62, align 4, !dbg !1481
  %59 = load ptr, ptr %s.addr, align 8, !dbg !1482
  %bi_valid69 = getelementptr inbounds %struct.deflate_state, ptr %59, i32 0, i32 57, !dbg !1482
  %60 = load i32, ptr %bi_valid69, align 4, !dbg !1482
  %61 = load i32, ptr %len62, align 4, !dbg !1482
  %sub70 = sub i32 16, %61, !dbg !1482
  %cmp71 = icmp sgt i32 %60, %sub70, !dbg !1482
  br i1 %cmp71, label %if.then73, label %if.else120, !dbg !1481

if.then73:                                        ; preds = %if.else58
  call void @llvm.lifetime.start.p0(i64 4, ptr %val74) #7, !dbg !1483
  call void @llvm.dbg.declare(metadata ptr %val74, metadata !1410, metadata !DIExpression()), !dbg !1483
  %62 = load ptr, ptr %ltree.addr, align 8, !dbg !1483
  %63 = load i32, ptr %code, align 4, !dbg !1483
  %add75 = add i32 %63, 256, !dbg !1483
  %add76 = add i32 %add75, 1, !dbg !1483
  %idxprom77 = zext i32 %add76 to i64, !dbg !1483
  %arrayidx78 = getelementptr %struct.ct_data_s, ptr %62, i64 %idxprom77, !dbg !1483
  %fc79 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx78, i32 0, i32 0, !dbg !1483
  %64 = load i16, ptr %fc79, align 2, !dbg !1483
  %conv80 = zext i16 %64 to i32, !dbg !1483
  store i32 %conv80, ptr %val74, align 4, !dbg !1483
  %65 = load i32, ptr %val74, align 4, !dbg !1483
  %66 = load ptr, ptr %s.addr, align 8, !dbg !1483
  %bi_valid81 = getelementptr inbounds %struct.deflate_state, ptr %66, i32 0, i32 57, !dbg !1483
  %67 = load i32, ptr %bi_valid81, align 4, !dbg !1483
  %shl82 = shl i32 %65, %67, !dbg !1483
  %68 = load ptr, ptr %s.addr, align 8, !dbg !1483
  %bi_buf83 = getelementptr inbounds %struct.deflate_state, ptr %68, i32 0, i32 56, !dbg !1483
  %69 = load i16, ptr %bi_buf83, align 8, !dbg !1483
  %conv84 = zext i16 %69 to i32, !dbg !1483
  %or85 = or i32 %conv84, %shl82, !dbg !1483
  %conv86 = trunc i32 %or85 to i16, !dbg !1483
  store i16 %conv86, ptr %bi_buf83, align 8, !dbg !1483
  %70 = load ptr, ptr %s.addr, align 8, !dbg !1484
  %bi_buf87 = getelementptr inbounds %struct.deflate_state, ptr %70, i32 0, i32 56, !dbg !1484
  %71 = load i16, ptr %bi_buf87, align 8, !dbg !1484
  %conv88 = zext i16 %71 to i32, !dbg !1484
  %and89 = and i32 %conv88, 255, !dbg !1484
  %conv90 = trunc i32 %and89 to i8, !dbg !1484
  %72 = load ptr, ptr %s.addr, align 8, !dbg !1484
  %pending_buf91 = getelementptr inbounds %struct.deflate_state, ptr %72, i32 0, i32 2, !dbg !1484
  %73 = load ptr, ptr %pending_buf91, align 8, !dbg !1484
  %74 = load ptr, ptr %s.addr, align 8, !dbg !1484
  %pending92 = getelementptr inbounds %struct.deflate_state, ptr %74, i32 0, i32 5, !dbg !1484
  %75 = load i32, ptr %pending92, align 8, !dbg !1484
  %inc93 = add i32 %75, 1, !dbg !1484
  store i32 %inc93, ptr %pending92, align 8, !dbg !1484
  %idxprom94 = sext i32 %75 to i64, !dbg !1484
  %arrayidx95 = getelementptr i8, ptr %73, i64 %idxprom94, !dbg !1484
  store i8 %conv90, ptr %arrayidx95, align 1, !dbg !1484
  %76 = load ptr, ptr %s.addr, align 8, !dbg !1487
  %bi_buf96 = getelementptr inbounds %struct.deflate_state, ptr %76, i32 0, i32 56, !dbg !1487
  %77 = load i16, ptr %bi_buf96, align 8, !dbg !1487
  %conv97 = zext i16 %77 to i32, !dbg !1487
  %shr98 = ashr i32 %conv97, 8, !dbg !1487
  %conv99 = trunc i32 %shr98 to i8, !dbg !1487
  %78 = load ptr, ptr %s.addr, align 8, !dbg !1487
  %pending_buf100 = getelementptr inbounds %struct.deflate_state, ptr %78, i32 0, i32 2, !dbg !1487
  %79 = load ptr, ptr %pending_buf100, align 8, !dbg !1487
  %80 = load ptr, ptr %s.addr, align 8, !dbg !1487
  %pending101 = getelementptr inbounds %struct.deflate_state, ptr %80, i32 0, i32 5, !dbg !1487
  %81 = load i32, ptr %pending101, align 8, !dbg !1487
  %inc102 = add i32 %81, 1, !dbg !1487
  store i32 %inc102, ptr %pending101, align 8, !dbg !1487
  %idxprom103 = sext i32 %81 to i64, !dbg !1487
  %arrayidx104 = getelementptr i8, ptr %79, i64 %idxprom103, !dbg !1487
  store i8 %conv99, ptr %arrayidx104, align 1, !dbg !1487
  %82 = load i32, ptr %val74, align 4, !dbg !1483
  %conv105 = trunc i32 %82 to i16, !dbg !1483
  %conv106 = zext i16 %conv105 to i32, !dbg !1483
  %83 = load ptr, ptr %s.addr, align 8, !dbg !1483
  %bi_valid107 = getelementptr inbounds %struct.deflate_state, ptr %83, i32 0, i32 57, !dbg !1483
  %84 = load i32, ptr %bi_valid107, align 4, !dbg !1483
  %conv108 = sext i32 %84 to i64, !dbg !1483
  %sub109 = sub i64 16, %conv108, !dbg !1483
  %sh_prom110 = trunc i64 %sub109 to i32, !dbg !1483
  %shr111 = ashr i32 %conv106, %sh_prom110, !dbg !1483
  %conv112 = trunc i32 %shr111 to i16, !dbg !1483
  %85 = load ptr, ptr %s.addr, align 8, !dbg !1483
  %bi_buf113 = getelementptr inbounds %struct.deflate_state, ptr %85, i32 0, i32 56, !dbg !1483
  store i16 %conv112, ptr %bi_buf113, align 8, !dbg !1483
  %86 = load i32, ptr %len62, align 4, !dbg !1483
  %conv114 = sext i32 %86 to i64, !dbg !1483
  %sub115 = sub i64 %conv114, 16, !dbg !1483
  %87 = load ptr, ptr %s.addr, align 8, !dbg !1483
  %bi_valid116 = getelementptr inbounds %struct.deflate_state, ptr %87, i32 0, i32 57, !dbg !1483
  %88 = load i32, ptr %bi_valid116, align 4, !dbg !1483
  %conv117 = sext i32 %88 to i64, !dbg !1483
  %add118 = add i64 %conv117, %sub115, !dbg !1483
  %conv119 = trunc i64 %add118 to i32, !dbg !1483
  store i32 %conv119, ptr %bi_valid116, align 4, !dbg !1483
  call void @llvm.lifetime.end.p0(i64 4, ptr %val74) #7, !dbg !1482
  br label %if.end135, !dbg !1483

if.else120:                                       ; preds = %if.else58
  %89 = load ptr, ptr %ltree.addr, align 8, !dbg !1489
  %90 = load i32, ptr %code, align 4, !dbg !1489
  %add121 = add i32 %90, 256, !dbg !1489
  %add122 = add i32 %add121, 1, !dbg !1489
  %idxprom123 = zext i32 %add122 to i64, !dbg !1489
  %arrayidx124 = getelementptr %struct.ct_data_s, ptr %89, i64 %idxprom123, !dbg !1489
  %fc125 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx124, i32 0, i32 0, !dbg !1489
  %91 = load i16, ptr %fc125, align 2, !dbg !1489
  %conv126 = zext i16 %91 to i32, !dbg !1489
  %92 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %bi_valid127 = getelementptr inbounds %struct.deflate_state, ptr %92, i32 0, i32 57, !dbg !1489
  %93 = load i32, ptr %bi_valid127, align 4, !dbg !1489
  %shl128 = shl i32 %conv126, %93, !dbg !1489
  %94 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %bi_buf129 = getelementptr inbounds %struct.deflate_state, ptr %94, i32 0, i32 56, !dbg !1489
  %95 = load i16, ptr %bi_buf129, align 8, !dbg !1489
  %conv130 = zext i16 %95 to i32, !dbg !1489
  %or131 = or i32 %conv130, %shl128, !dbg !1489
  %conv132 = trunc i32 %or131 to i16, !dbg !1489
  store i16 %conv132, ptr %bi_buf129, align 8, !dbg !1489
  %96 = load i32, ptr %len62, align 4, !dbg !1489
  %97 = load ptr, ptr %s.addr, align 8, !dbg !1489
  %bi_valid133 = getelementptr inbounds %struct.deflate_state, ptr %97, i32 0, i32 57, !dbg !1489
  %98 = load i32, ptr %bi_valid133, align 4, !dbg !1489
  %add134 = add i32 %98, %96, !dbg !1489
  store i32 %add134, ptr %bi_valid133, align 4, !dbg !1489
  br label %if.end135

if.end135:                                        ; preds = %if.else120, %if.then73
  call void @llvm.lifetime.end.p0(i64 4, ptr %len62) #7, !dbg !1491
  %99 = load i32, ptr %code, align 4, !dbg !1492
  %idxprom136 = zext i32 %99 to i64, !dbg !1493
  %arrayidx137 = getelementptr [29 x i32], ptr @extra_lbits, i64 0, i64 %idxprom136, !dbg !1493
  %100 = load i32, ptr %arrayidx137, align 4, !dbg !1493
  store i32 %100, ptr %extra, align 4, !dbg !1494
  %101 = load i32, ptr %extra, align 4, !dbg !1495
  %cmp138 = icmp ne i32 %101, 0, !dbg !1496
  br i1 %cmp138, label %if.then140, label %if.end200, !dbg !1497

if.then140:                                       ; preds = %if.end135
  %102 = load i32, ptr %code, align 4, !dbg !1498
  %idxprom141 = zext i32 %102 to i64, !dbg !1499
  %arrayidx142 = getelementptr [29 x i32], ptr @base_length, i64 0, i64 %idxprom141, !dbg !1499
  %103 = load i32, ptr %arrayidx142, align 4, !dbg !1499
  %104 = load i32, ptr %lc, align 4, !dbg !1500
  %sub143 = sub i32 %104, %103, !dbg !1500
  store i32 %sub143, ptr %lc, align 4, !dbg !1500
  call void @llvm.lifetime.start.p0(i64 4, ptr %len144) #7, !dbg !1501
  call void @llvm.dbg.declare(metadata ptr %len144, metadata !1413, metadata !DIExpression()), !dbg !1501
  %105 = load i32, ptr %extra, align 4, !dbg !1501
  store i32 %105, ptr %len144, align 4, !dbg !1501
  %106 = load ptr, ptr %s.addr, align 8, !dbg !1502
  %bi_valid145 = getelementptr inbounds %struct.deflate_state, ptr %106, i32 0, i32 57, !dbg !1502
  %107 = load i32, ptr %bi_valid145, align 4, !dbg !1502
  %108 = load i32, ptr %len144, align 4, !dbg !1502
  %sub146 = sub i32 16, %108, !dbg !1502
  %cmp147 = icmp sgt i32 %107, %sub146, !dbg !1502
  br i1 %cmp147, label %if.then149, label %if.else190, !dbg !1501

if.then149:                                       ; preds = %if.then140
  call void @llvm.lifetime.start.p0(i64 4, ptr %val150) #7, !dbg !1503
  call void @llvm.dbg.declare(metadata ptr %val150, metadata !1417, metadata !DIExpression()), !dbg !1503
  %109 = load i32, ptr %lc, align 4, !dbg !1503
  store i32 %109, ptr %val150, align 4, !dbg !1503
  %110 = load i32, ptr %val150, align 4, !dbg !1503
  %111 = load ptr, ptr %s.addr, align 8, !dbg !1503
  %bi_valid151 = getelementptr inbounds %struct.deflate_state, ptr %111, i32 0, i32 57, !dbg !1503
  %112 = load i32, ptr %bi_valid151, align 4, !dbg !1503
  %shl152 = shl i32 %110, %112, !dbg !1503
  %113 = load ptr, ptr %s.addr, align 8, !dbg !1503
  %bi_buf153 = getelementptr inbounds %struct.deflate_state, ptr %113, i32 0, i32 56, !dbg !1503
  %114 = load i16, ptr %bi_buf153, align 8, !dbg !1503
  %conv154 = zext i16 %114 to i32, !dbg !1503
  %or155 = or i32 %conv154, %shl152, !dbg !1503
  %conv156 = trunc i32 %or155 to i16, !dbg !1503
  store i16 %conv156, ptr %bi_buf153, align 8, !dbg !1503
  %115 = load ptr, ptr %s.addr, align 8, !dbg !1504
  %bi_buf157 = getelementptr inbounds %struct.deflate_state, ptr %115, i32 0, i32 56, !dbg !1504
  %116 = load i16, ptr %bi_buf157, align 8, !dbg !1504
  %conv158 = zext i16 %116 to i32, !dbg !1504
  %and159 = and i32 %conv158, 255, !dbg !1504
  %conv160 = trunc i32 %and159 to i8, !dbg !1504
  %117 = load ptr, ptr %s.addr, align 8, !dbg !1504
  %pending_buf161 = getelementptr inbounds %struct.deflate_state, ptr %117, i32 0, i32 2, !dbg !1504
  %118 = load ptr, ptr %pending_buf161, align 8, !dbg !1504
  %119 = load ptr, ptr %s.addr, align 8, !dbg !1504
  %pending162 = getelementptr inbounds %struct.deflate_state, ptr %119, i32 0, i32 5, !dbg !1504
  %120 = load i32, ptr %pending162, align 8, !dbg !1504
  %inc163 = add i32 %120, 1, !dbg !1504
  store i32 %inc163, ptr %pending162, align 8, !dbg !1504
  %idxprom164 = sext i32 %120 to i64, !dbg !1504
  %arrayidx165 = getelementptr i8, ptr %118, i64 %idxprom164, !dbg !1504
  store i8 %conv160, ptr %arrayidx165, align 1, !dbg !1504
  %121 = load ptr, ptr %s.addr, align 8, !dbg !1507
  %bi_buf166 = getelementptr inbounds %struct.deflate_state, ptr %121, i32 0, i32 56, !dbg !1507
  %122 = load i16, ptr %bi_buf166, align 8, !dbg !1507
  %conv167 = zext i16 %122 to i32, !dbg !1507
  %shr168 = ashr i32 %conv167, 8, !dbg !1507
  %conv169 = trunc i32 %shr168 to i8, !dbg !1507
  %123 = load ptr, ptr %s.addr, align 8, !dbg !1507
  %pending_buf170 = getelementptr inbounds %struct.deflate_state, ptr %123, i32 0, i32 2, !dbg !1507
  %124 = load ptr, ptr %pending_buf170, align 8, !dbg !1507
  %125 = load ptr, ptr %s.addr, align 8, !dbg !1507
  %pending171 = getelementptr inbounds %struct.deflate_state, ptr %125, i32 0, i32 5, !dbg !1507
  %126 = load i32, ptr %pending171, align 8, !dbg !1507
  %inc172 = add i32 %126, 1, !dbg !1507
  store i32 %inc172, ptr %pending171, align 8, !dbg !1507
  %idxprom173 = sext i32 %126 to i64, !dbg !1507
  %arrayidx174 = getelementptr i8, ptr %124, i64 %idxprom173, !dbg !1507
  store i8 %conv169, ptr %arrayidx174, align 1, !dbg !1507
  %127 = load i32, ptr %val150, align 4, !dbg !1503
  %conv175 = trunc i32 %127 to i16, !dbg !1503
  %conv176 = zext i16 %conv175 to i32, !dbg !1503
  %128 = load ptr, ptr %s.addr, align 8, !dbg !1503
  %bi_valid177 = getelementptr inbounds %struct.deflate_state, ptr %128, i32 0, i32 57, !dbg !1503
  %129 = load i32, ptr %bi_valid177, align 4, !dbg !1503
  %conv178 = sext i32 %129 to i64, !dbg !1503
  %sub179 = sub i64 16, %conv178, !dbg !1503
  %sh_prom180 = trunc i64 %sub179 to i32, !dbg !1503
  %shr181 = ashr i32 %conv176, %sh_prom180, !dbg !1503
  %conv182 = trunc i32 %shr181 to i16, !dbg !1503
  %130 = load ptr, ptr %s.addr, align 8, !dbg !1503
  %bi_buf183 = getelementptr inbounds %struct.deflate_state, ptr %130, i32 0, i32 56, !dbg !1503
  store i16 %conv182, ptr %bi_buf183, align 8, !dbg !1503
  %131 = load i32, ptr %len144, align 4, !dbg !1503
  %conv184 = sext i32 %131 to i64, !dbg !1503
  %sub185 = sub i64 %conv184, 16, !dbg !1503
  %132 = load ptr, ptr %s.addr, align 8, !dbg !1503
  %bi_valid186 = getelementptr inbounds %struct.deflate_state, ptr %132, i32 0, i32 57, !dbg !1503
  %133 = load i32, ptr %bi_valid186, align 4, !dbg !1503
  %conv187 = sext i32 %133 to i64, !dbg !1503
  %add188 = add i64 %conv187, %sub185, !dbg !1503
  %conv189 = trunc i64 %add188 to i32, !dbg !1503
  store i32 %conv189, ptr %bi_valid186, align 4, !dbg !1503
  call void @llvm.lifetime.end.p0(i64 4, ptr %val150) #7, !dbg !1502
  br label %if.end199, !dbg !1503

if.else190:                                       ; preds = %if.then140
  %134 = load i32, ptr %lc, align 4, !dbg !1509
  %135 = load ptr, ptr %s.addr, align 8, !dbg !1509
  %bi_valid191 = getelementptr inbounds %struct.deflate_state, ptr %135, i32 0, i32 57, !dbg !1509
  %136 = load i32, ptr %bi_valid191, align 4, !dbg !1509
  %shl192 = shl i32 %134, %136, !dbg !1509
  %137 = load ptr, ptr %s.addr, align 8, !dbg !1509
  %bi_buf193 = getelementptr inbounds %struct.deflate_state, ptr %137, i32 0, i32 56, !dbg !1509
  %138 = load i16, ptr %bi_buf193, align 8, !dbg !1509
  %conv194 = zext i16 %138 to i32, !dbg !1509
  %or195 = or i32 %conv194, %shl192, !dbg !1509
  %conv196 = trunc i32 %or195 to i16, !dbg !1509
  store i16 %conv196, ptr %bi_buf193, align 8, !dbg !1509
  %139 = load i32, ptr %len144, align 4, !dbg !1509
  %140 = load ptr, ptr %s.addr, align 8, !dbg !1509
  %bi_valid197 = getelementptr inbounds %struct.deflate_state, ptr %140, i32 0, i32 57, !dbg !1509
  %141 = load i32, ptr %bi_valid197, align 4, !dbg !1509
  %add198 = add i32 %141, %139, !dbg !1509
  store i32 %add198, ptr %bi_valid197, align 4, !dbg !1509
  br label %if.end199

if.end199:                                        ; preds = %if.else190, %if.then149
  call void @llvm.lifetime.end.p0(i64 4, ptr %len144) #7, !dbg !1511
  br label %if.end200, !dbg !1512

if.end200:                                        ; preds = %if.end199, %if.end135
  %142 = load i32, ptr %dist, align 4, !dbg !1513
  %dec = add i32 %142, -1, !dbg !1513
  store i32 %dec, ptr %dist, align 4, !dbg !1513
  %143 = load i32, ptr %dist, align 4, !dbg !1514
  %cmp201 = icmp ult i32 %143, 256, !dbg !1514
  br i1 %cmp201, label %cond.true, label %cond.false, !dbg !1514

cond.true:                                        ; preds = %if.end200
  %144 = load i32, ptr %dist, align 4, !dbg !1514
  %idxprom203 = zext i32 %144 to i64, !dbg !1514
  %arrayidx204 = getelementptr [512 x i8], ptr @dist_code, i64 0, i64 %idxprom203, !dbg !1514
  %145 = load i8, ptr %arrayidx204, align 1, !dbg !1514
  %conv205 = zext i8 %145 to i32, !dbg !1514
  br label %cond.end, !dbg !1514

cond.false:                                       ; preds = %if.end200
  %146 = load i32, ptr %dist, align 4, !dbg !1514
  %shr206 = lshr i32 %146, 7, !dbg !1514
  %add207 = add i32 256, %shr206, !dbg !1514
  %idxprom208 = zext i32 %add207 to i64, !dbg !1514
  %arrayidx209 = getelementptr [512 x i8], ptr @dist_code, i64 0, i64 %idxprom208, !dbg !1514
  %147 = load i8, ptr %arrayidx209, align 1, !dbg !1514
  %conv210 = zext i8 %147 to i32, !dbg !1514
  br label %cond.end, !dbg !1514

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv205, %cond.true ], [ %conv210, %cond.false ], !dbg !1514
  store i32 %cond, ptr %code, align 4, !dbg !1515
  call void @llvm.lifetime.start.p0(i64 4, ptr %len211) #7, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %len211, metadata !1420, metadata !DIExpression()), !dbg !1516
  %148 = load ptr, ptr %dtree.addr, align 8, !dbg !1516
  %149 = load i32, ptr %code, align 4, !dbg !1516
  %idxprom212 = zext i32 %149 to i64, !dbg !1516
  %arrayidx213 = getelementptr %struct.ct_data_s, ptr %148, i64 %idxprom212, !dbg !1516
  %dl214 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx213, i32 0, i32 1, !dbg !1516
  %150 = load i16, ptr %dl214, align 2, !dbg !1516
  %conv215 = zext i16 %150 to i32, !dbg !1516
  store i32 %conv215, ptr %len211, align 4, !dbg !1516
  %151 = load ptr, ptr %s.addr, align 8, !dbg !1517
  %bi_valid216 = getelementptr inbounds %struct.deflate_state, ptr %151, i32 0, i32 57, !dbg !1517
  %152 = load i32, ptr %bi_valid216, align 4, !dbg !1517
  %153 = load i32, ptr %len211, align 4, !dbg !1517
  %sub217 = sub i32 16, %153, !dbg !1517
  %cmp218 = icmp sgt i32 %152, %sub217, !dbg !1517
  br i1 %cmp218, label %if.then220, label %if.else265, !dbg !1516

if.then220:                                       ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %val221) #7, !dbg !1518
  call void @llvm.dbg.declare(metadata ptr %val221, metadata !1422, metadata !DIExpression()), !dbg !1518
  %154 = load ptr, ptr %dtree.addr, align 8, !dbg !1518
  %155 = load i32, ptr %code, align 4, !dbg !1518
  %idxprom222 = zext i32 %155 to i64, !dbg !1518
  %arrayidx223 = getelementptr %struct.ct_data_s, ptr %154, i64 %idxprom222, !dbg !1518
  %fc224 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx223, i32 0, i32 0, !dbg !1518
  %156 = load i16, ptr %fc224, align 2, !dbg !1518
  %conv225 = zext i16 %156 to i32, !dbg !1518
  store i32 %conv225, ptr %val221, align 4, !dbg !1518
  %157 = load i32, ptr %val221, align 4, !dbg !1518
  %158 = load ptr, ptr %s.addr, align 8, !dbg !1518
  %bi_valid226 = getelementptr inbounds %struct.deflate_state, ptr %158, i32 0, i32 57, !dbg !1518
  %159 = load i32, ptr %bi_valid226, align 4, !dbg !1518
  %shl227 = shl i32 %157, %159, !dbg !1518
  %160 = load ptr, ptr %s.addr, align 8, !dbg !1518
  %bi_buf228 = getelementptr inbounds %struct.deflate_state, ptr %160, i32 0, i32 56, !dbg !1518
  %161 = load i16, ptr %bi_buf228, align 8, !dbg !1518
  %conv229 = zext i16 %161 to i32, !dbg !1518
  %or230 = or i32 %conv229, %shl227, !dbg !1518
  %conv231 = trunc i32 %or230 to i16, !dbg !1518
  store i16 %conv231, ptr %bi_buf228, align 8, !dbg !1518
  %162 = load ptr, ptr %s.addr, align 8, !dbg !1519
  %bi_buf232 = getelementptr inbounds %struct.deflate_state, ptr %162, i32 0, i32 56, !dbg !1519
  %163 = load i16, ptr %bi_buf232, align 8, !dbg !1519
  %conv233 = zext i16 %163 to i32, !dbg !1519
  %and234 = and i32 %conv233, 255, !dbg !1519
  %conv235 = trunc i32 %and234 to i8, !dbg !1519
  %164 = load ptr, ptr %s.addr, align 8, !dbg !1519
  %pending_buf236 = getelementptr inbounds %struct.deflate_state, ptr %164, i32 0, i32 2, !dbg !1519
  %165 = load ptr, ptr %pending_buf236, align 8, !dbg !1519
  %166 = load ptr, ptr %s.addr, align 8, !dbg !1519
  %pending237 = getelementptr inbounds %struct.deflate_state, ptr %166, i32 0, i32 5, !dbg !1519
  %167 = load i32, ptr %pending237, align 8, !dbg !1519
  %inc238 = add i32 %167, 1, !dbg !1519
  store i32 %inc238, ptr %pending237, align 8, !dbg !1519
  %idxprom239 = sext i32 %167 to i64, !dbg !1519
  %arrayidx240 = getelementptr i8, ptr %165, i64 %idxprom239, !dbg !1519
  store i8 %conv235, ptr %arrayidx240, align 1, !dbg !1519
  %168 = load ptr, ptr %s.addr, align 8, !dbg !1522
  %bi_buf241 = getelementptr inbounds %struct.deflate_state, ptr %168, i32 0, i32 56, !dbg !1522
  %169 = load i16, ptr %bi_buf241, align 8, !dbg !1522
  %conv242 = zext i16 %169 to i32, !dbg !1522
  %shr243 = ashr i32 %conv242, 8, !dbg !1522
  %conv244 = trunc i32 %shr243 to i8, !dbg !1522
  %170 = load ptr, ptr %s.addr, align 8, !dbg !1522
  %pending_buf245 = getelementptr inbounds %struct.deflate_state, ptr %170, i32 0, i32 2, !dbg !1522
  %171 = load ptr, ptr %pending_buf245, align 8, !dbg !1522
  %172 = load ptr, ptr %s.addr, align 8, !dbg !1522
  %pending246 = getelementptr inbounds %struct.deflate_state, ptr %172, i32 0, i32 5, !dbg !1522
  %173 = load i32, ptr %pending246, align 8, !dbg !1522
  %inc247 = add i32 %173, 1, !dbg !1522
  store i32 %inc247, ptr %pending246, align 8, !dbg !1522
  %idxprom248 = sext i32 %173 to i64, !dbg !1522
  %arrayidx249 = getelementptr i8, ptr %171, i64 %idxprom248, !dbg !1522
  store i8 %conv244, ptr %arrayidx249, align 1, !dbg !1522
  %174 = load i32, ptr %val221, align 4, !dbg !1518
  %conv250 = trunc i32 %174 to i16, !dbg !1518
  %conv251 = zext i16 %conv250 to i32, !dbg !1518
  %175 = load ptr, ptr %s.addr, align 8, !dbg !1518
  %bi_valid252 = getelementptr inbounds %struct.deflate_state, ptr %175, i32 0, i32 57, !dbg !1518
  %176 = load i32, ptr %bi_valid252, align 4, !dbg !1518
  %conv253 = sext i32 %176 to i64, !dbg !1518
  %sub254 = sub i64 16, %conv253, !dbg !1518
  %sh_prom255 = trunc i64 %sub254 to i32, !dbg !1518
  %shr256 = ashr i32 %conv251, %sh_prom255, !dbg !1518
  %conv257 = trunc i32 %shr256 to i16, !dbg !1518
  %177 = load ptr, ptr %s.addr, align 8, !dbg !1518
  %bi_buf258 = getelementptr inbounds %struct.deflate_state, ptr %177, i32 0, i32 56, !dbg !1518
  store i16 %conv257, ptr %bi_buf258, align 8, !dbg !1518
  %178 = load i32, ptr %len211, align 4, !dbg !1518
  %conv259 = sext i32 %178 to i64, !dbg !1518
  %sub260 = sub i64 %conv259, 16, !dbg !1518
  %179 = load ptr, ptr %s.addr, align 8, !dbg !1518
  %bi_valid261 = getelementptr inbounds %struct.deflate_state, ptr %179, i32 0, i32 57, !dbg !1518
  %180 = load i32, ptr %bi_valid261, align 4, !dbg !1518
  %conv262 = sext i32 %180 to i64, !dbg !1518
  %add263 = add i64 %conv262, %sub260, !dbg !1518
  %conv264 = trunc i64 %add263 to i32, !dbg !1518
  store i32 %conv264, ptr %bi_valid261, align 4, !dbg !1518
  call void @llvm.lifetime.end.p0(i64 4, ptr %val221) #7, !dbg !1517
  br label %if.end278, !dbg !1518

if.else265:                                       ; preds = %cond.end
  %181 = load ptr, ptr %dtree.addr, align 8, !dbg !1524
  %182 = load i32, ptr %code, align 4, !dbg !1524
  %idxprom266 = zext i32 %182 to i64, !dbg !1524
  %arrayidx267 = getelementptr %struct.ct_data_s, ptr %181, i64 %idxprom266, !dbg !1524
  %fc268 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx267, i32 0, i32 0, !dbg !1524
  %183 = load i16, ptr %fc268, align 2, !dbg !1524
  %conv269 = zext i16 %183 to i32, !dbg !1524
  %184 = load ptr, ptr %s.addr, align 8, !dbg !1524
  %bi_valid270 = getelementptr inbounds %struct.deflate_state, ptr %184, i32 0, i32 57, !dbg !1524
  %185 = load i32, ptr %bi_valid270, align 4, !dbg !1524
  %shl271 = shl i32 %conv269, %185, !dbg !1524
  %186 = load ptr, ptr %s.addr, align 8, !dbg !1524
  %bi_buf272 = getelementptr inbounds %struct.deflate_state, ptr %186, i32 0, i32 56, !dbg !1524
  %187 = load i16, ptr %bi_buf272, align 8, !dbg !1524
  %conv273 = zext i16 %187 to i32, !dbg !1524
  %or274 = or i32 %conv273, %shl271, !dbg !1524
  %conv275 = trunc i32 %or274 to i16, !dbg !1524
  store i16 %conv275, ptr %bi_buf272, align 8, !dbg !1524
  %188 = load i32, ptr %len211, align 4, !dbg !1524
  %189 = load ptr, ptr %s.addr, align 8, !dbg !1524
  %bi_valid276 = getelementptr inbounds %struct.deflate_state, ptr %189, i32 0, i32 57, !dbg !1524
  %190 = load i32, ptr %bi_valid276, align 4, !dbg !1524
  %add277 = add i32 %190, %188, !dbg !1524
  store i32 %add277, ptr %bi_valid276, align 4, !dbg !1524
  br label %if.end278

if.end278:                                        ; preds = %if.else265, %if.then220
  call void @llvm.lifetime.end.p0(i64 4, ptr %len211) #7, !dbg !1526
  %191 = load i32, ptr %code, align 4, !dbg !1527
  %idxprom279 = zext i32 %191 to i64, !dbg !1528
  %arrayidx280 = getelementptr [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom279, !dbg !1528
  %192 = load i32, ptr %arrayidx280, align 4, !dbg !1528
  store i32 %192, ptr %extra, align 4, !dbg !1529
  %193 = load i32, ptr %extra, align 4, !dbg !1530
  %cmp281 = icmp ne i32 %193, 0, !dbg !1531
  br i1 %cmp281, label %if.then283, label %if.end343, !dbg !1532

if.then283:                                       ; preds = %if.end278
  %194 = load i32, ptr %code, align 4, !dbg !1533
  %idxprom284 = zext i32 %194 to i64, !dbg !1534
  %arrayidx285 = getelementptr [30 x i32], ptr @base_dist, i64 0, i64 %idxprom284, !dbg !1534
  %195 = load i32, ptr %arrayidx285, align 4, !dbg !1534
  %196 = load i32, ptr %dist, align 4, !dbg !1535
  %sub286 = sub i32 %196, %195, !dbg !1535
  store i32 %sub286, ptr %dist, align 4, !dbg !1535
  call void @llvm.lifetime.start.p0(i64 4, ptr %len287) #7, !dbg !1536
  call void @llvm.dbg.declare(metadata ptr %len287, metadata !1425, metadata !DIExpression()), !dbg !1536
  %197 = load i32, ptr %extra, align 4, !dbg !1536
  store i32 %197, ptr %len287, align 4, !dbg !1536
  %198 = load ptr, ptr %s.addr, align 8, !dbg !1537
  %bi_valid288 = getelementptr inbounds %struct.deflate_state, ptr %198, i32 0, i32 57, !dbg !1537
  %199 = load i32, ptr %bi_valid288, align 4, !dbg !1537
  %200 = load i32, ptr %len287, align 4, !dbg !1537
  %sub289 = sub i32 16, %200, !dbg !1537
  %cmp290 = icmp sgt i32 %199, %sub289, !dbg !1537
  br i1 %cmp290, label %if.then292, label %if.else333, !dbg !1536

if.then292:                                       ; preds = %if.then283
  call void @llvm.lifetime.start.p0(i64 4, ptr %val293) #7, !dbg !1538
  call void @llvm.dbg.declare(metadata ptr %val293, metadata !1429, metadata !DIExpression()), !dbg !1538
  %201 = load i32, ptr %dist, align 4, !dbg !1538
  store i32 %201, ptr %val293, align 4, !dbg !1538
  %202 = load i32, ptr %val293, align 4, !dbg !1538
  %203 = load ptr, ptr %s.addr, align 8, !dbg !1538
  %bi_valid294 = getelementptr inbounds %struct.deflate_state, ptr %203, i32 0, i32 57, !dbg !1538
  %204 = load i32, ptr %bi_valid294, align 4, !dbg !1538
  %shl295 = shl i32 %202, %204, !dbg !1538
  %205 = load ptr, ptr %s.addr, align 8, !dbg !1538
  %bi_buf296 = getelementptr inbounds %struct.deflate_state, ptr %205, i32 0, i32 56, !dbg !1538
  %206 = load i16, ptr %bi_buf296, align 8, !dbg !1538
  %conv297 = zext i16 %206 to i32, !dbg !1538
  %or298 = or i32 %conv297, %shl295, !dbg !1538
  %conv299 = trunc i32 %or298 to i16, !dbg !1538
  store i16 %conv299, ptr %bi_buf296, align 8, !dbg !1538
  %207 = load ptr, ptr %s.addr, align 8, !dbg !1539
  %bi_buf300 = getelementptr inbounds %struct.deflate_state, ptr %207, i32 0, i32 56, !dbg !1539
  %208 = load i16, ptr %bi_buf300, align 8, !dbg !1539
  %conv301 = zext i16 %208 to i32, !dbg !1539
  %and302 = and i32 %conv301, 255, !dbg !1539
  %conv303 = trunc i32 %and302 to i8, !dbg !1539
  %209 = load ptr, ptr %s.addr, align 8, !dbg !1539
  %pending_buf304 = getelementptr inbounds %struct.deflate_state, ptr %209, i32 0, i32 2, !dbg !1539
  %210 = load ptr, ptr %pending_buf304, align 8, !dbg !1539
  %211 = load ptr, ptr %s.addr, align 8, !dbg !1539
  %pending305 = getelementptr inbounds %struct.deflate_state, ptr %211, i32 0, i32 5, !dbg !1539
  %212 = load i32, ptr %pending305, align 8, !dbg !1539
  %inc306 = add i32 %212, 1, !dbg !1539
  store i32 %inc306, ptr %pending305, align 8, !dbg !1539
  %idxprom307 = sext i32 %212 to i64, !dbg !1539
  %arrayidx308 = getelementptr i8, ptr %210, i64 %idxprom307, !dbg !1539
  store i8 %conv303, ptr %arrayidx308, align 1, !dbg !1539
  %213 = load ptr, ptr %s.addr, align 8, !dbg !1542
  %bi_buf309 = getelementptr inbounds %struct.deflate_state, ptr %213, i32 0, i32 56, !dbg !1542
  %214 = load i16, ptr %bi_buf309, align 8, !dbg !1542
  %conv310 = zext i16 %214 to i32, !dbg !1542
  %shr311 = ashr i32 %conv310, 8, !dbg !1542
  %conv312 = trunc i32 %shr311 to i8, !dbg !1542
  %215 = load ptr, ptr %s.addr, align 8, !dbg !1542
  %pending_buf313 = getelementptr inbounds %struct.deflate_state, ptr %215, i32 0, i32 2, !dbg !1542
  %216 = load ptr, ptr %pending_buf313, align 8, !dbg !1542
  %217 = load ptr, ptr %s.addr, align 8, !dbg !1542
  %pending314 = getelementptr inbounds %struct.deflate_state, ptr %217, i32 0, i32 5, !dbg !1542
  %218 = load i32, ptr %pending314, align 8, !dbg !1542
  %inc315 = add i32 %218, 1, !dbg !1542
  store i32 %inc315, ptr %pending314, align 8, !dbg !1542
  %idxprom316 = sext i32 %218 to i64, !dbg !1542
  %arrayidx317 = getelementptr i8, ptr %216, i64 %idxprom316, !dbg !1542
  store i8 %conv312, ptr %arrayidx317, align 1, !dbg !1542
  %219 = load i32, ptr %val293, align 4, !dbg !1538
  %conv318 = trunc i32 %219 to i16, !dbg !1538
  %conv319 = zext i16 %conv318 to i32, !dbg !1538
  %220 = load ptr, ptr %s.addr, align 8, !dbg !1538
  %bi_valid320 = getelementptr inbounds %struct.deflate_state, ptr %220, i32 0, i32 57, !dbg !1538
  %221 = load i32, ptr %bi_valid320, align 4, !dbg !1538
  %conv321 = sext i32 %221 to i64, !dbg !1538
  %sub322 = sub i64 16, %conv321, !dbg !1538
  %sh_prom323 = trunc i64 %sub322 to i32, !dbg !1538
  %shr324 = ashr i32 %conv319, %sh_prom323, !dbg !1538
  %conv325 = trunc i32 %shr324 to i16, !dbg !1538
  %222 = load ptr, ptr %s.addr, align 8, !dbg !1538
  %bi_buf326 = getelementptr inbounds %struct.deflate_state, ptr %222, i32 0, i32 56, !dbg !1538
  store i16 %conv325, ptr %bi_buf326, align 8, !dbg !1538
  %223 = load i32, ptr %len287, align 4, !dbg !1538
  %conv327 = sext i32 %223 to i64, !dbg !1538
  %sub328 = sub i64 %conv327, 16, !dbg !1538
  %224 = load ptr, ptr %s.addr, align 8, !dbg !1538
  %bi_valid329 = getelementptr inbounds %struct.deflate_state, ptr %224, i32 0, i32 57, !dbg !1538
  %225 = load i32, ptr %bi_valid329, align 4, !dbg !1538
  %conv330 = sext i32 %225 to i64, !dbg !1538
  %add331 = add i64 %conv330, %sub328, !dbg !1538
  %conv332 = trunc i64 %add331 to i32, !dbg !1538
  store i32 %conv332, ptr %bi_valid329, align 4, !dbg !1538
  call void @llvm.lifetime.end.p0(i64 4, ptr %val293) #7, !dbg !1537
  br label %if.end342, !dbg !1538

if.else333:                                       ; preds = %if.then283
  %226 = load i32, ptr %dist, align 4, !dbg !1544
  %227 = load ptr, ptr %s.addr, align 8, !dbg !1544
  %bi_valid334 = getelementptr inbounds %struct.deflate_state, ptr %227, i32 0, i32 57, !dbg !1544
  %228 = load i32, ptr %bi_valid334, align 4, !dbg !1544
  %shl335 = shl i32 %226, %228, !dbg !1544
  %229 = load ptr, ptr %s.addr, align 8, !dbg !1544
  %bi_buf336 = getelementptr inbounds %struct.deflate_state, ptr %229, i32 0, i32 56, !dbg !1544
  %230 = load i16, ptr %bi_buf336, align 8, !dbg !1544
  %conv337 = zext i16 %230 to i32, !dbg !1544
  %or338 = or i32 %conv337, %shl335, !dbg !1544
  %conv339 = trunc i32 %or338 to i16, !dbg !1544
  store i16 %conv339, ptr %bi_buf336, align 8, !dbg !1544
  %231 = load i32, ptr %len287, align 4, !dbg !1544
  %232 = load ptr, ptr %s.addr, align 8, !dbg !1544
  %bi_valid340 = getelementptr inbounds %struct.deflate_state, ptr %232, i32 0, i32 57, !dbg !1544
  %233 = load i32, ptr %bi_valid340, align 4, !dbg !1544
  %add341 = add i32 %233, %231, !dbg !1544
  store i32 %add341, ptr %bi_valid340, align 4, !dbg !1544
  br label %if.end342

if.end342:                                        ; preds = %if.else333, %if.then292
  call void @llvm.lifetime.end.p0(i64 4, ptr %len287) #7, !dbg !1546
  br label %if.end343, !dbg !1547

if.end343:                                        ; preds = %if.end342, %if.end278
  br label %if.end344

if.end344:                                        ; preds = %if.end343, %if.end
  br label %do.cond, !dbg !1548

do.cond:                                          ; preds = %if.end344
  %234 = load i32, ptr %lx, align 4, !dbg !1549
  %235 = load ptr, ptr %s.addr, align 8, !dbg !1550
  %last_lit345 = getelementptr inbounds %struct.deflate_state, ptr %235, i32 0, i32 49, !dbg !1551
  %236 = load i32, ptr %last_lit345, align 4, !dbg !1551
  %cmp346 = icmp ult i32 %234, %236, !dbg !1552
  br i1 %cmp346, label %do.body, label %do.end, !dbg !1548, !llvm.loop !1553

do.end:                                           ; preds = %do.cond
  br label %if.end348, !dbg !1548

if.end348:                                        ; preds = %do.end, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %len349) #7, !dbg !1555
  call void @llvm.dbg.declare(metadata ptr %len349, metadata !1432, metadata !DIExpression()), !dbg !1555
  %237 = load ptr, ptr %ltree.addr, align 8, !dbg !1555
  %arrayidx350 = getelementptr %struct.ct_data_s, ptr %237, i64 256, !dbg !1555
  %dl351 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx350, i32 0, i32 1, !dbg !1555
  %238 = load i16, ptr %dl351, align 2, !dbg !1555
  %conv352 = zext i16 %238 to i32, !dbg !1555
  store i32 %conv352, ptr %len349, align 4, !dbg !1555
  %239 = load ptr, ptr %s.addr, align 8, !dbg !1556
  %bi_valid353 = getelementptr inbounds %struct.deflate_state, ptr %239, i32 0, i32 57, !dbg !1556
  %240 = load i32, ptr %bi_valid353, align 4, !dbg !1556
  %241 = load i32, ptr %len349, align 4, !dbg !1556
  %sub354 = sub i32 16, %241, !dbg !1556
  %cmp355 = icmp sgt i32 %240, %sub354, !dbg !1556
  br i1 %cmp355, label %if.then357, label %if.else401, !dbg !1555

if.then357:                                       ; preds = %if.end348
  call void @llvm.lifetime.start.p0(i64 4, ptr %val358) #7, !dbg !1557
  call void @llvm.dbg.declare(metadata ptr %val358, metadata !1434, metadata !DIExpression()), !dbg !1557
  %242 = load ptr, ptr %ltree.addr, align 8, !dbg !1557
  %arrayidx359 = getelementptr %struct.ct_data_s, ptr %242, i64 256, !dbg !1557
  %fc360 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx359, i32 0, i32 0, !dbg !1557
  %243 = load i16, ptr %fc360, align 2, !dbg !1557
  %conv361 = zext i16 %243 to i32, !dbg !1557
  store i32 %conv361, ptr %val358, align 4, !dbg !1557
  %244 = load i32, ptr %val358, align 4, !dbg !1557
  %245 = load ptr, ptr %s.addr, align 8, !dbg !1557
  %bi_valid362 = getelementptr inbounds %struct.deflate_state, ptr %245, i32 0, i32 57, !dbg !1557
  %246 = load i32, ptr %bi_valid362, align 4, !dbg !1557
  %shl363 = shl i32 %244, %246, !dbg !1557
  %247 = load ptr, ptr %s.addr, align 8, !dbg !1557
  %bi_buf364 = getelementptr inbounds %struct.deflate_state, ptr %247, i32 0, i32 56, !dbg !1557
  %248 = load i16, ptr %bi_buf364, align 8, !dbg !1557
  %conv365 = zext i16 %248 to i32, !dbg !1557
  %or366 = or i32 %conv365, %shl363, !dbg !1557
  %conv367 = trunc i32 %or366 to i16, !dbg !1557
  store i16 %conv367, ptr %bi_buf364, align 8, !dbg !1557
  %249 = load ptr, ptr %s.addr, align 8, !dbg !1558
  %bi_buf368 = getelementptr inbounds %struct.deflate_state, ptr %249, i32 0, i32 56, !dbg !1558
  %250 = load i16, ptr %bi_buf368, align 8, !dbg !1558
  %conv369 = zext i16 %250 to i32, !dbg !1558
  %and370 = and i32 %conv369, 255, !dbg !1558
  %conv371 = trunc i32 %and370 to i8, !dbg !1558
  %251 = load ptr, ptr %s.addr, align 8, !dbg !1558
  %pending_buf372 = getelementptr inbounds %struct.deflate_state, ptr %251, i32 0, i32 2, !dbg !1558
  %252 = load ptr, ptr %pending_buf372, align 8, !dbg !1558
  %253 = load ptr, ptr %s.addr, align 8, !dbg !1558
  %pending373 = getelementptr inbounds %struct.deflate_state, ptr %253, i32 0, i32 5, !dbg !1558
  %254 = load i32, ptr %pending373, align 8, !dbg !1558
  %inc374 = add i32 %254, 1, !dbg !1558
  store i32 %inc374, ptr %pending373, align 8, !dbg !1558
  %idxprom375 = sext i32 %254 to i64, !dbg !1558
  %arrayidx376 = getelementptr i8, ptr %252, i64 %idxprom375, !dbg !1558
  store i8 %conv371, ptr %arrayidx376, align 1, !dbg !1558
  %255 = load ptr, ptr %s.addr, align 8, !dbg !1561
  %bi_buf377 = getelementptr inbounds %struct.deflate_state, ptr %255, i32 0, i32 56, !dbg !1561
  %256 = load i16, ptr %bi_buf377, align 8, !dbg !1561
  %conv378 = zext i16 %256 to i32, !dbg !1561
  %shr379 = ashr i32 %conv378, 8, !dbg !1561
  %conv380 = trunc i32 %shr379 to i8, !dbg !1561
  %257 = load ptr, ptr %s.addr, align 8, !dbg !1561
  %pending_buf381 = getelementptr inbounds %struct.deflate_state, ptr %257, i32 0, i32 2, !dbg !1561
  %258 = load ptr, ptr %pending_buf381, align 8, !dbg !1561
  %259 = load ptr, ptr %s.addr, align 8, !dbg !1561
  %pending382 = getelementptr inbounds %struct.deflate_state, ptr %259, i32 0, i32 5, !dbg !1561
  %260 = load i32, ptr %pending382, align 8, !dbg !1561
  %inc383 = add i32 %260, 1, !dbg !1561
  store i32 %inc383, ptr %pending382, align 8, !dbg !1561
  %idxprom384 = sext i32 %260 to i64, !dbg !1561
  %arrayidx385 = getelementptr i8, ptr %258, i64 %idxprom384, !dbg !1561
  store i8 %conv380, ptr %arrayidx385, align 1, !dbg !1561
  %261 = load i32, ptr %val358, align 4, !dbg !1557
  %conv386 = trunc i32 %261 to i16, !dbg !1557
  %conv387 = zext i16 %conv386 to i32, !dbg !1557
  %262 = load ptr, ptr %s.addr, align 8, !dbg !1557
  %bi_valid388 = getelementptr inbounds %struct.deflate_state, ptr %262, i32 0, i32 57, !dbg !1557
  %263 = load i32, ptr %bi_valid388, align 4, !dbg !1557
  %conv389 = sext i32 %263 to i64, !dbg !1557
  %sub390 = sub i64 16, %conv389, !dbg !1557
  %sh_prom391 = trunc i64 %sub390 to i32, !dbg !1557
  %shr392 = ashr i32 %conv387, %sh_prom391, !dbg !1557
  %conv393 = trunc i32 %shr392 to i16, !dbg !1557
  %264 = load ptr, ptr %s.addr, align 8, !dbg !1557
  %bi_buf394 = getelementptr inbounds %struct.deflate_state, ptr %264, i32 0, i32 56, !dbg !1557
  store i16 %conv393, ptr %bi_buf394, align 8, !dbg !1557
  %265 = load i32, ptr %len349, align 4, !dbg !1557
  %conv395 = sext i32 %265 to i64, !dbg !1557
  %sub396 = sub i64 %conv395, 16, !dbg !1557
  %266 = load ptr, ptr %s.addr, align 8, !dbg !1557
  %bi_valid397 = getelementptr inbounds %struct.deflate_state, ptr %266, i32 0, i32 57, !dbg !1557
  %267 = load i32, ptr %bi_valid397, align 4, !dbg !1557
  %conv398 = sext i32 %267 to i64, !dbg !1557
  %add399 = add i64 %conv398, %sub396, !dbg !1557
  %conv400 = trunc i64 %add399 to i32, !dbg !1557
  store i32 %conv400, ptr %bi_valid397, align 4, !dbg !1557
  call void @llvm.lifetime.end.p0(i64 4, ptr %val358) #7, !dbg !1556
  br label %if.end413, !dbg !1557

if.else401:                                       ; preds = %if.end348
  %268 = load ptr, ptr %ltree.addr, align 8, !dbg !1563
  %arrayidx402 = getelementptr %struct.ct_data_s, ptr %268, i64 256, !dbg !1563
  %fc403 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx402, i32 0, i32 0, !dbg !1563
  %269 = load i16, ptr %fc403, align 2, !dbg !1563
  %conv404 = zext i16 %269 to i32, !dbg !1563
  %270 = load ptr, ptr %s.addr, align 8, !dbg !1563
  %bi_valid405 = getelementptr inbounds %struct.deflate_state, ptr %270, i32 0, i32 57, !dbg !1563
  %271 = load i32, ptr %bi_valid405, align 4, !dbg !1563
  %shl406 = shl i32 %conv404, %271, !dbg !1563
  %272 = load ptr, ptr %s.addr, align 8, !dbg !1563
  %bi_buf407 = getelementptr inbounds %struct.deflate_state, ptr %272, i32 0, i32 56, !dbg !1563
  %273 = load i16, ptr %bi_buf407, align 8, !dbg !1563
  %conv408 = zext i16 %273 to i32, !dbg !1563
  %or409 = or i32 %conv408, %shl406, !dbg !1563
  %conv410 = trunc i32 %or409 to i16, !dbg !1563
  store i16 %conv410, ptr %bi_buf407, align 8, !dbg !1563
  %274 = load i32, ptr %len349, align 4, !dbg !1563
  %275 = load ptr, ptr %s.addr, align 8, !dbg !1563
  %bi_valid411 = getelementptr inbounds %struct.deflate_state, ptr %275, i32 0, i32 57, !dbg !1563
  %276 = load i32, ptr %bi_valid411, align 4, !dbg !1563
  %add412 = add i32 %276, %274, !dbg !1563
  store i32 %add412, ptr %bi_valid411, align 4, !dbg !1563
  br label %if.end413

if.end413:                                        ; preds = %if.else401, %if.then357
  call void @llvm.lifetime.end.p0(i64 4, ptr %len349) #7, !dbg !1565
  %277 = load ptr, ptr %ltree.addr, align 8, !dbg !1566
  %arrayidx414 = getelementptr %struct.ct_data_s, ptr %277, i64 256, !dbg !1566
  %dl415 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx414, i32 0, i32 1, !dbg !1567
  %278 = load i16, ptr %dl415, align 2, !dbg !1567
  %conv416 = zext i16 %278 to i32, !dbg !1566
  %279 = load ptr, ptr %s.addr, align 8, !dbg !1568
  %last_eob_len = getelementptr inbounds %struct.deflate_state, ptr %279, i32 0, i32 55, !dbg !1569
  store i32 %conv416, ptr %last_eob_len, align 4, !dbg !1570
  call void @llvm.lifetime.end.p0(i64 4, ptr %extra) #7, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 4, ptr %code) #7, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 4, ptr %lx) #7, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 4, ptr %lc) #7, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist) #7, !dbg !1571
  ret void, !dbg !1571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @send_all_trees(ptr noundef %s, i32 noundef %lcodes, i32 noundef %dcodes, i32 noundef %blcodes) #0 align 16 !dbg !1572 {
entry:
  %s.addr = alloca ptr, align 8
  %lcodes.addr = alloca i32, align 4
  %dcodes.addr = alloca i32, align 4
  %blcodes.addr = alloca i32, align 4
  %rank = alloca i32, align 4
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %len37 = alloca i32, align 4
  %val43 = alloca i32, align 4
  %len95 = alloca i32, align 4
  %val101 = alloca i32, align 4
  %len155 = alloca i32, align 4
  %val161 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1576, metadata !DIExpression()), !dbg !1604
  store i32 %lcodes, ptr %lcodes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lcodes.addr, metadata !1577, metadata !DIExpression()), !dbg !1605
  store i32 %dcodes, ptr %dcodes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dcodes.addr, metadata !1578, metadata !DIExpression()), !dbg !1606
  store i32 %blcodes, ptr %blcodes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blcodes.addr, metadata !1579, metadata !DIExpression()), !dbg !1607
  call void @llvm.lifetime.start.p0(i64 4, ptr %rank) #7, !dbg !1608
  call void @llvm.dbg.declare(metadata ptr %rank, metadata !1580, metadata !DIExpression()), !dbg !1609
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7, !dbg !1610
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1581, metadata !DIExpression()), !dbg !1610
  store i32 5, ptr %len, align 4, !dbg !1610
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1611
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 57, !dbg !1611
  %1 = load i32, ptr %bi_valid, align 4, !dbg !1611
  %2 = load i32, ptr %len, align 4, !dbg !1611
  %sub = sub i32 16, %2, !dbg !1611
  %cmp = icmp sgt i32 %1, %sub, !dbg !1611
  br i1 %cmp, label %if.then, label %if.else, !dbg !1610

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #7, !dbg !1612
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1583, metadata !DIExpression()), !dbg !1612
  %3 = load i32, ptr %lcodes.addr, align 4, !dbg !1612
  %sub1 = sub i32 %3, 257, !dbg !1612
  store i32 %sub1, ptr %val, align 4, !dbg !1612
  %4 = load i32, ptr %val, align 4, !dbg !1612
  %5 = load ptr, ptr %s.addr, align 8, !dbg !1612
  %bi_valid2 = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 57, !dbg !1612
  %6 = load i32, ptr %bi_valid2, align 4, !dbg !1612
  %shl = shl i32 %4, %6, !dbg !1612
  %7 = load ptr, ptr %s.addr, align 8, !dbg !1612
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %7, i32 0, i32 56, !dbg !1612
  %8 = load i16, ptr %bi_buf, align 8, !dbg !1612
  %conv = zext i16 %8 to i32, !dbg !1612
  %or = or i32 %conv, %shl, !dbg !1612
  %conv3 = trunc i32 %or to i16, !dbg !1612
  store i16 %conv3, ptr %bi_buf, align 8, !dbg !1612
  %9 = load ptr, ptr %s.addr, align 8, !dbg !1613
  %bi_buf4 = getelementptr inbounds %struct.deflate_state, ptr %9, i32 0, i32 56, !dbg !1613
  %10 = load i16, ptr %bi_buf4, align 8, !dbg !1613
  %conv5 = zext i16 %10 to i32, !dbg !1613
  %and = and i32 %conv5, 255, !dbg !1613
  %conv6 = trunc i32 %and to i8, !dbg !1613
  %11 = load ptr, ptr %s.addr, align 8, !dbg !1613
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %11, i32 0, i32 2, !dbg !1613
  %12 = load ptr, ptr %pending_buf, align 8, !dbg !1613
  %13 = load ptr, ptr %s.addr, align 8, !dbg !1613
  %pending = getelementptr inbounds %struct.deflate_state, ptr %13, i32 0, i32 5, !dbg !1613
  %14 = load i32, ptr %pending, align 8, !dbg !1613
  %inc = add i32 %14, 1, !dbg !1613
  store i32 %inc, ptr %pending, align 8, !dbg !1613
  %idxprom = sext i32 %14 to i64, !dbg !1613
  %arrayidx = getelementptr i8, ptr %12, i64 %idxprom, !dbg !1613
  store i8 %conv6, ptr %arrayidx, align 1, !dbg !1613
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1616
  %bi_buf7 = getelementptr inbounds %struct.deflate_state, ptr %15, i32 0, i32 56, !dbg !1616
  %16 = load i16, ptr %bi_buf7, align 8, !dbg !1616
  %conv8 = zext i16 %16 to i32, !dbg !1616
  %shr = ashr i32 %conv8, 8, !dbg !1616
  %conv9 = trunc i32 %shr to i8, !dbg !1616
  %17 = load ptr, ptr %s.addr, align 8, !dbg !1616
  %pending_buf10 = getelementptr inbounds %struct.deflate_state, ptr %17, i32 0, i32 2, !dbg !1616
  %18 = load ptr, ptr %pending_buf10, align 8, !dbg !1616
  %19 = load ptr, ptr %s.addr, align 8, !dbg !1616
  %pending11 = getelementptr inbounds %struct.deflate_state, ptr %19, i32 0, i32 5, !dbg !1616
  %20 = load i32, ptr %pending11, align 8, !dbg !1616
  %inc12 = add i32 %20, 1, !dbg !1616
  store i32 %inc12, ptr %pending11, align 8, !dbg !1616
  %idxprom13 = sext i32 %20 to i64, !dbg !1616
  %arrayidx14 = getelementptr i8, ptr %18, i64 %idxprom13, !dbg !1616
  store i8 %conv9, ptr %arrayidx14, align 1, !dbg !1616
  %21 = load i32, ptr %val, align 4, !dbg !1612
  %conv15 = trunc i32 %21 to i16, !dbg !1612
  %conv16 = zext i16 %conv15 to i32, !dbg !1612
  %22 = load ptr, ptr %s.addr, align 8, !dbg !1612
  %bi_valid17 = getelementptr inbounds %struct.deflate_state, ptr %22, i32 0, i32 57, !dbg !1612
  %23 = load i32, ptr %bi_valid17, align 4, !dbg !1612
  %conv18 = sext i32 %23 to i64, !dbg !1612
  %sub19 = sub i64 16, %conv18, !dbg !1612
  %sh_prom = trunc i64 %sub19 to i32, !dbg !1612
  %shr20 = ashr i32 %conv16, %sh_prom, !dbg !1612
  %conv21 = trunc i32 %shr20 to i16, !dbg !1612
  %24 = load ptr, ptr %s.addr, align 8, !dbg !1612
  %bi_buf22 = getelementptr inbounds %struct.deflate_state, ptr %24, i32 0, i32 56, !dbg !1612
  store i16 %conv21, ptr %bi_buf22, align 8, !dbg !1612
  %25 = load i32, ptr %len, align 4, !dbg !1612
  %conv23 = sext i32 %25 to i64, !dbg !1612
  %sub24 = sub i64 %conv23, 16, !dbg !1612
  %26 = load ptr, ptr %s.addr, align 8, !dbg !1612
  %bi_valid25 = getelementptr inbounds %struct.deflate_state, ptr %26, i32 0, i32 57, !dbg !1612
  %27 = load i32, ptr %bi_valid25, align 4, !dbg !1612
  %conv26 = sext i32 %27 to i64, !dbg !1612
  %add = add i64 %conv26, %sub24, !dbg !1612
  %conv27 = trunc i64 %add to i32, !dbg !1612
  store i32 %conv27, ptr %bi_valid25, align 4, !dbg !1612
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #7, !dbg !1611
  br label %if.end, !dbg !1612

if.else:                                          ; preds = %entry
  %28 = load i32, ptr %lcodes.addr, align 4, !dbg !1618
  %sub28 = sub i32 %28, 257, !dbg !1618
  %29 = load ptr, ptr %s.addr, align 8, !dbg !1618
  %bi_valid29 = getelementptr inbounds %struct.deflate_state, ptr %29, i32 0, i32 57, !dbg !1618
  %30 = load i32, ptr %bi_valid29, align 4, !dbg !1618
  %shl30 = shl i32 %sub28, %30, !dbg !1618
  %31 = load ptr, ptr %s.addr, align 8, !dbg !1618
  %bi_buf31 = getelementptr inbounds %struct.deflate_state, ptr %31, i32 0, i32 56, !dbg !1618
  %32 = load i16, ptr %bi_buf31, align 8, !dbg !1618
  %conv32 = zext i16 %32 to i32, !dbg !1618
  %or33 = or i32 %conv32, %shl30, !dbg !1618
  %conv34 = trunc i32 %or33 to i16, !dbg !1618
  store i16 %conv34, ptr %bi_buf31, align 8, !dbg !1618
  %33 = load i32, ptr %len, align 4, !dbg !1618
  %34 = load ptr, ptr %s.addr, align 8, !dbg !1618
  %bi_valid35 = getelementptr inbounds %struct.deflate_state, ptr %34, i32 0, i32 57, !dbg !1618
  %35 = load i32, ptr %bi_valid35, align 4, !dbg !1618
  %add36 = add i32 %35, %33, !dbg !1618
  store i32 %add36, ptr %bi_valid35, align 4, !dbg !1618
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7, !dbg !1620
  call void @llvm.lifetime.start.p0(i64 4, ptr %len37) #7, !dbg !1621
  call void @llvm.dbg.declare(metadata ptr %len37, metadata !1586, metadata !DIExpression()), !dbg !1621
  store i32 5, ptr %len37, align 4, !dbg !1621
  %36 = load ptr, ptr %s.addr, align 8, !dbg !1622
  %bi_valid38 = getelementptr inbounds %struct.deflate_state, ptr %36, i32 0, i32 57, !dbg !1622
  %37 = load i32, ptr %bi_valid38, align 4, !dbg !1622
  %38 = load i32, ptr %len37, align 4, !dbg !1622
  %sub39 = sub i32 16, %38, !dbg !1622
  %cmp40 = icmp sgt i32 %37, %sub39, !dbg !1622
  br i1 %cmp40, label %if.then42, label %if.else84, !dbg !1621

if.then42:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %val43) #7, !dbg !1623
  call void @llvm.dbg.declare(metadata ptr %val43, metadata !1588, metadata !DIExpression()), !dbg !1623
  %39 = load i32, ptr %dcodes.addr, align 4, !dbg !1623
  %sub44 = sub i32 %39, 1, !dbg !1623
  store i32 %sub44, ptr %val43, align 4, !dbg !1623
  %40 = load i32, ptr %val43, align 4, !dbg !1623
  %41 = load ptr, ptr %s.addr, align 8, !dbg !1623
  %bi_valid45 = getelementptr inbounds %struct.deflate_state, ptr %41, i32 0, i32 57, !dbg !1623
  %42 = load i32, ptr %bi_valid45, align 4, !dbg !1623
  %shl46 = shl i32 %40, %42, !dbg !1623
  %43 = load ptr, ptr %s.addr, align 8, !dbg !1623
  %bi_buf47 = getelementptr inbounds %struct.deflate_state, ptr %43, i32 0, i32 56, !dbg !1623
  %44 = load i16, ptr %bi_buf47, align 8, !dbg !1623
  %conv48 = zext i16 %44 to i32, !dbg !1623
  %or49 = or i32 %conv48, %shl46, !dbg !1623
  %conv50 = trunc i32 %or49 to i16, !dbg !1623
  store i16 %conv50, ptr %bi_buf47, align 8, !dbg !1623
  %45 = load ptr, ptr %s.addr, align 8, !dbg !1624
  %bi_buf51 = getelementptr inbounds %struct.deflate_state, ptr %45, i32 0, i32 56, !dbg !1624
  %46 = load i16, ptr %bi_buf51, align 8, !dbg !1624
  %conv52 = zext i16 %46 to i32, !dbg !1624
  %and53 = and i32 %conv52, 255, !dbg !1624
  %conv54 = trunc i32 %and53 to i8, !dbg !1624
  %47 = load ptr, ptr %s.addr, align 8, !dbg !1624
  %pending_buf55 = getelementptr inbounds %struct.deflate_state, ptr %47, i32 0, i32 2, !dbg !1624
  %48 = load ptr, ptr %pending_buf55, align 8, !dbg !1624
  %49 = load ptr, ptr %s.addr, align 8, !dbg !1624
  %pending56 = getelementptr inbounds %struct.deflate_state, ptr %49, i32 0, i32 5, !dbg !1624
  %50 = load i32, ptr %pending56, align 8, !dbg !1624
  %inc57 = add i32 %50, 1, !dbg !1624
  store i32 %inc57, ptr %pending56, align 8, !dbg !1624
  %idxprom58 = sext i32 %50 to i64, !dbg !1624
  %arrayidx59 = getelementptr i8, ptr %48, i64 %idxprom58, !dbg !1624
  store i8 %conv54, ptr %arrayidx59, align 1, !dbg !1624
  %51 = load ptr, ptr %s.addr, align 8, !dbg !1627
  %bi_buf60 = getelementptr inbounds %struct.deflate_state, ptr %51, i32 0, i32 56, !dbg !1627
  %52 = load i16, ptr %bi_buf60, align 8, !dbg !1627
  %conv61 = zext i16 %52 to i32, !dbg !1627
  %shr62 = ashr i32 %conv61, 8, !dbg !1627
  %conv63 = trunc i32 %shr62 to i8, !dbg !1627
  %53 = load ptr, ptr %s.addr, align 8, !dbg !1627
  %pending_buf64 = getelementptr inbounds %struct.deflate_state, ptr %53, i32 0, i32 2, !dbg !1627
  %54 = load ptr, ptr %pending_buf64, align 8, !dbg !1627
  %55 = load ptr, ptr %s.addr, align 8, !dbg !1627
  %pending65 = getelementptr inbounds %struct.deflate_state, ptr %55, i32 0, i32 5, !dbg !1627
  %56 = load i32, ptr %pending65, align 8, !dbg !1627
  %inc66 = add i32 %56, 1, !dbg !1627
  store i32 %inc66, ptr %pending65, align 8, !dbg !1627
  %idxprom67 = sext i32 %56 to i64, !dbg !1627
  %arrayidx68 = getelementptr i8, ptr %54, i64 %idxprom67, !dbg !1627
  store i8 %conv63, ptr %arrayidx68, align 1, !dbg !1627
  %57 = load i32, ptr %val43, align 4, !dbg !1623
  %conv69 = trunc i32 %57 to i16, !dbg !1623
  %conv70 = zext i16 %conv69 to i32, !dbg !1623
  %58 = load ptr, ptr %s.addr, align 8, !dbg !1623
  %bi_valid71 = getelementptr inbounds %struct.deflate_state, ptr %58, i32 0, i32 57, !dbg !1623
  %59 = load i32, ptr %bi_valid71, align 4, !dbg !1623
  %conv72 = sext i32 %59 to i64, !dbg !1623
  %sub73 = sub i64 16, %conv72, !dbg !1623
  %sh_prom74 = trunc i64 %sub73 to i32, !dbg !1623
  %shr75 = ashr i32 %conv70, %sh_prom74, !dbg !1623
  %conv76 = trunc i32 %shr75 to i16, !dbg !1623
  %60 = load ptr, ptr %s.addr, align 8, !dbg !1623
  %bi_buf77 = getelementptr inbounds %struct.deflate_state, ptr %60, i32 0, i32 56, !dbg !1623
  store i16 %conv76, ptr %bi_buf77, align 8, !dbg !1623
  %61 = load i32, ptr %len37, align 4, !dbg !1623
  %conv78 = sext i32 %61 to i64, !dbg !1623
  %sub79 = sub i64 %conv78, 16, !dbg !1623
  %62 = load ptr, ptr %s.addr, align 8, !dbg !1623
  %bi_valid80 = getelementptr inbounds %struct.deflate_state, ptr %62, i32 0, i32 57, !dbg !1623
  %63 = load i32, ptr %bi_valid80, align 4, !dbg !1623
  %conv81 = sext i32 %63 to i64, !dbg !1623
  %add82 = add i64 %conv81, %sub79, !dbg !1623
  %conv83 = trunc i64 %add82 to i32, !dbg !1623
  store i32 %conv83, ptr %bi_valid80, align 4, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 4, ptr %val43) #7, !dbg !1622
  br label %if.end94, !dbg !1623

if.else84:                                        ; preds = %if.end
  %64 = load i32, ptr %dcodes.addr, align 4, !dbg !1629
  %sub85 = sub i32 %64, 1, !dbg !1629
  %65 = load ptr, ptr %s.addr, align 8, !dbg !1629
  %bi_valid86 = getelementptr inbounds %struct.deflate_state, ptr %65, i32 0, i32 57, !dbg !1629
  %66 = load i32, ptr %bi_valid86, align 4, !dbg !1629
  %shl87 = shl i32 %sub85, %66, !dbg !1629
  %67 = load ptr, ptr %s.addr, align 8, !dbg !1629
  %bi_buf88 = getelementptr inbounds %struct.deflate_state, ptr %67, i32 0, i32 56, !dbg !1629
  %68 = load i16, ptr %bi_buf88, align 8, !dbg !1629
  %conv89 = zext i16 %68 to i32, !dbg !1629
  %or90 = or i32 %conv89, %shl87, !dbg !1629
  %conv91 = trunc i32 %or90 to i16, !dbg !1629
  store i16 %conv91, ptr %bi_buf88, align 8, !dbg !1629
  %69 = load i32, ptr %len37, align 4, !dbg !1629
  %70 = load ptr, ptr %s.addr, align 8, !dbg !1629
  %bi_valid92 = getelementptr inbounds %struct.deflate_state, ptr %70, i32 0, i32 57, !dbg !1629
  %71 = load i32, ptr %bi_valid92, align 4, !dbg !1629
  %add93 = add i32 %71, %69, !dbg !1629
  store i32 %add93, ptr %bi_valid92, align 4, !dbg !1629
  br label %if.end94

if.end94:                                         ; preds = %if.else84, %if.then42
  call void @llvm.lifetime.end.p0(i64 4, ptr %len37) #7, !dbg !1631
  call void @llvm.lifetime.start.p0(i64 4, ptr %len95) #7, !dbg !1632
  call void @llvm.dbg.declare(metadata ptr %len95, metadata !1591, metadata !DIExpression()), !dbg !1632
  store i32 4, ptr %len95, align 4, !dbg !1632
  %72 = load ptr, ptr %s.addr, align 8, !dbg !1633
  %bi_valid96 = getelementptr inbounds %struct.deflate_state, ptr %72, i32 0, i32 57, !dbg !1633
  %73 = load i32, ptr %bi_valid96, align 4, !dbg !1633
  %74 = load i32, ptr %len95, align 4, !dbg !1633
  %sub97 = sub i32 16, %74, !dbg !1633
  %cmp98 = icmp sgt i32 %73, %sub97, !dbg !1633
  br i1 %cmp98, label %if.then100, label %if.else142, !dbg !1632

if.then100:                                       ; preds = %if.end94
  call void @llvm.lifetime.start.p0(i64 4, ptr %val101) #7, !dbg !1634
  call void @llvm.dbg.declare(metadata ptr %val101, metadata !1593, metadata !DIExpression()), !dbg !1634
  %75 = load i32, ptr %blcodes.addr, align 4, !dbg !1634
  %sub102 = sub i32 %75, 4, !dbg !1634
  store i32 %sub102, ptr %val101, align 4, !dbg !1634
  %76 = load i32, ptr %val101, align 4, !dbg !1634
  %77 = load ptr, ptr %s.addr, align 8, !dbg !1634
  %bi_valid103 = getelementptr inbounds %struct.deflate_state, ptr %77, i32 0, i32 57, !dbg !1634
  %78 = load i32, ptr %bi_valid103, align 4, !dbg !1634
  %shl104 = shl i32 %76, %78, !dbg !1634
  %79 = load ptr, ptr %s.addr, align 8, !dbg !1634
  %bi_buf105 = getelementptr inbounds %struct.deflate_state, ptr %79, i32 0, i32 56, !dbg !1634
  %80 = load i16, ptr %bi_buf105, align 8, !dbg !1634
  %conv106 = zext i16 %80 to i32, !dbg !1634
  %or107 = or i32 %conv106, %shl104, !dbg !1634
  %conv108 = trunc i32 %or107 to i16, !dbg !1634
  store i16 %conv108, ptr %bi_buf105, align 8, !dbg !1634
  %81 = load ptr, ptr %s.addr, align 8, !dbg !1635
  %bi_buf109 = getelementptr inbounds %struct.deflate_state, ptr %81, i32 0, i32 56, !dbg !1635
  %82 = load i16, ptr %bi_buf109, align 8, !dbg !1635
  %conv110 = zext i16 %82 to i32, !dbg !1635
  %and111 = and i32 %conv110, 255, !dbg !1635
  %conv112 = trunc i32 %and111 to i8, !dbg !1635
  %83 = load ptr, ptr %s.addr, align 8, !dbg !1635
  %pending_buf113 = getelementptr inbounds %struct.deflate_state, ptr %83, i32 0, i32 2, !dbg !1635
  %84 = load ptr, ptr %pending_buf113, align 8, !dbg !1635
  %85 = load ptr, ptr %s.addr, align 8, !dbg !1635
  %pending114 = getelementptr inbounds %struct.deflate_state, ptr %85, i32 0, i32 5, !dbg !1635
  %86 = load i32, ptr %pending114, align 8, !dbg !1635
  %inc115 = add i32 %86, 1, !dbg !1635
  store i32 %inc115, ptr %pending114, align 8, !dbg !1635
  %idxprom116 = sext i32 %86 to i64, !dbg !1635
  %arrayidx117 = getelementptr i8, ptr %84, i64 %idxprom116, !dbg !1635
  store i8 %conv112, ptr %arrayidx117, align 1, !dbg !1635
  %87 = load ptr, ptr %s.addr, align 8, !dbg !1638
  %bi_buf118 = getelementptr inbounds %struct.deflate_state, ptr %87, i32 0, i32 56, !dbg !1638
  %88 = load i16, ptr %bi_buf118, align 8, !dbg !1638
  %conv119 = zext i16 %88 to i32, !dbg !1638
  %shr120 = ashr i32 %conv119, 8, !dbg !1638
  %conv121 = trunc i32 %shr120 to i8, !dbg !1638
  %89 = load ptr, ptr %s.addr, align 8, !dbg !1638
  %pending_buf122 = getelementptr inbounds %struct.deflate_state, ptr %89, i32 0, i32 2, !dbg !1638
  %90 = load ptr, ptr %pending_buf122, align 8, !dbg !1638
  %91 = load ptr, ptr %s.addr, align 8, !dbg !1638
  %pending123 = getelementptr inbounds %struct.deflate_state, ptr %91, i32 0, i32 5, !dbg !1638
  %92 = load i32, ptr %pending123, align 8, !dbg !1638
  %inc124 = add i32 %92, 1, !dbg !1638
  store i32 %inc124, ptr %pending123, align 8, !dbg !1638
  %idxprom125 = sext i32 %92 to i64, !dbg !1638
  %arrayidx126 = getelementptr i8, ptr %90, i64 %idxprom125, !dbg !1638
  store i8 %conv121, ptr %arrayidx126, align 1, !dbg !1638
  %93 = load i32, ptr %val101, align 4, !dbg !1634
  %conv127 = trunc i32 %93 to i16, !dbg !1634
  %conv128 = zext i16 %conv127 to i32, !dbg !1634
  %94 = load ptr, ptr %s.addr, align 8, !dbg !1634
  %bi_valid129 = getelementptr inbounds %struct.deflate_state, ptr %94, i32 0, i32 57, !dbg !1634
  %95 = load i32, ptr %bi_valid129, align 4, !dbg !1634
  %conv130 = sext i32 %95 to i64, !dbg !1634
  %sub131 = sub i64 16, %conv130, !dbg !1634
  %sh_prom132 = trunc i64 %sub131 to i32, !dbg !1634
  %shr133 = ashr i32 %conv128, %sh_prom132, !dbg !1634
  %conv134 = trunc i32 %shr133 to i16, !dbg !1634
  %96 = load ptr, ptr %s.addr, align 8, !dbg !1634
  %bi_buf135 = getelementptr inbounds %struct.deflate_state, ptr %96, i32 0, i32 56, !dbg !1634
  store i16 %conv134, ptr %bi_buf135, align 8, !dbg !1634
  %97 = load i32, ptr %len95, align 4, !dbg !1634
  %conv136 = sext i32 %97 to i64, !dbg !1634
  %sub137 = sub i64 %conv136, 16, !dbg !1634
  %98 = load ptr, ptr %s.addr, align 8, !dbg !1634
  %bi_valid138 = getelementptr inbounds %struct.deflate_state, ptr %98, i32 0, i32 57, !dbg !1634
  %99 = load i32, ptr %bi_valid138, align 4, !dbg !1634
  %conv139 = sext i32 %99 to i64, !dbg !1634
  %add140 = add i64 %conv139, %sub137, !dbg !1634
  %conv141 = trunc i64 %add140 to i32, !dbg !1634
  store i32 %conv141, ptr %bi_valid138, align 4, !dbg !1634
  call void @llvm.lifetime.end.p0(i64 4, ptr %val101) #7, !dbg !1633
  br label %if.end152, !dbg !1634

if.else142:                                       ; preds = %if.end94
  %100 = load i32, ptr %blcodes.addr, align 4, !dbg !1640
  %sub143 = sub i32 %100, 4, !dbg !1640
  %101 = load ptr, ptr %s.addr, align 8, !dbg !1640
  %bi_valid144 = getelementptr inbounds %struct.deflate_state, ptr %101, i32 0, i32 57, !dbg !1640
  %102 = load i32, ptr %bi_valid144, align 4, !dbg !1640
  %shl145 = shl i32 %sub143, %102, !dbg !1640
  %103 = load ptr, ptr %s.addr, align 8, !dbg !1640
  %bi_buf146 = getelementptr inbounds %struct.deflate_state, ptr %103, i32 0, i32 56, !dbg !1640
  %104 = load i16, ptr %bi_buf146, align 8, !dbg !1640
  %conv147 = zext i16 %104 to i32, !dbg !1640
  %or148 = or i32 %conv147, %shl145, !dbg !1640
  %conv149 = trunc i32 %or148 to i16, !dbg !1640
  store i16 %conv149, ptr %bi_buf146, align 8, !dbg !1640
  %105 = load i32, ptr %len95, align 4, !dbg !1640
  %106 = load ptr, ptr %s.addr, align 8, !dbg !1640
  %bi_valid150 = getelementptr inbounds %struct.deflate_state, ptr %106, i32 0, i32 57, !dbg !1640
  %107 = load i32, ptr %bi_valid150, align 4, !dbg !1640
  %add151 = add i32 %107, %105, !dbg !1640
  store i32 %add151, ptr %bi_valid150, align 4, !dbg !1640
  br label %if.end152

if.end152:                                        ; preds = %if.else142, %if.then100
  call void @llvm.lifetime.end.p0(i64 4, ptr %len95) #7, !dbg !1642
  store i32 0, ptr %rank, align 4, !dbg !1643
  br label %for.cond, !dbg !1644

for.cond:                                         ; preds = %for.inc, %if.end152
  %108 = load i32, ptr %rank, align 4, !dbg !1645
  %109 = load i32, ptr %blcodes.addr, align 4, !dbg !1646
  %cmp153 = icmp slt i32 %108, %109, !dbg !1647
  br i1 %cmp153, label %for.body, label %for.end, !dbg !1648

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %len155) #7, !dbg !1649
  call void @llvm.dbg.declare(metadata ptr %len155, metadata !1596, metadata !DIExpression()), !dbg !1649
  store i32 3, ptr %len155, align 4, !dbg !1649
  %110 = load ptr, ptr %s.addr, align 8, !dbg !1650
  %bi_valid156 = getelementptr inbounds %struct.deflate_state, ptr %110, i32 0, i32 57, !dbg !1650
  %111 = load i32, ptr %bi_valid156, align 4, !dbg !1650
  %112 = load i32, ptr %len155, align 4, !dbg !1650
  %sub157 = sub i32 16, %112, !dbg !1650
  %cmp158 = icmp sgt i32 %111, %sub157, !dbg !1650
  br i1 %cmp158, label %if.then160, label %if.else206, !dbg !1649

if.then160:                                       ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %val161) #7, !dbg !1651
  call void @llvm.dbg.declare(metadata ptr %val161, metadata !1601, metadata !DIExpression()), !dbg !1651
  %113 = load ptr, ptr %s.addr, align 8, !dbg !1651
  %bl_tree = getelementptr inbounds %struct.deflate_state, ptr %113, i32 0, i32 38, !dbg !1651
  %114 = load i32, ptr %rank, align 4, !dbg !1651
  %idxprom162 = sext i32 %114 to i64, !dbg !1651
  %arrayidx163 = getelementptr [19 x i8], ptr @bl_order, i64 0, i64 %idxprom162, !dbg !1651
  %115 = load i8, ptr %arrayidx163, align 1, !dbg !1651
  %idxprom164 = zext i8 %115 to i64, !dbg !1651
  %arrayidx165 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 %idxprom164, !dbg !1651
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx165, i32 0, i32 1, !dbg !1651
  %116 = load i16, ptr %dl, align 2, !dbg !1651
  %conv166 = zext i16 %116 to i32, !dbg !1651
  store i32 %conv166, ptr %val161, align 4, !dbg !1651
  %117 = load i32, ptr %val161, align 4, !dbg !1651
  %118 = load ptr, ptr %s.addr, align 8, !dbg !1651
  %bi_valid167 = getelementptr inbounds %struct.deflate_state, ptr %118, i32 0, i32 57, !dbg !1651
  %119 = load i32, ptr %bi_valid167, align 4, !dbg !1651
  %shl168 = shl i32 %117, %119, !dbg !1651
  %120 = load ptr, ptr %s.addr, align 8, !dbg !1651
  %bi_buf169 = getelementptr inbounds %struct.deflate_state, ptr %120, i32 0, i32 56, !dbg !1651
  %121 = load i16, ptr %bi_buf169, align 8, !dbg !1651
  %conv170 = zext i16 %121 to i32, !dbg !1651
  %or171 = or i32 %conv170, %shl168, !dbg !1651
  %conv172 = trunc i32 %or171 to i16, !dbg !1651
  store i16 %conv172, ptr %bi_buf169, align 8, !dbg !1651
  %122 = load ptr, ptr %s.addr, align 8, !dbg !1652
  %bi_buf173 = getelementptr inbounds %struct.deflate_state, ptr %122, i32 0, i32 56, !dbg !1652
  %123 = load i16, ptr %bi_buf173, align 8, !dbg !1652
  %conv174 = zext i16 %123 to i32, !dbg !1652
  %and175 = and i32 %conv174, 255, !dbg !1652
  %conv176 = trunc i32 %and175 to i8, !dbg !1652
  %124 = load ptr, ptr %s.addr, align 8, !dbg !1652
  %pending_buf177 = getelementptr inbounds %struct.deflate_state, ptr %124, i32 0, i32 2, !dbg !1652
  %125 = load ptr, ptr %pending_buf177, align 8, !dbg !1652
  %126 = load ptr, ptr %s.addr, align 8, !dbg !1652
  %pending178 = getelementptr inbounds %struct.deflate_state, ptr %126, i32 0, i32 5, !dbg !1652
  %127 = load i32, ptr %pending178, align 8, !dbg !1652
  %inc179 = add i32 %127, 1, !dbg !1652
  store i32 %inc179, ptr %pending178, align 8, !dbg !1652
  %idxprom180 = sext i32 %127 to i64, !dbg !1652
  %arrayidx181 = getelementptr i8, ptr %125, i64 %idxprom180, !dbg !1652
  store i8 %conv176, ptr %arrayidx181, align 1, !dbg !1652
  %128 = load ptr, ptr %s.addr, align 8, !dbg !1655
  %bi_buf182 = getelementptr inbounds %struct.deflate_state, ptr %128, i32 0, i32 56, !dbg !1655
  %129 = load i16, ptr %bi_buf182, align 8, !dbg !1655
  %conv183 = zext i16 %129 to i32, !dbg !1655
  %shr184 = ashr i32 %conv183, 8, !dbg !1655
  %conv185 = trunc i32 %shr184 to i8, !dbg !1655
  %130 = load ptr, ptr %s.addr, align 8, !dbg !1655
  %pending_buf186 = getelementptr inbounds %struct.deflate_state, ptr %130, i32 0, i32 2, !dbg !1655
  %131 = load ptr, ptr %pending_buf186, align 8, !dbg !1655
  %132 = load ptr, ptr %s.addr, align 8, !dbg !1655
  %pending187 = getelementptr inbounds %struct.deflate_state, ptr %132, i32 0, i32 5, !dbg !1655
  %133 = load i32, ptr %pending187, align 8, !dbg !1655
  %inc188 = add i32 %133, 1, !dbg !1655
  store i32 %inc188, ptr %pending187, align 8, !dbg !1655
  %idxprom189 = sext i32 %133 to i64, !dbg !1655
  %arrayidx190 = getelementptr i8, ptr %131, i64 %idxprom189, !dbg !1655
  store i8 %conv185, ptr %arrayidx190, align 1, !dbg !1655
  %134 = load i32, ptr %val161, align 4, !dbg !1651
  %conv191 = trunc i32 %134 to i16, !dbg !1651
  %conv192 = zext i16 %conv191 to i32, !dbg !1651
  %135 = load ptr, ptr %s.addr, align 8, !dbg !1651
  %bi_valid193 = getelementptr inbounds %struct.deflate_state, ptr %135, i32 0, i32 57, !dbg !1651
  %136 = load i32, ptr %bi_valid193, align 4, !dbg !1651
  %conv194 = sext i32 %136 to i64, !dbg !1651
  %sub195 = sub i64 16, %conv194, !dbg !1651
  %sh_prom196 = trunc i64 %sub195 to i32, !dbg !1651
  %shr197 = ashr i32 %conv192, %sh_prom196, !dbg !1651
  %conv198 = trunc i32 %shr197 to i16, !dbg !1651
  %137 = load ptr, ptr %s.addr, align 8, !dbg !1651
  %bi_buf199 = getelementptr inbounds %struct.deflate_state, ptr %137, i32 0, i32 56, !dbg !1651
  store i16 %conv198, ptr %bi_buf199, align 8, !dbg !1651
  %138 = load i32, ptr %len155, align 4, !dbg !1651
  %conv200 = sext i32 %138 to i64, !dbg !1651
  %sub201 = sub i64 %conv200, 16, !dbg !1651
  %139 = load ptr, ptr %s.addr, align 8, !dbg !1651
  %bi_valid202 = getelementptr inbounds %struct.deflate_state, ptr %139, i32 0, i32 57, !dbg !1651
  %140 = load i32, ptr %bi_valid202, align 4, !dbg !1651
  %conv203 = sext i32 %140 to i64, !dbg !1651
  %add204 = add i64 %conv203, %sub201, !dbg !1651
  %conv205 = trunc i64 %add204 to i32, !dbg !1651
  store i32 %conv205, ptr %bi_valid202, align 4, !dbg !1651
  call void @llvm.lifetime.end.p0(i64 4, ptr %val161) #7, !dbg !1650
  br label %if.end222, !dbg !1651

if.else206:                                       ; preds = %for.body
  %141 = load ptr, ptr %s.addr, align 8, !dbg !1657
  %bl_tree207 = getelementptr inbounds %struct.deflate_state, ptr %141, i32 0, i32 38, !dbg !1657
  %142 = load i32, ptr %rank, align 4, !dbg !1657
  %idxprom208 = sext i32 %142 to i64, !dbg !1657
  %arrayidx209 = getelementptr [19 x i8], ptr @bl_order, i64 0, i64 %idxprom208, !dbg !1657
  %143 = load i8, ptr %arrayidx209, align 1, !dbg !1657
  %idxprom210 = zext i8 %143 to i64, !dbg !1657
  %arrayidx211 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree207, i64 0, i64 %idxprom210, !dbg !1657
  %dl212 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx211, i32 0, i32 1, !dbg !1657
  %144 = load i16, ptr %dl212, align 2, !dbg !1657
  %conv213 = zext i16 %144 to i32, !dbg !1657
  %145 = load ptr, ptr %s.addr, align 8, !dbg !1657
  %bi_valid214 = getelementptr inbounds %struct.deflate_state, ptr %145, i32 0, i32 57, !dbg !1657
  %146 = load i32, ptr %bi_valid214, align 4, !dbg !1657
  %shl215 = shl i32 %conv213, %146, !dbg !1657
  %147 = load ptr, ptr %s.addr, align 8, !dbg !1657
  %bi_buf216 = getelementptr inbounds %struct.deflate_state, ptr %147, i32 0, i32 56, !dbg !1657
  %148 = load i16, ptr %bi_buf216, align 8, !dbg !1657
  %conv217 = zext i16 %148 to i32, !dbg !1657
  %or218 = or i32 %conv217, %shl215, !dbg !1657
  %conv219 = trunc i32 %or218 to i16, !dbg !1657
  store i16 %conv219, ptr %bi_buf216, align 8, !dbg !1657
  %149 = load i32, ptr %len155, align 4, !dbg !1657
  %150 = load ptr, ptr %s.addr, align 8, !dbg !1657
  %bi_valid220 = getelementptr inbounds %struct.deflate_state, ptr %150, i32 0, i32 57, !dbg !1657
  %151 = load i32, ptr %bi_valid220, align 4, !dbg !1657
  %add221 = add i32 %151, %149, !dbg !1657
  store i32 %add221, ptr %bi_valid220, align 4, !dbg !1657
  br label %if.end222

if.end222:                                        ; preds = %if.else206, %if.then160
  call void @llvm.lifetime.end.p0(i64 4, ptr %len155) #7, !dbg !1659
  br label %for.inc, !dbg !1660

for.inc:                                          ; preds = %if.end222
  %152 = load i32, ptr %rank, align 4, !dbg !1661
  %inc223 = add i32 %152, 1, !dbg !1661
  store i32 %inc223, ptr %rank, align 4, !dbg !1661
  br label %for.cond, !dbg !1662, !llvm.loop !1663

for.end:                                          ; preds = %for.cond
  %153 = load ptr, ptr %s.addr, align 8, !dbg !1665
  %154 = load ptr, ptr %s.addr, align 8, !dbg !1666
  %dyn_ltree = getelementptr inbounds %struct.deflate_state, ptr %154, i32 0, i32 36, !dbg !1667
  %arraydecay = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 0, !dbg !1666
  %155 = load i32, ptr %lcodes.addr, align 4, !dbg !1668
  %sub224 = sub i32 %155, 1, !dbg !1669
  call void @send_tree(ptr noundef %153, ptr noundef %arraydecay, i32 noundef %sub224) #6, !dbg !1670
  %156 = load ptr, ptr %s.addr, align 8, !dbg !1671
  %157 = load ptr, ptr %s.addr, align 8, !dbg !1672
  %dyn_dtree = getelementptr inbounds %struct.deflate_state, ptr %157, i32 0, i32 37, !dbg !1673
  %arraydecay225 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 0, !dbg !1672
  %158 = load i32, ptr %dcodes.addr, align 4, !dbg !1674
  %sub226 = sub i32 %158, 1, !dbg !1675
  call void @send_tree(ptr noundef %156, ptr noundef %arraydecay225, i32 noundef %sub226) #6, !dbg !1676
  call void @llvm.lifetime.end.p0(i64 4, ptr %rank) #7, !dbg !1677
  ret void, !dbg !1677
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_tr_tally(ptr noundef %s, i32 noundef %dist, i32 noundef %lc) #0 align 16 !dbg !1678 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %dist.addr = alloca i32, align 4
  %lc.addr = alloca i32, align 4
  %out_length = alloca i64, align 8
  %in_length = alloca i64, align 8
  %dcode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1682, metadata !DIExpression()), !dbg !1690
  store i32 %dist, ptr %dist.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dist.addr, metadata !1683, metadata !DIExpression()), !dbg !1691
  store i32 %lc, ptr %lc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lc.addr, metadata !1684, metadata !DIExpression()), !dbg !1692
  %0 = load i32, ptr %dist.addr, align 4, !dbg !1693
  %conv = trunc i32 %0 to i16, !dbg !1694
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1695
  %d_buf = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 50, !dbg !1696
  %2 = load ptr, ptr %d_buf, align 8, !dbg !1696
  %3 = load ptr, ptr %s.addr, align 8, !dbg !1697
  %last_lit = getelementptr inbounds %struct.deflate_state, ptr %3, i32 0, i32 49, !dbg !1698
  %4 = load i32, ptr %last_lit, align 4, !dbg !1698
  %idxprom = zext i32 %4 to i64, !dbg !1695
  %arrayidx = getelementptr i16, ptr %2, i64 %idxprom, !dbg !1695
  store i16 %conv, ptr %arrayidx, align 2, !dbg !1699
  %5 = load i32, ptr %lc.addr, align 4, !dbg !1700
  %conv1 = trunc i32 %5 to i8, !dbg !1701
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1702
  %l_buf = getelementptr inbounds %struct.deflate_state, ptr %6, i32 0, i32 47, !dbg !1703
  %7 = load ptr, ptr %l_buf, align 8, !dbg !1703
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1704
  %last_lit2 = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 49, !dbg !1705
  %9 = load i32, ptr %last_lit2, align 4, !dbg !1706
  %inc = add i32 %9, 1, !dbg !1706
  store i32 %inc, ptr %last_lit2, align 4, !dbg !1706
  %idxprom3 = zext i32 %9 to i64, !dbg !1702
  %arrayidx4 = getelementptr i8, ptr %7, i64 %idxprom3, !dbg !1702
  store i8 %conv1, ptr %arrayidx4, align 1, !dbg !1707
  %10 = load i32, ptr %dist.addr, align 4, !dbg !1708
  %cmp = icmp eq i32 %10, 0, !dbg !1710
  br i1 %cmp, label %if.then, label %if.else, !dbg !1711

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %s.addr, align 8, !dbg !1712
  %dyn_ltree = getelementptr inbounds %struct.deflate_state, ptr %11, i32 0, i32 36, !dbg !1714
  %12 = load i32, ptr %lc.addr, align 4, !dbg !1715
  %idxprom6 = zext i32 %12 to i64, !dbg !1712
  %arrayidx7 = getelementptr [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom6, !dbg !1712
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx7, i32 0, i32 0, !dbg !1716
  %13 = load i16, ptr %fc, align 4, !dbg !1717
  %inc8 = add i16 %13, 1, !dbg !1717
  store i16 %inc8, ptr %fc, align 4, !dbg !1717
  br label %if.end, !dbg !1718

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %s.addr, align 8, !dbg !1719
  %matches = getelementptr inbounds %struct.deflate_state, ptr %14, i32 0, i32 54, !dbg !1721
  %15 = load i32, ptr %matches, align 8, !dbg !1722
  %inc9 = add i32 %15, 1, !dbg !1722
  store i32 %inc9, ptr %matches, align 8, !dbg !1722
  %16 = load i32, ptr %dist.addr, align 4, !dbg !1723
  %dec = add i32 %16, -1, !dbg !1723
  store i32 %dec, ptr %dist.addr, align 4, !dbg !1723
  %17 = load ptr, ptr %s.addr, align 8, !dbg !1724
  %dyn_ltree10 = getelementptr inbounds %struct.deflate_state, ptr %17, i32 0, i32 36, !dbg !1725
  %18 = load i32, ptr %lc.addr, align 4, !dbg !1726
  %idxprom11 = zext i32 %18 to i64, !dbg !1727
  %arrayidx12 = getelementptr [256 x i8], ptr @length_code, i64 0, i64 %idxprom11, !dbg !1727
  %19 = load i8, ptr %arrayidx12, align 1, !dbg !1727
  %conv13 = zext i8 %19 to i32, !dbg !1727
  %add = add i32 %conv13, 256, !dbg !1728
  %add14 = add i32 %add, 1, !dbg !1729
  %idxprom15 = sext i32 %add14 to i64, !dbg !1724
  %arrayidx16 = getelementptr [573 x %struct.ct_data_s], ptr %dyn_ltree10, i64 0, i64 %idxprom15, !dbg !1724
  %fc17 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx16, i32 0, i32 0, !dbg !1730
  %20 = load i16, ptr %fc17, align 4, !dbg !1731
  %inc18 = add i16 %20, 1, !dbg !1731
  store i16 %inc18, ptr %fc17, align 4, !dbg !1731
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1732
  %dyn_dtree = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 37, !dbg !1733
  %22 = load i32, ptr %dist.addr, align 4, !dbg !1734
  %cmp19 = icmp ult i32 %22, 256, !dbg !1734
  br i1 %cmp19, label %cond.true, label %cond.false, !dbg !1734

cond.true:                                        ; preds = %if.else
  %23 = load i32, ptr %dist.addr, align 4, !dbg !1734
  %idxprom21 = zext i32 %23 to i64, !dbg !1734
  %arrayidx22 = getelementptr [512 x i8], ptr @dist_code, i64 0, i64 %idxprom21, !dbg !1734
  %24 = load i8, ptr %arrayidx22, align 1, !dbg !1734
  %conv23 = zext i8 %24 to i32, !dbg !1734
  br label %cond.end, !dbg !1734

cond.false:                                       ; preds = %if.else
  %25 = load i32, ptr %dist.addr, align 4, !dbg !1734
  %shr = lshr i32 %25, 7, !dbg !1734
  %add24 = add i32 256, %shr, !dbg !1734
  %idxprom25 = zext i32 %add24 to i64, !dbg !1734
  %arrayidx26 = getelementptr [512 x i8], ptr @dist_code, i64 0, i64 %idxprom25, !dbg !1734
  %26 = load i8, ptr %arrayidx26, align 1, !dbg !1734
  %conv27 = zext i8 %26 to i32, !dbg !1734
  br label %cond.end, !dbg !1734

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv23, %cond.true ], [ %conv27, %cond.false ], !dbg !1734
  %idxprom28 = sext i32 %cond to i64, !dbg !1732
  %arrayidx29 = getelementptr [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 %idxprom28, !dbg !1732
  %fc30 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx29, i32 0, i32 0, !dbg !1735
  %27 = load i16, ptr %fc30, align 4, !dbg !1736
  %inc31 = add i16 %27, 1, !dbg !1736
  store i16 %inc31, ptr %fc30, align 4, !dbg !1736
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %28 = load ptr, ptr %s.addr, align 8, !dbg !1737
  %last_lit32 = getelementptr inbounds %struct.deflate_state, ptr %28, i32 0, i32 49, !dbg !1738
  %29 = load i32, ptr %last_lit32, align 4, !dbg !1738
  %and = and i32 %29, 4095, !dbg !1739
  %cmp33 = icmp eq i32 %and, 0, !dbg !1740
  br i1 %cmp33, label %land.lhs.true, label %if.end68, !dbg !1741

land.lhs.true:                                    ; preds = %if.end
  %30 = load ptr, ptr %s.addr, align 8, !dbg !1742
  %level = getelementptr inbounds %struct.deflate_state, ptr %30, i32 0, i32 32, !dbg !1743
  %31 = load i32, ptr %level, align 4, !dbg !1743
  %cmp35 = icmp sgt i32 %31, 2, !dbg !1744
  br i1 %cmp35, label %if.then37, label %if.end68, !dbg !1745

if.then37:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_length) #7, !dbg !1746
  call void @llvm.dbg.declare(metadata ptr %out_length, metadata !1685, metadata !DIExpression()), !dbg !1747
  %32 = load ptr, ptr %s.addr, align 8, !dbg !1748
  %last_lit38 = getelementptr inbounds %struct.deflate_state, ptr %32, i32 0, i32 49, !dbg !1749
  %33 = load i32, ptr %last_lit38, align 4, !dbg !1749
  %conv39 = zext i32 %33 to i64, !dbg !1750
  %mul = mul i64 %conv39, 8, !dbg !1751
  store i64 %mul, ptr %out_length, align 8, !dbg !1747
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_length) #7, !dbg !1752
  call void @llvm.dbg.declare(metadata ptr %in_length, metadata !1688, metadata !DIExpression()), !dbg !1753
  %34 = load ptr, ptr %s.addr, align 8, !dbg !1754
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %34, i32 0, i32 26, !dbg !1755
  %35 = load i32, ptr %strstart, align 4, !dbg !1755
  %conv40 = zext i32 %35 to i64, !dbg !1756
  %36 = load ptr, ptr %s.addr, align 8, !dbg !1757
  %block_start = getelementptr inbounds %struct.deflate_state, ptr %36, i32 0, i32 22, !dbg !1758
  %37 = load i64, ptr %block_start, align 8, !dbg !1758
  %sub = sub i64 %conv40, %37, !dbg !1759
  store i64 %sub, ptr %in_length, align 8, !dbg !1753
  call void @llvm.lifetime.start.p0(i64 4, ptr %dcode) #7, !dbg !1760
  call void @llvm.dbg.declare(metadata ptr %dcode, metadata !1689, metadata !DIExpression()), !dbg !1761
  store i32 0, ptr %dcode, align 4, !dbg !1762
  br label %for.cond, !dbg !1764

for.cond:                                         ; preds = %for.inc, %if.then37
  %38 = load i32, ptr %dcode, align 4, !dbg !1765
  %cmp41 = icmp slt i32 %38, 30, !dbg !1767
  br i1 %cmp41, label %for.body, label %for.end, !dbg !1768

for.body:                                         ; preds = %for.cond
  %39 = load ptr, ptr %s.addr, align 8, !dbg !1769
  %dyn_dtree43 = getelementptr inbounds %struct.deflate_state, ptr %39, i32 0, i32 37, !dbg !1771
  %40 = load i32, ptr %dcode, align 4, !dbg !1772
  %idxprom44 = sext i32 %40 to i64, !dbg !1769
  %arrayidx45 = getelementptr [61 x %struct.ct_data_s], ptr %dyn_dtree43, i64 0, i64 %idxprom44, !dbg !1769
  %fc46 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx45, i32 0, i32 0, !dbg !1773
  %41 = load i16, ptr %fc46, align 4, !dbg !1773
  %conv47 = zext i16 %41 to i64, !dbg !1774
  %42 = load i32, ptr %dcode, align 4, !dbg !1775
  %idxprom48 = sext i32 %42 to i64, !dbg !1776
  %arrayidx49 = getelementptr [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom48, !dbg !1776
  %43 = load i32, ptr %arrayidx49, align 4, !dbg !1776
  %conv50 = sext i32 %43 to i64, !dbg !1776
  %add51 = add i64 5, %conv50, !dbg !1777
  %mul52 = mul i64 %conv47, %add51, !dbg !1778
  %44 = load i64, ptr %out_length, align 8, !dbg !1779
  %add53 = add i64 %44, %mul52, !dbg !1779
  store i64 %add53, ptr %out_length, align 8, !dbg !1779
  br label %for.inc, !dbg !1780

for.inc:                                          ; preds = %for.body
  %45 = load i32, ptr %dcode, align 4, !dbg !1781
  %inc54 = add i32 %45, 1, !dbg !1781
  store i32 %inc54, ptr %dcode, align 4, !dbg !1781
  br label %for.cond, !dbg !1782, !llvm.loop !1783

for.end:                                          ; preds = %for.cond
  %46 = load i64, ptr %out_length, align 8, !dbg !1785
  %shr55 = lshr i64 %46, 3, !dbg !1785
  store i64 %shr55, ptr %out_length, align 8, !dbg !1785
  %47 = load ptr, ptr %s.addr, align 8, !dbg !1786
  %matches56 = getelementptr inbounds %struct.deflate_state, ptr %47, i32 0, i32 54, !dbg !1788
  %48 = load i32, ptr %matches56, align 8, !dbg !1788
  %49 = load ptr, ptr %s.addr, align 8, !dbg !1789
  %last_lit57 = getelementptr inbounds %struct.deflate_state, ptr %49, i32 0, i32 49, !dbg !1790
  %50 = load i32, ptr %last_lit57, align 4, !dbg !1790
  %div = udiv i32 %50, 2, !dbg !1791
  %cmp58 = icmp ult i32 %48, %div, !dbg !1792
  br i1 %cmp58, label %land.lhs.true60, label %if.end65, !dbg !1793

land.lhs.true60:                                  ; preds = %for.end
  %51 = load i64, ptr %out_length, align 8, !dbg !1794
  %52 = load i64, ptr %in_length, align 8, !dbg !1795
  %div61 = udiv i64 %52, 2, !dbg !1796
  %cmp62 = icmp ult i64 %51, %div61, !dbg !1797
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !1798

if.then64:                                        ; preds = %land.lhs.true60
  store i32 1, ptr %retval, align 4, !dbg !1799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1799

if.end65:                                         ; preds = %land.lhs.true60, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1800
  br label %cleanup, !dbg !1800

cleanup:                                          ; preds = %if.end65, %if.then64
  call void @llvm.lifetime.end.p0(i64 4, ptr %dcode) #7, !dbg !1800
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_length) #7, !dbg !1800
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_length) #7, !dbg !1800
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end68, !dbg !1801

if.end68:                                         ; preds = %cleanup.cont, %land.lhs.true, %if.end
  %53 = load ptr, ptr %s.addr, align 8, !dbg !1802
  %last_lit69 = getelementptr inbounds %struct.deflate_state, ptr %53, i32 0, i32 49, !dbg !1803
  %54 = load i32, ptr %last_lit69, align 4, !dbg !1803
  %55 = load ptr, ptr %s.addr, align 8, !dbg !1804
  %lit_bufsize = getelementptr inbounds %struct.deflate_state, ptr %55, i32 0, i32 48, !dbg !1805
  %56 = load i32, ptr %lit_bufsize, align 8, !dbg !1805
  %sub70 = sub i32 %56, 1, !dbg !1806
  %cmp71 = icmp eq i32 %54, %sub70, !dbg !1807
  %conv72 = zext i1 %cmp71 to i32, !dbg !1807
  store i32 %conv72, ptr %retval, align 4, !dbg !1808
  br label %return, !dbg !1808

return:                                           ; preds = %if.end68, %cleanup
  %57 = load i32, ptr %retval, align 4, !dbg !1809
  ret i32 %57, !dbg !1809

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gen_codes(ptr noundef %tree, i32 noundef %max_code, ptr noundef %bl_count) #0 align 16 !dbg !1810 {
entry:
  %tree.addr = alloca ptr, align 8
  %max_code.addr = alloca i32, align 4
  %bl_count.addr = alloca ptr, align 8
  %next_code = alloca [16 x i16], align 16
  %code = alloca i16, align 2
  %bits = alloca i32, align 4
  %n = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %___x = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  store ptr %tree, ptr %tree.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tree.addr, metadata !1814, metadata !DIExpression()), !dbg !1829
  store i32 %max_code, ptr %max_code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_code.addr, metadata !1815, metadata !DIExpression()), !dbg !1830
  store ptr %bl_count, ptr %bl_count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bl_count.addr, metadata !1816, metadata !DIExpression()), !dbg !1831
  call void @llvm.lifetime.start.p0(i64 32, ptr %next_code) #7, !dbg !1832
  call void @llvm.dbg.declare(metadata ptr %next_code, metadata !1817, metadata !DIExpression()), !dbg !1833
  call void @llvm.lifetime.start.p0(i64 2, ptr %code) #7, !dbg !1834
  call void @llvm.dbg.declare(metadata ptr %code, metadata !1818, metadata !DIExpression()), !dbg !1835
  store i16 0, ptr %code, align 2, !dbg !1835
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #7, !dbg !1836
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !1819, metadata !DIExpression()), !dbg !1837
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1838
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1820, metadata !DIExpression()), !dbg !1839
  store i32 1, ptr %bits, align 4, !dbg !1840
  br label %for.cond, !dbg !1842

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %bits, align 4, !dbg !1843
  %cmp = icmp sle i32 %0, 15, !dbg !1845
  br i1 %cmp, label %for.body, label %for.end, !dbg !1846

for.body:                                         ; preds = %for.cond
  %1 = load i16, ptr %code, align 2, !dbg !1847
  %conv = zext i16 %1 to i32, !dbg !1847
  %2 = load ptr, ptr %bl_count.addr, align 8, !dbg !1849
  %3 = load i32, ptr %bits, align 4, !dbg !1850
  %sub = sub i32 %3, 1, !dbg !1851
  %idxprom = sext i32 %sub to i64, !dbg !1849
  %arrayidx = getelementptr i16, ptr %2, i64 %idxprom, !dbg !1849
  %4 = load i16, ptr %arrayidx, align 2, !dbg !1849
  %conv1 = zext i16 %4 to i32, !dbg !1849
  %add = add i32 %conv, %conv1, !dbg !1852
  %shl = shl i32 %add, 1, !dbg !1853
  %conv2 = trunc i32 %shl to i16, !dbg !1854
  store i16 %conv2, ptr %code, align 2, !dbg !1855
  %5 = load i32, ptr %bits, align 4, !dbg !1856
  %idxprom3 = sext i32 %5 to i64, !dbg !1857
  %arrayidx4 = getelementptr [16 x i16], ptr %next_code, i64 0, i64 %idxprom3, !dbg !1857
  store i16 %conv2, ptr %arrayidx4, align 2, !dbg !1858
  br label %for.inc, !dbg !1859

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %bits, align 4, !dbg !1860
  %inc = add i32 %6, 1, !dbg !1860
  store i32 %inc, ptr %bits, align 4, !dbg !1860
  br label %for.cond, !dbg !1861, !llvm.loop !1862

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4, !dbg !1864
  br label %for.cond5, !dbg !1865

for.cond5:                                        ; preds = %for.inc44, %for.end
  %7 = load i32, ptr %n, align 4, !dbg !1866
  %8 = load i32, ptr %max_code.addr, align 4, !dbg !1867
  %cmp6 = icmp sle i32 %7, %8, !dbg !1868
  br i1 %cmp6, label %for.body8, label %for.end46, !dbg !1869

for.body8:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7, !dbg !1870
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1821, metadata !DIExpression()), !dbg !1871
  %9 = load ptr, ptr %tree.addr, align 8, !dbg !1872
  %10 = load i32, ptr %n, align 4, !dbg !1873
  %idxprom9 = sext i32 %10 to i64, !dbg !1872
  %arrayidx10 = getelementptr %struct.ct_data_s, ptr %9, i64 %idxprom9, !dbg !1872
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx10, i32 0, i32 1, !dbg !1874
  %11 = load i16, ptr %dl, align 2, !dbg !1874
  %conv11 = zext i16 %11 to i32, !dbg !1872
  store i32 %conv11, ptr %len, align 4, !dbg !1871
  %12 = load i32, ptr %len, align 4, !dbg !1875
  %cmp12 = icmp eq i32 %12, 0, !dbg !1877
  br i1 %cmp12, label %if.then, label %if.end, !dbg !1878

if.then:                                          ; preds = %for.body8
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1879

if.end:                                           ; preds = %for.body8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #7, !dbg !1880
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !1825, metadata !DIExpression()), !dbg !1880
  %13 = load i32, ptr %len, align 4, !dbg !1880
  %idxprom14 = sext i32 %13 to i64, !dbg !1880
  %arrayidx15 = getelementptr [16 x i16], ptr %next_code, i64 0, i64 %idxprom14, !dbg !1880
  %14 = load i16, ptr %arrayidx15, align 2, !dbg !1880
  %inc16 = add i16 %14, 1, !dbg !1880
  store i16 %inc16, ptr %arrayidx15, align 2, !dbg !1880
  %conv17 = zext i16 %14 to i32, !dbg !1880
  store i32 %conv17, ptr %__x, align 4, !dbg !1880
  %15 = load i32, ptr %__x, align 4, !dbg !1880
  %16 = call i1 @llvm.is.constant.i32(i32 %15), !dbg !1880
  br i1 %16, label %cond.true, label %cond.false, !dbg !1880

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %___x) #7, !dbg !1881
  call void @llvm.dbg.declare(metadata ptr %___x, metadata !1827, metadata !DIExpression()), !dbg !1881
  %17 = load i32, ptr %__x, align 4, !dbg !1881
  store i32 %17, ptr %___x, align 4, !dbg !1881
  %18 = load i32, ptr %___x, align 4, !dbg !1881
  %shr = lshr i32 %18, 16, !dbg !1881
  %19 = load i32, ptr %___x, align 4, !dbg !1881
  %shl18 = shl i32 %19, 16, !dbg !1881
  %or = or i32 %shr, %shl18, !dbg !1881
  store i32 %or, ptr %___x, align 4, !dbg !1881
  %20 = load i32, ptr %___x, align 4, !dbg !1881
  %and = and i32 %20, -16711936, !dbg !1881
  %shr19 = lshr i32 %and, 8, !dbg !1881
  %21 = load i32, ptr %___x, align 4, !dbg !1881
  %and20 = and i32 %21, 16711935, !dbg !1881
  %shl21 = shl i32 %and20, 8, !dbg !1881
  %or22 = or i32 %shr19, %shl21, !dbg !1881
  store i32 %or22, ptr %___x, align 4, !dbg !1881
  %22 = load i32, ptr %___x, align 4, !dbg !1881
  %and23 = and i32 %22, -252645136, !dbg !1881
  %shr24 = lshr i32 %and23, 4, !dbg !1881
  %23 = load i32, ptr %___x, align 4, !dbg !1881
  %and25 = and i32 %23, 252645135, !dbg !1881
  %shl26 = shl i32 %and25, 4, !dbg !1881
  %or27 = or i32 %shr24, %shl26, !dbg !1881
  store i32 %or27, ptr %___x, align 4, !dbg !1881
  %24 = load i32, ptr %___x, align 4, !dbg !1881
  %and28 = and i32 %24, -858993460, !dbg !1881
  %shr29 = lshr i32 %and28, 2, !dbg !1881
  %25 = load i32, ptr %___x, align 4, !dbg !1881
  %and30 = and i32 %25, 858993459, !dbg !1881
  %shl31 = shl i32 %and30, 2, !dbg !1881
  %or32 = or i32 %shr29, %shl31, !dbg !1881
  store i32 %or32, ptr %___x, align 4, !dbg !1881
  %26 = load i32, ptr %___x, align 4, !dbg !1881
  %and33 = and i32 %26, -1431655766, !dbg !1881
  %shr34 = lshr i32 %and33, 1, !dbg !1881
  %27 = load i32, ptr %___x, align 4, !dbg !1881
  %and35 = and i32 %27, 1431655765, !dbg !1881
  %shl36 = shl i32 %and35, 1, !dbg !1881
  %or37 = or i32 %shr34, %shl36, !dbg !1881
  store i32 %or37, ptr %___x, align 4, !dbg !1881
  %28 = load i32, ptr %___x, align 4, !dbg !1881
  store i32 %28, ptr %tmp38, align 4, !dbg !1881
  call void @llvm.lifetime.end.p0(i64 4, ptr %___x) #7, !dbg !1880
  %29 = load i32, ptr %tmp38, align 4, !dbg !1881
  br label %cond.end, !dbg !1880

cond.false:                                       ; preds = %if.end
  %30 = load i32, ptr %__x, align 4, !dbg !1880
  %call = call i32 @__bitrev32(i32 noundef %30) #6, !dbg !1880
  br label %cond.end, !dbg !1880

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %call, %cond.false ], !dbg !1880
  store i32 %cond, ptr %tmp, align 4, !dbg !1880
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #7, !dbg !1882
  %31 = load i32, ptr %tmp, align 4, !dbg !1880
  %32 = load i32, ptr %len, align 4, !dbg !1883
  %sub39 = sub i32 32, %32, !dbg !1884
  %shr40 = lshr i32 %31, %sub39, !dbg !1885
  %conv41 = trunc i32 %shr40 to i16, !dbg !1882
  %33 = load ptr, ptr %tree.addr, align 8, !dbg !1886
  %34 = load i32, ptr %n, align 4, !dbg !1887
  %idxprom42 = sext i32 %34 to i64, !dbg !1886
  %arrayidx43 = getelementptr %struct.ct_data_s, ptr %33, i64 %idxprom42, !dbg !1886
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx43, i32 0, i32 0, !dbg !1888
  store i16 %conv41, ptr %fc, align 2, !dbg !1889
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1890
  br label %cleanup, !dbg !1890

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7, !dbg !1890
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc44
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc44, !dbg !1891

for.inc44:                                        ; preds = %cleanup.cont, %cleanup
  %35 = load i32, ptr %n, align 4, !dbg !1892
  %inc45 = add i32 %35, 1, !dbg !1892
  store i32 %inc45, ptr %n, align 4, !dbg !1892
  br label %for.cond5, !dbg !1893, !llvm.loop !1894

for.end46:                                        ; preds = %for.cond5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1896
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #7, !dbg !1896
  call void @llvm.lifetime.end.p0(i64 2, ptr %code) #7, !dbg !1896
  call void @llvm.lifetime.end.p0(i64 32, ptr %next_code) #7, !dbg !1896
  ret void, !dbg !1896

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__bitrev32(i32 noundef %x) #3 align 16 !dbg !1897 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1902, metadata !DIExpression()), !dbg !1903
  %0 = load i32, ptr %x.addr, align 4, !dbg !1904
  %and = and i32 %0, 65535, !dbg !1905
  %conv = trunc i32 %and to i16, !dbg !1904
  %call = call zeroext i16 @__bitrev16(i16 noundef zeroext %conv) #6, !dbg !1906
  %conv1 = zext i16 %call to i32, !dbg !1906
  %shl = shl i32 %conv1, 16, !dbg !1907
  %1 = load i32, ptr %x.addr, align 4, !dbg !1908
  %shr = lshr i32 %1, 16, !dbg !1909
  %conv2 = trunc i32 %shr to i16, !dbg !1908
  %call3 = call zeroext i16 @__bitrev16(i16 noundef zeroext %conv2) #6, !dbg !1910
  %conv4 = zext i16 %call3 to i32, !dbg !1910
  %or = or i32 %shl, %conv4, !dbg !1911
  ret i32 %or, !dbg !1912
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @__bitrev16(i16 noundef zeroext %x) #3 align 16 !dbg !1913 {
entry:
  %x.addr = alloca i16, align 2
  store i16 %x, ptr %x.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1919, metadata !DIExpression()), !dbg !1920
  %0 = load i16, ptr %x.addr, align 2, !dbg !1921
  %conv = zext i16 %0 to i32, !dbg !1921
  %and = and i32 %conv, 255, !dbg !1922
  %conv1 = trunc i32 %and to i8, !dbg !1921
  %call = call zeroext i8 @__bitrev8(i8 noundef zeroext %conv1) #6, !dbg !1923
  %conv2 = zext i8 %call to i32, !dbg !1923
  %shl = shl i32 %conv2, 8, !dbg !1924
  %1 = load i16, ptr %x.addr, align 2, !dbg !1925
  %conv3 = zext i16 %1 to i32, !dbg !1925
  %shr = ashr i32 %conv3, 8, !dbg !1926
  %conv4 = trunc i32 %shr to i8, !dbg !1925
  %call5 = call zeroext i8 @__bitrev8(i8 noundef zeroext %conv4) #6, !dbg !1927
  %conv6 = zext i8 %call5 to i32, !dbg !1927
  %or = or i32 %shl, %conv6, !dbg !1928
  %conv7 = trunc i32 %or to i16, !dbg !1929
  ret i16 %conv7, !dbg !1930
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__bitrev8(i8 noundef zeroext %byte) #3 align 16 !dbg !1931 {
entry:
  %byte.addr = alloca i8, align 1
  store i8 %byte, ptr %byte.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %byte.addr, metadata !1937, metadata !DIExpression()), !dbg !1938
  %0 = load i8, ptr %byte.addr, align 1, !dbg !1939
  %idxprom = zext i8 %0 to i64, !dbg !1940
  %arrayidx = getelementptr [256 x i8], ptr @byte_rev_table, i64 0, i64 %idxprom, !dbg !1940
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1940
  ret i8 %1, !dbg !1941
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pqdownheap(ptr noundef %s, ptr noundef %tree, i32 noundef %k) #0 align 16 !dbg !1942 {
entry:
  %s.addr = alloca ptr, align 8
  %tree.addr = alloca ptr, align 8
  %k.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1946, metadata !DIExpression()), !dbg !1951
  store ptr %tree, ptr %tree.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tree.addr, metadata !1947, metadata !DIExpression()), !dbg !1952
  store i32 %k, ptr %k.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1948, metadata !DIExpression()), !dbg !1953
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #7, !dbg !1954
  call void @llvm.dbg.declare(metadata ptr %v, metadata !1949, metadata !DIExpression()), !dbg !1955
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1956
  %heap = getelementptr inbounds %struct.deflate_state, ptr %0, i32 0, i32 43, !dbg !1957
  %1 = load i32, ptr %k.addr, align 4, !dbg !1958
  %idxprom = sext i32 %1 to i64, !dbg !1956
  %arrayidx = getelementptr [573 x i32], ptr %heap, i64 0, i64 %idxprom, !dbg !1956
  %2 = load i32, ptr %arrayidx, align 4, !dbg !1956
  store i32 %2, ptr %v, align 4, !dbg !1955
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7, !dbg !1959
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1950, metadata !DIExpression()), !dbg !1960
  %3 = load i32, ptr %k.addr, align 4, !dbg !1961
  %shl = shl i32 %3, 1, !dbg !1962
  store i32 %shl, ptr %j, align 4, !dbg !1960
  br label %while.cond, !dbg !1963

while.cond:                                       ; preds = %if.end93, %entry
  %4 = load i32, ptr %j, align 4, !dbg !1964
  %5 = load ptr, ptr %s.addr, align 8, !dbg !1965
  %heap_len = getelementptr inbounds %struct.deflate_state, ptr %5, i32 0, i32 44, !dbg !1966
  %6 = load i32, ptr %heap_len, align 4, !dbg !1966
  %cmp = icmp sle i32 %4, %6, !dbg !1967
  br i1 %cmp, label %while.body, label %while.end, !dbg !1963

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %j, align 4, !dbg !1968
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1971
  %heap_len1 = getelementptr inbounds %struct.deflate_state, ptr %8, i32 0, i32 44, !dbg !1972
  %9 = load i32, ptr %heap_len1, align 4, !dbg !1972
  %cmp2 = icmp slt i32 %7, %9, !dbg !1973
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !1974

land.lhs.true:                                    ; preds = %while.body
  %10 = load ptr, ptr %tree.addr, align 8, !dbg !1975
  %11 = load ptr, ptr %s.addr, align 8, !dbg !1975
  %heap3 = getelementptr inbounds %struct.deflate_state, ptr %11, i32 0, i32 43, !dbg !1975
  %12 = load i32, ptr %j, align 4, !dbg !1975
  %add = add i32 %12, 1, !dbg !1975
  %idxprom4 = sext i32 %add to i64, !dbg !1975
  %arrayidx5 = getelementptr [573 x i32], ptr %heap3, i64 0, i64 %idxprom4, !dbg !1975
  %13 = load i32, ptr %arrayidx5, align 4, !dbg !1975
  %idxprom6 = sext i32 %13 to i64, !dbg !1975
  %arrayidx7 = getelementptr %struct.ct_data_s, ptr %10, i64 %idxprom6, !dbg !1975
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx7, i32 0, i32 0, !dbg !1975
  %14 = load i16, ptr %fc, align 2, !dbg !1975
  %conv = zext i16 %14 to i32, !dbg !1975
  %15 = load ptr, ptr %tree.addr, align 8, !dbg !1975
  %16 = load ptr, ptr %s.addr, align 8, !dbg !1975
  %heap8 = getelementptr inbounds %struct.deflate_state, ptr %16, i32 0, i32 43, !dbg !1975
  %17 = load i32, ptr %j, align 4, !dbg !1975
  %idxprom9 = sext i32 %17 to i64, !dbg !1975
  %arrayidx10 = getelementptr [573 x i32], ptr %heap8, i64 0, i64 %idxprom9, !dbg !1975
  %18 = load i32, ptr %arrayidx10, align 4, !dbg !1975
  %idxprom11 = sext i32 %18 to i64, !dbg !1975
  %arrayidx12 = getelementptr %struct.ct_data_s, ptr %15, i64 %idxprom11, !dbg !1975
  %fc13 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx12, i32 0, i32 0, !dbg !1975
  %19 = load i16, ptr %fc13, align 2, !dbg !1975
  %conv14 = zext i16 %19 to i32, !dbg !1975
  %cmp15 = icmp slt i32 %conv, %conv14, !dbg !1975
  br i1 %cmp15, label %if.then, label %lor.lhs.false, !dbg !1975

lor.lhs.false:                                    ; preds = %land.lhs.true
  %20 = load ptr, ptr %tree.addr, align 8, !dbg !1975
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1975
  %heap17 = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 43, !dbg !1975
  %22 = load i32, ptr %j, align 4, !dbg !1975
  %add18 = add i32 %22, 1, !dbg !1975
  %idxprom19 = sext i32 %add18 to i64, !dbg !1975
  %arrayidx20 = getelementptr [573 x i32], ptr %heap17, i64 0, i64 %idxprom19, !dbg !1975
  %23 = load i32, ptr %arrayidx20, align 4, !dbg !1975
  %idxprom21 = sext i32 %23 to i64, !dbg !1975
  %arrayidx22 = getelementptr %struct.ct_data_s, ptr %20, i64 %idxprom21, !dbg !1975
  %fc23 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx22, i32 0, i32 0, !dbg !1975
  %24 = load i16, ptr %fc23, align 2, !dbg !1975
  %conv24 = zext i16 %24 to i32, !dbg !1975
  %25 = load ptr, ptr %tree.addr, align 8, !dbg !1975
  %26 = load ptr, ptr %s.addr, align 8, !dbg !1975
  %heap25 = getelementptr inbounds %struct.deflate_state, ptr %26, i32 0, i32 43, !dbg !1975
  %27 = load i32, ptr %j, align 4, !dbg !1975
  %idxprom26 = sext i32 %27 to i64, !dbg !1975
  %arrayidx27 = getelementptr [573 x i32], ptr %heap25, i64 0, i64 %idxprom26, !dbg !1975
  %28 = load i32, ptr %arrayidx27, align 4, !dbg !1975
  %idxprom28 = sext i32 %28 to i64, !dbg !1975
  %arrayidx29 = getelementptr %struct.ct_data_s, ptr %25, i64 %idxprom28, !dbg !1975
  %fc30 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx29, i32 0, i32 0, !dbg !1975
  %29 = load i16, ptr %fc30, align 2, !dbg !1975
  %conv31 = zext i16 %29 to i32, !dbg !1975
  %cmp32 = icmp eq i32 %conv24, %conv31, !dbg !1975
  br i1 %cmp32, label %land.lhs.true34, label %if.end, !dbg !1975

land.lhs.true34:                                  ; preds = %lor.lhs.false
  %30 = load ptr, ptr %s.addr, align 8, !dbg !1975
  %depth = getelementptr inbounds %struct.deflate_state, ptr %30, i32 0, i32 46, !dbg !1975
  %31 = load ptr, ptr %s.addr, align 8, !dbg !1975
  %heap35 = getelementptr inbounds %struct.deflate_state, ptr %31, i32 0, i32 43, !dbg !1975
  %32 = load i32, ptr %j, align 4, !dbg !1975
  %add36 = add i32 %32, 1, !dbg !1975
  %idxprom37 = sext i32 %add36 to i64, !dbg !1975
  %arrayidx38 = getelementptr [573 x i32], ptr %heap35, i64 0, i64 %idxprom37, !dbg !1975
  %33 = load i32, ptr %arrayidx38, align 4, !dbg !1975
  %idxprom39 = sext i32 %33 to i64, !dbg !1975
  %arrayidx40 = getelementptr [573 x i8], ptr %depth, i64 0, i64 %idxprom39, !dbg !1975
  %34 = load i8, ptr %arrayidx40, align 1, !dbg !1975
  %conv41 = zext i8 %34 to i32, !dbg !1975
  %35 = load ptr, ptr %s.addr, align 8, !dbg !1975
  %depth42 = getelementptr inbounds %struct.deflate_state, ptr %35, i32 0, i32 46, !dbg !1975
  %36 = load ptr, ptr %s.addr, align 8, !dbg !1975
  %heap43 = getelementptr inbounds %struct.deflate_state, ptr %36, i32 0, i32 43, !dbg !1975
  %37 = load i32, ptr %j, align 4, !dbg !1975
  %idxprom44 = sext i32 %37 to i64, !dbg !1975
  %arrayidx45 = getelementptr [573 x i32], ptr %heap43, i64 0, i64 %idxprom44, !dbg !1975
  %38 = load i32, ptr %arrayidx45, align 4, !dbg !1975
  %idxprom46 = sext i32 %38 to i64, !dbg !1975
  %arrayidx47 = getelementptr [573 x i8], ptr %depth42, i64 0, i64 %idxprom46, !dbg !1975
  %39 = load i8, ptr %arrayidx47, align 1, !dbg !1975
  %conv48 = zext i8 %39 to i32, !dbg !1975
  %cmp49 = icmp sle i32 %conv41, %conv48, !dbg !1975
  br i1 %cmp49, label %if.then, label %if.end, !dbg !1976

if.then:                                          ; preds = %land.lhs.true34, %land.lhs.true
  %40 = load i32, ptr %j, align 4, !dbg !1977
  %inc = add i32 %40, 1, !dbg !1977
  store i32 %inc, ptr %j, align 4, !dbg !1977
  br label %if.end, !dbg !1979

if.end:                                           ; preds = %if.then, %land.lhs.true34, %lor.lhs.false, %while.body
  %41 = load ptr, ptr %tree.addr, align 8, !dbg !1980
  %42 = load i32, ptr %v, align 4, !dbg !1980
  %idxprom51 = sext i32 %42 to i64, !dbg !1980
  %arrayidx52 = getelementptr %struct.ct_data_s, ptr %41, i64 %idxprom51, !dbg !1980
  %fc53 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx52, i32 0, i32 0, !dbg !1980
  %43 = load i16, ptr %fc53, align 2, !dbg !1980
  %conv54 = zext i16 %43 to i32, !dbg !1980
  %44 = load ptr, ptr %tree.addr, align 8, !dbg !1980
  %45 = load ptr, ptr %s.addr, align 8, !dbg !1980
  %heap55 = getelementptr inbounds %struct.deflate_state, ptr %45, i32 0, i32 43, !dbg !1980
  %46 = load i32, ptr %j, align 4, !dbg !1980
  %idxprom56 = sext i32 %46 to i64, !dbg !1980
  %arrayidx57 = getelementptr [573 x i32], ptr %heap55, i64 0, i64 %idxprom56, !dbg !1980
  %47 = load i32, ptr %arrayidx57, align 4, !dbg !1980
  %idxprom58 = sext i32 %47 to i64, !dbg !1980
  %arrayidx59 = getelementptr %struct.ct_data_s, ptr %44, i64 %idxprom58, !dbg !1980
  %fc60 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx59, i32 0, i32 0, !dbg !1980
  %48 = load i16, ptr %fc60, align 2, !dbg !1980
  %conv61 = zext i16 %48 to i32, !dbg !1980
  %cmp62 = icmp slt i32 %conv54, %conv61, !dbg !1980
  br i1 %cmp62, label %if.then92, label %lor.lhs.false64, !dbg !1980

lor.lhs.false64:                                  ; preds = %if.end
  %49 = load ptr, ptr %tree.addr, align 8, !dbg !1980
  %50 = load i32, ptr %v, align 4, !dbg !1980
  %idxprom65 = sext i32 %50 to i64, !dbg !1980
  %arrayidx66 = getelementptr %struct.ct_data_s, ptr %49, i64 %idxprom65, !dbg !1980
  %fc67 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx66, i32 0, i32 0, !dbg !1980
  %51 = load i16, ptr %fc67, align 2, !dbg !1980
  %conv68 = zext i16 %51 to i32, !dbg !1980
  %52 = load ptr, ptr %tree.addr, align 8, !dbg !1980
  %53 = load ptr, ptr %s.addr, align 8, !dbg !1980
  %heap69 = getelementptr inbounds %struct.deflate_state, ptr %53, i32 0, i32 43, !dbg !1980
  %54 = load i32, ptr %j, align 4, !dbg !1980
  %idxprom70 = sext i32 %54 to i64, !dbg !1980
  %arrayidx71 = getelementptr [573 x i32], ptr %heap69, i64 0, i64 %idxprom70, !dbg !1980
  %55 = load i32, ptr %arrayidx71, align 4, !dbg !1980
  %idxprom72 = sext i32 %55 to i64, !dbg !1980
  %arrayidx73 = getelementptr %struct.ct_data_s, ptr %52, i64 %idxprom72, !dbg !1980
  %fc74 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx73, i32 0, i32 0, !dbg !1980
  %56 = load i16, ptr %fc74, align 2, !dbg !1980
  %conv75 = zext i16 %56 to i32, !dbg !1980
  %cmp76 = icmp eq i32 %conv68, %conv75, !dbg !1980
  br i1 %cmp76, label %land.lhs.true78, label %if.end93, !dbg !1980

land.lhs.true78:                                  ; preds = %lor.lhs.false64
  %57 = load ptr, ptr %s.addr, align 8, !dbg !1980
  %depth79 = getelementptr inbounds %struct.deflate_state, ptr %57, i32 0, i32 46, !dbg !1980
  %58 = load i32, ptr %v, align 4, !dbg !1980
  %idxprom80 = sext i32 %58 to i64, !dbg !1980
  %arrayidx81 = getelementptr [573 x i8], ptr %depth79, i64 0, i64 %idxprom80, !dbg !1980
  %59 = load i8, ptr %arrayidx81, align 1, !dbg !1980
  %conv82 = zext i8 %59 to i32, !dbg !1980
  %60 = load ptr, ptr %s.addr, align 8, !dbg !1980
  %depth83 = getelementptr inbounds %struct.deflate_state, ptr %60, i32 0, i32 46, !dbg !1980
  %61 = load ptr, ptr %s.addr, align 8, !dbg !1980
  %heap84 = getelementptr inbounds %struct.deflate_state, ptr %61, i32 0, i32 43, !dbg !1980
  %62 = load i32, ptr %j, align 4, !dbg !1980
  %idxprom85 = sext i32 %62 to i64, !dbg !1980
  %arrayidx86 = getelementptr [573 x i32], ptr %heap84, i64 0, i64 %idxprom85, !dbg !1980
  %63 = load i32, ptr %arrayidx86, align 4, !dbg !1980
  %idxprom87 = sext i32 %63 to i64, !dbg !1980
  %arrayidx88 = getelementptr [573 x i8], ptr %depth83, i64 0, i64 %idxprom87, !dbg !1980
  %64 = load i8, ptr %arrayidx88, align 1, !dbg !1980
  %conv89 = zext i8 %64 to i32, !dbg !1980
  %cmp90 = icmp sle i32 %conv82, %conv89, !dbg !1980
  br i1 %cmp90, label %if.then92, label %if.end93, !dbg !1982

if.then92:                                        ; preds = %land.lhs.true78, %if.end
  br label %while.end, !dbg !1983

if.end93:                                         ; preds = %land.lhs.true78, %lor.lhs.false64
  %65 = load ptr, ptr %s.addr, align 8, !dbg !1984
  %heap94 = getelementptr inbounds %struct.deflate_state, ptr %65, i32 0, i32 43, !dbg !1985
  %66 = load i32, ptr %j, align 4, !dbg !1986
  %idxprom95 = sext i32 %66 to i64, !dbg !1984
  %arrayidx96 = getelementptr [573 x i32], ptr %heap94, i64 0, i64 %idxprom95, !dbg !1984
  %67 = load i32, ptr %arrayidx96, align 4, !dbg !1984
  %68 = load ptr, ptr %s.addr, align 8, !dbg !1987
  %heap97 = getelementptr inbounds %struct.deflate_state, ptr %68, i32 0, i32 43, !dbg !1988
  %69 = load i32, ptr %k.addr, align 4, !dbg !1989
  %idxprom98 = sext i32 %69 to i64, !dbg !1987
  %arrayidx99 = getelementptr [573 x i32], ptr %heap97, i64 0, i64 %idxprom98, !dbg !1987
  store i32 %67, ptr %arrayidx99, align 4, !dbg !1990
  %70 = load i32, ptr %j, align 4, !dbg !1991
  store i32 %70, ptr %k.addr, align 4, !dbg !1992
  %71 = load i32, ptr %j, align 4, !dbg !1993
  %shl100 = shl i32 %71, 1, !dbg !1993
  store i32 %shl100, ptr %j, align 4, !dbg !1993
  br label %while.cond, !dbg !1963, !llvm.loop !1994

while.end:                                        ; preds = %if.then92, %while.cond
  %72 = load i32, ptr %v, align 4, !dbg !1996
  %73 = load ptr, ptr %s.addr, align 8, !dbg !1997
  %heap101 = getelementptr inbounds %struct.deflate_state, ptr %73, i32 0, i32 43, !dbg !1998
  %74 = load i32, ptr %k.addr, align 4, !dbg !1999
  %idxprom102 = sext i32 %74 to i64, !dbg !1997
  %arrayidx103 = getelementptr [573 x i32], ptr %heap101, i64 0, i64 %idxprom102, !dbg !1997
  store i32 %72, ptr %arrayidx103, align 4, !dbg !2000
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7, !dbg !2001
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #7, !dbg !2001
  ret void, !dbg !2001
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gen_bitlen(ptr noundef %s, ptr noundef %desc) #0 align 16 !dbg !2002 {
entry:
  %s.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %tree = alloca ptr, align 8
  %max_code = alloca i32, align 4
  %stree = alloca ptr, align 8
  %extra = alloca ptr, align 8
  %base = alloca i32, align 4
  %max_length = alloca i32, align 4
  %h = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %bits = alloca i32, align 4
  %xbits = alloca i32, align 4
  %f = alloca i16, align 2
  %overflow = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2004, metadata !DIExpression()), !dbg !2019
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2005, metadata !DIExpression()), !dbg !2020
  call void @llvm.lifetime.start.p0(i64 8, ptr %tree) #7, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %tree, metadata !2006, metadata !DIExpression()), !dbg !2022
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2023
  %dyn_tree = getelementptr inbounds %struct.tree_desc_s, ptr %0, i32 0, i32 0, !dbg !2024
  %1 = load ptr, ptr %dyn_tree, align 8, !dbg !2024
  store ptr %1, ptr %tree, align 8, !dbg !2022
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_code) #7, !dbg !2025
  call void @llvm.dbg.declare(metadata ptr %max_code, metadata !2007, metadata !DIExpression()), !dbg !2026
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !2027
  %max_code1 = getelementptr inbounds %struct.tree_desc_s, ptr %2, i32 0, i32 1, !dbg !2028
  %3 = load i32, ptr %max_code1, align 8, !dbg !2028
  store i32 %3, ptr %max_code, align 4, !dbg !2026
  call void @llvm.lifetime.start.p0(i64 8, ptr %stree) #7, !dbg !2029
  call void @llvm.dbg.declare(metadata ptr %stree, metadata !2008, metadata !DIExpression()), !dbg !2030
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !2031
  %stat_desc = getelementptr inbounds %struct.tree_desc_s, ptr %4, i32 0, i32 2, !dbg !2032
  %5 = load ptr, ptr %stat_desc, align 8, !dbg !2032
  %static_tree = getelementptr inbounds %struct.static_tree_desc_s, ptr %5, i32 0, i32 0, !dbg !2033
  %6 = load ptr, ptr %static_tree, align 8, !dbg !2033
  store ptr %6, ptr %stree, align 8, !dbg !2030
  call void @llvm.lifetime.start.p0(i64 8, ptr %extra) #7, !dbg !2034
  call void @llvm.dbg.declare(metadata ptr %extra, metadata !2009, metadata !DIExpression()), !dbg !2035
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !2036
  %stat_desc2 = getelementptr inbounds %struct.tree_desc_s, ptr %7, i32 0, i32 2, !dbg !2037
  %8 = load ptr, ptr %stat_desc2, align 8, !dbg !2037
  %extra_bits = getelementptr inbounds %struct.static_tree_desc_s, ptr %8, i32 0, i32 1, !dbg !2038
  %9 = load ptr, ptr %extra_bits, align 8, !dbg !2038
  store ptr %9, ptr %extra, align 8, !dbg !2035
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #7, !dbg !2039
  call void @llvm.dbg.declare(metadata ptr %base, metadata !2010, metadata !DIExpression()), !dbg !2040
  %10 = load ptr, ptr %desc.addr, align 8, !dbg !2041
  %stat_desc3 = getelementptr inbounds %struct.tree_desc_s, ptr %10, i32 0, i32 2, !dbg !2042
  %11 = load ptr, ptr %stat_desc3, align 8, !dbg !2042
  %extra_base = getelementptr inbounds %struct.static_tree_desc_s, ptr %11, i32 0, i32 2, !dbg !2043
  %12 = load i32, ptr %extra_base, align 8, !dbg !2043
  store i32 %12, ptr %base, align 4, !dbg !2040
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_length) #7, !dbg !2044
  call void @llvm.dbg.declare(metadata ptr %max_length, metadata !2011, metadata !DIExpression()), !dbg !2045
  %13 = load ptr, ptr %desc.addr, align 8, !dbg !2046
  %stat_desc4 = getelementptr inbounds %struct.tree_desc_s, ptr %13, i32 0, i32 2, !dbg !2047
  %14 = load ptr, ptr %stat_desc4, align 8, !dbg !2047
  %max_length5 = getelementptr inbounds %struct.static_tree_desc_s, ptr %14, i32 0, i32 4, !dbg !2048
  %15 = load i32, ptr %max_length5, align 8, !dbg !2048
  store i32 %15, ptr %max_length, align 4, !dbg !2045
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #7, !dbg !2049
  call void @llvm.dbg.declare(metadata ptr %h, metadata !2012, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !2051
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2013, metadata !DIExpression()), !dbg !2052
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #7, !dbg !2051
  call void @llvm.dbg.declare(metadata ptr %m, metadata !2014, metadata !DIExpression()), !dbg !2053
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #7, !dbg !2054
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !2015, metadata !DIExpression()), !dbg !2055
  call void @llvm.lifetime.start.p0(i64 4, ptr %xbits) #7, !dbg !2056
  call void @llvm.dbg.declare(metadata ptr %xbits, metadata !2016, metadata !DIExpression()), !dbg !2057
  call void @llvm.lifetime.start.p0(i64 2, ptr %f) #7, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %f, metadata !2017, metadata !DIExpression()), !dbg !2059
  call void @llvm.lifetime.start.p0(i64 4, ptr %overflow) #7, !dbg !2060
  call void @llvm.dbg.declare(metadata ptr %overflow, metadata !2018, metadata !DIExpression()), !dbg !2061
  store i32 0, ptr %overflow, align 4, !dbg !2061
  store i32 0, ptr %bits, align 4, !dbg !2062
  br label %for.cond, !dbg !2064

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, ptr %bits, align 4, !dbg !2065
  %cmp = icmp sle i32 %16, 15, !dbg !2067
  br i1 %cmp, label %for.body, label %for.end, !dbg !2068

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %s.addr, align 8, !dbg !2069
  %bl_count = getelementptr inbounds %struct.deflate_state, ptr %17, i32 0, i32 42, !dbg !2070
  %18 = load i32, ptr %bits, align 4, !dbg !2071
  %idxprom = sext i32 %18 to i64, !dbg !2069
  %arrayidx = getelementptr [16 x i16], ptr %bl_count, i64 0, i64 %idxprom, !dbg !2069
  store i16 0, ptr %arrayidx, align 2, !dbg !2072
  br label %for.inc, !dbg !2069

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %bits, align 4, !dbg !2073
  %inc = add i32 %19, 1, !dbg !2073
  store i32 %inc, ptr %bits, align 4, !dbg !2073
  br label %for.cond, !dbg !2074, !llvm.loop !2075

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %tree, align 8, !dbg !2077
  %21 = load ptr, ptr %s.addr, align 8, !dbg !2078
  %heap = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 43, !dbg !2079
  %22 = load ptr, ptr %s.addr, align 8, !dbg !2080
  %heap_max = getelementptr inbounds %struct.deflate_state, ptr %22, i32 0, i32 45, !dbg !2081
  %23 = load i32, ptr %heap_max, align 8, !dbg !2081
  %idxprom6 = sext i32 %23 to i64, !dbg !2078
  %arrayidx7 = getelementptr [573 x i32], ptr %heap, i64 0, i64 %idxprom6, !dbg !2078
  %24 = load i32, ptr %arrayidx7, align 4, !dbg !2078
  %idxprom8 = sext i32 %24 to i64, !dbg !2077
  %arrayidx9 = getelementptr %struct.ct_data_s, ptr %20, i64 %idxprom8, !dbg !2077
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx9, i32 0, i32 1, !dbg !2082
  store i16 0, ptr %dl, align 2, !dbg !2083
  %25 = load ptr, ptr %s.addr, align 8, !dbg !2084
  %heap_max10 = getelementptr inbounds %struct.deflate_state, ptr %25, i32 0, i32 45, !dbg !2086
  %26 = load i32, ptr %heap_max10, align 8, !dbg !2086
  %add = add i32 %26, 1, !dbg !2087
  store i32 %add, ptr %h, align 4, !dbg !2088
  br label %for.cond11, !dbg !2089

for.cond11:                                       ; preds = %for.inc62, %for.end
  %27 = load i32, ptr %h, align 4, !dbg !2090
  %cmp12 = icmp slt i32 %27, 573, !dbg !2092
  br i1 %cmp12, label %for.body13, label %for.end64, !dbg !2093

for.body13:                                       ; preds = %for.cond11
  %28 = load ptr, ptr %s.addr, align 8, !dbg !2094
  %heap14 = getelementptr inbounds %struct.deflate_state, ptr %28, i32 0, i32 43, !dbg !2096
  %29 = load i32, ptr %h, align 4, !dbg !2097
  %idxprom15 = sext i32 %29 to i64, !dbg !2094
  %arrayidx16 = getelementptr [573 x i32], ptr %heap14, i64 0, i64 %idxprom15, !dbg !2094
  %30 = load i32, ptr %arrayidx16, align 4, !dbg !2094
  store i32 %30, ptr %n, align 4, !dbg !2098
  %31 = load ptr, ptr %tree, align 8, !dbg !2099
  %32 = load ptr, ptr %tree, align 8, !dbg !2100
  %33 = load i32, ptr %n, align 4, !dbg !2101
  %idxprom17 = sext i32 %33 to i64, !dbg !2100
  %arrayidx18 = getelementptr %struct.ct_data_s, ptr %32, i64 %idxprom17, !dbg !2100
  %dl19 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx18, i32 0, i32 1, !dbg !2102
  %34 = load i16, ptr %dl19, align 2, !dbg !2102
  %idxprom20 = zext i16 %34 to i64, !dbg !2099
  %arrayidx21 = getelementptr %struct.ct_data_s, ptr %31, i64 %idxprom20, !dbg !2099
  %dl22 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx21, i32 0, i32 1, !dbg !2103
  %35 = load i16, ptr %dl22, align 2, !dbg !2103
  %conv = zext i16 %35 to i32, !dbg !2099
  %add23 = add i32 %conv, 1, !dbg !2104
  store i32 %add23, ptr %bits, align 4, !dbg !2105
  %36 = load i32, ptr %bits, align 4, !dbg !2106
  %37 = load i32, ptr %max_length, align 4, !dbg !2108
  %cmp24 = icmp sgt i32 %36, %37, !dbg !2109
  br i1 %cmp24, label %if.then, label %if.end, !dbg !2110

if.then:                                          ; preds = %for.body13
  %38 = load i32, ptr %max_length, align 4, !dbg !2111
  store i32 %38, ptr %bits, align 4, !dbg !2112
  %39 = load i32, ptr %overflow, align 4, !dbg !2113
  %inc26 = add i32 %39, 1, !dbg !2113
  store i32 %inc26, ptr %overflow, align 4, !dbg !2113
  br label %if.end, !dbg !2114

if.end:                                           ; preds = %if.then, %for.body13
  %40 = load i32, ptr %bits, align 4, !dbg !2115
  %conv27 = trunc i32 %40 to i16, !dbg !2116
  %41 = load ptr, ptr %tree, align 8, !dbg !2117
  %42 = load i32, ptr %n, align 4, !dbg !2118
  %idxprom28 = sext i32 %42 to i64, !dbg !2117
  %arrayidx29 = getelementptr %struct.ct_data_s, ptr %41, i64 %idxprom28, !dbg !2117
  %dl30 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx29, i32 0, i32 1, !dbg !2119
  store i16 %conv27, ptr %dl30, align 2, !dbg !2120
  %43 = load i32, ptr %n, align 4, !dbg !2121
  %44 = load i32, ptr %max_code, align 4, !dbg !2123
  %cmp31 = icmp sgt i32 %43, %44, !dbg !2124
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !2125

if.then33:                                        ; preds = %if.end
  br label %for.inc62, !dbg !2126

if.end34:                                         ; preds = %if.end
  %45 = load ptr, ptr %s.addr, align 8, !dbg !2127
  %bl_count35 = getelementptr inbounds %struct.deflate_state, ptr %45, i32 0, i32 42, !dbg !2128
  %46 = load i32, ptr %bits, align 4, !dbg !2129
  %idxprom36 = sext i32 %46 to i64, !dbg !2127
  %arrayidx37 = getelementptr [16 x i16], ptr %bl_count35, i64 0, i64 %idxprom36, !dbg !2127
  %47 = load i16, ptr %arrayidx37, align 2, !dbg !2130
  %inc38 = add i16 %47, 1, !dbg !2130
  store i16 %inc38, ptr %arrayidx37, align 2, !dbg !2130
  store i32 0, ptr %xbits, align 4, !dbg !2131
  %48 = load i32, ptr %n, align 4, !dbg !2132
  %49 = load i32, ptr %base, align 4, !dbg !2134
  %cmp39 = icmp sge i32 %48, %49, !dbg !2135
  br i1 %cmp39, label %if.then41, label %if.end44, !dbg !2136

if.then41:                                        ; preds = %if.end34
  %50 = load ptr, ptr %extra, align 8, !dbg !2137
  %51 = load i32, ptr %n, align 4, !dbg !2138
  %52 = load i32, ptr %base, align 4, !dbg !2139
  %sub = sub i32 %51, %52, !dbg !2140
  %idxprom42 = sext i32 %sub to i64, !dbg !2137
  %arrayidx43 = getelementptr i32, ptr %50, i64 %idxprom42, !dbg !2137
  %53 = load i32, ptr %arrayidx43, align 4, !dbg !2137
  store i32 %53, ptr %xbits, align 4, !dbg !2141
  br label %if.end44, !dbg !2142

if.end44:                                         ; preds = %if.then41, %if.end34
  %54 = load ptr, ptr %tree, align 8, !dbg !2143
  %55 = load i32, ptr %n, align 4, !dbg !2144
  %idxprom45 = sext i32 %55 to i64, !dbg !2143
  %arrayidx46 = getelementptr %struct.ct_data_s, ptr %54, i64 %idxprom45, !dbg !2143
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx46, i32 0, i32 0, !dbg !2145
  %56 = load i16, ptr %fc, align 2, !dbg !2145
  store i16 %56, ptr %f, align 2, !dbg !2146
  %57 = load i16, ptr %f, align 2, !dbg !2147
  %conv47 = zext i16 %57 to i64, !dbg !2148
  %58 = load i32, ptr %bits, align 4, !dbg !2149
  %59 = load i32, ptr %xbits, align 4, !dbg !2150
  %add48 = add i32 %58, %59, !dbg !2151
  %conv49 = sext i32 %add48 to i64, !dbg !2152
  %mul = mul i64 %conv47, %conv49, !dbg !2153
  %60 = load ptr, ptr %s.addr, align 8, !dbg !2154
  %opt_len = getelementptr inbounds %struct.deflate_state, ptr %60, i32 0, i32 51, !dbg !2155
  %61 = load i64, ptr %opt_len, align 8, !dbg !2156
  %add50 = add i64 %61, %mul, !dbg !2156
  store i64 %add50, ptr %opt_len, align 8, !dbg !2156
  %62 = load ptr, ptr %stree, align 8, !dbg !2157
  %tobool = icmp ne ptr %62, null, !dbg !2157
  br i1 %tobool, label %if.then51, label %if.end61, !dbg !2159

if.then51:                                        ; preds = %if.end44
  %63 = load i16, ptr %f, align 2, !dbg !2160
  %conv52 = zext i16 %63 to i64, !dbg !2161
  %64 = load ptr, ptr %stree, align 8, !dbg !2162
  %65 = load i32, ptr %n, align 4, !dbg !2163
  %idxprom53 = sext i32 %65 to i64, !dbg !2162
  %arrayidx54 = getelementptr %struct.ct_data_s, ptr %64, i64 %idxprom53, !dbg !2162
  %dl55 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx54, i32 0, i32 1, !dbg !2164
  %66 = load i16, ptr %dl55, align 2, !dbg !2164
  %conv56 = zext i16 %66 to i32, !dbg !2162
  %67 = load i32, ptr %xbits, align 4, !dbg !2165
  %add57 = add i32 %conv56, %67, !dbg !2166
  %conv58 = sext i32 %add57 to i64, !dbg !2167
  %mul59 = mul i64 %conv52, %conv58, !dbg !2168
  %68 = load ptr, ptr %s.addr, align 8, !dbg !2169
  %static_len = getelementptr inbounds %struct.deflate_state, ptr %68, i32 0, i32 52, !dbg !2170
  %69 = load i64, ptr %static_len, align 8, !dbg !2171
  %add60 = add i64 %69, %mul59, !dbg !2171
  store i64 %add60, ptr %static_len, align 8, !dbg !2171
  br label %if.end61, !dbg !2169

if.end61:                                         ; preds = %if.then51, %if.end44
  br label %for.inc62, !dbg !2172

for.inc62:                                        ; preds = %if.end61, %if.then33
  %70 = load i32, ptr %h, align 4, !dbg !2173
  %inc63 = add i32 %70, 1, !dbg !2173
  store i32 %inc63, ptr %h, align 4, !dbg !2173
  br label %for.cond11, !dbg !2174, !llvm.loop !2175

for.end64:                                        ; preds = %for.cond11
  %71 = load i32, ptr %overflow, align 4, !dbg !2177
  %cmp65 = icmp eq i32 %71, 0, !dbg !2179
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !2180

if.then67:                                        ; preds = %for.end64
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2181

if.end68:                                         ; preds = %for.end64
  br label %do.body, !dbg !2182

do.body:                                          ; preds = %do.cond, %if.end68
  %72 = load i32, ptr %max_length, align 4, !dbg !2183
  %sub69 = sub i32 %72, 1, !dbg !2185
  store i32 %sub69, ptr %bits, align 4, !dbg !2186
  br label %while.cond, !dbg !2187

while.cond:                                       ; preds = %while.body, %do.body
  %73 = load ptr, ptr %s.addr, align 8, !dbg !2188
  %bl_count70 = getelementptr inbounds %struct.deflate_state, ptr %73, i32 0, i32 42, !dbg !2189
  %74 = load i32, ptr %bits, align 4, !dbg !2190
  %idxprom71 = sext i32 %74 to i64, !dbg !2188
  %arrayidx72 = getelementptr [16 x i16], ptr %bl_count70, i64 0, i64 %idxprom71, !dbg !2188
  %75 = load i16, ptr %arrayidx72, align 2, !dbg !2188
  %conv73 = zext i16 %75 to i32, !dbg !2188
  %cmp74 = icmp eq i32 %conv73, 0, !dbg !2191
  br i1 %cmp74, label %while.body, label %while.end, !dbg !2187

while.body:                                       ; preds = %while.cond
  %76 = load i32, ptr %bits, align 4, !dbg !2192
  %dec = add i32 %76, -1, !dbg !2192
  store i32 %dec, ptr %bits, align 4, !dbg !2192
  br label %while.cond, !dbg !2187, !llvm.loop !2193

while.end:                                        ; preds = %while.cond
  %77 = load ptr, ptr %s.addr, align 8, !dbg !2194
  %bl_count76 = getelementptr inbounds %struct.deflate_state, ptr %77, i32 0, i32 42, !dbg !2195
  %78 = load i32, ptr %bits, align 4, !dbg !2196
  %idxprom77 = sext i32 %78 to i64, !dbg !2194
  %arrayidx78 = getelementptr [16 x i16], ptr %bl_count76, i64 0, i64 %idxprom77, !dbg !2194
  %79 = load i16, ptr %arrayidx78, align 2, !dbg !2197
  %dec79 = add i16 %79, -1, !dbg !2197
  store i16 %dec79, ptr %arrayidx78, align 2, !dbg !2197
  %80 = load ptr, ptr %s.addr, align 8, !dbg !2198
  %bl_count80 = getelementptr inbounds %struct.deflate_state, ptr %80, i32 0, i32 42, !dbg !2199
  %81 = load i32, ptr %bits, align 4, !dbg !2200
  %add81 = add i32 %81, 1, !dbg !2201
  %idxprom82 = sext i32 %add81 to i64, !dbg !2198
  %arrayidx83 = getelementptr [16 x i16], ptr %bl_count80, i64 0, i64 %idxprom82, !dbg !2198
  %82 = load i16, ptr %arrayidx83, align 2, !dbg !2202
  %conv84 = zext i16 %82 to i32, !dbg !2202
  %add85 = add i32 %conv84, 2, !dbg !2202
  %conv86 = trunc i32 %add85 to i16, !dbg !2202
  store i16 %conv86, ptr %arrayidx83, align 2, !dbg !2202
  %83 = load ptr, ptr %s.addr, align 8, !dbg !2203
  %bl_count87 = getelementptr inbounds %struct.deflate_state, ptr %83, i32 0, i32 42, !dbg !2204
  %84 = load i32, ptr %max_length, align 4, !dbg !2205
  %idxprom88 = sext i32 %84 to i64, !dbg !2203
  %arrayidx89 = getelementptr [16 x i16], ptr %bl_count87, i64 0, i64 %idxprom88, !dbg !2203
  %85 = load i16, ptr %arrayidx89, align 2, !dbg !2206
  %dec90 = add i16 %85, -1, !dbg !2206
  store i16 %dec90, ptr %arrayidx89, align 2, !dbg !2206
  %86 = load i32, ptr %overflow, align 4, !dbg !2207
  %sub91 = sub i32 %86, 2, !dbg !2207
  store i32 %sub91, ptr %overflow, align 4, !dbg !2207
  br label %do.cond, !dbg !2208

do.cond:                                          ; preds = %while.end
  %87 = load i32, ptr %overflow, align 4, !dbg !2209
  %cmp92 = icmp sgt i32 %87, 0, !dbg !2210
  br i1 %cmp92, label %do.body, label %do.end, !dbg !2208, !llvm.loop !2211

do.end:                                           ; preds = %do.cond
  %88 = load i32, ptr %max_length, align 4, !dbg !2213
  store i32 %88, ptr %bits, align 4, !dbg !2215
  br label %for.cond94, !dbg !2216

for.cond94:                                       ; preds = %for.inc141, %do.end
  %89 = load i32, ptr %bits, align 4, !dbg !2217
  %cmp95 = icmp ne i32 %89, 0, !dbg !2219
  br i1 %cmp95, label %for.body97, label %for.end143, !dbg !2220

for.body97:                                       ; preds = %for.cond94
  %90 = load ptr, ptr %s.addr, align 8, !dbg !2221
  %bl_count98 = getelementptr inbounds %struct.deflate_state, ptr %90, i32 0, i32 42, !dbg !2223
  %91 = load i32, ptr %bits, align 4, !dbg !2224
  %idxprom99 = sext i32 %91 to i64, !dbg !2221
  %arrayidx100 = getelementptr [16 x i16], ptr %bl_count98, i64 0, i64 %idxprom99, !dbg !2221
  %92 = load i16, ptr %arrayidx100, align 2, !dbg !2221
  %conv101 = zext i16 %92 to i32, !dbg !2221
  store i32 %conv101, ptr %n, align 4, !dbg !2225
  br label %while.cond102, !dbg !2226

while.cond102:                                    ; preds = %if.end138, %if.then112, %for.body97
  %93 = load i32, ptr %n, align 4, !dbg !2227
  %cmp103 = icmp ne i32 %93, 0, !dbg !2228
  br i1 %cmp103, label %while.body105, label %while.end140, !dbg !2226

while.body105:                                    ; preds = %while.cond102
  %94 = load ptr, ptr %s.addr, align 8, !dbg !2229
  %heap106 = getelementptr inbounds %struct.deflate_state, ptr %94, i32 0, i32 43, !dbg !2231
  %95 = load i32, ptr %h, align 4, !dbg !2232
  %dec107 = add i32 %95, -1, !dbg !2232
  store i32 %dec107, ptr %h, align 4, !dbg !2232
  %idxprom108 = sext i32 %dec107 to i64, !dbg !2229
  %arrayidx109 = getelementptr [573 x i32], ptr %heap106, i64 0, i64 %idxprom108, !dbg !2229
  %96 = load i32, ptr %arrayidx109, align 4, !dbg !2229
  store i32 %96, ptr %m, align 4, !dbg !2233
  %97 = load i32, ptr %m, align 4, !dbg !2234
  %98 = load i32, ptr %max_code, align 4, !dbg !2236
  %cmp110 = icmp sgt i32 %97, %98, !dbg !2237
  br i1 %cmp110, label %if.then112, label %if.end113, !dbg !2238

if.then112:                                       ; preds = %while.body105
  br label %while.cond102, !dbg !2239, !llvm.loop !2240

if.end113:                                        ; preds = %while.body105
  %99 = load ptr, ptr %tree, align 8, !dbg !2242
  %100 = load i32, ptr %m, align 4, !dbg !2244
  %idxprom114 = sext i32 %100 to i64, !dbg !2242
  %arrayidx115 = getelementptr %struct.ct_data_s, ptr %99, i64 %idxprom114, !dbg !2242
  %dl116 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx115, i32 0, i32 1, !dbg !2245
  %101 = load i16, ptr %dl116, align 2, !dbg !2245
  %conv117 = zext i16 %101 to i32, !dbg !2242
  %102 = load i32, ptr %bits, align 4, !dbg !2246
  %cmp118 = icmp ne i32 %conv117, %102, !dbg !2247
  br i1 %cmp118, label %if.then120, label %if.end138, !dbg !2248

if.then120:                                       ; preds = %if.end113
  %103 = load i32, ptr %bits, align 4, !dbg !2249
  %conv121 = sext i32 %103 to i64, !dbg !2251
  %104 = load ptr, ptr %tree, align 8, !dbg !2252
  %105 = load i32, ptr %m, align 4, !dbg !2253
  %idxprom122 = sext i32 %105 to i64, !dbg !2252
  %arrayidx123 = getelementptr %struct.ct_data_s, ptr %104, i64 %idxprom122, !dbg !2252
  %dl124 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx123, i32 0, i32 1, !dbg !2254
  %106 = load i16, ptr %dl124, align 2, !dbg !2254
  %conv125 = zext i16 %106 to i64, !dbg !2255
  %sub126 = sub i64 %conv121, %conv125, !dbg !2256
  %107 = load ptr, ptr %tree, align 8, !dbg !2257
  %108 = load i32, ptr %m, align 4, !dbg !2258
  %idxprom127 = sext i32 %108 to i64, !dbg !2257
  %arrayidx128 = getelementptr %struct.ct_data_s, ptr %107, i64 %idxprom127, !dbg !2257
  %fc129 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx128, i32 0, i32 0, !dbg !2259
  %109 = load i16, ptr %fc129, align 2, !dbg !2259
  %conv130 = zext i16 %109 to i64, !dbg !2260
  %mul131 = mul i64 %sub126, %conv130, !dbg !2261
  %110 = load ptr, ptr %s.addr, align 8, !dbg !2262
  %opt_len132 = getelementptr inbounds %struct.deflate_state, ptr %110, i32 0, i32 51, !dbg !2263
  %111 = load i64, ptr %opt_len132, align 8, !dbg !2264
  %add133 = add i64 %111, %mul131, !dbg !2264
  store i64 %add133, ptr %opt_len132, align 8, !dbg !2264
  %112 = load i32, ptr %bits, align 4, !dbg !2265
  %conv134 = trunc i32 %112 to i16, !dbg !2266
  %113 = load ptr, ptr %tree, align 8, !dbg !2267
  %114 = load i32, ptr %m, align 4, !dbg !2268
  %idxprom135 = sext i32 %114 to i64, !dbg !2267
  %arrayidx136 = getelementptr %struct.ct_data_s, ptr %113, i64 %idxprom135, !dbg !2267
  %dl137 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx136, i32 0, i32 1, !dbg !2269
  store i16 %conv134, ptr %dl137, align 2, !dbg !2270
  br label %if.end138, !dbg !2271

if.end138:                                        ; preds = %if.then120, %if.end113
  %115 = load i32, ptr %n, align 4, !dbg !2272
  %dec139 = add i32 %115, -1, !dbg !2272
  store i32 %dec139, ptr %n, align 4, !dbg !2272
  br label %while.cond102, !dbg !2226, !llvm.loop !2240

while.end140:                                     ; preds = %while.cond102
  br label %for.inc141, !dbg !2273

for.inc141:                                       ; preds = %while.end140
  %116 = load i32, ptr %bits, align 4, !dbg !2274
  %dec142 = add i32 %116, -1, !dbg !2274
  store i32 %dec142, ptr %bits, align 4, !dbg !2274
  br label %for.cond94, !dbg !2275, !llvm.loop !2276

for.end143:                                       ; preds = %for.cond94
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2278
  br label %cleanup, !dbg !2278

cleanup:                                          ; preds = %for.end143, %if.then67
  call void @llvm.lifetime.end.p0(i64 4, ptr %overflow) #7, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 2, ptr %f) #7, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 4, ptr %xbits) #7, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #7, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #7, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #7, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_length) #7, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #7, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 8, ptr %extra) #7, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 8, ptr %stree) #7, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_code) #7, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 8, ptr %tree) #7, !dbg !2278
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2278

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @scan_tree(ptr noundef %s, ptr noundef %tree, i32 noundef %max_code) #0 align 16 !dbg !2279 {
entry:
  %s.addr = alloca ptr, align 8
  %tree.addr = alloca ptr, align 8
  %max_code.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %prevlen = alloca i32, align 4
  %curlen = alloca i32, align 4
  %nextlen = alloca i32, align 4
  %count = alloca i32, align 4
  %max_count = alloca i32, align 4
  %min_count = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2281, metadata !DIExpression()), !dbg !2291
  store ptr %tree, ptr %tree.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tree.addr, metadata !2282, metadata !DIExpression()), !dbg !2292
  store i32 %max_code, ptr %max_code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_code.addr, metadata !2283, metadata !DIExpression()), !dbg !2293
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !2294
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2284, metadata !DIExpression()), !dbg !2295
  call void @llvm.lifetime.start.p0(i64 4, ptr %prevlen) #7, !dbg !2296
  call void @llvm.dbg.declare(metadata ptr %prevlen, metadata !2285, metadata !DIExpression()), !dbg !2297
  store i32 -1, ptr %prevlen, align 4, !dbg !2297
  call void @llvm.lifetime.start.p0(i64 4, ptr %curlen) #7, !dbg !2298
  call void @llvm.dbg.declare(metadata ptr %curlen, metadata !2286, metadata !DIExpression()), !dbg !2299
  call void @llvm.lifetime.start.p0(i64 4, ptr %nextlen) #7, !dbg !2300
  call void @llvm.dbg.declare(metadata ptr %nextlen, metadata !2287, metadata !DIExpression()), !dbg !2301
  %0 = load ptr, ptr %tree.addr, align 8, !dbg !2302
  %arrayidx = getelementptr %struct.ct_data_s, ptr %0, i64 0, !dbg !2302
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx, i32 0, i32 1, !dbg !2303
  %1 = load i16, ptr %dl, align 2, !dbg !2303
  %conv = zext i16 %1 to i32, !dbg !2302
  store i32 %conv, ptr %nextlen, align 4, !dbg !2301
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #7, !dbg !2304
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2288, metadata !DIExpression()), !dbg !2305
  store i32 0, ptr %count, align 4, !dbg !2305
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_count) #7, !dbg !2306
  call void @llvm.dbg.declare(metadata ptr %max_count, metadata !2289, metadata !DIExpression()), !dbg !2307
  store i32 7, ptr %max_count, align 4, !dbg !2307
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_count) #7, !dbg !2308
  call void @llvm.dbg.declare(metadata ptr %min_count, metadata !2290, metadata !DIExpression()), !dbg !2309
  store i32 4, ptr %min_count, align 4, !dbg !2309
  %2 = load i32, ptr %nextlen, align 4, !dbg !2310
  %cmp = icmp eq i32 %2, 0, !dbg !2312
  br i1 %cmp, label %if.then, label %if.end, !dbg !2313

if.then:                                          ; preds = %entry
  store i32 138, ptr %max_count, align 4, !dbg !2314
  store i32 3, ptr %min_count, align 4, !dbg !2315
  br label %if.end, !dbg !2316

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %tree.addr, align 8, !dbg !2317
  %4 = load i32, ptr %max_code.addr, align 4, !dbg !2318
  %add = add i32 %4, 1, !dbg !2319
  %idxprom = sext i32 %add to i64, !dbg !2317
  %arrayidx2 = getelementptr %struct.ct_data_s, ptr %3, i64 %idxprom, !dbg !2317
  %dl3 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx2, i32 0, i32 1, !dbg !2320
  store i16 -1, ptr %dl3, align 2, !dbg !2321
  store i32 0, ptr %n, align 4, !dbg !2322
  br label %for.cond, !dbg !2324

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %n, align 4, !dbg !2325
  %6 = load i32, ptr %max_code.addr, align 4, !dbg !2327
  %cmp4 = icmp sle i32 %5, %6, !dbg !2328
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2329

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %nextlen, align 4, !dbg !2330
  store i32 %7, ptr %curlen, align 4, !dbg !2332
  %8 = load ptr, ptr %tree.addr, align 8, !dbg !2333
  %9 = load i32, ptr %n, align 4, !dbg !2334
  %add6 = add i32 %9, 1, !dbg !2335
  %idxprom7 = sext i32 %add6 to i64, !dbg !2333
  %arrayidx8 = getelementptr %struct.ct_data_s, ptr %8, i64 %idxprom7, !dbg !2333
  %dl9 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx8, i32 0, i32 1, !dbg !2336
  %10 = load i16, ptr %dl9, align 2, !dbg !2336
  %conv10 = zext i16 %10 to i32, !dbg !2333
  store i32 %conv10, ptr %nextlen, align 4, !dbg !2337
  %11 = load i32, ptr %count, align 4, !dbg !2338
  %inc = add i32 %11, 1, !dbg !2338
  store i32 %inc, ptr %count, align 4, !dbg !2338
  %12 = load i32, ptr %max_count, align 4, !dbg !2340
  %cmp11 = icmp slt i32 %inc, %12, !dbg !2341
  br i1 %cmp11, label %land.lhs.true, label %if.else, !dbg !2342

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32, ptr %curlen, align 4, !dbg !2343
  %14 = load i32, ptr %nextlen, align 4, !dbg !2344
  %cmp13 = icmp eq i32 %13, %14, !dbg !2345
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !2346

if.then15:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !2347

if.else:                                          ; preds = %land.lhs.true, %for.body
  %15 = load i32, ptr %count, align 4, !dbg !2349
  %16 = load i32, ptr %min_count, align 4, !dbg !2351
  %cmp16 = icmp slt i32 %15, %16, !dbg !2352
  br i1 %cmp16, label %if.then18, label %if.else24, !dbg !2353

if.then18:                                        ; preds = %if.else
  %17 = load i32, ptr %count, align 4, !dbg !2354
  %18 = load ptr, ptr %s.addr, align 8, !dbg !2356
  %bl_tree = getelementptr inbounds %struct.deflate_state, ptr %18, i32 0, i32 38, !dbg !2357
  %19 = load i32, ptr %curlen, align 4, !dbg !2358
  %idxprom19 = sext i32 %19 to i64, !dbg !2356
  %arrayidx20 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 %idxprom19, !dbg !2356
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx20, i32 0, i32 0, !dbg !2359
  %20 = load i16, ptr %fc, align 4, !dbg !2360
  %conv21 = zext i16 %20 to i32, !dbg !2360
  %add22 = add i32 %conv21, %17, !dbg !2360
  %conv23 = trunc i32 %add22 to i16, !dbg !2360
  store i16 %conv23, ptr %fc, align 4, !dbg !2360
  br label %if.end56, !dbg !2361

if.else24:                                        ; preds = %if.else
  %21 = load i32, ptr %curlen, align 4, !dbg !2362
  %cmp25 = icmp ne i32 %21, 0, !dbg !2364
  br i1 %cmp25, label %if.then27, label %if.else41, !dbg !2365

if.then27:                                        ; preds = %if.else24
  %22 = load i32, ptr %curlen, align 4, !dbg !2366
  %23 = load i32, ptr %prevlen, align 4, !dbg !2369
  %cmp28 = icmp ne i32 %22, %23, !dbg !2370
  br i1 %cmp28, label %if.then30, label %if.end36, !dbg !2371

if.then30:                                        ; preds = %if.then27
  %24 = load ptr, ptr %s.addr, align 8, !dbg !2372
  %bl_tree31 = getelementptr inbounds %struct.deflate_state, ptr %24, i32 0, i32 38, !dbg !2373
  %25 = load i32, ptr %curlen, align 4, !dbg !2374
  %idxprom32 = sext i32 %25 to i64, !dbg !2372
  %arrayidx33 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree31, i64 0, i64 %idxprom32, !dbg !2372
  %fc34 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx33, i32 0, i32 0, !dbg !2375
  %26 = load i16, ptr %fc34, align 4, !dbg !2376
  %inc35 = add i16 %26, 1, !dbg !2376
  store i16 %inc35, ptr %fc34, align 4, !dbg !2376
  br label %if.end36, !dbg !2372

if.end36:                                         ; preds = %if.then30, %if.then27
  %27 = load ptr, ptr %s.addr, align 8, !dbg !2377
  %bl_tree37 = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 38, !dbg !2378
  %arrayidx38 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree37, i64 0, i64 16, !dbg !2377
  %fc39 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx38, i32 0, i32 0, !dbg !2379
  %28 = load i16, ptr %fc39, align 4, !dbg !2380
  %inc40 = add i16 %28, 1, !dbg !2380
  store i16 %inc40, ptr %fc39, align 4, !dbg !2380
  br label %if.end55, !dbg !2381

if.else41:                                        ; preds = %if.else24
  %29 = load i32, ptr %count, align 4, !dbg !2382
  %cmp42 = icmp sle i32 %29, 10, !dbg !2384
  br i1 %cmp42, label %if.then44, label %if.else49, !dbg !2385

if.then44:                                        ; preds = %if.else41
  %30 = load ptr, ptr %s.addr, align 8, !dbg !2386
  %bl_tree45 = getelementptr inbounds %struct.deflate_state, ptr %30, i32 0, i32 38, !dbg !2388
  %arrayidx46 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree45, i64 0, i64 17, !dbg !2386
  %fc47 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx46, i32 0, i32 0, !dbg !2389
  %31 = load i16, ptr %fc47, align 4, !dbg !2390
  %inc48 = add i16 %31, 1, !dbg !2390
  store i16 %inc48, ptr %fc47, align 4, !dbg !2390
  br label %if.end54, !dbg !2391

if.else49:                                        ; preds = %if.else41
  %32 = load ptr, ptr %s.addr, align 8, !dbg !2392
  %bl_tree50 = getelementptr inbounds %struct.deflate_state, ptr %32, i32 0, i32 38, !dbg !2394
  %arrayidx51 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree50, i64 0, i64 18, !dbg !2392
  %fc52 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx51, i32 0, i32 0, !dbg !2395
  %33 = load i16, ptr %fc52, align 4, !dbg !2396
  %inc53 = add i16 %33, 1, !dbg !2396
  store i16 %inc53, ptr %fc52, align 4, !dbg !2396
  br label %if.end54

if.end54:                                         ; preds = %if.else49, %if.then44
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end36
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then18
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  store i32 0, ptr %count, align 4, !dbg !2397
  %34 = load i32, ptr %curlen, align 4, !dbg !2398
  store i32 %34, ptr %prevlen, align 4, !dbg !2399
  %35 = load i32, ptr %nextlen, align 4, !dbg !2400
  %cmp58 = icmp eq i32 %35, 0, !dbg !2402
  br i1 %cmp58, label %if.then60, label %if.else61, !dbg !2403

if.then60:                                        ; preds = %if.end57
  store i32 138, ptr %max_count, align 4, !dbg !2404
  store i32 3, ptr %min_count, align 4, !dbg !2406
  br label %if.end67, !dbg !2407

if.else61:                                        ; preds = %if.end57
  %36 = load i32, ptr %curlen, align 4, !dbg !2408
  %37 = load i32, ptr %nextlen, align 4, !dbg !2410
  %cmp62 = icmp eq i32 %36, %37, !dbg !2411
  br i1 %cmp62, label %if.then64, label %if.else65, !dbg !2412

if.then64:                                        ; preds = %if.else61
  store i32 6, ptr %max_count, align 4, !dbg !2413
  store i32 3, ptr %min_count, align 4, !dbg !2415
  br label %if.end66, !dbg !2416

if.else65:                                        ; preds = %if.else61
  store i32 7, ptr %max_count, align 4, !dbg !2417
  store i32 4, ptr %min_count, align 4, !dbg !2419
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then64
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then60
  br label %for.inc, !dbg !2420

for.inc:                                          ; preds = %if.end67, %if.then15
  %38 = load i32, ptr %n, align 4, !dbg !2421
  %inc68 = add i32 %38, 1, !dbg !2421
  store i32 %inc68, ptr %n, align 4, !dbg !2421
  br label %for.cond, !dbg !2422, !llvm.loop !2423

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_count) #7, !dbg !2425
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_count) #7, !dbg !2425
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #7, !dbg !2425
  call void @llvm.lifetime.end.p0(i64 4, ptr %nextlen) #7, !dbg !2425
  call void @llvm.lifetime.end.p0(i64 4, ptr %curlen) #7, !dbg !2425
  call void @llvm.lifetime.end.p0(i64 4, ptr %prevlen) #7, !dbg !2425
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !2425
  ret void, !dbg !2425
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @send_tree(ptr noundef %s, ptr noundef %tree, i32 noundef %max_code) #0 align 16 !dbg !2426 {
entry:
  %s.addr = alloca ptr, align 8
  %tree.addr = alloca ptr, align 8
  %max_code.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %prevlen = alloca i32, align 4
  %curlen = alloca i32, align 4
  %nextlen = alloca i32, align 4
  %count = alloca i32, align 4
  %max_count = alloca i32, align 4
  %min_count = alloca i32, align 4
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %len81 = alloca i32, align 4
  %val92 = alloca i32, align 4
  %len154 = alloca i32, align 4
  %val164 = alloca i32, align 4
  %len222 = alloca i32, align 4
  %val228 = alloca i32, align 4
  %len284 = alloca i32, align 4
  %val294 = alloca i32, align 4
  %len352 = alloca i32, align 4
  %val358 = alloca i32, align 4
  %len411 = alloca i32, align 4
  %val421 = alloca i32, align 4
  %len479 = alloca i32, align 4
  %val485 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2428, metadata !DIExpression()), !dbg !2492
  store ptr %tree, ptr %tree.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tree.addr, metadata !2429, metadata !DIExpression()), !dbg !2493
  store i32 %max_code, ptr %max_code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_code.addr, metadata !2430, metadata !DIExpression()), !dbg !2494
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !2495
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2431, metadata !DIExpression()), !dbg !2496
  call void @llvm.lifetime.start.p0(i64 4, ptr %prevlen) #7, !dbg !2497
  call void @llvm.dbg.declare(metadata ptr %prevlen, metadata !2432, metadata !DIExpression()), !dbg !2498
  store i32 -1, ptr %prevlen, align 4, !dbg !2498
  call void @llvm.lifetime.start.p0(i64 4, ptr %curlen) #7, !dbg !2499
  call void @llvm.dbg.declare(metadata ptr %curlen, metadata !2433, metadata !DIExpression()), !dbg !2500
  call void @llvm.lifetime.start.p0(i64 4, ptr %nextlen) #7, !dbg !2501
  call void @llvm.dbg.declare(metadata ptr %nextlen, metadata !2434, metadata !DIExpression()), !dbg !2502
  %0 = load ptr, ptr %tree.addr, align 8, !dbg !2503
  %arrayidx = getelementptr %struct.ct_data_s, ptr %0, i64 0, !dbg !2503
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx, i32 0, i32 1, !dbg !2504
  %1 = load i16, ptr %dl, align 2, !dbg !2504
  %conv = zext i16 %1 to i32, !dbg !2503
  store i32 %conv, ptr %nextlen, align 4, !dbg !2502
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #7, !dbg !2505
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2435, metadata !DIExpression()), !dbg !2506
  store i32 0, ptr %count, align 4, !dbg !2506
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_count) #7, !dbg !2507
  call void @llvm.dbg.declare(metadata ptr %max_count, metadata !2436, metadata !DIExpression()), !dbg !2508
  store i32 7, ptr %max_count, align 4, !dbg !2508
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_count) #7, !dbg !2509
  call void @llvm.dbg.declare(metadata ptr %min_count, metadata !2437, metadata !DIExpression()), !dbg !2510
  store i32 4, ptr %min_count, align 4, !dbg !2510
  %2 = load i32, ptr %nextlen, align 4, !dbg !2511
  %cmp = icmp eq i32 %2, 0, !dbg !2513
  br i1 %cmp, label %if.then, label %if.end, !dbg !2514

if.then:                                          ; preds = %entry
  store i32 138, ptr %max_count, align 4, !dbg !2515
  store i32 3, ptr %min_count, align 4, !dbg !2516
  br label %if.end, !dbg !2517

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %n, align 4, !dbg !2518
  br label %for.cond, !dbg !2519

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %n, align 4, !dbg !2520
  %4 = load i32, ptr %max_code.addr, align 4, !dbg !2521
  %cmp2 = icmp sle i32 %3, %4, !dbg !2522
  br i1 %cmp2, label %for.body, label %for.end, !dbg !2523

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %nextlen, align 4, !dbg !2524
  store i32 %5, ptr %curlen, align 4, !dbg !2525
  %6 = load ptr, ptr %tree.addr, align 8, !dbg !2526
  %7 = load i32, ptr %n, align 4, !dbg !2527
  %add = add i32 %7, 1, !dbg !2528
  %idxprom = sext i32 %add to i64, !dbg !2526
  %arrayidx4 = getelementptr %struct.ct_data_s, ptr %6, i64 %idxprom, !dbg !2526
  %dl5 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx4, i32 0, i32 1, !dbg !2529
  %8 = load i16, ptr %dl5, align 2, !dbg !2529
  %conv6 = zext i16 %8 to i32, !dbg !2526
  store i32 %conv6, ptr %nextlen, align 4, !dbg !2530
  %9 = load i32, ptr %count, align 4, !dbg !2531
  %inc = add i32 %9, 1, !dbg !2531
  store i32 %inc, ptr %count, align 4, !dbg !2531
  %10 = load i32, ptr %max_count, align 4, !dbg !2532
  %cmp7 = icmp slt i32 %inc, %10, !dbg !2533
  br i1 %cmp7, label %land.lhs.true, label %if.else, !dbg !2534

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, ptr %curlen, align 4, !dbg !2535
  %12 = load i32, ptr %nextlen, align 4, !dbg !2536
  %cmp9 = icmp eq i32 %11, %12, !dbg !2537
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !2538

if.then11:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !2539

if.else:                                          ; preds = %land.lhs.true, %for.body
  %13 = load i32, ptr %count, align 4, !dbg !2541
  %14 = load i32, ptr %min_count, align 4, !dbg !2542
  %cmp12 = icmp slt i32 %13, %14, !dbg !2543
  br i1 %cmp12, label %if.then14, label %if.else74, !dbg !2544

if.then14:                                        ; preds = %if.else
  br label %do.body, !dbg !2545

do.body:                                          ; preds = %do.cond, %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7, !dbg !2546
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2438, metadata !DIExpression()), !dbg !2546
  %15 = load ptr, ptr %s.addr, align 8, !dbg !2546
  %bl_tree = getelementptr inbounds %struct.deflate_state, ptr %15, i32 0, i32 38, !dbg !2546
  %16 = load i32, ptr %curlen, align 4, !dbg !2546
  %idxprom15 = sext i32 %16 to i64, !dbg !2546
  %arrayidx16 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 %idxprom15, !dbg !2546
  %dl17 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx16, i32 0, i32 1, !dbg !2546
  %17 = load i16, ptr %dl17, align 2, !dbg !2546
  %conv18 = zext i16 %17 to i32, !dbg !2546
  store i32 %conv18, ptr %len, align 4, !dbg !2546
  %18 = load ptr, ptr %s.addr, align 8, !dbg !2547
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %18, i32 0, i32 57, !dbg !2547
  %19 = load i32, ptr %bi_valid, align 4, !dbg !2547
  %20 = load i32, ptr %len, align 4, !dbg !2547
  %sub = sub i32 16, %20, !dbg !2547
  %cmp19 = icmp sgt i32 %19, %sub, !dbg !2547
  br i1 %cmp19, label %if.then21, label %if.else57, !dbg !2546

if.then21:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #7, !dbg !2548
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2447, metadata !DIExpression()), !dbg !2548
  %21 = load ptr, ptr %s.addr, align 8, !dbg !2548
  %bl_tree22 = getelementptr inbounds %struct.deflate_state, ptr %21, i32 0, i32 38, !dbg !2548
  %22 = load i32, ptr %curlen, align 4, !dbg !2548
  %idxprom23 = sext i32 %22 to i64, !dbg !2548
  %arrayidx24 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree22, i64 0, i64 %idxprom23, !dbg !2548
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx24, i32 0, i32 0, !dbg !2548
  %23 = load i16, ptr %fc, align 4, !dbg !2548
  %conv25 = zext i16 %23 to i32, !dbg !2548
  store i32 %conv25, ptr %val, align 4, !dbg !2548
  %24 = load i32, ptr %val, align 4, !dbg !2548
  %25 = load ptr, ptr %s.addr, align 8, !dbg !2548
  %bi_valid26 = getelementptr inbounds %struct.deflate_state, ptr %25, i32 0, i32 57, !dbg !2548
  %26 = load i32, ptr %bi_valid26, align 4, !dbg !2548
  %shl = shl i32 %24, %26, !dbg !2548
  %27 = load ptr, ptr %s.addr, align 8, !dbg !2548
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %27, i32 0, i32 56, !dbg !2548
  %28 = load i16, ptr %bi_buf, align 8, !dbg !2548
  %conv27 = zext i16 %28 to i32, !dbg !2548
  %or = or i32 %conv27, %shl, !dbg !2548
  %conv28 = trunc i32 %or to i16, !dbg !2548
  store i16 %conv28, ptr %bi_buf, align 8, !dbg !2548
  %29 = load ptr, ptr %s.addr, align 8, !dbg !2549
  %bi_buf29 = getelementptr inbounds %struct.deflate_state, ptr %29, i32 0, i32 56, !dbg !2549
  %30 = load i16, ptr %bi_buf29, align 8, !dbg !2549
  %conv30 = zext i16 %30 to i32, !dbg !2549
  %and = and i32 %conv30, 255, !dbg !2549
  %conv31 = trunc i32 %and to i8, !dbg !2549
  %31 = load ptr, ptr %s.addr, align 8, !dbg !2549
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %31, i32 0, i32 2, !dbg !2549
  %32 = load ptr, ptr %pending_buf, align 8, !dbg !2549
  %33 = load ptr, ptr %s.addr, align 8, !dbg !2549
  %pending = getelementptr inbounds %struct.deflate_state, ptr %33, i32 0, i32 5, !dbg !2549
  %34 = load i32, ptr %pending, align 8, !dbg !2549
  %inc32 = add i32 %34, 1, !dbg !2549
  store i32 %inc32, ptr %pending, align 8, !dbg !2549
  %idxprom33 = sext i32 %34 to i64, !dbg !2549
  %arrayidx34 = getelementptr i8, ptr %32, i64 %idxprom33, !dbg !2549
  store i8 %conv31, ptr %arrayidx34, align 1, !dbg !2549
  %35 = load ptr, ptr %s.addr, align 8, !dbg !2552
  %bi_buf35 = getelementptr inbounds %struct.deflate_state, ptr %35, i32 0, i32 56, !dbg !2552
  %36 = load i16, ptr %bi_buf35, align 8, !dbg !2552
  %conv36 = zext i16 %36 to i32, !dbg !2552
  %shr = ashr i32 %conv36, 8, !dbg !2552
  %conv37 = trunc i32 %shr to i8, !dbg !2552
  %37 = load ptr, ptr %s.addr, align 8, !dbg !2552
  %pending_buf38 = getelementptr inbounds %struct.deflate_state, ptr %37, i32 0, i32 2, !dbg !2552
  %38 = load ptr, ptr %pending_buf38, align 8, !dbg !2552
  %39 = load ptr, ptr %s.addr, align 8, !dbg !2552
  %pending39 = getelementptr inbounds %struct.deflate_state, ptr %39, i32 0, i32 5, !dbg !2552
  %40 = load i32, ptr %pending39, align 8, !dbg !2552
  %inc40 = add i32 %40, 1, !dbg !2552
  store i32 %inc40, ptr %pending39, align 8, !dbg !2552
  %idxprom41 = sext i32 %40 to i64, !dbg !2552
  %arrayidx42 = getelementptr i8, ptr %38, i64 %idxprom41, !dbg !2552
  store i8 %conv37, ptr %arrayidx42, align 1, !dbg !2552
  %41 = load i32, ptr %val, align 4, !dbg !2548
  %conv43 = trunc i32 %41 to i16, !dbg !2548
  %conv44 = zext i16 %conv43 to i32, !dbg !2548
  %42 = load ptr, ptr %s.addr, align 8, !dbg !2548
  %bi_valid45 = getelementptr inbounds %struct.deflate_state, ptr %42, i32 0, i32 57, !dbg !2548
  %43 = load i32, ptr %bi_valid45, align 4, !dbg !2548
  %conv46 = sext i32 %43 to i64, !dbg !2548
  %sub47 = sub i64 16, %conv46, !dbg !2548
  %sh_prom = trunc i64 %sub47 to i32, !dbg !2548
  %shr48 = ashr i32 %conv44, %sh_prom, !dbg !2548
  %conv49 = trunc i32 %shr48 to i16, !dbg !2548
  %44 = load ptr, ptr %s.addr, align 8, !dbg !2548
  %bi_buf50 = getelementptr inbounds %struct.deflate_state, ptr %44, i32 0, i32 56, !dbg !2548
  store i16 %conv49, ptr %bi_buf50, align 8, !dbg !2548
  %45 = load i32, ptr %len, align 4, !dbg !2548
  %conv51 = sext i32 %45 to i64, !dbg !2548
  %sub52 = sub i64 %conv51, 16, !dbg !2548
  %46 = load ptr, ptr %s.addr, align 8, !dbg !2548
  %bi_valid53 = getelementptr inbounds %struct.deflate_state, ptr %46, i32 0, i32 57, !dbg !2548
  %47 = load i32, ptr %bi_valid53, align 4, !dbg !2548
  %conv54 = sext i32 %47 to i64, !dbg !2548
  %add55 = add i64 %conv54, %sub52, !dbg !2548
  %conv56 = trunc i64 %add55 to i32, !dbg !2548
  store i32 %conv56, ptr %bi_valid53, align 4, !dbg !2548
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #7, !dbg !2547
  br label %if.end71, !dbg !2548

if.else57:                                        ; preds = %do.body
  %48 = load ptr, ptr %s.addr, align 8, !dbg !2554
  %bl_tree58 = getelementptr inbounds %struct.deflate_state, ptr %48, i32 0, i32 38, !dbg !2554
  %49 = load i32, ptr %curlen, align 4, !dbg !2554
  %idxprom59 = sext i32 %49 to i64, !dbg !2554
  %arrayidx60 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree58, i64 0, i64 %idxprom59, !dbg !2554
  %fc61 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx60, i32 0, i32 0, !dbg !2554
  %50 = load i16, ptr %fc61, align 4, !dbg !2554
  %conv62 = zext i16 %50 to i32, !dbg !2554
  %51 = load ptr, ptr %s.addr, align 8, !dbg !2554
  %bi_valid63 = getelementptr inbounds %struct.deflate_state, ptr %51, i32 0, i32 57, !dbg !2554
  %52 = load i32, ptr %bi_valid63, align 4, !dbg !2554
  %shl64 = shl i32 %conv62, %52, !dbg !2554
  %53 = load ptr, ptr %s.addr, align 8, !dbg !2554
  %bi_buf65 = getelementptr inbounds %struct.deflate_state, ptr %53, i32 0, i32 56, !dbg !2554
  %54 = load i16, ptr %bi_buf65, align 8, !dbg !2554
  %conv66 = zext i16 %54 to i32, !dbg !2554
  %or67 = or i32 %conv66, %shl64, !dbg !2554
  %conv68 = trunc i32 %or67 to i16, !dbg !2554
  store i16 %conv68, ptr %bi_buf65, align 8, !dbg !2554
  %55 = load i32, ptr %len, align 4, !dbg !2554
  %56 = load ptr, ptr %s.addr, align 8, !dbg !2554
  %bi_valid69 = getelementptr inbounds %struct.deflate_state, ptr %56, i32 0, i32 57, !dbg !2554
  %57 = load i32, ptr %bi_valid69, align 4, !dbg !2554
  %add70 = add i32 %57, %55, !dbg !2554
  store i32 %add70, ptr %bi_valid69, align 4, !dbg !2554
  br label %if.end71

if.end71:                                         ; preds = %if.else57, %if.then21
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7, !dbg !2556
  br label %do.cond, !dbg !2557

do.cond:                                          ; preds = %if.end71
  %58 = load i32, ptr %count, align 4, !dbg !2558
  %dec = add i32 %58, -1, !dbg !2558
  store i32 %dec, ptr %count, align 4, !dbg !2558
  %cmp72 = icmp ne i32 %dec, 0, !dbg !2559
  br i1 %cmp72, label %do.body, label %do.end, !dbg !2557, !llvm.loop !2560

do.end:                                           ; preds = %do.cond
  br label %if.end539, !dbg !2562

if.else74:                                        ; preds = %if.else
  %59 = load i32, ptr %curlen, align 4, !dbg !2563
  %cmp75 = icmp ne i32 %59, 0, !dbg !2564
  br i1 %cmp75, label %if.then77, label %if.else280, !dbg !2565

if.then77:                                        ; preds = %if.else74
  %60 = load i32, ptr %curlen, align 4, !dbg !2566
  %61 = load i32, ptr %prevlen, align 4, !dbg !2567
  %cmp78 = icmp ne i32 %60, %61, !dbg !2568
  br i1 %cmp78, label %if.then80, label %if.end153, !dbg !2569

if.then80:                                        ; preds = %if.then77
  call void @llvm.lifetime.start.p0(i64 4, ptr %len81) #7, !dbg !2570
  call void @llvm.dbg.declare(metadata ptr %len81, metadata !2450, metadata !DIExpression()), !dbg !2570
  %62 = load ptr, ptr %s.addr, align 8, !dbg !2570
  %bl_tree82 = getelementptr inbounds %struct.deflate_state, ptr %62, i32 0, i32 38, !dbg !2570
  %63 = load i32, ptr %curlen, align 4, !dbg !2570
  %idxprom83 = sext i32 %63 to i64, !dbg !2570
  %arrayidx84 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree82, i64 0, i64 %idxprom83, !dbg !2570
  %dl85 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx84, i32 0, i32 1, !dbg !2570
  %64 = load i16, ptr %dl85, align 2, !dbg !2570
  %conv86 = zext i16 %64 to i32, !dbg !2570
  store i32 %conv86, ptr %len81, align 4, !dbg !2570
  %65 = load ptr, ptr %s.addr, align 8, !dbg !2571
  %bi_valid87 = getelementptr inbounds %struct.deflate_state, ptr %65, i32 0, i32 57, !dbg !2571
  %66 = load i32, ptr %bi_valid87, align 4, !dbg !2571
  %67 = load i32, ptr %len81, align 4, !dbg !2571
  %sub88 = sub i32 16, %67, !dbg !2571
  %cmp89 = icmp sgt i32 %66, %sub88, !dbg !2571
  br i1 %cmp89, label %if.then91, label %if.else137, !dbg !2570

if.then91:                                        ; preds = %if.then80
  call void @llvm.lifetime.start.p0(i64 4, ptr %val92) #7, !dbg !2572
  call void @llvm.dbg.declare(metadata ptr %val92, metadata !2456, metadata !DIExpression()), !dbg !2572
  %68 = load ptr, ptr %s.addr, align 8, !dbg !2572
  %bl_tree93 = getelementptr inbounds %struct.deflate_state, ptr %68, i32 0, i32 38, !dbg !2572
  %69 = load i32, ptr %curlen, align 4, !dbg !2572
  %idxprom94 = sext i32 %69 to i64, !dbg !2572
  %arrayidx95 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree93, i64 0, i64 %idxprom94, !dbg !2572
  %fc96 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx95, i32 0, i32 0, !dbg !2572
  %70 = load i16, ptr %fc96, align 4, !dbg !2572
  %conv97 = zext i16 %70 to i32, !dbg !2572
  store i32 %conv97, ptr %val92, align 4, !dbg !2572
  %71 = load i32, ptr %val92, align 4, !dbg !2572
  %72 = load ptr, ptr %s.addr, align 8, !dbg !2572
  %bi_valid98 = getelementptr inbounds %struct.deflate_state, ptr %72, i32 0, i32 57, !dbg !2572
  %73 = load i32, ptr %bi_valid98, align 4, !dbg !2572
  %shl99 = shl i32 %71, %73, !dbg !2572
  %74 = load ptr, ptr %s.addr, align 8, !dbg !2572
  %bi_buf100 = getelementptr inbounds %struct.deflate_state, ptr %74, i32 0, i32 56, !dbg !2572
  %75 = load i16, ptr %bi_buf100, align 8, !dbg !2572
  %conv101 = zext i16 %75 to i32, !dbg !2572
  %or102 = or i32 %conv101, %shl99, !dbg !2572
  %conv103 = trunc i32 %or102 to i16, !dbg !2572
  store i16 %conv103, ptr %bi_buf100, align 8, !dbg !2572
  %76 = load ptr, ptr %s.addr, align 8, !dbg !2573
  %bi_buf104 = getelementptr inbounds %struct.deflate_state, ptr %76, i32 0, i32 56, !dbg !2573
  %77 = load i16, ptr %bi_buf104, align 8, !dbg !2573
  %conv105 = zext i16 %77 to i32, !dbg !2573
  %and106 = and i32 %conv105, 255, !dbg !2573
  %conv107 = trunc i32 %and106 to i8, !dbg !2573
  %78 = load ptr, ptr %s.addr, align 8, !dbg !2573
  %pending_buf108 = getelementptr inbounds %struct.deflate_state, ptr %78, i32 0, i32 2, !dbg !2573
  %79 = load ptr, ptr %pending_buf108, align 8, !dbg !2573
  %80 = load ptr, ptr %s.addr, align 8, !dbg !2573
  %pending109 = getelementptr inbounds %struct.deflate_state, ptr %80, i32 0, i32 5, !dbg !2573
  %81 = load i32, ptr %pending109, align 8, !dbg !2573
  %inc110 = add i32 %81, 1, !dbg !2573
  store i32 %inc110, ptr %pending109, align 8, !dbg !2573
  %idxprom111 = sext i32 %81 to i64, !dbg !2573
  %arrayidx112 = getelementptr i8, ptr %79, i64 %idxprom111, !dbg !2573
  store i8 %conv107, ptr %arrayidx112, align 1, !dbg !2573
  %82 = load ptr, ptr %s.addr, align 8, !dbg !2576
  %bi_buf113 = getelementptr inbounds %struct.deflate_state, ptr %82, i32 0, i32 56, !dbg !2576
  %83 = load i16, ptr %bi_buf113, align 8, !dbg !2576
  %conv114 = zext i16 %83 to i32, !dbg !2576
  %shr115 = ashr i32 %conv114, 8, !dbg !2576
  %conv116 = trunc i32 %shr115 to i8, !dbg !2576
  %84 = load ptr, ptr %s.addr, align 8, !dbg !2576
  %pending_buf117 = getelementptr inbounds %struct.deflate_state, ptr %84, i32 0, i32 2, !dbg !2576
  %85 = load ptr, ptr %pending_buf117, align 8, !dbg !2576
  %86 = load ptr, ptr %s.addr, align 8, !dbg !2576
  %pending118 = getelementptr inbounds %struct.deflate_state, ptr %86, i32 0, i32 5, !dbg !2576
  %87 = load i32, ptr %pending118, align 8, !dbg !2576
  %inc119 = add i32 %87, 1, !dbg !2576
  store i32 %inc119, ptr %pending118, align 8, !dbg !2576
  %idxprom120 = sext i32 %87 to i64, !dbg !2576
  %arrayidx121 = getelementptr i8, ptr %85, i64 %idxprom120, !dbg !2576
  store i8 %conv116, ptr %arrayidx121, align 1, !dbg !2576
  %88 = load i32, ptr %val92, align 4, !dbg !2572
  %conv122 = trunc i32 %88 to i16, !dbg !2572
  %conv123 = zext i16 %conv122 to i32, !dbg !2572
  %89 = load ptr, ptr %s.addr, align 8, !dbg !2572
  %bi_valid124 = getelementptr inbounds %struct.deflate_state, ptr %89, i32 0, i32 57, !dbg !2572
  %90 = load i32, ptr %bi_valid124, align 4, !dbg !2572
  %conv125 = sext i32 %90 to i64, !dbg !2572
  %sub126 = sub i64 16, %conv125, !dbg !2572
  %sh_prom127 = trunc i64 %sub126 to i32, !dbg !2572
  %shr128 = ashr i32 %conv123, %sh_prom127, !dbg !2572
  %conv129 = trunc i32 %shr128 to i16, !dbg !2572
  %91 = load ptr, ptr %s.addr, align 8, !dbg !2572
  %bi_buf130 = getelementptr inbounds %struct.deflate_state, ptr %91, i32 0, i32 56, !dbg !2572
  store i16 %conv129, ptr %bi_buf130, align 8, !dbg !2572
  %92 = load i32, ptr %len81, align 4, !dbg !2572
  %conv131 = sext i32 %92 to i64, !dbg !2572
  %sub132 = sub i64 %conv131, 16, !dbg !2572
  %93 = load ptr, ptr %s.addr, align 8, !dbg !2572
  %bi_valid133 = getelementptr inbounds %struct.deflate_state, ptr %93, i32 0, i32 57, !dbg !2572
  %94 = load i32, ptr %bi_valid133, align 4, !dbg !2572
  %conv134 = sext i32 %94 to i64, !dbg !2572
  %add135 = add i64 %conv134, %sub132, !dbg !2572
  %conv136 = trunc i64 %add135 to i32, !dbg !2572
  store i32 %conv136, ptr %bi_valid133, align 4, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 4, ptr %val92) #7, !dbg !2571
  br label %if.end151, !dbg !2572

if.else137:                                       ; preds = %if.then80
  %95 = load ptr, ptr %s.addr, align 8, !dbg !2578
  %bl_tree138 = getelementptr inbounds %struct.deflate_state, ptr %95, i32 0, i32 38, !dbg !2578
  %96 = load i32, ptr %curlen, align 4, !dbg !2578
  %idxprom139 = sext i32 %96 to i64, !dbg !2578
  %arrayidx140 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree138, i64 0, i64 %idxprom139, !dbg !2578
  %fc141 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx140, i32 0, i32 0, !dbg !2578
  %97 = load i16, ptr %fc141, align 4, !dbg !2578
  %conv142 = zext i16 %97 to i32, !dbg !2578
  %98 = load ptr, ptr %s.addr, align 8, !dbg !2578
  %bi_valid143 = getelementptr inbounds %struct.deflate_state, ptr %98, i32 0, i32 57, !dbg !2578
  %99 = load i32, ptr %bi_valid143, align 4, !dbg !2578
  %shl144 = shl i32 %conv142, %99, !dbg !2578
  %100 = load ptr, ptr %s.addr, align 8, !dbg !2578
  %bi_buf145 = getelementptr inbounds %struct.deflate_state, ptr %100, i32 0, i32 56, !dbg !2578
  %101 = load i16, ptr %bi_buf145, align 8, !dbg !2578
  %conv146 = zext i16 %101 to i32, !dbg !2578
  %or147 = or i32 %conv146, %shl144, !dbg !2578
  %conv148 = trunc i32 %or147 to i16, !dbg !2578
  store i16 %conv148, ptr %bi_buf145, align 8, !dbg !2578
  %102 = load i32, ptr %len81, align 4, !dbg !2578
  %103 = load ptr, ptr %s.addr, align 8, !dbg !2578
  %bi_valid149 = getelementptr inbounds %struct.deflate_state, ptr %103, i32 0, i32 57, !dbg !2578
  %104 = load i32, ptr %bi_valid149, align 4, !dbg !2578
  %add150 = add i32 %104, %102, !dbg !2578
  store i32 %add150, ptr %bi_valid149, align 4, !dbg !2578
  br label %if.end151

if.end151:                                        ; preds = %if.else137, %if.then91
  call void @llvm.lifetime.end.p0(i64 4, ptr %len81) #7, !dbg !2580
  %105 = load i32, ptr %count, align 4, !dbg !2581
  %dec152 = add i32 %105, -1, !dbg !2581
  store i32 %dec152, ptr %count, align 4, !dbg !2581
  br label %if.end153, !dbg !2582

if.end153:                                        ; preds = %if.end151, %if.then77
  call void @llvm.lifetime.start.p0(i64 4, ptr %len154) #7, !dbg !2583
  call void @llvm.dbg.declare(metadata ptr %len154, metadata !2459, metadata !DIExpression()), !dbg !2583
  %106 = load ptr, ptr %s.addr, align 8, !dbg !2583
  %bl_tree155 = getelementptr inbounds %struct.deflate_state, ptr %106, i32 0, i32 38, !dbg !2583
  %arrayidx156 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree155, i64 0, i64 16, !dbg !2583
  %dl157 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx156, i32 0, i32 1, !dbg !2583
  %107 = load i16, ptr %dl157, align 2, !dbg !2583
  %conv158 = zext i16 %107 to i32, !dbg !2583
  store i32 %conv158, ptr %len154, align 4, !dbg !2583
  %108 = load ptr, ptr %s.addr, align 8, !dbg !2584
  %bi_valid159 = getelementptr inbounds %struct.deflate_state, ptr %108, i32 0, i32 57, !dbg !2584
  %109 = load i32, ptr %bi_valid159, align 4, !dbg !2584
  %110 = load i32, ptr %len154, align 4, !dbg !2584
  %sub160 = sub i32 16, %110, !dbg !2584
  %cmp161 = icmp sgt i32 %109, %sub160, !dbg !2584
  br i1 %cmp161, label %if.then163, label %if.else208, !dbg !2583

if.then163:                                       ; preds = %if.end153
  call void @llvm.lifetime.start.p0(i64 4, ptr %val164) #7, !dbg !2585
  call void @llvm.dbg.declare(metadata ptr %val164, metadata !2461, metadata !DIExpression()), !dbg !2585
  %111 = load ptr, ptr %s.addr, align 8, !dbg !2585
  %bl_tree165 = getelementptr inbounds %struct.deflate_state, ptr %111, i32 0, i32 38, !dbg !2585
  %arrayidx166 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree165, i64 0, i64 16, !dbg !2585
  %fc167 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx166, i32 0, i32 0, !dbg !2585
  %112 = load i16, ptr %fc167, align 4, !dbg !2585
  %conv168 = zext i16 %112 to i32, !dbg !2585
  store i32 %conv168, ptr %val164, align 4, !dbg !2585
  %113 = load i32, ptr %val164, align 4, !dbg !2585
  %114 = load ptr, ptr %s.addr, align 8, !dbg !2585
  %bi_valid169 = getelementptr inbounds %struct.deflate_state, ptr %114, i32 0, i32 57, !dbg !2585
  %115 = load i32, ptr %bi_valid169, align 4, !dbg !2585
  %shl170 = shl i32 %113, %115, !dbg !2585
  %116 = load ptr, ptr %s.addr, align 8, !dbg !2585
  %bi_buf171 = getelementptr inbounds %struct.deflate_state, ptr %116, i32 0, i32 56, !dbg !2585
  %117 = load i16, ptr %bi_buf171, align 8, !dbg !2585
  %conv172 = zext i16 %117 to i32, !dbg !2585
  %or173 = or i32 %conv172, %shl170, !dbg !2585
  %conv174 = trunc i32 %or173 to i16, !dbg !2585
  store i16 %conv174, ptr %bi_buf171, align 8, !dbg !2585
  %118 = load ptr, ptr %s.addr, align 8, !dbg !2586
  %bi_buf175 = getelementptr inbounds %struct.deflate_state, ptr %118, i32 0, i32 56, !dbg !2586
  %119 = load i16, ptr %bi_buf175, align 8, !dbg !2586
  %conv176 = zext i16 %119 to i32, !dbg !2586
  %and177 = and i32 %conv176, 255, !dbg !2586
  %conv178 = trunc i32 %and177 to i8, !dbg !2586
  %120 = load ptr, ptr %s.addr, align 8, !dbg !2586
  %pending_buf179 = getelementptr inbounds %struct.deflate_state, ptr %120, i32 0, i32 2, !dbg !2586
  %121 = load ptr, ptr %pending_buf179, align 8, !dbg !2586
  %122 = load ptr, ptr %s.addr, align 8, !dbg !2586
  %pending180 = getelementptr inbounds %struct.deflate_state, ptr %122, i32 0, i32 5, !dbg !2586
  %123 = load i32, ptr %pending180, align 8, !dbg !2586
  %inc181 = add i32 %123, 1, !dbg !2586
  store i32 %inc181, ptr %pending180, align 8, !dbg !2586
  %idxprom182 = sext i32 %123 to i64, !dbg !2586
  %arrayidx183 = getelementptr i8, ptr %121, i64 %idxprom182, !dbg !2586
  store i8 %conv178, ptr %arrayidx183, align 1, !dbg !2586
  %124 = load ptr, ptr %s.addr, align 8, !dbg !2589
  %bi_buf184 = getelementptr inbounds %struct.deflate_state, ptr %124, i32 0, i32 56, !dbg !2589
  %125 = load i16, ptr %bi_buf184, align 8, !dbg !2589
  %conv185 = zext i16 %125 to i32, !dbg !2589
  %shr186 = ashr i32 %conv185, 8, !dbg !2589
  %conv187 = trunc i32 %shr186 to i8, !dbg !2589
  %126 = load ptr, ptr %s.addr, align 8, !dbg !2589
  %pending_buf188 = getelementptr inbounds %struct.deflate_state, ptr %126, i32 0, i32 2, !dbg !2589
  %127 = load ptr, ptr %pending_buf188, align 8, !dbg !2589
  %128 = load ptr, ptr %s.addr, align 8, !dbg !2589
  %pending189 = getelementptr inbounds %struct.deflate_state, ptr %128, i32 0, i32 5, !dbg !2589
  %129 = load i32, ptr %pending189, align 8, !dbg !2589
  %inc190 = add i32 %129, 1, !dbg !2589
  store i32 %inc190, ptr %pending189, align 8, !dbg !2589
  %idxprom191 = sext i32 %129 to i64, !dbg !2589
  %arrayidx192 = getelementptr i8, ptr %127, i64 %idxprom191, !dbg !2589
  store i8 %conv187, ptr %arrayidx192, align 1, !dbg !2589
  %130 = load i32, ptr %val164, align 4, !dbg !2585
  %conv193 = trunc i32 %130 to i16, !dbg !2585
  %conv194 = zext i16 %conv193 to i32, !dbg !2585
  %131 = load ptr, ptr %s.addr, align 8, !dbg !2585
  %bi_valid195 = getelementptr inbounds %struct.deflate_state, ptr %131, i32 0, i32 57, !dbg !2585
  %132 = load i32, ptr %bi_valid195, align 4, !dbg !2585
  %conv196 = sext i32 %132 to i64, !dbg !2585
  %sub197 = sub i64 16, %conv196, !dbg !2585
  %sh_prom198 = trunc i64 %sub197 to i32, !dbg !2585
  %shr199 = ashr i32 %conv194, %sh_prom198, !dbg !2585
  %conv200 = trunc i32 %shr199 to i16, !dbg !2585
  %133 = load ptr, ptr %s.addr, align 8, !dbg !2585
  %bi_buf201 = getelementptr inbounds %struct.deflate_state, ptr %133, i32 0, i32 56, !dbg !2585
  store i16 %conv200, ptr %bi_buf201, align 8, !dbg !2585
  %134 = load i32, ptr %len154, align 4, !dbg !2585
  %conv202 = sext i32 %134 to i64, !dbg !2585
  %sub203 = sub i64 %conv202, 16, !dbg !2585
  %135 = load ptr, ptr %s.addr, align 8, !dbg !2585
  %bi_valid204 = getelementptr inbounds %struct.deflate_state, ptr %135, i32 0, i32 57, !dbg !2585
  %136 = load i32, ptr %bi_valid204, align 4, !dbg !2585
  %conv205 = sext i32 %136 to i64, !dbg !2585
  %add206 = add i64 %conv205, %sub203, !dbg !2585
  %conv207 = trunc i64 %add206 to i32, !dbg !2585
  store i32 %conv207, ptr %bi_valid204, align 4, !dbg !2585
  call void @llvm.lifetime.end.p0(i64 4, ptr %val164) #7, !dbg !2584
  br label %if.end221, !dbg !2585

if.else208:                                       ; preds = %if.end153
  %137 = load ptr, ptr %s.addr, align 8, !dbg !2591
  %bl_tree209 = getelementptr inbounds %struct.deflate_state, ptr %137, i32 0, i32 38, !dbg !2591
  %arrayidx210 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree209, i64 0, i64 16, !dbg !2591
  %fc211 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx210, i32 0, i32 0, !dbg !2591
  %138 = load i16, ptr %fc211, align 4, !dbg !2591
  %conv212 = zext i16 %138 to i32, !dbg !2591
  %139 = load ptr, ptr %s.addr, align 8, !dbg !2591
  %bi_valid213 = getelementptr inbounds %struct.deflate_state, ptr %139, i32 0, i32 57, !dbg !2591
  %140 = load i32, ptr %bi_valid213, align 4, !dbg !2591
  %shl214 = shl i32 %conv212, %140, !dbg !2591
  %141 = load ptr, ptr %s.addr, align 8, !dbg !2591
  %bi_buf215 = getelementptr inbounds %struct.deflate_state, ptr %141, i32 0, i32 56, !dbg !2591
  %142 = load i16, ptr %bi_buf215, align 8, !dbg !2591
  %conv216 = zext i16 %142 to i32, !dbg !2591
  %or217 = or i32 %conv216, %shl214, !dbg !2591
  %conv218 = trunc i32 %or217 to i16, !dbg !2591
  store i16 %conv218, ptr %bi_buf215, align 8, !dbg !2591
  %143 = load i32, ptr %len154, align 4, !dbg !2591
  %144 = load ptr, ptr %s.addr, align 8, !dbg !2591
  %bi_valid219 = getelementptr inbounds %struct.deflate_state, ptr %144, i32 0, i32 57, !dbg !2591
  %145 = load i32, ptr %bi_valid219, align 4, !dbg !2591
  %add220 = add i32 %145, %143, !dbg !2591
  store i32 %add220, ptr %bi_valid219, align 4, !dbg !2591
  br label %if.end221

if.end221:                                        ; preds = %if.else208, %if.then163
  call void @llvm.lifetime.end.p0(i64 4, ptr %len154) #7, !dbg !2593
  call void @llvm.lifetime.start.p0(i64 4, ptr %len222) #7, !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %len222, metadata !2464, metadata !DIExpression()), !dbg !2594
  store i32 2, ptr %len222, align 4, !dbg !2594
  %146 = load ptr, ptr %s.addr, align 8, !dbg !2595
  %bi_valid223 = getelementptr inbounds %struct.deflate_state, ptr %146, i32 0, i32 57, !dbg !2595
  %147 = load i32, ptr %bi_valid223, align 4, !dbg !2595
  %148 = load i32, ptr %len222, align 4, !dbg !2595
  %sub224 = sub i32 16, %148, !dbg !2595
  %cmp225 = icmp sgt i32 %147, %sub224, !dbg !2595
  br i1 %cmp225, label %if.then227, label %if.else269, !dbg !2594

if.then227:                                       ; preds = %if.end221
  call void @llvm.lifetime.start.p0(i64 4, ptr %val228) #7, !dbg !2596
  call void @llvm.dbg.declare(metadata ptr %val228, metadata !2466, metadata !DIExpression()), !dbg !2596
  %149 = load i32, ptr %count, align 4, !dbg !2596
  %sub229 = sub i32 %149, 3, !dbg !2596
  store i32 %sub229, ptr %val228, align 4, !dbg !2596
  %150 = load i32, ptr %val228, align 4, !dbg !2596
  %151 = load ptr, ptr %s.addr, align 8, !dbg !2596
  %bi_valid230 = getelementptr inbounds %struct.deflate_state, ptr %151, i32 0, i32 57, !dbg !2596
  %152 = load i32, ptr %bi_valid230, align 4, !dbg !2596
  %shl231 = shl i32 %150, %152, !dbg !2596
  %153 = load ptr, ptr %s.addr, align 8, !dbg !2596
  %bi_buf232 = getelementptr inbounds %struct.deflate_state, ptr %153, i32 0, i32 56, !dbg !2596
  %154 = load i16, ptr %bi_buf232, align 8, !dbg !2596
  %conv233 = zext i16 %154 to i32, !dbg !2596
  %or234 = or i32 %conv233, %shl231, !dbg !2596
  %conv235 = trunc i32 %or234 to i16, !dbg !2596
  store i16 %conv235, ptr %bi_buf232, align 8, !dbg !2596
  %155 = load ptr, ptr %s.addr, align 8, !dbg !2597
  %bi_buf236 = getelementptr inbounds %struct.deflate_state, ptr %155, i32 0, i32 56, !dbg !2597
  %156 = load i16, ptr %bi_buf236, align 8, !dbg !2597
  %conv237 = zext i16 %156 to i32, !dbg !2597
  %and238 = and i32 %conv237, 255, !dbg !2597
  %conv239 = trunc i32 %and238 to i8, !dbg !2597
  %157 = load ptr, ptr %s.addr, align 8, !dbg !2597
  %pending_buf240 = getelementptr inbounds %struct.deflate_state, ptr %157, i32 0, i32 2, !dbg !2597
  %158 = load ptr, ptr %pending_buf240, align 8, !dbg !2597
  %159 = load ptr, ptr %s.addr, align 8, !dbg !2597
  %pending241 = getelementptr inbounds %struct.deflate_state, ptr %159, i32 0, i32 5, !dbg !2597
  %160 = load i32, ptr %pending241, align 8, !dbg !2597
  %inc242 = add i32 %160, 1, !dbg !2597
  store i32 %inc242, ptr %pending241, align 8, !dbg !2597
  %idxprom243 = sext i32 %160 to i64, !dbg !2597
  %arrayidx244 = getelementptr i8, ptr %158, i64 %idxprom243, !dbg !2597
  store i8 %conv239, ptr %arrayidx244, align 1, !dbg !2597
  %161 = load ptr, ptr %s.addr, align 8, !dbg !2600
  %bi_buf245 = getelementptr inbounds %struct.deflate_state, ptr %161, i32 0, i32 56, !dbg !2600
  %162 = load i16, ptr %bi_buf245, align 8, !dbg !2600
  %conv246 = zext i16 %162 to i32, !dbg !2600
  %shr247 = ashr i32 %conv246, 8, !dbg !2600
  %conv248 = trunc i32 %shr247 to i8, !dbg !2600
  %163 = load ptr, ptr %s.addr, align 8, !dbg !2600
  %pending_buf249 = getelementptr inbounds %struct.deflate_state, ptr %163, i32 0, i32 2, !dbg !2600
  %164 = load ptr, ptr %pending_buf249, align 8, !dbg !2600
  %165 = load ptr, ptr %s.addr, align 8, !dbg !2600
  %pending250 = getelementptr inbounds %struct.deflate_state, ptr %165, i32 0, i32 5, !dbg !2600
  %166 = load i32, ptr %pending250, align 8, !dbg !2600
  %inc251 = add i32 %166, 1, !dbg !2600
  store i32 %inc251, ptr %pending250, align 8, !dbg !2600
  %idxprom252 = sext i32 %166 to i64, !dbg !2600
  %arrayidx253 = getelementptr i8, ptr %164, i64 %idxprom252, !dbg !2600
  store i8 %conv248, ptr %arrayidx253, align 1, !dbg !2600
  %167 = load i32, ptr %val228, align 4, !dbg !2596
  %conv254 = trunc i32 %167 to i16, !dbg !2596
  %conv255 = zext i16 %conv254 to i32, !dbg !2596
  %168 = load ptr, ptr %s.addr, align 8, !dbg !2596
  %bi_valid256 = getelementptr inbounds %struct.deflate_state, ptr %168, i32 0, i32 57, !dbg !2596
  %169 = load i32, ptr %bi_valid256, align 4, !dbg !2596
  %conv257 = sext i32 %169 to i64, !dbg !2596
  %sub258 = sub i64 16, %conv257, !dbg !2596
  %sh_prom259 = trunc i64 %sub258 to i32, !dbg !2596
  %shr260 = ashr i32 %conv255, %sh_prom259, !dbg !2596
  %conv261 = trunc i32 %shr260 to i16, !dbg !2596
  %170 = load ptr, ptr %s.addr, align 8, !dbg !2596
  %bi_buf262 = getelementptr inbounds %struct.deflate_state, ptr %170, i32 0, i32 56, !dbg !2596
  store i16 %conv261, ptr %bi_buf262, align 8, !dbg !2596
  %171 = load i32, ptr %len222, align 4, !dbg !2596
  %conv263 = sext i32 %171 to i64, !dbg !2596
  %sub264 = sub i64 %conv263, 16, !dbg !2596
  %172 = load ptr, ptr %s.addr, align 8, !dbg !2596
  %bi_valid265 = getelementptr inbounds %struct.deflate_state, ptr %172, i32 0, i32 57, !dbg !2596
  %173 = load i32, ptr %bi_valid265, align 4, !dbg !2596
  %conv266 = sext i32 %173 to i64, !dbg !2596
  %add267 = add i64 %conv266, %sub264, !dbg !2596
  %conv268 = trunc i64 %add267 to i32, !dbg !2596
  store i32 %conv268, ptr %bi_valid265, align 4, !dbg !2596
  call void @llvm.lifetime.end.p0(i64 4, ptr %val228) #7, !dbg !2595
  br label %if.end279, !dbg !2596

if.else269:                                       ; preds = %if.end221
  %174 = load i32, ptr %count, align 4, !dbg !2602
  %sub270 = sub i32 %174, 3, !dbg !2602
  %175 = load ptr, ptr %s.addr, align 8, !dbg !2602
  %bi_valid271 = getelementptr inbounds %struct.deflate_state, ptr %175, i32 0, i32 57, !dbg !2602
  %176 = load i32, ptr %bi_valid271, align 4, !dbg !2602
  %shl272 = shl i32 %sub270, %176, !dbg !2602
  %177 = load ptr, ptr %s.addr, align 8, !dbg !2602
  %bi_buf273 = getelementptr inbounds %struct.deflate_state, ptr %177, i32 0, i32 56, !dbg !2602
  %178 = load i16, ptr %bi_buf273, align 8, !dbg !2602
  %conv274 = zext i16 %178 to i32, !dbg !2602
  %or275 = or i32 %conv274, %shl272, !dbg !2602
  %conv276 = trunc i32 %or275 to i16, !dbg !2602
  store i16 %conv276, ptr %bi_buf273, align 8, !dbg !2602
  %179 = load i32, ptr %len222, align 4, !dbg !2602
  %180 = load ptr, ptr %s.addr, align 8, !dbg !2602
  %bi_valid277 = getelementptr inbounds %struct.deflate_state, ptr %180, i32 0, i32 57, !dbg !2602
  %181 = load i32, ptr %bi_valid277, align 4, !dbg !2602
  %add278 = add i32 %181, %179, !dbg !2602
  store i32 %add278, ptr %bi_valid277, align 4, !dbg !2602
  br label %if.end279

if.end279:                                        ; preds = %if.else269, %if.then227
  call void @llvm.lifetime.end.p0(i64 4, ptr %len222) #7, !dbg !2604
  br label %if.end538, !dbg !2605

if.else280:                                       ; preds = %if.else74
  %182 = load i32, ptr %count, align 4, !dbg !2606
  %cmp281 = icmp sle i32 %182, 10, !dbg !2607
  br i1 %cmp281, label %if.then283, label %if.else410, !dbg !2608

if.then283:                                       ; preds = %if.else280
  call void @llvm.lifetime.start.p0(i64 4, ptr %len284) #7, !dbg !2609
  call void @llvm.dbg.declare(metadata ptr %len284, metadata !2469, metadata !DIExpression()), !dbg !2609
  %183 = load ptr, ptr %s.addr, align 8, !dbg !2609
  %bl_tree285 = getelementptr inbounds %struct.deflate_state, ptr %183, i32 0, i32 38, !dbg !2609
  %arrayidx286 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree285, i64 0, i64 17, !dbg !2609
  %dl287 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx286, i32 0, i32 1, !dbg !2609
  %184 = load i16, ptr %dl287, align 2, !dbg !2609
  %conv288 = zext i16 %184 to i32, !dbg !2609
  store i32 %conv288, ptr %len284, align 4, !dbg !2609
  %185 = load ptr, ptr %s.addr, align 8, !dbg !2610
  %bi_valid289 = getelementptr inbounds %struct.deflate_state, ptr %185, i32 0, i32 57, !dbg !2610
  %186 = load i32, ptr %bi_valid289, align 4, !dbg !2610
  %187 = load i32, ptr %len284, align 4, !dbg !2610
  %sub290 = sub i32 16, %187, !dbg !2610
  %cmp291 = icmp sgt i32 %186, %sub290, !dbg !2610
  br i1 %cmp291, label %if.then293, label %if.else338, !dbg !2609

if.then293:                                       ; preds = %if.then283
  call void @llvm.lifetime.start.p0(i64 4, ptr %val294) #7, !dbg !2611
  call void @llvm.dbg.declare(metadata ptr %val294, metadata !2473, metadata !DIExpression()), !dbg !2611
  %188 = load ptr, ptr %s.addr, align 8, !dbg !2611
  %bl_tree295 = getelementptr inbounds %struct.deflate_state, ptr %188, i32 0, i32 38, !dbg !2611
  %arrayidx296 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree295, i64 0, i64 17, !dbg !2611
  %fc297 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx296, i32 0, i32 0, !dbg !2611
  %189 = load i16, ptr %fc297, align 4, !dbg !2611
  %conv298 = zext i16 %189 to i32, !dbg !2611
  store i32 %conv298, ptr %val294, align 4, !dbg !2611
  %190 = load i32, ptr %val294, align 4, !dbg !2611
  %191 = load ptr, ptr %s.addr, align 8, !dbg !2611
  %bi_valid299 = getelementptr inbounds %struct.deflate_state, ptr %191, i32 0, i32 57, !dbg !2611
  %192 = load i32, ptr %bi_valid299, align 4, !dbg !2611
  %shl300 = shl i32 %190, %192, !dbg !2611
  %193 = load ptr, ptr %s.addr, align 8, !dbg !2611
  %bi_buf301 = getelementptr inbounds %struct.deflate_state, ptr %193, i32 0, i32 56, !dbg !2611
  %194 = load i16, ptr %bi_buf301, align 8, !dbg !2611
  %conv302 = zext i16 %194 to i32, !dbg !2611
  %or303 = or i32 %conv302, %shl300, !dbg !2611
  %conv304 = trunc i32 %or303 to i16, !dbg !2611
  store i16 %conv304, ptr %bi_buf301, align 8, !dbg !2611
  %195 = load ptr, ptr %s.addr, align 8, !dbg !2612
  %bi_buf305 = getelementptr inbounds %struct.deflate_state, ptr %195, i32 0, i32 56, !dbg !2612
  %196 = load i16, ptr %bi_buf305, align 8, !dbg !2612
  %conv306 = zext i16 %196 to i32, !dbg !2612
  %and307 = and i32 %conv306, 255, !dbg !2612
  %conv308 = trunc i32 %and307 to i8, !dbg !2612
  %197 = load ptr, ptr %s.addr, align 8, !dbg !2612
  %pending_buf309 = getelementptr inbounds %struct.deflate_state, ptr %197, i32 0, i32 2, !dbg !2612
  %198 = load ptr, ptr %pending_buf309, align 8, !dbg !2612
  %199 = load ptr, ptr %s.addr, align 8, !dbg !2612
  %pending310 = getelementptr inbounds %struct.deflate_state, ptr %199, i32 0, i32 5, !dbg !2612
  %200 = load i32, ptr %pending310, align 8, !dbg !2612
  %inc311 = add i32 %200, 1, !dbg !2612
  store i32 %inc311, ptr %pending310, align 8, !dbg !2612
  %idxprom312 = sext i32 %200 to i64, !dbg !2612
  %arrayidx313 = getelementptr i8, ptr %198, i64 %idxprom312, !dbg !2612
  store i8 %conv308, ptr %arrayidx313, align 1, !dbg !2612
  %201 = load ptr, ptr %s.addr, align 8, !dbg !2615
  %bi_buf314 = getelementptr inbounds %struct.deflate_state, ptr %201, i32 0, i32 56, !dbg !2615
  %202 = load i16, ptr %bi_buf314, align 8, !dbg !2615
  %conv315 = zext i16 %202 to i32, !dbg !2615
  %shr316 = ashr i32 %conv315, 8, !dbg !2615
  %conv317 = trunc i32 %shr316 to i8, !dbg !2615
  %203 = load ptr, ptr %s.addr, align 8, !dbg !2615
  %pending_buf318 = getelementptr inbounds %struct.deflate_state, ptr %203, i32 0, i32 2, !dbg !2615
  %204 = load ptr, ptr %pending_buf318, align 8, !dbg !2615
  %205 = load ptr, ptr %s.addr, align 8, !dbg !2615
  %pending319 = getelementptr inbounds %struct.deflate_state, ptr %205, i32 0, i32 5, !dbg !2615
  %206 = load i32, ptr %pending319, align 8, !dbg !2615
  %inc320 = add i32 %206, 1, !dbg !2615
  store i32 %inc320, ptr %pending319, align 8, !dbg !2615
  %idxprom321 = sext i32 %206 to i64, !dbg !2615
  %arrayidx322 = getelementptr i8, ptr %204, i64 %idxprom321, !dbg !2615
  store i8 %conv317, ptr %arrayidx322, align 1, !dbg !2615
  %207 = load i32, ptr %val294, align 4, !dbg !2611
  %conv323 = trunc i32 %207 to i16, !dbg !2611
  %conv324 = zext i16 %conv323 to i32, !dbg !2611
  %208 = load ptr, ptr %s.addr, align 8, !dbg !2611
  %bi_valid325 = getelementptr inbounds %struct.deflate_state, ptr %208, i32 0, i32 57, !dbg !2611
  %209 = load i32, ptr %bi_valid325, align 4, !dbg !2611
  %conv326 = sext i32 %209 to i64, !dbg !2611
  %sub327 = sub i64 16, %conv326, !dbg !2611
  %sh_prom328 = trunc i64 %sub327 to i32, !dbg !2611
  %shr329 = ashr i32 %conv324, %sh_prom328, !dbg !2611
  %conv330 = trunc i32 %shr329 to i16, !dbg !2611
  %210 = load ptr, ptr %s.addr, align 8, !dbg !2611
  %bi_buf331 = getelementptr inbounds %struct.deflate_state, ptr %210, i32 0, i32 56, !dbg !2611
  store i16 %conv330, ptr %bi_buf331, align 8, !dbg !2611
  %211 = load i32, ptr %len284, align 4, !dbg !2611
  %conv332 = sext i32 %211 to i64, !dbg !2611
  %sub333 = sub i64 %conv332, 16, !dbg !2611
  %212 = load ptr, ptr %s.addr, align 8, !dbg !2611
  %bi_valid334 = getelementptr inbounds %struct.deflate_state, ptr %212, i32 0, i32 57, !dbg !2611
  %213 = load i32, ptr %bi_valid334, align 4, !dbg !2611
  %conv335 = sext i32 %213 to i64, !dbg !2611
  %add336 = add i64 %conv335, %sub333, !dbg !2611
  %conv337 = trunc i64 %add336 to i32, !dbg !2611
  store i32 %conv337, ptr %bi_valid334, align 4, !dbg !2611
  call void @llvm.lifetime.end.p0(i64 4, ptr %val294) #7, !dbg !2610
  br label %if.end351, !dbg !2611

if.else338:                                       ; preds = %if.then283
  %214 = load ptr, ptr %s.addr, align 8, !dbg !2617
  %bl_tree339 = getelementptr inbounds %struct.deflate_state, ptr %214, i32 0, i32 38, !dbg !2617
  %arrayidx340 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree339, i64 0, i64 17, !dbg !2617
  %fc341 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx340, i32 0, i32 0, !dbg !2617
  %215 = load i16, ptr %fc341, align 4, !dbg !2617
  %conv342 = zext i16 %215 to i32, !dbg !2617
  %216 = load ptr, ptr %s.addr, align 8, !dbg !2617
  %bi_valid343 = getelementptr inbounds %struct.deflate_state, ptr %216, i32 0, i32 57, !dbg !2617
  %217 = load i32, ptr %bi_valid343, align 4, !dbg !2617
  %shl344 = shl i32 %conv342, %217, !dbg !2617
  %218 = load ptr, ptr %s.addr, align 8, !dbg !2617
  %bi_buf345 = getelementptr inbounds %struct.deflate_state, ptr %218, i32 0, i32 56, !dbg !2617
  %219 = load i16, ptr %bi_buf345, align 8, !dbg !2617
  %conv346 = zext i16 %219 to i32, !dbg !2617
  %or347 = or i32 %conv346, %shl344, !dbg !2617
  %conv348 = trunc i32 %or347 to i16, !dbg !2617
  store i16 %conv348, ptr %bi_buf345, align 8, !dbg !2617
  %220 = load i32, ptr %len284, align 4, !dbg !2617
  %221 = load ptr, ptr %s.addr, align 8, !dbg !2617
  %bi_valid349 = getelementptr inbounds %struct.deflate_state, ptr %221, i32 0, i32 57, !dbg !2617
  %222 = load i32, ptr %bi_valid349, align 4, !dbg !2617
  %add350 = add i32 %222, %220, !dbg !2617
  store i32 %add350, ptr %bi_valid349, align 4, !dbg !2617
  br label %if.end351

if.end351:                                        ; preds = %if.else338, %if.then293
  call void @llvm.lifetime.end.p0(i64 4, ptr %len284) #7, !dbg !2619
  call void @llvm.lifetime.start.p0(i64 4, ptr %len352) #7, !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %len352, metadata !2476, metadata !DIExpression()), !dbg !2620
  store i32 3, ptr %len352, align 4, !dbg !2620
  %223 = load ptr, ptr %s.addr, align 8, !dbg !2621
  %bi_valid353 = getelementptr inbounds %struct.deflate_state, ptr %223, i32 0, i32 57, !dbg !2621
  %224 = load i32, ptr %bi_valid353, align 4, !dbg !2621
  %225 = load i32, ptr %len352, align 4, !dbg !2621
  %sub354 = sub i32 16, %225, !dbg !2621
  %cmp355 = icmp sgt i32 %224, %sub354, !dbg !2621
  br i1 %cmp355, label %if.then357, label %if.else399, !dbg !2620

if.then357:                                       ; preds = %if.end351
  call void @llvm.lifetime.start.p0(i64 4, ptr %val358) #7, !dbg !2622
  call void @llvm.dbg.declare(metadata ptr %val358, metadata !2478, metadata !DIExpression()), !dbg !2622
  %226 = load i32, ptr %count, align 4, !dbg !2622
  %sub359 = sub i32 %226, 3, !dbg !2622
  store i32 %sub359, ptr %val358, align 4, !dbg !2622
  %227 = load i32, ptr %val358, align 4, !dbg !2622
  %228 = load ptr, ptr %s.addr, align 8, !dbg !2622
  %bi_valid360 = getelementptr inbounds %struct.deflate_state, ptr %228, i32 0, i32 57, !dbg !2622
  %229 = load i32, ptr %bi_valid360, align 4, !dbg !2622
  %shl361 = shl i32 %227, %229, !dbg !2622
  %230 = load ptr, ptr %s.addr, align 8, !dbg !2622
  %bi_buf362 = getelementptr inbounds %struct.deflate_state, ptr %230, i32 0, i32 56, !dbg !2622
  %231 = load i16, ptr %bi_buf362, align 8, !dbg !2622
  %conv363 = zext i16 %231 to i32, !dbg !2622
  %or364 = or i32 %conv363, %shl361, !dbg !2622
  %conv365 = trunc i32 %or364 to i16, !dbg !2622
  store i16 %conv365, ptr %bi_buf362, align 8, !dbg !2622
  %232 = load ptr, ptr %s.addr, align 8, !dbg !2623
  %bi_buf366 = getelementptr inbounds %struct.deflate_state, ptr %232, i32 0, i32 56, !dbg !2623
  %233 = load i16, ptr %bi_buf366, align 8, !dbg !2623
  %conv367 = zext i16 %233 to i32, !dbg !2623
  %and368 = and i32 %conv367, 255, !dbg !2623
  %conv369 = trunc i32 %and368 to i8, !dbg !2623
  %234 = load ptr, ptr %s.addr, align 8, !dbg !2623
  %pending_buf370 = getelementptr inbounds %struct.deflate_state, ptr %234, i32 0, i32 2, !dbg !2623
  %235 = load ptr, ptr %pending_buf370, align 8, !dbg !2623
  %236 = load ptr, ptr %s.addr, align 8, !dbg !2623
  %pending371 = getelementptr inbounds %struct.deflate_state, ptr %236, i32 0, i32 5, !dbg !2623
  %237 = load i32, ptr %pending371, align 8, !dbg !2623
  %inc372 = add i32 %237, 1, !dbg !2623
  store i32 %inc372, ptr %pending371, align 8, !dbg !2623
  %idxprom373 = sext i32 %237 to i64, !dbg !2623
  %arrayidx374 = getelementptr i8, ptr %235, i64 %idxprom373, !dbg !2623
  store i8 %conv369, ptr %arrayidx374, align 1, !dbg !2623
  %238 = load ptr, ptr %s.addr, align 8, !dbg !2626
  %bi_buf375 = getelementptr inbounds %struct.deflate_state, ptr %238, i32 0, i32 56, !dbg !2626
  %239 = load i16, ptr %bi_buf375, align 8, !dbg !2626
  %conv376 = zext i16 %239 to i32, !dbg !2626
  %shr377 = ashr i32 %conv376, 8, !dbg !2626
  %conv378 = trunc i32 %shr377 to i8, !dbg !2626
  %240 = load ptr, ptr %s.addr, align 8, !dbg !2626
  %pending_buf379 = getelementptr inbounds %struct.deflate_state, ptr %240, i32 0, i32 2, !dbg !2626
  %241 = load ptr, ptr %pending_buf379, align 8, !dbg !2626
  %242 = load ptr, ptr %s.addr, align 8, !dbg !2626
  %pending380 = getelementptr inbounds %struct.deflate_state, ptr %242, i32 0, i32 5, !dbg !2626
  %243 = load i32, ptr %pending380, align 8, !dbg !2626
  %inc381 = add i32 %243, 1, !dbg !2626
  store i32 %inc381, ptr %pending380, align 8, !dbg !2626
  %idxprom382 = sext i32 %243 to i64, !dbg !2626
  %arrayidx383 = getelementptr i8, ptr %241, i64 %idxprom382, !dbg !2626
  store i8 %conv378, ptr %arrayidx383, align 1, !dbg !2626
  %244 = load i32, ptr %val358, align 4, !dbg !2622
  %conv384 = trunc i32 %244 to i16, !dbg !2622
  %conv385 = zext i16 %conv384 to i32, !dbg !2622
  %245 = load ptr, ptr %s.addr, align 8, !dbg !2622
  %bi_valid386 = getelementptr inbounds %struct.deflate_state, ptr %245, i32 0, i32 57, !dbg !2622
  %246 = load i32, ptr %bi_valid386, align 4, !dbg !2622
  %conv387 = sext i32 %246 to i64, !dbg !2622
  %sub388 = sub i64 16, %conv387, !dbg !2622
  %sh_prom389 = trunc i64 %sub388 to i32, !dbg !2622
  %shr390 = ashr i32 %conv385, %sh_prom389, !dbg !2622
  %conv391 = trunc i32 %shr390 to i16, !dbg !2622
  %247 = load ptr, ptr %s.addr, align 8, !dbg !2622
  %bi_buf392 = getelementptr inbounds %struct.deflate_state, ptr %247, i32 0, i32 56, !dbg !2622
  store i16 %conv391, ptr %bi_buf392, align 8, !dbg !2622
  %248 = load i32, ptr %len352, align 4, !dbg !2622
  %conv393 = sext i32 %248 to i64, !dbg !2622
  %sub394 = sub i64 %conv393, 16, !dbg !2622
  %249 = load ptr, ptr %s.addr, align 8, !dbg !2622
  %bi_valid395 = getelementptr inbounds %struct.deflate_state, ptr %249, i32 0, i32 57, !dbg !2622
  %250 = load i32, ptr %bi_valid395, align 4, !dbg !2622
  %conv396 = sext i32 %250 to i64, !dbg !2622
  %add397 = add i64 %conv396, %sub394, !dbg !2622
  %conv398 = trunc i64 %add397 to i32, !dbg !2622
  store i32 %conv398, ptr %bi_valid395, align 4, !dbg !2622
  call void @llvm.lifetime.end.p0(i64 4, ptr %val358) #7, !dbg !2621
  br label %if.end409, !dbg !2622

if.else399:                                       ; preds = %if.end351
  %251 = load i32, ptr %count, align 4, !dbg !2628
  %sub400 = sub i32 %251, 3, !dbg !2628
  %252 = load ptr, ptr %s.addr, align 8, !dbg !2628
  %bi_valid401 = getelementptr inbounds %struct.deflate_state, ptr %252, i32 0, i32 57, !dbg !2628
  %253 = load i32, ptr %bi_valid401, align 4, !dbg !2628
  %shl402 = shl i32 %sub400, %253, !dbg !2628
  %254 = load ptr, ptr %s.addr, align 8, !dbg !2628
  %bi_buf403 = getelementptr inbounds %struct.deflate_state, ptr %254, i32 0, i32 56, !dbg !2628
  %255 = load i16, ptr %bi_buf403, align 8, !dbg !2628
  %conv404 = zext i16 %255 to i32, !dbg !2628
  %or405 = or i32 %conv404, %shl402, !dbg !2628
  %conv406 = trunc i32 %or405 to i16, !dbg !2628
  store i16 %conv406, ptr %bi_buf403, align 8, !dbg !2628
  %256 = load i32, ptr %len352, align 4, !dbg !2628
  %257 = load ptr, ptr %s.addr, align 8, !dbg !2628
  %bi_valid407 = getelementptr inbounds %struct.deflate_state, ptr %257, i32 0, i32 57, !dbg !2628
  %258 = load i32, ptr %bi_valid407, align 4, !dbg !2628
  %add408 = add i32 %258, %256, !dbg !2628
  store i32 %add408, ptr %bi_valid407, align 4, !dbg !2628
  br label %if.end409

if.end409:                                        ; preds = %if.else399, %if.then357
  call void @llvm.lifetime.end.p0(i64 4, ptr %len352) #7, !dbg !2630
  br label %if.end537, !dbg !2631

if.else410:                                       ; preds = %if.else280
  call void @llvm.lifetime.start.p0(i64 4, ptr %len411) #7, !dbg !2632
  call void @llvm.dbg.declare(metadata ptr %len411, metadata !2481, metadata !DIExpression()), !dbg !2632
  %259 = load ptr, ptr %s.addr, align 8, !dbg !2632
  %bl_tree412 = getelementptr inbounds %struct.deflate_state, ptr %259, i32 0, i32 38, !dbg !2632
  %arrayidx413 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree412, i64 0, i64 18, !dbg !2632
  %dl414 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx413, i32 0, i32 1, !dbg !2632
  %260 = load i16, ptr %dl414, align 2, !dbg !2632
  %conv415 = zext i16 %260 to i32, !dbg !2632
  store i32 %conv415, ptr %len411, align 4, !dbg !2632
  %261 = load ptr, ptr %s.addr, align 8, !dbg !2633
  %bi_valid416 = getelementptr inbounds %struct.deflate_state, ptr %261, i32 0, i32 57, !dbg !2633
  %262 = load i32, ptr %bi_valid416, align 4, !dbg !2633
  %263 = load i32, ptr %len411, align 4, !dbg !2633
  %sub417 = sub i32 16, %263, !dbg !2633
  %cmp418 = icmp sgt i32 %262, %sub417, !dbg !2633
  br i1 %cmp418, label %if.then420, label %if.else465, !dbg !2632

if.then420:                                       ; preds = %if.else410
  call void @llvm.lifetime.start.p0(i64 4, ptr %val421) #7, !dbg !2634
  call void @llvm.dbg.declare(metadata ptr %val421, metadata !2484, metadata !DIExpression()), !dbg !2634
  %264 = load ptr, ptr %s.addr, align 8, !dbg !2634
  %bl_tree422 = getelementptr inbounds %struct.deflate_state, ptr %264, i32 0, i32 38, !dbg !2634
  %arrayidx423 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree422, i64 0, i64 18, !dbg !2634
  %fc424 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx423, i32 0, i32 0, !dbg !2634
  %265 = load i16, ptr %fc424, align 4, !dbg !2634
  %conv425 = zext i16 %265 to i32, !dbg !2634
  store i32 %conv425, ptr %val421, align 4, !dbg !2634
  %266 = load i32, ptr %val421, align 4, !dbg !2634
  %267 = load ptr, ptr %s.addr, align 8, !dbg !2634
  %bi_valid426 = getelementptr inbounds %struct.deflate_state, ptr %267, i32 0, i32 57, !dbg !2634
  %268 = load i32, ptr %bi_valid426, align 4, !dbg !2634
  %shl427 = shl i32 %266, %268, !dbg !2634
  %269 = load ptr, ptr %s.addr, align 8, !dbg !2634
  %bi_buf428 = getelementptr inbounds %struct.deflate_state, ptr %269, i32 0, i32 56, !dbg !2634
  %270 = load i16, ptr %bi_buf428, align 8, !dbg !2634
  %conv429 = zext i16 %270 to i32, !dbg !2634
  %or430 = or i32 %conv429, %shl427, !dbg !2634
  %conv431 = trunc i32 %or430 to i16, !dbg !2634
  store i16 %conv431, ptr %bi_buf428, align 8, !dbg !2634
  %271 = load ptr, ptr %s.addr, align 8, !dbg !2635
  %bi_buf432 = getelementptr inbounds %struct.deflate_state, ptr %271, i32 0, i32 56, !dbg !2635
  %272 = load i16, ptr %bi_buf432, align 8, !dbg !2635
  %conv433 = zext i16 %272 to i32, !dbg !2635
  %and434 = and i32 %conv433, 255, !dbg !2635
  %conv435 = trunc i32 %and434 to i8, !dbg !2635
  %273 = load ptr, ptr %s.addr, align 8, !dbg !2635
  %pending_buf436 = getelementptr inbounds %struct.deflate_state, ptr %273, i32 0, i32 2, !dbg !2635
  %274 = load ptr, ptr %pending_buf436, align 8, !dbg !2635
  %275 = load ptr, ptr %s.addr, align 8, !dbg !2635
  %pending437 = getelementptr inbounds %struct.deflate_state, ptr %275, i32 0, i32 5, !dbg !2635
  %276 = load i32, ptr %pending437, align 8, !dbg !2635
  %inc438 = add i32 %276, 1, !dbg !2635
  store i32 %inc438, ptr %pending437, align 8, !dbg !2635
  %idxprom439 = sext i32 %276 to i64, !dbg !2635
  %arrayidx440 = getelementptr i8, ptr %274, i64 %idxprom439, !dbg !2635
  store i8 %conv435, ptr %arrayidx440, align 1, !dbg !2635
  %277 = load ptr, ptr %s.addr, align 8, !dbg !2638
  %bi_buf441 = getelementptr inbounds %struct.deflate_state, ptr %277, i32 0, i32 56, !dbg !2638
  %278 = load i16, ptr %bi_buf441, align 8, !dbg !2638
  %conv442 = zext i16 %278 to i32, !dbg !2638
  %shr443 = ashr i32 %conv442, 8, !dbg !2638
  %conv444 = trunc i32 %shr443 to i8, !dbg !2638
  %279 = load ptr, ptr %s.addr, align 8, !dbg !2638
  %pending_buf445 = getelementptr inbounds %struct.deflate_state, ptr %279, i32 0, i32 2, !dbg !2638
  %280 = load ptr, ptr %pending_buf445, align 8, !dbg !2638
  %281 = load ptr, ptr %s.addr, align 8, !dbg !2638
  %pending446 = getelementptr inbounds %struct.deflate_state, ptr %281, i32 0, i32 5, !dbg !2638
  %282 = load i32, ptr %pending446, align 8, !dbg !2638
  %inc447 = add i32 %282, 1, !dbg !2638
  store i32 %inc447, ptr %pending446, align 8, !dbg !2638
  %idxprom448 = sext i32 %282 to i64, !dbg !2638
  %arrayidx449 = getelementptr i8, ptr %280, i64 %idxprom448, !dbg !2638
  store i8 %conv444, ptr %arrayidx449, align 1, !dbg !2638
  %283 = load i32, ptr %val421, align 4, !dbg !2634
  %conv450 = trunc i32 %283 to i16, !dbg !2634
  %conv451 = zext i16 %conv450 to i32, !dbg !2634
  %284 = load ptr, ptr %s.addr, align 8, !dbg !2634
  %bi_valid452 = getelementptr inbounds %struct.deflate_state, ptr %284, i32 0, i32 57, !dbg !2634
  %285 = load i32, ptr %bi_valid452, align 4, !dbg !2634
  %conv453 = sext i32 %285 to i64, !dbg !2634
  %sub454 = sub i64 16, %conv453, !dbg !2634
  %sh_prom455 = trunc i64 %sub454 to i32, !dbg !2634
  %shr456 = ashr i32 %conv451, %sh_prom455, !dbg !2634
  %conv457 = trunc i32 %shr456 to i16, !dbg !2634
  %286 = load ptr, ptr %s.addr, align 8, !dbg !2634
  %bi_buf458 = getelementptr inbounds %struct.deflate_state, ptr %286, i32 0, i32 56, !dbg !2634
  store i16 %conv457, ptr %bi_buf458, align 8, !dbg !2634
  %287 = load i32, ptr %len411, align 4, !dbg !2634
  %conv459 = sext i32 %287 to i64, !dbg !2634
  %sub460 = sub i64 %conv459, 16, !dbg !2634
  %288 = load ptr, ptr %s.addr, align 8, !dbg !2634
  %bi_valid461 = getelementptr inbounds %struct.deflate_state, ptr %288, i32 0, i32 57, !dbg !2634
  %289 = load i32, ptr %bi_valid461, align 4, !dbg !2634
  %conv462 = sext i32 %289 to i64, !dbg !2634
  %add463 = add i64 %conv462, %sub460, !dbg !2634
  %conv464 = trunc i64 %add463 to i32, !dbg !2634
  store i32 %conv464, ptr %bi_valid461, align 4, !dbg !2634
  call void @llvm.lifetime.end.p0(i64 4, ptr %val421) #7, !dbg !2633
  br label %if.end478, !dbg !2634

if.else465:                                       ; preds = %if.else410
  %290 = load ptr, ptr %s.addr, align 8, !dbg !2640
  %bl_tree466 = getelementptr inbounds %struct.deflate_state, ptr %290, i32 0, i32 38, !dbg !2640
  %arrayidx467 = getelementptr [39 x %struct.ct_data_s], ptr %bl_tree466, i64 0, i64 18, !dbg !2640
  %fc468 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx467, i32 0, i32 0, !dbg !2640
  %291 = load i16, ptr %fc468, align 4, !dbg !2640
  %conv469 = zext i16 %291 to i32, !dbg !2640
  %292 = load ptr, ptr %s.addr, align 8, !dbg !2640
  %bi_valid470 = getelementptr inbounds %struct.deflate_state, ptr %292, i32 0, i32 57, !dbg !2640
  %293 = load i32, ptr %bi_valid470, align 4, !dbg !2640
  %shl471 = shl i32 %conv469, %293, !dbg !2640
  %294 = load ptr, ptr %s.addr, align 8, !dbg !2640
  %bi_buf472 = getelementptr inbounds %struct.deflate_state, ptr %294, i32 0, i32 56, !dbg !2640
  %295 = load i16, ptr %bi_buf472, align 8, !dbg !2640
  %conv473 = zext i16 %295 to i32, !dbg !2640
  %or474 = or i32 %conv473, %shl471, !dbg !2640
  %conv475 = trunc i32 %or474 to i16, !dbg !2640
  store i16 %conv475, ptr %bi_buf472, align 8, !dbg !2640
  %296 = load i32, ptr %len411, align 4, !dbg !2640
  %297 = load ptr, ptr %s.addr, align 8, !dbg !2640
  %bi_valid476 = getelementptr inbounds %struct.deflate_state, ptr %297, i32 0, i32 57, !dbg !2640
  %298 = load i32, ptr %bi_valid476, align 4, !dbg !2640
  %add477 = add i32 %298, %296, !dbg !2640
  store i32 %add477, ptr %bi_valid476, align 4, !dbg !2640
  br label %if.end478

if.end478:                                        ; preds = %if.else465, %if.then420
  call void @llvm.lifetime.end.p0(i64 4, ptr %len411) #7, !dbg !2642
  call void @llvm.lifetime.start.p0(i64 4, ptr %len479) #7, !dbg !2643
  call void @llvm.dbg.declare(metadata ptr %len479, metadata !2487, metadata !DIExpression()), !dbg !2643
  store i32 7, ptr %len479, align 4, !dbg !2643
  %299 = load ptr, ptr %s.addr, align 8, !dbg !2644
  %bi_valid480 = getelementptr inbounds %struct.deflate_state, ptr %299, i32 0, i32 57, !dbg !2644
  %300 = load i32, ptr %bi_valid480, align 4, !dbg !2644
  %301 = load i32, ptr %len479, align 4, !dbg !2644
  %sub481 = sub i32 16, %301, !dbg !2644
  %cmp482 = icmp sgt i32 %300, %sub481, !dbg !2644
  br i1 %cmp482, label %if.then484, label %if.else526, !dbg !2643

if.then484:                                       ; preds = %if.end478
  call void @llvm.lifetime.start.p0(i64 4, ptr %val485) #7, !dbg !2645
  call void @llvm.dbg.declare(metadata ptr %val485, metadata !2489, metadata !DIExpression()), !dbg !2645
  %302 = load i32, ptr %count, align 4, !dbg !2645
  %sub486 = sub i32 %302, 11, !dbg !2645
  store i32 %sub486, ptr %val485, align 4, !dbg !2645
  %303 = load i32, ptr %val485, align 4, !dbg !2645
  %304 = load ptr, ptr %s.addr, align 8, !dbg !2645
  %bi_valid487 = getelementptr inbounds %struct.deflate_state, ptr %304, i32 0, i32 57, !dbg !2645
  %305 = load i32, ptr %bi_valid487, align 4, !dbg !2645
  %shl488 = shl i32 %303, %305, !dbg !2645
  %306 = load ptr, ptr %s.addr, align 8, !dbg !2645
  %bi_buf489 = getelementptr inbounds %struct.deflate_state, ptr %306, i32 0, i32 56, !dbg !2645
  %307 = load i16, ptr %bi_buf489, align 8, !dbg !2645
  %conv490 = zext i16 %307 to i32, !dbg !2645
  %or491 = or i32 %conv490, %shl488, !dbg !2645
  %conv492 = trunc i32 %or491 to i16, !dbg !2645
  store i16 %conv492, ptr %bi_buf489, align 8, !dbg !2645
  %308 = load ptr, ptr %s.addr, align 8, !dbg !2646
  %bi_buf493 = getelementptr inbounds %struct.deflate_state, ptr %308, i32 0, i32 56, !dbg !2646
  %309 = load i16, ptr %bi_buf493, align 8, !dbg !2646
  %conv494 = zext i16 %309 to i32, !dbg !2646
  %and495 = and i32 %conv494, 255, !dbg !2646
  %conv496 = trunc i32 %and495 to i8, !dbg !2646
  %310 = load ptr, ptr %s.addr, align 8, !dbg !2646
  %pending_buf497 = getelementptr inbounds %struct.deflate_state, ptr %310, i32 0, i32 2, !dbg !2646
  %311 = load ptr, ptr %pending_buf497, align 8, !dbg !2646
  %312 = load ptr, ptr %s.addr, align 8, !dbg !2646
  %pending498 = getelementptr inbounds %struct.deflate_state, ptr %312, i32 0, i32 5, !dbg !2646
  %313 = load i32, ptr %pending498, align 8, !dbg !2646
  %inc499 = add i32 %313, 1, !dbg !2646
  store i32 %inc499, ptr %pending498, align 8, !dbg !2646
  %idxprom500 = sext i32 %313 to i64, !dbg !2646
  %arrayidx501 = getelementptr i8, ptr %311, i64 %idxprom500, !dbg !2646
  store i8 %conv496, ptr %arrayidx501, align 1, !dbg !2646
  %314 = load ptr, ptr %s.addr, align 8, !dbg !2649
  %bi_buf502 = getelementptr inbounds %struct.deflate_state, ptr %314, i32 0, i32 56, !dbg !2649
  %315 = load i16, ptr %bi_buf502, align 8, !dbg !2649
  %conv503 = zext i16 %315 to i32, !dbg !2649
  %shr504 = ashr i32 %conv503, 8, !dbg !2649
  %conv505 = trunc i32 %shr504 to i8, !dbg !2649
  %316 = load ptr, ptr %s.addr, align 8, !dbg !2649
  %pending_buf506 = getelementptr inbounds %struct.deflate_state, ptr %316, i32 0, i32 2, !dbg !2649
  %317 = load ptr, ptr %pending_buf506, align 8, !dbg !2649
  %318 = load ptr, ptr %s.addr, align 8, !dbg !2649
  %pending507 = getelementptr inbounds %struct.deflate_state, ptr %318, i32 0, i32 5, !dbg !2649
  %319 = load i32, ptr %pending507, align 8, !dbg !2649
  %inc508 = add i32 %319, 1, !dbg !2649
  store i32 %inc508, ptr %pending507, align 8, !dbg !2649
  %idxprom509 = sext i32 %319 to i64, !dbg !2649
  %arrayidx510 = getelementptr i8, ptr %317, i64 %idxprom509, !dbg !2649
  store i8 %conv505, ptr %arrayidx510, align 1, !dbg !2649
  %320 = load i32, ptr %val485, align 4, !dbg !2645
  %conv511 = trunc i32 %320 to i16, !dbg !2645
  %conv512 = zext i16 %conv511 to i32, !dbg !2645
  %321 = load ptr, ptr %s.addr, align 8, !dbg !2645
  %bi_valid513 = getelementptr inbounds %struct.deflate_state, ptr %321, i32 0, i32 57, !dbg !2645
  %322 = load i32, ptr %bi_valid513, align 4, !dbg !2645
  %conv514 = sext i32 %322 to i64, !dbg !2645
  %sub515 = sub i64 16, %conv514, !dbg !2645
  %sh_prom516 = trunc i64 %sub515 to i32, !dbg !2645
  %shr517 = ashr i32 %conv512, %sh_prom516, !dbg !2645
  %conv518 = trunc i32 %shr517 to i16, !dbg !2645
  %323 = load ptr, ptr %s.addr, align 8, !dbg !2645
  %bi_buf519 = getelementptr inbounds %struct.deflate_state, ptr %323, i32 0, i32 56, !dbg !2645
  store i16 %conv518, ptr %bi_buf519, align 8, !dbg !2645
  %324 = load i32, ptr %len479, align 4, !dbg !2645
  %conv520 = sext i32 %324 to i64, !dbg !2645
  %sub521 = sub i64 %conv520, 16, !dbg !2645
  %325 = load ptr, ptr %s.addr, align 8, !dbg !2645
  %bi_valid522 = getelementptr inbounds %struct.deflate_state, ptr %325, i32 0, i32 57, !dbg !2645
  %326 = load i32, ptr %bi_valid522, align 4, !dbg !2645
  %conv523 = sext i32 %326 to i64, !dbg !2645
  %add524 = add i64 %conv523, %sub521, !dbg !2645
  %conv525 = trunc i64 %add524 to i32, !dbg !2645
  store i32 %conv525, ptr %bi_valid522, align 4, !dbg !2645
  call void @llvm.lifetime.end.p0(i64 4, ptr %val485) #7, !dbg !2644
  br label %if.end536, !dbg !2645

if.else526:                                       ; preds = %if.end478
  %327 = load i32, ptr %count, align 4, !dbg !2651
  %sub527 = sub i32 %327, 11, !dbg !2651
  %328 = load ptr, ptr %s.addr, align 8, !dbg !2651
  %bi_valid528 = getelementptr inbounds %struct.deflate_state, ptr %328, i32 0, i32 57, !dbg !2651
  %329 = load i32, ptr %bi_valid528, align 4, !dbg !2651
  %shl529 = shl i32 %sub527, %329, !dbg !2651
  %330 = load ptr, ptr %s.addr, align 8, !dbg !2651
  %bi_buf530 = getelementptr inbounds %struct.deflate_state, ptr %330, i32 0, i32 56, !dbg !2651
  %331 = load i16, ptr %bi_buf530, align 8, !dbg !2651
  %conv531 = zext i16 %331 to i32, !dbg !2651
  %or532 = or i32 %conv531, %shl529, !dbg !2651
  %conv533 = trunc i32 %or532 to i16, !dbg !2651
  store i16 %conv533, ptr %bi_buf530, align 8, !dbg !2651
  %332 = load i32, ptr %len479, align 4, !dbg !2651
  %333 = load ptr, ptr %s.addr, align 8, !dbg !2651
  %bi_valid534 = getelementptr inbounds %struct.deflate_state, ptr %333, i32 0, i32 57, !dbg !2651
  %334 = load i32, ptr %bi_valid534, align 4, !dbg !2651
  %add535 = add i32 %334, %332, !dbg !2651
  store i32 %add535, ptr %bi_valid534, align 4, !dbg !2651
  br label %if.end536

if.end536:                                        ; preds = %if.else526, %if.then484
  call void @llvm.lifetime.end.p0(i64 4, ptr %len479) #7, !dbg !2653
  br label %if.end537

if.end537:                                        ; preds = %if.end536, %if.end409
  br label %if.end538

if.end538:                                        ; preds = %if.end537, %if.end279
  br label %if.end539

if.end539:                                        ; preds = %if.end538, %do.end
  br label %if.end540

if.end540:                                        ; preds = %if.end539
  store i32 0, ptr %count, align 4, !dbg !2654
  %335 = load i32, ptr %curlen, align 4, !dbg !2655
  store i32 %335, ptr %prevlen, align 4, !dbg !2656
  %336 = load i32, ptr %nextlen, align 4, !dbg !2657
  %cmp541 = icmp eq i32 %336, 0, !dbg !2659
  br i1 %cmp541, label %if.then543, label %if.else544, !dbg !2660

if.then543:                                       ; preds = %if.end540
  store i32 138, ptr %max_count, align 4, !dbg !2661
  store i32 3, ptr %min_count, align 4, !dbg !2663
  br label %if.end550, !dbg !2664

if.else544:                                       ; preds = %if.end540
  %337 = load i32, ptr %curlen, align 4, !dbg !2665
  %338 = load i32, ptr %nextlen, align 4, !dbg !2667
  %cmp545 = icmp eq i32 %337, %338, !dbg !2668
  br i1 %cmp545, label %if.then547, label %if.else548, !dbg !2669

if.then547:                                       ; preds = %if.else544
  store i32 6, ptr %max_count, align 4, !dbg !2670
  store i32 3, ptr %min_count, align 4, !dbg !2672
  br label %if.end549, !dbg !2673

if.else548:                                       ; preds = %if.else544
  store i32 7, ptr %max_count, align 4, !dbg !2674
  store i32 4, ptr %min_count, align 4, !dbg !2676
  br label %if.end549

if.end549:                                        ; preds = %if.else548, %if.then547
  br label %if.end550

if.end550:                                        ; preds = %if.end549, %if.then543
  br label %for.inc, !dbg !2677

for.inc:                                          ; preds = %if.end550, %if.then11
  %339 = load i32, ptr %n, align 4, !dbg !2678
  %inc551 = add i32 %339, 1, !dbg !2678
  store i32 %inc551, ptr %n, align 4, !dbg !2678
  br label %for.cond, !dbg !2679, !llvm.loop !2680

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_count) #7, !dbg !2682
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_count) #7, !dbg !2682
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #7, !dbg !2682
  call void @llvm.lifetime.end.p0(i64 4, ptr %nextlen) #7, !dbg !2682
  call void @llvm.lifetime.end.p0(i64 4, ptr %curlen) #7, !dbg !2682
  call void @llvm.lifetime.end.p0(i64 4, ptr %prevlen) #7, !dbg !2682
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !2682
  ret void, !dbg !2682
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "static_l_desc", scope: !2, file: !3, line: 118, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zlib_deflate/.deftree.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zlib_deflate/zlib_deflate\22 -D KBUILD_BASENAME=\22deftree\22 -D KBUILD_MODNAME=\22zlib_deflate\22 -D __KBUILD_MODNAME=kmod_zlib_deflate -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zlib_deflate/deftree.ll lib/zlib_deflate/deftree.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !58, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/zlib_deflate/deftree.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79c19437013c753ae2574fbfbffae113")
!4 = !{!5, !6, !9, !11, !13, !14, !49, !20, !51, !52, !41, !56}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uch", file: !7, line: 20, baseType: !8)
!7 = !DIFile(filename: "./include/linux/zutil.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e912e7345195f5db5905cb2a2b8db19")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "ush", file: !7, line: 21, baseType: !10)
!10 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ulg", file: !7, line: 22, baseType: !12)
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree_desc", file: !16, line: 64, baseType: !17)
!16 = !DIFile(filename: "lib/zlib_deflate/defutil.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11dc3ef756fc29155d42c18a4ac1495e")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_desc_s", file: !16, line: 60, size: 192, elements: !18)
!18 = !{!19, !34, !35}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_tree", scope: !17, file: !16, line: 61, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ct_data", file: !16, line: 51, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ct_data_s", file: !16, line: 42, size: 32, elements: !23)
!23 = !{!24, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fc", scope: !22, file: !16, line: 46, baseType: !25, size: 16)
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !22, file: !16, line: 43, size: 16, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !25, file: !16, line: 44, baseType: !9, size: 16)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !25, file: !16, line: 45, baseType: !9, size: 16)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !22, file: !16, line: 50, baseType: !30, size: 16, offset: 16)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !22, file: !16, line: 47, size: 16, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "dad", scope: !30, file: !16, line: 48, baseType: !9, size: 16)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !30, file: !16, line: 49, baseType: !9, size: 16)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "max_code", scope: !17, file: !16, line: 62, baseType: !5, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "stat_desc", scope: !17, file: !16, line: 63, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_tree_desc", file: !16, line: 58, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_tree_desc_s", file: !3, line: 110, size: 256, elements: !39)
!39 = !{!40, !43, !46, !47, !48}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "static_tree", scope: !38, file: !3, line: 111, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "extra_bits", scope: !38, file: !3, line: 112, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "extra_base", scope: !38, file: !3, line: 113, baseType: !5, size: 32, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !38, file: !3, line: 114, baseType: !5, size: 32, offset: 160)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "max_length", scope: !38, file: !3, line: 115, baseType: !5, size: 32, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !53, line: 21, baseType: !54)
!53 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !55, line: 27, baseType: !13)
!55 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !57, line: 52, baseType: !8)
!57 = !DIFile(filename: "./include/linux/zconf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "66c2d885369ef0adc0f1780a0c1150c2")
!58 = !{!59, !64, !69, !74, !79, !101, !106, !109, !0, !112, !114, !116, !121, !125}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "static_ltree", scope: !2, file: !3, line: 83, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 9216, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 288)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "static_dtree", scope: !2, file: !3, line: 90, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 960, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 30)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "dist_code", scope: !2, file: !3, line: 95, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4096, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 512)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "length_code", scope: !2, file: !3, line: 101, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 256)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "static_init_done", scope: !81, file: !3, line: 173, type: !5, isLocal: true, isDefinition: true)
!81 = distinct !DISubprogram(name: "tr_static_init", scope: !3, file: !3, line: 171, type: !82, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{null}
!84 = !{!85, !86, !87, !88, !89, !90, !94, !99}
!85 = !DILocalVariable(name: "n", scope: !81, file: !3, line: 174, type: !5)
!86 = !DILocalVariable(name: "bits", scope: !81, file: !3, line: 175, type: !5)
!87 = !DILocalVariable(name: "length", scope: !81, file: !3, line: 176, type: !5)
!88 = !DILocalVariable(name: "code", scope: !81, file: !3, line: 177, type: !5)
!89 = !DILocalVariable(name: "dist", scope: !81, file: !3, line: 178, type: !5)
!90 = !DILocalVariable(name: "bl_count", scope: !81, file: !3, line: 179, type: !91)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 16)
!94 = !DILocalVariable(name: "__x", scope: !95, file: !3, line: 233, type: !52)
!95 = distinct !DILexicalBlock(scope: !96, file: !3, line: 233, column: 32)
!96 = distinct !DILexicalBlock(scope: !97, file: !3, line: 231, column: 35)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 231, column: 5)
!98 = distinct !DILexicalBlock(scope: !81, file: !3, line: 231, column: 5)
!99 = !DILocalVariable(name: "___x", scope: !100, file: !3, line: 233, type: !52)
!100 = distinct !DILexicalBlock(scope: !95, file: !3, line: 233, column: 32)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "base_length", scope: !2, file: !3, line: 104, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 928, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 29)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "extra_lbits", scope: !2, file: !3, line: 64, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 928, elements: !104)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "base_dist", scope: !2, file: !3, line: 107, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !67)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "static_d_desc", scope: !2, file: !3, line: 121, type: !37, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "static_bl_desc", scope: !2, file: !3, line: 124, type: !37, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "extra_blbits", scope: !2, file: !3, line: 70, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 608, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 19)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "bl_order", scope: !2, file: !3, line: 73, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 152, elements: !119)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "extra_dbits", scope: !2, file: !3, line: 67, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 960, elements: !67)
!128 = !{i32 7, !"Dwarf Version", i32 5}
!129 = !{i32 2, !"Debug Info Version", i32 3}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 8, !"cf-protection-branch", i32 1}
!132 = !{i32 4, !"function_return_thunk_extern", i32 1}
!133 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!134 = !{i32 1, !"Code Model", i32 2}
!135 = !{i32 1, !"override-stack-alignment", i32 8}
!136 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!137 = distinct !DISubprogram(name: "zlib_tr_init", scope: !3, file: !3, line: 241, type: !138, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "deflate_state", file: !16, line: 241, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deflate_state", file: !16, line: 73, size: 47424, elements: !143)
!143 = !{!144, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !181, !182, !183, !184, !185, !188, !189, !190, !191, !192, !193, !194, !195, !196, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !213, !217, !221, !222, !223, !224, !225, !227, !228, !229, !231, !233, !234, !235, !237, !238, !239, !240, !241, !242, !243}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "strm", scope: !142, file: !16, line: 74, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !146, line: 103, baseType: !147)
!146 = !DIFile(filename: "./include/linux/zlib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "959204f2bbe0607cb05d45364420f12e")
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !146, line: 101, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !146, line: 84, size: 768, elements: !150)
!150 = !{!151, !154, !156, !157, !159, !160, !161, !162, !165, !167, !168, !169}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !149, file: !146, line: 85, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !149, file: !146, line: 86, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !57, line: 54, baseType: !12)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !149, file: !146, line: 87, baseType: !155, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !149, file: !146, line: 89, baseType: !158, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !149, file: !146, line: 90, baseType: !155, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !149, file: !146, line: 91, baseType: !155, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !149, file: !146, line: 93, baseType: !49, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !149, file: !146, line: 94, baseType: !163, size: 64, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !146, line: 82, flags: DIFlagFwdDecl)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !149, file: !146, line: 96, baseType: !166, size: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !149, file: !146, line: 98, baseType: !5, size: 32, offset: 576)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !149, file: !146, line: 99, baseType: !155, size: 64, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !149, file: !146, line: 100, baseType: !155, size: 64, offset: 704)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !142, file: !16, line: 75, baseType: !5, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pending_buf", scope: !142, file: !16, line: 76, baseType: !158, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pending_buf_size", scope: !142, file: !16, line: 77, baseType: !11, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pending_out", scope: !142, file: !16, line: 78, baseType: !158, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !142, file: !16, line: 79, baseType: !5, size: 32, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "noheader", scope: !142, file: !16, line: 80, baseType: !5, size: 32, offset: 352)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !142, file: !16, line: 81, baseType: !56, size: 8, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !142, file: !16, line: 82, baseType: !56, size: 8, offset: 392)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "last_flush", scope: !142, file: !16, line: 83, baseType: !5, size: 32, offset: 416)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "w_size", scope: !142, file: !16, line: 87, baseType: !180, size: 32, offset: 448)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !57, line: 53, baseType: !13)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "w_bits", scope: !142, file: !16, line: 88, baseType: !180, size: 32, offset: 480)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "w_mask", scope: !142, file: !16, line: 89, baseType: !180, size: 32, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !142, file: !16, line: 91, baseType: !158, size: 64, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "window_size", scope: !142, file: !16, line: 101, baseType: !11, size: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !142, file: !16, line: 106, baseType: !186, size: 64, offset: 704)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pos", file: !16, line: 66, baseType: !9)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !142, file: !16, line: 112, baseType: !186, size: 64, offset: 768)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ins_h", scope: !142, file: !16, line: 114, baseType: !180, size: 32, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size", scope: !142, file: !16, line: 115, baseType: !180, size: 32, offset: 864)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "hash_bits", scope: !142, file: !16, line: 116, baseType: !180, size: 32, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !142, file: !16, line: 117, baseType: !180, size: 32, offset: 928)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "hash_shift", scope: !142, file: !16, line: 119, baseType: !180, size: 32, offset: 960)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !142, file: !16, line: 126, baseType: !51, size: 64, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "match_length", scope: !142, file: !16, line: 131, baseType: !180, size: 32, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "prev_match", scope: !142, file: !16, line: 132, baseType: !197, size: 32, offset: 1120)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPos", file: !16, line: 67, baseType: !13)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "match_available", scope: !142, file: !16, line: 133, baseType: !5, size: 32, offset: 1152)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "strstart", scope: !142, file: !16, line: 134, baseType: !180, size: 32, offset: 1184)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "match_start", scope: !142, file: !16, line: 135, baseType: !180, size: 32, offset: 1216)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !142, file: !16, line: 136, baseType: !180, size: 32, offset: 1248)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "prev_length", scope: !142, file: !16, line: 138, baseType: !180, size: 32, offset: 1280)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "max_chain_length", scope: !142, file: !16, line: 143, baseType: !180, size: 32, offset: 1312)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "max_lazy_match", scope: !142, file: !16, line: 149, baseType: !180, size: 32, offset: 1344)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !142, file: !16, line: 160, baseType: !5, size: 32, offset: 1376)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "strategy", scope: !142, file: !16, line: 161, baseType: !5, size: 32, offset: 1408)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "good_match", scope: !142, file: !16, line: 163, baseType: !180, size: 32, offset: 1440)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "nice_match", scope: !142, file: !16, line: 166, baseType: !5, size: 32, offset: 1472)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_ltree", scope: !142, file: !16, line: 170, baseType: !210, size: 18336, offset: 1504)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 18336, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 573)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_dtree", scope: !142, file: !16, line: 171, baseType: !214, size: 1952, offset: 19840)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1952, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 61)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "bl_tree", scope: !142, file: !16, line: 172, baseType: !218, size: 1248, offset: 21792)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1248, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 39)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "l_desc", scope: !142, file: !16, line: 174, baseType: !17, size: 192, offset: 23040)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "d_desc", scope: !142, file: !16, line: 175, baseType: !17, size: 192, offset: 23232)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "bl_desc", scope: !142, file: !16, line: 176, baseType: !17, size: 192, offset: 23424)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "bl_count", scope: !142, file: !16, line: 178, baseType: !91, size: 256, offset: 23616)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !142, file: !16, line: 181, baseType: !226, size: 18336, offset: 23872)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 18336, elements: !211)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "heap_len", scope: !142, file: !16, line: 182, baseType: !5, size: 32, offset: 42208)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "heap_max", scope: !142, file: !16, line: 183, baseType: !5, size: 32, offset: 42240)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !142, file: !16, line: 188, baseType: !230, size: 4584, offset: 42272)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4584, elements: !211)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "l_buf", scope: !142, file: !16, line: 192, baseType: !232, size: 64, offset: 46912)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "lit_bufsize", scope: !142, file: !16, line: 194, baseType: !180, size: 32, offset: 46976)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "last_lit", scope: !142, file: !16, line: 214, baseType: !180, size: 32, offset: 47008)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "d_buf", scope: !142, file: !16, line: 216, baseType: !236, size: 64, offset: 47040)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "opt_len", scope: !142, file: !16, line: 222, baseType: !11, size: 64, offset: 47104)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "static_len", scope: !142, file: !16, line: 223, baseType: !11, size: 64, offset: 47168)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_len", scope: !142, file: !16, line: 224, baseType: !11, size: 64, offset: 47232)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !142, file: !16, line: 225, baseType: !180, size: 32, offset: 47296)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "last_eob_len", scope: !142, file: !16, line: 226, baseType: !5, size: 32, offset: 47328)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "bi_buf", scope: !142, file: !16, line: 232, baseType: !9, size: 16, offset: 47360)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "bi_valid", scope: !142, file: !16, line: 236, baseType: !5, size: 32, offset: 47392)
!244 = !{!245}
!245 = !DILocalVariable(name: "s", arg: 1, scope: !137, file: !3, line: 242, type: !140)
!246 = !DILocation(line: 242, column: 17, scope: !137)
!247 = !DILocation(line: 245, column: 5, scope: !137)
!248 = !DILocation(line: 247, column: 5, scope: !137)
!249 = !DILocation(line: 247, column: 8, scope: !137)
!250 = !DILocation(line: 247, column: 23, scope: !137)
!251 = !DILocation(line: 249, column: 26, scope: !137)
!252 = !DILocation(line: 249, column: 29, scope: !137)
!253 = !DILocation(line: 249, column: 5, scope: !137)
!254 = !DILocation(line: 249, column: 8, scope: !137)
!255 = !DILocation(line: 249, column: 15, scope: !137)
!256 = !DILocation(line: 249, column: 24, scope: !137)
!257 = !DILocation(line: 250, column: 5, scope: !137)
!258 = !DILocation(line: 250, column: 8, scope: !137)
!259 = !DILocation(line: 250, column: 15, scope: !137)
!260 = !DILocation(line: 250, column: 25, scope: !137)
!261 = !DILocation(line: 252, column: 26, scope: !137)
!262 = !DILocation(line: 252, column: 29, scope: !137)
!263 = !DILocation(line: 252, column: 5, scope: !137)
!264 = !DILocation(line: 252, column: 8, scope: !137)
!265 = !DILocation(line: 252, column: 15, scope: !137)
!266 = !DILocation(line: 252, column: 24, scope: !137)
!267 = !DILocation(line: 253, column: 5, scope: !137)
!268 = !DILocation(line: 253, column: 8, scope: !137)
!269 = !DILocation(line: 253, column: 15, scope: !137)
!270 = !DILocation(line: 253, column: 25, scope: !137)
!271 = !DILocation(line: 255, column: 27, scope: !137)
!272 = !DILocation(line: 255, column: 30, scope: !137)
!273 = !DILocation(line: 255, column: 5, scope: !137)
!274 = !DILocation(line: 255, column: 8, scope: !137)
!275 = !DILocation(line: 255, column: 16, scope: !137)
!276 = !DILocation(line: 255, column: 25, scope: !137)
!277 = !DILocation(line: 256, column: 5, scope: !137)
!278 = !DILocation(line: 256, column: 8, scope: !137)
!279 = !DILocation(line: 256, column: 16, scope: !137)
!280 = !DILocation(line: 256, column: 26, scope: !137)
!281 = !DILocation(line: 258, column: 5, scope: !137)
!282 = !DILocation(line: 258, column: 8, scope: !137)
!283 = !DILocation(line: 258, column: 15, scope: !137)
!284 = !DILocation(line: 259, column: 5, scope: !137)
!285 = !DILocation(line: 259, column: 8, scope: !137)
!286 = !DILocation(line: 259, column: 17, scope: !137)
!287 = !DILocation(line: 260, column: 5, scope: !137)
!288 = !DILocation(line: 260, column: 8, scope: !137)
!289 = !DILocation(line: 260, column: 21, scope: !137)
!290 = !DILocation(line: 266, column: 16, scope: !137)
!291 = !DILocation(line: 266, column: 5, scope: !137)
!292 = !DILocation(line: 267, column: 1, scope: !137)
!293 = !DILocation(line: 174, column: 5, scope: !81)
!294 = !DILocation(line: 174, column: 9, scope: !81)
!295 = !DILocation(line: 175, column: 5, scope: !81)
!296 = !DILocation(line: 175, column: 9, scope: !81)
!297 = !DILocation(line: 176, column: 5, scope: !81)
!298 = !DILocation(line: 176, column: 9, scope: !81)
!299 = !DILocation(line: 177, column: 5, scope: !81)
!300 = !DILocation(line: 177, column: 9, scope: !81)
!301 = !DILocation(line: 178, column: 5, scope: !81)
!302 = !DILocation(line: 178, column: 9, scope: !81)
!303 = !DILocation(line: 179, column: 5, scope: !81)
!304 = !DILocation(line: 179, column: 9, scope: !81)
!305 = !DILocation(line: 182, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !81, file: !3, line: 182, column: 9)
!307 = !DILocation(line: 182, column: 9, scope: !81)
!308 = !DILocation(line: 182, column: 27, scope: !306)
!309 = !DILocation(line: 185, column: 12, scope: !81)
!310 = !DILocation(line: 186, column: 15, scope: !311)
!311 = distinct !DILexicalBlock(scope: !81, file: !3, line: 186, column: 5)
!312 = !DILocation(line: 186, column: 10, scope: !311)
!313 = !DILocation(line: 186, column: 20, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !3, line: 186, column: 5)
!315 = !DILocation(line: 186, column: 25, scope: !314)
!316 = !DILocation(line: 186, column: 5, scope: !311)
!317 = !DILocation(line: 187, column: 29, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 186, column: 51)
!319 = !DILocation(line: 187, column: 21, scope: !318)
!320 = !DILocation(line: 187, column: 9, scope: !318)
!321 = !DILocation(line: 187, column: 27, scope: !318)
!322 = !DILocation(line: 188, column: 16, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !3, line: 188, column: 9)
!324 = !DILocation(line: 188, column: 14, scope: !323)
!325 = !DILocation(line: 188, column: 21, scope: !326)
!326 = distinct !DILexicalBlock(scope: !323, file: !3, line: 188, column: 9)
!327 = !DILocation(line: 188, column: 41, scope: !326)
!328 = !DILocation(line: 188, column: 29, scope: !326)
!329 = !DILocation(line: 188, column: 27, scope: !326)
!330 = !DILocation(line: 188, column: 23, scope: !326)
!331 = !DILocation(line: 188, column: 9, scope: !323)
!332 = !DILocation(line: 189, column: 42, scope: !333)
!333 = distinct !DILexicalBlock(scope: !326, file: !3, line: 188, column: 54)
!334 = !DILocation(line: 189, column: 37, scope: !333)
!335 = !DILocation(line: 189, column: 31, scope: !333)
!336 = !DILocation(line: 189, column: 13, scope: !333)
!337 = !DILocation(line: 189, column: 35, scope: !333)
!338 = !DILocation(line: 190, column: 9, scope: !333)
!339 = !DILocation(line: 188, column: 50, scope: !326)
!340 = !DILocation(line: 188, column: 9, scope: !326)
!341 = distinct !{!341, !331, !342, !343, !344}
!342 = !DILocation(line: 190, column: 9, scope: !323)
!343 = !{!"llvm.loop.mustprogress"}
!344 = !{!"llvm.loop.unroll.disable"}
!345 = !DILocation(line: 191, column: 5, scope: !318)
!346 = !DILocation(line: 186, column: 47, scope: !314)
!347 = !DILocation(line: 186, column: 5, scope: !314)
!348 = distinct !{!348, !316, !349, !343, !344}
!349 = !DILocation(line: 191, column: 5, scope: !311)
!350 = !DILocation(line: 197, column: 34, scope: !81)
!351 = !DILocation(line: 197, column: 29, scope: !81)
!352 = !DILocation(line: 197, column: 17, scope: !81)
!353 = !DILocation(line: 197, column: 23, scope: !81)
!354 = !DILocation(line: 197, column: 5, scope: !81)
!355 = !DILocation(line: 197, column: 27, scope: !81)
!356 = !DILocation(line: 200, column: 10, scope: !81)
!357 = !DILocation(line: 201, column: 15, scope: !358)
!358 = distinct !DILexicalBlock(scope: !81, file: !3, line: 201, column: 5)
!359 = !DILocation(line: 201, column: 10, scope: !358)
!360 = !DILocation(line: 201, column: 21, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !3, line: 201, column: 5)
!362 = !DILocation(line: 201, column: 26, scope: !361)
!363 = !DILocation(line: 201, column: 5, scope: !358)
!364 = !DILocation(line: 202, column: 27, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !3, line: 201, column: 40)
!366 = !DILocation(line: 202, column: 19, scope: !365)
!367 = !DILocation(line: 202, column: 9, scope: !365)
!368 = !DILocation(line: 202, column: 25, scope: !365)
!369 = !DILocation(line: 203, column: 16, scope: !370)
!370 = distinct !DILexicalBlock(scope: !365, file: !3, line: 203, column: 9)
!371 = !DILocation(line: 203, column: 14, scope: !370)
!372 = !DILocation(line: 203, column: 21, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !3, line: 203, column: 9)
!374 = !DILocation(line: 203, column: 41, scope: !373)
!375 = !DILocation(line: 203, column: 29, scope: !373)
!376 = !DILocation(line: 203, column: 27, scope: !373)
!377 = !DILocation(line: 203, column: 23, scope: !373)
!378 = !DILocation(line: 203, column: 9, scope: !370)
!379 = !DILocation(line: 204, column: 38, scope: !380)
!380 = distinct !DILexicalBlock(scope: !373, file: !3, line: 203, column: 54)
!381 = !DILocation(line: 204, column: 33, scope: !380)
!382 = !DILocation(line: 204, column: 27, scope: !380)
!383 = !DILocation(line: 204, column: 13, scope: !380)
!384 = !DILocation(line: 204, column: 31, scope: !380)
!385 = !DILocation(line: 205, column: 9, scope: !380)
!386 = !DILocation(line: 203, column: 50, scope: !373)
!387 = !DILocation(line: 203, column: 9, scope: !373)
!388 = distinct !{!388, !378, !389, !343, !344}
!389 = !DILocation(line: 205, column: 9, scope: !370)
!390 = !DILocation(line: 206, column: 5, scope: !365)
!391 = !DILocation(line: 201, column: 36, scope: !361)
!392 = !DILocation(line: 201, column: 5, scope: !361)
!393 = distinct !{!393, !363, !394, !343, !344}
!394 = !DILocation(line: 206, column: 5, scope: !358)
!395 = !DILocation(line: 208, column: 10, scope: !81)
!396 = !DILocation(line: 209, column: 5, scope: !81)
!397 = !DILocation(line: 209, column: 13, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 209, column: 5)
!399 = distinct !DILexicalBlock(scope: !81, file: !3, line: 209, column: 5)
!400 = !DILocation(line: 209, column: 18, scope: !398)
!401 = !DILocation(line: 209, column: 5, scope: !399)
!402 = !DILocation(line: 210, column: 27, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !3, line: 209, column: 37)
!404 = !DILocation(line: 210, column: 32, scope: !403)
!405 = !DILocation(line: 210, column: 19, scope: !403)
!406 = !DILocation(line: 210, column: 9, scope: !403)
!407 = !DILocation(line: 210, column: 25, scope: !403)
!408 = !DILocation(line: 211, column: 16, scope: !409)
!409 = distinct !DILexicalBlock(scope: !403, file: !3, line: 211, column: 9)
!410 = !DILocation(line: 211, column: 14, scope: !409)
!411 = !DILocation(line: 211, column: 21, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !3, line: 211, column: 9)
!413 = !DILocation(line: 211, column: 42, scope: !412)
!414 = !DILocation(line: 211, column: 30, scope: !412)
!415 = !DILocation(line: 211, column: 47, scope: !412)
!416 = !DILocation(line: 211, column: 27, scope: !412)
!417 = !DILocation(line: 211, column: 23, scope: !412)
!418 = !DILocation(line: 211, column: 9, scope: !409)
!419 = !DILocation(line: 212, column: 44, scope: !420)
!420 = distinct !DILexicalBlock(scope: !412, file: !3, line: 211, column: 58)
!421 = !DILocation(line: 212, column: 39, scope: !420)
!422 = !DILocation(line: 212, column: 33, scope: !420)
!423 = !DILocation(line: 212, column: 27, scope: !420)
!424 = !DILocation(line: 212, column: 13, scope: !420)
!425 = !DILocation(line: 212, column: 37, scope: !420)
!426 = !DILocation(line: 213, column: 9, scope: !420)
!427 = !DILocation(line: 211, column: 54, scope: !412)
!428 = !DILocation(line: 211, column: 9, scope: !412)
!429 = distinct !{!429, !418, !430, !343, !344}
!430 = !DILocation(line: 213, column: 9, scope: !409)
!431 = !DILocation(line: 214, column: 5, scope: !403)
!432 = !DILocation(line: 209, column: 33, scope: !398)
!433 = !DILocation(line: 209, column: 5, scope: !398)
!434 = distinct !{!434, !401, !435, !343, !344}
!435 = !DILocation(line: 214, column: 5, scope: !399)
!436 = !DILocation(line: 218, column: 15, scope: !437)
!437 = distinct !DILexicalBlock(scope: !81, file: !3, line: 218, column: 5)
!438 = !DILocation(line: 218, column: 10, scope: !437)
!439 = !DILocation(line: 218, column: 20, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !3, line: 218, column: 5)
!441 = !DILocation(line: 218, column: 25, scope: !440)
!442 = !DILocation(line: 218, column: 5, scope: !437)
!443 = !DILocation(line: 218, column: 55, scope: !440)
!444 = !DILocation(line: 218, column: 46, scope: !440)
!445 = !DILocation(line: 218, column: 61, scope: !440)
!446 = !DILocation(line: 218, column: 42, scope: !440)
!447 = !DILocation(line: 218, column: 5, scope: !440)
!448 = distinct !{!448, !442, !449, !343, !344}
!449 = !DILocation(line: 218, column: 63, scope: !437)
!450 = !DILocation(line: 219, column: 7, scope: !81)
!451 = !DILocation(line: 220, column: 5, scope: !81)
!452 = !DILocation(line: 220, column: 12, scope: !81)
!453 = !DILocation(line: 220, column: 14, scope: !81)
!454 = !DILocation(line: 220, column: 36, scope: !81)
!455 = !DILocation(line: 220, column: 22, scope: !81)
!456 = !DILocation(line: 220, column: 40, scope: !81)
!457 = !DILocation(line: 220, column: 44, scope: !81)
!458 = !DILocation(line: 220, column: 49, scope: !81)
!459 = !DILocation(line: 220, column: 60, scope: !81)
!460 = distinct !{!460, !451, !459, !343, !344}
!461 = !DILocation(line: 221, column: 5, scope: !81)
!462 = !DILocation(line: 221, column: 12, scope: !81)
!463 = !DILocation(line: 221, column: 14, scope: !81)
!464 = !DILocation(line: 221, column: 36, scope: !81)
!465 = !DILocation(line: 221, column: 22, scope: !81)
!466 = !DILocation(line: 221, column: 40, scope: !81)
!467 = !DILocation(line: 221, column: 44, scope: !81)
!468 = !DILocation(line: 221, column: 49, scope: !81)
!469 = !DILocation(line: 221, column: 60, scope: !81)
!470 = distinct !{!470, !461, !469, !343, !344}
!471 = !DILocation(line: 222, column: 5, scope: !81)
!472 = !DILocation(line: 222, column: 12, scope: !81)
!473 = !DILocation(line: 222, column: 14, scope: !81)
!474 = !DILocation(line: 222, column: 36, scope: !81)
!475 = !DILocation(line: 222, column: 22, scope: !81)
!476 = !DILocation(line: 222, column: 40, scope: !81)
!477 = !DILocation(line: 222, column: 44, scope: !81)
!478 = !DILocation(line: 222, column: 49, scope: !81)
!479 = !DILocation(line: 222, column: 60, scope: !81)
!480 = distinct !{!480, !471, !479, !343, !344}
!481 = !DILocation(line: 223, column: 5, scope: !81)
!482 = !DILocation(line: 223, column: 12, scope: !81)
!483 = !DILocation(line: 223, column: 14, scope: !81)
!484 = !DILocation(line: 223, column: 36, scope: !81)
!485 = !DILocation(line: 223, column: 22, scope: !81)
!486 = !DILocation(line: 223, column: 40, scope: !81)
!487 = !DILocation(line: 223, column: 44, scope: !81)
!488 = !DILocation(line: 223, column: 49, scope: !81)
!489 = !DILocation(line: 223, column: 60, scope: !81)
!490 = distinct !{!490, !481, !489, !343, !344}
!491 = !DILocation(line: 228, column: 51, scope: !81)
!492 = !DILocation(line: 228, column: 5, scope: !81)
!493 = !DILocation(line: 231, column: 12, scope: !98)
!494 = !DILocation(line: 231, column: 10, scope: !98)
!495 = !DILocation(line: 231, column: 17, scope: !97)
!496 = !DILocation(line: 231, column: 19, scope: !97)
!497 = !DILocation(line: 231, column: 5, scope: !98)
!498 = !DILocation(line: 232, column: 22, scope: !96)
!499 = !DILocation(line: 232, column: 9, scope: !96)
!500 = !DILocation(line: 232, column: 25, scope: !96)
!501 = !DILocation(line: 232, column: 29, scope: !96)
!502 = !DILocation(line: 233, column: 32, scope: !95)
!503 = !DILocation(line: 233, column: 32, scope: !100)
!504 = !DILocation(line: 233, column: 32, scope: !96)
!505 = !DILocation(line: 233, column: 49, scope: !96)
!506 = !DILocation(line: 233, column: 22, scope: !96)
!507 = !DILocation(line: 233, column: 9, scope: !96)
!508 = !DILocation(line: 233, column: 25, scope: !96)
!509 = !DILocation(line: 233, column: 30, scope: !96)
!510 = !DILocation(line: 234, column: 5, scope: !96)
!511 = !DILocation(line: 231, column: 31, scope: !97)
!512 = !DILocation(line: 231, column: 5, scope: !97)
!513 = distinct !{!513, !497, !514, !343, !344}
!514 = !DILocation(line: 234, column: 5, scope: !98)
!515 = !DILocation(line: 235, column: 22, scope: !81)
!516 = !DILocation(line: 236, column: 1, scope: !81)
!517 = distinct !DISubprogram(name: "init_block", scope: !3, file: !3, line: 272, type: !138, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !518)
!518 = !{!519, !520}
!519 = !DILocalVariable(name: "s", arg: 1, scope: !517, file: !3, line: 273, type: !140)
!520 = !DILocalVariable(name: "n", scope: !517, file: !3, line: 276, type: !5)
!521 = !DILocation(line: 273, column: 17, scope: !517)
!522 = !DILocation(line: 276, column: 5, scope: !517)
!523 = !DILocation(line: 276, column: 9, scope: !517)
!524 = !DILocation(line: 279, column: 12, scope: !525)
!525 = distinct !DILexicalBlock(scope: !517, file: !3, line: 279, column: 5)
!526 = !DILocation(line: 279, column: 10, scope: !525)
!527 = !DILocation(line: 279, column: 17, scope: !528)
!528 = distinct !DILexicalBlock(scope: !525, file: !3, line: 279, column: 5)
!529 = !DILocation(line: 279, column: 19, scope: !528)
!530 = !DILocation(line: 279, column: 5, scope: !525)
!531 = !DILocation(line: 279, column: 36, scope: !528)
!532 = !DILocation(line: 279, column: 39, scope: !528)
!533 = !DILocation(line: 279, column: 49, scope: !528)
!534 = !DILocation(line: 279, column: 52, scope: !528)
!535 = !DILocation(line: 279, column: 57, scope: !528)
!536 = !DILocation(line: 279, column: 32, scope: !528)
!537 = !DILocation(line: 279, column: 5, scope: !528)
!538 = distinct !{!538, !530, !539, !343, !344}
!539 = !DILocation(line: 279, column: 59, scope: !525)
!540 = !DILocation(line: 280, column: 12, scope: !541)
!541 = distinct !DILexicalBlock(scope: !517, file: !3, line: 280, column: 5)
!542 = !DILocation(line: 280, column: 10, scope: !541)
!543 = !DILocation(line: 280, column: 17, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !3, line: 280, column: 5)
!545 = !DILocation(line: 280, column: 19, scope: !544)
!546 = !DILocation(line: 280, column: 5, scope: !541)
!547 = !DILocation(line: 280, column: 36, scope: !544)
!548 = !DILocation(line: 280, column: 39, scope: !544)
!549 = !DILocation(line: 280, column: 49, scope: !544)
!550 = !DILocation(line: 280, column: 52, scope: !544)
!551 = !DILocation(line: 280, column: 57, scope: !544)
!552 = !DILocation(line: 280, column: 32, scope: !544)
!553 = !DILocation(line: 280, column: 5, scope: !544)
!554 = distinct !{!554, !546, !555, !343, !344}
!555 = !DILocation(line: 280, column: 59, scope: !541)
!556 = !DILocation(line: 281, column: 12, scope: !557)
!557 = distinct !DILexicalBlock(scope: !517, file: !3, line: 281, column: 5)
!558 = !DILocation(line: 281, column: 10, scope: !557)
!559 = !DILocation(line: 281, column: 17, scope: !560)
!560 = distinct !DILexicalBlock(scope: !557, file: !3, line: 281, column: 5)
!561 = !DILocation(line: 281, column: 19, scope: !560)
!562 = !DILocation(line: 281, column: 5, scope: !557)
!563 = !DILocation(line: 281, column: 36, scope: !560)
!564 = !DILocation(line: 281, column: 39, scope: !560)
!565 = !DILocation(line: 281, column: 47, scope: !560)
!566 = !DILocation(line: 281, column: 50, scope: !560)
!567 = !DILocation(line: 281, column: 55, scope: !560)
!568 = !DILocation(line: 281, column: 32, scope: !560)
!569 = !DILocation(line: 281, column: 5, scope: !560)
!570 = distinct !{!570, !562, !571, !343, !344}
!571 = !DILocation(line: 281, column: 57, scope: !557)
!572 = !DILocation(line: 283, column: 5, scope: !517)
!573 = !DILocation(line: 283, column: 8, scope: !517)
!574 = !DILocation(line: 283, column: 29, scope: !517)
!575 = !DILocation(line: 283, column: 34, scope: !517)
!576 = !DILocation(line: 284, column: 18, scope: !517)
!577 = !DILocation(line: 284, column: 21, scope: !517)
!578 = !DILocation(line: 284, column: 32, scope: !517)
!579 = !DILocation(line: 284, column: 5, scope: !517)
!580 = !DILocation(line: 284, column: 8, scope: !517)
!581 = !DILocation(line: 284, column: 16, scope: !517)
!582 = !DILocation(line: 285, column: 19, scope: !517)
!583 = !DILocation(line: 285, column: 22, scope: !517)
!584 = !DILocation(line: 285, column: 30, scope: !517)
!585 = !DILocation(line: 285, column: 5, scope: !517)
!586 = !DILocation(line: 285, column: 8, scope: !517)
!587 = !DILocation(line: 285, column: 17, scope: !517)
!588 = !DILocation(line: 286, column: 1, scope: !517)
!589 = distinct !DISubprogram(name: "zlib_tr_stored_block", scope: !3, file: !3, line: 738, type: !590, scopeLine: 744, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !140, !49, !11, !5}
!592 = !{!593, !594, !595, !596, !597, !599}
!593 = !DILocalVariable(name: "s", arg: 1, scope: !589, file: !3, line: 739, type: !140)
!594 = !DILocalVariable(name: "buf", arg: 2, scope: !589, file: !3, line: 740, type: !49)
!595 = !DILocalVariable(name: "stored_len", arg: 3, scope: !589, file: !3, line: 741, type: !11)
!596 = !DILocalVariable(name: "eof", arg: 4, scope: !589, file: !3, line: 742, type: !5)
!597 = !DILocalVariable(name: "len", scope: !598, file: !3, line: 745, type: !5)
!598 = distinct !DILexicalBlock(scope: !589, file: !3, line: 745, column: 5)
!599 = !DILocalVariable(name: "val", scope: !600, file: !3, line: 745, type: !5)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 745, column: 5)
!601 = distinct !DILexicalBlock(scope: !598, file: !3, line: 745, column: 5)
!602 = !DILocation(line: 739, column: 17, scope: !589)
!603 = !DILocation(line: 740, column: 8, scope: !589)
!604 = !DILocation(line: 741, column: 6, scope: !589)
!605 = !DILocation(line: 742, column: 6, scope: !589)
!606 = !DILocation(line: 745, column: 5, scope: !598)
!607 = !DILocation(line: 745, column: 5, scope: !601)
!608 = !DILocation(line: 745, column: 5, scope: !600)
!609 = !DILocation(line: 745, column: 5, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 745, column: 5)
!611 = distinct !DILexicalBlock(scope: !600, file: !3, line: 745, column: 5)
!612 = !DILocation(line: 745, column: 5, scope: !613)
!613 = distinct !DILexicalBlock(scope: !611, file: !3, line: 745, column: 5)
!614 = !DILocation(line: 745, column: 5, scope: !615)
!615 = distinct !DILexicalBlock(scope: !601, file: !3, line: 745, column: 5)
!616 = !DILocation(line: 745, column: 5, scope: !589)
!617 = !DILocation(line: 746, column: 26, scope: !589)
!618 = !DILocation(line: 746, column: 29, scope: !589)
!619 = !DILocation(line: 746, column: 44, scope: !589)
!620 = !DILocation(line: 746, column: 48, scope: !589)
!621 = !DILocation(line: 746, column: 53, scope: !589)
!622 = !DILocation(line: 746, column: 5, scope: !589)
!623 = !DILocation(line: 746, column: 8, scope: !589)
!624 = !DILocation(line: 746, column: 23, scope: !589)
!625 = !DILocation(line: 747, column: 27, scope: !589)
!626 = !DILocation(line: 747, column: 38, scope: !589)
!627 = !DILocation(line: 747, column: 43, scope: !589)
!628 = !DILocation(line: 747, column: 5, scope: !589)
!629 = !DILocation(line: 747, column: 8, scope: !589)
!630 = !DILocation(line: 747, column: 23, scope: !589)
!631 = !DILocation(line: 749, column: 16, scope: !589)
!632 = !DILocation(line: 749, column: 19, scope: !589)
!633 = !DILocation(line: 749, column: 34, scope: !589)
!634 = !DILocation(line: 749, column: 24, scope: !589)
!635 = !DILocation(line: 749, column: 5, scope: !589)
!636 = !DILocation(line: 750, column: 1, scope: !589)
!637 = distinct !DISubprogram(name: "copy_block", scope: !3, file: !3, line: 1035, type: !638, scopeLine: 1041, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !140, !49, !13, !5}
!640 = !{!641, !642, !643, !644}
!641 = !DILocalVariable(name: "s", arg: 1, scope: !637, file: !3, line: 1036, type: !140)
!642 = !DILocalVariable(name: "buf", arg: 2, scope: !637, file: !3, line: 1037, type: !49)
!643 = !DILocalVariable(name: "len", arg: 3, scope: !637, file: !3, line: 1038, type: !13)
!644 = !DILocalVariable(name: "header", arg: 4, scope: !637, file: !3, line: 1039, type: !5)
!645 = !DILocation(line: 1036, column: 17, scope: !637)
!646 = !DILocation(line: 1037, column: 11, scope: !637)
!647 = !DILocation(line: 1038, column: 11, scope: !637)
!648 = !DILocation(line: 1039, column: 11, scope: !637)
!649 = !DILocation(line: 1042, column: 15, scope: !637)
!650 = !DILocation(line: 1042, column: 5, scope: !637)
!651 = !DILocation(line: 1043, column: 5, scope: !637)
!652 = !DILocation(line: 1043, column: 8, scope: !637)
!653 = !DILocation(line: 1043, column: 21, scope: !637)
!654 = !DILocation(line: 1045, column: 9, scope: !655)
!655 = distinct !DILexicalBlock(scope: !637, file: !3, line: 1045, column: 9)
!656 = !DILocation(line: 1045, column: 9, scope: !637)
!657 = !DILocation(line: 1046, column: 9, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 1046, column: 9)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 1046, column: 9)
!660 = distinct !DILexicalBlock(scope: !655, file: !3, line: 1045, column: 17)
!661 = !DILocation(line: 1046, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 1046, column: 9)
!663 = !DILocation(line: 1047, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 1047, column: 9)
!665 = distinct !DILexicalBlock(scope: !660, file: !3, line: 1047, column: 9)
!666 = !DILocation(line: 1047, column: 9, scope: !667)
!667 = distinct !DILexicalBlock(scope: !665, file: !3, line: 1047, column: 9)
!668 = !DILocation(line: 1051, column: 5, scope: !660)
!669 = !DILocation(line: 1056, column: 13, scope: !637)
!670 = !DILocation(line: 1056, column: 16, scope: !637)
!671 = !DILocation(line: 1056, column: 28, scope: !637)
!672 = !DILocation(line: 1056, column: 31, scope: !637)
!673 = !DILocation(line: 1056, column: 41, scope: !637)
!674 = !DILocation(line: 1056, column: 46, scope: !637)
!675 = !DILocation(line: 1056, column: 5, scope: !637)
!676 = !DILocation(line: 1057, column: 19, scope: !637)
!677 = !DILocation(line: 1057, column: 5, scope: !637)
!678 = !DILocation(line: 1057, column: 8, scope: !637)
!679 = !DILocation(line: 1057, column: 16, scope: !637)
!680 = !DILocation(line: 1058, column: 1, scope: !637)
!681 = distinct !DISubprogram(name: "zlib_tr_stored_type_only", scope: !3, file: !3, line: 754, type: !138, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !682)
!682 = !{!683, !684, !686}
!683 = !DILocalVariable(name: "s", arg: 1, scope: !681, file: !3, line: 755, type: !140)
!684 = !DILocalVariable(name: "len", scope: !685, file: !3, line: 758, type: !5)
!685 = distinct !DILexicalBlock(scope: !681, file: !3, line: 758, column: 5)
!686 = !DILocalVariable(name: "val", scope: !687, file: !3, line: 758, type: !5)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 758, column: 5)
!688 = distinct !DILexicalBlock(scope: !685, file: !3, line: 758, column: 5)
!689 = !DILocation(line: 755, column: 17, scope: !681)
!690 = !DILocation(line: 758, column: 5, scope: !685)
!691 = !DILocation(line: 758, column: 5, scope: !688)
!692 = !DILocation(line: 758, column: 5, scope: !687)
!693 = !DILocation(line: 758, column: 5, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 758, column: 5)
!695 = distinct !DILexicalBlock(scope: !687, file: !3, line: 758, column: 5)
!696 = !DILocation(line: 758, column: 5, scope: !697)
!697 = distinct !DILexicalBlock(scope: !695, file: !3, line: 758, column: 5)
!698 = !DILocation(line: 758, column: 5, scope: !699)
!699 = distinct !DILexicalBlock(scope: !688, file: !3, line: 758, column: 5)
!700 = !DILocation(line: 758, column: 5, scope: !681)
!701 = !DILocation(line: 759, column: 15, scope: !681)
!702 = !DILocation(line: 759, column: 5, scope: !681)
!703 = !DILocation(line: 760, column: 26, scope: !681)
!704 = !DILocation(line: 760, column: 29, scope: !681)
!705 = !DILocation(line: 760, column: 44, scope: !681)
!706 = !DILocation(line: 760, column: 49, scope: !681)
!707 = !DILocation(line: 760, column: 5, scope: !681)
!708 = !DILocation(line: 760, column: 8, scope: !681)
!709 = !DILocation(line: 760, column: 23, scope: !681)
!710 = !DILocation(line: 761, column: 1, scope: !681)
!711 = distinct !DISubprogram(name: "bi_windup", scope: !16, file: !16, line: 330, type: !138, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !712)
!712 = !{!713}
!713 = !DILocalVariable(name: "s", arg: 1, scope: !711, file: !16, line: 330, type: !140)
!714 = !DILocation(line: 330, column: 45, scope: !711)
!715 = !DILocation(line: 332, column: 9, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !16, line: 332, column: 9)
!717 = !DILocation(line: 332, column: 12, scope: !716)
!718 = !DILocation(line: 332, column: 21, scope: !716)
!719 = !DILocation(line: 332, column: 9, scope: !711)
!720 = !DILocation(line: 333, column: 9, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !16, line: 333, column: 9)
!722 = distinct !DILexicalBlock(scope: !723, file: !16, line: 333, column: 9)
!723 = distinct !DILexicalBlock(scope: !716, file: !16, line: 332, column: 26)
!724 = !DILocation(line: 333, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !16, line: 333, column: 9)
!726 = !DILocation(line: 334, column: 5, scope: !723)
!727 = !DILocation(line: 334, column: 16, scope: !728)
!728 = distinct !DILexicalBlock(scope: !716, file: !16, line: 334, column: 16)
!729 = !DILocation(line: 334, column: 19, scope: !728)
!730 = !DILocation(line: 334, column: 28, scope: !728)
!731 = !DILocation(line: 334, column: 16, scope: !716)
!732 = !DILocation(line: 335, column: 9, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !16, line: 335, column: 9)
!734 = distinct !DILexicalBlock(scope: !728, file: !16, line: 334, column: 33)
!735 = !DILocation(line: 336, column: 5, scope: !734)
!736 = !DILocation(line: 337, column: 5, scope: !711)
!737 = !DILocation(line: 337, column: 8, scope: !711)
!738 = !DILocation(line: 337, column: 15, scope: !711)
!739 = !DILocation(line: 338, column: 5, scope: !711)
!740 = !DILocation(line: 338, column: 8, scope: !711)
!741 = !DILocation(line: 338, column: 17, scope: !711)
!742 = !DILocation(line: 342, column: 1, scope: !711)
!743 = distinct !DISubprogram(name: "zlib_tr_align", scope: !3, file: !3, line: 775, type: !138, scopeLine: 778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !744)
!744 = !{!745, !746, !748, !751, !753, !756, !760, !763, !765}
!745 = !DILocalVariable(name: "s", arg: 1, scope: !743, file: !3, line: 776, type: !140)
!746 = !DILocalVariable(name: "len", scope: !747, file: !3, line: 779, type: !5)
!747 = distinct !DILexicalBlock(scope: !743, file: !3, line: 779, column: 5)
!748 = !DILocalVariable(name: "val", scope: !749, file: !3, line: 779, type: !5)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 779, column: 5)
!750 = distinct !DILexicalBlock(scope: !747, file: !3, line: 779, column: 5)
!751 = !DILocalVariable(name: "len", scope: !752, file: !3, line: 780, type: !5)
!752 = distinct !DILexicalBlock(scope: !743, file: !3, line: 780, column: 5)
!753 = !DILocalVariable(name: "val", scope: !754, file: !3, line: 780, type: !5)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 780, column: 5)
!755 = distinct !DILexicalBlock(scope: !752, file: !3, line: 780, column: 5)
!756 = !DILocalVariable(name: "len", scope: !757, file: !3, line: 789, type: !5)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 789, column: 9)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 788, column: 53)
!759 = distinct !DILexicalBlock(scope: !743, file: !3, line: 788, column: 9)
!760 = !DILocalVariable(name: "val", scope: !761, file: !3, line: 789, type: !5)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 789, column: 9)
!762 = distinct !DILexicalBlock(scope: !757, file: !3, line: 789, column: 9)
!763 = !DILocalVariable(name: "len", scope: !764, file: !3, line: 790, type: !5)
!764 = distinct !DILexicalBlock(scope: !758, file: !3, line: 790, column: 9)
!765 = !DILocalVariable(name: "val", scope: !766, file: !3, line: 790, type: !5)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 790, column: 9)
!767 = distinct !DILexicalBlock(scope: !764, file: !3, line: 790, column: 9)
!768 = !DILocation(line: 776, column: 17, scope: !743)
!769 = !DILocation(line: 779, column: 5, scope: !747)
!770 = !DILocation(line: 779, column: 5, scope: !750)
!771 = !DILocation(line: 779, column: 5, scope: !749)
!772 = !DILocation(line: 779, column: 5, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 779, column: 5)
!774 = distinct !DILexicalBlock(scope: !749, file: !3, line: 779, column: 5)
!775 = !DILocation(line: 779, column: 5, scope: !776)
!776 = distinct !DILexicalBlock(scope: !774, file: !3, line: 779, column: 5)
!777 = !DILocation(line: 779, column: 5, scope: !778)
!778 = distinct !DILexicalBlock(scope: !750, file: !3, line: 779, column: 5)
!779 = !DILocation(line: 779, column: 5, scope: !743)
!780 = !DILocation(line: 780, column: 5, scope: !752)
!781 = !DILocation(line: 780, column: 5, scope: !755)
!782 = !DILocation(line: 780, column: 5, scope: !754)
!783 = !DILocation(line: 780, column: 5, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 780, column: 5)
!785 = distinct !DILexicalBlock(scope: !754, file: !3, line: 780, column: 5)
!786 = !DILocation(line: 780, column: 5, scope: !787)
!787 = distinct !DILexicalBlock(scope: !785, file: !3, line: 780, column: 5)
!788 = !DILocation(line: 780, column: 5, scope: !789)
!789 = distinct !DILexicalBlock(scope: !755, file: !3, line: 780, column: 5)
!790 = !DILocation(line: 780, column: 5, scope: !743)
!791 = !DILocation(line: 781, column: 5, scope: !743)
!792 = !DILocation(line: 781, column: 8, scope: !743)
!793 = !DILocation(line: 781, column: 23, scope: !743)
!794 = !DILocation(line: 782, column: 14, scope: !743)
!795 = !DILocation(line: 782, column: 5, scope: !743)
!796 = !DILocation(line: 788, column: 13, scope: !759)
!797 = !DILocation(line: 788, column: 16, scope: !759)
!798 = !DILocation(line: 788, column: 11, scope: !759)
!799 = !DILocation(line: 788, column: 29, scope: !759)
!800 = !DILocation(line: 788, column: 36, scope: !759)
!801 = !DILocation(line: 788, column: 39, scope: !759)
!802 = !DILocation(line: 788, column: 34, scope: !759)
!803 = !DILocation(line: 788, column: 48, scope: !759)
!804 = !DILocation(line: 788, column: 9, scope: !743)
!805 = !DILocation(line: 789, column: 9, scope: !757)
!806 = !DILocation(line: 789, column: 9, scope: !762)
!807 = !DILocation(line: 789, column: 9, scope: !761)
!808 = !DILocation(line: 789, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 789, column: 9)
!810 = distinct !DILexicalBlock(scope: !761, file: !3, line: 789, column: 9)
!811 = !DILocation(line: 789, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !810, file: !3, line: 789, column: 9)
!813 = !DILocation(line: 789, column: 9, scope: !814)
!814 = distinct !DILexicalBlock(scope: !762, file: !3, line: 789, column: 9)
!815 = !DILocation(line: 789, column: 9, scope: !758)
!816 = !DILocation(line: 790, column: 9, scope: !764)
!817 = !DILocation(line: 790, column: 9, scope: !767)
!818 = !DILocation(line: 790, column: 9, scope: !766)
!819 = !DILocation(line: 790, column: 9, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 790, column: 9)
!821 = distinct !DILexicalBlock(scope: !766, file: !3, line: 790, column: 9)
!822 = !DILocation(line: 790, column: 9, scope: !823)
!823 = distinct !DILexicalBlock(scope: !821, file: !3, line: 790, column: 9)
!824 = !DILocation(line: 790, column: 9, scope: !825)
!825 = distinct !DILexicalBlock(scope: !767, file: !3, line: 790, column: 9)
!826 = !DILocation(line: 790, column: 9, scope: !758)
!827 = !DILocation(line: 791, column: 9, scope: !758)
!828 = !DILocation(line: 791, column: 12, scope: !758)
!829 = !DILocation(line: 791, column: 27, scope: !758)
!830 = !DILocation(line: 792, column: 18, scope: !758)
!831 = !DILocation(line: 792, column: 9, scope: !758)
!832 = !DILocation(line: 793, column: 5, scope: !758)
!833 = !DILocation(line: 794, column: 5, scope: !743)
!834 = !DILocation(line: 794, column: 8, scope: !743)
!835 = !DILocation(line: 794, column: 21, scope: !743)
!836 = !DILocation(line: 795, column: 1, scope: !743)
!837 = distinct !DISubprogram(name: "bi_flush", scope: !16, file: !16, line: 314, type: !138, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !838)
!838 = !{!839}
!839 = !DILocalVariable(name: "s", arg: 1, scope: !837, file: !16, line: 314, type: !140)
!840 = !DILocation(line: 314, column: 44, scope: !837)
!841 = !DILocation(line: 316, column: 9, scope: !842)
!842 = distinct !DILexicalBlock(scope: !837, file: !16, line: 316, column: 9)
!843 = !DILocation(line: 316, column: 12, scope: !842)
!844 = !DILocation(line: 316, column: 21, scope: !842)
!845 = !DILocation(line: 316, column: 9, scope: !837)
!846 = !DILocation(line: 317, column: 9, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !16, line: 317, column: 9)
!848 = distinct !DILexicalBlock(scope: !849, file: !16, line: 317, column: 9)
!849 = distinct !DILexicalBlock(scope: !842, file: !16, line: 316, column: 28)
!850 = !DILocation(line: 317, column: 9, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !16, line: 317, column: 9)
!852 = !DILocation(line: 318, column: 9, scope: !849)
!853 = !DILocation(line: 318, column: 12, scope: !849)
!854 = !DILocation(line: 318, column: 19, scope: !849)
!855 = !DILocation(line: 319, column: 9, scope: !849)
!856 = !DILocation(line: 319, column: 12, scope: !849)
!857 = !DILocation(line: 319, column: 21, scope: !849)
!858 = !DILocation(line: 320, column: 5, scope: !849)
!859 = !DILocation(line: 320, column: 16, scope: !860)
!860 = distinct !DILexicalBlock(scope: !842, file: !16, line: 320, column: 16)
!861 = !DILocation(line: 320, column: 19, scope: !860)
!862 = !DILocation(line: 320, column: 28, scope: !860)
!863 = !DILocation(line: 320, column: 16, scope: !842)
!864 = !DILocation(line: 321, column: 9, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !16, line: 321, column: 9)
!866 = distinct !DILexicalBlock(scope: !860, file: !16, line: 320, column: 34)
!867 = !DILocation(line: 322, column: 9, scope: !866)
!868 = !DILocation(line: 322, column: 12, scope: !866)
!869 = !DILocation(line: 322, column: 19, scope: !866)
!870 = !DILocation(line: 323, column: 9, scope: !866)
!871 = !DILocation(line: 323, column: 12, scope: !866)
!872 = !DILocation(line: 323, column: 21, scope: !866)
!873 = !DILocation(line: 324, column: 5, scope: !866)
!874 = !DILocation(line: 325, column: 1, scope: !837)
!875 = distinct !DISubprogram(name: "zlib_tr_flush_block", scope: !3, file: !3, line: 802, type: !876, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !878)
!876 = !DISubroutineType(types: !877)
!877 = !{!11, !140, !49, !11, !5}
!878 = !{!879, !880, !881, !882, !883, !884, !885, !886, !891, !894, !897}
!879 = !DILocalVariable(name: "s", arg: 1, scope: !875, file: !3, line: 803, type: !140)
!880 = !DILocalVariable(name: "buf", arg: 2, scope: !875, file: !3, line: 804, type: !49)
!881 = !DILocalVariable(name: "stored_len", arg: 3, scope: !875, file: !3, line: 805, type: !11)
!882 = !DILocalVariable(name: "eof", arg: 4, scope: !875, file: !3, line: 806, type: !5)
!883 = !DILocalVariable(name: "opt_lenb", scope: !875, file: !3, line: 809, type: !11)
!884 = !DILocalVariable(name: "static_lenb", scope: !875, file: !3, line: 809, type: !11)
!885 = !DILocalVariable(name: "max_blindex", scope: !875, file: !3, line: 810, type: !5)
!886 = !DILocalVariable(name: "len", scope: !887, file: !3, line: 888, type: !5)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 888, column: 9)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 886, column: 41)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 886, column: 16)
!890 = distinct !DILexicalBlock(scope: !875, file: !3, line: 872, column: 9)
!891 = !DILocalVariable(name: "val", scope: !892, file: !3, line: 888, type: !5)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 888, column: 9)
!893 = distinct !DILexicalBlock(scope: !887, file: !3, line: 888, column: 9)
!894 = !DILocalVariable(name: "len", scope: !895, file: !3, line: 892, type: !5)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 892, column: 9)
!896 = distinct !DILexicalBlock(scope: !889, file: !3, line: 891, column: 12)
!897 = !DILocalVariable(name: "val", scope: !898, file: !3, line: 892, type: !5)
!898 = distinct !DILexicalBlock(scope: !899, file: !3, line: 892, column: 9)
!899 = distinct !DILexicalBlock(scope: !895, file: !3, line: 892, column: 9)
!900 = !DILocation(line: 803, column: 17, scope: !875)
!901 = !DILocation(line: 804, column: 8, scope: !875)
!902 = !DILocation(line: 805, column: 6, scope: !875)
!903 = !DILocation(line: 806, column: 6, scope: !875)
!904 = !DILocation(line: 809, column: 5, scope: !875)
!905 = !DILocation(line: 809, column: 9, scope: !875)
!906 = !DILocation(line: 809, column: 19, scope: !875)
!907 = !DILocation(line: 810, column: 5, scope: !875)
!908 = !DILocation(line: 810, column: 9, scope: !875)
!909 = !DILocation(line: 813, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !875, file: !3, line: 813, column: 9)
!911 = !DILocation(line: 813, column: 12, scope: !910)
!912 = !DILocation(line: 813, column: 18, scope: !910)
!913 = !DILocation(line: 813, column: 9, scope: !875)
!914 = !DILocation(line: 816, column: 6, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 816, column: 6)
!916 = distinct !DILexicalBlock(scope: !910, file: !3, line: 813, column: 23)
!917 = !DILocation(line: 816, column: 9, scope: !915)
!918 = !DILocation(line: 816, column: 19, scope: !915)
!919 = !DILocation(line: 816, column: 6, scope: !916)
!920 = !DILocation(line: 816, column: 47, scope: !915)
!921 = !DILocation(line: 816, column: 33, scope: !915)
!922 = !DILocation(line: 819, column: 13, scope: !916)
!923 = !DILocation(line: 819, column: 32, scope: !916)
!924 = !DILocation(line: 819, column: 35, scope: !916)
!925 = !DILocation(line: 819, column: 2, scope: !916)
!926 = !DILocation(line: 823, column: 13, scope: !916)
!927 = !DILocation(line: 823, column: 32, scope: !916)
!928 = !DILocation(line: 823, column: 35, scope: !916)
!929 = !DILocation(line: 823, column: 2, scope: !916)
!930 = !DILocation(line: 833, column: 30, scope: !916)
!931 = !DILocation(line: 833, column: 16, scope: !916)
!932 = !DILocation(line: 833, column: 14, scope: !916)
!933 = !DILocation(line: 836, column: 14, scope: !916)
!934 = !DILocation(line: 836, column: 17, scope: !916)
!935 = !DILocation(line: 836, column: 24, scope: !916)
!936 = !DILocation(line: 836, column: 26, scope: !916)
!937 = !DILocation(line: 836, column: 29, scope: !916)
!938 = !DILocation(line: 836, column: 11, scope: !916)
!939 = !DILocation(line: 837, column: 17, scope: !916)
!940 = !DILocation(line: 837, column: 20, scope: !916)
!941 = !DILocation(line: 837, column: 30, scope: !916)
!942 = !DILocation(line: 837, column: 32, scope: !916)
!943 = !DILocation(line: 837, column: 35, scope: !916)
!944 = !DILocation(line: 837, column: 14, scope: !916)
!945 = !DILocation(line: 843, column: 6, scope: !946)
!946 = distinct !DILexicalBlock(scope: !916, file: !3, line: 843, column: 6)
!947 = !DILocation(line: 843, column: 21, scope: !946)
!948 = !DILocation(line: 843, column: 18, scope: !946)
!949 = !DILocation(line: 843, column: 6, scope: !916)
!950 = !DILocation(line: 843, column: 42, scope: !946)
!951 = !DILocation(line: 843, column: 40, scope: !946)
!952 = !DILocation(line: 843, column: 31, scope: !946)
!953 = !DILocation(line: 845, column: 5, scope: !916)
!954 = !DILocation(line: 847, column: 27, scope: !955)
!955 = distinct !DILexicalBlock(scope: !910, file: !3, line: 845, column: 12)
!956 = !DILocation(line: 847, column: 38, scope: !955)
!957 = !DILocation(line: 847, column: 25, scope: !955)
!958 = !DILocation(line: 847, column: 11, scope: !955)
!959 = !DILocation(line: 872, column: 9, scope: !890)
!960 = !DILocation(line: 872, column: 19, scope: !890)
!961 = !DILocation(line: 872, column: 25, scope: !890)
!962 = !DILocation(line: 872, column: 22, scope: !890)
!963 = !DILocation(line: 872, column: 34, scope: !890)
!964 = !DILocation(line: 872, column: 37, scope: !890)
!965 = !DILocation(line: 872, column: 41, scope: !890)
!966 = !DILocation(line: 872, column: 9, scope: !875)
!967 = !DILocation(line: 881, column: 30, scope: !968)
!968 = distinct !DILexicalBlock(scope: !890, file: !3, line: 872, column: 54)
!969 = !DILocation(line: 881, column: 33, scope: !968)
!970 = !DILocation(line: 881, column: 38, scope: !968)
!971 = !DILocation(line: 881, column: 50, scope: !968)
!972 = !DILocation(line: 881, column: 9, scope: !968)
!973 = !DILocation(line: 886, column: 5, scope: !968)
!974 = !DILocation(line: 886, column: 16, scope: !889)
!975 = !DILocation(line: 886, column: 31, scope: !889)
!976 = !DILocation(line: 886, column: 28, scope: !889)
!977 = !DILocation(line: 886, column: 16, scope: !890)
!978 = !DILocation(line: 888, column: 9, scope: !887)
!979 = !DILocation(line: 888, column: 9, scope: !893)
!980 = !DILocation(line: 888, column: 9, scope: !892)
!981 = !DILocation(line: 888, column: 9, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !3, line: 888, column: 9)
!983 = distinct !DILexicalBlock(scope: !892, file: !3, line: 888, column: 9)
!984 = !DILocation(line: 888, column: 9, scope: !985)
!985 = distinct !DILexicalBlock(scope: !983, file: !3, line: 888, column: 9)
!986 = !DILocation(line: 888, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !893, file: !3, line: 888, column: 9)
!988 = !DILocation(line: 888, column: 9, scope: !888)
!989 = !DILocation(line: 889, column: 24, scope: !888)
!990 = !DILocation(line: 889, column: 9, scope: !888)
!991 = !DILocation(line: 890, column: 34, scope: !888)
!992 = !DILocation(line: 890, column: 37, scope: !888)
!993 = !DILocation(line: 890, column: 32, scope: !888)
!994 = !DILocation(line: 890, column: 9, scope: !888)
!995 = !DILocation(line: 890, column: 12, scope: !888)
!996 = !DILocation(line: 890, column: 27, scope: !888)
!997 = !DILocation(line: 891, column: 5, scope: !888)
!998 = !DILocation(line: 892, column: 9, scope: !895)
!999 = !DILocation(line: 892, column: 9, scope: !899)
!1000 = !DILocation(line: 892, column: 9, scope: !898)
!1001 = !DILocation(line: 892, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 892, column: 9)
!1003 = distinct !DILexicalBlock(scope: !898, file: !3, line: 892, column: 9)
!1004 = !DILocation(line: 892, column: 9, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 892, column: 9)
!1006 = !DILocation(line: 892, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !899, file: !3, line: 892, column: 9)
!1008 = !DILocation(line: 892, column: 9, scope: !896)
!1009 = !DILocation(line: 893, column: 24, scope: !896)
!1010 = !DILocation(line: 893, column: 27, scope: !896)
!1011 = !DILocation(line: 893, column: 30, scope: !896)
!1012 = !DILocation(line: 893, column: 37, scope: !896)
!1013 = !DILocation(line: 893, column: 45, scope: !896)
!1014 = !DILocation(line: 893, column: 49, scope: !896)
!1015 = !DILocation(line: 893, column: 52, scope: !896)
!1016 = !DILocation(line: 893, column: 59, scope: !896)
!1017 = !DILocation(line: 893, column: 67, scope: !896)
!1018 = !DILocation(line: 894, column: 24, scope: !896)
!1019 = !DILocation(line: 894, column: 35, scope: !896)
!1020 = !DILocation(line: 893, column: 9, scope: !896)
!1021 = !DILocation(line: 895, column: 24, scope: !896)
!1022 = !DILocation(line: 895, column: 38, scope: !896)
!1023 = !DILocation(line: 895, column: 41, scope: !896)
!1024 = !DILocation(line: 895, column: 63, scope: !896)
!1025 = !DILocation(line: 895, column: 66, scope: !896)
!1026 = !DILocation(line: 895, column: 9, scope: !896)
!1027 = !DILocation(line: 896, column: 34, scope: !896)
!1028 = !DILocation(line: 896, column: 37, scope: !896)
!1029 = !DILocation(line: 896, column: 32, scope: !896)
!1030 = !DILocation(line: 896, column: 9, scope: !896)
!1031 = !DILocation(line: 896, column: 12, scope: !896)
!1032 = !DILocation(line: 896, column: 27, scope: !896)
!1033 = !DILocation(line: 899, column: 16, scope: !875)
!1034 = !DILocation(line: 899, column: 5, scope: !875)
!1035 = !DILocation(line: 901, column: 9, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !875, file: !3, line: 901, column: 9)
!1037 = !DILocation(line: 901, column: 9, scope: !875)
!1038 = !DILocation(line: 902, column: 19, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 901, column: 14)
!1040 = !DILocation(line: 902, column: 9, scope: !1039)
!1041 = !DILocation(line: 903, column: 9, scope: !1039)
!1042 = !DILocation(line: 903, column: 12, scope: !1039)
!1043 = !DILocation(line: 903, column: 27, scope: !1039)
!1044 = !DILocation(line: 904, column: 5, scope: !1039)
!1045 = !DILocation(line: 908, column: 12, scope: !875)
!1046 = !DILocation(line: 908, column: 15, scope: !875)
!1047 = !DILocation(line: 908, column: 30, scope: !875)
!1048 = !DILocation(line: 909, column: 1, scope: !875)
!1049 = !DILocation(line: 908, column: 5, scope: !875)
!1050 = distinct !DISubprogram(name: "set_data_type", scope: !3, file: !3, line: 1018, type: !138, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1051)
!1051 = !{!1052, !1053, !1054, !1055}
!1052 = !DILocalVariable(name: "s", arg: 1, scope: !1050, file: !3, line: 1019, type: !140)
!1053 = !DILocalVariable(name: "n", scope: !1050, file: !3, line: 1022, type: !5)
!1054 = !DILocalVariable(name: "ascii_freq", scope: !1050, file: !3, line: 1023, type: !13)
!1055 = !DILocalVariable(name: "bin_freq", scope: !1050, file: !3, line: 1024, type: !13)
!1056 = !DILocation(line: 1019, column: 17, scope: !1050)
!1057 = !DILocation(line: 1022, column: 5, scope: !1050)
!1058 = !DILocation(line: 1022, column: 9, scope: !1050)
!1059 = !DILocation(line: 1023, column: 5, scope: !1050)
!1060 = !DILocation(line: 1023, column: 14, scope: !1050)
!1061 = !DILocation(line: 1024, column: 5, scope: !1050)
!1062 = !DILocation(line: 1024, column: 14, scope: !1050)
!1063 = !DILocation(line: 1025, column: 5, scope: !1050)
!1064 = !DILocation(line: 1025, column: 12, scope: !1050)
!1065 = !DILocation(line: 1025, column: 14, scope: !1050)
!1066 = !DILocation(line: 1025, column: 38, scope: !1050)
!1067 = !DILocation(line: 1025, column: 41, scope: !1050)
!1068 = !DILocation(line: 1025, column: 52, scope: !1050)
!1069 = !DILocation(line: 1025, column: 56, scope: !1050)
!1070 = !DILocation(line: 1025, column: 35, scope: !1050)
!1071 = distinct !{!1071, !1063, !1069, !343, !344}
!1072 = !DILocation(line: 1026, column: 5, scope: !1050)
!1073 = !DILocation(line: 1026, column: 12, scope: !1050)
!1074 = !DILocation(line: 1026, column: 14, scope: !1050)
!1075 = !DILocation(line: 1026, column: 38, scope: !1050)
!1076 = !DILocation(line: 1026, column: 41, scope: !1050)
!1077 = !DILocation(line: 1026, column: 52, scope: !1050)
!1078 = !DILocation(line: 1026, column: 56, scope: !1050)
!1079 = !DILocation(line: 1026, column: 35, scope: !1050)
!1080 = distinct !{!1080, !1072, !1078, !343, !344}
!1081 = !DILocation(line: 1027, column: 5, scope: !1050)
!1082 = !DILocation(line: 1027, column: 12, scope: !1050)
!1083 = !DILocation(line: 1027, column: 14, scope: !1050)
!1084 = !DILocation(line: 1027, column: 38, scope: !1050)
!1085 = !DILocation(line: 1027, column: 41, scope: !1050)
!1086 = !DILocation(line: 1027, column: 52, scope: !1050)
!1087 = !DILocation(line: 1027, column: 56, scope: !1050)
!1088 = !DILocation(line: 1027, column: 35, scope: !1050)
!1089 = distinct !{!1089, !1081, !1087, !343, !344}
!1090 = !DILocation(line: 1028, column: 27, scope: !1050)
!1091 = !DILocation(line: 1028, column: 39, scope: !1050)
!1092 = !DILocation(line: 1028, column: 50, scope: !1050)
!1093 = !DILocation(line: 1028, column: 36, scope: !1050)
!1094 = !DILocation(line: 1028, column: 20, scope: !1050)
!1095 = !DILocation(line: 1028, column: 5, scope: !1050)
!1096 = !DILocation(line: 1028, column: 8, scope: !1050)
!1097 = !DILocation(line: 1028, column: 18, scope: !1050)
!1098 = !DILocation(line: 1029, column: 1, scope: !1050)
!1099 = distinct !DISubprogram(name: "build_tree", scope: !3, file: !3, line: 484, type: !1100, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !140, !14}
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1115}
!1103 = !DILocalVariable(name: "s", arg: 1, scope: !1099, file: !3, line: 485, type: !140)
!1104 = !DILocalVariable(name: "desc", arg: 2, scope: !1099, file: !3, line: 486, type: !14)
!1105 = !DILocalVariable(name: "tree", scope: !1099, file: !3, line: 489, type: !20)
!1106 = !DILocalVariable(name: "stree", scope: !1099, file: !3, line: 490, type: !41)
!1107 = !DILocalVariable(name: "elems", scope: !1099, file: !3, line: 491, type: !5)
!1108 = !DILocalVariable(name: "n", scope: !1099, file: !3, line: 492, type: !5)
!1109 = !DILocalVariable(name: "m", scope: !1099, file: !3, line: 492, type: !5)
!1110 = !DILocalVariable(name: "max_code", scope: !1099, file: !3, line: 493, type: !5)
!1111 = !DILocalVariable(name: "node", scope: !1099, file: !3, line: 494, type: !5)
!1112 = !DILocalVariable(name: "__UNIQUE_ID___x3", scope: !1113, file: !3, line: 543, type: !6)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 543, column: 33)
!1114 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 534, column: 8)
!1115 = !DILocalVariable(name: "__UNIQUE_ID___y4", scope: !1113, file: !3, line: 543, type: !6)
!1116 = !DILocation(line: 485, column: 17, scope: !1099)
!1117 = !DILocation(line: 486, column: 13, scope: !1099)
!1118 = !DILocation(line: 489, column: 5, scope: !1099)
!1119 = !DILocation(line: 489, column: 14, scope: !1099)
!1120 = !DILocation(line: 489, column: 29, scope: !1099)
!1121 = !DILocation(line: 489, column: 35, scope: !1099)
!1122 = !DILocation(line: 490, column: 5, scope: !1099)
!1123 = !DILocation(line: 490, column: 20, scope: !1099)
!1124 = !DILocation(line: 490, column: 29, scope: !1099)
!1125 = !DILocation(line: 490, column: 35, scope: !1099)
!1126 = !DILocation(line: 490, column: 46, scope: !1099)
!1127 = !DILocation(line: 491, column: 5, scope: !1099)
!1128 = !DILocation(line: 491, column: 9, scope: !1099)
!1129 = !DILocation(line: 491, column: 29, scope: !1099)
!1130 = !DILocation(line: 491, column: 35, scope: !1099)
!1131 = !DILocation(line: 491, column: 46, scope: !1099)
!1132 = !DILocation(line: 492, column: 5, scope: !1099)
!1133 = !DILocation(line: 492, column: 9, scope: !1099)
!1134 = !DILocation(line: 492, column: 12, scope: !1099)
!1135 = !DILocation(line: 493, column: 5, scope: !1099)
!1136 = !DILocation(line: 493, column: 9, scope: !1099)
!1137 = !DILocation(line: 494, column: 5, scope: !1099)
!1138 = !DILocation(line: 494, column: 9, scope: !1099)
!1139 = !DILocation(line: 500, column: 5, scope: !1099)
!1140 = !DILocation(line: 500, column: 8, scope: !1099)
!1141 = !DILocation(line: 500, column: 17, scope: !1099)
!1142 = !DILocation(line: 500, column: 22, scope: !1099)
!1143 = !DILocation(line: 500, column: 25, scope: !1099)
!1144 = !DILocation(line: 500, column: 34, scope: !1099)
!1145 = !DILocation(line: 502, column: 12, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 502, column: 5)
!1147 = !DILocation(line: 502, column: 10, scope: !1146)
!1148 = !DILocation(line: 502, column: 17, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 502, column: 5)
!1150 = !DILocation(line: 502, column: 21, scope: !1149)
!1151 = !DILocation(line: 502, column: 19, scope: !1149)
!1152 = !DILocation(line: 502, column: 5, scope: !1146)
!1153 = !DILocation(line: 503, column: 13, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 503, column: 13)
!1155 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 502, column: 33)
!1156 = !DILocation(line: 503, column: 18, scope: !1154)
!1157 = !DILocation(line: 503, column: 21, scope: !1154)
!1158 = !DILocation(line: 503, column: 26, scope: !1154)
!1159 = !DILocation(line: 503, column: 13, scope: !1155)
!1160 = !DILocation(line: 504, column: 51, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 503, column: 32)
!1162 = !DILocation(line: 504, column: 49, scope: !1161)
!1163 = !DILocation(line: 504, column: 13, scope: !1161)
!1164 = !DILocation(line: 504, column: 16, scope: !1161)
!1165 = !DILocation(line: 504, column: 24, scope: !1161)
!1166 = !DILocation(line: 504, column: 27, scope: !1161)
!1167 = !DILocation(line: 504, column: 21, scope: !1161)
!1168 = !DILocation(line: 504, column: 38, scope: !1161)
!1169 = !DILocation(line: 505, column: 13, scope: !1161)
!1170 = !DILocation(line: 505, column: 16, scope: !1161)
!1171 = !DILocation(line: 505, column: 22, scope: !1161)
!1172 = !DILocation(line: 505, column: 25, scope: !1161)
!1173 = !DILocation(line: 506, column: 9, scope: !1161)
!1174 = !DILocation(line: 507, column: 13, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 506, column: 16)
!1176 = !DILocation(line: 507, column: 18, scope: !1175)
!1177 = !DILocation(line: 507, column: 21, scope: !1175)
!1178 = !DILocation(line: 507, column: 25, scope: !1175)
!1179 = !DILocation(line: 509, column: 5, scope: !1155)
!1180 = !DILocation(line: 502, column: 29, scope: !1149)
!1181 = !DILocation(line: 502, column: 5, scope: !1149)
!1182 = distinct !{!1182, !1152, !1183, !343, !344}
!1183 = !DILocation(line: 509, column: 5, scope: !1146)
!1184 = !DILocation(line: 516, column: 5, scope: !1099)
!1185 = !DILocation(line: 516, column: 12, scope: !1099)
!1186 = !DILocation(line: 516, column: 15, scope: !1099)
!1187 = !DILocation(line: 516, column: 24, scope: !1099)
!1188 = !DILocation(line: 517, column: 44, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 516, column: 29)
!1190 = !DILocation(line: 517, column: 53, scope: !1189)
!1191 = !DILocation(line: 517, column: 59, scope: !1189)
!1192 = !DILocation(line: 517, column: 16, scope: !1189)
!1193 = !DILocation(line: 517, column: 19, scope: !1189)
!1194 = !DILocation(line: 517, column: 27, scope: !1189)
!1195 = !DILocation(line: 517, column: 30, scope: !1189)
!1196 = !DILocation(line: 517, column: 24, scope: !1189)
!1197 = !DILocation(line: 517, column: 41, scope: !1189)
!1198 = !DILocation(line: 517, column: 14, scope: !1189)
!1199 = !DILocation(line: 518, column: 9, scope: !1189)
!1200 = !DILocation(line: 518, column: 14, scope: !1189)
!1201 = !DILocation(line: 518, column: 20, scope: !1189)
!1202 = !DILocation(line: 518, column: 25, scope: !1189)
!1203 = !DILocation(line: 519, column: 9, scope: !1189)
!1204 = !DILocation(line: 519, column: 12, scope: !1189)
!1205 = !DILocation(line: 519, column: 18, scope: !1189)
!1206 = !DILocation(line: 519, column: 24, scope: !1189)
!1207 = !DILocation(line: 520, column: 9, scope: !1189)
!1208 = !DILocation(line: 520, column: 12, scope: !1189)
!1209 = !DILocation(line: 520, column: 19, scope: !1189)
!1210 = !DILocation(line: 520, column: 27, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 520, column: 27)
!1212 = !DILocation(line: 520, column: 27, scope: !1189)
!1213 = !DILocation(line: 520, column: 51, scope: !1211)
!1214 = !DILocation(line: 520, column: 57, scope: !1211)
!1215 = !DILocation(line: 520, column: 63, scope: !1211)
!1216 = !DILocation(line: 520, column: 34, scope: !1211)
!1217 = !DILocation(line: 520, column: 37, scope: !1211)
!1218 = !DILocation(line: 520, column: 48, scope: !1211)
!1219 = distinct !{!1219, !1184, !1220, !343, !344}
!1220 = !DILocation(line: 522, column: 5, scope: !1099)
!1221 = !DILocation(line: 523, column: 22, scope: !1099)
!1222 = !DILocation(line: 523, column: 5, scope: !1099)
!1223 = !DILocation(line: 523, column: 11, scope: !1099)
!1224 = !DILocation(line: 523, column: 20, scope: !1099)
!1225 = !DILocation(line: 528, column: 14, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 528, column: 5)
!1227 = !DILocation(line: 528, column: 17, scope: !1226)
!1228 = !DILocation(line: 528, column: 25, scope: !1226)
!1229 = !DILocation(line: 528, column: 12, scope: !1226)
!1230 = !DILocation(line: 528, column: 10, scope: !1226)
!1231 = !DILocation(line: 528, column: 29, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 528, column: 5)
!1233 = !DILocation(line: 528, column: 31, scope: !1232)
!1234 = !DILocation(line: 528, column: 5, scope: !1226)
!1235 = !DILocation(line: 528, column: 53, scope: !1232)
!1236 = !DILocation(line: 528, column: 56, scope: !1232)
!1237 = !DILocation(line: 528, column: 62, scope: !1232)
!1238 = !DILocation(line: 528, column: 42, scope: !1232)
!1239 = !DILocation(line: 528, column: 38, scope: !1232)
!1240 = !DILocation(line: 528, column: 5, scope: !1232)
!1241 = distinct !{!1241, !1234, !1242, !343, !344}
!1242 = !DILocation(line: 528, column: 63, scope: !1226)
!1243 = !DILocation(line: 533, column: 12, scope: !1099)
!1244 = !DILocation(line: 533, column: 10, scope: !1099)
!1245 = !DILocation(line: 534, column: 5, scope: !1099)
!1246 = !DILocation(line: 535, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 535, column: 9)
!1248 = !DILocation(line: 536, column: 13, scope: !1114)
!1249 = !DILocation(line: 536, column: 16, scope: !1114)
!1250 = !DILocation(line: 536, column: 11, scope: !1114)
!1251 = !DILocation(line: 538, column: 36, scope: !1114)
!1252 = !DILocation(line: 538, column: 9, scope: !1114)
!1253 = !DILocation(line: 538, column: 12, scope: !1114)
!1254 = !DILocation(line: 538, column: 20, scope: !1114)
!1255 = !DILocation(line: 538, column: 23, scope: !1114)
!1256 = !DILocation(line: 538, column: 17, scope: !1114)
!1257 = !DILocation(line: 538, column: 34, scope: !1114)
!1258 = !DILocation(line: 539, column: 36, scope: !1114)
!1259 = !DILocation(line: 539, column: 9, scope: !1114)
!1260 = !DILocation(line: 539, column: 12, scope: !1114)
!1261 = !DILocation(line: 539, column: 20, scope: !1114)
!1262 = !DILocation(line: 539, column: 23, scope: !1114)
!1263 = !DILocation(line: 539, column: 17, scope: !1114)
!1264 = !DILocation(line: 539, column: 34, scope: !1114)
!1265 = !DILocation(line: 542, column: 27, scope: !1114)
!1266 = !DILocation(line: 542, column: 32, scope: !1114)
!1267 = !DILocation(line: 542, column: 35, scope: !1114)
!1268 = !DILocation(line: 542, column: 42, scope: !1114)
!1269 = !DILocation(line: 542, column: 47, scope: !1114)
!1270 = !DILocation(line: 542, column: 50, scope: !1114)
!1271 = !DILocation(line: 542, column: 40, scope: !1114)
!1272 = !DILocation(line: 542, column: 9, scope: !1114)
!1273 = !DILocation(line: 542, column: 14, scope: !1114)
!1274 = !DILocation(line: 542, column: 20, scope: !1114)
!1275 = !DILocation(line: 542, column: 25, scope: !1114)
!1276 = !DILocation(line: 543, column: 33, scope: !1113)
!1277 = !DILocation(line: 543, column: 33, scope: !1114)
!1278 = !DILocation(line: 543, column: 63, scope: !1114)
!1279 = !DILocation(line: 543, column: 26, scope: !1114)
!1280 = !DILocation(line: 543, column: 9, scope: !1114)
!1281 = !DILocation(line: 543, column: 12, scope: !1114)
!1282 = !DILocation(line: 543, column: 18, scope: !1114)
!1283 = !DILocation(line: 543, column: 24, scope: !1114)
!1284 = !DILocation(line: 544, column: 42, scope: !1114)
!1285 = !DILocation(line: 544, column: 37, scope: !1114)
!1286 = !DILocation(line: 544, column: 23, scope: !1114)
!1287 = !DILocation(line: 544, column: 28, scope: !1114)
!1288 = !DILocation(line: 544, column: 31, scope: !1114)
!1289 = !DILocation(line: 544, column: 35, scope: !1114)
!1290 = !DILocation(line: 544, column: 9, scope: !1114)
!1291 = !DILocation(line: 544, column: 14, scope: !1114)
!1292 = !DILocation(line: 544, column: 17, scope: !1114)
!1293 = !DILocation(line: 544, column: 21, scope: !1114)
!1294 = !DILocation(line: 552, column: 33, scope: !1114)
!1295 = !DILocation(line: 552, column: 9, scope: !1114)
!1296 = !DILocation(line: 552, column: 12, scope: !1114)
!1297 = !DILocation(line: 552, column: 27, scope: !1114)
!1298 = !DILocation(line: 553, column: 20, scope: !1114)
!1299 = !DILocation(line: 553, column: 23, scope: !1114)
!1300 = !DILocation(line: 553, column: 9, scope: !1114)
!1301 = !DILocation(line: 555, column: 5, scope: !1114)
!1302 = !DILocation(line: 555, column: 14, scope: !1099)
!1303 = !DILocation(line: 555, column: 17, scope: !1099)
!1304 = !DILocation(line: 555, column: 26, scope: !1099)
!1305 = distinct !{!1305, !1245, !1306, !343, !344}
!1306 = !DILocation(line: 555, column: 30, scope: !1099)
!1307 = !DILocation(line: 557, column: 32, scope: !1099)
!1308 = !DILocation(line: 557, column: 35, scope: !1099)
!1309 = !DILocation(line: 557, column: 5, scope: !1099)
!1310 = !DILocation(line: 557, column: 8, scope: !1099)
!1311 = !DILocation(line: 557, column: 16, scope: !1099)
!1312 = !DILocation(line: 557, column: 19, scope: !1099)
!1313 = !DILocation(line: 557, column: 13, scope: !1099)
!1314 = !DILocation(line: 557, column: 30, scope: !1099)
!1315 = !DILocation(line: 562, column: 16, scope: !1099)
!1316 = !DILocation(line: 562, column: 32, scope: !1099)
!1317 = !DILocation(line: 562, column: 5, scope: !1099)
!1318 = !DILocation(line: 565, column: 27, scope: !1099)
!1319 = !DILocation(line: 565, column: 33, scope: !1099)
!1320 = !DILocation(line: 565, column: 43, scope: !1099)
!1321 = !DILocation(line: 565, column: 46, scope: !1099)
!1322 = !DILocation(line: 565, column: 5, scope: !1099)
!1323 = !DILocation(line: 566, column: 1, scope: !1099)
!1324 = distinct !DISubprogram(name: "build_bl_tree", scope: !3, file: !3, line: 670, type: !1325, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!5, !140}
!1327 = !{!1328, !1329}
!1328 = !DILocalVariable(name: "s", arg: 1, scope: !1324, file: !3, line: 671, type: !140)
!1329 = !DILocalVariable(name: "max_blindex", scope: !1324, file: !3, line: 674, type: !5)
!1330 = !DILocation(line: 671, column: 17, scope: !1324)
!1331 = !DILocation(line: 674, column: 5, scope: !1324)
!1332 = !DILocation(line: 674, column: 9, scope: !1324)
!1333 = !DILocation(line: 677, column: 15, scope: !1324)
!1334 = !DILocation(line: 677, column: 29, scope: !1324)
!1335 = !DILocation(line: 677, column: 32, scope: !1324)
!1336 = !DILocation(line: 677, column: 43, scope: !1324)
!1337 = !DILocation(line: 677, column: 46, scope: !1324)
!1338 = !DILocation(line: 677, column: 53, scope: !1324)
!1339 = !DILocation(line: 677, column: 5, scope: !1324)
!1340 = !DILocation(line: 678, column: 15, scope: !1324)
!1341 = !DILocation(line: 678, column: 29, scope: !1324)
!1342 = !DILocation(line: 678, column: 32, scope: !1324)
!1343 = !DILocation(line: 678, column: 43, scope: !1324)
!1344 = !DILocation(line: 678, column: 46, scope: !1324)
!1345 = !DILocation(line: 678, column: 53, scope: !1324)
!1346 = !DILocation(line: 678, column: 5, scope: !1324)
!1347 = !DILocation(line: 681, column: 16, scope: !1324)
!1348 = !DILocation(line: 681, column: 35, scope: !1324)
!1349 = !DILocation(line: 681, column: 38, scope: !1324)
!1350 = !DILocation(line: 681, column: 5, scope: !1324)
!1351 = !DILocation(line: 690, column: 22, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 690, column: 5)
!1353 = !DILocation(line: 690, column: 10, scope: !1352)
!1354 = !DILocation(line: 690, column: 36, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 690, column: 5)
!1356 = !DILocation(line: 690, column: 48, scope: !1355)
!1357 = !DILocation(line: 690, column: 5, scope: !1352)
!1358 = !DILocation(line: 691, column: 13, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 691, column: 13)
!1360 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 690, column: 69)
!1361 = !DILocation(line: 691, column: 16, scope: !1359)
!1362 = !DILocation(line: 691, column: 33, scope: !1359)
!1363 = !DILocation(line: 691, column: 24, scope: !1359)
!1364 = !DILocation(line: 691, column: 47, scope: !1359)
!1365 = !DILocation(line: 691, column: 51, scope: !1359)
!1366 = !DILocation(line: 691, column: 13, scope: !1360)
!1367 = !DILocation(line: 691, column: 57, scope: !1359)
!1368 = !DILocation(line: 692, column: 5, scope: !1360)
!1369 = !DILocation(line: 690, column: 65, scope: !1355)
!1370 = !DILocation(line: 690, column: 5, scope: !1355)
!1371 = distinct !{!1371, !1357, !1372, !343, !344}
!1372 = !DILocation(line: 692, column: 5, scope: !1352)
!1373 = !DILocation(line: 694, column: 22, scope: !1324)
!1374 = !DILocation(line: 694, column: 33, scope: !1324)
!1375 = !DILocation(line: 694, column: 20, scope: !1324)
!1376 = !DILocation(line: 694, column: 37, scope: !1324)
!1377 = !DILocation(line: 694, column: 40, scope: !1324)
!1378 = !DILocation(line: 694, column: 42, scope: !1324)
!1379 = !DILocation(line: 694, column: 19, scope: !1324)
!1380 = !DILocation(line: 694, column: 5, scope: !1324)
!1381 = !DILocation(line: 694, column: 8, scope: !1324)
!1382 = !DILocation(line: 694, column: 16, scope: !1324)
!1383 = !DILocation(line: 698, column: 12, scope: !1324)
!1384 = !DILocation(line: 699, column: 1, scope: !1324)
!1385 = !DILocation(line: 698, column: 5, scope: !1324)
!1386 = distinct !DISubprogram(name: "compress_block", scope: !3, file: !3, line: 964, type: !1387, scopeLine: 969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1389)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !140, !20, !20}
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1404, !1407, !1410, !1413, !1417, !1420, !1422, !1425, !1429, !1432, !1434}
!1390 = !DILocalVariable(name: "s", arg: 1, scope: !1386, file: !3, line: 965, type: !140)
!1391 = !DILocalVariable(name: "ltree", arg: 2, scope: !1386, file: !3, line: 966, type: !20)
!1392 = !DILocalVariable(name: "dtree", arg: 3, scope: !1386, file: !3, line: 967, type: !20)
!1393 = !DILocalVariable(name: "dist", scope: !1386, file: !3, line: 970, type: !13)
!1394 = !DILocalVariable(name: "lc", scope: !1386, file: !3, line: 971, type: !5)
!1395 = !DILocalVariable(name: "lx", scope: !1386, file: !3, line: 972, type: !13)
!1396 = !DILocalVariable(name: "code", scope: !1386, file: !3, line: 973, type: !13)
!1397 = !DILocalVariable(name: "extra", scope: !1386, file: !3, line: 974, type: !5)
!1398 = !DILocalVariable(name: "len", scope: !1399, file: !3, line: 980, type: !5)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 980, column: 13)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 979, column: 24)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 979, column: 13)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 976, column: 30)
!1403 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 976, column: 9)
!1404 = !DILocalVariable(name: "val", scope: !1405, file: !3, line: 980, type: !5)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 980, column: 13)
!1406 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 980, column: 13)
!1407 = !DILocalVariable(name: "len", scope: !1408, file: !3, line: 985, type: !5)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 985, column: 13)
!1409 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 982, column: 16)
!1410 = !DILocalVariable(name: "val", scope: !1411, file: !3, line: 985, type: !5)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 985, column: 13)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 985, column: 13)
!1413 = !DILocalVariable(name: "len", scope: !1414, file: !3, line: 989, type: !5)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 989, column: 17)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 987, column: 29)
!1416 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 987, column: 17)
!1417 = !DILocalVariable(name: "val", scope: !1418, file: !3, line: 989, type: !5)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 989, column: 17)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 989, column: 17)
!1420 = !DILocalVariable(name: "len", scope: !1421, file: !3, line: 995, type: !5)
!1421 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 995, column: 13)
!1422 = !DILocalVariable(name: "val", scope: !1423, file: !3, line: 995, type: !5)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 995, column: 13)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 995, column: 13)
!1425 = !DILocalVariable(name: "len", scope: !1426, file: !3, line: 999, type: !5)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 999, column: 17)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 997, column: 29)
!1428 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 997, column: 17)
!1429 = !DILocalVariable(name: "val", scope: !1430, file: !3, line: 999, type: !5)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 999, column: 17)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 999, column: 17)
!1432 = !DILocalVariable(name: "len", scope: !1433, file: !3, line: 1008, type: !5)
!1433 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 1008, column: 5)
!1434 = !DILocalVariable(name: "val", scope: !1435, file: !3, line: 1008, type: !5)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 1008, column: 5)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 1008, column: 5)
!1437 = !DILocation(line: 965, column: 17, scope: !1386)
!1438 = !DILocation(line: 966, column: 11, scope: !1386)
!1439 = !DILocation(line: 967, column: 11, scope: !1386)
!1440 = !DILocation(line: 970, column: 5, scope: !1386)
!1441 = !DILocation(line: 970, column: 14, scope: !1386)
!1442 = !DILocation(line: 971, column: 5, scope: !1386)
!1443 = !DILocation(line: 971, column: 9, scope: !1386)
!1444 = !DILocation(line: 972, column: 5, scope: !1386)
!1445 = !DILocation(line: 972, column: 14, scope: !1386)
!1446 = !DILocation(line: 973, column: 5, scope: !1386)
!1447 = !DILocation(line: 973, column: 14, scope: !1386)
!1448 = !DILocation(line: 974, column: 5, scope: !1386)
!1449 = !DILocation(line: 974, column: 9, scope: !1386)
!1450 = !DILocation(line: 976, column: 9, scope: !1403)
!1451 = !DILocation(line: 976, column: 12, scope: !1403)
!1452 = !DILocation(line: 976, column: 21, scope: !1403)
!1453 = !DILocation(line: 976, column: 9, scope: !1386)
!1454 = !DILocation(line: 976, column: 27, scope: !1403)
!1455 = !DILocation(line: 977, column: 16, scope: !1402)
!1456 = !DILocation(line: 977, column: 19, scope: !1402)
!1457 = !DILocation(line: 977, column: 25, scope: !1402)
!1458 = !DILocation(line: 977, column: 14, scope: !1402)
!1459 = !DILocation(line: 978, column: 14, scope: !1402)
!1460 = !DILocation(line: 978, column: 17, scope: !1402)
!1461 = !DILocation(line: 978, column: 25, scope: !1402)
!1462 = !DILocation(line: 978, column: 12, scope: !1402)
!1463 = !DILocation(line: 979, column: 13, scope: !1401)
!1464 = !DILocation(line: 979, column: 18, scope: !1401)
!1465 = !DILocation(line: 979, column: 13, scope: !1402)
!1466 = !DILocation(line: 980, column: 13, scope: !1399)
!1467 = !DILocation(line: 980, column: 13, scope: !1406)
!1468 = !DILocation(line: 980, column: 13, scope: !1405)
!1469 = !DILocation(line: 980, column: 13, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 980, column: 13)
!1471 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 980, column: 13)
!1472 = !DILocation(line: 980, column: 13, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 980, column: 13)
!1474 = !DILocation(line: 980, column: 13, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 980, column: 13)
!1476 = !DILocation(line: 980, column: 13, scope: !1400)
!1477 = !DILocation(line: 982, column: 9, scope: !1400)
!1478 = !DILocation(line: 984, column: 32, scope: !1409)
!1479 = !DILocation(line: 984, column: 20, scope: !1409)
!1480 = !DILocation(line: 984, column: 18, scope: !1409)
!1481 = !DILocation(line: 985, column: 13, scope: !1408)
!1482 = !DILocation(line: 985, column: 13, scope: !1412)
!1483 = !DILocation(line: 985, column: 13, scope: !1411)
!1484 = !DILocation(line: 985, column: 13, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 985, column: 13)
!1486 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 985, column: 13)
!1487 = !DILocation(line: 985, column: 13, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 985, column: 13)
!1489 = !DILocation(line: 985, column: 13, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 985, column: 13)
!1491 = !DILocation(line: 985, column: 13, scope: !1409)
!1492 = !DILocation(line: 986, column: 33, scope: !1409)
!1493 = !DILocation(line: 986, column: 21, scope: !1409)
!1494 = !DILocation(line: 986, column: 19, scope: !1409)
!1495 = !DILocation(line: 987, column: 17, scope: !1416)
!1496 = !DILocation(line: 987, column: 23, scope: !1416)
!1497 = !DILocation(line: 987, column: 17, scope: !1409)
!1498 = !DILocation(line: 988, column: 35, scope: !1415)
!1499 = !DILocation(line: 988, column: 23, scope: !1415)
!1500 = !DILocation(line: 988, column: 20, scope: !1415)
!1501 = !DILocation(line: 989, column: 17, scope: !1414)
!1502 = !DILocation(line: 989, column: 17, scope: !1419)
!1503 = !DILocation(line: 989, column: 17, scope: !1418)
!1504 = !DILocation(line: 989, column: 17, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 989, column: 17)
!1506 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 989, column: 17)
!1507 = !DILocation(line: 989, column: 17, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 989, column: 17)
!1509 = !DILocation(line: 989, column: 17, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 989, column: 17)
!1511 = !DILocation(line: 989, column: 17, scope: !1415)
!1512 = !DILocation(line: 990, column: 13, scope: !1415)
!1513 = !DILocation(line: 991, column: 17, scope: !1409)
!1514 = !DILocation(line: 992, column: 20, scope: !1409)
!1515 = !DILocation(line: 992, column: 18, scope: !1409)
!1516 = !DILocation(line: 995, column: 13, scope: !1421)
!1517 = !DILocation(line: 995, column: 13, scope: !1424)
!1518 = !DILocation(line: 995, column: 13, scope: !1423)
!1519 = !DILocation(line: 995, column: 13, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 995, column: 13)
!1521 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 995, column: 13)
!1522 = !DILocation(line: 995, column: 13, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 995, column: 13)
!1524 = !DILocation(line: 995, column: 13, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 995, column: 13)
!1526 = !DILocation(line: 995, column: 13, scope: !1409)
!1527 = !DILocation(line: 996, column: 33, scope: !1409)
!1528 = !DILocation(line: 996, column: 21, scope: !1409)
!1529 = !DILocation(line: 996, column: 19, scope: !1409)
!1530 = !DILocation(line: 997, column: 17, scope: !1428)
!1531 = !DILocation(line: 997, column: 23, scope: !1428)
!1532 = !DILocation(line: 997, column: 17, scope: !1409)
!1533 = !DILocation(line: 998, column: 35, scope: !1427)
!1534 = !DILocation(line: 998, column: 25, scope: !1427)
!1535 = !DILocation(line: 998, column: 22, scope: !1427)
!1536 = !DILocation(line: 999, column: 17, scope: !1426)
!1537 = !DILocation(line: 999, column: 17, scope: !1431)
!1538 = !DILocation(line: 999, column: 17, scope: !1430)
!1539 = !DILocation(line: 999, column: 17, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 999, column: 17)
!1541 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 999, column: 17)
!1542 = !DILocation(line: 999, column: 17, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 999, column: 17)
!1544 = !DILocation(line: 999, column: 17, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 999, column: 17)
!1546 = !DILocation(line: 999, column: 17, scope: !1427)
!1547 = !DILocation(line: 1000, column: 13, scope: !1427)
!1548 = !DILocation(line: 1006, column: 5, scope: !1402)
!1549 = !DILocation(line: 1006, column: 14, scope: !1403)
!1550 = !DILocation(line: 1006, column: 19, scope: !1403)
!1551 = !DILocation(line: 1006, column: 22, scope: !1403)
!1552 = !DILocation(line: 1006, column: 17, scope: !1403)
!1553 = distinct !{!1553, !1454, !1554, !343, !344}
!1554 = !DILocation(line: 1006, column: 30, scope: !1403)
!1555 = !DILocation(line: 1008, column: 5, scope: !1433)
!1556 = !DILocation(line: 1008, column: 5, scope: !1436)
!1557 = !DILocation(line: 1008, column: 5, scope: !1435)
!1558 = !DILocation(line: 1008, column: 5, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 1008, column: 5)
!1560 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 1008, column: 5)
!1561 = !DILocation(line: 1008, column: 5, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 1008, column: 5)
!1563 = !DILocation(line: 1008, column: 5, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 1008, column: 5)
!1565 = !DILocation(line: 1008, column: 5, scope: !1386)
!1566 = !DILocation(line: 1009, column: 23, scope: !1386)
!1567 = !DILocation(line: 1009, column: 40, scope: !1386)
!1568 = !DILocation(line: 1009, column: 5, scope: !1386)
!1569 = !DILocation(line: 1009, column: 8, scope: !1386)
!1570 = !DILocation(line: 1009, column: 21, scope: !1386)
!1571 = !DILocation(line: 1010, column: 1, scope: !1386)
!1572 = distinct !DISubprogram(name: "send_all_trees", scope: !3, file: !3, line: 706, type: !1573, scopeLine: 712, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !140, !5, !5, !5}
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1583, !1586, !1588, !1591, !1593, !1596, !1601}
!1576 = !DILocalVariable(name: "s", arg: 1, scope: !1572, file: !3, line: 707, type: !140)
!1577 = !DILocalVariable(name: "lcodes", arg: 2, scope: !1572, file: !3, line: 708, type: !5)
!1578 = !DILocalVariable(name: "dcodes", arg: 3, scope: !1572, file: !3, line: 709, type: !5)
!1579 = !DILocalVariable(name: "blcodes", arg: 4, scope: !1572, file: !3, line: 710, type: !5)
!1580 = !DILocalVariable(name: "rank", scope: !1572, file: !3, line: 713, type: !5)
!1581 = !DILocalVariable(name: "len", scope: !1582, file: !3, line: 719, type: !5)
!1582 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 719, column: 5)
!1583 = !DILocalVariable(name: "val", scope: !1584, file: !3, line: 719, type: !5)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 719, column: 5)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 719, column: 5)
!1586 = !DILocalVariable(name: "len", scope: !1587, file: !3, line: 720, type: !5)
!1587 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 720, column: 5)
!1588 = !DILocalVariable(name: "val", scope: !1589, file: !3, line: 720, type: !5)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 720, column: 5)
!1590 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 720, column: 5)
!1591 = !DILocalVariable(name: "len", scope: !1592, file: !3, line: 721, type: !5)
!1592 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 721, column: 5)
!1593 = !DILocalVariable(name: "val", scope: !1594, file: !3, line: 721, type: !5)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 721, column: 5)
!1595 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 721, column: 5)
!1596 = !DILocalVariable(name: "len", scope: !1597, file: !3, line: 724, type: !5)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 724, column: 9)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 722, column: 44)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 722, column: 5)
!1600 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 722, column: 5)
!1601 = !DILocalVariable(name: "val", scope: !1602, file: !3, line: 724, type: !5)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 724, column: 9)
!1603 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 724, column: 9)
!1604 = !DILocation(line: 707, column: 17, scope: !1572)
!1605 = !DILocation(line: 708, column: 6, scope: !1572)
!1606 = !DILocation(line: 709, column: 6, scope: !1572)
!1607 = !DILocation(line: 710, column: 6, scope: !1572)
!1608 = !DILocation(line: 713, column: 5, scope: !1572)
!1609 = !DILocation(line: 713, column: 9, scope: !1572)
!1610 = !DILocation(line: 719, column: 5, scope: !1582)
!1611 = !DILocation(line: 719, column: 5, scope: !1585)
!1612 = !DILocation(line: 719, column: 5, scope: !1584)
!1613 = !DILocation(line: 719, column: 5, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 719, column: 5)
!1615 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 719, column: 5)
!1616 = !DILocation(line: 719, column: 5, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 719, column: 5)
!1618 = !DILocation(line: 719, column: 5, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 719, column: 5)
!1620 = !DILocation(line: 719, column: 5, scope: !1572)
!1621 = !DILocation(line: 720, column: 5, scope: !1587)
!1622 = !DILocation(line: 720, column: 5, scope: !1590)
!1623 = !DILocation(line: 720, column: 5, scope: !1589)
!1624 = !DILocation(line: 720, column: 5, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 720, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 720, column: 5)
!1627 = !DILocation(line: 720, column: 5, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 720, column: 5)
!1629 = !DILocation(line: 720, column: 5, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 720, column: 5)
!1631 = !DILocation(line: 720, column: 5, scope: !1572)
!1632 = !DILocation(line: 721, column: 5, scope: !1592)
!1633 = !DILocation(line: 721, column: 5, scope: !1595)
!1634 = !DILocation(line: 721, column: 5, scope: !1594)
!1635 = !DILocation(line: 721, column: 5, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 721, column: 5)
!1637 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 721, column: 5)
!1638 = !DILocation(line: 721, column: 5, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 721, column: 5)
!1640 = !DILocation(line: 721, column: 5, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 721, column: 5)
!1642 = !DILocation(line: 721, column: 5, scope: !1572)
!1643 = !DILocation(line: 722, column: 15, scope: !1600)
!1644 = !DILocation(line: 722, column: 10, scope: !1600)
!1645 = !DILocation(line: 722, column: 20, scope: !1599)
!1646 = !DILocation(line: 722, column: 27, scope: !1599)
!1647 = !DILocation(line: 722, column: 25, scope: !1599)
!1648 = !DILocation(line: 722, column: 5, scope: !1600)
!1649 = !DILocation(line: 724, column: 9, scope: !1597)
!1650 = !DILocation(line: 724, column: 9, scope: !1603)
!1651 = !DILocation(line: 724, column: 9, scope: !1602)
!1652 = !DILocation(line: 724, column: 9, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 724, column: 9)
!1654 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 724, column: 9)
!1655 = !DILocation(line: 724, column: 9, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 724, column: 9)
!1657 = !DILocation(line: 724, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 724, column: 9)
!1659 = !DILocation(line: 724, column: 9, scope: !1598)
!1660 = !DILocation(line: 725, column: 5, scope: !1598)
!1661 = !DILocation(line: 722, column: 40, scope: !1599)
!1662 = !DILocation(line: 722, column: 5, scope: !1599)
!1663 = distinct !{!1663, !1648, !1664, !343, !344}
!1664 = !DILocation(line: 725, column: 5, scope: !1600)
!1665 = !DILocation(line: 728, column: 15, scope: !1572)
!1666 = !DILocation(line: 728, column: 29, scope: !1572)
!1667 = !DILocation(line: 728, column: 32, scope: !1572)
!1668 = !DILocation(line: 728, column: 43, scope: !1572)
!1669 = !DILocation(line: 728, column: 49, scope: !1572)
!1670 = !DILocation(line: 728, column: 5, scope: !1572)
!1671 = !DILocation(line: 731, column: 15, scope: !1572)
!1672 = !DILocation(line: 731, column: 29, scope: !1572)
!1673 = !DILocation(line: 731, column: 32, scope: !1572)
!1674 = !DILocation(line: 731, column: 43, scope: !1572)
!1675 = !DILocation(line: 731, column: 49, scope: !1572)
!1676 = !DILocation(line: 731, column: 5, scope: !1572)
!1677 = !DILocation(line: 733, column: 1, scope: !1572)
!1678 = distinct !DISubprogram(name: "zlib_tr_tally", scope: !3, file: !3, line: 915, type: !1679, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!5, !140, !13, !13}
!1681 = !{!1682, !1683, !1684, !1685, !1688, !1689}
!1682 = !DILocalVariable(name: "s", arg: 1, scope: !1678, file: !3, line: 916, type: !140)
!1683 = !DILocalVariable(name: "dist", arg: 2, scope: !1678, file: !3, line: 917, type: !13)
!1684 = !DILocalVariable(name: "lc", arg: 3, scope: !1678, file: !3, line: 918, type: !13)
!1685 = !DILocalVariable(name: "out_length", scope: !1686, file: !3, line: 941, type: !11)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 939, column: 53)
!1687 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 939, column: 9)
!1688 = !DILocalVariable(name: "in_length", scope: !1686, file: !3, line: 942, type: !11)
!1689 = !DILocalVariable(name: "dcode", scope: !1686, file: !3, line: 943, type: !5)
!1690 = !DILocation(line: 916, column: 17, scope: !1678)
!1691 = !DILocation(line: 917, column: 11, scope: !1678)
!1692 = !DILocation(line: 918, column: 11, scope: !1678)
!1693 = !DILocation(line: 921, column: 34, scope: !1678)
!1694 = !DILocation(line: 921, column: 29, scope: !1678)
!1695 = !DILocation(line: 921, column: 5, scope: !1678)
!1696 = !DILocation(line: 921, column: 8, scope: !1678)
!1697 = !DILocation(line: 921, column: 14, scope: !1678)
!1698 = !DILocation(line: 921, column: 17, scope: !1678)
!1699 = !DILocation(line: 921, column: 27, scope: !1678)
!1700 = !DILocation(line: 922, column: 36, scope: !1678)
!1701 = !DILocation(line: 922, column: 31, scope: !1678)
!1702 = !DILocation(line: 922, column: 5, scope: !1678)
!1703 = !DILocation(line: 922, column: 8, scope: !1678)
!1704 = !DILocation(line: 922, column: 14, scope: !1678)
!1705 = !DILocation(line: 922, column: 17, scope: !1678)
!1706 = !DILocation(line: 922, column: 25, scope: !1678)
!1707 = !DILocation(line: 922, column: 29, scope: !1678)
!1708 = !DILocation(line: 923, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 923, column: 9)
!1710 = !DILocation(line: 923, column: 14, scope: !1709)
!1711 = !DILocation(line: 923, column: 9, scope: !1678)
!1712 = !DILocation(line: 925, column: 9, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 923, column: 20)
!1714 = !DILocation(line: 925, column: 12, scope: !1713)
!1715 = !DILocation(line: 925, column: 22, scope: !1713)
!1716 = !DILocation(line: 925, column: 26, scope: !1713)
!1717 = !DILocation(line: 925, column: 30, scope: !1713)
!1718 = !DILocation(line: 926, column: 5, scope: !1713)
!1719 = !DILocation(line: 927, column: 9, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 926, column: 12)
!1721 = !DILocation(line: 927, column: 12, scope: !1720)
!1722 = !DILocation(line: 927, column: 19, scope: !1720)
!1723 = !DILocation(line: 929, column: 13, scope: !1720)
!1724 = !DILocation(line: 934, column: 9, scope: !1720)
!1725 = !DILocation(line: 934, column: 12, scope: !1720)
!1726 = !DILocation(line: 934, column: 34, scope: !1720)
!1727 = !DILocation(line: 934, column: 22, scope: !1720)
!1728 = !DILocation(line: 934, column: 37, scope: !1720)
!1729 = !DILocation(line: 934, column: 46, scope: !1720)
!1730 = !DILocation(line: 934, column: 50, scope: !1720)
!1731 = !DILocation(line: 934, column: 54, scope: !1720)
!1732 = !DILocation(line: 935, column: 9, scope: !1720)
!1733 = !DILocation(line: 935, column: 12, scope: !1720)
!1734 = !DILocation(line: 935, column: 22, scope: !1720)
!1735 = !DILocation(line: 935, column: 36, scope: !1720)
!1736 = !DILocation(line: 935, column: 40, scope: !1720)
!1737 = !DILocation(line: 939, column: 10, scope: !1687)
!1738 = !DILocation(line: 939, column: 13, scope: !1687)
!1739 = !DILocation(line: 939, column: 22, scope: !1687)
!1740 = !DILocation(line: 939, column: 31, scope: !1687)
!1741 = !DILocation(line: 939, column: 36, scope: !1687)
!1742 = !DILocation(line: 939, column: 39, scope: !1687)
!1743 = !DILocation(line: 939, column: 42, scope: !1687)
!1744 = !DILocation(line: 939, column: 48, scope: !1687)
!1745 = !DILocation(line: 939, column: 9, scope: !1678)
!1746 = !DILocation(line: 941, column: 9, scope: !1686)
!1747 = !DILocation(line: 941, column: 13, scope: !1686)
!1748 = !DILocation(line: 941, column: 31, scope: !1686)
!1749 = !DILocation(line: 941, column: 34, scope: !1686)
!1750 = !DILocation(line: 941, column: 26, scope: !1686)
!1751 = !DILocation(line: 941, column: 42, scope: !1686)
!1752 = !DILocation(line: 942, column: 9, scope: !1686)
!1753 = !DILocation(line: 942, column: 13, scope: !1686)
!1754 = !DILocation(line: 942, column: 37, scope: !1686)
!1755 = !DILocation(line: 942, column: 40, scope: !1686)
!1756 = !DILocation(line: 942, column: 31, scope: !1686)
!1757 = !DILocation(line: 942, column: 51, scope: !1686)
!1758 = !DILocation(line: 942, column: 54, scope: !1686)
!1759 = !DILocation(line: 942, column: 49, scope: !1686)
!1760 = !DILocation(line: 943, column: 9, scope: !1686)
!1761 = !DILocation(line: 943, column: 13, scope: !1686)
!1762 = !DILocation(line: 944, column: 20, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 944, column: 9)
!1764 = !DILocation(line: 944, column: 14, scope: !1763)
!1765 = !DILocation(line: 944, column: 25, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 944, column: 9)
!1767 = !DILocation(line: 944, column: 31, scope: !1766)
!1768 = !DILocation(line: 944, column: 9, scope: !1763)
!1769 = !DILocation(line: 945, column: 32, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 944, column: 51)
!1771 = !DILocation(line: 945, column: 35, scope: !1770)
!1772 = !DILocation(line: 945, column: 45, scope: !1770)
!1773 = !DILocation(line: 945, column: 52, scope: !1770)
!1774 = !DILocation(line: 945, column: 27, scope: !1770)
!1775 = !DILocation(line: 946, column: 33, scope: !1770)
!1776 = !DILocation(line: 946, column: 21, scope: !1770)
!1777 = !DILocation(line: 946, column: 20, scope: !1770)
!1778 = !DILocation(line: 945, column: 57, scope: !1770)
!1779 = !DILocation(line: 945, column: 24, scope: !1770)
!1780 = !DILocation(line: 947, column: 9, scope: !1770)
!1781 = !DILocation(line: 944, column: 47, scope: !1766)
!1782 = !DILocation(line: 944, column: 9, scope: !1766)
!1783 = distinct !{!1783, !1768, !1784, !343, !344}
!1784 = !DILocation(line: 947, column: 9, scope: !1763)
!1785 = !DILocation(line: 948, column: 20, scope: !1686)
!1786 = !DILocation(line: 952, column: 13, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 952, column: 13)
!1788 = !DILocation(line: 952, column: 16, scope: !1787)
!1789 = !DILocation(line: 952, column: 26, scope: !1787)
!1790 = !DILocation(line: 952, column: 29, scope: !1787)
!1791 = !DILocation(line: 952, column: 37, scope: !1787)
!1792 = !DILocation(line: 952, column: 24, scope: !1787)
!1793 = !DILocation(line: 952, column: 40, scope: !1787)
!1794 = !DILocation(line: 952, column: 43, scope: !1787)
!1795 = !DILocation(line: 952, column: 56, scope: !1787)
!1796 = !DILocation(line: 952, column: 65, scope: !1787)
!1797 = !DILocation(line: 952, column: 54, scope: !1787)
!1798 = !DILocation(line: 952, column: 13, scope: !1686)
!1799 = !DILocation(line: 952, column: 69, scope: !1787)
!1800 = !DILocation(line: 953, column: 5, scope: !1687)
!1801 = !DILocation(line: 953, column: 5, scope: !1686)
!1802 = !DILocation(line: 954, column: 13, scope: !1678)
!1803 = !DILocation(line: 954, column: 16, scope: !1678)
!1804 = !DILocation(line: 954, column: 28, scope: !1678)
!1805 = !DILocation(line: 954, column: 31, scope: !1678)
!1806 = !DILocation(line: 954, column: 42, scope: !1678)
!1807 = !DILocation(line: 954, column: 25, scope: !1678)
!1808 = !DILocation(line: 954, column: 5, scope: !1678)
!1809 = !DILocation(line: 959, column: 1, scope: !1678)
!1810 = distinct !DISubprogram(name: "gen_codes", scope: !3, file: !3, line: 441, type: !1811, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !20, !5, !236}
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1825, !1827}
!1814 = !DILocalVariable(name: "tree", arg: 1, scope: !1810, file: !3, line: 442, type: !20)
!1815 = !DILocalVariable(name: "max_code", arg: 2, scope: !1810, file: !3, line: 443, type: !5)
!1816 = !DILocalVariable(name: "bl_count", arg: 3, scope: !1810, file: !3, line: 444, type: !236)
!1817 = !DILocalVariable(name: "next_code", scope: !1810, file: !3, line: 447, type: !91)
!1818 = !DILocalVariable(name: "code", scope: !1810, file: !3, line: 448, type: !9)
!1819 = !DILocalVariable(name: "bits", scope: !1810, file: !3, line: 449, type: !5)
!1820 = !DILocalVariable(name: "n", scope: !1810, file: !3, line: 450, type: !5)
!1821 = !DILocalVariable(name: "len", scope: !1822, file: !3, line: 466, type: !5)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 465, column: 38)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 465, column: 5)
!1824 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 465, column: 5)
!1825 = !DILocalVariable(name: "__x", scope: !1826, file: !3, line: 469, type: !52)
!1826 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 469, column: 24)
!1827 = !DILocalVariable(name: "___x", scope: !1828, file: !3, line: 469, type: !52)
!1828 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 469, column: 24)
!1829 = !DILocation(line: 442, column: 11, scope: !1810)
!1830 = !DILocation(line: 443, column: 6, scope: !1810)
!1831 = !DILocation(line: 444, column: 7, scope: !1810)
!1832 = !DILocation(line: 447, column: 5, scope: !1810)
!1833 = !DILocation(line: 447, column: 9, scope: !1810)
!1834 = !DILocation(line: 448, column: 5, scope: !1810)
!1835 = !DILocation(line: 448, column: 9, scope: !1810)
!1836 = !DILocation(line: 449, column: 5, scope: !1810)
!1837 = !DILocation(line: 449, column: 9, scope: !1810)
!1838 = !DILocation(line: 450, column: 5, scope: !1810)
!1839 = !DILocation(line: 450, column: 9, scope: !1810)
!1840 = !DILocation(line: 455, column: 15, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 455, column: 5)
!1842 = !DILocation(line: 455, column: 10, scope: !1841)
!1843 = !DILocation(line: 455, column: 20, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 455, column: 5)
!1845 = !DILocation(line: 455, column: 25, scope: !1844)
!1846 = !DILocation(line: 455, column: 5, scope: !1841)
!1847 = !DILocation(line: 456, column: 35, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 455, column: 46)
!1849 = !DILocation(line: 456, column: 42, scope: !1848)
!1850 = !DILocation(line: 456, column: 51, scope: !1848)
!1851 = !DILocation(line: 456, column: 55, scope: !1848)
!1852 = !DILocation(line: 456, column: 40, scope: !1848)
!1853 = !DILocation(line: 456, column: 60, scope: !1848)
!1854 = !DILocation(line: 456, column: 34, scope: !1848)
!1855 = !DILocation(line: 456, column: 32, scope: !1848)
!1856 = !DILocation(line: 456, column: 19, scope: !1848)
!1857 = !DILocation(line: 456, column: 9, scope: !1848)
!1858 = !DILocation(line: 456, column: 25, scope: !1848)
!1859 = !DILocation(line: 457, column: 5, scope: !1848)
!1860 = !DILocation(line: 455, column: 42, scope: !1844)
!1861 = !DILocation(line: 455, column: 5, scope: !1844)
!1862 = distinct !{!1862, !1846, !1863, !343, !344}
!1863 = !DILocation(line: 457, column: 5, scope: !1841)
!1864 = !DILocation(line: 465, column: 12, scope: !1824)
!1865 = !DILocation(line: 465, column: 10, scope: !1824)
!1866 = !DILocation(line: 465, column: 18, scope: !1823)
!1867 = !DILocation(line: 465, column: 23, scope: !1823)
!1868 = !DILocation(line: 465, column: 20, scope: !1823)
!1869 = !DILocation(line: 465, column: 5, scope: !1824)
!1870 = !DILocation(line: 466, column: 9, scope: !1822)
!1871 = !DILocation(line: 466, column: 13, scope: !1822)
!1872 = !DILocation(line: 466, column: 19, scope: !1822)
!1873 = !DILocation(line: 466, column: 24, scope: !1822)
!1874 = !DILocation(line: 466, column: 27, scope: !1822)
!1875 = !DILocation(line: 467, column: 13, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 467, column: 13)
!1877 = !DILocation(line: 467, column: 17, scope: !1876)
!1878 = !DILocation(line: 467, column: 13, scope: !1822)
!1879 = !DILocation(line: 467, column: 23, scope: !1876)
!1880 = !DILocation(line: 469, column: 24, scope: !1826)
!1881 = !DILocation(line: 469, column: 24, scope: !1828)
!1882 = !DILocation(line: 469, column: 24, scope: !1822)
!1883 = !DILocation(line: 469, column: 67, scope: !1822)
!1884 = !DILocation(line: 469, column: 65, scope: !1822)
!1885 = !DILocation(line: 469, column: 58, scope: !1822)
!1886 = !DILocation(line: 469, column: 9, scope: !1822)
!1887 = !DILocation(line: 469, column: 14, scope: !1822)
!1888 = !DILocation(line: 469, column: 17, scope: !1822)
!1889 = !DILocation(line: 469, column: 22, scope: !1822)
!1890 = !DILocation(line: 473, column: 5, scope: !1823)
!1891 = !DILocation(line: 473, column: 5, scope: !1822)
!1892 = !DILocation(line: 465, column: 34, scope: !1823)
!1893 = !DILocation(line: 465, column: 5, scope: !1823)
!1894 = distinct !{!1894, !1869, !1895, !343, !344}
!1895 = !DILocation(line: 473, column: 5, scope: !1824)
!1896 = !DILocation(line: 474, column: 1, scope: !1810)
!1897 = distinct !DISubprogram(name: "__bitrev32", scope: !1898, file: !1898, line: 26, type: !1899, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1901)
!1898 = !DIFile(filename: "./include/linux/bitrev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f83ebf3755388c5d2154ac7d10721a4c")
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!52, !52}
!1901 = !{!1902}
!1902 = !DILocalVariable(name: "x", arg: 1, scope: !1897, file: !1898, line: 26, type: !52)
!1903 = !DILocation(line: 26, column: 34, scope: !1897)
!1904 = !DILocation(line: 28, column: 21, scope: !1897)
!1905 = !DILocation(line: 28, column: 23, scope: !1897)
!1906 = !DILocation(line: 28, column: 10, scope: !1897)
!1907 = !DILocation(line: 28, column: 33, scope: !1897)
!1908 = !DILocation(line: 28, column: 53, scope: !1897)
!1909 = !DILocation(line: 28, column: 55, scope: !1897)
!1910 = !DILocation(line: 28, column: 42, scope: !1897)
!1911 = !DILocation(line: 28, column: 40, scope: !1897)
!1912 = !DILocation(line: 28, column: 2, scope: !1897)
!1913 = distinct !DISubprogram(name: "__bitrev16", scope: !1898, file: !1898, line: 21, type: !1914, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1918)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1916, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !53, line: 19, baseType: !1917)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !55, line: 24, baseType: !10)
!1918 = !{!1919}
!1919 = !DILocalVariable(name: "x", arg: 1, scope: !1913, file: !1898, line: 21, type: !1916)
!1920 = !DILocation(line: 21, column: 34, scope: !1913)
!1921 = !DILocation(line: 23, column: 20, scope: !1913)
!1922 = !DILocation(line: 23, column: 22, scope: !1913)
!1923 = !DILocation(line: 23, column: 10, scope: !1913)
!1924 = !DILocation(line: 23, column: 30, scope: !1913)
!1925 = !DILocation(line: 23, column: 48, scope: !1913)
!1926 = !DILocation(line: 23, column: 50, scope: !1913)
!1927 = !DILocation(line: 23, column: 38, scope: !1913)
!1928 = !DILocation(line: 23, column: 36, scope: !1913)
!1929 = !DILocation(line: 23, column: 9, scope: !1913)
!1930 = !DILocation(line: 23, column: 2, scope: !1913)
!1931 = distinct !DISubprogram(name: "__bitrev8", scope: !1898, file: !1898, line: 16, type: !1932, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1936)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1934, !1934}
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !53, line: 17, baseType: !1935)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !55, line: 21, baseType: !8)
!1936 = !{!1937}
!1937 = !DILocalVariable(name: "byte", arg: 1, scope: !1931, file: !1898, line: 16, type: !1934)
!1938 = !DILocation(line: 16, column: 31, scope: !1931)
!1939 = !DILocation(line: 18, column: 24, scope: !1931)
!1940 = !DILocation(line: 18, column: 9, scope: !1931)
!1941 = !DILocation(line: 18, column: 2, scope: !1931)
!1942 = distinct !DISubprogram(name: "pqdownheap", scope: !3, file: !3, line: 317, type: !1943, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1945)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !140, !20, !5}
!1945 = !{!1946, !1947, !1948, !1949, !1950}
!1946 = !DILocalVariable(name: "s", arg: 1, scope: !1942, file: !3, line: 318, type: !140)
!1947 = !DILocalVariable(name: "tree", arg: 2, scope: !1942, file: !3, line: 319, type: !20)
!1948 = !DILocalVariable(name: "k", arg: 3, scope: !1942, file: !3, line: 320, type: !5)
!1949 = !DILocalVariable(name: "v", scope: !1942, file: !3, line: 323, type: !5)
!1950 = !DILocalVariable(name: "j", scope: !1942, file: !3, line: 324, type: !5)
!1951 = !DILocation(line: 318, column: 17, scope: !1942)
!1952 = !DILocation(line: 319, column: 11, scope: !1942)
!1953 = !DILocation(line: 320, column: 6, scope: !1942)
!1954 = !DILocation(line: 323, column: 5, scope: !1942)
!1955 = !DILocation(line: 323, column: 9, scope: !1942)
!1956 = !DILocation(line: 323, column: 13, scope: !1942)
!1957 = !DILocation(line: 323, column: 16, scope: !1942)
!1958 = !DILocation(line: 323, column: 21, scope: !1942)
!1959 = !DILocation(line: 324, column: 5, scope: !1942)
!1960 = !DILocation(line: 324, column: 9, scope: !1942)
!1961 = !DILocation(line: 324, column: 13, scope: !1942)
!1962 = !DILocation(line: 324, column: 15, scope: !1942)
!1963 = !DILocation(line: 325, column: 5, scope: !1942)
!1964 = !DILocation(line: 325, column: 12, scope: !1942)
!1965 = !DILocation(line: 325, column: 17, scope: !1942)
!1966 = !DILocation(line: 325, column: 20, scope: !1942)
!1967 = !DILocation(line: 325, column: 14, scope: !1942)
!1968 = !DILocation(line: 327, column: 13, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 327, column: 13)
!1970 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 325, column: 30)
!1971 = !DILocation(line: 327, column: 17, scope: !1969)
!1972 = !DILocation(line: 327, column: 20, scope: !1969)
!1973 = !DILocation(line: 327, column: 15, scope: !1969)
!1974 = !DILocation(line: 327, column: 29, scope: !1969)
!1975 = !DILocation(line: 328, column: 13, scope: !1969)
!1976 = !DILocation(line: 327, column: 13, scope: !1970)
!1977 = !DILocation(line: 329, column: 14, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 328, column: 64)
!1979 = !DILocation(line: 330, column: 9, scope: !1978)
!1980 = !DILocation(line: 332, column: 13, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 332, column: 13)
!1982 = !DILocation(line: 332, column: 13, scope: !1970)
!1983 = !DILocation(line: 332, column: 53, scope: !1981)
!1984 = !DILocation(line: 335, column: 22, scope: !1970)
!1985 = !DILocation(line: 335, column: 25, scope: !1970)
!1986 = !DILocation(line: 335, column: 30, scope: !1970)
!1987 = !DILocation(line: 335, column: 9, scope: !1970)
!1988 = !DILocation(line: 335, column: 12, scope: !1970)
!1989 = !DILocation(line: 335, column: 17, scope: !1970)
!1990 = !DILocation(line: 335, column: 20, scope: !1970)
!1991 = !DILocation(line: 335, column: 39, scope: !1970)
!1992 = !DILocation(line: 335, column: 37, scope: !1970)
!1993 = !DILocation(line: 338, column: 11, scope: !1970)
!1994 = distinct !{!1994, !1963, !1995, !343, !344}
!1995 = !DILocation(line: 339, column: 5, scope: !1942)
!1996 = !DILocation(line: 340, column: 18, scope: !1942)
!1997 = !DILocation(line: 340, column: 5, scope: !1942)
!1998 = !DILocation(line: 340, column: 8, scope: !1942)
!1999 = !DILocation(line: 340, column: 13, scope: !1942)
!2000 = !DILocation(line: 340, column: 16, scope: !1942)
!2001 = !DILocation(line: 341, column: 1, scope: !1942)
!2002 = distinct !DISubprogram(name: "gen_bitlen", scope: !3, file: !3, line: 353, type: !1100, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2003)
!2003 = !{!2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018}
!2004 = !DILocalVariable(name: "s", arg: 1, scope: !2002, file: !3, line: 354, type: !140)
!2005 = !DILocalVariable(name: "desc", arg: 2, scope: !2002, file: !3, line: 355, type: !14)
!2006 = !DILocalVariable(name: "tree", scope: !2002, file: !3, line: 358, type: !20)
!2007 = !DILocalVariable(name: "max_code", scope: !2002, file: !3, line: 359, type: !5)
!2008 = !DILocalVariable(name: "stree", scope: !2002, file: !3, line: 360, type: !41)
!2009 = !DILocalVariable(name: "extra", scope: !2002, file: !3, line: 361, type: !44)
!2010 = !DILocalVariable(name: "base", scope: !2002, file: !3, line: 362, type: !5)
!2011 = !DILocalVariable(name: "max_length", scope: !2002, file: !3, line: 363, type: !5)
!2012 = !DILocalVariable(name: "h", scope: !2002, file: !3, line: 364, type: !5)
!2013 = !DILocalVariable(name: "n", scope: !2002, file: !3, line: 365, type: !5)
!2014 = !DILocalVariable(name: "m", scope: !2002, file: !3, line: 365, type: !5)
!2015 = !DILocalVariable(name: "bits", scope: !2002, file: !3, line: 366, type: !5)
!2016 = !DILocalVariable(name: "xbits", scope: !2002, file: !3, line: 367, type: !5)
!2017 = !DILocalVariable(name: "f", scope: !2002, file: !3, line: 368, type: !9)
!2018 = !DILocalVariable(name: "overflow", scope: !2002, file: !3, line: 369, type: !5)
!2019 = !DILocation(line: 354, column: 17, scope: !2002)
!2020 = !DILocation(line: 355, column: 13, scope: !2002)
!2021 = !DILocation(line: 358, column: 5, scope: !2002)
!2022 = !DILocation(line: 358, column: 14, scope: !2002)
!2023 = !DILocation(line: 358, column: 28, scope: !2002)
!2024 = !DILocation(line: 358, column: 34, scope: !2002)
!2025 = !DILocation(line: 359, column: 5, scope: !2002)
!2026 = !DILocation(line: 359, column: 9, scope: !2002)
!2027 = !DILocation(line: 359, column: 28, scope: !2002)
!2028 = !DILocation(line: 359, column: 34, scope: !2002)
!2029 = !DILocation(line: 360, column: 5, scope: !2002)
!2030 = !DILocation(line: 360, column: 20, scope: !2002)
!2031 = !DILocation(line: 360, column: 28, scope: !2002)
!2032 = !DILocation(line: 360, column: 34, scope: !2002)
!2033 = !DILocation(line: 360, column: 45, scope: !2002)
!2034 = !DILocation(line: 361, column: 5, scope: !2002)
!2035 = !DILocation(line: 361, column: 16, scope: !2002)
!2036 = !DILocation(line: 361, column: 28, scope: !2002)
!2037 = !DILocation(line: 361, column: 34, scope: !2002)
!2038 = !DILocation(line: 361, column: 45, scope: !2002)
!2039 = !DILocation(line: 362, column: 5, scope: !2002)
!2040 = !DILocation(line: 362, column: 9, scope: !2002)
!2041 = !DILocation(line: 362, column: 28, scope: !2002)
!2042 = !DILocation(line: 362, column: 34, scope: !2002)
!2043 = !DILocation(line: 362, column: 45, scope: !2002)
!2044 = !DILocation(line: 363, column: 5, scope: !2002)
!2045 = !DILocation(line: 363, column: 9, scope: !2002)
!2046 = !DILocation(line: 363, column: 28, scope: !2002)
!2047 = !DILocation(line: 363, column: 34, scope: !2002)
!2048 = !DILocation(line: 363, column: 45, scope: !2002)
!2049 = !DILocation(line: 364, column: 5, scope: !2002)
!2050 = !DILocation(line: 364, column: 9, scope: !2002)
!2051 = !DILocation(line: 365, column: 5, scope: !2002)
!2052 = !DILocation(line: 365, column: 9, scope: !2002)
!2053 = !DILocation(line: 365, column: 12, scope: !2002)
!2054 = !DILocation(line: 366, column: 5, scope: !2002)
!2055 = !DILocation(line: 366, column: 9, scope: !2002)
!2056 = !DILocation(line: 367, column: 5, scope: !2002)
!2057 = !DILocation(line: 367, column: 9, scope: !2002)
!2058 = !DILocation(line: 368, column: 5, scope: !2002)
!2059 = !DILocation(line: 368, column: 9, scope: !2002)
!2060 = !DILocation(line: 369, column: 5, scope: !2002)
!2061 = !DILocation(line: 369, column: 9, scope: !2002)
!2062 = !DILocation(line: 371, column: 15, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 371, column: 5)
!2064 = !DILocation(line: 371, column: 10, scope: !2063)
!2065 = !DILocation(line: 371, column: 20, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 371, column: 5)
!2067 = !DILocation(line: 371, column: 25, scope: !2066)
!2068 = !DILocation(line: 371, column: 5, scope: !2063)
!2069 = !DILocation(line: 371, column: 46, scope: !2066)
!2070 = !DILocation(line: 371, column: 49, scope: !2066)
!2071 = !DILocation(line: 371, column: 58, scope: !2066)
!2072 = !DILocation(line: 371, column: 64, scope: !2066)
!2073 = !DILocation(line: 371, column: 42, scope: !2066)
!2074 = !DILocation(line: 371, column: 5, scope: !2066)
!2075 = distinct !{!2075, !2068, !2076, !343, !344}
!2076 = !DILocation(line: 371, column: 66, scope: !2063)
!2077 = !DILocation(line: 376, column: 5, scope: !2002)
!2078 = !DILocation(line: 376, column: 10, scope: !2002)
!2079 = !DILocation(line: 376, column: 13, scope: !2002)
!2080 = !DILocation(line: 376, column: 18, scope: !2002)
!2081 = !DILocation(line: 376, column: 21, scope: !2002)
!2082 = !DILocation(line: 376, column: 32, scope: !2002)
!2083 = !DILocation(line: 376, column: 36, scope: !2002)
!2084 = !DILocation(line: 378, column: 14, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 378, column: 5)
!2086 = !DILocation(line: 378, column: 17, scope: !2085)
!2087 = !DILocation(line: 378, column: 25, scope: !2085)
!2088 = !DILocation(line: 378, column: 12, scope: !2085)
!2089 = !DILocation(line: 378, column: 10, scope: !2085)
!2090 = !DILocation(line: 378, column: 29, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 378, column: 5)
!2092 = !DILocation(line: 378, column: 31, scope: !2091)
!2093 = !DILocation(line: 378, column: 5, scope: !2085)
!2094 = !DILocation(line: 379, column: 13, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 378, column: 49)
!2096 = !DILocation(line: 379, column: 16, scope: !2095)
!2097 = !DILocation(line: 379, column: 21, scope: !2095)
!2098 = !DILocation(line: 379, column: 11, scope: !2095)
!2099 = !DILocation(line: 380, column: 16, scope: !2095)
!2100 = !DILocation(line: 380, column: 21, scope: !2095)
!2101 = !DILocation(line: 380, column: 26, scope: !2095)
!2102 = !DILocation(line: 380, column: 29, scope: !2095)
!2103 = !DILocation(line: 380, column: 34, scope: !2095)
!2104 = !DILocation(line: 380, column: 38, scope: !2095)
!2105 = !DILocation(line: 380, column: 14, scope: !2095)
!2106 = !DILocation(line: 381, column: 13, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 381, column: 13)
!2108 = !DILocation(line: 381, column: 20, scope: !2107)
!2109 = !DILocation(line: 381, column: 18, scope: !2107)
!2110 = !DILocation(line: 381, column: 13, scope: !2095)
!2111 = !DILocation(line: 381, column: 39, scope: !2107)
!2112 = !DILocation(line: 381, column: 37, scope: !2107)
!2113 = !DILocation(line: 381, column: 59, scope: !2107)
!2114 = !DILocation(line: 381, column: 32, scope: !2107)
!2115 = !DILocation(line: 382, column: 28, scope: !2095)
!2116 = !DILocation(line: 382, column: 23, scope: !2095)
!2117 = !DILocation(line: 382, column: 9, scope: !2095)
!2118 = !DILocation(line: 382, column: 14, scope: !2095)
!2119 = !DILocation(line: 382, column: 17, scope: !2095)
!2120 = !DILocation(line: 382, column: 21, scope: !2095)
!2121 = !DILocation(line: 385, column: 13, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 385, column: 13)
!2123 = !DILocation(line: 385, column: 17, scope: !2122)
!2124 = !DILocation(line: 385, column: 15, scope: !2122)
!2125 = !DILocation(line: 385, column: 13, scope: !2095)
!2126 = !DILocation(line: 385, column: 27, scope: !2122)
!2127 = !DILocation(line: 387, column: 9, scope: !2095)
!2128 = !DILocation(line: 387, column: 12, scope: !2095)
!2129 = !DILocation(line: 387, column: 21, scope: !2095)
!2130 = !DILocation(line: 387, column: 26, scope: !2095)
!2131 = !DILocation(line: 388, column: 15, scope: !2095)
!2132 = !DILocation(line: 389, column: 13, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 389, column: 13)
!2134 = !DILocation(line: 389, column: 18, scope: !2133)
!2135 = !DILocation(line: 389, column: 15, scope: !2133)
!2136 = !DILocation(line: 389, column: 13, scope: !2095)
!2137 = !DILocation(line: 389, column: 32, scope: !2133)
!2138 = !DILocation(line: 389, column: 38, scope: !2133)
!2139 = !DILocation(line: 389, column: 40, scope: !2133)
!2140 = !DILocation(line: 389, column: 39, scope: !2133)
!2141 = !DILocation(line: 389, column: 30, scope: !2133)
!2142 = !DILocation(line: 389, column: 24, scope: !2133)
!2143 = !DILocation(line: 390, column: 13, scope: !2095)
!2144 = !DILocation(line: 390, column: 18, scope: !2095)
!2145 = !DILocation(line: 390, column: 21, scope: !2095)
!2146 = !DILocation(line: 390, column: 11, scope: !2095)
!2147 = !DILocation(line: 391, column: 28, scope: !2095)
!2148 = !DILocation(line: 391, column: 23, scope: !2095)
!2149 = !DILocation(line: 391, column: 33, scope: !2095)
!2150 = !DILocation(line: 391, column: 40, scope: !2095)
!2151 = !DILocation(line: 391, column: 38, scope: !2095)
!2152 = !DILocation(line: 391, column: 32, scope: !2095)
!2153 = !DILocation(line: 391, column: 30, scope: !2095)
!2154 = !DILocation(line: 391, column: 9, scope: !2095)
!2155 = !DILocation(line: 391, column: 12, scope: !2095)
!2156 = !DILocation(line: 391, column: 20, scope: !2095)
!2157 = !DILocation(line: 392, column: 13, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 392, column: 13)
!2159 = !DILocation(line: 392, column: 13, scope: !2095)
!2160 = !DILocation(line: 392, column: 42, scope: !2158)
!2161 = !DILocation(line: 392, column: 37, scope: !2158)
!2162 = !DILocation(line: 392, column: 47, scope: !2158)
!2163 = !DILocation(line: 392, column: 53, scope: !2158)
!2164 = !DILocation(line: 392, column: 56, scope: !2158)
!2165 = !DILocation(line: 392, column: 62, scope: !2158)
!2166 = !DILocation(line: 392, column: 60, scope: !2158)
!2167 = !DILocation(line: 392, column: 46, scope: !2158)
!2168 = !DILocation(line: 392, column: 44, scope: !2158)
!2169 = !DILocation(line: 392, column: 20, scope: !2158)
!2170 = !DILocation(line: 392, column: 23, scope: !2158)
!2171 = !DILocation(line: 392, column: 34, scope: !2158)
!2172 = !DILocation(line: 393, column: 5, scope: !2095)
!2173 = !DILocation(line: 378, column: 45, scope: !2091)
!2174 = !DILocation(line: 378, column: 5, scope: !2091)
!2175 = distinct !{!2175, !2093, !2176, !343, !344}
!2176 = !DILocation(line: 393, column: 5, scope: !2085)
!2177 = !DILocation(line: 394, column: 9, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 394, column: 9)
!2179 = !DILocation(line: 394, column: 18, scope: !2178)
!2180 = !DILocation(line: 394, column: 9, scope: !2002)
!2181 = !DILocation(line: 394, column: 24, scope: !2178)
!2182 = !DILocation(line: 400, column: 5, scope: !2002)
!2183 = !DILocation(line: 401, column: 16, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 400, column: 8)
!2185 = !DILocation(line: 401, column: 26, scope: !2184)
!2186 = !DILocation(line: 401, column: 14, scope: !2184)
!2187 = !DILocation(line: 402, column: 9, scope: !2184)
!2188 = !DILocation(line: 402, column: 16, scope: !2184)
!2189 = !DILocation(line: 402, column: 19, scope: !2184)
!2190 = !DILocation(line: 402, column: 28, scope: !2184)
!2191 = !DILocation(line: 402, column: 34, scope: !2184)
!2192 = !DILocation(line: 402, column: 44, scope: !2184)
!2193 = distinct !{!2193, !2187, !2192, !343, !344}
!2194 = !DILocation(line: 403, column: 9, scope: !2184)
!2195 = !DILocation(line: 403, column: 12, scope: !2184)
!2196 = !DILocation(line: 403, column: 21, scope: !2184)
!2197 = !DILocation(line: 403, column: 26, scope: !2184)
!2198 = !DILocation(line: 404, column: 9, scope: !2184)
!2199 = !DILocation(line: 404, column: 12, scope: !2184)
!2200 = !DILocation(line: 404, column: 21, scope: !2184)
!2201 = !DILocation(line: 404, column: 25, scope: !2184)
!2202 = !DILocation(line: 404, column: 29, scope: !2184)
!2203 = !DILocation(line: 405, column: 9, scope: !2184)
!2204 = !DILocation(line: 405, column: 12, scope: !2184)
!2205 = !DILocation(line: 405, column: 21, scope: !2184)
!2206 = !DILocation(line: 405, column: 32, scope: !2184)
!2207 = !DILocation(line: 409, column: 18, scope: !2184)
!2208 = !DILocation(line: 410, column: 5, scope: !2184)
!2209 = !DILocation(line: 410, column: 14, scope: !2002)
!2210 = !DILocation(line: 410, column: 23, scope: !2002)
!2211 = distinct !{!2211, !2182, !2212, !343, !344}
!2212 = !DILocation(line: 410, column: 26, scope: !2002)
!2213 = !DILocation(line: 417, column: 17, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 417, column: 5)
!2215 = !DILocation(line: 417, column: 15, scope: !2214)
!2216 = !DILocation(line: 417, column: 10, scope: !2214)
!2217 = !DILocation(line: 417, column: 29, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 417, column: 5)
!2219 = !DILocation(line: 417, column: 34, scope: !2218)
!2220 = !DILocation(line: 417, column: 5, scope: !2214)
!2221 = !DILocation(line: 418, column: 13, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 417, column: 48)
!2223 = !DILocation(line: 418, column: 16, scope: !2222)
!2224 = !DILocation(line: 418, column: 25, scope: !2222)
!2225 = !DILocation(line: 418, column: 11, scope: !2222)
!2226 = !DILocation(line: 419, column: 9, scope: !2222)
!2227 = !DILocation(line: 419, column: 16, scope: !2222)
!2228 = !DILocation(line: 419, column: 18, scope: !2222)
!2229 = !DILocation(line: 420, column: 17, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 419, column: 24)
!2231 = !DILocation(line: 420, column: 20, scope: !2230)
!2232 = !DILocation(line: 420, column: 25, scope: !2230)
!2233 = !DILocation(line: 420, column: 15, scope: !2230)
!2234 = !DILocation(line: 421, column: 17, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 421, column: 17)
!2236 = !DILocation(line: 421, column: 21, scope: !2235)
!2237 = !DILocation(line: 421, column: 19, scope: !2235)
!2238 = !DILocation(line: 421, column: 17, scope: !2230)
!2239 = !DILocation(line: 421, column: 31, scope: !2235)
!2240 = distinct !{!2240, !2226, !2241, !343, !344}
!2241 = !DILocation(line: 429, column: 9, scope: !2222)
!2242 = !DILocation(line: 422, column: 17, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 422, column: 17)
!2244 = !DILocation(line: 422, column: 22, scope: !2243)
!2245 = !DILocation(line: 422, column: 25, scope: !2243)
!2246 = !DILocation(line: 422, column: 43, scope: !2243)
!2247 = !DILocation(line: 422, column: 29, scope: !2243)
!2248 = !DILocation(line: 422, column: 17, scope: !2230)
!2249 = !DILocation(line: 424, column: 38, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 422, column: 49)
!2251 = !DILocation(line: 424, column: 32, scope: !2250)
!2252 = !DILocation(line: 424, column: 51, scope: !2250)
!2253 = !DILocation(line: 424, column: 56, scope: !2250)
!2254 = !DILocation(line: 424, column: 59, scope: !2250)
!2255 = !DILocation(line: 424, column: 45, scope: !2250)
!2256 = !DILocation(line: 424, column: 43, scope: !2250)
!2257 = !DILocation(line: 425, column: 38, scope: !2250)
!2258 = !DILocation(line: 425, column: 43, scope: !2250)
!2259 = !DILocation(line: 425, column: 46, scope: !2250)
!2260 = !DILocation(line: 425, column: 32, scope: !2250)
!2261 = !DILocation(line: 425, column: 31, scope: !2250)
!2262 = !DILocation(line: 424, column: 17, scope: !2250)
!2263 = !DILocation(line: 424, column: 20, scope: !2250)
!2264 = !DILocation(line: 424, column: 28, scope: !2250)
!2265 = !DILocation(line: 426, column: 36, scope: !2250)
!2266 = !DILocation(line: 426, column: 31, scope: !2250)
!2267 = !DILocation(line: 426, column: 17, scope: !2250)
!2268 = !DILocation(line: 426, column: 22, scope: !2250)
!2269 = !DILocation(line: 426, column: 25, scope: !2250)
!2270 = !DILocation(line: 426, column: 29, scope: !2250)
!2271 = !DILocation(line: 427, column: 13, scope: !2250)
!2272 = !DILocation(line: 428, column: 14, scope: !2230)
!2273 = !DILocation(line: 430, column: 5, scope: !2222)
!2274 = !DILocation(line: 417, column: 44, scope: !2218)
!2275 = !DILocation(line: 417, column: 5, scope: !2218)
!2276 = distinct !{!2276, !2220, !2277, !343, !344}
!2277 = !DILocation(line: 430, column: 5, scope: !2214)
!2278 = !DILocation(line: 431, column: 1, scope: !2002)
!2279 = distinct !DISubprogram(name: "scan_tree", scope: !3, file: !3, line: 572, type: !1943, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2280)
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290}
!2281 = !DILocalVariable(name: "s", arg: 1, scope: !2279, file: !3, line: 573, type: !140)
!2282 = !DILocalVariable(name: "tree", arg: 2, scope: !2279, file: !3, line: 574, type: !20)
!2283 = !DILocalVariable(name: "max_code", arg: 3, scope: !2279, file: !3, line: 575, type: !5)
!2284 = !DILocalVariable(name: "n", scope: !2279, file: !3, line: 578, type: !5)
!2285 = !DILocalVariable(name: "prevlen", scope: !2279, file: !3, line: 579, type: !5)
!2286 = !DILocalVariable(name: "curlen", scope: !2279, file: !3, line: 580, type: !5)
!2287 = !DILocalVariable(name: "nextlen", scope: !2279, file: !3, line: 581, type: !5)
!2288 = !DILocalVariable(name: "count", scope: !2279, file: !3, line: 582, type: !5)
!2289 = !DILocalVariable(name: "max_count", scope: !2279, file: !3, line: 583, type: !5)
!2290 = !DILocalVariable(name: "min_count", scope: !2279, file: !3, line: 584, type: !5)
!2291 = !DILocation(line: 573, column: 17, scope: !2279)
!2292 = !DILocation(line: 574, column: 11, scope: !2279)
!2293 = !DILocation(line: 575, column: 6, scope: !2279)
!2294 = !DILocation(line: 578, column: 5, scope: !2279)
!2295 = !DILocation(line: 578, column: 9, scope: !2279)
!2296 = !DILocation(line: 579, column: 5, scope: !2279)
!2297 = !DILocation(line: 579, column: 9, scope: !2279)
!2298 = !DILocation(line: 580, column: 5, scope: !2279)
!2299 = !DILocation(line: 580, column: 9, scope: !2279)
!2300 = !DILocation(line: 581, column: 5, scope: !2279)
!2301 = !DILocation(line: 581, column: 9, scope: !2279)
!2302 = !DILocation(line: 581, column: 19, scope: !2279)
!2303 = !DILocation(line: 581, column: 27, scope: !2279)
!2304 = !DILocation(line: 582, column: 5, scope: !2279)
!2305 = !DILocation(line: 582, column: 9, scope: !2279)
!2306 = !DILocation(line: 583, column: 5, scope: !2279)
!2307 = !DILocation(line: 583, column: 9, scope: !2279)
!2308 = !DILocation(line: 584, column: 5, scope: !2279)
!2309 = !DILocation(line: 584, column: 9, scope: !2279)
!2310 = !DILocation(line: 586, column: 9, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 586, column: 9)
!2312 = !DILocation(line: 586, column: 17, scope: !2311)
!2313 = !DILocation(line: 586, column: 9, scope: !2279)
!2314 = !DILocation(line: 586, column: 33, scope: !2311)
!2315 = !DILocation(line: 586, column: 50, scope: !2311)
!2316 = !DILocation(line: 586, column: 23, scope: !2311)
!2317 = !DILocation(line: 587, column: 5, scope: !2279)
!2318 = !DILocation(line: 587, column: 10, scope: !2279)
!2319 = !DILocation(line: 587, column: 18, scope: !2279)
!2320 = !DILocation(line: 587, column: 22, scope: !2279)
!2321 = !DILocation(line: 587, column: 26, scope: !2279)
!2322 = !DILocation(line: 589, column: 12, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 589, column: 5)
!2324 = !DILocation(line: 589, column: 10, scope: !2323)
!2325 = !DILocation(line: 589, column: 17, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 589, column: 5)
!2327 = !DILocation(line: 589, column: 22, scope: !2326)
!2328 = !DILocation(line: 589, column: 19, scope: !2326)
!2329 = !DILocation(line: 589, column: 5, scope: !2323)
!2330 = !DILocation(line: 590, column: 18, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 589, column: 37)
!2332 = !DILocation(line: 590, column: 16, scope: !2331)
!2333 = !DILocation(line: 590, column: 37, scope: !2331)
!2334 = !DILocation(line: 590, column: 42, scope: !2331)
!2335 = !DILocation(line: 590, column: 43, scope: !2331)
!2336 = !DILocation(line: 590, column: 47, scope: !2331)
!2337 = !DILocation(line: 590, column: 35, scope: !2331)
!2338 = !DILocation(line: 591, column: 13, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 591, column: 13)
!2340 = !DILocation(line: 591, column: 23, scope: !2339)
!2341 = !DILocation(line: 591, column: 21, scope: !2339)
!2342 = !DILocation(line: 591, column: 33, scope: !2339)
!2343 = !DILocation(line: 591, column: 36, scope: !2339)
!2344 = !DILocation(line: 591, column: 46, scope: !2339)
!2345 = !DILocation(line: 591, column: 43, scope: !2339)
!2346 = !DILocation(line: 591, column: 13, scope: !2331)
!2347 = !DILocation(line: 592, column: 13, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 591, column: 55)
!2349 = !DILocation(line: 593, column: 20, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 593, column: 20)
!2351 = !DILocation(line: 593, column: 28, scope: !2350)
!2352 = !DILocation(line: 593, column: 26, scope: !2350)
!2353 = !DILocation(line: 593, column: 20, scope: !2339)
!2354 = !DILocation(line: 594, column: 40, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 593, column: 39)
!2356 = !DILocation(line: 594, column: 13, scope: !2355)
!2357 = !DILocation(line: 594, column: 16, scope: !2355)
!2358 = !DILocation(line: 594, column: 24, scope: !2355)
!2359 = !DILocation(line: 594, column: 32, scope: !2355)
!2360 = !DILocation(line: 594, column: 37, scope: !2355)
!2361 = !DILocation(line: 595, column: 9, scope: !2355)
!2362 = !DILocation(line: 595, column: 20, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 595, column: 20)
!2364 = !DILocation(line: 595, column: 27, scope: !2363)
!2365 = !DILocation(line: 595, column: 20, scope: !2350)
!2366 = !DILocation(line: 596, column: 17, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 596, column: 17)
!2368 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 595, column: 33)
!2369 = !DILocation(line: 596, column: 27, scope: !2367)
!2370 = !DILocation(line: 596, column: 24, scope: !2367)
!2371 = !DILocation(line: 596, column: 17, scope: !2368)
!2372 = !DILocation(line: 596, column: 36, scope: !2367)
!2373 = !DILocation(line: 596, column: 39, scope: !2367)
!2374 = !DILocation(line: 596, column: 47, scope: !2367)
!2375 = !DILocation(line: 596, column: 55, scope: !2367)
!2376 = !DILocation(line: 596, column: 59, scope: !2367)
!2377 = !DILocation(line: 597, column: 13, scope: !2368)
!2378 = !DILocation(line: 597, column: 16, scope: !2368)
!2379 = !DILocation(line: 597, column: 33, scope: !2368)
!2380 = !DILocation(line: 597, column: 37, scope: !2368)
!2381 = !DILocation(line: 598, column: 9, scope: !2368)
!2382 = !DILocation(line: 598, column: 20, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 598, column: 20)
!2384 = !DILocation(line: 598, column: 26, scope: !2383)
!2385 = !DILocation(line: 598, column: 20, scope: !2363)
!2386 = !DILocation(line: 599, column: 13, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 598, column: 33)
!2388 = !DILocation(line: 599, column: 16, scope: !2387)
!2389 = !DILocation(line: 599, column: 35, scope: !2387)
!2390 = !DILocation(line: 599, column: 39, scope: !2387)
!2391 = !DILocation(line: 600, column: 9, scope: !2387)
!2392 = !DILocation(line: 601, column: 13, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 600, column: 16)
!2394 = !DILocation(line: 601, column: 16, scope: !2393)
!2395 = !DILocation(line: 601, column: 37, scope: !2393)
!2396 = !DILocation(line: 601, column: 41, scope: !2393)
!2397 = !DILocation(line: 603, column: 15, scope: !2331)
!2398 = !DILocation(line: 603, column: 30, scope: !2331)
!2399 = !DILocation(line: 603, column: 28, scope: !2331)
!2400 = !DILocation(line: 604, column: 13, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 604, column: 13)
!2402 = !DILocation(line: 604, column: 21, scope: !2401)
!2403 = !DILocation(line: 604, column: 13, scope: !2331)
!2404 = !DILocation(line: 605, column: 23, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 604, column: 27)
!2406 = !DILocation(line: 605, column: 40, scope: !2405)
!2407 = !DILocation(line: 606, column: 9, scope: !2405)
!2408 = !DILocation(line: 606, column: 20, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 606, column: 20)
!2410 = !DILocation(line: 606, column: 30, scope: !2409)
!2411 = !DILocation(line: 606, column: 27, scope: !2409)
!2412 = !DILocation(line: 606, column: 20, scope: !2401)
!2413 = !DILocation(line: 607, column: 23, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 606, column: 39)
!2415 = !DILocation(line: 607, column: 38, scope: !2414)
!2416 = !DILocation(line: 608, column: 9, scope: !2414)
!2417 = !DILocation(line: 609, column: 23, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 608, column: 16)
!2419 = !DILocation(line: 609, column: 38, scope: !2418)
!2420 = !DILocation(line: 611, column: 5, scope: !2331)
!2421 = !DILocation(line: 589, column: 33, scope: !2326)
!2422 = !DILocation(line: 589, column: 5, scope: !2326)
!2423 = distinct !{!2423, !2329, !2424, !343, !344}
!2424 = !DILocation(line: 611, column: 5, scope: !2323)
!2425 = !DILocation(line: 612, column: 1, scope: !2279)
!2426 = distinct !DISubprogram(name: "send_tree", scope: !3, file: !3, line: 618, type: !1943, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2427)
!2427 = !{!2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2447, !2450, !2456, !2459, !2461, !2464, !2466, !2469, !2473, !2476, !2478, !2481, !2484, !2487, !2489}
!2428 = !DILocalVariable(name: "s", arg: 1, scope: !2426, file: !3, line: 619, type: !140)
!2429 = !DILocalVariable(name: "tree", arg: 2, scope: !2426, file: !3, line: 620, type: !20)
!2430 = !DILocalVariable(name: "max_code", arg: 3, scope: !2426, file: !3, line: 621, type: !5)
!2431 = !DILocalVariable(name: "n", scope: !2426, file: !3, line: 624, type: !5)
!2432 = !DILocalVariable(name: "prevlen", scope: !2426, file: !3, line: 625, type: !5)
!2433 = !DILocalVariable(name: "curlen", scope: !2426, file: !3, line: 626, type: !5)
!2434 = !DILocalVariable(name: "nextlen", scope: !2426, file: !3, line: 627, type: !5)
!2435 = !DILocalVariable(name: "count", scope: !2426, file: !3, line: 628, type: !5)
!2436 = !DILocalVariable(name: "max_count", scope: !2426, file: !3, line: 629, type: !5)
!2437 = !DILocalVariable(name: "min_count", scope: !2426, file: !3, line: 630, type: !5)
!2438 = !DILocalVariable(name: "len", scope: !2439, file: !3, line: 640, type: !5)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 640, column: 18)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 640, column: 16)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 639, column: 39)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 639, column: 20)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 637, column: 13)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 635, column: 37)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 635, column: 5)
!2446 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 635, column: 5)
!2447 = !DILocalVariable(name: "val", scope: !2448, file: !3, line: 640, type: !5)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 640, column: 18)
!2449 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 640, column: 18)
!2450 = !DILocalVariable(name: "len", scope: !2451, file: !3, line: 644, type: !5)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 644, column: 17)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 643, column: 36)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 643, column: 17)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 642, column: 33)
!2455 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 642, column: 20)
!2456 = !DILocalVariable(name: "val", scope: !2457, file: !3, line: 644, type: !5)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 644, column: 17)
!2458 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 644, column: 17)
!2459 = !DILocalVariable(name: "len", scope: !2460, file: !3, line: 647, type: !5)
!2460 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 647, column: 13)
!2461 = !DILocalVariable(name: "val", scope: !2462, file: !3, line: 647, type: !5)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 647, column: 13)
!2463 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 647, column: 13)
!2464 = !DILocalVariable(name: "len", scope: !2465, file: !3, line: 647, type: !5)
!2465 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 647, column: 48)
!2466 = !DILocalVariable(name: "val", scope: !2467, file: !3, line: 647, type: !5)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 647, column: 48)
!2468 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 647, column: 48)
!2469 = !DILocalVariable(name: "len", scope: !2470, file: !3, line: 650, type: !5)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 650, column: 13)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 649, column: 33)
!2472 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 649, column: 20)
!2473 = !DILocalVariable(name: "val", scope: !2474, file: !3, line: 650, type: !5)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 650, column: 13)
!2475 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 650, column: 13)
!2476 = !DILocalVariable(name: "len", scope: !2477, file: !3, line: 650, type: !5)
!2477 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 650, column: 50)
!2478 = !DILocalVariable(name: "val", scope: !2479, file: !3, line: 650, type: !5)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 650, column: 50)
!2480 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 650, column: 50)
!2481 = !DILocalVariable(name: "len", scope: !2482, file: !3, line: 653, type: !5)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 653, column: 13)
!2483 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 652, column: 16)
!2484 = !DILocalVariable(name: "val", scope: !2485, file: !3, line: 653, type: !5)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 653, column: 13)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 653, column: 13)
!2487 = !DILocalVariable(name: "len", scope: !2488, file: !3, line: 653, type: !5)
!2488 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 653, column: 52)
!2489 = !DILocalVariable(name: "val", scope: !2490, file: !3, line: 653, type: !5)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 653, column: 52)
!2491 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 653, column: 52)
!2492 = !DILocation(line: 619, column: 17, scope: !2426)
!2493 = !DILocation(line: 620, column: 11, scope: !2426)
!2494 = !DILocation(line: 621, column: 6, scope: !2426)
!2495 = !DILocation(line: 624, column: 5, scope: !2426)
!2496 = !DILocation(line: 624, column: 9, scope: !2426)
!2497 = !DILocation(line: 625, column: 5, scope: !2426)
!2498 = !DILocation(line: 625, column: 9, scope: !2426)
!2499 = !DILocation(line: 626, column: 5, scope: !2426)
!2500 = !DILocation(line: 626, column: 9, scope: !2426)
!2501 = !DILocation(line: 627, column: 5, scope: !2426)
!2502 = !DILocation(line: 627, column: 9, scope: !2426)
!2503 = !DILocation(line: 627, column: 19, scope: !2426)
!2504 = !DILocation(line: 627, column: 27, scope: !2426)
!2505 = !DILocation(line: 628, column: 5, scope: !2426)
!2506 = !DILocation(line: 628, column: 9, scope: !2426)
!2507 = !DILocation(line: 629, column: 5, scope: !2426)
!2508 = !DILocation(line: 629, column: 9, scope: !2426)
!2509 = !DILocation(line: 630, column: 5, scope: !2426)
!2510 = !DILocation(line: 630, column: 9, scope: !2426)
!2511 = !DILocation(line: 633, column: 9, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 633, column: 9)
!2513 = !DILocation(line: 633, column: 17, scope: !2512)
!2514 = !DILocation(line: 633, column: 9, scope: !2426)
!2515 = !DILocation(line: 633, column: 33, scope: !2512)
!2516 = !DILocation(line: 633, column: 50, scope: !2512)
!2517 = !DILocation(line: 633, column: 23, scope: !2512)
!2518 = !DILocation(line: 635, column: 12, scope: !2446)
!2519 = !DILocation(line: 635, column: 10, scope: !2446)
!2520 = !DILocation(line: 635, column: 17, scope: !2445)
!2521 = !DILocation(line: 635, column: 22, scope: !2445)
!2522 = !DILocation(line: 635, column: 19, scope: !2445)
!2523 = !DILocation(line: 635, column: 5, scope: !2446)
!2524 = !DILocation(line: 636, column: 18, scope: !2444)
!2525 = !DILocation(line: 636, column: 16, scope: !2444)
!2526 = !DILocation(line: 636, column: 37, scope: !2444)
!2527 = !DILocation(line: 636, column: 42, scope: !2444)
!2528 = !DILocation(line: 636, column: 43, scope: !2444)
!2529 = !DILocation(line: 636, column: 47, scope: !2444)
!2530 = !DILocation(line: 636, column: 35, scope: !2444)
!2531 = !DILocation(line: 637, column: 13, scope: !2443)
!2532 = !DILocation(line: 637, column: 23, scope: !2443)
!2533 = !DILocation(line: 637, column: 21, scope: !2443)
!2534 = !DILocation(line: 637, column: 33, scope: !2443)
!2535 = !DILocation(line: 637, column: 36, scope: !2443)
!2536 = !DILocation(line: 637, column: 46, scope: !2443)
!2537 = !DILocation(line: 637, column: 43, scope: !2443)
!2538 = !DILocation(line: 637, column: 13, scope: !2444)
!2539 = !DILocation(line: 638, column: 13, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 637, column: 55)
!2541 = !DILocation(line: 639, column: 20, scope: !2442)
!2542 = !DILocation(line: 639, column: 28, scope: !2442)
!2543 = !DILocation(line: 639, column: 26, scope: !2442)
!2544 = !DILocation(line: 639, column: 20, scope: !2443)
!2545 = !DILocation(line: 640, column: 13, scope: !2441)
!2546 = !DILocation(line: 640, column: 18, scope: !2439)
!2547 = !DILocation(line: 640, column: 18, scope: !2449)
!2548 = !DILocation(line: 640, column: 18, scope: !2448)
!2549 = !DILocation(line: 640, column: 18, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 640, column: 18)
!2551 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 640, column: 18)
!2552 = !DILocation(line: 640, column: 18, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 640, column: 18)
!2554 = !DILocation(line: 640, column: 18, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 640, column: 18)
!2556 = !DILocation(line: 640, column: 18, scope: !2440)
!2557 = !DILocation(line: 640, column: 52, scope: !2440)
!2558 = !DILocation(line: 640, column: 61, scope: !2441)
!2559 = !DILocation(line: 640, column: 69, scope: !2441)
!2560 = distinct !{!2560, !2545, !2561, !343, !344}
!2561 = !DILocation(line: 640, column: 73, scope: !2441)
!2562 = !DILocation(line: 642, column: 9, scope: !2441)
!2563 = !DILocation(line: 642, column: 20, scope: !2455)
!2564 = !DILocation(line: 642, column: 27, scope: !2455)
!2565 = !DILocation(line: 642, column: 20, scope: !2442)
!2566 = !DILocation(line: 643, column: 17, scope: !2453)
!2567 = !DILocation(line: 643, column: 27, scope: !2453)
!2568 = !DILocation(line: 643, column: 24, scope: !2453)
!2569 = !DILocation(line: 643, column: 17, scope: !2454)
!2570 = !DILocation(line: 644, column: 17, scope: !2451)
!2571 = !DILocation(line: 644, column: 17, scope: !2458)
!2572 = !DILocation(line: 644, column: 17, scope: !2457)
!2573 = !DILocation(line: 644, column: 17, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 644, column: 17)
!2575 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 644, column: 17)
!2576 = !DILocation(line: 644, column: 17, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 644, column: 17)
!2578 = !DILocation(line: 644, column: 17, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 644, column: 17)
!2580 = !DILocation(line: 644, column: 17, scope: !2452)
!2581 = !DILocation(line: 644, column: 56, scope: !2452)
!2582 = !DILocation(line: 645, column: 13, scope: !2452)
!2583 = !DILocation(line: 647, column: 13, scope: !2460)
!2584 = !DILocation(line: 647, column: 13, scope: !2463)
!2585 = !DILocation(line: 647, column: 13, scope: !2462)
!2586 = !DILocation(line: 647, column: 13, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 647, column: 13)
!2588 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 647, column: 13)
!2589 = !DILocation(line: 647, column: 13, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 647, column: 13)
!2591 = !DILocation(line: 647, column: 13, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 647, column: 13)
!2593 = !DILocation(line: 647, column: 13, scope: !2454)
!2594 = !DILocation(line: 647, column: 48, scope: !2465)
!2595 = !DILocation(line: 647, column: 48, scope: !2468)
!2596 = !DILocation(line: 647, column: 48, scope: !2467)
!2597 = !DILocation(line: 647, column: 48, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 647, column: 48)
!2599 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 647, column: 48)
!2600 = !DILocation(line: 647, column: 48, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 647, column: 48)
!2602 = !DILocation(line: 647, column: 48, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 647, column: 48)
!2604 = !DILocation(line: 647, column: 48, scope: !2454)
!2605 = !DILocation(line: 649, column: 9, scope: !2454)
!2606 = !DILocation(line: 649, column: 20, scope: !2472)
!2607 = !DILocation(line: 649, column: 26, scope: !2472)
!2608 = !DILocation(line: 649, column: 20, scope: !2455)
!2609 = !DILocation(line: 650, column: 13, scope: !2470)
!2610 = !DILocation(line: 650, column: 13, scope: !2475)
!2611 = !DILocation(line: 650, column: 13, scope: !2474)
!2612 = !DILocation(line: 650, column: 13, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 650, column: 13)
!2614 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 650, column: 13)
!2615 = !DILocation(line: 650, column: 13, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 650, column: 13)
!2617 = !DILocation(line: 650, column: 13, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 650, column: 13)
!2619 = !DILocation(line: 650, column: 13, scope: !2471)
!2620 = !DILocation(line: 650, column: 50, scope: !2477)
!2621 = !DILocation(line: 650, column: 50, scope: !2480)
!2622 = !DILocation(line: 650, column: 50, scope: !2479)
!2623 = !DILocation(line: 650, column: 50, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 650, column: 50)
!2625 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 650, column: 50)
!2626 = !DILocation(line: 650, column: 50, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 650, column: 50)
!2628 = !DILocation(line: 650, column: 50, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 650, column: 50)
!2630 = !DILocation(line: 650, column: 50, scope: !2471)
!2631 = !DILocation(line: 652, column: 9, scope: !2471)
!2632 = !DILocation(line: 653, column: 13, scope: !2482)
!2633 = !DILocation(line: 653, column: 13, scope: !2486)
!2634 = !DILocation(line: 653, column: 13, scope: !2485)
!2635 = !DILocation(line: 653, column: 13, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 653, column: 13)
!2637 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 653, column: 13)
!2638 = !DILocation(line: 653, column: 13, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 653, column: 13)
!2640 = !DILocation(line: 653, column: 13, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 653, column: 13)
!2642 = !DILocation(line: 653, column: 13, scope: !2483)
!2643 = !DILocation(line: 653, column: 52, scope: !2488)
!2644 = !DILocation(line: 653, column: 52, scope: !2491)
!2645 = !DILocation(line: 653, column: 52, scope: !2490)
!2646 = !DILocation(line: 653, column: 52, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 653, column: 52)
!2648 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 653, column: 52)
!2649 = !DILocation(line: 653, column: 52, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 653, column: 52)
!2651 = !DILocation(line: 653, column: 52, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 653, column: 52)
!2653 = !DILocation(line: 653, column: 52, scope: !2483)
!2654 = !DILocation(line: 655, column: 15, scope: !2444)
!2655 = !DILocation(line: 655, column: 30, scope: !2444)
!2656 = !DILocation(line: 655, column: 28, scope: !2444)
!2657 = !DILocation(line: 656, column: 13, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 656, column: 13)
!2659 = !DILocation(line: 656, column: 21, scope: !2658)
!2660 = !DILocation(line: 656, column: 13, scope: !2444)
!2661 = !DILocation(line: 657, column: 23, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 656, column: 27)
!2663 = !DILocation(line: 657, column: 40, scope: !2662)
!2664 = !DILocation(line: 658, column: 9, scope: !2662)
!2665 = !DILocation(line: 658, column: 20, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 658, column: 20)
!2667 = !DILocation(line: 658, column: 30, scope: !2666)
!2668 = !DILocation(line: 658, column: 27, scope: !2666)
!2669 = !DILocation(line: 658, column: 20, scope: !2658)
!2670 = !DILocation(line: 659, column: 23, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 658, column: 39)
!2672 = !DILocation(line: 659, column: 38, scope: !2671)
!2673 = !DILocation(line: 660, column: 9, scope: !2671)
!2674 = !DILocation(line: 661, column: 23, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 660, column: 16)
!2676 = !DILocation(line: 661, column: 38, scope: !2675)
!2677 = !DILocation(line: 663, column: 5, scope: !2444)
!2678 = !DILocation(line: 635, column: 33, scope: !2445)
!2679 = !DILocation(line: 635, column: 5, scope: !2445)
!2680 = distinct !{!2680, !2523, !2681, !343, !344}
!2681 = !DILocation(line: 663, column: 5, scope: !2446)
!2682 = !DILocation(line: 664, column: 1, scope: !2426)
