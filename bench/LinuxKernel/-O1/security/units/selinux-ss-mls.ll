; ModuleID = 'security/selinux/ss/mls.c'
source_filename = "security/selinux/ss/mls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32, [8 x %struct.symtab], [8 x ptr], ptr, ptr, ptr, ptr, %struct.avtab, %struct.hashtab, %struct.ebitmap, %struct.hashtab, i32, ptr, %struct.avtab, ptr, i32, ptr, [9 x ptr], ptr, %struct.hashtab, ptr, %struct.ebitmap, %struct.ebitmap, i64, i32, i8, i16, i32 }
%struct.symtab = type { %struct.hashtab, i32 }
%struct.avtab = type { ptr, i32, i32, i32 }
%struct.hashtab = type { ptr, i32, i32 }
%struct.ebitmap = type { ptr, i32 }
%struct.context = type { i32, i32, i32, i32, %struct.mls_range, ptr }
%struct.mls_range = type { [2 x %struct.mls_level] }
%struct.mls_level = type { i32, %struct.ebitmap }
%struct.ebitmap_node = type { ptr, [6 x i64], i32 }
%struct.level_datum = type { ptr, i8 }
%struct.user_datum = type { i32, i32, %struct.ebitmap, %struct.mls_range, %struct.mls_level }
%struct.cat_datum = type { i32, i8 }
%struct.sidtab_entry = type { i32, i32, %struct.context, ptr, %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.range_trans = type { i32, i32, i32 }
%struct.class_datum = type { i32, ptr, ptr, %struct.symtab, ptr, ptr, i8, i8, i8, i8 }
%struct.netlbl_lsm_secattr = type { i32, i32, ptr, ptr, %struct.anon }
%struct.anon = type { %struct.anon.0, i32 }
%struct.anon.0 = type { ptr, i32 }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mls_compute_context_len(ptr noundef %p, ptr noundef %context) #0 align 16 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %len = alloca i32, align 4
  %head = alloca i32, align 4
  %prev = alloca i32, align 4
  %nm = alloca ptr, align 8
  %e = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %index_sens = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !306, metadata !DIExpression()), !dbg !320
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !307, metadata !DIExpression()), !dbg !321
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %i, metadata !308, metadata !DIExpression()), !dbg !323
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #9, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %l, metadata !309, metadata !DIExpression()), !dbg !324
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %len, metadata !310, metadata !DIExpression()), !dbg !325
  call void @llvm.lifetime.start.p0(i64 4, ptr %head) #9, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %head, metadata !311, metadata !DIExpression()), !dbg !326
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev) #9, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !312, metadata !DIExpression()), !dbg !327
  call void @llvm.lifetime.start.p0(i64 8, ptr %nm) #9, !dbg !328
  call void @llvm.dbg.declare(metadata ptr %nm, metadata !313, metadata !DIExpression()), !dbg !329
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #9, !dbg !330
  call void @llvm.dbg.declare(metadata ptr %e, metadata !314, metadata !DIExpression()), !dbg !331
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !332
  call void @llvm.dbg.declare(metadata ptr %node, metadata !315, metadata !DIExpression()), !dbg !333
  %0 = load ptr, ptr %p.addr, align 8, !dbg !334
  %mls_enabled = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 0, !dbg !336
  %1 = load i32, ptr %mls_enabled, align 8, !dbg !336
  %tobool = icmp ne i32 %1, 0, !dbg !334
  br i1 %tobool, label %if.end, label %if.then, !dbg !337

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup61, !dbg !338

if.end:                                           ; preds = %entry
  store i32 1, ptr %len, align 4, !dbg !339
  store i32 0, ptr %l, align 4, !dbg !340
  br label %for.cond, !dbg !341

for.cond:                                         ; preds = %for.inc58, %if.end
  %2 = load i32, ptr %l, align 4, !dbg !342
  %cmp = icmp slt i32 %2, 2, !dbg !343
  br i1 %cmp, label %for.body, label %for.end60, !dbg !344

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %index_sens) #9, !dbg !345
  call void @llvm.dbg.declare(metadata ptr %index_sens, metadata !316, metadata !DIExpression()), !dbg !346
  %3 = load ptr, ptr %context.addr, align 8, !dbg !347
  %range = getelementptr inbounds %struct.context, ptr %3, i32 0, i32 4, !dbg !348
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !349
  %4 = load i32, ptr %l, align 4, !dbg !350
  %idxprom = sext i32 %4 to i64, !dbg !347
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 %idxprom, !dbg !347
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !351
  %5 = load i32, ptr %sens, align 8, !dbg !351
  store i32 %5, ptr %index_sens, align 4, !dbg !346
  %6 = load ptr, ptr %p.addr, align 8, !dbg !352
  %7 = load i32, ptr %index_sens, align 4, !dbg !353
  %sub = sub i32 %7, 1, !dbg !354
  %call = call ptr @sym_name(ptr noundef %6, i32 noundef 6, i32 noundef %sub) #10, !dbg !355
  %call1 = call i64 @strlen(ptr noundef %call) #10, !dbg !356
  %8 = load i32, ptr %len, align 4, !dbg !357
  %conv = sext i32 %8 to i64, !dbg !357
  %add = add i64 %conv, %call1, !dbg !357
  %conv2 = trunc i64 %add to i32, !dbg !357
  store i32 %conv2, ptr %len, align 4, !dbg !357
  store i32 -2, ptr %head, align 4, !dbg !358
  store i32 -2, ptr %prev, align 4, !dbg !359
  %9 = load ptr, ptr %context.addr, align 8, !dbg !360
  %range3 = getelementptr inbounds %struct.context, ptr %9, i32 0, i32 4, !dbg !361
  %level4 = getelementptr inbounds %struct.mls_range, ptr %range3, i32 0, i32 0, !dbg !362
  %10 = load i32, ptr %l, align 4, !dbg !363
  %idxprom5 = sext i32 %10 to i64, !dbg !360
  %arrayidx6 = getelementptr [2 x %struct.mls_level], ptr %level4, i64 0, i64 %idxprom5, !dbg !360
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx6, i32 0, i32 1, !dbg !364
  store ptr %cat, ptr %e, align 8, !dbg !365
  %11 = load ptr, ptr %e, align 8, !dbg !366
  %call7 = call i32 @ebitmap_start_positive(ptr noundef %11, ptr noundef %node) #10, !dbg !366
  store i32 %call7, ptr %i, align 4, !dbg !366
  br label %for.cond8, !dbg !366

for.cond8:                                        ; preds = %for.inc, %for.body
  %12 = load i32, ptr %i, align 4, !dbg !368
  %13 = load ptr, ptr %e, align 8, !dbg !368
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %13, i32 0, i32 1, !dbg !368
  %14 = load i32, ptr %highbit, align 8, !dbg !368
  %cmp9 = icmp ult i32 %12, %14, !dbg !368
  br i1 %cmp9, label %for.body11, label %for.end, !dbg !366

for.body11:                                       ; preds = %for.cond8
  %15 = load i32, ptr %i, align 4, !dbg !370
  %16 = load i32, ptr %prev, align 4, !dbg !373
  %sub12 = sub i32 %15, %16, !dbg !374
  %cmp13 = icmp sgt i32 %sub12, 1, !dbg !375
  br i1 %cmp13, label %if.then15, label %if.end32, !dbg !376

if.then15:                                        ; preds = %for.body11
  %17 = load i32, ptr %head, align 4, !dbg !377
  %18 = load i32, ptr %prev, align 4, !dbg !380
  %cmp16 = icmp ne i32 %17, %18, !dbg !381
  br i1 %cmp16, label %if.then18, label %if.end25, !dbg !382

if.then18:                                        ; preds = %if.then15
  %19 = load ptr, ptr %p.addr, align 8, !dbg !383
  %20 = load i32, ptr %prev, align 4, !dbg !385
  %call19 = call ptr @sym_name(ptr noundef %19, i32 noundef 7, i32 noundef %20) #10, !dbg !386
  store ptr %call19, ptr %nm, align 8, !dbg !387
  %21 = load ptr, ptr %nm, align 8, !dbg !388
  %call20 = call i64 @strlen(ptr noundef %21) #10, !dbg !389
  %add21 = add i64 %call20, 1, !dbg !390
  %22 = load i32, ptr %len, align 4, !dbg !391
  %conv22 = sext i32 %22 to i64, !dbg !391
  %add23 = add i64 %conv22, %add21, !dbg !391
  %conv24 = trunc i64 %add23 to i32, !dbg !391
  store i32 %conv24, ptr %len, align 4, !dbg !391
  br label %if.end25, !dbg !392

if.end25:                                         ; preds = %if.then18, %if.then15
  %23 = load ptr, ptr %p.addr, align 8, !dbg !393
  %24 = load i32, ptr %i, align 4, !dbg !394
  %call26 = call ptr @sym_name(ptr noundef %23, i32 noundef 7, i32 noundef %24) #10, !dbg !395
  store ptr %call26, ptr %nm, align 8, !dbg !396
  %25 = load ptr, ptr %nm, align 8, !dbg !397
  %call27 = call i64 @strlen(ptr noundef %25) #10, !dbg !398
  %add28 = add i64 %call27, 1, !dbg !399
  %26 = load i32, ptr %len, align 4, !dbg !400
  %conv29 = sext i32 %26 to i64, !dbg !400
  %add30 = add i64 %conv29, %add28, !dbg !400
  %conv31 = trunc i64 %add30 to i32, !dbg !400
  store i32 %conv31, ptr %len, align 4, !dbg !400
  %27 = load i32, ptr %i, align 4, !dbg !401
  store i32 %27, ptr %head, align 4, !dbg !402
  br label %if.end32, !dbg !403

if.end32:                                         ; preds = %if.end25, %for.body11
  %28 = load i32, ptr %i, align 4, !dbg !404
  store i32 %28, ptr %prev, align 4, !dbg !405
  br label %for.inc, !dbg !406

for.inc:                                          ; preds = %if.end32
  %29 = load ptr, ptr %e, align 8, !dbg !368
  %30 = load i32, ptr %i, align 4, !dbg !368
  %call33 = call i32 @ebitmap_next_positive(ptr noundef %29, ptr noundef %node, i32 noundef %30) #10, !dbg !368
  store i32 %call33, ptr %i, align 4, !dbg !368
  br label %for.cond8, !dbg !368, !llvm.loop !407

for.end:                                          ; preds = %for.cond8
  %31 = load i32, ptr %prev, align 4, !dbg !411
  %32 = load i32, ptr %head, align 4, !dbg !413
  %cmp34 = icmp ne i32 %31, %32, !dbg !414
  br i1 %cmp34, label %if.then36, label %if.end43, !dbg !415

if.then36:                                        ; preds = %for.end
  %33 = load ptr, ptr %p.addr, align 8, !dbg !416
  %34 = load i32, ptr %prev, align 4, !dbg !418
  %call37 = call ptr @sym_name(ptr noundef %33, i32 noundef 7, i32 noundef %34) #10, !dbg !419
  store ptr %call37, ptr %nm, align 8, !dbg !420
  %35 = load ptr, ptr %nm, align 8, !dbg !421
  %call38 = call i64 @strlen(ptr noundef %35) #10, !dbg !422
  %add39 = add i64 %call38, 1, !dbg !423
  %36 = load i32, ptr %len, align 4, !dbg !424
  %conv40 = sext i32 %36 to i64, !dbg !424
  %add41 = add i64 %conv40, %add39, !dbg !424
  %conv42 = trunc i64 %add41 to i32, !dbg !424
  store i32 %conv42, ptr %len, align 4, !dbg !424
  br label %if.end43, !dbg !425

if.end43:                                         ; preds = %if.then36, %for.end
  %37 = load i32, ptr %l, align 4, !dbg !426
  %cmp44 = icmp eq i32 %37, 0, !dbg !428
  br i1 %cmp44, label %if.then46, label %if.end57, !dbg !429

if.then46:                                        ; preds = %if.end43
  %38 = load ptr, ptr %context.addr, align 8, !dbg !430
  %range47 = getelementptr inbounds %struct.context, ptr %38, i32 0, i32 4, !dbg !433
  %level48 = getelementptr inbounds %struct.mls_range, ptr %range47, i32 0, i32 0, !dbg !434
  %arrayidx49 = getelementptr [2 x %struct.mls_level], ptr %level48, i64 0, i64 0, !dbg !430
  %39 = load ptr, ptr %context.addr, align 8, !dbg !435
  %range50 = getelementptr inbounds %struct.context, ptr %39, i32 0, i32 4, !dbg !436
  %level51 = getelementptr inbounds %struct.mls_range, ptr %range50, i32 0, i32 0, !dbg !437
  %arrayidx52 = getelementptr [2 x %struct.mls_level], ptr %level51, i64 0, i64 1, !dbg !435
  %call53 = call i32 @mls_level_eq(ptr noundef %arrayidx49, ptr noundef %arrayidx52) #10, !dbg !438
  %tobool54 = icmp ne i32 %call53, 0, !dbg !438
  br i1 %tobool54, label %if.then55, label %if.else, !dbg !439

if.then55:                                        ; preds = %if.then46
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !440

if.else:                                          ; preds = %if.then46
  %40 = load i32, ptr %len, align 4, !dbg !441
  %inc = add i32 %40, 1, !dbg !441
  store i32 %inc, ptr %len, align 4, !dbg !441
  br label %if.end56

if.end56:                                         ; preds = %if.else
  br label %if.end57, !dbg !442

if.end57:                                         ; preds = %if.end56, %if.end43
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !443
  br label %cleanup, !dbg !443

cleanup:                                          ; preds = %if.end57, %if.then55
  call void @llvm.lifetime.end.p0(i64 4, ptr %index_sens) #9, !dbg !443
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end60
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc58, !dbg !444

for.inc58:                                        ; preds = %cleanup.cont
  %41 = load i32, ptr %l, align 4, !dbg !445
  %inc59 = add i32 %41, 1, !dbg !445
  store i32 %inc59, ptr %l, align 4, !dbg !445
  br label %for.cond, !dbg !446, !llvm.loop !447

for.end60:                                        ; preds = %cleanup, %for.cond
  %42 = load i32, ptr %len, align 4, !dbg !449
  store i32 %42, ptr %retval, align 4, !dbg !450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup61, !dbg !450

cleanup61:                                        ; preds = %for.end60, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !451
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #9, !dbg !451
  call void @llvm.lifetime.end.p0(i64 8, ptr %nm) #9, !dbg !451
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev) #9, !dbg !451
  call void @llvm.lifetime.end.p0(i64 4, ptr %head) #9, !dbg !451
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9, !dbg !451
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #9, !dbg !451
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !451
  %43 = load i32, ptr %retval, align 4, !dbg !451
  ret i32 %43, !dbg !451

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !452 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sym_name(ptr noundef %p, i32 noundef %sym_num, i32 noundef %element_nr) #4 align 16 !dbg !458 {
entry:
  %p.addr = alloca ptr, align 8
  %sym_num.addr = alloca i32, align 4
  %element_nr.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !462, metadata !DIExpression()), !dbg !465
  store i32 %sym_num, ptr %sym_num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sym_num.addr, metadata !463, metadata !DIExpression()), !dbg !466
  store i32 %element_nr, ptr %element_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %element_nr.addr, metadata !464, metadata !DIExpression()), !dbg !467
  %0 = load ptr, ptr %p.addr, align 8, !dbg !468
  %sym_val_to_name = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 2, !dbg !469
  %1 = load i32, ptr %sym_num.addr, align 4, !dbg !470
  %idxprom = zext i32 %1 to i64, !dbg !468
  %arrayidx = getelementptr [8 x ptr], ptr %sym_val_to_name, i64 0, i64 %idxprom, !dbg !468
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !468
  %3 = load i32, ptr %element_nr.addr, align 4, !dbg !471
  %idxprom1 = zext i32 %3 to i64, !dbg !468
  %arrayidx2 = getelementptr ptr, ptr %2, i64 %idxprom1, !dbg !468
  %4 = load ptr, ptr %arrayidx2, align 8, !dbg !468
  ret ptr %4, !dbg !472
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ebitmap_start_positive(ptr noundef %e, ptr noundef %n) #4 align 16 !dbg !473 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %ofs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !480, metadata !DIExpression()), !dbg !483
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !481, metadata !DIExpression()), !dbg !484
  call void @llvm.lifetime.start.p0(i64 4, ptr %ofs) #9, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %ofs, metadata !482, metadata !DIExpression()), !dbg !486
  %0 = load ptr, ptr %e.addr, align 8, !dbg !487
  %node = getelementptr inbounds %struct.ebitmap, ptr %0, i32 0, i32 0, !dbg !489
  %1 = load ptr, ptr %node, align 8, !dbg !489
  %2 = load ptr, ptr %n.addr, align 8, !dbg !490
  store ptr %1, ptr %2, align 8, !dbg !491
  br label %for.cond, !dbg !492

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %n.addr, align 8, !dbg !493
  %4 = load ptr, ptr %3, align 8, !dbg !495
  %tobool = icmp ne ptr %4, null, !dbg !496
  br i1 %tobool, label %for.body, label %for.end, !dbg !496

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %n.addr, align 8, !dbg !497
  %6 = load ptr, ptr %5, align 8, !dbg !499
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %6, i32 0, i32 1, !dbg !500
  %arraydecay = getelementptr inbounds [6 x i64], ptr %maps, i64 0, i64 0, !dbg !501
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 384) #10, !dbg !502
  %conv = trunc i64 %call to i32, !dbg !502
  store i32 %conv, ptr %ofs, align 4, !dbg !503
  %7 = load i32, ptr %ofs, align 4, !dbg !504
  %conv1 = zext i32 %7 to i64, !dbg !504
  %cmp = icmp ult i64 %conv1, 384, !dbg !506
  br i1 %cmp, label %if.then, label %if.end, !dbg !507

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %n.addr, align 8, !dbg !508
  %9 = load ptr, ptr %8, align 8, !dbg !509
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %9, i32 0, i32 2, !dbg !510
  %10 = load i32, ptr %startbit, align 8, !dbg !510
  %11 = load i32, ptr %ofs, align 4, !dbg !511
  %add = add i32 %10, %11, !dbg !512
  store i32 %add, ptr %retval, align 4, !dbg !513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !513

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !514

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %n.addr, align 8, !dbg !515
  %13 = load ptr, ptr %12, align 8, !dbg !516
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %13, i32 0, i32 0, !dbg !517
  %14 = load ptr, ptr %next, align 8, !dbg !517
  %15 = load ptr, ptr %n.addr, align 8, !dbg !518
  store ptr %14, ptr %15, align 8, !dbg !519
  br label %for.cond, !dbg !520, !llvm.loop !521

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %e.addr, align 8, !dbg !523
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %16, i32 0, i32 1, !dbg !523
  %17 = load i32, ptr %highbit, align 8, !dbg !523
  store i32 %17, ptr %retval, align 4, !dbg !524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !524

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ofs) #9, !dbg !525
  %18 = load i32, ptr %retval, align 4, !dbg !525
  ret i32 %18, !dbg !525
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ebitmap_next_positive(ptr noundef %e, ptr noundef %n, i32 noundef %bit) #4 align 16 !dbg !526 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  %ofs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !530, metadata !DIExpression()), !dbg !534
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !531, metadata !DIExpression()), !dbg !535
  store i32 %bit, ptr %bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !532, metadata !DIExpression()), !dbg !536
  call void @llvm.lifetime.start.p0(i64 4, ptr %ofs) #9, !dbg !537
  call void @llvm.dbg.declare(metadata ptr %ofs, metadata !533, metadata !DIExpression()), !dbg !538
  %0 = load ptr, ptr %n.addr, align 8, !dbg !539
  %1 = load ptr, ptr %0, align 8, !dbg !540
  %maps = getelementptr inbounds %struct.ebitmap_node, ptr %1, i32 0, i32 1, !dbg !541
  %arraydecay = getelementptr inbounds [6 x i64], ptr %maps, i64 0, i64 0, !dbg !542
  %2 = load i32, ptr %bit.addr, align 4, !dbg !543
  %3 = load ptr, ptr %n.addr, align 8, !dbg !544
  %4 = load ptr, ptr %3, align 8, !dbg !545
  %startbit = getelementptr inbounds %struct.ebitmap_node, ptr %4, i32 0, i32 2, !dbg !546
  %5 = load i32, ptr %startbit, align 8, !dbg !546
  %sub = sub i32 %2, %5, !dbg !547
  %add = add i32 %sub, 1, !dbg !548
  %conv = zext i32 %add to i64, !dbg !543
  %call = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 384, i64 noundef %conv) #10, !dbg !549
  %conv1 = trunc i64 %call to i32, !dbg !549
  store i32 %conv1, ptr %ofs, align 4, !dbg !550
  %6 = load i32, ptr %ofs, align 4, !dbg !551
  %conv2 = zext i32 %6 to i64, !dbg !551
  %cmp = icmp ult i64 %conv2, 384, !dbg !553
  br i1 %cmp, label %if.then, label %if.end, !dbg !554

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ofs, align 4, !dbg !555
  %8 = load ptr, ptr %n.addr, align 8, !dbg !556
  %9 = load ptr, ptr %8, align 8, !dbg !557
  %startbit4 = getelementptr inbounds %struct.ebitmap_node, ptr %9, i32 0, i32 2, !dbg !558
  %10 = load i32, ptr %startbit4, align 8, !dbg !558
  %add5 = add i32 %7, %10, !dbg !559
  store i32 %add5, ptr %retval, align 4, !dbg !560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !560

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %n.addr, align 8, !dbg !561
  %12 = load ptr, ptr %11, align 8, !dbg !563
  %next = getelementptr inbounds %struct.ebitmap_node, ptr %12, i32 0, i32 0, !dbg !564
  %13 = load ptr, ptr %next, align 8, !dbg !564
  %14 = load ptr, ptr %n.addr, align 8, !dbg !565
  store ptr %13, ptr %14, align 8, !dbg !566
  br label %for.cond, !dbg !567

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load ptr, ptr %n.addr, align 8, !dbg !568
  %16 = load ptr, ptr %15, align 8, !dbg !570
  %tobool = icmp ne ptr %16, null, !dbg !571
  br i1 %tobool, label %for.body, label %for.end, !dbg !571

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %n.addr, align 8, !dbg !572
  %18 = load ptr, ptr %17, align 8, !dbg !574
  %maps6 = getelementptr inbounds %struct.ebitmap_node, ptr %18, i32 0, i32 1, !dbg !575
  %arraydecay7 = getelementptr inbounds [6 x i64], ptr %maps6, i64 0, i64 0, !dbg !576
  %call8 = call i64 @find_first_bit(ptr noundef %arraydecay7, i64 noundef 384) #10, !dbg !577
  %conv9 = trunc i64 %call8 to i32, !dbg !577
  store i32 %conv9, ptr %ofs, align 4, !dbg !578
  %19 = load i32, ptr %ofs, align 4, !dbg !579
  %conv10 = zext i32 %19 to i64, !dbg !579
  %cmp11 = icmp ult i64 %conv10, 384, !dbg !581
  br i1 %cmp11, label %if.then13, label %if.end16, !dbg !582

if.then13:                                        ; preds = %for.body
  %20 = load i32, ptr %ofs, align 4, !dbg !583
  %21 = load ptr, ptr %n.addr, align 8, !dbg !584
  %22 = load ptr, ptr %21, align 8, !dbg !585
  %startbit14 = getelementptr inbounds %struct.ebitmap_node, ptr %22, i32 0, i32 2, !dbg !586
  %23 = load i32, ptr %startbit14, align 8, !dbg !586
  %add15 = add i32 %20, %23, !dbg !587
  store i32 %add15, ptr %retval, align 4, !dbg !588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !588

if.end16:                                         ; preds = %for.body
  br label %for.inc, !dbg !589

for.inc:                                          ; preds = %if.end16
  %24 = load ptr, ptr %n.addr, align 8, !dbg !590
  %25 = load ptr, ptr %24, align 8, !dbg !591
  %next17 = getelementptr inbounds %struct.ebitmap_node, ptr %25, i32 0, i32 0, !dbg !592
  %26 = load ptr, ptr %next17, align 8, !dbg !592
  %27 = load ptr, ptr %n.addr, align 8, !dbg !593
  store ptr %26, ptr %27, align 8, !dbg !594
  br label %for.cond, !dbg !595, !llvm.loop !596

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %e.addr, align 8, !dbg !598
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %28, i32 0, i32 1, !dbg !598
  %29 = load i32, ptr %highbit, align 8, !dbg !598
  store i32 %29, ptr %retval, align 4, !dbg !599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !599

cleanup:                                          ; preds = %for.end, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ofs) #9, !dbg !600
  %30 = load i32, ptr %retval, align 4, !dbg !600
  ret i32 %30, !dbg !600
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mls_level_eq(ptr noundef %l1, ptr noundef %l2) #4 align 16 !dbg !601 {
entry:
  %l1.addr = alloca ptr, align 8
  %l2.addr = alloca ptr, align 8
  store ptr %l1, ptr %l1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l1.addr, metadata !607, metadata !DIExpression()), !dbg !609
  store ptr %l2, ptr %l2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l2.addr, metadata !608, metadata !DIExpression()), !dbg !610
  %0 = load ptr, ptr %l1.addr, align 8, !dbg !611
  %sens = getelementptr inbounds %struct.mls_level, ptr %0, i32 0, i32 0, !dbg !612
  %1 = load i32, ptr %sens, align 8, !dbg !612
  %2 = load ptr, ptr %l2.addr, align 8, !dbg !613
  %sens1 = getelementptr inbounds %struct.mls_level, ptr %2, i32 0, i32 0, !dbg !614
  %3 = load i32, ptr %sens1, align 8, !dbg !614
  %cmp = icmp eq i32 %1, %3, !dbg !615
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !616

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %l1.addr, align 8, !dbg !617
  %cat = getelementptr inbounds %struct.mls_level, ptr %4, i32 0, i32 1, !dbg !618
  %5 = load ptr, ptr %l2.addr, align 8, !dbg !619
  %cat2 = getelementptr inbounds %struct.mls_level, ptr %5, i32 0, i32 1, !dbg !620
  %call = call i32 @ebitmap_cmp(ptr noundef %cat, ptr noundef %cat2) #10, !dbg !621
  %tobool = icmp ne i32 %call, 0, !dbg !616
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !622
  %land.ext = zext i1 %6 to i32, !dbg !616
  ret i32 %land.ext, !dbg !623
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mls_sid_to_context(ptr noundef %p, ptr noundef %context, ptr noundef %scontext) #0 align 16 !dbg !624 {
entry:
  %p.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %scontext.addr = alloca ptr, align 8
  %scontextp = alloca ptr, align 8
  %nm = alloca ptr, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %head = alloca i32, align 4
  %prev = alloca i32, align 4
  %e = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !628, metadata !DIExpression()), !dbg !639
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !629, metadata !DIExpression()), !dbg !640
  store ptr %scontext, ptr %scontext.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scontext.addr, metadata !630, metadata !DIExpression()), !dbg !641
  call void @llvm.lifetime.start.p0(i64 8, ptr %scontextp) #9, !dbg !642
  call void @llvm.dbg.declare(metadata ptr %scontextp, metadata !631, metadata !DIExpression()), !dbg !643
  call void @llvm.lifetime.start.p0(i64 8, ptr %nm) #9, !dbg !642
  call void @llvm.dbg.declare(metadata ptr %nm, metadata !632, metadata !DIExpression()), !dbg !644
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !645
  call void @llvm.dbg.declare(metadata ptr %i, metadata !633, metadata !DIExpression()), !dbg !646
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #9, !dbg !645
  call void @llvm.dbg.declare(metadata ptr %l, metadata !634, metadata !DIExpression()), !dbg !647
  call void @llvm.lifetime.start.p0(i64 4, ptr %head) #9, !dbg !645
  call void @llvm.dbg.declare(metadata ptr %head, metadata !635, metadata !DIExpression()), !dbg !648
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev) #9, !dbg !645
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !636, metadata !DIExpression()), !dbg !649
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #9, !dbg !650
  call void @llvm.dbg.declare(metadata ptr %e, metadata !637, metadata !DIExpression()), !dbg !651
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !652
  call void @llvm.dbg.declare(metadata ptr %node, metadata !638, metadata !DIExpression()), !dbg !653
  %0 = load ptr, ptr %p.addr, align 8, !dbg !654
  %mls_enabled = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 0, !dbg !656
  %1 = load i32, ptr %mls_enabled, align 8, !dbg !656
  %tobool = icmp ne i32 %1, 0, !dbg !654
  br i1 %tobool, label %if.end, label %if.then, !dbg !657

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !658

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %scontext.addr, align 8, !dbg !659
  %3 = load ptr, ptr %2, align 8, !dbg !660
  store ptr %3, ptr %scontextp, align 8, !dbg !661
  %4 = load ptr, ptr %scontextp, align 8, !dbg !662
  store i8 58, ptr %4, align 1, !dbg !663
  %5 = load ptr, ptr %scontextp, align 8, !dbg !664
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !664
  store ptr %incdec.ptr, ptr %scontextp, align 8, !dbg !664
  store i32 0, ptr %l, align 4, !dbg !665
  br label %for.cond, !dbg !667

for.cond:                                         ; preds = %for.inc68, %if.end
  %6 = load i32, ptr %l, align 4, !dbg !668
  %cmp = icmp slt i32 %6, 2, !dbg !670
  br i1 %cmp, label %for.body, label %for.end69, !dbg !671

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %scontextp, align 8, !dbg !672
  %8 = load ptr, ptr %p.addr, align 8, !dbg !674
  %9 = load ptr, ptr %context.addr, align 8, !dbg !675
  %range = getelementptr inbounds %struct.context, ptr %9, i32 0, i32 4, !dbg !676
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !677
  %10 = load i32, ptr %l, align 4, !dbg !678
  %idxprom = sext i32 %10 to i64, !dbg !675
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 %idxprom, !dbg !675
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !679
  %11 = load i32, ptr %sens, align 8, !dbg !679
  %sub = sub i32 %11, 1, !dbg !680
  %call = call ptr @sym_name(ptr noundef %8, i32 noundef 6, i32 noundef %sub) #10, !dbg !681
  %call1 = call ptr @strcpy(ptr noundef %7, ptr noundef %call) #10, !dbg !682
  %12 = load ptr, ptr %scontextp, align 8, !dbg !683
  %call2 = call i64 @strlen(ptr noundef %12) #10, !dbg !684
  %13 = load ptr, ptr %scontextp, align 8, !dbg !685
  %add.ptr = getelementptr i8, ptr %13, i64 %call2, !dbg !685
  store ptr %add.ptr, ptr %scontextp, align 8, !dbg !685
  store i32 -2, ptr %head, align 4, !dbg !686
  store i32 -2, ptr %prev, align 4, !dbg !687
  %14 = load ptr, ptr %context.addr, align 8, !dbg !688
  %range3 = getelementptr inbounds %struct.context, ptr %14, i32 0, i32 4, !dbg !689
  %level4 = getelementptr inbounds %struct.mls_range, ptr %range3, i32 0, i32 0, !dbg !690
  %15 = load i32, ptr %l, align 4, !dbg !691
  %idxprom5 = sext i32 %15 to i64, !dbg !688
  %arrayidx6 = getelementptr [2 x %struct.mls_level], ptr %level4, i64 0, i64 %idxprom5, !dbg !688
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx6, i32 0, i32 1, !dbg !692
  store ptr %cat, ptr %e, align 8, !dbg !693
  %16 = load ptr, ptr %e, align 8, !dbg !694
  %call7 = call i32 @ebitmap_start_positive(ptr noundef %16, ptr noundef %node) #10, !dbg !694
  store i32 %call7, ptr %i, align 4, !dbg !694
  br label %for.cond8, !dbg !694

for.cond8:                                        ; preds = %for.inc, %for.body
  %17 = load i32, ptr %i, align 4, !dbg !696
  %18 = load ptr, ptr %e, align 8, !dbg !696
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %18, i32 0, i32 1, !dbg !696
  %19 = load i32, ptr %highbit, align 8, !dbg !696
  %cmp9 = icmp ult i32 %17, %19, !dbg !696
  br i1 %cmp9, label %for.body10, label %for.end, !dbg !694

for.body10:                                       ; preds = %for.cond8
  %20 = load i32, ptr %i, align 4, !dbg !698
  %21 = load i32, ptr %prev, align 4, !dbg !701
  %sub11 = sub i32 %20, %21, !dbg !702
  %cmp12 = icmp sgt i32 %sub11, 1, !dbg !703
  br i1 %cmp12, label %if.then13, label %if.end37, !dbg !704

if.then13:                                        ; preds = %for.body10
  %22 = load i32, ptr %prev, align 4, !dbg !705
  %23 = load i32, ptr %head, align 4, !dbg !708
  %cmp14 = icmp ne i32 %22, %23, !dbg !709
  br i1 %cmp14, label %if.then15, label %if.end26, !dbg !710

if.then15:                                        ; preds = %if.then13
  %24 = load i32, ptr %prev, align 4, !dbg !711
  %25 = load i32, ptr %head, align 4, !dbg !714
  %sub16 = sub i32 %24, %25, !dbg !715
  %cmp17 = icmp sgt i32 %sub16, 1, !dbg !716
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !717

if.then18:                                        ; preds = %if.then15
  %26 = load ptr, ptr %scontextp, align 8, !dbg !718
  %incdec.ptr19 = getelementptr i8, ptr %26, i32 1, !dbg !718
  store ptr %incdec.ptr19, ptr %scontextp, align 8, !dbg !718
  store i8 46, ptr %26, align 1, !dbg !719
  br label %if.end21, !dbg !720

if.else:                                          ; preds = %if.then15
  %27 = load ptr, ptr %scontextp, align 8, !dbg !721
  %incdec.ptr20 = getelementptr i8, ptr %27, i32 1, !dbg !721
  store ptr %incdec.ptr20, ptr %scontextp, align 8, !dbg !721
  store i8 44, ptr %27, align 1, !dbg !722
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %28 = load ptr, ptr %p.addr, align 8, !dbg !723
  %29 = load i32, ptr %prev, align 4, !dbg !724
  %call22 = call ptr @sym_name(ptr noundef %28, i32 noundef 7, i32 noundef %29) #10, !dbg !725
  store ptr %call22, ptr %nm, align 8, !dbg !726
  %30 = load ptr, ptr %scontextp, align 8, !dbg !727
  %31 = load ptr, ptr %nm, align 8, !dbg !728
  %call23 = call ptr @strcpy(ptr noundef %30, ptr noundef %31) #10, !dbg !729
  %32 = load ptr, ptr %nm, align 8, !dbg !730
  %call24 = call i64 @strlen(ptr noundef %32) #10, !dbg !731
  %33 = load ptr, ptr %scontextp, align 8, !dbg !732
  %add.ptr25 = getelementptr i8, ptr %33, i64 %call24, !dbg !732
  store ptr %add.ptr25, ptr %scontextp, align 8, !dbg !732
  br label %if.end26, !dbg !733

if.end26:                                         ; preds = %if.end21, %if.then13
  %34 = load i32, ptr %prev, align 4, !dbg !734
  %cmp27 = icmp slt i32 %34, 0, !dbg !736
  br i1 %cmp27, label %if.then28, label %if.else30, !dbg !737

if.then28:                                        ; preds = %if.end26
  %35 = load ptr, ptr %scontextp, align 8, !dbg !738
  %incdec.ptr29 = getelementptr i8, ptr %35, i32 1, !dbg !738
  store ptr %incdec.ptr29, ptr %scontextp, align 8, !dbg !738
  store i8 58, ptr %35, align 1, !dbg !739
  br label %if.end32, !dbg !740

if.else30:                                        ; preds = %if.end26
  %36 = load ptr, ptr %scontextp, align 8, !dbg !741
  %incdec.ptr31 = getelementptr i8, ptr %36, i32 1, !dbg !741
  store ptr %incdec.ptr31, ptr %scontextp, align 8, !dbg !741
  store i8 44, ptr %36, align 1, !dbg !742
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then28
  %37 = load ptr, ptr %p.addr, align 8, !dbg !743
  %38 = load i32, ptr %i, align 4, !dbg !744
  %call33 = call ptr @sym_name(ptr noundef %37, i32 noundef 7, i32 noundef %38) #10, !dbg !745
  store ptr %call33, ptr %nm, align 8, !dbg !746
  %39 = load ptr, ptr %scontextp, align 8, !dbg !747
  %40 = load ptr, ptr %nm, align 8, !dbg !748
  %call34 = call ptr @strcpy(ptr noundef %39, ptr noundef %40) #10, !dbg !749
  %41 = load ptr, ptr %nm, align 8, !dbg !750
  %call35 = call i64 @strlen(ptr noundef %41) #10, !dbg !751
  %42 = load ptr, ptr %scontextp, align 8, !dbg !752
  %add.ptr36 = getelementptr i8, ptr %42, i64 %call35, !dbg !752
  store ptr %add.ptr36, ptr %scontextp, align 8, !dbg !752
  %43 = load i32, ptr %i, align 4, !dbg !753
  store i32 %43, ptr %head, align 4, !dbg !754
  br label %if.end37, !dbg !755

if.end37:                                         ; preds = %if.end32, %for.body10
  %44 = load i32, ptr %i, align 4, !dbg !756
  store i32 %44, ptr %prev, align 4, !dbg !757
  br label %for.inc, !dbg !758

for.inc:                                          ; preds = %if.end37
  %45 = load ptr, ptr %e, align 8, !dbg !696
  %46 = load i32, ptr %i, align 4, !dbg !696
  %call38 = call i32 @ebitmap_next_positive(ptr noundef %45, ptr noundef %node, i32 noundef %46) #10, !dbg !696
  store i32 %call38, ptr %i, align 4, !dbg !696
  br label %for.cond8, !dbg !696, !llvm.loop !759

for.end:                                          ; preds = %for.cond8
  %47 = load i32, ptr %prev, align 4, !dbg !761
  %48 = load i32, ptr %head, align 4, !dbg !763
  %cmp39 = icmp ne i32 %47, %48, !dbg !764
  br i1 %cmp39, label %if.then40, label %if.end52, !dbg !765

if.then40:                                        ; preds = %for.end
  %49 = load i32, ptr %prev, align 4, !dbg !766
  %50 = load i32, ptr %head, align 4, !dbg !769
  %sub41 = sub i32 %49, %50, !dbg !770
  %cmp42 = icmp sgt i32 %sub41, 1, !dbg !771
  br i1 %cmp42, label %if.then43, label %if.else45, !dbg !772

if.then43:                                        ; preds = %if.then40
  %51 = load ptr, ptr %scontextp, align 8, !dbg !773
  %incdec.ptr44 = getelementptr i8, ptr %51, i32 1, !dbg !773
  store ptr %incdec.ptr44, ptr %scontextp, align 8, !dbg !773
  store i8 46, ptr %51, align 1, !dbg !774
  br label %if.end47, !dbg !775

if.else45:                                        ; preds = %if.then40
  %52 = load ptr, ptr %scontextp, align 8, !dbg !776
  %incdec.ptr46 = getelementptr i8, ptr %52, i32 1, !dbg !776
  store ptr %incdec.ptr46, ptr %scontextp, align 8, !dbg !776
  store i8 44, ptr %52, align 1, !dbg !777
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then43
  %53 = load ptr, ptr %p.addr, align 8, !dbg !778
  %54 = load i32, ptr %prev, align 4, !dbg !779
  %call48 = call ptr @sym_name(ptr noundef %53, i32 noundef 7, i32 noundef %54) #10, !dbg !780
  store ptr %call48, ptr %nm, align 8, !dbg !781
  %55 = load ptr, ptr %scontextp, align 8, !dbg !782
  %56 = load ptr, ptr %nm, align 8, !dbg !783
  %call49 = call ptr @strcpy(ptr noundef %55, ptr noundef %56) #10, !dbg !784
  %57 = load ptr, ptr %nm, align 8, !dbg !785
  %call50 = call i64 @strlen(ptr noundef %57) #10, !dbg !786
  %58 = load ptr, ptr %scontextp, align 8, !dbg !787
  %add.ptr51 = getelementptr i8, ptr %58, i64 %call50, !dbg !787
  store ptr %add.ptr51, ptr %scontextp, align 8, !dbg !787
  br label %if.end52, !dbg !788

if.end52:                                         ; preds = %if.end47, %for.end
  %59 = load i32, ptr %l, align 4, !dbg !789
  %cmp53 = icmp eq i32 %59, 0, !dbg !791
  br i1 %cmp53, label %if.then54, label %if.end67, !dbg !792

if.then54:                                        ; preds = %if.end52
  %60 = load ptr, ptr %context.addr, align 8, !dbg !793
  %range55 = getelementptr inbounds %struct.context, ptr %60, i32 0, i32 4, !dbg !796
  %level56 = getelementptr inbounds %struct.mls_range, ptr %range55, i32 0, i32 0, !dbg !797
  %arrayidx57 = getelementptr [2 x %struct.mls_level], ptr %level56, i64 0, i64 0, !dbg !793
  %61 = load ptr, ptr %context.addr, align 8, !dbg !798
  %range58 = getelementptr inbounds %struct.context, ptr %61, i32 0, i32 4, !dbg !799
  %level59 = getelementptr inbounds %struct.mls_range, ptr %range58, i32 0, i32 0, !dbg !800
  %arrayidx60 = getelementptr [2 x %struct.mls_level], ptr %level59, i64 0, i64 1, !dbg !798
  %call61 = call i32 @mls_level_eq(ptr noundef %arrayidx57, ptr noundef %arrayidx60) #10, !dbg !801
  %tobool62 = icmp ne i32 %call61, 0, !dbg !801
  br i1 %tobool62, label %if.then63, label %if.else64, !dbg !802

if.then63:                                        ; preds = %if.then54
  br label %for.end69, !dbg !803

if.else64:                                        ; preds = %if.then54
  %62 = load ptr, ptr %scontextp, align 8, !dbg !804
  %incdec.ptr65 = getelementptr i8, ptr %62, i32 1, !dbg !804
  store ptr %incdec.ptr65, ptr %scontextp, align 8, !dbg !804
  store i8 45, ptr %62, align 1, !dbg !805
  br label %if.end66

if.end66:                                         ; preds = %if.else64
  br label %if.end67, !dbg !806

if.end67:                                         ; preds = %if.end66, %if.end52
  br label %for.inc68, !dbg !807

for.inc68:                                        ; preds = %if.end67
  %63 = load i32, ptr %l, align 4, !dbg !808
  %inc = add i32 %63, 1, !dbg !808
  store i32 %inc, ptr %l, align 4, !dbg !808
  br label %for.cond, !dbg !809, !llvm.loop !810

for.end69:                                        ; preds = %if.then63, %for.cond
  %64 = load ptr, ptr %scontextp, align 8, !dbg !812
  %65 = load ptr, ptr %scontext.addr, align 8, !dbg !813
  store ptr %64, ptr %65, align 8, !dbg !814
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !815
  br label %cleanup, !dbg !815

cleanup:                                          ; preds = %for.end69, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !815
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #9, !dbg !815
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev) #9, !dbg !815
  call void @llvm.lifetime.end.p0(i64 4, ptr %head) #9, !dbg !815
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #9, !dbg !815
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !815
  call void @llvm.lifetime.end.p0(i64 8, ptr %nm) #9, !dbg !815
  call void @llvm.lifetime.end.p0(i64 8, ptr %scontextp) #9, !dbg !815
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !815

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !816 dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mls_level_isvalid(ptr noundef %p, ptr noundef %l) #0 align 16 !dbg !819 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %levdatum = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !824, metadata !DIExpression()), !dbg !832
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !825, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 8, ptr %levdatum) #9, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %levdatum, metadata !826, metadata !DIExpression()), !dbg !835
  %0 = load ptr, ptr %l.addr, align 8, !dbg !836
  %sens = getelementptr inbounds %struct.mls_level, ptr %0, i32 0, i32 0, !dbg !838
  %1 = load i32, ptr %sens, align 8, !dbg !838
  %tobool = icmp ne i32 %1, 0, !dbg !836
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !839

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %l.addr, align 8, !dbg !840
  %sens1 = getelementptr inbounds %struct.mls_level, ptr %2, i32 0, i32 0, !dbg !841
  %3 = load i32, ptr %sens1, align 8, !dbg !841
  %4 = load ptr, ptr %p.addr, align 8, !dbg !842
  %symtab = getelementptr inbounds %struct.policydb, ptr %4, i32 0, i32 1, !dbg !843
  %arrayidx = getelementptr [8 x %struct.symtab], ptr %symtab, i64 0, i64 6, !dbg !842
  %nprim = getelementptr inbounds %struct.symtab, ptr %arrayidx, i32 0, i32 1, !dbg !844
  %5 = load i32, ptr %nprim, align 8, !dbg !844
  %cmp = icmp ugt i32 %3, %5, !dbg !845
  br i1 %cmp, label %if.then, label %if.end, !dbg !846

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !847

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %p.addr, align 8, !dbg !848
  %symtab2 = getelementptr inbounds %struct.policydb, ptr %6, i32 0, i32 1, !dbg !849
  %arrayidx3 = getelementptr [8 x %struct.symtab], ptr %symtab2, i64 0, i64 6, !dbg !848
  %7 = load ptr, ptr %p.addr, align 8, !dbg !850
  %8 = load ptr, ptr %l.addr, align 8, !dbg !851
  %sens4 = getelementptr inbounds %struct.mls_level, ptr %8, i32 0, i32 0, !dbg !852
  %9 = load i32, ptr %sens4, align 8, !dbg !852
  %sub = sub i32 %9, 1, !dbg !853
  %call = call ptr @sym_name(ptr noundef %7, i32 noundef 6, i32 noundef %sub) #10, !dbg !854
  %call5 = call ptr @symtab_search(ptr noundef %arrayidx3, ptr noundef %call) #10, !dbg !855
  store ptr %call5, ptr %levdatum, align 8, !dbg !856
  %10 = load ptr, ptr %levdatum, align 8, !dbg !857
  %tobool6 = icmp ne ptr %10, null, !dbg !857
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !859

if.then7:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !860

if.end8:                                          ; preds = %if.end
  %11 = load ptr, ptr %levdatum, align 8, !dbg !861
  %level = getelementptr inbounds %struct.level_datum, ptr %11, i32 0, i32 0, !dbg !862
  %12 = load ptr, ptr %level, align 8, !dbg !862
  %cat = getelementptr inbounds %struct.mls_level, ptr %12, i32 0, i32 1, !dbg !863
  %13 = load ptr, ptr %l.addr, align 8, !dbg !864
  %cat9 = getelementptr inbounds %struct.mls_level, ptr %13, i32 0, i32 1, !dbg !865
  %14 = load ptr, ptr %p.addr, align 8, !dbg !866
  %symtab10 = getelementptr inbounds %struct.policydb, ptr %14, i32 0, i32 1, !dbg !867
  %arrayidx11 = getelementptr [8 x %struct.symtab], ptr %symtab10, i64 0, i64 7, !dbg !866
  %nprim12 = getelementptr inbounds %struct.symtab, ptr %arrayidx11, i32 0, i32 1, !dbg !868
  %15 = load i32, ptr %nprim12, align 8, !dbg !868
  %call13 = call i32 @ebitmap_contains(ptr noundef %cat, ptr noundef %cat9, i32 noundef %15) #10, !dbg !869
  store i32 %call13, ptr %retval, align 4, !dbg !870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !870

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %levdatum) #9, !dbg !871
  %16 = load i32, ptr %retval, align 4, !dbg !871
  ret i32 %16, !dbg !871
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !872 dso_local ptr @symtab_search(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !876 dso_local i32 @ebitmap_contains(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mls_range_isvalid(ptr noundef %p, ptr noundef %r) #0 align 16 !dbg !879 {
entry:
  %p.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !884, metadata !DIExpression()), !dbg !886
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !885, metadata !DIExpression()), !dbg !887
  %0 = load ptr, ptr %p.addr, align 8, !dbg !888
  %1 = load ptr, ptr %r.addr, align 8, !dbg !889
  %level = getelementptr inbounds %struct.mls_range, ptr %1, i32 0, i32 0, !dbg !890
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !889
  %call = call i32 @mls_level_isvalid(ptr noundef %0, ptr noundef %arrayidx) #10, !dbg !891
  %tobool = icmp ne i32 %call, 0, !dbg !891
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !892

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !893
  %3 = load ptr, ptr %r.addr, align 8, !dbg !894
  %level1 = getelementptr inbounds %struct.mls_range, ptr %3, i32 0, i32 0, !dbg !895
  %arrayidx2 = getelementptr [2 x %struct.mls_level], ptr %level1, i64 0, i64 1, !dbg !894
  %call3 = call i32 @mls_level_isvalid(ptr noundef %2, ptr noundef %arrayidx2) #10, !dbg !896
  %tobool4 = icmp ne i32 %call3, 0, !dbg !896
  br i1 %tobool4, label %land.rhs, label %land.end, !dbg !897

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load ptr, ptr %r.addr, align 8, !dbg !898
  %level5 = getelementptr inbounds %struct.mls_range, ptr %4, i32 0, i32 0, !dbg !899
  %arrayidx6 = getelementptr [2 x %struct.mls_level], ptr %level5, i64 0, i64 1, !dbg !898
  %5 = load ptr, ptr %r.addr, align 8, !dbg !900
  %level7 = getelementptr inbounds %struct.mls_range, ptr %5, i32 0, i32 0, !dbg !901
  %arrayidx8 = getelementptr [2 x %struct.mls_level], ptr %level7, i64 0, i64 0, !dbg !900
  %call9 = call i32 @mls_level_dom(ptr noundef %arrayidx6, ptr noundef %arrayidx8) #10, !dbg !902
  %tobool10 = icmp ne i32 %call9, 0, !dbg !897
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool10, %land.rhs ], !dbg !903
  %land.ext = zext i1 %6 to i32, !dbg !897
  ret i32 %land.ext, !dbg !904
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mls_level_dom(ptr noundef %l1, ptr noundef %l2) #4 align 16 !dbg !905 {
entry:
  %l1.addr = alloca ptr, align 8
  %l2.addr = alloca ptr, align 8
  store ptr %l1, ptr %l1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l1.addr, metadata !907, metadata !DIExpression()), !dbg !909
  store ptr %l2, ptr %l2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l2.addr, metadata !908, metadata !DIExpression()), !dbg !910
  %0 = load ptr, ptr %l1.addr, align 8, !dbg !911
  %sens = getelementptr inbounds %struct.mls_level, ptr %0, i32 0, i32 0, !dbg !912
  %1 = load i32, ptr %sens, align 8, !dbg !912
  %2 = load ptr, ptr %l2.addr, align 8, !dbg !913
  %sens1 = getelementptr inbounds %struct.mls_level, ptr %2, i32 0, i32 0, !dbg !914
  %3 = load i32, ptr %sens1, align 8, !dbg !914
  %cmp = icmp uge i32 %1, %3, !dbg !915
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !916

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %l1.addr, align 8, !dbg !917
  %cat = getelementptr inbounds %struct.mls_level, ptr %4, i32 0, i32 1, !dbg !918
  %5 = load ptr, ptr %l2.addr, align 8, !dbg !919
  %cat2 = getelementptr inbounds %struct.mls_level, ptr %5, i32 0, i32 1, !dbg !920
  %call = call i32 @ebitmap_contains(ptr noundef %cat, ptr noundef %cat2, i32 noundef 0) #10, !dbg !921
  %tobool = icmp ne i32 %call, 0, !dbg !916
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !922
  %land.ext = zext i1 %6 to i32, !dbg !916
  ret i32 %land.ext, !dbg !923
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mls_context_isvalid(ptr noundef %p, ptr noundef %c) #0 align 16 !dbg !924 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %usrdatum = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !926, metadata !DIExpression()), !dbg !929
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !927, metadata !DIExpression()), !dbg !930
  call void @llvm.lifetime.start.p0(i64 8, ptr %usrdatum) #9, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %usrdatum, metadata !928, metadata !DIExpression()), !dbg !932
  %0 = load ptr, ptr %p.addr, align 8, !dbg !933
  %mls_enabled = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 0, !dbg !935
  %1 = load i32, ptr %mls_enabled, align 8, !dbg !935
  %tobool = icmp ne i32 %1, 0, !dbg !933
  br i1 %tobool, label %if.end, label %if.then, !dbg !936

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !937

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !938
  %3 = load ptr, ptr %c.addr, align 8, !dbg !940
  %range = getelementptr inbounds %struct.context, ptr %3, i32 0, i32 4, !dbg !941
  %call = call i32 @mls_range_isvalid(ptr noundef %2, ptr noundef %range) #10, !dbg !942
  %tobool1 = icmp ne i32 %call, 0, !dbg !942
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !943

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !944

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %c.addr, align 8, !dbg !945
  %role = getelementptr inbounds %struct.context, ptr %4, i32 0, i32 1, !dbg !947
  %5 = load i32, ptr %role, align 4, !dbg !947
  %cmp = icmp eq i32 %5, 1, !dbg !948
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !949

if.then4:                                         ; preds = %if.end3
  store i32 1, ptr %retval, align 4, !dbg !950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !950

if.end5:                                          ; preds = %if.end3
  %6 = load ptr, ptr %c.addr, align 8, !dbg !951
  %user = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 0, !dbg !953
  %7 = load i32, ptr %user, align 8, !dbg !953
  %tobool6 = icmp ne i32 %7, 0, !dbg !951
  br i1 %tobool6, label %lor.lhs.false, label %if.then9, !dbg !954

lor.lhs.false:                                    ; preds = %if.end5
  %8 = load ptr, ptr %c.addr, align 8, !dbg !955
  %user7 = getelementptr inbounds %struct.context, ptr %8, i32 0, i32 0, !dbg !956
  %9 = load i32, ptr %user7, align 8, !dbg !956
  %10 = load ptr, ptr %p.addr, align 8, !dbg !957
  %symtab = getelementptr inbounds %struct.policydb, ptr %10, i32 0, i32 1, !dbg !958
  %arrayidx = getelementptr [8 x %struct.symtab], ptr %symtab, i64 0, i64 4, !dbg !957
  %nprim = getelementptr inbounds %struct.symtab, ptr %arrayidx, i32 0, i32 1, !dbg !959
  %11 = load i32, ptr %nprim, align 8, !dbg !959
  %cmp8 = icmp ugt i32 %9, %11, !dbg !960
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !961

if.then9:                                         ; preds = %lor.lhs.false, %if.end5
  store i32 0, ptr %retval, align 4, !dbg !962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !962

if.end10:                                         ; preds = %lor.lhs.false
  %12 = load ptr, ptr %p.addr, align 8, !dbg !963
  %user_val_to_struct = getelementptr inbounds %struct.policydb, ptr %12, i32 0, i32 5, !dbg !964
  %13 = load ptr, ptr %user_val_to_struct, align 8, !dbg !964
  %14 = load ptr, ptr %c.addr, align 8, !dbg !965
  %user11 = getelementptr inbounds %struct.context, ptr %14, i32 0, i32 0, !dbg !966
  %15 = load i32, ptr %user11, align 8, !dbg !966
  %sub = sub i32 %15, 1, !dbg !967
  %idxprom = zext i32 %sub to i64, !dbg !963
  %arrayidx12 = getelementptr ptr, ptr %13, i64 %idxprom, !dbg !963
  %16 = load ptr, ptr %arrayidx12, align 8, !dbg !963
  store ptr %16, ptr %usrdatum, align 8, !dbg !968
  %17 = load ptr, ptr %c.addr, align 8, !dbg !969
  %range13 = getelementptr inbounds %struct.context, ptr %17, i32 0, i32 4, !dbg !969
  %level = getelementptr inbounds %struct.mls_range, ptr %range13, i32 0, i32 0, !dbg !969
  %arrayidx14 = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !969
  %18 = load ptr, ptr %usrdatum, align 8, !dbg !969
  %range15 = getelementptr inbounds %struct.user_datum, ptr %18, i32 0, i32 3, !dbg !969
  %level16 = getelementptr inbounds %struct.mls_range, ptr %range15, i32 0, i32 0, !dbg !969
  %arrayidx17 = getelementptr [2 x %struct.mls_level], ptr %level16, i64 0, i64 0, !dbg !969
  %call18 = call i32 @mls_level_dom(ptr noundef %arrayidx14, ptr noundef %arrayidx17) #10, !dbg !969
  %tobool19 = icmp ne i32 %call18, 0, !dbg !969
  br i1 %tobool19, label %land.lhs.true, label %if.then28, !dbg !969

land.lhs.true:                                    ; preds = %if.end10
  %19 = load ptr, ptr %usrdatum, align 8, !dbg !969
  %range20 = getelementptr inbounds %struct.user_datum, ptr %19, i32 0, i32 3, !dbg !969
  %level21 = getelementptr inbounds %struct.mls_range, ptr %range20, i32 0, i32 0, !dbg !969
  %arrayidx22 = getelementptr [2 x %struct.mls_level], ptr %level21, i64 0, i64 1, !dbg !969
  %20 = load ptr, ptr %c.addr, align 8, !dbg !969
  %range23 = getelementptr inbounds %struct.context, ptr %20, i32 0, i32 4, !dbg !969
  %level24 = getelementptr inbounds %struct.mls_range, ptr %range23, i32 0, i32 0, !dbg !969
  %arrayidx25 = getelementptr [2 x %struct.mls_level], ptr %level24, i64 0, i64 1, !dbg !969
  %call26 = call i32 @mls_level_dom(ptr noundef %arrayidx22, ptr noundef %arrayidx25) #10, !dbg !969
  %tobool27 = icmp ne i32 %call26, 0, !dbg !969
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !971

if.then28:                                        ; preds = %land.lhs.true, %if.end10
  store i32 0, ptr %retval, align 4, !dbg !972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !972

if.end29:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !973

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then9, %if.then4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %usrdatum) #9, !dbg !974
  %21 = load i32, ptr %retval, align 4, !dbg !974
  ret i32 %21, !dbg !974
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mls_context_to_sid(ptr noundef %pol, i8 noundef zeroext %oldc, ptr noundef %scontext, ptr noundef %context, ptr noundef %s, i32 noundef %def_sid) #0 align 16 !dbg !975 {
entry:
  %retval = alloca i32, align 4
  %pol.addr = alloca ptr, align 8
  %oldc.addr = alloca i8, align 1
  %scontext.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %def_sid.addr = alloca i32, align 4
  %sensitivity = alloca ptr, align 8
  %cur_cat = alloca ptr, align 8
  %next_cat = alloca ptr, align 8
  %rngptr = alloca ptr, align 8
  %levdatum = alloca ptr, align 8
  %catdatum = alloca ptr, align 8
  %rngdatum = alloca ptr, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %rc = alloca i32, align 4
  %rangep = alloca [2 x ptr], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %defcon = alloca ptr, align 8
  store ptr %pol, ptr %pol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pol.addr, metadata !1090, metadata !DIExpression()), !dbg !1116
  store i8 %oldc, ptr %oldc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %oldc.addr, metadata !1091, metadata !DIExpression()), !dbg !1117
  store ptr %scontext, ptr %scontext.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scontext.addr, metadata !1092, metadata !DIExpression()), !dbg !1118
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1093, metadata !DIExpression()), !dbg !1119
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1094, metadata !DIExpression()), !dbg !1120
  store i32 %def_sid, ptr %def_sid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %def_sid.addr, metadata !1095, metadata !DIExpression()), !dbg !1121
  call void @llvm.lifetime.start.p0(i64 8, ptr %sensitivity) #9, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %sensitivity, metadata !1096, metadata !DIExpression()), !dbg !1123
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_cat) #9, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %cur_cat, metadata !1097, metadata !DIExpression()), !dbg !1124
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_cat) #9, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %next_cat, metadata !1098, metadata !DIExpression()), !dbg !1125
  call void @llvm.lifetime.start.p0(i64 8, ptr %rngptr) #9, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %rngptr, metadata !1099, metadata !DIExpression()), !dbg !1126
  call void @llvm.lifetime.start.p0(i64 8, ptr %levdatum) #9, !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %levdatum, metadata !1100, metadata !DIExpression()), !dbg !1128
  call void @llvm.lifetime.start.p0(i64 8, ptr %catdatum) #9, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %catdatum, metadata !1101, metadata !DIExpression()), !dbg !1130
  call void @llvm.lifetime.start.p0(i64 8, ptr %rngdatum) #9, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %rngdatum, metadata !1107, metadata !DIExpression()), !dbg !1131
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1108, metadata !DIExpression()), !dbg !1133
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #9, !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %l, metadata !1109, metadata !DIExpression()), !dbg !1135
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1110, metadata !DIExpression()), !dbg !1136
  call void @llvm.lifetime.start.p0(i64 16, ptr %rangep) #9, !dbg !1137
  call void @llvm.dbg.declare(metadata ptr %rangep, metadata !1111, metadata !DIExpression()), !dbg !1138
  %0 = load ptr, ptr %pol.addr, align 8, !dbg !1139
  %mls_enabled = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 0, !dbg !1141
  %1 = load i32, ptr %mls_enabled, align 8, !dbg !1141
  %tobool = icmp ne i32 %1, 0, !dbg !1139
  br i1 %tobool, label %if.end4, label %if.then, !dbg !1142

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %oldc.addr, align 1, !dbg !1143
  %conv = zext i8 %2 to i32, !dbg !1143
  %tobool1 = icmp ne i32 %conv, 0, !dbg !1143
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !1146

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, ptr %def_sid.addr, align 4, !dbg !1147
  %cmp = icmp eq i32 %3, 0, !dbg !1148
  br i1 %cmp, label %if.then3, label %if.end, !dbg !1149

if.then3:                                         ; preds = %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !1150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !1150

if.end:                                           ; preds = %land.lhs.true, %if.then
  store i32 0, ptr %retval, align 4, !dbg !1151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !1151

if.end4:                                          ; preds = %entry
  %4 = load i8, ptr %oldc.addr, align 1, !dbg !1152
  %tobool5 = icmp ne i8 %4, 0, !dbg !1152
  br i1 %tobool5, label %if.end15, label %if.then6, !dbg !1153

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %defcon) #9, !dbg !1154
  call void @llvm.dbg.declare(metadata ptr %defcon, metadata !1113, metadata !DIExpression()), !dbg !1155
  %5 = load i32, ptr %def_sid.addr, align 4, !dbg !1156
  %cmp7 = icmp eq i32 %5, 0, !dbg !1158
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !1159

if.then9:                                         ; preds = %if.then6
  store i32 -22, ptr %retval, align 4, !dbg !1160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1160

if.end10:                                         ; preds = %if.then6
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1161
  %7 = load i32, ptr %def_sid.addr, align 4, !dbg !1162
  %call = call ptr @sidtab_search(ptr noundef %6, i32 noundef %7) #10, !dbg !1163
  store ptr %call, ptr %defcon, align 8, !dbg !1164
  %8 = load ptr, ptr %defcon, align 8, !dbg !1165
  %tobool11 = icmp ne ptr %8, null, !dbg !1165
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !1167

if.then12:                                        ; preds = %if.end10
  store i32 -22, ptr %retval, align 4, !dbg !1168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1168

if.end13:                                         ; preds = %if.end10
  %9 = load ptr, ptr %context.addr, align 8, !dbg !1169
  %10 = load ptr, ptr %defcon, align 8, !dbg !1170
  %call14 = call i32 @mls_context_cpy(ptr noundef %9, ptr noundef %10) #10, !dbg !1171
  store i32 %call14, ptr %retval, align 4, !dbg !1172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1172

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %defcon) #9, !dbg !1173
  br label %cleanup135

if.end15:                                         ; preds = %if.end4
  %11 = load ptr, ptr %scontext.addr, align 8, !dbg !1174
  %arrayidx = getelementptr [2 x ptr], ptr %rangep, i64 0, i64 0, !dbg !1175
  store ptr %11, ptr %arrayidx, align 16, !dbg !1176
  %12 = load ptr, ptr %scontext.addr, align 8, !dbg !1177
  %call16 = call ptr @strchr(ptr noundef %12, i32 noundef 45) #10, !dbg !1178
  %arrayidx17 = getelementptr [2 x ptr], ptr %rangep, i64 0, i64 1, !dbg !1179
  store ptr %call16, ptr %arrayidx17, align 8, !dbg !1180
  %arrayidx18 = getelementptr [2 x ptr], ptr %rangep, i64 0, i64 1, !dbg !1181
  %13 = load ptr, ptr %arrayidx18, align 8, !dbg !1181
  %tobool19 = icmp ne ptr %13, null, !dbg !1181
  br i1 %tobool19, label %if.then20, label %if.end24, !dbg !1183

if.then20:                                        ; preds = %if.end15
  %arrayidx21 = getelementptr [2 x ptr], ptr %rangep, i64 0, i64 1, !dbg !1184
  %14 = load ptr, ptr %arrayidx21, align 8, !dbg !1184
  %arrayidx22 = getelementptr i8, ptr %14, i64 0, !dbg !1184
  store i8 0, ptr %arrayidx22, align 1, !dbg !1186
  %arrayidx23 = getelementptr [2 x ptr], ptr %rangep, i64 0, i64 1, !dbg !1187
  %15 = load ptr, ptr %arrayidx23, align 8, !dbg !1188
  %incdec.ptr = getelementptr i8, ptr %15, i32 1, !dbg !1188
  store ptr %incdec.ptr, ptr %arrayidx23, align 8, !dbg !1188
  br label %if.end24, !dbg !1189

if.end24:                                         ; preds = %if.then20, %if.end15
  store i32 0, ptr %l, align 4, !dbg !1190
  br label %for.cond, !dbg !1192

for.cond:                                         ; preds = %for.inc107, %if.end24
  %16 = load i32, ptr %l, align 4, !dbg !1193
  %cmp25 = icmp slt i32 %16, 2, !dbg !1195
  br i1 %cmp25, label %for.body, label %for.end109, !dbg !1196

for.body:                                         ; preds = %for.cond
  %17 = load i32, ptr %l, align 4, !dbg !1197
  %idxprom = sext i32 %17 to i64, !dbg !1199
  %arrayidx27 = getelementptr [2 x ptr], ptr %rangep, i64 0, i64 %idxprom, !dbg !1199
  %18 = load ptr, ptr %arrayidx27, align 8, !dbg !1199
  store ptr %18, ptr %sensitivity, align 8, !dbg !1200
  %19 = load ptr, ptr %sensitivity, align 8, !dbg !1201
  %cmp28 = icmp eq ptr %19, null, !dbg !1203
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !1204

if.then30:                                        ; preds = %for.body
  br label %for.end109, !dbg !1205

if.end31:                                         ; preds = %for.body
  %20 = load ptr, ptr %sensitivity, align 8, !dbg !1206
  %call32 = call ptr @strchr(ptr noundef %20, i32 noundef 58) #10, !dbg !1207
  store ptr %call32, ptr %next_cat, align 8, !dbg !1208
  %21 = load ptr, ptr %next_cat, align 8, !dbg !1209
  %tobool33 = icmp ne ptr %21, null, !dbg !1209
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !1211

if.then34:                                        ; preds = %if.end31
  %22 = load ptr, ptr %next_cat, align 8, !dbg !1212
  %incdec.ptr35 = getelementptr i8, ptr %22, i32 1, !dbg !1212
  store ptr %incdec.ptr35, ptr %next_cat, align 8, !dbg !1212
  store i8 0, ptr %22, align 1, !dbg !1213
  br label %if.end36, !dbg !1214

if.end36:                                         ; preds = %if.then34, %if.end31
  %23 = load ptr, ptr %pol.addr, align 8, !dbg !1215
  %symtab = getelementptr inbounds %struct.policydb, ptr %23, i32 0, i32 1, !dbg !1216
  %arrayidx37 = getelementptr [8 x %struct.symtab], ptr %symtab, i64 0, i64 6, !dbg !1215
  %24 = load ptr, ptr %sensitivity, align 8, !dbg !1217
  %call38 = call ptr @symtab_search(ptr noundef %arrayidx37, ptr noundef %24) #10, !dbg !1218
  store ptr %call38, ptr %levdatum, align 8, !dbg !1219
  %25 = load ptr, ptr %levdatum, align 8, !dbg !1220
  %tobool39 = icmp ne ptr %25, null, !dbg !1220
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !1222

if.then40:                                        ; preds = %if.end36
  store i32 -22, ptr %retval, align 4, !dbg !1223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !1223

if.end41:                                         ; preds = %if.end36
  %26 = load ptr, ptr %levdatum, align 8, !dbg !1224
  %level = getelementptr inbounds %struct.level_datum, ptr %26, i32 0, i32 0, !dbg !1225
  %27 = load ptr, ptr %level, align 8, !dbg !1225
  %sens = getelementptr inbounds %struct.mls_level, ptr %27, i32 0, i32 0, !dbg !1226
  %28 = load i32, ptr %sens, align 8, !dbg !1226
  %29 = load ptr, ptr %context.addr, align 8, !dbg !1227
  %range = getelementptr inbounds %struct.context, ptr %29, i32 0, i32 4, !dbg !1228
  %level42 = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !1229
  %30 = load i32, ptr %l, align 4, !dbg !1230
  %idxprom43 = sext i32 %30 to i64, !dbg !1227
  %arrayidx44 = getelementptr [2 x %struct.mls_level], ptr %level42, i64 0, i64 %idxprom43, !dbg !1227
  %sens45 = getelementptr inbounds %struct.mls_level, ptr %arrayidx44, i32 0, i32 0, !dbg !1231
  store i32 %28, ptr %sens45, align 8, !dbg !1232
  br label %while.cond, !dbg !1233

while.cond:                                       ; preds = %for.end, %if.then77, %if.end41
  %31 = load ptr, ptr %next_cat, align 8, !dbg !1234
  %cmp46 = icmp ne ptr %31, null, !dbg !1235
  br i1 %cmp46, label %while.body, label %while.end, !dbg !1233

while.body:                                       ; preds = %while.cond
  %32 = load ptr, ptr %next_cat, align 8, !dbg !1236
  store ptr %32, ptr %cur_cat, align 8, !dbg !1238
  %33 = load ptr, ptr %next_cat, align 8, !dbg !1239
  %call48 = call ptr @strchr(ptr noundef %33, i32 noundef 44) #10, !dbg !1240
  store ptr %call48, ptr %next_cat, align 8, !dbg !1241
  %34 = load ptr, ptr %next_cat, align 8, !dbg !1242
  %cmp49 = icmp ne ptr %34, null, !dbg !1244
  br i1 %cmp49, label %if.then51, label %if.end53, !dbg !1245

if.then51:                                        ; preds = %while.body
  %35 = load ptr, ptr %next_cat, align 8, !dbg !1246
  %incdec.ptr52 = getelementptr i8, ptr %35, i32 1, !dbg !1246
  store ptr %incdec.ptr52, ptr %next_cat, align 8, !dbg !1246
  store i8 0, ptr %35, align 1, !dbg !1247
  br label %if.end53, !dbg !1248

if.end53:                                         ; preds = %if.then51, %while.body
  %36 = load ptr, ptr %cur_cat, align 8, !dbg !1249
  %call54 = call ptr @strchr(ptr noundef %36, i32 noundef 46) #10, !dbg !1250
  store ptr %call54, ptr %rngptr, align 8, !dbg !1251
  %37 = load ptr, ptr %rngptr, align 8, !dbg !1252
  %cmp55 = icmp ne ptr %37, null, !dbg !1254
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !1255

if.then57:                                        ; preds = %if.end53
  %38 = load ptr, ptr %rngptr, align 8, !dbg !1256
  %incdec.ptr58 = getelementptr i8, ptr %38, i32 1, !dbg !1256
  store ptr %incdec.ptr58, ptr %rngptr, align 8, !dbg !1256
  store i8 0, ptr %38, align 1, !dbg !1258
  br label %if.end59, !dbg !1259

if.end59:                                         ; preds = %if.then57, %if.end53
  %39 = load ptr, ptr %pol.addr, align 8, !dbg !1260
  %symtab60 = getelementptr inbounds %struct.policydb, ptr %39, i32 0, i32 1, !dbg !1261
  %arrayidx61 = getelementptr [8 x %struct.symtab], ptr %symtab60, i64 0, i64 7, !dbg !1260
  %40 = load ptr, ptr %cur_cat, align 8, !dbg !1262
  %call62 = call ptr @symtab_search(ptr noundef %arrayidx61, ptr noundef %40) #10, !dbg !1263
  store ptr %call62, ptr %catdatum, align 8, !dbg !1264
  %41 = load ptr, ptr %catdatum, align 8, !dbg !1265
  %tobool63 = icmp ne ptr %41, null, !dbg !1265
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !1267

if.then64:                                        ; preds = %if.end59
  store i32 -22, ptr %retval, align 4, !dbg !1268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !1268

if.end65:                                         ; preds = %if.end59
  %42 = load ptr, ptr %context.addr, align 8, !dbg !1269
  %range66 = getelementptr inbounds %struct.context, ptr %42, i32 0, i32 4, !dbg !1270
  %level67 = getelementptr inbounds %struct.mls_range, ptr %range66, i32 0, i32 0, !dbg !1271
  %43 = load i32, ptr %l, align 4, !dbg !1272
  %idxprom68 = sext i32 %43 to i64, !dbg !1269
  %arrayidx69 = getelementptr [2 x %struct.mls_level], ptr %level67, i64 0, i64 %idxprom68, !dbg !1269
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx69, i32 0, i32 1, !dbg !1273
  %44 = load ptr, ptr %catdatum, align 8, !dbg !1274
  %value = getelementptr inbounds %struct.cat_datum, ptr %44, i32 0, i32 0, !dbg !1275
  %45 = load i32, ptr %value, align 4, !dbg !1275
  %sub = sub i32 %45, 1, !dbg !1276
  %conv70 = zext i32 %sub to i64, !dbg !1274
  %call71 = call i32 @ebitmap_set_bit(ptr noundef %cat, i64 noundef %conv70, i32 noundef 1) #10, !dbg !1277
  store i32 %call71, ptr %rc, align 4, !dbg !1278
  %46 = load i32, ptr %rc, align 4, !dbg !1279
  %tobool72 = icmp ne i32 %46, 0, !dbg !1279
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !1281

if.then73:                                        ; preds = %if.end65
  %47 = load i32, ptr %rc, align 4, !dbg !1282
  store i32 %47, ptr %retval, align 4, !dbg !1283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !1283

if.end74:                                         ; preds = %if.end65
  %48 = load ptr, ptr %rngptr, align 8, !dbg !1284
  %cmp75 = icmp eq ptr %48, null, !dbg !1286
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !1287

if.then77:                                        ; preds = %if.end74
  br label %while.cond, !dbg !1288, !llvm.loop !1289

if.end78:                                         ; preds = %if.end74
  %49 = load ptr, ptr %pol.addr, align 8, !dbg !1291
  %symtab79 = getelementptr inbounds %struct.policydb, ptr %49, i32 0, i32 1, !dbg !1292
  %arrayidx80 = getelementptr [8 x %struct.symtab], ptr %symtab79, i64 0, i64 7, !dbg !1291
  %50 = load ptr, ptr %rngptr, align 8, !dbg !1293
  %call81 = call ptr @symtab_search(ptr noundef %arrayidx80, ptr noundef %50) #10, !dbg !1294
  store ptr %call81, ptr %rngdatum, align 8, !dbg !1295
  %51 = load ptr, ptr %rngdatum, align 8, !dbg !1296
  %tobool82 = icmp ne ptr %51, null, !dbg !1296
  br i1 %tobool82, label %if.end84, label %if.then83, !dbg !1298

if.then83:                                        ; preds = %if.end78
  store i32 -22, ptr %retval, align 4, !dbg !1299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !1299

if.end84:                                         ; preds = %if.end78
  %52 = load ptr, ptr %catdatum, align 8, !dbg !1300
  %value85 = getelementptr inbounds %struct.cat_datum, ptr %52, i32 0, i32 0, !dbg !1302
  %53 = load i32, ptr %value85, align 4, !dbg !1302
  %54 = load ptr, ptr %rngdatum, align 8, !dbg !1303
  %value86 = getelementptr inbounds %struct.cat_datum, ptr %54, i32 0, i32 0, !dbg !1304
  %55 = load i32, ptr %value86, align 4, !dbg !1304
  %cmp87 = icmp uge i32 %53, %55, !dbg !1305
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !1306

if.then89:                                        ; preds = %if.end84
  store i32 -22, ptr %retval, align 4, !dbg !1307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !1307

if.end90:                                         ; preds = %if.end84
  %56 = load ptr, ptr %catdatum, align 8, !dbg !1308
  %value91 = getelementptr inbounds %struct.cat_datum, ptr %56, i32 0, i32 0, !dbg !1310
  %57 = load i32, ptr %value91, align 4, !dbg !1310
  store i32 %57, ptr %i, align 4, !dbg !1311
  br label %for.cond92, !dbg !1312

for.cond92:                                       ; preds = %for.inc, %if.end90
  %58 = load i32, ptr %i, align 4, !dbg !1313
  %59 = load ptr, ptr %rngdatum, align 8, !dbg !1315
  %value93 = getelementptr inbounds %struct.cat_datum, ptr %59, i32 0, i32 0, !dbg !1316
  %60 = load i32, ptr %value93, align 4, !dbg !1316
  %cmp94 = icmp ult i32 %58, %60, !dbg !1317
  br i1 %cmp94, label %for.body96, label %for.end, !dbg !1318

for.body96:                                       ; preds = %for.cond92
  %61 = load ptr, ptr %context.addr, align 8, !dbg !1319
  %range97 = getelementptr inbounds %struct.context, ptr %61, i32 0, i32 4, !dbg !1321
  %level98 = getelementptr inbounds %struct.mls_range, ptr %range97, i32 0, i32 0, !dbg !1322
  %62 = load i32, ptr %l, align 4, !dbg !1323
  %idxprom99 = sext i32 %62 to i64, !dbg !1319
  %arrayidx100 = getelementptr [2 x %struct.mls_level], ptr %level98, i64 0, i64 %idxprom99, !dbg !1319
  %cat101 = getelementptr inbounds %struct.mls_level, ptr %arrayidx100, i32 0, i32 1, !dbg !1324
  %63 = load i32, ptr %i, align 4, !dbg !1325
  %conv102 = zext i32 %63 to i64, !dbg !1325
  %call103 = call i32 @ebitmap_set_bit(ptr noundef %cat101, i64 noundef %conv102, i32 noundef 1) #10, !dbg !1326
  store i32 %call103, ptr %rc, align 4, !dbg !1327
  %64 = load i32, ptr %rc, align 4, !dbg !1328
  %tobool104 = icmp ne i32 %64, 0, !dbg !1328
  br i1 %tobool104, label %if.then105, label %if.end106, !dbg !1330

if.then105:                                       ; preds = %for.body96
  %65 = load i32, ptr %rc, align 4, !dbg !1331
  store i32 %65, ptr %retval, align 4, !dbg !1332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !1332

if.end106:                                        ; preds = %for.body96
  br label %for.inc, !dbg !1333

for.inc:                                          ; preds = %if.end106
  %66 = load i32, ptr %i, align 4, !dbg !1334
  %inc = add i32 %66, 1, !dbg !1334
  store i32 %inc, ptr %i, align 4, !dbg !1334
  br label %for.cond92, !dbg !1335, !llvm.loop !1336

for.end:                                          ; preds = %for.cond92
  br label %while.cond, !dbg !1233, !llvm.loop !1289

while.end:                                        ; preds = %while.cond
  br label %for.inc107, !dbg !1338

for.inc107:                                       ; preds = %while.end
  %67 = load i32, ptr %l, align 4, !dbg !1339
  %inc108 = add i32 %67, 1, !dbg !1339
  store i32 %inc108, ptr %l, align 4, !dbg !1339
  br label %for.cond, !dbg !1340, !llvm.loop !1341

for.end109:                                       ; preds = %if.then30, %for.cond
  %arrayidx110 = getelementptr [2 x ptr], ptr %rangep, i64 0, i64 1, !dbg !1343
  %68 = load ptr, ptr %arrayidx110, align 8, !dbg !1343
  %cmp111 = icmp eq ptr %68, null, !dbg !1345
  br i1 %cmp111, label %if.then113, label %if.end134, !dbg !1346

if.then113:                                       ; preds = %for.end109
  %69 = load ptr, ptr %context.addr, align 8, !dbg !1347
  %range114 = getelementptr inbounds %struct.context, ptr %69, i32 0, i32 4, !dbg !1349
  %level115 = getelementptr inbounds %struct.mls_range, ptr %range114, i32 0, i32 0, !dbg !1350
  %arrayidx116 = getelementptr [2 x %struct.mls_level], ptr %level115, i64 0, i64 0, !dbg !1347
  %sens117 = getelementptr inbounds %struct.mls_level, ptr %arrayidx116, i32 0, i32 0, !dbg !1351
  %70 = load i32, ptr %sens117, align 8, !dbg !1351
  %71 = load ptr, ptr %context.addr, align 8, !dbg !1352
  %range118 = getelementptr inbounds %struct.context, ptr %71, i32 0, i32 4, !dbg !1353
  %level119 = getelementptr inbounds %struct.mls_range, ptr %range118, i32 0, i32 0, !dbg !1354
  %arrayidx120 = getelementptr [2 x %struct.mls_level], ptr %level119, i64 0, i64 1, !dbg !1352
  %sens121 = getelementptr inbounds %struct.mls_level, ptr %arrayidx120, i32 0, i32 0, !dbg !1355
  store i32 %70, ptr %sens121, align 8, !dbg !1356
  %72 = load ptr, ptr %context.addr, align 8, !dbg !1357
  %range122 = getelementptr inbounds %struct.context, ptr %72, i32 0, i32 4, !dbg !1358
  %level123 = getelementptr inbounds %struct.mls_range, ptr %range122, i32 0, i32 0, !dbg !1359
  %arrayidx124 = getelementptr [2 x %struct.mls_level], ptr %level123, i64 0, i64 1, !dbg !1357
  %cat125 = getelementptr inbounds %struct.mls_level, ptr %arrayidx124, i32 0, i32 1, !dbg !1360
  %73 = load ptr, ptr %context.addr, align 8, !dbg !1361
  %range126 = getelementptr inbounds %struct.context, ptr %73, i32 0, i32 4, !dbg !1362
  %level127 = getelementptr inbounds %struct.mls_range, ptr %range126, i32 0, i32 0, !dbg !1363
  %arrayidx128 = getelementptr [2 x %struct.mls_level], ptr %level127, i64 0, i64 0, !dbg !1361
  %cat129 = getelementptr inbounds %struct.mls_level, ptr %arrayidx128, i32 0, i32 1, !dbg !1364
  %call130 = call i32 @ebitmap_cpy(ptr noundef %cat125, ptr noundef %cat129) #10, !dbg !1365
  store i32 %call130, ptr %rc, align 4, !dbg !1366
  %74 = load i32, ptr %rc, align 4, !dbg !1367
  %tobool131 = icmp ne i32 %74, 0, !dbg !1367
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !1369

if.then132:                                       ; preds = %if.then113
  %75 = load i32, ptr %rc, align 4, !dbg !1370
  store i32 %75, ptr %retval, align 4, !dbg !1371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !1371

if.end133:                                        ; preds = %if.then113
  br label %if.end134, !dbg !1372

if.end134:                                        ; preds = %if.end133, %for.end109
  store i32 0, ptr %retval, align 4, !dbg !1373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !1373

cleanup135:                                       ; preds = %if.end134, %if.then132, %if.then105, %if.then89, %if.then83, %if.then73, %if.then64, %if.then40, %cleanup, %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 16, ptr %rangep) #9, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #9, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 8, ptr %rngdatum) #9, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 8, ptr %catdatum) #9, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 8, ptr %levdatum) #9, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 8, ptr %rngptr) #9, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_cat) #9, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_cat) #9, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 8, ptr %sensitivity) #9, !dbg !1374
  %76 = load i32, ptr %retval, align 4, !dbg !1374
  ret i32 %76, !dbg !1374
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sidtab_search(ptr noundef %s, i32 noundef %sid) #4 align 16 !dbg !1375 {
entry:
  %s.addr = alloca ptr, align 8
  %sid.addr = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1379, metadata !DIExpression()), !dbg !1383
  store i32 %sid, ptr %sid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sid.addr, metadata !1380, metadata !DIExpression()), !dbg !1384
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #9, !dbg !1385
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1381, metadata !DIExpression()), !dbg !1386
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1387
  %1 = load i32, ptr %sid.addr, align 4, !dbg !1388
  %call = call ptr @sidtab_search_entry(ptr noundef %0, i32 noundef %1) #10, !dbg !1389
  store ptr %call, ptr %entry1, align 8, !dbg !1386
  %2 = load ptr, ptr %entry1, align 8, !dbg !1390
  %tobool = icmp ne ptr %2, null, !dbg !1390
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1390

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %entry1, align 8, !dbg !1391
  %context = getelementptr inbounds %struct.sidtab_entry, ptr %3, i32 0, i32 2, !dbg !1392
  br label %cond.end, !dbg !1390

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1390

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %context, %cond.true ], [ null, %cond.false ], !dbg !1390
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #9, !dbg !1393
  ret ptr %cond, !dbg !1394
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mls_context_cpy(ptr noundef %dst, ptr noundef %src) #4 align 16 !dbg !1395 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1401, metadata !DIExpression()), !dbg !1405
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1402, metadata !DIExpression()), !dbg !1406
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !1407
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1403, metadata !DIExpression()), !dbg !1408
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1409
  %range = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 4, !dbg !1410
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !1411
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !1409
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !1412
  %1 = load i32, ptr %sens, align 8, !dbg !1412
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1413
  %range1 = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 4, !dbg !1414
  %level2 = getelementptr inbounds %struct.mls_range, ptr %range1, i32 0, i32 0, !dbg !1415
  %arrayidx3 = getelementptr [2 x %struct.mls_level], ptr %level2, i64 0, i64 0, !dbg !1413
  %sens4 = getelementptr inbounds %struct.mls_level, ptr %arrayidx3, i32 0, i32 0, !dbg !1416
  store i32 %1, ptr %sens4, align 8, !dbg !1417
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1418
  %range5 = getelementptr inbounds %struct.context, ptr %3, i32 0, i32 4, !dbg !1419
  %level6 = getelementptr inbounds %struct.mls_range, ptr %range5, i32 0, i32 0, !dbg !1420
  %arrayidx7 = getelementptr [2 x %struct.mls_level], ptr %level6, i64 0, i64 0, !dbg !1418
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx7, i32 0, i32 1, !dbg !1421
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1422
  %range8 = getelementptr inbounds %struct.context, ptr %4, i32 0, i32 4, !dbg !1423
  %level9 = getelementptr inbounds %struct.mls_range, ptr %range8, i32 0, i32 0, !dbg !1424
  %arrayidx10 = getelementptr [2 x %struct.mls_level], ptr %level9, i64 0, i64 0, !dbg !1422
  %cat11 = getelementptr inbounds %struct.mls_level, ptr %arrayidx10, i32 0, i32 1, !dbg !1425
  %call = call i32 @ebitmap_cpy(ptr noundef %cat, ptr noundef %cat11) #10, !dbg !1426
  store i32 %call, ptr %rc, align 4, !dbg !1427
  %5 = load i32, ptr %rc, align 4, !dbg !1428
  %tobool = icmp ne i32 %5, 0, !dbg !1428
  br i1 %tobool, label %if.then, label %if.end, !dbg !1430

if.then:                                          ; preds = %entry
  br label %out, !dbg !1431

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %src.addr, align 8, !dbg !1432
  %range12 = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 4, !dbg !1433
  %level13 = getelementptr inbounds %struct.mls_range, ptr %range12, i32 0, i32 0, !dbg !1434
  %arrayidx14 = getelementptr [2 x %struct.mls_level], ptr %level13, i64 0, i64 1, !dbg !1432
  %sens15 = getelementptr inbounds %struct.mls_level, ptr %arrayidx14, i32 0, i32 0, !dbg !1435
  %7 = load i32, ptr %sens15, align 8, !dbg !1435
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !1436
  %range16 = getelementptr inbounds %struct.context, ptr %8, i32 0, i32 4, !dbg !1437
  %level17 = getelementptr inbounds %struct.mls_range, ptr %range16, i32 0, i32 0, !dbg !1438
  %arrayidx18 = getelementptr [2 x %struct.mls_level], ptr %level17, i64 0, i64 1, !dbg !1436
  %sens19 = getelementptr inbounds %struct.mls_level, ptr %arrayidx18, i32 0, i32 0, !dbg !1439
  store i32 %7, ptr %sens19, align 8, !dbg !1440
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !1441
  %range20 = getelementptr inbounds %struct.context, ptr %9, i32 0, i32 4, !dbg !1442
  %level21 = getelementptr inbounds %struct.mls_range, ptr %range20, i32 0, i32 0, !dbg !1443
  %arrayidx22 = getelementptr [2 x %struct.mls_level], ptr %level21, i64 0, i64 1, !dbg !1441
  %cat23 = getelementptr inbounds %struct.mls_level, ptr %arrayidx22, i32 0, i32 1, !dbg !1444
  %10 = load ptr, ptr %src.addr, align 8, !dbg !1445
  %range24 = getelementptr inbounds %struct.context, ptr %10, i32 0, i32 4, !dbg !1446
  %level25 = getelementptr inbounds %struct.mls_range, ptr %range24, i32 0, i32 0, !dbg !1447
  %arrayidx26 = getelementptr [2 x %struct.mls_level], ptr %level25, i64 0, i64 1, !dbg !1445
  %cat27 = getelementptr inbounds %struct.mls_level, ptr %arrayidx26, i32 0, i32 1, !dbg !1448
  %call28 = call i32 @ebitmap_cpy(ptr noundef %cat23, ptr noundef %cat27) #10, !dbg !1449
  store i32 %call28, ptr %rc, align 4, !dbg !1450
  %11 = load i32, ptr %rc, align 4, !dbg !1451
  %tobool29 = icmp ne i32 %11, 0, !dbg !1451
  br i1 %tobool29, label %if.then30, label %if.end35, !dbg !1453

if.then30:                                        ; preds = %if.end
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !1454
  %range31 = getelementptr inbounds %struct.context, ptr %12, i32 0, i32 4, !dbg !1455
  %level32 = getelementptr inbounds %struct.mls_range, ptr %range31, i32 0, i32 0, !dbg !1456
  %arrayidx33 = getelementptr [2 x %struct.mls_level], ptr %level32, i64 0, i64 0, !dbg !1454
  %cat34 = getelementptr inbounds %struct.mls_level, ptr %arrayidx33, i32 0, i32 1, !dbg !1457
  call void @ebitmap_destroy(ptr noundef %cat34) #10, !dbg !1458
  br label %if.end35, !dbg !1458

if.end35:                                         ; preds = %if.then30, %if.end
  br label %out, !dbg !1451

out:                                              ; preds = %if.end35, %if.then
  call void @llvm.dbg.label(metadata !1404), !dbg !1459
  %13 = load i32, ptr %rc, align 4, !dbg !1460
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !1461
  ret i32 %13, !dbg !1462
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1463 dso_local ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1466 dso_local i32 @ebitmap_set_bit(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1469 dso_local i32 @ebitmap_cpy(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mls_from_string(ptr noundef %p, ptr noundef %str, ptr noundef %context, i32 noundef %gfp_mask) #0 align 16 !dbg !1472 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %gfp_mask.addr = alloca i32, align 4
  %tmpstr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1477, metadata !DIExpression()), !dbg !1483
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !1478, metadata !DIExpression()), !dbg !1484
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1479, metadata !DIExpression()), !dbg !1485
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !1480, metadata !DIExpression()), !dbg !1486
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmpstr) #9, !dbg !1487
  call void @llvm.dbg.declare(metadata ptr %tmpstr, metadata !1481, metadata !DIExpression()), !dbg !1488
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !1489
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1482, metadata !DIExpression()), !dbg !1490
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1491
  %mls_enabled = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 0, !dbg !1493
  %1 = load i32, ptr %mls_enabled, align 8, !dbg !1493
  %tobool = icmp ne i32 %1, 0, !dbg !1491
  br i1 %tobool, label %if.end, label %if.then, !dbg !1494

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1495

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %str.addr, align 8, !dbg !1496
  %3 = load i32, ptr %gfp_mask.addr, align 4, !dbg !1497
  %call = call noalias ptr @kstrdup(ptr noundef %2, i32 noundef %3) #10, !dbg !1498
  store ptr %call, ptr %tmpstr, align 8, !dbg !1499
  %4 = load ptr, ptr %tmpstr, align 8, !dbg !1500
  %tobool1 = icmp ne ptr %4, null, !dbg !1500
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !1502

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %rc, align 4, !dbg !1503
  br label %if.end4, !dbg !1505

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %p.addr, align 8, !dbg !1506
  %6 = load ptr, ptr %tmpstr, align 8, !dbg !1508
  %7 = load ptr, ptr %context.addr, align 8, !dbg !1509
  %call3 = call i32 @mls_context_to_sid(ptr noundef %5, i8 noundef zeroext 58, ptr noundef %6, ptr noundef %7, ptr noundef null, i32 noundef 0) #10, !dbg !1510
  store i32 %call3, ptr %rc, align 4, !dbg !1511
  %8 = load ptr, ptr %tmpstr, align 8, !dbg !1512
  call void @kfree(ptr noundef %8) #10, !dbg !1513
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %9 = load i32, ptr %rc, align 4, !dbg !1514
  store i32 %9, ptr %retval, align 4, !dbg !1515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1515

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !1516
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmpstr) #9, !dbg !1516
  %10 = load i32, ptr %retval, align 4, !dbg !1516
  ret i32 %10, !dbg !1516
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1517 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1520 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mls_range_set(ptr noundef %context, ptr noundef %range) #0 align 16 !dbg !1526 {
entry:
  %context.addr = alloca ptr, align 8
  %range.addr = alloca ptr, align 8
  %l = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1530, metadata !DIExpression()), !dbg !1534
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !1531, metadata !DIExpression()), !dbg !1535
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #9, !dbg !1536
  call void @llvm.dbg.declare(metadata ptr %l, metadata !1532, metadata !DIExpression()), !dbg !1537
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !1536
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1533, metadata !DIExpression()), !dbg !1538
  store i32 0, ptr %rc, align 4, !dbg !1538
  store i32 0, ptr %l, align 4, !dbg !1539
  br label %for.cond, !dbg !1541

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %l, align 4, !dbg !1542
  %cmp = icmp slt i32 %0, 2, !dbg !1544
  br i1 %cmp, label %for.body, label %for.end, !dbg !1545

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %range.addr, align 8, !dbg !1546
  %level = getelementptr inbounds %struct.mls_range, ptr %1, i32 0, i32 0, !dbg !1548
  %2 = load i32, ptr %l, align 4, !dbg !1549
  %idxprom = sext i32 %2 to i64, !dbg !1546
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 %idxprom, !dbg !1546
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !1550
  %3 = load i32, ptr %sens, align 8, !dbg !1550
  %4 = load ptr, ptr %context.addr, align 8, !dbg !1551
  %range1 = getelementptr inbounds %struct.context, ptr %4, i32 0, i32 4, !dbg !1552
  %level2 = getelementptr inbounds %struct.mls_range, ptr %range1, i32 0, i32 0, !dbg !1553
  %5 = load i32, ptr %l, align 4, !dbg !1554
  %idxprom3 = sext i32 %5 to i64, !dbg !1551
  %arrayidx4 = getelementptr [2 x %struct.mls_level], ptr %level2, i64 0, i64 %idxprom3, !dbg !1551
  %sens5 = getelementptr inbounds %struct.mls_level, ptr %arrayidx4, i32 0, i32 0, !dbg !1555
  store i32 %3, ptr %sens5, align 8, !dbg !1556
  %6 = load ptr, ptr %context.addr, align 8, !dbg !1557
  %range6 = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 4, !dbg !1558
  %level7 = getelementptr inbounds %struct.mls_range, ptr %range6, i32 0, i32 0, !dbg !1559
  %7 = load i32, ptr %l, align 4, !dbg !1560
  %idxprom8 = sext i32 %7 to i64, !dbg !1557
  %arrayidx9 = getelementptr [2 x %struct.mls_level], ptr %level7, i64 0, i64 %idxprom8, !dbg !1557
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx9, i32 0, i32 1, !dbg !1561
  %8 = load ptr, ptr %range.addr, align 8, !dbg !1562
  %level10 = getelementptr inbounds %struct.mls_range, ptr %8, i32 0, i32 0, !dbg !1563
  %9 = load i32, ptr %l, align 4, !dbg !1564
  %idxprom11 = sext i32 %9 to i64, !dbg !1562
  %arrayidx12 = getelementptr [2 x %struct.mls_level], ptr %level10, i64 0, i64 %idxprom11, !dbg !1562
  %cat13 = getelementptr inbounds %struct.mls_level, ptr %arrayidx12, i32 0, i32 1, !dbg !1565
  %call = call i32 @ebitmap_cpy(ptr noundef %cat, ptr noundef %cat13) #10, !dbg !1566
  store i32 %call, ptr %rc, align 4, !dbg !1567
  %10 = load i32, ptr %rc, align 4, !dbg !1568
  %tobool = icmp ne i32 %10, 0, !dbg !1568
  br i1 %tobool, label %if.then, label %if.end, !dbg !1570

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !1571

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1572

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %l, align 4, !dbg !1573
  %inc = add i32 %11, 1, !dbg !1573
  store i32 %inc, ptr %l, align 4, !dbg !1573
  br label %for.cond, !dbg !1574, !llvm.loop !1575

for.end:                                          ; preds = %if.then, %for.cond
  %12 = load i32, ptr %rc, align 4, !dbg !1577
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #9, !dbg !1578
  ret i32 %12, !dbg !1579
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mls_setup_user_range(ptr noundef %p, ptr noundef %fromcon, ptr noundef %user, ptr noundef %usercon) #0 align 16 !dbg !1580 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %fromcon.addr = alloca ptr, align 8
  %user.addr = alloca ptr, align 8
  %usercon.addr = alloca ptr, align 8
  %fromcon_sen = alloca ptr, align 8
  %fromcon_clr = alloca ptr, align 8
  %user_low = alloca ptr, align 8
  %user_clr = alloca ptr, align 8
  %user_def = alloca ptr, align 8
  %usercon_sen = alloca ptr, align 8
  %usercon_clr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1584, metadata !DIExpression()), !dbg !1597
  store ptr %fromcon, ptr %fromcon.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fromcon.addr, metadata !1585, metadata !DIExpression()), !dbg !1598
  store ptr %user, ptr %user.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !1586, metadata !DIExpression()), !dbg !1599
  store ptr %usercon, ptr %usercon.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usercon.addr, metadata !1587, metadata !DIExpression()), !dbg !1600
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1601
  %mls_enabled = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 0, !dbg !1602
  %1 = load i32, ptr %mls_enabled, align 8, !dbg !1602
  %tobool = icmp ne i32 %1, 0, !dbg !1601
  br i1 %tobool, label %if.then, label %if.end52, !dbg !1603

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %fromcon_sen) #9, !dbg !1604
  call void @llvm.dbg.declare(metadata ptr %fromcon_sen, metadata !1588, metadata !DIExpression()), !dbg !1605
  %2 = load ptr, ptr %fromcon.addr, align 8, !dbg !1606
  %range = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 4, !dbg !1607
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !1608
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !1606
  store ptr %arrayidx, ptr %fromcon_sen, align 8, !dbg !1605
  call void @llvm.lifetime.start.p0(i64 8, ptr %fromcon_clr) #9, !dbg !1609
  call void @llvm.dbg.declare(metadata ptr %fromcon_clr, metadata !1591, metadata !DIExpression()), !dbg !1610
  %3 = load ptr, ptr %fromcon.addr, align 8, !dbg !1611
  %range1 = getelementptr inbounds %struct.context, ptr %3, i32 0, i32 4, !dbg !1612
  %level2 = getelementptr inbounds %struct.mls_range, ptr %range1, i32 0, i32 0, !dbg !1613
  %arrayidx3 = getelementptr [2 x %struct.mls_level], ptr %level2, i64 0, i64 1, !dbg !1611
  store ptr %arrayidx3, ptr %fromcon_clr, align 8, !dbg !1610
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_low) #9, !dbg !1614
  call void @llvm.dbg.declare(metadata ptr %user_low, metadata !1592, metadata !DIExpression()), !dbg !1615
  %4 = load ptr, ptr %user.addr, align 8, !dbg !1616
  %range4 = getelementptr inbounds %struct.user_datum, ptr %4, i32 0, i32 3, !dbg !1617
  %level5 = getelementptr inbounds %struct.mls_range, ptr %range4, i32 0, i32 0, !dbg !1618
  %arrayidx6 = getelementptr [2 x %struct.mls_level], ptr %level5, i64 0, i64 0, !dbg !1616
  store ptr %arrayidx6, ptr %user_low, align 8, !dbg !1615
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_clr) #9, !dbg !1619
  call void @llvm.dbg.declare(metadata ptr %user_clr, metadata !1593, metadata !DIExpression()), !dbg !1620
  %5 = load ptr, ptr %user.addr, align 8, !dbg !1621
  %range7 = getelementptr inbounds %struct.user_datum, ptr %5, i32 0, i32 3, !dbg !1622
  %level8 = getelementptr inbounds %struct.mls_range, ptr %range7, i32 0, i32 0, !dbg !1623
  %arrayidx9 = getelementptr [2 x %struct.mls_level], ptr %level8, i64 0, i64 1, !dbg !1621
  store ptr %arrayidx9, ptr %user_clr, align 8, !dbg !1620
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_def) #9, !dbg !1624
  call void @llvm.dbg.declare(metadata ptr %user_def, metadata !1594, metadata !DIExpression()), !dbg !1625
  %6 = load ptr, ptr %user.addr, align 8, !dbg !1626
  %dfltlevel = getelementptr inbounds %struct.user_datum, ptr %6, i32 0, i32 4, !dbg !1627
  store ptr %dfltlevel, ptr %user_def, align 8, !dbg !1625
  call void @llvm.lifetime.start.p0(i64 8, ptr %usercon_sen) #9, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %usercon_sen, metadata !1595, metadata !DIExpression()), !dbg !1629
  %7 = load ptr, ptr %usercon.addr, align 8, !dbg !1630
  %range10 = getelementptr inbounds %struct.context, ptr %7, i32 0, i32 4, !dbg !1631
  %level11 = getelementptr inbounds %struct.mls_range, ptr %range10, i32 0, i32 0, !dbg !1632
  %arrayidx12 = getelementptr [2 x %struct.mls_level], ptr %level11, i64 0, i64 0, !dbg !1630
  store ptr %arrayidx12, ptr %usercon_sen, align 8, !dbg !1629
  call void @llvm.lifetime.start.p0(i64 8, ptr %usercon_clr) #9, !dbg !1633
  call void @llvm.dbg.declare(metadata ptr %usercon_clr, metadata !1596, metadata !DIExpression()), !dbg !1634
  %8 = load ptr, ptr %usercon.addr, align 8, !dbg !1635
  %range13 = getelementptr inbounds %struct.context, ptr %8, i32 0, i32 4, !dbg !1636
  %level14 = getelementptr inbounds %struct.mls_range, ptr %range13, i32 0, i32 0, !dbg !1637
  %arrayidx15 = getelementptr [2 x %struct.mls_level], ptr %level14, i64 0, i64 1, !dbg !1635
  store ptr %arrayidx15, ptr %usercon_clr, align 8, !dbg !1634
  %9 = load ptr, ptr %user_def, align 8, !dbg !1638
  %10 = load ptr, ptr %fromcon_sen, align 8, !dbg !1638
  %call = call i32 @mls_level_dom(ptr noundef %9, ptr noundef %10) #10, !dbg !1638
  %tobool16 = icmp ne i32 %call, 0, !dbg !1638
  br i1 %tobool16, label %land.lhs.true, label %if.else, !dbg !1638

land.lhs.true:                                    ; preds = %if.then
  %11 = load ptr, ptr %fromcon_clr, align 8, !dbg !1638
  %12 = load ptr, ptr %user_def, align 8, !dbg !1638
  %call17 = call i32 @mls_level_dom(ptr noundef %11, ptr noundef %12) #10, !dbg !1638
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1638
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !1640

if.then19:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %usercon_sen, align 8, !dbg !1641
  %14 = load ptr, ptr %user_def, align 8, !dbg !1642
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %14, i64 24, i1 false), !dbg !1643
  br label %if.end35, !dbg !1644

if.else:                                          ; preds = %land.lhs.true, %if.then
  %15 = load ptr, ptr %fromcon_sen, align 8, !dbg !1645
  %16 = load ptr, ptr %user_def, align 8, !dbg !1645
  %call20 = call i32 @mls_level_dom(ptr noundef %15, ptr noundef %16) #10, !dbg !1645
  %tobool21 = icmp ne i32 %call20, 0, !dbg !1645
  br i1 %tobool21, label %land.lhs.true22, label %if.else26, !dbg !1645

land.lhs.true22:                                  ; preds = %if.else
  %17 = load ptr, ptr %user_clr, align 8, !dbg !1645
  %18 = load ptr, ptr %fromcon_sen, align 8, !dbg !1645
  %call23 = call i32 @mls_level_dom(ptr noundef %17, ptr noundef %18) #10, !dbg !1645
  %tobool24 = icmp ne i32 %call23, 0, !dbg !1645
  br i1 %tobool24, label %if.then25, label %if.else26, !dbg !1647

if.then25:                                        ; preds = %land.lhs.true22
  %19 = load ptr, ptr %usercon_sen, align 8, !dbg !1648
  %20 = load ptr, ptr %fromcon_sen, align 8, !dbg !1649
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %20, i64 24, i1 false), !dbg !1650
  br label %if.end34, !dbg !1651

if.else26:                                        ; preds = %land.lhs.true22, %if.else
  %21 = load ptr, ptr %fromcon_clr, align 8, !dbg !1652
  %22 = load ptr, ptr %user_low, align 8, !dbg !1652
  %call27 = call i32 @mls_level_dom(ptr noundef %21, ptr noundef %22) #10, !dbg !1652
  %tobool28 = icmp ne i32 %call27, 0, !dbg !1652
  br i1 %tobool28, label %land.lhs.true29, label %if.else33, !dbg !1652

land.lhs.true29:                                  ; preds = %if.else26
  %23 = load ptr, ptr %user_def, align 8, !dbg !1652
  %24 = load ptr, ptr %fromcon_clr, align 8, !dbg !1652
  %call30 = call i32 @mls_level_dom(ptr noundef %23, ptr noundef %24) #10, !dbg !1652
  %tobool31 = icmp ne i32 %call30, 0, !dbg !1652
  br i1 %tobool31, label %if.then32, label %if.else33, !dbg !1654

if.then32:                                        ; preds = %land.lhs.true29
  %25 = load ptr, ptr %usercon_sen, align 8, !dbg !1655
  %26 = load ptr, ptr %user_low, align 8, !dbg !1656
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %25, ptr align 8 %26, i64 24, i1 false), !dbg !1657
  br label %if.end, !dbg !1658

if.else33:                                        ; preds = %land.lhs.true29, %if.else26
  store i32 -22, ptr %retval, align 4, !dbg !1659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1659

if.end:                                           ; preds = %if.then32
  br label %if.end34

if.end34:                                         ; preds = %if.end, %if.then25
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then19
  %27 = load ptr, ptr %user_clr, align 8, !dbg !1660
  %28 = load ptr, ptr %fromcon_clr, align 8, !dbg !1662
  %call36 = call i32 @mls_level_dom(ptr noundef %27, ptr noundef %28) #10, !dbg !1663
  %tobool37 = icmp ne i32 %call36, 0, !dbg !1663
  br i1 %tobool37, label %if.then38, label %if.else39, !dbg !1664

if.then38:                                        ; preds = %if.end35
  %29 = load ptr, ptr %usercon_clr, align 8, !dbg !1665
  %30 = load ptr, ptr %fromcon_clr, align 8, !dbg !1666
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %30, i64 24, i1 false), !dbg !1667
  br label %if.end45, !dbg !1668

if.else39:                                        ; preds = %if.end35
  %31 = load ptr, ptr %fromcon_clr, align 8, !dbg !1669
  %32 = load ptr, ptr %user_clr, align 8, !dbg !1671
  %call40 = call i32 @mls_level_dom(ptr noundef %31, ptr noundef %32) #10, !dbg !1672
  %tobool41 = icmp ne i32 %call40, 0, !dbg !1672
  br i1 %tobool41, label %if.then42, label %if.else43, !dbg !1673

if.then42:                                        ; preds = %if.else39
  %33 = load ptr, ptr %usercon_clr, align 8, !dbg !1674
  %34 = load ptr, ptr %user_clr, align 8, !dbg !1675
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %34, i64 24, i1 false), !dbg !1676
  br label %if.end44, !dbg !1677

if.else43:                                        ; preds = %if.else39
  store i32 -22, ptr %retval, align 4, !dbg !1678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1678

if.end44:                                         ; preds = %if.then42
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then38
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1679
  br label %cleanup, !dbg !1679

cleanup:                                          ; preds = %if.end45, %if.else43, %if.else33
  call void @llvm.lifetime.end.p0(i64 8, ptr %usercon_clr) #9, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 8, ptr %usercon_sen) #9, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_def) #9, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_clr) #9, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_low) #9, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 8, ptr %fromcon_clr) #9, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 8, ptr %fromcon_sen) #9, !dbg !1679
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end52, !dbg !1680

if.end52:                                         ; preds = %cleanup.cont, %entry
  store i32 0, ptr %retval, align 4, !dbg !1681
  br label %return, !dbg !1681

return:                                           ; preds = %if.end52, %cleanup
  %35 = load i32, ptr %retval, align 4, !dbg !1682
  ret i32 %35, !dbg !1682

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mls_convert_context(ptr noundef %oldp, ptr noundef %newp, ptr noundef %oldc, ptr noundef %newc) #0 align 16 !dbg !1683 {
entry:
  %retval = alloca i32, align 4
  %oldp.addr = alloca ptr, align 8
  %newp.addr = alloca ptr, align 8
  %oldc.addr = alloca ptr, align 8
  %newc.addr = alloca ptr, align 8
  %levdatum = alloca ptr, align 8
  %catdatum = alloca ptr, align 8
  %node = alloca ptr, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %name = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !1687, metadata !DIExpression()), !dbg !1704
  store ptr %newp, ptr %newp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newp.addr, metadata !1688, metadata !DIExpression()), !dbg !1705
  store ptr %oldc, ptr %oldc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldc.addr, metadata !1689, metadata !DIExpression()), !dbg !1706
  store ptr %newc, ptr %newc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newc.addr, metadata !1690, metadata !DIExpression()), !dbg !1707
  call void @llvm.lifetime.start.p0(i64 8, ptr %levdatum) #9, !dbg !1708
  call void @llvm.dbg.declare(metadata ptr %levdatum, metadata !1691, metadata !DIExpression()), !dbg !1709
  call void @llvm.lifetime.start.p0(i64 8, ptr %catdatum) #9, !dbg !1710
  call void @llvm.dbg.declare(metadata ptr %catdatum, metadata !1692, metadata !DIExpression()), !dbg !1711
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !1712
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1693, metadata !DIExpression()), !dbg !1713
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1714
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1694, metadata !DIExpression()), !dbg !1715
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #9, !dbg !1716
  call void @llvm.dbg.declare(metadata ptr %l, metadata !1695, metadata !DIExpression()), !dbg !1717
  %0 = load ptr, ptr %oldp.addr, align 8, !dbg !1718
  %mls_enabled = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 0, !dbg !1720
  %1 = load i32, ptr %mls_enabled, align 8, !dbg !1720
  %tobool = icmp ne i32 %1, 0, !dbg !1718
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1721

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %newp.addr, align 8, !dbg !1722
  %mls_enabled1 = getelementptr inbounds %struct.policydb, ptr %2, i32 0, i32 0, !dbg !1723
  %3 = load i32, ptr %mls_enabled1, align 8, !dbg !1723
  %tobool2 = icmp ne i32 %3, 0, !dbg !1722
  br i1 %tobool2, label %if.end, label %if.then, !dbg !1724

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !1725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !1725

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %l, align 4, !dbg !1726
  br label %for.cond, !dbg !1727

for.cond:                                         ; preds = %for.inc54, %if.end
  %4 = load i32, ptr %l, align 4, !dbg !1728
  %cmp = icmp slt i32 %4, 2, !dbg !1729
  br i1 %cmp, label %for.body, label %for.end55, !dbg !1730

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #9, !dbg !1731
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1696, metadata !DIExpression()), !dbg !1732
  %5 = load ptr, ptr %oldp.addr, align 8, !dbg !1733
  %6 = load ptr, ptr %oldc.addr, align 8, !dbg !1734
  %range = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 4, !dbg !1735
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !1736
  %7 = load i32, ptr %l, align 4, !dbg !1737
  %idxprom = sext i32 %7 to i64, !dbg !1734
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 %idxprom, !dbg !1734
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !1738
  %8 = load i32, ptr %sens, align 8, !dbg !1738
  %sub = sub i32 %8, 1, !dbg !1739
  %call = call ptr @sym_name(ptr noundef %5, i32 noundef 6, i32 noundef %sub) #10, !dbg !1740
  store ptr %call, ptr %name, align 8, !dbg !1732
  %9 = load ptr, ptr %newp.addr, align 8, !dbg !1741
  %symtab = getelementptr inbounds %struct.policydb, ptr %9, i32 0, i32 1, !dbg !1742
  %arrayidx3 = getelementptr [8 x %struct.symtab], ptr %symtab, i64 0, i64 6, !dbg !1741
  %10 = load ptr, ptr %name, align 8, !dbg !1743
  %call4 = call ptr @symtab_search(ptr noundef %arrayidx3, ptr noundef %10) #10, !dbg !1744
  store ptr %call4, ptr %levdatum, align 8, !dbg !1745
  %11 = load ptr, ptr %levdatum, align 8, !dbg !1746
  %tobool5 = icmp ne ptr %11, null, !dbg !1746
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1748

if.then6:                                         ; preds = %for.body
  store i32 -22, ptr %retval, align 4, !dbg !1749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !1749

if.end7:                                          ; preds = %for.body
  %12 = load ptr, ptr %levdatum, align 8, !dbg !1750
  %level8 = getelementptr inbounds %struct.level_datum, ptr %12, i32 0, i32 0, !dbg !1751
  %13 = load ptr, ptr %level8, align 8, !dbg !1751
  %sens9 = getelementptr inbounds %struct.mls_level, ptr %13, i32 0, i32 0, !dbg !1752
  %14 = load i32, ptr %sens9, align 8, !dbg !1752
  %15 = load ptr, ptr %newc.addr, align 8, !dbg !1753
  %range10 = getelementptr inbounds %struct.context, ptr %15, i32 0, i32 4, !dbg !1754
  %level11 = getelementptr inbounds %struct.mls_range, ptr %range10, i32 0, i32 0, !dbg !1755
  %16 = load i32, ptr %l, align 4, !dbg !1756
  %idxprom12 = sext i32 %16 to i64, !dbg !1753
  %arrayidx13 = getelementptr [2 x %struct.mls_level], ptr %level11, i64 0, i64 %idxprom12, !dbg !1753
  %sens14 = getelementptr inbounds %struct.mls_level, ptr %arrayidx13, i32 0, i32 0, !dbg !1757
  store i32 %14, ptr %sens14, align 8, !dbg !1758
  %17 = load ptr, ptr %oldc.addr, align 8, !dbg !1759
  %range15 = getelementptr inbounds %struct.context, ptr %17, i32 0, i32 4, !dbg !1759
  %level16 = getelementptr inbounds %struct.mls_range, ptr %range15, i32 0, i32 0, !dbg !1759
  %18 = load i32, ptr %l, align 4, !dbg !1759
  %idxprom17 = sext i32 %18 to i64, !dbg !1759
  %arrayidx18 = getelementptr [2 x %struct.mls_level], ptr %level16, i64 0, i64 %idxprom17, !dbg !1759
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx18, i32 0, i32 1, !dbg !1759
  %call19 = call i32 @ebitmap_start_positive(ptr noundef %cat, ptr noundef %node) #10, !dbg !1759
  store i32 %call19, ptr %i, align 4, !dbg !1759
  br label %for.cond20, !dbg !1759

for.cond20:                                       ; preds = %for.inc, %if.end7
  %19 = load i32, ptr %i, align 4, !dbg !1760
  %20 = load ptr, ptr %oldc.addr, align 8, !dbg !1760
  %range21 = getelementptr inbounds %struct.context, ptr %20, i32 0, i32 4, !dbg !1760
  %level22 = getelementptr inbounds %struct.mls_range, ptr %range21, i32 0, i32 0, !dbg !1760
  %21 = load i32, ptr %l, align 4, !dbg !1760
  %idxprom23 = sext i32 %21 to i64, !dbg !1760
  %arrayidx24 = getelementptr [2 x %struct.mls_level], ptr %level22, i64 0, i64 %idxprom23, !dbg !1760
  %cat25 = getelementptr inbounds %struct.mls_level, ptr %arrayidx24, i32 0, i32 1, !dbg !1760
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %cat25, i32 0, i32 1, !dbg !1760
  %22 = load i32, ptr %highbit, align 8, !dbg !1760
  %cmp26 = icmp ult i32 %19, %22, !dbg !1760
  br i1 %cmp26, label %for.body27, label %for.end, !dbg !1759

for.body27:                                       ; preds = %for.cond20
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !1761
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1700, metadata !DIExpression()), !dbg !1762
  %23 = load ptr, ptr %newp.addr, align 8, !dbg !1763
  %symtab28 = getelementptr inbounds %struct.policydb, ptr %23, i32 0, i32 1, !dbg !1764
  %arrayidx29 = getelementptr [8 x %struct.symtab], ptr %symtab28, i64 0, i64 7, !dbg !1763
  %24 = load ptr, ptr %oldp.addr, align 8, !dbg !1765
  %25 = load i32, ptr %i, align 4, !dbg !1766
  %call30 = call ptr @sym_name(ptr noundef %24, i32 noundef 7, i32 noundef %25) #10, !dbg !1767
  %call31 = call ptr @symtab_search(ptr noundef %arrayidx29, ptr noundef %call30) #10, !dbg !1768
  store ptr %call31, ptr %catdatum, align 8, !dbg !1769
  %26 = load ptr, ptr %catdatum, align 8, !dbg !1770
  %tobool32 = icmp ne ptr %26, null, !dbg !1770
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !1772

if.then33:                                        ; preds = %for.body27
  store i32 -22, ptr %retval, align 4, !dbg !1773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1773

if.end34:                                         ; preds = %for.body27
  %27 = load ptr, ptr %newc.addr, align 8, !dbg !1774
  %range35 = getelementptr inbounds %struct.context, ptr %27, i32 0, i32 4, !dbg !1775
  %level36 = getelementptr inbounds %struct.mls_range, ptr %range35, i32 0, i32 0, !dbg !1776
  %28 = load i32, ptr %l, align 4, !dbg !1777
  %idxprom37 = sext i32 %28 to i64, !dbg !1774
  %arrayidx38 = getelementptr [2 x %struct.mls_level], ptr %level36, i64 0, i64 %idxprom37, !dbg !1774
  %cat39 = getelementptr inbounds %struct.mls_level, ptr %arrayidx38, i32 0, i32 1, !dbg !1778
  %29 = load ptr, ptr %catdatum, align 8, !dbg !1779
  %value = getelementptr inbounds %struct.cat_datum, ptr %29, i32 0, i32 0, !dbg !1780
  %30 = load i32, ptr %value, align 4, !dbg !1780
  %sub40 = sub i32 %30, 1, !dbg !1781
  %conv = zext i32 %sub40 to i64, !dbg !1779
  %call41 = call i32 @ebitmap_set_bit(ptr noundef %cat39, i64 noundef %conv, i32 noundef 1) #10, !dbg !1782
  store i32 %call41, ptr %rc, align 4, !dbg !1783
  %31 = load i32, ptr %rc, align 4, !dbg !1784
  %tobool42 = icmp ne i32 %31, 0, !dbg !1784
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1786

if.then43:                                        ; preds = %if.end34
  %32 = load i32, ptr %rc, align 4, !dbg !1787
  store i32 %32, ptr %retval, align 4, !dbg !1788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1788

if.end44:                                         ; preds = %if.end34
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1789
  br label %cleanup, !dbg !1789

cleanup:                                          ; preds = %if.end44, %if.then43, %if.then33
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !1789
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup51 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1790

for.inc:                                          ; preds = %cleanup.cont
  %33 = load ptr, ptr %oldc.addr, align 8, !dbg !1760
  %range45 = getelementptr inbounds %struct.context, ptr %33, i32 0, i32 4, !dbg !1760
  %level46 = getelementptr inbounds %struct.mls_range, ptr %range45, i32 0, i32 0, !dbg !1760
  %34 = load i32, ptr %l, align 4, !dbg !1760
  %idxprom47 = sext i32 %34 to i64, !dbg !1760
  %arrayidx48 = getelementptr [2 x %struct.mls_level], ptr %level46, i64 0, i64 %idxprom47, !dbg !1760
  %cat49 = getelementptr inbounds %struct.mls_level, ptr %arrayidx48, i32 0, i32 1, !dbg !1760
  %35 = load i32, ptr %i, align 4, !dbg !1760
  %call50 = call i32 @ebitmap_next_positive(ptr noundef %cat49, ptr noundef %node, i32 noundef %35) #10, !dbg !1760
  store i32 %call50, ptr %i, align 4, !dbg !1760
  br label %for.cond20, !dbg !1760, !llvm.loop !1791

for.end:                                          ; preds = %for.cond20
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1793
  br label %cleanup51, !dbg !1793

cleanup51:                                        ; preds = %for.end, %cleanup, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #9, !dbg !1793
  %cleanup.dest52 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest52, label %cleanup56 [
    i32 0, label %cleanup.cont53
  ]

cleanup.cont53:                                   ; preds = %cleanup51
  br label %for.inc54, !dbg !1794

for.inc54:                                        ; preds = %cleanup.cont53
  %36 = load i32, ptr %l, align 4, !dbg !1795
  %inc = add i32 %36, 1, !dbg !1795
  store i32 %inc, ptr %l, align 4, !dbg !1795
  br label %for.cond, !dbg !1796, !llvm.loop !1797

for.end55:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !1799

cleanup56:                                        ; preds = %for.end55, %cleanup51, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #9, !dbg !1800
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1800
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !1800
  call void @llvm.lifetime.end.p0(i64 8, ptr %catdatum) #9, !dbg !1800
  call void @llvm.lifetime.end.p0(i64 8, ptr %levdatum) #9, !dbg !1800
  %37 = load i32, ptr %retval, align 4, !dbg !1800
  ret i32 %37, !dbg !1800
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mls_compute_sid(ptr noundef %p, ptr noundef %scontext, ptr noundef %tcontext, i16 noundef zeroext %tclass, i32 noundef %specified, ptr noundef %newcontext, i1 noundef zeroext %sock) #0 align 16 !dbg !1801 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %scontext.addr = alloca ptr, align 8
  %tcontext.addr = alloca ptr, align 8
  %tclass.addr = alloca i16, align 2
  %specified.addr = alloca i32, align 4
  %newcontext.addr = alloca ptr, align 8
  %sock.addr = alloca i8, align 1
  %rtr = alloca %struct.range_trans, align 4
  %r = alloca ptr, align 8
  %cladatum = alloca ptr, align 8
  %default_range = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1805, metadata !DIExpression()), !dbg !1821
  store ptr %scontext, ptr %scontext.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scontext.addr, metadata !1806, metadata !DIExpression()), !dbg !1822
  store ptr %tcontext, ptr %tcontext.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tcontext.addr, metadata !1807, metadata !DIExpression()), !dbg !1823
  store i16 %tclass, ptr %tclass.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %tclass.addr, metadata !1808, metadata !DIExpression()), !dbg !1824
  store i32 %specified, ptr %specified.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %specified.addr, metadata !1809, metadata !DIExpression()), !dbg !1825
  store ptr %newcontext, ptr %newcontext.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newcontext.addr, metadata !1810, metadata !DIExpression()), !dbg !1826
  %frombool = zext i1 %sock to i8
  store i8 %frombool, ptr %sock.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sock.addr, metadata !1811, metadata !DIExpression()), !dbg !1827
  call void @llvm.lifetime.start.p0(i64 12, ptr %rtr) #9, !dbg !1828
  call void @llvm.dbg.declare(metadata ptr %rtr, metadata !1812, metadata !DIExpression()), !dbg !1829
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #9, !dbg !1830
  call void @llvm.dbg.declare(metadata ptr %r, metadata !1818, metadata !DIExpression()), !dbg !1831
  call void @llvm.lifetime.start.p0(i64 8, ptr %cladatum) #9, !dbg !1832
  call void @llvm.dbg.declare(metadata ptr %cladatum, metadata !1819, metadata !DIExpression()), !dbg !1833
  call void @llvm.lifetime.start.p0(i64 1, ptr %default_range) #9, !dbg !1834
  call void @llvm.dbg.declare(metadata ptr %default_range, metadata !1820, metadata !DIExpression()), !dbg !1835
  store i8 0, ptr %default_range, align 1, !dbg !1835
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1836
  %mls_enabled = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 0, !dbg !1838
  %1 = load i32, ptr %mls_enabled, align 8, !dbg !1838
  %tobool = icmp ne i32 %1, 0, !dbg !1836
  br i1 %tobool, label %if.end, label %if.then, !dbg !1839

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1840

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %specified.addr, align 4, !dbg !1841
  switch i32 %2, label %sw.epilog45 [
    i32 16, label %sw.bb
    i32 64, label %sw.bb33
    i32 32, label %sw.bb43
  ], !dbg !1842

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr %scontext.addr, align 8, !dbg !1843
  %type = getelementptr inbounds %struct.context, ptr %3, i32 0, i32 2, !dbg !1845
  %4 = load i32, ptr %type, align 8, !dbg !1845
  %source_type = getelementptr inbounds %struct.range_trans, ptr %rtr, i32 0, i32 0, !dbg !1846
  store i32 %4, ptr %source_type, align 4, !dbg !1847
  %5 = load ptr, ptr %tcontext.addr, align 8, !dbg !1848
  %type1 = getelementptr inbounds %struct.context, ptr %5, i32 0, i32 2, !dbg !1849
  %6 = load i32, ptr %type1, align 8, !dbg !1849
  %target_type = getelementptr inbounds %struct.range_trans, ptr %rtr, i32 0, i32 1, !dbg !1850
  store i32 %6, ptr %target_type, align 4, !dbg !1851
  %7 = load i16, ptr %tclass.addr, align 2, !dbg !1852
  %conv = zext i16 %7 to i32, !dbg !1852
  %target_class = getelementptr inbounds %struct.range_trans, ptr %rtr, i32 0, i32 2, !dbg !1853
  store i32 %conv, ptr %target_class, align 4, !dbg !1854
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1855
  %call = call ptr @policydb_rangetr_search(ptr noundef %8, ptr noundef %rtr) #10, !dbg !1856
  store ptr %call, ptr %r, align 8, !dbg !1857
  %9 = load ptr, ptr %r, align 8, !dbg !1858
  %tobool2 = icmp ne ptr %9, null, !dbg !1858
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !1860

if.then3:                                         ; preds = %sw.bb
  %10 = load ptr, ptr %newcontext.addr, align 8, !dbg !1861
  %11 = load ptr, ptr %r, align 8, !dbg !1862
  %call4 = call i32 @mls_range_set(ptr noundef %10, ptr noundef %11) #10, !dbg !1863
  store i32 %call4, ptr %retval, align 4, !dbg !1864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1864

if.end5:                                          ; preds = %sw.bb
  %12 = load i16, ptr %tclass.addr, align 2, !dbg !1865
  %conv6 = zext i16 %12 to i32, !dbg !1865
  %tobool7 = icmp ne i32 %conv6, 0, !dbg !1865
  br i1 %tobool7, label %land.lhs.true, label %if.end17, !dbg !1867

land.lhs.true:                                    ; preds = %if.end5
  %13 = load i16, ptr %tclass.addr, align 2, !dbg !1868
  %conv8 = zext i16 %13 to i32, !dbg !1868
  %14 = load ptr, ptr %p.addr, align 8, !dbg !1869
  %symtab = getelementptr inbounds %struct.policydb, ptr %14, i32 0, i32 1, !dbg !1870
  %arrayidx = getelementptr [8 x %struct.symtab], ptr %symtab, i64 0, i64 1, !dbg !1869
  %nprim = getelementptr inbounds %struct.symtab, ptr %arrayidx, i32 0, i32 1, !dbg !1871
  %15 = load i32, ptr %nprim, align 8, !dbg !1871
  %cmp = icmp ule i32 %conv8, %15, !dbg !1872
  br i1 %cmp, label %if.then10, label %if.end17, !dbg !1873

if.then10:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %p.addr, align 8, !dbg !1874
  %class_val_to_struct = getelementptr inbounds %struct.policydb, ptr %16, i32 0, i32 3, !dbg !1876
  %17 = load ptr, ptr %class_val_to_struct, align 8, !dbg !1876
  %18 = load i16, ptr %tclass.addr, align 2, !dbg !1877
  %conv11 = zext i16 %18 to i32, !dbg !1877
  %sub = sub i32 %conv11, 1, !dbg !1878
  %idxprom = sext i32 %sub to i64, !dbg !1874
  %arrayidx12 = getelementptr ptr, ptr %17, i64 %idxprom, !dbg !1874
  %19 = load ptr, ptr %arrayidx12, align 8, !dbg !1874
  store ptr %19, ptr %cladatum, align 8, !dbg !1879
  %20 = load ptr, ptr %cladatum, align 8, !dbg !1880
  %tobool13 = icmp ne ptr %20, null, !dbg !1880
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !1882

if.then14:                                        ; preds = %if.then10
  %21 = load ptr, ptr %cladatum, align 8, !dbg !1883
  %default_range15 = getelementptr inbounds %struct.class_datum, ptr %21, i32 0, i32 9, !dbg !1884
  %22 = load i8, ptr %default_range15, align 1, !dbg !1884
  store i8 %22, ptr %default_range, align 1, !dbg !1885
  br label %if.end16, !dbg !1886

if.end16:                                         ; preds = %if.then14, %if.then10
  br label %if.end17, !dbg !1887

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %if.end5
  %23 = load i8, ptr %default_range, align 1, !dbg !1888
  %conv18 = zext i8 %23 to i32, !dbg !1888
  switch i32 %conv18, label %sw.epilog [
    i32 1, label %sw.bb19
    i32 2, label %sw.bb21
    i32 3, label %sw.bb23
    i32 4, label %sw.bb25
    i32 5, label %sw.bb27
    i32 6, label %sw.bb29
    i32 7, label %sw.bb31
  ], !dbg !1889

sw.bb19:                                          ; preds = %if.end17
  %24 = load ptr, ptr %newcontext.addr, align 8, !dbg !1890
  %25 = load ptr, ptr %scontext.addr, align 8, !dbg !1892
  %call20 = call i32 @mls_context_cpy_low(ptr noundef %24, ptr noundef %25) #10, !dbg !1893
  store i32 %call20, ptr %retval, align 4, !dbg !1894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1894

sw.bb21:                                          ; preds = %if.end17
  %26 = load ptr, ptr %newcontext.addr, align 8, !dbg !1895
  %27 = load ptr, ptr %scontext.addr, align 8, !dbg !1896
  %call22 = call i32 @mls_context_cpy_high(ptr noundef %26, ptr noundef %27) #10, !dbg !1897
  store i32 %call22, ptr %retval, align 4, !dbg !1898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1898

sw.bb23:                                          ; preds = %if.end17
  %28 = load ptr, ptr %newcontext.addr, align 8, !dbg !1899
  %29 = load ptr, ptr %scontext.addr, align 8, !dbg !1900
  %call24 = call i32 @mls_context_cpy(ptr noundef %28, ptr noundef %29) #10, !dbg !1901
  store i32 %call24, ptr %retval, align 4, !dbg !1902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1902

sw.bb25:                                          ; preds = %if.end17
  %30 = load ptr, ptr %newcontext.addr, align 8, !dbg !1903
  %31 = load ptr, ptr %tcontext.addr, align 8, !dbg !1904
  %call26 = call i32 @mls_context_cpy_low(ptr noundef %30, ptr noundef %31) #10, !dbg !1905
  store i32 %call26, ptr %retval, align 4, !dbg !1906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1906

sw.bb27:                                          ; preds = %if.end17
  %32 = load ptr, ptr %newcontext.addr, align 8, !dbg !1907
  %33 = load ptr, ptr %tcontext.addr, align 8, !dbg !1908
  %call28 = call i32 @mls_context_cpy_high(ptr noundef %32, ptr noundef %33) #10, !dbg !1909
  store i32 %call28, ptr %retval, align 4, !dbg !1910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1910

sw.bb29:                                          ; preds = %if.end17
  %34 = load ptr, ptr %newcontext.addr, align 8, !dbg !1911
  %35 = load ptr, ptr %tcontext.addr, align 8, !dbg !1912
  %call30 = call i32 @mls_context_cpy(ptr noundef %34, ptr noundef %35) #10, !dbg !1913
  store i32 %call30, ptr %retval, align 4, !dbg !1914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1914

sw.bb31:                                          ; preds = %if.end17
  %36 = load ptr, ptr %newcontext.addr, align 8, !dbg !1915
  %37 = load ptr, ptr %scontext.addr, align 8, !dbg !1916
  %38 = load ptr, ptr %tcontext.addr, align 8, !dbg !1917
  %call32 = call i32 @mls_context_glblub(ptr noundef %36, ptr noundef %37, ptr noundef %38) #10, !dbg !1918
  store i32 %call32, ptr %retval, align 4, !dbg !1919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1919

sw.epilog:                                        ; preds = %if.end17
  br label %sw.bb33, !dbg !1920

sw.bb33:                                          ; preds = %if.end, %sw.epilog
  %39 = load i16, ptr %tclass.addr, align 2, !dbg !1921
  %conv34 = zext i16 %39 to i32, !dbg !1921
  %40 = load ptr, ptr %p.addr, align 8, !dbg !1923
  %process_class = getelementptr inbounds %struct.policydb, ptr %40, i32 0, i32 26, !dbg !1924
  %41 = load i16, ptr %process_class, align 2, !dbg !1924
  %conv35 = zext i16 %41 to i32, !dbg !1923
  %cmp36 = icmp eq i32 %conv34, %conv35, !dbg !1925
  br i1 %cmp36, label %if.then40, label %lor.lhs.false, !dbg !1926

lor.lhs.false:                                    ; preds = %sw.bb33
  %42 = load i8, ptr %sock.addr, align 1, !dbg !1927, !range !1928, !noundef !1929
  %tobool38 = trunc i8 %42 to i1, !dbg !1927
  br i1 %tobool38, label %if.then40, label %if.else, !dbg !1930

if.then40:                                        ; preds = %lor.lhs.false, %sw.bb33
  %43 = load ptr, ptr %newcontext.addr, align 8, !dbg !1931
  %44 = load ptr, ptr %scontext.addr, align 8, !dbg !1932
  %call41 = call i32 @mls_context_cpy(ptr noundef %43, ptr noundef %44) #10, !dbg !1933
  store i32 %call41, ptr %retval, align 4, !dbg !1934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1934

if.else:                                          ; preds = %lor.lhs.false
  %45 = load ptr, ptr %newcontext.addr, align 8, !dbg !1935
  %46 = load ptr, ptr %scontext.addr, align 8, !dbg !1936
  %call42 = call i32 @mls_context_cpy_low(ptr noundef %45, ptr noundef %46) #10, !dbg !1937
  store i32 %call42, ptr %retval, align 4, !dbg !1938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1938

sw.bb43:                                          ; preds = %if.end
  %47 = load ptr, ptr %newcontext.addr, align 8, !dbg !1939
  %48 = load ptr, ptr %scontext.addr, align 8, !dbg !1940
  %call44 = call i32 @mls_context_cpy_low(ptr noundef %47, ptr noundef %48) #10, !dbg !1941
  store i32 %call44, ptr %retval, align 4, !dbg !1942
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1942

sw.epilog45:                                      ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1943

cleanup:                                          ; preds = %sw.epilog45, %sw.bb43, %if.else, %if.then40, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %default_range) #9, !dbg !1944
  call void @llvm.lifetime.end.p0(i64 8, ptr %cladatum) #9, !dbg !1944
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #9, !dbg !1944
  call void @llvm.lifetime.end.p0(i64 12, ptr %rtr) #9, !dbg !1944
  %49 = load i32, ptr %retval, align 4, !dbg !1944
  ret i32 %49, !dbg !1944
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1945 dso_local ptr @policydb_rangetr_search(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mls_context_cpy_low(ptr noundef %dst, ptr noundef %src) #4 align 16 !dbg !1949 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1951, metadata !DIExpression()), !dbg !1955
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1952, metadata !DIExpression()), !dbg !1956
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !1957
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1953, metadata !DIExpression()), !dbg !1958
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1959
  %range = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 4, !dbg !1960
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !1961
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !1959
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !1962
  %1 = load i32, ptr %sens, align 8, !dbg !1962
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1963
  %range1 = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 4, !dbg !1964
  %level2 = getelementptr inbounds %struct.mls_range, ptr %range1, i32 0, i32 0, !dbg !1965
  %arrayidx3 = getelementptr [2 x %struct.mls_level], ptr %level2, i64 0, i64 0, !dbg !1963
  %sens4 = getelementptr inbounds %struct.mls_level, ptr %arrayidx3, i32 0, i32 0, !dbg !1966
  store i32 %1, ptr %sens4, align 8, !dbg !1967
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1968
  %range5 = getelementptr inbounds %struct.context, ptr %3, i32 0, i32 4, !dbg !1969
  %level6 = getelementptr inbounds %struct.mls_range, ptr %range5, i32 0, i32 0, !dbg !1970
  %arrayidx7 = getelementptr [2 x %struct.mls_level], ptr %level6, i64 0, i64 0, !dbg !1968
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx7, i32 0, i32 1, !dbg !1971
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1972
  %range8 = getelementptr inbounds %struct.context, ptr %4, i32 0, i32 4, !dbg !1973
  %level9 = getelementptr inbounds %struct.mls_range, ptr %range8, i32 0, i32 0, !dbg !1974
  %arrayidx10 = getelementptr [2 x %struct.mls_level], ptr %level9, i64 0, i64 0, !dbg !1972
  %cat11 = getelementptr inbounds %struct.mls_level, ptr %arrayidx10, i32 0, i32 1, !dbg !1975
  %call = call i32 @ebitmap_cpy(ptr noundef %cat, ptr noundef %cat11) #10, !dbg !1976
  store i32 %call, ptr %rc, align 4, !dbg !1977
  %5 = load i32, ptr %rc, align 4, !dbg !1978
  %tobool = icmp ne i32 %5, 0, !dbg !1978
  br i1 %tobool, label %if.then, label %if.end, !dbg !1980

if.then:                                          ; preds = %entry
  br label %out, !dbg !1981

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %src.addr, align 8, !dbg !1982
  %range12 = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 4, !dbg !1983
  %level13 = getelementptr inbounds %struct.mls_range, ptr %range12, i32 0, i32 0, !dbg !1984
  %arrayidx14 = getelementptr [2 x %struct.mls_level], ptr %level13, i64 0, i64 0, !dbg !1982
  %sens15 = getelementptr inbounds %struct.mls_level, ptr %arrayidx14, i32 0, i32 0, !dbg !1985
  %7 = load i32, ptr %sens15, align 8, !dbg !1985
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !1986
  %range16 = getelementptr inbounds %struct.context, ptr %8, i32 0, i32 4, !dbg !1987
  %level17 = getelementptr inbounds %struct.mls_range, ptr %range16, i32 0, i32 0, !dbg !1988
  %arrayidx18 = getelementptr [2 x %struct.mls_level], ptr %level17, i64 0, i64 1, !dbg !1986
  %sens19 = getelementptr inbounds %struct.mls_level, ptr %arrayidx18, i32 0, i32 0, !dbg !1989
  store i32 %7, ptr %sens19, align 8, !dbg !1990
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !1991
  %range20 = getelementptr inbounds %struct.context, ptr %9, i32 0, i32 4, !dbg !1992
  %level21 = getelementptr inbounds %struct.mls_range, ptr %range20, i32 0, i32 0, !dbg !1993
  %arrayidx22 = getelementptr [2 x %struct.mls_level], ptr %level21, i64 0, i64 1, !dbg !1991
  %cat23 = getelementptr inbounds %struct.mls_level, ptr %arrayidx22, i32 0, i32 1, !dbg !1994
  %10 = load ptr, ptr %src.addr, align 8, !dbg !1995
  %range24 = getelementptr inbounds %struct.context, ptr %10, i32 0, i32 4, !dbg !1996
  %level25 = getelementptr inbounds %struct.mls_range, ptr %range24, i32 0, i32 0, !dbg !1997
  %arrayidx26 = getelementptr [2 x %struct.mls_level], ptr %level25, i64 0, i64 0, !dbg !1995
  %cat27 = getelementptr inbounds %struct.mls_level, ptr %arrayidx26, i32 0, i32 1, !dbg !1998
  %call28 = call i32 @ebitmap_cpy(ptr noundef %cat23, ptr noundef %cat27) #10, !dbg !1999
  store i32 %call28, ptr %rc, align 4, !dbg !2000
  %11 = load i32, ptr %rc, align 4, !dbg !2001
  %tobool29 = icmp ne i32 %11, 0, !dbg !2001
  br i1 %tobool29, label %if.then30, label %if.end35, !dbg !2003

if.then30:                                        ; preds = %if.end
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !2004
  %range31 = getelementptr inbounds %struct.context, ptr %12, i32 0, i32 4, !dbg !2005
  %level32 = getelementptr inbounds %struct.mls_range, ptr %range31, i32 0, i32 0, !dbg !2006
  %arrayidx33 = getelementptr [2 x %struct.mls_level], ptr %level32, i64 0, i64 0, !dbg !2004
  %cat34 = getelementptr inbounds %struct.mls_level, ptr %arrayidx33, i32 0, i32 1, !dbg !2007
  call void @ebitmap_destroy(ptr noundef %cat34) #10, !dbg !2008
  br label %if.end35, !dbg !2008

if.end35:                                         ; preds = %if.then30, %if.end
  br label %out, !dbg !2001

out:                                              ; preds = %if.end35, %if.then
  call void @llvm.dbg.label(metadata !1954), !dbg !2009
  %13 = load i32, ptr %rc, align 4, !dbg !2010
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !2011
  ret i32 %13, !dbg !2012
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mls_context_cpy_high(ptr noundef %dst, ptr noundef %src) #4 align 16 !dbg !2013 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2015, metadata !DIExpression()), !dbg !2019
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2016, metadata !DIExpression()), !dbg !2020
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2017, metadata !DIExpression()), !dbg !2022
  %0 = load ptr, ptr %src.addr, align 8, !dbg !2023
  %range = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 4, !dbg !2024
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !2025
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 1, !dbg !2023
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !2026
  %1 = load i32, ptr %sens, align 8, !dbg !2026
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !2027
  %range1 = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 4, !dbg !2028
  %level2 = getelementptr inbounds %struct.mls_range, ptr %range1, i32 0, i32 0, !dbg !2029
  %arrayidx3 = getelementptr [2 x %struct.mls_level], ptr %level2, i64 0, i64 0, !dbg !2027
  %sens4 = getelementptr inbounds %struct.mls_level, ptr %arrayidx3, i32 0, i32 0, !dbg !2030
  store i32 %1, ptr %sens4, align 8, !dbg !2031
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !2032
  %range5 = getelementptr inbounds %struct.context, ptr %3, i32 0, i32 4, !dbg !2033
  %level6 = getelementptr inbounds %struct.mls_range, ptr %range5, i32 0, i32 0, !dbg !2034
  %arrayidx7 = getelementptr [2 x %struct.mls_level], ptr %level6, i64 0, i64 0, !dbg !2032
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx7, i32 0, i32 1, !dbg !2035
  %4 = load ptr, ptr %src.addr, align 8, !dbg !2036
  %range8 = getelementptr inbounds %struct.context, ptr %4, i32 0, i32 4, !dbg !2037
  %level9 = getelementptr inbounds %struct.mls_range, ptr %range8, i32 0, i32 0, !dbg !2038
  %arrayidx10 = getelementptr [2 x %struct.mls_level], ptr %level9, i64 0, i64 1, !dbg !2036
  %cat11 = getelementptr inbounds %struct.mls_level, ptr %arrayidx10, i32 0, i32 1, !dbg !2039
  %call = call i32 @ebitmap_cpy(ptr noundef %cat, ptr noundef %cat11) #10, !dbg !2040
  store i32 %call, ptr %rc, align 4, !dbg !2041
  %5 = load i32, ptr %rc, align 4, !dbg !2042
  %tobool = icmp ne i32 %5, 0, !dbg !2042
  br i1 %tobool, label %if.then, label %if.end, !dbg !2044

if.then:                                          ; preds = %entry
  br label %out, !dbg !2045

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %src.addr, align 8, !dbg !2046
  %range12 = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 4, !dbg !2047
  %level13 = getelementptr inbounds %struct.mls_range, ptr %range12, i32 0, i32 0, !dbg !2048
  %arrayidx14 = getelementptr [2 x %struct.mls_level], ptr %level13, i64 0, i64 1, !dbg !2046
  %sens15 = getelementptr inbounds %struct.mls_level, ptr %arrayidx14, i32 0, i32 0, !dbg !2049
  %7 = load i32, ptr %sens15, align 8, !dbg !2049
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !2050
  %range16 = getelementptr inbounds %struct.context, ptr %8, i32 0, i32 4, !dbg !2051
  %level17 = getelementptr inbounds %struct.mls_range, ptr %range16, i32 0, i32 0, !dbg !2052
  %arrayidx18 = getelementptr [2 x %struct.mls_level], ptr %level17, i64 0, i64 1, !dbg !2050
  %sens19 = getelementptr inbounds %struct.mls_level, ptr %arrayidx18, i32 0, i32 0, !dbg !2053
  store i32 %7, ptr %sens19, align 8, !dbg !2054
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !2055
  %range20 = getelementptr inbounds %struct.context, ptr %9, i32 0, i32 4, !dbg !2056
  %level21 = getelementptr inbounds %struct.mls_range, ptr %range20, i32 0, i32 0, !dbg !2057
  %arrayidx22 = getelementptr [2 x %struct.mls_level], ptr %level21, i64 0, i64 1, !dbg !2055
  %cat23 = getelementptr inbounds %struct.mls_level, ptr %arrayidx22, i32 0, i32 1, !dbg !2058
  %10 = load ptr, ptr %src.addr, align 8, !dbg !2059
  %range24 = getelementptr inbounds %struct.context, ptr %10, i32 0, i32 4, !dbg !2060
  %level25 = getelementptr inbounds %struct.mls_range, ptr %range24, i32 0, i32 0, !dbg !2061
  %arrayidx26 = getelementptr [2 x %struct.mls_level], ptr %level25, i64 0, i64 1, !dbg !2059
  %cat27 = getelementptr inbounds %struct.mls_level, ptr %arrayidx26, i32 0, i32 1, !dbg !2062
  %call28 = call i32 @ebitmap_cpy(ptr noundef %cat23, ptr noundef %cat27) #10, !dbg !2063
  store i32 %call28, ptr %rc, align 4, !dbg !2064
  %11 = load i32, ptr %rc, align 4, !dbg !2065
  %tobool29 = icmp ne i32 %11, 0, !dbg !2065
  br i1 %tobool29, label %if.then30, label %if.end35, !dbg !2067

if.then30:                                        ; preds = %if.end
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !2068
  %range31 = getelementptr inbounds %struct.context, ptr %12, i32 0, i32 4, !dbg !2069
  %level32 = getelementptr inbounds %struct.mls_range, ptr %range31, i32 0, i32 0, !dbg !2070
  %arrayidx33 = getelementptr [2 x %struct.mls_level], ptr %level32, i64 0, i64 0, !dbg !2068
  %cat34 = getelementptr inbounds %struct.mls_level, ptr %arrayidx33, i32 0, i32 1, !dbg !2071
  call void @ebitmap_destroy(ptr noundef %cat34) #10, !dbg !2072
  br label %if.end35, !dbg !2072

if.end35:                                         ; preds = %if.then30, %if.end
  br label %out, !dbg !2065

out:                                              ; preds = %if.end35, %if.then
  call void @llvm.dbg.label(metadata !2018), !dbg !2073
  %13 = load i32, ptr %rc, align 4, !dbg !2074
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !2075
  ret i32 %13, !dbg !2076
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mls_context_glblub(ptr noundef %dst, ptr noundef %c1, ptr noundef %c2) #4 align 16 !dbg !2077 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %c1.addr = alloca ptr, align 8
  %c2.addr = alloca ptr, align 8
  %dr = alloca ptr, align 8
  %r1 = alloca ptr, align 8
  %r2 = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x551 = alloca i32, align 4
  %__UNIQUE_ID___y552 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x553 = alloca i32, align 4
  %__UNIQUE_ID___y554 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2081, metadata !DIExpression()), !dbg !2098
  store ptr %c1, ptr %c1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c1.addr, metadata !2082, metadata !DIExpression()), !dbg !2099
  store ptr %c2, ptr %c2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c2.addr, metadata !2083, metadata !DIExpression()), !dbg !2100
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #9, !dbg !2101
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !2084, metadata !DIExpression()), !dbg !2102
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2103
  %range = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 4, !dbg !2104
  store ptr %range, ptr %dr, align 8, !dbg !2102
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #9, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %r1, metadata !2085, metadata !DIExpression()), !dbg !2106
  %1 = load ptr, ptr %c1.addr, align 8, !dbg !2107
  %range1 = getelementptr inbounds %struct.context, ptr %1, i32 0, i32 4, !dbg !2108
  store ptr %range1, ptr %r1, align 8, !dbg !2106
  call void @llvm.lifetime.start.p0(i64 8, ptr %r2) #9, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %r2, metadata !2088, metadata !DIExpression()), !dbg !2109
  %2 = load ptr, ptr %c2.addr, align 8, !dbg !2110
  %range2 = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 4, !dbg !2111
  store ptr %range2, ptr %r2, align 8, !dbg !2109
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !2112
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2089, metadata !DIExpression()), !dbg !2113
  store i32 0, ptr %rc, align 4, !dbg !2113
  %3 = load ptr, ptr %r1, align 8, !dbg !2114
  %level = getelementptr inbounds %struct.mls_range, ptr %3, i32 0, i32 0, !dbg !2116
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 1, !dbg !2114
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !2117
  %4 = load i32, ptr %sens, align 8, !dbg !2117
  %5 = load ptr, ptr %r2, align 8, !dbg !2118
  %level3 = getelementptr inbounds %struct.mls_range, ptr %5, i32 0, i32 0, !dbg !2119
  %arrayidx4 = getelementptr [2 x %struct.mls_level], ptr %level3, i64 0, i64 0, !dbg !2118
  %sens5 = getelementptr inbounds %struct.mls_level, ptr %arrayidx4, i32 0, i32 0, !dbg !2120
  %6 = load i32, ptr %sens5, align 8, !dbg !2120
  %cmp = icmp ult i32 %4, %6, !dbg !2121
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2122

lor.lhs.false:                                    ; preds = %entry
  %7 = load ptr, ptr %r2, align 8, !dbg !2123
  %level6 = getelementptr inbounds %struct.mls_range, ptr %7, i32 0, i32 0, !dbg !2124
  %arrayidx7 = getelementptr [2 x %struct.mls_level], ptr %level6, i64 0, i64 1, !dbg !2123
  %sens8 = getelementptr inbounds %struct.mls_level, ptr %arrayidx7, i32 0, i32 0, !dbg !2125
  %8 = load i32, ptr %sens8, align 8, !dbg !2125
  %9 = load ptr, ptr %r1, align 8, !dbg !2126
  %level9 = getelementptr inbounds %struct.mls_range, ptr %9, i32 0, i32 0, !dbg !2127
  %arrayidx10 = getelementptr [2 x %struct.mls_level], ptr %level9, i64 0, i64 0, !dbg !2126
  %sens11 = getelementptr inbounds %struct.mls_level, ptr %arrayidx10, i32 0, i32 0, !dbg !2128
  %10 = load i32, ptr %sens11, align 8, !dbg !2128
  %cmp12 = icmp ult i32 %8, %10, !dbg !2129
  br i1 %cmp12, label %if.then, label %if.end, !dbg !2130

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !2131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2131

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x551) #9, !dbg !2132
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x551, metadata !2090, metadata !DIExpression()), !dbg !2132
  %11 = load ptr, ptr %r1, align 8, !dbg !2132
  %level13 = getelementptr inbounds %struct.mls_range, ptr %11, i32 0, i32 0, !dbg !2132
  %arrayidx14 = getelementptr [2 x %struct.mls_level], ptr %level13, i64 0, i64 0, !dbg !2132
  %sens15 = getelementptr inbounds %struct.mls_level, ptr %arrayidx14, i32 0, i32 0, !dbg !2132
  %12 = load i32, ptr %sens15, align 8, !dbg !2132
  store i32 %12, ptr %__UNIQUE_ID___x551, align 4, !dbg !2132
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y552) #9, !dbg !2132
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y552, metadata !2093, metadata !DIExpression()), !dbg !2132
  %13 = load ptr, ptr %r2, align 8, !dbg !2132
  %level16 = getelementptr inbounds %struct.mls_range, ptr %13, i32 0, i32 0, !dbg !2132
  %arrayidx17 = getelementptr [2 x %struct.mls_level], ptr %level16, i64 0, i64 0, !dbg !2132
  %sens18 = getelementptr inbounds %struct.mls_level, ptr %arrayidx17, i32 0, i32 0, !dbg !2132
  %14 = load i32, ptr %sens18, align 8, !dbg !2132
  store i32 %14, ptr %__UNIQUE_ID___y552, align 4, !dbg !2132
  %15 = load i32, ptr %__UNIQUE_ID___x551, align 4, !dbg !2132
  %16 = load i32, ptr %__UNIQUE_ID___y552, align 4, !dbg !2132
  %cmp19 = icmp ugt i32 %15, %16, !dbg !2132
  br i1 %cmp19, label %cond.true, label %cond.false, !dbg !2132

cond.true:                                        ; preds = %if.end
  %17 = load i32, ptr %__UNIQUE_ID___x551, align 4, !dbg !2132
  br label %cond.end, !dbg !2132

cond.false:                                       ; preds = %if.end
  %18 = load i32, ptr %__UNIQUE_ID___y552, align 4, !dbg !2132
  br label %cond.end, !dbg !2132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !2132
  store i32 %cond, ptr %tmp, align 4, !dbg !2132
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y552) #9, !dbg !2133
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x551) #9, !dbg !2133
  %19 = load i32, ptr %tmp, align 4, !dbg !2132
  %20 = load ptr, ptr %dr, align 8, !dbg !2134
  %level20 = getelementptr inbounds %struct.mls_range, ptr %20, i32 0, i32 0, !dbg !2135
  %arrayidx21 = getelementptr [2 x %struct.mls_level], ptr %level20, i64 0, i64 0, !dbg !2134
  %sens22 = getelementptr inbounds %struct.mls_level, ptr %arrayidx21, i32 0, i32 0, !dbg !2136
  store i32 %19, ptr %sens22, align 8, !dbg !2137
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x553) #9, !dbg !2138
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x553, metadata !2094, metadata !DIExpression()), !dbg !2138
  %21 = load ptr, ptr %r1, align 8, !dbg !2138
  %level23 = getelementptr inbounds %struct.mls_range, ptr %21, i32 0, i32 0, !dbg !2138
  %arrayidx24 = getelementptr [2 x %struct.mls_level], ptr %level23, i64 0, i64 1, !dbg !2138
  %sens25 = getelementptr inbounds %struct.mls_level, ptr %arrayidx24, i32 0, i32 0, !dbg !2138
  %22 = load i32, ptr %sens25, align 8, !dbg !2138
  store i32 %22, ptr %__UNIQUE_ID___x553, align 4, !dbg !2138
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y554) #9, !dbg !2138
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y554, metadata !2096, metadata !DIExpression()), !dbg !2138
  %23 = load ptr, ptr %r2, align 8, !dbg !2138
  %level26 = getelementptr inbounds %struct.mls_range, ptr %23, i32 0, i32 0, !dbg !2138
  %arrayidx27 = getelementptr [2 x %struct.mls_level], ptr %level26, i64 0, i64 1, !dbg !2138
  %sens28 = getelementptr inbounds %struct.mls_level, ptr %arrayidx27, i32 0, i32 0, !dbg !2138
  %24 = load i32, ptr %sens28, align 8, !dbg !2138
  store i32 %24, ptr %__UNIQUE_ID___y554, align 4, !dbg !2138
  %25 = load i32, ptr %__UNIQUE_ID___x553, align 4, !dbg !2138
  %26 = load i32, ptr %__UNIQUE_ID___y554, align 4, !dbg !2138
  %cmp30 = icmp ult i32 %25, %26, !dbg !2138
  br i1 %cmp30, label %cond.true31, label %cond.false32, !dbg !2138

cond.true31:                                      ; preds = %cond.end
  %27 = load i32, ptr %__UNIQUE_ID___x553, align 4, !dbg !2138
  br label %cond.end33, !dbg !2138

cond.false32:                                     ; preds = %cond.end
  %28 = load i32, ptr %__UNIQUE_ID___y554, align 4, !dbg !2138
  br label %cond.end33, !dbg !2138

cond.end33:                                       ; preds = %cond.false32, %cond.true31
  %cond34 = phi i32 [ %27, %cond.true31 ], [ %28, %cond.false32 ], !dbg !2138
  store i32 %cond34, ptr %tmp29, align 4, !dbg !2138
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y554) #9, !dbg !2139
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x553) #9, !dbg !2139
  %29 = load i32, ptr %tmp29, align 4, !dbg !2138
  %30 = load ptr, ptr %dr, align 8, !dbg !2140
  %level35 = getelementptr inbounds %struct.mls_range, ptr %30, i32 0, i32 0, !dbg !2141
  %arrayidx36 = getelementptr [2 x %struct.mls_level], ptr %level35, i64 0, i64 1, !dbg !2140
  %sens37 = getelementptr inbounds %struct.mls_level, ptr %arrayidx36, i32 0, i32 0, !dbg !2142
  store i32 %29, ptr %sens37, align 8, !dbg !2143
  %31 = load ptr, ptr %dr, align 8, !dbg !2144
  %level38 = getelementptr inbounds %struct.mls_range, ptr %31, i32 0, i32 0, !dbg !2145
  %arrayidx39 = getelementptr [2 x %struct.mls_level], ptr %level38, i64 0, i64 0, !dbg !2144
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx39, i32 0, i32 1, !dbg !2146
  %32 = load ptr, ptr %r1, align 8, !dbg !2147
  %level40 = getelementptr inbounds %struct.mls_range, ptr %32, i32 0, i32 0, !dbg !2148
  %arrayidx41 = getelementptr [2 x %struct.mls_level], ptr %level40, i64 0, i64 0, !dbg !2147
  %cat42 = getelementptr inbounds %struct.mls_level, ptr %arrayidx41, i32 0, i32 1, !dbg !2149
  %33 = load ptr, ptr %r2, align 8, !dbg !2150
  %level43 = getelementptr inbounds %struct.mls_range, ptr %33, i32 0, i32 0, !dbg !2151
  %arrayidx44 = getelementptr [2 x %struct.mls_level], ptr %level43, i64 0, i64 0, !dbg !2150
  %cat45 = getelementptr inbounds %struct.mls_level, ptr %arrayidx44, i32 0, i32 1, !dbg !2152
  %call = call i32 @ebitmap_and(ptr noundef %cat, ptr noundef %cat42, ptr noundef %cat45) #10, !dbg !2153
  store i32 %call, ptr %rc, align 4, !dbg !2154
  %34 = load i32, ptr %rc, align 4, !dbg !2155
  %tobool = icmp ne i32 %34, 0, !dbg !2155
  br i1 %tobool, label %if.then46, label %if.end47, !dbg !2157

if.then46:                                        ; preds = %cond.end33
  br label %out, !dbg !2158

if.end47:                                         ; preds = %cond.end33
  %35 = load ptr, ptr %dr, align 8, !dbg !2159
  %level48 = getelementptr inbounds %struct.mls_range, ptr %35, i32 0, i32 0, !dbg !2160
  %arrayidx49 = getelementptr [2 x %struct.mls_level], ptr %level48, i64 0, i64 1, !dbg !2159
  %cat50 = getelementptr inbounds %struct.mls_level, ptr %arrayidx49, i32 0, i32 1, !dbg !2161
  %36 = load ptr, ptr %r1, align 8, !dbg !2162
  %level51 = getelementptr inbounds %struct.mls_range, ptr %36, i32 0, i32 0, !dbg !2163
  %arrayidx52 = getelementptr [2 x %struct.mls_level], ptr %level51, i64 0, i64 1, !dbg !2162
  %cat53 = getelementptr inbounds %struct.mls_level, ptr %arrayidx52, i32 0, i32 1, !dbg !2164
  %37 = load ptr, ptr %r2, align 8, !dbg !2165
  %level54 = getelementptr inbounds %struct.mls_range, ptr %37, i32 0, i32 0, !dbg !2166
  %arrayidx55 = getelementptr [2 x %struct.mls_level], ptr %level54, i64 0, i64 1, !dbg !2165
  %cat56 = getelementptr inbounds %struct.mls_level, ptr %arrayidx55, i32 0, i32 1, !dbg !2167
  %call57 = call i32 @ebitmap_and(ptr noundef %cat50, ptr noundef %cat53, ptr noundef %cat56) #10, !dbg !2168
  store i32 %call57, ptr %rc, align 4, !dbg !2169
  %38 = load i32, ptr %rc, align 4, !dbg !2170
  %tobool58 = icmp ne i32 %38, 0, !dbg !2170
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !2172

if.then59:                                        ; preds = %if.end47
  br label %out, !dbg !2173

if.end60:                                         ; preds = %if.end47
  br label %out, !dbg !2170

out:                                              ; preds = %if.end60, %if.then59, %if.then46
  call void @llvm.dbg.label(metadata !2097), !dbg !2174
  %39 = load i32, ptr %rc, align 4, !dbg !2175
  store i32 %39, ptr %retval, align 4, !dbg !2176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2176

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %r2) #9, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #9, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #9, !dbg !2177
  %40 = load i32, ptr %retval, align 4, !dbg !2177
  ret i32 %40, !dbg !2177
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mls_export_netlbl_lvl(ptr noundef %p, ptr noundef %context, ptr noundef %secattr) #0 align 16 !dbg !2178 {
entry:
  %p.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %secattr.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2218, metadata !DIExpression()), !dbg !2221
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2219, metadata !DIExpression()), !dbg !2222
  store ptr %secattr, ptr %secattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %secattr.addr, metadata !2220, metadata !DIExpression()), !dbg !2223
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2224
  %mls_enabled = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 0, !dbg !2226
  %1 = load i32, ptr %mls_enabled, align 8, !dbg !2226
  %tobool = icmp ne i32 %1, 0, !dbg !2224
  br i1 %tobool, label %if.end, label %if.then, !dbg !2227

if.then:                                          ; preds = %entry
  br label %return, !dbg !2228

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %context.addr, align 8, !dbg !2229
  %range = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 4, !dbg !2230
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !2231
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !2229
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !2232
  %3 = load i32, ptr %sens, align 8, !dbg !2232
  %sub = sub i32 %3, 1, !dbg !2233
  %4 = load ptr, ptr %secattr.addr, align 8, !dbg !2234
  %attr = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %4, i32 0, i32 4, !dbg !2235
  %mls = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 0, !dbg !2236
  %lvl = getelementptr inbounds %struct.anon.0, ptr %mls, i32 0, i32 1, !dbg !2237
  store i32 %sub, ptr %lvl, align 8, !dbg !2238
  %5 = load ptr, ptr %secattr.addr, align 8, !dbg !2239
  %flags = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %5, i32 0, i32 0, !dbg !2240
  %6 = load i32, ptr %flags, align 8, !dbg !2241
  %or = or i32 %6, 4, !dbg !2241
  store i32 %or, ptr %flags, align 8, !dbg !2241
  br label %return, !dbg !2242

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2242
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mls_import_netlbl_lvl(ptr noundef %p, ptr noundef %context, ptr noundef %secattr) #0 align 16 !dbg !2243 {
entry:
  %p.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %secattr.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2245, metadata !DIExpression()), !dbg !2248
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2246, metadata !DIExpression()), !dbg !2249
  store ptr %secattr, ptr %secattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %secattr.addr, metadata !2247, metadata !DIExpression()), !dbg !2250
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2251
  %mls_enabled = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 0, !dbg !2253
  %1 = load i32, ptr %mls_enabled, align 8, !dbg !2253
  %tobool = icmp ne i32 %1, 0, !dbg !2251
  br i1 %tobool, label %if.end, label %if.then, !dbg !2254

if.then:                                          ; preds = %entry
  br label %return, !dbg !2255

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %secattr.addr, align 8, !dbg !2256
  %attr = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %2, i32 0, i32 4, !dbg !2257
  %mls = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 0, !dbg !2258
  %lvl = getelementptr inbounds %struct.anon.0, ptr %mls, i32 0, i32 1, !dbg !2259
  %3 = load i32, ptr %lvl, align 8, !dbg !2259
  %add = add i32 %3, 1, !dbg !2260
  %4 = load ptr, ptr %context.addr, align 8, !dbg !2261
  %range = getelementptr inbounds %struct.context, ptr %4, i32 0, i32 4, !dbg !2262
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !2263
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !2261
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !2264
  store i32 %add, ptr %sens, align 8, !dbg !2265
  %5 = load ptr, ptr %context.addr, align 8, !dbg !2266
  %range1 = getelementptr inbounds %struct.context, ptr %5, i32 0, i32 4, !dbg !2267
  %level2 = getelementptr inbounds %struct.mls_range, ptr %range1, i32 0, i32 0, !dbg !2268
  %arrayidx3 = getelementptr [2 x %struct.mls_level], ptr %level2, i64 0, i64 0, !dbg !2266
  %sens4 = getelementptr inbounds %struct.mls_level, ptr %arrayidx3, i32 0, i32 0, !dbg !2269
  %6 = load i32, ptr %sens4, align 8, !dbg !2269
  %7 = load ptr, ptr %context.addr, align 8, !dbg !2270
  %range5 = getelementptr inbounds %struct.context, ptr %7, i32 0, i32 4, !dbg !2271
  %level6 = getelementptr inbounds %struct.mls_range, ptr %range5, i32 0, i32 0, !dbg !2272
  %arrayidx7 = getelementptr [2 x %struct.mls_level], ptr %level6, i64 0, i64 1, !dbg !2270
  %sens8 = getelementptr inbounds %struct.mls_level, ptr %arrayidx7, i32 0, i32 0, !dbg !2273
  store i32 %6, ptr %sens8, align 8, !dbg !2274
  br label %return, !dbg !2275

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2275
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mls_export_netlbl_cat(ptr noundef %p, ptr noundef %context, ptr noundef %secattr) #0 align 16 !dbg !2276 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %secattr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2280, metadata !DIExpression()), !dbg !2284
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2281, metadata !DIExpression()), !dbg !2285
  store ptr %secattr, ptr %secattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %secattr.addr, metadata !2282, metadata !DIExpression()), !dbg !2286
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !2287
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2283, metadata !DIExpression()), !dbg !2288
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2289
  %mls_enabled = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 0, !dbg !2291
  %1 = load i32, ptr %mls_enabled, align 8, !dbg !2291
  %tobool = icmp ne i32 %1, 0, !dbg !2289
  br i1 %tobool, label %if.end, label %if.then, !dbg !2292

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2293

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %context.addr, align 8, !dbg !2294
  %range = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 4, !dbg !2295
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !2296
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !2294
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 1, !dbg !2297
  %3 = load ptr, ptr %secattr.addr, align 8, !dbg !2298
  %attr = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %3, i32 0, i32 4, !dbg !2299
  %mls = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 0, !dbg !2300
  %cat1 = getelementptr inbounds %struct.anon.0, ptr %mls, i32 0, i32 0, !dbg !2301
  %call = call i32 @ebitmap_netlbl_export(ptr noundef %cat, ptr noundef %cat1) #10, !dbg !2302
  store i32 %call, ptr %rc, align 4, !dbg !2303
  %4 = load i32, ptr %rc, align 4, !dbg !2304
  %cmp = icmp eq i32 %4, 0, !dbg !2306
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !2307

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %secattr.addr, align 8, !dbg !2308
  %attr2 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %5, i32 0, i32 4, !dbg !2309
  %mls3 = getelementptr inbounds %struct.anon, ptr %attr2, i32 0, i32 0, !dbg !2310
  %cat4 = getelementptr inbounds %struct.anon.0, ptr %mls3, i32 0, i32 0, !dbg !2311
  %6 = load ptr, ptr %cat4, align 8, !dbg !2311
  %cmp5 = icmp ne ptr %6, null, !dbg !2312
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2313

if.then6:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %secattr.addr, align 8, !dbg !2314
  %flags = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %7, i32 0, i32 0, !dbg !2315
  %8 = load i32, ptr %flags, align 8, !dbg !2316
  %or = or i32 %8, 8, !dbg !2316
  store i32 %or, ptr %flags, align 8, !dbg !2316
  br label %if.end7, !dbg !2314

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %9 = load i32, ptr %rc, align 4, !dbg !2317
  store i32 %9, ptr %retval, align 4, !dbg !2318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2318

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !2319
  %10 = load i32, ptr %retval, align 4, !dbg !2319
  ret i32 %10, !dbg !2319
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2320 dso_local i32 @ebitmap_netlbl_export(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mls_import_netlbl_cat(ptr noundef %p, ptr noundef %context, ptr noundef %secattr) #0 align 16 !dbg !2324 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %secattr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2326, metadata !DIExpression()), !dbg !2331
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2327, metadata !DIExpression()), !dbg !2332
  store ptr %secattr, ptr %secattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %secattr.addr, metadata !2328, metadata !DIExpression()), !dbg !2333
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !2334
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2329, metadata !DIExpression()), !dbg !2335
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2336
  %mls_enabled = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 0, !dbg !2338
  %1 = load i32, ptr %mls_enabled, align 8, !dbg !2338
  %tobool = icmp ne i32 %1, 0, !dbg !2336
  br i1 %tobool, label %if.end, label %if.then, !dbg !2339

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2340

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %context.addr, align 8, !dbg !2341
  %range = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 4, !dbg !2342
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !2343
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !2341
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 1, !dbg !2344
  %3 = load ptr, ptr %secattr.addr, align 8, !dbg !2345
  %attr = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %3, i32 0, i32 4, !dbg !2346
  %mls = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 0, !dbg !2347
  %cat1 = getelementptr inbounds %struct.anon.0, ptr %mls, i32 0, i32 0, !dbg !2348
  %4 = load ptr, ptr %cat1, align 8, !dbg !2348
  %call = call i32 @ebitmap_netlbl_import(ptr noundef %cat, ptr noundef %4) #10, !dbg !2349
  store i32 %call, ptr %rc, align 4, !dbg !2350
  %5 = load i32, ptr %rc, align 4, !dbg !2351
  %tobool2 = icmp ne i32 %5, 0, !dbg !2351
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2353

if.then3:                                         ; preds = %if.end
  br label %import_netlbl_cat_failure, !dbg !2354

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %context.addr, align 8, !dbg !2355
  %range5 = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 4, !dbg !2356
  %level6 = getelementptr inbounds %struct.mls_range, ptr %range5, i32 0, i32 0, !dbg !2357
  %arrayidx7 = getelementptr [2 x %struct.mls_level], ptr %level6, i64 0, i64 1, !dbg !2355
  %cat8 = getelementptr inbounds %struct.mls_level, ptr %arrayidx7, i32 0, i32 1, !dbg !2358
  %7 = load ptr, ptr %context.addr, align 8, !dbg !2359
  %range9 = getelementptr inbounds %struct.context, ptr %7, i32 0, i32 4, !dbg !2360
  %level10 = getelementptr inbounds %struct.mls_range, ptr %range9, i32 0, i32 0, !dbg !2361
  %arrayidx11 = getelementptr [2 x %struct.mls_level], ptr %level10, i64 0, i64 0, !dbg !2359
  %cat12 = getelementptr inbounds %struct.mls_level, ptr %arrayidx11, i32 0, i32 1, !dbg !2362
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cat8, ptr align 8 %cat12, i64 16, i1 false), !dbg !2363
  store i32 0, ptr %retval, align 4, !dbg !2364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2364

import_netlbl_cat_failure:                        ; preds = %if.then3
  call void @llvm.dbg.label(metadata !2330), !dbg !2365
  %8 = load ptr, ptr %context.addr, align 8, !dbg !2366
  %range13 = getelementptr inbounds %struct.context, ptr %8, i32 0, i32 4, !dbg !2367
  %level14 = getelementptr inbounds %struct.mls_range, ptr %range13, i32 0, i32 0, !dbg !2368
  %arrayidx15 = getelementptr [2 x %struct.mls_level], ptr %level14, i64 0, i64 0, !dbg !2366
  %cat16 = getelementptr inbounds %struct.mls_level, ptr %arrayidx15, i32 0, i32 1, !dbg !2369
  call void @ebitmap_destroy(ptr noundef %cat16) #10, !dbg !2370
  %9 = load i32, ptr %rc, align 4, !dbg !2371
  store i32 %9, ptr %retval, align 4, !dbg !2372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2372

cleanup:                                          ; preds = %import_netlbl_cat_failure, %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !2373
  %10 = load i32, ptr %retval, align 4, !dbg !2373
  ret i32 %10, !dbg !2373
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2374 dso_local i32 @ebitmap_netlbl_import(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2377 dso_local void @ebitmap_destroy(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #4 align 16 !dbg !2380 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2387, metadata !DIExpression()), !dbg !2392
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2388, metadata !DIExpression()), !dbg !2393
  %0 = load i64, ptr %size.addr, align 8, !dbg !2394
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2394
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2394

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2394
  %cmp = icmp ule i64 %2, 64, !dbg !2394
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2394

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2394
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2394
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2395

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !2396
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2389, metadata !DIExpression()), !dbg !2397
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !2398
  %5 = load i64, ptr %4, align 8, !dbg !2399
  %6 = load i64, ptr %size.addr, align 8, !dbg !2400
  %sub = sub i64 %6, 1, !dbg !2400
  %sub3 = sub i64 63, %sub, !dbg !2400
  %shr = lshr i64 -1, %sub3, !dbg !2400
  %and = and i64 -1, %shr, !dbg !2400
  %add = add i64 0, %and, !dbg !2400
  %and4 = and i64 %5, %add, !dbg !2401
  store i64 %and4, ptr %val, align 8, !dbg !2397
  %7 = load i64, ptr %val, align 8, !dbg !2402
  %tobool = icmp ne i64 %7, 0, !dbg !2402
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !2402

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !2403
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !2403
  br i1 %9, label %cond.true5, label %cond.false, !dbg !2403

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !2403
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !2403
  %cast = trunc i64 %11 to i32, !dbg !2403
  %conv = sext i32 %cast to i64, !dbg !2403
  br label %cond.end, !dbg !2403

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !2403
  %call = call i64 @variable__ffs(i64 noundef %12) #10, !dbg !2403
  br label %cond.end, !dbg !2403

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !2403
  br label %cond.end7, !dbg !2402

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !2404
  br label %cond.end7, !dbg !2402

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !2402
  store i64 %cond8, ptr %retval, align 8, !dbg !2405
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !2406
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !2407
  %15 = load i64, ptr %size.addr, align 8, !dbg !2408
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #10, !dbg !2409
  store i64 %call9, ptr %retval, align 8, !dbg !2410
  br label %return, !dbg !2410

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !2411
  ret i64 %16, !dbg !2411
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #7 align 16 !dbg !2412 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !2417, metadata !DIExpression()), !dbg !2418
  %0 = load i64, ptr %word.addr, align 8, !dbg !2419
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #11, !dbg !2420, !srcloc !2421
  store i64 %1, ptr %word.addr, align 8, !dbg !2420
  %2 = load i64, ptr %word.addr, align 8, !dbg !2422
  ret i64 %2, !dbg !2423
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2424 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !2425 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2429, metadata !DIExpression()), !dbg !2435
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2430, metadata !DIExpression()), !dbg !2436
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2431, metadata !DIExpression()), !dbg !2437
  %0 = load i64, ptr %size.addr, align 8, !dbg !2438
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2438
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !2438

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2438
  %cmp = icmp ule i64 %2, 64, !dbg !2438
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !2438

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2438
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2438
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !2439

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !2440
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2432, metadata !DIExpression()), !dbg !2441
  %4 = load i64, ptr %offset.addr, align 8, !dbg !2442
  %5 = load i64, ptr %size.addr, align 8, !dbg !2442
  %cmp3 = icmp uge i64 %4, %5, !dbg !2442
  %lnot = xor i1 %cmp3, true, !dbg !2442
  %lnot4 = xor i1 %lnot, true, !dbg !2442
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2442
  %conv = sext i32 %lnot.ext to i64, !dbg !2442
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2442
  %tobool = icmp ne i64 %expval, 0, !dbg !2442
  br i1 %tobool, label %if.then5, label %if.end, !dbg !2444

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2445
  store i64 %6, ptr %retval, align 8, !dbg !2446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2446

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !2447
  %8 = load i64, ptr %7, align 8, !dbg !2448
  %9 = load i64, ptr %offset.addr, align 8, !dbg !2449
  %shl = shl i64 1, %9, !dbg !2449
  %sub = sub i64 -1, %shl, !dbg !2449
  %add = add i64 %sub, 1, !dbg !2449
  %10 = load i64, ptr %size.addr, align 8, !dbg !2449
  %sub6 = sub i64 %10, 1, !dbg !2449
  %sub7 = sub i64 63, %sub6, !dbg !2449
  %shr = lshr i64 -1, %sub7, !dbg !2449
  %and = and i64 %add, %shr, !dbg !2449
  %add8 = add i64 0, %and, !dbg !2449
  %and9 = and i64 %8, %add8, !dbg !2450
  store i64 %and9, ptr %val, align 8, !dbg !2451
  %11 = load i64, ptr %val, align 8, !dbg !2452
  %tobool10 = icmp ne i64 %11, 0, !dbg !2452
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !2452

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !2453
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2453
  br i1 %13, label %cond.true11, label %cond.false, !dbg !2453

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !2453
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !2453
  %cast = trunc i64 %15 to i32, !dbg !2453
  %conv12 = sext i32 %cast to i64, !dbg !2453
  br label %cond.end, !dbg !2453

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !2453
  %call = call i64 @variable__ffs(i64 noundef %16) #10, !dbg !2453
  br label %cond.end, !dbg !2453

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !2453
  br label %cond.end14, !dbg !2452

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !2454
  br label %cond.end14, !dbg !2452

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !2452
  store i64 %cond15, ptr %retval, align 8, !dbg !2455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2455

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !2456
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !2457
  %19 = load i64, ptr %size.addr, align 8, !dbg !2458
  %20 = load i64, ptr %offset.addr, align 8, !dbg !2459
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #10, !dbg !2460
  store i64 %call17, ptr %retval, align 8, !dbg !2461
  br label %return, !dbg !2461

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !2462
  ret i64 %21, !dbg !2462
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2463 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2464 dso_local i32 @ebitmap_cmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2467 dso_local ptr @sidtab_search_entry(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2470 dso_local i32 @ebitmap_and(ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/selinux/ss/.mls.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -I ./security/selinux -I ./security/selinux/include -D KBUILD_MODFILE=\22security/selinux/selinux\22 -D KBUILD_BASENAME=\22mls\22 -D KBUILD_MODNAME=\22selinux\22 -D __KBUILD_MODNAME=kmod_selinux -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/selinux/ss/mls.ll security/selinux/ss/mls.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "security/selinux/ss/mls.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b94cea2d04eb503d393eb68367554a")
!2 = !{!3, !4, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 8, !"cf-protection-branch", i32 1}
!10 = !{i32 4, !"function_return_thunk_extern", i32 1}
!11 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!12 = !{i32 1, !"Code Model", i32 2}
!13 = !{i32 1, !"override-stack-alignment", i32 8}
!14 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!15 = distinct !DISubprogram(name: "mls_compute_context_len", scope: !1, file: !1, line: 36, type: !16, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !305)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !18, !304}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "policydb", file: !20, line: 239, size: 4736, elements: !21)
!20 = !DIFile(filename: "security/selinux/ss/policydb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7795e8c85e617c81c5f9432b58d69e6")
!21 = !{!22, !23, !50, !55, !111, !120, !141, !151, !195, !196, !197, !198, !199, !206, !207, !210, !211, !218, !281, !288, !289, !291, !292, !293, !299, !300, !301, !302, !303}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "mls_enabled", scope: !19, file: !20, line: 240, baseType: !4, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !19, file: !20, line: 243, baseType: !24, size: 1536, offset: 64)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1536, elements: !48)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "symtab", file: !26, line: 15, size: 192, elements: !27)
!26 = !DIFile(filename: "security/selinux/ss/symtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4fa558f58a0acfc7c6989b1450f1c1b")
!27 = !{!28, !47}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !25, file: !26, line: 16, baseType: !29, size: 128)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab", file: !30, line: 32, size: 128, elements: !31)
!30 = !DIFile(filename: "security/selinux/ss/hashtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93462b8c7243c7cf649d075a1a12e63d")
!31 = !{!32, !40, !46}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !29, file: !30, line: 33, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab_node", file: !30, line: 26, size: 192, elements: !36)
!36 = !{!37, !38, !39}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !35, file: !30, line: 27, baseType: !3, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !35, file: !30, line: 28, baseType: !3, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !35, file: !30, line: 29, baseType: !34, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !29, file: !30, line: 34, baseType: !41, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !42, line: 21, baseType: !43)
!42 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !44, line: 27, baseType: !45)
!44 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!45 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "nel", scope: !29, file: !30, line: 35, baseType: !41, size: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "nprim", scope: !25, file: !26, line: 17, baseType: !41, size: 32, offset: 128)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "sym_val_to_name", scope: !19, file: !20, line: 254, baseType: !51, size: 512, offset: 1600)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 512, elements: !48)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "class_val_to_struct", scope: !19, file: !20, line: 257, baseType: !56, size: 64, offset: 2112)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_datum", file: !20, line: 52, size: 576, elements: !59)
!59 = !{!60, !61, !62, !68, !69, !106, !107, !108, !109, !110}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !58, file: !20, line: 53, baseType: !41, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "comkey", scope: !58, file: !20, line: 54, baseType: !53, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "comdatum", scope: !58, file: !20, line: 55, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_datum", file: !20, line: 46, size: 256, elements: !65)
!65 = !{!66, !67}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !64, file: !20, line: 47, baseType: !41, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !64, file: !20, line: 48, baseType: !25, size: 192, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !58, file: !20, line: 56, baseType: !25, size: 192, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !58, file: !20, line: 57, baseType: !70, size: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constraint_node", file: !72, line: 57, size: 192, elements: !73)
!72 = !DIFile(filename: "security/selinux/ss/constraint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5462a1cc40f682813f94f813d2ff99e")
!73 = !{!74, !75, !105}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !71, file: !72, line: 58, baseType: !41, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !71, file: !72, line: 59, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constraint_expr", file: !72, line: 23, size: 384, elements: !78)
!78 = !{!79, !80, !81, !82, !97, !104}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "expr_type", scope: !77, file: !72, line: 29, baseType: !41, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !77, file: !72, line: 42, baseType: !41, size: 32, offset: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !77, file: !72, line: 49, baseType: !41, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !77, file: !72, line: 51, baseType: !83, size: 128, offset: 128)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap", file: !84, line: 40, size: 128, elements: !85)
!84 = !DIFile(filename: "security/selinux/ss/ebitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57a81f7285b67f9767135d87fb3569d7")
!85 = !{!86, !96}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !83, file: !84, line: 41, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap_node", file: !84, line: 34, size: 512, elements: !89)
!89 = !{!90, !91, !95}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !84, line: 35, baseType: !87, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !88, file: !84, line: 36, baseType: !92, size: 384, offset: 64)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 384, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 6)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "startbit", scope: !88, file: !84, line: 37, baseType: !41, size: 32, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "highbit", scope: !83, file: !84, line: 42, baseType: !41, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type_names", scope: !77, file: !72, line: 52, baseType: !98, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_set", file: !20, line: 161, size: 320, elements: !100)
!100 = !{!101, !102, !103}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !99, file: !20, line: 162, baseType: !83, size: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "negset", scope: !99, file: !20, line: 163, baseType: !83, size: 128, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !20, line: 164, baseType: !41, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !77, file: !72, line: 54, baseType: !76, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !71, file: !72, line: 60, baseType: !70, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "validatetrans", scope: !58, file: !20, line: 58, baseType: !70, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "default_user", scope: !58, file: !20, line: 62, baseType: !54, size: 8, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "default_role", scope: !58, file: !20, line: 63, baseType: !54, size: 8, offset: 520)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !58, file: !20, line: 64, baseType: !54, size: 8, offset: 528)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "default_range", scope: !58, file: !20, line: 73, baseType: !54, size: 8, offset: 536)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "role_val_to_struct", scope: !19, file: !20, line: 258, baseType: !112, size: 64, offset: 2176)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "role_datum", file: !20, line: 77, size: 320, elements: !115)
!115 = !{!116, !117, !118, !119}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !114, file: !20, line: 78, baseType: !41, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !114, file: !20, line: 79, baseType: !41, size: 32, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "dominates", scope: !114, file: !20, line: 80, baseType: !83, size: 128, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !114, file: !20, line: 81, baseType: !83, size: 128, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "user_val_to_struct", scope: !19, file: !20, line: 259, baseType: !121, size: 64, offset: 2240)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_datum", file: !20, line: 121, size: 768, elements: !124)
!124 = !{!125, !126, !127, !128, !140}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !123, file: !20, line: 122, baseType: !41, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !123, file: !20, line: 123, baseType: !41, size: 32, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "roles", scope: !123, file: !20, line: 124, baseType: !83, size: 128, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !123, file: !20, line: 125, baseType: !129, size: 384, offset: 192)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mls_range", file: !130, line: 26, size: 384, elements: !131)
!130 = !DIFile(filename: "security/selinux/ss/mls_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ea1e0a8d988e75a37cbe0fc79ec24320")
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !129, file: !130, line: 27, baseType: !133, size: 384)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 384, elements: !138)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mls_level", file: !130, line: 21, size: 192, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sens", scope: !134, file: !130, line: 22, baseType: !41, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "cat", scope: !134, file: !130, line: 23, baseType: !83, size: 128, offset: 64)
!138 = !{!139}
!139 = !DISubrange(count: 2)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "dfltlevel", scope: !123, file: !20, line: 126, baseType: !134, size: 192, offset: 576)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type_val_to_struct", scope: !19, file: !20, line: 260, baseType: !142, size: 64, offset: 2304)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_datum", file: !20, line: 113, size: 96, elements: !145)
!145 = !{!146, !147, !148, !150}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !144, file: !20, line: 114, baseType: !41, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !144, file: !20, line: 115, baseType: !41, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !144, file: !20, line: 116, baseType: !149, size: 8, offset: 64)
!149 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !144, file: !20, line: 117, baseType: !149, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "te_avtab", scope: !19, file: !20, line: 263, baseType: !152, size: 192, offset: 2368)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab", file: !153, line: 83, size: 192, elements: !154)
!153 = !DIFile(filename: "security/selinux/ss/avtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594c41c8c01a8fbcd1845985fac73819")
!154 = !{!155, !192, !193, !194}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !152, file: !153, line: 84, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_node", file: !153, line: 77, size: 192, elements: !159)
!159 = !{!160, !170, !191}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !158, file: !153, line: 78, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_key", file: !153, line: 26, size: 64, elements: !162)
!162 = !{!163, !167, !168, !169}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "source_type", scope: !161, file: !153, line: 27, baseType: !164, size: 16)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !42, line: 19, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !44, line: 24, baseType: !166)
!166 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !161, file: !153, line: 28, baseType: !164, size: 16, offset: 16)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "target_class", scope: !161, file: !153, line: 29, baseType: !164, size: 16, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !161, file: !153, line: 47, baseType: !164, size: 16, offset: 48)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !158, file: !153, line: 79, baseType: !171, size: 64, offset: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_datum", file: !153, line: 70, size: 64, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !171, file: !153, line: 74, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !153, line: 71, size: 64, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !174, file: !153, line: 72, baseType: !41, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "xperms", scope: !174, file: !153, line: 73, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_extended_perms", file: !153, line: 54, size: 288, elements: !180)
!180 = !{!181, !184, !185}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !179, file: !153, line: 59, baseType: !182, size: 8)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !42, line: 17, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !44, line: 21, baseType: !149)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !179, file: !153, line: 65, baseType: !182, size: 8, offset: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "perms", scope: !179, file: !153, line: 67, baseType: !186, size: 256, offset: 32)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extended_perms_data", file: !187, line: 223, size: 256, elements: !188)
!187 = !DIFile(filename: "./security/selinux/include/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb6e0d69f1ee11464ad11e15a35ebc")
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !186, file: !187, line: 224, baseType: !190, size: 256)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !48)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !153, line: 80, baseType: !157, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nel", scope: !152, file: !153, line: 85, baseType: !41, size: 32, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nslot", scope: !152, file: !153, line: 86, baseType: !41, size: 32, offset: 96)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !152, file: !153, line: 87, baseType: !41, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "role_tr", scope: !19, file: !20, line: 266, baseType: !29, size: 128, offset: 2560)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "filename_trans_ttypes", scope: !19, file: !20, line: 270, baseType: !83, size: 128, offset: 2688)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "filename_trans", scope: !19, file: !20, line: 272, baseType: !29, size: 128, offset: 2816)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "compat_filename_trans_count", scope: !19, file: !20, line: 274, baseType: !41, size: 32, offset: 2944)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bool_val_to_struct", scope: !19, file: !20, line: 277, baseType: !200, size: 64, offset: 3008)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_bool_datum", file: !20, line: 149, size: 64, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !202, file: !20, line: 150, baseType: !43, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !202, file: !20, line: 151, baseType: !4, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "te_cond_avtab", scope: !19, file: !20, line: 279, baseType: !152, size: 192, offset: 3072)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "cond_list", scope: !19, file: !20, line: 281, baseType: !208, size: 64, offset: 3264)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "cond_node", file: !20, line: 154, flags: DIFlagFwdDecl)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "cond_list_len", scope: !19, file: !20, line: 282, baseType: !41, size: 32, offset: 3328)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "role_allow", scope: !19, file: !20, line: 285, baseType: !212, size: 64, offset: 3392)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "role_allow", file: !20, line: 106, size: 128, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !213, file: !20, line: 107, baseType: !41, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "new_role", scope: !213, file: !20, line: 108, baseType: !41, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !20, line: 109, baseType: !212, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ocontexts", scope: !19, file: !20, line: 289, baseType: !219, size: 576, offset: 3456)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 576, elements: !279)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ocontext", file: !20, line: 174, size: 1600, elements: !222)
!222 = !{!223, !260, !265, !276, !278}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !221, file: !20, line: 199, baseType: !224, size: 256)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !20, line: 175, size: 256, elements: !225)
!225 = !{!226, !227, !233, !238, !246, !255}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !20, line: 176, baseType: !53, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !224, file: !20, line: 181, baseType: !228, size: 48)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !20, line: 177, size: 48, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !228, file: !20, line: 178, baseType: !182, size: 8)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "low_port", scope: !228, file: !20, line: 179, baseType: !164, size: 16, offset: 16)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "high_port", scope: !228, file: !20, line: 180, baseType: !164, size: 16, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !224, file: !20, line: 185, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !20, line: 182, size: 64, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !234, file: !20, line: 183, baseType: !41, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !234, file: !20, line: 184, baseType: !41, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "node6", scope: !224, file: !20, line: 189, baseType: !239, size: 256)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !20, line: 186, size: 256, elements: !240)
!240 = !{!241, !245}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !239, file: !20, line: 187, baseType: !242, size: 128)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 128, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 4)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !239, file: !20, line: 188, baseType: !242, size: 128, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ibpkey", scope: !224, file: !20, line: 194, baseType: !247, size: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !20, line: 190, size: 128, elements: !248)
!248 = !{!249, !253, !254}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "subnet_prefix", scope: !247, file: !20, line: 191, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !42, line: 23, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !44, line: 31, baseType: !252)
!252 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "low_pkey", scope: !247, file: !20, line: 192, baseType: !164, size: 16, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "high_pkey", scope: !247, file: !20, line: 193, baseType: !164, size: 16, offset: 80)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ibendport", scope: !224, file: !20, line: 198, baseType: !256, size: 128)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !20, line: 195, size: 128, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !256, file: !20, line: 196, baseType: !53, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !256, file: !20, line: 197, baseType: !182, size: 8, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !221, file: !20, line: 203, baseType: !261, size: 32, offset: 256)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !20, line: 200, size: 32, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "sclass", scope: !261, file: !20, line: 201, baseType: !41, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "behavior", scope: !261, file: !20, line: 202, baseType: !41, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !221, file: !20, line: 204, baseType: !266, size: 1152, offset: 320)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 1152, elements: !138)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "context", file: !268, line: 27, size: 576, elements: !269)
!268 = !DIFile(filename: "security/selinux/ss/context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da62b4bf5ddec43330086032ebb96414")
!269 = !{!270, !271, !272, !273, !274, !275}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !267, file: !268, line: 28, baseType: !41, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !267, file: !268, line: 29, baseType: !41, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !267, file: !268, line: 30, baseType: !41, size: 32, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !267, file: !268, line: 31, baseType: !41, size: 32, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !267, file: !268, line: 32, baseType: !129, size: 384, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !267, file: !268, line: 33, baseType: !53, size: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "sid", scope: !221, file: !20, line: 205, baseType: !277, size: 64, offset: 1472)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !138)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !20, line: 206, baseType: !220, size: 64, offset: 1536)
!279 = !{!280}
!280 = !DISubrange(count: 9)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "genfs", scope: !19, file: !20, line: 294, baseType: !282, size: 64, offset: 4032)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genfs", file: !20, line: 209, size: 192, elements: !284)
!284 = !{!285, !286, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "fstype", scope: !283, file: !20, line: 210, baseType: !53, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !283, file: !20, line: 211, baseType: !220, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !20, line: 212, baseType: !282, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "range_tr", scope: !19, file: !20, line: 297, baseType: !29, size: 128, offset: 4096)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "type_attr_map_array", scope: !19, file: !20, line: 300, baseType: !290, size: 64, offset: 4224)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "policycaps", scope: !19, file: !20, line: 302, baseType: !83, size: 128, offset: 4288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "permissive_map", scope: !19, file: !20, line: 304, baseType: !83, size: 128, offset: 4416)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !19, file: !20, line: 307, baseType: !294, size: 64, offset: 4544)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !295, line: 61, baseType: !296)
!295 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !297, line: 72, baseType: !298)
!297 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !297, line: 16, baseType: !5)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "policyvers", scope: !19, file: !20, line: 309, baseType: !45, size: 32, offset: 4608)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "reject_unknown", scope: !19, file: !20, line: 311, baseType: !45, size: 1, offset: 4640, flags: DIFlagBitField, extraData: i64 4640)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "allow_unknown", scope: !19, file: !20, line: 312, baseType: !45, size: 1, offset: 4641, flags: DIFlagBitField, extraData: i64 4640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "process_class", scope: !19, file: !20, line: 314, baseType: !164, size: 16, offset: 4656)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "process_trans_perms", scope: !19, file: !20, line: 315, baseType: !41, size: 32, offset: 4672)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!306 = !DILocalVariable(name: "p", arg: 1, scope: !15, file: !1, line: 36, type: !18)
!307 = !DILocalVariable(name: "context", arg: 2, scope: !15, file: !1, line: 36, type: !304)
!308 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 38, type: !4)
!309 = !DILocalVariable(name: "l", scope: !15, file: !1, line: 38, type: !4)
!310 = !DILocalVariable(name: "len", scope: !15, file: !1, line: 38, type: !4)
!311 = !DILocalVariable(name: "head", scope: !15, file: !1, line: 38, type: !4)
!312 = !DILocalVariable(name: "prev", scope: !15, file: !1, line: 38, type: !4)
!313 = !DILocalVariable(name: "nm", scope: !15, file: !1, line: 39, type: !53)
!314 = !DILocalVariable(name: "e", scope: !15, file: !1, line: 40, type: !290)
!315 = !DILocalVariable(name: "node", scope: !15, file: !1, line: 41, type: !87)
!316 = !DILocalVariable(name: "index_sens", scope: !317, file: !1, line: 48, type: !41)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 47, column: 26)
!318 = distinct !DILexicalBlock(scope: !319, file: !1, line: 47, column: 2)
!319 = distinct !DILexicalBlock(scope: !15, file: !1, line: 47, column: 2)
!320 = !DILocation(line: 36, column: 46, scope: !15)
!321 = !DILocation(line: 36, column: 65, scope: !15)
!322 = !DILocation(line: 38, column: 2, scope: !15)
!323 = !DILocation(line: 38, column: 6, scope: !15)
!324 = !DILocation(line: 38, column: 9, scope: !15)
!325 = !DILocation(line: 38, column: 12, scope: !15)
!326 = !DILocation(line: 38, column: 17, scope: !15)
!327 = !DILocation(line: 38, column: 23, scope: !15)
!328 = !DILocation(line: 39, column: 2, scope: !15)
!329 = !DILocation(line: 39, column: 8, scope: !15)
!330 = !DILocation(line: 40, column: 2, scope: !15)
!331 = !DILocation(line: 40, column: 18, scope: !15)
!332 = !DILocation(line: 41, column: 2, scope: !15)
!333 = !DILocation(line: 41, column: 23, scope: !15)
!334 = !DILocation(line: 43, column: 7, scope: !335)
!335 = distinct !DILexicalBlock(scope: !15, file: !1, line: 43, column: 6)
!336 = !DILocation(line: 43, column: 10, scope: !335)
!337 = !DILocation(line: 43, column: 6, scope: !15)
!338 = !DILocation(line: 44, column: 3, scope: !335)
!339 = !DILocation(line: 46, column: 6, scope: !15)
!340 = !DILocation(line: 47, column: 9, scope: !319)
!341 = !DILocation(line: 47, column: 7, scope: !319)
!342 = !DILocation(line: 47, column: 14, scope: !318)
!343 = !DILocation(line: 47, column: 16, scope: !318)
!344 = !DILocation(line: 47, column: 2, scope: !319)
!345 = !DILocation(line: 48, column: 3, scope: !317)
!346 = !DILocation(line: 48, column: 7, scope: !317)
!347 = !DILocation(line: 48, column: 20, scope: !317)
!348 = !DILocation(line: 48, column: 29, scope: !317)
!349 = !DILocation(line: 48, column: 35, scope: !317)
!350 = !DILocation(line: 48, column: 41, scope: !317)
!351 = !DILocation(line: 48, column: 44, scope: !317)
!352 = !DILocation(line: 49, column: 26, scope: !317)
!353 = !DILocation(line: 49, column: 41, scope: !317)
!354 = !DILocation(line: 49, column: 52, scope: !317)
!355 = !DILocation(line: 49, column: 17, scope: !317)
!356 = !DILocation(line: 49, column: 10, scope: !317)
!357 = !DILocation(line: 49, column: 7, scope: !317)
!358 = !DILocation(line: 52, column: 8, scope: !317)
!359 = !DILocation(line: 53, column: 8, scope: !317)
!360 = !DILocation(line: 54, column: 8, scope: !317)
!361 = !DILocation(line: 54, column: 17, scope: !317)
!362 = !DILocation(line: 54, column: 23, scope: !317)
!363 = !DILocation(line: 54, column: 29, scope: !317)
!364 = !DILocation(line: 54, column: 32, scope: !317)
!365 = !DILocation(line: 54, column: 5, scope: !317)
!366 = !DILocation(line: 55, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !317, file: !1, line: 55, column: 3)
!368 = !DILocation(line: 55, column: 3, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !1, line: 55, column: 3)
!370 = !DILocation(line: 56, column: 8, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !1, line: 56, column: 8)
!372 = distinct !DILexicalBlock(scope: !369, file: !1, line: 55, column: 45)
!373 = !DILocation(line: 56, column: 12, scope: !371)
!374 = !DILocation(line: 56, column: 10, scope: !371)
!375 = !DILocation(line: 56, column: 17, scope: !371)
!376 = !DILocation(line: 56, column: 8, scope: !372)
!377 = !DILocation(line: 58, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !1, line: 58, column: 9)
!379 = distinct !DILexicalBlock(scope: !371, file: !1, line: 56, column: 22)
!380 = !DILocation(line: 58, column: 17, scope: !378)
!381 = !DILocation(line: 58, column: 14, scope: !378)
!382 = !DILocation(line: 58, column: 9, scope: !379)
!383 = !DILocation(line: 59, column: 20, scope: !384)
!384 = distinct !DILexicalBlock(scope: !378, file: !1, line: 58, column: 23)
!385 = !DILocation(line: 59, column: 33, scope: !384)
!386 = !DILocation(line: 59, column: 11, scope: !384)
!387 = !DILocation(line: 59, column: 9, scope: !384)
!388 = !DILocation(line: 60, column: 20, scope: !384)
!389 = !DILocation(line: 60, column: 13, scope: !384)
!390 = !DILocation(line: 60, column: 24, scope: !384)
!391 = !DILocation(line: 60, column: 10, scope: !384)
!392 = !DILocation(line: 61, column: 5, scope: !384)
!393 = !DILocation(line: 62, column: 19, scope: !379)
!394 = !DILocation(line: 62, column: 32, scope: !379)
!395 = !DILocation(line: 62, column: 10, scope: !379)
!396 = !DILocation(line: 62, column: 8, scope: !379)
!397 = !DILocation(line: 63, column: 19, scope: !379)
!398 = !DILocation(line: 63, column: 12, scope: !379)
!399 = !DILocation(line: 63, column: 23, scope: !379)
!400 = !DILocation(line: 63, column: 9, scope: !379)
!401 = !DILocation(line: 64, column: 12, scope: !379)
!402 = !DILocation(line: 64, column: 10, scope: !379)
!403 = !DILocation(line: 65, column: 4, scope: !379)
!404 = !DILocation(line: 66, column: 11, scope: !372)
!405 = !DILocation(line: 66, column: 9, scope: !372)
!406 = !DILocation(line: 67, column: 3, scope: !372)
!407 = distinct !{!407, !366, !408, !409, !410}
!408 = !DILocation(line: 67, column: 3, scope: !367)
!409 = !{!"llvm.loop.mustprogress"}
!410 = !{!"llvm.loop.unroll.disable"}
!411 = !DILocation(line: 68, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !317, file: !1, line: 68, column: 7)
!413 = !DILocation(line: 68, column: 15, scope: !412)
!414 = !DILocation(line: 68, column: 12, scope: !412)
!415 = !DILocation(line: 68, column: 7, scope: !317)
!416 = !DILocation(line: 69, column: 18, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !1, line: 68, column: 21)
!418 = !DILocation(line: 69, column: 31, scope: !417)
!419 = !DILocation(line: 69, column: 9, scope: !417)
!420 = !DILocation(line: 69, column: 7, scope: !417)
!421 = !DILocation(line: 70, column: 18, scope: !417)
!422 = !DILocation(line: 70, column: 11, scope: !417)
!423 = !DILocation(line: 70, column: 22, scope: !417)
!424 = !DILocation(line: 70, column: 8, scope: !417)
!425 = !DILocation(line: 71, column: 3, scope: !417)
!426 = !DILocation(line: 72, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !317, file: !1, line: 72, column: 7)
!428 = !DILocation(line: 72, column: 9, scope: !427)
!429 = !DILocation(line: 72, column: 7, scope: !317)
!430 = !DILocation(line: 73, column: 22, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 73, column: 8)
!432 = distinct !DILexicalBlock(scope: !427, file: !1, line: 72, column: 15)
!433 = !DILocation(line: 73, column: 31, scope: !431)
!434 = !DILocation(line: 73, column: 37, scope: !431)
!435 = !DILocation(line: 74, column: 8, scope: !431)
!436 = !DILocation(line: 74, column: 17, scope: !431)
!437 = !DILocation(line: 74, column: 23, scope: !431)
!438 = !DILocation(line: 73, column: 8, scope: !431)
!439 = !DILocation(line: 73, column: 8, scope: !432)
!440 = !DILocation(line: 75, column: 5, scope: !431)
!441 = !DILocation(line: 77, column: 8, scope: !431)
!442 = !DILocation(line: 78, column: 3, scope: !432)
!443 = !DILocation(line: 79, column: 2, scope: !318)
!444 = !DILocation(line: 79, column: 2, scope: !317)
!445 = !DILocation(line: 47, column: 22, scope: !318)
!446 = !DILocation(line: 47, column: 2, scope: !318)
!447 = distinct !{!447, !344, !448, !409, !410}
!448 = !DILocation(line: 79, column: 2, scope: !319)
!449 = !DILocation(line: 81, column: 9, scope: !15)
!450 = !DILocation(line: 81, column: 2, scope: !15)
!451 = !DILocation(line: 82, column: 1, scope: !15)
!452 = !DISubprogram(name: "strlen", scope: !453, file: !453, line: 128, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!453 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!454 = !DISubroutineType(types: !455)
!455 = !{!5, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!458 = distinct !DISubprogram(name: "sym_name", scope: !20, file: !20, line: 385, type: !459, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!53, !18, !45, !45}
!461 = !{!462, !463, !464}
!462 = !DILocalVariable(name: "p", arg: 1, scope: !458, file: !20, line: 385, type: !18)
!463 = !DILocalVariable(name: "sym_num", arg: 2, scope: !458, file: !20, line: 385, type: !45)
!464 = !DILocalVariable(name: "element_nr", arg: 3, scope: !458, file: !20, line: 385, type: !45)
!465 = !DILocation(line: 385, column: 47, scope: !458)
!466 = !DILocation(line: 385, column: 63, scope: !458)
!467 = !DILocation(line: 385, column: 85, scope: !458)
!468 = !DILocation(line: 387, column: 9, scope: !458)
!469 = !DILocation(line: 387, column: 12, scope: !458)
!470 = !DILocation(line: 387, column: 28, scope: !458)
!471 = !DILocation(line: 387, column: 37, scope: !458)
!472 = !DILocation(line: 387, column: 2, scope: !458)
!473 = distinct !DISubprogram(name: "ebitmap_start_positive", scope: !84, file: !84, line: 47, type: !474, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !479)
!474 = !DISubroutineType(types: !475)
!475 = !{!45, !476, !478}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!479 = !{!480, !481, !482}
!480 = !DILocalVariable(name: "e", arg: 1, scope: !473, file: !84, line: 47, type: !476)
!481 = !DILocalVariable(name: "n", arg: 2, scope: !473, file: !84, line: 48, type: !478)
!482 = !DILocalVariable(name: "ofs", scope: !473, file: !84, line: 50, type: !45)
!483 = !DILocation(line: 47, column: 73, scope: !473)
!484 = !DILocation(line: 48, column: 31, scope: !473)
!485 = !DILocation(line: 50, column: 2, scope: !473)
!486 = !DILocation(line: 50, column: 15, scope: !473)
!487 = !DILocation(line: 52, column: 12, scope: !488)
!488 = distinct !DILexicalBlock(scope: !473, file: !84, line: 52, column: 2)
!489 = !DILocation(line: 52, column: 15, scope: !488)
!490 = !DILocation(line: 52, column: 8, scope: !488)
!491 = !DILocation(line: 52, column: 10, scope: !488)
!492 = !DILocation(line: 52, column: 7, scope: !488)
!493 = !DILocation(line: 52, column: 22, scope: !494)
!494 = distinct !DILexicalBlock(scope: !488, file: !84, line: 52, column: 2)
!495 = !DILocation(line: 52, column: 21, scope: !494)
!496 = !DILocation(line: 52, column: 2, scope: !488)
!497 = !DILocation(line: 53, column: 26, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !84, line: 52, column: 42)
!499 = !DILocation(line: 53, column: 25, scope: !498)
!500 = !DILocation(line: 53, column: 30, scope: !498)
!501 = !DILocation(line: 53, column: 24, scope: !498)
!502 = !DILocation(line: 53, column: 9, scope: !498)
!503 = !DILocation(line: 53, column: 7, scope: !498)
!504 = !DILocation(line: 54, column: 7, scope: !505)
!505 = distinct !DILexicalBlock(scope: !498, file: !84, line: 54, column: 7)
!506 = !DILocation(line: 54, column: 11, scope: !505)
!507 = !DILocation(line: 54, column: 7, scope: !498)
!508 = !DILocation(line: 55, column: 13, scope: !505)
!509 = !DILocation(line: 55, column: 12, scope: !505)
!510 = !DILocation(line: 55, column: 17, scope: !505)
!511 = !DILocation(line: 55, column: 28, scope: !505)
!512 = !DILocation(line: 55, column: 26, scope: !505)
!513 = !DILocation(line: 55, column: 4, scope: !505)
!514 = !DILocation(line: 56, column: 2, scope: !498)
!515 = !DILocation(line: 52, column: 32, scope: !494)
!516 = !DILocation(line: 52, column: 31, scope: !494)
!517 = !DILocation(line: 52, column: 36, scope: !494)
!518 = !DILocation(line: 52, column: 26, scope: !494)
!519 = !DILocation(line: 52, column: 28, scope: !494)
!520 = !DILocation(line: 52, column: 2, scope: !494)
!521 = distinct !{!521, !496, !522, !409, !410}
!522 = !DILocation(line: 56, column: 2, scope: !488)
!523 = !DILocation(line: 57, column: 9, scope: !473)
!524 = !DILocation(line: 57, column: 2, scope: !473)
!525 = !DILocation(line: 58, column: 1, scope: !473)
!526 = distinct !DISubprogram(name: "ebitmap_next_positive", scope: !84, file: !84, line: 65, type: !527, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{!45, !476, !478, !45}
!529 = !{!530, !531, !532, !533}
!530 = !DILocalVariable(name: "e", arg: 1, scope: !526, file: !84, line: 65, type: !476)
!531 = !DILocalVariable(name: "n", arg: 2, scope: !526, file: !84, line: 66, type: !478)
!532 = !DILocalVariable(name: "bit", arg: 3, scope: !526, file: !84, line: 67, type: !45)
!533 = !DILocalVariable(name: "ofs", scope: !526, file: !84, line: 69, type: !45)
!534 = !DILocation(line: 65, column: 72, scope: !526)
!535 = !DILocation(line: 66, column: 30, scope: !526)
!536 = !DILocation(line: 67, column: 21, scope: !526)
!537 = !DILocation(line: 69, column: 2, scope: !526)
!538 = !DILocation(line: 69, column: 15, scope: !526)
!539 = !DILocation(line: 71, column: 24, scope: !526)
!540 = !DILocation(line: 71, column: 23, scope: !526)
!541 = !DILocation(line: 71, column: 28, scope: !526)
!542 = !DILocation(line: 71, column: 22, scope: !526)
!543 = !DILocation(line: 71, column: 48, scope: !526)
!544 = !DILocation(line: 71, column: 56, scope: !526)
!545 = !DILocation(line: 71, column: 55, scope: !526)
!546 = !DILocation(line: 71, column: 60, scope: !526)
!547 = !DILocation(line: 71, column: 52, scope: !526)
!548 = !DILocation(line: 71, column: 69, scope: !526)
!549 = !DILocation(line: 71, column: 8, scope: !526)
!550 = !DILocation(line: 71, column: 6, scope: !526)
!551 = !DILocation(line: 72, column: 6, scope: !552)
!552 = distinct !DILexicalBlock(scope: !526, file: !84, line: 72, column: 6)
!553 = !DILocation(line: 72, column: 10, scope: !552)
!554 = !DILocation(line: 72, column: 6, scope: !526)
!555 = !DILocation(line: 73, column: 10, scope: !552)
!556 = !DILocation(line: 73, column: 18, scope: !552)
!557 = !DILocation(line: 73, column: 17, scope: !552)
!558 = !DILocation(line: 73, column: 22, scope: !552)
!559 = !DILocation(line: 73, column: 14, scope: !552)
!560 = !DILocation(line: 73, column: 3, scope: !552)
!561 = !DILocation(line: 75, column: 14, scope: !562)
!562 = distinct !DILexicalBlock(scope: !526, file: !84, line: 75, column: 2)
!563 = !DILocation(line: 75, column: 13, scope: !562)
!564 = !DILocation(line: 75, column: 18, scope: !562)
!565 = !DILocation(line: 75, column: 8, scope: !562)
!566 = !DILocation(line: 75, column: 10, scope: !562)
!567 = !DILocation(line: 75, column: 7, scope: !562)
!568 = !DILocation(line: 75, column: 25, scope: !569)
!569 = distinct !DILexicalBlock(scope: !562, file: !84, line: 75, column: 2)
!570 = !DILocation(line: 75, column: 24, scope: !569)
!571 = !DILocation(line: 75, column: 2, scope: !562)
!572 = !DILocation(line: 76, column: 26, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !84, line: 75, column: 45)
!574 = !DILocation(line: 76, column: 25, scope: !573)
!575 = !DILocation(line: 76, column: 30, scope: !573)
!576 = !DILocation(line: 76, column: 24, scope: !573)
!577 = !DILocation(line: 76, column: 9, scope: !573)
!578 = !DILocation(line: 76, column: 7, scope: !573)
!579 = !DILocation(line: 77, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !573, file: !84, line: 77, column: 7)
!581 = !DILocation(line: 77, column: 11, scope: !580)
!582 = !DILocation(line: 77, column: 7, scope: !573)
!583 = !DILocation(line: 78, column: 11, scope: !580)
!584 = !DILocation(line: 78, column: 19, scope: !580)
!585 = !DILocation(line: 78, column: 18, scope: !580)
!586 = !DILocation(line: 78, column: 23, scope: !580)
!587 = !DILocation(line: 78, column: 15, scope: !580)
!588 = !DILocation(line: 78, column: 4, scope: !580)
!589 = !DILocation(line: 79, column: 2, scope: !573)
!590 = !DILocation(line: 75, column: 35, scope: !569)
!591 = !DILocation(line: 75, column: 34, scope: !569)
!592 = !DILocation(line: 75, column: 39, scope: !569)
!593 = !DILocation(line: 75, column: 29, scope: !569)
!594 = !DILocation(line: 75, column: 31, scope: !569)
!595 = !DILocation(line: 75, column: 2, scope: !569)
!596 = distinct !{!596, !571, !597, !409, !410}
!597 = !DILocation(line: 79, column: 2, scope: !562)
!598 = !DILocation(line: 80, column: 9, scope: !526)
!599 = !DILocation(line: 80, column: 2, scope: !526)
!600 = !DILocation(line: 81, column: 1, scope: !526)
!601 = distinct !DISubprogram(name: "mls_level_eq", scope: !130, file: !130, line: 30, type: !602, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !606)
!602 = !DISubroutineType(types: !603)
!603 = !{!4, !604, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!606 = !{!607, !608}
!607 = !DILocalVariable(name: "l1", arg: 1, scope: !601, file: !130, line: 30, type: !604)
!608 = !DILocalVariable(name: "l2", arg: 2, scope: !601, file: !130, line: 30, type: !604)
!609 = !DILocation(line: 30, column: 56, scope: !601)
!610 = !DILocation(line: 30, column: 84, scope: !601)
!611 = !DILocation(line: 32, column: 11, scope: !601)
!612 = !DILocation(line: 32, column: 15, scope: !601)
!613 = !DILocation(line: 32, column: 23, scope: !601)
!614 = !DILocation(line: 32, column: 27, scope: !601)
!615 = !DILocation(line: 32, column: 20, scope: !601)
!616 = !DILocation(line: 32, column: 33, scope: !601)
!617 = !DILocation(line: 33, column: 16, scope: !601)
!618 = !DILocation(line: 33, column: 20, scope: !601)
!619 = !DILocation(line: 33, column: 26, scope: !601)
!620 = !DILocation(line: 33, column: 30, scope: !601)
!621 = !DILocation(line: 33, column: 3, scope: !601)
!622 = !DILocation(line: 0, scope: !601)
!623 = !DILocation(line: 32, column: 2, scope: !601)
!624 = distinct !DISubprogram(name: "mls_sid_to_context", scope: !1, file: !1, line: 89, type: !625, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !18, !304, !52}
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!628 = !DILocalVariable(name: "p", arg: 1, scope: !624, file: !1, line: 89, type: !18)
!629 = !DILocalVariable(name: "context", arg: 2, scope: !624, file: !1, line: 90, type: !304)
!630 = !DILocalVariable(name: "scontext", arg: 3, scope: !624, file: !1, line: 91, type: !52)
!631 = !DILocalVariable(name: "scontextp", scope: !624, file: !1, line: 93, type: !53)
!632 = !DILocalVariable(name: "nm", scope: !624, file: !1, line: 93, type: !53)
!633 = !DILocalVariable(name: "i", scope: !624, file: !1, line: 94, type: !4)
!634 = !DILocalVariable(name: "l", scope: !624, file: !1, line: 94, type: !4)
!635 = !DILocalVariable(name: "head", scope: !624, file: !1, line: 94, type: !4)
!636 = !DILocalVariable(name: "prev", scope: !624, file: !1, line: 94, type: !4)
!637 = !DILocalVariable(name: "e", scope: !624, file: !1, line: 95, type: !290)
!638 = !DILocalVariable(name: "node", scope: !624, file: !1, line: 96, type: !87)
!639 = !DILocation(line: 89, column: 42, scope: !624)
!640 = !DILocation(line: 90, column: 20, scope: !624)
!641 = !DILocation(line: 91, column: 11, scope: !624)
!642 = !DILocation(line: 93, column: 2, scope: !624)
!643 = !DILocation(line: 93, column: 8, scope: !624)
!644 = !DILocation(line: 93, column: 20, scope: !624)
!645 = !DILocation(line: 94, column: 2, scope: !624)
!646 = !DILocation(line: 94, column: 6, scope: !624)
!647 = !DILocation(line: 94, column: 9, scope: !624)
!648 = !DILocation(line: 94, column: 12, scope: !624)
!649 = !DILocation(line: 94, column: 18, scope: !624)
!650 = !DILocation(line: 95, column: 2, scope: !624)
!651 = !DILocation(line: 95, column: 18, scope: !624)
!652 = !DILocation(line: 96, column: 2, scope: !624)
!653 = !DILocation(line: 96, column: 23, scope: !624)
!654 = !DILocation(line: 98, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !624, file: !1, line: 98, column: 6)
!656 = !DILocation(line: 98, column: 10, scope: !655)
!657 = !DILocation(line: 98, column: 6, scope: !624)
!658 = !DILocation(line: 99, column: 3, scope: !655)
!659 = !DILocation(line: 101, column: 15, scope: !624)
!660 = !DILocation(line: 101, column: 14, scope: !624)
!661 = !DILocation(line: 101, column: 12, scope: !624)
!662 = !DILocation(line: 103, column: 3, scope: !624)
!663 = !DILocation(line: 103, column: 13, scope: !624)
!664 = !DILocation(line: 104, column: 11, scope: !624)
!665 = !DILocation(line: 106, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !624, file: !1, line: 106, column: 2)
!667 = !DILocation(line: 106, column: 7, scope: !666)
!668 = !DILocation(line: 106, column: 14, scope: !669)
!669 = distinct !DILexicalBlock(scope: !666, file: !1, line: 106, column: 2)
!670 = !DILocation(line: 106, column: 16, scope: !669)
!671 = !DILocation(line: 106, column: 2, scope: !666)
!672 = !DILocation(line: 107, column: 10, scope: !673)
!673 = distinct !DILexicalBlock(scope: !669, file: !1, line: 106, column: 26)
!674 = !DILocation(line: 107, column: 30, scope: !673)
!675 = !DILocation(line: 108, column: 9, scope: !673)
!676 = !DILocation(line: 108, column: 18, scope: !673)
!677 = !DILocation(line: 108, column: 24, scope: !673)
!678 = !DILocation(line: 108, column: 30, scope: !673)
!679 = !DILocation(line: 108, column: 33, scope: !673)
!680 = !DILocation(line: 108, column: 38, scope: !673)
!681 = !DILocation(line: 107, column: 21, scope: !673)
!682 = !DILocation(line: 107, column: 3, scope: !673)
!683 = !DILocation(line: 109, column: 23, scope: !673)
!684 = !DILocation(line: 109, column: 16, scope: !673)
!685 = !DILocation(line: 109, column: 13, scope: !673)
!686 = !DILocation(line: 112, column: 8, scope: !673)
!687 = !DILocation(line: 113, column: 8, scope: !673)
!688 = !DILocation(line: 114, column: 8, scope: !673)
!689 = !DILocation(line: 114, column: 17, scope: !673)
!690 = !DILocation(line: 114, column: 23, scope: !673)
!691 = !DILocation(line: 114, column: 29, scope: !673)
!692 = !DILocation(line: 114, column: 32, scope: !673)
!693 = !DILocation(line: 114, column: 5, scope: !673)
!694 = !DILocation(line: 115, column: 3, scope: !695)
!695 = distinct !DILexicalBlock(scope: !673, file: !1, line: 115, column: 3)
!696 = !DILocation(line: 115, column: 3, scope: !697)
!697 = distinct !DILexicalBlock(scope: !695, file: !1, line: 115, column: 3)
!698 = !DILocation(line: 116, column: 8, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !1, line: 116, column: 8)
!700 = distinct !DILexicalBlock(scope: !697, file: !1, line: 115, column: 45)
!701 = !DILocation(line: 116, column: 12, scope: !699)
!702 = !DILocation(line: 116, column: 10, scope: !699)
!703 = !DILocation(line: 116, column: 17, scope: !699)
!704 = !DILocation(line: 116, column: 8, scope: !700)
!705 = !DILocation(line: 118, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !1, line: 118, column: 9)
!707 = distinct !DILexicalBlock(scope: !699, file: !1, line: 116, column: 22)
!708 = !DILocation(line: 118, column: 17, scope: !706)
!709 = !DILocation(line: 118, column: 14, scope: !706)
!710 = !DILocation(line: 118, column: 9, scope: !707)
!711 = !DILocation(line: 119, column: 10, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !1, line: 119, column: 10)
!713 = distinct !DILexicalBlock(scope: !706, file: !1, line: 118, column: 23)
!714 = !DILocation(line: 119, column: 17, scope: !712)
!715 = !DILocation(line: 119, column: 15, scope: !712)
!716 = !DILocation(line: 119, column: 22, scope: !712)
!717 = !DILocation(line: 119, column: 10, scope: !713)
!718 = !DILocation(line: 120, column: 17, scope: !712)
!719 = !DILocation(line: 120, column: 20, scope: !712)
!720 = !DILocation(line: 120, column: 7, scope: !712)
!721 = !DILocation(line: 122, column: 17, scope: !712)
!722 = !DILocation(line: 122, column: 20, scope: !712)
!723 = !DILocation(line: 123, column: 20, scope: !713)
!724 = !DILocation(line: 123, column: 33, scope: !713)
!725 = !DILocation(line: 123, column: 11, scope: !713)
!726 = !DILocation(line: 123, column: 9, scope: !713)
!727 = !DILocation(line: 124, column: 13, scope: !713)
!728 = !DILocation(line: 124, column: 24, scope: !713)
!729 = !DILocation(line: 124, column: 6, scope: !713)
!730 = !DILocation(line: 125, column: 26, scope: !713)
!731 = !DILocation(line: 125, column: 19, scope: !713)
!732 = !DILocation(line: 125, column: 16, scope: !713)
!733 = !DILocation(line: 126, column: 5, scope: !713)
!734 = !DILocation(line: 127, column: 9, scope: !735)
!735 = distinct !DILexicalBlock(scope: !707, file: !1, line: 127, column: 9)
!736 = !DILocation(line: 127, column: 14, scope: !735)
!737 = !DILocation(line: 127, column: 9, scope: !707)
!738 = !DILocation(line: 128, column: 16, scope: !735)
!739 = !DILocation(line: 128, column: 19, scope: !735)
!740 = !DILocation(line: 128, column: 6, scope: !735)
!741 = !DILocation(line: 130, column: 16, scope: !735)
!742 = !DILocation(line: 130, column: 19, scope: !735)
!743 = !DILocation(line: 131, column: 19, scope: !707)
!744 = !DILocation(line: 131, column: 32, scope: !707)
!745 = !DILocation(line: 131, column: 10, scope: !707)
!746 = !DILocation(line: 131, column: 8, scope: !707)
!747 = !DILocation(line: 132, column: 12, scope: !707)
!748 = !DILocation(line: 132, column: 23, scope: !707)
!749 = !DILocation(line: 132, column: 5, scope: !707)
!750 = !DILocation(line: 133, column: 25, scope: !707)
!751 = !DILocation(line: 133, column: 18, scope: !707)
!752 = !DILocation(line: 133, column: 15, scope: !707)
!753 = !DILocation(line: 134, column: 12, scope: !707)
!754 = !DILocation(line: 134, column: 10, scope: !707)
!755 = !DILocation(line: 135, column: 4, scope: !707)
!756 = !DILocation(line: 136, column: 11, scope: !700)
!757 = !DILocation(line: 136, column: 9, scope: !700)
!758 = !DILocation(line: 137, column: 3, scope: !700)
!759 = distinct !{!759, !694, !760, !409, !410}
!760 = !DILocation(line: 137, column: 3, scope: !695)
!761 = !DILocation(line: 139, column: 7, scope: !762)
!762 = distinct !DILexicalBlock(scope: !673, file: !1, line: 139, column: 7)
!763 = !DILocation(line: 139, column: 15, scope: !762)
!764 = !DILocation(line: 139, column: 12, scope: !762)
!765 = !DILocation(line: 139, column: 7, scope: !673)
!766 = !DILocation(line: 140, column: 8, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 140, column: 8)
!768 = distinct !DILexicalBlock(scope: !762, file: !1, line: 139, column: 21)
!769 = !DILocation(line: 140, column: 15, scope: !767)
!770 = !DILocation(line: 140, column: 13, scope: !767)
!771 = !DILocation(line: 140, column: 20, scope: !767)
!772 = !DILocation(line: 140, column: 8, scope: !768)
!773 = !DILocation(line: 141, column: 15, scope: !767)
!774 = !DILocation(line: 141, column: 18, scope: !767)
!775 = !DILocation(line: 141, column: 5, scope: !767)
!776 = !DILocation(line: 143, column: 15, scope: !767)
!777 = !DILocation(line: 143, column: 18, scope: !767)
!778 = !DILocation(line: 144, column: 18, scope: !768)
!779 = !DILocation(line: 144, column: 31, scope: !768)
!780 = !DILocation(line: 144, column: 9, scope: !768)
!781 = !DILocation(line: 144, column: 7, scope: !768)
!782 = !DILocation(line: 145, column: 11, scope: !768)
!783 = !DILocation(line: 145, column: 22, scope: !768)
!784 = !DILocation(line: 145, column: 4, scope: !768)
!785 = !DILocation(line: 146, column: 24, scope: !768)
!786 = !DILocation(line: 146, column: 17, scope: !768)
!787 = !DILocation(line: 146, column: 14, scope: !768)
!788 = !DILocation(line: 147, column: 3, scope: !768)
!789 = !DILocation(line: 149, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !673, file: !1, line: 149, column: 7)
!791 = !DILocation(line: 149, column: 9, scope: !790)
!792 = !DILocation(line: 149, column: 7, scope: !673)
!793 = !DILocation(line: 150, column: 22, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !1, line: 150, column: 8)
!795 = distinct !DILexicalBlock(scope: !790, file: !1, line: 149, column: 15)
!796 = !DILocation(line: 150, column: 31, scope: !794)
!797 = !DILocation(line: 150, column: 37, scope: !794)
!798 = !DILocation(line: 151, column: 8, scope: !794)
!799 = !DILocation(line: 151, column: 17, scope: !794)
!800 = !DILocation(line: 151, column: 23, scope: !794)
!801 = !DILocation(line: 150, column: 8, scope: !794)
!802 = !DILocation(line: 150, column: 8, scope: !795)
!803 = !DILocation(line: 152, column: 5, scope: !794)
!804 = !DILocation(line: 154, column: 15, scope: !794)
!805 = !DILocation(line: 154, column: 18, scope: !794)
!806 = !DILocation(line: 155, column: 3, scope: !795)
!807 = !DILocation(line: 156, column: 2, scope: !673)
!808 = !DILocation(line: 106, column: 22, scope: !669)
!809 = !DILocation(line: 106, column: 2, scope: !669)
!810 = distinct !{!810, !671, !811, !409, !410}
!811 = !DILocation(line: 156, column: 2, scope: !666)
!812 = !DILocation(line: 158, column: 14, scope: !624)
!813 = !DILocation(line: 158, column: 3, scope: !624)
!814 = !DILocation(line: 158, column: 12, scope: !624)
!815 = !DILocation(line: 159, column: 1, scope: !624)
!816 = !DISubprogram(name: "strcpy", scope: !453, file: !453, line: 63, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!817 = !DISubroutineType(types: !818)
!818 = !{!53, !53, !456}
!819 = distinct !DISubprogram(name: "mls_level_isvalid", scope: !1, file: !1, line: 161, type: !820, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !823)
!820 = !DISubroutineType(types: !821)
!821 = !{!4, !18, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!823 = !{!824, !825, !826}
!824 = !DILocalVariable(name: "p", arg: 1, scope: !819, file: !1, line: 161, type: !18)
!825 = !DILocalVariable(name: "l", arg: 2, scope: !819, file: !1, line: 161, type: !822)
!826 = !DILocalVariable(name: "levdatum", scope: !819, file: !1, line: 163, type: !827)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "level_datum", file: !20, line: 131, size: 128, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !828, file: !20, line: 132, baseType: !822, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "isalias", scope: !828, file: !20, line: 133, baseType: !149, size: 8, offset: 64)
!832 = !DILocation(line: 161, column: 40, scope: !819)
!833 = !DILocation(line: 161, column: 61, scope: !819)
!834 = !DILocation(line: 163, column: 2, scope: !819)
!835 = !DILocation(line: 163, column: 22, scope: !819)
!836 = !DILocation(line: 165, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !819, file: !1, line: 165, column: 6)
!838 = !DILocation(line: 165, column: 10, scope: !837)
!839 = !DILocation(line: 165, column: 15, scope: !837)
!840 = !DILocation(line: 165, column: 18, scope: !837)
!841 = !DILocation(line: 165, column: 21, scope: !837)
!842 = !DILocation(line: 165, column: 28, scope: !837)
!843 = !DILocation(line: 165, column: 31, scope: !837)
!844 = !DILocation(line: 165, column: 40, scope: !837)
!845 = !DILocation(line: 165, column: 26, scope: !837)
!846 = !DILocation(line: 165, column: 6, scope: !819)
!847 = !DILocation(line: 166, column: 3, scope: !837)
!848 = !DILocation(line: 167, column: 28, scope: !819)
!849 = !DILocation(line: 167, column: 31, scope: !819)
!850 = !DILocation(line: 168, column: 15, scope: !819)
!851 = !DILocation(line: 168, column: 30, scope: !819)
!852 = !DILocation(line: 168, column: 33, scope: !819)
!853 = !DILocation(line: 168, column: 38, scope: !819)
!854 = !DILocation(line: 168, column: 6, scope: !819)
!855 = !DILocation(line: 167, column: 13, scope: !819)
!856 = !DILocation(line: 167, column: 11, scope: !819)
!857 = !DILocation(line: 169, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !819, file: !1, line: 169, column: 6)
!859 = !DILocation(line: 169, column: 6, scope: !819)
!860 = !DILocation(line: 170, column: 3, scope: !858)
!861 = !DILocation(line: 177, column: 27, scope: !819)
!862 = !DILocation(line: 177, column: 37, scope: !819)
!863 = !DILocation(line: 177, column: 44, scope: !819)
!864 = !DILocation(line: 177, column: 50, scope: !819)
!865 = !DILocation(line: 177, column: 53, scope: !819)
!866 = !DILocation(line: 178, column: 5, scope: !819)
!867 = !DILocation(line: 178, column: 8, scope: !819)
!868 = !DILocation(line: 178, column: 15, scope: !819)
!869 = !DILocation(line: 177, column: 9, scope: !819)
!870 = !DILocation(line: 177, column: 2, scope: !819)
!871 = !DILocation(line: 179, column: 1, scope: !819)
!872 = !DISubprogram(name: "symtab_search", scope: !26, file: !26, line: 23, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!873 = !DISubroutineType(types: !874)
!874 = !{!3, !875, !456}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!876 = !DISubprogram(name: "ebitmap_contains", scope: !84, file: !84, line: 128, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!877 = !DISubroutineType(types: !878)
!878 = !{!4, !476, !476, !41}
!879 = distinct !DISubprogram(name: "mls_range_isvalid", scope: !1, file: !1, line: 181, type: !880, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !883)
!880 = !DISubroutineType(types: !881)
!881 = !{!4, !18, !882}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!883 = !{!884, !885}
!884 = !DILocalVariable(name: "p", arg: 1, scope: !879, file: !1, line: 181, type: !18)
!885 = !DILocalVariable(name: "r", arg: 2, scope: !879, file: !1, line: 181, type: !882)
!886 = !DILocation(line: 181, column: 40, scope: !879)
!887 = !DILocation(line: 181, column: 61, scope: !879)
!888 = !DILocation(line: 183, column: 28, scope: !879)
!889 = !DILocation(line: 183, column: 32, scope: !879)
!890 = !DILocation(line: 183, column: 35, scope: !879)
!891 = !DILocation(line: 183, column: 10, scope: !879)
!892 = !DILocation(line: 183, column: 45, scope: !879)
!893 = !DILocation(line: 184, column: 21, scope: !879)
!894 = !DILocation(line: 184, column: 25, scope: !879)
!895 = !DILocation(line: 184, column: 28, scope: !879)
!896 = !DILocation(line: 184, column: 3, scope: !879)
!897 = !DILocation(line: 184, column: 38, scope: !879)
!898 = !DILocation(line: 185, column: 18, scope: !879)
!899 = !DILocation(line: 185, column: 21, scope: !879)
!900 = !DILocation(line: 185, column: 32, scope: !879)
!901 = !DILocation(line: 185, column: 35, scope: !879)
!902 = !DILocation(line: 185, column: 3, scope: !879)
!903 = !DILocation(line: 0, scope: !879)
!904 = !DILocation(line: 183, column: 2, scope: !879)
!905 = distinct !DISubprogram(name: "mls_level_dom", scope: !130, file: !130, line: 36, type: !602, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !906)
!906 = !{!907, !908}
!907 = !DILocalVariable(name: "l1", arg: 1, scope: !905, file: !130, line: 36, type: !604)
!908 = !DILocalVariable(name: "l2", arg: 2, scope: !905, file: !130, line: 36, type: !604)
!909 = !DILocation(line: 36, column: 57, scope: !905)
!910 = !DILocation(line: 36, column: 85, scope: !905)
!911 = !DILocation(line: 38, column: 11, scope: !905)
!912 = !DILocation(line: 38, column: 15, scope: !905)
!913 = !DILocation(line: 38, column: 23, scope: !905)
!914 = !DILocation(line: 38, column: 27, scope: !905)
!915 = !DILocation(line: 38, column: 20, scope: !905)
!916 = !DILocation(line: 38, column: 33, scope: !905)
!917 = !DILocation(line: 39, column: 21, scope: !905)
!918 = !DILocation(line: 39, column: 25, scope: !905)
!919 = !DILocation(line: 39, column: 31, scope: !905)
!920 = !DILocation(line: 39, column: 35, scope: !905)
!921 = !DILocation(line: 39, column: 3, scope: !905)
!922 = !DILocation(line: 0, scope: !905)
!923 = !DILocation(line: 38, column: 2, scope: !905)
!924 = distinct !DISubprogram(name: "mls_context_isvalid", scope: !1, file: !1, line: 192, type: !16, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !925)
!925 = !{!926, !927, !928}
!926 = !DILocalVariable(name: "p", arg: 1, scope: !924, file: !1, line: 192, type: !18)
!927 = !DILocalVariable(name: "c", arg: 2, scope: !924, file: !1, line: 192, type: !304)
!928 = !DILocalVariable(name: "usrdatum", scope: !924, file: !1, line: 194, type: !122)
!929 = !DILocation(line: 192, column: 42, scope: !924)
!930 = !DILocation(line: 192, column: 61, scope: !924)
!931 = !DILocation(line: 194, column: 2, scope: !924)
!932 = !DILocation(line: 194, column: 21, scope: !924)
!933 = !DILocation(line: 196, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !924, file: !1, line: 196, column: 6)
!935 = !DILocation(line: 196, column: 10, scope: !934)
!936 = !DILocation(line: 196, column: 6, scope: !924)
!937 = !DILocation(line: 197, column: 3, scope: !934)
!938 = !DILocation(line: 199, column: 25, scope: !939)
!939 = distinct !DILexicalBlock(scope: !924, file: !1, line: 199, column: 6)
!940 = !DILocation(line: 199, column: 29, scope: !939)
!941 = !DILocation(line: 199, column: 32, scope: !939)
!942 = !DILocation(line: 199, column: 7, scope: !939)
!943 = !DILocation(line: 199, column: 6, scope: !924)
!944 = !DILocation(line: 200, column: 3, scope: !939)
!945 = !DILocation(line: 202, column: 6, scope: !946)
!946 = distinct !DILexicalBlock(scope: !924, file: !1, line: 202, column: 6)
!947 = !DILocation(line: 202, column: 9, scope: !946)
!948 = !DILocation(line: 202, column: 14, scope: !946)
!949 = !DILocation(line: 202, column: 6, scope: !924)
!950 = !DILocation(line: 203, column: 3, scope: !946)
!951 = !DILocation(line: 208, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !924, file: !1, line: 208, column: 6)
!953 = !DILocation(line: 208, column: 10, scope: !952)
!954 = !DILocation(line: 208, column: 15, scope: !952)
!955 = !DILocation(line: 208, column: 18, scope: !952)
!956 = !DILocation(line: 208, column: 21, scope: !952)
!957 = !DILocation(line: 208, column: 28, scope: !952)
!958 = !DILocation(line: 208, column: 31, scope: !952)
!959 = !DILocation(line: 208, column: 39, scope: !952)
!960 = !DILocation(line: 208, column: 26, scope: !952)
!961 = !DILocation(line: 208, column: 6, scope: !924)
!962 = !DILocation(line: 209, column: 3, scope: !952)
!963 = !DILocation(line: 210, column: 13, scope: !924)
!964 = !DILocation(line: 210, column: 16, scope: !924)
!965 = !DILocation(line: 210, column: 35, scope: !924)
!966 = !DILocation(line: 210, column: 38, scope: !924)
!967 = !DILocation(line: 210, column: 43, scope: !924)
!968 = !DILocation(line: 210, column: 11, scope: !924)
!969 = !DILocation(line: 211, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !924, file: !1, line: 211, column: 6)
!971 = !DILocation(line: 211, column: 6, scope: !924)
!972 = !DILocation(line: 212, column: 3, scope: !970)
!973 = !DILocation(line: 214, column: 2, scope: !924)
!974 = !DILocation(line: 215, column: 1, scope: !924)
!975 = distinct !DISubprogram(name: "mls_context_to_sid", scope: !1, file: !1, line: 233, type: !976, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1089)
!976 = !DISubroutineType(types: !977)
!977 = !{!4, !18, !54, !53, !304, !978, !41}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab", file: !980, line: 75, size: 57664, elements: !981)
!980 = !DIFile(filename: "security/selinux/ss/sidtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b761d113dc6474b3b68d9ff03af2a03a")
!981 = !{!982, !1017, !1018, !1030, !1033, !1068, !1069, !1075, !1076, !1084}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "roots", scope: !979, file: !980, line: 80, baseType: !983, size: 256)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !984, size: 256, elements: !243)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sidtab_entry_inner", file: !980, line: 30, size: 64, elements: !985)
!985 = !{!986, !994}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_inner", scope: !984, file: !980, line: 31, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab_node_inner", file: !980, line: 58, size: 32768, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !988, file: !980, line: 59, baseType: !991, size: 32768)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !984, size: 32768, elements: !992)
!992 = !{!993}
!993 = !DISubrange(count: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_leaf", scope: !984, file: !980, line: 32, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab_node_leaf", file: !980, line: 54, size: 32448, elements: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !996, file: !980, line: 55, baseType: !999, size: 32448)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 32448, elements: !1015)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab_entry", file: !980, line: 20, size: 832, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1008}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "sid", scope: !1000, file: !980, line: 21, baseType: !41, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1000, file: !980, line: 22, baseType: !41, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1000, file: !980, line: 23, baseType: !267, size: 576, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1000, file: !980, line: 25, baseType: !1006, size: 64, offset: 640)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab_str_cache", file: !980, line: 25, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1000, file: !980, line: 27, baseType: !1009, size: 128, offset: 704)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !295, line: 198, size: 128, elements: !1010)
!1010 = !{!1011, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1009, file: !295, line: 199, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1009, file: !295, line: 199, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1015 = !{!1016}
!1016 = !DISubrange(count: 39)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !979, file: !980, line: 85, baseType: !41, size: 32, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "convert", scope: !979, file: !980, line: 87, baseType: !1019, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab_convert_params", file: !980, line: 67, size: 128, elements: !1021)
!1021 = !{!1022, !1029}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1020, file: !980, line: 68, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "convert_context_args", file: !1025, line: 32, size: 128, elements: !1026)
!1025 = !DIFile(filename: "security/selinux/ss/services.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95c22d0eb909c06c21ef22714eadce2e")
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "oldp", scope: !1024, file: !1025, line: 33, baseType: !18, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "newp", scope: !1024, file: !1025, line: 34, baseType: !18, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1020, file: !980, line: 69, baseType: !978, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !979, file: !980, line: 88, baseType: !1031, size: 8, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !295, line: 35, baseType: !1032)
!1032 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !979, file: !980, line: 89, baseType: !1034, size: 32, offset: 416)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1035, line: 29, baseType: !1036)
!1035 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1035, line: 17, size: 32, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !1035, line: 18, baseType: !1039, size: 32)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !1035, line: 18, size: 32, elements: !1040)
!1040 = !{!1041}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1039, file: !1035, line: 19, baseType: !1042, size: 32)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !1043, line: 14, size: 32, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!1044 = !{!1045}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1042, file: !1043, line: 15, baseType: !1046, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !1047, line: 44, baseType: !1048)
!1047 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !1047, line: 14, size: 32, elements: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1048, file: !1047, line: 15, baseType: !1051, size: 32)
!1051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1048, file: !1047, line: 15, size: 32, elements: !1052)
!1052 = !{!1053, !1058, !1063}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1051, file: !1047, line: 16, baseType: !1054, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !295, line: 174, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 172, size: 32, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1055, file: !295, line: 173, baseType: !4, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1047, line: 24, baseType: !1059, size: 16)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !1047, line: 24, size: 16, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1059, file: !1047, line: 25, baseType: !182, size: 8)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1059, file: !1047, line: 26, baseType: !182, size: 8, offset: 8)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1047, line: 28, baseType: !1064, size: 32)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !1047, line: 28, size: 32, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1064, file: !1047, line: 29, baseType: !164, size: 16)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1064, file: !1047, line: 30, baseType: !164, size: 16, offset: 16)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cache_free_slots", scope: !979, file: !980, line: 93, baseType: !41, size: 32, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lru_list", scope: !979, file: !980, line: 94, baseType: !1070, size: 128, offset: 512)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !295, line: 190, size: 128, elements: !1071)
!1071 = !{!1072, !1074}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1070, file: !295, line: 191, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1070, file: !295, line: 191, baseType: !1073, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock", scope: !979, file: !980, line: 95, baseType: !1034, size: 32, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "isids", scope: !979, file: !980, line: 99, baseType: !1077, size: 24192, offset: 704)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1078, size: 24192, elements: !1082)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab_isid_entry", file: !980, line: 62, size: 896, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1078, file: !980, line: 63, baseType: !4, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1078, file: !980, line: 64, baseType: !1000, size: 832, offset: 64)
!1082 = !{!1083}
!1083 = !DISubrange(count: 27)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "context_to_sid", scope: !979, file: !980, line: 102, baseType: !1085, size: 32768, offset: 24896)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1086, size: 32768, elements: !992)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !295, line: 194, size: 64, elements: !1087)
!1087 = !{!1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1086, file: !295, line: 195, baseType: !1012, size: 64)
!1089 = !{!1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1107, !1108, !1109, !1110, !1111, !1113}
!1090 = !DILocalVariable(name: "pol", arg: 1, scope: !975, file: !1, line: 233, type: !18)
!1091 = !DILocalVariable(name: "oldc", arg: 2, scope: !975, file: !1, line: 234, type: !54)
!1092 = !DILocalVariable(name: "scontext", arg: 3, scope: !975, file: !1, line: 235, type: !53)
!1093 = !DILocalVariable(name: "context", arg: 4, scope: !975, file: !1, line: 236, type: !304)
!1094 = !DILocalVariable(name: "s", arg: 5, scope: !975, file: !1, line: 237, type: !978)
!1095 = !DILocalVariable(name: "def_sid", arg: 6, scope: !975, file: !1, line: 238, type: !41)
!1096 = !DILocalVariable(name: "sensitivity", scope: !975, file: !1, line: 240, type: !53)
!1097 = !DILocalVariable(name: "cur_cat", scope: !975, file: !1, line: 240, type: !53)
!1098 = !DILocalVariable(name: "next_cat", scope: !975, file: !1, line: 240, type: !53)
!1099 = !DILocalVariable(name: "rngptr", scope: !975, file: !1, line: 240, type: !53)
!1100 = !DILocalVariable(name: "levdatum", scope: !975, file: !1, line: 241, type: !827)
!1101 = !DILocalVariable(name: "catdatum", scope: !975, file: !1, line: 242, type: !1102)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cat_datum", file: !20, line: 137, size: 64, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1103, file: !20, line: 138, baseType: !41, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "isalias", scope: !1103, file: !20, line: 139, baseType: !149, size: 8, offset: 32)
!1107 = !DILocalVariable(name: "rngdatum", scope: !975, file: !1, line: 242, type: !1102)
!1108 = !DILocalVariable(name: "i", scope: !975, file: !1, line: 243, type: !41)
!1109 = !DILocalVariable(name: "l", scope: !975, file: !1, line: 244, type: !4)
!1110 = !DILocalVariable(name: "rc", scope: !975, file: !1, line: 244, type: !4)
!1111 = !DILocalVariable(name: "rangep", scope: !975, file: !1, line: 245, type: !1112)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !138)
!1113 = !DILocalVariable(name: "defcon", scope: !1114, file: !1, line: 262, type: !304)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 261, column: 13)
!1115 = distinct !DILexicalBlock(scope: !975, file: !1, line: 261, column: 6)
!1116 = !DILocation(line: 233, column: 41, scope: !975)
!1117 = !DILocation(line: 234, column: 15, scope: !975)
!1118 = !DILocation(line: 235, column: 16, scope: !975)
!1119 = !DILocation(line: 236, column: 26, scope: !975)
!1120 = !DILocation(line: 237, column: 25, scope: !975)
!1121 = !DILocation(line: 238, column: 14, scope: !975)
!1122 = !DILocation(line: 240, column: 2, scope: !975)
!1123 = !DILocation(line: 240, column: 8, scope: !975)
!1124 = !DILocation(line: 240, column: 22, scope: !975)
!1125 = !DILocation(line: 240, column: 32, scope: !975)
!1126 = !DILocation(line: 240, column: 43, scope: !975)
!1127 = !DILocation(line: 241, column: 2, scope: !975)
!1128 = !DILocation(line: 241, column: 22, scope: !975)
!1129 = !DILocation(line: 242, column: 2, scope: !975)
!1130 = !DILocation(line: 242, column: 20, scope: !975)
!1131 = !DILocation(line: 242, column: 31, scope: !975)
!1132 = !DILocation(line: 243, column: 2, scope: !975)
!1133 = !DILocation(line: 243, column: 6, scope: !975)
!1134 = !DILocation(line: 244, column: 2, scope: !975)
!1135 = !DILocation(line: 244, column: 6, scope: !975)
!1136 = !DILocation(line: 244, column: 9, scope: !975)
!1137 = !DILocation(line: 245, column: 2, scope: !975)
!1138 = !DILocation(line: 245, column: 8, scope: !975)
!1139 = !DILocation(line: 247, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !975, file: !1, line: 247, column: 6)
!1141 = !DILocation(line: 247, column: 12, scope: !1140)
!1142 = !DILocation(line: 247, column: 6, scope: !975)
!1143 = !DILocation(line: 252, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 252, column: 7)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 247, column: 25)
!1146 = !DILocation(line: 252, column: 12, scope: !1144)
!1147 = !DILocation(line: 252, column: 15, scope: !1144)
!1148 = !DILocation(line: 252, column: 23, scope: !1144)
!1149 = !DILocation(line: 252, column: 7, scope: !1145)
!1150 = !DILocation(line: 253, column: 4, scope: !1144)
!1151 = !DILocation(line: 254, column: 3, scope: !1145)
!1152 = !DILocation(line: 261, column: 7, scope: !1115)
!1153 = !DILocation(line: 261, column: 6, scope: !975)
!1154 = !DILocation(line: 262, column: 3, scope: !1114)
!1155 = !DILocation(line: 262, column: 19, scope: !1114)
!1156 = !DILocation(line: 264, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 264, column: 7)
!1158 = !DILocation(line: 264, column: 15, scope: !1157)
!1159 = !DILocation(line: 264, column: 7, scope: !1114)
!1160 = !DILocation(line: 265, column: 4, scope: !1157)
!1161 = !DILocation(line: 267, column: 26, scope: !1114)
!1162 = !DILocation(line: 267, column: 29, scope: !1114)
!1163 = !DILocation(line: 267, column: 12, scope: !1114)
!1164 = !DILocation(line: 267, column: 10, scope: !1114)
!1165 = !DILocation(line: 268, column: 8, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 268, column: 7)
!1167 = !DILocation(line: 268, column: 7, scope: !1114)
!1168 = !DILocation(line: 269, column: 4, scope: !1166)
!1169 = !DILocation(line: 271, column: 26, scope: !1114)
!1170 = !DILocation(line: 271, column: 35, scope: !1114)
!1171 = !DILocation(line: 271, column: 10, scope: !1114)
!1172 = !DILocation(line: 271, column: 3, scope: !1114)
!1173 = !DILocation(line: 272, column: 2, scope: !1115)
!1174 = !DILocation(line: 278, column: 14, scope: !975)
!1175 = !DILocation(line: 278, column: 2, scope: !975)
!1176 = !DILocation(line: 278, column: 12, scope: !975)
!1177 = !DILocation(line: 279, column: 21, scope: !975)
!1178 = !DILocation(line: 279, column: 14, scope: !975)
!1179 = !DILocation(line: 279, column: 2, scope: !975)
!1180 = !DILocation(line: 279, column: 12, scope: !975)
!1181 = !DILocation(line: 280, column: 6, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !975, file: !1, line: 280, column: 6)
!1183 = !DILocation(line: 280, column: 6, scope: !975)
!1184 = !DILocation(line: 281, column: 3, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 280, column: 17)
!1186 = !DILocation(line: 281, column: 16, scope: !1185)
!1187 = !DILocation(line: 282, column: 3, scope: !1185)
!1188 = !DILocation(line: 282, column: 12, scope: !1185)
!1189 = !DILocation(line: 283, column: 2, scope: !1185)
!1190 = !DILocation(line: 286, column: 9, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !975, file: !1, line: 286, column: 2)
!1192 = !DILocation(line: 286, column: 7, scope: !1191)
!1193 = !DILocation(line: 286, column: 14, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !1, line: 286, column: 2)
!1195 = !DILocation(line: 286, column: 16, scope: !1194)
!1196 = !DILocation(line: 286, column: 2, scope: !1191)
!1197 = !DILocation(line: 288, column: 24, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 286, column: 26)
!1199 = !DILocation(line: 288, column: 17, scope: !1198)
!1200 = !DILocation(line: 288, column: 15, scope: !1198)
!1201 = !DILocation(line: 289, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 289, column: 7)
!1203 = !DILocation(line: 289, column: 19, scope: !1202)
!1204 = !DILocation(line: 289, column: 7, scope: !1198)
!1205 = !DILocation(line: 290, column: 4, scope: !1202)
!1206 = !DILocation(line: 291, column: 21, scope: !1198)
!1207 = !DILocation(line: 291, column: 14, scope: !1198)
!1208 = !DILocation(line: 291, column: 12, scope: !1198)
!1209 = !DILocation(line: 292, column: 7, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 292, column: 7)
!1211 = !DILocation(line: 292, column: 7, scope: !1198)
!1212 = !DILocation(line: 293, column: 14, scope: !1210)
!1213 = !DILocation(line: 293, column: 18, scope: !1210)
!1214 = !DILocation(line: 293, column: 4, scope: !1210)
!1215 = !DILocation(line: 296, column: 29, scope: !1198)
!1216 = !DILocation(line: 296, column: 34, scope: !1198)
!1217 = !DILocation(line: 296, column: 44, scope: !1198)
!1218 = !DILocation(line: 296, column: 14, scope: !1198)
!1219 = !DILocation(line: 296, column: 12, scope: !1198)
!1220 = !DILocation(line: 297, column: 8, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 297, column: 7)
!1222 = !DILocation(line: 297, column: 7, scope: !1198)
!1223 = !DILocation(line: 298, column: 4, scope: !1221)
!1224 = !DILocation(line: 299, column: 34, scope: !1198)
!1225 = !DILocation(line: 299, column: 44, scope: !1198)
!1226 = !DILocation(line: 299, column: 51, scope: !1198)
!1227 = !DILocation(line: 299, column: 3, scope: !1198)
!1228 = !DILocation(line: 299, column: 12, scope: !1198)
!1229 = !DILocation(line: 299, column: 18, scope: !1198)
!1230 = !DILocation(line: 299, column: 24, scope: !1198)
!1231 = !DILocation(line: 299, column: 27, scope: !1198)
!1232 = !DILocation(line: 299, column: 32, scope: !1198)
!1233 = !DILocation(line: 302, column: 3, scope: !1198)
!1234 = !DILocation(line: 302, column: 10, scope: !1198)
!1235 = !DILocation(line: 302, column: 19, scope: !1198)
!1236 = !DILocation(line: 303, column: 14, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 302, column: 28)
!1238 = !DILocation(line: 303, column: 12, scope: !1237)
!1239 = !DILocation(line: 304, column: 22, scope: !1237)
!1240 = !DILocation(line: 304, column: 15, scope: !1237)
!1241 = !DILocation(line: 304, column: 13, scope: !1237)
!1242 = !DILocation(line: 305, column: 8, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 305, column: 8)
!1244 = !DILocation(line: 305, column: 17, scope: !1243)
!1245 = !DILocation(line: 305, column: 8, scope: !1237)
!1246 = !DILocation(line: 306, column: 15, scope: !1243)
!1247 = !DILocation(line: 306, column: 19, scope: !1243)
!1248 = !DILocation(line: 306, column: 5, scope: !1243)
!1249 = !DILocation(line: 309, column: 20, scope: !1237)
!1250 = !DILocation(line: 309, column: 13, scope: !1237)
!1251 = !DILocation(line: 309, column: 11, scope: !1237)
!1252 = !DILocation(line: 310, column: 8, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 310, column: 8)
!1254 = !DILocation(line: 310, column: 15, scope: !1253)
!1255 = !DILocation(line: 310, column: 8, scope: !1237)
!1256 = !DILocation(line: 312, column: 12, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 310, column: 24)
!1258 = !DILocation(line: 312, column: 15, scope: !1257)
!1259 = !DILocation(line: 313, column: 4, scope: !1257)
!1260 = !DILocation(line: 315, column: 30, scope: !1237)
!1261 = !DILocation(line: 315, column: 35, scope: !1237)
!1262 = !DILocation(line: 315, column: 43, scope: !1237)
!1263 = !DILocation(line: 315, column: 15, scope: !1237)
!1264 = !DILocation(line: 315, column: 13, scope: !1237)
!1265 = !DILocation(line: 316, column: 9, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 316, column: 8)
!1267 = !DILocation(line: 316, column: 8, scope: !1237)
!1268 = !DILocation(line: 317, column: 5, scope: !1266)
!1269 = !DILocation(line: 319, column: 26, scope: !1237)
!1270 = !DILocation(line: 319, column: 35, scope: !1237)
!1271 = !DILocation(line: 319, column: 41, scope: !1237)
!1272 = !DILocation(line: 319, column: 47, scope: !1237)
!1273 = !DILocation(line: 319, column: 50, scope: !1237)
!1274 = !DILocation(line: 320, column: 11, scope: !1237)
!1275 = !DILocation(line: 320, column: 21, scope: !1237)
!1276 = !DILocation(line: 320, column: 27, scope: !1237)
!1277 = !DILocation(line: 319, column: 9, scope: !1237)
!1278 = !DILocation(line: 319, column: 7, scope: !1237)
!1279 = !DILocation(line: 321, column: 8, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 321, column: 8)
!1281 = !DILocation(line: 321, column: 8, scope: !1237)
!1282 = !DILocation(line: 322, column: 12, scope: !1280)
!1283 = !DILocation(line: 322, column: 5, scope: !1280)
!1284 = !DILocation(line: 325, column: 8, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 325, column: 8)
!1286 = !DILocation(line: 325, column: 15, scope: !1285)
!1287 = !DILocation(line: 325, column: 8, scope: !1237)
!1288 = !DILocation(line: 326, column: 5, scope: !1285)
!1289 = distinct !{!1289, !1233, !1290, !409, !410}
!1290 = !DILocation(line: 340, column: 3, scope: !1198)
!1291 = !DILocation(line: 328, column: 30, scope: !1237)
!1292 = !DILocation(line: 328, column: 35, scope: !1237)
!1293 = !DILocation(line: 328, column: 43, scope: !1237)
!1294 = !DILocation(line: 328, column: 15, scope: !1237)
!1295 = !DILocation(line: 328, column: 13, scope: !1237)
!1296 = !DILocation(line: 329, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 329, column: 8)
!1298 = !DILocation(line: 329, column: 8, scope: !1237)
!1299 = !DILocation(line: 330, column: 5, scope: !1297)
!1300 = !DILocation(line: 332, column: 8, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 332, column: 8)
!1302 = !DILocation(line: 332, column: 18, scope: !1301)
!1303 = !DILocation(line: 332, column: 27, scope: !1301)
!1304 = !DILocation(line: 332, column: 37, scope: !1301)
!1305 = !DILocation(line: 332, column: 24, scope: !1301)
!1306 = !DILocation(line: 332, column: 8, scope: !1237)
!1307 = !DILocation(line: 333, column: 5, scope: !1301)
!1308 = !DILocation(line: 335, column: 13, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 335, column: 4)
!1310 = !DILocation(line: 335, column: 23, scope: !1309)
!1311 = !DILocation(line: 335, column: 11, scope: !1309)
!1312 = !DILocation(line: 335, column: 9, scope: !1309)
!1313 = !DILocation(line: 335, column: 30, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 335, column: 4)
!1315 = !DILocation(line: 335, column: 34, scope: !1314)
!1316 = !DILocation(line: 335, column: 44, scope: !1314)
!1317 = !DILocation(line: 335, column: 32, scope: !1314)
!1318 = !DILocation(line: 335, column: 4, scope: !1309)
!1319 = !DILocation(line: 336, column: 27, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 335, column: 56)
!1321 = !DILocation(line: 336, column: 36, scope: !1320)
!1322 = !DILocation(line: 336, column: 42, scope: !1320)
!1323 = !DILocation(line: 336, column: 48, scope: !1320)
!1324 = !DILocation(line: 336, column: 51, scope: !1320)
!1325 = !DILocation(line: 336, column: 56, scope: !1320)
!1326 = !DILocation(line: 336, column: 10, scope: !1320)
!1327 = !DILocation(line: 336, column: 8, scope: !1320)
!1328 = !DILocation(line: 337, column: 9, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 337, column: 9)
!1330 = !DILocation(line: 337, column: 9, scope: !1320)
!1331 = !DILocation(line: 338, column: 13, scope: !1329)
!1332 = !DILocation(line: 338, column: 6, scope: !1329)
!1333 = !DILocation(line: 339, column: 4, scope: !1320)
!1334 = !DILocation(line: 335, column: 52, scope: !1314)
!1335 = !DILocation(line: 335, column: 4, scope: !1314)
!1336 = distinct !{!1336, !1318, !1337, !409, !410}
!1337 = !DILocation(line: 339, column: 4, scope: !1309)
!1338 = !DILocation(line: 341, column: 2, scope: !1198)
!1339 = !DILocation(line: 286, column: 22, scope: !1194)
!1340 = !DILocation(line: 286, column: 2, scope: !1194)
!1341 = distinct !{!1341, !1196, !1342, !409, !410}
!1342 = !DILocation(line: 341, column: 2, scope: !1191)
!1343 = !DILocation(line: 344, column: 6, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !975, file: !1, line: 344, column: 6)
!1345 = !DILocation(line: 344, column: 16, scope: !1344)
!1346 = !DILocation(line: 344, column: 6, scope: !975)
!1347 = !DILocation(line: 345, column: 34, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 344, column: 25)
!1349 = !DILocation(line: 345, column: 43, scope: !1348)
!1350 = !DILocation(line: 345, column: 49, scope: !1348)
!1351 = !DILocation(line: 345, column: 58, scope: !1348)
!1352 = !DILocation(line: 345, column: 3, scope: !1348)
!1353 = !DILocation(line: 345, column: 12, scope: !1348)
!1354 = !DILocation(line: 345, column: 18, scope: !1348)
!1355 = !DILocation(line: 345, column: 27, scope: !1348)
!1356 = !DILocation(line: 345, column: 32, scope: !1348)
!1357 = !DILocation(line: 346, column: 21, scope: !1348)
!1358 = !DILocation(line: 346, column: 30, scope: !1348)
!1359 = !DILocation(line: 346, column: 36, scope: !1348)
!1360 = !DILocation(line: 346, column: 45, scope: !1348)
!1361 = !DILocation(line: 347, column: 7, scope: !1348)
!1362 = !DILocation(line: 347, column: 16, scope: !1348)
!1363 = !DILocation(line: 347, column: 22, scope: !1348)
!1364 = !DILocation(line: 347, column: 31, scope: !1348)
!1365 = !DILocation(line: 346, column: 8, scope: !1348)
!1366 = !DILocation(line: 346, column: 6, scope: !1348)
!1367 = !DILocation(line: 348, column: 7, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 348, column: 7)
!1369 = !DILocation(line: 348, column: 7, scope: !1348)
!1370 = !DILocation(line: 349, column: 11, scope: !1368)
!1371 = !DILocation(line: 349, column: 4, scope: !1368)
!1372 = !DILocation(line: 350, column: 2, scope: !1348)
!1373 = !DILocation(line: 352, column: 2, scope: !975)
!1374 = !DILocation(line: 353, column: 1, scope: !975)
!1375 = distinct !DISubprogram(name: "sidtab_search", scope: !980, file: !980, line: 110, type: !1376, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1378)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!304, !978, !41}
!1378 = !{!1379, !1380, !1381}
!1379 = !DILocalVariable(name: "s", arg: 1, scope: !1375, file: !980, line: 110, type: !978)
!1380 = !DILocalVariable(name: "sid", arg: 2, scope: !1375, file: !980, line: 110, type: !41)
!1381 = !DILocalVariable(name: "entry", scope: !1375, file: !980, line: 112, type: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1383 = !DILocation(line: 110, column: 60, scope: !1375)
!1384 = !DILocation(line: 110, column: 67, scope: !1375)
!1385 = !DILocation(line: 112, column: 2, scope: !1375)
!1386 = !DILocation(line: 112, column: 23, scope: !1375)
!1387 = !DILocation(line: 112, column: 51, scope: !1375)
!1388 = !DILocation(line: 112, column: 54, scope: !1375)
!1389 = !DILocation(line: 112, column: 31, scope: !1375)
!1390 = !DILocation(line: 114, column: 9, scope: !1375)
!1391 = !DILocation(line: 114, column: 18, scope: !1375)
!1392 = !DILocation(line: 114, column: 25, scope: !1375)
!1393 = !DILocation(line: 115, column: 1, scope: !1375)
!1394 = !DILocation(line: 114, column: 2, scope: !1375)
!1395 = distinct !DISubprogram(name: "mls_context_cpy", scope: !268, file: !268, line: 41, type: !1396, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1400)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!4, !304, !1398}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!1400 = !{!1401, !1402, !1403, !1404}
!1401 = !DILocalVariable(name: "dst", arg: 1, scope: !1395, file: !268, line: 41, type: !304)
!1402 = !DILocalVariable(name: "src", arg: 2, scope: !1395, file: !268, line: 41, type: !1398)
!1403 = !DILocalVariable(name: "rc", scope: !1395, file: !268, line: 43, type: !4)
!1404 = !DILabel(scope: !1395, name: "out", file: !268, line: 54)
!1405 = !DILocation(line: 41, column: 51, scope: !1395)
!1406 = !DILocation(line: 41, column: 78, scope: !1395)
!1407 = !DILocation(line: 43, column: 2, scope: !1395)
!1408 = !DILocation(line: 43, column: 6, scope: !1395)
!1409 = !DILocation(line: 45, column: 29, scope: !1395)
!1410 = !DILocation(line: 45, column: 34, scope: !1395)
!1411 = !DILocation(line: 45, column: 40, scope: !1395)
!1412 = !DILocation(line: 45, column: 49, scope: !1395)
!1413 = !DILocation(line: 45, column: 2, scope: !1395)
!1414 = !DILocation(line: 45, column: 7, scope: !1395)
!1415 = !DILocation(line: 45, column: 13, scope: !1395)
!1416 = !DILocation(line: 45, column: 22, scope: !1395)
!1417 = !DILocation(line: 45, column: 27, scope: !1395)
!1418 = !DILocation(line: 46, column: 20, scope: !1395)
!1419 = !DILocation(line: 46, column: 25, scope: !1395)
!1420 = !DILocation(line: 46, column: 31, scope: !1395)
!1421 = !DILocation(line: 46, column: 40, scope: !1395)
!1422 = !DILocation(line: 46, column: 46, scope: !1395)
!1423 = !DILocation(line: 46, column: 51, scope: !1395)
!1424 = !DILocation(line: 46, column: 57, scope: !1395)
!1425 = !DILocation(line: 46, column: 66, scope: !1395)
!1426 = !DILocation(line: 46, column: 7, scope: !1395)
!1427 = !DILocation(line: 46, column: 5, scope: !1395)
!1428 = !DILocation(line: 47, column: 6, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1395, file: !268, line: 47, column: 6)
!1430 = !DILocation(line: 47, column: 6, scope: !1395)
!1431 = !DILocation(line: 48, column: 3, scope: !1429)
!1432 = !DILocation(line: 50, column: 29, scope: !1395)
!1433 = !DILocation(line: 50, column: 34, scope: !1395)
!1434 = !DILocation(line: 50, column: 40, scope: !1395)
!1435 = !DILocation(line: 50, column: 49, scope: !1395)
!1436 = !DILocation(line: 50, column: 2, scope: !1395)
!1437 = !DILocation(line: 50, column: 7, scope: !1395)
!1438 = !DILocation(line: 50, column: 13, scope: !1395)
!1439 = !DILocation(line: 50, column: 22, scope: !1395)
!1440 = !DILocation(line: 50, column: 27, scope: !1395)
!1441 = !DILocation(line: 51, column: 20, scope: !1395)
!1442 = !DILocation(line: 51, column: 25, scope: !1395)
!1443 = !DILocation(line: 51, column: 31, scope: !1395)
!1444 = !DILocation(line: 51, column: 40, scope: !1395)
!1445 = !DILocation(line: 51, column: 46, scope: !1395)
!1446 = !DILocation(line: 51, column: 51, scope: !1395)
!1447 = !DILocation(line: 51, column: 57, scope: !1395)
!1448 = !DILocation(line: 51, column: 66, scope: !1395)
!1449 = !DILocation(line: 51, column: 7, scope: !1395)
!1450 = !DILocation(line: 51, column: 5, scope: !1395)
!1451 = !DILocation(line: 52, column: 6, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1395, file: !268, line: 52, column: 6)
!1453 = !DILocation(line: 52, column: 6, scope: !1395)
!1454 = !DILocation(line: 53, column: 20, scope: !1452)
!1455 = !DILocation(line: 53, column: 25, scope: !1452)
!1456 = !DILocation(line: 53, column: 31, scope: !1452)
!1457 = !DILocation(line: 53, column: 40, scope: !1452)
!1458 = !DILocation(line: 53, column: 3, scope: !1452)
!1459 = !DILocation(line: 54, column: 1, scope: !1395)
!1460 = !DILocation(line: 55, column: 9, scope: !1395)
!1461 = !DILocation(line: 56, column: 1, scope: !1395)
!1462 = !DILocation(line: 55, column: 2, scope: !1395)
!1463 = !DISubprogram(name: "strchr", scope: !453, file: !453, line: 100, type: !1464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!53, !456, !4}
!1466 = !DISubprogram(name: "ebitmap_set_bit", scope: !84, file: !84, line: 130, type: !1467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!4, !290, !5, !4}
!1469 = !DISubprogram(name: "ebitmap_cpy", scope: !84, file: !84, line: 126, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!4, !290, !476}
!1472 = distinct !DISubprogram(name: "mls_from_string", scope: !1, file: !1, line: 361, type: !1473, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1476)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!4, !18, !53, !304, !1475}
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !295, line: 154, baseType: !45)
!1476 = !{!1477, !1478, !1479, !1480, !1481, !1482}
!1477 = !DILocalVariable(name: "p", arg: 1, scope: !1472, file: !1, line: 361, type: !18)
!1478 = !DILocalVariable(name: "str", arg: 2, scope: !1472, file: !1, line: 361, type: !53)
!1479 = !DILocalVariable(name: "context", arg: 3, scope: !1472, file: !1, line: 361, type: !304)
!1480 = !DILocalVariable(name: "gfp_mask", arg: 4, scope: !1472, file: !1, line: 362, type: !1475)
!1481 = !DILocalVariable(name: "tmpstr", scope: !1472, file: !1, line: 364, type: !53)
!1482 = !DILocalVariable(name: "rc", scope: !1472, file: !1, line: 365, type: !4)
!1483 = !DILocation(line: 361, column: 38, scope: !1472)
!1484 = !DILocation(line: 361, column: 47, scope: !1472)
!1485 = !DILocation(line: 361, column: 68, scope: !1472)
!1486 = !DILocation(line: 362, column: 13, scope: !1472)
!1487 = !DILocation(line: 364, column: 2, scope: !1472)
!1488 = !DILocation(line: 364, column: 8, scope: !1472)
!1489 = !DILocation(line: 365, column: 2, scope: !1472)
!1490 = !DILocation(line: 365, column: 6, scope: !1472)
!1491 = !DILocation(line: 367, column: 7, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1472, file: !1, line: 367, column: 6)
!1493 = !DILocation(line: 367, column: 10, scope: !1492)
!1494 = !DILocation(line: 367, column: 6, scope: !1472)
!1495 = !DILocation(line: 368, column: 3, scope: !1492)
!1496 = !DILocation(line: 370, column: 19, scope: !1472)
!1497 = !DILocation(line: 370, column: 24, scope: !1472)
!1498 = !DILocation(line: 370, column: 11, scope: !1472)
!1499 = !DILocation(line: 370, column: 9, scope: !1472)
!1500 = !DILocation(line: 371, column: 7, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1472, file: !1, line: 371, column: 6)
!1502 = !DILocation(line: 371, column: 6, scope: !1472)
!1503 = !DILocation(line: 372, column: 6, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 371, column: 15)
!1505 = !DILocation(line: 373, column: 2, scope: !1504)
!1506 = !DILocation(line: 374, column: 27, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 373, column: 9)
!1508 = !DILocation(line: 374, column: 35, scope: !1507)
!1509 = !DILocation(line: 374, column: 43, scope: !1507)
!1510 = !DILocation(line: 374, column: 8, scope: !1507)
!1511 = !DILocation(line: 374, column: 6, scope: !1507)
!1512 = !DILocation(line: 376, column: 9, scope: !1507)
!1513 = !DILocation(line: 376, column: 3, scope: !1507)
!1514 = !DILocation(line: 379, column: 9, scope: !1472)
!1515 = !DILocation(line: 379, column: 2, scope: !1472)
!1516 = !DILocation(line: 380, column: 1, scope: !1472)
!1517 = !DISubprogram(name: "kstrdup", scope: !453, file: !453, line: 216, type: !1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!53, !456, !1475}
!1520 = !DISubprogram(name: "kfree", scope: !1521, file: !1521, line: 227, type: !1522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1521 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1524}
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1526 = distinct !DISubprogram(name: "mls_range_set", scope: !1, file: !1, line: 385, type: !1527, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1529)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!4, !304, !882}
!1529 = !{!1530, !1531, !1532, !1533}
!1530 = !DILocalVariable(name: "context", arg: 1, scope: !1526, file: !1, line: 385, type: !304)
!1531 = !DILocalVariable(name: "range", arg: 2, scope: !1526, file: !1, line: 386, type: !882)
!1532 = !DILocalVariable(name: "l", scope: !1526, file: !1, line: 388, type: !4)
!1533 = !DILocalVariable(name: "rc", scope: !1526, file: !1, line: 388, type: !4)
!1534 = !DILocation(line: 385, column: 35, scope: !1526)
!1535 = !DILocation(line: 386, column: 23, scope: !1526)
!1536 = !DILocation(line: 388, column: 2, scope: !1526)
!1537 = !DILocation(line: 388, column: 6, scope: !1526)
!1538 = !DILocation(line: 388, column: 9, scope: !1526)
!1539 = !DILocation(line: 391, column: 9, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1526, file: !1, line: 391, column: 2)
!1541 = !DILocation(line: 391, column: 7, scope: !1540)
!1542 = !DILocation(line: 391, column: 14, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 391, column: 2)
!1544 = !DILocation(line: 391, column: 16, scope: !1543)
!1545 = !DILocation(line: 391, column: 2, scope: !1540)
!1546 = !DILocation(line: 392, column: 34, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 391, column: 26)
!1548 = !DILocation(line: 392, column: 41, scope: !1547)
!1549 = !DILocation(line: 392, column: 47, scope: !1547)
!1550 = !DILocation(line: 392, column: 50, scope: !1547)
!1551 = !DILocation(line: 392, column: 3, scope: !1547)
!1552 = !DILocation(line: 392, column: 12, scope: !1547)
!1553 = !DILocation(line: 392, column: 18, scope: !1547)
!1554 = !DILocation(line: 392, column: 24, scope: !1547)
!1555 = !DILocation(line: 392, column: 27, scope: !1547)
!1556 = !DILocation(line: 392, column: 32, scope: !1547)
!1557 = !DILocation(line: 393, column: 21, scope: !1547)
!1558 = !DILocation(line: 393, column: 30, scope: !1547)
!1559 = !DILocation(line: 393, column: 36, scope: !1547)
!1560 = !DILocation(line: 393, column: 42, scope: !1547)
!1561 = !DILocation(line: 393, column: 45, scope: !1547)
!1562 = !DILocation(line: 394, column: 7, scope: !1547)
!1563 = !DILocation(line: 394, column: 14, scope: !1547)
!1564 = !DILocation(line: 394, column: 20, scope: !1547)
!1565 = !DILocation(line: 394, column: 23, scope: !1547)
!1566 = !DILocation(line: 393, column: 8, scope: !1547)
!1567 = !DILocation(line: 393, column: 6, scope: !1547)
!1568 = !DILocation(line: 395, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1547, file: !1, line: 395, column: 7)
!1570 = !DILocation(line: 395, column: 7, scope: !1547)
!1571 = !DILocation(line: 396, column: 4, scope: !1569)
!1572 = !DILocation(line: 397, column: 2, scope: !1547)
!1573 = !DILocation(line: 391, column: 22, scope: !1543)
!1574 = !DILocation(line: 391, column: 2, scope: !1543)
!1575 = distinct !{!1575, !1545, !1576, !409, !410}
!1576 = !DILocation(line: 397, column: 2, scope: !1540)
!1577 = !DILocation(line: 399, column: 9, scope: !1526)
!1578 = !DILocation(line: 400, column: 1, scope: !1526)
!1579 = !DILocation(line: 399, column: 2, scope: !1526)
!1580 = distinct !DISubprogram(name: "mls_setup_user_range", scope: !1, file: !1, line: 402, type: !1581, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!4, !18, !304, !122, !304}
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1591, !1592, !1593, !1594, !1595, !1596}
!1584 = !DILocalVariable(name: "p", arg: 1, scope: !1580, file: !1, line: 402, type: !18)
!1585 = !DILocalVariable(name: "fromcon", arg: 2, scope: !1580, file: !1, line: 403, type: !304)
!1586 = !DILocalVariable(name: "user", arg: 3, scope: !1580, file: !1, line: 403, type: !122)
!1587 = !DILocalVariable(name: "usercon", arg: 4, scope: !1580, file: !1, line: 404, type: !304)
!1588 = !DILocalVariable(name: "fromcon_sen", scope: !1589, file: !1, line: 407, type: !822)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 406, column: 22)
!1590 = distinct !DILexicalBlock(scope: !1580, file: !1, line: 406, column: 6)
!1591 = !DILocalVariable(name: "fromcon_clr", scope: !1589, file: !1, line: 408, type: !822)
!1592 = !DILocalVariable(name: "user_low", scope: !1589, file: !1, line: 409, type: !822)
!1593 = !DILocalVariable(name: "user_clr", scope: !1589, file: !1, line: 410, type: !822)
!1594 = !DILocalVariable(name: "user_def", scope: !1589, file: !1, line: 411, type: !822)
!1595 = !DILocalVariable(name: "usercon_sen", scope: !1589, file: !1, line: 412, type: !822)
!1596 = !DILocalVariable(name: "usercon_clr", scope: !1589, file: !1, line: 413, type: !822)
!1597 = !DILocation(line: 402, column: 43, scope: !1580)
!1598 = !DILocation(line: 403, column: 21, scope: !1580)
!1599 = !DILocation(line: 403, column: 49, scope: !1580)
!1600 = !DILocation(line: 404, column: 21, scope: !1580)
!1601 = !DILocation(line: 406, column: 6, scope: !1590)
!1602 = !DILocation(line: 406, column: 9, scope: !1590)
!1603 = !DILocation(line: 406, column: 6, scope: !1580)
!1604 = !DILocation(line: 407, column: 3, scope: !1589)
!1605 = !DILocation(line: 407, column: 21, scope: !1589)
!1606 = !DILocation(line: 407, column: 37, scope: !1589)
!1607 = !DILocation(line: 407, column: 46, scope: !1589)
!1608 = !DILocation(line: 407, column: 52, scope: !1589)
!1609 = !DILocation(line: 408, column: 3, scope: !1589)
!1610 = !DILocation(line: 408, column: 21, scope: !1589)
!1611 = !DILocation(line: 408, column: 37, scope: !1589)
!1612 = !DILocation(line: 408, column: 46, scope: !1589)
!1613 = !DILocation(line: 408, column: 52, scope: !1589)
!1614 = !DILocation(line: 409, column: 3, scope: !1589)
!1615 = !DILocation(line: 409, column: 21, scope: !1589)
!1616 = !DILocation(line: 409, column: 34, scope: !1589)
!1617 = !DILocation(line: 409, column: 40, scope: !1589)
!1618 = !DILocation(line: 409, column: 46, scope: !1589)
!1619 = !DILocation(line: 410, column: 3, scope: !1589)
!1620 = !DILocation(line: 410, column: 21, scope: !1589)
!1621 = !DILocation(line: 410, column: 34, scope: !1589)
!1622 = !DILocation(line: 410, column: 40, scope: !1589)
!1623 = !DILocation(line: 410, column: 46, scope: !1589)
!1624 = !DILocation(line: 411, column: 3, scope: !1589)
!1625 = !DILocation(line: 411, column: 21, scope: !1589)
!1626 = !DILocation(line: 411, column: 34, scope: !1589)
!1627 = !DILocation(line: 411, column: 40, scope: !1589)
!1628 = !DILocation(line: 412, column: 3, scope: !1589)
!1629 = !DILocation(line: 412, column: 21, scope: !1589)
!1630 = !DILocation(line: 412, column: 37, scope: !1589)
!1631 = !DILocation(line: 412, column: 46, scope: !1589)
!1632 = !DILocation(line: 412, column: 52, scope: !1589)
!1633 = !DILocation(line: 413, column: 3, scope: !1589)
!1634 = !DILocation(line: 413, column: 21, scope: !1589)
!1635 = !DILocation(line: 413, column: 37, scope: !1589)
!1636 = !DILocation(line: 413, column: 46, scope: !1589)
!1637 = !DILocation(line: 413, column: 52, scope: !1589)
!1638 = !DILocation(line: 416, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1589, file: !1, line: 416, column: 7)
!1640 = !DILocation(line: 416, column: 7, scope: !1589)
!1641 = !DILocation(line: 417, column: 5, scope: !1639)
!1642 = !DILocation(line: 417, column: 20, scope: !1639)
!1643 = !DILocation(line: 417, column: 19, scope: !1639)
!1644 = !DILocation(line: 417, column: 4, scope: !1639)
!1645 = !DILocation(line: 418, column: 12, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 418, column: 12)
!1647 = !DILocation(line: 418, column: 12, scope: !1639)
!1648 = !DILocation(line: 419, column: 5, scope: !1646)
!1649 = !DILocation(line: 419, column: 20, scope: !1646)
!1650 = !DILocation(line: 419, column: 19, scope: !1646)
!1651 = !DILocation(line: 419, column: 4, scope: !1646)
!1652 = !DILocation(line: 420, column: 12, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 420, column: 12)
!1654 = !DILocation(line: 420, column: 12, scope: !1646)
!1655 = !DILocation(line: 421, column: 5, scope: !1653)
!1656 = !DILocation(line: 421, column: 20, scope: !1653)
!1657 = !DILocation(line: 421, column: 19, scope: !1653)
!1658 = !DILocation(line: 421, column: 4, scope: !1653)
!1659 = !DILocation(line: 423, column: 4, scope: !1653)
!1660 = !DILocation(line: 430, column: 21, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1589, file: !1, line: 430, column: 7)
!1662 = !DILocation(line: 430, column: 31, scope: !1661)
!1663 = !DILocation(line: 430, column: 7, scope: !1661)
!1664 = !DILocation(line: 430, column: 7, scope: !1589)
!1665 = !DILocation(line: 431, column: 5, scope: !1661)
!1666 = !DILocation(line: 431, column: 20, scope: !1661)
!1667 = !DILocation(line: 431, column: 19, scope: !1661)
!1668 = !DILocation(line: 431, column: 4, scope: !1661)
!1669 = !DILocation(line: 432, column: 26, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 432, column: 12)
!1671 = !DILocation(line: 432, column: 39, scope: !1670)
!1672 = !DILocation(line: 432, column: 12, scope: !1670)
!1673 = !DILocation(line: 432, column: 12, scope: !1661)
!1674 = !DILocation(line: 433, column: 5, scope: !1670)
!1675 = !DILocation(line: 433, column: 20, scope: !1670)
!1676 = !DILocation(line: 433, column: 19, scope: !1670)
!1677 = !DILocation(line: 433, column: 4, scope: !1670)
!1678 = !DILocation(line: 435, column: 4, scope: !1670)
!1679 = !DILocation(line: 436, column: 2, scope: !1590)
!1680 = !DILocation(line: 436, column: 2, scope: !1589)
!1681 = !DILocation(line: 438, column: 2, scope: !1580)
!1682 = !DILocation(line: 439, column: 1, scope: !1580)
!1683 = distinct !DISubprogram(name: "mls_convert_context", scope: !1, file: !1, line: 447, type: !1684, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!4, !18, !18, !304, !304}
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1700}
!1687 = !DILocalVariable(name: "oldp", arg: 1, scope: !1683, file: !1, line: 447, type: !18)
!1688 = !DILocalVariable(name: "newp", arg: 2, scope: !1683, file: !1, line: 448, type: !18)
!1689 = !DILocalVariable(name: "oldc", arg: 3, scope: !1683, file: !1, line: 449, type: !304)
!1690 = !DILocalVariable(name: "newc", arg: 4, scope: !1683, file: !1, line: 450, type: !304)
!1691 = !DILocalVariable(name: "levdatum", scope: !1683, file: !1, line: 452, type: !827)
!1692 = !DILocalVariable(name: "catdatum", scope: !1683, file: !1, line: 453, type: !1102)
!1693 = !DILocalVariable(name: "node", scope: !1683, file: !1, line: 454, type: !87)
!1694 = !DILocalVariable(name: "i", scope: !1683, file: !1, line: 455, type: !41)
!1695 = !DILocalVariable(name: "l", scope: !1683, file: !1, line: 456, type: !4)
!1696 = !DILocalVariable(name: "name", scope: !1697, file: !1, line: 462, type: !53)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !1, line: 461, column: 26)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !1, line: 461, column: 2)
!1699 = distinct !DILexicalBlock(scope: !1683, file: !1, line: 461, column: 2)
!1700 = !DILocalVariable(name: "rc", scope: !1701, file: !1, line: 473, type: !4)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 472, column: 21)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 471, column: 3)
!1703 = distinct !DILexicalBlock(scope: !1697, file: !1, line: 471, column: 3)
!1704 = !DILocation(line: 447, column: 42, scope: !1683)
!1705 = !DILocation(line: 448, column: 21, scope: !1683)
!1706 = !DILocation(line: 449, column: 20, scope: !1683)
!1707 = !DILocation(line: 450, column: 20, scope: !1683)
!1708 = !DILocation(line: 452, column: 2, scope: !1683)
!1709 = !DILocation(line: 452, column: 22, scope: !1683)
!1710 = !DILocation(line: 453, column: 2, scope: !1683)
!1711 = !DILocation(line: 453, column: 20, scope: !1683)
!1712 = !DILocation(line: 454, column: 2, scope: !1683)
!1713 = !DILocation(line: 454, column: 23, scope: !1683)
!1714 = !DILocation(line: 455, column: 2, scope: !1683)
!1715 = !DILocation(line: 455, column: 6, scope: !1683)
!1716 = !DILocation(line: 456, column: 2, scope: !1683)
!1717 = !DILocation(line: 456, column: 6, scope: !1683)
!1718 = !DILocation(line: 458, column: 7, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1683, file: !1, line: 458, column: 6)
!1720 = !DILocation(line: 458, column: 13, scope: !1719)
!1721 = !DILocation(line: 458, column: 25, scope: !1719)
!1722 = !DILocation(line: 458, column: 29, scope: !1719)
!1723 = !DILocation(line: 458, column: 35, scope: !1719)
!1724 = !DILocation(line: 458, column: 6, scope: !1683)
!1725 = !DILocation(line: 459, column: 3, scope: !1719)
!1726 = !DILocation(line: 461, column: 9, scope: !1699)
!1727 = !DILocation(line: 461, column: 7, scope: !1699)
!1728 = !DILocation(line: 461, column: 14, scope: !1698)
!1729 = !DILocation(line: 461, column: 16, scope: !1698)
!1730 = !DILocation(line: 461, column: 2, scope: !1699)
!1731 = !DILocation(line: 462, column: 3, scope: !1697)
!1732 = !DILocation(line: 462, column: 9, scope: !1697)
!1733 = !DILocation(line: 462, column: 25, scope: !1697)
!1734 = !DILocation(line: 463, column: 11, scope: !1697)
!1735 = !DILocation(line: 463, column: 17, scope: !1697)
!1736 = !DILocation(line: 463, column: 23, scope: !1697)
!1737 = !DILocation(line: 463, column: 29, scope: !1697)
!1738 = !DILocation(line: 463, column: 32, scope: !1697)
!1739 = !DILocation(line: 463, column: 37, scope: !1697)
!1740 = !DILocation(line: 462, column: 16, scope: !1697)
!1741 = !DILocation(line: 465, column: 29, scope: !1697)
!1742 = !DILocation(line: 465, column: 35, scope: !1697)
!1743 = !DILocation(line: 465, column: 45, scope: !1697)
!1744 = !DILocation(line: 465, column: 14, scope: !1697)
!1745 = !DILocation(line: 465, column: 12, scope: !1697)
!1746 = !DILocation(line: 467, column: 8, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1697, file: !1, line: 467, column: 7)
!1748 = !DILocation(line: 467, column: 7, scope: !1697)
!1749 = !DILocation(line: 468, column: 4, scope: !1747)
!1750 = !DILocation(line: 469, column: 31, scope: !1697)
!1751 = !DILocation(line: 469, column: 41, scope: !1697)
!1752 = !DILocation(line: 469, column: 48, scope: !1697)
!1753 = !DILocation(line: 469, column: 3, scope: !1697)
!1754 = !DILocation(line: 469, column: 9, scope: !1697)
!1755 = !DILocation(line: 469, column: 15, scope: !1697)
!1756 = !DILocation(line: 469, column: 21, scope: !1697)
!1757 = !DILocation(line: 469, column: 24, scope: !1697)
!1758 = !DILocation(line: 469, column: 29, scope: !1697)
!1759 = !DILocation(line: 471, column: 3, scope: !1703)
!1760 = !DILocation(line: 471, column: 3, scope: !1702)
!1761 = !DILocation(line: 473, column: 4, scope: !1701)
!1762 = !DILocation(line: 473, column: 8, scope: !1701)
!1763 = !DILocation(line: 475, column: 30, scope: !1701)
!1764 = !DILocation(line: 475, column: 36, scope: !1701)
!1765 = !DILocation(line: 476, column: 17, scope: !1701)
!1766 = !DILocation(line: 476, column: 33, scope: !1701)
!1767 = !DILocation(line: 476, column: 8, scope: !1701)
!1768 = !DILocation(line: 475, column: 15, scope: !1701)
!1769 = !DILocation(line: 475, column: 13, scope: !1701)
!1770 = !DILocation(line: 477, column: 9, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 477, column: 8)
!1772 = !DILocation(line: 477, column: 8, scope: !1701)
!1773 = !DILocation(line: 478, column: 5, scope: !1771)
!1774 = !DILocation(line: 479, column: 26, scope: !1701)
!1775 = !DILocation(line: 479, column: 32, scope: !1701)
!1776 = !DILocation(line: 479, column: 38, scope: !1701)
!1777 = !DILocation(line: 479, column: 44, scope: !1701)
!1778 = !DILocation(line: 479, column: 47, scope: !1701)
!1779 = !DILocation(line: 480, column: 11, scope: !1701)
!1780 = !DILocation(line: 480, column: 21, scope: !1701)
!1781 = !DILocation(line: 480, column: 27, scope: !1701)
!1782 = !DILocation(line: 479, column: 9, scope: !1701)
!1783 = !DILocation(line: 479, column: 7, scope: !1701)
!1784 = !DILocation(line: 481, column: 8, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 481, column: 8)
!1786 = !DILocation(line: 481, column: 8, scope: !1701)
!1787 = !DILocation(line: 482, column: 12, scope: !1785)
!1788 = !DILocation(line: 482, column: 5, scope: !1785)
!1789 = !DILocation(line: 483, column: 3, scope: !1702)
!1790 = !DILocation(line: 483, column: 3, scope: !1701)
!1791 = distinct !{!1791, !1759, !1792, !409, !410}
!1792 = !DILocation(line: 483, column: 3, scope: !1703)
!1793 = !DILocation(line: 484, column: 2, scope: !1698)
!1794 = !DILocation(line: 484, column: 2, scope: !1697)
!1795 = !DILocation(line: 461, column: 22, scope: !1698)
!1796 = !DILocation(line: 461, column: 2, scope: !1698)
!1797 = distinct !{!1797, !1730, !1798, !409, !410}
!1798 = !DILocation(line: 484, column: 2, scope: !1699)
!1799 = !DILocation(line: 486, column: 2, scope: !1683)
!1800 = !DILocation(line: 487, column: 1, scope: !1683)
!1801 = distinct !DISubprogram(name: "mls_compute_sid", scope: !1, file: !1, line: 489, type: !1802, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!4, !18, !304, !304, !164, !41, !304, !1031}
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1818, !1819, !1820}
!1805 = !DILocalVariable(name: "p", arg: 1, scope: !1801, file: !1, line: 489, type: !18)
!1806 = !DILocalVariable(name: "scontext", arg: 2, scope: !1801, file: !1, line: 490, type: !304)
!1807 = !DILocalVariable(name: "tcontext", arg: 3, scope: !1801, file: !1, line: 491, type: !304)
!1808 = !DILocalVariable(name: "tclass", arg: 4, scope: !1801, file: !1, line: 492, type: !164)
!1809 = !DILocalVariable(name: "specified", arg: 5, scope: !1801, file: !1, line: 493, type: !41)
!1810 = !DILocalVariable(name: "newcontext", arg: 6, scope: !1801, file: !1, line: 494, type: !304)
!1811 = !DILocalVariable(name: "sock", arg: 7, scope: !1801, file: !1, line: 495, type: !1031)
!1812 = !DILocalVariable(name: "rtr", scope: !1801, file: !1, line: 497, type: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range_trans", file: !20, line: 142, size: 96, elements: !1814)
!1814 = !{!1815, !1816, !1817}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "source_type", scope: !1813, file: !20, line: 143, baseType: !41, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !1813, file: !20, line: 144, baseType: !41, size: 32, offset: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "target_class", scope: !1813, file: !20, line: 145, baseType: !41, size: 32, offset: 64)
!1818 = !DILocalVariable(name: "r", scope: !1801, file: !1, line: 498, type: !882)
!1819 = !DILocalVariable(name: "cladatum", scope: !1801, file: !1, line: 499, type: !57)
!1820 = !DILocalVariable(name: "default_range", scope: !1801, file: !1, line: 500, type: !54)
!1821 = !DILocation(line: 489, column: 38, scope: !1801)
!1822 = !DILocation(line: 490, column: 23, scope: !1801)
!1823 = !DILocation(line: 491, column: 23, scope: !1801)
!1824 = !DILocation(line: 492, column: 11, scope: !1801)
!1825 = !DILocation(line: 493, column: 11, scope: !1801)
!1826 = !DILocation(line: 494, column: 23, scope: !1801)
!1827 = !DILocation(line: 495, column: 12, scope: !1801)
!1828 = !DILocation(line: 497, column: 2, scope: !1801)
!1829 = !DILocation(line: 497, column: 21, scope: !1801)
!1830 = !DILocation(line: 498, column: 2, scope: !1801)
!1831 = !DILocation(line: 498, column: 20, scope: !1801)
!1832 = !DILocation(line: 499, column: 2, scope: !1801)
!1833 = !DILocation(line: 499, column: 22, scope: !1801)
!1834 = !DILocation(line: 500, column: 2, scope: !1801)
!1835 = !DILocation(line: 500, column: 7, scope: !1801)
!1836 = !DILocation(line: 502, column: 7, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 502, column: 6)
!1838 = !DILocation(line: 502, column: 10, scope: !1837)
!1839 = !DILocation(line: 502, column: 6, scope: !1801)
!1840 = !DILocation(line: 503, column: 3, scope: !1837)
!1841 = !DILocation(line: 505, column: 10, scope: !1801)
!1842 = !DILocation(line: 505, column: 2, scope: !1801)
!1843 = !DILocation(line: 508, column: 21, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 505, column: 21)
!1845 = !DILocation(line: 508, column: 31, scope: !1844)
!1846 = !DILocation(line: 508, column: 7, scope: !1844)
!1847 = !DILocation(line: 508, column: 19, scope: !1844)
!1848 = !DILocation(line: 509, column: 21, scope: !1844)
!1849 = !DILocation(line: 509, column: 31, scope: !1844)
!1850 = !DILocation(line: 509, column: 7, scope: !1844)
!1851 = !DILocation(line: 509, column: 19, scope: !1844)
!1852 = !DILocation(line: 510, column: 22, scope: !1844)
!1853 = !DILocation(line: 510, column: 7, scope: !1844)
!1854 = !DILocation(line: 510, column: 20, scope: !1844)
!1855 = !DILocation(line: 511, column: 31, scope: !1844)
!1856 = !DILocation(line: 511, column: 7, scope: !1844)
!1857 = !DILocation(line: 511, column: 5, scope: !1844)
!1858 = !DILocation(line: 512, column: 7, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 512, column: 7)
!1860 = !DILocation(line: 512, column: 7, scope: !1844)
!1861 = !DILocation(line: 513, column: 25, scope: !1859)
!1862 = !DILocation(line: 513, column: 37, scope: !1859)
!1863 = !DILocation(line: 513, column: 11, scope: !1859)
!1864 = !DILocation(line: 513, column: 4, scope: !1859)
!1865 = !DILocation(line: 515, column: 7, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 515, column: 7)
!1867 = !DILocation(line: 515, column: 14, scope: !1866)
!1868 = !DILocation(line: 515, column: 17, scope: !1866)
!1869 = !DILocation(line: 515, column: 27, scope: !1866)
!1870 = !DILocation(line: 515, column: 30, scope: !1866)
!1871 = !DILocation(line: 515, column: 40, scope: !1866)
!1872 = !DILocation(line: 515, column: 24, scope: !1866)
!1873 = !DILocation(line: 515, column: 7, scope: !1844)
!1874 = !DILocation(line: 516, column: 15, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1866, file: !1, line: 515, column: 47)
!1876 = !DILocation(line: 516, column: 18, scope: !1875)
!1877 = !DILocation(line: 516, column: 38, scope: !1875)
!1878 = !DILocation(line: 516, column: 45, scope: !1875)
!1879 = !DILocation(line: 516, column: 13, scope: !1875)
!1880 = !DILocation(line: 517, column: 8, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1875, file: !1, line: 517, column: 8)
!1882 = !DILocation(line: 517, column: 8, scope: !1875)
!1883 = !DILocation(line: 518, column: 21, scope: !1881)
!1884 = !DILocation(line: 518, column: 31, scope: !1881)
!1885 = !DILocation(line: 518, column: 19, scope: !1881)
!1886 = !DILocation(line: 518, column: 5, scope: !1881)
!1887 = !DILocation(line: 519, column: 3, scope: !1875)
!1888 = !DILocation(line: 521, column: 11, scope: !1844)
!1889 = !DILocation(line: 521, column: 3, scope: !1844)
!1890 = !DILocation(line: 523, column: 31, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 521, column: 26)
!1892 = !DILocation(line: 523, column: 43, scope: !1891)
!1893 = !DILocation(line: 523, column: 11, scope: !1891)
!1894 = !DILocation(line: 523, column: 4, scope: !1891)
!1895 = !DILocation(line: 525, column: 32, scope: !1891)
!1896 = !DILocation(line: 525, column: 44, scope: !1891)
!1897 = !DILocation(line: 525, column: 11, scope: !1891)
!1898 = !DILocation(line: 525, column: 4, scope: !1891)
!1899 = !DILocation(line: 527, column: 27, scope: !1891)
!1900 = !DILocation(line: 527, column: 39, scope: !1891)
!1901 = !DILocation(line: 527, column: 11, scope: !1891)
!1902 = !DILocation(line: 527, column: 4, scope: !1891)
!1903 = !DILocation(line: 529, column: 31, scope: !1891)
!1904 = !DILocation(line: 529, column: 43, scope: !1891)
!1905 = !DILocation(line: 529, column: 11, scope: !1891)
!1906 = !DILocation(line: 529, column: 4, scope: !1891)
!1907 = !DILocation(line: 531, column: 32, scope: !1891)
!1908 = !DILocation(line: 531, column: 44, scope: !1891)
!1909 = !DILocation(line: 531, column: 11, scope: !1891)
!1910 = !DILocation(line: 531, column: 4, scope: !1891)
!1911 = !DILocation(line: 533, column: 27, scope: !1891)
!1912 = !DILocation(line: 533, column: 39, scope: !1891)
!1913 = !DILocation(line: 533, column: 11, scope: !1891)
!1914 = !DILocation(line: 533, column: 4, scope: !1891)
!1915 = !DILocation(line: 535, column: 30, scope: !1891)
!1916 = !DILocation(line: 536, column: 9, scope: !1891)
!1917 = !DILocation(line: 536, column: 19, scope: !1891)
!1918 = !DILocation(line: 535, column: 11, scope: !1891)
!1919 = !DILocation(line: 535, column: 4, scope: !1891)
!1920 = !DILocation(line: 537, column: 3, scope: !1891)
!1921 = !DILocation(line: 541, column: 8, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 541, column: 7)
!1923 = !DILocation(line: 541, column: 18, scope: !1922)
!1924 = !DILocation(line: 541, column: 21, scope: !1922)
!1925 = !DILocation(line: 541, column: 15, scope: !1922)
!1926 = !DILocation(line: 541, column: 36, scope: !1922)
!1927 = !DILocation(line: 541, column: 39, scope: !1922)
!1928 = !{i8 0, i8 2}
!1929 = !{}
!1930 = !DILocation(line: 541, column: 7, scope: !1844)
!1931 = !DILocation(line: 543, column: 27, scope: !1922)
!1932 = !DILocation(line: 543, column: 39, scope: !1922)
!1933 = !DILocation(line: 543, column: 11, scope: !1922)
!1934 = !DILocation(line: 543, column: 4, scope: !1922)
!1935 = !DILocation(line: 546, column: 31, scope: !1922)
!1936 = !DILocation(line: 546, column: 43, scope: !1922)
!1937 = !DILocation(line: 546, column: 11, scope: !1922)
!1938 = !DILocation(line: 546, column: 4, scope: !1922)
!1939 = !DILocation(line: 549, column: 30, scope: !1844)
!1940 = !DILocation(line: 549, column: 42, scope: !1844)
!1941 = !DILocation(line: 549, column: 10, scope: !1844)
!1942 = !DILocation(line: 549, column: 3, scope: !1844)
!1943 = !DILocation(line: 551, column: 2, scope: !1801)
!1944 = !DILocation(line: 552, column: 1, scope: !1801)
!1945 = !DISubprogram(name: "policydb_rangetr_search", scope: !20, file: !20, line: 330, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!882, !18, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1949 = distinct !DISubprogram(name: "mls_context_cpy_low", scope: !268, file: !268, line: 61, type: !1396, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1950)
!1950 = !{!1951, !1952, !1953, !1954}
!1951 = !DILocalVariable(name: "dst", arg: 1, scope: !1949, file: !268, line: 61, type: !304)
!1952 = !DILocalVariable(name: "src", arg: 2, scope: !1949, file: !268, line: 61, type: !1398)
!1953 = !DILocalVariable(name: "rc", scope: !1949, file: !268, line: 63, type: !4)
!1954 = !DILabel(scope: !1949, name: "out", file: !268, line: 74)
!1955 = !DILocation(line: 61, column: 55, scope: !1949)
!1956 = !DILocation(line: 61, column: 82, scope: !1949)
!1957 = !DILocation(line: 63, column: 2, scope: !1949)
!1958 = !DILocation(line: 63, column: 6, scope: !1949)
!1959 = !DILocation(line: 65, column: 29, scope: !1949)
!1960 = !DILocation(line: 65, column: 34, scope: !1949)
!1961 = !DILocation(line: 65, column: 40, scope: !1949)
!1962 = !DILocation(line: 65, column: 49, scope: !1949)
!1963 = !DILocation(line: 65, column: 2, scope: !1949)
!1964 = !DILocation(line: 65, column: 7, scope: !1949)
!1965 = !DILocation(line: 65, column: 13, scope: !1949)
!1966 = !DILocation(line: 65, column: 22, scope: !1949)
!1967 = !DILocation(line: 65, column: 27, scope: !1949)
!1968 = !DILocation(line: 66, column: 20, scope: !1949)
!1969 = !DILocation(line: 66, column: 25, scope: !1949)
!1970 = !DILocation(line: 66, column: 31, scope: !1949)
!1971 = !DILocation(line: 66, column: 40, scope: !1949)
!1972 = !DILocation(line: 66, column: 46, scope: !1949)
!1973 = !DILocation(line: 66, column: 51, scope: !1949)
!1974 = !DILocation(line: 66, column: 57, scope: !1949)
!1975 = !DILocation(line: 66, column: 66, scope: !1949)
!1976 = !DILocation(line: 66, column: 7, scope: !1949)
!1977 = !DILocation(line: 66, column: 5, scope: !1949)
!1978 = !DILocation(line: 67, column: 6, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1949, file: !268, line: 67, column: 6)
!1980 = !DILocation(line: 67, column: 6, scope: !1949)
!1981 = !DILocation(line: 68, column: 3, scope: !1979)
!1982 = !DILocation(line: 70, column: 29, scope: !1949)
!1983 = !DILocation(line: 70, column: 34, scope: !1949)
!1984 = !DILocation(line: 70, column: 40, scope: !1949)
!1985 = !DILocation(line: 70, column: 49, scope: !1949)
!1986 = !DILocation(line: 70, column: 2, scope: !1949)
!1987 = !DILocation(line: 70, column: 7, scope: !1949)
!1988 = !DILocation(line: 70, column: 13, scope: !1949)
!1989 = !DILocation(line: 70, column: 22, scope: !1949)
!1990 = !DILocation(line: 70, column: 27, scope: !1949)
!1991 = !DILocation(line: 71, column: 20, scope: !1949)
!1992 = !DILocation(line: 71, column: 25, scope: !1949)
!1993 = !DILocation(line: 71, column: 31, scope: !1949)
!1994 = !DILocation(line: 71, column: 40, scope: !1949)
!1995 = !DILocation(line: 71, column: 46, scope: !1949)
!1996 = !DILocation(line: 71, column: 51, scope: !1949)
!1997 = !DILocation(line: 71, column: 57, scope: !1949)
!1998 = !DILocation(line: 71, column: 66, scope: !1949)
!1999 = !DILocation(line: 71, column: 7, scope: !1949)
!2000 = !DILocation(line: 71, column: 5, scope: !1949)
!2001 = !DILocation(line: 72, column: 6, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1949, file: !268, line: 72, column: 6)
!2003 = !DILocation(line: 72, column: 6, scope: !1949)
!2004 = !DILocation(line: 73, column: 20, scope: !2002)
!2005 = !DILocation(line: 73, column: 25, scope: !2002)
!2006 = !DILocation(line: 73, column: 31, scope: !2002)
!2007 = !DILocation(line: 73, column: 40, scope: !2002)
!2008 = !DILocation(line: 73, column: 3, scope: !2002)
!2009 = !DILocation(line: 74, column: 1, scope: !1949)
!2010 = !DILocation(line: 75, column: 9, scope: !1949)
!2011 = !DILocation(line: 76, column: 1, scope: !1949)
!2012 = !DILocation(line: 75, column: 2, scope: !1949)
!2013 = distinct !DISubprogram(name: "mls_context_cpy_high", scope: !268, file: !268, line: 81, type: !1396, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2014)
!2014 = !{!2015, !2016, !2017, !2018}
!2015 = !DILocalVariable(name: "dst", arg: 1, scope: !2013, file: !268, line: 81, type: !304)
!2016 = !DILocalVariable(name: "src", arg: 2, scope: !2013, file: !268, line: 81, type: !1398)
!2017 = !DILocalVariable(name: "rc", scope: !2013, file: !268, line: 83, type: !4)
!2018 = !DILabel(scope: !2013, name: "out", file: !268, line: 94)
!2019 = !DILocation(line: 81, column: 56, scope: !2013)
!2020 = !DILocation(line: 81, column: 83, scope: !2013)
!2021 = !DILocation(line: 83, column: 2, scope: !2013)
!2022 = !DILocation(line: 83, column: 6, scope: !2013)
!2023 = !DILocation(line: 85, column: 29, scope: !2013)
!2024 = !DILocation(line: 85, column: 34, scope: !2013)
!2025 = !DILocation(line: 85, column: 40, scope: !2013)
!2026 = !DILocation(line: 85, column: 49, scope: !2013)
!2027 = !DILocation(line: 85, column: 2, scope: !2013)
!2028 = !DILocation(line: 85, column: 7, scope: !2013)
!2029 = !DILocation(line: 85, column: 13, scope: !2013)
!2030 = !DILocation(line: 85, column: 22, scope: !2013)
!2031 = !DILocation(line: 85, column: 27, scope: !2013)
!2032 = !DILocation(line: 86, column: 20, scope: !2013)
!2033 = !DILocation(line: 86, column: 25, scope: !2013)
!2034 = !DILocation(line: 86, column: 31, scope: !2013)
!2035 = !DILocation(line: 86, column: 40, scope: !2013)
!2036 = !DILocation(line: 86, column: 46, scope: !2013)
!2037 = !DILocation(line: 86, column: 51, scope: !2013)
!2038 = !DILocation(line: 86, column: 57, scope: !2013)
!2039 = !DILocation(line: 86, column: 66, scope: !2013)
!2040 = !DILocation(line: 86, column: 7, scope: !2013)
!2041 = !DILocation(line: 86, column: 5, scope: !2013)
!2042 = !DILocation(line: 87, column: 6, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2013, file: !268, line: 87, column: 6)
!2044 = !DILocation(line: 87, column: 6, scope: !2013)
!2045 = !DILocation(line: 88, column: 3, scope: !2043)
!2046 = !DILocation(line: 90, column: 29, scope: !2013)
!2047 = !DILocation(line: 90, column: 34, scope: !2013)
!2048 = !DILocation(line: 90, column: 40, scope: !2013)
!2049 = !DILocation(line: 90, column: 49, scope: !2013)
!2050 = !DILocation(line: 90, column: 2, scope: !2013)
!2051 = !DILocation(line: 90, column: 7, scope: !2013)
!2052 = !DILocation(line: 90, column: 13, scope: !2013)
!2053 = !DILocation(line: 90, column: 22, scope: !2013)
!2054 = !DILocation(line: 90, column: 27, scope: !2013)
!2055 = !DILocation(line: 91, column: 20, scope: !2013)
!2056 = !DILocation(line: 91, column: 25, scope: !2013)
!2057 = !DILocation(line: 91, column: 31, scope: !2013)
!2058 = !DILocation(line: 91, column: 40, scope: !2013)
!2059 = !DILocation(line: 91, column: 46, scope: !2013)
!2060 = !DILocation(line: 91, column: 51, scope: !2013)
!2061 = !DILocation(line: 91, column: 57, scope: !2013)
!2062 = !DILocation(line: 91, column: 66, scope: !2013)
!2063 = !DILocation(line: 91, column: 7, scope: !2013)
!2064 = !DILocation(line: 91, column: 5, scope: !2013)
!2065 = !DILocation(line: 92, column: 6, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2013, file: !268, line: 92, column: 6)
!2067 = !DILocation(line: 92, column: 6, scope: !2013)
!2068 = !DILocation(line: 93, column: 20, scope: !2066)
!2069 = !DILocation(line: 93, column: 25, scope: !2066)
!2070 = !DILocation(line: 93, column: 31, scope: !2066)
!2071 = !DILocation(line: 93, column: 40, scope: !2066)
!2072 = !DILocation(line: 93, column: 3, scope: !2066)
!2073 = !DILocation(line: 94, column: 1, scope: !2013)
!2074 = !DILocation(line: 95, column: 9, scope: !2013)
!2075 = !DILocation(line: 96, column: 1, scope: !2013)
!2076 = !DILocation(line: 95, column: 2, scope: !2013)
!2077 = distinct !DISubprogram(name: "mls_context_glblub", scope: !268, file: !268, line: 99, type: !2078, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!4, !304, !1398, !1398}
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2088, !2089, !2090, !2093, !2094, !2096, !2097}
!2081 = !DILocalVariable(name: "dst", arg: 1, scope: !2077, file: !268, line: 99, type: !304)
!2082 = !DILocalVariable(name: "c1", arg: 2, scope: !2077, file: !268, line: 100, type: !1398)
!2083 = !DILocalVariable(name: "c2", arg: 3, scope: !2077, file: !268, line: 100, type: !1398)
!2084 = !DILocalVariable(name: "dr", scope: !2077, file: !268, line: 102, type: !882)
!2085 = !DILocalVariable(name: "r1", scope: !2077, file: !268, line: 103, type: !2086)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!2088 = !DILocalVariable(name: "r2", scope: !2077, file: !268, line: 103, type: !2086)
!2089 = !DILocalVariable(name: "rc", scope: !2077, file: !268, line: 104, type: !4)
!2090 = !DILocalVariable(name: "__UNIQUE_ID___x551", scope: !2091, file: !268, line: 112, type: !2092)
!2091 = distinct !DILexicalBlock(scope: !2077, file: !268, line: 112, column: 22)
!2092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!2093 = !DILocalVariable(name: "__UNIQUE_ID___y552", scope: !2091, file: !268, line: 112, type: !2092)
!2094 = !DILocalVariable(name: "__UNIQUE_ID___x553", scope: !2095, file: !268, line: 115, type: !2092)
!2095 = distinct !DILexicalBlock(scope: !2077, file: !268, line: 115, column: 22)
!2096 = !DILocalVariable(name: "__UNIQUE_ID___y554", scope: !2095, file: !268, line: 115, type: !2092)
!2097 = !DILabel(scope: !2077, name: "out", file: !268, line: 127)
!2098 = !DILocation(line: 99, column: 54, scope: !2077)
!2099 = !DILocation(line: 100, column: 32, scope: !2077)
!2100 = !DILocation(line: 100, column: 58, scope: !2077)
!2101 = !DILocation(line: 102, column: 2, scope: !2077)
!2102 = !DILocation(line: 102, column: 20, scope: !2077)
!2103 = !DILocation(line: 102, column: 26, scope: !2077)
!2104 = !DILocation(line: 102, column: 31, scope: !2077)
!2105 = !DILocation(line: 103, column: 2, scope: !2077)
!2106 = !DILocation(line: 103, column: 26, scope: !2077)
!2107 = !DILocation(line: 103, column: 32, scope: !2077)
!2108 = !DILocation(line: 103, column: 36, scope: !2077)
!2109 = !DILocation(line: 103, column: 44, scope: !2077)
!2110 = !DILocation(line: 103, column: 50, scope: !2077)
!2111 = !DILocation(line: 103, column: 54, scope: !2077)
!2112 = !DILocation(line: 104, column: 2, scope: !2077)
!2113 = !DILocation(line: 104, column: 6, scope: !2077)
!2114 = !DILocation(line: 106, column: 6, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2077, file: !268, line: 106, column: 6)
!2116 = !DILocation(line: 106, column: 10, scope: !2115)
!2117 = !DILocation(line: 106, column: 19, scope: !2115)
!2118 = !DILocation(line: 106, column: 26, scope: !2115)
!2119 = !DILocation(line: 106, column: 30, scope: !2115)
!2120 = !DILocation(line: 106, column: 39, scope: !2115)
!2121 = !DILocation(line: 106, column: 24, scope: !2115)
!2122 = !DILocation(line: 106, column: 44, scope: !2115)
!2123 = !DILocation(line: 107, column: 6, scope: !2115)
!2124 = !DILocation(line: 107, column: 10, scope: !2115)
!2125 = !DILocation(line: 107, column: 19, scope: !2115)
!2126 = !DILocation(line: 107, column: 26, scope: !2115)
!2127 = !DILocation(line: 107, column: 30, scope: !2115)
!2128 = !DILocation(line: 107, column: 39, scope: !2115)
!2129 = !DILocation(line: 107, column: 24, scope: !2115)
!2130 = !DILocation(line: 106, column: 6, scope: !2077)
!2131 = !DILocation(line: 109, column: 3, scope: !2115)
!2132 = !DILocation(line: 112, column: 22, scope: !2091)
!2133 = !DILocation(line: 112, column: 22, scope: !2077)
!2134 = !DILocation(line: 112, column: 2, scope: !2077)
!2135 = !DILocation(line: 112, column: 6, scope: !2077)
!2136 = !DILocation(line: 112, column: 15, scope: !2077)
!2137 = !DILocation(line: 112, column: 20, scope: !2077)
!2138 = !DILocation(line: 115, column: 22, scope: !2095)
!2139 = !DILocation(line: 115, column: 22, scope: !2077)
!2140 = !DILocation(line: 115, column: 2, scope: !2077)
!2141 = !DILocation(line: 115, column: 6, scope: !2077)
!2142 = !DILocation(line: 115, column: 15, scope: !2077)
!2143 = !DILocation(line: 115, column: 20, scope: !2077)
!2144 = !DILocation(line: 117, column: 20, scope: !2077)
!2145 = !DILocation(line: 117, column: 24, scope: !2077)
!2146 = !DILocation(line: 117, column: 33, scope: !2077)
!2147 = !DILocation(line: 118, column: 6, scope: !2077)
!2148 = !DILocation(line: 118, column: 10, scope: !2077)
!2149 = !DILocation(line: 118, column: 19, scope: !2077)
!2150 = !DILocation(line: 118, column: 25, scope: !2077)
!2151 = !DILocation(line: 118, column: 29, scope: !2077)
!2152 = !DILocation(line: 118, column: 38, scope: !2077)
!2153 = !DILocation(line: 117, column: 7, scope: !2077)
!2154 = !DILocation(line: 117, column: 5, scope: !2077)
!2155 = !DILocation(line: 119, column: 6, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2077, file: !268, line: 119, column: 6)
!2157 = !DILocation(line: 119, column: 6, scope: !2077)
!2158 = !DILocation(line: 120, column: 3, scope: !2156)
!2159 = !DILocation(line: 122, column: 20, scope: !2077)
!2160 = !DILocation(line: 122, column: 24, scope: !2077)
!2161 = !DILocation(line: 122, column: 33, scope: !2077)
!2162 = !DILocation(line: 123, column: 6, scope: !2077)
!2163 = !DILocation(line: 123, column: 10, scope: !2077)
!2164 = !DILocation(line: 123, column: 19, scope: !2077)
!2165 = !DILocation(line: 123, column: 25, scope: !2077)
!2166 = !DILocation(line: 123, column: 29, scope: !2077)
!2167 = !DILocation(line: 123, column: 38, scope: !2077)
!2168 = !DILocation(line: 122, column: 7, scope: !2077)
!2169 = !DILocation(line: 122, column: 5, scope: !2077)
!2170 = !DILocation(line: 124, column: 6, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2077, file: !268, line: 124, column: 6)
!2172 = !DILocation(line: 124, column: 6, scope: !2077)
!2173 = !DILocation(line: 125, column: 3, scope: !2171)
!2174 = !DILocation(line: 127, column: 1, scope: !2077)
!2175 = !DILocation(line: 128, column: 9, scope: !2077)
!2176 = !DILocation(line: 128, column: 2, scope: !2077)
!2177 = !DILocation(line: 129, column: 1, scope: !2077)
!2178 = distinct !DISubprogram(name: "mls_export_netlbl_lvl", scope: !1, file: !1, line: 566, type: !2179, scopeLine: 569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2217)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !18, !304, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_lsm_secattr", file: !2183, line: 180, size: 384, elements: !2184)
!2183 = !DIFile(filename: "./include/net/netlabel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10369c8505590d639d1be416b6c48b7f")
!2184 = !{!2185, !2186, !2187, !2188, !2201}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2182, file: !2183, line: 181, baseType: !41, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2182, file: !2183, line: 196, baseType: !41, size: 32, offset: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2182, file: !2183, line: 197, baseType: !53, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2182, file: !2183, line: 198, baseType: !2189, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_lsm_cache", file: !2183, line: 124, size: 192, elements: !2191)
!2191 = !{!2192, !2198, !2200}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2190, file: !2183, line: 125, baseType: !2193, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !2194, line: 113, baseType: !2195)
!2194 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !2194, line: 111, size: 32, elements: !2196)
!2196 = !{!2197}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2195, file: !2194, line: 112, baseType: !1054, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2190, file: !2183, line: 126, baseType: !2199, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2190, file: !2183, line: 127, baseType: !3, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2182, file: !2183, line: 205, baseType: !2202, size: 192, offset: 192)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !2183, line: 199, size: 192, elements: !2203)
!2203 = !{!2204, !2216}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "mls", scope: !2202, file: !2183, line: 203, baseType: !2205, size: 128)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2202, file: !2183, line: 200, size: 128, elements: !2206)
!2206 = !{!2207, !2215}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "cat", scope: !2205, file: !2183, line: 201, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_lsm_catmap", file: !2183, line: 154, size: 384, elements: !2210)
!2210 = !{!2211, !2212, !2214}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "startbit", scope: !2209, file: !2183, line: 155, baseType: !41, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !2209, file: !2183, line: 156, baseType: !2213, size: 256, offset: 64)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 256, elements: !243)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2209, file: !2183, line: 157, baseType: !2208, size: 64, offset: 320)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "lvl", scope: !2205, file: !2183, line: 202, baseType: !41, size: 32, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "secid", scope: !2202, file: !2183, line: 204, baseType: !41, size: 32, offset: 128)
!2217 = !{!2218, !2219, !2220}
!2218 = !DILocalVariable(name: "p", arg: 1, scope: !2178, file: !1, line: 566, type: !18)
!2219 = !DILocalVariable(name: "context", arg: 2, scope: !2178, file: !1, line: 567, type: !304)
!2220 = !DILocalVariable(name: "secattr", arg: 3, scope: !2178, file: !1, line: 568, type: !2181)
!2221 = !DILocation(line: 566, column: 45, scope: !2178)
!2222 = !DILocation(line: 567, column: 23, scope: !2178)
!2223 = !DILocation(line: 568, column: 34, scope: !2178)
!2224 = !DILocation(line: 570, column: 7, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 570, column: 6)
!2226 = !DILocation(line: 570, column: 10, scope: !2225)
!2227 = !DILocation(line: 570, column: 6, scope: !2178)
!2228 = !DILocation(line: 571, column: 3, scope: !2225)
!2229 = !DILocation(line: 573, column: 26, scope: !2178)
!2230 = !DILocation(line: 573, column: 35, scope: !2178)
!2231 = !DILocation(line: 573, column: 41, scope: !2178)
!2232 = !DILocation(line: 573, column: 50, scope: !2178)
!2233 = !DILocation(line: 573, column: 55, scope: !2178)
!2234 = !DILocation(line: 573, column: 2, scope: !2178)
!2235 = !DILocation(line: 573, column: 11, scope: !2178)
!2236 = !DILocation(line: 573, column: 16, scope: !2178)
!2237 = !DILocation(line: 573, column: 20, scope: !2178)
!2238 = !DILocation(line: 573, column: 24, scope: !2178)
!2239 = !DILocation(line: 574, column: 2, scope: !2178)
!2240 = !DILocation(line: 574, column: 11, scope: !2178)
!2241 = !DILocation(line: 574, column: 17, scope: !2178)
!2242 = !DILocation(line: 575, column: 1, scope: !2178)
!2243 = distinct !DISubprogram(name: "mls_import_netlbl_lvl", scope: !1, file: !1, line: 588, type: !2179, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2244)
!2244 = !{!2245, !2246, !2247}
!2245 = !DILocalVariable(name: "p", arg: 1, scope: !2243, file: !1, line: 588, type: !18)
!2246 = !DILocalVariable(name: "context", arg: 2, scope: !2243, file: !1, line: 589, type: !304)
!2247 = !DILocalVariable(name: "secattr", arg: 3, scope: !2243, file: !1, line: 590, type: !2181)
!2248 = !DILocation(line: 588, column: 45, scope: !2243)
!2249 = !DILocation(line: 589, column: 23, scope: !2243)
!2250 = !DILocation(line: 590, column: 34, scope: !2243)
!2251 = !DILocation(line: 592, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2243, file: !1, line: 592, column: 6)
!2253 = !DILocation(line: 592, column: 10, scope: !2252)
!2254 = !DILocation(line: 592, column: 6, scope: !2243)
!2255 = !DILocation(line: 593, column: 3, scope: !2252)
!2256 = !DILocation(line: 595, column: 33, scope: !2243)
!2257 = !DILocation(line: 595, column: 42, scope: !2243)
!2258 = !DILocation(line: 595, column: 47, scope: !2243)
!2259 = !DILocation(line: 595, column: 51, scope: !2243)
!2260 = !DILocation(line: 595, column: 55, scope: !2243)
!2261 = !DILocation(line: 595, column: 2, scope: !2243)
!2262 = !DILocation(line: 595, column: 11, scope: !2243)
!2263 = !DILocation(line: 595, column: 17, scope: !2243)
!2264 = !DILocation(line: 595, column: 26, scope: !2243)
!2265 = !DILocation(line: 595, column: 31, scope: !2243)
!2266 = !DILocation(line: 596, column: 33, scope: !2243)
!2267 = !DILocation(line: 596, column: 42, scope: !2243)
!2268 = !DILocation(line: 596, column: 48, scope: !2243)
!2269 = !DILocation(line: 596, column: 57, scope: !2243)
!2270 = !DILocation(line: 596, column: 2, scope: !2243)
!2271 = !DILocation(line: 596, column: 11, scope: !2243)
!2272 = !DILocation(line: 596, column: 17, scope: !2243)
!2273 = !DILocation(line: 596, column: 26, scope: !2243)
!2274 = !DILocation(line: 596, column: 31, scope: !2243)
!2275 = !DILocation(line: 597, column: 1, scope: !2243)
!2276 = distinct !DISubprogram(name: "mls_export_netlbl_cat", scope: !1, file: !1, line: 610, type: !2277, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!4, !18, !304, !2181}
!2279 = !{!2280, !2281, !2282, !2283}
!2280 = !DILocalVariable(name: "p", arg: 1, scope: !2276, file: !1, line: 610, type: !18)
!2281 = !DILocalVariable(name: "context", arg: 2, scope: !2276, file: !1, line: 611, type: !304)
!2282 = !DILocalVariable(name: "secattr", arg: 3, scope: !2276, file: !1, line: 612, type: !2181)
!2283 = !DILocalVariable(name: "rc", scope: !2276, file: !1, line: 614, type: !4)
!2284 = !DILocation(line: 610, column: 44, scope: !2276)
!2285 = !DILocation(line: 611, column: 22, scope: !2276)
!2286 = !DILocation(line: 612, column: 33, scope: !2276)
!2287 = !DILocation(line: 614, column: 2, scope: !2276)
!2288 = !DILocation(line: 614, column: 6, scope: !2276)
!2289 = !DILocation(line: 616, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2276, file: !1, line: 616, column: 6)
!2291 = !DILocation(line: 616, column: 10, scope: !2290)
!2292 = !DILocation(line: 616, column: 6, scope: !2276)
!2293 = !DILocation(line: 617, column: 3, scope: !2290)
!2294 = !DILocation(line: 619, column: 30, scope: !2276)
!2295 = !DILocation(line: 619, column: 39, scope: !2276)
!2296 = !DILocation(line: 619, column: 45, scope: !2276)
!2297 = !DILocation(line: 619, column: 54, scope: !2276)
!2298 = !DILocation(line: 620, column: 9, scope: !2276)
!2299 = !DILocation(line: 620, column: 18, scope: !2276)
!2300 = !DILocation(line: 620, column: 23, scope: !2276)
!2301 = !DILocation(line: 620, column: 27, scope: !2276)
!2302 = !DILocation(line: 619, column: 7, scope: !2276)
!2303 = !DILocation(line: 619, column: 5, scope: !2276)
!2304 = !DILocation(line: 621, column: 6, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2276, file: !1, line: 621, column: 6)
!2306 = !DILocation(line: 621, column: 9, scope: !2305)
!2307 = !DILocation(line: 621, column: 14, scope: !2305)
!2308 = !DILocation(line: 621, column: 17, scope: !2305)
!2309 = !DILocation(line: 621, column: 26, scope: !2305)
!2310 = !DILocation(line: 621, column: 31, scope: !2305)
!2311 = !DILocation(line: 621, column: 35, scope: !2305)
!2312 = !DILocation(line: 621, column: 39, scope: !2305)
!2313 = !DILocation(line: 621, column: 6, scope: !2276)
!2314 = !DILocation(line: 622, column: 3, scope: !2305)
!2315 = !DILocation(line: 622, column: 12, scope: !2305)
!2316 = !DILocation(line: 622, column: 18, scope: !2305)
!2317 = !DILocation(line: 624, column: 9, scope: !2276)
!2318 = !DILocation(line: 624, column: 2, scope: !2276)
!2319 = !DILocation(line: 625, column: 1, scope: !2276)
!2320 = !DISubprogram(name: "ebitmap_netlbl_export", scope: !84, file: !84, line: 137, type: !2321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!4, !290, !2323}
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2324 = distinct !DISubprogram(name: "mls_import_netlbl_cat", scope: !1, file: !1, line: 640, type: !2277, scopeLine: 643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2325)
!2325 = !{!2326, !2327, !2328, !2329, !2330}
!2326 = !DILocalVariable(name: "p", arg: 1, scope: !2324, file: !1, line: 640, type: !18)
!2327 = !DILocalVariable(name: "context", arg: 2, scope: !2324, file: !1, line: 641, type: !304)
!2328 = !DILocalVariable(name: "secattr", arg: 3, scope: !2324, file: !1, line: 642, type: !2181)
!2329 = !DILocalVariable(name: "rc", scope: !2324, file: !1, line: 644, type: !4)
!2330 = !DILabel(scope: !2324, name: "import_netlbl_cat_failure", file: !1, line: 658)
!2331 = !DILocation(line: 640, column: 44, scope: !2324)
!2332 = !DILocation(line: 641, column: 22, scope: !2324)
!2333 = !DILocation(line: 642, column: 33, scope: !2324)
!2334 = !DILocation(line: 644, column: 2, scope: !2324)
!2335 = !DILocation(line: 644, column: 6, scope: !2324)
!2336 = !DILocation(line: 646, column: 7, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2324, file: !1, line: 646, column: 6)
!2338 = !DILocation(line: 646, column: 10, scope: !2337)
!2339 = !DILocation(line: 646, column: 6, scope: !2324)
!2340 = !DILocation(line: 647, column: 3, scope: !2337)
!2341 = !DILocation(line: 649, column: 30, scope: !2324)
!2342 = !DILocation(line: 649, column: 39, scope: !2324)
!2343 = !DILocation(line: 649, column: 45, scope: !2324)
!2344 = !DILocation(line: 649, column: 54, scope: !2324)
!2345 = !DILocation(line: 650, column: 8, scope: !2324)
!2346 = !DILocation(line: 650, column: 17, scope: !2324)
!2347 = !DILocation(line: 650, column: 22, scope: !2324)
!2348 = !DILocation(line: 650, column: 26, scope: !2324)
!2349 = !DILocation(line: 649, column: 7, scope: !2324)
!2350 = !DILocation(line: 649, column: 5, scope: !2324)
!2351 = !DILocation(line: 651, column: 6, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2324, file: !1, line: 651, column: 6)
!2353 = !DILocation(line: 651, column: 6, scope: !2324)
!2354 = !DILocation(line: 652, column: 3, scope: !2352)
!2355 = !DILocation(line: 653, column: 10, scope: !2324)
!2356 = !DILocation(line: 653, column: 19, scope: !2324)
!2357 = !DILocation(line: 653, column: 25, scope: !2324)
!2358 = !DILocation(line: 653, column: 34, scope: !2324)
!2359 = !DILocation(line: 653, column: 40, scope: !2324)
!2360 = !DILocation(line: 653, column: 49, scope: !2324)
!2361 = !DILocation(line: 653, column: 55, scope: !2324)
!2362 = !DILocation(line: 653, column: 64, scope: !2324)
!2363 = !DILocation(line: 653, column: 2, scope: !2324)
!2364 = !DILocation(line: 656, column: 2, scope: !2324)
!2365 = !DILocation(line: 658, column: 1, scope: !2324)
!2366 = !DILocation(line: 659, column: 19, scope: !2324)
!2367 = !DILocation(line: 659, column: 28, scope: !2324)
!2368 = !DILocation(line: 659, column: 34, scope: !2324)
!2369 = !DILocation(line: 659, column: 43, scope: !2324)
!2370 = !DILocation(line: 659, column: 2, scope: !2324)
!2371 = !DILocation(line: 660, column: 9, scope: !2324)
!2372 = !DILocation(line: 660, column: 2, scope: !2324)
!2373 = !DILocation(line: 661, column: 1, scope: !2324)
!2374 = !DISubprogram(name: "ebitmap_netlbl_import", scope: !84, file: !84, line: 139, type: !2375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!4, !290, !2208}
!2377 = !DISubprogram(name: "ebitmap_destroy", scope: !84, file: !84, line: 131, type: !2378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !290}
!2380 = distinct !DISubprogram(name: "find_first_bit", scope: !2381, file: !2381, line: 200, type: !2382, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2386)
!2381 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!5, !2384, !5}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2386 = !{!2387, !2388, !2389}
!2387 = !DILocalVariable(name: "addr", arg: 1, scope: !2380, file: !2381, line: 200, type: !2384)
!2388 = !DILocalVariable(name: "size", arg: 2, scope: !2380, file: !2381, line: 200, type: !5)
!2389 = !DILocalVariable(name: "val", scope: !2390, file: !2381, line: 203, type: !5)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !2381, line: 202, column: 31)
!2391 = distinct !DILexicalBlock(scope: !2380, file: !2381, line: 202, column: 6)
!2392 = !DILocation(line: 200, column: 51, scope: !2380)
!2393 = !DILocation(line: 200, column: 71, scope: !2380)
!2394 = !DILocation(line: 202, column: 6, scope: !2391)
!2395 = !DILocation(line: 202, column: 6, scope: !2380)
!2396 = !DILocation(line: 203, column: 3, scope: !2390)
!2397 = !DILocation(line: 203, column: 17, scope: !2390)
!2398 = !DILocation(line: 203, column: 24, scope: !2390)
!2399 = !DILocation(line: 203, column: 23, scope: !2390)
!2400 = !DILocation(line: 203, column: 31, scope: !2390)
!2401 = !DILocation(line: 203, column: 29, scope: !2390)
!2402 = !DILocation(line: 205, column: 10, scope: !2390)
!2403 = !DILocation(line: 205, column: 16, scope: !2390)
!2404 = !DILocation(line: 205, column: 29, scope: !2390)
!2405 = !DILocation(line: 205, column: 3, scope: !2390)
!2406 = !DILocation(line: 206, column: 2, scope: !2391)
!2407 = !DILocation(line: 208, column: 25, scope: !2380)
!2408 = !DILocation(line: 208, column: 31, scope: !2380)
!2409 = !DILocation(line: 208, column: 9, scope: !2380)
!2410 = !DILocation(line: 208, column: 2, scope: !2380)
!2411 = !DILocation(line: 209, column: 1, scope: !2380)
!2412 = distinct !DISubprogram(name: "variable__ffs", scope: !2413, file: !2413, line: 250, type: !2414, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2416)
!2413 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!5, !5}
!2416 = !{!2417}
!2417 = !DILocalVariable(name: "word", arg: 1, scope: !2412, file: !2413, line: 250, type: !5)
!2418 = !DILocation(line: 250, column: 66, scope: !2412)
!2419 = !DILocation(line: 254, column: 11, scope: !2412)
!2420 = !DILocation(line: 252, column: 2, scope: !2412)
!2421 = !{i64 309171}
!2422 = !DILocation(line: 255, column: 9, scope: !2412)
!2423 = !DILocation(line: 255, column: 2, scope: !2412)
!2424 = !DISubprogram(name: "_find_first_bit", scope: !2381, file: !2381, line: 21, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2425 = distinct !DISubprogram(name: "find_next_bit", scope: !2381, file: !2381, line: 54, type: !2426, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!5, !2384, !5, !5}
!2428 = !{!2429, !2430, !2431, !2432}
!2429 = !DILocalVariable(name: "addr", arg: 1, scope: !2425, file: !2381, line: 54, type: !2384)
!2430 = !DILocalVariable(name: "size", arg: 2, scope: !2425, file: !2381, line: 54, type: !5)
!2431 = !DILocalVariable(name: "offset", arg: 3, scope: !2425, file: !2381, line: 55, type: !5)
!2432 = !DILocalVariable(name: "val", scope: !2433, file: !2381, line: 58, type: !5)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !2381, line: 57, column: 31)
!2434 = distinct !DILexicalBlock(scope: !2425, file: !2381, line: 57, column: 6)
!2435 = !DILocation(line: 54, column: 50, scope: !2425)
!2436 = !DILocation(line: 54, column: 70, scope: !2425)
!2437 = !DILocation(line: 55, column: 22, scope: !2425)
!2438 = !DILocation(line: 57, column: 6, scope: !2434)
!2439 = !DILocation(line: 57, column: 6, scope: !2425)
!2440 = !DILocation(line: 58, column: 3, scope: !2433)
!2441 = !DILocation(line: 58, column: 17, scope: !2433)
!2442 = !DILocation(line: 60, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2433, file: !2381, line: 60, column: 7)
!2444 = !DILocation(line: 60, column: 7, scope: !2433)
!2445 = !DILocation(line: 61, column: 11, scope: !2443)
!2446 = !DILocation(line: 61, column: 4, scope: !2443)
!2447 = !DILocation(line: 63, column: 10, scope: !2433)
!2448 = !DILocation(line: 63, column: 9, scope: !2433)
!2449 = !DILocation(line: 63, column: 17, scope: !2433)
!2450 = !DILocation(line: 63, column: 15, scope: !2433)
!2451 = !DILocation(line: 63, column: 7, scope: !2433)
!2452 = !DILocation(line: 64, column: 10, scope: !2433)
!2453 = !DILocation(line: 64, column: 16, scope: !2433)
!2454 = !DILocation(line: 64, column: 29, scope: !2433)
!2455 = !DILocation(line: 64, column: 3, scope: !2433)
!2456 = !DILocation(line: 65, column: 2, scope: !2434)
!2457 = !DILocation(line: 67, column: 24, scope: !2425)
!2458 = !DILocation(line: 67, column: 30, scope: !2425)
!2459 = !DILocation(line: 67, column: 36, scope: !2425)
!2460 = !DILocation(line: 67, column: 9, scope: !2425)
!2461 = !DILocation(line: 67, column: 2, scope: !2425)
!2462 = !DILocation(line: 68, column: 1, scope: !2425)
!2463 = !DISubprogram(name: "_find_next_bit", scope: !2381, file: !2381, line: 11, type: !2426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2464 = !DISubprogram(name: "ebitmap_cmp", scope: !84, file: !84, line: 125, type: !2465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!4, !476, !476}
!2467 = !DISubprogram(name: "sidtab_search_entry", scope: !980, file: !980, line: 107, type: !2468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!1382, !978, !41}
!2470 = !DISubprogram(name: "ebitmap_and", scope: !84, file: !84, line: 127, type: !2471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!4, !290, !476, !476}
