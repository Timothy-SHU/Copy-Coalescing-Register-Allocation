; ModuleID = 'lib/assoc_array.c'
source_filename = "lib/assoc_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assoc_array = type { ptr, i64 }
%struct.assoc_array_shortcut = type { ptr, i32, i32, ptr, [0 x i64] }
%struct.assoc_array_node = type { ptr, i8, [16 x ptr], i64 }
%struct.assoc_array_walk_result = type { %struct.anon, %struct.anon.0 }
%struct.anon = type { ptr, i32, i32 }
%struct.anon.0 = type { ptr, i32, i32, i64, i64 }
%struct.assoc_array_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.assoc_array_edit = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [1 x ptr], ptr, [16 x ptr], ptr, ptr, i64, [2 x %struct.anon.1], [1 x %struct.anon.2], [17 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.anon.1 = type { ptr, ptr }
%struct.anon.2 = type { ptr, i8 }
%struct.assoc_array_delete_collapse_context = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [18 x i8] c"lib/assoc_array.c\00", align 1, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @assoc_array_iterate(ptr noundef %array, ptr noundef %iterator, ptr noundef %iterator_data) #0 align 16 !dbg !171 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %iterator.addr = alloca ptr, align 8
  %iterator_data.addr = alloca ptr, align 8
  %root = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !180, metadata !DIExpression()), !dbg !184
  store ptr %iterator, ptr %iterator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iterator.addr, metadata !181, metadata !DIExpression()), !dbg !185
  store ptr %iterator_data, ptr %iterator_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iterator_data.addr, metadata !182, metadata !DIExpression()), !dbg !186
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #14, !dbg !187
  call void @llvm.dbg.declare(metadata ptr %root, metadata !183, metadata !DIExpression()), !dbg !188
  br label %do.body, !dbg !189

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !191

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !191

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %array.addr, align 8, !dbg !189
  %root1 = getelementptr inbounds %struct.assoc_array, ptr %0, i32 0, i32 0, !dbg !189
  %1 = load volatile ptr, ptr %root1, align 8, !dbg !189
  store ptr %1, ptr %tmp, align 8, !dbg !191
  %2 = load ptr, ptr %tmp, align 8, !dbg !189
  store ptr %2, ptr %root, align 8, !dbg !188
  %3 = load ptr, ptr %root, align 8, !dbg !193
  %tobool = icmp ne ptr %3, null, !dbg !193
  br i1 %tobool, label %if.end, label %if.then, !dbg !195

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !196

if.end:                                           ; preds = %do.end
  %4 = load ptr, ptr %root, align 8, !dbg !197
  %5 = load ptr, ptr %iterator.addr, align 8, !dbg !198
  %6 = load ptr, ptr %iterator_data.addr, align 8, !dbg !199
  %call = call i32 @assoc_array_subtree_iterate(ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef %6) #15, !dbg !200
  store i32 %call, ptr %retval, align 4, !dbg !201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !201

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #14, !dbg !202
  %7 = load i32, ptr %retval, align 4, !dbg !202
  ret i32 %7, !dbg !202
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @assoc_array_subtree_iterate(ptr noundef %root, ptr noundef %stop, ptr noundef %iterator, ptr noundef %iterator_data) #0 align 16 !dbg !203 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  %iterator.addr = alloca ptr, align 8
  %iterator_data.addr = alloca ptr, align 8
  %shortcut = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cursor = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %has_meta = alloca i64, align 8
  %slot = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp25 = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  %tmp49 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !209, metadata !DIExpression()), !dbg !228
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !210, metadata !DIExpression()), !dbg !229
  store ptr %iterator, ptr %iterator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iterator.addr, metadata !211, metadata !DIExpression()), !dbg !230
  store ptr %iterator_data, ptr %iterator_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iterator_data.addr, metadata !212, metadata !DIExpression()), !dbg !231
  call void @llvm.lifetime.start.p0(i64 8, ptr %shortcut) #14, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %shortcut, metadata !213, metadata !DIExpression()), !dbg !233
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %node, metadata !216, metadata !DIExpression()), !dbg !235
  call void @llvm.lifetime.start.p0(i64 8, ptr %cursor) #14, !dbg !236
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !219, metadata !DIExpression()), !dbg !237
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !236
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !220, metadata !DIExpression()), !dbg !238
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #14, !dbg !236
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !221, metadata !DIExpression()), !dbg !239
  call void @llvm.lifetime.start.p0(i64 8, ptr %has_meta) #14, !dbg !240
  call void @llvm.dbg.declare(metadata ptr %has_meta, metadata !222, metadata !DIExpression()), !dbg !241
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #14, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !223, metadata !DIExpression()), !dbg !243
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !224, metadata !DIExpression()), !dbg !244
  %0 = load ptr, ptr %root.addr, align 8, !dbg !245
  store ptr %0, ptr %cursor, align 8, !dbg !246
  br label %begin_node, !dbg !247

begin_node:                                       ; preds = %if.then30, %entry
  call void @llvm.dbg.label(metadata !225), !dbg !248
  %1 = load ptr, ptr %cursor, align 8, !dbg !249
  %call = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %1) #15, !dbg !251
  br i1 %call, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %begin_node
  %2 = load ptr, ptr %cursor, align 8, !dbg !253
  %call1 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %2) #15, !dbg !255
  store ptr %call1, ptr %shortcut, align 8, !dbg !256
  br label %do.body, !dbg !257

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !259

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !259

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %shortcut, align 8, !dbg !257
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %3, i32 0, i32 3, !dbg !257
  %4 = load volatile ptr, ptr %next_node, align 8, !dbg !257
  store ptr %4, ptr %tmp, align 8, !dbg !259
  %5 = load ptr, ptr %tmp, align 8, !dbg !257
  store ptr %5, ptr %cursor, align 8, !dbg !261
  br label %if.end, !dbg !262

if.end:                                           ; preds = %do.end, %begin_node
  %6 = load ptr, ptr %cursor, align 8, !dbg !263
  %call2 = call ptr @assoc_array_ptr_to_node(ptr noundef %6) #15, !dbg !264
  store ptr %call2, ptr %node, align 8, !dbg !265
  store i32 0, ptr %slot, align 4, !dbg !266
  store i64 0, ptr %has_meta, align 8, !dbg !267
  br label %for.cond, !dbg !268

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %slot, align 4, !dbg !269
  %cmp = icmp slt i32 %7, 16, !dbg !272
  br i1 %cmp, label %for.body, label %for.end, !dbg !273

for.body:                                         ; preds = %for.cond
  br label %do.body3, !dbg !274

do.body3:                                         ; preds = %for.body
  br label %do.cond4, !dbg !277

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !277

do.end5:                                          ; preds = %do.cond4
  %8 = load ptr, ptr %node, align 8, !dbg !274
  %slots = getelementptr inbounds %struct.assoc_array_node, ptr %8, i32 0, i32 2, !dbg !274
  %9 = load i32, ptr %slot, align 4, !dbg !274
  %idxprom = sext i32 %9 to i64, !dbg !274
  %arrayidx = getelementptr [16 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !274
  %10 = load volatile ptr, ptr %arrayidx, align 8, !dbg !274
  store ptr %10, ptr %tmp6, align 8, !dbg !277
  %11 = load ptr, ptr %tmp6, align 8, !dbg !274
  store ptr %11, ptr %ptr, align 8, !dbg !279
  %12 = load ptr, ptr %ptr, align 8, !dbg !280
  %13 = ptrtoint ptr %12 to i64, !dbg !281
  %14 = load i64, ptr %has_meta, align 8, !dbg !282
  %or = or i64 %14, %13, !dbg !282
  store i64 %or, ptr %has_meta, align 8, !dbg !282
  %15 = load ptr, ptr %ptr, align 8, !dbg !283
  %tobool = icmp ne ptr %15, null, !dbg !283
  br i1 %tobool, label %land.lhs.true, label %if.end14, !dbg !285

land.lhs.true:                                    ; preds = %do.end5
  %16 = load ptr, ptr %ptr, align 8, !dbg !286
  %call7 = call zeroext i1 @assoc_array_ptr_is_leaf(ptr noundef %16) #15, !dbg !287
  br i1 %call7, label %if.then8, label %if.end14, !dbg !288

if.then8:                                         ; preds = %land.lhs.true
  %17 = load ptr, ptr %iterator.addr, align 8, !dbg !289
  %18 = load ptr, ptr %ptr, align 8, !dbg !291
  %call9 = call ptr @assoc_array_ptr_to_leaf(ptr noundef %18) #15, !dbg !292
  %19 = load ptr, ptr %iterator_data.addr, align 8, !dbg !293
  %call10 = call i32 %17(ptr noundef %call9, ptr noundef %19) #15, !dbg !289
  store i32 %call10, ptr %ret, align 4, !dbg !294
  %20 = load i32, ptr %ret, align 4, !dbg !295
  %tobool11 = icmp ne i32 %20, 0, !dbg !295
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !297

if.then12:                                        ; preds = %if.then8
  %21 = load i32, ptr %ret, align 4, !dbg !298
  store i32 %21, ptr %retval, align 4, !dbg !299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !299

if.end13:                                         ; preds = %if.then8
  br label %if.end14, !dbg !300

if.end14:                                         ; preds = %if.end13, %land.lhs.true, %do.end5
  br label %for.inc, !dbg !301

for.inc:                                          ; preds = %if.end14
  %22 = load i32, ptr %slot, align 4, !dbg !302
  %inc = add i32 %22, 1, !dbg !302
  store i32 %inc, ptr %slot, align 4, !dbg !302
  br label %for.cond, !dbg !303, !llvm.loop !304

for.end:                                          ; preds = %for.cond
  %23 = load i64, ptr %has_meta, align 8, !dbg !308
  %and = and i64 %23, 1, !dbg !310
  %tobool15 = icmp ne i64 %and, 0, !dbg !310
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !311

if.then16:                                        ; preds = %for.end
  br label %finished_node, !dbg !312

if.end17:                                         ; preds = %for.end
  store i32 0, ptr %slot, align 4, !dbg !313
  br label %continue_node, !dbg !314

continue_node:                                    ; preds = %if.end56, %if.end17
  call void @llvm.dbg.label(metadata !226), !dbg !315
  %24 = load ptr, ptr %cursor, align 8, !dbg !316
  %call18 = call ptr @assoc_array_ptr_to_node(ptr noundef %24) #15, !dbg !317
  store ptr %call18, ptr %node, align 8, !dbg !318
  br label %for.cond19, !dbg !319

for.cond19:                                       ; preds = %for.inc32, %continue_node
  %25 = load i32, ptr %slot, align 4, !dbg !320
  %cmp20 = icmp slt i32 %25, 16, !dbg !323
  br i1 %cmp20, label %for.body21, label %for.end34, !dbg !324

for.body21:                                       ; preds = %for.cond19
  br label %do.body22, !dbg !325

do.body22:                                        ; preds = %for.body21
  br label %do.cond23, !dbg !328

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !328

do.end24:                                         ; preds = %do.cond23
  %26 = load ptr, ptr %node, align 8, !dbg !325
  %slots26 = getelementptr inbounds %struct.assoc_array_node, ptr %26, i32 0, i32 2, !dbg !325
  %27 = load i32, ptr %slot, align 4, !dbg !325
  %idxprom27 = sext i32 %27 to i64, !dbg !325
  %arrayidx28 = getelementptr [16 x ptr], ptr %slots26, i64 0, i64 %idxprom27, !dbg !325
  %28 = load volatile ptr, ptr %arrayidx28, align 8, !dbg !325
  store ptr %28, ptr %tmp25, align 8, !dbg !328
  %29 = load ptr, ptr %tmp25, align 8, !dbg !325
  store ptr %29, ptr %ptr, align 8, !dbg !330
  %30 = load ptr, ptr %ptr, align 8, !dbg !331
  %call29 = call zeroext i1 @assoc_array_ptr_is_meta(ptr noundef %30) #15, !dbg !333
  br i1 %call29, label %if.then30, label %if.end31, !dbg !334

if.then30:                                        ; preds = %do.end24
  %31 = load ptr, ptr %ptr, align 8, !dbg !335
  store ptr %31, ptr %cursor, align 8, !dbg !337
  br label %begin_node, !dbg !338

if.end31:                                         ; preds = %do.end24
  br label %for.inc32, !dbg !339

for.inc32:                                        ; preds = %if.end31
  %32 = load i32, ptr %slot, align 4, !dbg !340
  %inc33 = add i32 %32, 1, !dbg !340
  store i32 %inc33, ptr %slot, align 4, !dbg !340
  br label %for.cond19, !dbg !341, !llvm.loop !342

for.end34:                                        ; preds = %for.cond19
  br label %finished_node, !dbg !343

finished_node:                                    ; preds = %for.end34, %if.then16
  call void @llvm.dbg.label(metadata !227), !dbg !344
  br label %do.body35, !dbg !345

do.body35:                                        ; preds = %finished_node
  br label %do.cond36, !dbg !347

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !347

do.end37:                                         ; preds = %do.cond36
  %33 = load ptr, ptr %node, align 8, !dbg !345
  %back_pointer = getelementptr inbounds %struct.assoc_array_node, ptr %33, i32 0, i32 0, !dbg !345
  %34 = load volatile ptr, ptr %back_pointer, align 8, !dbg !345
  store ptr %34, ptr %tmp38, align 8, !dbg !347
  %35 = load ptr, ptr %tmp38, align 8, !dbg !345
  store ptr %35, ptr %parent, align 8, !dbg !349
  %36 = load ptr, ptr %node, align 8, !dbg !350
  %parent_slot = getelementptr inbounds %struct.assoc_array_node, ptr %36, i32 0, i32 1, !dbg !351
  %37 = load i8, ptr %parent_slot, align 8, !dbg !351
  %conv = zext i8 %37 to i32, !dbg !350
  store i32 %conv, ptr %slot, align 4, !dbg !352
  %38 = load ptr, ptr %parent, align 8, !dbg !353
  %39 = load ptr, ptr %stop.addr, align 8, !dbg !355
  %cmp39 = icmp eq ptr %38, %39, !dbg !356
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !357

if.then41:                                        ; preds = %do.end37
  store i32 0, ptr %retval, align 4, !dbg !358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !358

if.end42:                                         ; preds = %do.end37
  %40 = load ptr, ptr %parent, align 8, !dbg !359
  %call43 = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %40) #15, !dbg !361
  br i1 %call43, label %if.then44, label %if.end56, !dbg !362

if.then44:                                        ; preds = %if.end42
  %41 = load ptr, ptr %parent, align 8, !dbg !363
  %call45 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %41) #15, !dbg !365
  store ptr %call45, ptr %shortcut, align 8, !dbg !366
  %42 = load ptr, ptr %parent, align 8, !dbg !367
  store ptr %42, ptr %cursor, align 8, !dbg !368
  br label %do.body46, !dbg !369

do.body46:                                        ; preds = %if.then44
  br label %do.cond47, !dbg !371

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !371

do.end48:                                         ; preds = %do.cond47
  %43 = load ptr, ptr %shortcut, align 8, !dbg !369
  %back_pointer50 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %43, i32 0, i32 0, !dbg !369
  %44 = load volatile ptr, ptr %back_pointer50, align 8, !dbg !369
  store ptr %44, ptr %tmp49, align 8, !dbg !371
  %45 = load ptr, ptr %tmp49, align 8, !dbg !369
  store ptr %45, ptr %parent, align 8, !dbg !373
  %46 = load ptr, ptr %shortcut, align 8, !dbg !374
  %parent_slot51 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %46, i32 0, i32 1, !dbg !375
  %47 = load i32, ptr %parent_slot51, align 8, !dbg !375
  store i32 %47, ptr %slot, align 4, !dbg !376
  %48 = load ptr, ptr %parent, align 8, !dbg !377
  %49 = load ptr, ptr %stop.addr, align 8, !dbg !379
  %cmp52 = icmp eq ptr %48, %49, !dbg !380
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !381

if.then54:                                        ; preds = %do.end48
  store i32 0, ptr %retval, align 4, !dbg !382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !382

if.end55:                                         ; preds = %do.end48
  br label %if.end56, !dbg !383

if.end56:                                         ; preds = %if.end55, %if.end42
  %50 = load ptr, ptr %parent, align 8, !dbg !384
  store ptr %50, ptr %cursor, align 8, !dbg !385
  %51 = load i32, ptr %slot, align 4, !dbg !386
  %inc57 = add i32 %51, 1, !dbg !386
  store i32 %inc57, ptr %slot, align 4, !dbg !386
  br label %continue_node, !dbg !387

cleanup:                                          ; preds = %if.then54, %if.then41, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !388
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #14, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %has_meta) #14, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #14, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %cursor) #14, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %shortcut) #14, !dbg !388
  %52 = load i32, ptr %retval, align 4, !dbg !388
  ret i32 %52, !dbg !388
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @assoc_array_find(ptr noundef %array, ptr noundef %ops, ptr noundef %index_key) #0 align 16 !dbg !389 {
entry:
  %retval = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %index_key.addr = alloca ptr, align 8
  %result = alloca %struct.assoc_array_walk_result, align 8
  %node = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %leaf = alloca ptr, align 8
  %slot = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !393, metadata !DIExpression()), !dbg !417
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !394, metadata !DIExpression()), !dbg !418
  store ptr %index_key, ptr %index_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index_key.addr, metadata !395, metadata !DIExpression()), !dbg !419
  call void @llvm.lifetime.start.p0(i64 48, ptr %result) #14, !dbg !420
  call void @llvm.dbg.declare(metadata ptr %result, metadata !396, metadata !DIExpression()), !dbg !421
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %node, metadata !413, metadata !DIExpression()), !dbg !423
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !414, metadata !DIExpression()), !dbg !425
  call void @llvm.lifetime.start.p0(i64 8, ptr %leaf) #14, !dbg !426
  call void @llvm.dbg.declare(metadata ptr %leaf, metadata !415, metadata !DIExpression()), !dbg !427
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #14, !dbg !428
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !416, metadata !DIExpression()), !dbg !429
  %0 = load ptr, ptr %array.addr, align 8, !dbg !430
  %1 = load ptr, ptr %ops.addr, align 8, !dbg !432
  %2 = load ptr, ptr %index_key.addr, align 8, !dbg !433
  %call = call i32 @assoc_array_walk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %result) #15, !dbg !434
  %cmp = icmp ne i32 %call, 1, !dbg !435
  br i1 %cmp, label %if.then, label %if.end, !dbg !436

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !437

if.end:                                           ; preds = %entry
  %terminal_node = getelementptr inbounds %struct.assoc_array_walk_result, ptr %result, i32 0, i32 0, !dbg !438
  %node1 = getelementptr inbounds %struct.anon, ptr %terminal_node, i32 0, i32 0, !dbg !439
  %3 = load ptr, ptr %node1, align 8, !dbg !439
  store ptr %3, ptr %node, align 8, !dbg !440
  store i32 0, ptr %slot, align 4, !dbg !441
  br label %for.cond, !dbg !443

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %slot, align 4, !dbg !444
  %cmp2 = icmp slt i32 %4, 16, !dbg !446
  br i1 %cmp2, label %for.body, label %for.end, !dbg !447

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !448

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !451

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !451

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %node, align 8, !dbg !448
  %slots = getelementptr inbounds %struct.assoc_array_node, ptr %5, i32 0, i32 2, !dbg !448
  %6 = load i32, ptr %slot, align 4, !dbg !448
  %idxprom = sext i32 %6 to i64, !dbg !448
  %arrayidx = getelementptr [16 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !448
  %7 = load volatile ptr, ptr %arrayidx, align 8, !dbg !448
  store ptr %7, ptr %tmp, align 8, !dbg !451
  %8 = load ptr, ptr %tmp, align 8, !dbg !448
  store ptr %8, ptr %ptr, align 8, !dbg !453
  %9 = load ptr, ptr %ptr, align 8, !dbg !454
  %tobool = icmp ne ptr %9, null, !dbg !454
  br i1 %tobool, label %land.lhs.true, label %if.end9, !dbg !456

land.lhs.true:                                    ; preds = %do.end
  %10 = load ptr, ptr %ptr, align 8, !dbg !457
  %call3 = call zeroext i1 @assoc_array_ptr_is_leaf(ptr noundef %10) #15, !dbg !458
  br i1 %call3, label %if.then4, label %if.end9, !dbg !459

if.then4:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %ptr, align 8, !dbg !460
  %call5 = call ptr @assoc_array_ptr_to_leaf(ptr noundef %11) #15, !dbg !462
  store ptr %call5, ptr %leaf, align 8, !dbg !463
  %12 = load ptr, ptr %ops.addr, align 8, !dbg !464
  %compare_object = getelementptr inbounds %struct.assoc_array_ops, ptr %12, i32 0, i32 2, !dbg !466
  %13 = load ptr, ptr %compare_object, align 8, !dbg !466
  %14 = load ptr, ptr %leaf, align 8, !dbg !467
  %15 = load ptr, ptr %index_key.addr, align 8, !dbg !468
  %call6 = call zeroext i1 %13(ptr noundef %14, ptr noundef %15) #15, !dbg !464
  br i1 %call6, label %if.then7, label %if.end8, !dbg !469

if.then7:                                         ; preds = %if.then4
  %16 = load ptr, ptr %leaf, align 8, !dbg !470
  store ptr %16, ptr %retval, align 8, !dbg !471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !471

if.end8:                                          ; preds = %if.then4
  br label %if.end9, !dbg !472

if.end9:                                          ; preds = %if.end8, %land.lhs.true, %do.end
  br label %for.inc, !dbg !473

for.inc:                                          ; preds = %if.end9
  %17 = load i32, ptr %slot, align 4, !dbg !474
  %inc = add i32 %17, 1, !dbg !474
  store i32 %inc, ptr %slot, align 4, !dbg !474
  br label %for.cond, !dbg !475, !llvm.loop !476

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !478

cleanup:                                          ; preds = %for.end, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #14, !dbg !479
  call void @llvm.lifetime.end.p0(i64 8, ptr %leaf) #14, !dbg !479
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !479
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !479
  call void @llvm.lifetime.end.p0(i64 48, ptr %result) #14, !dbg !479
  %18 = load ptr, ptr %retval, align 8, !dbg !479
  ret ptr %18, !dbg !479
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @assoc_array_walk(ptr noundef %array, ptr noundef %ops, ptr noundef %index_key, ptr noundef %result) #0 align 16 !dbg !480 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %index_key.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %shortcut = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cursor = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %sc_segments = alloca i64, align 8
  %dissimilarity = alloca i64, align 8
  %segments = alloca i64, align 8
  %level = alloca i32, align 4
  %sc_level = alloca i32, align 4
  %next_sc_level = alloca i32, align 4
  %slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp11 = alloca ptr, align 8
  %tmp12 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %shift = alloca i32, align 4
  %tmp97 = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !485, metadata !DIExpression()), !dbg !507
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !486, metadata !DIExpression()), !dbg !508
  store ptr %index_key, ptr %index_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index_key.addr, metadata !487, metadata !DIExpression()), !dbg !509
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !488, metadata !DIExpression()), !dbg !510
  call void @llvm.lifetime.start.p0(i64 8, ptr %shortcut) #14, !dbg !511
  call void @llvm.dbg.declare(metadata ptr %shortcut, metadata !489, metadata !DIExpression()), !dbg !512
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !513
  call void @llvm.dbg.declare(metadata ptr %node, metadata !490, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 8, ptr %cursor) #14, !dbg !515
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !491, metadata !DIExpression()), !dbg !516
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !515
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !492, metadata !DIExpression()), !dbg !517
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc_segments) #14, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %sc_segments, metadata !493, metadata !DIExpression()), !dbg !519
  call void @llvm.lifetime.start.p0(i64 8, ptr %dissimilarity) #14, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %dissimilarity, metadata !494, metadata !DIExpression()), !dbg !520
  call void @llvm.lifetime.start.p0(i64 8, ptr %segments) #14, !dbg !521
  call void @llvm.dbg.declare(metadata ptr %segments, metadata !495, metadata !DIExpression()), !dbg !522
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #14, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %level, metadata !496, metadata !DIExpression()), !dbg !524
  call void @llvm.lifetime.start.p0(i64 4, ptr %sc_level) #14, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %sc_level, metadata !497, metadata !DIExpression()), !dbg !525
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_sc_level) #14, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %next_sc_level, metadata !498, metadata !DIExpression()), !dbg !526
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #14, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !499, metadata !DIExpression()), !dbg !528
  store i32 0, ptr %tmp, align 4, !dbg !529
  %0 = load i32, ptr %tmp, align 4, !dbg !532
  br label %do.body, !dbg !533

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !535

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !535

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %array.addr, align 8, !dbg !533
  %root = getelementptr inbounds %struct.assoc_array, ptr %1, i32 0, i32 0, !dbg !533
  %2 = load volatile ptr, ptr %root, align 8, !dbg !533
  store ptr %2, ptr %tmp1, align 8, !dbg !535
  %3 = load ptr, ptr %tmp1, align 8, !dbg !533
  store ptr %3, ptr %cursor, align 8, !dbg !537
  %4 = load ptr, ptr %cursor, align 8, !dbg !538
  %tobool = icmp ne ptr %4, null, !dbg !538
  br i1 %tobool, label %if.end, label %if.then, !dbg !540

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !541

if.end:                                           ; preds = %do.end
  store i32 0, ptr %level, align 4, !dbg !542
  br label %jumped, !dbg !543

jumped:                                           ; preds = %if.then102, %if.end27, %if.end
  call void @llvm.dbg.label(metadata !500), !dbg !544
  %5 = load ptr, ptr %ops.addr, align 8, !dbg !545
  %get_key_chunk = getelementptr inbounds %struct.assoc_array_ops, ptr %5, i32 0, i32 0, !dbg !546
  %6 = load ptr, ptr %get_key_chunk, align 8, !dbg !546
  %7 = load ptr, ptr %index_key.addr, align 8, !dbg !547
  %8 = load i32, ptr %level, align 4, !dbg !548
  %call = call i64 %6(ptr noundef %7, i32 noundef %8) #15, !dbg !545
  store i64 %call, ptr %segments, align 8, !dbg !549
  store i32 0, ptr %tmp2, align 4, !dbg !550
  %9 = load i32, ptr %tmp2, align 4, !dbg !553
  %10 = load ptr, ptr %cursor, align 8, !dbg !554
  %call3 = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %10) #15, !dbg !556
  br i1 %call3, label %if.then4, label %if.end5, !dbg !557

if.then4:                                         ; preds = %jumped
  br label %follow_shortcut, !dbg !558

if.end5:                                          ; preds = %jumped
  br label %consider_node, !dbg !559

consider_node:                                    ; preds = %if.else103, %if.then26, %if.end5
  call void @llvm.dbg.label(metadata !501), !dbg !560
  %11 = load ptr, ptr %cursor, align 8, !dbg !561
  %call6 = call ptr @assoc_array_ptr_to_node(ptr noundef %11) #15, !dbg !562
  store ptr %call6, ptr %node, align 8, !dbg !563
  %12 = load i64, ptr %segments, align 8, !dbg !564
  %13 = load i32, ptr %level, align 4, !dbg !565
  %and = and i32 %13, 63, !dbg !566
  %sh_prom = zext i32 %and to i64, !dbg !567
  %shr = lshr i64 %12, %sh_prom, !dbg !567
  %conv = trunc i64 %shr to i32, !dbg !564
  store i32 %conv, ptr %slot, align 4, !dbg !568
  %14 = load i32, ptr %slot, align 4, !dbg !569
  %and7 = and i32 %14, 15, !dbg !569
  store i32 %and7, ptr %slot, align 4, !dbg !569
  br label %do.body8, !dbg !570

do.body8:                                         ; preds = %consider_node
  br label %do.cond9, !dbg !572

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !572

do.end10:                                         ; preds = %do.cond9
  %15 = load ptr, ptr %node, align 8, !dbg !570
  %slots = getelementptr inbounds %struct.assoc_array_node, ptr %15, i32 0, i32 2, !dbg !570
  %16 = load i32, ptr %slot, align 4, !dbg !570
  %idxprom = sext i32 %16 to i64, !dbg !570
  %arrayidx = getelementptr [16 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !570
  %17 = load volatile ptr, ptr %arrayidx, align 8, !dbg !570
  store ptr %17, ptr %tmp11, align 8, !dbg !572
  %18 = load ptr, ptr %tmp11, align 8, !dbg !570
  store ptr %18, ptr %ptr, align 8, !dbg !574
  store i32 0, ptr %tmp12, align 4, !dbg !575
  %19 = load i32, ptr %tmp12, align 4, !dbg !578
  %20 = load ptr, ptr %ptr, align 8, !dbg !579
  %call13 = call zeroext i1 @assoc_array_ptr_is_meta(ptr noundef %20) #15, !dbg !581
  br i1 %call13, label %if.end21, label %if.then14, !dbg !582

if.then14:                                        ; preds = %do.end10
  %21 = load ptr, ptr %node, align 8, !dbg !583
  %22 = load ptr, ptr %result.addr, align 8, !dbg !585
  %terminal_node = getelementptr inbounds %struct.assoc_array_walk_result, ptr %22, i32 0, i32 0, !dbg !586
  %node15 = getelementptr inbounds %struct.anon, ptr %terminal_node, i32 0, i32 0, !dbg !587
  store ptr %21, ptr %node15, align 8, !dbg !588
  %23 = load i32, ptr %level, align 4, !dbg !589
  %24 = load ptr, ptr %result.addr, align 8, !dbg !590
  %terminal_node16 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %24, i32 0, i32 0, !dbg !591
  %level17 = getelementptr inbounds %struct.anon, ptr %terminal_node16, i32 0, i32 1, !dbg !592
  store i32 %23, ptr %level17, align 8, !dbg !593
  %25 = load i32, ptr %slot, align 4, !dbg !594
  %26 = load ptr, ptr %result.addr, align 8, !dbg !595
  %terminal_node18 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %26, i32 0, i32 0, !dbg !596
  %slot19 = getelementptr inbounds %struct.anon, ptr %terminal_node18, i32 0, i32 2, !dbg !597
  store i32 %25, ptr %slot19, align 4, !dbg !598
  store i32 0, ptr %tmp20, align 4, !dbg !599
  %27 = load i32, ptr %tmp20, align 4, !dbg !602
  store i32 1, ptr %retval, align 4, !dbg !603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !603

if.end21:                                         ; preds = %do.end10
  %28 = load ptr, ptr %ptr, align 8, !dbg !604
  %call22 = call zeroext i1 @assoc_array_ptr_is_node(ptr noundef %28) #15, !dbg !606
  br i1 %call22, label %if.then23, label %if.end28, !dbg !607

if.then23:                                        ; preds = %if.end21
  %29 = load ptr, ptr %ptr, align 8, !dbg !608
  store ptr %29, ptr %cursor, align 8, !dbg !610
  %30 = load i32, ptr %level, align 4, !dbg !611
  %add = add i32 %30, 4, !dbg !611
  store i32 %add, ptr %level, align 4, !dbg !611
  %31 = load i32, ptr %level, align 4, !dbg !612
  %and24 = and i32 %31, 63, !dbg !614
  %cmp = icmp ne i32 %and24, 0, !dbg !615
  br i1 %cmp, label %if.then26, label %if.end27, !dbg !616

if.then26:                                        ; preds = %if.then23
  br label %consider_node, !dbg !617

if.end27:                                         ; preds = %if.then23
  br label %jumped, !dbg !618

if.end28:                                         ; preds = %if.end21
  %32 = load ptr, ptr %ptr, align 8, !dbg !619
  store ptr %32, ptr %cursor, align 8, !dbg !620
  br label %follow_shortcut, !dbg !621

follow_shortcut:                                  ; preds = %if.end28, %if.then4
  call void @llvm.dbg.label(metadata !502), !dbg !622
  %33 = load ptr, ptr %cursor, align 8, !dbg !623
  %call29 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %33) #15, !dbg !624
  store ptr %call29, ptr %shortcut, align 8, !dbg !625
  store i32 0, ptr %tmp30, align 4, !dbg !626
  %34 = load i32, ptr %tmp30, align 4, !dbg !629
  %35 = load i32, ptr %level, align 4, !dbg !630
  %add31 = add i32 %35, 4, !dbg !631
  store i32 %add31, ptr %sc_level, align 4, !dbg !632
  br label %do.body32, !dbg !633

do.body32:                                        ; preds = %follow_shortcut
  %36 = load i32, ptr %sc_level, align 4, !dbg !634
  %37 = load ptr, ptr %shortcut, align 8, !dbg !634
  %skip_to_level = getelementptr inbounds %struct.assoc_array_shortcut, ptr %37, i32 0, i32 2, !dbg !634
  %38 = load i32, ptr %skip_to_level, align 4, !dbg !634
  %cmp33 = icmp sgt i32 %36, %38, !dbg !634
  %lnot = xor i1 %cmp33, true, !dbg !634
  %lnot35 = xor i1 %lnot, true, !dbg !634
  %lnot.ext = zext i1 %lnot35 to i32, !dbg !634
  %conv36 = sext i32 %lnot.ext to i64, !dbg !634
  %expval = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !634
  %tobool37 = icmp ne i64 %expval, 0, !dbg !634
  br i1 %tobool37, label %if.then38, label %if.end48, !dbg !637

if.then38:                                        ; preds = %do.body32
  br label %do.body39, !dbg !634

do.body39:                                        ; preds = %if.then38
  br label %do.body40, !dbg !638

do.body40:                                        ; preds = %do.body39
  br label %do.cond41, !dbg !640

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !640

do.end42:                                         ; preds = %do.cond41
  br label %do.body43, !dbg !638

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 245, i32 0, i64 12) #14, !dbg !642, !srcloc !644
  br label %do.cond44, !dbg !642

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !642

do.end45:                                         ; preds = %do.cond44
  unreachable, !dbg !638

do.cond46:                                        ; No predecessors!
  br label %do.end47, !dbg !638

do.end47:                                         ; preds = %do.cond46
  br label %if.end48, !dbg !638

if.end48:                                         ; preds = %do.end47, %do.body32
  br label %do.cond49, !dbg !637

do.cond49:                                        ; preds = %if.end48
  br label %do.end50, !dbg !637

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !645

do.body51:                                        ; preds = %do.cond89, %do.end50
  %39 = load i32, ptr %sc_level, align 4, !dbg !646
  %and52 = and i32 %39, 63, !dbg !648
  %cmp53 = icmp eq i32 %and52, 0, !dbg !649
  br i1 %cmp53, label %if.then55, label %if.end58, !dbg !650

if.then55:                                        ; preds = %do.body51
  %40 = load ptr, ptr %ops.addr, align 8, !dbg !651
  %get_key_chunk56 = getelementptr inbounds %struct.assoc_array_ops, ptr %40, i32 0, i32 0, !dbg !652
  %41 = load ptr, ptr %get_key_chunk56, align 8, !dbg !652
  %42 = load ptr, ptr %index_key.addr, align 8, !dbg !653
  %43 = load i32, ptr %sc_level, align 4, !dbg !654
  %call57 = call i64 %41(ptr noundef %42, i32 noundef %43) #15, !dbg !651
  store i64 %call57, ptr %segments, align 8, !dbg !655
  br label %if.end58, !dbg !656

if.end58:                                         ; preds = %if.then55, %do.body51
  %44 = load ptr, ptr %shortcut, align 8, !dbg !657
  %index_key59 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %44, i32 0, i32 4, !dbg !658
  %45 = load i32, ptr %sc_level, align 4, !dbg !659
  %shr60 = ashr i32 %45, 6, !dbg !660
  %idxprom61 = sext i32 %shr60 to i64, !dbg !657
  %arrayidx62 = getelementptr [0 x i64], ptr %index_key59, i64 0, i64 %idxprom61, !dbg !657
  %46 = load i64, ptr %arrayidx62, align 8, !dbg !657
  store i64 %46, ptr %sc_segments, align 8, !dbg !661
  %47 = load i64, ptr %segments, align 8, !dbg !662
  %48 = load i64, ptr %sc_segments, align 8, !dbg !663
  %xor = xor i64 %47, %48, !dbg !664
  store i64 %xor, ptr %dissimilarity, align 8, !dbg !665
  %49 = load i32, ptr %sc_level, align 4, !dbg !666
  %sub = sub i32 %49, 1, !dbg !666
  %or = or i32 %sub, 63, !dbg !666
  %add63 = add i32 %or, 1, !dbg !666
  %50 = load ptr, ptr %shortcut, align 8, !dbg !667
  %skip_to_level64 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %50, i32 0, i32 2, !dbg !668
  %51 = load i32, ptr %skip_to_level64, align 4, !dbg !668
  %cmp65 = icmp sgt i32 %add63, %51, !dbg !669
  br i1 %cmp65, label %if.then67, label %if.else, !dbg !670

if.then67:                                        ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #14, !dbg !671
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !503, metadata !DIExpression()), !dbg !672
  %52 = load ptr, ptr %shortcut, align 8, !dbg !673
  %skip_to_level68 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %52, i32 0, i32 2, !dbg !674
  %53 = load i32, ptr %skip_to_level68, align 4, !dbg !674
  %and69 = and i32 %53, 63, !dbg !675
  store i32 %and69, ptr %shift, align 4, !dbg !672
  %54 = load i32, ptr %shift, align 4, !dbg !676
  %sh_prom70 = zext i32 %54 to i64, !dbg !677
  %shl = shl i64 -1, %sh_prom70, !dbg !677
  %not = xor i64 %shl, -1, !dbg !678
  %55 = load i64, ptr %dissimilarity, align 8, !dbg !679
  %and71 = and i64 %55, %not, !dbg !679
  store i64 %and71, ptr %dissimilarity, align 8, !dbg !679
  %56 = load ptr, ptr %shortcut, align 8, !dbg !680
  %skip_to_level72 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %56, i32 0, i32 2, !dbg !681
  %57 = load i32, ptr %skip_to_level72, align 4, !dbg !681
  store i32 %57, ptr %next_sc_level, align 4, !dbg !682
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #14, !dbg !683
  br label %if.end75, !dbg !684

if.else:                                          ; preds = %if.end58
  %58 = load i32, ptr %sc_level, align 4, !dbg !685
  %add73 = add i32 %58, 64, !dbg !687
  store i32 %add73, ptr %next_sc_level, align 4, !dbg !688
  %59 = load i32, ptr %next_sc_level, align 4, !dbg !689
  %and74 = and i32 %59, -64, !dbg !689
  store i32 %and74, ptr %next_sc_level, align 4, !dbg !690
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then67
  %60 = load i64, ptr %dissimilarity, align 8, !dbg !691
  %cmp76 = icmp ne i64 %60, 0, !dbg !693
  br i1 %cmp76, label %if.then78, label %if.end88, !dbg !694

if.then78:                                        ; preds = %if.end75
  %61 = load ptr, ptr %shortcut, align 8, !dbg !695
  %62 = load ptr, ptr %result.addr, align 8, !dbg !697
  %wrong_shortcut = getelementptr inbounds %struct.assoc_array_walk_result, ptr %62, i32 0, i32 1, !dbg !698
  %shortcut79 = getelementptr inbounds %struct.anon.0, ptr %wrong_shortcut, i32 0, i32 0, !dbg !699
  store ptr %61, ptr %shortcut79, align 8, !dbg !700
  %63 = load i32, ptr %level, align 4, !dbg !701
  %64 = load ptr, ptr %result.addr, align 8, !dbg !702
  %wrong_shortcut80 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %64, i32 0, i32 1, !dbg !703
  %level81 = getelementptr inbounds %struct.anon.0, ptr %wrong_shortcut80, i32 0, i32 1, !dbg !704
  store i32 %63, ptr %level81, align 8, !dbg !705
  %65 = load i32, ptr %sc_level, align 4, !dbg !706
  %66 = load ptr, ptr %result.addr, align 8, !dbg !707
  %wrong_shortcut82 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %66, i32 0, i32 1, !dbg !708
  %sc_level83 = getelementptr inbounds %struct.anon.0, ptr %wrong_shortcut82, i32 0, i32 2, !dbg !709
  store i32 %65, ptr %sc_level83, align 4, !dbg !710
  %67 = load i64, ptr %sc_segments, align 8, !dbg !711
  %68 = load ptr, ptr %result.addr, align 8, !dbg !712
  %wrong_shortcut84 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %68, i32 0, i32 1, !dbg !713
  %sc_segments85 = getelementptr inbounds %struct.anon.0, ptr %wrong_shortcut84, i32 0, i32 3, !dbg !714
  store i64 %67, ptr %sc_segments85, align 8, !dbg !715
  %69 = load i64, ptr %dissimilarity, align 8, !dbg !716
  %70 = load ptr, ptr %result.addr, align 8, !dbg !717
  %wrong_shortcut86 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %70, i32 0, i32 1, !dbg !718
  %dissimilarity87 = getelementptr inbounds %struct.anon.0, ptr %wrong_shortcut86, i32 0, i32 4, !dbg !719
  store i64 %69, ptr %dissimilarity87, align 8, !dbg !720
  store i32 2, ptr %retval, align 4, !dbg !721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !721

if.end88:                                         ; preds = %if.end75
  %71 = load i32, ptr %next_sc_level, align 4, !dbg !722
  store i32 %71, ptr %sc_level, align 4, !dbg !723
  br label %do.cond89, !dbg !724

do.cond89:                                        ; preds = %if.end88
  %72 = load i32, ptr %sc_level, align 4, !dbg !725
  %73 = load ptr, ptr %shortcut, align 8, !dbg !726
  %skip_to_level90 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %73, i32 0, i32 2, !dbg !727
  %74 = load i32, ptr %skip_to_level90, align 4, !dbg !727
  %cmp91 = icmp slt i32 %72, %74, !dbg !728
  br i1 %cmp91, label %do.body51, label %do.end93, !dbg !724, !llvm.loop !729

do.end93:                                         ; preds = %do.cond89
  br label %do.body94, !dbg !731

do.body94:                                        ; preds = %do.end93
  br label %do.cond95, !dbg !733

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !733

do.end96:                                         ; preds = %do.cond95
  %75 = load ptr, ptr %shortcut, align 8, !dbg !731
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %75, i32 0, i32 3, !dbg !731
  %76 = load volatile ptr, ptr %next_node, align 8, !dbg !731
  store ptr %76, ptr %tmp97, align 8, !dbg !733
  %77 = load ptr, ptr %tmp97, align 8, !dbg !731
  store ptr %77, ptr %cursor, align 8, !dbg !735
  %78 = load i32, ptr %level, align 4, !dbg !736
  %79 = load i32, ptr %sc_level, align 4, !dbg !738
  %xor98 = xor i32 %78, %79, !dbg !739
  %and99 = and i32 %xor98, -64, !dbg !740
  %cmp100 = icmp ne i32 %and99, 0, !dbg !741
  br i1 %cmp100, label %if.then102, label %if.else103, !dbg !742

if.then102:                                       ; preds = %do.end96
  %80 = load i32, ptr %sc_level, align 4, !dbg !743
  store i32 %80, ptr %level, align 4, !dbg !745
  br label %jumped, !dbg !746

if.else103:                                       ; preds = %do.end96
  %81 = load i32, ptr %sc_level, align 4, !dbg !747
  store i32 %81, ptr %level, align 4, !dbg !749
  br label %consider_node, !dbg !750

cleanup:                                          ; preds = %if.then78, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #14, !dbg !751
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_sc_level) #14, !dbg !751
  call void @llvm.lifetime.end.p0(i64 4, ptr %sc_level) #14, !dbg !751
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #14, !dbg !751
  call void @llvm.lifetime.end.p0(i64 8, ptr %segments) #14, !dbg !751
  call void @llvm.lifetime.end.p0(i64 8, ptr %dissimilarity) #14, !dbg !751
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc_segments) #14, !dbg !751
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !751
  call void @llvm.lifetime.end.p0(i64 8, ptr %cursor) #14, !dbg !751
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !751
  call void @llvm.lifetime.end.p0(i64 8, ptr %shortcut) #14, !dbg !751
  %82 = load i32, ptr %retval, align 4, !dbg !751
  ret i32 %82, !dbg !751
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @assoc_array_ptr_is_leaf(ptr noundef %x) #3 align 16 !dbg !752 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !756, metadata !DIExpression()), !dbg !757
  %0 = load ptr, ptr %x.addr, align 8, !dbg !758
  %call = call zeroext i1 @assoc_array_ptr_is_meta(ptr noundef %0) #15, !dbg !759
  %lnot = xor i1 %call, true, !dbg !760
  ret i1 %lnot, !dbg !761
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @assoc_array_ptr_to_leaf(ptr noundef %x) #3 align 16 !dbg !762 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !766, metadata !DIExpression()), !dbg !767
  %0 = load ptr, ptr %x.addr, align 8, !dbg !768
  %1 = ptrtoint ptr %0 to i64, !dbg !769
  %and = and i64 %1, -2, !dbg !770
  %2 = inttoptr i64 %and to ptr, !dbg !771
  ret ptr %2, !dbg !772
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @assoc_array_destroy(ptr noundef %array, ptr noundef %ops) #0 align 16 !dbg !773 {
entry:
  %array.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !777, metadata !DIExpression()), !dbg !779
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !778, metadata !DIExpression()), !dbg !780
  %0 = load ptr, ptr %array.addr, align 8, !dbg !781
  %root = getelementptr inbounds %struct.assoc_array, ptr %0, i32 0, i32 0, !dbg !782
  %1 = load ptr, ptr %root, align 8, !dbg !782
  %2 = load ptr, ptr %ops.addr, align 8, !dbg !783
  call void @assoc_array_destroy_subtree(ptr noundef %1, ptr noundef %2) #15, !dbg !784
  %3 = load ptr, ptr %array.addr, align 8, !dbg !785
  %root1 = getelementptr inbounds %struct.assoc_array, ptr %3, i32 0, i32 0, !dbg !786
  store ptr null, ptr %root1, align 8, !dbg !787
  ret void, !dbg !788
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @assoc_array_destroy_subtree(ptr noundef %root, ptr noundef %ops) #0 align 16 !dbg !789 {
entry:
  %root.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %shortcut = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cursor = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  %tmp147 = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %tmp158 = alloca i32, align 4
  %tmp164 = alloca i32, align 4
  %tmp197 = alloca i32, align 4
  %tmp226 = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !793, metadata !DIExpression()), !dbg !806
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !794, metadata !DIExpression()), !dbg !807
  call void @llvm.lifetime.start.p0(i64 8, ptr %shortcut) #14, !dbg !808
  call void @llvm.dbg.declare(metadata ptr %shortcut, metadata !795, metadata !DIExpression()), !dbg !809
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !810
  call void @llvm.dbg.declare(metadata ptr %node, metadata !796, metadata !DIExpression()), !dbg !811
  call void @llvm.lifetime.start.p0(i64 8, ptr %cursor) #14, !dbg !812
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !797, metadata !DIExpression()), !dbg !813
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #14, !dbg !812
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !798, metadata !DIExpression()), !dbg !814
  store ptr null, ptr %parent, align 8, !dbg !814
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #14, !dbg !815
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !799, metadata !DIExpression()), !dbg !816
  store i32 -1, ptr %slot, align 4, !dbg !816
  store i32 0, ptr %tmp, align 4, !dbg !817
  %0 = load i32, ptr %tmp, align 4, !dbg !820
  %1 = load ptr, ptr %root.addr, align 8, !dbg !821
  store ptr %1, ptr %cursor, align 8, !dbg !822
  %2 = load ptr, ptr %cursor, align 8, !dbg !823
  %tobool = icmp ne ptr %2, null, !dbg !823
  br i1 %tobool, label %if.end, label %if.then, !dbg !825

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp1, align 4, !dbg !826
  %3 = load i32, ptr %tmp1, align 4, !dbg !830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup229, !dbg !831

if.end:                                           ; preds = %entry
  br label %move_to_meta, !dbg !823

move_to_meta:                                     ; preds = %cleanup, %if.end
  call void @llvm.dbg.label(metadata !800), !dbg !832
  %4 = load ptr, ptr %cursor, align 8, !dbg !833
  %call = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %4) #15, !dbg !835
  br i1 %call, label %if.then2, label %if.end91, !dbg !836

if.then2:                                         ; preds = %move_to_meta
  store i32 0, ptr %tmp3, align 4, !dbg !837
  %5 = load i32, ptr %tmp3, align 4, !dbg !841
  br label %do.body, !dbg !842

do.body:                                          ; preds = %if.then2
  %6 = load ptr, ptr %cursor, align 8, !dbg !843
  %call4 = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %6) #15, !dbg !843
  %lnot = xor i1 %call4, true, !dbg !843
  %lnot5 = xor i1 %lnot, true, !dbg !843
  %lnot6 = xor i1 %lnot5, true, !dbg !843
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !843
  %conv = sext i32 %lnot.ext to i64, !dbg !843
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !843
  %tobool7 = icmp ne i64 %expval, 0, !dbg !843
  br i1 %tobool7, label %if.then8, label %if.end16, !dbg !846

if.then8:                                         ; preds = %do.body
  br label %do.body9, !dbg !843

do.body9:                                         ; preds = %if.then8
  br label %do.body10, !dbg !847

do.body10:                                        ; preds = %do.body9
  br label %do.cond, !dbg !849

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !849

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !847

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 363, i32 0, i64 12) #14, !dbg !851, !srcloc !853
  br label %do.cond12, !dbg !851

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !851

do.end13:                                         ; preds = %do.cond12
  unreachable, !dbg !847

do.cond14:                                        ; No predecessors!
  br label %do.end15, !dbg !847

do.end15:                                         ; preds = %do.cond14
  br label %if.end16, !dbg !847

if.end16:                                         ; preds = %do.end15, %do.body
  br label %do.cond17, !dbg !846

do.cond17:                                        ; preds = %if.end16
  br label %do.end18, !dbg !846

do.end18:                                         ; preds = %do.cond17
  %7 = load ptr, ptr %cursor, align 8, !dbg !854
  %call19 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %7) #15, !dbg !855
  store ptr %call19, ptr %shortcut, align 8, !dbg !856
  br label %do.body20, !dbg !857

do.body20:                                        ; preds = %do.end18
  %8 = load ptr, ptr %shortcut, align 8, !dbg !858
  %back_pointer = getelementptr inbounds %struct.assoc_array_shortcut, ptr %8, i32 0, i32 0, !dbg !858
  %9 = load ptr, ptr %back_pointer, align 8, !dbg !858
  %10 = load ptr, ptr %parent, align 8, !dbg !858
  %cmp = icmp ne ptr %9, %10, !dbg !858
  %lnot22 = xor i1 %cmp, true, !dbg !858
  %lnot24 = xor i1 %lnot22, true, !dbg !858
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !858
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !858
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !858
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !858
  br i1 %tobool28, label %if.then29, label %if.end39, !dbg !861

if.then29:                                        ; preds = %do.body20
  br label %do.body30, !dbg !858

do.body30:                                        ; preds = %if.then29
  br label %do.body31, !dbg !862

do.body31:                                        ; preds = %do.body30
  br label %do.cond32, !dbg !864

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !864

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !862

do.body34:                                        ; preds = %do.end33
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 365, i32 0, i64 12) #14, !dbg !866, !srcloc !868
  br label %do.cond35, !dbg !866

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !866

do.end36:                                         ; preds = %do.cond35
  unreachable, !dbg !862

do.cond37:                                        ; No predecessors!
  br label %do.end38, !dbg !862

do.end38:                                         ; preds = %do.cond37
  br label %if.end39, !dbg !862

if.end39:                                         ; preds = %do.end38, %do.body20
  br label %do.cond40, !dbg !861

do.cond40:                                        ; preds = %if.end39
  br label %do.end41, !dbg !861

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !869

do.body42:                                        ; preds = %do.end41
  %11 = load i32, ptr %slot, align 4, !dbg !870
  %cmp43 = icmp ne i32 %11, -1, !dbg !870
  br i1 %cmp43, label %land.rhs, label %land.end, !dbg !870

land.rhs:                                         ; preds = %do.body42
  %12 = load ptr, ptr %shortcut, align 8, !dbg !870
  %parent_slot = getelementptr inbounds %struct.assoc_array_shortcut, ptr %12, i32 0, i32 1, !dbg !870
  %13 = load i32, ptr %parent_slot, align 8, !dbg !870
  %14 = load i32, ptr %slot, align 4, !dbg !870
  %cmp45 = icmp ne i32 %13, %14, !dbg !870
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body42
  %15 = phi i1 [ false, %do.body42 ], [ %cmp45, %land.rhs ], !dbg !873
  %lnot47 = xor i1 %15, true, !dbg !870
  %lnot49 = xor i1 %lnot47, true, !dbg !870
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !870
  %conv51 = sext i32 %lnot.ext50 to i64, !dbg !870
  %expval52 = call i64 @llvm.expect.i64(i64 %conv51, i64 0), !dbg !870
  %tobool53 = icmp ne i64 %expval52, 0, !dbg !870
  br i1 %tobool53, label %if.then54, label %if.end64, !dbg !874

if.then54:                                        ; preds = %land.end
  br label %do.body55, !dbg !870

do.body55:                                        ; preds = %if.then54
  br label %do.body56, !dbg !875

do.body56:                                        ; preds = %do.body55
  br label %do.cond57, !dbg !877

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !877

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !875

do.body59:                                        ; preds = %do.end58
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 366, i32 0, i64 12) #14, !dbg !879, !srcloc !881
  br label %do.cond60, !dbg !879

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !879

do.end61:                                         ; preds = %do.cond60
  unreachable, !dbg !875

do.cond62:                                        ; No predecessors!
  br label %do.end63, !dbg !875

do.end63:                                         ; preds = %do.cond62
  br label %if.end64, !dbg !875

if.end64:                                         ; preds = %do.end63, %land.end
  br label %do.cond65, !dbg !874

do.cond65:                                        ; preds = %if.end64
  br label %do.end66, !dbg !874

do.end66:                                         ; preds = %do.cond65
  %16 = load ptr, ptr %cursor, align 8, !dbg !882
  store ptr %16, ptr %parent, align 8, !dbg !883
  %17 = load ptr, ptr %shortcut, align 8, !dbg !884
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %17, i32 0, i32 3, !dbg !885
  %18 = load ptr, ptr %next_node, align 8, !dbg !885
  store ptr %18, ptr %cursor, align 8, !dbg !886
  store i32 -1, ptr %slot, align 4, !dbg !887
  br label %do.body67, !dbg !888

do.body67:                                        ; preds = %do.end66
  %19 = load ptr, ptr %cursor, align 8, !dbg !889
  %call68 = call zeroext i1 @assoc_array_ptr_is_node(ptr noundef %19) #15, !dbg !889
  %lnot69 = xor i1 %call68, true, !dbg !889
  %lnot71 = xor i1 %lnot69, true, !dbg !889
  %lnot73 = xor i1 %lnot71, true, !dbg !889
  %lnot.ext74 = zext i1 %lnot73 to i32, !dbg !889
  %conv75 = sext i32 %lnot.ext74 to i64, !dbg !889
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !889
  %tobool77 = icmp ne i64 %expval76, 0, !dbg !889
  br i1 %tobool77, label %if.then78, label %if.end88, !dbg !892

if.then78:                                        ; preds = %do.body67
  br label %do.body79, !dbg !889

do.body79:                                        ; preds = %if.then78
  br label %do.body80, !dbg !893

do.body80:                                        ; preds = %do.body79
  br label %do.cond81, !dbg !895

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !895

do.end82:                                         ; preds = %do.cond81
  br label %do.body83, !dbg !893

do.body83:                                        ; preds = %do.end82
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 370, i32 0, i64 12) #14, !dbg !897, !srcloc !899
  br label %do.cond84, !dbg !897

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !897

do.end85:                                         ; preds = %do.cond84
  unreachable, !dbg !893

do.cond86:                                        ; No predecessors!
  br label %do.end87, !dbg !893

do.end87:                                         ; preds = %do.cond86
  br label %if.end88, !dbg !893

if.end88:                                         ; preds = %do.end87, %do.body67
  br label %do.cond89, !dbg !892

do.cond89:                                        ; preds = %if.end88
  br label %do.end90, !dbg !892

do.end90:                                         ; preds = %do.cond89
  br label %if.end91, !dbg !900

if.end91:                                         ; preds = %do.end90, %move_to_meta
  store i32 0, ptr %tmp92, align 4, !dbg !901
  %20 = load i32, ptr %tmp92, align 4, !dbg !904
  %21 = load ptr, ptr %cursor, align 8, !dbg !905
  %call93 = call ptr @assoc_array_ptr_to_node(ptr noundef %21) #15, !dbg !906
  store ptr %call93, ptr %node, align 8, !dbg !907
  br label %do.body94, !dbg !908

do.body94:                                        ; preds = %if.end91
  %22 = load ptr, ptr %node, align 8, !dbg !909
  %back_pointer95 = getelementptr inbounds %struct.assoc_array_node, ptr %22, i32 0, i32 0, !dbg !909
  %23 = load ptr, ptr %back_pointer95, align 8, !dbg !909
  %24 = load ptr, ptr %parent, align 8, !dbg !909
  %cmp96 = icmp ne ptr %23, %24, !dbg !909
  %lnot98 = xor i1 %cmp96, true, !dbg !909
  %lnot100 = xor i1 %lnot98, true, !dbg !909
  %lnot.ext101 = zext i1 %lnot100 to i32, !dbg !909
  %conv102 = sext i32 %lnot.ext101 to i64, !dbg !909
  %expval103 = call i64 @llvm.expect.i64(i64 %conv102, i64 0), !dbg !909
  %tobool104 = icmp ne i64 %expval103, 0, !dbg !909
  br i1 %tobool104, label %if.then105, label %if.end115, !dbg !912

if.then105:                                       ; preds = %do.body94
  br label %do.body106, !dbg !909

do.body106:                                       ; preds = %if.then105
  br label %do.body107, !dbg !913

do.body107:                                       ; preds = %do.body106
  br label %do.cond108, !dbg !915

do.cond108:                                       ; preds = %do.body107
  br label %do.end109, !dbg !915

do.end109:                                        ; preds = %do.cond108
  br label %do.body110, !dbg !913

do.body110:                                       ; preds = %do.end109
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 375, i32 0, i64 12) #14, !dbg !917, !srcloc !919
  br label %do.cond111, !dbg !917

do.cond111:                                       ; preds = %do.body110
  br label %do.end112, !dbg !917

do.end112:                                        ; preds = %do.cond111
  unreachable, !dbg !913

do.cond113:                                       ; No predecessors!
  br label %do.end114, !dbg !913

do.end114:                                        ; preds = %do.cond113
  br label %if.end115, !dbg !913

if.end115:                                        ; preds = %do.end114, %do.body94
  br label %do.cond116, !dbg !912

do.cond116:                                       ; preds = %if.end115
  br label %do.end117, !dbg !912

do.end117:                                        ; preds = %do.cond116
  br label %do.body118, !dbg !920

do.body118:                                       ; preds = %do.end117
  %25 = load i32, ptr %slot, align 4, !dbg !921
  %cmp119 = icmp ne i32 %25, -1, !dbg !921
  br i1 %cmp119, label %land.rhs121, label %land.end126, !dbg !921

land.rhs121:                                      ; preds = %do.body118
  %26 = load ptr, ptr %node, align 8, !dbg !921
  %parent_slot122 = getelementptr inbounds %struct.assoc_array_node, ptr %26, i32 0, i32 1, !dbg !921
  %27 = load i8, ptr %parent_slot122, align 8, !dbg !921
  %conv123 = zext i8 %27 to i32, !dbg !921
  %28 = load i32, ptr %slot, align 4, !dbg !921
  %cmp124 = icmp ne i32 %conv123, %28, !dbg !921
  br label %land.end126

land.end126:                                      ; preds = %land.rhs121, %do.body118
  %29 = phi i1 [ false, %do.body118 ], [ %cmp124, %land.rhs121 ], !dbg !924
  %lnot127 = xor i1 %29, true, !dbg !921
  %lnot129 = xor i1 %lnot127, true, !dbg !921
  %lnot.ext130 = zext i1 %lnot129 to i32, !dbg !921
  %conv131 = sext i32 %lnot.ext130 to i64, !dbg !921
  %expval132 = call i64 @llvm.expect.i64(i64 %conv131, i64 0), !dbg !921
  %tobool133 = icmp ne i64 %expval132, 0, !dbg !921
  br i1 %tobool133, label %if.then134, label %if.end144, !dbg !925

if.then134:                                       ; preds = %land.end126
  br label %do.body135, !dbg !921

do.body135:                                       ; preds = %if.then134
  br label %do.body136, !dbg !926

do.body136:                                       ; preds = %do.body135
  br label %do.cond137, !dbg !928

do.cond137:                                       ; preds = %do.body136
  br label %do.end138, !dbg !928

do.end138:                                        ; preds = %do.cond137
  br label %do.body139, !dbg !926

do.body139:                                       ; preds = %do.end138
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 376, i32 0, i64 12) #14, !dbg !930, !srcloc !932
  br label %do.cond140, !dbg !930

do.cond140:                                       ; preds = %do.body139
  br label %do.end141, !dbg !930

do.end141:                                        ; preds = %do.cond140
  unreachable, !dbg !926

do.cond142:                                       ; No predecessors!
  br label %do.end143, !dbg !926

do.end143:                                        ; preds = %do.cond142
  br label %if.end144, !dbg !926

if.end144:                                        ; preds = %do.end143, %land.end126
  br label %do.cond145, !dbg !925

do.cond145:                                       ; preds = %if.end144
  br label %do.end146, !dbg !925

do.end146:                                        ; preds = %do.cond145
  store i32 0, ptr %slot, align 4, !dbg !933
  br label %continue_node, !dbg !934

continue_node:                                    ; preds = %if.end225, %do.end146
  call void @llvm.dbg.label(metadata !801), !dbg !935
  store i32 0, ptr %tmp147, align 4, !dbg !936
  %30 = load i32, ptr %tmp147, align 4, !dbg !939
  br label %for.cond, !dbg !940

for.cond:                                         ; preds = %for.inc, %continue_node
  %31 = load i32, ptr %slot, align 4, !dbg !941
  %cmp148 = icmp slt i32 %31, 16, !dbg !942
  br i1 %cmp148, label %for.body, label %for.end, !dbg !943

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !802, metadata !DIExpression()), !dbg !945
  %32 = load ptr, ptr %node, align 8, !dbg !946
  %slots = getelementptr inbounds %struct.assoc_array_node, ptr %32, i32 0, i32 2, !dbg !947
  %33 = load i32, ptr %slot, align 4, !dbg !948
  %idxprom = sext i32 %33 to i64, !dbg !946
  %arrayidx = getelementptr [16 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !946
  %34 = load ptr, ptr %arrayidx, align 8, !dbg !946
  store ptr %34, ptr %ptr, align 8, !dbg !945
  %35 = load ptr, ptr %ptr, align 8, !dbg !949
  %tobool150 = icmp ne ptr %35, null, !dbg !949
  br i1 %tobool150, label %if.end152, label %if.then151, !dbg !951

if.then151:                                       ; preds = %for.body
  store i32 54, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !952

if.end152:                                        ; preds = %for.body
  %36 = load ptr, ptr %ptr, align 8, !dbg !953
  %call153 = call zeroext i1 @assoc_array_ptr_is_meta(ptr noundef %36) #15, !dbg !955
  br i1 %call153, label %if.then154, label %if.end155, !dbg !956

if.then154:                                       ; preds = %if.end152
  %37 = load ptr, ptr %cursor, align 8, !dbg !957
  store ptr %37, ptr %parent, align 8, !dbg !959
  %38 = load ptr, ptr %ptr, align 8, !dbg !960
  store ptr %38, ptr %cursor, align 8, !dbg !961
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !962

if.end155:                                        ; preds = %if.end152
  %39 = load ptr, ptr %ops.addr, align 8, !dbg !963
  %tobool156 = icmp ne ptr %39, null, !dbg !963
  br i1 %tobool156, label %if.then157, label %if.end160, !dbg !965

if.then157:                                       ; preds = %if.end155
  store i32 0, ptr %tmp158, align 4, !dbg !966
  %40 = load i32, ptr %tmp158, align 4, !dbg !970
  %41 = load ptr, ptr %ops.addr, align 8, !dbg !971
  %free_object = getelementptr inbounds %struct.assoc_array_ops, ptr %41, i32 0, i32 4, !dbg !972
  %42 = load ptr, ptr %free_object, align 8, !dbg !972
  %43 = load ptr, ptr %ptr, align 8, !dbg !973
  %call159 = call ptr @assoc_array_ptr_to_leaf(ptr noundef %43) #15, !dbg !974
  call void %42(ptr noundef %call159) #15, !dbg !971
  br label %if.end160, !dbg !975

if.end160:                                        ; preds = %if.then157, %if.end155
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !976
  br label %cleanup, !dbg !976

cleanup:                                          ; preds = %if.end160, %if.then154, %if.then151
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !976
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 54, label %for.inc
    i32 2, label %move_to_meta
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !977

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %44 = load i32, ptr %slot, align 4, !dbg !978
  %inc = add i32 %44, 1, !dbg !978
  store i32 %inc, ptr %slot, align 4, !dbg !978
  br label %for.cond, !dbg !979, !llvm.loop !980

for.end:                                          ; preds = %for.cond
  %45 = load ptr, ptr %node, align 8, !dbg !982
  %back_pointer161 = getelementptr inbounds %struct.assoc_array_node, ptr %45, i32 0, i32 0, !dbg !983
  %46 = load ptr, ptr %back_pointer161, align 8, !dbg !983
  store ptr %46, ptr %parent, align 8, !dbg !984
  %47 = load ptr, ptr %node, align 8, !dbg !985
  %parent_slot162 = getelementptr inbounds %struct.assoc_array_node, ptr %47, i32 0, i32 1, !dbg !986
  %48 = load i8, ptr %parent_slot162, align 8, !dbg !986
  %conv163 = zext i8 %48 to i32, !dbg !985
  store i32 %conv163, ptr %slot, align 4, !dbg !987
  store i32 0, ptr %tmp164, align 4, !dbg !988
  %49 = load i32, ptr %tmp164, align 4, !dbg !991
  %50 = load ptr, ptr %node, align 8, !dbg !992
  call void @kfree(ptr noundef %50) #15, !dbg !993
  %51 = load ptr, ptr %parent, align 8, !dbg !994
  %tobool165 = icmp ne ptr %51, null, !dbg !994
  br i1 %tobool165, label %if.end167, label %if.then166, !dbg !996

if.then166:                                       ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup229, !dbg !997

if.end167:                                        ; preds = %for.end
  %52 = load ptr, ptr %parent, align 8, !dbg !998
  %call168 = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %52) #15, !dbg !1000
  br i1 %call168, label %if.then169, label %if.end225, !dbg !1001

if.then169:                                       ; preds = %if.end167
  %53 = load ptr, ptr %parent, align 8, !dbg !1002
  %call170 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %53) #15, !dbg !1004
  store ptr %call170, ptr %shortcut, align 8, !dbg !1005
  br label %do.body171, !dbg !1006

do.body171:                                       ; preds = %if.then169
  %54 = load ptr, ptr %shortcut, align 8, !dbg !1007
  %next_node172 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %54, i32 0, i32 3, !dbg !1007
  %55 = load ptr, ptr %next_node172, align 8, !dbg !1007
  %56 = load ptr, ptr %cursor, align 8, !dbg !1007
  %cmp173 = icmp ne ptr %55, %56, !dbg !1007
  %lnot175 = xor i1 %cmp173, true, !dbg !1007
  %lnot177 = xor i1 %lnot175, true, !dbg !1007
  %lnot.ext178 = zext i1 %lnot177 to i32, !dbg !1007
  %conv179 = sext i32 %lnot.ext178 to i64, !dbg !1007
  %expval180 = call i64 @llvm.expect.i64(i64 %conv179, i64 0), !dbg !1007
  %tobool181 = icmp ne i64 %expval180, 0, !dbg !1007
  br i1 %tobool181, label %if.then182, label %if.end192, !dbg !1010

if.then182:                                       ; preds = %do.body171
  br label %do.body183, !dbg !1007

do.body183:                                       ; preds = %if.then182
  br label %do.body184, !dbg !1011

do.body184:                                       ; preds = %do.body183
  br label %do.cond185, !dbg !1013

do.cond185:                                       ; preds = %do.body184
  br label %do.end186, !dbg !1013

do.end186:                                        ; preds = %do.cond185
  br label %do.body187, !dbg !1011

do.body187:                                       ; preds = %do.end186
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 408, i32 0, i64 12) #14, !dbg !1015, !srcloc !1017
  br label %do.cond188, !dbg !1015

do.cond188:                                       ; preds = %do.body187
  br label %do.end189, !dbg !1015

do.end189:                                        ; preds = %do.cond188
  unreachable, !dbg !1011

do.cond190:                                       ; No predecessors!
  br label %do.end191, !dbg !1011

do.end191:                                        ; preds = %do.cond190
  br label %if.end192, !dbg !1011

if.end192:                                        ; preds = %do.end191, %do.body171
  br label %do.cond193, !dbg !1010

do.cond193:                                       ; preds = %if.end192
  br label %do.end194, !dbg !1010

do.end194:                                        ; preds = %do.cond193
  %57 = load ptr, ptr %parent, align 8, !dbg !1018
  store ptr %57, ptr %cursor, align 8, !dbg !1019
  %58 = load ptr, ptr %shortcut, align 8, !dbg !1020
  %back_pointer195 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %58, i32 0, i32 0, !dbg !1021
  %59 = load ptr, ptr %back_pointer195, align 8, !dbg !1021
  store ptr %59, ptr %parent, align 8, !dbg !1022
  %60 = load ptr, ptr %shortcut, align 8, !dbg !1023
  %parent_slot196 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %60, i32 0, i32 1, !dbg !1024
  %61 = load i32, ptr %parent_slot196, align 8, !dbg !1024
  store i32 %61, ptr %slot, align 4, !dbg !1025
  store i32 0, ptr %tmp197, align 4, !dbg !1026
  %62 = load i32, ptr %tmp197, align 4, !dbg !1029
  %63 = load ptr, ptr %shortcut, align 8, !dbg !1030
  call void @kfree(ptr noundef %63) #15, !dbg !1031
  %64 = load ptr, ptr %parent, align 8, !dbg !1032
  %tobool198 = icmp ne ptr %64, null, !dbg !1032
  br i1 %tobool198, label %if.end200, label %if.then199, !dbg !1034

if.then199:                                       ; preds = %do.end194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup229, !dbg !1035

if.end200:                                        ; preds = %do.end194
  br label %do.body201, !dbg !1036

do.body201:                                       ; preds = %if.end200
  %65 = load ptr, ptr %parent, align 8, !dbg !1037
  %call202 = call zeroext i1 @assoc_array_ptr_is_node(ptr noundef %65) #15, !dbg !1037
  %lnot203 = xor i1 %call202, true, !dbg !1037
  %lnot205 = xor i1 %lnot203, true, !dbg !1037
  %lnot207 = xor i1 %lnot205, true, !dbg !1037
  %lnot.ext208 = zext i1 %lnot207 to i32, !dbg !1037
  %conv209 = sext i32 %lnot.ext208 to i64, !dbg !1037
  %expval210 = call i64 @llvm.expect.i64(i64 %conv209, i64 0), !dbg !1037
  %tobool211 = icmp ne i64 %expval210, 0, !dbg !1037
  br i1 %tobool211, label %if.then212, label %if.end222, !dbg !1040

if.then212:                                       ; preds = %do.body201
  br label %do.body213, !dbg !1037

do.body213:                                       ; preds = %if.then212
  br label %do.body214, !dbg !1041

do.body214:                                       ; preds = %do.body213
  br label %do.cond215, !dbg !1043

do.cond215:                                       ; preds = %do.body214
  br label %do.end216, !dbg !1043

do.end216:                                        ; preds = %do.cond215
  br label %do.body217, !dbg !1041

do.body217:                                       ; preds = %do.end216
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 417, i32 0, i64 12) #14, !dbg !1045, !srcloc !1047
  br label %do.cond218, !dbg !1045

do.cond218:                                       ; preds = %do.body217
  br label %do.end219, !dbg !1045

do.end219:                                        ; preds = %do.cond218
  unreachable, !dbg !1041

do.cond220:                                       ; No predecessors!
  br label %do.end221, !dbg !1041

do.end221:                                        ; preds = %do.cond220
  br label %if.end222, !dbg !1041

if.end222:                                        ; preds = %do.end221, %do.body201
  br label %do.cond223, !dbg !1040

do.cond223:                                       ; preds = %if.end222
  br label %do.end224, !dbg !1040

do.end224:                                        ; preds = %do.cond223
  br label %if.end225, !dbg !1048

if.end225:                                        ; preds = %do.end224, %if.end167
  store i32 0, ptr %tmp226, align 4, !dbg !1049
  %66 = load i32, ptr %tmp226, align 4, !dbg !1052
  %67 = load ptr, ptr %parent, align 8, !dbg !1053
  store ptr %67, ptr %cursor, align 8, !dbg !1054
  %68 = load ptr, ptr %cursor, align 8, !dbg !1055
  %call227 = call ptr @assoc_array_ptr_to_node(ptr noundef %68) #15, !dbg !1056
  store ptr %call227, ptr %node, align 8, !dbg !1057
  %69 = load i32, ptr %slot, align 4, !dbg !1058
  %inc228 = add i32 %69, 1, !dbg !1058
  store i32 %inc228, ptr %slot, align 4, !dbg !1058
  br label %continue_node, !dbg !1059

cleanup229:                                       ; preds = %if.then199, %if.then166, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #14, !dbg !1060
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #14, !dbg !1060
  call void @llvm.lifetime.end.p0(i64 8, ptr %cursor) #14, !dbg !1060
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !1060
  call void @llvm.lifetime.end.p0(i64 8, ptr %shortcut) #14, !dbg !1060
  ret void, !dbg !1060

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @assoc_array_insert(ptr noundef %array, ptr noundef %ops, ptr noundef %index_key, ptr noundef %object) #0 align 16 !dbg !1061 {
entry:
  %retval = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %index_key.addr = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %result = alloca %struct.assoc_array_walk_result, align 8
  %edit = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !1065, metadata !DIExpression()), !dbg !1072
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !1066, metadata !DIExpression()), !dbg !1073
  store ptr %index_key, ptr %index_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index_key.addr, metadata !1067, metadata !DIExpression()), !dbg !1074
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1068, metadata !DIExpression()), !dbg !1075
  call void @llvm.lifetime.start.p0(i64 48, ptr %result) #14, !dbg !1076
  call void @llvm.dbg.declare(metadata ptr %result, metadata !1069, metadata !DIExpression()), !dbg !1077
  call void @llvm.lifetime.start.p0(i64 8, ptr %edit) #14, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %edit, metadata !1070, metadata !DIExpression()), !dbg !1079
  store i32 0, ptr %tmp, align 4, !dbg !1080
  %0 = load i32, ptr %tmp, align 4, !dbg !1083
  br label %do.body, !dbg !1084

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8, !dbg !1085
  %call = call zeroext i1 @assoc_array_ptr_is_meta(ptr noundef %1) #15, !dbg !1085
  %lnot = xor i1 %call, true, !dbg !1085
  %lnot1 = xor i1 %lnot, true, !dbg !1085
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1085
  %conv = sext i32 %lnot.ext to i64, !dbg !1085
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1085
  %tobool = icmp ne i64 %expval, 0, !dbg !1085
  br i1 %tobool, label %if.then, label %if.end, !dbg !1088

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !1085

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !1089

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !1091

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !1091

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !1089

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 978, i32 0, i64 12) #14, !dbg !1093, !srcloc !1095
  br label %do.cond5, !dbg !1093

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1093

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !1089

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !1089

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !1089

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !1088

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !1088

do.end10:                                         ; preds = %do.cond9
  %call11 = call noalias ptr @kzalloc(i64 noundef 328, i32 noundef 3264) #16, !dbg !1096
  store ptr %call11, ptr %edit, align 8, !dbg !1097
  %2 = load ptr, ptr %edit, align 8, !dbg !1098
  %tobool12 = icmp ne ptr %2, null, !dbg !1098
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !1100

if.then13:                                        ; preds = %do.end10
  %call14 = call ptr @ERR_PTR(i64 noundef -12) #15, !dbg !1101
  store ptr %call14, ptr %retval, align 8, !dbg !1102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1102

if.end15:                                         ; preds = %do.end10
  %3 = load ptr, ptr %array.addr, align 8, !dbg !1103
  %4 = load ptr, ptr %edit, align 8, !dbg !1104
  %array16 = getelementptr inbounds %struct.assoc_array_edit, ptr %4, i32 0, i32 1, !dbg !1105
  store ptr %3, ptr %array16, align 8, !dbg !1106
  %5 = load ptr, ptr %ops.addr, align 8, !dbg !1107
  %6 = load ptr, ptr %edit, align 8, !dbg !1108
  %ops17 = getelementptr inbounds %struct.assoc_array_edit, ptr %6, i32 0, i32 2, !dbg !1109
  store ptr %5, ptr %ops17, align 8, !dbg !1110
  %7 = load ptr, ptr %object.addr, align 8, !dbg !1111
  %call18 = call ptr @assoc_array_leaf_to_ptr(ptr noundef %7) #15, !dbg !1112
  %8 = load ptr, ptr %edit, align 8, !dbg !1113
  %leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %8, i32 0, i32 4, !dbg !1114
  store ptr %call18, ptr %leaf, align 8, !dbg !1115
  %9 = load ptr, ptr %edit, align 8, !dbg !1116
  %adjust_count_by = getelementptr inbounds %struct.assoc_array_edit, ptr %9, i32 0, i32 13, !dbg !1117
  store i64 1, ptr %adjust_count_by, align 8, !dbg !1118
  %10 = load ptr, ptr %array.addr, align 8, !dbg !1119
  %11 = load ptr, ptr %ops.addr, align 8, !dbg !1120
  %12 = load ptr, ptr %index_key.addr, align 8, !dbg !1121
  %call19 = call i32 @assoc_array_walk(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %result) #15, !dbg !1122
  switch i32 %call19, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
    i32 2, label %sw.bb27
  ], !dbg !1123

sw.bb:                                            ; preds = %if.end15
  %13 = load ptr, ptr %edit, align 8, !dbg !1124
  %call20 = call zeroext i1 @assoc_array_insert_in_empty_tree(ptr noundef %13) #15, !dbg !1127
  br i1 %call20, label %if.end22, label %if.then21, !dbg !1128

if.then21:                                        ; preds = %sw.bb
  br label %enomem, !dbg !1129

if.end22:                                         ; preds = %sw.bb
  %14 = load ptr, ptr %edit, align 8, !dbg !1130
  store ptr %14, ptr %retval, align 8, !dbg !1131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1131

sw.bb23:                                          ; preds = %if.end15
  %15 = load ptr, ptr %edit, align 8, !dbg !1132
  %16 = load ptr, ptr %ops.addr, align 8, !dbg !1134
  %17 = load ptr, ptr %index_key.addr, align 8, !dbg !1135
  %call24 = call zeroext i1 @assoc_array_insert_into_terminal_node(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %result) #15, !dbg !1136
  br i1 %call24, label %if.end26, label %if.then25, !dbg !1137

if.then25:                                        ; preds = %sw.bb23
  br label %enomem, !dbg !1138

if.end26:                                         ; preds = %sw.bb23
  %18 = load ptr, ptr %edit, align 8, !dbg !1139
  store ptr %18, ptr %retval, align 8, !dbg !1140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1140

sw.bb27:                                          ; preds = %if.end15
  %19 = load ptr, ptr %edit, align 8, !dbg !1141
  %20 = load ptr, ptr %ops.addr, align 8, !dbg !1143
  %call28 = call zeroext i1 @assoc_array_insert_mid_shortcut(ptr noundef %19, ptr noundef %20, ptr noundef %result) #15, !dbg !1144
  br i1 %call28, label %if.end30, label %if.then29, !dbg !1145

if.then29:                                        ; preds = %sw.bb27
  br label %enomem, !dbg !1146

if.end30:                                         ; preds = %sw.bb27
  %21 = load ptr, ptr %edit, align 8, !dbg !1147
  store ptr %21, ptr %retval, align 8, !dbg !1148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1148

sw.epilog:                                        ; preds = %if.end15
  br label %enomem, !dbg !1149

enomem:                                           ; preds = %sw.epilog, %if.then29, %if.then25, %if.then21
  call void @llvm.dbg.label(metadata !1071), !dbg !1150
  store i32 0, ptr %tmp31, align 4, !dbg !1151
  %22 = load i32, ptr %tmp31, align 4, !dbg !1154
  %23 = load ptr, ptr %edit, align 8, !dbg !1155
  call void @assoc_array_cancel_edit(ptr noundef %23) #15, !dbg !1156
  %call32 = call ptr @ERR_PTR(i64 noundef -12) #15, !dbg !1157
  store ptr %call32, ptr %retval, align 8, !dbg !1158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1158

cleanup:                                          ; preds = %enomem, %if.end30, %if.end26, %if.end22, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %edit) #14, !dbg !1159
  call void @llvm.lifetime.end.p0(i64 48, ptr %result) #14, !dbg !1159
  %24 = load ptr, ptr %retval, align 8, !dbg !1159
  ret ptr %24, !dbg !1159
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @assoc_array_ptr_is_meta(ptr noundef %x) #3 align 16 !dbg !1160 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1162, metadata !DIExpression()), !dbg !1163
  %0 = load ptr, ptr %x.addr, align 8, !dbg !1164
  %1 = ptrtoint ptr %0 to i64, !dbg !1165
  %and = and i64 %1, 1, !dbg !1166
  %tobool = icmp ne i64 %and, 0, !dbg !1165
  ret i1 %tobool, !dbg !1167
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1168 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1172, metadata !DIExpression()), !dbg !1174
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1173, metadata !DIExpression()), !dbg !1175
  %0 = load i64, ptr %size.addr, align 8, !dbg !1176
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1177
  %or = or i32 %1, 256, !dbg !1178
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1179
  ret ptr %call, !dbg !1180
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !1181 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !1186, metadata !DIExpression()), !dbg !1187
  %0 = load i64, ptr %error.addr, align 8, !dbg !1188
  %1 = inttoptr i64 %0 to ptr, !dbg !1189
  ret ptr %1, !dbg !1190
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @assoc_array_leaf_to_ptr(ptr noundef %p) #3 align 16 !dbg !1191 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1195, metadata !DIExpression()), !dbg !1196
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1197
  %call = call ptr @__assoc_array_x_to_ptr(ptr noundef %0, i64 noundef 0) #15, !dbg !1198
  ret ptr %call, !dbg !1199
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @assoc_array_insert_in_empty_tree(ptr noundef %edit) #0 align 16 !dbg !1200 {
entry:
  %retval = alloca i1, align 1
  %edit.addr = alloca ptr, align 8
  %new_n0 = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store ptr %edit, ptr %edit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edit.addr, metadata !1204, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_n0) #14, !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %new_n0, metadata !1205, metadata !DIExpression()), !dbg !1208
  store i32 0, ptr %tmp, align 4, !dbg !1209
  %0 = load i32, ptr %tmp, align 4, !dbg !1212
  %call = call noalias ptr @kzalloc(i64 noundef 152, i32 noundef 3264) #16, !dbg !1213
  store ptr %call, ptr %new_n0, align 8, !dbg !1214
  %1 = load ptr, ptr %new_n0, align 8, !dbg !1215
  %tobool = icmp ne ptr %1, null, !dbg !1215
  br i1 %tobool, label %if.end, label %if.then, !dbg !1217

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1218

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %new_n0, align 8, !dbg !1219
  %call1 = call ptr @assoc_array_node_to_ptr(ptr noundef %2) #15, !dbg !1220
  %3 = load ptr, ptr %edit.addr, align 8, !dbg !1221
  %new_meta = getelementptr inbounds %struct.assoc_array_edit, ptr %3, i32 0, i32 7, !dbg !1222
  %arrayidx = getelementptr [3 x ptr], ptr %new_meta, i64 0, i64 0, !dbg !1221
  store ptr %call1, ptr %arrayidx, align 8, !dbg !1223
  %4 = load ptr, ptr %new_n0, align 8, !dbg !1224
  %slots = getelementptr inbounds %struct.assoc_array_node, ptr %4, i32 0, i32 2, !dbg !1225
  %arrayidx2 = getelementptr [16 x ptr], ptr %slots, i64 0, i64 0, !dbg !1224
  %5 = load ptr, ptr %edit.addr, align 8, !dbg !1226
  %leaf_p = getelementptr inbounds %struct.assoc_array_edit, ptr %5, i32 0, i32 5, !dbg !1227
  store ptr %arrayidx2, ptr %leaf_p, align 8, !dbg !1228
  %6 = load ptr, ptr %new_n0, align 8, !dbg !1229
  %7 = load ptr, ptr %edit.addr, align 8, !dbg !1230
  %adjust_count_on = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 12, !dbg !1231
  store ptr %6, ptr %adjust_count_on, align 8, !dbg !1232
  %8 = load ptr, ptr %edit.addr, align 8, !dbg !1233
  %array = getelementptr inbounds %struct.assoc_array_edit, ptr %8, i32 0, i32 1, !dbg !1234
  %9 = load ptr, ptr %array, align 8, !dbg !1234
  %root = getelementptr inbounds %struct.assoc_array, ptr %9, i32 0, i32 0, !dbg !1235
  %10 = load ptr, ptr %edit.addr, align 8, !dbg !1236
  %set = getelementptr inbounds %struct.assoc_array_edit, ptr %10, i32 0, i32 14, !dbg !1237
  %arrayidx3 = getelementptr [2 x %struct.anon.1], ptr %set, i64 0, i64 0, !dbg !1236
  %ptr = getelementptr inbounds %struct.anon.1, ptr %arrayidx3, i32 0, i32 0, !dbg !1238
  store ptr %root, ptr %ptr, align 8, !dbg !1239
  %11 = load ptr, ptr %new_n0, align 8, !dbg !1240
  %call4 = call ptr @assoc_array_node_to_ptr(ptr noundef %11) #15, !dbg !1241
  %12 = load ptr, ptr %edit.addr, align 8, !dbg !1242
  %set5 = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 14, !dbg !1243
  %arrayidx6 = getelementptr [2 x %struct.anon.1], ptr %set5, i64 0, i64 0, !dbg !1242
  %to = getelementptr inbounds %struct.anon.1, ptr %arrayidx6, i32 0, i32 1, !dbg !1244
  store ptr %call4, ptr %to, align 8, !dbg !1245
  store i32 0, ptr %tmp7, align 4, !dbg !1246
  %13 = load i32, ptr %tmp7, align 4, !dbg !1249
  store i1 true, ptr %retval, align 1, !dbg !1250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1250

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_n0) #14, !dbg !1251
  %14 = load i1, ptr %retval, align 1, !dbg !1251
  ret i1 %14, !dbg !1251
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @assoc_array_insert_into_terminal_node(ptr noundef %edit, ptr noundef %ops, ptr noundef %index_key, ptr noundef %result) #0 align 16 !dbg !1252 {
entry:
  %retval = alloca i1, align 1
  %edit.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %index_key.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %shortcut = alloca ptr, align 8
  %new_s0 = alloca ptr, align 8
  %node = alloca ptr, align 8
  %new_n0 = alloca ptr, align 8
  %new_n1 = alloca ptr, align 8
  %side = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %dissimilarity = alloca i64, align 8
  %base_seg = alloca i64, align 8
  %blank = alloca i64, align 8
  %keylen = alloca i64, align 8
  %have_meta = alloca i8, align 1
  %level = alloca i32, align 4
  %diff = alloca i32, align 4
  %slot = alloca i32, align 4
  %next_slot = alloca i32, align 4
  %free_slot = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  %tmp87 = alloca i32, align 4
  %tmp100 = alloca i32, align 4
  %tmp102 = alloca i32, align 4
  %tmp110 = alloca i32, align 4
  %tmp143 = alloca i32, align 4
  %tmp306 = alloca i32, align 4
  %tmp438 = alloca i32, align 4
  %tmp439 = alloca i32, align 4
  %x = alloca i32, align 4
  %tmp557 = alloca i32, align 4
  %tmp598 = alloca i32, align 4
  store ptr %edit, ptr %edit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edit.addr, metadata !1256, metadata !DIExpression()), !dbg !1287
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !1257, metadata !DIExpression()), !dbg !1288
  store ptr %index_key, ptr %index_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index_key.addr, metadata !1258, metadata !DIExpression()), !dbg !1289
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !1259, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 8, ptr %shortcut) #14, !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %shortcut, metadata !1260, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_s0) #14, !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %new_s0, metadata !1261, metadata !DIExpression()), !dbg !1293
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1262, metadata !DIExpression()), !dbg !1295
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_n0) #14, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %new_n0, metadata !1263, metadata !DIExpression()), !dbg !1296
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_n1) #14, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %new_n1, metadata !1264, metadata !DIExpression()), !dbg !1297
  call void @llvm.lifetime.start.p0(i64 8, ptr %side) #14, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %side, metadata !1265, metadata !DIExpression()), !dbg !1298
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !1299
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !1266, metadata !DIExpression()), !dbg !1300
  call void @llvm.lifetime.start.p0(i64 8, ptr %dissimilarity) #14, !dbg !1301
  call void @llvm.dbg.declare(metadata ptr %dissimilarity, metadata !1267, metadata !DIExpression()), !dbg !1302
  call void @llvm.lifetime.start.p0(i64 8, ptr %base_seg) #14, !dbg !1301
  call void @llvm.dbg.declare(metadata ptr %base_seg, metadata !1268, metadata !DIExpression()), !dbg !1303
  call void @llvm.lifetime.start.p0(i64 8, ptr %blank) #14, !dbg !1301
  call void @llvm.dbg.declare(metadata ptr %blank, metadata !1269, metadata !DIExpression()), !dbg !1304
  call void @llvm.lifetime.start.p0(i64 8, ptr %keylen) #14, !dbg !1305
  call void @llvm.dbg.declare(metadata ptr %keylen, metadata !1270, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 1, ptr %have_meta) #14, !dbg !1307
  call void @llvm.dbg.declare(metadata ptr %have_meta, metadata !1271, metadata !DIExpression()), !dbg !1308
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #14, !dbg !1309
  call void @llvm.dbg.declare(metadata ptr %level, metadata !1272, metadata !DIExpression()), !dbg !1310
  call void @llvm.lifetime.start.p0(i64 4, ptr %diff) #14, !dbg !1309
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !1273, metadata !DIExpression()), !dbg !1311
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #14, !dbg !1312
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !1274, metadata !DIExpression()), !dbg !1313
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_slot) #14, !dbg !1312
  call void @llvm.dbg.declare(metadata ptr %next_slot, metadata !1275, metadata !DIExpression()), !dbg !1314
  call void @llvm.lifetime.start.p0(i64 4, ptr %free_slot) #14, !dbg !1312
  call void @llvm.dbg.declare(metadata ptr %free_slot, metadata !1276, metadata !DIExpression()), !dbg !1315
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1312
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1277, metadata !DIExpression()), !dbg !1316
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #14, !dbg !1312
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1278, metadata !DIExpression()), !dbg !1317
  %0 = load ptr, ptr %result.addr, align 8, !dbg !1318
  %terminal_node = getelementptr inbounds %struct.assoc_array_walk_result, ptr %0, i32 0, i32 0, !dbg !1319
  %node1 = getelementptr inbounds %struct.anon, ptr %terminal_node, i32 0, i32 0, !dbg !1320
  %1 = load ptr, ptr %node1, align 8, !dbg !1320
  store ptr %1, ptr %node, align 8, !dbg !1321
  %2 = load ptr, ptr %result.addr, align 8, !dbg !1322
  %terminal_node2 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %2, i32 0, i32 0, !dbg !1323
  %level3 = getelementptr inbounds %struct.anon, ptr %terminal_node2, i32 0, i32 1, !dbg !1324
  %3 = load i32, ptr %level3, align 8, !dbg !1324
  store i32 %3, ptr %level, align 4, !dbg !1325
  %4 = load ptr, ptr %result.addr, align 8, !dbg !1326
  %terminal_node4 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %4, i32 0, i32 0, !dbg !1327
  %slot5 = getelementptr inbounds %struct.anon, ptr %terminal_node4, i32 0, i32 2, !dbg !1328
  %5 = load i32, ptr %slot5, align 4, !dbg !1328
  %conv = trunc i32 %5 to i8, !dbg !1326
  %6 = load ptr, ptr %edit.addr, align 8, !dbg !1329
  %segment_cache = getelementptr inbounds %struct.assoc_array_edit, ptr %6, i32 0, i32 16, !dbg !1330
  %arrayidx = getelementptr [17 x i8], ptr %segment_cache, i64 0, i64 16, !dbg !1329
  store i8 %conv, ptr %arrayidx, align 8, !dbg !1331
  store i32 0, ptr %tmp, align 4, !dbg !1332
  %7 = load i32, ptr %tmp, align 4, !dbg !1335
  store i32 -1, ptr %free_slot, align 4, !dbg !1336
  store i32 0, ptr %i, align 4, !dbg !1337
  br label %for.cond, !dbg !1339

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %i, align 4, !dbg !1340
  %cmp = icmp slt i32 %8, 16, !dbg !1342
  br i1 %cmp, label %for.body, label %for.end, !dbg !1343

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %node, align 8, !dbg !1344
  %slots = getelementptr inbounds %struct.assoc_array_node, ptr %9, i32 0, i32 2, !dbg !1346
  %10 = load i32, ptr %i, align 4, !dbg !1347
  %idxprom = sext i32 %10 to i64, !dbg !1344
  %arrayidx7 = getelementptr [16 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !1344
  %11 = load ptr, ptr %arrayidx7, align 8, !dbg !1344
  store ptr %11, ptr %ptr, align 8, !dbg !1348
  %12 = load ptr, ptr %ptr, align 8, !dbg !1349
  %tobool = icmp ne ptr %12, null, !dbg !1349
  br i1 %tobool, label %if.end, label %if.then, !dbg !1351

if.then:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !dbg !1352
  store i32 %13, ptr %free_slot, align 4, !dbg !1354
  br label %for.inc, !dbg !1355

if.end:                                           ; preds = %for.body
  %14 = load ptr, ptr %ptr, align 8, !dbg !1356
  %call = call zeroext i1 @assoc_array_ptr_is_leaf(ptr noundef %14) #15, !dbg !1358
  br i1 %call, label %land.lhs.true, label %if.end21, !dbg !1359

land.lhs.true:                                    ; preds = %if.end
  %15 = load ptr, ptr %ops.addr, align 8, !dbg !1360
  %compare_object = getelementptr inbounds %struct.assoc_array_ops, ptr %15, i32 0, i32 2, !dbg !1361
  %16 = load ptr, ptr %compare_object, align 8, !dbg !1361
  %17 = load ptr, ptr %ptr, align 8, !dbg !1362
  %call9 = call ptr @assoc_array_ptr_to_leaf(ptr noundef %17) #15, !dbg !1363
  %18 = load ptr, ptr %index_key.addr, align 8, !dbg !1364
  %call10 = call zeroext i1 %16(ptr noundef %call9, ptr noundef %18) #15, !dbg !1360
  br i1 %call10, label %if.then12, label %if.end21, !dbg !1365

if.then12:                                        ; preds = %land.lhs.true
  store i32 0, ptr %tmp13, align 4, !dbg !1366
  %19 = load i32, ptr %tmp13, align 4, !dbg !1370
  %20 = load ptr, ptr %node, align 8, !dbg !1371
  %slots14 = getelementptr inbounds %struct.assoc_array_node, ptr %20, i32 0, i32 2, !dbg !1372
  %21 = load i32, ptr %i, align 4, !dbg !1373
  %idxprom15 = sext i32 %21 to i64, !dbg !1371
  %arrayidx16 = getelementptr [16 x ptr], ptr %slots14, i64 0, i64 %idxprom15, !dbg !1371
  %22 = load ptr, ptr %edit.addr, align 8, !dbg !1374
  %leaf_p = getelementptr inbounds %struct.assoc_array_edit, ptr %22, i32 0, i32 5, !dbg !1375
  store ptr %arrayidx16, ptr %leaf_p, align 8, !dbg !1376
  %23 = load ptr, ptr %node, align 8, !dbg !1377
  %slots17 = getelementptr inbounds %struct.assoc_array_node, ptr %23, i32 0, i32 2, !dbg !1378
  %24 = load i32, ptr %i, align 4, !dbg !1379
  %idxprom18 = sext i32 %24 to i64, !dbg !1377
  %arrayidx19 = getelementptr [16 x ptr], ptr %slots17, i64 0, i64 %idxprom18, !dbg !1377
  %25 = load ptr, ptr %arrayidx19, align 8, !dbg !1377
  %26 = load ptr, ptr %edit.addr, align 8, !dbg !1380
  %dead_leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %26, i32 0, i32 6, !dbg !1381
  store ptr %25, ptr %dead_leaf, align 8, !dbg !1382
  store i32 0, ptr %tmp20, align 4, !dbg !1383
  %27 = load i32, ptr %tmp20, align 4, !dbg !1386
  store i1 true, ptr %retval, align 1, !dbg !1387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1387

if.end21:                                         ; preds = %land.lhs.true, %if.end
  br label %for.inc, !dbg !1388

for.inc:                                          ; preds = %if.end21, %if.then
  %28 = load i32, ptr %i, align 4, !dbg !1389
  %inc = add i32 %28, 1, !dbg !1389
  store i32 %inc, ptr %i, align 4, !dbg !1389
  br label %for.cond, !dbg !1390, !llvm.loop !1391

for.end:                                          ; preds = %for.cond
  %29 = load i32, ptr %free_slot, align 4, !dbg !1393
  %cmp22 = icmp sge i32 %29, 0, !dbg !1395
  br i1 %cmp22, label %if.then24, label %if.end31, !dbg !1396

if.then24:                                        ; preds = %for.end
  store i32 0, ptr %tmp25, align 4, !dbg !1397
  %30 = load i32, ptr %tmp25, align 4, !dbg !1401
  %31 = load ptr, ptr %node, align 8, !dbg !1402
  %slots26 = getelementptr inbounds %struct.assoc_array_node, ptr %31, i32 0, i32 2, !dbg !1403
  %32 = load i32, ptr %free_slot, align 4, !dbg !1404
  %idxprom27 = sext i32 %32 to i64, !dbg !1402
  %arrayidx28 = getelementptr [16 x ptr], ptr %slots26, i64 0, i64 %idxprom27, !dbg !1402
  %33 = load ptr, ptr %edit.addr, align 8, !dbg !1405
  %leaf_p29 = getelementptr inbounds %struct.assoc_array_edit, ptr %33, i32 0, i32 5, !dbg !1406
  store ptr %arrayidx28, ptr %leaf_p29, align 8, !dbg !1407
  %34 = load ptr, ptr %node, align 8, !dbg !1408
  %35 = load ptr, ptr %edit.addr, align 8, !dbg !1409
  %adjust_count_on = getelementptr inbounds %struct.assoc_array_edit, ptr %35, i32 0, i32 12, !dbg !1410
  store ptr %34, ptr %adjust_count_on, align 8, !dbg !1411
  store i32 0, ptr %tmp30, align 4, !dbg !1412
  %36 = load i32, ptr %tmp30, align 4, !dbg !1415
  store i1 true, ptr %retval, align 1, !dbg !1416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1416

if.end31:                                         ; preds = %for.end
  %call32 = call noalias ptr @kzalloc(i64 noundef 152, i32 noundef 3264) #16, !dbg !1417
  store ptr %call32, ptr %new_n0, align 8, !dbg !1418
  %37 = load ptr, ptr %new_n0, align 8, !dbg !1419
  %tobool33 = icmp ne ptr %37, null, !dbg !1419
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !1421

if.then34:                                        ; preds = %if.end31
  store i1 false, ptr %retval, align 1, !dbg !1422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1422

if.end35:                                         ; preds = %if.end31
  %38 = load ptr, ptr %new_n0, align 8, !dbg !1423
  %call36 = call ptr @assoc_array_node_to_ptr(ptr noundef %38) #15, !dbg !1424
  %39 = load ptr, ptr %edit.addr, align 8, !dbg !1425
  %new_meta = getelementptr inbounds %struct.assoc_array_edit, ptr %39, i32 0, i32 7, !dbg !1426
  %arrayidx37 = getelementptr [3 x ptr], ptr %new_meta, i64 0, i64 0, !dbg !1425
  store ptr %call36, ptr %arrayidx37, align 8, !dbg !1427
  %call38 = call noalias ptr @kzalloc(i64 noundef 152, i32 noundef 3264) #16, !dbg !1428
  store ptr %call38, ptr %new_n1, align 8, !dbg !1429
  %40 = load ptr, ptr %new_n1, align 8, !dbg !1430
  %tobool39 = icmp ne ptr %40, null, !dbg !1430
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !1432

if.then40:                                        ; preds = %if.end35
  store i1 false, ptr %retval, align 1, !dbg !1433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1433

if.end41:                                         ; preds = %if.end35
  %41 = load ptr, ptr %new_n1, align 8, !dbg !1434
  %call42 = call ptr @assoc_array_node_to_ptr(ptr noundef %41) #15, !dbg !1435
  %42 = load ptr, ptr %edit.addr, align 8, !dbg !1436
  %new_meta43 = getelementptr inbounds %struct.assoc_array_edit, ptr %42, i32 0, i32 7, !dbg !1437
  %arrayidx44 = getelementptr [3 x ptr], ptr %new_meta43, i64 0, i64 1, !dbg !1436
  store ptr %call42, ptr %arrayidx44, align 8, !dbg !1438
  store i32 0, ptr %tmp45, align 4, !dbg !1439
  %43 = load i32, ptr %tmp45, align 4, !dbg !1442
  store i8 0, ptr %have_meta, align 1, !dbg !1443
  store i32 0, ptr %i, align 4, !dbg !1444
  br label %for.cond46, !dbg !1446

for.cond46:                                       ; preds = %for.inc66, %if.end41
  %44 = load i32, ptr %i, align 4, !dbg !1447
  %cmp47 = icmp slt i32 %44, 16, !dbg !1449
  br i1 %cmp47, label %for.body49, label %for.end68, !dbg !1450

for.body49:                                       ; preds = %for.cond46
  %45 = load ptr, ptr %node, align 8, !dbg !1451
  %slots50 = getelementptr inbounds %struct.assoc_array_node, ptr %45, i32 0, i32 2, !dbg !1453
  %46 = load i32, ptr %i, align 4, !dbg !1454
  %idxprom51 = sext i32 %46 to i64, !dbg !1451
  %arrayidx52 = getelementptr [16 x ptr], ptr %slots50, i64 0, i64 %idxprom51, !dbg !1451
  %47 = load ptr, ptr %arrayidx52, align 8, !dbg !1451
  store ptr %47, ptr %ptr, align 8, !dbg !1455
  %48 = load ptr, ptr %ptr, align 8, !dbg !1456
  %call53 = call zeroext i1 @assoc_array_ptr_is_meta(ptr noundef %48) #15, !dbg !1458
  br i1 %call53, label %if.then54, label %if.end58, !dbg !1459

if.then54:                                        ; preds = %for.body49
  %49 = load ptr, ptr %edit.addr, align 8, !dbg !1460
  %segment_cache55 = getelementptr inbounds %struct.assoc_array_edit, ptr %49, i32 0, i32 16, !dbg !1462
  %50 = load i32, ptr %i, align 4, !dbg !1463
  %idxprom56 = sext i32 %50 to i64, !dbg !1460
  %arrayidx57 = getelementptr [17 x i8], ptr %segment_cache55, i64 0, i64 %idxprom56, !dbg !1460
  store i8 -1, ptr %arrayidx57, align 1, !dbg !1464
  store i8 1, ptr %have_meta, align 1, !dbg !1465
  br label %for.inc66, !dbg !1466

if.end58:                                         ; preds = %for.body49
  %51 = load ptr, ptr %ops.addr, align 8, !dbg !1467
  %get_object_key_chunk = getelementptr inbounds %struct.assoc_array_ops, ptr %51, i32 0, i32 1, !dbg !1468
  %52 = load ptr, ptr %get_object_key_chunk, align 8, !dbg !1468
  %53 = load ptr, ptr %ptr, align 8, !dbg !1469
  %call59 = call ptr @assoc_array_ptr_to_leaf(ptr noundef %53) #15, !dbg !1470
  %54 = load i32, ptr %level, align 4, !dbg !1471
  %call60 = call i64 %52(ptr noundef %call59, i32 noundef %54) #15, !dbg !1467
  store i64 %call60, ptr %base_seg, align 8, !dbg !1472
  %55 = load i32, ptr %level, align 4, !dbg !1473
  %and = and i32 %55, 63, !dbg !1474
  %56 = load i64, ptr %base_seg, align 8, !dbg !1475
  %sh_prom = zext i32 %and to i64, !dbg !1475
  %shr = lshr i64 %56, %sh_prom, !dbg !1475
  store i64 %shr, ptr %base_seg, align 8, !dbg !1475
  %57 = load i64, ptr %base_seg, align 8, !dbg !1476
  %and61 = and i64 %57, 15, !dbg !1477
  %conv62 = trunc i64 %and61 to i8, !dbg !1476
  %58 = load ptr, ptr %edit.addr, align 8, !dbg !1478
  %segment_cache63 = getelementptr inbounds %struct.assoc_array_edit, ptr %58, i32 0, i32 16, !dbg !1479
  %59 = load i32, ptr %i, align 4, !dbg !1480
  %idxprom64 = sext i32 %59 to i64, !dbg !1478
  %arrayidx65 = getelementptr [17 x i8], ptr %segment_cache63, i64 0, i64 %idxprom64, !dbg !1478
  store i8 %conv62, ptr %arrayidx65, align 1, !dbg !1481
  br label %for.inc66, !dbg !1482

for.inc66:                                        ; preds = %if.end58, %if.then54
  %60 = load i32, ptr %i, align 4, !dbg !1483
  %inc67 = add i32 %60, 1, !dbg !1483
  store i32 %inc67, ptr %i, align 4, !dbg !1483
  br label %for.cond46, !dbg !1484, !llvm.loop !1485

for.end68:                                        ; preds = %for.cond46
  %61 = load i8, ptr %have_meta, align 1, !dbg !1487, !range !1489, !noundef !1490
  %tobool69 = trunc i8 %61 to i1, !dbg !1487
  br i1 %tobool69, label %if.then70, label %if.end72, !dbg !1491

if.then70:                                        ; preds = %for.end68
  store i32 0, ptr %tmp71, align 4, !dbg !1492
  %62 = load i32, ptr %tmp71, align 4, !dbg !1496
  br label %split_node, !dbg !1497

if.end72:                                         ; preds = %for.end68
  store i64 0, ptr %dissimilarity, align 8, !dbg !1498
  %63 = load ptr, ptr %edit.addr, align 8, !dbg !1499
  %segment_cache73 = getelementptr inbounds %struct.assoc_array_edit, ptr %63, i32 0, i32 16, !dbg !1500
  %arrayidx74 = getelementptr [17 x i8], ptr %segment_cache73, i64 0, i64 0, !dbg !1499
  %64 = load i8, ptr %arrayidx74, align 8, !dbg !1499
  %conv75 = zext i8 %64 to i64, !dbg !1499
  store i64 %conv75, ptr %base_seg, align 8, !dbg !1501
  store i32 1, ptr %i, align 4, !dbg !1502
  br label %for.cond76, !dbg !1504

for.cond76:                                       ; preds = %for.inc84, %if.end72
  %65 = load i32, ptr %i, align 4, !dbg !1505
  %cmp77 = icmp slt i32 %65, 16, !dbg !1507
  br i1 %cmp77, label %for.body79, label %for.end86, !dbg !1508

for.body79:                                       ; preds = %for.cond76
  %66 = load ptr, ptr %edit.addr, align 8, !dbg !1509
  %segment_cache80 = getelementptr inbounds %struct.assoc_array_edit, ptr %66, i32 0, i32 16, !dbg !1510
  %67 = load i32, ptr %i, align 4, !dbg !1511
  %idxprom81 = sext i32 %67 to i64, !dbg !1509
  %arrayidx82 = getelementptr [17 x i8], ptr %segment_cache80, i64 0, i64 %idxprom81, !dbg !1509
  %68 = load i8, ptr %arrayidx82, align 1, !dbg !1509
  %conv83 = zext i8 %68 to i64, !dbg !1509
  %69 = load i64, ptr %base_seg, align 8, !dbg !1512
  %xor = xor i64 %conv83, %69, !dbg !1513
  %70 = load i64, ptr %dissimilarity, align 8, !dbg !1514
  %or = or i64 %70, %xor, !dbg !1514
  store i64 %or, ptr %dissimilarity, align 8, !dbg !1514
  br label %for.inc84, !dbg !1515

for.inc84:                                        ; preds = %for.body79
  %71 = load i32, ptr %i, align 4, !dbg !1516
  %inc85 = add i32 %71, 1, !dbg !1516
  store i32 %inc85, ptr %i, align 4, !dbg !1516
  br label %for.cond76, !dbg !1517, !llvm.loop !1518

for.end86:                                        ; preds = %for.cond76
  store i32 0, ptr %tmp87, align 4, !dbg !1520
  %72 = load i32, ptr %tmp87, align 4, !dbg !1523
  %73 = load i64, ptr %dissimilarity, align 8, !dbg !1524
  %and88 = and i64 %73, 15, !dbg !1526
  %cmp89 = icmp eq i64 %and88, 0, !dbg !1527
  br i1 %cmp89, label %if.then91, label %if.end101, !dbg !1528

if.then91:                                        ; preds = %for.end86
  %74 = load ptr, ptr %edit.addr, align 8, !dbg !1529
  %segment_cache92 = getelementptr inbounds %struct.assoc_array_edit, ptr %74, i32 0, i32 16, !dbg !1532
  %arrayidx93 = getelementptr [17 x i8], ptr %segment_cache92, i64 0, i64 16, !dbg !1529
  %75 = load i8, ptr %arrayidx93, align 8, !dbg !1529
  %conv94 = zext i8 %75 to i64, !dbg !1529
  %76 = load i64, ptr %base_seg, align 8, !dbg !1533
  %xor95 = xor i64 %conv94, %76, !dbg !1534
  %cmp96 = icmp eq i64 %xor95, 0, !dbg !1535
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !1536

if.then98:                                        ; preds = %if.then91
  br label %all_leaves_cluster_together, !dbg !1537

if.end99:                                         ; preds = %if.then91
  store i32 0, ptr %tmp100, align 4, !dbg !1538
  %77 = load i32, ptr %tmp100, align 4, !dbg !1541
  br label %if.end101, !dbg !1542

if.end101:                                        ; preds = %if.end99, %for.end86
  br label %split_node, !dbg !1543

split_node:                                       ; preds = %if.end101, %if.then70
  call void @llvm.dbg.label(metadata !1279), !dbg !1544
  store i32 0, ptr %tmp102, align 4, !dbg !1545
  %78 = load i32, ptr %tmp102, align 4, !dbg !1548
  %79 = load ptr, ptr %new_n0, align 8, !dbg !1549
  %call103 = call ptr @assoc_array_node_to_ptr(ptr noundef %79) #15, !dbg !1550
  %80 = load ptr, ptr %edit.addr, align 8, !dbg !1551
  %set = getelementptr inbounds %struct.assoc_array_edit, ptr %80, i32 0, i32 14, !dbg !1552
  %arrayidx104 = getelementptr [2 x %struct.anon.1], ptr %set, i64 0, i64 0, !dbg !1551
  %to = getelementptr inbounds %struct.anon.1, ptr %arrayidx104, i32 0, i32 1, !dbg !1553
  store ptr %call103, ptr %to, align 8, !dbg !1554
  %81 = load ptr, ptr %node, align 8, !dbg !1555
  %back_pointer = getelementptr inbounds %struct.assoc_array_node, ptr %81, i32 0, i32 0, !dbg !1556
  %82 = load ptr, ptr %back_pointer, align 8, !dbg !1556
  %83 = load ptr, ptr %new_n0, align 8, !dbg !1557
  %back_pointer105 = getelementptr inbounds %struct.assoc_array_node, ptr %83, i32 0, i32 0, !dbg !1558
  store ptr %82, ptr %back_pointer105, align 8, !dbg !1559
  %84 = load ptr, ptr %node, align 8, !dbg !1560
  %parent_slot = getelementptr inbounds %struct.assoc_array_node, ptr %84, i32 0, i32 1, !dbg !1561
  %85 = load i8, ptr %parent_slot, align 8, !dbg !1561
  %86 = load ptr, ptr %new_n0, align 8, !dbg !1562
  %parent_slot106 = getelementptr inbounds %struct.assoc_array_node, ptr %86, i32 0, i32 1, !dbg !1563
  store i8 %85, ptr %parent_slot106, align 8, !dbg !1564
  %87 = load ptr, ptr %new_n0, align 8, !dbg !1565
  %call107 = call ptr @assoc_array_node_to_ptr(ptr noundef %87) #15, !dbg !1566
  %88 = load ptr, ptr %new_n1, align 8, !dbg !1567
  %back_pointer108 = getelementptr inbounds %struct.assoc_array_node, ptr %88, i32 0, i32 0, !dbg !1568
  store ptr %call107, ptr %back_pointer108, align 8, !dbg !1569
  %89 = load ptr, ptr %new_n1, align 8, !dbg !1570
  %parent_slot109 = getelementptr inbounds %struct.assoc_array_node, ptr %89, i32 0, i32 1, !dbg !1571
  store i8 -1, ptr %parent_slot109, align 8, !dbg !1572
  br label %do_split_node, !dbg !1570

do_split_node:                                    ; preds = %for.end624, %split_node
  call void @llvm.dbg.label(metadata !1280), !dbg !1573
  store i32 0, ptr %tmp110, align 4, !dbg !1574
  %90 = load i32, ptr %tmp110, align 4, !dbg !1577
  %91 = load ptr, ptr %node, align 8, !dbg !1578
  %nr_leaves_on_branch = getelementptr inbounds %struct.assoc_array_node, ptr %91, i32 0, i32 3, !dbg !1579
  %92 = load i64, ptr %nr_leaves_on_branch, align 8, !dbg !1579
  %93 = load ptr, ptr %new_n0, align 8, !dbg !1580
  %nr_leaves_on_branch111 = getelementptr inbounds %struct.assoc_array_node, ptr %93, i32 0, i32 3, !dbg !1581
  store i64 %92, ptr %nr_leaves_on_branch111, align 8, !dbg !1582
  %94 = load ptr, ptr %new_n1, align 8, !dbg !1583
  %nr_leaves_on_branch112 = getelementptr inbounds %struct.assoc_array_node, ptr %94, i32 0, i32 3, !dbg !1584
  store i64 0, ptr %nr_leaves_on_branch112, align 8, !dbg !1585
  store i32 0, ptr %i, align 4, !dbg !1586
  br label %for.cond113, !dbg !1588

for.cond113:                                      ; preds = %for.inc140, %do_split_node
  %95 = load i32, ptr %i, align 4, !dbg !1589
  %cmp114 = icmp slt i32 %95, 16, !dbg !1591
  br i1 %cmp114, label %for.body116, label %for.end142, !dbg !1592

for.body116:                                      ; preds = %for.cond113
  %96 = load ptr, ptr %edit.addr, align 8, !dbg !1593
  %segment_cache117 = getelementptr inbounds %struct.assoc_array_edit, ptr %96, i32 0, i32 16, !dbg !1595
  %97 = load i32, ptr %i, align 4, !dbg !1596
  %idxprom118 = sext i32 %97 to i64, !dbg !1593
  %arrayidx119 = getelementptr [17 x i8], ptr %segment_cache117, i64 0, i64 %idxprom118, !dbg !1593
  %98 = load i8, ptr %arrayidx119, align 1, !dbg !1593
  %conv120 = zext i8 %98 to i32, !dbg !1593
  store i32 %conv120, ptr %slot, align 4, !dbg !1597
  %99 = load i32, ptr %slot, align 4, !dbg !1598
  %cmp121 = icmp ne i32 %99, 255, !dbg !1600
  br i1 %cmp121, label %if.then123, label %if.end139, !dbg !1601

if.then123:                                       ; preds = %for.body116
  %100 = load i32, ptr %i, align 4, !dbg !1602
  %add = add i32 %100, 1, !dbg !1604
  store i32 %add, ptr %j, align 4, !dbg !1605
  br label %for.cond124, !dbg !1606

for.cond124:                                      ; preds = %for.inc136, %if.then123
  %101 = load i32, ptr %j, align 4, !dbg !1607
  %cmp125 = icmp slt i32 %101, 17, !dbg !1609
  br i1 %cmp125, label %for.body127, label %for.end138, !dbg !1610

for.body127:                                      ; preds = %for.cond124
  %102 = load ptr, ptr %edit.addr, align 8, !dbg !1611
  %segment_cache128 = getelementptr inbounds %struct.assoc_array_edit, ptr %102, i32 0, i32 16, !dbg !1613
  %103 = load i32, ptr %j, align 4, !dbg !1614
  %idxprom129 = sext i32 %103 to i64, !dbg !1611
  %arrayidx130 = getelementptr [17 x i8], ptr %segment_cache128, i64 0, i64 %idxprom129, !dbg !1611
  %104 = load i8, ptr %arrayidx130, align 1, !dbg !1611
  %conv131 = zext i8 %104 to i32, !dbg !1611
  %105 = load i32, ptr %slot, align 4, !dbg !1615
  %cmp132 = icmp eq i32 %conv131, %105, !dbg !1616
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !1617

if.then134:                                       ; preds = %for.body127
  br label %found_slot_for_multiple_occupancy, !dbg !1618

if.end135:                                        ; preds = %for.body127
  br label %for.inc136, !dbg !1615

for.inc136:                                       ; preds = %if.end135
  %106 = load i32, ptr %j, align 4, !dbg !1619
  %inc137 = add i32 %106, 1, !dbg !1619
  store i32 %inc137, ptr %j, align 4, !dbg !1619
  br label %for.cond124, !dbg !1620, !llvm.loop !1621

for.end138:                                       ; preds = %for.cond124
  br label %if.end139, !dbg !1622

if.end139:                                        ; preds = %for.end138, %for.body116
  br label %for.inc140, !dbg !1623

for.inc140:                                       ; preds = %if.end139
  %107 = load i32, ptr %i, align 4, !dbg !1624
  %inc141 = add i32 %107, 1, !dbg !1624
  store i32 %inc141, ptr %i, align 4, !dbg !1624
  br label %for.cond113, !dbg !1625, !llvm.loop !1626

for.end142:                                       ; preds = %for.cond113
  br label %found_slot_for_multiple_occupancy, !dbg !1627

found_slot_for_multiple_occupancy:                ; preds = %for.end142, %if.then134
  call void @llvm.dbg.label(metadata !1281), !dbg !1628
  store i32 0, ptr %tmp143, align 4, !dbg !1629
  %108 = load i32, ptr %tmp143, align 4, !dbg !1632
  br label %do.body, !dbg !1633

do.body:                                          ; preds = %found_slot_for_multiple_occupancy
  %109 = load i32, ptr %i, align 4, !dbg !1634
  %cmp144 = icmp sge i32 %109, 16, !dbg !1634
  %lnot = xor i1 %cmp144, true, !dbg !1634
  %lnot146 = xor i1 %lnot, true, !dbg !1634
  %lnot.ext = zext i1 %lnot146 to i32, !dbg !1634
  %conv147 = sext i32 %lnot.ext to i64, !dbg !1634
  %expval = call i64 @llvm.expect.i64(i64 %conv147, i64 0), !dbg !1634
  %tobool148 = icmp ne i64 %expval, 0, !dbg !1634
  br i1 %tobool148, label %if.then149, label %if.end157, !dbg !1637

if.then149:                                       ; preds = %do.body
  br label %do.body150, !dbg !1634

do.body150:                                       ; preds = %if.then149
  br label %do.body151, !dbg !1638

do.body151:                                       ; preds = %do.body150
  br label %do.cond, !dbg !1640

do.cond:                                          ; preds = %do.body151
  br label %do.end, !dbg !1640

do.end:                                           ; preds = %do.cond
  br label %do.body152, !dbg !1638

do.body152:                                       ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 640, i32 0, i64 12) #14, !dbg !1642, !srcloc !1644
  br label %do.cond153, !dbg !1642

do.cond153:                                       ; preds = %do.body152
  br label %do.end154, !dbg !1642

do.end154:                                        ; preds = %do.cond153
  unreachable, !dbg !1638

do.cond155:                                       ; No predecessors!
  br label %do.end156, !dbg !1638

do.end156:                                        ; preds = %do.cond155
  br label %if.end157, !dbg !1638

if.end157:                                        ; preds = %do.end156, %do.body
  br label %do.cond158, !dbg !1637

do.cond158:                                       ; preds = %if.end157
  br label %do.end159, !dbg !1637

do.end159:                                        ; preds = %do.cond158
  br label %do.body160, !dbg !1645

do.body160:                                       ; preds = %do.end159
  %110 = load i32, ptr %j, align 4, !dbg !1646
  %cmp161 = icmp sge i32 %110, 17, !dbg !1646
  %lnot163 = xor i1 %cmp161, true, !dbg !1646
  %lnot165 = xor i1 %lnot163, true, !dbg !1646
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !1646
  %conv167 = sext i32 %lnot.ext166 to i64, !dbg !1646
  %expval168 = call i64 @llvm.expect.i64(i64 %conv167, i64 0), !dbg !1646
  %tobool169 = icmp ne i64 %expval168, 0, !dbg !1646
  br i1 %tobool169, label %if.then170, label %if.end180, !dbg !1649

if.then170:                                       ; preds = %do.body160
  br label %do.body171, !dbg !1646

do.body171:                                       ; preds = %if.then170
  br label %do.body172, !dbg !1650

do.body172:                                       ; preds = %do.body171
  br label %do.cond173, !dbg !1652

do.cond173:                                       ; preds = %do.body172
  br label %do.end174, !dbg !1652

do.end174:                                        ; preds = %do.cond173
  br label %do.body175, !dbg !1650

do.body175:                                       ; preds = %do.end174
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 641, i32 0, i64 12) #14, !dbg !1654, !srcloc !1656
  br label %do.cond176, !dbg !1654

do.cond176:                                       ; preds = %do.body175
  br label %do.end177, !dbg !1654

do.end177:                                        ; preds = %do.cond176
  unreachable, !dbg !1650

do.cond178:                                       ; No predecessors!
  br label %do.end179, !dbg !1650

do.end179:                                        ; preds = %do.cond178
  br label %if.end180, !dbg !1650

if.end180:                                        ; preds = %do.end179, %do.body160
  br label %do.cond181, !dbg !1649

do.cond181:                                       ; preds = %if.end180
  br label %do.end182, !dbg !1649

do.end182:                                        ; preds = %do.cond181
  br label %do.body183, !dbg !1657

do.body183:                                       ; preds = %do.end182
  %111 = load i32, ptr %slot, align 4, !dbg !1658
  %cmp184 = icmp sge i32 %111, 16, !dbg !1658
  %lnot186 = xor i1 %cmp184, true, !dbg !1658
  %lnot188 = xor i1 %lnot186, true, !dbg !1658
  %lnot.ext189 = zext i1 %lnot188 to i32, !dbg !1658
  %conv190 = sext i32 %lnot.ext189 to i64, !dbg !1658
  %expval191 = call i64 @llvm.expect.i64(i64 %conv190, i64 0), !dbg !1658
  %tobool192 = icmp ne i64 %expval191, 0, !dbg !1658
  br i1 %tobool192, label %if.then193, label %if.end203, !dbg !1661

if.then193:                                       ; preds = %do.body183
  br label %do.body194, !dbg !1658

do.body194:                                       ; preds = %if.then193
  br label %do.body195, !dbg !1662

do.body195:                                       ; preds = %do.body194
  br label %do.cond196, !dbg !1664

do.cond196:                                       ; preds = %do.body195
  br label %do.end197, !dbg !1664

do.end197:                                        ; preds = %do.cond196
  br label %do.body198, !dbg !1662

do.body198:                                       ; preds = %do.end197
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 642, i32 0, i64 12) #14, !dbg !1666, !srcloc !1668
  br label %do.cond199, !dbg !1666

do.cond199:                                       ; preds = %do.body198
  br label %do.end200, !dbg !1666

do.end200:                                        ; preds = %do.cond199
  unreachable, !dbg !1662

do.cond201:                                       ; No predecessors!
  br label %do.end202, !dbg !1662

do.end202:                                        ; preds = %do.cond201
  br label %if.end203, !dbg !1662

if.end203:                                        ; preds = %do.end202, %do.body183
  br label %do.cond204, !dbg !1661

do.cond204:                                       ; preds = %if.end203
  br label %do.end205, !dbg !1661

do.end205:                                        ; preds = %do.cond204
  %112 = load i32, ptr %slot, align 4, !dbg !1669
  %conv206 = trunc i32 %112 to i8, !dbg !1669
  %113 = load ptr, ptr %new_n1, align 8, !dbg !1670
  %parent_slot207 = getelementptr inbounds %struct.assoc_array_node, ptr %113, i32 0, i32 1, !dbg !1671
  store i8 %conv206, ptr %parent_slot207, align 8, !dbg !1672
  store i32 0, ptr %i, align 4, !dbg !1673
  br label %for.cond208, !dbg !1675

for.cond208:                                      ; preds = %for.inc227, %do.end205
  %114 = load i32, ptr %i, align 4, !dbg !1676
  %cmp209 = icmp slt i32 %114, 16, !dbg !1678
  br i1 %cmp209, label %for.body211, label %for.end229, !dbg !1679

for.body211:                                      ; preds = %for.cond208
  %115 = load ptr, ptr %node, align 8, !dbg !1680
  %slots212 = getelementptr inbounds %struct.assoc_array_node, ptr %115, i32 0, i32 2, !dbg !1682
  %116 = load i32, ptr %i, align 4, !dbg !1683
  %idxprom213 = sext i32 %116 to i64, !dbg !1680
  %arrayidx214 = getelementptr [16 x ptr], ptr %slots212, i64 0, i64 %idxprom213, !dbg !1680
  %117 = load ptr, ptr %arrayidx214, align 8, !dbg !1680
  %call215 = call zeroext i1 @assoc_array_ptr_is_meta(ptr noundef %117) #15, !dbg !1684
  br i1 %call215, label %if.then216, label %if.else, !dbg !1685

if.then216:                                       ; preds = %for.body211
  %118 = load ptr, ptr %node, align 8, !dbg !1686
  %slots217 = getelementptr inbounds %struct.assoc_array_node, ptr %118, i32 0, i32 2, !dbg !1687
  %119 = load i32, ptr %i, align 4, !dbg !1688
  %idxprom218 = sext i32 %119 to i64, !dbg !1686
  %arrayidx219 = getelementptr [16 x ptr], ptr %slots217, i64 0, i64 %idxprom218, !dbg !1686
  %120 = load ptr, ptr %arrayidx219, align 8, !dbg !1686
  %121 = load ptr, ptr %new_n0, align 8, !dbg !1689
  %slots220 = getelementptr inbounds %struct.assoc_array_node, ptr %121, i32 0, i32 2, !dbg !1690
  %122 = load i32, ptr %i, align 4, !dbg !1691
  %idxprom221 = sext i32 %122 to i64, !dbg !1689
  %arrayidx222 = getelementptr [16 x ptr], ptr %slots220, i64 0, i64 %idxprom221, !dbg !1689
  store ptr %120, ptr %arrayidx222, align 8, !dbg !1692
  br label %if.end226, !dbg !1689

if.else:                                          ; preds = %for.body211
  %123 = load ptr, ptr %new_n0, align 8, !dbg !1693
  %slots223 = getelementptr inbounds %struct.assoc_array_node, ptr %123, i32 0, i32 2, !dbg !1694
  %124 = load i32, ptr %i, align 4, !dbg !1695
  %idxprom224 = sext i32 %124 to i64, !dbg !1693
  %arrayidx225 = getelementptr [16 x ptr], ptr %slots223, i64 0, i64 %idxprom224, !dbg !1693
  store ptr null, ptr %arrayidx225, align 8, !dbg !1696
  br label %if.end226

if.end226:                                        ; preds = %if.else, %if.then216
  br label %for.inc227, !dbg !1697

for.inc227:                                       ; preds = %if.end226
  %125 = load i32, ptr %i, align 4, !dbg !1698
  %inc228 = add i32 %125, 1, !dbg !1698
  store i32 %inc228, ptr %i, align 4, !dbg !1698
  br label %for.cond208, !dbg !1699, !llvm.loop !1700

for.end229:                                       ; preds = %for.cond208
  br label %do.body230, !dbg !1702

do.body230:                                       ; preds = %for.end229
  %126 = load ptr, ptr %new_n0, align 8, !dbg !1703
  %slots231 = getelementptr inbounds %struct.assoc_array_node, ptr %126, i32 0, i32 2, !dbg !1703
  %127 = load i32, ptr %slot, align 4, !dbg !1703
  %idxprom232 = sext i32 %127 to i64, !dbg !1703
  %arrayidx233 = getelementptr [16 x ptr], ptr %slots231, i64 0, i64 %idxprom232, !dbg !1703
  %128 = load ptr, ptr %arrayidx233, align 8, !dbg !1703
  %cmp234 = icmp ne ptr %128, null, !dbg !1703
  %lnot236 = xor i1 %cmp234, true, !dbg !1703
  %lnot238 = xor i1 %lnot236, true, !dbg !1703
  %lnot.ext239 = zext i1 %lnot238 to i32, !dbg !1703
  %conv240 = sext i32 %lnot.ext239 to i64, !dbg !1703
  %expval241 = call i64 @llvm.expect.i64(i64 %conv240, i64 0), !dbg !1703
  %tobool242 = icmp ne i64 %expval241, 0, !dbg !1703
  br i1 %tobool242, label %if.then243, label %if.end253, !dbg !1706

if.then243:                                       ; preds = %do.body230
  br label %do.body244, !dbg !1703

do.body244:                                       ; preds = %if.then243
  br label %do.body245, !dbg !1707

do.body245:                                       ; preds = %do.body244
  br label %do.cond246, !dbg !1709

do.cond246:                                       ; preds = %do.body245
  br label %do.end247, !dbg !1709

do.end247:                                        ; preds = %do.cond246
  br label %do.body248, !dbg !1707

do.body248:                                       ; preds = %do.end247
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 652, i32 0, i64 12) #14, !dbg !1711, !srcloc !1713
  br label %do.cond249, !dbg !1711

do.cond249:                                       ; preds = %do.body248
  br label %do.end250, !dbg !1711

do.end250:                                        ; preds = %do.cond249
  unreachable, !dbg !1707

do.cond251:                                       ; No predecessors!
  br label %do.end252, !dbg !1707

do.end252:                                        ; preds = %do.cond251
  br label %if.end253, !dbg !1707

if.end253:                                        ; preds = %do.end252, %do.body230
  br label %do.cond254, !dbg !1706

do.cond254:                                       ; preds = %if.end253
  br label %do.end255, !dbg !1706

do.end255:                                        ; preds = %do.cond254
  %129 = load ptr, ptr %new_n1, align 8, !dbg !1714
  %call256 = call ptr @assoc_array_node_to_ptr(ptr noundef %129) #15, !dbg !1715
  %130 = load ptr, ptr %new_n0, align 8, !dbg !1716
  %slots257 = getelementptr inbounds %struct.assoc_array_node, ptr %130, i32 0, i32 2, !dbg !1717
  %131 = load i32, ptr %slot, align 4, !dbg !1718
  %idxprom258 = sext i32 %131 to i64, !dbg !1716
  %arrayidx259 = getelementptr [16 x ptr], ptr %slots257, i64 0, i64 %idxprom258, !dbg !1716
  store ptr %call256, ptr %arrayidx259, align 8, !dbg !1719
  store i32 -1, ptr %free_slot, align 4, !dbg !1720
  store i32 0, ptr %next_slot, align 4, !dbg !1721
  store i32 0, ptr %i, align 4, !dbg !1722
  br label %for.cond260, !dbg !1724

for.cond260:                                      ; preds = %for.inc303, %do.end255
  %132 = load i32, ptr %i, align 4, !dbg !1725
  %cmp261 = icmp slt i32 %132, 16, !dbg !1727
  br i1 %cmp261, label %for.body263, label %for.end305, !dbg !1728

for.body263:                                      ; preds = %for.cond260
  %133 = load ptr, ptr %node, align 8, !dbg !1729
  %slots264 = getelementptr inbounds %struct.assoc_array_node, ptr %133, i32 0, i32 2, !dbg !1732
  %134 = load i32, ptr %i, align 4, !dbg !1733
  %idxprom265 = sext i32 %134 to i64, !dbg !1729
  %arrayidx266 = getelementptr [16 x ptr], ptr %slots264, i64 0, i64 %idxprom265, !dbg !1729
  %135 = load ptr, ptr %arrayidx266, align 8, !dbg !1729
  %call267 = call zeroext i1 @assoc_array_ptr_is_meta(ptr noundef %135) #15, !dbg !1734
  br i1 %call267, label %if.then268, label %if.end269, !dbg !1735

if.then268:                                       ; preds = %for.body263
  br label %for.inc303, !dbg !1736

if.end269:                                        ; preds = %for.body263
  %136 = load ptr, ptr %edit.addr, align 8, !dbg !1737
  %segment_cache270 = getelementptr inbounds %struct.assoc_array_edit, ptr %136, i32 0, i32 16, !dbg !1739
  %137 = load i32, ptr %i, align 4, !dbg !1740
  %idxprom271 = sext i32 %137 to i64, !dbg !1737
  %arrayidx272 = getelementptr [17 x i8], ptr %segment_cache270, i64 0, i64 %idxprom271, !dbg !1737
  %138 = load i8, ptr %arrayidx272, align 1, !dbg !1737
  %conv273 = zext i8 %138 to i32, !dbg !1737
  %139 = load i32, ptr %slot, align 4, !dbg !1741
  %cmp274 = icmp eq i32 %conv273, %139, !dbg !1742
  br i1 %cmp274, label %if.then276, label %if.else286, !dbg !1743

if.then276:                                       ; preds = %if.end269
  %140 = load ptr, ptr %node, align 8, !dbg !1744
  %slots277 = getelementptr inbounds %struct.assoc_array_node, ptr %140, i32 0, i32 2, !dbg !1746
  %141 = load i32, ptr %i, align 4, !dbg !1747
  %idxprom278 = sext i32 %141 to i64, !dbg !1744
  %arrayidx279 = getelementptr [16 x ptr], ptr %slots277, i64 0, i64 %idxprom278, !dbg !1744
  %142 = load ptr, ptr %arrayidx279, align 8, !dbg !1744
  %143 = load ptr, ptr %new_n1, align 8, !dbg !1748
  %slots280 = getelementptr inbounds %struct.assoc_array_node, ptr %143, i32 0, i32 2, !dbg !1749
  %144 = load i32, ptr %next_slot, align 4, !dbg !1750
  %inc281 = add i32 %144, 1, !dbg !1750
  store i32 %inc281, ptr %next_slot, align 4, !dbg !1750
  %idxprom282 = sext i32 %144 to i64, !dbg !1748
  %arrayidx283 = getelementptr [16 x ptr], ptr %slots280, i64 0, i64 %idxprom282, !dbg !1748
  store ptr %142, ptr %arrayidx283, align 8, !dbg !1751
  %145 = load ptr, ptr %new_n1, align 8, !dbg !1752
  %nr_leaves_on_branch284 = getelementptr inbounds %struct.assoc_array_node, ptr %145, i32 0, i32 3, !dbg !1753
  %146 = load i64, ptr %nr_leaves_on_branch284, align 8, !dbg !1754
  %inc285 = add i64 %146, 1, !dbg !1754
  store i64 %inc285, ptr %nr_leaves_on_branch284, align 8, !dbg !1754
  br label %if.end302, !dbg !1755

if.else286:                                       ; preds = %if.end269
  br label %do.body287, !dbg !1756

do.body287:                                       ; preds = %do.cond289, %if.else286
  %147 = load i32, ptr %free_slot, align 4, !dbg !1758
  %inc288 = add i32 %147, 1, !dbg !1758
  store i32 %inc288, ptr %free_slot, align 4, !dbg !1758
  br label %do.cond289, !dbg !1760

do.cond289:                                       ; preds = %do.body287
  %148 = load ptr, ptr %new_n0, align 8, !dbg !1761
  %slots290 = getelementptr inbounds %struct.assoc_array_node, ptr %148, i32 0, i32 2, !dbg !1762
  %149 = load i32, ptr %free_slot, align 4, !dbg !1763
  %idxprom291 = sext i32 %149 to i64, !dbg !1761
  %arrayidx292 = getelementptr [16 x ptr], ptr %slots290, i64 0, i64 %idxprom291, !dbg !1761
  %150 = load ptr, ptr %arrayidx292, align 8, !dbg !1761
  %cmp293 = icmp ne ptr %150, null, !dbg !1764
  br i1 %cmp293, label %do.body287, label %do.end295, !dbg !1760, !llvm.loop !1765

do.end295:                                        ; preds = %do.cond289
  %151 = load ptr, ptr %node, align 8, !dbg !1767
  %slots296 = getelementptr inbounds %struct.assoc_array_node, ptr %151, i32 0, i32 2, !dbg !1768
  %152 = load i32, ptr %i, align 4, !dbg !1769
  %idxprom297 = sext i32 %152 to i64, !dbg !1767
  %arrayidx298 = getelementptr [16 x ptr], ptr %slots296, i64 0, i64 %idxprom297, !dbg !1767
  %153 = load ptr, ptr %arrayidx298, align 8, !dbg !1767
  %154 = load ptr, ptr %new_n0, align 8, !dbg !1770
  %slots299 = getelementptr inbounds %struct.assoc_array_node, ptr %154, i32 0, i32 2, !dbg !1771
  %155 = load i32, ptr %free_slot, align 4, !dbg !1772
  %idxprom300 = sext i32 %155 to i64, !dbg !1770
  %arrayidx301 = getelementptr [16 x ptr], ptr %slots299, i64 0, i64 %idxprom300, !dbg !1770
  store ptr %153, ptr %arrayidx301, align 8, !dbg !1773
  br label %if.end302

if.end302:                                        ; preds = %do.end295, %if.then276
  br label %for.inc303, !dbg !1774

for.inc303:                                       ; preds = %if.end302, %if.then268
  %156 = load i32, ptr %i, align 4, !dbg !1775
  %inc304 = add i32 %156, 1, !dbg !1775
  store i32 %inc304, ptr %i, align 4, !dbg !1775
  br label %for.cond260, !dbg !1776, !llvm.loop !1777

for.end305:                                       ; preds = %for.cond260
  store i32 0, ptr %tmp306, align 4, !dbg !1779
  %157 = load i32, ptr %tmp306, align 4, !dbg !1782
  %158 = load ptr, ptr %edit.addr, align 8, !dbg !1783
  %segment_cache307 = getelementptr inbounds %struct.assoc_array_edit, ptr %158, i32 0, i32 16, !dbg !1785
  %arrayidx308 = getelementptr [17 x i8], ptr %segment_cache307, i64 0, i64 16, !dbg !1783
  %159 = load i8, ptr %arrayidx308, align 8, !dbg !1783
  %conv309 = zext i8 %159 to i32, !dbg !1783
  %160 = load i32, ptr %slot, align 4, !dbg !1786
  %cmp310 = icmp ne i32 %conv309, %160, !dbg !1787
  br i1 %cmp310, label %if.then312, label %if.else327, !dbg !1788

if.then312:                                       ; preds = %for.end305
  br label %do.body313, !dbg !1789

do.body313:                                       ; preds = %do.cond315, %if.then312
  %161 = load i32, ptr %free_slot, align 4, !dbg !1791
  %inc314 = add i32 %161, 1, !dbg !1791
  store i32 %inc314, ptr %free_slot, align 4, !dbg !1791
  br label %do.cond315, !dbg !1793

do.cond315:                                       ; preds = %do.body313
  %162 = load ptr, ptr %new_n0, align 8, !dbg !1794
  %slots316 = getelementptr inbounds %struct.assoc_array_node, ptr %162, i32 0, i32 2, !dbg !1795
  %163 = load i32, ptr %free_slot, align 4, !dbg !1796
  %idxprom317 = sext i32 %163 to i64, !dbg !1794
  %arrayidx318 = getelementptr [16 x ptr], ptr %slots316, i64 0, i64 %idxprom317, !dbg !1794
  %164 = load ptr, ptr %arrayidx318, align 8, !dbg !1794
  %cmp319 = icmp ne ptr %164, null, !dbg !1797
  br i1 %cmp319, label %do.body313, label %do.end321, !dbg !1793, !llvm.loop !1798

do.end321:                                        ; preds = %do.cond315
  %165 = load ptr, ptr %new_n0, align 8, !dbg !1800
  %slots322 = getelementptr inbounds %struct.assoc_array_node, ptr %165, i32 0, i32 2, !dbg !1801
  %166 = load i32, ptr %free_slot, align 4, !dbg !1802
  %idxprom323 = sext i32 %166 to i64, !dbg !1800
  %arrayidx324 = getelementptr [16 x ptr], ptr %slots322, i64 0, i64 %idxprom323, !dbg !1800
  %167 = load ptr, ptr %edit.addr, align 8, !dbg !1803
  %leaf_p325 = getelementptr inbounds %struct.assoc_array_edit, ptr %167, i32 0, i32 5, !dbg !1804
  store ptr %arrayidx324, ptr %leaf_p325, align 8, !dbg !1805
  %168 = load ptr, ptr %new_n0, align 8, !dbg !1806
  %169 = load ptr, ptr %edit.addr, align 8, !dbg !1807
  %adjust_count_on326 = getelementptr inbounds %struct.assoc_array_edit, ptr %169, i32 0, i32 12, !dbg !1808
  store ptr %168, ptr %adjust_count_on326, align 8, !dbg !1809
  br label %if.end334, !dbg !1810

if.else327:                                       ; preds = %for.end305
  %170 = load ptr, ptr %new_n1, align 8, !dbg !1811
  %slots328 = getelementptr inbounds %struct.assoc_array_node, ptr %170, i32 0, i32 2, !dbg !1813
  %171 = load i32, ptr %next_slot, align 4, !dbg !1814
  %inc329 = add i32 %171, 1, !dbg !1814
  store i32 %inc329, ptr %next_slot, align 4, !dbg !1814
  %idxprom330 = sext i32 %171 to i64, !dbg !1811
  %arrayidx331 = getelementptr [16 x ptr], ptr %slots328, i64 0, i64 %idxprom330, !dbg !1811
  %172 = load ptr, ptr %edit.addr, align 8, !dbg !1815
  %leaf_p332 = getelementptr inbounds %struct.assoc_array_edit, ptr %172, i32 0, i32 5, !dbg !1816
  store ptr %arrayidx331, ptr %leaf_p332, align 8, !dbg !1817
  %173 = load ptr, ptr %new_n1, align 8, !dbg !1818
  %174 = load ptr, ptr %edit.addr, align 8, !dbg !1819
  %adjust_count_on333 = getelementptr inbounds %struct.assoc_array_edit, ptr %174, i32 0, i32 12, !dbg !1820
  store ptr %173, ptr %adjust_count_on333, align 8, !dbg !1821
  br label %if.end334

if.end334:                                        ; preds = %if.else327, %do.end321
  br label %do.body335, !dbg !1822

do.body335:                                       ; preds = %if.end334
  %175 = load i32, ptr %next_slot, align 4, !dbg !1823
  %cmp336 = icmp sle i32 %175, 1, !dbg !1823
  %lnot338 = xor i1 %cmp336, true, !dbg !1823
  %lnot340 = xor i1 %lnot338, true, !dbg !1823
  %lnot.ext341 = zext i1 %lnot340 to i32, !dbg !1823
  %conv342 = sext i32 %lnot.ext341 to i64, !dbg !1823
  %expval343 = call i64 @llvm.expect.i64(i64 %conv342, i64 0), !dbg !1823
  %tobool344 = icmp ne i64 %expval343, 0, !dbg !1823
  br i1 %tobool344, label %if.then345, label %if.end355, !dbg !1826

if.then345:                                       ; preds = %do.body335
  br label %do.body346, !dbg !1823

do.body346:                                       ; preds = %if.then345
  br label %do.body347, !dbg !1827

do.body347:                                       ; preds = %do.body346
  br label %do.cond348, !dbg !1829

do.cond348:                                       ; preds = %do.body347
  br label %do.end349, !dbg !1829

do.end349:                                        ; preds = %do.cond348
  br label %do.body350, !dbg !1827

do.body350:                                       ; preds = %do.end349
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 685, i32 0, i64 12) #14, !dbg !1831, !srcloc !1833
  br label %do.cond351, !dbg !1831

do.cond351:                                       ; preds = %do.body350
  br label %do.end352, !dbg !1831

do.end352:                                        ; preds = %do.cond351
  unreachable, !dbg !1827

do.cond353:                                       ; No predecessors!
  br label %do.end354, !dbg !1827

do.end354:                                        ; preds = %do.cond353
  br label %if.end355, !dbg !1827

if.end355:                                        ; preds = %do.end354, %do.body335
  br label %do.cond356, !dbg !1826

do.cond356:                                       ; preds = %if.end355
  br label %do.end357, !dbg !1826

do.end357:                                        ; preds = %do.cond356
  %176 = load ptr, ptr %new_n0, align 8, !dbg !1834
  %call358 = call ptr @assoc_array_node_to_ptr(ptr noundef %176) #15, !dbg !1835
  %177 = load ptr, ptr %edit.addr, align 8, !dbg !1836
  %set_backpointers_to = getelementptr inbounds %struct.assoc_array_edit, ptr %177, i32 0, i32 11, !dbg !1837
  store ptr %call358, ptr %set_backpointers_to, align 8, !dbg !1838
  store i32 0, ptr %i, align 4, !dbg !1839
  br label %for.cond359, !dbg !1841

for.cond359:                                      ; preds = %for.inc409, %do.end357
  %178 = load i32, ptr %i, align 4, !dbg !1842
  %cmp360 = icmp slt i32 %178, 16, !dbg !1844
  br i1 %cmp360, label %for.body362, label %for.end411, !dbg !1845

for.body362:                                      ; preds = %for.cond359
  %179 = load ptr, ptr %edit.addr, align 8, !dbg !1846
  %segment_cache363 = getelementptr inbounds %struct.assoc_array_edit, ptr %179, i32 0, i32 16, !dbg !1849
  %180 = load i32, ptr %i, align 4, !dbg !1850
  %idxprom364 = sext i32 %180 to i64, !dbg !1846
  %arrayidx365 = getelementptr [17 x i8], ptr %segment_cache363, i64 0, i64 %idxprom364, !dbg !1846
  %181 = load i8, ptr %arrayidx365, align 1, !dbg !1846
  %conv366 = zext i8 %181 to i32, !dbg !1846
  %cmp367 = icmp eq i32 %conv366, 255, !dbg !1851
  br i1 %cmp367, label %if.then369, label %if.end408, !dbg !1852

if.then369:                                       ; preds = %for.body362
  %182 = load ptr, ptr %node, align 8, !dbg !1853
  %slots370 = getelementptr inbounds %struct.assoc_array_node, ptr %182, i32 0, i32 2, !dbg !1855
  %183 = load i32, ptr %i, align 4, !dbg !1856
  %idxprom371 = sext i32 %183 to i64, !dbg !1853
  %arrayidx372 = getelementptr [16 x ptr], ptr %slots370, i64 0, i64 %idxprom371, !dbg !1853
  %184 = load ptr, ptr %arrayidx372, align 8, !dbg !1853
  store ptr %184, ptr %ptr, align 8, !dbg !1857
  br label %do.body373, !dbg !1858

do.body373:                                       ; preds = %if.then369
  %185 = load ptr, ptr %ptr, align 8, !dbg !1859
  %call374 = call zeroext i1 @assoc_array_ptr_is_leaf(ptr noundef %185) #15, !dbg !1859
  %lnot375 = xor i1 %call374, true, !dbg !1859
  %lnot377 = xor i1 %lnot375, true, !dbg !1859
  %lnot.ext378 = zext i1 %lnot377 to i32, !dbg !1859
  %conv379 = sext i32 %lnot.ext378 to i64, !dbg !1859
  %expval380 = call i64 @llvm.expect.i64(i64 %conv379, i64 0), !dbg !1859
  %tobool381 = icmp ne i64 %expval380, 0, !dbg !1859
  br i1 %tobool381, label %if.then382, label %if.end392, !dbg !1862

if.then382:                                       ; preds = %do.body373
  br label %do.body383, !dbg !1859

do.body383:                                       ; preds = %if.then382
  br label %do.body384, !dbg !1863

do.body384:                                       ; preds = %do.body383
  br label %do.cond385, !dbg !1865

do.cond385:                                       ; preds = %do.body384
  br label %do.end386, !dbg !1865

do.end386:                                        ; preds = %do.cond385
  br label %do.body387, !dbg !1863

do.body387:                                       ; preds = %do.end386
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 691, i32 0, i64 12) #14, !dbg !1867, !srcloc !1869
  br label %do.cond388, !dbg !1867

do.cond388:                                       ; preds = %do.body387
  br label %do.end389, !dbg !1867

do.end389:                                        ; preds = %do.cond388
  unreachable, !dbg !1863

do.cond390:                                       ; No predecessors!
  br label %do.end391, !dbg !1863

do.end391:                                        ; preds = %do.cond390
  br label %if.end392, !dbg !1863

if.end392:                                        ; preds = %do.end391, %do.body373
  br label %do.cond393, !dbg !1862

do.cond393:                                       ; preds = %if.end392
  br label %do.end394, !dbg !1862

do.end394:                                        ; preds = %do.cond393
  %186 = load ptr, ptr %ptr, align 8, !dbg !1870
  %call395 = call zeroext i1 @assoc_array_ptr_is_node(ptr noundef %186) #15, !dbg !1872
  br i1 %call395, label %if.then396, label %if.else401, !dbg !1873

if.then396:                                       ; preds = %do.end394
  %187 = load ptr, ptr %ptr, align 8, !dbg !1874
  %call397 = call ptr @assoc_array_ptr_to_node(ptr noundef %187) #15, !dbg !1876
  store ptr %call397, ptr %side, align 8, !dbg !1877
  %188 = load ptr, ptr %side, align 8, !dbg !1878
  %back_pointer398 = getelementptr inbounds %struct.assoc_array_node, ptr %188, i32 0, i32 0, !dbg !1879
  %189 = load ptr, ptr %edit.addr, align 8, !dbg !1880
  %set_backpointers = getelementptr inbounds %struct.assoc_array_edit, ptr %189, i32 0, i32 10, !dbg !1881
  %190 = load i32, ptr %i, align 4, !dbg !1882
  %idxprom399 = sext i32 %190 to i64, !dbg !1880
  %arrayidx400 = getelementptr [16 x ptr], ptr %set_backpointers, i64 0, i64 %idxprom399, !dbg !1880
  store ptr %back_pointer398, ptr %arrayidx400, align 8, !dbg !1883
  br label %if.end407, !dbg !1884

if.else401:                                       ; preds = %do.end394
  %191 = load ptr, ptr %ptr, align 8, !dbg !1885
  %call402 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %191) #15, !dbg !1887
  store ptr %call402, ptr %shortcut, align 8, !dbg !1888
  %192 = load ptr, ptr %shortcut, align 8, !dbg !1889
  %back_pointer403 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %192, i32 0, i32 0, !dbg !1890
  %193 = load ptr, ptr %edit.addr, align 8, !dbg !1891
  %set_backpointers404 = getelementptr inbounds %struct.assoc_array_edit, ptr %193, i32 0, i32 10, !dbg !1892
  %194 = load i32, ptr %i, align 4, !dbg !1893
  %idxprom405 = sext i32 %194 to i64, !dbg !1891
  %arrayidx406 = getelementptr [16 x ptr], ptr %set_backpointers404, i64 0, i64 %idxprom405, !dbg !1891
  store ptr %back_pointer403, ptr %arrayidx406, align 8, !dbg !1894
  br label %if.end407

if.end407:                                        ; preds = %if.else401, %if.then396
  br label %if.end408, !dbg !1895

if.end408:                                        ; preds = %if.end407, %for.body362
  br label %for.inc409, !dbg !1896

for.inc409:                                       ; preds = %if.end408
  %195 = load i32, ptr %i, align 4, !dbg !1897
  %inc410 = add i32 %195, 1, !dbg !1897
  store i32 %inc410, ptr %i, align 4, !dbg !1897
  br label %for.cond359, !dbg !1898, !llvm.loop !1899

for.end411:                                       ; preds = %for.cond359
  %196 = load ptr, ptr %node, align 8, !dbg !1901
  %back_pointer412 = getelementptr inbounds %struct.assoc_array_node, ptr %196, i32 0, i32 0, !dbg !1902
  %197 = load ptr, ptr %back_pointer412, align 8, !dbg !1902
  store ptr %197, ptr %ptr, align 8, !dbg !1903
  %198 = load ptr, ptr %ptr, align 8, !dbg !1904
  %tobool413 = icmp ne ptr %198, null, !dbg !1904
  br i1 %tobool413, label %if.else418, label %if.then414, !dbg !1906

if.then414:                                       ; preds = %for.end411
  %199 = load ptr, ptr %edit.addr, align 8, !dbg !1907
  %array = getelementptr inbounds %struct.assoc_array_edit, ptr %199, i32 0, i32 1, !dbg !1908
  %200 = load ptr, ptr %array, align 8, !dbg !1908
  %root = getelementptr inbounds %struct.assoc_array, ptr %200, i32 0, i32 0, !dbg !1909
  %201 = load ptr, ptr %edit.addr, align 8, !dbg !1910
  %set415 = getelementptr inbounds %struct.assoc_array_edit, ptr %201, i32 0, i32 14, !dbg !1911
  %arrayidx416 = getelementptr [2 x %struct.anon.1], ptr %set415, i64 0, i64 0, !dbg !1910
  %ptr417 = getelementptr inbounds %struct.anon.1, ptr %arrayidx416, i32 0, i32 0, !dbg !1912
  store ptr %root, ptr %ptr417, align 8, !dbg !1913
  br label %if.end435, !dbg !1910

if.else418:                                       ; preds = %for.end411
  %202 = load ptr, ptr %ptr, align 8, !dbg !1914
  %call419 = call zeroext i1 @assoc_array_ptr_is_node(ptr noundef %202) #15, !dbg !1916
  br i1 %call419, label %if.then420, label %if.else429, !dbg !1917

if.then420:                                       ; preds = %if.else418
  %203 = load ptr, ptr %ptr, align 8, !dbg !1918
  %call421 = call ptr @assoc_array_ptr_to_node(ptr noundef %203) #15, !dbg !1919
  %slots422 = getelementptr inbounds %struct.assoc_array_node, ptr %call421, i32 0, i32 2, !dbg !1920
  %204 = load ptr, ptr %node, align 8, !dbg !1921
  %parent_slot423 = getelementptr inbounds %struct.assoc_array_node, ptr %204, i32 0, i32 1, !dbg !1922
  %205 = load i8, ptr %parent_slot423, align 8, !dbg !1922
  %idxprom424 = zext i8 %205 to i64, !dbg !1919
  %arrayidx425 = getelementptr [16 x ptr], ptr %slots422, i64 0, i64 %idxprom424, !dbg !1919
  %206 = load ptr, ptr %edit.addr, align 8, !dbg !1923
  %set426 = getelementptr inbounds %struct.assoc_array_edit, ptr %206, i32 0, i32 14, !dbg !1924
  %arrayidx427 = getelementptr [2 x %struct.anon.1], ptr %set426, i64 0, i64 0, !dbg !1923
  %ptr428 = getelementptr inbounds %struct.anon.1, ptr %arrayidx427, i32 0, i32 0, !dbg !1925
  store ptr %arrayidx425, ptr %ptr428, align 8, !dbg !1926
  br label %if.end434, !dbg !1923

if.else429:                                       ; preds = %if.else418
  %207 = load ptr, ptr %ptr, align 8, !dbg !1927
  %call430 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %207) #15, !dbg !1928
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call430, i32 0, i32 3, !dbg !1929
  %208 = load ptr, ptr %edit.addr, align 8, !dbg !1930
  %set431 = getelementptr inbounds %struct.assoc_array_edit, ptr %208, i32 0, i32 14, !dbg !1931
  %arrayidx432 = getelementptr [2 x %struct.anon.1], ptr %set431, i64 0, i64 0, !dbg !1930
  %ptr433 = getelementptr inbounds %struct.anon.1, ptr %arrayidx432, i32 0, i32 0, !dbg !1932
  store ptr %next_node, ptr %ptr433, align 8, !dbg !1933
  br label %if.end434

if.end434:                                        ; preds = %if.else429, %if.then420
  br label %if.end435

if.end435:                                        ; preds = %if.end434, %if.then414
  %209 = load ptr, ptr %node, align 8, !dbg !1934
  %call436 = call ptr @assoc_array_node_to_ptr(ptr noundef %209) #15, !dbg !1935
  %210 = load ptr, ptr %edit.addr, align 8, !dbg !1936
  %excised_meta = getelementptr inbounds %struct.assoc_array_edit, ptr %210, i32 0, i32 8, !dbg !1937
  %arrayidx437 = getelementptr [1 x ptr], ptr %excised_meta, i64 0, i64 0, !dbg !1936
  store ptr %call436, ptr %arrayidx437, align 8, !dbg !1938
  store i32 0, ptr %tmp438, align 4, !dbg !1939
  %211 = load i32, ptr %tmp438, align 4, !dbg !1942
  store i1 true, ptr %retval, align 1, !dbg !1943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1943

all_leaves_cluster_together:                      ; preds = %if.then98
  call void @llvm.dbg.label(metadata !1282), !dbg !1944
  store i32 0, ptr %tmp439, align 4, !dbg !1945
  %212 = load i32, ptr %tmp439, align 4, !dbg !1948
  store i32 2147483647, ptr %diff, align 4, !dbg !1949
  store i32 0, ptr %i, align 4, !dbg !1950
  br label %for.cond440, !dbg !1951

for.cond440:                                      ; preds = %for.inc476, %all_leaves_cluster_together
  %213 = load i32, ptr %i, align 4, !dbg !1952
  %cmp441 = icmp slt i32 %213, 16, !dbg !1953
  br i1 %cmp441, label %for.body443, label %for.end478, !dbg !1954

for.body443:                                      ; preds = %for.cond440
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #14, !dbg !1955
  call void @llvm.dbg.declare(metadata ptr %x, metadata !1283, metadata !DIExpression()), !dbg !1956
  %214 = load ptr, ptr %ops.addr, align 8, !dbg !1957
  %diff_objects = getelementptr inbounds %struct.assoc_array_ops, ptr %214, i32 0, i32 3, !dbg !1958
  %215 = load ptr, ptr %diff_objects, align 8, !dbg !1958
  %216 = load ptr, ptr %node, align 8, !dbg !1959
  %slots444 = getelementptr inbounds %struct.assoc_array_node, ptr %216, i32 0, i32 2, !dbg !1960
  %217 = load i32, ptr %i, align 4, !dbg !1961
  %idxprom445 = sext i32 %217 to i64, !dbg !1959
  %arrayidx446 = getelementptr [16 x ptr], ptr %slots444, i64 0, i64 %idxprom445, !dbg !1959
  %218 = load ptr, ptr %arrayidx446, align 8, !dbg !1959
  %call447 = call ptr @assoc_array_ptr_to_leaf(ptr noundef %218) #15, !dbg !1962
  %219 = load ptr, ptr %index_key.addr, align 8, !dbg !1963
  %call448 = call i32 %215(ptr noundef %call447, ptr noundef %219) #15, !dbg !1957
  store i32 %call448, ptr %x, align 4, !dbg !1956
  %220 = load i32, ptr %x, align 4, !dbg !1964
  %221 = load i32, ptr %diff, align 4, !dbg !1966
  %cmp449 = icmp slt i32 %220, %221, !dbg !1967
  br i1 %cmp449, label %if.then451, label %if.end475, !dbg !1968

if.then451:                                       ; preds = %for.body443
  br label %do.body452, !dbg !1969

do.body452:                                       ; preds = %if.then451
  %222 = load i32, ptr %x, align 4, !dbg !1971
  %cmp453 = icmp slt i32 %222, 0, !dbg !1971
  %lnot455 = xor i1 %cmp453, true, !dbg !1971
  %lnot457 = xor i1 %lnot455, true, !dbg !1971
  %lnot.ext458 = zext i1 %lnot457 to i32, !dbg !1971
  %conv459 = sext i32 %lnot.ext458 to i64, !dbg !1971
  %expval460 = call i64 @llvm.expect.i64(i64 %conv459, i64 0), !dbg !1971
  %tobool461 = icmp ne i64 %expval460, 0, !dbg !1971
  br i1 %tobool461, label %if.then462, label %if.end472, !dbg !1974

if.then462:                                       ; preds = %do.body452
  br label %do.body463, !dbg !1971

do.body463:                                       ; preds = %if.then462
  br label %do.body464, !dbg !1975

do.body464:                                       ; preds = %do.body463
  br label %do.cond465, !dbg !1977

do.cond465:                                       ; preds = %do.body464
  br label %do.end466, !dbg !1977

do.end466:                                        ; preds = %do.cond465
  br label %do.body467, !dbg !1975

do.body467:                                       ; preds = %do.end466
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 734, i32 0, i64 12) #14, !dbg !1979, !srcloc !1981
  br label %do.cond468, !dbg !1979

do.cond468:                                       ; preds = %do.body467
  br label %do.end469, !dbg !1979

do.end469:                                        ; preds = %do.cond468
  unreachable, !dbg !1975

do.cond470:                                       ; No predecessors!
  br label %do.end471, !dbg !1975

do.end471:                                        ; preds = %do.cond470
  br label %if.end472, !dbg !1975

if.end472:                                        ; preds = %do.end471, %do.body452
  br label %do.cond473, !dbg !1974

do.cond473:                                       ; preds = %if.end472
  br label %do.end474, !dbg !1974

do.end474:                                        ; preds = %do.cond473
  %223 = load i32, ptr %x, align 4, !dbg !1982
  store i32 %223, ptr %diff, align 4, !dbg !1983
  br label %if.end475, !dbg !1984

if.end475:                                        ; preds = %do.end474, %for.body443
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #14, !dbg !1985
  br label %for.inc476, !dbg !1986

for.inc476:                                       ; preds = %if.end475
  %224 = load i32, ptr %i, align 4, !dbg !1987
  %inc477 = add i32 %224, 1, !dbg !1987
  store i32 %inc477, ptr %i, align 4, !dbg !1987
  br label %for.cond440, !dbg !1988, !llvm.loop !1989

for.end478:                                       ; preds = %for.cond440
  br label %do.body479, !dbg !1991

do.body479:                                       ; preds = %for.end478
  %225 = load i32, ptr %diff, align 4, !dbg !1992
  %cmp480 = icmp eq i32 %225, 2147483647, !dbg !1992
  %lnot482 = xor i1 %cmp480, true, !dbg !1992
  %lnot484 = xor i1 %lnot482, true, !dbg !1992
  %lnot.ext485 = zext i1 %lnot484 to i32, !dbg !1992
  %conv486 = sext i32 %lnot.ext485 to i64, !dbg !1992
  %expval487 = call i64 @llvm.expect.i64(i64 %conv486, i64 0), !dbg !1992
  %tobool488 = icmp ne i64 %expval487, 0, !dbg !1992
  br i1 %tobool488, label %if.then489, label %if.end499, !dbg !1995

if.then489:                                       ; preds = %do.body479
  br label %do.body490, !dbg !1992

do.body490:                                       ; preds = %if.then489
  br label %do.body491, !dbg !1996

do.body491:                                       ; preds = %do.body490
  br label %do.cond492, !dbg !1998

do.cond492:                                       ; preds = %do.body491
  br label %do.end493, !dbg !1998

do.end493:                                        ; preds = %do.cond492
  br label %do.body494, !dbg !1996

do.body494:                                       ; preds = %do.end493
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 738, i32 0, i64 12) #14, !dbg !2000, !srcloc !2002
  br label %do.cond495, !dbg !2000

do.cond495:                                       ; preds = %do.body494
  br label %do.end496, !dbg !2000

do.end496:                                        ; preds = %do.cond495
  unreachable, !dbg !1996

do.cond497:                                       ; No predecessors!
  br label %do.end498, !dbg !1996

do.end498:                                        ; preds = %do.cond497
  br label %if.end499, !dbg !1996

if.end499:                                        ; preds = %do.end498, %do.body479
  br label %do.cond500, !dbg !1995

do.cond500:                                       ; preds = %if.end499
  br label %do.end501, !dbg !1995

do.end501:                                        ; preds = %do.cond500
  br label %do.body502, !dbg !2003

do.body502:                                       ; preds = %do.end501
  %226 = load i32, ptr %diff, align 4, !dbg !2004
  %227 = load i32, ptr %level, align 4, !dbg !2004
  %add503 = add i32 %227, 4, !dbg !2004
  %cmp504 = icmp slt i32 %226, %add503, !dbg !2004
  %lnot506 = xor i1 %cmp504, true, !dbg !2004
  %lnot508 = xor i1 %lnot506, true, !dbg !2004
  %lnot.ext509 = zext i1 %lnot508 to i32, !dbg !2004
  %conv510 = sext i32 %lnot.ext509 to i64, !dbg !2004
  %expval511 = call i64 @llvm.expect.i64(i64 %conv510, i64 0), !dbg !2004
  %tobool512 = icmp ne i64 %expval511, 0, !dbg !2004
  br i1 %tobool512, label %if.then513, label %if.end523, !dbg !2007

if.then513:                                       ; preds = %do.body502
  br label %do.body514, !dbg !2004

do.body514:                                       ; preds = %if.then513
  br label %do.body515, !dbg !2008

do.body515:                                       ; preds = %do.body514
  br label %do.cond516, !dbg !2010

do.cond516:                                       ; preds = %do.body515
  br label %do.end517, !dbg !2010

do.end517:                                        ; preds = %do.cond516
  br label %do.body518, !dbg !2008

do.body518:                                       ; preds = %do.end517
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 739, i32 0, i64 12) #14, !dbg !2012, !srcloc !2014
  br label %do.cond519, !dbg !2012

do.cond519:                                       ; preds = %do.body518
  br label %do.end520, !dbg !2012

do.end520:                                        ; preds = %do.cond519
  unreachable, !dbg !2008

do.cond521:                                       ; No predecessors!
  br label %do.end522, !dbg !2008

do.end522:                                        ; preds = %do.cond521
  br label %if.end523, !dbg !2008

if.end523:                                        ; preds = %do.end522, %do.body502
  br label %do.cond524, !dbg !2007

do.cond524:                                       ; preds = %if.end523
  br label %do.end525, !dbg !2007

do.end525:                                        ; preds = %do.cond524
  %228 = load i32, ptr %diff, align 4, !dbg !2015
  %sub = sub i32 %228, 1, !dbg !2015
  %or526 = or i32 %sub, 63, !dbg !2015
  %add527 = add i32 %or526, 1, !dbg !2015
  %conv528 = sext i32 %add527 to i64, !dbg !2015
  store i64 %conv528, ptr %keylen, align 8, !dbg !2016
  %229 = load i64, ptr %keylen, align 8, !dbg !2017
  %shr529 = lshr i64 %229, 6, !dbg !2017
  store i64 %shr529, ptr %keylen, align 8, !dbg !2017
  %230 = load i64, ptr %keylen, align 8, !dbg !2018
  %call530 = call i64 @size_mul(i64 noundef %230, i64 noundef 8) #15, !dbg !2018
  %call531 = call i64 @size_add(i64 noundef 24, i64 noundef %call530) #15, !dbg !2018
  %call532 = call noalias ptr @kzalloc(i64 noundef %call531, i32 noundef 3264) #16, !dbg !2019
  store ptr %call532, ptr %new_s0, align 8, !dbg !2020
  %231 = load ptr, ptr %new_s0, align 8, !dbg !2021
  %tobool533 = icmp ne ptr %231, null, !dbg !2021
  br i1 %tobool533, label %if.end535, label %if.then534, !dbg !2023

if.then534:                                       ; preds = %do.end525
  store i1 false, ptr %retval, align 1, !dbg !2024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2024

if.end535:                                        ; preds = %do.end525
  %232 = load ptr, ptr %new_s0, align 8, !dbg !2025
  %call536 = call ptr @assoc_array_shortcut_to_ptr(ptr noundef %232) #15, !dbg !2026
  %233 = load ptr, ptr %edit.addr, align 8, !dbg !2027
  %new_meta537 = getelementptr inbounds %struct.assoc_array_edit, ptr %233, i32 0, i32 7, !dbg !2028
  %arrayidx538 = getelementptr [3 x ptr], ptr %new_meta537, i64 0, i64 2, !dbg !2027
  store ptr %call536, ptr %arrayidx538, align 8, !dbg !2029
  %234 = load ptr, ptr %new_s0, align 8, !dbg !2030
  %call539 = call ptr @assoc_array_shortcut_to_ptr(ptr noundef %234) #15, !dbg !2031
  %235 = load ptr, ptr %edit.addr, align 8, !dbg !2032
  %set540 = getelementptr inbounds %struct.assoc_array_edit, ptr %235, i32 0, i32 14, !dbg !2033
  %arrayidx541 = getelementptr [2 x %struct.anon.1], ptr %set540, i64 0, i64 0, !dbg !2032
  %to542 = getelementptr inbounds %struct.anon.1, ptr %arrayidx541, i32 0, i32 1, !dbg !2034
  store ptr %call539, ptr %to542, align 8, !dbg !2035
  %236 = load ptr, ptr %node, align 8, !dbg !2036
  %back_pointer543 = getelementptr inbounds %struct.assoc_array_node, ptr %236, i32 0, i32 0, !dbg !2037
  %237 = load ptr, ptr %back_pointer543, align 8, !dbg !2037
  %238 = load ptr, ptr %new_s0, align 8, !dbg !2038
  %back_pointer544 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %238, i32 0, i32 0, !dbg !2039
  store ptr %237, ptr %back_pointer544, align 8, !dbg !2040
  %239 = load ptr, ptr %node, align 8, !dbg !2041
  %parent_slot545 = getelementptr inbounds %struct.assoc_array_node, ptr %239, i32 0, i32 1, !dbg !2042
  %240 = load i8, ptr %parent_slot545, align 8, !dbg !2042
  %conv546 = zext i8 %240 to i32, !dbg !2041
  %241 = load ptr, ptr %new_s0, align 8, !dbg !2043
  %parent_slot547 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %241, i32 0, i32 1, !dbg !2044
  store i32 %conv546, ptr %parent_slot547, align 8, !dbg !2045
  %242 = load ptr, ptr %new_n0, align 8, !dbg !2046
  %call548 = call ptr @assoc_array_node_to_ptr(ptr noundef %242) #15, !dbg !2047
  %243 = load ptr, ptr %new_s0, align 8, !dbg !2048
  %next_node549 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %243, i32 0, i32 3, !dbg !2049
  store ptr %call548, ptr %next_node549, align 8, !dbg !2050
  %244 = load ptr, ptr %new_s0, align 8, !dbg !2051
  %call550 = call ptr @assoc_array_shortcut_to_ptr(ptr noundef %244) #15, !dbg !2052
  %245 = load ptr, ptr %new_n0, align 8, !dbg !2053
  %back_pointer551 = getelementptr inbounds %struct.assoc_array_node, ptr %245, i32 0, i32 0, !dbg !2054
  store ptr %call550, ptr %back_pointer551, align 8, !dbg !2055
  %246 = load ptr, ptr %new_n0, align 8, !dbg !2056
  %parent_slot552 = getelementptr inbounds %struct.assoc_array_node, ptr %246, i32 0, i32 1, !dbg !2057
  store i8 0, ptr %parent_slot552, align 8, !dbg !2058
  %247 = load ptr, ptr %new_n0, align 8, !dbg !2059
  %call553 = call ptr @assoc_array_node_to_ptr(ptr noundef %247) #15, !dbg !2060
  %248 = load ptr, ptr %new_n1, align 8, !dbg !2061
  %back_pointer554 = getelementptr inbounds %struct.assoc_array_node, ptr %248, i32 0, i32 0, !dbg !2062
  store ptr %call553, ptr %back_pointer554, align 8, !dbg !2063
  %249 = load ptr, ptr %new_n1, align 8, !dbg !2064
  %parent_slot555 = getelementptr inbounds %struct.assoc_array_node, ptr %249, i32 0, i32 1, !dbg !2065
  store i8 -1, ptr %parent_slot555, align 8, !dbg !2066
  %250 = load i32, ptr %diff, align 4, !dbg !2067
  %and556 = and i32 %250, -4, !dbg !2068
  store i32 %and556, ptr %level, align 4, !dbg !2069
  %251 = load ptr, ptr %new_s0, align 8, !dbg !2070
  %skip_to_level = getelementptr inbounds %struct.assoc_array_shortcut, ptr %251, i32 0, i32 2, !dbg !2071
  store i32 %and556, ptr %skip_to_level, align 4, !dbg !2072
  store i32 0, ptr %tmp557, align 4, !dbg !2073
  %252 = load i32, ptr %tmp557, align 4, !dbg !2076
  br label %do.body558, !dbg !2077

do.body558:                                       ; preds = %if.end535
  %253 = load i32, ptr %level, align 4, !dbg !2078
  %cmp559 = icmp sle i32 %253, 0, !dbg !2078
  %lnot561 = xor i1 %cmp559, true, !dbg !2078
  %lnot563 = xor i1 %lnot561, true, !dbg !2078
  %lnot.ext564 = zext i1 %lnot563 to i32, !dbg !2078
  %conv565 = sext i32 %lnot.ext564 to i64, !dbg !2078
  %expval566 = call i64 @llvm.expect.i64(i64 %conv565, i64 0), !dbg !2078
  %tobool567 = icmp ne i64 %expval566, 0, !dbg !2078
  br i1 %tobool567, label %if.then568, label %if.end578, !dbg !2081

if.then568:                                       ; preds = %do.body558
  br label %do.body569, !dbg !2078

do.body569:                                       ; preds = %if.then568
  br label %do.body570, !dbg !2082

do.body570:                                       ; preds = %do.body569
  br label %do.cond571, !dbg !2084

do.cond571:                                       ; preds = %do.body570
  br label %do.end572, !dbg !2084

do.end572:                                        ; preds = %do.cond571
  br label %do.body573, !dbg !2082

do.body573:                                       ; preds = %do.end572
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 760, i32 0, i64 12) #14, !dbg !2086, !srcloc !2088
  br label %do.cond574, !dbg !2086

do.cond574:                                       ; preds = %do.body573
  br label %do.end575, !dbg !2086

do.end575:                                        ; preds = %do.cond574
  unreachable, !dbg !2082

do.cond576:                                       ; No predecessors!
  br label %do.end577, !dbg !2082

do.end577:                                        ; preds = %do.cond576
  br label %if.end578, !dbg !2082

if.end578:                                        ; preds = %do.end577, %do.body558
  br label %do.cond579, !dbg !2081

do.cond579:                                       ; preds = %if.end578
  br label %do.end580, !dbg !2081

do.end580:                                        ; preds = %do.cond579
  store i32 0, ptr %i, align 4, !dbg !2089
  br label %for.cond581, !dbg !2091

for.cond581:                                      ; preds = %for.inc590, %do.end580
  %254 = load i32, ptr %i, align 4, !dbg !2092
  %conv582 = sext i32 %254 to i64, !dbg !2092
  %255 = load i64, ptr %keylen, align 8, !dbg !2094
  %cmp583 = icmp ult i64 %conv582, %255, !dbg !2095
  br i1 %cmp583, label %for.body585, label %for.end592, !dbg !2096

for.body585:                                      ; preds = %for.cond581
  %256 = load ptr, ptr %ops.addr, align 8, !dbg !2097
  %get_key_chunk = getelementptr inbounds %struct.assoc_array_ops, ptr %256, i32 0, i32 0, !dbg !2098
  %257 = load ptr, ptr %get_key_chunk, align 8, !dbg !2098
  %258 = load ptr, ptr %index_key.addr, align 8, !dbg !2099
  %259 = load i32, ptr %i, align 4, !dbg !2100
  %mul = mul i32 %259, 64, !dbg !2101
  %call586 = call i64 %257(ptr noundef %258, i32 noundef %mul) #15, !dbg !2097
  %260 = load ptr, ptr %new_s0, align 8, !dbg !2102
  %index_key587 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %260, i32 0, i32 4, !dbg !2103
  %261 = load i32, ptr %i, align 4, !dbg !2104
  %idxprom588 = sext i32 %261 to i64, !dbg !2102
  %arrayidx589 = getelementptr [0 x i64], ptr %index_key587, i64 0, i64 %idxprom588, !dbg !2102
  store i64 %call586, ptr %arrayidx589, align 8, !dbg !2105
  br label %for.inc590, !dbg !2102

for.inc590:                                       ; preds = %for.body585
  %262 = load i32, ptr %i, align 4, !dbg !2106
  %inc591 = add i32 %262, 1, !dbg !2106
  store i32 %inc591, ptr %i, align 4, !dbg !2106
  br label %for.cond581, !dbg !2107, !llvm.loop !2108

for.end592:                                       ; preds = %for.cond581
  %263 = load i32, ptr %level, align 4, !dbg !2110
  %and593 = and i32 %263, 63, !dbg !2112
  %tobool594 = icmp ne i32 %and593, 0, !dbg !2112
  br i1 %tobool594, label %if.then595, label %if.end603, !dbg !2113

if.then595:                                       ; preds = %for.end592
  %264 = load i32, ptr %level, align 4, !dbg !2114
  %and596 = and i32 %264, 63, !dbg !2116
  %sh_prom597 = zext i32 %and596 to i64, !dbg !2117
  %shl = shl i64 -1, %sh_prom597, !dbg !2117
  store i64 %shl, ptr %blank, align 8, !dbg !2118
  store i32 0, ptr %tmp598, align 4, !dbg !2119
  %265 = load i32, ptr %tmp598, align 4, !dbg !2122
  %266 = load i64, ptr %blank, align 8, !dbg !2123
  %not = xor i64 %266, -1, !dbg !2124
  %267 = load ptr, ptr %new_s0, align 8, !dbg !2125
  %index_key599 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %267, i32 0, i32 4, !dbg !2126
  %268 = load i64, ptr %keylen, align 8, !dbg !2127
  %sub600 = sub i64 %268, 1, !dbg !2128
  %arrayidx601 = getelementptr [0 x i64], ptr %index_key599, i64 0, i64 %sub600, !dbg !2125
  %269 = load i64, ptr %arrayidx601, align 8, !dbg !2129
  %and602 = and i64 %269, %not, !dbg !2129
  store i64 %and602, ptr %arrayidx601, align 8, !dbg !2129
  br label %if.end603, !dbg !2130

if.end603:                                        ; preds = %if.then595, %for.end592
  store i32 0, ptr %i, align 4, !dbg !2131
  br label %for.cond604, !dbg !2133

for.cond604:                                      ; preds = %for.inc622, %if.end603
  %270 = load i32, ptr %i, align 4, !dbg !2134
  %cmp605 = icmp slt i32 %270, 16, !dbg !2136
  br i1 %cmp605, label %for.body607, label %for.end624, !dbg !2137

for.body607:                                      ; preds = %for.cond604
  %271 = load ptr, ptr %node, align 8, !dbg !2138
  %slots608 = getelementptr inbounds %struct.assoc_array_node, ptr %271, i32 0, i32 2, !dbg !2140
  %272 = load i32, ptr %i, align 4, !dbg !2141
  %idxprom609 = sext i32 %272 to i64, !dbg !2138
  %arrayidx610 = getelementptr [16 x ptr], ptr %slots608, i64 0, i64 %idxprom609, !dbg !2138
  %273 = load ptr, ptr %arrayidx610, align 8, !dbg !2138
  store ptr %273, ptr %ptr, align 8, !dbg !2142
  %274 = load ptr, ptr %ops.addr, align 8, !dbg !2143
  %get_object_key_chunk611 = getelementptr inbounds %struct.assoc_array_ops, ptr %274, i32 0, i32 1, !dbg !2144
  %275 = load ptr, ptr %get_object_key_chunk611, align 8, !dbg !2144
  %276 = load ptr, ptr %ptr, align 8, !dbg !2145
  %call612 = call ptr @assoc_array_ptr_to_leaf(ptr noundef %276) #15, !dbg !2146
  %277 = load i32, ptr %level, align 4, !dbg !2147
  %call613 = call i64 %275(ptr noundef %call612, i32 noundef %277) #15, !dbg !2143
  store i64 %call613, ptr %base_seg, align 8, !dbg !2148
  %278 = load i32, ptr %level, align 4, !dbg !2149
  %and614 = and i32 %278, 63, !dbg !2150
  %279 = load i64, ptr %base_seg, align 8, !dbg !2151
  %sh_prom615 = zext i32 %and614 to i64, !dbg !2151
  %shr616 = lshr i64 %279, %sh_prom615, !dbg !2151
  store i64 %shr616, ptr %base_seg, align 8, !dbg !2151
  %280 = load i64, ptr %base_seg, align 8, !dbg !2152
  %and617 = and i64 %280, 15, !dbg !2153
  %conv618 = trunc i64 %and617 to i8, !dbg !2152
  %281 = load ptr, ptr %edit.addr, align 8, !dbg !2154
  %segment_cache619 = getelementptr inbounds %struct.assoc_array_edit, ptr %281, i32 0, i32 16, !dbg !2155
  %282 = load i32, ptr %i, align 4, !dbg !2156
  %idxprom620 = sext i32 %282 to i64, !dbg !2154
  %arrayidx621 = getelementptr [17 x i8], ptr %segment_cache619, i64 0, i64 %idxprom620, !dbg !2154
  store i8 %conv618, ptr %arrayidx621, align 1, !dbg !2157
  br label %for.inc622, !dbg !2158

for.inc622:                                       ; preds = %for.body607
  %283 = load i32, ptr %i, align 4, !dbg !2159
  %inc623 = add i32 %283, 1, !dbg !2159
  store i32 %inc623, ptr %i, align 4, !dbg !2159
  br label %for.cond604, !dbg !2160, !llvm.loop !2161

for.end624:                                       ; preds = %for.cond604
  %284 = load ptr, ptr %ops.addr, align 8, !dbg !2163
  %get_key_chunk625 = getelementptr inbounds %struct.assoc_array_ops, ptr %284, i32 0, i32 0, !dbg !2164
  %285 = load ptr, ptr %get_key_chunk625, align 8, !dbg !2164
  %286 = load ptr, ptr %index_key.addr, align 8, !dbg !2165
  %287 = load i32, ptr %level, align 4, !dbg !2166
  %call626 = call i64 %285(ptr noundef %286, i32 noundef %287) #15, !dbg !2163
  store i64 %call626, ptr %base_seg, align 8, !dbg !2167
  %288 = load i32, ptr %level, align 4, !dbg !2168
  %and627 = and i32 %288, 63, !dbg !2169
  %289 = load i64, ptr %base_seg, align 8, !dbg !2170
  %sh_prom628 = zext i32 %and627 to i64, !dbg !2170
  %shr629 = lshr i64 %289, %sh_prom628, !dbg !2170
  store i64 %shr629, ptr %base_seg, align 8, !dbg !2170
  %290 = load i64, ptr %base_seg, align 8, !dbg !2171
  %and630 = and i64 %290, 15, !dbg !2172
  %conv631 = trunc i64 %and630 to i8, !dbg !2171
  %291 = load ptr, ptr %edit.addr, align 8, !dbg !2173
  %segment_cache632 = getelementptr inbounds %struct.assoc_array_edit, ptr %291, i32 0, i32 16, !dbg !2174
  %arrayidx633 = getelementptr [17 x i8], ptr %segment_cache632, i64 0, i64 16, !dbg !2173
  store i8 %conv631, ptr %arrayidx633, align 8, !dbg !2175
  br label %do_split_node, !dbg !2176

cleanup:                                          ; preds = %if.then534, %if.end435, %if.then40, %if.then34, %if.then24, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 4, ptr %free_slot) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_slot) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 4, ptr %diff) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 1, ptr %have_meta) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %keylen) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %blank) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %base_seg) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %dissimilarity) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %side) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_n1) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_n0) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_s0) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %shortcut) #14, !dbg !2177
  %292 = load i1, ptr %retval, align 1, !dbg !2177
  ret i1 %292, !dbg !2177
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @assoc_array_insert_mid_shortcut(ptr noundef %edit, ptr noundef %ops, ptr noundef %result) #0 align 16 !dbg !2178 {
entry:
  %retval = alloca i1, align 1
  %edit.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %shortcut = alloca ptr, align 8
  %new_s0 = alloca ptr, align 8
  %new_s1 = alloca ptr, align 8
  %node = alloca ptr, align 8
  %new_n0 = alloca ptr, align 8
  %side = alloca ptr, align 8
  %sc_segments = alloca i64, align 8
  %dissimilarity = alloca i64, align 8
  %blank = alloca i64, align 8
  %keylen = alloca i64, align 8
  %level = alloca i32, align 4
  %sc_level = alloca i32, align 4
  %diff = alloca i32, align 4
  %sc_slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %tmp74 = alloca i32, align 4
  %tmp93 = alloca i32, align 4
  %tmp99 = alloca i32, align 4
  %tmp140 = alloca i32, align 4
  %tmp170 = alloca i32, align 4
  store ptr %edit, ptr %edit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edit.addr, metadata !2182, metadata !DIExpression()), !dbg !2199
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !2183, metadata !DIExpression()), !dbg !2200
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !2184, metadata !DIExpression()), !dbg !2201
  call void @llvm.lifetime.start.p0(i64 8, ptr %shortcut) #14, !dbg !2202
  call void @llvm.dbg.declare(metadata ptr %shortcut, metadata !2185, metadata !DIExpression()), !dbg !2203
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_s0) #14, !dbg !2202
  call void @llvm.dbg.declare(metadata ptr %new_s0, metadata !2186, metadata !DIExpression()), !dbg !2204
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_s1) #14, !dbg !2202
  call void @llvm.dbg.declare(metadata ptr %new_s1, metadata !2187, metadata !DIExpression()), !dbg !2205
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2188, metadata !DIExpression()), !dbg !2207
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_n0) #14, !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %new_n0, metadata !2189, metadata !DIExpression()), !dbg !2208
  call void @llvm.lifetime.start.p0(i64 8, ptr %side) #14, !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %side, metadata !2190, metadata !DIExpression()), !dbg !2209
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc_segments) #14, !dbg !2210
  call void @llvm.dbg.declare(metadata ptr %sc_segments, metadata !2191, metadata !DIExpression()), !dbg !2211
  call void @llvm.lifetime.start.p0(i64 8, ptr %dissimilarity) #14, !dbg !2210
  call void @llvm.dbg.declare(metadata ptr %dissimilarity, metadata !2192, metadata !DIExpression()), !dbg !2212
  call void @llvm.lifetime.start.p0(i64 8, ptr %blank) #14, !dbg !2210
  call void @llvm.dbg.declare(metadata ptr %blank, metadata !2193, metadata !DIExpression()), !dbg !2213
  call void @llvm.lifetime.start.p0(i64 8, ptr %keylen) #14, !dbg !2214
  call void @llvm.dbg.declare(metadata ptr %keylen, metadata !2194, metadata !DIExpression()), !dbg !2215
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #14, !dbg !2216
  call void @llvm.dbg.declare(metadata ptr %level, metadata !2195, metadata !DIExpression()), !dbg !2217
  call void @llvm.lifetime.start.p0(i64 4, ptr %sc_level) #14, !dbg !2216
  call void @llvm.dbg.declare(metadata ptr %sc_level, metadata !2196, metadata !DIExpression()), !dbg !2218
  call void @llvm.lifetime.start.p0(i64 4, ptr %diff) #14, !dbg !2216
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !2197, metadata !DIExpression()), !dbg !2219
  call void @llvm.lifetime.start.p0(i64 4, ptr %sc_slot) #14, !dbg !2220
  call void @llvm.dbg.declare(metadata ptr %sc_slot, metadata !2198, metadata !DIExpression()), !dbg !2221
  %0 = load ptr, ptr %result.addr, align 8, !dbg !2222
  %wrong_shortcut = getelementptr inbounds %struct.assoc_array_walk_result, ptr %0, i32 0, i32 1, !dbg !2223
  %shortcut1 = getelementptr inbounds %struct.anon.0, ptr %wrong_shortcut, i32 0, i32 0, !dbg !2224
  %1 = load ptr, ptr %shortcut1, align 8, !dbg !2224
  store ptr %1, ptr %shortcut, align 8, !dbg !2225
  %2 = load ptr, ptr %result.addr, align 8, !dbg !2226
  %wrong_shortcut2 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %2, i32 0, i32 1, !dbg !2227
  %level3 = getelementptr inbounds %struct.anon.0, ptr %wrong_shortcut2, i32 0, i32 1, !dbg !2228
  %3 = load i32, ptr %level3, align 8, !dbg !2228
  store i32 %3, ptr %level, align 4, !dbg !2229
  %4 = load ptr, ptr %result.addr, align 8, !dbg !2230
  %wrong_shortcut4 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %4, i32 0, i32 1, !dbg !2231
  %sc_level5 = getelementptr inbounds %struct.anon.0, ptr %wrong_shortcut4, i32 0, i32 2, !dbg !2232
  %5 = load i32, ptr %sc_level5, align 4, !dbg !2232
  store i32 %5, ptr %sc_level, align 4, !dbg !2233
  %6 = load ptr, ptr %result.addr, align 8, !dbg !2234
  %wrong_shortcut6 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %6, i32 0, i32 1, !dbg !2235
  %sc_segments7 = getelementptr inbounds %struct.anon.0, ptr %wrong_shortcut6, i32 0, i32 3, !dbg !2236
  %7 = load i64, ptr %sc_segments7, align 8, !dbg !2236
  store i64 %7, ptr %sc_segments, align 8, !dbg !2237
  %8 = load ptr, ptr %result.addr, align 8, !dbg !2238
  %wrong_shortcut8 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %8, i32 0, i32 1, !dbg !2239
  %dissimilarity9 = getelementptr inbounds %struct.anon.0, ptr %wrong_shortcut8, i32 0, i32 4, !dbg !2240
  %9 = load i64, ptr %dissimilarity9, align 8, !dbg !2240
  store i64 %9, ptr %dissimilarity, align 8, !dbg !2241
  store i32 0, ptr %tmp, align 4, !dbg !2242
  %10 = load i32, ptr %tmp, align 4, !dbg !2245
  %11 = load i64, ptr %dissimilarity, align 8, !dbg !2246
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !2246
  br i1 %12, label %cond.true, label %cond.false, !dbg !2246

cond.true:                                        ; preds = %entry
  %13 = load i64, ptr %dissimilarity, align 8, !dbg !2246
  %14 = call i64 @llvm.cttz.i64(i64 %13, i1 true), !dbg !2246
  %cast = trunc i64 %14 to i32, !dbg !2246
  %conv = sext i32 %cast to i64, !dbg !2246
  br label %cond.end, !dbg !2246

cond.false:                                       ; preds = %entry
  %15 = load i64, ptr %dissimilarity, align 8, !dbg !2246
  %call = call i64 @variable__ffs(i64 noundef %15) #15, !dbg !2246
  br label %cond.end, !dbg !2246

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !2246
  %conv10 = trunc i64 %cond to i32, !dbg !2246
  store i32 %conv10, ptr %diff, align 4, !dbg !2247
  %16 = load i32, ptr %diff, align 4, !dbg !2248
  %and = and i32 %16, -4, !dbg !2248
  store i32 %and, ptr %diff, align 4, !dbg !2248
  %17 = load i32, ptr %sc_level, align 4, !dbg !2249
  %and11 = and i32 %17, -64, !dbg !2250
  %18 = load i32, ptr %diff, align 4, !dbg !2251
  %add = add i32 %18, %and11, !dbg !2251
  store i32 %add, ptr %diff, align 4, !dbg !2251
  store i32 0, ptr %tmp12, align 4, !dbg !2252
  %19 = load i32, ptr %tmp12, align 4, !dbg !2255
  %20 = load ptr, ptr %shortcut, align 8, !dbg !2256
  %back_pointer = getelementptr inbounds %struct.assoc_array_shortcut, ptr %20, i32 0, i32 0, !dbg !2258
  %21 = load ptr, ptr %back_pointer, align 8, !dbg !2258
  %tobool = icmp ne ptr %21, null, !dbg !2256
  br i1 %tobool, label %if.else, label %if.then, !dbg !2259

if.then:                                          ; preds = %cond.end
  %22 = load ptr, ptr %edit.addr, align 8, !dbg !2260
  %array = getelementptr inbounds %struct.assoc_array_edit, ptr %22, i32 0, i32 1, !dbg !2262
  %23 = load ptr, ptr %array, align 8, !dbg !2262
  %root = getelementptr inbounds %struct.assoc_array, ptr %23, i32 0, i32 0, !dbg !2263
  %24 = load ptr, ptr %edit.addr, align 8, !dbg !2264
  %set = getelementptr inbounds %struct.assoc_array_edit, ptr %24, i32 0, i32 14, !dbg !2265
  %arrayidx = getelementptr [2 x %struct.anon.1], ptr %set, i64 0, i64 0, !dbg !2264
  %ptr = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0, !dbg !2266
  store ptr %root, ptr %ptr, align 8, !dbg !2267
  br label %if.end29, !dbg !2268

if.else:                                          ; preds = %cond.end
  %25 = load ptr, ptr %shortcut, align 8, !dbg !2269
  %back_pointer13 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %25, i32 0, i32 0, !dbg !2271
  %26 = load ptr, ptr %back_pointer13, align 8, !dbg !2271
  %call14 = call zeroext i1 @assoc_array_ptr_is_node(ptr noundef %26) #15, !dbg !2272
  br i1 %call14, label %if.then15, label %if.else22, !dbg !2273

if.then15:                                        ; preds = %if.else
  %27 = load ptr, ptr %shortcut, align 8, !dbg !2274
  %back_pointer16 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %27, i32 0, i32 0, !dbg !2276
  %28 = load ptr, ptr %back_pointer16, align 8, !dbg !2276
  %call17 = call ptr @assoc_array_ptr_to_node(ptr noundef %28) #15, !dbg !2277
  store ptr %call17, ptr %node, align 8, !dbg !2278
  %29 = load ptr, ptr %node, align 8, !dbg !2279
  %slots = getelementptr inbounds %struct.assoc_array_node, ptr %29, i32 0, i32 2, !dbg !2280
  %30 = load ptr, ptr %shortcut, align 8, !dbg !2281
  %parent_slot = getelementptr inbounds %struct.assoc_array_shortcut, ptr %30, i32 0, i32 1, !dbg !2282
  %31 = load i32, ptr %parent_slot, align 8, !dbg !2282
  %idxprom = sext i32 %31 to i64, !dbg !2279
  %arrayidx18 = getelementptr [16 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !2279
  %32 = load ptr, ptr %edit.addr, align 8, !dbg !2283
  %set19 = getelementptr inbounds %struct.assoc_array_edit, ptr %32, i32 0, i32 14, !dbg !2284
  %arrayidx20 = getelementptr [2 x %struct.anon.1], ptr %set19, i64 0, i64 0, !dbg !2283
  %ptr21 = getelementptr inbounds %struct.anon.1, ptr %arrayidx20, i32 0, i32 0, !dbg !2285
  store ptr %arrayidx18, ptr %ptr21, align 8, !dbg !2286
  br label %if.end, !dbg !2287

if.else22:                                        ; preds = %if.else
  br label %do.body, !dbg !2288

do.body:                                          ; preds = %if.else22
  br label %do.body23, !dbg !2290

do.body23:                                        ; preds = %do.body
  br label %do.cond, !dbg !2292

do.cond:                                          ; preds = %do.body23
  br label %do.end, !dbg !2292

do.end:                                           ; preds = %do.cond
  br label %do.body24, !dbg !2290

do.body24:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 829, i32 0, i64 12) #14, !dbg !2294, !srcloc !2296
  br label %do.cond25, !dbg !2294

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !2294

do.end26:                                         ; preds = %do.cond25
  unreachable, !dbg !2290

do.cond27:                                        ; No predecessors!
  br label %do.end28, !dbg !2290

do.end28:                                         ; preds = %do.cond27
  br label %if.end

if.end:                                           ; preds = %do.end28, %if.then15
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then
  %33 = load ptr, ptr %shortcut, align 8, !dbg !2297
  %call30 = call ptr @assoc_array_shortcut_to_ptr(ptr noundef %33) #15, !dbg !2298
  %34 = load ptr, ptr %edit.addr, align 8, !dbg !2299
  %excised_meta = getelementptr inbounds %struct.assoc_array_edit, ptr %34, i32 0, i32 8, !dbg !2300
  %arrayidx31 = getelementptr [1 x ptr], ptr %excised_meta, i64 0, i64 0, !dbg !2299
  store ptr %call30, ptr %arrayidx31, align 8, !dbg !2301
  %call32 = call noalias ptr @kzalloc(i64 noundef 152, i32 noundef 3264) #16, !dbg !2302
  store ptr %call32, ptr %new_n0, align 8, !dbg !2303
  %35 = load ptr, ptr %new_n0, align 8, !dbg !2304
  %tobool33 = icmp ne ptr %35, null, !dbg !2304
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !2306

if.then34:                                        ; preds = %if.end29
  store i1 false, ptr %retval, align 1, !dbg !2307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2307

if.end35:                                         ; preds = %if.end29
  %36 = load ptr, ptr %new_n0, align 8, !dbg !2308
  %call36 = call ptr @assoc_array_node_to_ptr(ptr noundef %36) #15, !dbg !2309
  %37 = load ptr, ptr %edit.addr, align 8, !dbg !2310
  %new_meta = getelementptr inbounds %struct.assoc_array_edit, ptr %37, i32 0, i32 7, !dbg !2311
  %arrayidx37 = getelementptr [3 x ptr], ptr %new_meta, i64 0, i64 0, !dbg !2310
  store ptr %call36, ptr %arrayidx37, align 8, !dbg !2312
  %38 = load ptr, ptr %new_n0, align 8, !dbg !2313
  %39 = load ptr, ptr %edit.addr, align 8, !dbg !2314
  %adjust_count_on = getelementptr inbounds %struct.assoc_array_edit, ptr %39, i32 0, i32 12, !dbg !2315
  store ptr %38, ptr %adjust_count_on, align 8, !dbg !2316
  %40 = load i32, ptr %level, align 4, !dbg !2317
  %add38 = add i32 %40, 4, !dbg !2317
  store i32 %add38, ptr %level, align 4, !dbg !2317
  %41 = load i32, ptr %diff, align 4, !dbg !2318
  %42 = load i32, ptr %level, align 4, !dbg !2320
  %cmp = icmp sgt i32 %41, %42, !dbg !2321
  br i1 %cmp, label %if.then40, label %if.else73, !dbg !2322

if.then40:                                        ; preds = %if.end35
  store i32 0, ptr %tmp41, align 4, !dbg !2323
  %43 = load i32, ptr %tmp41, align 4, !dbg !2327
  %44 = load i32, ptr %diff, align 4, !dbg !2328
  %sub = sub i32 %44, 1, !dbg !2328
  %or = or i32 %sub, 63, !dbg !2328
  %add42 = add i32 %or, 1, !dbg !2328
  %conv43 = sext i32 %add42 to i64, !dbg !2328
  store i64 %conv43, ptr %keylen, align 8, !dbg !2329
  %45 = load i64, ptr %keylen, align 8, !dbg !2330
  %shr = lshr i64 %45, 6, !dbg !2330
  store i64 %shr, ptr %keylen, align 8, !dbg !2330
  %46 = load i64, ptr %keylen, align 8, !dbg !2331
  %call44 = call i64 @size_mul(i64 noundef %46, i64 noundef 8) #15, !dbg !2331
  %call45 = call i64 @size_add(i64 noundef 24, i64 noundef %call44) #15, !dbg !2331
  %call46 = call noalias ptr @kzalloc(i64 noundef %call45, i32 noundef 3264) #16, !dbg !2332
  store ptr %call46, ptr %new_s0, align 8, !dbg !2333
  %47 = load ptr, ptr %new_s0, align 8, !dbg !2334
  %tobool47 = icmp ne ptr %47, null, !dbg !2334
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !2336

if.then48:                                        ; preds = %if.then40
  store i1 false, ptr %retval, align 1, !dbg !2337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2337

if.end49:                                         ; preds = %if.then40
  %48 = load ptr, ptr %new_s0, align 8, !dbg !2338
  %call50 = call ptr @assoc_array_shortcut_to_ptr(ptr noundef %48) #15, !dbg !2339
  %49 = load ptr, ptr %edit.addr, align 8, !dbg !2340
  %new_meta51 = getelementptr inbounds %struct.assoc_array_edit, ptr %49, i32 0, i32 7, !dbg !2341
  %arrayidx52 = getelementptr [3 x ptr], ptr %new_meta51, i64 0, i64 1, !dbg !2340
  store ptr %call50, ptr %arrayidx52, align 8, !dbg !2342
  %50 = load ptr, ptr %new_s0, align 8, !dbg !2343
  %call53 = call ptr @assoc_array_shortcut_to_ptr(ptr noundef %50) #15, !dbg !2344
  %51 = load ptr, ptr %edit.addr, align 8, !dbg !2345
  %set54 = getelementptr inbounds %struct.assoc_array_edit, ptr %51, i32 0, i32 14, !dbg !2346
  %arrayidx55 = getelementptr [2 x %struct.anon.1], ptr %set54, i64 0, i64 0, !dbg !2345
  %to = getelementptr inbounds %struct.anon.1, ptr %arrayidx55, i32 0, i32 1, !dbg !2347
  store ptr %call53, ptr %to, align 8, !dbg !2348
  %52 = load ptr, ptr %shortcut, align 8, !dbg !2349
  %back_pointer56 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %52, i32 0, i32 0, !dbg !2350
  %53 = load ptr, ptr %back_pointer56, align 8, !dbg !2350
  %54 = load ptr, ptr %new_s0, align 8, !dbg !2351
  %back_pointer57 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %54, i32 0, i32 0, !dbg !2352
  store ptr %53, ptr %back_pointer57, align 8, !dbg !2353
  %55 = load ptr, ptr %shortcut, align 8, !dbg !2354
  %parent_slot58 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %55, i32 0, i32 1, !dbg !2355
  %56 = load i32, ptr %parent_slot58, align 8, !dbg !2355
  %57 = load ptr, ptr %new_s0, align 8, !dbg !2356
  %parent_slot59 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %57, i32 0, i32 1, !dbg !2357
  store i32 %56, ptr %parent_slot59, align 8, !dbg !2358
  %58 = load ptr, ptr %new_n0, align 8, !dbg !2359
  %call60 = call ptr @assoc_array_node_to_ptr(ptr noundef %58) #15, !dbg !2360
  %59 = load ptr, ptr %new_s0, align 8, !dbg !2361
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %59, i32 0, i32 3, !dbg !2362
  store ptr %call60, ptr %next_node, align 8, !dbg !2363
  %60 = load i32, ptr %diff, align 4, !dbg !2364
  %61 = load ptr, ptr %new_s0, align 8, !dbg !2365
  %skip_to_level = getelementptr inbounds %struct.assoc_array_shortcut, ptr %61, i32 0, i32 2, !dbg !2366
  store i32 %60, ptr %skip_to_level, align 4, !dbg !2367
  %62 = load ptr, ptr %new_s0, align 8, !dbg !2368
  %call61 = call ptr @assoc_array_shortcut_to_ptr(ptr noundef %62) #15, !dbg !2369
  %63 = load ptr, ptr %new_n0, align 8, !dbg !2370
  %back_pointer62 = getelementptr inbounds %struct.assoc_array_node, ptr %63, i32 0, i32 0, !dbg !2371
  store ptr %call61, ptr %back_pointer62, align 8, !dbg !2372
  %64 = load ptr, ptr %new_n0, align 8, !dbg !2373
  %parent_slot63 = getelementptr inbounds %struct.assoc_array_node, ptr %64, i32 0, i32 1, !dbg !2374
  store i8 0, ptr %parent_slot63, align 8, !dbg !2375
  %65 = load ptr, ptr %new_s0, align 8, !dbg !2376
  %index_key = getelementptr inbounds %struct.assoc_array_shortcut, ptr %65, i32 0, i32 4, !dbg !2377
  %arraydecay = getelementptr inbounds [0 x i64], ptr %index_key, i64 0, i64 0, !dbg !2378
  %66 = load ptr, ptr %shortcut, align 8, !dbg !2379
  %index_key64 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %66, i32 0, i32 4, !dbg !2380
  %arraydecay65 = getelementptr inbounds [0 x i64], ptr %index_key64, i64 0, i64 0, !dbg !2378
  %67 = load i64, ptr %keylen, align 8, !dbg !2381
  %call66 = call i64 @size_mul(i64 noundef %67, i64 noundef 8) #15, !dbg !2381
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 8 %arraydecay65, i64 %call66, i1 false), !dbg !2378
  %68 = load i32, ptr %diff, align 4, !dbg !2382
  %and67 = and i32 %68, 63, !dbg !2383
  %sh_prom = zext i32 %and67 to i64, !dbg !2384
  %shl = shl i64 -1, %sh_prom, !dbg !2384
  store i64 %shl, ptr %blank, align 8, !dbg !2385
  store i32 0, ptr %tmp68, align 4, !dbg !2386
  %69 = load i32, ptr %tmp68, align 4, !dbg !2389
  %70 = load i64, ptr %blank, align 8, !dbg !2390
  %not = xor i64 %70, -1, !dbg !2391
  %71 = load ptr, ptr %new_s0, align 8, !dbg !2392
  %index_key69 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %71, i32 0, i32 4, !dbg !2393
  %72 = load i64, ptr %keylen, align 8, !dbg !2394
  %sub70 = sub i64 %72, 1, !dbg !2395
  %arrayidx71 = getelementptr [0 x i64], ptr %index_key69, i64 0, i64 %sub70, !dbg !2392
  %73 = load i64, ptr %arrayidx71, align 8, !dbg !2396
  %and72 = and i64 %73, %not, !dbg !2396
  store i64 %and72, ptr %arrayidx71, align 8, !dbg !2396
  br label %if.end84, !dbg !2397

if.else73:                                        ; preds = %if.end35
  store i32 0, ptr %tmp74, align 4, !dbg !2398
  %74 = load i32, ptr %tmp74, align 4, !dbg !2402
  %75 = load ptr, ptr %new_n0, align 8, !dbg !2403
  %call75 = call ptr @assoc_array_node_to_ptr(ptr noundef %75) #15, !dbg !2404
  %76 = load ptr, ptr %edit.addr, align 8, !dbg !2405
  %set76 = getelementptr inbounds %struct.assoc_array_edit, ptr %76, i32 0, i32 14, !dbg !2406
  %arrayidx77 = getelementptr [2 x %struct.anon.1], ptr %set76, i64 0, i64 0, !dbg !2405
  %to78 = getelementptr inbounds %struct.anon.1, ptr %arrayidx77, i32 0, i32 1, !dbg !2407
  store ptr %call75, ptr %to78, align 8, !dbg !2408
  %77 = load ptr, ptr %shortcut, align 8, !dbg !2409
  %back_pointer79 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %77, i32 0, i32 0, !dbg !2410
  %78 = load ptr, ptr %back_pointer79, align 8, !dbg !2410
  %79 = load ptr, ptr %new_n0, align 8, !dbg !2411
  %back_pointer80 = getelementptr inbounds %struct.assoc_array_node, ptr %79, i32 0, i32 0, !dbg !2412
  store ptr %78, ptr %back_pointer80, align 8, !dbg !2413
  %80 = load ptr, ptr %shortcut, align 8, !dbg !2414
  %parent_slot81 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %80, i32 0, i32 1, !dbg !2415
  %81 = load i32, ptr %parent_slot81, align 8, !dbg !2415
  %conv82 = trunc i32 %81 to i8, !dbg !2414
  %82 = load ptr, ptr %new_n0, align 8, !dbg !2416
  %parent_slot83 = getelementptr inbounds %struct.assoc_array_node, ptr %82, i32 0, i32 1, !dbg !2417
  store i8 %conv82, ptr %parent_slot83, align 8, !dbg !2418
  br label %if.end84

if.end84:                                         ; preds = %if.else73, %if.end49
  %83 = load ptr, ptr %shortcut, align 8, !dbg !2419
  %next_node85 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %83, i32 0, i32 3, !dbg !2420
  %84 = load ptr, ptr %next_node85, align 8, !dbg !2420
  %call86 = call ptr @assoc_array_ptr_to_node(ptr noundef %84) #15, !dbg !2421
  store ptr %call86, ptr %side, align 8, !dbg !2422
  %85 = load ptr, ptr %side, align 8, !dbg !2423
  %nr_leaves_on_branch = getelementptr inbounds %struct.assoc_array_node, ptr %85, i32 0, i32 3, !dbg !2424
  %86 = load i64, ptr %nr_leaves_on_branch, align 8, !dbg !2424
  %87 = load ptr, ptr %new_n0, align 8, !dbg !2425
  %nr_leaves_on_branch87 = getelementptr inbounds %struct.assoc_array_node, ptr %87, i32 0, i32 3, !dbg !2426
  store i64 %86, ptr %nr_leaves_on_branch87, align 8, !dbg !2427
  %88 = load i64, ptr %sc_segments, align 8, !dbg !2428
  %89 = load i32, ptr %diff, align 4, !dbg !2429
  %and88 = and i32 %89, 63, !dbg !2430
  %sh_prom89 = zext i32 %and88 to i64, !dbg !2431
  %shr90 = lshr i64 %88, %sh_prom89, !dbg !2431
  %conv91 = trunc i64 %shr90 to i32, !dbg !2428
  store i32 %conv91, ptr %sc_slot, align 4, !dbg !2432
  %90 = load i32, ptr %sc_slot, align 4, !dbg !2433
  %and92 = and i32 %90, 15, !dbg !2433
  store i32 %and92, ptr %sc_slot, align 4, !dbg !2433
  store i32 0, ptr %tmp93, align 4, !dbg !2434
  %91 = load i32, ptr %tmp93, align 4, !dbg !2437
  %92 = load i32, ptr %diff, align 4, !dbg !2438
  %add94 = add i32 %92, 4, !dbg !2439
  store i32 %add94, ptr %level, align 4, !dbg !2440
  %93 = load i32, ptr %level, align 4, !dbg !2441
  %94 = load ptr, ptr %shortcut, align 8, !dbg !2443
  %skip_to_level95 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %94, i32 0, i32 2, !dbg !2444
  %95 = load i32, ptr %skip_to_level95, align 4, !dbg !2444
  %cmp96 = icmp slt i32 %93, %95, !dbg !2445
  br i1 %cmp96, label %if.then98, label %if.else139, !dbg !2446

if.then98:                                        ; preds = %if.end84
  store i32 0, ptr %tmp99, align 4, !dbg !2447
  %96 = load i32, ptr %tmp99, align 4, !dbg !2451
  %97 = load ptr, ptr %shortcut, align 8, !dbg !2452
  %skip_to_level100 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %97, i32 0, i32 2, !dbg !2452
  %98 = load i32, ptr %skip_to_level100, align 4, !dbg !2452
  %sub101 = sub i32 %98, 1, !dbg !2452
  %or102 = or i32 %sub101, 63, !dbg !2452
  %add103 = add i32 %or102, 1, !dbg !2452
  %conv104 = sext i32 %add103 to i64, !dbg !2452
  store i64 %conv104, ptr %keylen, align 8, !dbg !2453
  %99 = load i64, ptr %keylen, align 8, !dbg !2454
  %shr105 = lshr i64 %99, 6, !dbg !2454
  store i64 %shr105, ptr %keylen, align 8, !dbg !2454
  %100 = load i64, ptr %keylen, align 8, !dbg !2455
  %call106 = call i64 @size_mul(i64 noundef %100, i64 noundef 8) #15, !dbg !2455
  %call107 = call i64 @size_add(i64 noundef 24, i64 noundef %call106) #15, !dbg !2455
  %call108 = call noalias ptr @kzalloc(i64 noundef %call107, i32 noundef 3264) #16, !dbg !2456
  store ptr %call108, ptr %new_s1, align 8, !dbg !2457
  %101 = load ptr, ptr %new_s1, align 8, !dbg !2458
  %tobool109 = icmp ne ptr %101, null, !dbg !2458
  br i1 %tobool109, label %if.end111, label %if.then110, !dbg !2460

if.then110:                                       ; preds = %if.then98
  store i1 false, ptr %retval, align 1, !dbg !2461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2461

if.end111:                                        ; preds = %if.then98
  %102 = load ptr, ptr %new_s1, align 8, !dbg !2462
  %call112 = call ptr @assoc_array_shortcut_to_ptr(ptr noundef %102) #15, !dbg !2463
  %103 = load ptr, ptr %edit.addr, align 8, !dbg !2464
  %new_meta113 = getelementptr inbounds %struct.assoc_array_edit, ptr %103, i32 0, i32 7, !dbg !2465
  %arrayidx114 = getelementptr [3 x ptr], ptr %new_meta113, i64 0, i64 2, !dbg !2464
  store ptr %call112, ptr %arrayidx114, align 8, !dbg !2466
  %104 = load ptr, ptr %new_n0, align 8, !dbg !2467
  %call115 = call ptr @assoc_array_node_to_ptr(ptr noundef %104) #15, !dbg !2468
  %105 = load ptr, ptr %new_s1, align 8, !dbg !2469
  %back_pointer116 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %105, i32 0, i32 0, !dbg !2470
  store ptr %call115, ptr %back_pointer116, align 8, !dbg !2471
  %106 = load i32, ptr %sc_slot, align 4, !dbg !2472
  %107 = load ptr, ptr %new_s1, align 8, !dbg !2473
  %parent_slot117 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %107, i32 0, i32 1, !dbg !2474
  store i32 %106, ptr %parent_slot117, align 8, !dbg !2475
  %108 = load ptr, ptr %shortcut, align 8, !dbg !2476
  %next_node118 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %108, i32 0, i32 3, !dbg !2477
  %109 = load ptr, ptr %next_node118, align 8, !dbg !2477
  %110 = load ptr, ptr %new_s1, align 8, !dbg !2478
  %next_node119 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %110, i32 0, i32 3, !dbg !2479
  store ptr %109, ptr %next_node119, align 8, !dbg !2480
  %111 = load ptr, ptr %shortcut, align 8, !dbg !2481
  %skip_to_level120 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %111, i32 0, i32 2, !dbg !2482
  %112 = load i32, ptr %skip_to_level120, align 4, !dbg !2482
  %113 = load ptr, ptr %new_s1, align 8, !dbg !2483
  %skip_to_level121 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %113, i32 0, i32 2, !dbg !2484
  store i32 %112, ptr %skip_to_level121, align 4, !dbg !2485
  %114 = load ptr, ptr %new_s1, align 8, !dbg !2486
  %call122 = call ptr @assoc_array_shortcut_to_ptr(ptr noundef %114) #15, !dbg !2487
  %115 = load ptr, ptr %new_n0, align 8, !dbg !2488
  %slots123 = getelementptr inbounds %struct.assoc_array_node, ptr %115, i32 0, i32 2, !dbg !2489
  %116 = load i32, ptr %sc_slot, align 4, !dbg !2490
  %idxprom124 = sext i32 %116 to i64, !dbg !2488
  %arrayidx125 = getelementptr [16 x ptr], ptr %slots123, i64 0, i64 %idxprom124, !dbg !2488
  store ptr %call122, ptr %arrayidx125, align 8, !dbg !2491
  %117 = load ptr, ptr %new_s1, align 8, !dbg !2492
  %index_key126 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %117, i32 0, i32 4, !dbg !2493
  %arraydecay127 = getelementptr inbounds [0 x i64], ptr %index_key126, i64 0, i64 0, !dbg !2494
  %118 = load ptr, ptr %shortcut, align 8, !dbg !2495
  %index_key128 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %118, i32 0, i32 4, !dbg !2496
  %arraydecay129 = getelementptr inbounds [0 x i64], ptr %index_key128, i64 0, i64 0, !dbg !2494
  %119 = load i64, ptr %keylen, align 8, !dbg !2497
  %call130 = call i64 @size_mul(i64 noundef %119, i64 noundef 8) #15, !dbg !2497
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay127, ptr align 8 %arraydecay129, i64 %call130, i1 false), !dbg !2494
  %120 = load ptr, ptr %side, align 8, !dbg !2498
  %back_pointer131 = getelementptr inbounds %struct.assoc_array_node, ptr %120, i32 0, i32 0, !dbg !2499
  %121 = load ptr, ptr %edit.addr, align 8, !dbg !2500
  %set132 = getelementptr inbounds %struct.assoc_array_edit, ptr %121, i32 0, i32 14, !dbg !2501
  %arrayidx133 = getelementptr [2 x %struct.anon.1], ptr %set132, i64 0, i64 1, !dbg !2500
  %ptr134 = getelementptr inbounds %struct.anon.1, ptr %arrayidx133, i32 0, i32 0, !dbg !2502
  store ptr %back_pointer131, ptr %ptr134, align 8, !dbg !2503
  %122 = load ptr, ptr %new_s1, align 8, !dbg !2504
  %call135 = call ptr @assoc_array_shortcut_to_ptr(ptr noundef %122) #15, !dbg !2505
  %123 = load ptr, ptr %edit.addr, align 8, !dbg !2506
  %set136 = getelementptr inbounds %struct.assoc_array_edit, ptr %123, i32 0, i32 14, !dbg !2507
  %arrayidx137 = getelementptr [2 x %struct.anon.1], ptr %set136, i64 0, i64 1, !dbg !2506
  %to138 = getelementptr inbounds %struct.anon.1, ptr %arrayidx137, i32 0, i32 1, !dbg !2508
  store ptr %call135, ptr %to138, align 8, !dbg !2509
  br label %if.end159, !dbg !2510

if.else139:                                       ; preds = %if.end84
  store i32 0, ptr %tmp140, align 4, !dbg !2511
  %124 = load i32, ptr %tmp140, align 4, !dbg !2515
  %125 = load ptr, ptr %shortcut, align 8, !dbg !2516
  %next_node141 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %125, i32 0, i32 3, !dbg !2517
  %126 = load ptr, ptr %next_node141, align 8, !dbg !2517
  %127 = load ptr, ptr %new_n0, align 8, !dbg !2518
  %slots142 = getelementptr inbounds %struct.assoc_array_node, ptr %127, i32 0, i32 2, !dbg !2519
  %128 = load i32, ptr %sc_slot, align 4, !dbg !2520
  %idxprom143 = sext i32 %128 to i64, !dbg !2518
  %arrayidx144 = getelementptr [16 x ptr], ptr %slots142, i64 0, i64 %idxprom143, !dbg !2518
  store ptr %126, ptr %arrayidx144, align 8, !dbg !2521
  %129 = load ptr, ptr %side, align 8, !dbg !2522
  %parent_slot145 = getelementptr inbounds %struct.assoc_array_node, ptr %129, i32 0, i32 1, !dbg !2523
  %130 = load ptr, ptr %edit.addr, align 8, !dbg !2524
  %set_parent_slot = getelementptr inbounds %struct.assoc_array_edit, ptr %130, i32 0, i32 15, !dbg !2525
  %arrayidx146 = getelementptr [1 x %struct.anon.2], ptr %set_parent_slot, i64 0, i64 0, !dbg !2524
  %p = getelementptr inbounds %struct.anon.2, ptr %arrayidx146, i32 0, i32 0, !dbg !2526
  store ptr %parent_slot145, ptr %p, align 8, !dbg !2527
  %131 = load i32, ptr %sc_slot, align 4, !dbg !2528
  %conv147 = trunc i32 %131 to i8, !dbg !2528
  %132 = load ptr, ptr %edit.addr, align 8, !dbg !2529
  %set_parent_slot148 = getelementptr inbounds %struct.assoc_array_edit, ptr %132, i32 0, i32 15, !dbg !2530
  %arrayidx149 = getelementptr [1 x %struct.anon.2], ptr %set_parent_slot148, i64 0, i64 0, !dbg !2529
  %to150 = getelementptr inbounds %struct.anon.2, ptr %arrayidx149, i32 0, i32 1, !dbg !2531
  store i8 %conv147, ptr %to150, align 8, !dbg !2532
  %133 = load ptr, ptr %side, align 8, !dbg !2533
  %back_pointer151 = getelementptr inbounds %struct.assoc_array_node, ptr %133, i32 0, i32 0, !dbg !2534
  %134 = load ptr, ptr %edit.addr, align 8, !dbg !2535
  %set152 = getelementptr inbounds %struct.assoc_array_edit, ptr %134, i32 0, i32 14, !dbg !2536
  %arrayidx153 = getelementptr [2 x %struct.anon.1], ptr %set152, i64 0, i64 1, !dbg !2535
  %ptr154 = getelementptr inbounds %struct.anon.1, ptr %arrayidx153, i32 0, i32 0, !dbg !2537
  store ptr %back_pointer151, ptr %ptr154, align 8, !dbg !2538
  %135 = load ptr, ptr %new_n0, align 8, !dbg !2539
  %call155 = call ptr @assoc_array_node_to_ptr(ptr noundef %135) #15, !dbg !2540
  %136 = load ptr, ptr %edit.addr, align 8, !dbg !2541
  %set156 = getelementptr inbounds %struct.assoc_array_edit, ptr %136, i32 0, i32 14, !dbg !2542
  %arrayidx157 = getelementptr [2 x %struct.anon.1], ptr %set156, i64 0, i64 1, !dbg !2541
  %to158 = getelementptr inbounds %struct.anon.1, ptr %arrayidx157, i32 0, i32 1, !dbg !2543
  store ptr %call155, ptr %to158, align 8, !dbg !2544
  br label %if.end159

if.end159:                                        ; preds = %if.else139, %if.end111
  %137 = load i32, ptr %sc_slot, align 4, !dbg !2545
  %cmp160 = icmp eq i32 %137, 0, !dbg !2547
  br i1 %cmp160, label %if.then162, label %if.else165, !dbg !2548

if.then162:                                       ; preds = %if.end159
  %138 = load ptr, ptr %new_n0, align 8, !dbg !2549
  %slots163 = getelementptr inbounds %struct.assoc_array_node, ptr %138, i32 0, i32 2, !dbg !2550
  %arrayidx164 = getelementptr [16 x ptr], ptr %slots163, i64 0, i64 1, !dbg !2549
  %139 = load ptr, ptr %edit.addr, align 8, !dbg !2551
  %leaf_p = getelementptr inbounds %struct.assoc_array_edit, ptr %139, i32 0, i32 5, !dbg !2552
  store ptr %arrayidx164, ptr %leaf_p, align 8, !dbg !2553
  br label %if.end169, !dbg !2551

if.else165:                                       ; preds = %if.end159
  %140 = load ptr, ptr %new_n0, align 8, !dbg !2554
  %slots166 = getelementptr inbounds %struct.assoc_array_node, ptr %140, i32 0, i32 2, !dbg !2555
  %arrayidx167 = getelementptr [16 x ptr], ptr %slots166, i64 0, i64 0, !dbg !2554
  %141 = load ptr, ptr %edit.addr, align 8, !dbg !2556
  %leaf_p168 = getelementptr inbounds %struct.assoc_array_edit, ptr %141, i32 0, i32 5, !dbg !2557
  store ptr %arrayidx167, ptr %leaf_p168, align 8, !dbg !2558
  br label %if.end169

if.end169:                                        ; preds = %if.else165, %if.then162
  store i32 0, ptr %tmp170, align 4, !dbg !2559
  %142 = load i32, ptr %tmp170, align 4, !dbg !2562
  %143 = load ptr, ptr %edit.addr, align 8, !dbg !2563
  %tobool171 = icmp ne ptr %143, null, !dbg !2563
  store i1 %tobool171, ptr %retval, align 1, !dbg !2564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2564

cleanup:                                          ; preds = %if.end169, %if.then110, %if.then48, %if.then34
  call void @llvm.lifetime.end.p0(i64 4, ptr %sc_slot) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 4, ptr %diff) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 4, ptr %sc_level) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 8, ptr %keylen) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 8, ptr %blank) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 8, ptr %dissimilarity) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc_segments) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 8, ptr %side) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_n0) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_s1) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_s0) #14, !dbg !2565
  call void @llvm.lifetime.end.p0(i64 8, ptr %shortcut) #14, !dbg !2565
  %144 = load i1, ptr %retval, align 1, !dbg !2565
  ret i1 %144, !dbg !2565
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @assoc_array_cancel_edit(ptr noundef %edit) #0 align 16 !dbg !2566 {
entry:
  %edit.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %edit, ptr %edit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edit.addr, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !2571, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2576
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2572, metadata !DIExpression()), !dbg !2577
  store i32 0, ptr %tmp, align 4, !dbg !2578
  %0 = load i32, ptr %tmp, align 4, !dbg !2581
  store i32 0, ptr %i, align 4, !dbg !2582
  br label %for.cond, !dbg !2584

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !2585
  %conv = sext i32 %1 to i64, !dbg !2585
  %cmp = icmp ult i64 %conv, 3, !dbg !2587
  br i1 %cmp, label %for.body, label %for.end, !dbg !2588

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %edit.addr, align 8, !dbg !2589
  %new_meta = getelementptr inbounds %struct.assoc_array_edit, ptr %2, i32 0, i32 7, !dbg !2591
  %3 = load i32, ptr %i, align 4, !dbg !2592
  %idxprom = sext i32 %3 to i64, !dbg !2589
  %arrayidx = getelementptr [3 x ptr], ptr %new_meta, i64 0, i64 %idxprom, !dbg !2589
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2589
  store ptr %4, ptr %ptr, align 8, !dbg !2593
  %5 = load ptr, ptr %ptr, align 8, !dbg !2594
  %tobool = icmp ne ptr %5, null, !dbg !2594
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2596

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %ptr, align 8, !dbg !2597
  %call = call zeroext i1 @assoc_array_ptr_is_node(ptr noundef %6) #15, !dbg !2600
  br i1 %call, label %if.then2, label %if.else, !dbg !2601

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %ptr, align 8, !dbg !2602
  %call3 = call ptr @assoc_array_ptr_to_node(ptr noundef %7) #15, !dbg !2603
  call void @kfree(ptr noundef %call3) #15, !dbg !2604
  br label %if.end, !dbg !2604

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %ptr, align 8, !dbg !2605
  %call4 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %8) #15, !dbg !2606
  call void @kfree(ptr noundef %call4) #15, !dbg !2607
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !2608

if.end5:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !2609

for.inc:                                          ; preds = %if.end5
  %9 = load i32, ptr %i, align 4, !dbg !2610
  %inc = add i32 %9, 1, !dbg !2610
  store i32 %inc, ptr %i, align 4, !dbg !2610
  br label %for.cond, !dbg !2611, !llvm.loop !2612

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %edit.addr, align 8, !dbg !2614
  call void @kfree(ptr noundef %10) #15, !dbg !2615
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2616
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !2616
  ret void, !dbg !2616
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @assoc_array_insert_set_object(ptr noundef %edit, ptr noundef %object) #0 align 16 !dbg !2617 {
entry:
  %edit.addr = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  store ptr %edit, ptr %edit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edit.addr, metadata !2621, metadata !DIExpression()), !dbg !2623
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !2622, metadata !DIExpression()), !dbg !2624
  br label %do.body, !dbg !2625

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %object.addr, align 8, !dbg !2626
  %tobool = icmp ne ptr %0, null, !dbg !2626
  %lnot = xor i1 %tobool, true, !dbg !2626
  %lnot1 = xor i1 %lnot, true, !dbg !2626
  %lnot2 = xor i1 %lnot1, true, !dbg !2626
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2626
  %conv = sext i32 %lnot.ext to i64, !dbg !2626
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2626
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2626
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2629

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !2626

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !2630

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !2632

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !2630

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1032, i32 0, i64 12) #14, !dbg !2634, !srcloc !2636
  br label %do.end7, !dbg !2634

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !2630

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !2630

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !2629

do.end9:                                          ; preds = %if.end
  %1 = load ptr, ptr %object.addr, align 8, !dbg !2637
  %call = call ptr @assoc_array_leaf_to_ptr(ptr noundef %1) #15, !dbg !2638
  %2 = load ptr, ptr %edit.addr, align 8, !dbg !2639
  %leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %2, i32 0, i32 4, !dbg !2640
  store ptr %call, ptr %leaf, align 8, !dbg !2641
  ret void, !dbg !2642
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @assoc_array_delete(ptr noundef %array, ptr noundef %ops, ptr noundef %index_key) #0 align 16 !dbg !2643 {
entry:
  %retval = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %index_key.addr = alloca ptr, align 8
  %collapse = alloca %struct.assoc_array_delete_collapse_context, align 8
  %result = alloca %struct.assoc_array_walk_result, align 8
  %node = alloca ptr, align 8
  %new_n0 = alloca ptr, align 8
  %edit = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %has_meta = alloca i8, align 1
  %slot = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp52 = alloca i32, align 4
  %parent = alloca ptr, align 8
  %grandparent = alloca ptr, align 8
  %ptr57 = alloca ptr, align 8
  %tmp71 = alloca i32, align 4
  %tmp72 = alloca i32, align 4
  %s = alloca ptr, align 8
  %tmp114 = alloca i32, align 4
  %p = alloca ptr, align 8
  %s177 = alloca ptr, align 8
  %tmp200 = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !2647, metadata !DIExpression()), !dbg !2686
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !2648, metadata !DIExpression()), !dbg !2687
  store ptr %index_key, ptr %index_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index_key.addr, metadata !2649, metadata !DIExpression()), !dbg !2688
  call void @llvm.lifetime.start.p0(i64 24, ptr %collapse) #14, !dbg !2689
  call void @llvm.dbg.declare(metadata ptr %collapse, metadata !2650, metadata !DIExpression()), !dbg !2690
  call void @llvm.lifetime.start.p0(i64 48, ptr %result) #14, !dbg !2691
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2656, metadata !DIExpression()), !dbg !2692
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !2693
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2657, metadata !DIExpression()), !dbg !2694
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_n0) #14, !dbg !2693
  call void @llvm.dbg.declare(metadata ptr %new_n0, metadata !2658, metadata !DIExpression()), !dbg !2695
  call void @llvm.lifetime.start.p0(i64 8, ptr %edit) #14, !dbg !2696
  call void @llvm.dbg.declare(metadata ptr %edit, metadata !2659, metadata !DIExpression()), !dbg !2697
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !2698
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !2660, metadata !DIExpression()), !dbg !2699
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_meta) #14, !dbg !2700
  call void @llvm.dbg.declare(metadata ptr %has_meta, metadata !2661, metadata !DIExpression()), !dbg !2701
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #14, !dbg !2702
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !2662, metadata !DIExpression()), !dbg !2703
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2702
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2663, metadata !DIExpression()), !dbg !2704
  store i32 0, ptr %tmp, align 4, !dbg !2705
  %0 = load i32, ptr %tmp, align 4, !dbg !2708
  %call = call noalias ptr @kzalloc(i64 noundef 328, i32 noundef 3264) #16, !dbg !2709
  store ptr %call, ptr %edit, align 8, !dbg !2710
  %1 = load ptr, ptr %edit, align 8, !dbg !2711
  %tobool = icmp ne ptr %1, null, !dbg !2711
  br i1 %tobool, label %if.end, label %if.then, !dbg !2713

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #15, !dbg !2714
  store ptr %call1, ptr %retval, align 8, !dbg !2715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !2715

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %array.addr, align 8, !dbg !2716
  %3 = load ptr, ptr %edit, align 8, !dbg !2717
  %array2 = getelementptr inbounds %struct.assoc_array_edit, ptr %3, i32 0, i32 1, !dbg !2718
  store ptr %2, ptr %array2, align 8, !dbg !2719
  %4 = load ptr, ptr %ops.addr, align 8, !dbg !2720
  %5 = load ptr, ptr %edit, align 8, !dbg !2721
  %ops3 = getelementptr inbounds %struct.assoc_array_edit, ptr %5, i32 0, i32 2, !dbg !2722
  store ptr %4, ptr %ops3, align 8, !dbg !2723
  %6 = load ptr, ptr %edit, align 8, !dbg !2724
  %adjust_count_by = getelementptr inbounds %struct.assoc_array_edit, ptr %6, i32 0, i32 13, !dbg !2725
  store i64 -1, ptr %adjust_count_by, align 8, !dbg !2726
  %7 = load ptr, ptr %array.addr, align 8, !dbg !2727
  %8 = load ptr, ptr %ops.addr, align 8, !dbg !2728
  %9 = load ptr, ptr %index_key.addr, align 8, !dbg !2729
  %call4 = call i32 @assoc_array_walk(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %result) #15, !dbg !2730
  switch i32 %call4, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb14
    i32 2, label %sw.bb14
  ], !dbg !2731

sw.bb:                                            ; preds = %if.end
  store i32 0, ptr %tmp5, align 4, !dbg !2732
  %10 = load i32, ptr %tmp5, align 4, !dbg !2736
  %terminal_node = getelementptr inbounds %struct.assoc_array_walk_result, ptr %result, i32 0, i32 0, !dbg !2737
  %node6 = getelementptr inbounds %struct.anon, ptr %terminal_node, i32 0, i32 0, !dbg !2738
  %11 = load ptr, ptr %node6, align 8, !dbg !2738
  store ptr %11, ptr %node, align 8, !dbg !2739
  store i32 0, ptr %slot, align 4, !dbg !2740
  br label %for.cond, !dbg !2742

for.cond:                                         ; preds = %for.inc, %sw.bb
  %12 = load i32, ptr %slot, align 4, !dbg !2743
  %cmp = icmp slt i32 %12, 16, !dbg !2745
  br i1 %cmp, label %for.body, label %for.end, !dbg !2746

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %node, align 8, !dbg !2747
  %slots = getelementptr inbounds %struct.assoc_array_node, ptr %13, i32 0, i32 2, !dbg !2749
  %14 = load i32, ptr %slot, align 4, !dbg !2750
  %idxprom = sext i32 %14 to i64, !dbg !2747
  %arrayidx = getelementptr [16 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !2747
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !2747
  store ptr %15, ptr %ptr, align 8, !dbg !2751
  %16 = load ptr, ptr %ptr, align 8, !dbg !2752
  %tobool7 = icmp ne ptr %16, null, !dbg !2752
  br i1 %tobool7, label %land.lhs.true, label %if.end13, !dbg !2754

land.lhs.true:                                    ; preds = %for.body
  %17 = load ptr, ptr %ptr, align 8, !dbg !2755
  %call8 = call zeroext i1 @assoc_array_ptr_is_leaf(ptr noundef %17) #15, !dbg !2756
  br i1 %call8, label %land.lhs.true9, label %if.end13, !dbg !2757

land.lhs.true9:                                   ; preds = %land.lhs.true
  %18 = load ptr, ptr %ops.addr, align 8, !dbg !2758
  %compare_object = getelementptr inbounds %struct.assoc_array_ops, ptr %18, i32 0, i32 2, !dbg !2759
  %19 = load ptr, ptr %compare_object, align 8, !dbg !2759
  %20 = load ptr, ptr %ptr, align 8, !dbg !2760
  %call10 = call ptr @assoc_array_ptr_to_leaf(ptr noundef %20) #15, !dbg !2761
  %21 = load ptr, ptr %index_key.addr, align 8, !dbg !2762
  %call11 = call zeroext i1 %19(ptr noundef %call10, ptr noundef %21) #15, !dbg !2758
  br i1 %call11, label %if.then12, label %if.end13, !dbg !2763

if.then12:                                        ; preds = %land.lhs.true9
  br label %found_leaf, !dbg !2764

if.end13:                                         ; preds = %land.lhs.true9, %land.lhs.true, %for.body
  br label %for.inc, !dbg !2765

for.inc:                                          ; preds = %if.end13
  %22 = load i32, ptr %slot, align 4, !dbg !2766
  %inc = add i32 %22, 1, !dbg !2766
  store i32 %inc, ptr %slot, align 4, !dbg !2766
  br label %for.cond, !dbg !2767, !llvm.loop !2768

for.end:                                          ; preds = %for.cond
  br label %sw.bb14, !dbg !2769

sw.bb14:                                          ; preds = %if.end, %if.end, %for.end
  br label %sw.default, !dbg !2770

sw.default:                                       ; preds = %if.end, %sw.bb14
  %23 = load ptr, ptr %edit, align 8, !dbg !2771
  call void @assoc_array_cancel_edit(ptr noundef %23) #15, !dbg !2772
  store i32 0, ptr %tmp15, align 4, !dbg !2773
  %24 = load i32, ptr %tmp15, align 4, !dbg !2776
  store ptr null, ptr %retval, align 8, !dbg !2777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !2777

found_leaf:                                       ; preds = %if.then12
  call void @llvm.dbg.label(metadata !2664), !dbg !2778
  br label %do.body, !dbg !2779

do.body:                                          ; preds = %found_leaf
  %25 = load ptr, ptr %array.addr, align 8, !dbg !2780
  %nr_leaves_on_tree = getelementptr inbounds %struct.assoc_array, ptr %25, i32 0, i32 1, !dbg !2780
  %26 = load i64, ptr %nr_leaves_on_tree, align 8, !dbg !2780
  %cmp16 = icmp ule i64 %26, 0, !dbg !2780
  %lnot = xor i1 %cmp16, true, !dbg !2780
  %lnot17 = xor i1 %lnot, true, !dbg !2780
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !2780
  %conv = sext i32 %lnot.ext to i64, !dbg !2780
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2780
  %tobool18 = icmp ne i64 %expval, 0, !dbg !2780
  br i1 %tobool18, label %if.then19, label %if.end27, !dbg !2783

if.then19:                                        ; preds = %do.body
  br label %do.body20, !dbg !2780

do.body20:                                        ; preds = %if.then19
  br label %do.body21, !dbg !2784

do.body21:                                        ; preds = %do.body20
  br label %do.cond, !dbg !2786

do.cond:                                          ; preds = %do.body21
  br label %do.end, !dbg !2786

do.end:                                           ; preds = %do.cond
  br label %do.body22, !dbg !2784

do.body22:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1125, i32 0, i64 12) #14, !dbg !2788, !srcloc !2790
  br label %do.cond23, !dbg !2788

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2788

do.end24:                                         ; preds = %do.cond23
  unreachable, !dbg !2784

do.cond25:                                        ; No predecessors!
  br label %do.end26, !dbg !2784

do.end26:                                         ; preds = %do.cond25
  br label %if.end27, !dbg !2784

if.end27:                                         ; preds = %do.end26, %do.body
  br label %do.cond28, !dbg !2783

do.cond28:                                        ; preds = %if.end27
  br label %do.end29, !dbg !2783

do.end29:                                         ; preds = %do.cond28
  %27 = load ptr, ptr %node, align 8, !dbg !2791
  %slots30 = getelementptr inbounds %struct.assoc_array_node, ptr %27, i32 0, i32 2, !dbg !2792
  %28 = load i32, ptr %slot, align 4, !dbg !2793
  %idxprom31 = sext i32 %28 to i64, !dbg !2791
  %arrayidx32 = getelementptr [16 x ptr], ptr %slots30, i64 0, i64 %idxprom31, !dbg !2791
  %29 = load ptr, ptr %arrayidx32, align 8, !dbg !2791
  %30 = load ptr, ptr %edit, align 8, !dbg !2794
  %dead_leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %30, i32 0, i32 6, !dbg !2795
  store ptr %29, ptr %dead_leaf, align 8, !dbg !2796
  %31 = load ptr, ptr %node, align 8, !dbg !2797
  %slots33 = getelementptr inbounds %struct.assoc_array_node, ptr %31, i32 0, i32 2, !dbg !2798
  %32 = load i32, ptr %slot, align 4, !dbg !2799
  %idxprom34 = sext i32 %32 to i64, !dbg !2797
  %arrayidx35 = getelementptr [16 x ptr], ptr %slots33, i64 0, i64 %idxprom34, !dbg !2797
  %33 = load ptr, ptr %edit, align 8, !dbg !2800
  %set = getelementptr inbounds %struct.assoc_array_edit, ptr %33, i32 0, i32 14, !dbg !2801
  %arrayidx36 = getelementptr [2 x %struct.anon.1], ptr %set, i64 0, i64 0, !dbg !2800
  %ptr37 = getelementptr inbounds %struct.anon.1, ptr %arrayidx36, i32 0, i32 0, !dbg !2802
  store ptr %arrayidx35, ptr %ptr37, align 8, !dbg !2803
  %34 = load ptr, ptr %edit, align 8, !dbg !2804
  %set38 = getelementptr inbounds %struct.assoc_array_edit, ptr %34, i32 0, i32 14, !dbg !2805
  %arrayidx39 = getelementptr [2 x %struct.anon.1], ptr %set38, i64 0, i64 0, !dbg !2804
  %to = getelementptr inbounds %struct.anon.1, ptr %arrayidx39, i32 0, i32 1, !dbg !2806
  store ptr null, ptr %to, align 8, !dbg !2807
  %35 = load ptr, ptr %node, align 8, !dbg !2808
  %36 = load ptr, ptr %edit, align 8, !dbg !2809
  %adjust_count_on = getelementptr inbounds %struct.assoc_array_edit, ptr %36, i32 0, i32 12, !dbg !2810
  store ptr %35, ptr %adjust_count_on, align 8, !dbg !2811
  %37 = load ptr, ptr %array.addr, align 8, !dbg !2812
  %nr_leaves_on_tree40 = getelementptr inbounds %struct.assoc_array, ptr %37, i32 0, i32 1, !dbg !2814
  %38 = load i64, ptr %nr_leaves_on_tree40, align 8, !dbg !2814
  %cmp41 = icmp eq i64 %38, 1, !dbg !2815
  br i1 %cmp41, label %if.then43, label %if.end53, !dbg !2816

if.then43:                                        ; preds = %do.end29
  %39 = load ptr, ptr %array.addr, align 8, !dbg !2817
  %root = getelementptr inbounds %struct.assoc_array, ptr %39, i32 0, i32 0, !dbg !2819
  %40 = load ptr, ptr %edit, align 8, !dbg !2820
  %set44 = getelementptr inbounds %struct.assoc_array_edit, ptr %40, i32 0, i32 14, !dbg !2821
  %arrayidx45 = getelementptr [2 x %struct.anon.1], ptr %set44, i64 0, i64 1, !dbg !2820
  %ptr46 = getelementptr inbounds %struct.anon.1, ptr %arrayidx45, i32 0, i32 0, !dbg !2822
  store ptr %root, ptr %ptr46, align 8, !dbg !2823
  %41 = load ptr, ptr %edit, align 8, !dbg !2824
  %set47 = getelementptr inbounds %struct.assoc_array_edit, ptr %41, i32 0, i32 14, !dbg !2825
  %arrayidx48 = getelementptr [2 x %struct.anon.1], ptr %set47, i64 0, i64 1, !dbg !2824
  %to49 = getelementptr inbounds %struct.anon.1, ptr %arrayidx48, i32 0, i32 1, !dbg !2826
  store ptr null, ptr %to49, align 8, !dbg !2827
  %42 = load ptr, ptr %edit, align 8, !dbg !2828
  %adjust_count_on50 = getelementptr inbounds %struct.assoc_array_edit, ptr %42, i32 0, i32 12, !dbg !2829
  store ptr null, ptr %adjust_count_on50, align 8, !dbg !2830
  %43 = load ptr, ptr %array.addr, align 8, !dbg !2831
  %root51 = getelementptr inbounds %struct.assoc_array, ptr %43, i32 0, i32 0, !dbg !2832
  %44 = load ptr, ptr %root51, align 8, !dbg !2832
  %45 = load ptr, ptr %edit, align 8, !dbg !2833
  %excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %45, i32 0, i32 9, !dbg !2834
  store ptr %44, ptr %excised_subtree, align 8, !dbg !2835
  store i32 0, ptr %tmp52, align 4, !dbg !2836
  %46 = load i32, ptr %tmp52, align 4, !dbg !2839
  %47 = load ptr, ptr %edit, align 8, !dbg !2840
  store ptr %47, ptr %retval, align 8, !dbg !2841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !2841

if.end53:                                         ; preds = %do.end29
  %48 = load ptr, ptr %node, align 8, !dbg !2842
  %nr_leaves_on_branch = getelementptr inbounds %struct.assoc_array_node, ptr %48, i32 0, i32 3, !dbg !2843
  %49 = load i64, ptr %nr_leaves_on_branch, align 8, !dbg !2843
  %cmp54 = icmp ule i64 %49, 17, !dbg !2844
  br i1 %cmp54, label %if.then56, label %if.end199, !dbg !2845

if.then56:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #14, !dbg !2846
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !2665, metadata !DIExpression()), !dbg !2847
  call void @llvm.lifetime.start.p0(i64 8, ptr %grandparent) #14, !dbg !2846
  call void @llvm.dbg.declare(metadata ptr %grandparent, metadata !2668, metadata !DIExpression()), !dbg !2848
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr57) #14, !dbg !2849
  call void @llvm.dbg.declare(metadata ptr %ptr57, metadata !2669, metadata !DIExpression()), !dbg !2850
  store i8 0, ptr %has_meta, align 1, !dbg !2851
  store i32 0, ptr %i, align 4, !dbg !2852
  br label %for.cond58, !dbg !2854

for.cond58:                                       ; preds = %for.inc68, %if.then56
  %50 = load i32, ptr %i, align 4, !dbg !2855
  %cmp59 = icmp slt i32 %50, 16, !dbg !2857
  br i1 %cmp59, label %for.body61, label %for.end70, !dbg !2858

for.body61:                                       ; preds = %for.cond58
  %51 = load ptr, ptr %node, align 8, !dbg !2859
  %slots62 = getelementptr inbounds %struct.assoc_array_node, ptr %51, i32 0, i32 2, !dbg !2861
  %52 = load i32, ptr %i, align 4, !dbg !2862
  %idxprom63 = sext i32 %52 to i64, !dbg !2859
  %arrayidx64 = getelementptr [16 x ptr], ptr %slots62, i64 0, i64 %idxprom63, !dbg !2859
  %53 = load ptr, ptr %arrayidx64, align 8, !dbg !2859
  store ptr %53, ptr %ptr57, align 8, !dbg !2863
  %54 = load ptr, ptr %ptr57, align 8, !dbg !2864
  %call65 = call zeroext i1 @assoc_array_ptr_is_meta(ptr noundef %54) #15, !dbg !2866
  br i1 %call65, label %if.then66, label %if.end67, !dbg !2867

if.then66:                                        ; preds = %for.body61
  store i8 1, ptr %has_meta, align 1, !dbg !2868
  br label %for.end70, !dbg !2870

if.end67:                                         ; preds = %for.body61
  br label %for.inc68, !dbg !2871

for.inc68:                                        ; preds = %if.end67
  %55 = load i32, ptr %i, align 4, !dbg !2872
  %inc69 = add i32 %55, 1, !dbg !2872
  store i32 %inc69, ptr %i, align 4, !dbg !2872
  br label %for.cond58, !dbg !2873, !llvm.loop !2874

for.end70:                                        ; preds = %if.then66, %for.cond58
  store i32 0, ptr %tmp71, align 4, !dbg !2876
  %56 = load i32, ptr %tmp71, align 4, !dbg !2879
  %57 = load ptr, ptr %node, align 8, !dbg !2880
  store ptr %57, ptr %parent, align 8, !dbg !2881
  br label %collapse_up, !dbg !2882

collapse_up:                                      ; preds = %if.then88, %for.end70
  call void @llvm.dbg.label(metadata !2670), !dbg !2883
  store i32 0, ptr %tmp72, align 4, !dbg !2884
  %58 = load i32, ptr %tmp72, align 4, !dbg !2887
  %59 = load ptr, ptr %parent, align 8, !dbg !2888
  %back_pointer = getelementptr inbounds %struct.assoc_array_node, ptr %59, i32 0, i32 0, !dbg !2889
  %60 = load ptr, ptr %back_pointer, align 8, !dbg !2889
  store ptr %60, ptr %ptr57, align 8, !dbg !2890
  %61 = load ptr, ptr %ptr57, align 8, !dbg !2891
  %tobool73 = icmp ne ptr %61, null, !dbg !2891
  br i1 %tobool73, label %if.end75, label %if.then74, !dbg !2893

if.then74:                                        ; preds = %collapse_up
  br label %do_collapse, !dbg !2894

if.end75:                                         ; preds = %collapse_up
  %62 = load ptr, ptr %ptr57, align 8, !dbg !2895
  %call76 = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %62) #15, !dbg !2896
  br i1 %call76, label %if.then77, label %if.end83, !dbg !2897

if.then77:                                        ; preds = %if.end75
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !2898
  call void @llvm.dbg.declare(metadata ptr %s, metadata !2671, metadata !DIExpression()), !dbg !2899
  %63 = load ptr, ptr %ptr57, align 8, !dbg !2900
  %call78 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %63) #15, !dbg !2901
  store ptr %call78, ptr %s, align 8, !dbg !2899
  %64 = load ptr, ptr %s, align 8, !dbg !2902
  %back_pointer79 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %64, i32 0, i32 0, !dbg !2903
  %65 = load ptr, ptr %back_pointer79, align 8, !dbg !2903
  store ptr %65, ptr %ptr57, align 8, !dbg !2904
  %66 = load ptr, ptr %ptr57, align 8, !dbg !2905
  %tobool80 = icmp ne ptr %66, null, !dbg !2905
  br i1 %tobool80, label %if.end82, label %if.then81, !dbg !2907

if.then81:                                        ; preds = %if.then77
  store i32 19, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2908

if.end82:                                         ; preds = %if.then77
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2909
  br label %cleanup, !dbg !2909

cleanup:                                          ; preds = %if.then81, %if.end82
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !2909
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup194 [
    i32 0, label %cleanup.cont
    i32 19, label %do_collapse
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end83, !dbg !2910

if.end83:                                         ; preds = %cleanup.cont, %if.end75
  %67 = load ptr, ptr %ptr57, align 8, !dbg !2911
  %call84 = call ptr @assoc_array_ptr_to_node(ptr noundef %67) #15, !dbg !2912
  store ptr %call84, ptr %grandparent, align 8, !dbg !2913
  %68 = load ptr, ptr %grandparent, align 8, !dbg !2914
  %nr_leaves_on_branch85 = getelementptr inbounds %struct.assoc_array_node, ptr %68, i32 0, i32 3, !dbg !2916
  %69 = load i64, ptr %nr_leaves_on_branch85, align 8, !dbg !2916
  %cmp86 = icmp ule i64 %69, 17, !dbg !2917
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !2918

if.then88:                                        ; preds = %if.end83
  %70 = load ptr, ptr %grandparent, align 8, !dbg !2919
  store ptr %70, ptr %parent, align 8, !dbg !2921
  br label %collapse_up, !dbg !2922

if.end89:                                         ; preds = %if.end83
  br label %do_collapse, !dbg !2923

do_collapse:                                      ; preds = %if.end89, %cleanup, %if.then74
  call void @llvm.dbg.label(metadata !2674), !dbg !2924
  %71 = load i8, ptr %has_meta, align 1, !dbg !2925, !range !1489, !noundef !1490
  %tobool90 = trunc i8 %71 to i1, !dbg !2925
  br i1 %tobool90, label %if.then94, label %lor.lhs.false, !dbg !2926

lor.lhs.false:                                    ; preds = %do_collapse
  %72 = load ptr, ptr %parent, align 8, !dbg !2927
  %73 = load ptr, ptr %node, align 8, !dbg !2928
  %cmp92 = icmp ne ptr %72, %73, !dbg !2929
  br i1 %cmp92, label %if.then94, label %if.end193, !dbg !2930

if.then94:                                        ; preds = %lor.lhs.false, %do_collapse
  %74 = load ptr, ptr %parent, align 8, !dbg !2931
  store ptr %74, ptr %node, align 8, !dbg !2932
  %call95 = call noalias ptr @kzalloc(i64 noundef 152, i32 noundef 3264) #16, !dbg !2933
  store ptr %call95, ptr %new_n0, align 8, !dbg !2934
  %75 = load ptr, ptr %new_n0, align 8, !dbg !2935
  %tobool96 = icmp ne ptr %75, null, !dbg !2935
  br i1 %tobool96, label %if.end98, label %if.then97, !dbg !2937

if.then97:                                        ; preds = %if.then94
  store i32 20, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !2938

if.end98:                                         ; preds = %if.then94
  %76 = load ptr, ptr %new_n0, align 8, !dbg !2939
  %call99 = call ptr @assoc_array_node_to_ptr(ptr noundef %76) #15, !dbg !2940
  %77 = load ptr, ptr %edit, align 8, !dbg !2941
  %new_meta = getelementptr inbounds %struct.assoc_array_edit, ptr %77, i32 0, i32 7, !dbg !2942
  %arrayidx100 = getelementptr [3 x ptr], ptr %new_meta, i64 0, i64 0, !dbg !2941
  store ptr %call99, ptr %arrayidx100, align 8, !dbg !2943
  %78 = load ptr, ptr %node, align 8, !dbg !2944
  %back_pointer101 = getelementptr inbounds %struct.assoc_array_node, ptr %78, i32 0, i32 0, !dbg !2945
  %79 = load ptr, ptr %back_pointer101, align 8, !dbg !2945
  %80 = load ptr, ptr %new_n0, align 8, !dbg !2946
  %back_pointer102 = getelementptr inbounds %struct.assoc_array_node, ptr %80, i32 0, i32 0, !dbg !2947
  store ptr %79, ptr %back_pointer102, align 8, !dbg !2948
  %81 = load ptr, ptr %node, align 8, !dbg !2949
  %parent_slot = getelementptr inbounds %struct.assoc_array_node, ptr %81, i32 0, i32 1, !dbg !2950
  %82 = load i8, ptr %parent_slot, align 8, !dbg !2950
  %83 = load ptr, ptr %new_n0, align 8, !dbg !2951
  %parent_slot103 = getelementptr inbounds %struct.assoc_array_node, ptr %83, i32 0, i32 1, !dbg !2952
  store i8 %82, ptr %parent_slot103, align 8, !dbg !2953
  %84 = load ptr, ptr %node, align 8, !dbg !2954
  %nr_leaves_on_branch104 = getelementptr inbounds %struct.assoc_array_node, ptr %84, i32 0, i32 3, !dbg !2955
  %85 = load i64, ptr %nr_leaves_on_branch104, align 8, !dbg !2955
  %86 = load ptr, ptr %new_n0, align 8, !dbg !2956
  %nr_leaves_on_branch105 = getelementptr inbounds %struct.assoc_array_node, ptr %86, i32 0, i32 3, !dbg !2957
  store i64 %85, ptr %nr_leaves_on_branch105, align 8, !dbg !2958
  %87 = load ptr, ptr %new_n0, align 8, !dbg !2959
  %88 = load ptr, ptr %edit, align 8, !dbg !2960
  %adjust_count_on106 = getelementptr inbounds %struct.assoc_array_edit, ptr %88, i32 0, i32 12, !dbg !2961
  store ptr %87, ptr %adjust_count_on106, align 8, !dbg !2962
  %89 = load ptr, ptr %new_n0, align 8, !dbg !2963
  %node107 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %collapse, i32 0, i32 0, !dbg !2964
  store ptr %89, ptr %node107, align 8, !dbg !2965
  %90 = load ptr, ptr %edit, align 8, !dbg !2966
  %dead_leaf108 = getelementptr inbounds %struct.assoc_array_edit, ptr %90, i32 0, i32 6, !dbg !2967
  %91 = load ptr, ptr %dead_leaf108, align 8, !dbg !2967
  %call109 = call ptr @assoc_array_ptr_to_leaf(ptr noundef %91) #15, !dbg !2968
  %skip_leaf = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %collapse, i32 0, i32 1, !dbg !2969
  store ptr %call109, ptr %skip_leaf, align 8, !dbg !2970
  %slot110 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %collapse, i32 0, i32 2, !dbg !2971
  store i32 0, ptr %slot110, align 8, !dbg !2972
  %92 = load ptr, ptr %node, align 8, !dbg !2973
  %call111 = call ptr @assoc_array_node_to_ptr(ptr noundef %92) #15, !dbg !2974
  %93 = load ptr, ptr %node, align 8, !dbg !2975
  %back_pointer112 = getelementptr inbounds %struct.assoc_array_node, ptr %93, i32 0, i32 0, !dbg !2976
  %94 = load ptr, ptr %back_pointer112, align 8, !dbg !2976
  %call113 = call i32 @assoc_array_subtree_iterate(ptr noundef %call111, ptr noundef %94, ptr noundef @assoc_array_delete_collapse_iterator, ptr noundef %collapse) #15, !dbg !2977
  store i32 0, ptr %tmp114, align 4, !dbg !2978
  %95 = load i32, ptr %tmp114, align 4, !dbg !2981
  br label %do.body115, !dbg !2982

do.body115:                                       ; preds = %if.end98
  %slot116 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %collapse, i32 0, i32 2, !dbg !2983
  %96 = load i32, ptr %slot116, align 8, !dbg !2983
  %conv117 = sext i32 %96 to i64, !dbg !2983
  %97 = load ptr, ptr %new_n0, align 8, !dbg !2983
  %nr_leaves_on_branch118 = getelementptr inbounds %struct.assoc_array_node, ptr %97, i32 0, i32 3, !dbg !2983
  %98 = load i64, ptr %nr_leaves_on_branch118, align 8, !dbg !2983
  %sub = sub i64 %98, 1, !dbg !2983
  %cmp119 = icmp ne i64 %conv117, %sub, !dbg !2983
  %lnot121 = xor i1 %cmp119, true, !dbg !2983
  %lnot123 = xor i1 %lnot121, true, !dbg !2983
  %lnot.ext124 = zext i1 %lnot123 to i32, !dbg !2983
  %conv125 = sext i32 %lnot.ext124 to i64, !dbg !2983
  %expval126 = call i64 @llvm.expect.i64(i64 %conv125, i64 0), !dbg !2983
  %tobool127 = icmp ne i64 %expval126, 0, !dbg !2983
  br i1 %tobool127, label %if.then128, label %if.end138, !dbg !2986

if.then128:                                       ; preds = %do.body115
  br label %do.body129, !dbg !2983

do.body129:                                       ; preds = %if.then128
  br label %do.body130, !dbg !2987

do.body130:                                       ; preds = %do.body129
  br label %do.cond131, !dbg !2989

do.cond131:                                       ; preds = %do.body130
  br label %do.end132, !dbg !2989

do.end132:                                        ; preds = %do.cond131
  br label %do.body133, !dbg !2987

do.body133:                                       ; preds = %do.end132
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1227, i32 0, i64 12) #14, !dbg !2991, !srcloc !2993
  br label %do.cond134, !dbg !2991

do.cond134:                                       ; preds = %do.body133
  br label %do.end135, !dbg !2991

do.end135:                                        ; preds = %do.cond134
  unreachable, !dbg !2987

do.cond136:                                       ; No predecessors!
  br label %do.end137, !dbg !2987

do.end137:                                        ; preds = %do.cond136
  br label %if.end138, !dbg !2987

if.end138:                                        ; preds = %do.end137, %do.body115
  br label %do.cond139, !dbg !2986

do.cond139:                                       ; preds = %if.end138
  br label %do.end140, !dbg !2986

do.end140:                                        ; preds = %do.cond139
  %99 = load ptr, ptr %node, align 8, !dbg !2994
  %back_pointer141 = getelementptr inbounds %struct.assoc_array_node, ptr %99, i32 0, i32 0, !dbg !2995
  %100 = load ptr, ptr %back_pointer141, align 8, !dbg !2995
  %tobool142 = icmp ne ptr %100, null, !dbg !2994
  br i1 %tobool142, label %if.else, label %if.then143, !dbg !2996

if.then143:                                       ; preds = %do.end140
  %101 = load ptr, ptr %array.addr, align 8, !dbg !2997
  %root144 = getelementptr inbounds %struct.assoc_array, ptr %101, i32 0, i32 0, !dbg !2999
  %102 = load ptr, ptr %edit, align 8, !dbg !3000
  %set145 = getelementptr inbounds %struct.assoc_array_edit, ptr %102, i32 0, i32 14, !dbg !3001
  %arrayidx146 = getelementptr [2 x %struct.anon.1], ptr %set145, i64 0, i64 1, !dbg !3000
  %ptr147 = getelementptr inbounds %struct.anon.1, ptr %arrayidx146, i32 0, i32 0, !dbg !3002
  store ptr %root144, ptr %ptr147, align 8, !dbg !3003
  br label %if.end186, !dbg !3004

if.else:                                          ; preds = %do.end140
  %103 = load ptr, ptr %node, align 8, !dbg !3005
  %back_pointer148 = getelementptr inbounds %struct.assoc_array_node, ptr %103, i32 0, i32 0, !dbg !3006
  %104 = load ptr, ptr %back_pointer148, align 8, !dbg !3006
  %call149 = call zeroext i1 @assoc_array_ptr_is_leaf(ptr noundef %104) #15, !dbg !3007
  br i1 %call149, label %if.then150, label %if.else160, !dbg !3008

if.then150:                                       ; preds = %if.else
  br label %do.body151, !dbg !3009

do.body151:                                       ; preds = %if.then150
  br label %do.body152, !dbg !3011

do.body152:                                       ; preds = %do.body151
  br label %do.cond153, !dbg !3013

do.cond153:                                       ; preds = %do.body152
  br label %do.end154, !dbg !3013

do.end154:                                        ; preds = %do.cond153
  br label %do.body155, !dbg !3011

do.body155:                                       ; preds = %do.end154
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1232, i32 0, i64 12) #14, !dbg !3015, !srcloc !3017
  br label %do.cond156, !dbg !3015

do.cond156:                                       ; preds = %do.body155
  br label %do.end157, !dbg !3015

do.end157:                                        ; preds = %do.cond156
  unreachable, !dbg !3011

do.cond158:                                       ; No predecessors!
  br label %do.end159, !dbg !3011

do.end159:                                        ; preds = %do.cond158
  br label %if.end185, !dbg !3018

if.else160:                                       ; preds = %if.else
  %105 = load ptr, ptr %node, align 8, !dbg !3019
  %back_pointer161 = getelementptr inbounds %struct.assoc_array_node, ptr %105, i32 0, i32 0, !dbg !3020
  %106 = load ptr, ptr %back_pointer161, align 8, !dbg !3020
  %call162 = call zeroext i1 @assoc_array_ptr_is_node(ptr noundef %106) #15, !dbg !3021
  br i1 %call162, label %if.then163, label %if.else173, !dbg !3022

if.then163:                                       ; preds = %if.else160
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !3023
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2675, metadata !DIExpression()), !dbg !3024
  %107 = load ptr, ptr %node, align 8, !dbg !3025
  %back_pointer164 = getelementptr inbounds %struct.assoc_array_node, ptr %107, i32 0, i32 0, !dbg !3026
  %108 = load ptr, ptr %back_pointer164, align 8, !dbg !3026
  %call165 = call ptr @assoc_array_ptr_to_node(ptr noundef %108) #15, !dbg !3027
  store ptr %call165, ptr %p, align 8, !dbg !3024
  %109 = load ptr, ptr %p, align 8, !dbg !3028
  %slots166 = getelementptr inbounds %struct.assoc_array_node, ptr %109, i32 0, i32 2, !dbg !3029
  %110 = load ptr, ptr %node, align 8, !dbg !3030
  %parent_slot167 = getelementptr inbounds %struct.assoc_array_node, ptr %110, i32 0, i32 1, !dbg !3031
  %111 = load i8, ptr %parent_slot167, align 8, !dbg !3031
  %idxprom168 = zext i8 %111 to i64, !dbg !3028
  %arrayidx169 = getelementptr [16 x ptr], ptr %slots166, i64 0, i64 %idxprom168, !dbg !3028
  %112 = load ptr, ptr %edit, align 8, !dbg !3032
  %set170 = getelementptr inbounds %struct.assoc_array_edit, ptr %112, i32 0, i32 14, !dbg !3033
  %arrayidx171 = getelementptr [2 x %struct.anon.1], ptr %set170, i64 0, i64 1, !dbg !3032
  %ptr172 = getelementptr inbounds %struct.anon.1, ptr %arrayidx171, i32 0, i32 0, !dbg !3034
  store ptr %arrayidx169, ptr %ptr172, align 8, !dbg !3035
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !3036
  br label %if.end184, !dbg !3037

if.else173:                                       ; preds = %if.else160
  %113 = load ptr, ptr %node, align 8, !dbg !3038
  %back_pointer174 = getelementptr inbounds %struct.assoc_array_node, ptr %113, i32 0, i32 0, !dbg !3039
  %114 = load ptr, ptr %back_pointer174, align 8, !dbg !3039
  %call175 = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %114) #15, !dbg !3040
  br i1 %call175, label %if.then176, label %if.end183, !dbg !3041

if.then176:                                       ; preds = %if.else173
  call void @llvm.lifetime.start.p0(i64 8, ptr %s177) #14, !dbg !3042
  call void @llvm.dbg.declare(metadata ptr %s177, metadata !2682, metadata !DIExpression()), !dbg !3043
  %115 = load ptr, ptr %node, align 8, !dbg !3044
  %back_pointer178 = getelementptr inbounds %struct.assoc_array_node, ptr %115, i32 0, i32 0, !dbg !3045
  %116 = load ptr, ptr %back_pointer178, align 8, !dbg !3045
  %call179 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %116) #15, !dbg !3046
  store ptr %call179, ptr %s177, align 8, !dbg !3043
  %117 = load ptr, ptr %s177, align 8, !dbg !3047
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %117, i32 0, i32 3, !dbg !3048
  %118 = load ptr, ptr %edit, align 8, !dbg !3049
  %set180 = getelementptr inbounds %struct.assoc_array_edit, ptr %118, i32 0, i32 14, !dbg !3050
  %arrayidx181 = getelementptr [2 x %struct.anon.1], ptr %set180, i64 0, i64 1, !dbg !3049
  %ptr182 = getelementptr inbounds %struct.anon.1, ptr %arrayidx181, i32 0, i32 0, !dbg !3051
  store ptr %next_node, ptr %ptr182, align 8, !dbg !3052
  call void @llvm.lifetime.end.p0(i64 8, ptr %s177) #14, !dbg !3053
  br label %if.end183, !dbg !3054

if.end183:                                        ; preds = %if.then176, %if.else173
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.then163
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %do.end159
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.then143
  %119 = load ptr, ptr %new_n0, align 8, !dbg !3055
  %call187 = call ptr @assoc_array_node_to_ptr(ptr noundef %119) #15, !dbg !3056
  %120 = load ptr, ptr %edit, align 8, !dbg !3057
  %set188 = getelementptr inbounds %struct.assoc_array_edit, ptr %120, i32 0, i32 14, !dbg !3058
  %arrayidx189 = getelementptr [2 x %struct.anon.1], ptr %set188, i64 0, i64 1, !dbg !3057
  %to190 = getelementptr inbounds %struct.anon.1, ptr %arrayidx189, i32 0, i32 1, !dbg !3059
  store ptr %call187, ptr %to190, align 8, !dbg !3060
  %121 = load ptr, ptr %node, align 8, !dbg !3061
  %call191 = call ptr @assoc_array_node_to_ptr(ptr noundef %121) #15, !dbg !3062
  %122 = load ptr, ptr %edit, align 8, !dbg !3063
  %excised_subtree192 = getelementptr inbounds %struct.assoc_array_edit, ptr %122, i32 0, i32 9, !dbg !3064
  store ptr %call191, ptr %excised_subtree192, align 8, !dbg !3065
  br label %if.end193, !dbg !3066

if.end193:                                        ; preds = %if.end186, %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3067
  br label %cleanup194, !dbg !3067

cleanup194:                                       ; preds = %if.then97, %if.end193, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr57) #14, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 8, ptr %grandparent) #14, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #14, !dbg !3067
  %cleanup.dest197 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest197, label %cleanup202 [
    i32 0, label %cleanup.cont198
    i32 20, label %enomem
  ]

cleanup.cont198:                                  ; preds = %cleanup194
  br label %if.end199, !dbg !3068

if.end199:                                        ; preds = %cleanup.cont198, %if.end53
  %123 = load ptr, ptr %edit, align 8, !dbg !3069
  store ptr %123, ptr %retval, align 8, !dbg !3070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !3070

enomem:                                           ; preds = %cleanup194
  call void @llvm.dbg.label(metadata !2685), !dbg !3071
  store i32 0, ptr %tmp200, align 4, !dbg !3072
  %124 = load i32, ptr %tmp200, align 4, !dbg !3075
  %125 = load ptr, ptr %edit, align 8, !dbg !3076
  call void @assoc_array_cancel_edit(ptr noundef %125) #15, !dbg !3077
  %call201 = call ptr @ERR_PTR(i64 noundef -12) #15, !dbg !3078
  store ptr %call201, ptr %retval, align 8, !dbg !3079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !3079

cleanup202:                                       ; preds = %enomem, %if.end199, %cleanup194, %if.then43, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !3080
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #14, !dbg !3080
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_meta) #14, !dbg !3080
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !3080
  call void @llvm.lifetime.end.p0(i64 8, ptr %edit) #14, !dbg !3080
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_n0) #14, !dbg !3080
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !3080
  call void @llvm.lifetime.end.p0(i64 48, ptr %result) #14, !dbg !3080
  call void @llvm.lifetime.end.p0(i64 24, ptr %collapse) #14, !dbg !3080
  %126 = load ptr, ptr %retval, align 8, !dbg !3080
  ret ptr %126, !dbg !3080
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %x) #3 align 16 !dbg !3081 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3083, metadata !DIExpression()), !dbg !3084
  %0 = load ptr, ptr %x.addr, align 8, !dbg !3085
  %1 = ptrtoint ptr %0 to i64, !dbg !3086
  %and = and i64 %1, 2, !dbg !3087
  %tobool = icmp ne i64 %and, 0, !dbg !3086
  ret i1 %tobool, !dbg !3088
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @assoc_array_ptr_to_shortcut(ptr noundef %x) #3 align 16 !dbg !3089 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3093, metadata !DIExpression()), !dbg !3094
  %0 = load ptr, ptr %x.addr, align 8, !dbg !3095
  %call = call i64 @__assoc_array_ptr_to_meta(ptr noundef %0) #15, !dbg !3096
  %1 = inttoptr i64 %call to ptr, !dbg !3097
  ret ptr %1, !dbg !3098
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @assoc_array_ptr_to_node(ptr noundef %x) #3 align 16 !dbg !3099 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3103, metadata !DIExpression()), !dbg !3104
  %0 = load ptr, ptr %x.addr, align 8, !dbg !3105
  %call = call i64 @__assoc_array_ptr_to_meta(ptr noundef %0) #15, !dbg !3106
  %1 = inttoptr i64 %call to ptr, !dbg !3107
  ret ptr %1, !dbg !3108
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @assoc_array_node_to_ptr(ptr noundef %p) #3 align 16 !dbg !3109 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3113, metadata !DIExpression()), !dbg !3114
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3115
  %call = call ptr @__assoc_array_x_to_ptr(ptr noundef %0, i64 noundef 1) #15, !dbg !3116
  ret ptr %call, !dbg !3117
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @assoc_array_delete_collapse_iterator(ptr noundef %leaf, ptr noundef %iterator_data) #0 align 16 !dbg !3118 {
entry:
  %retval = alloca i32, align 4
  %leaf.addr = alloca ptr, align 8
  %iterator_data.addr = alloca ptr, align 8
  %collapse = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %leaf, ptr %leaf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %leaf.addr, metadata !3120, metadata !DIExpression()), !dbg !3124
  store ptr %iterator_data, ptr %iterator_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iterator_data.addr, metadata !3121, metadata !DIExpression()), !dbg !3125
  call void @llvm.lifetime.start.p0(i64 8, ptr %collapse) #14, !dbg !3126
  call void @llvm.dbg.declare(metadata ptr %collapse, metadata !3122, metadata !DIExpression()), !dbg !3127
  %0 = load ptr, ptr %iterator_data.addr, align 8, !dbg !3128
  store ptr %0, ptr %collapse, align 8, !dbg !3127
  %1 = load ptr, ptr %leaf.addr, align 8, !dbg !3129
  %2 = load ptr, ptr %collapse, align 8, !dbg !3131
  %skip_leaf = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %2, i32 0, i32 1, !dbg !3132
  %3 = load ptr, ptr %skip_leaf, align 8, !dbg !3132
  %cmp = icmp eq ptr %1, %3, !dbg !3133
  br i1 %cmp, label %if.then, label %if.end, !dbg !3134

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3135

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3136

do.body:                                          ; preds = %if.end
  %4 = load ptr, ptr %collapse, align 8, !dbg !3137
  %slot = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %4, i32 0, i32 2, !dbg !3137
  %5 = load i32, ptr %slot, align 8, !dbg !3137
  %cmp1 = icmp sge i32 %5, 16, !dbg !3137
  %lnot = xor i1 %cmp1, true, !dbg !3137
  %lnot2 = xor i1 %lnot, true, !dbg !3137
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3137
  %conv = sext i32 %lnot.ext to i64, !dbg !3137
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3137
  %tobool = icmp ne i64 %expval, 0, !dbg !3137
  br i1 %tobool, label %if.then3, label %if.end11, !dbg !3140

if.then3:                                         ; preds = %do.body
  br label %do.body4, !dbg !3137

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !3141

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !3143

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !3143

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !3141

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1053, i32 0, i64 12) #14, !dbg !3145, !srcloc !3147
  br label %do.cond7, !dbg !3145

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !3145

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !3141

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !3141

do.end10:                                         ; preds = %do.cond9
  br label %if.end11, !dbg !3141

if.end11:                                         ; preds = %do.end10, %do.body
  br label %do.cond12, !dbg !3140

do.cond12:                                        ; preds = %if.end11
  br label %do.end13, !dbg !3140

do.end13:                                         ; preds = %do.cond12
  %6 = load ptr, ptr %leaf.addr, align 8, !dbg !3148
  %call = call ptr @assoc_array_leaf_to_ptr(ptr noundef %6) #15, !dbg !3149
  %7 = load ptr, ptr %collapse, align 8, !dbg !3150
  %node = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %7, i32 0, i32 0, !dbg !3151
  %8 = load ptr, ptr %node, align 8, !dbg !3151
  %slots = getelementptr inbounds %struct.assoc_array_node, ptr %8, i32 0, i32 2, !dbg !3152
  %9 = load ptr, ptr %collapse, align 8, !dbg !3153
  %slot14 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %9, i32 0, i32 2, !dbg !3154
  %10 = load i32, ptr %slot14, align 8, !dbg !3155
  %inc = add i32 %10, 1, !dbg !3155
  store i32 %inc, ptr %slot14, align 8, !dbg !3155
  %idxprom = sext i32 %10 to i64, !dbg !3150
  %arrayidx = getelementptr [16 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !3150
  store ptr %call, ptr %arrayidx, align 8, !dbg !3156
  store i32 0, ptr %retval, align 4, !dbg !3157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3157

cleanup:                                          ; preds = %do.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %collapse) #14, !dbg !3158
  %11 = load i32, ptr %retval, align 4, !dbg !3158
  ret i32 %11, !dbg !3158
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @assoc_array_ptr_is_node(ptr noundef %x) #3 align 16 !dbg !3159 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3161, metadata !DIExpression()), !dbg !3162
  %0 = load ptr, ptr %x.addr, align 8, !dbg !3163
  %call = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %0) #15, !dbg !3164
  %lnot = xor i1 %call, true, !dbg !3165
  ret i1 %lnot, !dbg !3166
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @assoc_array_clear(ptr noundef %array, ptr noundef %ops) #0 align 16 !dbg !3167 {
entry:
  %retval = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %edit = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !3171, metadata !DIExpression()), !dbg !3174
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !3172, metadata !DIExpression()), !dbg !3175
  call void @llvm.lifetime.start.p0(i64 8, ptr %edit) #14, !dbg !3176
  call void @llvm.dbg.declare(metadata ptr %edit, metadata !3173, metadata !DIExpression()), !dbg !3177
  store i32 0, ptr %tmp, align 4, !dbg !3178
  %0 = load i32, ptr %tmp, align 4, !dbg !3181
  %1 = load ptr, ptr %array.addr, align 8, !dbg !3182
  %root = getelementptr inbounds %struct.assoc_array, ptr %1, i32 0, i32 0, !dbg !3184
  %2 = load ptr, ptr %root, align 8, !dbg !3184
  %tobool = icmp ne ptr %2, null, !dbg !3182
  br i1 %tobool, label %if.end, label %if.then, !dbg !3185

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3186

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 328, i32 noundef 3264) #16, !dbg !3187
  store ptr %call, ptr %edit, align 8, !dbg !3188
  %3 = load ptr, ptr %edit, align 8, !dbg !3189
  %tobool1 = icmp ne ptr %3, null, !dbg !3189
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !3191

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @ERR_PTR(i64 noundef -12) #15, !dbg !3192
  store ptr %call3, ptr %retval, align 8, !dbg !3193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3193

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %array.addr, align 8, !dbg !3194
  %5 = load ptr, ptr %edit, align 8, !dbg !3195
  %array5 = getelementptr inbounds %struct.assoc_array_edit, ptr %5, i32 0, i32 1, !dbg !3196
  store ptr %4, ptr %array5, align 8, !dbg !3197
  %6 = load ptr, ptr %ops.addr, align 8, !dbg !3198
  %7 = load ptr, ptr %edit, align 8, !dbg !3199
  %ops6 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 2, !dbg !3200
  store ptr %6, ptr %ops6, align 8, !dbg !3201
  %8 = load ptr, ptr %array.addr, align 8, !dbg !3202
  %root7 = getelementptr inbounds %struct.assoc_array, ptr %8, i32 0, i32 0, !dbg !3203
  %9 = load ptr, ptr %edit, align 8, !dbg !3204
  %set = getelementptr inbounds %struct.assoc_array_edit, ptr %9, i32 0, i32 14, !dbg !3205
  %arrayidx = getelementptr [2 x %struct.anon.1], ptr %set, i64 0, i64 1, !dbg !3204
  %ptr = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0, !dbg !3206
  store ptr %root7, ptr %ptr, align 8, !dbg !3207
  %10 = load ptr, ptr %edit, align 8, !dbg !3208
  %set8 = getelementptr inbounds %struct.assoc_array_edit, ptr %10, i32 0, i32 14, !dbg !3209
  %arrayidx9 = getelementptr [2 x %struct.anon.1], ptr %set8, i64 0, i64 1, !dbg !3208
  %to = getelementptr inbounds %struct.anon.1, ptr %arrayidx9, i32 0, i32 1, !dbg !3210
  store ptr null, ptr %to, align 8, !dbg !3211
  %11 = load ptr, ptr %array.addr, align 8, !dbg !3212
  %root10 = getelementptr inbounds %struct.assoc_array, ptr %11, i32 0, i32 0, !dbg !3213
  %12 = load ptr, ptr %root10, align 8, !dbg !3213
  %13 = load ptr, ptr %edit, align 8, !dbg !3214
  %excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %13, i32 0, i32 9, !dbg !3215
  store ptr %12, ptr %excised_subtree, align 8, !dbg !3216
  %14 = load ptr, ptr %ops.addr, align 8, !dbg !3217
  %15 = load ptr, ptr %edit, align 8, !dbg !3218
  %ops_for_excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %15, i32 0, i32 3, !dbg !3219
  store ptr %14, ptr %ops_for_excised_subtree, align 8, !dbg !3220
  store i32 0, ptr %tmp11, align 4, !dbg !3221
  %16 = load i32, ptr %tmp11, align 4, !dbg !3224
  %17 = load ptr, ptr %edit, align 8, !dbg !3225
  store ptr %17, ptr %retval, align 8, !dbg !3226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3226

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %edit) #14, !dbg !3227
  %18 = load ptr, ptr %retval, align 8, !dbg !3227
  ret ptr %18, !dbg !3227
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @assoc_array_apply_edit(ptr noundef %edit) #0 align 16 !dbg !3228 {
entry:
  %edit.addr = alloca ptr, align 8
  %shortcut = alloca ptr, align 8
  %node = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %edit, ptr %edit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edit.addr, metadata !3230, metadata !DIExpression()), !dbg !3235
  call void @llvm.lifetime.start.p0(i64 8, ptr %shortcut) #14, !dbg !3236
  call void @llvm.dbg.declare(metadata ptr %shortcut, metadata !3231, metadata !DIExpression()), !dbg !3237
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !3238
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3232, metadata !DIExpression()), !dbg !3239
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !3240
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !3233, metadata !DIExpression()), !dbg !3241
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !3242
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3234, metadata !DIExpression()), !dbg !3243
  store i32 0, ptr %tmp, align 4, !dbg !3244
  %0 = load i32, ptr %tmp, align 4, !dbg !3247
  br label %do.body, !dbg !3248

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3249

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !3251

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3251

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3249, !srcloc !3253
  br label %do.cond2, !dbg !3249

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3249

do.end3:                                          ; preds = %do.cond2
  %1 = load ptr, ptr %edit.addr, align 8, !dbg !3254
  %leaf_p = getelementptr inbounds %struct.assoc_array_edit, ptr %1, i32 0, i32 5, !dbg !3256
  %2 = load ptr, ptr %leaf_p, align 8, !dbg !3256
  %tobool = icmp ne ptr %2, null, !dbg !3254
  br i1 %tobool, label %if.then, label %if.end, !dbg !3257

if.then:                                          ; preds = %do.end3
  %3 = load ptr, ptr %edit.addr, align 8, !dbg !3258
  %leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %3, i32 0, i32 4, !dbg !3259
  %4 = load ptr, ptr %leaf, align 8, !dbg !3259
  %5 = load ptr, ptr %edit.addr, align 8, !dbg !3260
  %leaf_p4 = getelementptr inbounds %struct.assoc_array_edit, ptr %5, i32 0, i32 5, !dbg !3261
  %6 = load ptr, ptr %leaf_p4, align 8, !dbg !3261
  store ptr %4, ptr %6, align 8, !dbg !3262
  br label %if.end, !dbg !3263

if.end:                                           ; preds = %if.then, %do.end3
  br label %do.body5, !dbg !3264

do.body5:                                         ; preds = %if.end
  br label %do.body6, !dbg !3265

do.body6:                                         ; preds = %do.body5
  br label %do.cond7, !dbg !3267

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !3267

do.end8:                                          ; preds = %do.cond7
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3265, !srcloc !3269
  br label %do.cond9, !dbg !3265

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !3265

do.end10:                                         ; preds = %do.cond9
  store i32 0, ptr %i, align 4, !dbg !3270
  br label %for.cond, !dbg !3272

for.cond:                                         ; preds = %for.inc, %do.end10
  %7 = load i32, ptr %i, align 4, !dbg !3273
  %conv = sext i32 %7 to i64, !dbg !3273
  %cmp = icmp ult i64 %conv, 1, !dbg !3275
  br i1 %cmp, label %for.body, label %for.end, !dbg !3276

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %edit.addr, align 8, !dbg !3277
  %set_parent_slot = getelementptr inbounds %struct.assoc_array_edit, ptr %8, i32 0, i32 15, !dbg !3279
  %9 = load i32, ptr %i, align 4, !dbg !3280
  %idxprom = sext i32 %9 to i64, !dbg !3277
  %arrayidx = getelementptr [1 x %struct.anon.2], ptr %set_parent_slot, i64 0, i64 %idxprom, !dbg !3277
  %p = getelementptr inbounds %struct.anon.2, ptr %arrayidx, i32 0, i32 0, !dbg !3281
  %10 = load ptr, ptr %p, align 8, !dbg !3281
  %tobool12 = icmp ne ptr %10, null, !dbg !3277
  br i1 %tobool12, label %if.then13, label %if.end21, !dbg !3282

if.then13:                                        ; preds = %for.body
  %11 = load ptr, ptr %edit.addr, align 8, !dbg !3283
  %set_parent_slot14 = getelementptr inbounds %struct.assoc_array_edit, ptr %11, i32 0, i32 15, !dbg !3284
  %12 = load i32, ptr %i, align 4, !dbg !3285
  %idxprom15 = sext i32 %12 to i64, !dbg !3283
  %arrayidx16 = getelementptr [1 x %struct.anon.2], ptr %set_parent_slot14, i64 0, i64 %idxprom15, !dbg !3283
  %to = getelementptr inbounds %struct.anon.2, ptr %arrayidx16, i32 0, i32 1, !dbg !3286
  %13 = load i8, ptr %to, align 8, !dbg !3286
  %14 = load ptr, ptr %edit.addr, align 8, !dbg !3287
  %set_parent_slot17 = getelementptr inbounds %struct.assoc_array_edit, ptr %14, i32 0, i32 15, !dbg !3288
  %15 = load i32, ptr %i, align 4, !dbg !3289
  %idxprom18 = sext i32 %15 to i64, !dbg !3287
  %arrayidx19 = getelementptr [1 x %struct.anon.2], ptr %set_parent_slot17, i64 0, i64 %idxprom18, !dbg !3287
  %p20 = getelementptr inbounds %struct.anon.2, ptr %arrayidx19, i32 0, i32 0, !dbg !3290
  %16 = load ptr, ptr %p20, align 8, !dbg !3290
  store i8 %13, ptr %16, align 1, !dbg !3291
  br label %if.end21, !dbg !3292

if.end21:                                         ; preds = %if.then13, %for.body
  br label %for.inc, !dbg !3281

for.inc:                                          ; preds = %if.end21
  %17 = load i32, ptr %i, align 4, !dbg !3293
  %inc = add i32 %17, 1, !dbg !3293
  store i32 %inc, ptr %i, align 4, !dbg !3293
  br label %for.cond, !dbg !3294, !llvm.loop !3295

for.end:                                          ; preds = %for.cond
  br label %do.body22, !dbg !3297

do.body22:                                        ; preds = %for.end
  br label %do.body23, !dbg !3298

do.body23:                                        ; preds = %do.body22
  br label %do.cond24, !dbg !3300

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !3300

do.end25:                                         ; preds = %do.cond24
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3298, !srcloc !3302
  br label %do.cond26, !dbg !3298

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !3298

do.end27:                                         ; preds = %do.cond26
  store i32 0, ptr %i, align 4, !dbg !3303
  br label %for.cond28, !dbg !3305

for.cond28:                                       ; preds = %for.inc41, %do.end27
  %18 = load i32, ptr %i, align 4, !dbg !3306
  %conv29 = sext i32 %18 to i64, !dbg !3306
  %cmp30 = icmp ult i64 %conv29, 16, !dbg !3308
  br i1 %cmp30, label %for.body32, label %for.end43, !dbg !3309

for.body32:                                       ; preds = %for.cond28
  %19 = load ptr, ptr %edit.addr, align 8, !dbg !3310
  %set_backpointers = getelementptr inbounds %struct.assoc_array_edit, ptr %19, i32 0, i32 10, !dbg !3312
  %20 = load i32, ptr %i, align 4, !dbg !3313
  %idxprom33 = sext i32 %20 to i64, !dbg !3310
  %arrayidx34 = getelementptr [16 x ptr], ptr %set_backpointers, i64 0, i64 %idxprom33, !dbg !3310
  %21 = load ptr, ptr %arrayidx34, align 8, !dbg !3310
  %tobool35 = icmp ne ptr %21, null, !dbg !3310
  br i1 %tobool35, label %if.then36, label %if.end40, !dbg !3314

if.then36:                                        ; preds = %for.body32
  %22 = load ptr, ptr %edit.addr, align 8, !dbg !3315
  %set_backpointers_to = getelementptr inbounds %struct.assoc_array_edit, ptr %22, i32 0, i32 11, !dbg !3316
  %23 = load ptr, ptr %set_backpointers_to, align 8, !dbg !3316
  %24 = load ptr, ptr %edit.addr, align 8, !dbg !3317
  %set_backpointers37 = getelementptr inbounds %struct.assoc_array_edit, ptr %24, i32 0, i32 10, !dbg !3318
  %25 = load i32, ptr %i, align 4, !dbg !3319
  %idxprom38 = sext i32 %25 to i64, !dbg !3317
  %arrayidx39 = getelementptr [16 x ptr], ptr %set_backpointers37, i64 0, i64 %idxprom38, !dbg !3317
  %26 = load ptr, ptr %arrayidx39, align 8, !dbg !3317
  store ptr %23, ptr %26, align 8, !dbg !3320
  br label %if.end40, !dbg !3321

if.end40:                                         ; preds = %if.then36, %for.body32
  br label %for.inc41, !dbg !3322

for.inc41:                                        ; preds = %if.end40
  %27 = load i32, ptr %i, align 4, !dbg !3323
  %inc42 = add i32 %27, 1, !dbg !3323
  store i32 %inc42, ptr %i, align 4, !dbg !3323
  br label %for.cond28, !dbg !3324, !llvm.loop !3325

for.end43:                                        ; preds = %for.cond28
  br label %do.body44, !dbg !3327

do.body44:                                        ; preds = %for.end43
  br label %do.body45, !dbg !3328

do.body45:                                        ; preds = %do.body44
  br label %do.cond46, !dbg !3330

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !3330

do.end47:                                         ; preds = %do.cond46
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !3328, !srcloc !3332
  br label %do.cond48, !dbg !3328

do.cond48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !3328

do.end49:                                         ; preds = %do.cond48
  store i32 0, ptr %i, align 4, !dbg !3333
  br label %for.cond50, !dbg !3335

for.cond50:                                       ; preds = %for.inc69, %do.end49
  %28 = load i32, ptr %i, align 4, !dbg !3336
  %conv51 = sext i32 %28 to i64, !dbg !3336
  %cmp52 = icmp ult i64 %conv51, 2, !dbg !3338
  br i1 %cmp52, label %for.body54, label %for.end71, !dbg !3339

for.body54:                                       ; preds = %for.cond50
  %29 = load ptr, ptr %edit.addr, align 8, !dbg !3340
  %set = getelementptr inbounds %struct.assoc_array_edit, ptr %29, i32 0, i32 14, !dbg !3342
  %30 = load i32, ptr %i, align 4, !dbg !3343
  %idxprom55 = sext i32 %30 to i64, !dbg !3340
  %arrayidx56 = getelementptr [2 x %struct.anon.1], ptr %set, i64 0, i64 %idxprom55, !dbg !3340
  %ptr57 = getelementptr inbounds %struct.anon.1, ptr %arrayidx56, i32 0, i32 0, !dbg !3344
  %31 = load ptr, ptr %ptr57, align 8, !dbg !3344
  %tobool58 = icmp ne ptr %31, null, !dbg !3340
  br i1 %tobool58, label %if.then59, label %if.end68, !dbg !3345

if.then59:                                        ; preds = %for.body54
  %32 = load ptr, ptr %edit.addr, align 8, !dbg !3346
  %set60 = getelementptr inbounds %struct.assoc_array_edit, ptr %32, i32 0, i32 14, !dbg !3347
  %33 = load i32, ptr %i, align 4, !dbg !3348
  %idxprom61 = sext i32 %33 to i64, !dbg !3346
  %arrayidx62 = getelementptr [2 x %struct.anon.1], ptr %set60, i64 0, i64 %idxprom61, !dbg !3346
  %to63 = getelementptr inbounds %struct.anon.1, ptr %arrayidx62, i32 0, i32 1, !dbg !3349
  %34 = load ptr, ptr %to63, align 8, !dbg !3349
  %35 = load ptr, ptr %edit.addr, align 8, !dbg !3350
  %set64 = getelementptr inbounds %struct.assoc_array_edit, ptr %35, i32 0, i32 14, !dbg !3351
  %36 = load i32, ptr %i, align 4, !dbg !3352
  %idxprom65 = sext i32 %36 to i64, !dbg !3350
  %arrayidx66 = getelementptr [2 x %struct.anon.1], ptr %set64, i64 0, i64 %idxprom65, !dbg !3350
  %ptr67 = getelementptr inbounds %struct.anon.1, ptr %arrayidx66, i32 0, i32 0, !dbg !3353
  %37 = load ptr, ptr %ptr67, align 8, !dbg !3353
  store ptr %34, ptr %37, align 8, !dbg !3354
  br label %if.end68, !dbg !3355

if.end68:                                         ; preds = %if.then59, %for.body54
  br label %for.inc69, !dbg !3344

for.inc69:                                        ; preds = %if.end68
  %38 = load i32, ptr %i, align 4, !dbg !3356
  %inc70 = add i32 %38, 1, !dbg !3356
  store i32 %inc70, ptr %i, align 4, !dbg !3356
  br label %for.cond50, !dbg !3357, !llvm.loop !3358

for.end71:                                        ; preds = %for.cond50
  %39 = load ptr, ptr %edit.addr, align 8, !dbg !3360
  %array = getelementptr inbounds %struct.assoc_array_edit, ptr %39, i32 0, i32 1, !dbg !3362
  %40 = load ptr, ptr %array, align 8, !dbg !3362
  %root = getelementptr inbounds %struct.assoc_array, ptr %40, i32 0, i32 0, !dbg !3363
  %41 = load ptr, ptr %root, align 8, !dbg !3363
  %cmp72 = icmp eq ptr %41, null, !dbg !3364
  br i1 %cmp72, label %if.then74, label %if.else, !dbg !3365

if.then74:                                        ; preds = %for.end71
  %42 = load ptr, ptr %edit.addr, align 8, !dbg !3366
  %array75 = getelementptr inbounds %struct.assoc_array_edit, ptr %42, i32 0, i32 1, !dbg !3368
  %43 = load ptr, ptr %array75, align 8, !dbg !3368
  %nr_leaves_on_tree = getelementptr inbounds %struct.assoc_array, ptr %43, i32 0, i32 1, !dbg !3369
  store i64 0, ptr %nr_leaves_on_tree, align 8, !dbg !3370
  br label %if.end116, !dbg !3371

if.else:                                          ; preds = %for.end71
  %44 = load ptr, ptr %edit.addr, align 8, !dbg !3372
  %adjust_count_on = getelementptr inbounds %struct.assoc_array_edit, ptr %44, i32 0, i32 12, !dbg !3374
  %45 = load ptr, ptr %adjust_count_on, align 8, !dbg !3374
  %tobool76 = icmp ne ptr %45, null, !dbg !3372
  br i1 %tobool76, label %if.then77, label %if.end115, !dbg !3375

if.then77:                                        ; preds = %if.else
  %46 = load ptr, ptr %edit.addr, align 8, !dbg !3376
  %adjust_count_on78 = getelementptr inbounds %struct.assoc_array_edit, ptr %46, i32 0, i32 12, !dbg !3378
  %47 = load ptr, ptr %adjust_count_on78, align 8, !dbg !3378
  store ptr %47, ptr %node, align 8, !dbg !3379
  br label %for.cond79, !dbg !3380

for.cond79:                                       ; preds = %do.end108, %if.then77
  %48 = load ptr, ptr %edit.addr, align 8, !dbg !3381
  %adjust_count_by = getelementptr inbounds %struct.assoc_array_edit, ptr %48, i32 0, i32 13, !dbg !3385
  %49 = load i64, ptr %adjust_count_by, align 8, !dbg !3385
  %50 = load ptr, ptr %node, align 8, !dbg !3386
  %nr_leaves_on_branch = getelementptr inbounds %struct.assoc_array_node, ptr %50, i32 0, i32 3, !dbg !3387
  %51 = load i64, ptr %nr_leaves_on_branch, align 8, !dbg !3388
  %add = add i64 %51, %49, !dbg !3388
  store i64 %add, ptr %nr_leaves_on_branch, align 8, !dbg !3388
  %52 = load ptr, ptr %node, align 8, !dbg !3389
  %back_pointer = getelementptr inbounds %struct.assoc_array_node, ptr %52, i32 0, i32 0, !dbg !3390
  %53 = load ptr, ptr %back_pointer, align 8, !dbg !3390
  store ptr %53, ptr %ptr, align 8, !dbg !3391
  %54 = load ptr, ptr %ptr, align 8, !dbg !3392
  %tobool80 = icmp ne ptr %54, null, !dbg !3392
  br i1 %tobool80, label %if.end82, label %if.then81, !dbg !3394

if.then81:                                        ; preds = %for.cond79
  br label %for.end110, !dbg !3395

if.end82:                                         ; preds = %for.cond79
  %55 = load ptr, ptr %ptr, align 8, !dbg !3396
  %call = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %55) #15, !dbg !3398
  br i1 %call, label %if.then83, label %if.end89, !dbg !3399

if.then83:                                        ; preds = %if.end82
  %56 = load ptr, ptr %ptr, align 8, !dbg !3400
  %call84 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %56) #15, !dbg !3402
  store ptr %call84, ptr %shortcut, align 8, !dbg !3403
  %57 = load ptr, ptr %shortcut, align 8, !dbg !3404
  %back_pointer85 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %57, i32 0, i32 0, !dbg !3405
  %58 = load ptr, ptr %back_pointer85, align 8, !dbg !3405
  store ptr %58, ptr %ptr, align 8, !dbg !3406
  %59 = load ptr, ptr %ptr, align 8, !dbg !3407
  %tobool86 = icmp ne ptr %59, null, !dbg !3407
  br i1 %tobool86, label %if.end88, label %if.then87, !dbg !3409

if.then87:                                        ; preds = %if.then83
  br label %for.end110, !dbg !3410

if.end88:                                         ; preds = %if.then83
  br label %if.end89, !dbg !3411

if.end89:                                         ; preds = %if.end88, %if.end82
  br label %do.body90, !dbg !3412

do.body90:                                        ; preds = %if.end89
  %60 = load ptr, ptr %ptr, align 8, !dbg !3413
  %call91 = call zeroext i1 @assoc_array_ptr_is_node(ptr noundef %60) #15, !dbg !3413
  %lnot = xor i1 %call91, true, !dbg !3413
  %lnot92 = xor i1 %lnot, true, !dbg !3413
  %lnot93 = xor i1 %lnot92, true, !dbg !3413
  %lnot.ext = zext i1 %lnot93 to i32, !dbg !3413
  %conv94 = sext i32 %lnot.ext to i64, !dbg !3413
  %expval = call i64 @llvm.expect.i64(i64 %conv94, i64 0), !dbg !3413
  %tobool95 = icmp ne i64 %expval, 0, !dbg !3413
  br i1 %tobool95, label %if.then96, label %if.end106, !dbg !3416

if.then96:                                        ; preds = %do.body90
  br label %do.body97, !dbg !3413

do.body97:                                        ; preds = %if.then96
  br label %do.body98, !dbg !3417

do.body98:                                        ; preds = %do.body97
  br label %do.cond99, !dbg !3419

do.cond99:                                        ; preds = %do.body98
  br label %do.end100, !dbg !3419

do.end100:                                        ; preds = %do.cond99
  br label %do.body101, !dbg !3417

do.body101:                                       ; preds = %do.end100
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1389, i32 0, i64 12) #14, !dbg !3421, !srcloc !3423
  br label %do.cond102, !dbg !3421

do.cond102:                                       ; preds = %do.body101
  br label %do.end103, !dbg !3421

do.end103:                                        ; preds = %do.cond102
  unreachable, !dbg !3417

do.cond104:                                       ; No predecessors!
  br label %do.end105, !dbg !3417

do.end105:                                        ; preds = %do.cond104
  br label %if.end106, !dbg !3417

if.end106:                                        ; preds = %do.end105, %do.body90
  br label %do.cond107, !dbg !3416

do.cond107:                                       ; preds = %if.end106
  br label %do.end108, !dbg !3416

do.end108:                                        ; preds = %do.cond107
  %61 = load ptr, ptr %ptr, align 8, !dbg !3424
  %call109 = call ptr @assoc_array_ptr_to_node(ptr noundef %61) #15, !dbg !3425
  store ptr %call109, ptr %node, align 8, !dbg !3426
  br label %for.cond79, !dbg !3427, !llvm.loop !3428

for.end110:                                       ; preds = %if.then87, %if.then81
  %62 = load ptr, ptr %edit.addr, align 8, !dbg !3431
  %adjust_count_by111 = getelementptr inbounds %struct.assoc_array_edit, ptr %62, i32 0, i32 13, !dbg !3432
  %63 = load i64, ptr %adjust_count_by111, align 8, !dbg !3432
  %64 = load ptr, ptr %edit.addr, align 8, !dbg !3433
  %array112 = getelementptr inbounds %struct.assoc_array_edit, ptr %64, i32 0, i32 1, !dbg !3434
  %65 = load ptr, ptr %array112, align 8, !dbg !3434
  %nr_leaves_on_tree113 = getelementptr inbounds %struct.assoc_array, ptr %65, i32 0, i32 1, !dbg !3435
  %66 = load i64, ptr %nr_leaves_on_tree113, align 8, !dbg !3436
  %add114 = add i64 %66, %63, !dbg !3436
  store i64 %add114, ptr %nr_leaves_on_tree113, align 8, !dbg !3436
  br label %if.end115, !dbg !3437

if.end115:                                        ; preds = %for.end110, %if.else
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.then74
  %67 = load ptr, ptr %edit.addr, align 8, !dbg !3438
  %rcu = getelementptr inbounds %struct.assoc_array_edit, ptr %67, i32 0, i32 0, !dbg !3439
  call void @call_rcu(ptr noundef %rcu, ptr noundef @assoc_array_rcu_cleanup) #15, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !3441
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !3441
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !3441
  call void @llvm.lifetime.end.p0(i64 8, ptr %shortcut) #14, !dbg !3441
  ret void, !dbg !3441
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3442 dso_local void @call_rcu(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @assoc_array_rcu_cleanup(ptr noundef %head) #0 align 16 !dbg !3447 {
entry:
  %head.addr = alloca ptr, align 8
  %edit = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %n = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3449, metadata !DIExpression()), !dbg !3461
  call void @llvm.lifetime.start.p0(i64 8, ptr %edit) #14, !dbg !3462
  call void @llvm.dbg.declare(metadata ptr %edit, metadata !3450, metadata !DIExpression()), !dbg !3463
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3464
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3451, metadata !DIExpression()), !dbg !3464
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3464
  store ptr %0, ptr %__mptr, align 8, !dbg !3464
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3464
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !3464
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3464
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3465
  %2 = load ptr, ptr %tmp, align 8, !dbg !3464
  store ptr %2, ptr %edit, align 8, !dbg !3463
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !3466
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3453, metadata !DIExpression()), !dbg !3467
  store i32 0, ptr %tmp1, align 4, !dbg !3468
  %3 = load i32, ptr %tmp1, align 4, !dbg !3471
  %4 = load ptr, ptr %edit, align 8, !dbg !3472
  %dead_leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %4, i32 0, i32 6, !dbg !3474
  %5 = load ptr, ptr %dead_leaf, align 8, !dbg !3474
  %tobool = icmp ne ptr %5, null, !dbg !3472
  br i1 %tobool, label %if.then, label %if.end, !dbg !3475

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %edit, align 8, !dbg !3476
  %ops = getelementptr inbounds %struct.assoc_array_edit, ptr %6, i32 0, i32 2, !dbg !3477
  %7 = load ptr, ptr %ops, align 8, !dbg !3477
  %free_object = getelementptr inbounds %struct.assoc_array_ops, ptr %7, i32 0, i32 4, !dbg !3478
  %8 = load ptr, ptr %free_object, align 8, !dbg !3478
  %9 = load ptr, ptr %edit, align 8, !dbg !3479
  %dead_leaf2 = getelementptr inbounds %struct.assoc_array_edit, ptr %9, i32 0, i32 6, !dbg !3480
  %10 = load ptr, ptr %dead_leaf2, align 8, !dbg !3480
  %call = call ptr @assoc_array_ptr_to_leaf(ptr noundef %10) #15, !dbg !3481
  call void %8(ptr noundef %call) #15, !dbg !3476
  br label %if.end, !dbg !3476

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !dbg !3482
  br label %for.cond, !dbg !3484

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4, !dbg !3485
  %conv = sext i32 %11 to i64, !dbg !3485
  %cmp = icmp ult i64 %conv, 1, !dbg !3487
  br i1 %cmp, label %for.body, label %for.end, !dbg !3488

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %edit, align 8, !dbg !3489
  %excised_meta = getelementptr inbounds %struct.assoc_array_edit, ptr %12, i32 0, i32 8, !dbg !3491
  %13 = load i32, ptr %i, align 4, !dbg !3492
  %idxprom = sext i32 %13 to i64, !dbg !3489
  %arrayidx = getelementptr [1 x ptr], ptr %excised_meta, i64 0, i64 %idxprom, !dbg !3489
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !3489
  %tobool4 = icmp ne ptr %14, null, !dbg !3489
  br i1 %tobool4, label %if.then5, label %if.end10, !dbg !3493

if.then5:                                         ; preds = %for.body
  %15 = load ptr, ptr %edit, align 8, !dbg !3494
  %excised_meta6 = getelementptr inbounds %struct.assoc_array_edit, ptr %15, i32 0, i32 8, !dbg !3495
  %16 = load i32, ptr %i, align 4, !dbg !3496
  %idxprom7 = sext i32 %16 to i64, !dbg !3494
  %arrayidx8 = getelementptr [1 x ptr], ptr %excised_meta6, i64 0, i64 %idxprom7, !dbg !3494
  %17 = load ptr, ptr %arrayidx8, align 8, !dbg !3494
  %call9 = call ptr @assoc_array_ptr_to_node(ptr noundef %17) #15, !dbg !3497
  call void @kfree(ptr noundef %call9) #15, !dbg !3498
  br label %if.end10, !dbg !3498

if.end10:                                         ; preds = %if.then5, %for.body
  br label %for.inc, !dbg !3499

for.inc:                                          ; preds = %if.end10
  %18 = load i32, ptr %i, align 4, !dbg !3500
  %inc = add i32 %18, 1, !dbg !3500
  store i32 %inc, ptr %i, align 4, !dbg !3500
  br label %for.cond, !dbg !3501, !llvm.loop !3502

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %edit, align 8, !dbg !3504
  %excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %19, i32 0, i32 9, !dbg !3505
  %20 = load ptr, ptr %excised_subtree, align 8, !dbg !3505
  %tobool11 = icmp ne ptr %20, null, !dbg !3504
  br i1 %tobool11, label %if.then12, label %if.end39, !dbg !3506

if.then12:                                        ; preds = %for.end
  br label %do.body, !dbg !3507

do.body:                                          ; preds = %if.then12
  %21 = load ptr, ptr %edit, align 8, !dbg !3508
  %excised_subtree13 = getelementptr inbounds %struct.assoc_array_edit, ptr %21, i32 0, i32 9, !dbg !3508
  %22 = load ptr, ptr %excised_subtree13, align 8, !dbg !3508
  %call14 = call zeroext i1 @assoc_array_ptr_is_leaf(ptr noundef %22) #15, !dbg !3508
  %lnot = xor i1 %call14, true, !dbg !3508
  %lnot15 = xor i1 %lnot, true, !dbg !3508
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !3508
  %conv16 = sext i32 %lnot.ext to i64, !dbg !3508
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !3508
  %tobool17 = icmp ne i64 %expval, 0, !dbg !3508
  br i1 %tobool17, label %if.then18, label %if.end26, !dbg !3511

if.then18:                                        ; preds = %do.body
  br label %do.body19, !dbg !3508

do.body19:                                        ; preds = %if.then18
  br label %do.body20, !dbg !3512

do.body20:                                        ; preds = %do.body19
  br label %do.cond, !dbg !3514

do.cond:                                          ; preds = %do.body20
  br label %do.end, !dbg !3514

do.end:                                           ; preds = %do.cond
  br label %do.body21, !dbg !3512

do.body21:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1315, i32 0, i64 12) #14, !dbg !3516, !srcloc !3518
  br label %do.cond22, !dbg !3516

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !3516

do.end23:                                         ; preds = %do.cond22
  unreachable, !dbg !3512

do.cond24:                                        ; No predecessors!
  br label %do.end25, !dbg !3512

do.end25:                                         ; preds = %do.cond24
  br label %if.end26, !dbg !3512

if.end26:                                         ; preds = %do.end25, %do.body
  br label %do.cond27, !dbg !3511

do.cond27:                                        ; preds = %if.end26
  br label %do.end28, !dbg !3511

do.end28:                                         ; preds = %do.cond27
  %23 = load ptr, ptr %edit, align 8, !dbg !3519
  %excised_subtree29 = getelementptr inbounds %struct.assoc_array_edit, ptr %23, i32 0, i32 9, !dbg !3520
  %24 = load ptr, ptr %excised_subtree29, align 8, !dbg !3520
  %call30 = call zeroext i1 @assoc_array_ptr_is_node(ptr noundef %24) #15, !dbg !3521
  br i1 %call30, label %if.then31, label %if.else, !dbg !3522

if.then31:                                        ; preds = %do.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #14, !dbg !3523
  call void @llvm.dbg.declare(metadata ptr %n, metadata !3454, metadata !DIExpression()), !dbg !3524
  %25 = load ptr, ptr %edit, align 8, !dbg !3525
  %excised_subtree32 = getelementptr inbounds %struct.assoc_array_edit, ptr %25, i32 0, i32 9, !dbg !3526
  %26 = load ptr, ptr %excised_subtree32, align 8, !dbg !3526
  %call33 = call ptr @assoc_array_ptr_to_node(ptr noundef %26) #15, !dbg !3527
  store ptr %call33, ptr %n, align 8, !dbg !3524
  %27 = load ptr, ptr %n, align 8, !dbg !3528
  %back_pointer = getelementptr inbounds %struct.assoc_array_node, ptr %27, i32 0, i32 0, !dbg !3529
  store ptr null, ptr %back_pointer, align 8, !dbg !3530
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #14, !dbg !3531
  br label %if.end37, !dbg !3532

if.else:                                          ; preds = %do.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !3533
  call void @llvm.dbg.declare(metadata ptr %s, metadata !3459, metadata !DIExpression()), !dbg !3534
  %28 = load ptr, ptr %edit, align 8, !dbg !3535
  %excised_subtree34 = getelementptr inbounds %struct.assoc_array_edit, ptr %28, i32 0, i32 9, !dbg !3536
  %29 = load ptr, ptr %excised_subtree34, align 8, !dbg !3536
  %call35 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %29) #15, !dbg !3537
  store ptr %call35, ptr %s, align 8, !dbg !3534
  %30 = load ptr, ptr %s, align 8, !dbg !3538
  %back_pointer36 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %30, i32 0, i32 0, !dbg !3539
  store ptr null, ptr %back_pointer36, align 8, !dbg !3540
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !3541
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then31
  %31 = load ptr, ptr %edit, align 8, !dbg !3542
  %excised_subtree38 = getelementptr inbounds %struct.assoc_array_edit, ptr %31, i32 0, i32 9, !dbg !3543
  %32 = load ptr, ptr %excised_subtree38, align 8, !dbg !3543
  %33 = load ptr, ptr %edit, align 8, !dbg !3544
  %ops_for_excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %33, i32 0, i32 3, !dbg !3545
  %34 = load ptr, ptr %ops_for_excised_subtree, align 8, !dbg !3545
  call void @assoc_array_destroy_subtree(ptr noundef %32, ptr noundef %34) #15, !dbg !3546
  br label %if.end39, !dbg !3547

if.end39:                                         ; preds = %if.end37, %for.end
  %35 = load ptr, ptr %edit, align 8, !dbg !3548
  call void @kfree(ptr noundef %35) #15, !dbg !3549
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !3550
  call void @llvm.lifetime.end.p0(i64 8, ptr %edit) #14, !dbg !3550
  ret void, !dbg !3550
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3551 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @assoc_array_gc(ptr noundef %array, ptr noundef %ops, ptr noundef %iterator, ptr noundef %iterator_data) #0 align 16 !dbg !3554 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %iterator.addr = alloca ptr, align 8
  %iterator_data.addr = alloca ptr, align 8
  %shortcut = alloca ptr, align 8
  %new_s = alloca ptr, align 8
  %node = alloca ptr, align 8
  %new_n = alloca ptr, align 8
  %edit = alloca ptr, align 8
  %cursor = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %new_root = alloca ptr, align 8
  %new_parent = alloca ptr, align 8
  %new_ptr_pp = alloca ptr, align 8
  %nr_leaves_on_tree = alloca i64, align 8
  %retained = alloca i8, align 1
  %keylen = alloca i32, align 4
  %slot = alloca i32, align 4
  %nr_free = alloca i32, align 4
  %next_slot = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %tmp55 = alloca i32, align 4
  %tmp75 = alloca i32, align 4
  %s = alloca ptr, align 8
  %child = alloca ptr, align 8
  %tmp103 = alloca i32, align 4
  %p = alloca ptr, align 8
  %tmp195 = alloca i32, align 4
  %tmp210 = alloca i32, align 4
  %tmp212 = alloca i32, align 4
  %tmp236 = alloca i32, align 4
  %s248 = alloca ptr, align 8
  %tmp250 = alloca i32, align 4
  %n = alloca ptr, align 8
  %tmp285 = alloca i32, align 4
  %tmp347 = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !3561, metadata !DIExpression()), !dbg !3611
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !3562, metadata !DIExpression()), !dbg !3612
  store ptr %iterator, ptr %iterator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iterator.addr, metadata !3563, metadata !DIExpression()), !dbg !3613
  store ptr %iterator_data, ptr %iterator_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iterator_data.addr, metadata !3564, metadata !DIExpression()), !dbg !3614
  call void @llvm.lifetime.start.p0(i64 8, ptr %shortcut) #14, !dbg !3615
  call void @llvm.dbg.declare(metadata ptr %shortcut, metadata !3565, metadata !DIExpression()), !dbg !3616
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_s) #14, !dbg !3615
  call void @llvm.dbg.declare(metadata ptr %new_s, metadata !3566, metadata !DIExpression()), !dbg !3617
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !3618
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3567, metadata !DIExpression()), !dbg !3619
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_n) #14, !dbg !3618
  call void @llvm.dbg.declare(metadata ptr %new_n, metadata !3568, metadata !DIExpression()), !dbg !3620
  call void @llvm.lifetime.start.p0(i64 8, ptr %edit) #14, !dbg !3621
  call void @llvm.dbg.declare(metadata ptr %edit, metadata !3569, metadata !DIExpression()), !dbg !3622
  call void @llvm.lifetime.start.p0(i64 8, ptr %cursor) #14, !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !3570, metadata !DIExpression()), !dbg !3624
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !3571, metadata !DIExpression()), !dbg !3625
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_root) #14, !dbg !3626
  call void @llvm.dbg.declare(metadata ptr %new_root, metadata !3572, metadata !DIExpression()), !dbg !3627
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_parent) #14, !dbg !3626
  call void @llvm.dbg.declare(metadata ptr %new_parent, metadata !3573, metadata !DIExpression()), !dbg !3628
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ptr_pp) #14, !dbg !3626
  call void @llvm.dbg.declare(metadata ptr %new_ptr_pp, metadata !3574, metadata !DIExpression()), !dbg !3629
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_leaves_on_tree) #14, !dbg !3630
  call void @llvm.dbg.declare(metadata ptr %nr_leaves_on_tree, metadata !3575, metadata !DIExpression()), !dbg !3631
  call void @llvm.lifetime.start.p0(i64 1, ptr %retained) #14, !dbg !3632
  call void @llvm.dbg.declare(metadata ptr %retained, metadata !3576, metadata !DIExpression()), !dbg !3633
  call void @llvm.lifetime.start.p0(i64 4, ptr %keylen) #14, !dbg !3634
  call void @llvm.dbg.declare(metadata ptr %keylen, metadata !3577, metadata !DIExpression()), !dbg !3635
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #14, !dbg !3634
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !3578, metadata !DIExpression()), !dbg !3636
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_free) #14, !dbg !3634
  call void @llvm.dbg.declare(metadata ptr %nr_free, metadata !3579, metadata !DIExpression()), !dbg !3637
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_slot) #14, !dbg !3634
  call void @llvm.dbg.declare(metadata ptr %next_slot, metadata !3580, metadata !DIExpression()), !dbg !3638
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !3634
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3581, metadata !DIExpression()), !dbg !3639
  store i32 0, ptr %tmp, align 4, !dbg !3640
  %0 = load i32, ptr %tmp, align 4, !dbg !3643
  %1 = load ptr, ptr %array.addr, align 8, !dbg !3644
  %root = getelementptr inbounds %struct.assoc_array, ptr %1, i32 0, i32 0, !dbg !3646
  %2 = load ptr, ptr %root, align 8, !dbg !3646
  %tobool = icmp ne ptr %2, null, !dbg !3644
  br i1 %tobool, label %if.end, label %if.then, !dbg !3647

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup349, !dbg !3648

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 328, i32 noundef 3264) #16, !dbg !3649
  store ptr %call, ptr %edit, align 8, !dbg !3650
  %3 = load ptr, ptr %edit, align 8, !dbg !3651
  %tobool1 = icmp ne ptr %3, null, !dbg !3651
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3653

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !3654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup349, !dbg !3654

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %array.addr, align 8, !dbg !3655
  %5 = load ptr, ptr %edit, align 8, !dbg !3656
  %array4 = getelementptr inbounds %struct.assoc_array_edit, ptr %5, i32 0, i32 1, !dbg !3657
  store ptr %4, ptr %array4, align 8, !dbg !3658
  %6 = load ptr, ptr %ops.addr, align 8, !dbg !3659
  %7 = load ptr, ptr %edit, align 8, !dbg !3660
  %ops5 = getelementptr inbounds %struct.assoc_array_edit, ptr %7, i32 0, i32 2, !dbg !3661
  store ptr %6, ptr %ops5, align 8, !dbg !3662
  %8 = load ptr, ptr %ops.addr, align 8, !dbg !3663
  %9 = load ptr, ptr %edit, align 8, !dbg !3664
  %ops_for_excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %9, i32 0, i32 3, !dbg !3665
  store ptr %8, ptr %ops_for_excised_subtree, align 8, !dbg !3666
  %10 = load ptr, ptr %array.addr, align 8, !dbg !3667
  %root6 = getelementptr inbounds %struct.assoc_array, ptr %10, i32 0, i32 0, !dbg !3668
  %11 = load ptr, ptr %edit, align 8, !dbg !3669
  %set = getelementptr inbounds %struct.assoc_array_edit, ptr %11, i32 0, i32 14, !dbg !3670
  %arrayidx = getelementptr [2 x %struct.anon.1], ptr %set, i64 0, i64 0, !dbg !3669
  %ptr7 = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0, !dbg !3671
  store ptr %root6, ptr %ptr7, align 8, !dbg !3672
  %12 = load ptr, ptr %array.addr, align 8, !dbg !3673
  %root8 = getelementptr inbounds %struct.assoc_array, ptr %12, i32 0, i32 0, !dbg !3674
  %13 = load ptr, ptr %root8, align 8, !dbg !3674
  %14 = load ptr, ptr %edit, align 8, !dbg !3675
  %excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %14, i32 0, i32 9, !dbg !3676
  store ptr %13, ptr %excised_subtree, align 8, !dbg !3677
  store ptr null, ptr %new_parent, align 8, !dbg !3678
  store ptr null, ptr %new_root, align 8, !dbg !3679
  store ptr %new_root, ptr %new_ptr_pp, align 8, !dbg !3680
  %15 = load ptr, ptr %array.addr, align 8, !dbg !3681
  %root9 = getelementptr inbounds %struct.assoc_array, ptr %15, i32 0, i32 0, !dbg !3682
  %16 = load ptr, ptr %root9, align 8, !dbg !3682
  store ptr %16, ptr %cursor, align 8, !dbg !3683
  br label %descend, !dbg !3684

descend:                                          ; preds = %if.end51, %if.end3
  call void @llvm.dbg.label(metadata !3582), !dbg !3685
  %17 = load ptr, ptr %cursor, align 8, !dbg !3686
  %call10 = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %17) #15, !dbg !3688
  br i1 %call10, label %if.then11, label %if.end26, !dbg !3689

if.then11:                                        ; preds = %descend
  %18 = load ptr, ptr %cursor, align 8, !dbg !3690
  %call12 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %18) #15, !dbg !3692
  store ptr %call12, ptr %shortcut, align 8, !dbg !3693
  %19 = load ptr, ptr %shortcut, align 8, !dbg !3694
  %skip_to_level = getelementptr inbounds %struct.assoc_array_shortcut, ptr %19, i32 0, i32 2, !dbg !3694
  %20 = load i32, ptr %skip_to_level, align 4, !dbg !3694
  %sub = sub i32 %20, 1, !dbg !3694
  %or = or i32 %sub, 63, !dbg !3694
  %add = add i32 %or, 1, !dbg !3694
  store i32 %add, ptr %keylen, align 4, !dbg !3695
  %21 = load i32, ptr %keylen, align 4, !dbg !3696
  %shr = ashr i32 %21, 6, !dbg !3696
  store i32 %shr, ptr %keylen, align 4, !dbg !3696
  %22 = load i32, ptr %keylen, align 4, !dbg !3697
  %conv = sext i32 %22 to i64, !dbg !3697
  %call13 = call i64 @size_mul(i64 noundef %conv, i64 noundef 8) #15, !dbg !3697
  %call14 = call i64 @size_add(i64 noundef 24, i64 noundef %call13) #15, !dbg !3697
  %call15 = call noalias ptr @kmalloc(i64 noundef %call14, i32 noundef 3264) #16, !dbg !3698
  store ptr %call15, ptr %new_s, align 8, !dbg !3699
  %23 = load ptr, ptr %new_s, align 8, !dbg !3700
  %tobool16 = icmp ne ptr %23, null, !dbg !3700
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !3702

if.then17:                                        ; preds = %if.then11
  br label %enomem, !dbg !3703

if.end18:                                         ; preds = %if.then11
  store i32 0, ptr %tmp19, align 4, !dbg !3704
  %24 = load i32, ptr %tmp19, align 4, !dbg !3707
  %25 = load ptr, ptr %new_s, align 8, !dbg !3708
  %26 = load ptr, ptr %shortcut, align 8, !dbg !3709
  %27 = load i32, ptr %keylen, align 4, !dbg !3710
  %conv20 = sext i32 %27 to i64, !dbg !3710
  %call21 = call i64 @size_mul(i64 noundef %conv20, i64 noundef 8) #15, !dbg !3710
  %call22 = call i64 @size_add(i64 noundef 24, i64 noundef %call21) #15, !dbg !3710
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %25, ptr align 8 %26, i64 %call22, i1 false), !dbg !3711
  %28 = load ptr, ptr %new_parent, align 8, !dbg !3712
  %29 = load ptr, ptr %new_s, align 8, !dbg !3713
  %back_pointer = getelementptr inbounds %struct.assoc_array_shortcut, ptr %29, i32 0, i32 0, !dbg !3714
  store ptr %28, ptr %back_pointer, align 8, !dbg !3715
  %30 = load ptr, ptr %shortcut, align 8, !dbg !3716
  %parent_slot = getelementptr inbounds %struct.assoc_array_shortcut, ptr %30, i32 0, i32 1, !dbg !3717
  %31 = load i32, ptr %parent_slot, align 8, !dbg !3717
  %32 = load ptr, ptr %new_s, align 8, !dbg !3718
  %parent_slot23 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %32, i32 0, i32 1, !dbg !3719
  store i32 %31, ptr %parent_slot23, align 8, !dbg !3720
  %33 = load ptr, ptr %new_s, align 8, !dbg !3721
  %call24 = call ptr @assoc_array_shortcut_to_ptr(ptr noundef %33) #15, !dbg !3722
  store ptr %call24, ptr %new_parent, align 8, !dbg !3723
  %34 = load ptr, ptr %new_ptr_pp, align 8, !dbg !3724
  store ptr %call24, ptr %34, align 8, !dbg !3725
  %35 = load ptr, ptr %new_s, align 8, !dbg !3726
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %35, i32 0, i32 3, !dbg !3727
  store ptr %next_node, ptr %new_ptr_pp, align 8, !dbg !3728
  %36 = load ptr, ptr %shortcut, align 8, !dbg !3729
  %next_node25 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %36, i32 0, i32 3, !dbg !3730
  %37 = load ptr, ptr %next_node25, align 8, !dbg !3730
  store ptr %37, ptr %cursor, align 8, !dbg !3731
  br label %if.end26, !dbg !3732

if.end26:                                         ; preds = %if.end18, %descend
  %38 = load ptr, ptr %cursor, align 8, !dbg !3733
  %call27 = call ptr @assoc_array_ptr_to_node(ptr noundef %38) #15, !dbg !3734
  store ptr %call27, ptr %node, align 8, !dbg !3735
  %call28 = call noalias ptr @kzalloc(i64 noundef 152, i32 noundef 3264) #16, !dbg !3736
  store ptr %call28, ptr %new_n, align 8, !dbg !3737
  %39 = load ptr, ptr %new_n, align 8, !dbg !3738
  %tobool29 = icmp ne ptr %39, null, !dbg !3738
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !3740

if.then30:                                        ; preds = %if.end26
  br label %enomem, !dbg !3741

if.end31:                                         ; preds = %if.end26
  store i32 0, ptr %tmp32, align 4, !dbg !3742
  %40 = load i32, ptr %tmp32, align 4, !dbg !3745
  %41 = load ptr, ptr %new_parent, align 8, !dbg !3746
  %42 = load ptr, ptr %new_n, align 8, !dbg !3747
  %back_pointer33 = getelementptr inbounds %struct.assoc_array_node, ptr %42, i32 0, i32 0, !dbg !3748
  store ptr %41, ptr %back_pointer33, align 8, !dbg !3749
  %43 = load ptr, ptr %node, align 8, !dbg !3750
  %parent_slot34 = getelementptr inbounds %struct.assoc_array_node, ptr %43, i32 0, i32 1, !dbg !3751
  %44 = load i8, ptr %parent_slot34, align 8, !dbg !3751
  %45 = load ptr, ptr %new_n, align 8, !dbg !3752
  %parent_slot35 = getelementptr inbounds %struct.assoc_array_node, ptr %45, i32 0, i32 1, !dbg !3753
  store i8 %44, ptr %parent_slot35, align 8, !dbg !3754
  %46 = load ptr, ptr %new_n, align 8, !dbg !3755
  %call36 = call ptr @assoc_array_node_to_ptr(ptr noundef %46) #15, !dbg !3756
  store ptr %call36, ptr %new_parent, align 8, !dbg !3757
  %47 = load ptr, ptr %new_ptr_pp, align 8, !dbg !3758
  store ptr %call36, ptr %47, align 8, !dbg !3759
  store ptr null, ptr %new_ptr_pp, align 8, !dbg !3760
  store i32 0, ptr %slot, align 4, !dbg !3761
  br label %continue_node, !dbg !3762

continue_node:                                    ; preds = %do.end341, %if.end31
  call void @llvm.dbg.label(metadata !3583), !dbg !3763
  br label %for.cond, !dbg !3764

for.cond:                                         ; preds = %for.inc, %continue_node
  %48 = load i32, ptr %slot, align 4, !dbg !3765
  %cmp = icmp slt i32 %48, 16, !dbg !3768
  br i1 %cmp, label %for.body, label %for.end, !dbg !3769

for.body:                                         ; preds = %for.cond
  %49 = load ptr, ptr %node, align 8, !dbg !3770
  %slots = getelementptr inbounds %struct.assoc_array_node, ptr %49, i32 0, i32 2, !dbg !3772
  %50 = load i32, ptr %slot, align 4, !dbg !3773
  %idxprom = sext i32 %50 to i64, !dbg !3770
  %arrayidx38 = getelementptr [16 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !3770
  %51 = load ptr, ptr %arrayidx38, align 8, !dbg !3770
  store ptr %51, ptr %ptr, align 8, !dbg !3774
  %52 = load ptr, ptr %ptr, align 8, !dbg !3775
  %tobool39 = icmp ne ptr %52, null, !dbg !3775
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !3777

if.then40:                                        ; preds = %for.body
  br label %for.inc, !dbg !3778

if.end41:                                         ; preds = %for.body
  %53 = load ptr, ptr %ptr, align 8, !dbg !3779
  %call42 = call zeroext i1 @assoc_array_ptr_is_leaf(ptr noundef %53) #15, !dbg !3781
  br i1 %call42, label %if.then43, label %if.end51, !dbg !3782

if.then43:                                        ; preds = %if.end41
  %54 = load ptr, ptr %iterator.addr, align 8, !dbg !3783
  %55 = load ptr, ptr %ptr, align 8, !dbg !3786
  %call44 = call ptr @assoc_array_ptr_to_leaf(ptr noundef %55) #15, !dbg !3787
  %56 = load ptr, ptr %iterator_data.addr, align 8, !dbg !3788
  %call45 = call zeroext i1 %54(ptr noundef %call44, ptr noundef %56) #15, !dbg !3783
  br i1 %call45, label %if.then46, label %if.end50, !dbg !3789

if.then46:                                        ; preds = %if.then43
  %57 = load ptr, ptr %ptr, align 8, !dbg !3790
  %58 = load ptr, ptr %new_n, align 8, !dbg !3791
  %slots47 = getelementptr inbounds %struct.assoc_array_node, ptr %58, i32 0, i32 2, !dbg !3792
  %59 = load i32, ptr %slot, align 4, !dbg !3793
  %idxprom48 = sext i32 %59 to i64, !dbg !3791
  %arrayidx49 = getelementptr [16 x ptr], ptr %slots47, i64 0, i64 %idxprom48, !dbg !3791
  store ptr %57, ptr %arrayidx49, align 8, !dbg !3794
  br label %if.end50, !dbg !3791

if.end50:                                         ; preds = %if.then46, %if.then43
  br label %for.inc, !dbg !3795

if.end51:                                         ; preds = %if.end41
  %60 = load ptr, ptr %new_n, align 8, !dbg !3796
  %slots52 = getelementptr inbounds %struct.assoc_array_node, ptr %60, i32 0, i32 2, !dbg !3797
  %61 = load i32, ptr %slot, align 4, !dbg !3798
  %idxprom53 = sext i32 %61 to i64, !dbg !3796
  %arrayidx54 = getelementptr [16 x ptr], ptr %slots52, i64 0, i64 %idxprom53, !dbg !3796
  store ptr %arrayidx54, ptr %new_ptr_pp, align 8, !dbg !3799
  %62 = load ptr, ptr %ptr, align 8, !dbg !3800
  store ptr %62, ptr %cursor, align 8, !dbg !3801
  br label %descend, !dbg !3802

for.inc:                                          ; preds = %if.end50, %if.then40
  %63 = load i32, ptr %slot, align 4, !dbg !3803
  %inc = add i32 %63, 1, !dbg !3803
  store i32 %inc, ptr %slot, align 4, !dbg !3803
  br label %for.cond, !dbg !3804, !llvm.loop !3805

for.end:                                          ; preds = %for.cond
  br label %retry_compress, !dbg !3806

retry_compress:                                   ; preds = %if.then209, %for.end
  call void @llvm.dbg.label(metadata !3584), !dbg !3807
  store i32 0, ptr %tmp55, align 4, !dbg !3808
  %64 = load i32, ptr %tmp55, align 4, !dbg !3811
  %65 = load ptr, ptr %new_n, align 8, !dbg !3812
  %nr_leaves_on_branch = getelementptr inbounds %struct.assoc_array_node, ptr %65, i32 0, i32 3, !dbg !3813
  store i64 0, ptr %nr_leaves_on_branch, align 8, !dbg !3814
  store i32 0, ptr %nr_free, align 4, !dbg !3815
  store i32 0, ptr %slot, align 4, !dbg !3816
  br label %for.cond56, !dbg !3818

for.cond56:                                       ; preds = %for.inc72, %retry_compress
  %66 = load i32, ptr %slot, align 4, !dbg !3819
  %cmp57 = icmp slt i32 %66, 16, !dbg !3821
  br i1 %cmp57, label %for.body59, label %for.end74, !dbg !3822

for.body59:                                       ; preds = %for.cond56
  %67 = load ptr, ptr %new_n, align 8, !dbg !3823
  %slots60 = getelementptr inbounds %struct.assoc_array_node, ptr %67, i32 0, i32 2, !dbg !3825
  %68 = load i32, ptr %slot, align 4, !dbg !3826
  %idxprom61 = sext i32 %68 to i64, !dbg !3823
  %arrayidx62 = getelementptr [16 x ptr], ptr %slots60, i64 0, i64 %idxprom61, !dbg !3823
  %69 = load ptr, ptr %arrayidx62, align 8, !dbg !3823
  store ptr %69, ptr %ptr, align 8, !dbg !3827
  %70 = load ptr, ptr %ptr, align 8, !dbg !3828
  %tobool63 = icmp ne ptr %70, null, !dbg !3828
  br i1 %tobool63, label %if.else, label %if.then64, !dbg !3830

if.then64:                                        ; preds = %for.body59
  %71 = load i32, ptr %nr_free, align 4, !dbg !3831
  %inc65 = add i32 %71, 1, !dbg !3831
  store i32 %inc65, ptr %nr_free, align 4, !dbg !3831
  br label %if.end71, !dbg !3832

if.else:                                          ; preds = %for.body59
  %72 = load ptr, ptr %ptr, align 8, !dbg !3833
  %call66 = call zeroext i1 @assoc_array_ptr_is_leaf(ptr noundef %72) #15, !dbg !3835
  br i1 %call66, label %if.then67, label %if.end70, !dbg !3836

if.then67:                                        ; preds = %if.else
  %73 = load ptr, ptr %new_n, align 8, !dbg !3837
  %nr_leaves_on_branch68 = getelementptr inbounds %struct.assoc_array_node, ptr %73, i32 0, i32 3, !dbg !3838
  %74 = load i64, ptr %nr_leaves_on_branch68, align 8, !dbg !3839
  %inc69 = add i64 %74, 1, !dbg !3839
  store i64 %inc69, ptr %nr_leaves_on_branch68, align 8, !dbg !3839
  br label %if.end70, !dbg !3837

if.end70:                                         ; preds = %if.then67, %if.else
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then64
  br label %for.inc72, !dbg !3840

for.inc72:                                        ; preds = %if.end71
  %75 = load i32, ptr %slot, align 4, !dbg !3841
  %inc73 = add i32 %75, 1, !dbg !3841
  store i32 %inc73, ptr %slot, align 4, !dbg !3841
  br label %for.cond56, !dbg !3842, !llvm.loop !3843

for.end74:                                        ; preds = %for.cond56
  store i32 0, ptr %tmp75, align 4, !dbg !3845
  %76 = load i32, ptr %tmp75, align 4, !dbg !3848
  store i8 0, ptr %retained, align 1, !dbg !3849
  store i32 0, ptr %next_slot, align 4, !dbg !3850
  store i32 0, ptr %slot, align 4, !dbg !3851
  br label %for.cond76, !dbg !3852

for.cond76:                                       ; preds = %for.inc201, %for.end74
  %77 = load i32, ptr %slot, align 4, !dbg !3853
  %cmp77 = icmp slt i32 %77, 16, !dbg !3854
  br i1 %cmp77, label %for.body79, label %for.end203, !dbg !3855

for.body79:                                       ; preds = %for.cond76
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !3856
  call void @llvm.dbg.declare(metadata ptr %s, metadata !3585, metadata !DIExpression()), !dbg !3857
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #14, !dbg !3858
  call void @llvm.dbg.declare(metadata ptr %child, metadata !3589, metadata !DIExpression()), !dbg !3859
  %78 = load ptr, ptr %new_n, align 8, !dbg !3860
  %slots80 = getelementptr inbounds %struct.assoc_array_node, ptr %78, i32 0, i32 2, !dbg !3861
  %79 = load i32, ptr %slot, align 4, !dbg !3862
  %idxprom81 = sext i32 %79 to i64, !dbg !3860
  %arrayidx82 = getelementptr [16 x ptr], ptr %slots80, i64 0, i64 %idxprom81, !dbg !3860
  %80 = load ptr, ptr %arrayidx82, align 8, !dbg !3860
  store ptr %80, ptr %ptr, align 8, !dbg !3863
  %81 = load ptr, ptr %ptr, align 8, !dbg !3864
  %tobool83 = icmp ne ptr %81, null, !dbg !3864
  br i1 %tobool83, label %lor.lhs.false, label %if.then86, !dbg !3866

lor.lhs.false:                                    ; preds = %for.body79
  %82 = load ptr, ptr %ptr, align 8, !dbg !3867
  %call84 = call zeroext i1 @assoc_array_ptr_is_leaf(ptr noundef %82) #15, !dbg !3868
  br i1 %call84, label %if.then86, label %if.end87, !dbg !3869

if.then86:                                        ; preds = %lor.lhs.false, %for.body79
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup197, !dbg !3870

if.end87:                                         ; preds = %lor.lhs.false
  store ptr null, ptr %s, align 8, !dbg !3871
  %83 = load ptr, ptr %ptr, align 8, !dbg !3872
  %call88 = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %83) #15, !dbg !3874
  br i1 %call88, label %if.then89, label %if.end92, !dbg !3875

if.then89:                                        ; preds = %if.end87
  %84 = load ptr, ptr %ptr, align 8, !dbg !3876
  %call90 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %84) #15, !dbg !3878
  store ptr %call90, ptr %s, align 8, !dbg !3879
  %85 = load ptr, ptr %s, align 8, !dbg !3880
  %next_node91 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %85, i32 0, i32 3, !dbg !3881
  %86 = load ptr, ptr %next_node91, align 8, !dbg !3881
  store ptr %86, ptr %ptr, align 8, !dbg !3882
  br label %if.end92, !dbg !3883

if.end92:                                         ; preds = %if.then89, %if.end87
  %87 = load ptr, ptr %ptr, align 8, !dbg !3884
  %call93 = call ptr @assoc_array_ptr_to_node(ptr noundef %87) #15, !dbg !3885
  store ptr %call93, ptr %child, align 8, !dbg !3886
  %88 = load ptr, ptr %child, align 8, !dbg !3887
  %nr_leaves_on_branch94 = getelementptr inbounds %struct.assoc_array_node, ptr %88, i32 0, i32 3, !dbg !3888
  %89 = load i64, ptr %nr_leaves_on_branch94, align 8, !dbg !3888
  %90 = load ptr, ptr %new_n, align 8, !dbg !3889
  %nr_leaves_on_branch95 = getelementptr inbounds %struct.assoc_array_node, ptr %90, i32 0, i32 3, !dbg !3890
  %91 = load i64, ptr %nr_leaves_on_branch95, align 8, !dbg !3891
  %add96 = add i64 %91, %89, !dbg !3891
  store i64 %add96, ptr %nr_leaves_on_branch95, align 8, !dbg !3891
  %92 = load ptr, ptr %child, align 8, !dbg !3892
  %nr_leaves_on_branch97 = getelementptr inbounds %struct.assoc_array_node, ptr %92, i32 0, i32 3, !dbg !3893
  %93 = load i64, ptr %nr_leaves_on_branch97, align 8, !dbg !3893
  %94 = load i32, ptr %nr_free, align 4, !dbg !3894
  %add98 = add i32 %94, 1, !dbg !3895
  %conv99 = sext i32 %add98 to i64, !dbg !3894
  %cmp100 = icmp ule i64 %93, %conv99, !dbg !3896
  br i1 %cmp100, label %if.then102, label %if.else194, !dbg !3897

if.then102:                                       ; preds = %if.end92
  store i32 0, ptr %tmp103, align 4, !dbg !3898
  %95 = load i32, ptr %tmp103, align 4, !dbg !3901
  br label %do.body, !dbg !3902

do.body:                                          ; preds = %if.then102
  %96 = load ptr, ptr %s, align 8, !dbg !3903
  %tobool104 = icmp ne ptr %96, null, !dbg !3903
  %lnot = xor i1 %tobool104, true, !dbg !3903
  %lnot105 = xor i1 %lnot, true, !dbg !3903
  %lnot.ext = zext i1 %lnot105 to i32, !dbg !3903
  %conv106 = sext i32 %lnot.ext to i64, !dbg !3903
  %expval = call i64 @llvm.expect.i64(i64 %conv106, i64 0), !dbg !3903
  %tobool107 = icmp ne i64 %expval, 0, !dbg !3903
  br i1 %tobool107, label %if.then108, label %if.end116, !dbg !3906

if.then108:                                       ; preds = %do.body
  br label %do.body109, !dbg !3903

do.body109:                                       ; preds = %if.then108
  br label %do.body110, !dbg !3907

do.body110:                                       ; preds = %do.body109
  br label %do.cond, !dbg !3909

do.cond:                                          ; preds = %do.body110
  br label %do.end, !dbg !3909

do.end:                                           ; preds = %do.cond
  br label %do.body111, !dbg !3907

do.body111:                                       ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1586, i32 0, i64 12) #14, !dbg !3911, !srcloc !3913
  br label %do.cond112, !dbg !3911

do.cond112:                                       ; preds = %do.body111
  br label %do.end113, !dbg !3911

do.end113:                                        ; preds = %do.cond112
  unreachable, !dbg !3907

do.cond114:                                       ; No predecessors!
  br label %do.end115, !dbg !3907

do.end115:                                        ; preds = %do.cond114
  br label %if.end116, !dbg !3907

if.end116:                                        ; preds = %do.end115, %do.body
  br label %do.cond117, !dbg !3906

do.cond117:                                       ; preds = %if.end116
  br label %do.end118, !dbg !3906

do.end118:                                        ; preds = %do.cond117
  %97 = load ptr, ptr %new_n, align 8, !dbg !3914
  %slots119 = getelementptr inbounds %struct.assoc_array_node, ptr %97, i32 0, i32 2, !dbg !3915
  %98 = load i32, ptr %slot, align 4, !dbg !3916
  %idxprom120 = sext i32 %98 to i64, !dbg !3914
  %arrayidx121 = getelementptr [16 x ptr], ptr %slots119, i64 0, i64 %idxprom120, !dbg !3914
  store ptr null, ptr %arrayidx121, align 8, !dbg !3917
  %99 = load i32, ptr %nr_free, align 4, !dbg !3918
  %inc122 = add i32 %99, 1, !dbg !3918
  store i32 %inc122, ptr %nr_free, align 4, !dbg !3918
  %100 = load i32, ptr %slot, align 4, !dbg !3919
  %101 = load i32, ptr %next_slot, align 4, !dbg !3921
  %cmp123 = icmp slt i32 %100, %101, !dbg !3922
  br i1 %cmp123, label %if.then125, label %if.end126, !dbg !3923

if.then125:                                       ; preds = %do.end118
  %102 = load i32, ptr %slot, align 4, !dbg !3924
  store i32 %102, ptr %next_slot, align 4, !dbg !3925
  br label %if.end126, !dbg !3926

if.end126:                                        ; preds = %if.then125, %do.end118
  store i32 0, ptr %i, align 4, !dbg !3927
  br label %for.cond127, !dbg !3928

for.cond127:                                      ; preds = %for.inc191, %if.end126
  %103 = load i32, ptr %i, align 4, !dbg !3929
  %cmp128 = icmp slt i32 %103, 16, !dbg !3930
  br i1 %cmp128, label %for.body130, label %for.end193, !dbg !3931

for.body130:                                      ; preds = %for.cond127
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !3932
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3590, metadata !DIExpression()), !dbg !3933
  %104 = load ptr, ptr %child, align 8, !dbg !3934
  %slots131 = getelementptr inbounds %struct.assoc_array_node, ptr %104, i32 0, i32 2, !dbg !3935
  %105 = load i32, ptr %i, align 4, !dbg !3936
  %idxprom132 = sext i32 %105 to i64, !dbg !3934
  %arrayidx133 = getelementptr [16 x ptr], ptr %slots131, i64 0, i64 %idxprom132, !dbg !3934
  %106 = load ptr, ptr %arrayidx133, align 8, !dbg !3934
  store ptr %106, ptr %p, align 8, !dbg !3933
  %107 = load ptr, ptr %p, align 8, !dbg !3937
  %tobool134 = icmp ne ptr %107, null, !dbg !3937
  br i1 %tobool134, label %if.end136, label %if.then135, !dbg !3939

if.then135:                                       ; preds = %for.body130
  store i32 25, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3940

if.end136:                                        ; preds = %for.body130
  br label %do.body137, !dbg !3941

do.body137:                                       ; preds = %if.end136
  %108 = load ptr, ptr %p, align 8, !dbg !3942
  %call138 = call zeroext i1 @assoc_array_ptr_is_meta(ptr noundef %108) #15, !dbg !3942
  %lnot139 = xor i1 %call138, true, !dbg !3942
  %lnot141 = xor i1 %lnot139, true, !dbg !3942
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !3942
  %conv143 = sext i32 %lnot.ext142 to i64, !dbg !3942
  %expval144 = call i64 @llvm.expect.i64(i64 %conv143, i64 0), !dbg !3942
  %tobool145 = icmp ne i64 %expval144, 0, !dbg !3942
  br i1 %tobool145, label %if.then146, label %if.end156, !dbg !3945

if.then146:                                       ; preds = %do.body137
  br label %do.body147, !dbg !3942

do.body147:                                       ; preds = %if.then146
  br label %do.body148, !dbg !3946

do.body148:                                       ; preds = %do.body147
  br label %do.cond149, !dbg !3948

do.cond149:                                       ; preds = %do.body148
  br label %do.end150, !dbg !3948

do.end150:                                        ; preds = %do.cond149
  br label %do.body151, !dbg !3946

do.body151:                                       ; preds = %do.end150
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1596, i32 0, i64 12) #14, !dbg !3950, !srcloc !3952
  br label %do.cond152, !dbg !3950

do.cond152:                                       ; preds = %do.body151
  br label %do.end153, !dbg !3950

do.end153:                                        ; preds = %do.cond152
  unreachable, !dbg !3946

do.cond154:                                       ; No predecessors!
  br label %do.end155, !dbg !3946

do.end155:                                        ; preds = %do.cond154
  br label %if.end156, !dbg !3946

if.end156:                                        ; preds = %do.end155, %do.body137
  br label %do.cond157, !dbg !3945

do.cond157:                                       ; preds = %if.end156
  br label %do.end158, !dbg !3945

do.end158:                                        ; preds = %do.cond157
  br label %while.cond, !dbg !3953

while.cond:                                       ; preds = %while.body, %do.end158
  %109 = load ptr, ptr %new_n, align 8, !dbg !3954
  %slots159 = getelementptr inbounds %struct.assoc_array_node, ptr %109, i32 0, i32 2, !dbg !3955
  %110 = load i32, ptr %next_slot, align 4, !dbg !3956
  %idxprom160 = sext i32 %110 to i64, !dbg !3954
  %arrayidx161 = getelementptr [16 x ptr], ptr %slots159, i64 0, i64 %idxprom160, !dbg !3954
  %111 = load ptr, ptr %arrayidx161, align 8, !dbg !3954
  %tobool162 = icmp ne ptr %111, null, !dbg !3953
  br i1 %tobool162, label %while.body, label %while.end, !dbg !3953

while.body:                                       ; preds = %while.cond
  %112 = load i32, ptr %next_slot, align 4, !dbg !3957
  %inc163 = add i32 %112, 1, !dbg !3957
  store i32 %inc163, ptr %next_slot, align 4, !dbg !3957
  br label %while.cond, !dbg !3953, !llvm.loop !3958

while.end:                                        ; preds = %while.cond
  br label %do.body164, !dbg !3959

do.body164:                                       ; preds = %while.end
  %113 = load i32, ptr %next_slot, align 4, !dbg !3960
  %cmp165 = icmp sge i32 %113, 16, !dbg !3960
  %lnot167 = xor i1 %cmp165, true, !dbg !3960
  %lnot169 = xor i1 %lnot167, true, !dbg !3960
  %lnot.ext170 = zext i1 %lnot169 to i32, !dbg !3960
  %conv171 = sext i32 %lnot.ext170 to i64, !dbg !3960
  %expval172 = call i64 @llvm.expect.i64(i64 %conv171, i64 0), !dbg !3960
  %tobool173 = icmp ne i64 %expval172, 0, !dbg !3960
  br i1 %tobool173, label %if.then174, label %if.end184, !dbg !3963

if.then174:                                       ; preds = %do.body164
  br label %do.body175, !dbg !3960

do.body175:                                       ; preds = %if.then174
  br label %do.body176, !dbg !3964

do.body176:                                       ; preds = %do.body175
  br label %do.cond177, !dbg !3966

do.cond177:                                       ; preds = %do.body176
  br label %do.end178, !dbg !3966

do.end178:                                        ; preds = %do.cond177
  br label %do.body179, !dbg !3964

do.body179:                                       ; preds = %do.end178
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1599, i32 0, i64 12) #14, !dbg !3968, !srcloc !3970
  br label %do.cond180, !dbg !3968

do.cond180:                                       ; preds = %do.body179
  br label %do.end181, !dbg !3968

do.end181:                                        ; preds = %do.cond180
  unreachable, !dbg !3964

do.cond182:                                       ; No predecessors!
  br label %do.end183, !dbg !3964

do.end183:                                        ; preds = %do.cond182
  br label %if.end184, !dbg !3964

if.end184:                                        ; preds = %do.end183, %do.body164
  br label %do.cond185, !dbg !3963

do.cond185:                                       ; preds = %if.end184
  br label %do.end186, !dbg !3963

do.end186:                                        ; preds = %do.cond185
  %114 = load ptr, ptr %p, align 8, !dbg !3971
  %115 = load ptr, ptr %new_n, align 8, !dbg !3972
  %slots187 = getelementptr inbounds %struct.assoc_array_node, ptr %115, i32 0, i32 2, !dbg !3973
  %116 = load i32, ptr %next_slot, align 4, !dbg !3974
  %inc188 = add i32 %116, 1, !dbg !3974
  store i32 %inc188, ptr %next_slot, align 4, !dbg !3974
  %idxprom189 = sext i32 %116 to i64, !dbg !3972
  %arrayidx190 = getelementptr [16 x ptr], ptr %slots187, i64 0, i64 %idxprom189, !dbg !3972
  store ptr %114, ptr %arrayidx190, align 8, !dbg !3975
  %117 = load i32, ptr %nr_free, align 4, !dbg !3976
  %dec = add i32 %117, -1, !dbg !3976
  store i32 %dec, ptr %nr_free, align 4, !dbg !3976
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3977
  br label %cleanup, !dbg !3977

cleanup:                                          ; preds = %do.end186, %if.then135
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !3977
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 25, label %for.inc191
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc191, !dbg !3978

for.inc191:                                       ; preds = %cleanup.cont, %cleanup
  %118 = load i32, ptr %i, align 4, !dbg !3979
  %inc192 = add i32 %118, 1, !dbg !3979
  store i32 %inc192, ptr %i, align 4, !dbg !3979
  br label %for.cond127, !dbg !3980, !llvm.loop !3981

for.end193:                                       ; preds = %for.cond127
  %119 = load ptr, ptr %child, align 8, !dbg !3983
  call void @kfree(ptr noundef %119) #15, !dbg !3984
  br label %if.end196, !dbg !3985

if.else194:                                       ; preds = %if.end92
  store i32 0, ptr %tmp195, align 4, !dbg !3986
  %120 = load i32, ptr %tmp195, align 4, !dbg !3990
  store i8 1, ptr %retained, align 1, !dbg !3991
  br label %if.end196

if.end196:                                        ; preds = %if.else194, %for.end193
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3992
  br label %cleanup197, !dbg !3992

cleanup197:                                       ; preds = %if.end196, %if.then86
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #14, !dbg !3992
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !3992
  %cleanup.dest199 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest199, label %unreachable [
    i32 0, label %cleanup.cont200
    i32 14, label %for.inc201
  ]

cleanup.cont200:                                  ; preds = %cleanup197
  br label %for.inc201, !dbg !3993

for.inc201:                                       ; preds = %cleanup.cont200, %cleanup197
  %121 = load i32, ptr %slot, align 4, !dbg !3994
  %inc202 = add i32 %121, 1, !dbg !3994
  store i32 %inc202, ptr %slot, align 4, !dbg !3994
  br label %for.cond76, !dbg !3995, !llvm.loop !3996

for.end203:                                       ; preds = %for.cond76
  %122 = load i8, ptr %retained, align 1, !dbg !3998, !range !1489, !noundef !1490
  %tobool204 = trunc i8 %122 to i1, !dbg !3998
  br i1 %tobool204, label %land.lhs.true, label %if.end211, !dbg !4000

land.lhs.true:                                    ; preds = %for.end203
  %123 = load ptr, ptr %new_n, align 8, !dbg !4001
  %nr_leaves_on_branch206 = getelementptr inbounds %struct.assoc_array_node, ptr %123, i32 0, i32 3, !dbg !4002
  %124 = load i64, ptr %nr_leaves_on_branch206, align 8, !dbg !4002
  %cmp207 = icmp ule i64 %124, 16, !dbg !4003
  br i1 %cmp207, label %if.then209, label %if.end211, !dbg !4004

if.then209:                                       ; preds = %land.lhs.true
  store i32 0, ptr %tmp210, align 4, !dbg !4005
  %125 = load i32, ptr %tmp210, align 4, !dbg !4009
  br label %retry_compress, !dbg !4010

if.end211:                                        ; preds = %land.lhs.true, %for.end203
  store i32 0, ptr %tmp212, align 4, !dbg !4011
  %126 = load i32, ptr %tmp212, align 4, !dbg !4014
  %127 = load ptr, ptr %new_n, align 8, !dbg !4015
  %nr_leaves_on_branch213 = getelementptr inbounds %struct.assoc_array_node, ptr %127, i32 0, i32 3, !dbg !4016
  %128 = load i64, ptr %nr_leaves_on_branch213, align 8, !dbg !4016
  store i64 %128, ptr %nr_leaves_on_tree, align 8, !dbg !4017
  %129 = load i32, ptr %nr_free, align 4, !dbg !4018
  %cmp214 = icmp eq i32 %129, 15, !dbg !4019
  br i1 %cmp214, label %if.then216, label %if.end271, !dbg !4020

if.then216:                                       ; preds = %if.end211
  store i32 0, ptr %slot, align 4, !dbg !4021
  br label %for.cond217, !dbg !4023

for.cond217:                                      ; preds = %for.inc227, %if.then216
  %130 = load i32, ptr %slot, align 4, !dbg !4024
  %cmp218 = icmp slt i32 %130, 16, !dbg !4026
  br i1 %cmp218, label %for.body220, label %for.end229, !dbg !4027

for.body220:                                      ; preds = %for.cond217
  %131 = load ptr, ptr %new_n, align 8, !dbg !4028
  %slots221 = getelementptr inbounds %struct.assoc_array_node, ptr %131, i32 0, i32 2, !dbg !4030
  %132 = load i32, ptr %slot, align 4, !dbg !4031
  %idxprom222 = sext i32 %132 to i64, !dbg !4028
  %arrayidx223 = getelementptr [16 x ptr], ptr %slots221, i64 0, i64 %idxprom222, !dbg !4028
  %133 = load ptr, ptr %arrayidx223, align 8, !dbg !4028
  store ptr %133, ptr %ptr, align 8, !dbg !4032
  %tobool224 = icmp ne ptr %133, null, !dbg !4032
  br i1 %tobool224, label %if.then225, label %if.end226, !dbg !4033

if.then225:                                       ; preds = %for.body220
  br label %for.end229, !dbg !4034

if.end226:                                        ; preds = %for.body220
  br label %for.inc227, !dbg !4035

for.inc227:                                       ; preds = %if.end226
  %134 = load i32, ptr %slot, align 4, !dbg !4036
  %inc228 = add i32 %134, 1, !dbg !4036
  store i32 %inc228, ptr %slot, align 4, !dbg !4036
  br label %for.cond217, !dbg !4037, !llvm.loop !4038

for.end229:                                       ; preds = %if.then225, %for.cond217
  %135 = load ptr, ptr %ptr, align 8, !dbg !4040
  %call230 = call zeroext i1 @assoc_array_ptr_is_meta(ptr noundef %135) #15, !dbg !4041
  br i1 %call230, label %land.lhs.true232, label %if.end270, !dbg !4042

land.lhs.true232:                                 ; preds = %for.end229
  %136 = load ptr, ptr %ptr, align 8, !dbg !4043
  %call233 = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %136) #15, !dbg !4044
  br i1 %call233, label %if.then235, label %if.end270, !dbg !4045

if.then235:                                       ; preds = %land.lhs.true232
  store i32 0, ptr %tmp236, align 4, !dbg !4046
  %137 = load i32, ptr %tmp236, align 4, !dbg !4049
  %138 = load ptr, ptr %ptr, align 8, !dbg !4050
  %call237 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %138) #15, !dbg !4051
  store ptr %call237, ptr %new_s, align 8, !dbg !4052
  %139 = load ptr, ptr %new_n, align 8, !dbg !4053
  %back_pointer238 = getelementptr inbounds %struct.assoc_array_node, ptr %139, i32 0, i32 0, !dbg !4054
  %140 = load ptr, ptr %back_pointer238, align 8, !dbg !4054
  store ptr %140, ptr %new_parent, align 8, !dbg !4055
  %141 = load ptr, ptr %new_n, align 8, !dbg !4056
  %parent_slot239 = getelementptr inbounds %struct.assoc_array_node, ptr %141, i32 0, i32 1, !dbg !4057
  %142 = load i8, ptr %parent_slot239, align 8, !dbg !4057
  %conv240 = zext i8 %142 to i32, !dbg !4056
  store i32 %conv240, ptr %slot, align 4, !dbg !4058
  %143 = load ptr, ptr %new_n, align 8, !dbg !4059
  call void @kfree(ptr noundef %143) #15, !dbg !4060
  %144 = load ptr, ptr %new_parent, align 8, !dbg !4061
  %tobool241 = icmp ne ptr %144, null, !dbg !4061
  br i1 %tobool241, label %if.end245, label %if.then242, !dbg !4063

if.then242:                                       ; preds = %if.then235
  %145 = load ptr, ptr %new_s, align 8, !dbg !4064
  %back_pointer243 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %145, i32 0, i32 0, !dbg !4066
  store ptr null, ptr %back_pointer243, align 8, !dbg !4067
  %146 = load ptr, ptr %new_s, align 8, !dbg !4068
  %parent_slot244 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %146, i32 0, i32 1, !dbg !4069
  store i32 0, ptr %parent_slot244, align 8, !dbg !4070
  %147 = load ptr, ptr %ptr, align 8, !dbg !4071
  store ptr %147, ptr %new_root, align 8, !dbg !4072
  br label %gc_complete, !dbg !4073

if.end245:                                        ; preds = %if.then235
  %148 = load ptr, ptr %new_parent, align 8, !dbg !4074
  %call246 = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %148) #15, !dbg !4075
  br i1 %call246, label %if.then247, label %if.end263, !dbg !4076

if.then247:                                       ; preds = %if.end245
  call void @llvm.lifetime.start.p0(i64 8, ptr %s248) #14, !dbg !4077
  call void @llvm.dbg.declare(metadata ptr %s248, metadata !3596, metadata !DIExpression()), !dbg !4078
  %149 = load ptr, ptr %new_parent, align 8, !dbg !4079
  %call249 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %149) #15, !dbg !4080
  store ptr %call249, ptr %s248, align 8, !dbg !4078
  store i32 0, ptr %tmp250, align 4, !dbg !4081
  %150 = load i32, ptr %tmp250, align 4, !dbg !4084
  %151 = load ptr, ptr %s248, align 8, !dbg !4085
  %back_pointer251 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %151, i32 0, i32 0, !dbg !4086
  %152 = load ptr, ptr %back_pointer251, align 8, !dbg !4086
  %153 = load ptr, ptr %new_s, align 8, !dbg !4087
  %back_pointer252 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %153, i32 0, i32 0, !dbg !4088
  store ptr %152, ptr %back_pointer252, align 8, !dbg !4089
  store ptr %152, ptr %new_parent, align 8, !dbg !4090
  %154 = load ptr, ptr %s248, align 8, !dbg !4091
  %parent_slot253 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %154, i32 0, i32 1, !dbg !4092
  %155 = load i32, ptr %parent_slot253, align 8, !dbg !4092
  %156 = load ptr, ptr %new_s, align 8, !dbg !4093
  %parent_slot254 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %156, i32 0, i32 1, !dbg !4094
  store i32 %155, ptr %parent_slot254, align 8, !dbg !4095
  store i32 %155, ptr %slot, align 4, !dbg !4096
  %157 = load ptr, ptr %s248, align 8, !dbg !4097
  call void @kfree(ptr noundef %157) #15, !dbg !4098
  %158 = load ptr, ptr %new_parent, align 8, !dbg !4099
  %tobool255 = icmp ne ptr %158, null, !dbg !4099
  br i1 %tobool255, label %if.end259, label %if.then256, !dbg !4101

if.then256:                                       ; preds = %if.then247
  %159 = load ptr, ptr %new_s, align 8, !dbg !4102
  %back_pointer257 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %159, i32 0, i32 0, !dbg !4104
  store ptr null, ptr %back_pointer257, align 8, !dbg !4105
  %160 = load ptr, ptr %new_s, align 8, !dbg !4106
  %parent_slot258 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %160, i32 0, i32 1, !dbg !4107
  store i32 0, ptr %parent_slot258, align 8, !dbg !4108
  %161 = load ptr, ptr %ptr, align 8, !dbg !4109
  store ptr %161, ptr %new_root, align 8, !dbg !4110
  store i32 47, ptr %cleanup.dest.slot, align 4
  br label %cleanup260, !dbg !4111

if.end259:                                        ; preds = %if.then247
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4112
  br label %cleanup260, !dbg !4112

cleanup260:                                       ; preds = %if.then256, %if.end259
  call void @llvm.lifetime.end.p0(i64 8, ptr %s248) #14, !dbg !4112
  %cleanup.dest261 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest261, label %cleanup349 [
    i32 0, label %cleanup.cont262
    i32 47, label %gc_complete
  ]

cleanup.cont262:                                  ; preds = %cleanup260
  br label %if.end263, !dbg !4113

if.end263:                                        ; preds = %cleanup.cont262, %if.end245
  %162 = load ptr, ptr %new_parent, align 8, !dbg !4114
  %163 = load ptr, ptr %new_s, align 8, !dbg !4115
  %back_pointer264 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %163, i32 0, i32 0, !dbg !4116
  store ptr %162, ptr %back_pointer264, align 8, !dbg !4117
  %164 = load i32, ptr %slot, align 4, !dbg !4118
  %165 = load ptr, ptr %new_s, align 8, !dbg !4119
  %parent_slot265 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %165, i32 0, i32 1, !dbg !4120
  store i32 %164, ptr %parent_slot265, align 8, !dbg !4121
  %166 = load ptr, ptr %new_parent, align 8, !dbg !4122
  %call266 = call ptr @assoc_array_ptr_to_node(ptr noundef %166) #15, !dbg !4123
  store ptr %call266, ptr %new_n, align 8, !dbg !4124
  %167 = load ptr, ptr %ptr, align 8, !dbg !4125
  %168 = load ptr, ptr %new_n, align 8, !dbg !4126
  %slots267 = getelementptr inbounds %struct.assoc_array_node, ptr %168, i32 0, i32 2, !dbg !4127
  %169 = load i32, ptr %slot, align 4, !dbg !4128
  %idxprom268 = sext i32 %169 to i64, !dbg !4126
  %arrayidx269 = getelementptr [16 x ptr], ptr %slots267, i64 0, i64 %idxprom268, !dbg !4126
  store ptr %167, ptr %arrayidx269, align 8, !dbg !4129
  br label %ascend_old_tree, !dbg !4130

if.end270:                                        ; preds = %land.lhs.true232, %for.end229
  br label %if.end271, !dbg !4131

if.end271:                                        ; preds = %if.end270, %if.end211
  %170 = load ptr, ptr %new_n, align 8, !dbg !4132
  %back_pointer272 = getelementptr inbounds %struct.assoc_array_node, ptr %170, i32 0, i32 0, !dbg !4133
  %171 = load ptr, ptr %back_pointer272, align 8, !dbg !4133
  store ptr %171, ptr %ptr, align 8, !dbg !4134
  %172 = load ptr, ptr %ptr, align 8, !dbg !4135
  %tobool273 = icmp ne ptr %172, null, !dbg !4135
  br i1 %tobool273, label %if.end275, label %if.then274, !dbg !4137

if.then274:                                       ; preds = %if.end271
  br label %gc_complete, !dbg !4138

if.end275:                                        ; preds = %if.end271
  %173 = load ptr, ptr %ptr, align 8, !dbg !4139
  %call276 = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %173) #15, !dbg !4140
  br i1 %call276, label %if.then277, label %if.else302, !dbg !4141

if.then277:                                       ; preds = %if.end275
  %174 = load ptr, ptr %ptr, align 8, !dbg !4142
  %call278 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %174) #15, !dbg !4143
  store ptr %call278, ptr %new_s, align 8, !dbg !4144
  %175 = load ptr, ptr %new_s, align 8, !dbg !4145
  %back_pointer279 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %175, i32 0, i32 0, !dbg !4146
  %176 = load ptr, ptr %back_pointer279, align 8, !dbg !4146
  store ptr %176, ptr %new_parent, align 8, !dbg !4147
  %177 = load ptr, ptr %new_s, align 8, !dbg !4148
  %parent_slot280 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %177, i32 0, i32 1, !dbg !4149
  %178 = load i32, ptr %parent_slot280, align 8, !dbg !4149
  store i32 %178, ptr %slot, align 4, !dbg !4150
  %179 = load ptr, ptr %new_n, align 8, !dbg !4151
  %nr_leaves_on_branch281 = getelementptr inbounds %struct.assoc_array_node, ptr %179, i32 0, i32 3, !dbg !4152
  %180 = load i64, ptr %nr_leaves_on_branch281, align 8, !dbg !4152
  %cmp282 = icmp ule i64 %180, 16, !dbg !4153
  br i1 %cmp282, label %if.then284, label %if.end301, !dbg !4154

if.then284:                                       ; preds = %if.then277
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #14, !dbg !4155
  call void @llvm.dbg.declare(metadata ptr %n, metadata !3603, metadata !DIExpression()), !dbg !4156
  store i32 0, ptr %tmp285, align 4, !dbg !4157
  %181 = load i32, ptr %tmp285, align 4, !dbg !4160
  %182 = load ptr, ptr %new_parent, align 8, !dbg !4161
  %183 = load ptr, ptr %new_n, align 8, !dbg !4162
  %back_pointer286 = getelementptr inbounds %struct.assoc_array_node, ptr %183, i32 0, i32 0, !dbg !4163
  store ptr %182, ptr %back_pointer286, align 8, !dbg !4164
  %184 = load i32, ptr %slot, align 4, !dbg !4165
  %conv287 = trunc i32 %184 to i8, !dbg !4165
  %185 = load ptr, ptr %new_n, align 8, !dbg !4166
  %parent_slot288 = getelementptr inbounds %struct.assoc_array_node, ptr %185, i32 0, i32 1, !dbg !4167
  store i8 %conv287, ptr %parent_slot288, align 8, !dbg !4168
  %186 = load ptr, ptr %new_s, align 8, !dbg !4169
  call void @kfree(ptr noundef %186) #15, !dbg !4170
  %187 = load ptr, ptr %new_parent, align 8, !dbg !4171
  %tobool289 = icmp ne ptr %187, null, !dbg !4171
  br i1 %tobool289, label %if.end292, label %if.then290, !dbg !4173

if.then290:                                       ; preds = %if.then284
  %188 = load ptr, ptr %new_n, align 8, !dbg !4174
  %call291 = call ptr @assoc_array_node_to_ptr(ptr noundef %188) #15, !dbg !4176
  store ptr %call291, ptr %new_root, align 8, !dbg !4177
  store i32 47, ptr %cleanup.dest.slot, align 4
  br label %cleanup298, !dbg !4178

if.end292:                                        ; preds = %if.then284
  %189 = load ptr, ptr %new_parent, align 8, !dbg !4179
  %call293 = call ptr @assoc_array_ptr_to_node(ptr noundef %189) #15, !dbg !4180
  store ptr %call293, ptr %n, align 8, !dbg !4181
  %190 = load ptr, ptr %new_n, align 8, !dbg !4182
  %call294 = call ptr @assoc_array_node_to_ptr(ptr noundef %190) #15, !dbg !4183
  %191 = load ptr, ptr %n, align 8, !dbg !4184
  %slots295 = getelementptr inbounds %struct.assoc_array_node, ptr %191, i32 0, i32 2, !dbg !4185
  %192 = load i32, ptr %slot, align 4, !dbg !4186
  %idxprom296 = sext i32 %192 to i64, !dbg !4184
  %arrayidx297 = getelementptr [16 x ptr], ptr %slots295, i64 0, i64 %idxprom296, !dbg !4184
  store ptr %call294, ptr %arrayidx297, align 8, !dbg !4187
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4188
  br label %cleanup298, !dbg !4188

cleanup298:                                       ; preds = %if.then290, %if.end292
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #14, !dbg !4188
  %cleanup.dest299 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest299, label %cleanup349 [
    i32 0, label %cleanup.cont300
    i32 47, label %gc_complete
  ]

cleanup.cont300:                                  ; preds = %cleanup298
  br label %if.end301, !dbg !4189

if.end301:                                        ; preds = %cleanup.cont300, %if.then277
  br label %if.end303, !dbg !4190

if.else302:                                       ; preds = %if.end275
  %193 = load ptr, ptr %ptr, align 8, !dbg !4191
  store ptr %193, ptr %new_parent, align 8, !dbg !4193
  br label %if.end303

if.end303:                                        ; preds = %if.else302, %if.end301
  %194 = load ptr, ptr %new_parent, align 8, !dbg !4194
  %call304 = call ptr @assoc_array_ptr_to_node(ptr noundef %194) #15, !dbg !4195
  store ptr %call304, ptr %new_n, align 8, !dbg !4196
  br label %ascend_old_tree, !dbg !4197

ascend_old_tree:                                  ; preds = %if.end303, %if.end263
  call void @llvm.dbg.label(metadata !3608), !dbg !4198
  %195 = load ptr, ptr %node, align 8, !dbg !4199
  %back_pointer305 = getelementptr inbounds %struct.assoc_array_node, ptr %195, i32 0, i32 0, !dbg !4200
  %196 = load ptr, ptr %back_pointer305, align 8, !dbg !4200
  store ptr %196, ptr %ptr, align 8, !dbg !4201
  %197 = load ptr, ptr %ptr, align 8, !dbg !4202
  %call306 = call zeroext i1 @assoc_array_ptr_is_shortcut(ptr noundef %197) #15, !dbg !4204
  br i1 %call306, label %if.then307, label %if.else314, !dbg !4205

if.then307:                                       ; preds = %ascend_old_tree
  %198 = load ptr, ptr %ptr, align 8, !dbg !4206
  %call308 = call ptr @assoc_array_ptr_to_shortcut(ptr noundef %198) #15, !dbg !4208
  store ptr %call308, ptr %shortcut, align 8, !dbg !4209
  %199 = load ptr, ptr %shortcut, align 8, !dbg !4210
  %parent_slot309 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %199, i32 0, i32 1, !dbg !4211
  %200 = load i32, ptr %parent_slot309, align 8, !dbg !4211
  store i32 %200, ptr %slot, align 4, !dbg !4212
  %201 = load ptr, ptr %shortcut, align 8, !dbg !4213
  %back_pointer310 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %201, i32 0, i32 0, !dbg !4214
  %202 = load ptr, ptr %back_pointer310, align 8, !dbg !4214
  store ptr %202, ptr %cursor, align 8, !dbg !4215
  %203 = load ptr, ptr %cursor, align 8, !dbg !4216
  %tobool311 = icmp ne ptr %203, null, !dbg !4216
  br i1 %tobool311, label %if.end313, label %if.then312, !dbg !4218

if.then312:                                       ; preds = %if.then307
  br label %gc_complete, !dbg !4219

if.end313:                                        ; preds = %if.then307
  br label %if.end317, !dbg !4220

if.else314:                                       ; preds = %ascend_old_tree
  %204 = load ptr, ptr %node, align 8, !dbg !4221
  %parent_slot315 = getelementptr inbounds %struct.assoc_array_node, ptr %204, i32 0, i32 1, !dbg !4223
  %205 = load i8, ptr %parent_slot315, align 8, !dbg !4223
  %conv316 = zext i8 %205 to i32, !dbg !4221
  store i32 %conv316, ptr %slot, align 4, !dbg !4224
  %206 = load ptr, ptr %ptr, align 8, !dbg !4225
  store ptr %206, ptr %cursor, align 8, !dbg !4226
  br label %if.end317

if.end317:                                        ; preds = %if.else314, %if.end313
  br label %do.body318, !dbg !4227

do.body318:                                       ; preds = %if.end317
  %207 = load ptr, ptr %cursor, align 8, !dbg !4228
  %tobool319 = icmp ne ptr %207, null, !dbg !4228
  %lnot320 = xor i1 %tobool319, true, !dbg !4228
  %lnot322 = xor i1 %lnot320, true, !dbg !4228
  %lnot324 = xor i1 %lnot322, true, !dbg !4228
  %lnot.ext325 = zext i1 %lnot324 to i32, !dbg !4228
  %conv326 = sext i32 %lnot.ext325 to i64, !dbg !4228
  %expval327 = call i64 @llvm.expect.i64(i64 %conv326, i64 0), !dbg !4228
  %tobool328 = icmp ne i64 %expval327, 0, !dbg !4228
  br i1 %tobool328, label %if.then329, label %if.end339, !dbg !4231

if.then329:                                       ; preds = %do.body318
  br label %do.body330, !dbg !4228

do.body330:                                       ; preds = %if.then329
  br label %do.body331, !dbg !4232

do.body331:                                       ; preds = %do.body330
  br label %do.cond332, !dbg !4234

do.cond332:                                       ; preds = %do.body331
  br label %do.end333, !dbg !4234

do.end333:                                        ; preds = %do.cond332
  br label %do.body334, !dbg !4232

do.body334:                                       ; preds = %do.end333
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1710, i32 0, i64 12) #14, !dbg !4236, !srcloc !4238
  br label %do.cond335, !dbg !4236

do.cond335:                                       ; preds = %do.body334
  br label %do.end336, !dbg !4236

do.end336:                                        ; preds = %do.cond335
  unreachable, !dbg !4232

do.cond337:                                       ; No predecessors!
  br label %do.end338, !dbg !4232

do.end338:                                        ; preds = %do.cond337
  br label %if.end339, !dbg !4232

if.end339:                                        ; preds = %do.end338, %do.body318
  br label %do.cond340, !dbg !4231

do.cond340:                                       ; preds = %if.end339
  br label %do.end341, !dbg !4231

do.end341:                                        ; preds = %do.cond340
  %208 = load ptr, ptr %cursor, align 8, !dbg !4239
  %call342 = call ptr @assoc_array_ptr_to_node(ptr noundef %208) #15, !dbg !4240
  store ptr %call342, ptr %node, align 8, !dbg !4241
  %209 = load i32, ptr %slot, align 4, !dbg !4242
  %inc343 = add i32 %209, 1, !dbg !4242
  store i32 %inc343, ptr %slot, align 4, !dbg !4242
  br label %continue_node, !dbg !4243

gc_complete:                                      ; preds = %cleanup298, %cleanup260, %if.then312, %if.then274, %if.then242
  call void @llvm.dbg.label(metadata !3609), !dbg !4244
  %210 = load ptr, ptr %new_root, align 8, !dbg !4245
  %211 = load ptr, ptr %edit, align 8, !dbg !4246
  %set344 = getelementptr inbounds %struct.assoc_array_edit, ptr %211, i32 0, i32 14, !dbg !4247
  %arrayidx345 = getelementptr [2 x %struct.anon.1], ptr %set344, i64 0, i64 0, !dbg !4246
  %to = getelementptr inbounds %struct.anon.1, ptr %arrayidx345, i32 0, i32 1, !dbg !4248
  store ptr %210, ptr %to, align 8, !dbg !4249
  %212 = load ptr, ptr %edit, align 8, !dbg !4250
  call void @assoc_array_apply_edit(ptr noundef %212) #15, !dbg !4251
  %213 = load i64, ptr %nr_leaves_on_tree, align 8, !dbg !4252
  %214 = load ptr, ptr %array.addr, align 8, !dbg !4253
  %nr_leaves_on_tree346 = getelementptr inbounds %struct.assoc_array, ptr %214, i32 0, i32 1, !dbg !4254
  store i64 %213, ptr %nr_leaves_on_tree346, align 8, !dbg !4255
  store i32 0, ptr %retval, align 4, !dbg !4256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup349, !dbg !4256

enomem:                                           ; preds = %if.then30, %if.then17
  call void @llvm.dbg.label(metadata !3610), !dbg !4257
  store i32 0, ptr %tmp347, align 4, !dbg !4258
  %215 = load i32, ptr %tmp347, align 4, !dbg !4261
  %216 = load ptr, ptr %new_root, align 8, !dbg !4262
  %217 = load ptr, ptr %edit, align 8, !dbg !4263
  %ops348 = getelementptr inbounds %struct.assoc_array_edit, ptr %217, i32 0, i32 2, !dbg !4264
  %218 = load ptr, ptr %ops348, align 8, !dbg !4264
  call void @assoc_array_destroy_subtree(ptr noundef %216, ptr noundef %218) #15, !dbg !4265
  %219 = load ptr, ptr %edit, align 8, !dbg !4266
  call void @kfree(ptr noundef %219) #15, !dbg !4267
  store i32 -12, ptr %retval, align 4, !dbg !4268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup349, !dbg !4268

cleanup349:                                       ; preds = %enomem, %gc_complete, %cleanup298, %cleanup260, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_slot) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_free) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 4, ptr %keylen) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 1, ptr %retained) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_leaves_on_tree) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ptr_pp) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_parent) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_root) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %cursor) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %edit) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_n) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_s) #14, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %shortcut) #14, !dbg !4269
  %220 = load i32, ptr %retval, align 4, !dbg !4269
  ret i32 %220, !dbg !4269

unreachable:                                      ; preds = %cleanup197, %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !4270 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4272, metadata !DIExpression()), !dbg !4277
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4273, metadata !DIExpression()), !dbg !4278
  %0 = load i64, ptr %size.addr, align 8, !dbg !4279
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4280
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4281

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4282
  %tobool = icmp ne i64 %2, 0, !dbg !4282
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4283

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !4284
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4274, metadata !DIExpression()), !dbg !4285
  %3 = load i64, ptr %size.addr, align 8, !dbg !4286
  %cmp = icmp ugt i64 %3, 8192, !dbg !4288
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4289

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4290
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4291
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4292
  store ptr %call, ptr %retval, align 8, !dbg !4293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4293

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4294
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !4294
  store i32 %call2, ptr %index, align 4, !dbg !4295
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4296
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4297
  %9 = ptrtoint ptr %8 to i64, !dbg !4297
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !4298
  %idxprom = zext i32 %call3 to i64, !dbg !4299
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4299
  %10 = load i32, ptr %index, align 4, !dbg !4300
  %idxprom4 = zext i32 %10 to i64, !dbg !4299
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4299
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4299
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4301
  %13 = load i64, ptr %size.addr, align 8, !dbg !4302
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !4303
  store ptr %call6, ptr %retval, align 8, !dbg !4304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4304

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !4305
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4306
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4307
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4308
  store ptr %call8, ptr %retval, align 8, !dbg !4309
  br label %return, !dbg !4309

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4310
  ret ptr %16, !dbg !4310
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #3 align 16 !dbg !4311 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !4316, metadata !DIExpression()), !dbg !4319
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !4317, metadata !DIExpression()), !dbg !4320
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !4321
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4318, metadata !DIExpression()), !dbg !4322
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !4323
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !4323
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !4323
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4323
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4323
  store i64 %4, ptr %bytes, align 8, !dbg !4323
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #15, !dbg !4323
  br i1 %call, label %if.then, label %if.end, !dbg !4325

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4326

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4327
  store i64 %5, ptr %retval, align 8, !dbg !4328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4328

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !4329
  %6 = load i64, ptr %retval, align 8, !dbg !4329
  ret i64 %6, !dbg !4329
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #3 align 16 !dbg !4330 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !4332, metadata !DIExpression()), !dbg !4335
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !4333, metadata !DIExpression()), !dbg !4336
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !4337
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4334, metadata !DIExpression()), !dbg !4338
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !4339
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !4339
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !4339
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4339
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4339
  store i64 %4, ptr %bytes, align 8, !dbg !4339
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #15, !dbg !4339
  br i1 %call, label %if.then, label %if.end, !dbg !4341

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4342

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !4343
  store i64 %5, ptr %retval, align 8, !dbg !4344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4344

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !4345
  %6 = load i64, ptr %retval, align 8, !dbg !4345
  ret i64 %6, !dbg !4345
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @assoc_array_shortcut_to_ptr(ptr noundef %p) #3 align 16 !dbg !4346 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4352
  %call = call ptr @__assoc_array_x_to_ptr(ptr noundef %0, i64 noundef 3) #15, !dbg !4353
  ret ptr %call, !dbg !4354
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__assoc_array_x_to_ptr(ptr noundef %p, i64 noundef %t) #3 align 16 !dbg !4355 {
entry:
  %p.addr = alloca ptr, align 8
  %t.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4359, metadata !DIExpression()), !dbg !4361
  store i64 %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !4360, metadata !DIExpression()), !dbg !4362
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4363
  %1 = ptrtoint ptr %0 to i64, !dbg !4364
  %2 = load i64, ptr %t.addr, align 8, !dbg !4365
  %or = or i64 %1, %2, !dbg !4366
  %3 = inttoptr i64 %or to ptr, !dbg !4367
  ret ptr %3, !dbg !4368
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #10 align 16 !dbg !4369 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !4374, metadata !DIExpression()), !dbg !4375
  %0 = load i64, ptr %word.addr, align 8, !dbg !4376
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #18, !dbg !4377, !srcloc !4378
  store i64 %1, ptr %word.addr, align 8, !dbg !4377
  %2 = load i64, ptr %word.addr, align 8, !dbg !4379
  ret i64 %2, !dbg !4380
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__assoc_array_ptr_to_meta(ptr noundef %x) #3 align 16 !dbg !4381 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4385, metadata !DIExpression()), !dbg !4386
  %0 = load ptr, ptr %x.addr, align 8, !dbg !4387
  %1 = ptrtoint ptr %0 to i64, !dbg !4388
  %and = and i64 %1, -4, !dbg !4389
  ret i64 %and, !dbg !4390
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4391 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !4392 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4396, metadata !DIExpression()), !dbg !4398
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4397, metadata !DIExpression()), !dbg !4399
  %0 = load i64, ptr %size.addr, align 8, !dbg !4400
  %tobool = icmp ne i64 %0, 0, !dbg !4400
  br i1 %tobool, label %if.end, label %if.then, !dbg !4402

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4403
  br label %return, !dbg !4403

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4404
  %cmp = icmp ule i64 %1, 8, !dbg !4406
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4407

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4408
  br label %return, !dbg !4408

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4409
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4411
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4412

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4413
  %cmp4 = icmp ule i64 %3, 96, !dbg !4414
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4415

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4416
  br label %return, !dbg !4416

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4417
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4419
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4420

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4421
  %cmp9 = icmp ule i64 %5, 192, !dbg !4422
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4423

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4424
  br label %return, !dbg !4424

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4425
  %cmp12 = icmp ule i64 %6, 8, !dbg !4427
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4428

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4429
  br label %return, !dbg !4429

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4430
  %cmp15 = icmp ule i64 %7, 16, !dbg !4432
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4433

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4434
  br label %return, !dbg !4434

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4435
  %cmp18 = icmp ule i64 %8, 32, !dbg !4437
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4438

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4439
  br label %return, !dbg !4439

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4440
  %cmp21 = icmp ule i64 %9, 64, !dbg !4442
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4443

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4444
  br label %return, !dbg !4444

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4445
  %cmp24 = icmp ule i64 %10, 128, !dbg !4447
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4448

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4449
  br label %return, !dbg !4449

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4450
  %cmp27 = icmp ule i64 %11, 256, !dbg !4452
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4453

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4454
  br label %return, !dbg !4454

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4455
  %cmp30 = icmp ule i64 %12, 512, !dbg !4457
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4458

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4459
  br label %return, !dbg !4459

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4460
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4462
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4463

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4464
  br label %return, !dbg !4464

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4465
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4467
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4468

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4469
  br label %return, !dbg !4469

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4470
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4472
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4473

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4474
  br label %return, !dbg !4474

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4475
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4477
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4478

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4479
  br label %return, !dbg !4479

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4480
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4482
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4483

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4484
  br label %return, !dbg !4484

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4485
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4487
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4488

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4489
  br label %return, !dbg !4489

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4490
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4492
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4493

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4494
  br label %return, !dbg !4494

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4495
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4497
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4498

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4499
  br label %return, !dbg !4499

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4500
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4502
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4503

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4504
  br label %return, !dbg !4504

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4505
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4507
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4508

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4509
  br label %return, !dbg !4509

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4510
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4512
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4513

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4514
  br label %return, !dbg !4514

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4515
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4517
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4518

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4519
  br label %return, !dbg !4519

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4520, !range !1489, !noundef !1490
  %tobool69 = trunc i8 %25 to i1, !dbg !4520
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4522

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4523

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #19, !dbg !4524, !srcloc !4527
  unreachable, !dbg !4524

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4528

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4529

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4530

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4532

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4530

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #14, !dbg !4534, !srcloc !4536
  br label %do.end75, !dbg !4534

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4530

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4537
  br label %return, !dbg !4537

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4538
  ret i32 %26, !dbg !4538
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4539 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !4545 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4549, metadata !DIExpression()), !dbg !4551
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4550, metadata !DIExpression()), !dbg !4552
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4553
  %and = and i32 %0, 17, !dbg !4553
  %cmp = icmp eq i32 %and, 0, !dbg !4553
  %lnot = xor i1 %cmp, true, !dbg !4553
  %lnot1 = xor i1 %lnot, true, !dbg !4553
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4553
  %conv = sext i32 %lnot.ext to i64, !dbg !4553
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4553
  %tobool = icmp ne i64 %expval, 0, !dbg !4553
  br i1 %tobool, label %if.then, label %if.end, !dbg !4555

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4556
  br label %return, !dbg !4556

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4557
  %and2 = and i32 %1, 1, !dbg !4559
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4559
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4560

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4561
  br label %return, !dbg !4561

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4562
  br label %return, !dbg !4562

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4564
  ret i32 %2, !dbg !4564
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4565 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4566 dso_local void @__compiletime_assert_117() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !4569 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !4573, metadata !DIExpression()), !dbg !4574
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !4575, !range !1489, !noundef !1490
  %tobool = trunc i8 %0 to i1, !dbg !4575
  %lnot = xor i1 %tobool, true, !dbg !4575
  %lnot1 = xor i1 %lnot, true, !dbg !4575
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4575
  %conv = sext i32 %lnot.ext to i64, !dbg !4575
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4575
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4575
  ret i1 %tobool2, !dbg !4576
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { nounwind memory(read) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 978, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/assoc_array.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "254815309b8aa19afda57b6175d8008d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 480, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 21)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.assoc_array.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/assoc_array\22 -D KBUILD_BASENAME=\22assoc_array\22 -D KBUILD_MODNAME=\22assoc_array\22 -D __KBUILD_MODNAME=kmod_assoc_array -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/assoc_array.ll lib/assoc_array.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !35, globals: !161, splitDebugInlining: false, nameTableKind: None)
!14 = !{!15, !21, !26}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "assoc_array_walk_status", file: !2, line: 145, baseType: !16, size: 32, elements: !17)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "assoc_array_walk_tree_empty", value: 0)
!19 = !DIEnumerator(name: "assoc_array_walk_found_terminal_node", value: 1)
!20 = !DIEnumerator(name: "assoc_array_walk_found_wrong_shortcut", value: 2)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 10, baseType: !16, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "false", value: 0)
!25 = !DIEnumerator(name: "true", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !9, line: 364, baseType: !16, size: 32, elements: !27)
!27 = !{!28, !29, !30, !31, !32, !33, !34}
!28 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!29 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!30 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!31 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!32 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!33 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!34 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!35 = !{!36, !42, !43, !45, !46, !39, !47, !59, !74, !157}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !41, line: 23, flags: DIFlagFwdDecl)
!41 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !44, line: 154, baseType: !16)
!44 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_shortcut", file: !49, line: 63, size: 192, elements: !50)
!49 = !DIFile(filename: "./include/linux/assoc_array_priv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dfce815d759165f1cfd1fd2fe1b5765d")
!50 = !{!51, !52, !53, !54, !55}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "back_pointer", scope: !48, file: !49, line: 64, baseType: !39, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "parent_slot", scope: !48, file: !49, line: 65, baseType: !45, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "skip_to_level", scope: !48, file: !49, line: 66, baseType: !45, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_node", scope: !48, file: !49, line: 67, baseType: !39, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !48, file: !49, line: 68, baseType: !56, offset: 192)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: -1)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_node", file: !49, line: 52, size: 1216, elements: !61)
!61 = !{!62, !63, !69, !73}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "back_pointer", scope: !60, file: !49, line: 53, baseType: !39, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "parent_slot", scope: !60, file: !49, line: 54, baseType: !64, size: 8, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !65, line: 17, baseType: !66)
!65 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !67, line: 21, baseType: !68)
!67 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !60, file: !49, line: 55, baseType: !70, size: 1024, offset: 128)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1024, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 16)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_branch", scope: !60, file: !49, line: 56, baseType: !46, size: 64, offset: 1152)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_edit", file: !49, line: 74, size: 2624, elements: !76)
!76 = !{!77, !86, !92, !118, !119, !120, !122, !123, !127, !131, !132, !134, !135, !136, !138, !146, !153}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !75, file: !49, line: 75, baseType: !78, size: 128, align: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !44, line: 232, size: 128, align: 64, elements: !79)
!79 = !{!80, !82}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !78, file: !44, line: 233, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !78, file: !44, line: 234, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !81}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !75, file: !49, line: 76, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !41, line: 22, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !88, file: !41, line: 23, baseType: !39, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !88, file: !41, line: 24, baseType: !46, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !75, file: !49, line: 77, baseType: !93, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ops", file: !41, line: 30, size: 320, elements: !96)
!96 = !{!97, !103, !104, !110, !114}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "get_key_chunk", scope: !95, file: !41, line: 32, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!46, !101, !45}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "get_object_key_chunk", scope: !95, file: !41, line: 35, baseType: !98, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "compare_object", scope: !95, file: !41, line: 38, baseType: !105, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !101, !101}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !44, line: 35, baseType: !109)
!109 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "diff_objects", scope: !95, file: !41, line: 43, baseType: !111, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!45, !101, !101}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "free_object", scope: !95, file: !41, line: 46, baseType: !115, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !42}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ops_for_excised_subtree", scope: !75, file: !49, line: 78, baseType: !93, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !75, file: !49, line: 79, baseType: !39, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "leaf_p", scope: !75, file: !49, line: 80, baseType: !121, size: 64, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dead_leaf", scope: !75, file: !49, line: 81, baseType: !39, size: 64, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "new_meta", scope: !75, file: !49, line: 82, baseType: !124, size: 192, offset: 512)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 192, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 3)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "excised_meta", scope: !75, file: !49, line: 83, baseType: !128, size: 64, offset: 704)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 1)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "excised_subtree", scope: !75, file: !49, line: 84, baseType: !39, size: 64, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "set_backpointers", scope: !75, file: !49, line: 85, baseType: !133, size: 1024, offset: 832)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1024, elements: !71)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "set_backpointers_to", scope: !75, file: !49, line: 86, baseType: !39, size: 64, offset: 1856)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "adjust_count_on", scope: !75, file: !49, line: 87, baseType: !59, size: 64, offset: 1920)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "adjust_count_by", scope: !75, file: !49, line: 88, baseType: !137, size: 64, offset: 1984)
!137 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !75, file: !49, line: 92, baseType: !139, size: 256, offset: 2048)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !144)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !49, line: 89, size: 128, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !140, file: !49, line: 90, baseType: !121, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !140, file: !49, line: 91, baseType: !39, size: 64, offset: 64)
!144 = !{!145}
!145 = !DISubrange(count: 2)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "set_parent_slot", scope: !75, file: !49, line: 96, baseType: !147, size: 128, offset: 2304)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 128, elements: !129)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !49, line: 93, size: 128, elements: !149)
!149 = !{!150, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !148, file: !49, line: 94, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !148, file: !49, line: 95, baseType: !64, size: 8, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "segment_cache", scope: !75, file: !49, line: 97, baseType: !154, size: 136, offset: 2432)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 136, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 17)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 61, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !159, line: 72, baseType: !160)
!159 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !159, line: 16, baseType: !46)
!161 = !{!0, !7}
!162 = !{i32 7, !"Dwarf Version", i32 5}
!163 = !{i32 2, !"Debug Info Version", i32 3}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 8, !"cf-protection-branch", i32 1}
!166 = !{i32 4, !"function_return_thunk_extern", i32 1}
!167 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!168 = !{i32 1, !"Code Model", i32 2}
!169 = !{i32 1, !"override-stack-alignment", i32 8}
!170 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!171 = distinct !DISubprogram(name: "assoc_array_iterate", scope: !2, file: !2, line: 133, type: !172, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !179)
!172 = !DISubroutineType(types: !173)
!173 = !{!45, !174, !176, !42}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!45, !101, !42}
!179 = !{!180, !181, !182, !183}
!180 = !DILocalVariable(name: "array", arg: 1, scope: !171, file: !2, line: 133, type: !174)
!181 = !DILocalVariable(name: "iterator", arg: 2, scope: !171, file: !2, line: 134, type: !176)
!182 = !DILocalVariable(name: "iterator_data", arg: 3, scope: !171, file: !2, line: 136, type: !42)
!183 = !DILocalVariable(name: "root", scope: !171, file: !2, line: 138, type: !39)
!184 = !DILocation(line: 133, column: 51, scope: !171)
!185 = !DILocation(line: 134, column: 10, scope: !171)
!186 = !DILocation(line: 136, column: 10, scope: !171)
!187 = !DILocation(line: 138, column: 2, scope: !171)
!188 = !DILocation(line: 138, column: 26, scope: !171)
!189 = !DILocation(line: 138, column: 33, scope: !190)
!190 = distinct !DILexicalBlock(scope: !171, file: !2, line: 138, column: 33)
!191 = !DILocation(line: 138, column: 33, scope: !192)
!192 = distinct !DILexicalBlock(scope: !190, file: !2, line: 138, column: 33)
!193 = !DILocation(line: 140, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !171, file: !2, line: 140, column: 6)
!195 = !DILocation(line: 140, column: 6, scope: !171)
!196 = !DILocation(line: 141, column: 3, scope: !194)
!197 = !DILocation(line: 142, column: 37, scope: !171)
!198 = !DILocation(line: 142, column: 49, scope: !171)
!199 = !DILocation(line: 142, column: 59, scope: !171)
!200 = !DILocation(line: 142, column: 9, scope: !171)
!201 = !DILocation(line: 142, column: 2, scope: !171)
!202 = !DILocation(line: 143, column: 1, scope: !171)
!203 = distinct !DISubprogram(name: "assoc_array_subtree_iterate", scope: !2, file: !2, line: 19, type: !204, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !208)
!204 = !DISubroutineType(types: !205)
!205 = !{!45, !206, !206, !176, !42}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!208 = !{!209, !210, !211, !212, !213, !216, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!209 = !DILocalVariable(name: "root", arg: 1, scope: !203, file: !2, line: 19, type: !206)
!210 = !DILocalVariable(name: "stop", arg: 2, scope: !203, file: !2, line: 20, type: !206)
!211 = !DILocalVariable(name: "iterator", arg: 3, scope: !203, file: !2, line: 21, type: !176)
!212 = !DILocalVariable(name: "iterator_data", arg: 4, scope: !203, file: !2, line: 23, type: !42)
!213 = !DILocalVariable(name: "shortcut", scope: !203, file: !2, line: 25, type: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!216 = !DILocalVariable(name: "node", scope: !203, file: !2, line: 26, type: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!219 = !DILocalVariable(name: "cursor", scope: !203, file: !2, line: 27, type: !206)
!220 = !DILocalVariable(name: "ptr", scope: !203, file: !2, line: 27, type: !206)
!221 = !DILocalVariable(name: "parent", scope: !203, file: !2, line: 27, type: !206)
!222 = !DILocalVariable(name: "has_meta", scope: !203, file: !2, line: 28, type: !46)
!223 = !DILocalVariable(name: "slot", scope: !203, file: !2, line: 29, type: !45)
!224 = !DILocalVariable(name: "ret", scope: !203, file: !2, line: 29, type: !45)
!225 = !DILabel(scope: !203, name: "begin_node", file: !2, line: 33)
!226 = !DILabel(scope: !203, name: "continue_node", file: !2, line: 78)
!227 = !DILabel(scope: !203, name: "finished_node", file: !2, line: 88)
!228 = !DILocation(line: 19, column: 70, scope: !203)
!229 = !DILocation(line: 20, column: 42, scope: !203)
!230 = !DILocation(line: 21, column: 18, scope: !203)
!231 = !DILocation(line: 23, column: 18, scope: !203)
!232 = !DILocation(line: 25, column: 2, scope: !203)
!233 = !DILocation(line: 25, column: 37, scope: !203)
!234 = !DILocation(line: 26, column: 2, scope: !203)
!235 = !DILocation(line: 26, column: 33, scope: !203)
!236 = !DILocation(line: 27, column: 2, scope: !203)
!237 = !DILocation(line: 27, column: 32, scope: !203)
!238 = !DILocation(line: 27, column: 41, scope: !203)
!239 = !DILocation(line: 27, column: 47, scope: !203)
!240 = !DILocation(line: 28, column: 2, scope: !203)
!241 = !DILocation(line: 28, column: 16, scope: !203)
!242 = !DILocation(line: 29, column: 2, scope: !203)
!243 = !DILocation(line: 29, column: 6, scope: !203)
!244 = !DILocation(line: 29, column: 12, scope: !203)
!245 = !DILocation(line: 31, column: 11, scope: !203)
!246 = !DILocation(line: 31, column: 9, scope: !203)
!247 = !DILocation(line: 31, column: 2, scope: !203)
!248 = !DILocation(line: 33, column: 1, scope: !203)
!249 = !DILocation(line: 34, column: 34, scope: !250)
!250 = distinct !DILexicalBlock(scope: !203, file: !2, line: 34, column: 6)
!251 = !DILocation(line: 34, column: 6, scope: !250)
!252 = !DILocation(line: 34, column: 6, scope: !203)
!253 = !DILocation(line: 36, column: 42, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !2, line: 34, column: 43)
!255 = !DILocation(line: 36, column: 14, scope: !254)
!256 = !DILocation(line: 36, column: 12, scope: !254)
!257 = !DILocation(line: 37, column: 12, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !2, line: 37, column: 12)
!259 = !DILocation(line: 37, column: 12, scope: !260)
!260 = distinct !DILexicalBlock(scope: !258, file: !2, line: 37, column: 12)
!261 = !DILocation(line: 37, column: 10, scope: !254)
!262 = !DILocation(line: 38, column: 2, scope: !254)
!263 = !DILocation(line: 40, column: 33, scope: !203)
!264 = !DILocation(line: 40, column: 9, scope: !203)
!265 = !DILocation(line: 40, column: 7, scope: !203)
!266 = !DILocation(line: 41, column: 7, scope: !203)
!267 = !DILocation(line: 50, column: 11, scope: !203)
!268 = !DILocation(line: 51, column: 2, scope: !203)
!269 = !DILocation(line: 51, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !2, line: 51, column: 2)
!271 = distinct !DILexicalBlock(scope: !203, file: !2, line: 51, column: 2)
!272 = !DILocation(line: 51, column: 14, scope: !270)
!273 = !DILocation(line: 51, column: 2, scope: !271)
!274 = !DILocation(line: 52, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !2, line: 52, column: 9)
!276 = distinct !DILexicalBlock(scope: !270, file: !2, line: 51, column: 45)
!277 = !DILocation(line: 52, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !2, line: 52, column: 9)
!279 = !DILocation(line: 52, column: 7, scope: !276)
!280 = !DILocation(line: 53, column: 30, scope: !276)
!281 = !DILocation(line: 53, column: 15, scope: !276)
!282 = !DILocation(line: 53, column: 12, scope: !276)
!283 = !DILocation(line: 54, column: 7, scope: !284)
!284 = distinct !DILexicalBlock(scope: !276, file: !2, line: 54, column: 7)
!285 = !DILocation(line: 54, column: 11, scope: !284)
!286 = !DILocation(line: 54, column: 38, scope: !284)
!287 = !DILocation(line: 54, column: 14, scope: !284)
!288 = !DILocation(line: 54, column: 7, scope: !276)
!289 = !DILocation(line: 59, column: 10, scope: !290)
!290 = distinct !DILexicalBlock(scope: !284, file: !2, line: 54, column: 44)
!291 = !DILocation(line: 59, column: 43, scope: !290)
!292 = !DILocation(line: 59, column: 19, scope: !290)
!293 = !DILocation(line: 60, column: 12, scope: !290)
!294 = !DILocation(line: 59, column: 8, scope: !290)
!295 = !DILocation(line: 61, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !290, file: !2, line: 61, column: 8)
!297 = !DILocation(line: 61, column: 8, scope: !290)
!298 = !DILocation(line: 62, column: 12, scope: !296)
!299 = !DILocation(line: 62, column: 5, scope: !296)
!300 = !DILocation(line: 63, column: 3, scope: !290)
!301 = !DILocation(line: 64, column: 2, scope: !276)
!302 = !DILocation(line: 51, column: 41, scope: !270)
!303 = !DILocation(line: 51, column: 2, scope: !270)
!304 = distinct !{!304, !273, !305, !306, !307}
!305 = !DILocation(line: 64, column: 2, scope: !271)
!306 = !{!"llvm.loop.mustprogress"}
!307 = !{!"llvm.loop.unroll.disable"}
!308 = !DILocation(line: 74, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !203, file: !2, line: 74, column: 6)
!310 = !DILocation(line: 74, column: 17, scope: !309)
!311 = !DILocation(line: 74, column: 6, scope: !203)
!312 = !DILocation(line: 75, column: 3, scope: !309)
!313 = !DILocation(line: 76, column: 7, scope: !203)
!314 = !DILocation(line: 76, column: 2, scope: !203)
!315 = !DILocation(line: 78, column: 1, scope: !203)
!316 = !DILocation(line: 79, column: 33, scope: !203)
!317 = !DILocation(line: 79, column: 9, scope: !203)
!318 = !DILocation(line: 79, column: 7, scope: !203)
!319 = !DILocation(line: 80, column: 2, scope: !203)
!320 = !DILocation(line: 80, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !2, line: 80, column: 2)
!322 = distinct !DILexicalBlock(scope: !203, file: !2, line: 80, column: 2)
!323 = !DILocation(line: 80, column: 14, scope: !321)
!324 = !DILocation(line: 80, column: 2, scope: !322)
!325 = !DILocation(line: 81, column: 9, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 81, column: 9)
!327 = distinct !DILexicalBlock(scope: !321, file: !2, line: 80, column: 45)
!328 = !DILocation(line: 81, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !326, file: !2, line: 81, column: 9)
!330 = !DILocation(line: 81, column: 7, scope: !327)
!331 = !DILocation(line: 82, column: 31, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !2, line: 82, column: 7)
!333 = !DILocation(line: 82, column: 7, scope: !332)
!334 = !DILocation(line: 82, column: 7, scope: !327)
!335 = !DILocation(line: 83, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !2, line: 82, column: 37)
!337 = !DILocation(line: 83, column: 11, scope: !336)
!338 = !DILocation(line: 84, column: 4, scope: !336)
!339 = !DILocation(line: 86, column: 2, scope: !327)
!340 = !DILocation(line: 80, column: 41, scope: !321)
!341 = !DILocation(line: 80, column: 2, scope: !321)
!342 = distinct !{!342, !324, !343, !306, !307}
!343 = !DILocation(line: 86, column: 2, scope: !322)
!344 = !DILocation(line: 88, column: 1, scope: !203)
!345 = !DILocation(line: 90, column: 11, scope: !346)
!346 = distinct !DILexicalBlock(scope: !203, file: !2, line: 90, column: 11)
!347 = !DILocation(line: 90, column: 11, scope: !348)
!348 = distinct !DILexicalBlock(scope: !346, file: !2, line: 90, column: 11)
!349 = !DILocation(line: 90, column: 9, scope: !203)
!350 = !DILocation(line: 91, column: 9, scope: !203)
!351 = !DILocation(line: 91, column: 15, scope: !203)
!352 = !DILocation(line: 91, column: 7, scope: !203)
!353 = !DILocation(line: 92, column: 6, scope: !354)
!354 = distinct !DILexicalBlock(scope: !203, file: !2, line: 92, column: 6)
!355 = !DILocation(line: 92, column: 16, scope: !354)
!356 = !DILocation(line: 92, column: 13, scope: !354)
!357 = !DILocation(line: 92, column: 6, scope: !203)
!358 = !DILocation(line: 93, column: 3, scope: !354)
!359 = !DILocation(line: 95, column: 34, scope: !360)
!360 = distinct !DILexicalBlock(scope: !203, file: !2, line: 95, column: 6)
!361 = !DILocation(line: 95, column: 6, scope: !360)
!362 = !DILocation(line: 95, column: 6, scope: !203)
!363 = !DILocation(line: 96, column: 42, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !2, line: 95, column: 43)
!365 = !DILocation(line: 96, column: 14, scope: !364)
!366 = !DILocation(line: 96, column: 12, scope: !364)
!367 = !DILocation(line: 97, column: 12, scope: !364)
!368 = !DILocation(line: 97, column: 10, scope: !364)
!369 = !DILocation(line: 98, column: 12, scope: !370)
!370 = distinct !DILexicalBlock(scope: !364, file: !2, line: 98, column: 12)
!371 = !DILocation(line: 98, column: 12, scope: !372)
!372 = distinct !DILexicalBlock(scope: !370, file: !2, line: 98, column: 12)
!373 = !DILocation(line: 98, column: 10, scope: !364)
!374 = !DILocation(line: 99, column: 10, scope: !364)
!375 = !DILocation(line: 99, column: 20, scope: !364)
!376 = !DILocation(line: 99, column: 8, scope: !364)
!377 = !DILocation(line: 100, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !364, file: !2, line: 100, column: 7)
!379 = !DILocation(line: 100, column: 17, scope: !378)
!380 = !DILocation(line: 100, column: 14, scope: !378)
!381 = !DILocation(line: 100, column: 7, scope: !364)
!382 = !DILocation(line: 101, column: 4, scope: !378)
!383 = !DILocation(line: 102, column: 2, scope: !364)
!384 = !DILocation(line: 105, column: 11, scope: !203)
!385 = !DILocation(line: 105, column: 9, scope: !203)
!386 = !DILocation(line: 106, column: 6, scope: !203)
!387 = !DILocation(line: 107, column: 2, scope: !203)
!388 = !DILocation(line: 108, column: 1, scope: !203)
!389 = distinct !DISubprogram(name: "assoc_array_find", scope: !2, file: !2, line: 304, type: !390, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{!42, !174, !93, !101}
!392 = !{!393, !394, !395, !396, !413, !414, !415, !416}
!393 = !DILocalVariable(name: "array", arg: 1, scope: !389, file: !2, line: 304, type: !174)
!394 = !DILocalVariable(name: "ops", arg: 2, scope: !389, file: !2, line: 305, type: !93)
!395 = !DILocalVariable(name: "index_key", arg: 3, scope: !389, file: !2, line: 306, type: !101)
!396 = !DILocalVariable(name: "result", scope: !389, file: !2, line: 308, type: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_walk_result", file: !2, line: 151, size: 384, elements: !398)
!398 = !{!399, !405}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "terminal_node", scope: !397, file: !2, line: 156, baseType: !400, size: 128)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !397, file: !2, line: 152, size: 128, elements: !401)
!401 = !{!402, !403, !404}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !400, file: !2, line: 153, baseType: !59, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !400, file: !2, line: 154, baseType: !45, size: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !400, file: !2, line: 155, baseType: !45, size: 32, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "wrong_shortcut", scope: !397, file: !2, line: 163, baseType: !406, size: 256, offset: 128)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !397, file: !2, line: 157, size: 256, elements: !407)
!407 = !{!408, !409, !410, !411, !412}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "shortcut", scope: !406, file: !2, line: 158, baseType: !47, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !406, file: !2, line: 159, baseType: !45, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sc_level", scope: !406, file: !2, line: 160, baseType: !45, size: 32, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sc_segments", scope: !406, file: !2, line: 161, baseType: !46, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "dissimilarity", scope: !406, file: !2, line: 162, baseType: !46, size: 64, offset: 192)
!413 = !DILocalVariable(name: "node", scope: !389, file: !2, line: 309, type: !217)
!414 = !DILocalVariable(name: "ptr", scope: !389, file: !2, line: 310, type: !206)
!415 = !DILocalVariable(name: "leaf", scope: !389, file: !2, line: 311, type: !101)
!416 = !DILocalVariable(name: "slot", scope: !389, file: !2, line: 312, type: !45)
!417 = !DILocation(line: 304, column: 50, scope: !389)
!418 = !DILocation(line: 305, column: 40, scope: !389)
!419 = !DILocation(line: 306, column: 22, scope: !389)
!420 = !DILocation(line: 308, column: 2, scope: !389)
!421 = !DILocation(line: 308, column: 33, scope: !389)
!422 = !DILocation(line: 309, column: 2, scope: !389)
!423 = !DILocation(line: 309, column: 33, scope: !389)
!424 = !DILocation(line: 310, column: 2, scope: !389)
!425 = !DILocation(line: 310, column: 32, scope: !389)
!426 = !DILocation(line: 311, column: 2, scope: !389)
!427 = !DILocation(line: 311, column: 14, scope: !389)
!428 = !DILocation(line: 312, column: 2, scope: !389)
!429 = !DILocation(line: 312, column: 6, scope: !389)
!430 = !DILocation(line: 314, column: 23, scope: !431)
!431 = distinct !DILexicalBlock(scope: !389, file: !2, line: 314, column: 6)
!432 = !DILocation(line: 314, column: 30, scope: !431)
!433 = !DILocation(line: 314, column: 35, scope: !431)
!434 = !DILocation(line: 314, column: 6, scope: !431)
!435 = !DILocation(line: 314, column: 55, scope: !431)
!436 = !DILocation(line: 314, column: 6, scope: !389)
!437 = !DILocation(line: 316, column: 3, scope: !431)
!438 = !DILocation(line: 318, column: 16, scope: !389)
!439 = !DILocation(line: 318, column: 30, scope: !389)
!440 = !DILocation(line: 318, column: 7, scope: !389)
!441 = !DILocation(line: 323, column: 12, scope: !442)
!442 = distinct !DILexicalBlock(scope: !389, file: !2, line: 323, column: 2)
!443 = !DILocation(line: 323, column: 7, scope: !442)
!444 = !DILocation(line: 323, column: 17, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !2, line: 323, column: 2)
!446 = !DILocation(line: 323, column: 22, scope: !445)
!447 = !DILocation(line: 323, column: 2, scope: !442)
!448 = !DILocation(line: 324, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !2, line: 324, column: 9)
!450 = distinct !DILexicalBlock(scope: !445, file: !2, line: 323, column: 53)
!451 = !DILocation(line: 324, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !2, line: 324, column: 9)
!453 = !DILocation(line: 324, column: 7, scope: !450)
!454 = !DILocation(line: 325, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !2, line: 325, column: 7)
!456 = !DILocation(line: 325, column: 11, scope: !455)
!457 = !DILocation(line: 325, column: 38, scope: !455)
!458 = !DILocation(line: 325, column: 14, scope: !455)
!459 = !DILocation(line: 325, column: 7, scope: !450)
!460 = !DILocation(line: 330, column: 35, scope: !461)
!461 = distinct !DILexicalBlock(scope: !455, file: !2, line: 325, column: 44)
!462 = !DILocation(line: 330, column: 11, scope: !461)
!463 = !DILocation(line: 330, column: 9, scope: !461)
!464 = !DILocation(line: 331, column: 8, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !2, line: 331, column: 8)
!466 = !DILocation(line: 331, column: 13, scope: !465)
!467 = !DILocation(line: 331, column: 28, scope: !465)
!468 = !DILocation(line: 331, column: 34, scope: !465)
!469 = !DILocation(line: 331, column: 8, scope: !461)
!470 = !DILocation(line: 332, column: 20, scope: !465)
!471 = !DILocation(line: 332, column: 5, scope: !465)
!472 = !DILocation(line: 333, column: 3, scope: !461)
!473 = !DILocation(line: 334, column: 2, scope: !450)
!474 = !DILocation(line: 323, column: 49, scope: !445)
!475 = !DILocation(line: 323, column: 2, scope: !445)
!476 = distinct !{!476, !447, !477, !306, !307}
!477 = !DILocation(line: 334, column: 2, scope: !442)
!478 = !DILocation(line: 336, column: 2, scope: !389)
!479 = !DILocation(line: 337, column: 1, scope: !389)
!480 = distinct !DISubprogram(name: "assoc_array_walk", scope: !2, file: !2, line: 170, type: !481, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !484)
!481 = !DISubroutineType(types: !482)
!482 = !{!15, !174, !93, !101, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!485 = !DILocalVariable(name: "array", arg: 1, scope: !480, file: !2, line: 170, type: !174)
!486 = !DILocalVariable(name: "ops", arg: 2, scope: !480, file: !2, line: 171, type: !93)
!487 = !DILocalVariable(name: "index_key", arg: 3, scope: !480, file: !2, line: 172, type: !101)
!488 = !DILocalVariable(name: "result", arg: 4, scope: !480, file: !2, line: 173, type: !483)
!489 = !DILocalVariable(name: "shortcut", scope: !480, file: !2, line: 175, type: !47)
!490 = !DILocalVariable(name: "node", scope: !480, file: !2, line: 176, type: !59)
!491 = !DILocalVariable(name: "cursor", scope: !480, file: !2, line: 177, type: !39)
!492 = !DILocalVariable(name: "ptr", scope: !480, file: !2, line: 177, type: !39)
!493 = !DILocalVariable(name: "sc_segments", scope: !480, file: !2, line: 178, type: !46)
!494 = !DILocalVariable(name: "dissimilarity", scope: !480, file: !2, line: 178, type: !46)
!495 = !DILocalVariable(name: "segments", scope: !480, file: !2, line: 179, type: !46)
!496 = !DILocalVariable(name: "level", scope: !480, file: !2, line: 180, type: !45)
!497 = !DILocalVariable(name: "sc_level", scope: !480, file: !2, line: 180, type: !45)
!498 = !DILocalVariable(name: "next_sc_level", scope: !480, file: !2, line: 180, type: !45)
!499 = !DILocalVariable(name: "slot", scope: !480, file: !2, line: 181, type: !45)
!500 = !DILabel(scope: !480, name: "jumped", file: !2, line: 198)
!501 = !DILabel(scope: !480, name: "consider_node", file: !2, line: 205)
!502 = !DILabel(scope: !480, name: "follow_shortcut", file: !2, line: 241)
!503 = !DILocalVariable(name: "shift", scope: !504, file: !2, line: 260, type: !45)
!504 = distinct !DILexicalBlock(scope: !505, file: !2, line: 258, column: 81)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 258, column: 7)
!506 = distinct !DILexicalBlock(scope: !480, file: !2, line: 247, column: 5)
!507 = !DILocation(line: 170, column: 44, scope: !480)
!508 = !DILocation(line: 171, column: 34, scope: !480)
!509 = !DILocation(line: 172, column: 16, scope: !480)
!510 = !DILocation(line: 173, column: 36, scope: !480)
!511 = !DILocation(line: 175, column: 2, scope: !480)
!512 = !DILocation(line: 175, column: 31, scope: !480)
!513 = !DILocation(line: 176, column: 2, scope: !480)
!514 = !DILocation(line: 176, column: 27, scope: !480)
!515 = !DILocation(line: 177, column: 2, scope: !480)
!516 = !DILocation(line: 177, column: 26, scope: !480)
!517 = !DILocation(line: 177, column: 35, scope: !480)
!518 = !DILocation(line: 178, column: 2, scope: !480)
!519 = !DILocation(line: 178, column: 16, scope: !480)
!520 = !DILocation(line: 178, column: 29, scope: !480)
!521 = !DILocation(line: 179, column: 2, scope: !480)
!522 = !DILocation(line: 179, column: 16, scope: !480)
!523 = !DILocation(line: 180, column: 2, scope: !480)
!524 = !DILocation(line: 180, column: 6, scope: !480)
!525 = !DILocation(line: 180, column: 13, scope: !480)
!526 = !DILocation(line: 180, column: 23, scope: !480)
!527 = !DILocation(line: 181, column: 2, scope: !480)
!528 = !DILocation(line: 181, column: 6, scope: !480)
!529 = !DILocation(line: 183, column: 2, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !2, line: 183, column: 2)
!531 = distinct !DILexicalBlock(scope: !480, file: !2, line: 183, column: 2)
!532 = !DILocation(line: 183, column: 2, scope: !531)
!533 = !DILocation(line: 185, column: 11, scope: !534)
!534 = distinct !DILexicalBlock(scope: !480, file: !2, line: 185, column: 11)
!535 = !DILocation(line: 185, column: 11, scope: !536)
!536 = distinct !DILexicalBlock(scope: !534, file: !2, line: 185, column: 11)
!537 = !DILocation(line: 185, column: 9, scope: !480)
!538 = !DILocation(line: 186, column: 7, scope: !539)
!539 = distinct !DILexicalBlock(scope: !480, file: !2, line: 186, column: 6)
!540 = !DILocation(line: 186, column: 6, scope: !480)
!541 = !DILocation(line: 187, column: 3, scope: !539)
!542 = !DILocation(line: 189, column: 8, scope: !480)
!543 = !DILocation(line: 189, column: 2, scope: !480)
!544 = !DILocation(line: 198, column: 1, scope: !480)
!545 = !DILocation(line: 199, column: 13, scope: !480)
!546 = !DILocation(line: 199, column: 18, scope: !480)
!547 = !DILocation(line: 199, column: 32, scope: !480)
!548 = !DILocation(line: 199, column: 43, scope: !480)
!549 = !DILocation(line: 199, column: 11, scope: !480)
!550 = !DILocation(line: 200, column: 2, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !2, line: 200, column: 2)
!552 = distinct !DILexicalBlock(scope: !480, file: !2, line: 200, column: 2)
!553 = !DILocation(line: 200, column: 2, scope: !552)
!554 = !DILocation(line: 202, column: 34, scope: !555)
!555 = distinct !DILexicalBlock(scope: !480, file: !2, line: 202, column: 6)
!556 = !DILocation(line: 202, column: 6, scope: !555)
!557 = !DILocation(line: 202, column: 6, scope: !480)
!558 = !DILocation(line: 203, column: 3, scope: !555)
!559 = !DILocation(line: 202, column: 40, scope: !555)
!560 = !DILocation(line: 205, column: 1, scope: !480)
!561 = !DILocation(line: 206, column: 33, scope: !480)
!562 = !DILocation(line: 206, column: 9, scope: !480)
!563 = !DILocation(line: 206, column: 7, scope: !480)
!564 = !DILocation(line: 207, column: 9, scope: !480)
!565 = !DILocation(line: 207, column: 22, scope: !480)
!566 = !DILocation(line: 207, column: 28, scope: !480)
!567 = !DILocation(line: 207, column: 18, scope: !480)
!568 = !DILocation(line: 207, column: 7, scope: !480)
!569 = !DILocation(line: 208, column: 7, scope: !480)
!570 = !DILocation(line: 209, column: 8, scope: !571)
!571 = distinct !DILexicalBlock(scope: !480, file: !2, line: 209, column: 8)
!572 = !DILocation(line: 209, column: 8, scope: !573)
!573 = distinct !DILexicalBlock(scope: !571, file: !2, line: 209, column: 8)
!574 = !DILocation(line: 209, column: 6, scope: !480)
!575 = !DILocation(line: 211, column: 2, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 211, column: 2)
!577 = distinct !DILexicalBlock(scope: !480, file: !2, line: 211, column: 2)
!578 = !DILocation(line: 211, column: 2, scope: !577)
!579 = !DILocation(line: 214, column: 31, scope: !580)
!580 = distinct !DILexicalBlock(scope: !480, file: !2, line: 214, column: 6)
!581 = !DILocation(line: 214, column: 7, scope: !580)
!582 = !DILocation(line: 214, column: 6, scope: !480)
!583 = !DILocation(line: 218, column: 32, scope: !584)
!584 = distinct !DILexicalBlock(scope: !580, file: !2, line: 214, column: 37)
!585 = !DILocation(line: 218, column: 3, scope: !584)
!586 = !DILocation(line: 218, column: 11, scope: !584)
!587 = !DILocation(line: 218, column: 25, scope: !584)
!588 = !DILocation(line: 218, column: 30, scope: !584)
!589 = !DILocation(line: 219, column: 33, scope: !584)
!590 = !DILocation(line: 219, column: 3, scope: !584)
!591 = !DILocation(line: 219, column: 11, scope: !584)
!592 = !DILocation(line: 219, column: 25, scope: !584)
!593 = !DILocation(line: 219, column: 31, scope: !584)
!594 = !DILocation(line: 220, column: 32, scope: !584)
!595 = !DILocation(line: 220, column: 3, scope: !584)
!596 = !DILocation(line: 220, column: 11, scope: !584)
!597 = !DILocation(line: 220, column: 25, scope: !584)
!598 = !DILocation(line: 220, column: 30, scope: !584)
!599 = !DILocation(line: 221, column: 3, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !2, line: 221, column: 3)
!601 = distinct !DILexicalBlock(scope: !584, file: !2, line: 221, column: 3)
!602 = !DILocation(line: 221, column: 3, scope: !601)
!603 = !DILocation(line: 222, column: 3, scope: !584)
!604 = !DILocation(line: 225, column: 30, scope: !605)
!605 = distinct !DILexicalBlock(scope: !480, file: !2, line: 225, column: 6)
!606 = !DILocation(line: 225, column: 6, scope: !605)
!607 = !DILocation(line: 225, column: 6, scope: !480)
!608 = !DILocation(line: 229, column: 12, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !2, line: 225, column: 36)
!610 = !DILocation(line: 229, column: 10, scope: !609)
!611 = !DILocation(line: 230, column: 9, scope: !609)
!612 = !DILocation(line: 231, column: 8, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !2, line: 231, column: 7)
!614 = !DILocation(line: 231, column: 14, scope: !613)
!615 = !DILocation(line: 231, column: 44, scope: !613)
!616 = !DILocation(line: 231, column: 7, scope: !609)
!617 = !DILocation(line: 232, column: 4, scope: !613)
!618 = !DILocation(line: 233, column: 3, scope: !609)
!619 = !DILocation(line: 240, column: 11, scope: !480)
!620 = !DILocation(line: 240, column: 9, scope: !480)
!621 = !DILocation(line: 240, column: 2, scope: !480)
!622 = !DILocation(line: 241, column: 1, scope: !480)
!623 = !DILocation(line: 242, column: 41, scope: !480)
!624 = !DILocation(line: 242, column: 13, scope: !480)
!625 = !DILocation(line: 242, column: 11, scope: !480)
!626 = !DILocation(line: 243, column: 2, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !2, line: 243, column: 2)
!628 = distinct !DILexicalBlock(scope: !480, file: !2, line: 243, column: 2)
!629 = !DILocation(line: 243, column: 2, scope: !628)
!630 = !DILocation(line: 244, column: 13, scope: !480)
!631 = !DILocation(line: 244, column: 19, scope: !480)
!632 = !DILocation(line: 244, column: 11, scope: !480)
!633 = !DILocation(line: 245, column: 2, scope: !480)
!634 = !DILocation(line: 245, column: 2, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !2, line: 245, column: 2)
!636 = distinct !DILexicalBlock(scope: !480, file: !2, line: 245, column: 2)
!637 = !DILocation(line: 245, column: 2, scope: !636)
!638 = !DILocation(line: 245, column: 2, scope: !639)
!639 = distinct !DILexicalBlock(scope: !635, file: !2, line: 245, column: 2)
!640 = !DILocation(line: 245, column: 2, scope: !641)
!641 = distinct !DILexicalBlock(scope: !639, file: !2, line: 245, column: 2)
!642 = !DILocation(line: 245, column: 2, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !2, line: 245, column: 2)
!644 = !{i64 2151505605, i64 2151505634, i64 2151505680, i64 2151505738, i64 2151505792, i64 2151505846, i64 2151505901, i64 2151505932}
!645 = !DILocation(line: 247, column: 2, scope: !480)
!646 = !DILocation(line: 252, column: 8, scope: !647)
!647 = distinct !DILexicalBlock(scope: !506, file: !2, line: 252, column: 7)
!648 = !DILocation(line: 252, column: 17, scope: !647)
!649 = !DILocation(line: 252, column: 47, scope: !647)
!650 = !DILocation(line: 252, column: 7, scope: !506)
!651 = !DILocation(line: 253, column: 15, scope: !647)
!652 = !DILocation(line: 253, column: 20, scope: !647)
!653 = !DILocation(line: 253, column: 34, scope: !647)
!654 = !DILocation(line: 253, column: 45, scope: !647)
!655 = !DILocation(line: 253, column: 13, scope: !647)
!656 = !DILocation(line: 253, column: 4, scope: !647)
!657 = !DILocation(line: 255, column: 17, scope: !506)
!658 = !DILocation(line: 255, column: 27, scope: !506)
!659 = !DILocation(line: 255, column: 37, scope: !506)
!660 = !DILocation(line: 255, column: 46, scope: !506)
!661 = !DILocation(line: 255, column: 15, scope: !506)
!662 = !DILocation(line: 256, column: 19, scope: !506)
!663 = !DILocation(line: 256, column: 30, scope: !506)
!664 = !DILocation(line: 256, column: 28, scope: !506)
!665 = !DILocation(line: 256, column: 17, scope: !506)
!666 = !DILocation(line: 258, column: 7, scope: !505)
!667 = !DILocation(line: 258, column: 56, scope: !505)
!668 = !DILocation(line: 258, column: 66, scope: !505)
!669 = !DILocation(line: 258, column: 54, scope: !505)
!670 = !DILocation(line: 258, column: 7, scope: !506)
!671 = !DILocation(line: 260, column: 4, scope: !504)
!672 = !DILocation(line: 260, column: 8, scope: !504)
!673 = !DILocation(line: 260, column: 16, scope: !504)
!674 = !DILocation(line: 260, column: 26, scope: !504)
!675 = !DILocation(line: 260, column: 40, scope: !504)
!676 = !DILocation(line: 261, column: 36, scope: !504)
!677 = !DILocation(line: 261, column: 33, scope: !504)
!678 = !DILocation(line: 261, column: 21, scope: !504)
!679 = !DILocation(line: 261, column: 18, scope: !504)
!680 = !DILocation(line: 262, column: 20, scope: !504)
!681 = !DILocation(line: 262, column: 30, scope: !504)
!682 = !DILocation(line: 262, column: 18, scope: !504)
!683 = !DILocation(line: 263, column: 3, scope: !505)
!684 = !DILocation(line: 263, column: 3, scope: !504)
!685 = !DILocation(line: 264, column: 20, scope: !686)
!686 = distinct !DILexicalBlock(scope: !505, file: !2, line: 263, column: 10)
!687 = !DILocation(line: 264, column: 29, scope: !686)
!688 = !DILocation(line: 264, column: 18, scope: !686)
!689 = !DILocation(line: 265, column: 20, scope: !686)
!690 = !DILocation(line: 265, column: 18, scope: !686)
!691 = !DILocation(line: 268, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !506, file: !2, line: 268, column: 7)
!693 = !DILocation(line: 268, column: 21, scope: !692)
!694 = !DILocation(line: 268, column: 7, scope: !506)
!695 = !DILocation(line: 270, column: 38, scope: !696)
!696 = distinct !DILexicalBlock(scope: !692, file: !2, line: 268, column: 27)
!697 = !DILocation(line: 270, column: 4, scope: !696)
!698 = !DILocation(line: 270, column: 12, scope: !696)
!699 = !DILocation(line: 270, column: 27, scope: !696)
!700 = !DILocation(line: 270, column: 36, scope: !696)
!701 = !DILocation(line: 271, column: 35, scope: !696)
!702 = !DILocation(line: 271, column: 4, scope: !696)
!703 = !DILocation(line: 271, column: 12, scope: !696)
!704 = !DILocation(line: 271, column: 27, scope: !696)
!705 = !DILocation(line: 271, column: 33, scope: !696)
!706 = !DILocation(line: 272, column: 38, scope: !696)
!707 = !DILocation(line: 272, column: 4, scope: !696)
!708 = !DILocation(line: 272, column: 12, scope: !696)
!709 = !DILocation(line: 272, column: 27, scope: !696)
!710 = !DILocation(line: 272, column: 36, scope: !696)
!711 = !DILocation(line: 273, column: 41, scope: !696)
!712 = !DILocation(line: 273, column: 4, scope: !696)
!713 = !DILocation(line: 273, column: 12, scope: !696)
!714 = !DILocation(line: 273, column: 27, scope: !696)
!715 = !DILocation(line: 273, column: 39, scope: !696)
!716 = !DILocation(line: 274, column: 43, scope: !696)
!717 = !DILocation(line: 274, column: 4, scope: !696)
!718 = !DILocation(line: 274, column: 12, scope: !696)
!719 = !DILocation(line: 274, column: 27, scope: !696)
!720 = !DILocation(line: 274, column: 41, scope: !696)
!721 = !DILocation(line: 275, column: 4, scope: !696)
!722 = !DILocation(line: 278, column: 14, scope: !506)
!723 = !DILocation(line: 278, column: 12, scope: !506)
!724 = !DILocation(line: 279, column: 2, scope: !506)
!725 = !DILocation(line: 279, column: 11, scope: !480)
!726 = !DILocation(line: 279, column: 22, scope: !480)
!727 = !DILocation(line: 279, column: 32, scope: !480)
!728 = !DILocation(line: 279, column: 20, scope: !480)
!729 = distinct !{!729, !645, !730, !306, !307}
!730 = !DILocation(line: 279, column: 45, scope: !480)
!731 = !DILocation(line: 282, column: 11, scope: !732)
!732 = distinct !DILexicalBlock(scope: !480, file: !2, line: 282, column: 11)
!733 = !DILocation(line: 282, column: 11, scope: !734)
!734 = distinct !DILexicalBlock(scope: !732, file: !2, line: 282, column: 11)
!735 = !DILocation(line: 282, column: 9, scope: !480)
!736 = !DILocation(line: 283, column: 8, scope: !737)
!737 = distinct !DILexicalBlock(scope: !480, file: !2, line: 283, column: 6)
!738 = !DILocation(line: 283, column: 16, scope: !737)
!739 = !DILocation(line: 283, column: 14, scope: !737)
!740 = !DILocation(line: 283, column: 26, scope: !737)
!741 = !DILocation(line: 283, column: 57, scope: !737)
!742 = !DILocation(line: 283, column: 6, scope: !480)
!743 = !DILocation(line: 284, column: 11, scope: !744)
!744 = distinct !DILexicalBlock(scope: !737, file: !2, line: 283, column: 63)
!745 = !DILocation(line: 284, column: 9, scope: !744)
!746 = !DILocation(line: 285, column: 3, scope: !744)
!747 = !DILocation(line: 287, column: 11, scope: !748)
!748 = distinct !DILexicalBlock(scope: !737, file: !2, line: 286, column: 9)
!749 = !DILocation(line: 287, column: 9, scope: !748)
!750 = !DILocation(line: 288, column: 3, scope: !748)
!751 = !DILocation(line: 290, column: 1, scope: !480)
!752 = distinct !DISubprogram(name: "assoc_array_ptr_is_leaf", scope: !49, file: !49, line: 119, type: !753, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !755)
!753 = !DISubroutineType(types: !754)
!754 = !{!108, !206}
!755 = !{!756}
!756 = !DILocalVariable(name: "x", arg: 1, scope: !752, file: !49, line: 119, type: !206)
!757 = !DILocation(line: 119, column: 74, scope: !752)
!758 = !DILocation(line: 121, column: 34, scope: !752)
!759 = !DILocation(line: 121, column: 10, scope: !752)
!760 = !DILocation(line: 121, column: 9, scope: !752)
!761 = !DILocation(line: 121, column: 2, scope: !752)
!762 = distinct !DISubprogram(name: "assoc_array_ptr_to_leaf", scope: !49, file: !49, line: 132, type: !763, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !765)
!763 = !DISubroutineType(types: !764)
!764 = !{!42, !206}
!765 = !{!766}
!766 = !DILocalVariable(name: "x", arg: 1, scope: !762, file: !49, line: 132, type: !206)
!767 = !DILocation(line: 132, column: 75, scope: !762)
!768 = !DILocation(line: 134, column: 33, scope: !762)
!769 = !DILocation(line: 134, column: 18, scope: !762)
!770 = !DILocation(line: 134, column: 35, scope: !762)
!771 = !DILocation(line: 134, column: 9, scope: !762)
!772 = !DILocation(line: 134, column: 2, scope: !762)
!773 = distinct !DISubprogram(name: "assoc_array_destroy", scope: !2, file: !2, line: 441, type: !774, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !87, !93}
!776 = !{!777, !778}
!777 = !DILocalVariable(name: "array", arg: 1, scope: !773, file: !2, line: 441, type: !87)
!778 = !DILocalVariable(name: "ops", arg: 2, scope: !773, file: !2, line: 442, type: !93)
!779 = !DILocation(line: 441, column: 46, scope: !773)
!780 = !DILocation(line: 442, column: 35, scope: !773)
!781 = !DILocation(line: 444, column: 30, scope: !773)
!782 = !DILocation(line: 444, column: 37, scope: !773)
!783 = !DILocation(line: 444, column: 43, scope: !773)
!784 = !DILocation(line: 444, column: 2, scope: !773)
!785 = !DILocation(line: 445, column: 2, scope: !773)
!786 = !DILocation(line: 445, column: 9, scope: !773)
!787 = !DILocation(line: 445, column: 14, scope: !773)
!788 = !DILocation(line: 446, column: 1, scope: !773)
!789 = distinct !DISubprogram(name: "assoc_array_destroy_subtree", scope: !2, file: !2, line: 343, type: !790, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !39, !93}
!792 = !{!793, !794, !795, !796, !797, !798, !799, !800, !801, !802}
!793 = !DILocalVariable(name: "root", arg: 1, scope: !789, file: !2, line: 343, type: !39)
!794 = !DILocalVariable(name: "ops", arg: 2, scope: !789, file: !2, line: 344, type: !93)
!795 = !DILocalVariable(name: "shortcut", scope: !789, file: !2, line: 346, type: !47)
!796 = !DILocalVariable(name: "node", scope: !789, file: !2, line: 347, type: !59)
!797 = !DILocalVariable(name: "cursor", scope: !789, file: !2, line: 348, type: !39)
!798 = !DILocalVariable(name: "parent", scope: !789, file: !2, line: 348, type: !39)
!799 = !DILocalVariable(name: "slot", scope: !789, file: !2, line: 349, type: !45)
!800 = !DILabel(scope: !789, name: "move_to_meta", file: !2, line: 359)
!801 = !DILabel(scope: !789, name: "continue_node", file: !2, line: 379)
!802 = !DILocalVariable(name: "ptr", scope: !803, file: !2, line: 382, type: !39)
!803 = distinct !DILexicalBlock(scope: !804, file: !2, line: 381, column: 45)
!804 = distinct !DILexicalBlock(scope: !805, file: !2, line: 381, column: 2)
!805 = distinct !DILexicalBlock(scope: !789, file: !2, line: 381, column: 2)
!806 = !DILocation(line: 343, column: 65, scope: !789)
!807 = !DILocation(line: 344, column: 36, scope: !789)
!808 = !DILocation(line: 346, column: 2, scope: !789)
!809 = !DILocation(line: 346, column: 31, scope: !789)
!810 = !DILocation(line: 347, column: 2, scope: !789)
!811 = !DILocation(line: 347, column: 27, scope: !789)
!812 = !DILocation(line: 348, column: 2, scope: !789)
!813 = !DILocation(line: 348, column: 26, scope: !789)
!814 = !DILocation(line: 348, column: 35, scope: !789)
!815 = !DILocation(line: 349, column: 2, scope: !789)
!816 = !DILocation(line: 349, column: 6, scope: !789)
!817 = !DILocation(line: 351, column: 2, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !2, line: 351, column: 2)
!819 = distinct !DILexicalBlock(scope: !789, file: !2, line: 351, column: 2)
!820 = !DILocation(line: 351, column: 2, scope: !819)
!821 = !DILocation(line: 353, column: 11, scope: !789)
!822 = !DILocation(line: 353, column: 9, scope: !789)
!823 = !DILocation(line: 354, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !789, file: !2, line: 354, column: 6)
!825 = !DILocation(line: 354, column: 6, scope: !789)
!826 = !DILocation(line: 355, column: 3, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !2, line: 355, column: 3)
!828 = distinct !DILexicalBlock(scope: !829, file: !2, line: 355, column: 3)
!829 = distinct !DILexicalBlock(scope: !824, file: !2, line: 354, column: 15)
!830 = !DILocation(line: 355, column: 3, scope: !828)
!831 = !DILocation(line: 356, column: 3, scope: !829)
!832 = !DILocation(line: 359, column: 1, scope: !789)
!833 = !DILocation(line: 360, column: 34, scope: !834)
!834 = distinct !DILexicalBlock(scope: !789, file: !2, line: 360, column: 6)
!835 = !DILocation(line: 360, column: 6, scope: !834)
!836 = !DILocation(line: 360, column: 6, scope: !789)
!837 = !DILocation(line: 362, column: 3, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !2, line: 362, column: 3)
!839 = distinct !DILexicalBlock(scope: !840, file: !2, line: 362, column: 3)
!840 = distinct !DILexicalBlock(scope: !834, file: !2, line: 360, column: 43)
!841 = !DILocation(line: 362, column: 3, scope: !839)
!842 = !DILocation(line: 363, column: 3, scope: !840)
!843 = !DILocation(line: 363, column: 3, scope: !844)
!844 = distinct !DILexicalBlock(scope: !845, file: !2, line: 363, column: 3)
!845 = distinct !DILexicalBlock(scope: !840, file: !2, line: 363, column: 3)
!846 = !DILocation(line: 363, column: 3, scope: !845)
!847 = !DILocation(line: 363, column: 3, scope: !848)
!848 = distinct !DILexicalBlock(scope: !844, file: !2, line: 363, column: 3)
!849 = !DILocation(line: 363, column: 3, scope: !850)
!850 = distinct !DILexicalBlock(scope: !848, file: !2, line: 363, column: 3)
!851 = !DILocation(line: 363, column: 3, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !2, line: 363, column: 3)
!853 = !{i64 2151513867, i64 2151513896, i64 2151513942, i64 2151514000, i64 2151514054, i64 2151514108, i64 2151514163, i64 2151514194}
!854 = !DILocation(line: 364, column: 42, scope: !840)
!855 = !DILocation(line: 364, column: 14, scope: !840)
!856 = !DILocation(line: 364, column: 12, scope: !840)
!857 = !DILocation(line: 365, column: 3, scope: !840)
!858 = !DILocation(line: 365, column: 3, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !2, line: 365, column: 3)
!860 = distinct !DILexicalBlock(scope: !840, file: !2, line: 365, column: 3)
!861 = !DILocation(line: 365, column: 3, scope: !860)
!862 = !DILocation(line: 365, column: 3, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !2, line: 365, column: 3)
!864 = !DILocation(line: 365, column: 3, scope: !865)
!865 = distinct !DILexicalBlock(scope: !863, file: !2, line: 365, column: 3)
!866 = !DILocation(line: 365, column: 3, scope: !867)
!867 = distinct !DILexicalBlock(scope: !863, file: !2, line: 365, column: 3)
!868 = !{i64 2151514887, i64 2151514916, i64 2151514962, i64 2151515020, i64 2151515074, i64 2151515128, i64 2151515183, i64 2151515214}
!869 = !DILocation(line: 366, column: 3, scope: !840)
!870 = !DILocation(line: 366, column: 3, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !2, line: 366, column: 3)
!872 = distinct !DILexicalBlock(scope: !840, file: !2, line: 366, column: 3)
!873 = !DILocation(line: 0, scope: !871)
!874 = !DILocation(line: 366, column: 3, scope: !872)
!875 = !DILocation(line: 366, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !2, line: 366, column: 3)
!877 = !DILocation(line: 366, column: 3, scope: !878)
!878 = distinct !DILexicalBlock(scope: !876, file: !2, line: 366, column: 3)
!879 = !DILocation(line: 366, column: 3, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !2, line: 366, column: 3)
!881 = !{i64 2151515929, i64 2151515958, i64 2151516004, i64 2151516062, i64 2151516116, i64 2151516170, i64 2151516225, i64 2151516256}
!882 = !DILocation(line: 367, column: 12, scope: !840)
!883 = !DILocation(line: 367, column: 10, scope: !840)
!884 = !DILocation(line: 368, column: 12, scope: !840)
!885 = !DILocation(line: 368, column: 22, scope: !840)
!886 = !DILocation(line: 368, column: 10, scope: !840)
!887 = !DILocation(line: 369, column: 8, scope: !840)
!888 = !DILocation(line: 370, column: 3, scope: !840)
!889 = !DILocation(line: 370, column: 3, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !2, line: 370, column: 3)
!891 = distinct !DILexicalBlock(scope: !840, file: !2, line: 370, column: 3)
!892 = !DILocation(line: 370, column: 3, scope: !891)
!893 = !DILocation(line: 370, column: 3, scope: !894)
!894 = distinct !DILexicalBlock(scope: !890, file: !2, line: 370, column: 3)
!895 = !DILocation(line: 370, column: 3, scope: !896)
!896 = distinct !DILexicalBlock(scope: !894, file: !2, line: 370, column: 3)
!897 = !DILocation(line: 370, column: 3, scope: !898)
!898 = distinct !DILexicalBlock(scope: !894, file: !2, line: 370, column: 3)
!899 = !{i64 2151516949, i64 2151516978, i64 2151517024, i64 2151517082, i64 2151517136, i64 2151517190, i64 2151517245, i64 2151517276}
!900 = !DILocation(line: 371, column: 2, scope: !840)
!901 = !DILocation(line: 373, column: 2, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !2, line: 373, column: 2)
!903 = distinct !DILexicalBlock(scope: !789, file: !2, line: 373, column: 2)
!904 = !DILocation(line: 373, column: 2, scope: !903)
!905 = !DILocation(line: 374, column: 33, scope: !789)
!906 = !DILocation(line: 374, column: 9, scope: !789)
!907 = !DILocation(line: 374, column: 7, scope: !789)
!908 = !DILocation(line: 375, column: 2, scope: !789)
!909 = !DILocation(line: 375, column: 2, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !2, line: 375, column: 2)
!911 = distinct !DILexicalBlock(scope: !789, file: !2, line: 375, column: 2)
!912 = !DILocation(line: 375, column: 2, scope: !911)
!913 = !DILocation(line: 375, column: 2, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !2, line: 375, column: 2)
!915 = !DILocation(line: 375, column: 2, scope: !916)
!916 = distinct !DILexicalBlock(scope: !914, file: !2, line: 375, column: 2)
!917 = !DILocation(line: 375, column: 2, scope: !918)
!918 = distinct !DILexicalBlock(scope: !914, file: !2, line: 375, column: 2)
!919 = !{i64 2151518173, i64 2151518202, i64 2151518248, i64 2151518306, i64 2151518360, i64 2151518414, i64 2151518469, i64 2151518500}
!920 = !DILocation(line: 376, column: 2, scope: !789)
!921 = !DILocation(line: 376, column: 2, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !2, line: 376, column: 2)
!923 = distinct !DILexicalBlock(scope: !789, file: !2, line: 376, column: 2)
!924 = !DILocation(line: 0, scope: !922)
!925 = !DILocation(line: 376, column: 2, scope: !923)
!926 = !DILocation(line: 376, column: 2, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !2, line: 376, column: 2)
!928 = !DILocation(line: 376, column: 2, scope: !929)
!929 = distinct !DILexicalBlock(scope: !927, file: !2, line: 376, column: 2)
!930 = !DILocation(line: 376, column: 2, scope: !931)
!931 = distinct !DILexicalBlock(scope: !927, file: !2, line: 376, column: 2)
!932 = !{i64 2151519207, i64 2151519236, i64 2151519282, i64 2151519340, i64 2151519394, i64 2151519448, i64 2151519503, i64 2151519534}
!933 = !DILocation(line: 377, column: 7, scope: !789)
!934 = !DILocation(line: 377, column: 2, scope: !789)
!935 = !DILocation(line: 379, column: 1, scope: !789)
!936 = !DILocation(line: 380, column: 2, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !2, line: 380, column: 2)
!938 = distinct !DILexicalBlock(scope: !789, file: !2, line: 380, column: 2)
!939 = !DILocation(line: 380, column: 2, scope: !938)
!940 = !DILocation(line: 381, column: 2, scope: !789)
!941 = !DILocation(line: 381, column: 9, scope: !804)
!942 = !DILocation(line: 381, column: 14, scope: !804)
!943 = !DILocation(line: 381, column: 2, scope: !805)
!944 = !DILocation(line: 382, column: 3, scope: !803)
!945 = !DILocation(line: 382, column: 27, scope: !803)
!946 = !DILocation(line: 382, column: 33, scope: !803)
!947 = !DILocation(line: 382, column: 39, scope: !803)
!948 = !DILocation(line: 382, column: 45, scope: !803)
!949 = !DILocation(line: 383, column: 8, scope: !950)
!950 = distinct !DILexicalBlock(scope: !803, file: !2, line: 383, column: 7)
!951 = !DILocation(line: 383, column: 7, scope: !803)
!952 = !DILocation(line: 384, column: 4, scope: !950)
!953 = !DILocation(line: 385, column: 31, scope: !954)
!954 = distinct !DILexicalBlock(scope: !803, file: !2, line: 385, column: 7)
!955 = !DILocation(line: 385, column: 7, scope: !954)
!956 = !DILocation(line: 385, column: 7, scope: !803)
!957 = !DILocation(line: 386, column: 13, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !2, line: 385, column: 37)
!959 = !DILocation(line: 386, column: 11, scope: !958)
!960 = !DILocation(line: 387, column: 13, scope: !958)
!961 = !DILocation(line: 387, column: 11, scope: !958)
!962 = !DILocation(line: 388, column: 4, scope: !958)
!963 = !DILocation(line: 391, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !803, file: !2, line: 391, column: 7)
!965 = !DILocation(line: 391, column: 7, scope: !803)
!966 = !DILocation(line: 392, column: 4, scope: !967)
!967 = distinct !DILexicalBlock(scope: !968, file: !2, line: 392, column: 4)
!968 = distinct !DILexicalBlock(scope: !969, file: !2, line: 392, column: 4)
!969 = distinct !DILexicalBlock(scope: !964, file: !2, line: 391, column: 12)
!970 = !DILocation(line: 392, column: 4, scope: !968)
!971 = !DILocation(line: 393, column: 4, scope: !969)
!972 = !DILocation(line: 393, column: 9, scope: !969)
!973 = !DILocation(line: 393, column: 45, scope: !969)
!974 = !DILocation(line: 393, column: 21, scope: !969)
!975 = !DILocation(line: 394, column: 3, scope: !969)
!976 = !DILocation(line: 395, column: 2, scope: !804)
!977 = !DILocation(line: 395, column: 2, scope: !803)
!978 = !DILocation(line: 381, column: 41, scope: !804)
!979 = !DILocation(line: 381, column: 2, scope: !804)
!980 = distinct !{!980, !943, !981, !306, !307}
!981 = !DILocation(line: 395, column: 2, scope: !805)
!982 = !DILocation(line: 397, column: 11, scope: !789)
!983 = !DILocation(line: 397, column: 17, scope: !789)
!984 = !DILocation(line: 397, column: 9, scope: !789)
!985 = !DILocation(line: 398, column: 9, scope: !789)
!986 = !DILocation(line: 398, column: 15, scope: !789)
!987 = !DILocation(line: 398, column: 7, scope: !789)
!988 = !DILocation(line: 399, column: 2, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !2, line: 399, column: 2)
!990 = distinct !DILexicalBlock(scope: !789, file: !2, line: 399, column: 2)
!991 = !DILocation(line: 399, column: 2, scope: !990)
!992 = !DILocation(line: 400, column: 8, scope: !789)
!993 = !DILocation(line: 400, column: 2, scope: !789)
!994 = !DILocation(line: 401, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !789, file: !2, line: 401, column: 6)
!996 = !DILocation(line: 401, column: 6, scope: !789)
!997 = !DILocation(line: 402, column: 3, scope: !995)
!998 = !DILocation(line: 406, column: 34, scope: !999)
!999 = distinct !DILexicalBlock(scope: !789, file: !2, line: 406, column: 6)
!1000 = !DILocation(line: 406, column: 6, scope: !999)
!1001 = !DILocation(line: 406, column: 6, scope: !789)
!1002 = !DILocation(line: 407, column: 42, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !2, line: 406, column: 43)
!1004 = !DILocation(line: 407, column: 14, scope: !1003)
!1005 = !DILocation(line: 407, column: 12, scope: !1003)
!1006 = !DILocation(line: 408, column: 3, scope: !1003)
!1007 = !DILocation(line: 408, column: 3, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 408, column: 3)
!1009 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 408, column: 3)
!1010 = !DILocation(line: 408, column: 3, scope: !1009)
!1011 = !DILocation(line: 408, column: 3, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 408, column: 3)
!1013 = !DILocation(line: 408, column: 3, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 408, column: 3)
!1015 = !DILocation(line: 408, column: 3, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 408, column: 3)
!1017 = !{i64 2151520929, i64 2151520958, i64 2151521004, i64 2151521062, i64 2151521116, i64 2151521170, i64 2151521225, i64 2151521256}
!1018 = !DILocation(line: 409, column: 12, scope: !1003)
!1019 = !DILocation(line: 409, column: 10, scope: !1003)
!1020 = !DILocation(line: 410, column: 12, scope: !1003)
!1021 = !DILocation(line: 410, column: 22, scope: !1003)
!1022 = !DILocation(line: 410, column: 10, scope: !1003)
!1023 = !DILocation(line: 411, column: 10, scope: !1003)
!1024 = !DILocation(line: 411, column: 20, scope: !1003)
!1025 = !DILocation(line: 411, column: 8, scope: !1003)
!1026 = !DILocation(line: 412, column: 3, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 412, column: 3)
!1028 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 412, column: 3)
!1029 = !DILocation(line: 412, column: 3, scope: !1028)
!1030 = !DILocation(line: 413, column: 9, scope: !1003)
!1031 = !DILocation(line: 413, column: 3, scope: !1003)
!1032 = !DILocation(line: 414, column: 8, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 414, column: 7)
!1034 = !DILocation(line: 414, column: 7, scope: !1003)
!1035 = !DILocation(line: 415, column: 4, scope: !1033)
!1036 = !DILocation(line: 417, column: 3, scope: !1003)
!1037 = !DILocation(line: 417, column: 3, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 417, column: 3)
!1039 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 417, column: 3)
!1040 = !DILocation(line: 417, column: 3, scope: !1039)
!1041 = !DILocation(line: 417, column: 3, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 417, column: 3)
!1043 = !DILocation(line: 417, column: 3, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 417, column: 3)
!1045 = !DILocation(line: 417, column: 3, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 417, column: 3)
!1047 = !{i64 2151522163, i64 2151522192, i64 2151522238, i64 2151522296, i64 2151522350, i64 2151522404, i64 2151522459, i64 2151522490}
!1048 = !DILocation(line: 418, column: 2, scope: !1003)
!1049 = !DILocation(line: 421, column: 2, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 421, column: 2)
!1051 = distinct !DILexicalBlock(scope: !789, file: !2, line: 421, column: 2)
!1052 = !DILocation(line: 421, column: 2, scope: !1051)
!1053 = !DILocation(line: 422, column: 11, scope: !789)
!1054 = !DILocation(line: 422, column: 9, scope: !789)
!1055 = !DILocation(line: 423, column: 33, scope: !789)
!1056 = !DILocation(line: 423, column: 9, scope: !789)
!1057 = !DILocation(line: 423, column: 7, scope: !789)
!1058 = !DILocation(line: 424, column: 6, scope: !789)
!1059 = !DILocation(line: 425, column: 2, scope: !789)
!1060 = !DILocation(line: 426, column: 1, scope: !789)
!1061 = distinct !DISubprogram(name: "assoc_array_insert", scope: !2, file: !2, line: 963, type: !1062, scopeLine: 967, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1064)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!74, !87, !93, !101, !42}
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071}
!1065 = !DILocalVariable(name: "array", arg: 1, scope: !1061, file: !2, line: 963, type: !87)
!1066 = !DILocalVariable(name: "ops", arg: 2, scope: !1061, file: !2, line: 964, type: !93)
!1067 = !DILocalVariable(name: "index_key", arg: 3, scope: !1061, file: !2, line: 965, type: !101)
!1068 = !DILocalVariable(name: "object", arg: 4, scope: !1061, file: !2, line: 966, type: !42)
!1069 = !DILocalVariable(name: "result", scope: !1061, file: !2, line: 968, type: !397)
!1070 = !DILocalVariable(name: "edit", scope: !1061, file: !2, line: 969, type: !74)
!1071 = !DILabel(scope: !1061, name: "enomem", file: !2, line: 1014)
!1072 = !DILocation(line: 963, column: 65, scope: !1061)
!1073 = !DILocation(line: 964, column: 40, scope: !1061)
!1074 = !DILocation(line: 965, column: 22, scope: !1061)
!1075 = !DILocation(line: 966, column: 16, scope: !1061)
!1076 = !DILocation(line: 968, column: 2, scope: !1061)
!1077 = !DILocation(line: 968, column: 33, scope: !1061)
!1078 = !DILocation(line: 969, column: 2, scope: !1061)
!1079 = !DILocation(line: 969, column: 27, scope: !1061)
!1080 = !DILocation(line: 971, column: 2, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 971, column: 2)
!1082 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 971, column: 2)
!1083 = !DILocation(line: 971, column: 2, scope: !1082)
!1084 = !DILocation(line: 978, column: 2, scope: !1061)
!1085 = !DILocation(line: 978, column: 2, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 978, column: 2)
!1087 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 978, column: 2)
!1088 = !DILocation(line: 978, column: 2, scope: !1087)
!1089 = !DILocation(line: 978, column: 2, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 978, column: 2)
!1091 = !DILocation(line: 978, column: 2, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 978, column: 2)
!1093 = !DILocation(line: 978, column: 2, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 978, column: 2)
!1095 = !{i64 2151555561, i64 2151555590, i64 2151555636, i64 2151555694, i64 2151555748, i64 2151555802, i64 2151555857, i64 2151555888}
!1096 = !DILocation(line: 980, column: 9, scope: !1061)
!1097 = !DILocation(line: 980, column: 7, scope: !1061)
!1098 = !DILocation(line: 981, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 981, column: 6)
!1100 = !DILocation(line: 981, column: 6, scope: !1061)
!1101 = !DILocation(line: 982, column: 10, scope: !1099)
!1102 = !DILocation(line: 982, column: 3, scope: !1099)
!1103 = !DILocation(line: 983, column: 16, scope: !1061)
!1104 = !DILocation(line: 983, column: 2, scope: !1061)
!1105 = !DILocation(line: 983, column: 8, scope: !1061)
!1106 = !DILocation(line: 983, column: 14, scope: !1061)
!1107 = !DILocation(line: 984, column: 14, scope: !1061)
!1108 = !DILocation(line: 984, column: 2, scope: !1061)
!1109 = !DILocation(line: 984, column: 8, scope: !1061)
!1110 = !DILocation(line: 984, column: 12, scope: !1061)
!1111 = !DILocation(line: 985, column: 39, scope: !1061)
!1112 = !DILocation(line: 985, column: 15, scope: !1061)
!1113 = !DILocation(line: 985, column: 2, scope: !1061)
!1114 = !DILocation(line: 985, column: 8, scope: !1061)
!1115 = !DILocation(line: 985, column: 13, scope: !1061)
!1116 = !DILocation(line: 986, column: 2, scope: !1061)
!1117 = !DILocation(line: 986, column: 8, scope: !1061)
!1118 = !DILocation(line: 986, column: 24, scope: !1061)
!1119 = !DILocation(line: 988, column: 27, scope: !1061)
!1120 = !DILocation(line: 988, column: 34, scope: !1061)
!1121 = !DILocation(line: 988, column: 39, scope: !1061)
!1122 = !DILocation(line: 988, column: 10, scope: !1061)
!1123 = !DILocation(line: 988, column: 2, scope: !1061)
!1124 = !DILocation(line: 991, column: 41, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 991, column: 7)
!1126 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 988, column: 60)
!1127 = !DILocation(line: 991, column: 8, scope: !1125)
!1128 = !DILocation(line: 991, column: 7, scope: !1126)
!1129 = !DILocation(line: 992, column: 4, scope: !1125)
!1130 = !DILocation(line: 993, column: 10, scope: !1126)
!1131 = !DILocation(line: 993, column: 3, scope: !1126)
!1132 = !DILocation(line: 1000, column: 46, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 1000, column: 7)
!1134 = !DILocation(line: 1000, column: 52, scope: !1133)
!1135 = !DILocation(line: 1000, column: 57, scope: !1133)
!1136 = !DILocation(line: 1000, column: 8, scope: !1133)
!1137 = !DILocation(line: 1000, column: 7, scope: !1126)
!1138 = !DILocation(line: 1002, column: 4, scope: !1133)
!1139 = !DILocation(line: 1003, column: 10, scope: !1126)
!1140 = !DILocation(line: 1003, column: 3, scope: !1126)
!1141 = !DILocation(line: 1009, column: 40, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 1009, column: 7)
!1143 = !DILocation(line: 1009, column: 46, scope: !1142)
!1144 = !DILocation(line: 1009, column: 8, scope: !1142)
!1145 = !DILocation(line: 1009, column: 7, scope: !1126)
!1146 = !DILocation(line: 1010, column: 4, scope: !1142)
!1147 = !DILocation(line: 1011, column: 10, scope: !1126)
!1148 = !DILocation(line: 1011, column: 3, scope: !1126)
!1149 = !DILocation(line: 1012, column: 2, scope: !1126)
!1150 = !DILocation(line: 1014, column: 1, scope: !1061)
!1151 = !DILocation(line: 1016, column: 2, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 1016, column: 2)
!1153 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 1016, column: 2)
!1154 = !DILocation(line: 1016, column: 2, scope: !1153)
!1155 = !DILocation(line: 1017, column: 26, scope: !1061)
!1156 = !DILocation(line: 1017, column: 2, scope: !1061)
!1157 = !DILocation(line: 1018, column: 9, scope: !1061)
!1158 = !DILocation(line: 1018, column: 2, scope: !1061)
!1159 = !DILocation(line: 1019, column: 1, scope: !1061)
!1160 = distinct !DISubprogram(name: "assoc_array_ptr_is_meta", scope: !49, file: !49, line: 115, type: !753, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1161)
!1161 = !{!1162}
!1162 = !DILocalVariable(name: "x", arg: 1, scope: !1160, file: !49, line: 115, type: !206)
!1163 = !DILocation(line: 115, column: 74, scope: !1160)
!1164 = !DILocation(line: 117, column: 24, scope: !1160)
!1165 = !DILocation(line: 117, column: 9, scope: !1160)
!1166 = !DILocation(line: 117, column: 26, scope: !1160)
!1167 = !DILocation(line: 117, column: 2, scope: !1160)
!1168 = distinct !DISubprogram(name: "kzalloc", scope: !9, file: !9, line: 719, type: !1169, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1171)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!42, !157, !43}
!1171 = !{!1172, !1173}
!1172 = !DILocalVariable(name: "size", arg: 1, scope: !1168, file: !9, line: 719, type: !157)
!1173 = !DILocalVariable(name: "flags", arg: 2, scope: !1168, file: !9, line: 719, type: !43)
!1174 = !DILocation(line: 719, column: 52, scope: !1168)
!1175 = !DILocation(line: 719, column: 64, scope: !1168)
!1176 = !DILocation(line: 721, column: 17, scope: !1168)
!1177 = !DILocation(line: 721, column: 23, scope: !1168)
!1178 = !DILocation(line: 721, column: 29, scope: !1168)
!1179 = !DILocation(line: 721, column: 9, scope: !1168)
!1180 = !DILocation(line: 721, column: 2, scope: !1168)
!1181 = distinct !DISubprogram(name: "ERR_PTR", scope: !1182, file: !1182, line: 39, type: !1183, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1185)
!1182 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!42, !137}
!1185 = !{!1186}
!1186 = !DILocalVariable(name: "error", arg: 1, scope: !1181, file: !1182, line: 39, type: !137)
!1187 = !DILocation(line: 39, column: 48, scope: !1181)
!1188 = !DILocation(line: 41, column: 18, scope: !1181)
!1189 = !DILocation(line: 41, column: 9, scope: !1181)
!1190 = !DILocation(line: 41, column: 2, scope: !1181)
!1191 = distinct !DISubprogram(name: "assoc_array_leaf_to_ptr", scope: !49, file: !49, line: 160, type: !1192, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!39, !101}
!1194 = !{!1195}
!1195 = !DILocalVariable(name: "p", arg: 1, scope: !1191, file: !49, line: 160, type: !101)
!1196 = !DILocation(line: 160, column: 61, scope: !1191)
!1197 = !DILocation(line: 162, column: 32, scope: !1191)
!1198 = !DILocation(line: 162, column: 9, scope: !1191)
!1199 = !DILocation(line: 162, column: 2, scope: !1191)
!1200 = distinct !DISubprogram(name: "assoc_array_insert_in_empty_tree", scope: !2, file: !2, line: 451, type: !1201, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1203)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!108, !74}
!1203 = !{!1204, !1205}
!1204 = !DILocalVariable(name: "edit", arg: 1, scope: !1200, file: !2, line: 451, type: !74)
!1205 = !DILocalVariable(name: "new_n0", scope: !1200, file: !2, line: 453, type: !59)
!1206 = !DILocation(line: 451, column: 71, scope: !1200)
!1207 = !DILocation(line: 453, column: 2, scope: !1200)
!1208 = !DILocation(line: 453, column: 27, scope: !1200)
!1209 = !DILocation(line: 455, column: 2, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 455, column: 2)
!1211 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 455, column: 2)
!1212 = !DILocation(line: 455, column: 2, scope: !1211)
!1213 = !DILocation(line: 457, column: 11, scope: !1200)
!1214 = !DILocation(line: 457, column: 9, scope: !1200)
!1215 = !DILocation(line: 458, column: 7, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 458, column: 6)
!1217 = !DILocation(line: 458, column: 6, scope: !1200)
!1218 = !DILocation(line: 459, column: 3, scope: !1216)
!1219 = !DILocation(line: 461, column: 46, scope: !1200)
!1220 = !DILocation(line: 461, column: 22, scope: !1200)
!1221 = !DILocation(line: 461, column: 2, scope: !1200)
!1222 = !DILocation(line: 461, column: 8, scope: !1200)
!1223 = !DILocation(line: 461, column: 20, scope: !1200)
!1224 = !DILocation(line: 462, column: 18, scope: !1200)
!1225 = !DILocation(line: 462, column: 26, scope: !1200)
!1226 = !DILocation(line: 462, column: 2, scope: !1200)
!1227 = !DILocation(line: 462, column: 8, scope: !1200)
!1228 = !DILocation(line: 462, column: 15, scope: !1200)
!1229 = !DILocation(line: 463, column: 26, scope: !1200)
!1230 = !DILocation(line: 463, column: 2, scope: !1200)
!1231 = !DILocation(line: 463, column: 8, scope: !1200)
!1232 = !DILocation(line: 463, column: 24, scope: !1200)
!1233 = !DILocation(line: 464, column: 22, scope: !1200)
!1234 = !DILocation(line: 464, column: 28, scope: !1200)
!1235 = !DILocation(line: 464, column: 35, scope: !1200)
!1236 = !DILocation(line: 464, column: 2, scope: !1200)
!1237 = !DILocation(line: 464, column: 8, scope: !1200)
!1238 = !DILocation(line: 464, column: 15, scope: !1200)
!1239 = !DILocation(line: 464, column: 19, scope: !1200)
!1240 = !DILocation(line: 465, column: 44, scope: !1200)
!1241 = !DILocation(line: 465, column: 20, scope: !1200)
!1242 = !DILocation(line: 465, column: 2, scope: !1200)
!1243 = !DILocation(line: 465, column: 8, scope: !1200)
!1244 = !DILocation(line: 465, column: 15, scope: !1200)
!1245 = !DILocation(line: 465, column: 18, scope: !1200)
!1246 = !DILocation(line: 467, column: 2, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 467, column: 2)
!1248 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 467, column: 2)
!1249 = !DILocation(line: 467, column: 2, scope: !1248)
!1250 = !DILocation(line: 468, column: 2, scope: !1200)
!1251 = !DILocation(line: 469, column: 1, scope: !1200)
!1252 = distinct !DISubprogram(name: "assoc_array_insert_into_terminal_node", scope: !2, file: !2, line: 474, type: !1253, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1255)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!108, !74, !93, !101, !483}
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283}
!1256 = !DILocalVariable(name: "edit", arg: 1, scope: !1252, file: !2, line: 474, type: !74)
!1257 = !DILocalVariable(name: "ops", arg: 2, scope: !1252, file: !2, line: 475, type: !93)
!1258 = !DILocalVariable(name: "index_key", arg: 3, scope: !1252, file: !2, line: 476, type: !101)
!1259 = !DILocalVariable(name: "result", arg: 4, scope: !1252, file: !2, line: 477, type: !483)
!1260 = !DILocalVariable(name: "shortcut", scope: !1252, file: !2, line: 479, type: !47)
!1261 = !DILocalVariable(name: "new_s0", scope: !1252, file: !2, line: 479, type: !47)
!1262 = !DILocalVariable(name: "node", scope: !1252, file: !2, line: 480, type: !59)
!1263 = !DILocalVariable(name: "new_n0", scope: !1252, file: !2, line: 480, type: !59)
!1264 = !DILocalVariable(name: "new_n1", scope: !1252, file: !2, line: 480, type: !59)
!1265 = !DILocalVariable(name: "side", scope: !1252, file: !2, line: 480, type: !59)
!1266 = !DILocalVariable(name: "ptr", scope: !1252, file: !2, line: 481, type: !39)
!1267 = !DILocalVariable(name: "dissimilarity", scope: !1252, file: !2, line: 482, type: !46)
!1268 = !DILocalVariable(name: "base_seg", scope: !1252, file: !2, line: 482, type: !46)
!1269 = !DILocalVariable(name: "blank", scope: !1252, file: !2, line: 482, type: !46)
!1270 = !DILocalVariable(name: "keylen", scope: !1252, file: !2, line: 483, type: !157)
!1271 = !DILocalVariable(name: "have_meta", scope: !1252, file: !2, line: 484, type: !108)
!1272 = !DILocalVariable(name: "level", scope: !1252, file: !2, line: 485, type: !45)
!1273 = !DILocalVariable(name: "diff", scope: !1252, file: !2, line: 485, type: !45)
!1274 = !DILocalVariable(name: "slot", scope: !1252, file: !2, line: 486, type: !45)
!1275 = !DILocalVariable(name: "next_slot", scope: !1252, file: !2, line: 486, type: !45)
!1276 = !DILocalVariable(name: "free_slot", scope: !1252, file: !2, line: 486, type: !45)
!1277 = !DILocalVariable(name: "i", scope: !1252, file: !2, line: 486, type: !45)
!1278 = !DILocalVariable(name: "j", scope: !1252, file: !2, line: 486, type: !45)
!1279 = !DILabel(scope: !1252, name: "split_node", file: !2, line: 595)
!1280 = !DILabel(scope: !1252, name: "do_split_node", file: !2, line: 619)
!1281 = !DILabel(scope: !1252, name: "found_slot_for_multiple_occupancy", file: !2, line: 638)
!1282 = !DILabel(scope: !1252, name: "all_leaves_cluster_together", file: !2, line: 713)
!1283 = !DILocalVariable(name: "x", scope: !1284, file: !2, line: 731, type: !45)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 730, column: 44)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 730, column: 2)
!1286 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 730, column: 2)
!1287 = !DILocation(line: 474, column: 76, scope: !1252)
!1288 = !DILocation(line: 475, column: 39, scope: !1252)
!1289 = !DILocation(line: 476, column: 21, scope: !1252)
!1290 = !DILocation(line: 477, column: 41, scope: !1252)
!1291 = !DILocation(line: 479, column: 2, scope: !1252)
!1292 = !DILocation(line: 479, column: 31, scope: !1252)
!1293 = !DILocation(line: 479, column: 42, scope: !1252)
!1294 = !DILocation(line: 480, column: 2, scope: !1252)
!1295 = !DILocation(line: 480, column: 27, scope: !1252)
!1296 = !DILocation(line: 480, column: 34, scope: !1252)
!1297 = !DILocation(line: 480, column: 43, scope: !1252)
!1298 = !DILocation(line: 480, column: 52, scope: !1252)
!1299 = !DILocation(line: 481, column: 2, scope: !1252)
!1300 = !DILocation(line: 481, column: 26, scope: !1252)
!1301 = !DILocation(line: 482, column: 2, scope: !1252)
!1302 = !DILocation(line: 482, column: 16, scope: !1252)
!1303 = !DILocation(line: 482, column: 31, scope: !1252)
!1304 = !DILocation(line: 482, column: 41, scope: !1252)
!1305 = !DILocation(line: 483, column: 2, scope: !1252)
!1306 = !DILocation(line: 483, column: 9, scope: !1252)
!1307 = !DILocation(line: 484, column: 2, scope: !1252)
!1308 = !DILocation(line: 484, column: 7, scope: !1252)
!1309 = !DILocation(line: 485, column: 2, scope: !1252)
!1310 = !DILocation(line: 485, column: 6, scope: !1252)
!1311 = !DILocation(line: 485, column: 13, scope: !1252)
!1312 = !DILocation(line: 486, column: 2, scope: !1252)
!1313 = !DILocation(line: 486, column: 6, scope: !1252)
!1314 = !DILocation(line: 486, column: 12, scope: !1252)
!1315 = !DILocation(line: 486, column: 23, scope: !1252)
!1316 = !DILocation(line: 486, column: 34, scope: !1252)
!1317 = !DILocation(line: 486, column: 37, scope: !1252)
!1318 = !DILocation(line: 488, column: 9, scope: !1252)
!1319 = !DILocation(line: 488, column: 17, scope: !1252)
!1320 = !DILocation(line: 488, column: 31, scope: !1252)
!1321 = !DILocation(line: 488, column: 7, scope: !1252)
!1322 = !DILocation(line: 489, column: 10, scope: !1252)
!1323 = !DILocation(line: 489, column: 18, scope: !1252)
!1324 = !DILocation(line: 489, column: 32, scope: !1252)
!1325 = !DILocation(line: 489, column: 8, scope: !1252)
!1326 = !DILocation(line: 490, column: 45, scope: !1252)
!1327 = !DILocation(line: 490, column: 53, scope: !1252)
!1328 = !DILocation(line: 490, column: 67, scope: !1252)
!1329 = !DILocation(line: 490, column: 2, scope: !1252)
!1330 = !DILocation(line: 490, column: 8, scope: !1252)
!1331 = !DILocation(line: 490, column: 43, scope: !1252)
!1332 = !DILocation(line: 492, column: 2, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 492, column: 2)
!1334 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 492, column: 2)
!1335 = !DILocation(line: 492, column: 2, scope: !1334)
!1336 = !DILocation(line: 499, column: 12, scope: !1252)
!1337 = !DILocation(line: 504, column: 9, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 504, column: 2)
!1339 = !DILocation(line: 504, column: 7, scope: !1338)
!1340 = !DILocation(line: 504, column: 14, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 504, column: 2)
!1342 = !DILocation(line: 504, column: 16, scope: !1341)
!1343 = !DILocation(line: 504, column: 2, scope: !1338)
!1344 = !DILocation(line: 505, column: 9, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 504, column: 44)
!1346 = !DILocation(line: 505, column: 15, scope: !1345)
!1347 = !DILocation(line: 505, column: 21, scope: !1345)
!1348 = !DILocation(line: 505, column: 7, scope: !1345)
!1349 = !DILocation(line: 506, column: 8, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 506, column: 7)
!1351 = !DILocation(line: 506, column: 7, scope: !1345)
!1352 = !DILocation(line: 507, column: 16, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 506, column: 13)
!1354 = !DILocation(line: 507, column: 14, scope: !1353)
!1355 = !DILocation(line: 508, column: 4, scope: !1353)
!1356 = !DILocation(line: 510, column: 31, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 510, column: 7)
!1358 = !DILocation(line: 510, column: 7, scope: !1357)
!1359 = !DILocation(line: 510, column: 36, scope: !1357)
!1360 = !DILocation(line: 511, column: 7, scope: !1357)
!1361 = !DILocation(line: 511, column: 12, scope: !1357)
!1362 = !DILocation(line: 511, column: 51, scope: !1357)
!1363 = !DILocation(line: 511, column: 27, scope: !1357)
!1364 = !DILocation(line: 512, column: 6, scope: !1357)
!1365 = !DILocation(line: 510, column: 7, scope: !1345)
!1366 = !DILocation(line: 513, column: 4, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 513, column: 4)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 513, column: 4)
!1369 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 512, column: 18)
!1370 = !DILocation(line: 513, column: 4, scope: !1368)
!1371 = !DILocation(line: 514, column: 20, scope: !1369)
!1372 = !DILocation(line: 514, column: 26, scope: !1369)
!1373 = !DILocation(line: 514, column: 32, scope: !1369)
!1374 = !DILocation(line: 514, column: 4, scope: !1369)
!1375 = !DILocation(line: 514, column: 10, scope: !1369)
!1376 = !DILocation(line: 514, column: 17, scope: !1369)
!1377 = !DILocation(line: 515, column: 22, scope: !1369)
!1378 = !DILocation(line: 515, column: 28, scope: !1369)
!1379 = !DILocation(line: 515, column: 34, scope: !1369)
!1380 = !DILocation(line: 515, column: 4, scope: !1369)
!1381 = !DILocation(line: 515, column: 10, scope: !1369)
!1382 = !DILocation(line: 515, column: 20, scope: !1369)
!1383 = !DILocation(line: 516, column: 4, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 516, column: 4)
!1385 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 516, column: 4)
!1386 = !DILocation(line: 516, column: 4, scope: !1385)
!1387 = !DILocation(line: 517, column: 4, scope: !1369)
!1388 = !DILocation(line: 519, column: 2, scope: !1345)
!1389 = !DILocation(line: 504, column: 40, scope: !1341)
!1390 = !DILocation(line: 504, column: 2, scope: !1341)
!1391 = distinct !{!1391, !1343, !1392, !306, !307}
!1392 = !DILocation(line: 519, column: 2, scope: !1338)
!1393 = !DILocation(line: 524, column: 6, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 524, column: 6)
!1395 = !DILocation(line: 524, column: 16, scope: !1394)
!1396 = !DILocation(line: 524, column: 6, scope: !1252)
!1397 = !DILocation(line: 525, column: 3, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 525, column: 3)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 525, column: 3)
!1400 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 524, column: 22)
!1401 = !DILocation(line: 525, column: 3, scope: !1399)
!1402 = !DILocation(line: 526, column: 19, scope: !1400)
!1403 = !DILocation(line: 526, column: 25, scope: !1400)
!1404 = !DILocation(line: 526, column: 31, scope: !1400)
!1405 = !DILocation(line: 526, column: 3, scope: !1400)
!1406 = !DILocation(line: 526, column: 9, scope: !1400)
!1407 = !DILocation(line: 526, column: 16, scope: !1400)
!1408 = !DILocation(line: 527, column: 27, scope: !1400)
!1409 = !DILocation(line: 527, column: 3, scope: !1400)
!1410 = !DILocation(line: 527, column: 9, scope: !1400)
!1411 = !DILocation(line: 527, column: 25, scope: !1400)
!1412 = !DILocation(line: 528, column: 3, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 528, column: 3)
!1414 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 528, column: 3)
!1415 = !DILocation(line: 528, column: 3, scope: !1414)
!1416 = !DILocation(line: 529, column: 3, scope: !1400)
!1417 = !DILocation(line: 539, column: 11, scope: !1252)
!1418 = !DILocation(line: 539, column: 9, scope: !1252)
!1419 = !DILocation(line: 540, column: 7, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 540, column: 6)
!1421 = !DILocation(line: 540, column: 6, scope: !1252)
!1422 = !DILocation(line: 541, column: 3, scope: !1420)
!1423 = !DILocation(line: 542, column: 46, scope: !1252)
!1424 = !DILocation(line: 542, column: 22, scope: !1252)
!1425 = !DILocation(line: 542, column: 2, scope: !1252)
!1426 = !DILocation(line: 542, column: 8, scope: !1252)
!1427 = !DILocation(line: 542, column: 20, scope: !1252)
!1428 = !DILocation(line: 543, column: 11, scope: !1252)
!1429 = !DILocation(line: 543, column: 9, scope: !1252)
!1430 = !DILocation(line: 544, column: 7, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 544, column: 6)
!1432 = !DILocation(line: 544, column: 6, scope: !1252)
!1433 = !DILocation(line: 545, column: 3, scope: !1431)
!1434 = !DILocation(line: 546, column: 46, scope: !1252)
!1435 = !DILocation(line: 546, column: 22, scope: !1252)
!1436 = !DILocation(line: 546, column: 2, scope: !1252)
!1437 = !DILocation(line: 546, column: 8, scope: !1252)
!1438 = !DILocation(line: 546, column: 20, scope: !1252)
!1439 = !DILocation(line: 549, column: 2, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !2, line: 549, column: 2)
!1441 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 549, column: 2)
!1442 = !DILocation(line: 549, column: 2, scope: !1441)
!1443 = !DILocation(line: 550, column: 12, scope: !1252)
!1444 = !DILocation(line: 551, column: 9, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 551, column: 2)
!1446 = !DILocation(line: 551, column: 7, scope: !1445)
!1447 = !DILocation(line: 551, column: 14, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 551, column: 2)
!1449 = !DILocation(line: 551, column: 16, scope: !1448)
!1450 = !DILocation(line: 551, column: 2, scope: !1445)
!1451 = !DILocation(line: 552, column: 9, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !2, line: 551, column: 44)
!1453 = !DILocation(line: 552, column: 15, scope: !1452)
!1454 = !DILocation(line: 552, column: 21, scope: !1452)
!1455 = !DILocation(line: 552, column: 7, scope: !1452)
!1456 = !DILocation(line: 553, column: 31, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 553, column: 7)
!1458 = !DILocation(line: 553, column: 7, scope: !1457)
!1459 = !DILocation(line: 553, column: 7, scope: !1452)
!1460 = !DILocation(line: 554, column: 4, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 553, column: 37)
!1462 = !DILocation(line: 554, column: 10, scope: !1461)
!1463 = !DILocation(line: 554, column: 24, scope: !1461)
!1464 = !DILocation(line: 554, column: 27, scope: !1461)
!1465 = !DILocation(line: 555, column: 14, scope: !1461)
!1466 = !DILocation(line: 556, column: 4, scope: !1461)
!1467 = !DILocation(line: 558, column: 14, scope: !1452)
!1468 = !DILocation(line: 558, column: 19, scope: !1452)
!1469 = !DILocation(line: 559, column: 28, scope: !1452)
!1470 = !DILocation(line: 559, column: 4, scope: !1452)
!1471 = !DILocation(line: 559, column: 34, scope: !1452)
!1472 = !DILocation(line: 558, column: 12, scope: !1452)
!1473 = !DILocation(line: 560, column: 16, scope: !1452)
!1474 = !DILocation(line: 560, column: 22, scope: !1452)
!1475 = !DILocation(line: 560, column: 12, scope: !1452)
!1476 = !DILocation(line: 561, column: 28, scope: !1452)
!1477 = !DILocation(line: 561, column: 37, scope: !1452)
!1478 = !DILocation(line: 561, column: 3, scope: !1452)
!1479 = !DILocation(line: 561, column: 9, scope: !1452)
!1480 = !DILocation(line: 561, column: 23, scope: !1452)
!1481 = !DILocation(line: 561, column: 26, scope: !1452)
!1482 = !DILocation(line: 562, column: 2, scope: !1452)
!1483 = !DILocation(line: 551, column: 40, scope: !1448)
!1484 = !DILocation(line: 551, column: 2, scope: !1448)
!1485 = distinct !{!1485, !1450, !1486, !306, !307}
!1486 = !DILocation(line: 562, column: 2, scope: !1445)
!1487 = !DILocation(line: 564, column: 6, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 564, column: 6)
!1489 = !{i8 0, i8 2}
!1490 = !{}
!1491 = !DILocation(line: 564, column: 6, scope: !1252)
!1492 = !DILocation(line: 565, column: 3, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 565, column: 3)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 565, column: 3)
!1495 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 564, column: 17)
!1496 = !DILocation(line: 565, column: 3, scope: !1494)
!1497 = !DILocation(line: 566, column: 3, scope: !1495)
!1498 = !DILocation(line: 570, column: 16, scope: !1252)
!1499 = !DILocation(line: 571, column: 13, scope: !1252)
!1500 = !DILocation(line: 571, column: 19, scope: !1252)
!1501 = !DILocation(line: 571, column: 11, scope: !1252)
!1502 = !DILocation(line: 572, column: 9, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 572, column: 2)
!1504 = !DILocation(line: 572, column: 7, scope: !1503)
!1505 = !DILocation(line: 572, column: 14, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !2, line: 572, column: 2)
!1507 = !DILocation(line: 572, column: 16, scope: !1506)
!1508 = !DILocation(line: 572, column: 2, scope: !1503)
!1509 = !DILocation(line: 573, column: 20, scope: !1506)
!1510 = !DILocation(line: 573, column: 26, scope: !1506)
!1511 = !DILocation(line: 573, column: 40, scope: !1506)
!1512 = !DILocation(line: 573, column: 45, scope: !1506)
!1513 = !DILocation(line: 573, column: 43, scope: !1506)
!1514 = !DILocation(line: 573, column: 17, scope: !1506)
!1515 = !DILocation(line: 573, column: 3, scope: !1506)
!1516 = !DILocation(line: 572, column: 40, scope: !1506)
!1517 = !DILocation(line: 572, column: 2, scope: !1506)
!1518 = distinct !{!1518, !1508, !1519, !306, !307}
!1519 = !DILocation(line: 573, column: 45, scope: !1503)
!1520 = !DILocation(line: 575, column: 2, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 575, column: 2)
!1522 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 575, column: 2)
!1523 = !DILocation(line: 575, column: 2, scope: !1522)
!1524 = !DILocation(line: 577, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 577, column: 6)
!1526 = !DILocation(line: 577, column: 21, scope: !1525)
!1527 = !DILocation(line: 577, column: 45, scope: !1525)
!1528 = !DILocation(line: 577, column: 6, scope: !1252)
!1529 = !DILocation(line: 581, column: 8, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 581, column: 7)
!1531 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 577, column: 51)
!1532 = !DILocation(line: 581, column: 14, scope: !1530)
!1533 = !DILocation(line: 581, column: 51, scope: !1530)
!1534 = !DILocation(line: 581, column: 49, scope: !1530)
!1535 = !DILocation(line: 581, column: 61, scope: !1530)
!1536 = !DILocation(line: 581, column: 7, scope: !1531)
!1537 = !DILocation(line: 582, column: 4, scope: !1530)
!1538 = !DILocation(line: 592, column: 3, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !2, line: 592, column: 3)
!1540 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 592, column: 3)
!1541 = !DILocation(line: 592, column: 3, scope: !1540)
!1542 = !DILocation(line: 593, column: 2, scope: !1531)
!1543 = !DILocation(line: 577, column: 48, scope: !1525)
!1544 = !DILocation(line: 595, column: 1, scope: !1252)
!1545 = !DILocation(line: 596, column: 2, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 596, column: 2)
!1547 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 596, column: 2)
!1548 = !DILocation(line: 596, column: 2, scope: !1547)
!1549 = !DILocation(line: 613, column: 44, scope: !1252)
!1550 = !DILocation(line: 613, column: 20, scope: !1252)
!1551 = !DILocation(line: 613, column: 2, scope: !1252)
!1552 = !DILocation(line: 613, column: 8, scope: !1252)
!1553 = !DILocation(line: 613, column: 15, scope: !1252)
!1554 = !DILocation(line: 613, column: 18, scope: !1252)
!1555 = !DILocation(line: 614, column: 25, scope: !1252)
!1556 = !DILocation(line: 614, column: 31, scope: !1252)
!1557 = !DILocation(line: 614, column: 2, scope: !1252)
!1558 = !DILocation(line: 614, column: 10, scope: !1252)
!1559 = !DILocation(line: 614, column: 23, scope: !1252)
!1560 = !DILocation(line: 615, column: 24, scope: !1252)
!1561 = !DILocation(line: 615, column: 30, scope: !1252)
!1562 = !DILocation(line: 615, column: 2, scope: !1252)
!1563 = !DILocation(line: 615, column: 10, scope: !1252)
!1564 = !DILocation(line: 615, column: 22, scope: !1252)
!1565 = !DILocation(line: 616, column: 49, scope: !1252)
!1566 = !DILocation(line: 616, column: 25, scope: !1252)
!1567 = !DILocation(line: 616, column: 2, scope: !1252)
!1568 = !DILocation(line: 616, column: 10, scope: !1252)
!1569 = !DILocation(line: 616, column: 23, scope: !1252)
!1570 = !DILocation(line: 617, column: 2, scope: !1252)
!1571 = !DILocation(line: 617, column: 10, scope: !1252)
!1572 = !DILocation(line: 617, column: 22, scope: !1252)
!1573 = !DILocation(line: 619, column: 1, scope: !1252)
!1574 = !DILocation(line: 620, column: 2, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !2, line: 620, column: 2)
!1576 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 620, column: 2)
!1577 = !DILocation(line: 620, column: 2, scope: !1576)
!1578 = !DILocation(line: 622, column: 32, scope: !1252)
!1579 = !DILocation(line: 622, column: 38, scope: !1252)
!1580 = !DILocation(line: 622, column: 2, scope: !1252)
!1581 = !DILocation(line: 622, column: 10, scope: !1252)
!1582 = !DILocation(line: 622, column: 30, scope: !1252)
!1583 = !DILocation(line: 623, column: 2, scope: !1252)
!1584 = !DILocation(line: 623, column: 10, scope: !1252)
!1585 = !DILocation(line: 623, column: 30, scope: !1252)
!1586 = !DILocation(line: 631, column: 9, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 631, column: 2)
!1588 = !DILocation(line: 631, column: 7, scope: !1587)
!1589 = !DILocation(line: 631, column: 14, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 631, column: 2)
!1591 = !DILocation(line: 631, column: 16, scope: !1590)
!1592 = !DILocation(line: 631, column: 2, scope: !1587)
!1593 = !DILocation(line: 632, column: 10, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 631, column: 44)
!1595 = !DILocation(line: 632, column: 16, scope: !1594)
!1596 = !DILocation(line: 632, column: 30, scope: !1594)
!1597 = !DILocation(line: 632, column: 8, scope: !1594)
!1598 = !DILocation(line: 633, column: 7, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 633, column: 7)
!1600 = !DILocation(line: 633, column: 12, scope: !1599)
!1601 = !DILocation(line: 633, column: 7, scope: !1594)
!1602 = !DILocation(line: 634, column: 13, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 634, column: 4)
!1604 = !DILocation(line: 634, column: 15, scope: !1603)
!1605 = !DILocation(line: 634, column: 11, scope: !1603)
!1606 = !DILocation(line: 634, column: 9, scope: !1603)
!1607 = !DILocation(line: 634, column: 20, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 634, column: 4)
!1609 = !DILocation(line: 634, column: 22, scope: !1608)
!1610 = !DILocation(line: 634, column: 4, scope: !1603)
!1611 = !DILocation(line: 635, column: 9, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 635, column: 9)
!1613 = !DILocation(line: 635, column: 15, scope: !1612)
!1614 = !DILocation(line: 635, column: 29, scope: !1612)
!1615 = !DILocation(line: 635, column: 35, scope: !1612)
!1616 = !DILocation(line: 635, column: 32, scope: !1612)
!1617 = !DILocation(line: 635, column: 9, scope: !1608)
!1618 = !DILocation(line: 636, column: 6, scope: !1612)
!1619 = !DILocation(line: 634, column: 50, scope: !1608)
!1620 = !DILocation(line: 634, column: 4, scope: !1608)
!1621 = distinct !{!1621, !1610, !1622, !306, !307}
!1622 = !DILocation(line: 636, column: 11, scope: !1603)
!1623 = !DILocation(line: 637, column: 2, scope: !1594)
!1624 = !DILocation(line: 631, column: 40, scope: !1590)
!1625 = !DILocation(line: 631, column: 2, scope: !1590)
!1626 = distinct !{!1626, !1592, !1627, !306, !307}
!1627 = !DILocation(line: 637, column: 2, scope: !1587)
!1628 = !DILocation(line: 638, column: 1, scope: !1252)
!1629 = !DILocation(line: 639, column: 2, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 639, column: 2)
!1631 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 639, column: 2)
!1632 = !DILocation(line: 639, column: 2, scope: !1631)
!1633 = !DILocation(line: 640, column: 2, scope: !1252)
!1634 = !DILocation(line: 640, column: 2, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 640, column: 2)
!1636 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 640, column: 2)
!1637 = !DILocation(line: 640, column: 2, scope: !1636)
!1638 = !DILocation(line: 640, column: 2, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !2, line: 640, column: 2)
!1640 = !DILocation(line: 640, column: 2, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1639, file: !2, line: 640, column: 2)
!1642 = !DILocation(line: 640, column: 2, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !2, line: 640, column: 2)
!1644 = !{i64 2151527454, i64 2151527483, i64 2151527529, i64 2151527587, i64 2151527641, i64 2151527695, i64 2151527750, i64 2151527781}
!1645 = !DILocation(line: 641, column: 2, scope: !1252)
!1646 = !DILocation(line: 641, column: 2, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !2, line: 641, column: 2)
!1648 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 641, column: 2)
!1649 = !DILocation(line: 641, column: 2, scope: !1648)
!1650 = !DILocation(line: 641, column: 2, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !2, line: 641, column: 2)
!1652 = !DILocation(line: 641, column: 2, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1651, file: !2, line: 641, column: 2)
!1654 = !DILocation(line: 641, column: 2, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !2, line: 641, column: 2)
!1656 = !{i64 2151528435, i64 2151528464, i64 2151528510, i64 2151528568, i64 2151528622, i64 2151528676, i64 2151528731, i64 2151528762}
!1657 = !DILocation(line: 642, column: 2, scope: !1252)
!1658 = !DILocation(line: 642, column: 2, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 642, column: 2)
!1660 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 642, column: 2)
!1661 = !DILocation(line: 642, column: 2, scope: !1660)
!1662 = !DILocation(line: 642, column: 2, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 642, column: 2)
!1664 = !DILocation(line: 642, column: 2, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 642, column: 2)
!1666 = !DILocation(line: 642, column: 2, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 642, column: 2)
!1668 = !{i64 2151529414, i64 2151529443, i64 2151529489, i64 2151529547, i64 2151529601, i64 2151529655, i64 2151529710, i64 2151529741}
!1669 = !DILocation(line: 644, column: 24, scope: !1252)
!1670 = !DILocation(line: 644, column: 2, scope: !1252)
!1671 = !DILocation(line: 644, column: 10, scope: !1252)
!1672 = !DILocation(line: 644, column: 22, scope: !1252)
!1673 = !DILocation(line: 647, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 647, column: 2)
!1675 = !DILocation(line: 647, column: 7, scope: !1674)
!1676 = !DILocation(line: 647, column: 14, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 647, column: 2)
!1678 = !DILocation(line: 647, column: 16, scope: !1677)
!1679 = !DILocation(line: 647, column: 2, scope: !1674)
!1680 = !DILocation(line: 648, column: 31, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 648, column: 7)
!1682 = !DILocation(line: 648, column: 37, scope: !1681)
!1683 = !DILocation(line: 648, column: 43, scope: !1681)
!1684 = !DILocation(line: 648, column: 7, scope: !1681)
!1685 = !DILocation(line: 648, column: 7, scope: !1677)
!1686 = !DILocation(line: 649, column: 23, scope: !1681)
!1687 = !DILocation(line: 649, column: 29, scope: !1681)
!1688 = !DILocation(line: 649, column: 35, scope: !1681)
!1689 = !DILocation(line: 649, column: 4, scope: !1681)
!1690 = !DILocation(line: 649, column: 12, scope: !1681)
!1691 = !DILocation(line: 649, column: 18, scope: !1681)
!1692 = !DILocation(line: 649, column: 21, scope: !1681)
!1693 = !DILocation(line: 651, column: 4, scope: !1681)
!1694 = !DILocation(line: 651, column: 12, scope: !1681)
!1695 = !DILocation(line: 651, column: 18, scope: !1681)
!1696 = !DILocation(line: 651, column: 21, scope: !1681)
!1697 = !DILocation(line: 648, column: 45, scope: !1681)
!1698 = !DILocation(line: 647, column: 40, scope: !1677)
!1699 = !DILocation(line: 647, column: 2, scope: !1677)
!1700 = distinct !{!1700, !1679, !1701, !306, !307}
!1701 = !DILocation(line: 651, column: 23, scope: !1674)
!1702 = !DILocation(line: 652, column: 2, scope: !1252)
!1703 = !DILocation(line: 652, column: 2, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 652, column: 2)
!1705 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 652, column: 2)
!1706 = !DILocation(line: 652, column: 2, scope: !1705)
!1707 = !DILocation(line: 652, column: 2, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !2, line: 652, column: 2)
!1709 = !DILocation(line: 652, column: 2, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 652, column: 2)
!1711 = !DILocation(line: 652, column: 2, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 652, column: 2)
!1713 = !{i64 2151530465, i64 2151530494, i64 2151530540, i64 2151530598, i64 2151530652, i64 2151530706, i64 2151530761, i64 2151530792}
!1714 = !DILocation(line: 653, column: 48, scope: !1252)
!1715 = !DILocation(line: 653, column: 24, scope: !1252)
!1716 = !DILocation(line: 653, column: 2, scope: !1252)
!1717 = !DILocation(line: 653, column: 10, scope: !1252)
!1718 = !DILocation(line: 653, column: 16, scope: !1252)
!1719 = !DILocation(line: 653, column: 22, scope: !1252)
!1720 = !DILocation(line: 656, column: 12, scope: !1252)
!1721 = !DILocation(line: 657, column: 12, scope: !1252)
!1722 = !DILocation(line: 658, column: 9, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 658, column: 2)
!1724 = !DILocation(line: 658, column: 7, scope: !1723)
!1725 = !DILocation(line: 658, column: 14, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 658, column: 2)
!1727 = !DILocation(line: 658, column: 16, scope: !1726)
!1728 = !DILocation(line: 658, column: 2, scope: !1723)
!1729 = !DILocation(line: 659, column: 31, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 659, column: 7)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !2, line: 658, column: 44)
!1732 = !DILocation(line: 659, column: 37, scope: !1730)
!1733 = !DILocation(line: 659, column: 43, scope: !1730)
!1734 = !DILocation(line: 659, column: 7, scope: !1730)
!1735 = !DILocation(line: 659, column: 7, scope: !1731)
!1736 = !DILocation(line: 660, column: 4, scope: !1730)
!1737 = !DILocation(line: 661, column: 7, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 661, column: 7)
!1739 = !DILocation(line: 661, column: 13, scope: !1738)
!1740 = !DILocation(line: 661, column: 27, scope: !1738)
!1741 = !DILocation(line: 661, column: 33, scope: !1738)
!1742 = !DILocation(line: 661, column: 30, scope: !1738)
!1743 = !DILocation(line: 661, column: 7, scope: !1731)
!1744 = !DILocation(line: 662, column: 33, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 661, column: 39)
!1746 = !DILocation(line: 662, column: 39, scope: !1745)
!1747 = !DILocation(line: 662, column: 45, scope: !1745)
!1748 = !DILocation(line: 662, column: 4, scope: !1745)
!1749 = !DILocation(line: 662, column: 12, scope: !1745)
!1750 = !DILocation(line: 662, column: 27, scope: !1745)
!1751 = !DILocation(line: 662, column: 31, scope: !1745)
!1752 = !DILocation(line: 663, column: 4, scope: !1745)
!1753 = !DILocation(line: 663, column: 12, scope: !1745)
!1754 = !DILocation(line: 663, column: 31, scope: !1745)
!1755 = !DILocation(line: 664, column: 3, scope: !1745)
!1756 = !DILocation(line: 665, column: 4, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 664, column: 10)
!1758 = !DILocation(line: 666, column: 14, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 665, column: 7)
!1760 = !DILocation(line: 667, column: 4, scope: !1759)
!1761 = !DILocation(line: 667, column: 13, scope: !1757)
!1762 = !DILocation(line: 667, column: 21, scope: !1757)
!1763 = !DILocation(line: 667, column: 27, scope: !1757)
!1764 = !DILocation(line: 667, column: 38, scope: !1757)
!1765 = distinct !{!1765, !1756, !1766, !306, !307}
!1766 = !DILocation(line: 667, column: 45, scope: !1757)
!1767 = !DILocation(line: 668, column: 31, scope: !1757)
!1768 = !DILocation(line: 668, column: 37, scope: !1757)
!1769 = !DILocation(line: 668, column: 43, scope: !1757)
!1770 = !DILocation(line: 668, column: 4, scope: !1757)
!1771 = !DILocation(line: 668, column: 12, scope: !1757)
!1772 = !DILocation(line: 668, column: 18, scope: !1757)
!1773 = !DILocation(line: 668, column: 29, scope: !1757)
!1774 = !DILocation(line: 670, column: 2, scope: !1731)
!1775 = !DILocation(line: 658, column: 40, scope: !1726)
!1776 = !DILocation(line: 658, column: 2, scope: !1726)
!1777 = distinct !{!1777, !1728, !1778, !306, !307}
!1778 = !DILocation(line: 670, column: 2, scope: !1723)
!1779 = !DILocation(line: 672, column: 2, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !2, line: 672, column: 2)
!1781 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 672, column: 2)
!1782 = !DILocation(line: 672, column: 2, scope: !1781)
!1783 = !DILocation(line: 674, column: 6, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 674, column: 6)
!1785 = !DILocation(line: 674, column: 12, scope: !1784)
!1786 = !DILocation(line: 674, column: 50, scope: !1784)
!1787 = !DILocation(line: 674, column: 47, scope: !1784)
!1788 = !DILocation(line: 674, column: 6, scope: !1252)
!1789 = !DILocation(line: 675, column: 3, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 674, column: 56)
!1791 = !DILocation(line: 676, column: 13, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 675, column: 6)
!1793 = !DILocation(line: 677, column: 3, scope: !1792)
!1794 = !DILocation(line: 677, column: 12, scope: !1790)
!1795 = !DILocation(line: 677, column: 20, scope: !1790)
!1796 = !DILocation(line: 677, column: 26, scope: !1790)
!1797 = !DILocation(line: 677, column: 37, scope: !1790)
!1798 = distinct !{!1798, !1789, !1799, !306, !307}
!1799 = !DILocation(line: 677, column: 44, scope: !1790)
!1800 = !DILocation(line: 678, column: 19, scope: !1790)
!1801 = !DILocation(line: 678, column: 27, scope: !1790)
!1802 = !DILocation(line: 678, column: 33, scope: !1790)
!1803 = !DILocation(line: 678, column: 3, scope: !1790)
!1804 = !DILocation(line: 678, column: 9, scope: !1790)
!1805 = !DILocation(line: 678, column: 16, scope: !1790)
!1806 = !DILocation(line: 679, column: 27, scope: !1790)
!1807 = !DILocation(line: 679, column: 3, scope: !1790)
!1808 = !DILocation(line: 679, column: 9, scope: !1790)
!1809 = !DILocation(line: 679, column: 25, scope: !1790)
!1810 = !DILocation(line: 680, column: 2, scope: !1790)
!1811 = !DILocation(line: 681, column: 19, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 680, column: 9)
!1813 = !DILocation(line: 681, column: 27, scope: !1812)
!1814 = !DILocation(line: 681, column: 42, scope: !1812)
!1815 = !DILocation(line: 681, column: 3, scope: !1812)
!1816 = !DILocation(line: 681, column: 9, scope: !1812)
!1817 = !DILocation(line: 681, column: 16, scope: !1812)
!1818 = !DILocation(line: 682, column: 27, scope: !1812)
!1819 = !DILocation(line: 682, column: 3, scope: !1812)
!1820 = !DILocation(line: 682, column: 9, scope: !1812)
!1821 = !DILocation(line: 682, column: 25, scope: !1812)
!1822 = !DILocation(line: 685, column: 2, scope: !1252)
!1823 = !DILocation(line: 685, column: 2, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 685, column: 2)
!1825 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 685, column: 2)
!1826 = !DILocation(line: 685, column: 2, scope: !1825)
!1827 = !DILocation(line: 685, column: 2, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 685, column: 2)
!1829 = !DILocation(line: 685, column: 2, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 685, column: 2)
!1831 = !DILocation(line: 685, column: 2, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 685, column: 2)
!1833 = !{i64 2151531753, i64 2151531782, i64 2151531828, i64 2151531886, i64 2151531940, i64 2151531994, i64 2151532049, i64 2151532080}
!1834 = !DILocation(line: 687, column: 54, scope: !1252)
!1835 = !DILocation(line: 687, column: 30, scope: !1252)
!1836 = !DILocation(line: 687, column: 2, scope: !1252)
!1837 = !DILocation(line: 687, column: 8, scope: !1252)
!1838 = !DILocation(line: 687, column: 28, scope: !1252)
!1839 = !DILocation(line: 688, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 688, column: 2)
!1841 = !DILocation(line: 688, column: 7, scope: !1840)
!1842 = !DILocation(line: 688, column: 14, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 688, column: 2)
!1844 = !DILocation(line: 688, column: 16, scope: !1843)
!1845 = !DILocation(line: 688, column: 2, scope: !1840)
!1846 = !DILocation(line: 689, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !2, line: 689, column: 7)
!1848 = distinct !DILexicalBlock(scope: !1843, file: !2, line: 688, column: 44)
!1849 = !DILocation(line: 689, column: 13, scope: !1847)
!1850 = !DILocation(line: 689, column: 27, scope: !1847)
!1851 = !DILocation(line: 689, column: 30, scope: !1847)
!1852 = !DILocation(line: 689, column: 7, scope: !1848)
!1853 = !DILocation(line: 690, column: 10, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 689, column: 39)
!1855 = !DILocation(line: 690, column: 16, scope: !1854)
!1856 = !DILocation(line: 690, column: 22, scope: !1854)
!1857 = !DILocation(line: 690, column: 8, scope: !1854)
!1858 = !DILocation(line: 691, column: 4, scope: !1854)
!1859 = !DILocation(line: 691, column: 4, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !2, line: 691, column: 4)
!1861 = distinct !DILexicalBlock(scope: !1854, file: !2, line: 691, column: 4)
!1862 = !DILocation(line: 691, column: 4, scope: !1861)
!1863 = !DILocation(line: 691, column: 4, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 691, column: 4)
!1865 = !DILocation(line: 691, column: 4, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 691, column: 4)
!1867 = !DILocation(line: 691, column: 4, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 691, column: 4)
!1869 = !{i64 2151532768, i64 2151532797, i64 2151532843, i64 2151532901, i64 2151532955, i64 2151533009, i64 2151533064, i64 2151533095}
!1870 = !DILocation(line: 692, column: 32, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1854, file: !2, line: 692, column: 8)
!1872 = !DILocation(line: 692, column: 8, scope: !1871)
!1873 = !DILocation(line: 692, column: 8, scope: !1854)
!1874 = !DILocation(line: 693, column: 36, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 692, column: 38)
!1876 = !DILocation(line: 693, column: 12, scope: !1875)
!1877 = !DILocation(line: 693, column: 10, scope: !1875)
!1878 = !DILocation(line: 694, column: 34, scope: !1875)
!1879 = !DILocation(line: 694, column: 40, scope: !1875)
!1880 = !DILocation(line: 694, column: 5, scope: !1875)
!1881 = !DILocation(line: 694, column: 11, scope: !1875)
!1882 = !DILocation(line: 694, column: 28, scope: !1875)
!1883 = !DILocation(line: 694, column: 31, scope: !1875)
!1884 = !DILocation(line: 695, column: 4, scope: !1875)
!1885 = !DILocation(line: 696, column: 44, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 695, column: 11)
!1887 = !DILocation(line: 696, column: 16, scope: !1886)
!1888 = !DILocation(line: 696, column: 14, scope: !1886)
!1889 = !DILocation(line: 697, column: 34, scope: !1886)
!1890 = !DILocation(line: 697, column: 44, scope: !1886)
!1891 = !DILocation(line: 697, column: 5, scope: !1886)
!1892 = !DILocation(line: 697, column: 11, scope: !1886)
!1893 = !DILocation(line: 697, column: 28, scope: !1886)
!1894 = !DILocation(line: 697, column: 31, scope: !1886)
!1895 = !DILocation(line: 699, column: 3, scope: !1854)
!1896 = !DILocation(line: 700, column: 2, scope: !1848)
!1897 = !DILocation(line: 688, column: 40, scope: !1843)
!1898 = !DILocation(line: 688, column: 2, scope: !1843)
!1899 = distinct !{!1899, !1845, !1900, !306, !307}
!1900 = !DILocation(line: 700, column: 2, scope: !1840)
!1901 = !DILocation(line: 702, column: 8, scope: !1252)
!1902 = !DILocation(line: 702, column: 14, scope: !1252)
!1903 = !DILocation(line: 702, column: 6, scope: !1252)
!1904 = !DILocation(line: 703, column: 7, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 703, column: 6)
!1906 = !DILocation(line: 703, column: 6, scope: !1252)
!1907 = !DILocation(line: 704, column: 23, scope: !1905)
!1908 = !DILocation(line: 704, column: 29, scope: !1905)
!1909 = !DILocation(line: 704, column: 36, scope: !1905)
!1910 = !DILocation(line: 704, column: 3, scope: !1905)
!1911 = !DILocation(line: 704, column: 9, scope: !1905)
!1912 = !DILocation(line: 704, column: 16, scope: !1905)
!1913 = !DILocation(line: 704, column: 20, scope: !1905)
!1914 = !DILocation(line: 705, column: 35, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1905, file: !2, line: 705, column: 11)
!1916 = !DILocation(line: 705, column: 11, scope: !1915)
!1917 = !DILocation(line: 705, column: 11, scope: !1905)
!1918 = !DILocation(line: 706, column: 47, scope: !1915)
!1919 = !DILocation(line: 706, column: 23, scope: !1915)
!1920 = !DILocation(line: 706, column: 53, scope: !1915)
!1921 = !DILocation(line: 706, column: 59, scope: !1915)
!1922 = !DILocation(line: 706, column: 65, scope: !1915)
!1923 = !DILocation(line: 706, column: 3, scope: !1915)
!1924 = !DILocation(line: 706, column: 9, scope: !1915)
!1925 = !DILocation(line: 706, column: 16, scope: !1915)
!1926 = !DILocation(line: 706, column: 20, scope: !1915)
!1927 = !DILocation(line: 708, column: 51, scope: !1915)
!1928 = !DILocation(line: 708, column: 23, scope: !1915)
!1929 = !DILocation(line: 708, column: 57, scope: !1915)
!1930 = !DILocation(line: 708, column: 3, scope: !1915)
!1931 = !DILocation(line: 708, column: 9, scope: !1915)
!1932 = !DILocation(line: 708, column: 16, scope: !1915)
!1933 = !DILocation(line: 708, column: 20, scope: !1915)
!1934 = !DILocation(line: 709, column: 50, scope: !1252)
!1935 = !DILocation(line: 709, column: 26, scope: !1252)
!1936 = !DILocation(line: 709, column: 2, scope: !1252)
!1937 = !DILocation(line: 709, column: 8, scope: !1252)
!1938 = !DILocation(line: 709, column: 24, scope: !1252)
!1939 = !DILocation(line: 710, column: 2, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !2, line: 710, column: 2)
!1941 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 710, column: 2)
!1942 = !DILocation(line: 710, column: 2, scope: !1941)
!1943 = !DILocation(line: 711, column: 2, scope: !1252)
!1944 = !DILocation(line: 713, column: 1, scope: !1252)
!1945 = !DILocation(line: 728, column: 2, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !2, line: 728, column: 2)
!1947 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 728, column: 2)
!1948 = !DILocation(line: 728, column: 2, scope: !1947)
!1949 = !DILocation(line: 729, column: 7, scope: !1252)
!1950 = !DILocation(line: 730, column: 9, scope: !1286)
!1951 = !DILocation(line: 730, column: 7, scope: !1286)
!1952 = !DILocation(line: 730, column: 14, scope: !1285)
!1953 = !DILocation(line: 730, column: 16, scope: !1285)
!1954 = !DILocation(line: 730, column: 2, scope: !1286)
!1955 = !DILocation(line: 731, column: 3, scope: !1284)
!1956 = !DILocation(line: 731, column: 7, scope: !1284)
!1957 = !DILocation(line: 731, column: 11, scope: !1284)
!1958 = !DILocation(line: 731, column: 16, scope: !1284)
!1959 = !DILocation(line: 731, column: 53, scope: !1284)
!1960 = !DILocation(line: 731, column: 59, scope: !1284)
!1961 = !DILocation(line: 731, column: 65, scope: !1284)
!1962 = !DILocation(line: 731, column: 29, scope: !1284)
!1963 = !DILocation(line: 732, column: 8, scope: !1284)
!1964 = !DILocation(line: 733, column: 7, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 733, column: 7)
!1966 = !DILocation(line: 733, column: 11, scope: !1965)
!1967 = !DILocation(line: 733, column: 9, scope: !1965)
!1968 = !DILocation(line: 733, column: 7, scope: !1284)
!1969 = !DILocation(line: 734, column: 4, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !2, line: 733, column: 17)
!1971 = !DILocation(line: 734, column: 4, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 734, column: 4)
!1973 = distinct !DILexicalBlock(scope: !1970, file: !2, line: 734, column: 4)
!1974 = !DILocation(line: 734, column: 4, scope: !1973)
!1975 = !DILocation(line: 734, column: 4, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !2, line: 734, column: 4)
!1977 = !DILocation(line: 734, column: 4, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1976, file: !2, line: 734, column: 4)
!1979 = !DILocation(line: 734, column: 4, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !2, line: 734, column: 4)
!1981 = !{i64 2151534279, i64 2151534308, i64 2151534354, i64 2151534412, i64 2151534466, i64 2151534520, i64 2151534575, i64 2151534606}
!1982 = !DILocation(line: 735, column: 11, scope: !1970)
!1983 = !DILocation(line: 735, column: 9, scope: !1970)
!1984 = !DILocation(line: 736, column: 3, scope: !1970)
!1985 = !DILocation(line: 737, column: 2, scope: !1285)
!1986 = !DILocation(line: 737, column: 2, scope: !1284)
!1987 = !DILocation(line: 730, column: 40, scope: !1285)
!1988 = !DILocation(line: 730, column: 2, scope: !1285)
!1989 = distinct !{!1989, !1954, !1990, !306, !307}
!1990 = !DILocation(line: 737, column: 2, scope: !1286)
!1991 = !DILocation(line: 738, column: 2, scope: !1252)
!1992 = !DILocation(line: 738, column: 2, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 738, column: 2)
!1994 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 738, column: 2)
!1995 = !DILocation(line: 738, column: 2, scope: !1994)
!1996 = !DILocation(line: 738, column: 2, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !2, line: 738, column: 2)
!1998 = !DILocation(line: 738, column: 2, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 738, column: 2)
!2000 = !DILocation(line: 738, column: 2, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 738, column: 2)
!2002 = !{i64 2151535303, i64 2151535332, i64 2151535378, i64 2151535436, i64 2151535490, i64 2151535544, i64 2151535599, i64 2151535630}
!2003 = !DILocation(line: 739, column: 2, scope: !1252)
!2004 = !DILocation(line: 739, column: 2, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 739, column: 2)
!2006 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 739, column: 2)
!2007 = !DILocation(line: 739, column: 2, scope: !2006)
!2008 = !DILocation(line: 739, column: 2, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 739, column: 2)
!2010 = !DILocation(line: 739, column: 2, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 739, column: 2)
!2012 = !DILocation(line: 739, column: 2, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 739, column: 2)
!2014 = !{i64 2151536840, i64 2151536869, i64 2151536915, i64 2151536973, i64 2151537027, i64 2151537081, i64 2151537136, i64 2151537167}
!2015 = !DILocation(line: 741, column: 11, scope: !1252)
!2016 = !DILocation(line: 741, column: 9, scope: !1252)
!2017 = !DILocation(line: 742, column: 9, scope: !1252)
!2018 = !DILocation(line: 744, column: 19, scope: !1252)
!2019 = !DILocation(line: 744, column: 11, scope: !1252)
!2020 = !DILocation(line: 744, column: 9, scope: !1252)
!2021 = !DILocation(line: 745, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 745, column: 6)
!2023 = !DILocation(line: 745, column: 6, scope: !1252)
!2024 = !DILocation(line: 746, column: 3, scope: !2022)
!2025 = !DILocation(line: 747, column: 50, scope: !1252)
!2026 = !DILocation(line: 747, column: 22, scope: !1252)
!2027 = !DILocation(line: 747, column: 2, scope: !1252)
!2028 = !DILocation(line: 747, column: 8, scope: !1252)
!2029 = !DILocation(line: 747, column: 20, scope: !1252)
!2030 = !DILocation(line: 749, column: 48, scope: !1252)
!2031 = !DILocation(line: 749, column: 20, scope: !1252)
!2032 = !DILocation(line: 749, column: 2, scope: !1252)
!2033 = !DILocation(line: 749, column: 8, scope: !1252)
!2034 = !DILocation(line: 749, column: 15, scope: !1252)
!2035 = !DILocation(line: 749, column: 18, scope: !1252)
!2036 = !DILocation(line: 750, column: 25, scope: !1252)
!2037 = !DILocation(line: 750, column: 31, scope: !1252)
!2038 = !DILocation(line: 750, column: 2, scope: !1252)
!2039 = !DILocation(line: 750, column: 10, scope: !1252)
!2040 = !DILocation(line: 750, column: 23, scope: !1252)
!2041 = !DILocation(line: 751, column: 24, scope: !1252)
!2042 = !DILocation(line: 751, column: 30, scope: !1252)
!2043 = !DILocation(line: 751, column: 2, scope: !1252)
!2044 = !DILocation(line: 751, column: 10, scope: !1252)
!2045 = !DILocation(line: 751, column: 22, scope: !1252)
!2046 = !DILocation(line: 752, column: 46, scope: !1252)
!2047 = !DILocation(line: 752, column: 22, scope: !1252)
!2048 = !DILocation(line: 752, column: 2, scope: !1252)
!2049 = !DILocation(line: 752, column: 10, scope: !1252)
!2050 = !DILocation(line: 752, column: 20, scope: !1252)
!2051 = !DILocation(line: 753, column: 53, scope: !1252)
!2052 = !DILocation(line: 753, column: 25, scope: !1252)
!2053 = !DILocation(line: 753, column: 2, scope: !1252)
!2054 = !DILocation(line: 753, column: 10, scope: !1252)
!2055 = !DILocation(line: 753, column: 23, scope: !1252)
!2056 = !DILocation(line: 754, column: 2, scope: !1252)
!2057 = !DILocation(line: 754, column: 10, scope: !1252)
!2058 = !DILocation(line: 754, column: 22, scope: !1252)
!2059 = !DILocation(line: 755, column: 49, scope: !1252)
!2060 = !DILocation(line: 755, column: 25, scope: !1252)
!2061 = !DILocation(line: 755, column: 2, scope: !1252)
!2062 = !DILocation(line: 755, column: 10, scope: !1252)
!2063 = !DILocation(line: 755, column: 23, scope: !1252)
!2064 = !DILocation(line: 756, column: 2, scope: !1252)
!2065 = !DILocation(line: 756, column: 10, scope: !1252)
!2066 = !DILocation(line: 756, column: 22, scope: !1252)
!2067 = !DILocation(line: 758, column: 34, scope: !1252)
!2068 = !DILocation(line: 758, column: 39, scope: !1252)
!2069 = !DILocation(line: 758, column: 32, scope: !1252)
!2070 = !DILocation(line: 758, column: 2, scope: !1252)
!2071 = !DILocation(line: 758, column: 10, scope: !1252)
!2072 = !DILocation(line: 758, column: 24, scope: !1252)
!2073 = !DILocation(line: 759, column: 2, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !2, line: 759, column: 2)
!2075 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 759, column: 2)
!2076 = !DILocation(line: 759, column: 2, scope: !2075)
!2077 = !DILocation(line: 760, column: 2, scope: !1252)
!2078 = !DILocation(line: 760, column: 2, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 760, column: 2)
!2080 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 760, column: 2)
!2081 = !DILocation(line: 760, column: 2, scope: !2080)
!2082 = !DILocation(line: 760, column: 2, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !2, line: 760, column: 2)
!2084 = !DILocation(line: 760, column: 2, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 760, column: 2)
!2086 = !DILocation(line: 760, column: 2, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 760, column: 2)
!2088 = !{i64 2151541229, i64 2151541258, i64 2151541304, i64 2151541362, i64 2151541416, i64 2151541470, i64 2151541525, i64 2151541556}
!2089 = !DILocation(line: 762, column: 9, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 762, column: 2)
!2091 = !DILocation(line: 762, column: 7, scope: !2090)
!2092 = !DILocation(line: 762, column: 14, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 762, column: 2)
!2094 = !DILocation(line: 762, column: 18, scope: !2093)
!2095 = !DILocation(line: 762, column: 16, scope: !2093)
!2096 = !DILocation(line: 762, column: 2, scope: !2090)
!2097 = !DILocation(line: 764, column: 4, scope: !2093)
!2098 = !DILocation(line: 764, column: 9, scope: !2093)
!2099 = !DILocation(line: 764, column: 23, scope: !2093)
!2100 = !DILocation(line: 764, column: 34, scope: !2093)
!2101 = !DILocation(line: 764, column: 36, scope: !2093)
!2102 = !DILocation(line: 763, column: 3, scope: !2093)
!2103 = !DILocation(line: 763, column: 11, scope: !2093)
!2104 = !DILocation(line: 763, column: 21, scope: !2093)
!2105 = !DILocation(line: 763, column: 24, scope: !2093)
!2106 = !DILocation(line: 762, column: 27, scope: !2093)
!2107 = !DILocation(line: 762, column: 2, scope: !2093)
!2108 = distinct !{!2108, !2096, !2109, !306, !307}
!2109 = !DILocation(line: 764, column: 64, scope: !2090)
!2110 = !DILocation(line: 766, column: 6, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 766, column: 6)
!2112 = !DILocation(line: 766, column: 12, scope: !2111)
!2113 = !DILocation(line: 766, column: 6, scope: !1252)
!2114 = !DILocation(line: 767, column: 25, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !2, line: 766, column: 42)
!2116 = !DILocation(line: 767, column: 31, scope: !2115)
!2117 = !DILocation(line: 767, column: 21, scope: !2115)
!2118 = !DILocation(line: 767, column: 9, scope: !2115)
!2119 = !DILocation(line: 768, column: 3, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !2, line: 768, column: 3)
!2121 = distinct !DILexicalBlock(scope: !2115, file: !2, line: 768, column: 3)
!2122 = !DILocation(line: 768, column: 3, scope: !2121)
!2123 = !DILocation(line: 769, column: 37, scope: !2115)
!2124 = !DILocation(line: 769, column: 36, scope: !2115)
!2125 = !DILocation(line: 769, column: 3, scope: !2115)
!2126 = !DILocation(line: 769, column: 11, scope: !2115)
!2127 = !DILocation(line: 769, column: 21, scope: !2115)
!2128 = !DILocation(line: 769, column: 28, scope: !2115)
!2129 = !DILocation(line: 769, column: 33, scope: !2115)
!2130 = !DILocation(line: 770, column: 2, scope: !2115)
!2131 = !DILocation(line: 775, column: 9, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 775, column: 2)
!2133 = !DILocation(line: 775, column: 7, scope: !2132)
!2134 = !DILocation(line: 775, column: 14, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 775, column: 2)
!2136 = !DILocation(line: 775, column: 16, scope: !2135)
!2137 = !DILocation(line: 775, column: 2, scope: !2132)
!2138 = !DILocation(line: 776, column: 9, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !2, line: 775, column: 44)
!2140 = !DILocation(line: 776, column: 15, scope: !2139)
!2141 = !DILocation(line: 776, column: 21, scope: !2139)
!2142 = !DILocation(line: 776, column: 7, scope: !2139)
!2143 = !DILocation(line: 777, column: 14, scope: !2139)
!2144 = !DILocation(line: 777, column: 19, scope: !2139)
!2145 = !DILocation(line: 777, column: 64, scope: !2139)
!2146 = !DILocation(line: 777, column: 40, scope: !2139)
!2147 = !DILocation(line: 778, column: 12, scope: !2139)
!2148 = !DILocation(line: 777, column: 12, scope: !2139)
!2149 = !DILocation(line: 779, column: 16, scope: !2139)
!2150 = !DILocation(line: 779, column: 22, scope: !2139)
!2151 = !DILocation(line: 779, column: 12, scope: !2139)
!2152 = !DILocation(line: 780, column: 28, scope: !2139)
!2153 = !DILocation(line: 780, column: 37, scope: !2139)
!2154 = !DILocation(line: 780, column: 3, scope: !2139)
!2155 = !DILocation(line: 780, column: 9, scope: !2139)
!2156 = !DILocation(line: 780, column: 23, scope: !2139)
!2157 = !DILocation(line: 780, column: 26, scope: !2139)
!2158 = !DILocation(line: 781, column: 2, scope: !2139)
!2159 = !DILocation(line: 775, column: 40, scope: !2135)
!2160 = !DILocation(line: 775, column: 2, scope: !2135)
!2161 = distinct !{!2161, !2137, !2162, !306, !307}
!2162 = !DILocation(line: 781, column: 2, scope: !2132)
!2163 = !DILocation(line: 783, column: 13, scope: !1252)
!2164 = !DILocation(line: 783, column: 18, scope: !1252)
!2165 = !DILocation(line: 783, column: 32, scope: !1252)
!2166 = !DILocation(line: 783, column: 43, scope: !1252)
!2167 = !DILocation(line: 783, column: 11, scope: !1252)
!2168 = !DILocation(line: 784, column: 15, scope: !1252)
!2169 = !DILocation(line: 784, column: 21, scope: !1252)
!2170 = !DILocation(line: 784, column: 11, scope: !1252)
!2171 = !DILocation(line: 785, column: 45, scope: !1252)
!2172 = !DILocation(line: 785, column: 54, scope: !1252)
!2173 = !DILocation(line: 785, column: 2, scope: !1252)
!2174 = !DILocation(line: 785, column: 8, scope: !1252)
!2175 = !DILocation(line: 785, column: 43, scope: !1252)
!2176 = !DILocation(line: 786, column: 2, scope: !1252)
!2177 = !DILocation(line: 787, column: 1, scope: !1252)
!2178 = distinct !DISubprogram(name: "assoc_array_insert_mid_shortcut", scope: !2, file: !2, line: 792, type: !2179, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!108, !74, !93, !483}
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198}
!2182 = !DILocalVariable(name: "edit", arg: 1, scope: !2178, file: !2, line: 792, type: !74)
!2183 = !DILocalVariable(name: "ops", arg: 2, scope: !2178, file: !2, line: 793, type: !93)
!2184 = !DILocalVariable(name: "result", arg: 3, scope: !2178, file: !2, line: 794, type: !483)
!2185 = !DILocalVariable(name: "shortcut", scope: !2178, file: !2, line: 796, type: !47)
!2186 = !DILocalVariable(name: "new_s0", scope: !2178, file: !2, line: 796, type: !47)
!2187 = !DILocalVariable(name: "new_s1", scope: !2178, file: !2, line: 796, type: !47)
!2188 = !DILocalVariable(name: "node", scope: !2178, file: !2, line: 797, type: !59)
!2189 = !DILocalVariable(name: "new_n0", scope: !2178, file: !2, line: 797, type: !59)
!2190 = !DILocalVariable(name: "side", scope: !2178, file: !2, line: 797, type: !59)
!2191 = !DILocalVariable(name: "sc_segments", scope: !2178, file: !2, line: 798, type: !46)
!2192 = !DILocalVariable(name: "dissimilarity", scope: !2178, file: !2, line: 798, type: !46)
!2193 = !DILocalVariable(name: "blank", scope: !2178, file: !2, line: 798, type: !46)
!2194 = !DILocalVariable(name: "keylen", scope: !2178, file: !2, line: 799, type: !157)
!2195 = !DILocalVariable(name: "level", scope: !2178, file: !2, line: 800, type: !45)
!2196 = !DILocalVariable(name: "sc_level", scope: !2178, file: !2, line: 800, type: !45)
!2197 = !DILocalVariable(name: "diff", scope: !2178, file: !2, line: 800, type: !45)
!2198 = !DILocalVariable(name: "sc_slot", scope: !2178, file: !2, line: 801, type: !45)
!2199 = !DILocation(line: 792, column: 70, scope: !2178)
!2200 = !DILocation(line: 793, column: 40, scope: !2178)
!2201 = !DILocation(line: 794, column: 42, scope: !2178)
!2202 = !DILocation(line: 796, column: 2, scope: !2178)
!2203 = !DILocation(line: 796, column: 31, scope: !2178)
!2204 = !DILocation(line: 796, column: 42, scope: !2178)
!2205 = !DILocation(line: 796, column: 51, scope: !2178)
!2206 = !DILocation(line: 797, column: 2, scope: !2178)
!2207 = !DILocation(line: 797, column: 27, scope: !2178)
!2208 = !DILocation(line: 797, column: 34, scope: !2178)
!2209 = !DILocation(line: 797, column: 43, scope: !2178)
!2210 = !DILocation(line: 798, column: 2, scope: !2178)
!2211 = !DILocation(line: 798, column: 16, scope: !2178)
!2212 = !DILocation(line: 798, column: 29, scope: !2178)
!2213 = !DILocation(line: 798, column: 44, scope: !2178)
!2214 = !DILocation(line: 799, column: 2, scope: !2178)
!2215 = !DILocation(line: 799, column: 9, scope: !2178)
!2216 = !DILocation(line: 800, column: 2, scope: !2178)
!2217 = !DILocation(line: 800, column: 6, scope: !2178)
!2218 = !DILocation(line: 800, column: 13, scope: !2178)
!2219 = !DILocation(line: 800, column: 23, scope: !2178)
!2220 = !DILocation(line: 801, column: 2, scope: !2178)
!2221 = !DILocation(line: 801, column: 6, scope: !2178)
!2222 = !DILocation(line: 803, column: 13, scope: !2178)
!2223 = !DILocation(line: 803, column: 21, scope: !2178)
!2224 = !DILocation(line: 803, column: 36, scope: !2178)
!2225 = !DILocation(line: 803, column: 11, scope: !2178)
!2226 = !DILocation(line: 804, column: 11, scope: !2178)
!2227 = !DILocation(line: 804, column: 19, scope: !2178)
!2228 = !DILocation(line: 804, column: 34, scope: !2178)
!2229 = !DILocation(line: 804, column: 9, scope: !2178)
!2230 = !DILocation(line: 805, column: 13, scope: !2178)
!2231 = !DILocation(line: 805, column: 21, scope: !2178)
!2232 = !DILocation(line: 805, column: 36, scope: !2178)
!2233 = !DILocation(line: 805, column: 11, scope: !2178)
!2234 = !DILocation(line: 806, column: 16, scope: !2178)
!2235 = !DILocation(line: 806, column: 24, scope: !2178)
!2236 = !DILocation(line: 806, column: 39, scope: !2178)
!2237 = !DILocation(line: 806, column: 14, scope: !2178)
!2238 = !DILocation(line: 807, column: 18, scope: !2178)
!2239 = !DILocation(line: 807, column: 26, scope: !2178)
!2240 = !DILocation(line: 807, column: 41, scope: !2178)
!2241 = !DILocation(line: 807, column: 16, scope: !2178)
!2242 = !DILocation(line: 809, column: 2, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 809, column: 2)
!2244 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 809, column: 2)
!2245 = !DILocation(line: 809, column: 2, scope: !2244)
!2246 = !DILocation(line: 818, column: 9, scope: !2178)
!2247 = !DILocation(line: 818, column: 7, scope: !2178)
!2248 = !DILocation(line: 819, column: 7, scope: !2178)
!2249 = !DILocation(line: 820, column: 10, scope: !2178)
!2250 = !DILocation(line: 820, column: 19, scope: !2178)
!2251 = !DILocation(line: 820, column: 7, scope: !2178)
!2252 = !DILocation(line: 821, column: 2, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !2, line: 821, column: 2)
!2254 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 821, column: 2)
!2255 = !DILocation(line: 821, column: 2, scope: !2254)
!2256 = !DILocation(line: 823, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 823, column: 6)
!2258 = !DILocation(line: 823, column: 17, scope: !2257)
!2259 = !DILocation(line: 823, column: 6, scope: !2178)
!2260 = !DILocation(line: 824, column: 23, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !2, line: 823, column: 31)
!2262 = !DILocation(line: 824, column: 29, scope: !2261)
!2263 = !DILocation(line: 824, column: 36, scope: !2261)
!2264 = !DILocation(line: 824, column: 3, scope: !2261)
!2265 = !DILocation(line: 824, column: 9, scope: !2261)
!2266 = !DILocation(line: 824, column: 16, scope: !2261)
!2267 = !DILocation(line: 824, column: 20, scope: !2261)
!2268 = !DILocation(line: 825, column: 2, scope: !2261)
!2269 = !DILocation(line: 825, column: 37, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2257, file: !2, line: 825, column: 13)
!2271 = !DILocation(line: 825, column: 47, scope: !2270)
!2272 = !DILocation(line: 825, column: 13, scope: !2270)
!2273 = !DILocation(line: 825, column: 13, scope: !2257)
!2274 = !DILocation(line: 826, column: 34, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2270, file: !2, line: 825, column: 62)
!2276 = !DILocation(line: 826, column: 44, scope: !2275)
!2277 = !DILocation(line: 826, column: 10, scope: !2275)
!2278 = !DILocation(line: 826, column: 8, scope: !2275)
!2279 = !DILocation(line: 827, column: 23, scope: !2275)
!2280 = !DILocation(line: 827, column: 29, scope: !2275)
!2281 = !DILocation(line: 827, column: 35, scope: !2275)
!2282 = !DILocation(line: 827, column: 45, scope: !2275)
!2283 = !DILocation(line: 827, column: 3, scope: !2275)
!2284 = !DILocation(line: 827, column: 9, scope: !2275)
!2285 = !DILocation(line: 827, column: 16, scope: !2275)
!2286 = !DILocation(line: 827, column: 20, scope: !2275)
!2287 = !DILocation(line: 828, column: 2, scope: !2275)
!2288 = !DILocation(line: 829, column: 3, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2270, file: !2, line: 828, column: 9)
!2290 = !DILocation(line: 829, column: 3, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2289, file: !2, line: 829, column: 3)
!2292 = !DILocation(line: 829, column: 3, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2291, file: !2, line: 829, column: 3)
!2294 = !DILocation(line: 829, column: 3, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2291, file: !2, line: 829, column: 3)
!2296 = !{i64 2151543658, i64 2151543687, i64 2151543733, i64 2151543791, i64 2151543845, i64 2151543899, i64 2151543954, i64 2151543985}
!2297 = !DILocation(line: 832, column: 54, scope: !2178)
!2298 = !DILocation(line: 832, column: 26, scope: !2178)
!2299 = !DILocation(line: 832, column: 2, scope: !2178)
!2300 = !DILocation(line: 832, column: 8, scope: !2178)
!2301 = !DILocation(line: 832, column: 24, scope: !2178)
!2302 = !DILocation(line: 835, column: 11, scope: !2178)
!2303 = !DILocation(line: 835, column: 9, scope: !2178)
!2304 = !DILocation(line: 836, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 836, column: 6)
!2306 = !DILocation(line: 836, column: 6, scope: !2178)
!2307 = !DILocation(line: 837, column: 3, scope: !2305)
!2308 = !DILocation(line: 838, column: 46, scope: !2178)
!2309 = !DILocation(line: 838, column: 22, scope: !2178)
!2310 = !DILocation(line: 838, column: 2, scope: !2178)
!2311 = !DILocation(line: 838, column: 8, scope: !2178)
!2312 = !DILocation(line: 838, column: 20, scope: !2178)
!2313 = !DILocation(line: 839, column: 26, scope: !2178)
!2314 = !DILocation(line: 839, column: 2, scope: !2178)
!2315 = !DILocation(line: 839, column: 8, scope: !2178)
!2316 = !DILocation(line: 839, column: 24, scope: !2178)
!2317 = !DILocation(line: 845, column: 8, scope: !2178)
!2318 = !DILocation(line: 846, column: 6, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 846, column: 6)
!2320 = !DILocation(line: 846, column: 13, scope: !2319)
!2321 = !DILocation(line: 846, column: 11, scope: !2319)
!2322 = !DILocation(line: 846, column: 6, scope: !2178)
!2323 = !DILocation(line: 847, column: 3, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !2, line: 847, column: 3)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 847, column: 3)
!2326 = distinct !DILexicalBlock(scope: !2319, file: !2, line: 846, column: 20)
!2327 = !DILocation(line: 847, column: 3, scope: !2325)
!2328 = !DILocation(line: 848, column: 12, scope: !2326)
!2329 = !DILocation(line: 848, column: 10, scope: !2326)
!2330 = !DILocation(line: 849, column: 10, scope: !2326)
!2331 = !DILocation(line: 851, column: 20, scope: !2326)
!2332 = !DILocation(line: 851, column: 12, scope: !2326)
!2333 = !DILocation(line: 851, column: 10, scope: !2326)
!2334 = !DILocation(line: 853, column: 8, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 853, column: 7)
!2336 = !DILocation(line: 853, column: 7, scope: !2326)
!2337 = !DILocation(line: 854, column: 4, scope: !2335)
!2338 = !DILocation(line: 855, column: 51, scope: !2326)
!2339 = !DILocation(line: 855, column: 23, scope: !2326)
!2340 = !DILocation(line: 855, column: 3, scope: !2326)
!2341 = !DILocation(line: 855, column: 9, scope: !2326)
!2342 = !DILocation(line: 855, column: 21, scope: !2326)
!2343 = !DILocation(line: 856, column: 49, scope: !2326)
!2344 = !DILocation(line: 856, column: 21, scope: !2326)
!2345 = !DILocation(line: 856, column: 3, scope: !2326)
!2346 = !DILocation(line: 856, column: 9, scope: !2326)
!2347 = !DILocation(line: 856, column: 16, scope: !2326)
!2348 = !DILocation(line: 856, column: 19, scope: !2326)
!2349 = !DILocation(line: 857, column: 26, scope: !2326)
!2350 = !DILocation(line: 857, column: 36, scope: !2326)
!2351 = !DILocation(line: 857, column: 3, scope: !2326)
!2352 = !DILocation(line: 857, column: 11, scope: !2326)
!2353 = !DILocation(line: 857, column: 24, scope: !2326)
!2354 = !DILocation(line: 858, column: 25, scope: !2326)
!2355 = !DILocation(line: 858, column: 35, scope: !2326)
!2356 = !DILocation(line: 858, column: 3, scope: !2326)
!2357 = !DILocation(line: 858, column: 11, scope: !2326)
!2358 = !DILocation(line: 858, column: 23, scope: !2326)
!2359 = !DILocation(line: 859, column: 47, scope: !2326)
!2360 = !DILocation(line: 859, column: 23, scope: !2326)
!2361 = !DILocation(line: 859, column: 3, scope: !2326)
!2362 = !DILocation(line: 859, column: 11, scope: !2326)
!2363 = !DILocation(line: 859, column: 21, scope: !2326)
!2364 = !DILocation(line: 860, column: 27, scope: !2326)
!2365 = !DILocation(line: 860, column: 3, scope: !2326)
!2366 = !DILocation(line: 860, column: 11, scope: !2326)
!2367 = !DILocation(line: 860, column: 25, scope: !2326)
!2368 = !DILocation(line: 862, column: 54, scope: !2326)
!2369 = !DILocation(line: 862, column: 26, scope: !2326)
!2370 = !DILocation(line: 862, column: 3, scope: !2326)
!2371 = !DILocation(line: 862, column: 11, scope: !2326)
!2372 = !DILocation(line: 862, column: 24, scope: !2326)
!2373 = !DILocation(line: 863, column: 3, scope: !2326)
!2374 = !DILocation(line: 863, column: 11, scope: !2326)
!2375 = !DILocation(line: 863, column: 23, scope: !2326)
!2376 = !DILocation(line: 865, column: 10, scope: !2326)
!2377 = !DILocation(line: 865, column: 18, scope: !2326)
!2378 = !DILocation(line: 865, column: 3, scope: !2326)
!2379 = !DILocation(line: 865, column: 29, scope: !2326)
!2380 = !DILocation(line: 865, column: 39, scope: !2326)
!2381 = !DILocation(line: 866, column: 10, scope: !2326)
!2382 = !DILocation(line: 868, column: 25, scope: !2326)
!2383 = !DILocation(line: 868, column: 30, scope: !2326)
!2384 = !DILocation(line: 868, column: 21, scope: !2326)
!2385 = !DILocation(line: 868, column: 9, scope: !2326)
!2386 = !DILocation(line: 869, column: 3, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !2, line: 869, column: 3)
!2388 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 869, column: 3)
!2389 = !DILocation(line: 869, column: 3, scope: !2388)
!2390 = !DILocation(line: 870, column: 37, scope: !2326)
!2391 = !DILocation(line: 870, column: 36, scope: !2326)
!2392 = !DILocation(line: 870, column: 3, scope: !2326)
!2393 = !DILocation(line: 870, column: 11, scope: !2326)
!2394 = !DILocation(line: 870, column: 21, scope: !2326)
!2395 = !DILocation(line: 870, column: 28, scope: !2326)
!2396 = !DILocation(line: 870, column: 33, scope: !2326)
!2397 = !DILocation(line: 871, column: 2, scope: !2326)
!2398 = !DILocation(line: 872, column: 3, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 872, column: 3)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !2, line: 872, column: 3)
!2401 = distinct !DILexicalBlock(scope: !2319, file: !2, line: 871, column: 9)
!2402 = !DILocation(line: 872, column: 3, scope: !2400)
!2403 = !DILocation(line: 873, column: 45, scope: !2401)
!2404 = !DILocation(line: 873, column: 21, scope: !2401)
!2405 = !DILocation(line: 873, column: 3, scope: !2401)
!2406 = !DILocation(line: 873, column: 9, scope: !2401)
!2407 = !DILocation(line: 873, column: 16, scope: !2401)
!2408 = !DILocation(line: 873, column: 19, scope: !2401)
!2409 = !DILocation(line: 874, column: 26, scope: !2401)
!2410 = !DILocation(line: 874, column: 36, scope: !2401)
!2411 = !DILocation(line: 874, column: 3, scope: !2401)
!2412 = !DILocation(line: 874, column: 11, scope: !2401)
!2413 = !DILocation(line: 874, column: 24, scope: !2401)
!2414 = !DILocation(line: 875, column: 25, scope: !2401)
!2415 = !DILocation(line: 875, column: 35, scope: !2401)
!2416 = !DILocation(line: 875, column: 3, scope: !2401)
!2417 = !DILocation(line: 875, column: 11, scope: !2401)
!2418 = !DILocation(line: 875, column: 23, scope: !2401)
!2419 = !DILocation(line: 878, column: 33, scope: !2178)
!2420 = !DILocation(line: 878, column: 43, scope: !2178)
!2421 = !DILocation(line: 878, column: 9, scope: !2178)
!2422 = !DILocation(line: 878, column: 7, scope: !2178)
!2423 = !DILocation(line: 879, column: 32, scope: !2178)
!2424 = !DILocation(line: 879, column: 38, scope: !2178)
!2425 = !DILocation(line: 879, column: 2, scope: !2178)
!2426 = !DILocation(line: 879, column: 10, scope: !2178)
!2427 = !DILocation(line: 879, column: 30, scope: !2178)
!2428 = !DILocation(line: 884, column: 12, scope: !2178)
!2429 = !DILocation(line: 884, column: 28, scope: !2178)
!2430 = !DILocation(line: 884, column: 33, scope: !2178)
!2431 = !DILocation(line: 884, column: 24, scope: !2178)
!2432 = !DILocation(line: 884, column: 10, scope: !2178)
!2433 = !DILocation(line: 885, column: 10, scope: !2178)
!2434 = !DILocation(line: 887, column: 2, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !2, line: 887, column: 2)
!2436 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 887, column: 2)
!2437 = !DILocation(line: 887, column: 2, scope: !2436)
!2438 = !DILocation(line: 895, column: 10, scope: !2178)
!2439 = !DILocation(line: 895, column: 15, scope: !2178)
!2440 = !DILocation(line: 895, column: 8, scope: !2178)
!2441 = !DILocation(line: 896, column: 6, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 896, column: 6)
!2443 = !DILocation(line: 896, column: 14, scope: !2442)
!2444 = !DILocation(line: 896, column: 24, scope: !2442)
!2445 = !DILocation(line: 896, column: 12, scope: !2442)
!2446 = !DILocation(line: 896, column: 6, scope: !2178)
!2447 = !DILocation(line: 897, column: 3, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !2, line: 897, column: 3)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !2, line: 897, column: 3)
!2450 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 896, column: 39)
!2451 = !DILocation(line: 897, column: 3, scope: !2449)
!2452 = !DILocation(line: 898, column: 12, scope: !2450)
!2453 = !DILocation(line: 898, column: 10, scope: !2450)
!2454 = !DILocation(line: 899, column: 10, scope: !2450)
!2455 = !DILocation(line: 901, column: 20, scope: !2450)
!2456 = !DILocation(line: 901, column: 12, scope: !2450)
!2457 = !DILocation(line: 901, column: 10, scope: !2450)
!2458 = !DILocation(line: 903, column: 8, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2450, file: !2, line: 903, column: 7)
!2460 = !DILocation(line: 903, column: 7, scope: !2450)
!2461 = !DILocation(line: 904, column: 4, scope: !2459)
!2462 = !DILocation(line: 905, column: 51, scope: !2450)
!2463 = !DILocation(line: 905, column: 23, scope: !2450)
!2464 = !DILocation(line: 905, column: 3, scope: !2450)
!2465 = !DILocation(line: 905, column: 9, scope: !2450)
!2466 = !DILocation(line: 905, column: 21, scope: !2450)
!2467 = !DILocation(line: 907, column: 50, scope: !2450)
!2468 = !DILocation(line: 907, column: 26, scope: !2450)
!2469 = !DILocation(line: 907, column: 3, scope: !2450)
!2470 = !DILocation(line: 907, column: 11, scope: !2450)
!2471 = !DILocation(line: 907, column: 24, scope: !2450)
!2472 = !DILocation(line: 908, column: 25, scope: !2450)
!2473 = !DILocation(line: 908, column: 3, scope: !2450)
!2474 = !DILocation(line: 908, column: 11, scope: !2450)
!2475 = !DILocation(line: 908, column: 23, scope: !2450)
!2476 = !DILocation(line: 909, column: 23, scope: !2450)
!2477 = !DILocation(line: 909, column: 33, scope: !2450)
!2478 = !DILocation(line: 909, column: 3, scope: !2450)
!2479 = !DILocation(line: 909, column: 11, scope: !2450)
!2480 = !DILocation(line: 909, column: 21, scope: !2450)
!2481 = !DILocation(line: 910, column: 27, scope: !2450)
!2482 = !DILocation(line: 910, column: 37, scope: !2450)
!2483 = !DILocation(line: 910, column: 3, scope: !2450)
!2484 = !DILocation(line: 910, column: 11, scope: !2450)
!2485 = !DILocation(line: 910, column: 25, scope: !2450)
!2486 = !DILocation(line: 912, column: 56, scope: !2450)
!2487 = !DILocation(line: 912, column: 28, scope: !2450)
!2488 = !DILocation(line: 912, column: 3, scope: !2450)
!2489 = !DILocation(line: 912, column: 11, scope: !2450)
!2490 = !DILocation(line: 912, column: 17, scope: !2450)
!2491 = !DILocation(line: 912, column: 26, scope: !2450)
!2492 = !DILocation(line: 914, column: 10, scope: !2450)
!2493 = !DILocation(line: 914, column: 18, scope: !2450)
!2494 = !DILocation(line: 914, column: 3, scope: !2450)
!2495 = !DILocation(line: 914, column: 29, scope: !2450)
!2496 = !DILocation(line: 914, column: 39, scope: !2450)
!2497 = !DILocation(line: 915, column: 10, scope: !2450)
!2498 = !DILocation(line: 917, column: 23, scope: !2450)
!2499 = !DILocation(line: 917, column: 29, scope: !2450)
!2500 = !DILocation(line: 917, column: 3, scope: !2450)
!2501 = !DILocation(line: 917, column: 9, scope: !2450)
!2502 = !DILocation(line: 917, column: 16, scope: !2450)
!2503 = !DILocation(line: 917, column: 20, scope: !2450)
!2504 = !DILocation(line: 918, column: 49, scope: !2450)
!2505 = !DILocation(line: 918, column: 21, scope: !2450)
!2506 = !DILocation(line: 918, column: 3, scope: !2450)
!2507 = !DILocation(line: 918, column: 9, scope: !2450)
!2508 = !DILocation(line: 918, column: 16, scope: !2450)
!2509 = !DILocation(line: 918, column: 19, scope: !2450)
!2510 = !DILocation(line: 919, column: 2, scope: !2450)
!2511 = !DILocation(line: 920, column: 3, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !2, line: 920, column: 3)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !2, line: 920, column: 3)
!2514 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 919, column: 9)
!2515 = !DILocation(line: 920, column: 3, scope: !2513)
!2516 = !DILocation(line: 927, column: 28, scope: !2514)
!2517 = !DILocation(line: 927, column: 38, scope: !2514)
!2518 = !DILocation(line: 927, column: 3, scope: !2514)
!2519 = !DILocation(line: 927, column: 11, scope: !2514)
!2520 = !DILocation(line: 927, column: 17, scope: !2514)
!2521 = !DILocation(line: 927, column: 26, scope: !2514)
!2522 = !DILocation(line: 928, column: 33, scope: !2514)
!2523 = !DILocation(line: 928, column: 39, scope: !2514)
!2524 = !DILocation(line: 928, column: 3, scope: !2514)
!2525 = !DILocation(line: 928, column: 9, scope: !2514)
!2526 = !DILocation(line: 928, column: 28, scope: !2514)
!2527 = !DILocation(line: 928, column: 30, scope: !2514)
!2528 = !DILocation(line: 929, column: 33, scope: !2514)
!2529 = !DILocation(line: 929, column: 3, scope: !2514)
!2530 = !DILocation(line: 929, column: 9, scope: !2514)
!2531 = !DILocation(line: 929, column: 28, scope: !2514)
!2532 = !DILocation(line: 929, column: 31, scope: !2514)
!2533 = !DILocation(line: 930, column: 23, scope: !2514)
!2534 = !DILocation(line: 930, column: 29, scope: !2514)
!2535 = !DILocation(line: 930, column: 3, scope: !2514)
!2536 = !DILocation(line: 930, column: 9, scope: !2514)
!2537 = !DILocation(line: 930, column: 16, scope: !2514)
!2538 = !DILocation(line: 930, column: 20, scope: !2514)
!2539 = !DILocation(line: 931, column: 45, scope: !2514)
!2540 = !DILocation(line: 931, column: 21, scope: !2514)
!2541 = !DILocation(line: 931, column: 3, scope: !2514)
!2542 = !DILocation(line: 931, column: 9, scope: !2514)
!2543 = !DILocation(line: 931, column: 16, scope: !2514)
!2544 = !DILocation(line: 931, column: 19, scope: !2514)
!2545 = !DILocation(line: 935, column: 6, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 935, column: 6)
!2547 = !DILocation(line: 935, column: 14, scope: !2546)
!2548 = !DILocation(line: 935, column: 6, scope: !2178)
!2549 = !DILocation(line: 936, column: 19, scope: !2546)
!2550 = !DILocation(line: 936, column: 27, scope: !2546)
!2551 = !DILocation(line: 936, column: 3, scope: !2546)
!2552 = !DILocation(line: 936, column: 9, scope: !2546)
!2553 = !DILocation(line: 936, column: 16, scope: !2546)
!2554 = !DILocation(line: 938, column: 19, scope: !2546)
!2555 = !DILocation(line: 938, column: 27, scope: !2546)
!2556 = !DILocation(line: 938, column: 3, scope: !2546)
!2557 = !DILocation(line: 938, column: 9, scope: !2546)
!2558 = !DILocation(line: 938, column: 16, scope: !2546)
!2559 = !DILocation(line: 940, column: 2, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !2, line: 940, column: 2)
!2561 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 940, column: 2)
!2562 = !DILocation(line: 940, column: 2, scope: !2561)
!2563 = !DILocation(line: 941, column: 9, scope: !2178)
!2564 = !DILocation(line: 941, column: 2, scope: !2178)
!2565 = !DILocation(line: 942, column: 1, scope: !2178)
!2566 = distinct !DISubprogram(name: "assoc_array_cancel_edit", scope: !2, file: !2, line: 1409, type: !2567, scopeLine: 1410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{null, !74}
!2569 = !{!2570, !2571, !2572}
!2570 = !DILocalVariable(name: "edit", arg: 1, scope: !2566, file: !2, line: 1409, type: !74)
!2571 = !DILocalVariable(name: "ptr", scope: !2566, file: !2, line: 1411, type: !39)
!2572 = !DILocalVariable(name: "i", scope: !2566, file: !2, line: 1412, type: !45)
!2573 = !DILocation(line: 1409, column: 55, scope: !2566)
!2574 = !DILocation(line: 1411, column: 2, scope: !2566)
!2575 = !DILocation(line: 1411, column: 26, scope: !2566)
!2576 = !DILocation(line: 1412, column: 2, scope: !2566)
!2577 = !DILocation(line: 1412, column: 6, scope: !2566)
!2578 = !DILocation(line: 1414, column: 2, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !2, line: 1414, column: 2)
!2580 = distinct !DILexicalBlock(scope: !2566, file: !2, line: 1414, column: 2)
!2581 = !DILocation(line: 1414, column: 2, scope: !2580)
!2582 = !DILocation(line: 1417, column: 9, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2566, file: !2, line: 1417, column: 2)
!2584 = !DILocation(line: 1417, column: 7, scope: !2583)
!2585 = !DILocation(line: 1417, column: 14, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2583, file: !2, line: 1417, column: 2)
!2587 = !DILocation(line: 1417, column: 16, scope: !2586)
!2588 = !DILocation(line: 1417, column: 2, scope: !2583)
!2589 = !DILocation(line: 1418, column: 9, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2586, file: !2, line: 1417, column: 51)
!2591 = !DILocation(line: 1418, column: 15, scope: !2590)
!2592 = !DILocation(line: 1418, column: 24, scope: !2590)
!2593 = !DILocation(line: 1418, column: 7, scope: !2590)
!2594 = !DILocation(line: 1419, column: 7, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 1419, column: 7)
!2596 = !DILocation(line: 1419, column: 7, scope: !2590)
!2597 = !DILocation(line: 1420, column: 32, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 1420, column: 8)
!2599 = distinct !DILexicalBlock(scope: !2595, file: !2, line: 1419, column: 12)
!2600 = !DILocation(line: 1420, column: 8, scope: !2598)
!2601 = !DILocation(line: 1420, column: 8, scope: !2599)
!2602 = !DILocation(line: 1421, column: 35, scope: !2598)
!2603 = !DILocation(line: 1421, column: 11, scope: !2598)
!2604 = !DILocation(line: 1421, column: 5, scope: !2598)
!2605 = !DILocation(line: 1423, column: 39, scope: !2598)
!2606 = !DILocation(line: 1423, column: 11, scope: !2598)
!2607 = !DILocation(line: 1423, column: 5, scope: !2598)
!2608 = !DILocation(line: 1424, column: 3, scope: !2599)
!2609 = !DILocation(line: 1425, column: 2, scope: !2590)
!2610 = !DILocation(line: 1417, column: 47, scope: !2586)
!2611 = !DILocation(line: 1417, column: 2, scope: !2586)
!2612 = distinct !{!2612, !2588, !2613, !306, !307}
!2613 = !DILocation(line: 1425, column: 2, scope: !2583)
!2614 = !DILocation(line: 1426, column: 8, scope: !2566)
!2615 = !DILocation(line: 1426, column: 2, scope: !2566)
!2616 = !DILocation(line: 1427, column: 1, scope: !2566)
!2617 = distinct !DISubprogram(name: "assoc_array_insert_set_object", scope: !2, file: !2, line: 1030, type: !2618, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{null, !74, !42}
!2620 = !{!2621, !2622}
!2621 = !DILocalVariable(name: "edit", arg: 1, scope: !2617, file: !2, line: 1030, type: !74)
!2622 = !DILocalVariable(name: "object", arg: 2, scope: !2617, file: !2, line: 1030, type: !42)
!2623 = !DILocation(line: 1030, column: 61, scope: !2617)
!2624 = !DILocation(line: 1030, column: 73, scope: !2617)
!2625 = !DILocation(line: 1032, column: 2, scope: !2617)
!2626 = !DILocation(line: 1032, column: 2, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !2, line: 1032, column: 2)
!2628 = distinct !DILexicalBlock(scope: !2617, file: !2, line: 1032, column: 2)
!2629 = !DILocation(line: 1032, column: 2, scope: !2628)
!2630 = !DILocation(line: 1032, column: 2, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2627, file: !2, line: 1032, column: 2)
!2632 = !DILocation(line: 1032, column: 2, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2631, file: !2, line: 1032, column: 2)
!2634 = !DILocation(line: 1032, column: 2, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !2, line: 1032, column: 2)
!2636 = !{i64 2151556911, i64 2151556940, i64 2151556986, i64 2151557044, i64 2151557098, i64 2151557152, i64 2151557207, i64 2151557238}
!2637 = !DILocation(line: 1033, column: 39, scope: !2617)
!2638 = !DILocation(line: 1033, column: 15, scope: !2617)
!2639 = !DILocation(line: 1033, column: 2, scope: !2617)
!2640 = !DILocation(line: 1033, column: 8, scope: !2617)
!2641 = !DILocation(line: 1033, column: 13, scope: !2617)
!2642 = !DILocation(line: 1034, column: 1, scope: !2617)
!2643 = distinct !DISubprogram(name: "assoc_array_delete", scope: !2, file: !2, line: 1078, type: !2644, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!74, !87, !93, !101}
!2646 = !{!2647, !2648, !2649, !2650, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2668, !2669, !2670, !2671, !2674, !2675, !2682, !2685}
!2647 = !DILocalVariable(name: "array", arg: 1, scope: !2643, file: !2, line: 1078, type: !87)
!2648 = !DILocalVariable(name: "ops", arg: 2, scope: !2643, file: !2, line: 1079, type: !93)
!2649 = !DILocalVariable(name: "index_key", arg: 3, scope: !2643, file: !2, line: 1080, type: !101)
!2650 = !DILocalVariable(name: "collapse", scope: !2643, file: !2, line: 1082, type: !2651)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_delete_collapse_context", file: !2, line: 1036, size: 192, elements: !2652)
!2652 = !{!2653, !2654, !2655}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2651, file: !2, line: 1037, baseType: !59, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "skip_leaf", scope: !2651, file: !2, line: 1038, baseType: !101, size: 64, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2651, file: !2, line: 1039, baseType: !45, size: 32, offset: 128)
!2656 = !DILocalVariable(name: "result", scope: !2643, file: !2, line: 1083, type: !397)
!2657 = !DILocalVariable(name: "node", scope: !2643, file: !2, line: 1084, type: !59)
!2658 = !DILocalVariable(name: "new_n0", scope: !2643, file: !2, line: 1084, type: !59)
!2659 = !DILocalVariable(name: "edit", scope: !2643, file: !2, line: 1085, type: !74)
!2660 = !DILocalVariable(name: "ptr", scope: !2643, file: !2, line: 1086, type: !39)
!2661 = !DILocalVariable(name: "has_meta", scope: !2643, file: !2, line: 1087, type: !108)
!2662 = !DILocalVariable(name: "slot", scope: !2643, file: !2, line: 1088, type: !45)
!2663 = !DILocalVariable(name: "i", scope: !2643, file: !2, line: 1088, type: !45)
!2664 = !DILabel(scope: !2643, name: "found_leaf", file: !2, line: 1124)
!2665 = !DILocalVariable(name: "parent", scope: !2666, file: !2, line: 1158, type: !59)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !2, line: 1157, column: 60)
!2667 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 1157, column: 6)
!2668 = !DILocalVariable(name: "grandparent", scope: !2666, file: !2, line: 1158, type: !59)
!2669 = !DILocalVariable(name: "ptr", scope: !2666, file: !2, line: 1159, type: !39)
!2670 = !DILabel(scope: !2666, name: "collapse_up", file: !2, line: 1181)
!2671 = !DILocalVariable(name: "s", scope: !2672, file: !2, line: 1188, type: !47)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !2, line: 1187, column: 41)
!2673 = distinct !DILexicalBlock(scope: !2666, file: !2, line: 1187, column: 7)
!2674 = !DILabel(scope: !2666, name: "do_collapse", file: !2, line: 1200)
!2675 = !DILocalVariable(name: "p", scope: !2676, file: !2, line: 1234, type: !59)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !2, line: 1233, column: 60)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !2, line: 1233, column: 15)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !2, line: 1231, column: 15)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !2, line: 1229, column: 8)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !2, line: 1205, column: 35)
!2681 = distinct !DILexicalBlock(scope: !2666, file: !2, line: 1205, column: 7)
!2682 = !DILocalVariable(name: "s", scope: !2683, file: !2, line: 1238, type: !47)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !2, line: 1237, column: 64)
!2684 = distinct !DILexicalBlock(scope: !2677, file: !2, line: 1237, column: 15)
!2685 = !DILabel(scope: !2643, name: "enomem", file: !2, line: 1249)
!2686 = !DILocation(line: 1078, column: 65, scope: !2643)
!2687 = !DILocation(line: 1079, column: 40, scope: !2643)
!2688 = !DILocation(line: 1080, column: 22, scope: !2643)
!2689 = !DILocation(line: 1082, column: 2, scope: !2643)
!2690 = !DILocation(line: 1082, column: 45, scope: !2643)
!2691 = !DILocation(line: 1083, column: 2, scope: !2643)
!2692 = !DILocation(line: 1083, column: 33, scope: !2643)
!2693 = !DILocation(line: 1084, column: 2, scope: !2643)
!2694 = !DILocation(line: 1084, column: 27, scope: !2643)
!2695 = !DILocation(line: 1084, column: 34, scope: !2643)
!2696 = !DILocation(line: 1085, column: 2, scope: !2643)
!2697 = !DILocation(line: 1085, column: 27, scope: !2643)
!2698 = !DILocation(line: 1086, column: 2, scope: !2643)
!2699 = !DILocation(line: 1086, column: 26, scope: !2643)
!2700 = !DILocation(line: 1087, column: 2, scope: !2643)
!2701 = !DILocation(line: 1087, column: 7, scope: !2643)
!2702 = !DILocation(line: 1088, column: 2, scope: !2643)
!2703 = !DILocation(line: 1088, column: 6, scope: !2643)
!2704 = !DILocation(line: 1088, column: 12, scope: !2643)
!2705 = !DILocation(line: 1090, column: 2, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !2, line: 1090, column: 2)
!2707 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 1090, column: 2)
!2708 = !DILocation(line: 1090, column: 2, scope: !2707)
!2709 = !DILocation(line: 1092, column: 9, scope: !2643)
!2710 = !DILocation(line: 1092, column: 7, scope: !2643)
!2711 = !DILocation(line: 1093, column: 7, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 1093, column: 6)
!2713 = !DILocation(line: 1093, column: 6, scope: !2643)
!2714 = !DILocation(line: 1094, column: 10, scope: !2712)
!2715 = !DILocation(line: 1094, column: 3, scope: !2712)
!2716 = !DILocation(line: 1095, column: 16, scope: !2643)
!2717 = !DILocation(line: 1095, column: 2, scope: !2643)
!2718 = !DILocation(line: 1095, column: 8, scope: !2643)
!2719 = !DILocation(line: 1095, column: 14, scope: !2643)
!2720 = !DILocation(line: 1096, column: 14, scope: !2643)
!2721 = !DILocation(line: 1096, column: 2, scope: !2643)
!2722 = !DILocation(line: 1096, column: 8, scope: !2643)
!2723 = !DILocation(line: 1096, column: 12, scope: !2643)
!2724 = !DILocation(line: 1097, column: 2, scope: !2643)
!2725 = !DILocation(line: 1097, column: 8, scope: !2643)
!2726 = !DILocation(line: 1097, column: 24, scope: !2643)
!2727 = !DILocation(line: 1099, column: 27, scope: !2643)
!2728 = !DILocation(line: 1099, column: 34, scope: !2643)
!2729 = !DILocation(line: 1099, column: 39, scope: !2643)
!2730 = !DILocation(line: 1099, column: 10, scope: !2643)
!2731 = !DILocation(line: 1099, column: 2, scope: !2643)
!2732 = !DILocation(line: 1104, column: 3, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !2, line: 1104, column: 3)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !2, line: 1104, column: 3)
!2735 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 1099, column: 60)
!2736 = !DILocation(line: 1104, column: 3, scope: !2734)
!2737 = !DILocation(line: 1105, column: 17, scope: !2735)
!2738 = !DILocation(line: 1105, column: 31, scope: !2735)
!2739 = !DILocation(line: 1105, column: 8, scope: !2735)
!2740 = !DILocation(line: 1107, column: 13, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2735, file: !2, line: 1107, column: 3)
!2742 = !DILocation(line: 1107, column: 8, scope: !2741)
!2743 = !DILocation(line: 1107, column: 18, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2741, file: !2, line: 1107, column: 3)
!2745 = !DILocation(line: 1107, column: 23, scope: !2744)
!2746 = !DILocation(line: 1107, column: 3, scope: !2741)
!2747 = !DILocation(line: 1108, column: 10, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2744, file: !2, line: 1107, column: 54)
!2749 = !DILocation(line: 1108, column: 16, scope: !2748)
!2750 = !DILocation(line: 1108, column: 22, scope: !2748)
!2751 = !DILocation(line: 1108, column: 8, scope: !2748)
!2752 = !DILocation(line: 1109, column: 8, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 1109, column: 8)
!2754 = !DILocation(line: 1109, column: 12, scope: !2753)
!2755 = !DILocation(line: 1110, column: 32, scope: !2753)
!2756 = !DILocation(line: 1110, column: 8, scope: !2753)
!2757 = !DILocation(line: 1110, column: 37, scope: !2753)
!2758 = !DILocation(line: 1111, column: 8, scope: !2753)
!2759 = !DILocation(line: 1111, column: 13, scope: !2753)
!2760 = !DILocation(line: 1111, column: 52, scope: !2753)
!2761 = !DILocation(line: 1111, column: 28, scope: !2753)
!2762 = !DILocation(line: 1112, column: 7, scope: !2753)
!2763 = !DILocation(line: 1109, column: 8, scope: !2748)
!2764 = !DILocation(line: 1113, column: 5, scope: !2753)
!2765 = !DILocation(line: 1114, column: 3, scope: !2748)
!2766 = !DILocation(line: 1107, column: 50, scope: !2744)
!2767 = !DILocation(line: 1107, column: 3, scope: !2744)
!2768 = distinct !{!2768, !2746, !2769, !306, !307}
!2769 = !DILocation(line: 1114, column: 3, scope: !2741)
!2770 = !DILocation(line: 1117, column: 2, scope: !2735)
!2771 = !DILocation(line: 1119, column: 27, scope: !2735)
!2772 = !DILocation(line: 1119, column: 3, scope: !2735)
!2773 = !DILocation(line: 1120, column: 3, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !2, line: 1120, column: 3)
!2775 = distinct !DILexicalBlock(scope: !2735, file: !2, line: 1120, column: 3)
!2776 = !DILocation(line: 1120, column: 3, scope: !2775)
!2777 = !DILocation(line: 1121, column: 3, scope: !2735)
!2778 = !DILocation(line: 1124, column: 1, scope: !2643)
!2779 = !DILocation(line: 1125, column: 2, scope: !2643)
!2780 = !DILocation(line: 1125, column: 2, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !2, line: 1125, column: 2)
!2782 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 1125, column: 2)
!2783 = !DILocation(line: 1125, column: 2, scope: !2782)
!2784 = !DILocation(line: 1125, column: 2, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !2, line: 1125, column: 2)
!2786 = !DILocation(line: 1125, column: 2, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2785, file: !2, line: 1125, column: 2)
!2788 = !DILocation(line: 1125, column: 2, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2785, file: !2, line: 1125, column: 2)
!2790 = !{i64 2151559788, i64 2151559817, i64 2151559863, i64 2151559921, i64 2151559975, i64 2151560029, i64 2151560084, i64 2151560115}
!2791 = !DILocation(line: 1130, column: 20, scope: !2643)
!2792 = !DILocation(line: 1130, column: 26, scope: !2643)
!2793 = !DILocation(line: 1130, column: 32, scope: !2643)
!2794 = !DILocation(line: 1130, column: 2, scope: !2643)
!2795 = !DILocation(line: 1130, column: 8, scope: !2643)
!2796 = !DILocation(line: 1130, column: 18, scope: !2643)
!2797 = !DILocation(line: 1131, column: 22, scope: !2643)
!2798 = !DILocation(line: 1131, column: 28, scope: !2643)
!2799 = !DILocation(line: 1131, column: 34, scope: !2643)
!2800 = !DILocation(line: 1131, column: 2, scope: !2643)
!2801 = !DILocation(line: 1131, column: 8, scope: !2643)
!2802 = !DILocation(line: 1131, column: 15, scope: !2643)
!2803 = !DILocation(line: 1131, column: 19, scope: !2643)
!2804 = !DILocation(line: 1132, column: 2, scope: !2643)
!2805 = !DILocation(line: 1132, column: 8, scope: !2643)
!2806 = !DILocation(line: 1132, column: 15, scope: !2643)
!2807 = !DILocation(line: 1132, column: 18, scope: !2643)
!2808 = !DILocation(line: 1133, column: 26, scope: !2643)
!2809 = !DILocation(line: 1133, column: 2, scope: !2643)
!2810 = !DILocation(line: 1133, column: 8, scope: !2643)
!2811 = !DILocation(line: 1133, column: 24, scope: !2643)
!2812 = !DILocation(line: 1138, column: 6, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 1138, column: 6)
!2814 = !DILocation(line: 1138, column: 13, scope: !2813)
!2815 = !DILocation(line: 1138, column: 31, scope: !2813)
!2816 = !DILocation(line: 1138, column: 6, scope: !2643)
!2817 = !DILocation(line: 1139, column: 23, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2813, file: !2, line: 1138, column: 37)
!2819 = !DILocation(line: 1139, column: 30, scope: !2818)
!2820 = !DILocation(line: 1139, column: 3, scope: !2818)
!2821 = !DILocation(line: 1139, column: 9, scope: !2818)
!2822 = !DILocation(line: 1139, column: 16, scope: !2818)
!2823 = !DILocation(line: 1139, column: 20, scope: !2818)
!2824 = !DILocation(line: 1140, column: 3, scope: !2818)
!2825 = !DILocation(line: 1140, column: 9, scope: !2818)
!2826 = !DILocation(line: 1140, column: 16, scope: !2818)
!2827 = !DILocation(line: 1140, column: 19, scope: !2818)
!2828 = !DILocation(line: 1141, column: 3, scope: !2818)
!2829 = !DILocation(line: 1141, column: 9, scope: !2818)
!2830 = !DILocation(line: 1141, column: 25, scope: !2818)
!2831 = !DILocation(line: 1142, column: 27, scope: !2818)
!2832 = !DILocation(line: 1142, column: 34, scope: !2818)
!2833 = !DILocation(line: 1142, column: 3, scope: !2818)
!2834 = !DILocation(line: 1142, column: 9, scope: !2818)
!2835 = !DILocation(line: 1142, column: 25, scope: !2818)
!2836 = !DILocation(line: 1143, column: 3, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !2, line: 1143, column: 3)
!2838 = distinct !DILexicalBlock(scope: !2818, file: !2, line: 1143, column: 3)
!2839 = !DILocation(line: 1143, column: 3, scope: !2838)
!2840 = !DILocation(line: 1144, column: 10, scope: !2818)
!2841 = !DILocation(line: 1144, column: 3, scope: !2818)
!2842 = !DILocation(line: 1157, column: 6, scope: !2667)
!2843 = !DILocation(line: 1157, column: 12, scope: !2667)
!2844 = !DILocation(line: 1157, column: 32, scope: !2667)
!2845 = !DILocation(line: 1157, column: 6, scope: !2643)
!2846 = !DILocation(line: 1158, column: 3, scope: !2666)
!2847 = !DILocation(line: 1158, column: 28, scope: !2666)
!2848 = !DILocation(line: 1158, column: 37, scope: !2666)
!2849 = !DILocation(line: 1159, column: 3, scope: !2666)
!2850 = !DILocation(line: 1159, column: 27, scope: !2666)
!2851 = !DILocation(line: 1165, column: 12, scope: !2666)
!2852 = !DILocation(line: 1166, column: 10, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2666, file: !2, line: 1166, column: 3)
!2854 = !DILocation(line: 1166, column: 8, scope: !2853)
!2855 = !DILocation(line: 1166, column: 15, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2853, file: !2, line: 1166, column: 3)
!2857 = !DILocation(line: 1166, column: 17, scope: !2856)
!2858 = !DILocation(line: 1166, column: 3, scope: !2853)
!2859 = !DILocation(line: 1167, column: 10, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !2, line: 1166, column: 45)
!2861 = !DILocation(line: 1167, column: 16, scope: !2860)
!2862 = !DILocation(line: 1167, column: 22, scope: !2860)
!2863 = !DILocation(line: 1167, column: 8, scope: !2860)
!2864 = !DILocation(line: 1168, column: 32, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2860, file: !2, line: 1168, column: 8)
!2866 = !DILocation(line: 1168, column: 8, scope: !2865)
!2867 = !DILocation(line: 1168, column: 8, scope: !2860)
!2868 = !DILocation(line: 1169, column: 14, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2865, file: !2, line: 1168, column: 38)
!2870 = !DILocation(line: 1170, column: 5, scope: !2869)
!2871 = !DILocation(line: 1172, column: 3, scope: !2860)
!2872 = !DILocation(line: 1166, column: 41, scope: !2856)
!2873 = !DILocation(line: 1166, column: 3, scope: !2856)
!2874 = distinct !{!2874, !2858, !2875, !306, !307}
!2875 = !DILocation(line: 1172, column: 3, scope: !2853)
!2876 = !DILocation(line: 1174, column: 3, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !2, line: 1174, column: 3)
!2878 = distinct !DILexicalBlock(scope: !2666, file: !2, line: 1174, column: 3)
!2879 = !DILocation(line: 1174, column: 3, scope: !2878)
!2880 = !DILocation(line: 1180, column: 12, scope: !2666)
!2881 = !DILocation(line: 1180, column: 10, scope: !2666)
!2882 = !DILocation(line: 1180, column: 3, scope: !2666)
!2883 = !DILocation(line: 1181, column: 2, scope: !2666)
!2884 = !DILocation(line: 1182, column: 3, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !2, line: 1182, column: 3)
!2886 = distinct !DILexicalBlock(scope: !2666, file: !2, line: 1182, column: 3)
!2887 = !DILocation(line: 1182, column: 3, scope: !2886)
!2888 = !DILocation(line: 1184, column: 9, scope: !2666)
!2889 = !DILocation(line: 1184, column: 17, scope: !2666)
!2890 = !DILocation(line: 1184, column: 7, scope: !2666)
!2891 = !DILocation(line: 1185, column: 8, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2666, file: !2, line: 1185, column: 7)
!2893 = !DILocation(line: 1185, column: 7, scope: !2666)
!2894 = !DILocation(line: 1186, column: 4, scope: !2892)
!2895 = !DILocation(line: 1187, column: 35, scope: !2673)
!2896 = !DILocation(line: 1187, column: 7, scope: !2673)
!2897 = !DILocation(line: 1187, column: 7, scope: !2666)
!2898 = !DILocation(line: 1188, column: 4, scope: !2672)
!2899 = !DILocation(line: 1188, column: 33, scope: !2672)
!2900 = !DILocation(line: 1188, column: 65, scope: !2672)
!2901 = !DILocation(line: 1188, column: 37, scope: !2672)
!2902 = !DILocation(line: 1189, column: 10, scope: !2672)
!2903 = !DILocation(line: 1189, column: 13, scope: !2672)
!2904 = !DILocation(line: 1189, column: 8, scope: !2672)
!2905 = !DILocation(line: 1190, column: 9, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2672, file: !2, line: 1190, column: 8)
!2907 = !DILocation(line: 1190, column: 8, scope: !2672)
!2908 = !DILocation(line: 1191, column: 5, scope: !2906)
!2909 = !DILocation(line: 1192, column: 3, scope: !2673)
!2910 = !DILocation(line: 1192, column: 3, scope: !2672)
!2911 = !DILocation(line: 1194, column: 41, scope: !2666)
!2912 = !DILocation(line: 1194, column: 17, scope: !2666)
!2913 = !DILocation(line: 1194, column: 15, scope: !2666)
!2914 = !DILocation(line: 1195, column: 7, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2666, file: !2, line: 1195, column: 7)
!2916 = !DILocation(line: 1195, column: 20, scope: !2915)
!2917 = !DILocation(line: 1195, column: 40, scope: !2915)
!2918 = !DILocation(line: 1195, column: 7, scope: !2666)
!2919 = !DILocation(line: 1196, column: 13, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2915, file: !2, line: 1195, column: 68)
!2921 = !DILocation(line: 1196, column: 11, scope: !2920)
!2922 = !DILocation(line: 1197, column: 4, scope: !2920)
!2923 = !DILocation(line: 1195, column: 65, scope: !2915)
!2924 = !DILocation(line: 1200, column: 2, scope: !2666)
!2925 = !DILocation(line: 1205, column: 7, scope: !2681)
!2926 = !DILocation(line: 1205, column: 16, scope: !2681)
!2927 = !DILocation(line: 1205, column: 19, scope: !2681)
!2928 = !DILocation(line: 1205, column: 29, scope: !2681)
!2929 = !DILocation(line: 1205, column: 26, scope: !2681)
!2930 = !DILocation(line: 1205, column: 7, scope: !2666)
!2931 = !DILocation(line: 1206, column: 11, scope: !2680)
!2932 = !DILocation(line: 1206, column: 9, scope: !2680)
!2933 = !DILocation(line: 1209, column: 13, scope: !2680)
!2934 = !DILocation(line: 1209, column: 11, scope: !2680)
!2935 = !DILocation(line: 1210, column: 9, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2680, file: !2, line: 1210, column: 8)
!2937 = !DILocation(line: 1210, column: 8, scope: !2680)
!2938 = !DILocation(line: 1211, column: 5, scope: !2936)
!2939 = !DILocation(line: 1212, column: 48, scope: !2680)
!2940 = !DILocation(line: 1212, column: 24, scope: !2680)
!2941 = !DILocation(line: 1212, column: 4, scope: !2680)
!2942 = !DILocation(line: 1212, column: 10, scope: !2680)
!2943 = !DILocation(line: 1212, column: 22, scope: !2680)
!2944 = !DILocation(line: 1214, column: 27, scope: !2680)
!2945 = !DILocation(line: 1214, column: 33, scope: !2680)
!2946 = !DILocation(line: 1214, column: 4, scope: !2680)
!2947 = !DILocation(line: 1214, column: 12, scope: !2680)
!2948 = !DILocation(line: 1214, column: 25, scope: !2680)
!2949 = !DILocation(line: 1215, column: 26, scope: !2680)
!2950 = !DILocation(line: 1215, column: 32, scope: !2680)
!2951 = !DILocation(line: 1215, column: 4, scope: !2680)
!2952 = !DILocation(line: 1215, column: 12, scope: !2680)
!2953 = !DILocation(line: 1215, column: 24, scope: !2680)
!2954 = !DILocation(line: 1216, column: 34, scope: !2680)
!2955 = !DILocation(line: 1216, column: 40, scope: !2680)
!2956 = !DILocation(line: 1216, column: 4, scope: !2680)
!2957 = !DILocation(line: 1216, column: 12, scope: !2680)
!2958 = !DILocation(line: 1216, column: 32, scope: !2680)
!2959 = !DILocation(line: 1217, column: 28, scope: !2680)
!2960 = !DILocation(line: 1217, column: 4, scope: !2680)
!2961 = !DILocation(line: 1217, column: 10, scope: !2680)
!2962 = !DILocation(line: 1217, column: 26, scope: !2680)
!2963 = !DILocation(line: 1219, column: 20, scope: !2680)
!2964 = !DILocation(line: 1219, column: 13, scope: !2680)
!2965 = !DILocation(line: 1219, column: 18, scope: !2680)
!2966 = !DILocation(line: 1220, column: 49, scope: !2680)
!2967 = !DILocation(line: 1220, column: 55, scope: !2680)
!2968 = !DILocation(line: 1220, column: 25, scope: !2680)
!2969 = !DILocation(line: 1220, column: 13, scope: !2680)
!2970 = !DILocation(line: 1220, column: 23, scope: !2680)
!2971 = !DILocation(line: 1221, column: 13, scope: !2680)
!2972 = !DILocation(line: 1221, column: 18, scope: !2680)
!2973 = !DILocation(line: 1222, column: 56, scope: !2680)
!2974 = !DILocation(line: 1222, column: 32, scope: !2680)
!2975 = !DILocation(line: 1223, column: 11, scope: !2680)
!2976 = !DILocation(line: 1223, column: 17, scope: !2680)
!2977 = !DILocation(line: 1222, column: 4, scope: !2680)
!2978 = !DILocation(line: 1226, column: 4, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !2, line: 1226, column: 4)
!2980 = distinct !DILexicalBlock(scope: !2680, file: !2, line: 1226, column: 4)
!2981 = !DILocation(line: 1226, column: 4, scope: !2980)
!2982 = !DILocation(line: 1227, column: 4, scope: !2680)
!2983 = !DILocation(line: 1227, column: 4, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 1227, column: 4)
!2985 = distinct !DILexicalBlock(scope: !2680, file: !2, line: 1227, column: 4)
!2986 = !DILocation(line: 1227, column: 4, scope: !2985)
!2987 = !DILocation(line: 1227, column: 4, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !2, line: 1227, column: 4)
!2989 = !DILocation(line: 1227, column: 4, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2988, file: !2, line: 1227, column: 4)
!2991 = !DILocation(line: 1227, column: 4, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2988, file: !2, line: 1227, column: 4)
!2993 = !{i64 2151562178, i64 2151562207, i64 2151562253, i64 2151562311, i64 2151562365, i64 2151562419, i64 2151562474, i64 2151562505}
!2994 = !DILocation(line: 1229, column: 9, scope: !2679)
!2995 = !DILocation(line: 1229, column: 15, scope: !2679)
!2996 = !DILocation(line: 1229, column: 8, scope: !2680)
!2997 = !DILocation(line: 1230, column: 25, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2679, file: !2, line: 1229, column: 29)
!2999 = !DILocation(line: 1230, column: 32, scope: !2998)
!3000 = !DILocation(line: 1230, column: 5, scope: !2998)
!3001 = !DILocation(line: 1230, column: 11, scope: !2998)
!3002 = !DILocation(line: 1230, column: 18, scope: !2998)
!3003 = !DILocation(line: 1230, column: 22, scope: !2998)
!3004 = !DILocation(line: 1231, column: 4, scope: !2998)
!3005 = !DILocation(line: 1231, column: 39, scope: !2678)
!3006 = !DILocation(line: 1231, column: 45, scope: !2678)
!3007 = !DILocation(line: 1231, column: 15, scope: !2678)
!3008 = !DILocation(line: 1231, column: 15, scope: !2679)
!3009 = !DILocation(line: 1232, column: 5, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2678, file: !2, line: 1231, column: 60)
!3011 = !DILocation(line: 1232, column: 5, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3010, file: !2, line: 1232, column: 5)
!3013 = !DILocation(line: 1232, column: 5, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3012, file: !2, line: 1232, column: 5)
!3015 = !DILocation(line: 1232, column: 5, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3012, file: !2, line: 1232, column: 5)
!3017 = !{i64 2151563057, i64 2151563086, i64 2151563132, i64 2151563190, i64 2151563244, i64 2151563298, i64 2151563353, i64 2151563384}
!3018 = !DILocation(line: 1233, column: 4, scope: !3010)
!3019 = !DILocation(line: 1233, column: 39, scope: !2677)
!3020 = !DILocation(line: 1233, column: 45, scope: !2677)
!3021 = !DILocation(line: 1233, column: 15, scope: !2677)
!3022 = !DILocation(line: 1233, column: 15, scope: !2678)
!3023 = !DILocation(line: 1234, column: 5, scope: !2676)
!3024 = !DILocation(line: 1234, column: 30, scope: !2676)
!3025 = !DILocation(line: 1235, column: 30, scope: !2676)
!3026 = !DILocation(line: 1235, column: 36, scope: !2676)
!3027 = !DILocation(line: 1235, column: 6, scope: !2676)
!3028 = !DILocation(line: 1236, column: 25, scope: !2676)
!3029 = !DILocation(line: 1236, column: 28, scope: !2676)
!3030 = !DILocation(line: 1236, column: 34, scope: !2676)
!3031 = !DILocation(line: 1236, column: 40, scope: !2676)
!3032 = !DILocation(line: 1236, column: 5, scope: !2676)
!3033 = !DILocation(line: 1236, column: 11, scope: !2676)
!3034 = !DILocation(line: 1236, column: 18, scope: !2676)
!3035 = !DILocation(line: 1236, column: 22, scope: !2676)
!3036 = !DILocation(line: 1237, column: 4, scope: !2677)
!3037 = !DILocation(line: 1237, column: 4, scope: !2676)
!3038 = !DILocation(line: 1237, column: 43, scope: !2684)
!3039 = !DILocation(line: 1237, column: 49, scope: !2684)
!3040 = !DILocation(line: 1237, column: 15, scope: !2684)
!3041 = !DILocation(line: 1237, column: 15, scope: !2677)
!3042 = !DILocation(line: 1238, column: 5, scope: !2683)
!3043 = !DILocation(line: 1238, column: 34, scope: !2683)
!3044 = !DILocation(line: 1239, column: 34, scope: !2683)
!3045 = !DILocation(line: 1239, column: 40, scope: !2683)
!3046 = !DILocation(line: 1239, column: 6, scope: !2683)
!3047 = !DILocation(line: 1240, column: 25, scope: !2683)
!3048 = !DILocation(line: 1240, column: 28, scope: !2683)
!3049 = !DILocation(line: 1240, column: 5, scope: !2683)
!3050 = !DILocation(line: 1240, column: 11, scope: !2683)
!3051 = !DILocation(line: 1240, column: 18, scope: !2683)
!3052 = !DILocation(line: 1240, column: 22, scope: !2683)
!3053 = !DILocation(line: 1241, column: 4, scope: !2684)
!3054 = !DILocation(line: 1241, column: 4, scope: !2683)
!3055 = !DILocation(line: 1242, column: 46, scope: !2680)
!3056 = !DILocation(line: 1242, column: 22, scope: !2680)
!3057 = !DILocation(line: 1242, column: 4, scope: !2680)
!3058 = !DILocation(line: 1242, column: 10, scope: !2680)
!3059 = !DILocation(line: 1242, column: 17, scope: !2680)
!3060 = !DILocation(line: 1242, column: 20, scope: !2680)
!3061 = !DILocation(line: 1243, column: 52, scope: !2680)
!3062 = !DILocation(line: 1243, column: 28, scope: !2680)
!3063 = !DILocation(line: 1243, column: 4, scope: !2680)
!3064 = !DILocation(line: 1243, column: 10, scope: !2680)
!3065 = !DILocation(line: 1243, column: 26, scope: !2680)
!3066 = !DILocation(line: 1244, column: 3, scope: !2680)
!3067 = !DILocation(line: 1245, column: 2, scope: !2667)
!3068 = !DILocation(line: 1245, column: 2, scope: !2666)
!3069 = !DILocation(line: 1247, column: 9, scope: !2643)
!3070 = !DILocation(line: 1247, column: 2, scope: !2643)
!3071 = !DILocation(line: 1249, column: 1, scope: !2643)
!3072 = !DILocation(line: 1251, column: 2, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !2, line: 1251, column: 2)
!3074 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 1251, column: 2)
!3075 = !DILocation(line: 1251, column: 2, scope: !3074)
!3076 = !DILocation(line: 1252, column: 26, scope: !2643)
!3077 = !DILocation(line: 1252, column: 2, scope: !2643)
!3078 = !DILocation(line: 1253, column: 9, scope: !2643)
!3079 = !DILocation(line: 1253, column: 2, scope: !2643)
!3080 = !DILocation(line: 1254, column: 1, scope: !2643)
!3081 = distinct !DISubprogram(name: "assoc_array_ptr_is_shortcut", scope: !49, file: !49, line: 123, type: !753, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3082)
!3082 = !{!3083}
!3083 = !DILocalVariable(name: "x", arg: 1, scope: !3081, file: !49, line: 123, type: !206)
!3084 = !DILocation(line: 123, column: 78, scope: !3081)
!3085 = !DILocation(line: 125, column: 24, scope: !3081)
!3086 = !DILocation(line: 125, column: 9, scope: !3081)
!3087 = !DILocation(line: 125, column: 26, scope: !3081)
!3088 = !DILocation(line: 125, column: 2, scope: !3081)
!3089 = distinct !DISubprogram(name: "assoc_array_ptr_to_shortcut", scope: !49, file: !49, line: 149, type: !3090, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!47, !206}
!3092 = !{!3093}
!3093 = !DILocalVariable(name: "x", arg: 1, scope: !3089, file: !49, line: 149, type: !206)
!3094 = !DILocation(line: 149, column: 88, scope: !3089)
!3095 = !DILocation(line: 151, column: 66, scope: !3089)
!3096 = !DILocation(line: 151, column: 40, scope: !3089)
!3097 = !DILocation(line: 151, column: 9, scope: !3089)
!3098 = !DILocation(line: 151, column: 2, scope: !3089)
!3099 = distinct !DISubprogram(name: "assoc_array_ptr_to_node", scope: !49, file: !49, line: 144, type: !3100, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!59, !206}
!3102 = !{!3103}
!3103 = !DILocalVariable(name: "x", arg: 1, scope: !3099, file: !49, line: 144, type: !206)
!3104 = !DILocation(line: 144, column: 80, scope: !3099)
!3105 = !DILocation(line: 146, column: 62, scope: !3099)
!3106 = !DILocation(line: 146, column: 36, scope: !3099)
!3107 = !DILocation(line: 146, column: 9, scope: !3099)
!3108 = !DILocation(line: 146, column: 2, scope: !3099)
!3109 = distinct !DISubprogram(name: "assoc_array_node_to_ptr", scope: !49, file: !49, line: 165, type: !3110, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!39, !217}
!3112 = !{!3113}
!3113 = !DILocalVariable(name: "p", arg: 1, scope: !3109, file: !49, line: 165, type: !217)
!3114 = !DILocation(line: 165, column: 80, scope: !3109)
!3115 = !DILocation(line: 168, column: 3, scope: !3109)
!3116 = !DILocation(line: 167, column: 9, scope: !3109)
!3117 = !DILocation(line: 167, column: 2, scope: !3109)
!3118 = distinct !DISubprogram(name: "assoc_array_delete_collapse_iterator", scope: !2, file: !2, line: 1045, type: !177, scopeLine: 1047, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3119)
!3119 = !{!3120, !3121, !3122}
!3120 = !DILocalVariable(name: "leaf", arg: 1, scope: !3118, file: !2, line: 1045, type: !101)
!3121 = !DILocalVariable(name: "iterator_data", arg: 2, scope: !3118, file: !2, line: 1046, type: !42)
!3122 = !DILocalVariable(name: "collapse", scope: !3118, file: !2, line: 1048, type: !3123)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!3124 = !DILocation(line: 1045, column: 61, scope: !3118)
!3125 = !DILocation(line: 1046, column: 13, scope: !3118)
!3126 = !DILocation(line: 1048, column: 2, scope: !3118)
!3127 = !DILocation(line: 1048, column: 46, scope: !3118)
!3128 = !DILocation(line: 1048, column: 57, scope: !3118)
!3129 = !DILocation(line: 1050, column: 6, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3118, file: !2, line: 1050, column: 6)
!3131 = !DILocation(line: 1050, column: 14, scope: !3130)
!3132 = !DILocation(line: 1050, column: 24, scope: !3130)
!3133 = !DILocation(line: 1050, column: 11, scope: !3130)
!3134 = !DILocation(line: 1050, column: 6, scope: !3118)
!3135 = !DILocation(line: 1051, column: 3, scope: !3130)
!3136 = !DILocation(line: 1053, column: 2, scope: !3118)
!3137 = !DILocation(line: 1053, column: 2, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !2, line: 1053, column: 2)
!3139 = distinct !DILexicalBlock(scope: !3118, file: !2, line: 1053, column: 2)
!3140 = !DILocation(line: 1053, column: 2, scope: !3139)
!3141 = !DILocation(line: 1053, column: 2, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3138, file: !2, line: 1053, column: 2)
!3143 = !DILocation(line: 1053, column: 2, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3142, file: !2, line: 1053, column: 2)
!3145 = !DILocation(line: 1053, column: 2, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3142, file: !2, line: 1053, column: 2)
!3147 = !{i64 2151557911, i64 2151557940, i64 2151557986, i64 2151558044, i64 2151558098, i64 2151558152, i64 2151558207, i64 2151558238}
!3148 = !DILocation(line: 1055, column: 68, scope: !3118)
!3149 = !DILocation(line: 1055, column: 44, scope: !3118)
!3150 = !DILocation(line: 1055, column: 2, scope: !3118)
!3151 = !DILocation(line: 1055, column: 12, scope: !3118)
!3152 = !DILocation(line: 1055, column: 18, scope: !3118)
!3153 = !DILocation(line: 1055, column: 24, scope: !3118)
!3154 = !DILocation(line: 1055, column: 34, scope: !3118)
!3155 = !DILocation(line: 1055, column: 38, scope: !3118)
!3156 = !DILocation(line: 1055, column: 42, scope: !3118)
!3157 = !DILocation(line: 1056, column: 2, scope: !3118)
!3158 = !DILocation(line: 1057, column: 1, scope: !3118)
!3159 = distinct !DISubprogram(name: "assoc_array_ptr_is_node", scope: !49, file: !49, line: 127, type: !753, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3160)
!3160 = !{!3161}
!3161 = !DILocalVariable(name: "x", arg: 1, scope: !3159, file: !49, line: 127, type: !206)
!3162 = !DILocation(line: 127, column: 74, scope: !3159)
!3163 = !DILocation(line: 129, column: 38, scope: !3159)
!3164 = !DILocation(line: 129, column: 10, scope: !3159)
!3165 = !DILocation(line: 129, column: 9, scope: !3159)
!3166 = !DILocation(line: 129, column: 2, scope: !3159)
!3167 = distinct !DISubprogram(name: "assoc_array_clear", scope: !2, file: !2, line: 1274, type: !3168, scopeLine: 1276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!74, !87, !93}
!3170 = !{!3171, !3172, !3173}
!3171 = !DILocalVariable(name: "array", arg: 1, scope: !3167, file: !2, line: 1274, type: !87)
!3172 = !DILocalVariable(name: "ops", arg: 2, scope: !3167, file: !2, line: 1275, type: !93)
!3173 = !DILocalVariable(name: "edit", scope: !3167, file: !2, line: 1277, type: !74)
!3174 = !DILocation(line: 1274, column: 64, scope: !3167)
!3175 = !DILocation(line: 1275, column: 39, scope: !3167)
!3176 = !DILocation(line: 1277, column: 2, scope: !3167)
!3177 = !DILocation(line: 1277, column: 27, scope: !3167)
!3178 = !DILocation(line: 1279, column: 2, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !2, line: 1279, column: 2)
!3180 = distinct !DILexicalBlock(scope: !3167, file: !2, line: 1279, column: 2)
!3181 = !DILocation(line: 1279, column: 2, scope: !3180)
!3182 = !DILocation(line: 1281, column: 7, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3167, file: !2, line: 1281, column: 6)
!3184 = !DILocation(line: 1281, column: 14, scope: !3183)
!3185 = !DILocation(line: 1281, column: 6, scope: !3167)
!3186 = !DILocation(line: 1282, column: 3, scope: !3183)
!3187 = !DILocation(line: 1284, column: 9, scope: !3167)
!3188 = !DILocation(line: 1284, column: 7, scope: !3167)
!3189 = !DILocation(line: 1285, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3167, file: !2, line: 1285, column: 6)
!3191 = !DILocation(line: 1285, column: 6, scope: !3167)
!3192 = !DILocation(line: 1286, column: 10, scope: !3190)
!3193 = !DILocation(line: 1286, column: 3, scope: !3190)
!3194 = !DILocation(line: 1287, column: 16, scope: !3167)
!3195 = !DILocation(line: 1287, column: 2, scope: !3167)
!3196 = !DILocation(line: 1287, column: 8, scope: !3167)
!3197 = !DILocation(line: 1287, column: 14, scope: !3167)
!3198 = !DILocation(line: 1288, column: 14, scope: !3167)
!3199 = !DILocation(line: 1288, column: 2, scope: !3167)
!3200 = !DILocation(line: 1288, column: 8, scope: !3167)
!3201 = !DILocation(line: 1288, column: 12, scope: !3167)
!3202 = !DILocation(line: 1289, column: 22, scope: !3167)
!3203 = !DILocation(line: 1289, column: 29, scope: !3167)
!3204 = !DILocation(line: 1289, column: 2, scope: !3167)
!3205 = !DILocation(line: 1289, column: 8, scope: !3167)
!3206 = !DILocation(line: 1289, column: 15, scope: !3167)
!3207 = !DILocation(line: 1289, column: 19, scope: !3167)
!3208 = !DILocation(line: 1290, column: 2, scope: !3167)
!3209 = !DILocation(line: 1290, column: 8, scope: !3167)
!3210 = !DILocation(line: 1290, column: 15, scope: !3167)
!3211 = !DILocation(line: 1290, column: 18, scope: !3167)
!3212 = !DILocation(line: 1291, column: 26, scope: !3167)
!3213 = !DILocation(line: 1291, column: 33, scope: !3167)
!3214 = !DILocation(line: 1291, column: 2, scope: !3167)
!3215 = !DILocation(line: 1291, column: 8, scope: !3167)
!3216 = !DILocation(line: 1291, column: 24, scope: !3167)
!3217 = !DILocation(line: 1292, column: 34, scope: !3167)
!3218 = !DILocation(line: 1292, column: 2, scope: !3167)
!3219 = !DILocation(line: 1292, column: 8, scope: !3167)
!3220 = !DILocation(line: 1292, column: 32, scope: !3167)
!3221 = !DILocation(line: 1293, column: 2, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !2, line: 1293, column: 2)
!3223 = distinct !DILexicalBlock(scope: !3167, file: !2, line: 1293, column: 2)
!3224 = !DILocation(line: 1293, column: 2, scope: !3223)
!3225 = !DILocation(line: 1294, column: 9, scope: !3167)
!3226 = !DILocation(line: 1294, column: 2, scope: !3167)
!3227 = !DILocation(line: 1295, column: 1, scope: !3167)
!3228 = distinct !DISubprogram(name: "assoc_array_apply_edit", scope: !2, file: !2, line: 1345, type: !2567, scopeLine: 1346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3229)
!3229 = !{!3230, !3231, !3232, !3233, !3234}
!3230 = !DILocalVariable(name: "edit", arg: 1, scope: !3228, file: !2, line: 1345, type: !74)
!3231 = !DILocalVariable(name: "shortcut", scope: !3228, file: !2, line: 1347, type: !47)
!3232 = !DILocalVariable(name: "node", scope: !3228, file: !2, line: 1348, type: !59)
!3233 = !DILocalVariable(name: "ptr", scope: !3228, file: !2, line: 1349, type: !39)
!3234 = !DILocalVariable(name: "i", scope: !3228, file: !2, line: 1350, type: !45)
!3235 = !DILocation(line: 1345, column: 54, scope: !3228)
!3236 = !DILocation(line: 1347, column: 2, scope: !3228)
!3237 = !DILocation(line: 1347, column: 31, scope: !3228)
!3238 = !DILocation(line: 1348, column: 2, scope: !3228)
!3239 = !DILocation(line: 1348, column: 27, scope: !3228)
!3240 = !DILocation(line: 1349, column: 2, scope: !3228)
!3241 = !DILocation(line: 1349, column: 26, scope: !3228)
!3242 = !DILocation(line: 1350, column: 2, scope: !3228)
!3243 = !DILocation(line: 1350, column: 6, scope: !3228)
!3244 = !DILocation(line: 1352, column: 2, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !2, line: 1352, column: 2)
!3246 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1352, column: 2)
!3247 = !DILocation(line: 1352, column: 2, scope: !3246)
!3248 = !DILocation(line: 1354, column: 2, scope: !3228)
!3249 = !DILocation(line: 1354, column: 2, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1354, column: 2)
!3251 = !DILocation(line: 1354, column: 2, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3250, file: !2, line: 1354, column: 2)
!3253 = !{i64 2151567770}
!3254 = !DILocation(line: 1355, column: 6, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1355, column: 6)
!3256 = !DILocation(line: 1355, column: 12, scope: !3255)
!3257 = !DILocation(line: 1355, column: 6, scope: !3228)
!3258 = !DILocation(line: 1356, column: 19, scope: !3255)
!3259 = !DILocation(line: 1356, column: 25, scope: !3255)
!3260 = !DILocation(line: 1356, column: 4, scope: !3255)
!3261 = !DILocation(line: 1356, column: 10, scope: !3255)
!3262 = !DILocation(line: 1356, column: 17, scope: !3255)
!3263 = !DILocation(line: 1356, column: 3, scope: !3255)
!3264 = !DILocation(line: 1358, column: 2, scope: !3228)
!3265 = !DILocation(line: 1358, column: 2, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1358, column: 2)
!3267 = !DILocation(line: 1358, column: 2, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3266, file: !2, line: 1358, column: 2)
!3269 = !{i64 2151567878}
!3270 = !DILocation(line: 1359, column: 9, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1359, column: 2)
!3272 = !DILocation(line: 1359, column: 7, scope: !3271)
!3273 = !DILocation(line: 1359, column: 14, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 1359, column: 2)
!3275 = !DILocation(line: 1359, column: 16, scope: !3274)
!3276 = !DILocation(line: 1359, column: 2, scope: !3271)
!3277 = !DILocation(line: 1360, column: 7, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3274, file: !2, line: 1360, column: 7)
!3279 = !DILocation(line: 1360, column: 13, scope: !3278)
!3280 = !DILocation(line: 1360, column: 29, scope: !3278)
!3281 = !DILocation(line: 1360, column: 32, scope: !3278)
!3282 = !DILocation(line: 1360, column: 7, scope: !3274)
!3283 = !DILocation(line: 1361, column: 34, scope: !3278)
!3284 = !DILocation(line: 1361, column: 40, scope: !3278)
!3285 = !DILocation(line: 1361, column: 56, scope: !3278)
!3286 = !DILocation(line: 1361, column: 59, scope: !3278)
!3287 = !DILocation(line: 1361, column: 5, scope: !3278)
!3288 = !DILocation(line: 1361, column: 11, scope: !3278)
!3289 = !DILocation(line: 1361, column: 27, scope: !3278)
!3290 = !DILocation(line: 1361, column: 30, scope: !3278)
!3291 = !DILocation(line: 1361, column: 32, scope: !3278)
!3292 = !DILocation(line: 1361, column: 4, scope: !3278)
!3293 = !DILocation(line: 1359, column: 54, scope: !3274)
!3294 = !DILocation(line: 1359, column: 2, scope: !3274)
!3295 = distinct !{!3295, !3276, !3296, !306, !307}
!3296 = !DILocation(line: 1361, column: 59, scope: !3271)
!3297 = !DILocation(line: 1363, column: 2, scope: !3228)
!3298 = !DILocation(line: 1363, column: 2, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1363, column: 2)
!3300 = !DILocation(line: 1363, column: 2, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3299, file: !2, line: 1363, column: 2)
!3302 = !{i64 2151568453}
!3303 = !DILocation(line: 1364, column: 9, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1364, column: 2)
!3305 = !DILocation(line: 1364, column: 7, scope: !3304)
!3306 = !DILocation(line: 1364, column: 14, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3304, file: !2, line: 1364, column: 2)
!3308 = !DILocation(line: 1364, column: 16, scope: !3307)
!3309 = !DILocation(line: 1364, column: 2, scope: !3304)
!3310 = !DILocation(line: 1365, column: 7, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3307, file: !2, line: 1365, column: 7)
!3312 = !DILocation(line: 1365, column: 13, scope: !3311)
!3313 = !DILocation(line: 1365, column: 30, scope: !3311)
!3314 = !DILocation(line: 1365, column: 7, scope: !3307)
!3315 = !DILocation(line: 1366, column: 33, scope: !3311)
!3316 = !DILocation(line: 1366, column: 39, scope: !3311)
!3317 = !DILocation(line: 1366, column: 5, scope: !3311)
!3318 = !DILocation(line: 1366, column: 11, scope: !3311)
!3319 = !DILocation(line: 1366, column: 28, scope: !3311)
!3320 = !DILocation(line: 1366, column: 31, scope: !3311)
!3321 = !DILocation(line: 1366, column: 4, scope: !3311)
!3322 = !DILocation(line: 1365, column: 31, scope: !3311)
!3323 = !DILocation(line: 1364, column: 55, scope: !3307)
!3324 = !DILocation(line: 1364, column: 2, scope: !3307)
!3325 = distinct !{!3325, !3309, !3326, !306, !307}
!3326 = !DILocation(line: 1366, column: 39, scope: !3304)
!3327 = !DILocation(line: 1368, column: 2, scope: !3228)
!3328 = !DILocation(line: 1368, column: 2, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1368, column: 2)
!3330 = !DILocation(line: 1368, column: 2, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 1368, column: 2)
!3332 = !{i64 2151569037}
!3333 = !DILocation(line: 1369, column: 9, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1369, column: 2)
!3335 = !DILocation(line: 1369, column: 7, scope: !3334)
!3336 = !DILocation(line: 1369, column: 14, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3334, file: !2, line: 1369, column: 2)
!3338 = !DILocation(line: 1369, column: 16, scope: !3337)
!3339 = !DILocation(line: 1369, column: 2, scope: !3334)
!3340 = !DILocation(line: 1370, column: 7, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3337, file: !2, line: 1370, column: 7)
!3342 = !DILocation(line: 1370, column: 13, scope: !3341)
!3343 = !DILocation(line: 1370, column: 17, scope: !3341)
!3344 = !DILocation(line: 1370, column: 20, scope: !3341)
!3345 = !DILocation(line: 1370, column: 7, scope: !3337)
!3346 = !DILocation(line: 1371, column: 24, scope: !3341)
!3347 = !DILocation(line: 1371, column: 30, scope: !3341)
!3348 = !DILocation(line: 1371, column: 34, scope: !3341)
!3349 = !DILocation(line: 1371, column: 37, scope: !3341)
!3350 = !DILocation(line: 1371, column: 5, scope: !3341)
!3351 = !DILocation(line: 1371, column: 11, scope: !3341)
!3352 = !DILocation(line: 1371, column: 15, scope: !3341)
!3353 = !DILocation(line: 1371, column: 18, scope: !3341)
!3354 = !DILocation(line: 1371, column: 22, scope: !3341)
!3355 = !DILocation(line: 1371, column: 4, scope: !3341)
!3356 = !DILocation(line: 1369, column: 42, scope: !3337)
!3357 = !DILocation(line: 1369, column: 2, scope: !3337)
!3358 = distinct !{!3358, !3339, !3359, !306, !307}
!3359 = !DILocation(line: 1371, column: 37, scope: !3334)
!3360 = !DILocation(line: 1373, column: 6, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1373, column: 6)
!3362 = !DILocation(line: 1373, column: 12, scope: !3361)
!3363 = !DILocation(line: 1373, column: 19, scope: !3361)
!3364 = !DILocation(line: 1373, column: 24, scope: !3361)
!3365 = !DILocation(line: 1373, column: 6, scope: !3228)
!3366 = !DILocation(line: 1374, column: 3, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3361, file: !2, line: 1373, column: 33)
!3368 = !DILocation(line: 1374, column: 9, scope: !3367)
!3369 = !DILocation(line: 1374, column: 16, scope: !3367)
!3370 = !DILocation(line: 1374, column: 34, scope: !3367)
!3371 = !DILocation(line: 1375, column: 2, scope: !3367)
!3372 = !DILocation(line: 1375, column: 13, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3361, file: !2, line: 1375, column: 13)
!3374 = !DILocation(line: 1375, column: 19, scope: !3373)
!3375 = !DILocation(line: 1375, column: 13, scope: !3361)
!3376 = !DILocation(line: 1376, column: 10, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3373, file: !2, line: 1375, column: 36)
!3378 = !DILocation(line: 1376, column: 16, scope: !3377)
!3379 = !DILocation(line: 1376, column: 8, scope: !3377)
!3380 = !DILocation(line: 1377, column: 3, scope: !3377)
!3381 = !DILocation(line: 1378, column: 33, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !2, line: 1377, column: 12)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !2, line: 1377, column: 3)
!3384 = distinct !DILexicalBlock(scope: !3377, file: !2, line: 1377, column: 3)
!3385 = !DILocation(line: 1378, column: 39, scope: !3382)
!3386 = !DILocation(line: 1378, column: 4, scope: !3382)
!3387 = !DILocation(line: 1378, column: 10, scope: !3382)
!3388 = !DILocation(line: 1378, column: 30, scope: !3382)
!3389 = !DILocation(line: 1380, column: 10, scope: !3382)
!3390 = !DILocation(line: 1380, column: 16, scope: !3382)
!3391 = !DILocation(line: 1380, column: 8, scope: !3382)
!3392 = !DILocation(line: 1381, column: 9, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3382, file: !2, line: 1381, column: 8)
!3394 = !DILocation(line: 1381, column: 8, scope: !3382)
!3395 = !DILocation(line: 1382, column: 5, scope: !3393)
!3396 = !DILocation(line: 1383, column: 36, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3382, file: !2, line: 1383, column: 8)
!3398 = !DILocation(line: 1383, column: 8, scope: !3397)
!3399 = !DILocation(line: 1383, column: 8, scope: !3382)
!3400 = !DILocation(line: 1384, column: 44, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3397, file: !2, line: 1383, column: 42)
!3402 = !DILocation(line: 1384, column: 16, scope: !3401)
!3403 = !DILocation(line: 1384, column: 14, scope: !3401)
!3404 = !DILocation(line: 1385, column: 11, scope: !3401)
!3405 = !DILocation(line: 1385, column: 21, scope: !3401)
!3406 = !DILocation(line: 1385, column: 9, scope: !3401)
!3407 = !DILocation(line: 1386, column: 10, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3401, file: !2, line: 1386, column: 9)
!3409 = !DILocation(line: 1386, column: 9, scope: !3401)
!3410 = !DILocation(line: 1387, column: 6, scope: !3408)
!3411 = !DILocation(line: 1388, column: 4, scope: !3401)
!3412 = !DILocation(line: 1389, column: 4, scope: !3382)
!3413 = !DILocation(line: 1389, column: 4, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !2, line: 1389, column: 4)
!3415 = distinct !DILexicalBlock(scope: !3382, file: !2, line: 1389, column: 4)
!3416 = !DILocation(line: 1389, column: 4, scope: !3415)
!3417 = !DILocation(line: 1389, column: 4, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3414, file: !2, line: 1389, column: 4)
!3419 = !DILocation(line: 1389, column: 4, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3418, file: !2, line: 1389, column: 4)
!3421 = !DILocation(line: 1389, column: 4, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3418, file: !2, line: 1389, column: 4)
!3423 = !{i64 2151569739, i64 2151569768, i64 2151569814, i64 2151569872, i64 2151569926, i64 2151569980, i64 2151570035, i64 2151570066}
!3424 = !DILocation(line: 1390, column: 35, scope: !3382)
!3425 = !DILocation(line: 1390, column: 11, scope: !3382)
!3426 = !DILocation(line: 1390, column: 9, scope: !3382)
!3427 = !DILocation(line: 1377, column: 3, scope: !3383)
!3428 = distinct !{!3428, !3429, !3430, !307}
!3429 = !DILocation(line: 1377, column: 3, scope: !3384)
!3430 = !DILocation(line: 1391, column: 3, scope: !3384)
!3431 = !DILocation(line: 1393, column: 37, scope: !3377)
!3432 = !DILocation(line: 1393, column: 43, scope: !3377)
!3433 = !DILocation(line: 1393, column: 3, scope: !3377)
!3434 = !DILocation(line: 1393, column: 9, scope: !3377)
!3435 = !DILocation(line: 1393, column: 16, scope: !3377)
!3436 = !DILocation(line: 1393, column: 34, scope: !3377)
!3437 = !DILocation(line: 1394, column: 2, scope: !3377)
!3438 = !DILocation(line: 1396, column: 12, scope: !3228)
!3439 = !DILocation(line: 1396, column: 18, scope: !3228)
!3440 = !DILocation(line: 1396, column: 2, scope: !3228)
!3441 = !DILocation(line: 1397, column: 1, scope: !3228)
!3442 = !DISubprogram(name: "call_rcu", scope: !3443, file: !3443, line: 42, type: !3444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3443 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!3444 = !DISubroutineType(types: !3445)
!3445 = !{null, !81, !3446}
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !44, line: 238, baseType: !83)
!3447 = distinct !DISubprogram(name: "assoc_array_rcu_cleanup", scope: !2, file: !2, line: 1300, type: !84, scopeLine: 1301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3448)
!3448 = !{!3449, !3450, !3451, !3453, !3454, !3459}
!3449 = !DILocalVariable(name: "head", arg: 1, scope: !3447, file: !2, line: 1300, type: !81)
!3450 = !DILocalVariable(name: "edit", scope: !3447, file: !2, line: 1302, type: !74)
!3451 = !DILocalVariable(name: "__mptr", scope: !3452, file: !2, line: 1303, type: !42)
!3452 = distinct !DILexicalBlock(scope: !3447, file: !2, line: 1303, column: 3)
!3453 = !DILocalVariable(name: "i", scope: !3447, file: !2, line: 1304, type: !45)
!3454 = !DILocalVariable(name: "n", scope: !3455, file: !2, line: 1317, type: !59)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !2, line: 1316, column: 55)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !2, line: 1316, column: 7)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !2, line: 1314, column: 29)
!3458 = distinct !DILexicalBlock(scope: !3447, file: !2, line: 1314, column: 6)
!3459 = !DILocalVariable(name: "s", scope: !3460, file: !2, line: 1321, type: !47)
!3460 = distinct !DILexicalBlock(scope: !3456, file: !2, line: 1320, column: 10)
!3461 = !DILocation(line: 1300, column: 54, scope: !3447)
!3462 = !DILocation(line: 1302, column: 2, scope: !3447)
!3463 = !DILocation(line: 1302, column: 27, scope: !3447)
!3464 = !DILocation(line: 1303, column: 3, scope: !3452)
!3465 = !DILocation(line: 1303, column: 3, scope: !3447)
!3466 = !DILocation(line: 1304, column: 2, scope: !3447)
!3467 = !DILocation(line: 1304, column: 6, scope: !3447)
!3468 = !DILocation(line: 1306, column: 2, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !2, line: 1306, column: 2)
!3470 = distinct !DILexicalBlock(scope: !3447, file: !2, line: 1306, column: 2)
!3471 = !DILocation(line: 1306, column: 2, scope: !3470)
!3472 = !DILocation(line: 1308, column: 6, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3447, file: !2, line: 1308, column: 6)
!3474 = !DILocation(line: 1308, column: 12, scope: !3473)
!3475 = !DILocation(line: 1308, column: 6, scope: !3447)
!3476 = !DILocation(line: 1309, column: 3, scope: !3473)
!3477 = !DILocation(line: 1309, column: 9, scope: !3473)
!3478 = !DILocation(line: 1309, column: 14, scope: !3473)
!3479 = !DILocation(line: 1309, column: 50, scope: !3473)
!3480 = !DILocation(line: 1309, column: 56, scope: !3473)
!3481 = !DILocation(line: 1309, column: 26, scope: !3473)
!3482 = !DILocation(line: 1310, column: 9, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3447, file: !2, line: 1310, column: 2)
!3484 = !DILocation(line: 1310, column: 7, scope: !3483)
!3485 = !DILocation(line: 1310, column: 14, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3483, file: !2, line: 1310, column: 2)
!3487 = !DILocation(line: 1310, column: 16, scope: !3486)
!3488 = !DILocation(line: 1310, column: 2, scope: !3483)
!3489 = !DILocation(line: 1311, column: 7, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3486, file: !2, line: 1311, column: 7)
!3491 = !DILocation(line: 1311, column: 13, scope: !3490)
!3492 = !DILocation(line: 1311, column: 26, scope: !3490)
!3493 = !DILocation(line: 1311, column: 7, scope: !3486)
!3494 = !DILocation(line: 1312, column: 34, scope: !3490)
!3495 = !DILocation(line: 1312, column: 40, scope: !3490)
!3496 = !DILocation(line: 1312, column: 53, scope: !3490)
!3497 = !DILocation(line: 1312, column: 10, scope: !3490)
!3498 = !DILocation(line: 1312, column: 4, scope: !3490)
!3499 = !DILocation(line: 1311, column: 27, scope: !3490)
!3500 = !DILocation(line: 1310, column: 51, scope: !3486)
!3501 = !DILocation(line: 1310, column: 2, scope: !3486)
!3502 = distinct !{!3502, !3488, !3503, !306, !307}
!3503 = !DILocation(line: 1312, column: 56, scope: !3483)
!3504 = !DILocation(line: 1314, column: 6, scope: !3458)
!3505 = !DILocation(line: 1314, column: 12, scope: !3458)
!3506 = !DILocation(line: 1314, column: 6, scope: !3447)
!3507 = !DILocation(line: 1315, column: 3, scope: !3457)
!3508 = !DILocation(line: 1315, column: 3, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !2, line: 1315, column: 3)
!3510 = distinct !DILexicalBlock(scope: !3457, file: !2, line: 1315, column: 3)
!3511 = !DILocation(line: 1315, column: 3, scope: !3510)
!3512 = !DILocation(line: 1315, column: 3, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3509, file: !2, line: 1315, column: 3)
!3514 = !DILocation(line: 1315, column: 3, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3513, file: !2, line: 1315, column: 3)
!3516 = !DILocation(line: 1315, column: 3, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3513, file: !2, line: 1315, column: 3)
!3518 = !{i64 2151566740, i64 2151566769, i64 2151566815, i64 2151566873, i64 2151566927, i64 2151566981, i64 2151567036, i64 2151567067}
!3519 = !DILocation(line: 1316, column: 31, scope: !3456)
!3520 = !DILocation(line: 1316, column: 37, scope: !3456)
!3521 = !DILocation(line: 1316, column: 7, scope: !3456)
!3522 = !DILocation(line: 1316, column: 7, scope: !3457)
!3523 = !DILocation(line: 1317, column: 4, scope: !3455)
!3524 = !DILocation(line: 1317, column: 29, scope: !3455)
!3525 = !DILocation(line: 1318, column: 29, scope: !3455)
!3526 = !DILocation(line: 1318, column: 35, scope: !3455)
!3527 = !DILocation(line: 1318, column: 5, scope: !3455)
!3528 = !DILocation(line: 1319, column: 4, scope: !3455)
!3529 = !DILocation(line: 1319, column: 7, scope: !3455)
!3530 = !DILocation(line: 1319, column: 20, scope: !3455)
!3531 = !DILocation(line: 1320, column: 3, scope: !3456)
!3532 = !DILocation(line: 1320, column: 3, scope: !3455)
!3533 = !DILocation(line: 1321, column: 4, scope: !3460)
!3534 = !DILocation(line: 1321, column: 33, scope: !3460)
!3535 = !DILocation(line: 1322, column: 33, scope: !3460)
!3536 = !DILocation(line: 1322, column: 39, scope: !3460)
!3537 = !DILocation(line: 1322, column: 5, scope: !3460)
!3538 = !DILocation(line: 1323, column: 4, scope: !3460)
!3539 = !DILocation(line: 1323, column: 7, scope: !3460)
!3540 = !DILocation(line: 1323, column: 20, scope: !3460)
!3541 = !DILocation(line: 1324, column: 3, scope: !3456)
!3542 = !DILocation(line: 1325, column: 31, scope: !3457)
!3543 = !DILocation(line: 1325, column: 37, scope: !3457)
!3544 = !DILocation(line: 1326, column: 10, scope: !3457)
!3545 = !DILocation(line: 1326, column: 16, scope: !3457)
!3546 = !DILocation(line: 1325, column: 3, scope: !3457)
!3547 = !DILocation(line: 1327, column: 2, scope: !3457)
!3548 = !DILocation(line: 1329, column: 8, scope: !3447)
!3549 = !DILocation(line: 1329, column: 2, scope: !3447)
!3550 = !DILocation(line: 1330, column: 1, scope: !3447)
!3551 = !DISubprogram(name: "kfree", scope: !9, file: !9, line: 227, type: !3552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{null, !101}
!3554 = distinct !DISubprogram(name: "assoc_array_gc", scope: !2, file: !2, line: 1453, type: !3555, scopeLine: 1457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3560)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!45, !87, !93, !3557, !42}
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!108, !42, !42}
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3589, !3590, !3596, !3603, !3608, !3609, !3610}
!3561 = !DILocalVariable(name: "array", arg: 1, scope: !3554, file: !2, line: 1453, type: !87)
!3562 = !DILocalVariable(name: "ops", arg: 2, scope: !3554, file: !2, line: 1454, type: !93)
!3563 = !DILocalVariable(name: "iterator", arg: 3, scope: !3554, file: !2, line: 1455, type: !3557)
!3564 = !DILocalVariable(name: "iterator_data", arg: 4, scope: !3554, file: !2, line: 1456, type: !42)
!3565 = !DILocalVariable(name: "shortcut", scope: !3554, file: !2, line: 1458, type: !47)
!3566 = !DILocalVariable(name: "new_s", scope: !3554, file: !2, line: 1458, type: !47)
!3567 = !DILocalVariable(name: "node", scope: !3554, file: !2, line: 1459, type: !59)
!3568 = !DILocalVariable(name: "new_n", scope: !3554, file: !2, line: 1459, type: !59)
!3569 = !DILocalVariable(name: "edit", scope: !3554, file: !2, line: 1460, type: !74)
!3570 = !DILocalVariable(name: "cursor", scope: !3554, file: !2, line: 1461, type: !39)
!3571 = !DILocalVariable(name: "ptr", scope: !3554, file: !2, line: 1461, type: !39)
!3572 = !DILocalVariable(name: "new_root", scope: !3554, file: !2, line: 1462, type: !39)
!3573 = !DILocalVariable(name: "new_parent", scope: !3554, file: !2, line: 1462, type: !39)
!3574 = !DILocalVariable(name: "new_ptr_pp", scope: !3554, file: !2, line: 1462, type: !121)
!3575 = !DILocalVariable(name: "nr_leaves_on_tree", scope: !3554, file: !2, line: 1463, type: !46)
!3576 = !DILocalVariable(name: "retained", scope: !3554, file: !2, line: 1464, type: !108)
!3577 = !DILocalVariable(name: "keylen", scope: !3554, file: !2, line: 1465, type: !45)
!3578 = !DILocalVariable(name: "slot", scope: !3554, file: !2, line: 1465, type: !45)
!3579 = !DILocalVariable(name: "nr_free", scope: !3554, file: !2, line: 1465, type: !45)
!3580 = !DILocalVariable(name: "next_slot", scope: !3554, file: !2, line: 1465, type: !45)
!3581 = !DILocalVariable(name: "i", scope: !3554, file: !2, line: 1465, type: !45)
!3582 = !DILabel(scope: !3554, name: "descend", file: !2, line: 1485)
!3583 = !DILabel(scope: !3554, name: "continue_node", file: !2, line: 1518)
!3584 = !DILabel(scope: !3554, name: "retry_compress", file: !2, line: 1540)
!3585 = !DILocalVariable(name: "s", scope: !3586, file: !2, line: 1561, type: !47)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !2, line: 1560, column: 53)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !2, line: 1560, column: 2)
!3588 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1560, column: 2)
!3589 = !DILocalVariable(name: "child", scope: !3586, file: !2, line: 1562, type: !59)
!3590 = !DILocalVariable(name: "p", scope: !3591, file: !2, line: 1593, type: !39)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !2, line: 1592, column: 46)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !2, line: 1592, column: 4)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !2, line: 1592, column: 4)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !2, line: 1577, column: 50)
!3595 = distinct !DILexicalBlock(scope: !3586, file: !2, line: 1577, column: 7)
!3596 = !DILocalVariable(name: "s", scope: !3597, file: !2, line: 1642, type: !47)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !2, line: 1640, column: 49)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !2, line: 1640, column: 8)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !2, line: 1627, column: 41)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !2, line: 1626, column: 7)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !2, line: 1621, column: 42)
!3602 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1621, column: 6)
!3603 = !DILocalVariable(name: "n", scope: !3604, file: !2, line: 1679, type: !59)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !2, line: 1678, column: 58)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !2, line: 1678, column: 7)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !2, line: 1673, column: 40)
!3607 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1673, column: 6)
!3608 = !DILabel(scope: !3554, name: "ascend_old_tree", file: !2, line: 1698)
!3609 = !DILabel(scope: !3554, name: "gc_complete", file: !2, line: 1715)
!3610 = !DILabel(scope: !3554, name: "enomem", file: !2, line: 1721)
!3611 = !DILocation(line: 1453, column: 40, scope: !3554)
!3612 = !DILocation(line: 1454, column: 36, scope: !3554)
!3613 = !DILocation(line: 1455, column: 13, scope: !3554)
!3614 = !DILocation(line: 1456, column: 12, scope: !3554)
!3615 = !DILocation(line: 1458, column: 2, scope: !3554)
!3616 = !DILocation(line: 1458, column: 31, scope: !3554)
!3617 = !DILocation(line: 1458, column: 42, scope: !3554)
!3618 = !DILocation(line: 1459, column: 2, scope: !3554)
!3619 = !DILocation(line: 1459, column: 27, scope: !3554)
!3620 = !DILocation(line: 1459, column: 34, scope: !3554)
!3621 = !DILocation(line: 1460, column: 2, scope: !3554)
!3622 = !DILocation(line: 1460, column: 27, scope: !3554)
!3623 = !DILocation(line: 1461, column: 2, scope: !3554)
!3624 = !DILocation(line: 1461, column: 26, scope: !3554)
!3625 = !DILocation(line: 1461, column: 35, scope: !3554)
!3626 = !DILocation(line: 1462, column: 2, scope: !3554)
!3627 = !DILocation(line: 1462, column: 26, scope: !3554)
!3628 = !DILocation(line: 1462, column: 37, scope: !3554)
!3629 = !DILocation(line: 1462, column: 51, scope: !3554)
!3630 = !DILocation(line: 1463, column: 2, scope: !3554)
!3631 = !DILocation(line: 1463, column: 16, scope: !3554)
!3632 = !DILocation(line: 1464, column: 2, scope: !3554)
!3633 = !DILocation(line: 1464, column: 7, scope: !3554)
!3634 = !DILocation(line: 1465, column: 2, scope: !3554)
!3635 = !DILocation(line: 1465, column: 6, scope: !3554)
!3636 = !DILocation(line: 1465, column: 14, scope: !3554)
!3637 = !DILocation(line: 1465, column: 20, scope: !3554)
!3638 = !DILocation(line: 1465, column: 29, scope: !3554)
!3639 = !DILocation(line: 1465, column: 40, scope: !3554)
!3640 = !DILocation(line: 1467, column: 2, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !2, line: 1467, column: 2)
!3642 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1467, column: 2)
!3643 = !DILocation(line: 1467, column: 2, scope: !3642)
!3644 = !DILocation(line: 1469, column: 7, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1469, column: 6)
!3646 = !DILocation(line: 1469, column: 14, scope: !3645)
!3647 = !DILocation(line: 1469, column: 6, scope: !3554)
!3648 = !DILocation(line: 1470, column: 3, scope: !3645)
!3649 = !DILocation(line: 1472, column: 9, scope: !3554)
!3650 = !DILocation(line: 1472, column: 7, scope: !3554)
!3651 = !DILocation(line: 1473, column: 7, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1473, column: 6)
!3653 = !DILocation(line: 1473, column: 6, scope: !3554)
!3654 = !DILocation(line: 1474, column: 3, scope: !3652)
!3655 = !DILocation(line: 1475, column: 16, scope: !3554)
!3656 = !DILocation(line: 1475, column: 2, scope: !3554)
!3657 = !DILocation(line: 1475, column: 8, scope: !3554)
!3658 = !DILocation(line: 1475, column: 14, scope: !3554)
!3659 = !DILocation(line: 1476, column: 14, scope: !3554)
!3660 = !DILocation(line: 1476, column: 2, scope: !3554)
!3661 = !DILocation(line: 1476, column: 8, scope: !3554)
!3662 = !DILocation(line: 1476, column: 12, scope: !3554)
!3663 = !DILocation(line: 1477, column: 34, scope: !3554)
!3664 = !DILocation(line: 1477, column: 2, scope: !3554)
!3665 = !DILocation(line: 1477, column: 8, scope: !3554)
!3666 = !DILocation(line: 1477, column: 32, scope: !3554)
!3667 = !DILocation(line: 1478, column: 22, scope: !3554)
!3668 = !DILocation(line: 1478, column: 29, scope: !3554)
!3669 = !DILocation(line: 1478, column: 2, scope: !3554)
!3670 = !DILocation(line: 1478, column: 8, scope: !3554)
!3671 = !DILocation(line: 1478, column: 15, scope: !3554)
!3672 = !DILocation(line: 1478, column: 19, scope: !3554)
!3673 = !DILocation(line: 1479, column: 26, scope: !3554)
!3674 = !DILocation(line: 1479, column: 33, scope: !3554)
!3675 = !DILocation(line: 1479, column: 2, scope: !3554)
!3676 = !DILocation(line: 1479, column: 8, scope: !3554)
!3677 = !DILocation(line: 1479, column: 24, scope: !3554)
!3678 = !DILocation(line: 1481, column: 24, scope: !3554)
!3679 = !DILocation(line: 1481, column: 11, scope: !3554)
!3680 = !DILocation(line: 1482, column: 13, scope: !3554)
!3681 = !DILocation(line: 1483, column: 11, scope: !3554)
!3682 = !DILocation(line: 1483, column: 18, scope: !3554)
!3683 = !DILocation(line: 1483, column: 9, scope: !3554)
!3684 = !DILocation(line: 1483, column: 2, scope: !3554)
!3685 = !DILocation(line: 1485, column: 1, scope: !3554)
!3686 = !DILocation(line: 1489, column: 34, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1489, column: 6)
!3688 = !DILocation(line: 1489, column: 6, scope: !3687)
!3689 = !DILocation(line: 1489, column: 6, scope: !3554)
!3690 = !DILocation(line: 1490, column: 42, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3687, file: !2, line: 1489, column: 43)
!3692 = !DILocation(line: 1490, column: 14, scope: !3691)
!3693 = !DILocation(line: 1490, column: 12, scope: !3691)
!3694 = !DILocation(line: 1491, column: 12, scope: !3691)
!3695 = !DILocation(line: 1491, column: 10, scope: !3691)
!3696 = !DILocation(line: 1492, column: 10, scope: !3691)
!3697 = !DILocation(line: 1493, column: 19, scope: !3691)
!3698 = !DILocation(line: 1493, column: 11, scope: !3691)
!3699 = !DILocation(line: 1493, column: 9, scope: !3691)
!3700 = !DILocation(line: 1495, column: 8, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3691, file: !2, line: 1495, column: 7)
!3702 = !DILocation(line: 1495, column: 7, scope: !3691)
!3703 = !DILocation(line: 1496, column: 4, scope: !3701)
!3704 = !DILocation(line: 1497, column: 3, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !2, line: 1497, column: 3)
!3706 = distinct !DILexicalBlock(scope: !3691, file: !2, line: 1497, column: 3)
!3707 = !DILocation(line: 1497, column: 3, scope: !3706)
!3708 = !DILocation(line: 1498, column: 10, scope: !3691)
!3709 = !DILocation(line: 1498, column: 17, scope: !3691)
!3710 = !DILocation(line: 1498, column: 27, scope: !3691)
!3711 = !DILocation(line: 1498, column: 3, scope: !3691)
!3712 = !DILocation(line: 1499, column: 25, scope: !3691)
!3713 = !DILocation(line: 1499, column: 3, scope: !3691)
!3714 = !DILocation(line: 1499, column: 10, scope: !3691)
!3715 = !DILocation(line: 1499, column: 23, scope: !3691)
!3716 = !DILocation(line: 1500, column: 24, scope: !3691)
!3717 = !DILocation(line: 1500, column: 34, scope: !3691)
!3718 = !DILocation(line: 1500, column: 3, scope: !3691)
!3719 = !DILocation(line: 1500, column: 10, scope: !3691)
!3720 = !DILocation(line: 1500, column: 22, scope: !3691)
!3721 = !DILocation(line: 1501, column: 58, scope: !3691)
!3722 = !DILocation(line: 1501, column: 30, scope: !3691)
!3723 = !DILocation(line: 1501, column: 28, scope: !3691)
!3724 = !DILocation(line: 1501, column: 4, scope: !3691)
!3725 = !DILocation(line: 1501, column: 15, scope: !3691)
!3726 = !DILocation(line: 1502, column: 17, scope: !3691)
!3727 = !DILocation(line: 1502, column: 24, scope: !3691)
!3728 = !DILocation(line: 1502, column: 14, scope: !3691)
!3729 = !DILocation(line: 1503, column: 12, scope: !3691)
!3730 = !DILocation(line: 1503, column: 22, scope: !3691)
!3731 = !DILocation(line: 1503, column: 10, scope: !3691)
!3732 = !DILocation(line: 1504, column: 2, scope: !3691)
!3733 = !DILocation(line: 1507, column: 33, scope: !3554)
!3734 = !DILocation(line: 1507, column: 9, scope: !3554)
!3735 = !DILocation(line: 1507, column: 7, scope: !3554)
!3736 = !DILocation(line: 1508, column: 10, scope: !3554)
!3737 = !DILocation(line: 1508, column: 8, scope: !3554)
!3738 = !DILocation(line: 1509, column: 7, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1509, column: 6)
!3740 = !DILocation(line: 1509, column: 6, scope: !3554)
!3741 = !DILocation(line: 1510, column: 3, scope: !3739)
!3742 = !DILocation(line: 1511, column: 2, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !2, line: 1511, column: 2)
!3744 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1511, column: 2)
!3745 = !DILocation(line: 1511, column: 2, scope: !3744)
!3746 = !DILocation(line: 1512, column: 24, scope: !3554)
!3747 = !DILocation(line: 1512, column: 2, scope: !3554)
!3748 = !DILocation(line: 1512, column: 9, scope: !3554)
!3749 = !DILocation(line: 1512, column: 22, scope: !3554)
!3750 = !DILocation(line: 1513, column: 23, scope: !3554)
!3751 = !DILocation(line: 1513, column: 29, scope: !3554)
!3752 = !DILocation(line: 1513, column: 2, scope: !3554)
!3753 = !DILocation(line: 1513, column: 9, scope: !3554)
!3754 = !DILocation(line: 1513, column: 21, scope: !3554)
!3755 = !DILocation(line: 1514, column: 53, scope: !3554)
!3756 = !DILocation(line: 1514, column: 29, scope: !3554)
!3757 = !DILocation(line: 1514, column: 27, scope: !3554)
!3758 = !DILocation(line: 1514, column: 3, scope: !3554)
!3759 = !DILocation(line: 1514, column: 14, scope: !3554)
!3760 = !DILocation(line: 1515, column: 13, scope: !3554)
!3761 = !DILocation(line: 1516, column: 7, scope: !3554)
!3762 = !DILocation(line: 1516, column: 2, scope: !3554)
!3763 = !DILocation(line: 1518, column: 1, scope: !3554)
!3764 = !DILocation(line: 1520, column: 2, scope: !3554)
!3765 = !DILocation(line: 1520, column: 9, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !2, line: 1520, column: 2)
!3767 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1520, column: 2)
!3768 = !DILocation(line: 1520, column: 14, scope: !3766)
!3769 = !DILocation(line: 1520, column: 2, scope: !3767)
!3770 = !DILocation(line: 1521, column: 9, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3766, file: !2, line: 1520, column: 45)
!3772 = !DILocation(line: 1521, column: 15, scope: !3771)
!3773 = !DILocation(line: 1521, column: 21, scope: !3771)
!3774 = !DILocation(line: 1521, column: 7, scope: !3771)
!3775 = !DILocation(line: 1522, column: 8, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3771, file: !2, line: 1522, column: 7)
!3777 = !DILocation(line: 1522, column: 7, scope: !3771)
!3778 = !DILocation(line: 1523, column: 4, scope: !3776)
!3779 = !DILocation(line: 1525, column: 31, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3771, file: !2, line: 1525, column: 7)
!3781 = !DILocation(line: 1525, column: 7, scope: !3780)
!3782 = !DILocation(line: 1525, column: 7, scope: !3771)
!3783 = !DILocation(line: 1526, column: 8, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !2, line: 1526, column: 8)
!3785 = distinct !DILexicalBlock(scope: !3780, file: !2, line: 1525, column: 37)
!3786 = !DILocation(line: 1526, column: 41, scope: !3784)
!3787 = !DILocation(line: 1526, column: 17, scope: !3784)
!3788 = !DILocation(line: 1527, column: 10, scope: !3784)
!3789 = !DILocation(line: 1526, column: 8, scope: !3785)
!3790 = !DILocation(line: 1531, column: 26, scope: !3784)
!3791 = !DILocation(line: 1531, column: 5, scope: !3784)
!3792 = !DILocation(line: 1531, column: 12, scope: !3784)
!3793 = !DILocation(line: 1531, column: 18, scope: !3784)
!3794 = !DILocation(line: 1531, column: 24, scope: !3784)
!3795 = !DILocation(line: 1532, column: 4, scope: !3785)
!3796 = !DILocation(line: 1535, column: 17, scope: !3771)
!3797 = !DILocation(line: 1535, column: 24, scope: !3771)
!3798 = !DILocation(line: 1535, column: 30, scope: !3771)
!3799 = !DILocation(line: 1535, column: 14, scope: !3771)
!3800 = !DILocation(line: 1536, column: 12, scope: !3771)
!3801 = !DILocation(line: 1536, column: 10, scope: !3771)
!3802 = !DILocation(line: 1537, column: 3, scope: !3771)
!3803 = !DILocation(line: 1520, column: 41, scope: !3766)
!3804 = !DILocation(line: 1520, column: 2, scope: !3766)
!3805 = distinct !{!3805, !3769, !3806, !306, !307}
!3806 = !DILocation(line: 1538, column: 2, scope: !3767)
!3807 = !DILocation(line: 1540, column: 1, scope: !3554)
!3808 = !DILocation(line: 1541, column: 2, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !2, line: 1541, column: 2)
!3810 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1541, column: 2)
!3811 = !DILocation(line: 1541, column: 2, scope: !3810)
!3812 = !DILocation(line: 1546, column: 2, scope: !3554)
!3813 = !DILocation(line: 1546, column: 9, scope: !3554)
!3814 = !DILocation(line: 1546, column: 29, scope: !3554)
!3815 = !DILocation(line: 1547, column: 10, scope: !3554)
!3816 = !DILocation(line: 1548, column: 12, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1548, column: 2)
!3818 = !DILocation(line: 1548, column: 7, scope: !3817)
!3819 = !DILocation(line: 1548, column: 17, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3817, file: !2, line: 1548, column: 2)
!3821 = !DILocation(line: 1548, column: 22, scope: !3820)
!3822 = !DILocation(line: 1548, column: 2, scope: !3817)
!3823 = !DILocation(line: 1549, column: 9, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3820, file: !2, line: 1548, column: 53)
!3825 = !DILocation(line: 1549, column: 16, scope: !3824)
!3826 = !DILocation(line: 1549, column: 22, scope: !3824)
!3827 = !DILocation(line: 1549, column: 7, scope: !3824)
!3828 = !DILocation(line: 1550, column: 8, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3824, file: !2, line: 1550, column: 7)
!3830 = !DILocation(line: 1550, column: 7, scope: !3824)
!3831 = !DILocation(line: 1551, column: 11, scope: !3829)
!3832 = !DILocation(line: 1551, column: 4, scope: !3829)
!3833 = !DILocation(line: 1552, column: 36, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3829, file: !2, line: 1552, column: 12)
!3835 = !DILocation(line: 1552, column: 12, scope: !3834)
!3836 = !DILocation(line: 1552, column: 12, scope: !3829)
!3837 = !DILocation(line: 1553, column: 4, scope: !3834)
!3838 = !DILocation(line: 1553, column: 11, scope: !3834)
!3839 = !DILocation(line: 1553, column: 30, scope: !3834)
!3840 = !DILocation(line: 1554, column: 2, scope: !3824)
!3841 = !DILocation(line: 1548, column: 49, scope: !3820)
!3842 = !DILocation(line: 1548, column: 2, scope: !3820)
!3843 = distinct !{!3843, !3822, !3844, !306, !307}
!3844 = !DILocation(line: 1554, column: 2, scope: !3817)
!3845 = !DILocation(line: 1555, column: 2, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !2, line: 1555, column: 2)
!3847 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1555, column: 2)
!3848 = !DILocation(line: 1555, column: 2, scope: !3847)
!3849 = !DILocation(line: 1558, column: 11, scope: !3554)
!3850 = !DILocation(line: 1559, column: 12, scope: !3554)
!3851 = !DILocation(line: 1560, column: 12, scope: !3588)
!3852 = !DILocation(line: 1560, column: 7, scope: !3588)
!3853 = !DILocation(line: 1560, column: 17, scope: !3587)
!3854 = !DILocation(line: 1560, column: 22, scope: !3587)
!3855 = !DILocation(line: 1560, column: 2, scope: !3588)
!3856 = !DILocation(line: 1561, column: 3, scope: !3586)
!3857 = !DILocation(line: 1561, column: 32, scope: !3586)
!3858 = !DILocation(line: 1562, column: 3, scope: !3586)
!3859 = !DILocation(line: 1562, column: 28, scope: !3586)
!3860 = !DILocation(line: 1564, column: 9, scope: !3586)
!3861 = !DILocation(line: 1564, column: 16, scope: !3586)
!3862 = !DILocation(line: 1564, column: 22, scope: !3586)
!3863 = !DILocation(line: 1564, column: 7, scope: !3586)
!3864 = !DILocation(line: 1565, column: 8, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3586, file: !2, line: 1565, column: 7)
!3866 = !DILocation(line: 1565, column: 12, scope: !3865)
!3867 = !DILocation(line: 1565, column: 39, scope: !3865)
!3868 = !DILocation(line: 1565, column: 15, scope: !3865)
!3869 = !DILocation(line: 1565, column: 7, scope: !3586)
!3870 = !DILocation(line: 1566, column: 4, scope: !3865)
!3871 = !DILocation(line: 1568, column: 5, scope: !3586)
!3872 = !DILocation(line: 1569, column: 35, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3586, file: !2, line: 1569, column: 7)
!3874 = !DILocation(line: 1569, column: 7, scope: !3873)
!3875 = !DILocation(line: 1569, column: 7, scope: !3586)
!3876 = !DILocation(line: 1570, column: 36, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3873, file: !2, line: 1569, column: 41)
!3878 = !DILocation(line: 1570, column: 8, scope: !3877)
!3879 = !DILocation(line: 1570, column: 6, scope: !3877)
!3880 = !DILocation(line: 1571, column: 10, scope: !3877)
!3881 = !DILocation(line: 1571, column: 13, scope: !3877)
!3882 = !DILocation(line: 1571, column: 8, scope: !3877)
!3883 = !DILocation(line: 1572, column: 3, scope: !3877)
!3884 = !DILocation(line: 1574, column: 35, scope: !3586)
!3885 = !DILocation(line: 1574, column: 11, scope: !3586)
!3886 = !DILocation(line: 1574, column: 9, scope: !3586)
!3887 = !DILocation(line: 1575, column: 33, scope: !3586)
!3888 = !DILocation(line: 1575, column: 40, scope: !3586)
!3889 = !DILocation(line: 1575, column: 3, scope: !3586)
!3890 = !DILocation(line: 1575, column: 10, scope: !3586)
!3891 = !DILocation(line: 1575, column: 30, scope: !3586)
!3892 = !DILocation(line: 1577, column: 7, scope: !3595)
!3893 = !DILocation(line: 1577, column: 14, scope: !3595)
!3894 = !DILocation(line: 1577, column: 37, scope: !3595)
!3895 = !DILocation(line: 1577, column: 45, scope: !3595)
!3896 = !DILocation(line: 1577, column: 34, scope: !3595)
!3897 = !DILocation(line: 1577, column: 7, scope: !3586)
!3898 = !DILocation(line: 1579, column: 4, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !2, line: 1579, column: 4)
!3900 = distinct !DILexicalBlock(scope: !3594, file: !2, line: 1579, column: 4)
!3901 = !DILocation(line: 1579, column: 4, scope: !3900)
!3902 = !DILocation(line: 1586, column: 4, scope: !3594)
!3903 = !DILocation(line: 1586, column: 4, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !2, line: 1586, column: 4)
!3905 = distinct !DILexicalBlock(scope: !3594, file: !2, line: 1586, column: 4)
!3906 = !DILocation(line: 1586, column: 4, scope: !3905)
!3907 = !DILocation(line: 1586, column: 4, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3904, file: !2, line: 1586, column: 4)
!3909 = !DILocation(line: 1586, column: 4, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3908, file: !2, line: 1586, column: 4)
!3911 = !DILocation(line: 1586, column: 4, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3908, file: !2, line: 1586, column: 4)
!3913 = !{i64 2151578708, i64 2151578737, i64 2151578783, i64 2151578841, i64 2151578895, i64 2151578949, i64 2151579004, i64 2151579035}
!3914 = !DILocation(line: 1588, column: 4, scope: !3594)
!3915 = !DILocation(line: 1588, column: 11, scope: !3594)
!3916 = !DILocation(line: 1588, column: 17, scope: !3594)
!3917 = !DILocation(line: 1588, column: 23, scope: !3594)
!3918 = !DILocation(line: 1589, column: 11, scope: !3594)
!3919 = !DILocation(line: 1590, column: 8, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3594, file: !2, line: 1590, column: 8)
!3921 = !DILocation(line: 1590, column: 15, scope: !3920)
!3922 = !DILocation(line: 1590, column: 13, scope: !3920)
!3923 = !DILocation(line: 1590, column: 8, scope: !3594)
!3924 = !DILocation(line: 1591, column: 17, scope: !3920)
!3925 = !DILocation(line: 1591, column: 15, scope: !3920)
!3926 = !DILocation(line: 1591, column: 5, scope: !3920)
!3927 = !DILocation(line: 1592, column: 11, scope: !3593)
!3928 = !DILocation(line: 1592, column: 9, scope: !3593)
!3929 = !DILocation(line: 1592, column: 16, scope: !3592)
!3930 = !DILocation(line: 1592, column: 18, scope: !3592)
!3931 = !DILocation(line: 1592, column: 4, scope: !3593)
!3932 = !DILocation(line: 1593, column: 5, scope: !3591)
!3933 = !DILocation(line: 1593, column: 29, scope: !3591)
!3934 = !DILocation(line: 1593, column: 33, scope: !3591)
!3935 = !DILocation(line: 1593, column: 40, scope: !3591)
!3936 = !DILocation(line: 1593, column: 46, scope: !3591)
!3937 = !DILocation(line: 1594, column: 10, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3591, file: !2, line: 1594, column: 9)
!3939 = !DILocation(line: 1594, column: 9, scope: !3591)
!3940 = !DILocation(line: 1595, column: 6, scope: !3938)
!3941 = !DILocation(line: 1596, column: 5, scope: !3591)
!3942 = !DILocation(line: 1596, column: 5, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !2, line: 1596, column: 5)
!3944 = distinct !DILexicalBlock(scope: !3591, file: !2, line: 1596, column: 5)
!3945 = !DILocation(line: 1596, column: 5, scope: !3944)
!3946 = !DILocation(line: 1596, column: 5, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3943, file: !2, line: 1596, column: 5)
!3948 = !DILocation(line: 1596, column: 5, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3947, file: !2, line: 1596, column: 5)
!3950 = !DILocation(line: 1596, column: 5, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3947, file: !2, line: 1596, column: 5)
!3952 = !{i64 2151579732, i64 2151579761, i64 2151579807, i64 2151579865, i64 2151579919, i64 2151579973, i64 2151580028, i64 2151580059}
!3953 = !DILocation(line: 1597, column: 5, scope: !3591)
!3954 = !DILocation(line: 1597, column: 12, scope: !3591)
!3955 = !DILocation(line: 1597, column: 19, scope: !3591)
!3956 = !DILocation(line: 1597, column: 25, scope: !3591)
!3957 = !DILocation(line: 1598, column: 15, scope: !3591)
!3958 = distinct !{!3958, !3953, !3957, !306, !307}
!3959 = !DILocation(line: 1599, column: 5, scope: !3591)
!3960 = !DILocation(line: 1599, column: 5, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3962, file: !2, line: 1599, column: 5)
!3962 = distinct !DILexicalBlock(scope: !3591, file: !2, line: 1599, column: 5)
!3963 = !DILocation(line: 1599, column: 5, scope: !3962)
!3964 = !DILocation(line: 1599, column: 5, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3961, file: !2, line: 1599, column: 5)
!3966 = !DILocation(line: 1599, column: 5, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3965, file: !2, line: 1599, column: 5)
!3968 = !DILocation(line: 1599, column: 5, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3965, file: !2, line: 1599, column: 5)
!3970 = !{i64 2151584783, i64 2151584812, i64 2151584858, i64 2151584916, i64 2151584970, i64 2151585024, i64 2151585079, i64 2151585110}
!3971 = !DILocation(line: 1600, column: 33, scope: !3591)
!3972 = !DILocation(line: 1600, column: 5, scope: !3591)
!3973 = !DILocation(line: 1600, column: 12, scope: !3591)
!3974 = !DILocation(line: 1600, column: 27, scope: !3591)
!3975 = !DILocation(line: 1600, column: 31, scope: !3591)
!3976 = !DILocation(line: 1601, column: 12, scope: !3591)
!3977 = !DILocation(line: 1602, column: 4, scope: !3592)
!3978 = !DILocation(line: 1602, column: 4, scope: !3591)
!3979 = !DILocation(line: 1592, column: 42, scope: !3592)
!3980 = !DILocation(line: 1592, column: 4, scope: !3592)
!3981 = distinct !{!3981, !3931, !3982, !306, !307}
!3982 = !DILocation(line: 1602, column: 4, scope: !3593)
!3983 = !DILocation(line: 1603, column: 10, scope: !3594)
!3984 = !DILocation(line: 1603, column: 4, scope: !3594)
!3985 = !DILocation(line: 1604, column: 3, scope: !3594)
!3986 = !DILocation(line: 1605, column: 4, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !2, line: 1605, column: 4)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !2, line: 1605, column: 4)
!3989 = distinct !DILexicalBlock(scope: !3595, file: !2, line: 1604, column: 10)
!3990 = !DILocation(line: 1605, column: 4, scope: !3988)
!3991 = !DILocation(line: 1608, column: 13, scope: !3989)
!3992 = !DILocation(line: 1610, column: 2, scope: !3587)
!3993 = !DILocation(line: 1610, column: 2, scope: !3586)
!3994 = !DILocation(line: 1560, column: 49, scope: !3587)
!3995 = !DILocation(line: 1560, column: 2, scope: !3587)
!3996 = distinct !{!3996, !3855, !3997, !306, !307}
!3997 = !DILocation(line: 1610, column: 2, scope: !3588)
!3998 = !DILocation(line: 1612, column: 6, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1612, column: 6)
!4000 = !DILocation(line: 1612, column: 15, scope: !3999)
!4001 = !DILocation(line: 1612, column: 18, scope: !3999)
!4002 = !DILocation(line: 1612, column: 25, scope: !3999)
!4003 = !DILocation(line: 1612, column: 45, scope: !3999)
!4004 = !DILocation(line: 1612, column: 6, scope: !3554)
!4005 = !DILocation(line: 1613, column: 3, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4007, file: !2, line: 1613, column: 3)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !2, line: 1613, column: 3)
!4008 = distinct !DILexicalBlock(scope: !3999, file: !2, line: 1612, column: 69)
!4009 = !DILocation(line: 1613, column: 3, scope: !4007)
!4010 = !DILocation(line: 1614, column: 3, scope: !4008)
!4011 = !DILocation(line: 1616, column: 2, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !2, line: 1616, column: 2)
!4013 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1616, column: 2)
!4014 = !DILocation(line: 1616, column: 2, scope: !4013)
!4015 = !DILocation(line: 1618, column: 22, scope: !3554)
!4016 = !DILocation(line: 1618, column: 29, scope: !3554)
!4017 = !DILocation(line: 1618, column: 20, scope: !3554)
!4018 = !DILocation(line: 1621, column: 6, scope: !3602)
!4019 = !DILocation(line: 1621, column: 14, scope: !3602)
!4020 = !DILocation(line: 1621, column: 6, scope: !3554)
!4021 = !DILocation(line: 1622, column: 13, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3601, file: !2, line: 1622, column: 3)
!4023 = !DILocation(line: 1622, column: 8, scope: !4022)
!4024 = !DILocation(line: 1622, column: 18, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4022, file: !2, line: 1622, column: 3)
!4026 = !DILocation(line: 1622, column: 23, scope: !4025)
!4027 = !DILocation(line: 1622, column: 3, scope: !4022)
!4028 = !DILocation(line: 1623, column: 15, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4025, file: !2, line: 1623, column: 8)
!4030 = !DILocation(line: 1623, column: 22, scope: !4029)
!4031 = !DILocation(line: 1623, column: 28, scope: !4029)
!4032 = !DILocation(line: 1623, column: 13, scope: !4029)
!4033 = !DILocation(line: 1623, column: 8, scope: !4025)
!4034 = !DILocation(line: 1624, column: 5, scope: !4029)
!4035 = !DILocation(line: 1623, column: 33, scope: !4029)
!4036 = !DILocation(line: 1622, column: 50, scope: !4025)
!4037 = !DILocation(line: 1622, column: 3, scope: !4025)
!4038 = distinct !{!4038, !4027, !4039, !306, !307}
!4039 = !DILocation(line: 1624, column: 5, scope: !4022)
!4040 = !DILocation(line: 1626, column: 31, scope: !3600)
!4041 = !DILocation(line: 1626, column: 7, scope: !3600)
!4042 = !DILocation(line: 1626, column: 36, scope: !3600)
!4043 = !DILocation(line: 1627, column: 35, scope: !3600)
!4044 = !DILocation(line: 1627, column: 7, scope: !3600)
!4045 = !DILocation(line: 1626, column: 7, scope: !3601)
!4046 = !DILocation(line: 1628, column: 4, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !2, line: 1628, column: 4)
!4048 = distinct !DILexicalBlock(scope: !3599, file: !2, line: 1628, column: 4)
!4049 = !DILocation(line: 1628, column: 4, scope: !4048)
!4050 = !DILocation(line: 1629, column: 40, scope: !3599)
!4051 = !DILocation(line: 1629, column: 12, scope: !3599)
!4052 = !DILocation(line: 1629, column: 10, scope: !3599)
!4053 = !DILocation(line: 1630, column: 17, scope: !3599)
!4054 = !DILocation(line: 1630, column: 24, scope: !3599)
!4055 = !DILocation(line: 1630, column: 15, scope: !3599)
!4056 = !DILocation(line: 1631, column: 11, scope: !3599)
!4057 = !DILocation(line: 1631, column: 18, scope: !3599)
!4058 = !DILocation(line: 1631, column: 9, scope: !3599)
!4059 = !DILocation(line: 1632, column: 10, scope: !3599)
!4060 = !DILocation(line: 1632, column: 4, scope: !3599)
!4061 = !DILocation(line: 1633, column: 9, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !3599, file: !2, line: 1633, column: 8)
!4063 = !DILocation(line: 1633, column: 8, scope: !3599)
!4064 = !DILocation(line: 1634, column: 5, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4062, file: !2, line: 1633, column: 21)
!4066 = !DILocation(line: 1634, column: 12, scope: !4065)
!4067 = !DILocation(line: 1634, column: 25, scope: !4065)
!4068 = !DILocation(line: 1635, column: 5, scope: !4065)
!4069 = !DILocation(line: 1635, column: 12, scope: !4065)
!4070 = !DILocation(line: 1635, column: 24, scope: !4065)
!4071 = !DILocation(line: 1636, column: 16, scope: !4065)
!4072 = !DILocation(line: 1636, column: 14, scope: !4065)
!4073 = !DILocation(line: 1637, column: 5, scope: !4065)
!4074 = !DILocation(line: 1640, column: 36, scope: !3598)
!4075 = !DILocation(line: 1640, column: 8, scope: !3598)
!4076 = !DILocation(line: 1640, column: 8, scope: !3599)
!4077 = !DILocation(line: 1642, column: 5, scope: !3597)
!4078 = !DILocation(line: 1642, column: 34, scope: !3597)
!4079 = !DILocation(line: 1643, column: 34, scope: !3597)
!4080 = !DILocation(line: 1643, column: 6, scope: !3597)
!4081 = !DILocation(line: 1645, column: 5, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !2, line: 1645, column: 5)
!4083 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 1645, column: 5)
!4084 = !DILocation(line: 1645, column: 5, scope: !4083)
!4085 = !DILocation(line: 1647, column: 40, scope: !3597)
!4086 = !DILocation(line: 1647, column: 43, scope: !3597)
!4087 = !DILocation(line: 1647, column: 18, scope: !3597)
!4088 = !DILocation(line: 1647, column: 25, scope: !3597)
!4089 = !DILocation(line: 1647, column: 38, scope: !3597)
!4090 = !DILocation(line: 1647, column: 16, scope: !3597)
!4091 = !DILocation(line: 1648, column: 33, scope: !3597)
!4092 = !DILocation(line: 1648, column: 36, scope: !3597)
!4093 = !DILocation(line: 1648, column: 12, scope: !3597)
!4094 = !DILocation(line: 1648, column: 19, scope: !3597)
!4095 = !DILocation(line: 1648, column: 31, scope: !3597)
!4096 = !DILocation(line: 1648, column: 10, scope: !3597)
!4097 = !DILocation(line: 1649, column: 11, scope: !3597)
!4098 = !DILocation(line: 1649, column: 5, scope: !3597)
!4099 = !DILocation(line: 1650, column: 10, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 1650, column: 9)
!4101 = !DILocation(line: 1650, column: 9, scope: !3597)
!4102 = !DILocation(line: 1651, column: 6, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !2, line: 1650, column: 22)
!4104 = !DILocation(line: 1651, column: 13, scope: !4103)
!4105 = !DILocation(line: 1651, column: 26, scope: !4103)
!4106 = !DILocation(line: 1652, column: 6, scope: !4103)
!4107 = !DILocation(line: 1652, column: 13, scope: !4103)
!4108 = !DILocation(line: 1652, column: 25, scope: !4103)
!4109 = !DILocation(line: 1653, column: 17, scope: !4103)
!4110 = !DILocation(line: 1653, column: 15, scope: !4103)
!4111 = !DILocation(line: 1654, column: 6, scope: !4103)
!4112 = !DILocation(line: 1656, column: 4, scope: !3598)
!4113 = !DILocation(line: 1656, column: 4, scope: !3597)
!4114 = !DILocation(line: 1658, column: 26, scope: !3599)
!4115 = !DILocation(line: 1658, column: 4, scope: !3599)
!4116 = !DILocation(line: 1658, column: 11, scope: !3599)
!4117 = !DILocation(line: 1658, column: 24, scope: !3599)
!4118 = !DILocation(line: 1659, column: 25, scope: !3599)
!4119 = !DILocation(line: 1659, column: 4, scope: !3599)
!4120 = !DILocation(line: 1659, column: 11, scope: !3599)
!4121 = !DILocation(line: 1659, column: 23, scope: !3599)
!4122 = !DILocation(line: 1660, column: 36, scope: !3599)
!4123 = !DILocation(line: 1660, column: 12, scope: !3599)
!4124 = !DILocation(line: 1660, column: 10, scope: !3599)
!4125 = !DILocation(line: 1661, column: 25, scope: !3599)
!4126 = !DILocation(line: 1661, column: 4, scope: !3599)
!4127 = !DILocation(line: 1661, column: 11, scope: !3599)
!4128 = !DILocation(line: 1661, column: 17, scope: !3599)
!4129 = !DILocation(line: 1661, column: 23, scope: !3599)
!4130 = !DILocation(line: 1662, column: 4, scope: !3599)
!4131 = !DILocation(line: 1664, column: 2, scope: !3601)
!4132 = !DILocation(line: 1669, column: 8, scope: !3554)
!4133 = !DILocation(line: 1669, column: 15, scope: !3554)
!4134 = !DILocation(line: 1669, column: 6, scope: !3554)
!4135 = !DILocation(line: 1670, column: 7, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1670, column: 6)
!4137 = !DILocation(line: 1670, column: 6, scope: !3554)
!4138 = !DILocation(line: 1671, column: 3, scope: !4136)
!4139 = !DILocation(line: 1673, column: 34, scope: !3607)
!4140 = !DILocation(line: 1673, column: 6, scope: !3607)
!4141 = !DILocation(line: 1673, column: 6, scope: !3554)
!4142 = !DILocation(line: 1674, column: 39, scope: !3606)
!4143 = !DILocation(line: 1674, column: 11, scope: !3606)
!4144 = !DILocation(line: 1674, column: 9, scope: !3606)
!4145 = !DILocation(line: 1675, column: 16, scope: !3606)
!4146 = !DILocation(line: 1675, column: 23, scope: !3606)
!4147 = !DILocation(line: 1675, column: 14, scope: !3606)
!4148 = !DILocation(line: 1676, column: 10, scope: !3606)
!4149 = !DILocation(line: 1676, column: 17, scope: !3606)
!4150 = !DILocation(line: 1676, column: 8, scope: !3606)
!4151 = !DILocation(line: 1678, column: 7, scope: !3605)
!4152 = !DILocation(line: 1678, column: 14, scope: !3605)
!4153 = !DILocation(line: 1678, column: 34, scope: !3605)
!4154 = !DILocation(line: 1678, column: 7, scope: !3606)
!4155 = !DILocation(line: 1679, column: 4, scope: !3604)
!4156 = !DILocation(line: 1679, column: 29, scope: !3604)
!4157 = !DILocation(line: 1681, column: 4, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4159, file: !2, line: 1681, column: 4)
!4159 = distinct !DILexicalBlock(scope: !3604, file: !2, line: 1681, column: 4)
!4160 = !DILocation(line: 1681, column: 4, scope: !4159)
!4161 = !DILocation(line: 1682, column: 26, scope: !3604)
!4162 = !DILocation(line: 1682, column: 4, scope: !3604)
!4163 = !DILocation(line: 1682, column: 11, scope: !3604)
!4164 = !DILocation(line: 1682, column: 24, scope: !3604)
!4165 = !DILocation(line: 1683, column: 25, scope: !3604)
!4166 = !DILocation(line: 1683, column: 4, scope: !3604)
!4167 = !DILocation(line: 1683, column: 11, scope: !3604)
!4168 = !DILocation(line: 1683, column: 23, scope: !3604)
!4169 = !DILocation(line: 1684, column: 10, scope: !3604)
!4170 = !DILocation(line: 1684, column: 4, scope: !3604)
!4171 = !DILocation(line: 1685, column: 9, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !3604, file: !2, line: 1685, column: 8)
!4173 = !DILocation(line: 1685, column: 8, scope: !3604)
!4174 = !DILocation(line: 1686, column: 40, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4172, file: !2, line: 1685, column: 21)
!4176 = !DILocation(line: 1686, column: 16, scope: !4175)
!4177 = !DILocation(line: 1686, column: 14, scope: !4175)
!4178 = !DILocation(line: 1687, column: 5, scope: !4175)
!4179 = !DILocation(line: 1690, column: 32, scope: !3604)
!4180 = !DILocation(line: 1690, column: 8, scope: !3604)
!4181 = !DILocation(line: 1690, column: 6, scope: !3604)
!4182 = !DILocation(line: 1691, column: 45, scope: !3604)
!4183 = !DILocation(line: 1691, column: 21, scope: !3604)
!4184 = !DILocation(line: 1691, column: 4, scope: !3604)
!4185 = !DILocation(line: 1691, column: 7, scope: !3604)
!4186 = !DILocation(line: 1691, column: 13, scope: !3604)
!4187 = !DILocation(line: 1691, column: 19, scope: !3604)
!4188 = !DILocation(line: 1692, column: 3, scope: !3605)
!4189 = !DILocation(line: 1692, column: 3, scope: !3604)
!4190 = !DILocation(line: 1693, column: 2, scope: !3606)
!4191 = !DILocation(line: 1694, column: 16, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !3607, file: !2, line: 1693, column: 9)
!4193 = !DILocation(line: 1694, column: 14, scope: !4192)
!4194 = !DILocation(line: 1696, column: 34, scope: !3554)
!4195 = !DILocation(line: 1696, column: 10, scope: !3554)
!4196 = !DILocation(line: 1696, column: 8, scope: !3554)
!4197 = !DILocation(line: 1696, column: 2, scope: !3554)
!4198 = !DILocation(line: 1698, column: 1, scope: !3554)
!4199 = !DILocation(line: 1699, column: 8, scope: !3554)
!4200 = !DILocation(line: 1699, column: 14, scope: !3554)
!4201 = !DILocation(line: 1699, column: 6, scope: !3554)
!4202 = !DILocation(line: 1700, column: 34, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1700, column: 6)
!4204 = !DILocation(line: 1700, column: 6, scope: !4203)
!4205 = !DILocation(line: 1700, column: 6, scope: !3554)
!4206 = !DILocation(line: 1701, column: 42, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4203, file: !2, line: 1700, column: 40)
!4208 = !DILocation(line: 1701, column: 14, scope: !4207)
!4209 = !DILocation(line: 1701, column: 12, scope: !4207)
!4210 = !DILocation(line: 1702, column: 10, scope: !4207)
!4211 = !DILocation(line: 1702, column: 20, scope: !4207)
!4212 = !DILocation(line: 1702, column: 8, scope: !4207)
!4213 = !DILocation(line: 1703, column: 12, scope: !4207)
!4214 = !DILocation(line: 1703, column: 22, scope: !4207)
!4215 = !DILocation(line: 1703, column: 10, scope: !4207)
!4216 = !DILocation(line: 1704, column: 8, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4207, file: !2, line: 1704, column: 7)
!4218 = !DILocation(line: 1704, column: 7, scope: !4207)
!4219 = !DILocation(line: 1705, column: 4, scope: !4217)
!4220 = !DILocation(line: 1706, column: 2, scope: !4207)
!4221 = !DILocation(line: 1707, column: 10, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4203, file: !2, line: 1706, column: 9)
!4223 = !DILocation(line: 1707, column: 16, scope: !4222)
!4224 = !DILocation(line: 1707, column: 8, scope: !4222)
!4225 = !DILocation(line: 1708, column: 12, scope: !4222)
!4226 = !DILocation(line: 1708, column: 10, scope: !4222)
!4227 = !DILocation(line: 1710, column: 2, scope: !3554)
!4228 = !DILocation(line: 1710, column: 2, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4230, file: !2, line: 1710, column: 2)
!4230 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1710, column: 2)
!4231 = !DILocation(line: 1710, column: 2, scope: !4230)
!4232 = !DILocation(line: 1710, column: 2, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4229, file: !2, line: 1710, column: 2)
!4234 = !DILocation(line: 1710, column: 2, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4233, file: !2, line: 1710, column: 2)
!4236 = !DILocation(line: 1710, column: 2, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4233, file: !2, line: 1710, column: 2)
!4238 = !{i64 2151587519, i64 2151587548, i64 2151587594, i64 2151587652, i64 2151587706, i64 2151587760, i64 2151587815, i64 2151587846}
!4239 = !DILocation(line: 1711, column: 33, scope: !3554)
!4240 = !DILocation(line: 1711, column: 9, scope: !3554)
!4241 = !DILocation(line: 1711, column: 7, scope: !3554)
!4242 = !DILocation(line: 1712, column: 6, scope: !3554)
!4243 = !DILocation(line: 1713, column: 2, scope: !3554)
!4244 = !DILocation(line: 1715, column: 1, scope: !3554)
!4245 = !DILocation(line: 1716, column: 20, scope: !3554)
!4246 = !DILocation(line: 1716, column: 2, scope: !3554)
!4247 = !DILocation(line: 1716, column: 8, scope: !3554)
!4248 = !DILocation(line: 1716, column: 15, scope: !3554)
!4249 = !DILocation(line: 1716, column: 18, scope: !3554)
!4250 = !DILocation(line: 1717, column: 25, scope: !3554)
!4251 = !DILocation(line: 1717, column: 2, scope: !3554)
!4252 = !DILocation(line: 1718, column: 29, scope: !3554)
!4253 = !DILocation(line: 1718, column: 2, scope: !3554)
!4254 = !DILocation(line: 1718, column: 9, scope: !3554)
!4255 = !DILocation(line: 1718, column: 27, scope: !3554)
!4256 = !DILocation(line: 1719, column: 2, scope: !3554)
!4257 = !DILocation(line: 1721, column: 1, scope: !3554)
!4258 = !DILocation(line: 1722, column: 2, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !2, line: 1722, column: 2)
!4260 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1722, column: 2)
!4261 = !DILocation(line: 1722, column: 2, scope: !4260)
!4262 = !DILocation(line: 1723, column: 30, scope: !3554)
!4263 = !DILocation(line: 1723, column: 40, scope: !3554)
!4264 = !DILocation(line: 1723, column: 46, scope: !3554)
!4265 = !DILocation(line: 1723, column: 2, scope: !3554)
!4266 = !DILocation(line: 1724, column: 8, scope: !3554)
!4267 = !DILocation(line: 1724, column: 2, scope: !3554)
!4268 = !DILocation(line: 1725, column: 2, scope: !3554)
!4269 = !DILocation(line: 1726, column: 1, scope: !3554)
!4270 = distinct !DISubprogram(name: "kmalloc", scope: !9, file: !9, line: 591, type: !1169, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4271)
!4271 = !{!4272, !4273, !4274}
!4272 = !DILocalVariable(name: "size", arg: 1, scope: !4270, file: !9, line: 591, type: !157)
!4273 = !DILocalVariable(name: "flags", arg: 2, scope: !4270, file: !9, line: 591, type: !43)
!4274 = !DILocalVariable(name: "index", scope: !4275, file: !9, line: 594, type: !16)
!4275 = distinct !DILexicalBlock(scope: !4276, file: !9, line: 593, column: 42)
!4276 = distinct !DILexicalBlock(scope: !4270, file: !9, line: 593, column: 6)
!4277 = !DILocation(line: 591, column: 61, scope: !4270)
!4278 = !DILocation(line: 591, column: 73, scope: !4270)
!4279 = !DILocation(line: 593, column: 27, scope: !4276)
!4280 = !DILocation(line: 593, column: 6, scope: !4276)
!4281 = !DILocation(line: 593, column: 33, scope: !4276)
!4282 = !DILocation(line: 593, column: 36, scope: !4276)
!4283 = !DILocation(line: 593, column: 6, scope: !4270)
!4284 = !DILocation(line: 594, column: 3, scope: !4275)
!4285 = !DILocation(line: 594, column: 16, scope: !4275)
!4286 = !DILocation(line: 596, column: 7, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4275, file: !9, line: 596, column: 7)
!4288 = !DILocation(line: 596, column: 12, scope: !4287)
!4289 = !DILocation(line: 596, column: 7, scope: !4275)
!4290 = !DILocation(line: 597, column: 25, scope: !4287)
!4291 = !DILocation(line: 597, column: 31, scope: !4287)
!4292 = !DILocation(line: 597, column: 11, scope: !4287)
!4293 = !DILocation(line: 597, column: 4, scope: !4287)
!4294 = !DILocation(line: 599, column: 11, scope: !4275)
!4295 = !DILocation(line: 599, column: 9, scope: !4275)
!4296 = !DILocation(line: 601, column: 33, scope: !4275)
!4297 = !DILocation(line: 601, column: 40, scope: !4275)
!4298 = !DILocation(line: 601, column: 20, scope: !4275)
!4299 = !DILocation(line: 601, column: 5, scope: !4275)
!4300 = !DILocation(line: 601, column: 51, scope: !4275)
!4301 = !DILocation(line: 602, column: 5, scope: !4275)
!4302 = !DILocation(line: 602, column: 12, scope: !4275)
!4303 = !DILocation(line: 600, column: 10, scope: !4275)
!4304 = !DILocation(line: 600, column: 3, scope: !4275)
!4305 = !DILocation(line: 603, column: 2, scope: !4276)
!4306 = !DILocation(line: 604, column: 19, scope: !4270)
!4307 = !DILocation(line: 604, column: 25, scope: !4270)
!4308 = !DILocation(line: 604, column: 9, scope: !4270)
!4309 = !DILocation(line: 604, column: 2, scope: !4270)
!4310 = !DILocation(line: 605, column: 1, scope: !4270)
!4311 = distinct !DISubprogram(name: "size_add", scope: !4312, file: !4312, line: 208, type: !4313, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4315)
!4312 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!157, !157, !157}
!4315 = !{!4316, !4317, !4318}
!4316 = !DILocalVariable(name: "addend1", arg: 1, scope: !4311, file: !4312, line: 208, type: !157)
!4317 = !DILocalVariable(name: "addend2", arg: 2, scope: !4311, file: !4312, line: 208, type: !157)
!4318 = !DILocalVariable(name: "bytes", scope: !4311, file: !4312, line: 210, type: !157)
!4319 = !DILocation(line: 208, column: 51, scope: !4311)
!4320 = !DILocation(line: 208, column: 67, scope: !4311)
!4321 = !DILocation(line: 210, column: 2, scope: !4311)
!4322 = !DILocation(line: 210, column: 9, scope: !4311)
!4323 = !DILocation(line: 212, column: 6, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4311, file: !4312, line: 212, column: 6)
!4325 = !DILocation(line: 212, column: 6, scope: !4311)
!4326 = !DILocation(line: 213, column: 3, scope: !4324)
!4327 = !DILocation(line: 215, column: 9, scope: !4311)
!4328 = !DILocation(line: 215, column: 2, scope: !4311)
!4329 = !DILocation(line: 216, column: 1, scope: !4311)
!4330 = distinct !DISubprogram(name: "size_mul", scope: !4312, file: !4312, line: 189, type: !4313, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4331)
!4331 = !{!4332, !4333, !4334}
!4332 = !DILocalVariable(name: "factor1", arg: 1, scope: !4330, file: !4312, line: 189, type: !157)
!4333 = !DILocalVariable(name: "factor2", arg: 2, scope: !4330, file: !4312, line: 189, type: !157)
!4334 = !DILocalVariable(name: "bytes", scope: !4330, file: !4312, line: 191, type: !157)
!4335 = !DILocation(line: 189, column: 51, scope: !4330)
!4336 = !DILocation(line: 189, column: 67, scope: !4330)
!4337 = !DILocation(line: 191, column: 2, scope: !4330)
!4338 = !DILocation(line: 191, column: 9, scope: !4330)
!4339 = !DILocation(line: 193, column: 6, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4330, file: !4312, line: 193, column: 6)
!4341 = !DILocation(line: 193, column: 6, scope: !4330)
!4342 = !DILocation(line: 194, column: 3, scope: !4340)
!4343 = !DILocation(line: 196, column: 9, scope: !4330)
!4344 = !DILocation(line: 196, column: 2, scope: !4330)
!4345 = !DILocation(line: 197, column: 1, scope: !4330)
!4346 = distinct !DISubprogram(name: "assoc_array_shortcut_to_ptr", scope: !49, file: !49, line: 171, type: !4347, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4349)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!39, !214}
!4349 = !{!4350}
!4350 = !DILocalVariable(name: "p", arg: 1, scope: !4346, file: !49, line: 171, type: !214)
!4351 = !DILocation(line: 171, column: 88, scope: !4346)
!4352 = !DILocation(line: 174, column: 3, scope: !4346)
!4353 = !DILocation(line: 173, column: 9, scope: !4346)
!4354 = !DILocation(line: 173, column: 2, scope: !4346)
!4355 = distinct !DISubprogram(name: "__assoc_array_x_to_ptr", scope: !49, file: !49, line: 155, type: !4356, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4358)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!39, !101, !46}
!4358 = !{!4359, !4360}
!4359 = !DILocalVariable(name: "p", arg: 1, scope: !4355, file: !49, line: 155, type: !101)
!4360 = !DILocalVariable(name: "t", arg: 2, scope: !4355, file: !49, line: 155, type: !46)
!4361 = !DILocation(line: 155, column: 60, scope: !4355)
!4362 = !DILocation(line: 155, column: 77, scope: !4355)
!4363 = !DILocation(line: 157, column: 51, scope: !4355)
!4364 = !DILocation(line: 157, column: 36, scope: !4355)
!4365 = !DILocation(line: 157, column: 55, scope: !4355)
!4366 = !DILocation(line: 157, column: 53, scope: !4355)
!4367 = !DILocation(line: 157, column: 9, scope: !4355)
!4368 = !DILocation(line: 157, column: 2, scope: !4355)
!4369 = distinct !DISubprogram(name: "variable__ffs", scope: !4370, file: !4370, line: 250, type: !4371, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4373)
!4370 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!46, !46}
!4373 = !{!4374}
!4374 = !DILocalVariable(name: "word", arg: 1, scope: !4369, file: !4370, line: 250, type: !46)
!4375 = !DILocation(line: 250, column: 66, scope: !4369)
!4376 = !DILocation(line: 254, column: 11, scope: !4369)
!4377 = !DILocation(line: 252, column: 2, scope: !4369)
!4378 = !{i64 1154912}
!4379 = !DILocation(line: 255, column: 9, scope: !4369)
!4380 = !DILocation(line: 255, column: 2, scope: !4369)
!4381 = distinct !DISubprogram(name: "__assoc_array_ptr_to_meta", scope: !49, file: !49, line: 138, type: !4382, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4384)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!46, !206}
!4384 = !{!4385}
!4385 = !DILocalVariable(name: "x", arg: 1, scope: !4381, file: !49, line: 138, type: !206)
!4386 = !DILocation(line: 138, column: 71, scope: !4381)
!4387 = !DILocation(line: 140, column: 24, scope: !4381)
!4388 = !DILocation(line: 140, column: 9, scope: !4381)
!4389 = !DILocation(line: 140, column: 26, scope: !4381)
!4390 = !DILocation(line: 140, column: 2, scope: !4381)
!4391 = !DISubprogram(name: "kmalloc_large", scope: !9, file: !9, line: 531, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4392 = distinct !DISubprogram(name: "__kmalloc_index", scope: !9, file: !9, line: 444, type: !4393, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4395)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!16, !157, !108}
!4395 = !{!4396, !4397}
!4396 = !DILocalVariable(name: "size", arg: 1, scope: !4392, file: !9, line: 444, type: !157)
!4397 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4392, file: !9, line: 445, type: !108)
!4398 = !DILocation(line: 444, column: 60, scope: !4392)
!4399 = !DILocation(line: 445, column: 16, scope: !4392)
!4400 = !DILocation(line: 447, column: 7, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 447, column: 6)
!4402 = !DILocation(line: 447, column: 6, scope: !4392)
!4403 = !DILocation(line: 448, column: 3, scope: !4401)
!4404 = !DILocation(line: 450, column: 6, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 450, column: 6)
!4406 = !DILocation(line: 450, column: 11, scope: !4405)
!4407 = !DILocation(line: 450, column: 6, scope: !4392)
!4408 = !DILocation(line: 451, column: 3, scope: !4405)
!4409 = !DILocation(line: 453, column: 32, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 453, column: 6)
!4411 = !DILocation(line: 453, column: 37, scope: !4410)
!4412 = !DILocation(line: 453, column: 42, scope: !4410)
!4413 = !DILocation(line: 453, column: 45, scope: !4410)
!4414 = !DILocation(line: 453, column: 50, scope: !4410)
!4415 = !DILocation(line: 453, column: 6, scope: !4392)
!4416 = !DILocation(line: 454, column: 3, scope: !4410)
!4417 = !DILocation(line: 455, column: 32, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 455, column: 6)
!4419 = !DILocation(line: 455, column: 37, scope: !4418)
!4420 = !DILocation(line: 455, column: 43, scope: !4418)
!4421 = !DILocation(line: 455, column: 46, scope: !4418)
!4422 = !DILocation(line: 455, column: 51, scope: !4418)
!4423 = !DILocation(line: 455, column: 6, scope: !4392)
!4424 = !DILocation(line: 456, column: 3, scope: !4418)
!4425 = !DILocation(line: 457, column: 6, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 457, column: 6)
!4427 = !DILocation(line: 457, column: 11, scope: !4426)
!4428 = !DILocation(line: 457, column: 6, scope: !4392)
!4429 = !DILocation(line: 457, column: 26, scope: !4426)
!4430 = !DILocation(line: 458, column: 6, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 458, column: 6)
!4432 = !DILocation(line: 458, column: 11, scope: !4431)
!4433 = !DILocation(line: 458, column: 6, scope: !4392)
!4434 = !DILocation(line: 458, column: 26, scope: !4431)
!4435 = !DILocation(line: 459, column: 6, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 459, column: 6)
!4437 = !DILocation(line: 459, column: 11, scope: !4436)
!4438 = !DILocation(line: 459, column: 6, scope: !4392)
!4439 = !DILocation(line: 459, column: 26, scope: !4436)
!4440 = !DILocation(line: 460, column: 6, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 460, column: 6)
!4442 = !DILocation(line: 460, column: 11, scope: !4441)
!4443 = !DILocation(line: 460, column: 6, scope: !4392)
!4444 = !DILocation(line: 460, column: 26, scope: !4441)
!4445 = !DILocation(line: 461, column: 6, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 461, column: 6)
!4447 = !DILocation(line: 461, column: 11, scope: !4446)
!4448 = !DILocation(line: 461, column: 6, scope: !4392)
!4449 = !DILocation(line: 461, column: 26, scope: !4446)
!4450 = !DILocation(line: 462, column: 6, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 462, column: 6)
!4452 = !DILocation(line: 462, column: 11, scope: !4451)
!4453 = !DILocation(line: 462, column: 6, scope: !4392)
!4454 = !DILocation(line: 462, column: 26, scope: !4451)
!4455 = !DILocation(line: 463, column: 6, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 463, column: 6)
!4457 = !DILocation(line: 463, column: 11, scope: !4456)
!4458 = !DILocation(line: 463, column: 6, scope: !4392)
!4459 = !DILocation(line: 463, column: 26, scope: !4456)
!4460 = !DILocation(line: 464, column: 6, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 464, column: 6)
!4462 = !DILocation(line: 464, column: 11, scope: !4461)
!4463 = !DILocation(line: 464, column: 6, scope: !4392)
!4464 = !DILocation(line: 464, column: 26, scope: !4461)
!4465 = !DILocation(line: 465, column: 6, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 465, column: 6)
!4467 = !DILocation(line: 465, column: 11, scope: !4466)
!4468 = !DILocation(line: 465, column: 6, scope: !4392)
!4469 = !DILocation(line: 465, column: 26, scope: !4466)
!4470 = !DILocation(line: 466, column: 6, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 466, column: 6)
!4472 = !DILocation(line: 466, column: 11, scope: !4471)
!4473 = !DILocation(line: 466, column: 6, scope: !4392)
!4474 = !DILocation(line: 466, column: 26, scope: !4471)
!4475 = !DILocation(line: 467, column: 6, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 467, column: 6)
!4477 = !DILocation(line: 467, column: 11, scope: !4476)
!4478 = !DILocation(line: 467, column: 6, scope: !4392)
!4479 = !DILocation(line: 467, column: 26, scope: !4476)
!4480 = !DILocation(line: 468, column: 6, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 468, column: 6)
!4482 = !DILocation(line: 468, column: 11, scope: !4481)
!4483 = !DILocation(line: 468, column: 6, scope: !4392)
!4484 = !DILocation(line: 468, column: 26, scope: !4481)
!4485 = !DILocation(line: 469, column: 6, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 469, column: 6)
!4487 = !DILocation(line: 469, column: 11, scope: !4486)
!4488 = !DILocation(line: 469, column: 6, scope: !4392)
!4489 = !DILocation(line: 469, column: 26, scope: !4486)
!4490 = !DILocation(line: 470, column: 6, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 470, column: 6)
!4492 = !DILocation(line: 470, column: 11, scope: !4491)
!4493 = !DILocation(line: 470, column: 6, scope: !4392)
!4494 = !DILocation(line: 470, column: 26, scope: !4491)
!4495 = !DILocation(line: 471, column: 6, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 471, column: 6)
!4497 = !DILocation(line: 471, column: 11, scope: !4496)
!4498 = !DILocation(line: 471, column: 6, scope: !4392)
!4499 = !DILocation(line: 471, column: 26, scope: !4496)
!4500 = !DILocation(line: 472, column: 6, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 472, column: 6)
!4502 = !DILocation(line: 472, column: 11, scope: !4501)
!4503 = !DILocation(line: 472, column: 6, scope: !4392)
!4504 = !DILocation(line: 472, column: 26, scope: !4501)
!4505 = !DILocation(line: 473, column: 6, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 473, column: 6)
!4507 = !DILocation(line: 473, column: 11, scope: !4506)
!4508 = !DILocation(line: 473, column: 6, scope: !4392)
!4509 = !DILocation(line: 473, column: 26, scope: !4506)
!4510 = !DILocation(line: 474, column: 6, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 474, column: 6)
!4512 = !DILocation(line: 474, column: 11, scope: !4511)
!4513 = !DILocation(line: 474, column: 6, scope: !4392)
!4514 = !DILocation(line: 474, column: 27, scope: !4511)
!4515 = !DILocation(line: 475, column: 6, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 475, column: 6)
!4517 = !DILocation(line: 475, column: 11, scope: !4516)
!4518 = !DILocation(line: 475, column: 6, scope: !4392)
!4519 = !DILocation(line: 475, column: 32, scope: !4516)
!4520 = !DILocation(line: 477, column: 50, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4392, file: !9, line: 477, column: 6)
!4522 = !DILocation(line: 477, column: 6, scope: !4392)
!4523 = !DILocation(line: 478, column: 3, scope: !4521)
!4524 = !DILocation(line: 478, column: 3, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4526, file: !9, line: 478, column: 3)
!4526 = distinct !DILexicalBlock(scope: !4521, file: !9, line: 478, column: 3)
!4527 = !{i32 -2143507691}
!4528 = !DILocation(line: 478, column: 3, scope: !4526)
!4529 = !DILocation(line: 480, column: 3, scope: !4521)
!4530 = !DILocation(line: 480, column: 3, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4521, file: !9, line: 480, column: 3)
!4532 = !DILocation(line: 480, column: 3, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4531, file: !9, line: 480, column: 3)
!4534 = !DILocation(line: 480, column: 3, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4531, file: !9, line: 480, column: 3)
!4536 = !{i64 2151459808, i64 2151459837, i64 2151459883, i64 2151459941, i64 2151459995, i64 2151460049, i64 2151460104, i64 2151460135}
!4537 = !DILocation(line: 483, column: 2, scope: !4392)
!4538 = !DILocation(line: 484, column: 1, scope: !4392)
!4539 = !DISubprogram(name: "kmalloc_trace", scope: !9, file: !9, line: 525, type: !4540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!42, !4542, !43, !157}
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4544, line: 11, flags: DIFlagFwdDecl)
!4544 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4545 = distinct !DISubprogram(name: "kmalloc_type", scope: !9, file: !9, line: 401, type: !4546, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!26, !43, !46}
!4548 = !{!4549, !4550}
!4549 = !DILocalVariable(name: "flags", arg: 1, scope: !4545, file: !9, line: 401, type: !43)
!4550 = !DILocalVariable(name: "caller", arg: 2, scope: !4545, file: !9, line: 401, type: !46)
!4551 = !DILocation(line: 401, column: 67, scope: !4545)
!4552 = !DILocation(line: 401, column: 88, scope: !4545)
!4553 = !DILocation(line: 407, column: 6, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4545, file: !9, line: 407, column: 6)
!4555 = !DILocation(line: 407, column: 6, scope: !4545)
!4556 = !DILocation(line: 413, column: 3, scope: !4554)
!4557 = !DILocation(line: 423, column: 38, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4545, file: !9, line: 423, column: 6)
!4559 = !DILocation(line: 423, column: 44, scope: !4558)
!4560 = !DILocation(line: 423, column: 6, scope: !4545)
!4561 = !DILocation(line: 424, column: 3, scope: !4558)
!4562 = !DILocation(line: 426, column: 3, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4545, file: !9, line: 425, column: 6)
!4564 = !DILocation(line: 429, column: 1, scope: !4545)
!4565 = !DISubprogram(name: "__kmalloc", scope: !9, file: !9, line: 488, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4566 = !DISubprogram(name: "__compiletime_assert_117", scope: !9, file: !9, line: 478, type: !4567, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{null}
!4569 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4312, file: !4312, line: 51, type: !4570, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4572)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!108, !108}
!4572 = !{!4573}
!4573 = !DILocalVariable(name: "overflow", arg: 1, scope: !4569, file: !4312, line: 51, type: !108)
!4574 = !DILocation(line: 51, column: 60, scope: !4569)
!4575 = !DILocation(line: 53, column: 9, scope: !4569)
!4576 = !DILocation(line: 53, column: 2, scope: !4569)
