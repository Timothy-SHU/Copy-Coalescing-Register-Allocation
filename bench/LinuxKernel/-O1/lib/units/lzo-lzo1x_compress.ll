; ModuleID = 'lib/lzo/lzo1x_compress.c'
source_filename = "lib/lzo/lzo1x_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_lzo1x_1_compress: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad lzo1x_1_compress ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_lzorle1x_1_compress: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad lzorle1x_1_compress ; .previous"

%struct.anon = type { i64 }
%struct.anon.0 = type { i64 }
%struct.anon.1 = type { i64 }
%struct.anon.2 = type { i64 }
%struct.anon.3 = type { i64 }
%struct.anon.4 = type { i64 }
%struct.anon.5 = type { i64 }
%struct.anon.6 = type { i64 }
%struct.anon.7 = type { i64 }
%struct.anon.8 = type { i32 }
%struct.anon.9 = type { i32 }
%struct.anon.10 = type { i64 }
%struct.anon.11 = type { i64 }
%struct.anon.12 = type { i64 }
%struct.anon.13 = type { i64 }
%struct.anon.14 = type { i64 }
%struct.anon.15 = type { i64 }
%struct.anon.16 = type { i64 }
%struct.anon.17 = type { i64 }
%struct.anon.18 = type { i64 }
%struct.anon.19 = type { i64 }
%struct.anon.20 = type { i64 }
%struct.anon.21 = type { i64 }
%struct.anon.22 = type { i32 }
%struct.anon.23 = type { i32 }

@__UNIQUE_ID___addressable_lzo1x_1_compress200 = internal global ptr @lzo1x_1_compress, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_lzorle1x_1_compress201 = internal global ptr @lzorle1x_1_compress, section ".discard.addressable", align 8, !dbg !317
@__UNIQUE_ID_file202 = internal constant [39 x i8] c"lzo_compress.file=lib/lzo/lzo_compress\00", section ".modinfo", align 1, !dbg !319
@__UNIQUE_ID_license203 = internal constant [25 x i8] c"lzo_compress.license=GPL\00", section ".modinfo", align 1, !dbg !326
@__UNIQUE_ID_description204 = internal constant [44 x i8] c"lzo_compress.description=LZO1X-1 Compressor\00", section ".modinfo", align 1, !dbg !331
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_lzo1x_1_compress200, ptr @__UNIQUE_ID___addressable_lzorle1x_1_compress201, ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_license203, ptr @__UNIQUE_ID_description204], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @lzo1x_1_compress(ptr noundef %in, i64 noundef %in_len, ptr noundef %out, ptr noundef %out_len, ptr noundef %wrkmem) #0 align 16 !dbg !345 {
entry:
  %in.addr = alloca ptr, align 8
  %in_len.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  %out_len.addr = alloca ptr, align 8
  %wrkmem.addr = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !349, metadata !DIExpression()), !dbg !354
  store i64 %in_len, ptr %in_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_len.addr, metadata !350, metadata !DIExpression()), !dbg !355
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !351, metadata !DIExpression()), !dbg !356
  store ptr %out_len, ptr %out_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_len.addr, metadata !352, metadata !DIExpression()), !dbg !357
  store ptr %wrkmem, ptr %wrkmem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wrkmem.addr, metadata !353, metadata !DIExpression()), !dbg !358
  %0 = load ptr, ptr %in.addr, align 8, !dbg !359
  %1 = load i64, ptr %in_len.addr, align 8, !dbg !360
  %2 = load ptr, ptr %out.addr, align 8, !dbg !361
  %3 = load ptr, ptr %out_len.addr, align 8, !dbg !362
  %4 = load ptr, ptr %wrkmem.addr, align 8, !dbg !363
  %call = call i32 @lzogeneric1x_1_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 0) #7, !dbg !364
  ret i32 %call, !dbg !365
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lzogeneric1x_1_compress(ptr noundef %in, i64 noundef %in_len, ptr noundef %out, ptr noundef %out_len, ptr noundef %wrkmem, i8 noundef zeroext %bitstream_version) #0 align 16 !dbg !15 {
entry:
  %in.addr = alloca ptr, align 8
  %in_len.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  %out_len.addr = alloca ptr, align 8
  %wrkmem.addr = alloca ptr, align 8
  %bitstream_version.addr = alloca i8, align 1
  %ip = alloca ptr, align 8
  %op = alloca ptr, align 8
  %data_start = alloca ptr, align 8
  %l = alloca i64, align 8
  %t = alloca i64, align 8
  %state_offset = alloca i8, align 1
  %m4_max_offset = alloca i32, align 4
  %ll = alloca i64, align 8
  %__UNIQUE_ID___x197 = alloca i64, align 8
  %__UNIQUE_ID___y198 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %ll_end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ii = alloca ptr, align 8
  %tt = alloca i64, align 8
  %__pptr = alloca ptr, align 8
  %__pptr64 = alloca ptr, align 8
  %tmp65 = alloca i64, align 8
  %__pptr70 = alloca ptr, align 8
  %__pptr72 = alloca ptr, align 8
  %tmp74 = alloca i64, align 8
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !25, metadata !DIExpression()), !dbg !366
  store i64 %in_len, ptr %in_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_len.addr, metadata !26, metadata !DIExpression()), !dbg !367
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !27, metadata !DIExpression()), !dbg !368
  store ptr %out_len, ptr %out_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_len.addr, metadata !28, metadata !DIExpression()), !dbg !369
  store ptr %wrkmem, ptr %wrkmem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wrkmem.addr, metadata !29, metadata !DIExpression()), !dbg !370
  store i8 %bitstream_version, ptr %bitstream_version.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bitstream_version.addr, metadata !30, metadata !DIExpression()), !dbg !371
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #8, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !31, metadata !DIExpression()), !dbg !373
  %0 = load ptr, ptr %in.addr, align 8, !dbg !374
  store ptr %0, ptr %ip, align 8, !dbg !373
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #8, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %op, metadata !32, metadata !DIExpression()), !dbg !376
  %1 = load ptr, ptr %out.addr, align 8, !dbg !377
  store ptr %1, ptr %op, align 8, !dbg !376
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_start) #8, !dbg !378
  call void @llvm.dbg.declare(metadata ptr %data_start, metadata !33, metadata !DIExpression()), !dbg !379
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #8, !dbg !380
  call void @llvm.dbg.declare(metadata ptr %l, metadata !34, metadata !DIExpression()), !dbg !381
  %2 = load i64, ptr %in_len.addr, align 8, !dbg !382
  store i64 %2, ptr %l, align 8, !dbg !381
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #8, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %t, metadata !35, metadata !DIExpression()), !dbg !384
  store i64 0, ptr %t, align 8, !dbg !384
  call void @llvm.lifetime.start.p0(i64 1, ptr %state_offset) #8, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %state_offset, metadata !36, metadata !DIExpression()), !dbg !386
  store i8 -2, ptr %state_offset, align 1, !dbg !386
  call void @llvm.lifetime.start.p0(i64 4, ptr %m4_max_offset) #8, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %m4_max_offset, metadata !38, metadata !DIExpression()), !dbg !388
  %3 = load i8, ptr %bitstream_version.addr, align 1, !dbg !389
  %conv = zext i8 %3 to i32, !dbg !389
  %cmp = icmp sgt i32 %conv, 0, !dbg !391
  br i1 %cmp, label %if.then, label %if.else, !dbg !392

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %op, align 8, !dbg !393
  %incdec.ptr = getelementptr i8, ptr %4, i32 1, !dbg !393
  store ptr %incdec.ptr, ptr %op, align 8, !dbg !393
  store i8 17, ptr %4, align 1, !dbg !395
  %5 = load i8, ptr %bitstream_version.addr, align 1, !dbg !396
  %6 = load ptr, ptr %op, align 8, !dbg !397
  %incdec.ptr2 = getelementptr i8, ptr %6, i32 1, !dbg !397
  store ptr %incdec.ptr2, ptr %op, align 8, !dbg !397
  store i8 %5, ptr %6, align 1, !dbg !398
  store i32 49150, ptr %m4_max_offset, align 4, !dbg !399
  br label %if.end, !dbg !400

if.else:                                          ; preds = %entry
  store i32 49151, ptr %m4_max_offset, align 4, !dbg !401
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %op, align 8, !dbg !403
  store ptr %7, ptr %data_start, align 8, !dbg !404
  br label %while.cond, !dbg !405

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %8 = load i64, ptr %l, align 8, !dbg !406
  %cmp3 = icmp ugt i64 %8, 20, !dbg !407
  br i1 %cmp3, label %while.body, label %while.end, !dbg !405

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #8, !dbg !408
  call void @llvm.dbg.declare(metadata ptr %ll, metadata !40, metadata !DIExpression()), !dbg !409
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x197) #8, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x197, metadata !42, metadata !DIExpression()), !dbg !410
  %9 = load i64, ptr %l, align 8, !dbg !410
  store i64 %9, ptr %__UNIQUE_ID___x197, align 8, !dbg !410
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y198) #8, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y198, metadata !44, metadata !DIExpression()), !dbg !410
  %10 = load i32, ptr %m4_max_offset, align 4, !dbg !410
  %add = add i32 %10, 1, !dbg !410
  %conv5 = zext i32 %add to i64, !dbg !410
  store i64 %conv5, ptr %__UNIQUE_ID___y198, align 8, !dbg !410
  %11 = load i64, ptr %__UNIQUE_ID___x197, align 8, !dbg !410
  %12 = load i64, ptr %__UNIQUE_ID___y198, align 8, !dbg !410
  %cmp6 = icmp ult i64 %11, %12, !dbg !410
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !410

cond.true:                                        ; preds = %while.body
  %13 = load i64, ptr %__UNIQUE_ID___x197, align 8, !dbg !410
  br label %cond.end, !dbg !410

cond.false:                                       ; preds = %while.body
  %14 = load i64, ptr %__UNIQUE_ID___y198, align 8, !dbg !410
  br label %cond.end, !dbg !410

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !410
  store i64 %cond, ptr %tmp, align 8, !dbg !410
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y198) #8, !dbg !411
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x197) #8, !dbg !411
  %15 = load i64, ptr %tmp, align 8, !dbg !410
  store i64 %15, ptr %ll, align 8, !dbg !409
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll_end) #8, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %ll_end, metadata !45, metadata !DIExpression()), !dbg !413
  %16 = load ptr, ptr %ip, align 8, !dbg !414
  %17 = ptrtoint ptr %16 to i64, !dbg !415
  %18 = load i64, ptr %ll, align 8, !dbg !416
  %add8 = add i64 %17, %18, !dbg !417
  store i64 %add8, ptr %ll_end, align 8, !dbg !413
  %19 = load i64, ptr %ll_end, align 8, !dbg !418
  %20 = load i64, ptr %t, align 8, !dbg !420
  %21 = load i64, ptr %ll, align 8, !dbg !421
  %add9 = add i64 %20, %21, !dbg !422
  %shr = lshr i64 %add9, 5, !dbg !423
  %add10 = add i64 %19, %shr, !dbg !424
  %22 = load i64, ptr %ll_end, align 8, !dbg !425
  %cmp11 = icmp ule i64 %add10, %22, !dbg !426
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !427

if.then13:                                        ; preds = %cond.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !428

if.end14:                                         ; preds = %cond.end
  br label %do.body, !dbg !429

do.body:                                          ; preds = %if.end14
  br label %do.cond, !dbg !430

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !430

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %wrkmem.addr, align 8, !dbg !432
  call void @llvm.memset.p0.i64(ptr align 1 %23, i8 0, i64 16384, i1 false), !dbg !433
  %24 = load ptr, ptr %ip, align 8, !dbg !434
  %25 = load i64, ptr %ll, align 8, !dbg !435
  %26 = load ptr, ptr %op, align 8, !dbg !436
  %27 = load ptr, ptr %out_len.addr, align 8, !dbg !437
  %28 = load i64, ptr %t, align 8, !dbg !438
  %29 = load ptr, ptr %wrkmem.addr, align 8, !dbg !439
  %30 = load i8, ptr %bitstream_version.addr, align 1, !dbg !440
  %call = call i64 @lzo1x_1_do_compress(ptr noundef %24, i64 noundef %25, ptr noundef %26, ptr noundef %27, i64 noundef %28, ptr noundef %29, ptr noundef %state_offset, i8 noundef zeroext %30) #7, !dbg !441
  store i64 %call, ptr %t, align 8, !dbg !442
  %31 = load i64, ptr %ll, align 8, !dbg !443
  %32 = load ptr, ptr %ip, align 8, !dbg !444
  %add.ptr = getelementptr i8, ptr %32, i64 %31, !dbg !444
  store ptr %add.ptr, ptr %ip, align 8, !dbg !444
  %33 = load ptr, ptr %out_len.addr, align 8, !dbg !445
  %34 = load i64, ptr %33, align 8, !dbg !446
  %35 = load ptr, ptr %op, align 8, !dbg !447
  %add.ptr15 = getelementptr i8, ptr %35, i64 %34, !dbg !447
  store ptr %add.ptr15, ptr %op, align 8, !dbg !447
  %36 = load i64, ptr %ll, align 8, !dbg !448
  %37 = load i64, ptr %l, align 8, !dbg !449
  %sub = sub i64 %37, %36, !dbg !449
  store i64 %sub, ptr %l, align 8, !dbg !449
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !450
  br label %cleanup, !dbg !450

cleanup:                                          ; preds = %do.end, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll_end) #8, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #8, !dbg !450
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !405, !llvm.loop !451

while.end:                                        ; preds = %cleanup, %while.cond
  %38 = load i64, ptr %l, align 8, !dbg !454
  %39 = load i64, ptr %t, align 8, !dbg !455
  %add17 = add i64 %39, %38, !dbg !455
  store i64 %add17, ptr %t, align 8, !dbg !455
  %40 = load i64, ptr %t, align 8, !dbg !456
  %cmp18 = icmp ugt i64 %40, 0, !dbg !457
  br i1 %cmp18, label %if.then20, label %if.end98, !dbg !458

if.then20:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #8, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %ii, metadata !46, metadata !DIExpression()), !dbg !460
  %41 = load ptr, ptr %in.addr, align 8, !dbg !461
  %42 = load i64, ptr %in_len.addr, align 8, !dbg !462
  %add.ptr21 = getelementptr i8, ptr %41, i64 %42, !dbg !463
  %43 = load i64, ptr %t, align 8, !dbg !464
  %idx.neg = sub i64 0, %43, !dbg !465
  %add.ptr22 = getelementptr i8, ptr %add.ptr21, i64 %idx.neg, !dbg !465
  store ptr %add.ptr22, ptr %ii, align 8, !dbg !460
  %44 = load ptr, ptr %op, align 8, !dbg !466
  %45 = load ptr, ptr %data_start, align 8, !dbg !467
  %cmp23 = icmp eq ptr %44, %45, !dbg !468
  br i1 %cmp23, label %land.lhs.true, label %if.else31, !dbg !469

land.lhs.true:                                    ; preds = %if.then20
  %46 = load i64, ptr %t, align 8, !dbg !470
  %cmp25 = icmp ule i64 %46, 238, !dbg !471
  br i1 %cmp25, label %if.then27, label %if.else31, !dbg !472

if.then27:                                        ; preds = %land.lhs.true
  %47 = load i64, ptr %t, align 8, !dbg !473
  %add28 = add i64 17, %47, !dbg !475
  %conv29 = trunc i64 %add28 to i8, !dbg !476
  %48 = load ptr, ptr %op, align 8, !dbg !477
  %incdec.ptr30 = getelementptr i8, ptr %48, i32 1, !dbg !477
  store ptr %incdec.ptr30, ptr %op, align 8, !dbg !477
  store i8 %conv29, ptr %48, align 1, !dbg !478
  br label %if.end58, !dbg !479

if.else31:                                        ; preds = %land.lhs.true, %if.then20
  %49 = load i64, ptr %t, align 8, !dbg !480
  %cmp32 = icmp ule i64 %49, 3, !dbg !481
  br i1 %cmp32, label %if.then34, label %if.else37, !dbg !482

if.then34:                                        ; preds = %if.else31
  %50 = load i64, ptr %t, align 8, !dbg !483
  %51 = load ptr, ptr %op, align 8, !dbg !485
  %52 = load i8, ptr %state_offset, align 1, !dbg !486
  %idxprom = sext i8 %52 to i64, !dbg !485
  %arrayidx = getelementptr i8, ptr %51, i64 %idxprom, !dbg !485
  %53 = load i8, ptr %arrayidx, align 1, !dbg !487
  %conv35 = zext i8 %53 to i64, !dbg !487
  %or = or i64 %conv35, %50, !dbg !487
  %conv36 = trunc i64 %or to i8, !dbg !487
  store i8 %conv36, ptr %arrayidx, align 1, !dbg !487
  br label %if.end57, !dbg !488

if.else37:                                        ; preds = %if.else31
  %54 = load i64, ptr %t, align 8, !dbg !489
  %cmp38 = icmp ule i64 %54, 18, !dbg !490
  br i1 %cmp38, label %if.then40, label %if.else44, !dbg !491

if.then40:                                        ; preds = %if.else37
  %55 = load i64, ptr %t, align 8, !dbg !492
  %sub41 = sub i64 %55, 3, !dbg !494
  %conv42 = trunc i64 %sub41 to i8, !dbg !495
  %56 = load ptr, ptr %op, align 8, !dbg !496
  %incdec.ptr43 = getelementptr i8, ptr %56, i32 1, !dbg !496
  store ptr %incdec.ptr43, ptr %op, align 8, !dbg !496
  store i8 %conv42, ptr %56, align 1, !dbg !497
  br label %if.end56, !dbg !498

if.else44:                                        ; preds = %if.else37
  call void @llvm.lifetime.start.p0(i64 8, ptr %tt) #8, !dbg !499
  call void @llvm.dbg.declare(metadata ptr %tt, metadata !49, metadata !DIExpression()), !dbg !500
  %57 = load i64, ptr %t, align 8, !dbg !501
  %sub45 = sub i64 %57, 18, !dbg !502
  store i64 %sub45, ptr %tt, align 8, !dbg !500
  %58 = load ptr, ptr %op, align 8, !dbg !503
  %incdec.ptr46 = getelementptr i8, ptr %58, i32 1, !dbg !503
  store ptr %incdec.ptr46, ptr %op, align 8, !dbg !503
  store i8 0, ptr %58, align 1, !dbg !504
  br label %while.cond47, !dbg !505

while.cond47:                                     ; preds = %while.body50, %if.else44
  %59 = load i64, ptr %tt, align 8, !dbg !506
  %cmp48 = icmp ugt i64 %59, 255, !dbg !507
  br i1 %cmp48, label %while.body50, label %while.end53, !dbg !505

while.body50:                                     ; preds = %while.cond47
  %60 = load i64, ptr %tt, align 8, !dbg !508
  %sub51 = sub i64 %60, 255, !dbg !508
  store i64 %sub51, ptr %tt, align 8, !dbg !508
  %61 = load ptr, ptr %op, align 8, !dbg !510
  %incdec.ptr52 = getelementptr i8, ptr %61, i32 1, !dbg !510
  store ptr %incdec.ptr52, ptr %op, align 8, !dbg !510
  store i8 0, ptr %61, align 1, !dbg !511
  br label %while.cond47, !dbg !505, !llvm.loop !512

while.end53:                                      ; preds = %while.cond47
  %62 = load i64, ptr %tt, align 8, !dbg !514
  %conv54 = trunc i64 %62 to i8, !dbg !514
  %63 = load ptr, ptr %op, align 8, !dbg !515
  %incdec.ptr55 = getelementptr i8, ptr %63, i32 1, !dbg !515
  store ptr %incdec.ptr55, ptr %op, align 8, !dbg !515
  store i8 %conv54, ptr %63, align 1, !dbg !516
  call void @llvm.lifetime.end.p0(i64 8, ptr %tt) #8, !dbg !517
  br label %if.end56

if.end56:                                         ; preds = %while.end53, %if.then40
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then34
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then27
  %64 = load i64, ptr %t, align 8, !dbg !518
  %cmp59 = icmp uge i64 %64, 16, !dbg !519
  br i1 %cmp59, label %if.then61, label %if.end86, !dbg !520

if.then61:                                        ; preds = %if.end58
  br label %do.body62, !dbg !521

do.body62:                                        ; preds = %do.cond82, %if.then61
  br label %do.body63, !dbg !522

do.body63:                                        ; preds = %do.body62
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !54, metadata !DIExpression()), !dbg !523
  %65 = load ptr, ptr %op, align 8, !dbg !523
  store ptr %65, ptr %__pptr, align 8, !dbg !523
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr64) #8, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %__pptr64, metadata !58, metadata !DIExpression()), !dbg !524
  %66 = load ptr, ptr %ii, align 8, !dbg !524
  store ptr %66, ptr %__pptr64, align 8, !dbg !524
  %67 = load ptr, ptr %__pptr64, align 8, !dbg !524
  %x = getelementptr inbounds %struct.anon, ptr %67, i32 0, i32 0, !dbg !524
  %68 = load i64, ptr %x, align 1, !dbg !524
  store i64 %68, ptr %tmp65, align 8, !dbg !524
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr64) #8, !dbg !523
  %69 = load i64, ptr %tmp65, align 8, !dbg !524
  %70 = load ptr, ptr %__pptr, align 8, !dbg !523
  %x66 = getelementptr inbounds %struct.anon.0, ptr %70, i32 0, i32 0, !dbg !523
  store i64 %69, ptr %x66, align 1, !dbg !523
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !522
  br label %do.cond67, !dbg !523

do.cond67:                                        ; preds = %do.body63
  br label %do.end68, !dbg !523

do.end68:                                         ; preds = %do.cond67
  br label %do.body69, !dbg !525

do.body69:                                        ; preds = %do.end68
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr70) #8, !dbg !526
  call void @llvm.dbg.declare(metadata ptr %__pptr70, metadata !71, metadata !DIExpression()), !dbg !526
  %71 = load ptr, ptr %op, align 8, !dbg !526
  %add.ptr71 = getelementptr i8, ptr %71, i64 8, !dbg !526
  store ptr %add.ptr71, ptr %__pptr70, align 8, !dbg !526
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr72) #8, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %__pptr72, metadata !77, metadata !DIExpression()), !dbg !527
  %72 = load ptr, ptr %ii, align 8, !dbg !527
  %add.ptr73 = getelementptr i8, ptr %72, i64 8, !dbg !527
  store ptr %add.ptr73, ptr %__pptr72, align 8, !dbg !527
  %73 = load ptr, ptr %__pptr72, align 8, !dbg !527
  %x75 = getelementptr inbounds %struct.anon.1, ptr %73, i32 0, i32 0, !dbg !527
  %74 = load i64, ptr %x75, align 1, !dbg !527
  store i64 %74, ptr %tmp74, align 8, !dbg !527
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr72) #8, !dbg !526
  %75 = load i64, ptr %tmp74, align 8, !dbg !527
  %76 = load ptr, ptr %__pptr70, align 8, !dbg !526
  %x76 = getelementptr inbounds %struct.anon.2, ptr %76, i32 0, i32 0, !dbg !526
  store i64 %75, ptr %x76, align 1, !dbg !526
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr70) #8, !dbg !525
  br label %do.cond77, !dbg !526

do.cond77:                                        ; preds = %do.body69
  br label %do.end78, !dbg !526

do.end78:                                         ; preds = %do.cond77
  %77 = load ptr, ptr %op, align 8, !dbg !528
  %add.ptr79 = getelementptr i8, ptr %77, i64 16, !dbg !528
  store ptr %add.ptr79, ptr %op, align 8, !dbg !528
  %78 = load ptr, ptr %ii, align 8, !dbg !529
  %add.ptr80 = getelementptr i8, ptr %78, i64 16, !dbg !529
  store ptr %add.ptr80, ptr %ii, align 8, !dbg !529
  %79 = load i64, ptr %t, align 8, !dbg !530
  %sub81 = sub i64 %79, 16, !dbg !530
  store i64 %sub81, ptr %t, align 8, !dbg !530
  br label %do.cond82, !dbg !531

do.cond82:                                        ; preds = %do.end78
  %80 = load i64, ptr %t, align 8, !dbg !532
  %cmp83 = icmp uge i64 %80, 16, !dbg !533
  br i1 %cmp83, label %do.body62, label %do.end85, !dbg !531, !llvm.loop !534

do.end85:                                         ; preds = %do.cond82
  br label %if.end86, !dbg !531

if.end86:                                         ; preds = %do.end85, %if.end58
  %81 = load i64, ptr %t, align 8, !dbg !536
  %cmp87 = icmp ugt i64 %81, 0, !dbg !538
  br i1 %cmp87, label %if.then89, label %if.end97, !dbg !539

if.then89:                                        ; preds = %if.end86
  br label %do.body90, !dbg !540

do.body90:                                        ; preds = %do.cond93, %if.then89
  %82 = load ptr, ptr %ii, align 8, !dbg !541
  %incdec.ptr91 = getelementptr i8, ptr %82, i32 1, !dbg !541
  store ptr %incdec.ptr91, ptr %ii, align 8, !dbg !541
  %83 = load i8, ptr %82, align 1, !dbg !543
  %84 = load ptr, ptr %op, align 8, !dbg !544
  %incdec.ptr92 = getelementptr i8, ptr %84, i32 1, !dbg !544
  store ptr %incdec.ptr92, ptr %op, align 8, !dbg !544
  store i8 %83, ptr %84, align 1, !dbg !545
  br label %do.cond93, !dbg !546

do.cond93:                                        ; preds = %do.body90
  %85 = load i64, ptr %t, align 8, !dbg !547
  %dec = add i64 %85, -1, !dbg !547
  store i64 %dec, ptr %t, align 8, !dbg !547
  %cmp94 = icmp ugt i64 %dec, 0, !dbg !548
  br i1 %cmp94, label %do.body90, label %do.end96, !dbg !546, !llvm.loop !549

do.end96:                                         ; preds = %do.cond93
  br label %if.end97, !dbg !546

if.end97:                                         ; preds = %do.end96, %if.end86
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #8, !dbg !551
  br label %if.end98, !dbg !552

if.end98:                                         ; preds = %if.end97, %while.end
  %86 = load ptr, ptr %op, align 8, !dbg !553
  %incdec.ptr99 = getelementptr i8, ptr %86, i32 1, !dbg !553
  store ptr %incdec.ptr99, ptr %op, align 8, !dbg !553
  store i8 17, ptr %86, align 1, !dbg !554
  %87 = load ptr, ptr %op, align 8, !dbg !555
  %incdec.ptr100 = getelementptr i8, ptr %87, i32 1, !dbg !555
  store ptr %incdec.ptr100, ptr %op, align 8, !dbg !555
  store i8 0, ptr %87, align 1, !dbg !556
  %88 = load ptr, ptr %op, align 8, !dbg !557
  %incdec.ptr101 = getelementptr i8, ptr %88, i32 1, !dbg !557
  store ptr %incdec.ptr101, ptr %op, align 8, !dbg !557
  store i8 0, ptr %88, align 1, !dbg !558
  %89 = load ptr, ptr %op, align 8, !dbg !559
  %90 = load ptr, ptr %out.addr, align 8, !dbg !560
  %sub.ptr.lhs.cast = ptrtoint ptr %89 to i64, !dbg !561
  %sub.ptr.rhs.cast = ptrtoint ptr %90 to i64, !dbg !561
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !561
  %91 = load ptr, ptr %out_len.addr, align 8, !dbg !562
  store i64 %sub.ptr.sub, ptr %91, align 8, !dbg !563
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m4_max_offset) #8, !dbg !564
  call void @llvm.lifetime.end.p0(i64 1, ptr %state_offset) #8, !dbg !564
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #8, !dbg !564
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #8, !dbg !564
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_start) #8, !dbg !564
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #8, !dbg !564
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #8, !dbg !564
  ret i32 0, !dbg !565

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @lzorle1x_1_compress(ptr noundef %in, i64 noundef %in_len, ptr noundef %out, ptr noundef %out_len, ptr noundef %wrkmem) #0 align 16 !dbg !566 {
entry:
  %in.addr = alloca ptr, align 8
  %in_len.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  %out_len.addr = alloca ptr, align 8
  %wrkmem.addr = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !568, metadata !DIExpression()), !dbg !573
  store i64 %in_len, ptr %in_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_len.addr, metadata !569, metadata !DIExpression()), !dbg !574
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !570, metadata !DIExpression()), !dbg !575
  store ptr %out_len, ptr %out_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_len.addr, metadata !571, metadata !DIExpression()), !dbg !576
  store ptr %wrkmem, ptr %wrkmem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wrkmem.addr, metadata !572, metadata !DIExpression()), !dbg !577
  %0 = load ptr, ptr %in.addr, align 8, !dbg !578
  %1 = load i64, ptr %in_len.addr, align 8, !dbg !579
  %2 = load ptr, ptr %out.addr, align 8, !dbg !580
  %3 = load ptr, ptr %out_len.addr, align 8, !dbg !581
  %4 = load ptr, ptr %wrkmem.addr, align 8, !dbg !582
  %call = call i32 @lzogeneric1x_1_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 1) #7, !dbg !583
  ret i32 %call, !dbg !584
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @lzo1x_1_do_compress(ptr noundef %in, i64 noundef %in_len, ptr noundef %out, ptr noundef %out_len, i64 noundef %ti, ptr noundef %wrkmem, ptr noundef %state_offset, i8 noundef zeroext %bitstream_version) #4 align 16 !dbg !93 {
entry:
  %in.addr = alloca ptr, align 8
  %in_len.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  %out_len.addr = alloca ptr, align 8
  %ti.addr = alloca i64, align 8
  %wrkmem.addr = alloca ptr, align 8
  %state_offset.addr = alloca ptr, align 8
  %bitstream_version.addr = alloca i8, align 1
  %ip = alloca ptr, align 8
  %op = alloca ptr, align 8
  %in_end = alloca ptr, align 8
  %ip_end = alloca ptr, align 8
  %ii = alloca ptr, align 8
  %dict = alloca ptr, align 8
  %m_pos = alloca ptr, align 8
  %t = alloca i64, align 8
  %m_len = alloca i64, align 8
  %m_off = alloca i64, align 8
  %dv = alloca i32, align 4
  %run_length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ir = alloca ptr, align 8
  %limit = alloca ptr, align 8
  %__UNIQUE_ID___x195 = alloca ptr, align 8
  %__UNIQUE_ID___y196 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %dv64 = alloca i64, align 8
  %__pptr = alloca ptr, align 8
  %tmp25 = alloca i64, align 8
  %__pptr26 = alloca ptr, align 8
  %tmp28 = alloca i64, align 8
  %__pptr30 = alloca ptr, align 8
  %tmp32 = alloca i64, align 8
  %__pptr35 = alloca ptr, align 8
  %tmp37 = alloca i64, align 8
  %__pptr49 = alloca ptr, align 8
  %tmp50 = alloca i64, align 8
  %__pptr124 = alloca ptr, align 8
  %__pptr125 = alloca ptr, align 8
  %tmp126 = alloca i32, align 4
  %__pptr138 = alloca ptr, align 8
  %__pptr139 = alloca ptr, align 8
  %tmp140 = alloca i64, align 8
  %__pptr146 = alloca ptr, align 8
  %__pptr148 = alloca ptr, align 8
  %tmp150 = alloca i64, align 8
  %tt = alloca i64, align 8
  %__pptr185 = alloca ptr, align 8
  %__pptr186 = alloca ptr, align 8
  %tmp187 = alloca i64, align 8
  %__pptr193 = alloca ptr, align 8
  %__pptr195 = alloca ptr, align 8
  %tmp197 = alloca i64, align 8
  %v = alloca i64, align 8
  %__pptr240 = alloca ptr, align 8
  %tmp242 = alloca i64, align 8
  %__pptr244 = alloca ptr, align 8
  %tmp246 = alloca i64, align 8
  %__pptr260 = alloca ptr, align 8
  %tmp262 = alloca i64, align 8
  %__pptr264 = alloca ptr, align 8
  %tmp266 = alloca i64, align 8
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !98, metadata !DIExpression()), !dbg !585
  store i64 %in_len, ptr %in_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_len.addr, metadata !99, metadata !DIExpression()), !dbg !586
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !100, metadata !DIExpression()), !dbg !587
  store ptr %out_len, ptr %out_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_len.addr, metadata !101, metadata !DIExpression()), !dbg !588
  store i64 %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !102, metadata !DIExpression()), !dbg !589
  store ptr %wrkmem, ptr %wrkmem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wrkmem.addr, metadata !103, metadata !DIExpression()), !dbg !590
  store ptr %state_offset, ptr %state_offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_offset.addr, metadata !104, metadata !DIExpression()), !dbg !591
  store i8 %bitstream_version, ptr %bitstream_version.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bitstream_version.addr, metadata !105, metadata !DIExpression()), !dbg !592
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #8, !dbg !593
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !106, metadata !DIExpression()), !dbg !594
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #8, !dbg !595
  call void @llvm.dbg.declare(metadata ptr %op, metadata !107, metadata !DIExpression()), !dbg !596
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_end) #8, !dbg !597
  call void @llvm.dbg.declare(metadata ptr %in_end, metadata !108, metadata !DIExpression()), !dbg !598
  %0 = load ptr, ptr %in.addr, align 8, !dbg !599
  %1 = load i64, ptr %in_len.addr, align 8, !dbg !600
  %add.ptr = getelementptr i8, ptr %0, i64 %1, !dbg !601
  store ptr %add.ptr, ptr %in_end, align 8, !dbg !598
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip_end) #8, !dbg !602
  call void @llvm.dbg.declare(metadata ptr %ip_end, metadata !110, metadata !DIExpression()), !dbg !603
  %2 = load ptr, ptr %in.addr, align 8, !dbg !604
  %3 = load i64, ptr %in_len.addr, align 8, !dbg !605
  %add.ptr1 = getelementptr i8, ptr %2, i64 %3, !dbg !606
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i64 -20, !dbg !607
  store ptr %add.ptr2, ptr %ip_end, align 8, !dbg !603
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #8, !dbg !608
  call void @llvm.dbg.declare(metadata ptr %ii, metadata !111, metadata !DIExpression()), !dbg !609
  call void @llvm.lifetime.start.p0(i64 8, ptr %dict) #8, !dbg !610
  call void @llvm.dbg.declare(metadata ptr %dict, metadata !112, metadata !DIExpression()), !dbg !611
  %4 = load ptr, ptr %wrkmem.addr, align 8, !dbg !612
  store ptr %4, ptr %dict, align 8, !dbg !611
  %5 = load ptr, ptr %out.addr, align 8, !dbg !613
  store ptr %5, ptr %op, align 8, !dbg !614
  %6 = load ptr, ptr %in.addr, align 8, !dbg !615
  store ptr %6, ptr %ip, align 8, !dbg !616
  %7 = load ptr, ptr %ip, align 8, !dbg !617
  store ptr %7, ptr %ii, align 8, !dbg !618
  %8 = load i64, ptr %ti.addr, align 8, !dbg !619
  %cmp = icmp ult i64 %8, 4, !dbg !620
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !619

cond.true:                                        ; preds = %entry
  %9 = load i64, ptr %ti.addr, align 8, !dbg !621
  %sub = sub i64 4, %9, !dbg !622
  br label %cond.end, !dbg !619

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !619

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !619
  %10 = load ptr, ptr %ip, align 8, !dbg !623
  %add.ptr3 = getelementptr i8, ptr %10, i64 %cond, !dbg !623
  store ptr %add.ptr3, ptr %ip, align 8, !dbg !623
  br label %for.cond, !dbg !624

for.cond:                                         ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_pos) #8, !dbg !625
  call void @llvm.dbg.declare(metadata ptr %m_pos, metadata !114, metadata !DIExpression()), !dbg !626
  store ptr null, ptr %m_pos, align 8, !dbg !626
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #8, !dbg !627
  call void @llvm.dbg.declare(metadata ptr %t, metadata !118, metadata !DIExpression()), !dbg !628
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_len) #8, !dbg !627
  call void @llvm.dbg.declare(metadata ptr %m_len, metadata !119, metadata !DIExpression()), !dbg !629
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_off) #8, !dbg !627
  call void @llvm.dbg.declare(metadata ptr %m_off, metadata !120, metadata !DIExpression()), !dbg !630
  call void @llvm.lifetime.start.p0(i64 4, ptr %dv) #8, !dbg !631
  call void @llvm.dbg.declare(metadata ptr %dv, metadata !121, metadata !DIExpression()), !dbg !632
  call void @llvm.lifetime.start.p0(i64 4, ptr %run_length) #8, !dbg !633
  call void @llvm.dbg.declare(metadata ptr %run_length, metadata !124, metadata !DIExpression()), !dbg !634
  store i32 0, ptr %run_length, align 4, !dbg !634
  br label %literal, !dbg !633

literal:                                          ; preds = %if.then107, %for.cond
  call void @llvm.dbg.label(metadata !125), !dbg !635
  %11 = load ptr, ptr %ip, align 8, !dbg !636
  %12 = load ptr, ptr %ii, align 8, !dbg !637
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i64, !dbg !638
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i64, !dbg !638
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !638
  %shr = ashr i64 %sub.ptr.sub, 5, !dbg !639
  %add = add i64 1, %shr, !dbg !640
  %13 = load ptr, ptr %ip, align 8, !dbg !641
  %add.ptr4 = getelementptr i8, ptr %13, i64 %add, !dbg !641
  store ptr %add.ptr4, ptr %ip, align 8, !dbg !641
  br label %next, !dbg !642

next:                                             ; preds = %finished_writing_instruction, %literal
  call void @llvm.dbg.label(metadata !126), !dbg !643
  %14 = load ptr, ptr %ip, align 8, !dbg !644
  %15 = load ptr, ptr %ip_end, align 8, !dbg !644
  %cmp5 = icmp uge ptr %14, %15, !dbg !644
  %lnot = xor i1 %cmp5, true, !dbg !644
  %lnot6 = xor i1 %lnot, true, !dbg !644
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !644
  %conv = sext i32 %lnot.ext to i64, !dbg !644
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !644
  %tobool = icmp ne i64 %expval, 0, !dbg !644
  br i1 %tobool, label %if.then, label %if.end, !dbg !646

if.then:                                          ; preds = %next
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup423, !dbg !647

if.end:                                           ; preds = %next
  %16 = load ptr, ptr %ip, align 8, !dbg !648
  %call = call i32 @get_unaligned_le32(ptr noundef %16) #7, !dbg !649
  store i32 %call, ptr %dv, align 4, !dbg !650
  %17 = load i32, ptr %dv, align 4, !dbg !651
  %cmp7 = icmp eq i32 %17, 0, !dbg !652
  br i1 %cmp7, label %land.lhs.true, label %if.else, !dbg !653

land.lhs.true:                                    ; preds = %if.end
  %18 = load i8, ptr %bitstream_version.addr, align 1, !dbg !654
  %conv9 = zext i8 %18 to i32, !dbg !654
  %tobool10 = icmp ne i32 %conv9, 0, !dbg !654
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !655

if.then11:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %ir) #8, !dbg !656
  call void @llvm.dbg.declare(metadata ptr %ir, metadata !127, metadata !DIExpression()), !dbg !657
  %19 = load ptr, ptr %ip, align 8, !dbg !658
  %add.ptr12 = getelementptr i8, ptr %19, i64 4, !dbg !659
  store ptr %add.ptr12, ptr %ir, align 8, !dbg !657
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #8, !dbg !660
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !130, metadata !DIExpression()), !dbg !661
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x195) #8, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x195, metadata !131, metadata !DIExpression()), !dbg !662
  %20 = load ptr, ptr %ip_end, align 8, !dbg !662
  store ptr %20, ptr %__UNIQUE_ID___x195, align 8, !dbg !662
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y196) #8, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y196, metadata !133, metadata !DIExpression()), !dbg !662
  %21 = load ptr, ptr %ip, align 8, !dbg !662
  %add.ptr13 = getelementptr i8, ptr %21, i64 2051, !dbg !662
  %add.ptr14 = getelementptr i8, ptr %add.ptr13, i64 1, !dbg !662
  store ptr %add.ptr14, ptr %__UNIQUE_ID___y196, align 8, !dbg !662
  %22 = load ptr, ptr %__UNIQUE_ID___x195, align 8, !dbg !662
  %23 = load ptr, ptr %__UNIQUE_ID___y196, align 8, !dbg !662
  %cmp15 = icmp ult ptr %22, %23, !dbg !662
  br i1 %cmp15, label %cond.true17, label %cond.false18, !dbg !662

cond.true17:                                      ; preds = %if.then11
  %24 = load ptr, ptr %__UNIQUE_ID___x195, align 8, !dbg !662
  br label %cond.end19, !dbg !662

cond.false18:                                     ; preds = %if.then11
  %25 = load ptr, ptr %__UNIQUE_ID___y196, align 8, !dbg !662
  br label %cond.end19, !dbg !662

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi ptr [ %24, %cond.true17 ], [ %25, %cond.false18 ], !dbg !662
  store ptr %cond20, ptr %tmp, align 8, !dbg !662
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y196) #8, !dbg !663
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x195) #8, !dbg !663
  %26 = load ptr, ptr %tmp, align 8, !dbg !662
  store ptr %26, ptr %limit, align 8, !dbg !661
  call void @llvm.lifetime.start.p0(i64 8, ptr %dv64) #8, !dbg !664
  call void @llvm.dbg.declare(metadata ptr %dv64, metadata !134, metadata !DIExpression()), !dbg !665
  br label %for.cond21, !dbg !666

for.cond21:                                       ; preds = %for.inc, %cond.end19
  %27 = load ptr, ptr %ir, align 8, !dbg !667
  %add.ptr22 = getelementptr i8, ptr %27, i64 32, !dbg !668
  %28 = load ptr, ptr %limit, align 8, !dbg !669
  %cmp23 = icmp ule ptr %add.ptr22, %28, !dbg !670
  br i1 %cmp23, label %for.body, label %for.end, !dbg !671

for.body:                                         ; preds = %for.cond21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !672
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !135, metadata !DIExpression()), !dbg !672
  %29 = load ptr, ptr %ir, align 8, !dbg !672
  store ptr %29, ptr %__pptr, align 8, !dbg !672
  %30 = load ptr, ptr %__pptr, align 8, !dbg !672
  %x = getelementptr inbounds %struct.anon.3, ptr %30, i32 0, i32 0, !dbg !672
  %31 = load i64, ptr %x, align 1, !dbg !672
  store i64 %31, ptr %tmp25, align 8, !dbg !672
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !673
  %32 = load i64, ptr %tmp25, align 8, !dbg !672
  store i64 %32, ptr %dv64, align 8, !dbg !674
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr26) #8, !dbg !675
  call void @llvm.dbg.declare(metadata ptr %__pptr26, metadata !140, metadata !DIExpression()), !dbg !675
  %33 = load ptr, ptr %ir, align 8, !dbg !675
  %add.ptr27 = getelementptr i64, ptr %33, i64 1, !dbg !675
  store ptr %add.ptr27, ptr %__pptr26, align 8, !dbg !675
  %34 = load ptr, ptr %__pptr26, align 8, !dbg !675
  %x29 = getelementptr inbounds %struct.anon.4, ptr %34, i32 0, i32 0, !dbg !675
  %35 = load i64, ptr %x29, align 1, !dbg !675
  store i64 %35, ptr %tmp28, align 8, !dbg !675
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr26) #8, !dbg !676
  %36 = load i64, ptr %tmp28, align 8, !dbg !675
  %37 = load i64, ptr %dv64, align 8, !dbg !677
  %or = or i64 %37, %36, !dbg !677
  store i64 %or, ptr %dv64, align 8, !dbg !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr30) #8, !dbg !678
  call void @llvm.dbg.declare(metadata ptr %__pptr30, metadata !147, metadata !DIExpression()), !dbg !678
  %38 = load ptr, ptr %ir, align 8, !dbg !678
  %add.ptr31 = getelementptr i64, ptr %38, i64 2, !dbg !678
  store ptr %add.ptr31, ptr %__pptr30, align 8, !dbg !678
  %39 = load ptr, ptr %__pptr30, align 8, !dbg !678
  %x33 = getelementptr inbounds %struct.anon.5, ptr %39, i32 0, i32 0, !dbg !678
  %40 = load i64, ptr %x33, align 1, !dbg !678
  store i64 %40, ptr %tmp32, align 8, !dbg !678
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr30) #8, !dbg !679
  %41 = load i64, ptr %tmp32, align 8, !dbg !678
  %42 = load i64, ptr %dv64, align 8, !dbg !680
  %or34 = or i64 %42, %41, !dbg !680
  store i64 %or34, ptr %dv64, align 8, !dbg !680
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr35) #8, !dbg !681
  call void @llvm.dbg.declare(metadata ptr %__pptr35, metadata !154, metadata !DIExpression()), !dbg !681
  %43 = load ptr, ptr %ir, align 8, !dbg !681
  %add.ptr36 = getelementptr i64, ptr %43, i64 3, !dbg !681
  store ptr %add.ptr36, ptr %__pptr35, align 8, !dbg !681
  %44 = load ptr, ptr %__pptr35, align 8, !dbg !681
  %x38 = getelementptr inbounds %struct.anon.6, ptr %44, i32 0, i32 0, !dbg !681
  %45 = load i64, ptr %x38, align 1, !dbg !681
  store i64 %45, ptr %tmp37, align 8, !dbg !681
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr35) #8, !dbg !682
  %46 = load i64, ptr %tmp37, align 8, !dbg !681
  %47 = load i64, ptr %dv64, align 8, !dbg !683
  %or39 = or i64 %47, %46, !dbg !683
  store i64 %or39, ptr %dv64, align 8, !dbg !683
  %48 = load i64, ptr %dv64, align 8, !dbg !684
  %tobool40 = icmp ne i64 %48, 0, !dbg !684
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !686

if.then41:                                        ; preds = %for.body
  br label %for.end, !dbg !687

if.end42:                                         ; preds = %for.body
  br label %for.inc, !dbg !688

for.inc:                                          ; preds = %if.end42
  %49 = load ptr, ptr %ir, align 8, !dbg !689
  %add.ptr43 = getelementptr i8, ptr %49, i64 32, !dbg !689
  store ptr %add.ptr43, ptr %ir, align 8, !dbg !689
  br label %for.cond21, !dbg !690, !llvm.loop !691

for.end:                                          ; preds = %if.then41, %for.cond21
  br label %for.cond44, !dbg !693

for.cond44:                                       ; preds = %for.inc57, %for.end
  %50 = load ptr, ptr %ir, align 8, !dbg !694
  %add.ptr45 = getelementptr i8, ptr %50, i64 8, !dbg !695
  %51 = load ptr, ptr %limit, align 8, !dbg !696
  %cmp46 = icmp ule ptr %add.ptr45, %51, !dbg !697
  br i1 %cmp46, label %for.body48, label %for.end59, !dbg !698

for.body48:                                       ; preds = %for.cond44
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr49) #8, !dbg !699
  call void @llvm.dbg.declare(metadata ptr %__pptr49, metadata !161, metadata !DIExpression()), !dbg !699
  %52 = load ptr, ptr %ir, align 8, !dbg !699
  store ptr %52, ptr %__pptr49, align 8, !dbg !699
  %53 = load ptr, ptr %__pptr49, align 8, !dbg !699
  %x51 = getelementptr inbounds %struct.anon.7, ptr %53, i32 0, i32 0, !dbg !699
  %54 = load i64, ptr %x51, align 1, !dbg !699
  store i64 %54, ptr %tmp50, align 8, !dbg !699
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr49) #8, !dbg !700
  %55 = load i64, ptr %tmp50, align 8, !dbg !699
  store i64 %55, ptr %dv64, align 8, !dbg !701
  %56 = load i64, ptr %dv64, align 8, !dbg !702
  %tobool52 = icmp ne i64 %56, 0, !dbg !702
  br i1 %tobool52, label %if.then53, label %if.end56, !dbg !704

if.then53:                                        ; preds = %for.body48
  %57 = load i64, ptr %dv64, align 8, !dbg !705
  %58 = call i64 @llvm.cttz.i64(i64 %57, i1 true), !dbg !707
  %cast = trunc i64 %58 to i32, !dbg !707
  %shr54 = ashr i32 %cast, 3, !dbg !708
  %59 = load ptr, ptr %ir, align 8, !dbg !709
  %idx.ext = sext i32 %shr54 to i64, !dbg !709
  %add.ptr55 = getelementptr i8, ptr %59, i64 %idx.ext, !dbg !709
  store ptr %add.ptr55, ptr %ir, align 8, !dbg !709
  br label %for.end59, !dbg !710

if.end56:                                         ; preds = %for.body48
  br label %for.inc57, !dbg !711

for.inc57:                                        ; preds = %if.end56
  %60 = load ptr, ptr %ir, align 8, !dbg !712
  %add.ptr58 = getelementptr i8, ptr %60, i64 8, !dbg !712
  store ptr %add.ptr58, ptr %ir, align 8, !dbg !712
  br label %for.cond44, !dbg !713, !llvm.loop !714

for.end59:                                        ; preds = %if.then53, %for.cond44
  br label %while.cond, !dbg !716

while.cond:                                       ; preds = %while.body, %for.end59
  %61 = load ptr, ptr %ir, align 8, !dbg !717
  %62 = load ptr, ptr %limit, align 8, !dbg !717
  %cmp60 = icmp ult ptr %61, %62, !dbg !717
  %lnot62 = xor i1 %cmp60, true, !dbg !717
  %lnot64 = xor i1 %lnot62, true, !dbg !717
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !717
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !717
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 1), !dbg !717
  %tobool68 = icmp ne i64 %expval67, 0, !dbg !717
  br i1 %tobool68, label %land.rhs, label %land.end, !dbg !718

land.rhs:                                         ; preds = %while.cond
  %63 = load ptr, ptr %ir, align 8, !dbg !719
  %64 = load i8, ptr %63, align 1, !dbg !719
  %conv69 = zext i8 %64 to i32, !dbg !719
  %cmp70 = icmp eq i32 %conv69, 0, !dbg !719
  %lnot72 = xor i1 %cmp70, true, !dbg !719
  %lnot74 = xor i1 %lnot72, true, !dbg !719
  %lnot.ext75 = zext i1 %lnot74 to i32, !dbg !719
  %conv76 = sext i32 %lnot.ext75 to i64, !dbg !719
  %expval77 = call i64 @llvm.expect.i64(i64 %conv76, i64 0), !dbg !719
  %tobool78 = icmp ne i64 %expval77, 0, !dbg !718
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %65 = phi i1 [ false, %while.cond ], [ %tobool78, %land.rhs ], !dbg !720
  br i1 %65, label %while.body, label %while.end, !dbg !716

while.body:                                       ; preds = %land.end
  %66 = load ptr, ptr %ir, align 8, !dbg !721
  %incdec.ptr = getelementptr i8, ptr %66, i32 1, !dbg !721
  store ptr %incdec.ptr, ptr %ir, align 8, !dbg !721
  br label %while.cond, !dbg !716, !llvm.loop !722

while.end:                                        ; preds = %land.end
  %67 = load ptr, ptr %ir, align 8, !dbg !723
  %68 = load ptr, ptr %ip, align 8, !dbg !724
  %sub.ptr.lhs.cast79 = ptrtoint ptr %67 to i64, !dbg !725
  %sub.ptr.rhs.cast80 = ptrtoint ptr %68 to i64, !dbg !725
  %sub.ptr.sub81 = sub i64 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80, !dbg !725
  %conv82 = trunc i64 %sub.ptr.sub81 to i32, !dbg !723
  store i32 %conv82, ptr %run_length, align 4, !dbg !726
  %69 = load i32, ptr %run_length, align 4, !dbg !727
  %cmp83 = icmp ugt i32 %69, 2051, !dbg !729
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !730

if.then85:                                        ; preds = %while.end
  store i32 2051, ptr %run_length, align 4, !dbg !731
  br label %if.end86, !dbg !732

if.end86:                                         ; preds = %if.then85, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dv64) #8, !dbg !733
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #8, !dbg !733
  call void @llvm.lifetime.end.p0(i64 8, ptr %ir) #8, !dbg !733
  br label %if.end109, !dbg !734

if.else:                                          ; preds = %land.lhs.true, %if.end
  %70 = load i32, ptr %dv, align 4, !dbg !735
  %mul = mul i32 %70, 405029533, !dbg !737
  %shr87 = lshr i32 %mul, 19, !dbg !738
  %and = and i32 %shr87, 8191, !dbg !739
  %conv88 = zext i32 %and to i64, !dbg !740
  store i64 %conv88, ptr %t, align 8, !dbg !741
  %71 = load ptr, ptr %in.addr, align 8, !dbg !742
  %72 = load ptr, ptr %dict, align 8, !dbg !743
  %73 = load i64, ptr %t, align 8, !dbg !744
  %arrayidx = getelementptr i16, ptr %72, i64 %73, !dbg !743
  %74 = load i16, ptr %arrayidx, align 2, !dbg !743
  %conv89 = zext i16 %74 to i32, !dbg !743
  %idx.ext90 = sext i32 %conv89 to i64, !dbg !745
  %add.ptr91 = getelementptr i8, ptr %71, i64 %idx.ext90, !dbg !745
  store ptr %add.ptr91, ptr %m_pos, align 8, !dbg !746
  %75 = load ptr, ptr %ip, align 8, !dbg !747
  %76 = load ptr, ptr %in.addr, align 8, !dbg !748
  %sub.ptr.lhs.cast92 = ptrtoint ptr %75 to i64, !dbg !749
  %sub.ptr.rhs.cast93 = ptrtoint ptr %76 to i64, !dbg !749
  %sub.ptr.sub94 = sub i64 %sub.ptr.lhs.cast92, %sub.ptr.rhs.cast93, !dbg !749
  %conv95 = trunc i64 %sub.ptr.sub94 to i16, !dbg !750
  %77 = load ptr, ptr %dict, align 8, !dbg !751
  %78 = load i64, ptr %t, align 8, !dbg !752
  %arrayidx96 = getelementptr i16, ptr %77, i64 %78, !dbg !751
  store i16 %conv95, ptr %arrayidx96, align 2, !dbg !753
  %79 = load i32, ptr %dv, align 4, !dbg !754
  %80 = load ptr, ptr %m_pos, align 8, !dbg !754
  %call97 = call i32 @get_unaligned_le32(ptr noundef %80) #7, !dbg !754
  %cmp98 = icmp ne i32 %79, %call97, !dbg !754
  %lnot100 = xor i1 %cmp98, true, !dbg !754
  %lnot102 = xor i1 %lnot100, true, !dbg !754
  %lnot.ext103 = zext i1 %lnot102 to i32, !dbg !754
  %conv104 = sext i32 %lnot.ext103 to i64, !dbg !754
  %expval105 = call i64 @llvm.expect.i64(i64 %conv104, i64 0), !dbg !754
  %tobool106 = icmp ne i64 %expval105, 0, !dbg !754
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !756

if.then107:                                       ; preds = %if.else
  br label %literal, !dbg !757

if.end108:                                        ; preds = %if.else
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end86
  %81 = load i64, ptr %ti.addr, align 8, !dbg !758
  %82 = load ptr, ptr %ii, align 8, !dbg !759
  %idx.neg = sub i64 0, %81, !dbg !759
  %add.ptr110 = getelementptr i8, ptr %82, i64 %idx.neg, !dbg !759
  store ptr %add.ptr110, ptr %ii, align 8, !dbg !759
  store i64 0, ptr %ti.addr, align 8, !dbg !760
  %83 = load ptr, ptr %ip, align 8, !dbg !761
  %84 = load ptr, ptr %ii, align 8, !dbg !762
  %sub.ptr.lhs.cast111 = ptrtoint ptr %83 to i64, !dbg !763
  %sub.ptr.rhs.cast112 = ptrtoint ptr %84 to i64, !dbg !763
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast112, !dbg !763
  store i64 %sub.ptr.sub113, ptr %t, align 8, !dbg !764
  %85 = load i64, ptr %t, align 8, !dbg !765
  %cmp114 = icmp ne i64 %85, 0, !dbg !766
  br i1 %cmp114, label %if.then116, label %if.end222, !dbg !767

if.then116:                                       ; preds = %if.end109
  %86 = load i64, ptr %t, align 8, !dbg !768
  %cmp117 = icmp ule i64 %86, 3, !dbg !769
  br i1 %cmp117, label %if.then119, label %if.else130, !dbg !770

if.then119:                                       ; preds = %if.then116
  %87 = load i64, ptr %t, align 8, !dbg !771
  %88 = load ptr, ptr %op, align 8, !dbg !772
  %89 = load ptr, ptr %state_offset.addr, align 8, !dbg !773
  %90 = load i8, ptr %89, align 1, !dbg !774
  %idxprom = sext i8 %90 to i64, !dbg !772
  %arrayidx120 = getelementptr i8, ptr %88, i64 %idxprom, !dbg !772
  %91 = load i8, ptr %arrayidx120, align 1, !dbg !775
  %conv121 = zext i8 %91 to i64, !dbg !775
  %or122 = or i64 %conv121, %87, !dbg !775
  %conv123 = trunc i64 %or122 to i8, !dbg !775
  store i8 %conv123, ptr %arrayidx120, align 1, !dbg !775
  br label %do.body, !dbg !776

do.body:                                          ; preds = %if.then119
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr124) #8, !dbg !777
  call void @llvm.dbg.declare(metadata ptr %__pptr124, metadata !171, metadata !DIExpression()), !dbg !777
  %92 = load ptr, ptr %op, align 8, !dbg !777
  store ptr %92, ptr %__pptr124, align 8, !dbg !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr125) #8, !dbg !778
  call void @llvm.dbg.declare(metadata ptr %__pptr125, metadata !181, metadata !DIExpression()), !dbg !778
  %93 = load ptr, ptr %ii, align 8, !dbg !778
  store ptr %93, ptr %__pptr125, align 8, !dbg !778
  %94 = load ptr, ptr %__pptr125, align 8, !dbg !778
  %x127 = getelementptr inbounds %struct.anon.8, ptr %94, i32 0, i32 0, !dbg !778
  %95 = load i32, ptr %x127, align 1, !dbg !778
  store i32 %95, ptr %tmp126, align 4, !dbg !778
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr125) #8, !dbg !777
  %96 = load i32, ptr %tmp126, align 4, !dbg !778
  %97 = load ptr, ptr %__pptr124, align 8, !dbg !777
  %x128 = getelementptr inbounds %struct.anon.9, ptr %97, i32 0, i32 0, !dbg !777
  store i32 %96, ptr %x128, align 1, !dbg !777
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr124) #8, !dbg !776
  br label %do.cond, !dbg !777

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !777

do.end:                                           ; preds = %do.cond
  %98 = load i64, ptr %t, align 8, !dbg !779
  %99 = load ptr, ptr %op, align 8, !dbg !780
  %add.ptr129 = getelementptr i8, ptr %99, i64 %98, !dbg !780
  store ptr %add.ptr129, ptr %op, align 8, !dbg !780
  br label %if.end221, !dbg !781

if.else130:                                       ; preds = %if.then116
  %100 = load i64, ptr %t, align 8, !dbg !782
  %cmp131 = icmp ule i64 %100, 16, !dbg !783
  br i1 %cmp131, label %if.then133, label %if.else156, !dbg !784

if.then133:                                       ; preds = %if.else130
  %101 = load i64, ptr %t, align 8, !dbg !785
  %sub134 = sub i64 %101, 3, !dbg !786
  %conv135 = trunc i64 %sub134 to i8, !dbg !787
  %102 = load ptr, ptr %op, align 8, !dbg !788
  %incdec.ptr136 = getelementptr i8, ptr %102, i32 1, !dbg !788
  store ptr %incdec.ptr136, ptr %op, align 8, !dbg !788
  store i8 %conv135, ptr %102, align 1, !dbg !789
  br label %do.body137, !dbg !790

do.body137:                                       ; preds = %if.then133
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr138) #8, !dbg !791
  call void @llvm.dbg.declare(metadata ptr %__pptr138, metadata !189, metadata !DIExpression()), !dbg !791
  %103 = load ptr, ptr %op, align 8, !dbg !791
  store ptr %103, ptr %__pptr138, align 8, !dbg !791
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr139) #8, !dbg !792
  call void @llvm.dbg.declare(metadata ptr %__pptr139, metadata !197, metadata !DIExpression()), !dbg !792
  %104 = load ptr, ptr %ii, align 8, !dbg !792
  store ptr %104, ptr %__pptr139, align 8, !dbg !792
  %105 = load ptr, ptr %__pptr139, align 8, !dbg !792
  %x141 = getelementptr inbounds %struct.anon.10, ptr %105, i32 0, i32 0, !dbg !792
  %106 = load i64, ptr %x141, align 1, !dbg !792
  store i64 %106, ptr %tmp140, align 8, !dbg !792
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr139) #8, !dbg !791
  %107 = load i64, ptr %tmp140, align 8, !dbg !792
  %108 = load ptr, ptr %__pptr138, align 8, !dbg !791
  %x142 = getelementptr inbounds %struct.anon.11, ptr %108, i32 0, i32 0, !dbg !791
  store i64 %107, ptr %x142, align 1, !dbg !791
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr138) #8, !dbg !790
  br label %do.cond143, !dbg !791

do.cond143:                                       ; preds = %do.body137
  br label %do.end144, !dbg !791

do.end144:                                        ; preds = %do.cond143
  br label %do.body145, !dbg !793

do.body145:                                       ; preds = %do.end144
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr146) #8, !dbg !794
  call void @llvm.dbg.declare(metadata ptr %__pptr146, metadata !204, metadata !DIExpression()), !dbg !794
  %109 = load ptr, ptr %op, align 8, !dbg !794
  %add.ptr147 = getelementptr i8, ptr %109, i64 8, !dbg !794
  store ptr %add.ptr147, ptr %__pptr146, align 8, !dbg !794
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr148) #8, !dbg !795
  call void @llvm.dbg.declare(metadata ptr %__pptr148, metadata !210, metadata !DIExpression()), !dbg !795
  %110 = load ptr, ptr %ii, align 8, !dbg !795
  %add.ptr149 = getelementptr i8, ptr %110, i64 8, !dbg !795
  store ptr %add.ptr149, ptr %__pptr148, align 8, !dbg !795
  %111 = load ptr, ptr %__pptr148, align 8, !dbg !795
  %x151 = getelementptr inbounds %struct.anon.12, ptr %111, i32 0, i32 0, !dbg !795
  %112 = load i64, ptr %x151, align 1, !dbg !795
  store i64 %112, ptr %tmp150, align 8, !dbg !795
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr148) #8, !dbg !794
  %113 = load i64, ptr %tmp150, align 8, !dbg !795
  %114 = load ptr, ptr %__pptr146, align 8, !dbg !794
  %x152 = getelementptr inbounds %struct.anon.13, ptr %114, i32 0, i32 0, !dbg !794
  store i64 %113, ptr %x152, align 1, !dbg !794
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr146) #8, !dbg !793
  br label %do.cond153, !dbg !794

do.cond153:                                       ; preds = %do.body145
  br label %do.end154, !dbg !794

do.end154:                                        ; preds = %do.cond153
  %115 = load i64, ptr %t, align 8, !dbg !796
  %116 = load ptr, ptr %op, align 8, !dbg !797
  %add.ptr155 = getelementptr i8, ptr %116, i64 %115, !dbg !797
  store ptr %add.ptr155, ptr %op, align 8, !dbg !797
  br label %if.end220, !dbg !798

if.else156:                                       ; preds = %if.else130
  %117 = load i64, ptr %t, align 8, !dbg !799
  %cmp157 = icmp ule i64 %117, 18, !dbg !800
  br i1 %cmp157, label %if.then159, label %if.else163, !dbg !801

if.then159:                                       ; preds = %if.else156
  %118 = load i64, ptr %t, align 8, !dbg !802
  %sub160 = sub i64 %118, 3, !dbg !804
  %conv161 = trunc i64 %sub160 to i8, !dbg !805
  %119 = load ptr, ptr %op, align 8, !dbg !806
  %incdec.ptr162 = getelementptr i8, ptr %119, i32 1, !dbg !806
  store ptr %incdec.ptr162, ptr %op, align 8, !dbg !806
  store i8 %conv161, ptr %119, align 1, !dbg !807
  br label %if.end182, !dbg !808

if.else163:                                       ; preds = %if.else156
  call void @llvm.lifetime.start.p0(i64 8, ptr %tt) #8, !dbg !809
  call void @llvm.dbg.declare(metadata ptr %tt, metadata !217, metadata !DIExpression()), !dbg !810
  %120 = load i64, ptr %t, align 8, !dbg !811
  %sub164 = sub i64 %120, 18, !dbg !812
  store i64 %sub164, ptr %tt, align 8, !dbg !810
  %121 = load ptr, ptr %op, align 8, !dbg !813
  %incdec.ptr165 = getelementptr i8, ptr %121, i32 1, !dbg !813
  store ptr %incdec.ptr165, ptr %op, align 8, !dbg !813
  store i8 0, ptr %121, align 1, !dbg !814
  br label %while.cond166, !dbg !815

while.cond166:                                    ; preds = %while.body176, %if.else163
  %122 = load i64, ptr %tt, align 8, !dbg !816
  %cmp167 = icmp ugt i64 %122, 255, !dbg !816
  %lnot169 = xor i1 %cmp167, true, !dbg !816
  %lnot171 = xor i1 %lnot169, true, !dbg !816
  %lnot.ext172 = zext i1 %lnot171 to i32, !dbg !816
  %conv173 = sext i32 %lnot.ext172 to i64, !dbg !816
  %expval174 = call i64 @llvm.expect.i64(i64 %conv173, i64 0), !dbg !816
  %tobool175 = icmp ne i64 %expval174, 0, !dbg !815
  br i1 %tobool175, label %while.body176, label %while.end179, !dbg !815

while.body176:                                    ; preds = %while.cond166
  %123 = load i64, ptr %tt, align 8, !dbg !817
  %sub177 = sub i64 %123, 255, !dbg !817
  store i64 %sub177, ptr %tt, align 8, !dbg !817
  %124 = load ptr, ptr %op, align 8, !dbg !819
  %incdec.ptr178 = getelementptr i8, ptr %124, i32 1, !dbg !819
  store ptr %incdec.ptr178, ptr %op, align 8, !dbg !819
  store i8 0, ptr %124, align 1, !dbg !820
  br label %while.cond166, !dbg !815, !llvm.loop !821

while.end179:                                     ; preds = %while.cond166
  %125 = load i64, ptr %tt, align 8, !dbg !823
  %conv180 = trunc i64 %125 to i8, !dbg !823
  %126 = load ptr, ptr %op, align 8, !dbg !824
  %incdec.ptr181 = getelementptr i8, ptr %126, i32 1, !dbg !824
  store ptr %incdec.ptr181, ptr %op, align 8, !dbg !824
  store i8 %conv180, ptr %126, align 1, !dbg !825
  call void @llvm.lifetime.end.p0(i64 8, ptr %tt) #8, !dbg !826
  br label %if.end182

if.end182:                                        ; preds = %while.end179, %if.then159
  br label %do.body183, !dbg !827

do.body183:                                       ; preds = %do.cond205, %if.end182
  br label %do.body184, !dbg !828

do.body184:                                       ; preds = %do.body183
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr185) #8, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %__pptr185, metadata !221, metadata !DIExpression()), !dbg !829
  %127 = load ptr, ptr %op, align 8, !dbg !829
  store ptr %127, ptr %__pptr185, align 8, !dbg !829
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr186) #8, !dbg !830
  call void @llvm.dbg.declare(metadata ptr %__pptr186, metadata !228, metadata !DIExpression()), !dbg !830
  %128 = load ptr, ptr %ii, align 8, !dbg !830
  store ptr %128, ptr %__pptr186, align 8, !dbg !830
  %129 = load ptr, ptr %__pptr186, align 8, !dbg !830
  %x188 = getelementptr inbounds %struct.anon.14, ptr %129, i32 0, i32 0, !dbg !830
  %130 = load i64, ptr %x188, align 1, !dbg !830
  store i64 %130, ptr %tmp187, align 8, !dbg !830
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr186) #8, !dbg !829
  %131 = load i64, ptr %tmp187, align 8, !dbg !830
  %132 = load ptr, ptr %__pptr185, align 8, !dbg !829
  %x189 = getelementptr inbounds %struct.anon.15, ptr %132, i32 0, i32 0, !dbg !829
  store i64 %131, ptr %x189, align 1, !dbg !829
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr185) #8, !dbg !828
  br label %do.cond190, !dbg !829

do.cond190:                                       ; preds = %do.body184
  br label %do.end191, !dbg !829

do.end191:                                        ; preds = %do.cond190
  br label %do.body192, !dbg !831

do.body192:                                       ; preds = %do.end191
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr193) #8, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %__pptr193, metadata !235, metadata !DIExpression()), !dbg !832
  %133 = load ptr, ptr %op, align 8, !dbg !832
  %add.ptr194 = getelementptr i8, ptr %133, i64 8, !dbg !832
  store ptr %add.ptr194, ptr %__pptr193, align 8, !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr195) #8, !dbg !833
  call void @llvm.dbg.declare(metadata ptr %__pptr195, metadata !241, metadata !DIExpression()), !dbg !833
  %134 = load ptr, ptr %ii, align 8, !dbg !833
  %add.ptr196 = getelementptr i8, ptr %134, i64 8, !dbg !833
  store ptr %add.ptr196, ptr %__pptr195, align 8, !dbg !833
  %135 = load ptr, ptr %__pptr195, align 8, !dbg !833
  %x198 = getelementptr inbounds %struct.anon.16, ptr %135, i32 0, i32 0, !dbg !833
  %136 = load i64, ptr %x198, align 1, !dbg !833
  store i64 %136, ptr %tmp197, align 8, !dbg !833
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr195) #8, !dbg !832
  %137 = load i64, ptr %tmp197, align 8, !dbg !833
  %138 = load ptr, ptr %__pptr193, align 8, !dbg !832
  %x199 = getelementptr inbounds %struct.anon.17, ptr %138, i32 0, i32 0, !dbg !832
  store i64 %137, ptr %x199, align 1, !dbg !832
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr193) #8, !dbg !831
  br label %do.cond200, !dbg !832

do.cond200:                                       ; preds = %do.body192
  br label %do.end201, !dbg !832

do.end201:                                        ; preds = %do.cond200
  %139 = load ptr, ptr %op, align 8, !dbg !834
  %add.ptr202 = getelementptr i8, ptr %139, i64 16, !dbg !834
  store ptr %add.ptr202, ptr %op, align 8, !dbg !834
  %140 = load ptr, ptr %ii, align 8, !dbg !835
  %add.ptr203 = getelementptr i8, ptr %140, i64 16, !dbg !835
  store ptr %add.ptr203, ptr %ii, align 8, !dbg !835
  %141 = load i64, ptr %t, align 8, !dbg !836
  %sub204 = sub i64 %141, 16, !dbg !836
  store i64 %sub204, ptr %t, align 8, !dbg !836
  br label %do.cond205, !dbg !837

do.cond205:                                       ; preds = %do.end201
  %142 = load i64, ptr %t, align 8, !dbg !838
  %cmp206 = icmp uge i64 %142, 16, !dbg !839
  br i1 %cmp206, label %do.body183, label %do.end208, !dbg !837, !llvm.loop !840

do.end208:                                        ; preds = %do.cond205
  %143 = load i64, ptr %t, align 8, !dbg !842
  %cmp209 = icmp ugt i64 %143, 0, !dbg !844
  br i1 %cmp209, label %if.then211, label %if.end219, !dbg !845

if.then211:                                       ; preds = %do.end208
  br label %do.body212, !dbg !846

do.body212:                                       ; preds = %do.cond215, %if.then211
  %144 = load ptr, ptr %ii, align 8, !dbg !847
  %incdec.ptr213 = getelementptr i8, ptr %144, i32 1, !dbg !847
  store ptr %incdec.ptr213, ptr %ii, align 8, !dbg !847
  %145 = load i8, ptr %144, align 1, !dbg !849
  %146 = load ptr, ptr %op, align 8, !dbg !850
  %incdec.ptr214 = getelementptr i8, ptr %146, i32 1, !dbg !850
  store ptr %incdec.ptr214, ptr %op, align 8, !dbg !850
  store i8 %145, ptr %146, align 1, !dbg !851
  br label %do.cond215, !dbg !852

do.cond215:                                       ; preds = %do.body212
  %147 = load i64, ptr %t, align 8, !dbg !853
  %dec = add i64 %147, -1, !dbg !853
  store i64 %dec, ptr %t, align 8, !dbg !853
  %cmp216 = icmp ugt i64 %dec, 0, !dbg !854
  br i1 %cmp216, label %do.body212, label %do.end218, !dbg !852, !llvm.loop !855

do.end218:                                        ; preds = %do.cond215
  br label %if.end219, !dbg !852

if.end219:                                        ; preds = %do.end218, %do.end208
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %do.end154
  br label %if.end221

if.end221:                                        ; preds = %if.end220, %do.end
  br label %if.end222, !dbg !857

if.end222:                                        ; preds = %if.end221, %if.end109
  %148 = load i32, ptr %run_length, align 4, !dbg !858
  %tobool223 = icmp ne i32 %148, 0, !dbg !858
  %lnot224 = xor i1 %tobool223, true, !dbg !858
  %lnot226 = xor i1 %lnot224, true, !dbg !858
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !858
  %conv228 = sext i32 %lnot.ext227 to i64, !dbg !858
  %expval229 = call i64 @llvm.expect.i64(i64 %conv228, i64 0), !dbg !858
  %tobool230 = icmp ne i64 %expval229, 0, !dbg !858
  br i1 %tobool230, label %if.then231, label %if.end239, !dbg !860

if.then231:                                       ; preds = %if.end222
  %149 = load i32, ptr %run_length, align 4, !dbg !861
  %150 = load ptr, ptr %ip, align 8, !dbg !863
  %idx.ext232 = zext i32 %149 to i64, !dbg !863
  %add.ptr233 = getelementptr i8, ptr %150, i64 %idx.ext232, !dbg !863
  store ptr %add.ptr233, ptr %ip, align 8, !dbg !863
  %151 = load i32, ptr %run_length, align 4, !dbg !864
  %sub234 = sub i32 %151, 4, !dbg !864
  store i32 %sub234, ptr %run_length, align 4, !dbg !864
  %152 = load i32, ptr %run_length, align 4, !dbg !865
  %shl = shl i32 %152, 21, !dbg !866
  %or235 = or i32 %shl, 16776216, !dbg !867
  %153 = load i32, ptr %run_length, align 4, !dbg !868
  %and236 = and i32 %153, 7, !dbg !869
  %or237 = or i32 %or235, %and236, !dbg !870
  %154 = load ptr, ptr %op, align 8, !dbg !871
  call void @put_unaligned_le32(i32 noundef %or237, ptr noundef %154) #7, !dbg !872
  %155 = load ptr, ptr %op, align 8, !dbg !873
  %add.ptr238 = getelementptr i8, ptr %155, i64 4, !dbg !873
  store ptr %add.ptr238, ptr %op, align 8, !dbg !873
  store i32 0, ptr %run_length, align 4, !dbg !874
  %156 = load ptr, ptr %state_offset.addr, align 8, !dbg !875
  store i8 -3, ptr %156, align 1, !dbg !876
  br label %finished_writing_instruction, !dbg !877

if.end239:                                        ; preds = %if.end222
  store i64 4, ptr %m_len, align 8, !dbg !878
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #8, !dbg !879
  call void @llvm.dbg.declare(metadata ptr %v, metadata !248, metadata !DIExpression()), !dbg !880
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr240) #8, !dbg !881
  call void @llvm.dbg.declare(metadata ptr %__pptr240, metadata !250, metadata !DIExpression()), !dbg !881
  %157 = load ptr, ptr %ip, align 8, !dbg !881
  %158 = load i64, ptr %m_len, align 8, !dbg !881
  %add.ptr241 = getelementptr i8, ptr %157, i64 %158, !dbg !881
  store ptr %add.ptr241, ptr %__pptr240, align 8, !dbg !881
  %159 = load ptr, ptr %__pptr240, align 8, !dbg !881
  %x243 = getelementptr inbounds %struct.anon.18, ptr %159, i32 0, i32 0, !dbg !881
  %160 = load i64, ptr %x243, align 1, !dbg !881
  store i64 %160, ptr %tmp242, align 8, !dbg !881
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr240) #8, !dbg !882
  %161 = load i64, ptr %tmp242, align 8, !dbg !881
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr244) #8, !dbg !883
  call void @llvm.dbg.declare(metadata ptr %__pptr244, metadata !257, metadata !DIExpression()), !dbg !883
  %162 = load ptr, ptr %m_pos, align 8, !dbg !883
  %163 = load i64, ptr %m_len, align 8, !dbg !883
  %add.ptr245 = getelementptr i8, ptr %162, i64 %163, !dbg !883
  store ptr %add.ptr245, ptr %__pptr244, align 8, !dbg !883
  %164 = load ptr, ptr %__pptr244, align 8, !dbg !883
  %x247 = getelementptr inbounds %struct.anon.19, ptr %164, i32 0, i32 0, !dbg !883
  %165 = load i64, ptr %x247, align 1, !dbg !883
  store i64 %165, ptr %tmp246, align 8, !dbg !883
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr244) #8, !dbg !884
  %166 = load i64, ptr %tmp246, align 8, !dbg !883
  %xor = xor i64 %161, %166, !dbg !885
  store i64 %xor, ptr %v, align 8, !dbg !886
  %167 = load i64, ptr %v, align 8, !dbg !887
  %cmp248 = icmp eq i64 %167, 0, !dbg !887
  %lnot250 = xor i1 %cmp248, true, !dbg !887
  %lnot252 = xor i1 %lnot250, true, !dbg !887
  %lnot.ext253 = zext i1 %lnot252 to i32, !dbg !887
  %conv254 = sext i32 %lnot.ext253 to i64, !dbg !887
  %expval255 = call i64 @llvm.expect.i64(i64 %conv254, i64 0), !dbg !887
  %tobool256 = icmp ne i64 %expval255, 0, !dbg !887
  br i1 %tobool256, label %if.then257, label %if.end285, !dbg !888

if.then257:                                       ; preds = %if.end239
  br label %do.body258, !dbg !889

do.body258:                                       ; preds = %do.cond281, %if.then257
  %168 = load i64, ptr %m_len, align 8, !dbg !890
  %add259 = add i64 %168, 8, !dbg !890
  store i64 %add259, ptr %m_len, align 8, !dbg !890
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr260) #8, !dbg !891
  call void @llvm.dbg.declare(metadata ptr %__pptr260, metadata !264, metadata !DIExpression()), !dbg !891
  %169 = load ptr, ptr %ip, align 8, !dbg !891
  %170 = load i64, ptr %m_len, align 8, !dbg !891
  %add.ptr261 = getelementptr i8, ptr %169, i64 %170, !dbg !891
  store ptr %add.ptr261, ptr %__pptr260, align 8, !dbg !891
  %171 = load ptr, ptr %__pptr260, align 8, !dbg !891
  %x263 = getelementptr inbounds %struct.anon.20, ptr %171, i32 0, i32 0, !dbg !891
  %172 = load i64, ptr %x263, align 1, !dbg !891
  store i64 %172, ptr %tmp262, align 8, !dbg !891
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr260) #8, !dbg !892
  %173 = load i64, ptr %tmp262, align 8, !dbg !891
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr264) #8, !dbg !893
  call void @llvm.dbg.declare(metadata ptr %__pptr264, metadata !274, metadata !DIExpression()), !dbg !893
  %174 = load ptr, ptr %m_pos, align 8, !dbg !893
  %175 = load i64, ptr %m_len, align 8, !dbg !893
  %add.ptr265 = getelementptr i8, ptr %174, i64 %175, !dbg !893
  store ptr %add.ptr265, ptr %__pptr264, align 8, !dbg !893
  %176 = load ptr, ptr %__pptr264, align 8, !dbg !893
  %x267 = getelementptr inbounds %struct.anon.21, ptr %176, i32 0, i32 0, !dbg !893
  %177 = load i64, ptr %x267, align 1, !dbg !893
  store i64 %177, ptr %tmp266, align 8, !dbg !893
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr264) #8, !dbg !894
  %178 = load i64, ptr %tmp266, align 8, !dbg !893
  %xor268 = xor i64 %173, %178, !dbg !895
  store i64 %xor268, ptr %v, align 8, !dbg !896
  %179 = load ptr, ptr %ip, align 8, !dbg !897
  %180 = load i64, ptr %m_len, align 8, !dbg !897
  %add.ptr269 = getelementptr i8, ptr %179, i64 %180, !dbg !897
  %181 = load ptr, ptr %ip_end, align 8, !dbg !897
  %cmp270 = icmp uge ptr %add.ptr269, %181, !dbg !897
  %lnot272 = xor i1 %cmp270, true, !dbg !897
  %lnot274 = xor i1 %lnot272, true, !dbg !897
  %lnot.ext275 = zext i1 %lnot274 to i32, !dbg !897
  %conv276 = sext i32 %lnot.ext275 to i64, !dbg !897
  %expval277 = call i64 @llvm.expect.i64(i64 %conv276, i64 0), !dbg !897
  %tobool278 = icmp ne i64 %expval277, 0, !dbg !897
  br i1 %tobool278, label %if.then279, label %if.end280, !dbg !899

if.then279:                                       ; preds = %do.body258
  store i32 33, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !900

if.end280:                                        ; preds = %do.body258
  br label %do.cond281, !dbg !901

do.cond281:                                       ; preds = %if.end280
  %182 = load i64, ptr %v, align 8, !dbg !902
  %cmp282 = icmp eq i64 %182, 0, !dbg !903
  br i1 %cmp282, label %do.body258, label %do.end284, !dbg !901, !llvm.loop !904

do.end284:                                        ; preds = %do.cond281
  br label %if.end285, !dbg !906

if.end285:                                        ; preds = %do.end284, %if.end239
  %183 = load i64, ptr %v, align 8, !dbg !907
  %184 = call i64 @llvm.cttz.i64(i64 %183, i1 true), !dbg !908
  %cast286 = trunc i64 %184 to i32, !dbg !908
  %div = udiv i32 %cast286, 8, !dbg !909
  %conv287 = zext i32 %div to i64, !dbg !910
  %185 = load i64, ptr %m_len, align 8, !dbg !911
  %add288 = add i64 %185, %conv287, !dbg !911
  store i64 %add288, ptr %m_len, align 8, !dbg !911
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !912
  br label %cleanup, !dbg !912

cleanup:                                          ; preds = %if.then279, %if.end285
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #8, !dbg !912
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup423 [
    i32 0, label %cleanup.cont
    i32 33, label %m_len_done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %m_len_done, !dbg !913

m_len_done:                                       ; preds = %cleanup.cont, %cleanup
  call void @llvm.dbg.label(metadata !281), !dbg !914
  %186 = load ptr, ptr %ip, align 8, !dbg !915
  %187 = load ptr, ptr %m_pos, align 8, !dbg !916
  %sub.ptr.lhs.cast289 = ptrtoint ptr %186 to i64, !dbg !917
  %sub.ptr.rhs.cast290 = ptrtoint ptr %187 to i64, !dbg !917
  %sub.ptr.sub291 = sub i64 %sub.ptr.lhs.cast289, %sub.ptr.rhs.cast290, !dbg !917
  store i64 %sub.ptr.sub291, ptr %m_off, align 8, !dbg !918
  %188 = load i64, ptr %m_len, align 8, !dbg !919
  %189 = load ptr, ptr %ip, align 8, !dbg !920
  %add.ptr292 = getelementptr i8, ptr %189, i64 %188, !dbg !920
  store ptr %add.ptr292, ptr %ip, align 8, !dbg !920
  %190 = load i64, ptr %m_len, align 8, !dbg !921
  %cmp293 = icmp ule i64 %190, 8, !dbg !923
  br i1 %cmp293, label %land.lhs.true295, label %if.else310, !dbg !924

land.lhs.true295:                                 ; preds = %m_len_done
  %191 = load i64, ptr %m_off, align 8, !dbg !925
  %cmp296 = icmp ule i64 %191, 2048, !dbg !926
  br i1 %cmp296, label %if.then298, label %if.else310, !dbg !927

if.then298:                                       ; preds = %land.lhs.true295
  %192 = load i64, ptr %m_off, align 8, !dbg !928
  %sub299 = sub i64 %192, 1, !dbg !928
  store i64 %sub299, ptr %m_off, align 8, !dbg !928
  %193 = load i64, ptr %m_len, align 8, !dbg !930
  %sub300 = sub i64 %193, 1, !dbg !931
  %shl301 = shl i64 %sub300, 5, !dbg !932
  %194 = load i64, ptr %m_off, align 8, !dbg !933
  %and302 = and i64 %194, 7, !dbg !934
  %shl303 = shl i64 %and302, 2, !dbg !935
  %or304 = or i64 %shl301, %shl303, !dbg !936
  %conv305 = trunc i64 %or304 to i8, !dbg !937
  %195 = load ptr, ptr %op, align 8, !dbg !938
  %incdec.ptr306 = getelementptr i8, ptr %195, i32 1, !dbg !938
  store ptr %incdec.ptr306, ptr %op, align 8, !dbg !938
  store i8 %conv305, ptr %195, align 1, !dbg !939
  %196 = load i64, ptr %m_off, align 8, !dbg !940
  %shr307 = lshr i64 %196, 3, !dbg !941
  %conv308 = trunc i64 %shr307 to i8, !dbg !942
  %197 = load ptr, ptr %op, align 8, !dbg !943
  %incdec.ptr309 = getelementptr i8, ptr %197, i32 1, !dbg !943
  store ptr %incdec.ptr309, ptr %op, align 8, !dbg !943
  store i8 %conv308, ptr %197, align 1, !dbg !944
  br label %if.end422, !dbg !945

if.else310:                                       ; preds = %land.lhs.true295, %m_len_done
  %198 = load i64, ptr %m_off, align 8, !dbg !946
  %cmp311 = icmp ule i64 %198, 16384, !dbg !948
  br i1 %cmp311, label %if.then313, label %if.else348, !dbg !949

if.then313:                                       ; preds = %if.else310
  %199 = load i64, ptr %m_off, align 8, !dbg !950
  %sub314 = sub i64 %199, 1, !dbg !950
  store i64 %sub314, ptr %m_off, align 8, !dbg !950
  %200 = load i64, ptr %m_len, align 8, !dbg !952
  %cmp315 = icmp ule i64 %200, 33, !dbg !954
  br i1 %cmp315, label %if.then317, label %if.else322, !dbg !955

if.then317:                                       ; preds = %if.then313
  %201 = load i64, ptr %m_len, align 8, !dbg !956
  %sub318 = sub i64 %201, 2, !dbg !957
  %or319 = or i64 32, %sub318, !dbg !958
  %conv320 = trunc i64 %or319 to i8, !dbg !959
  %202 = load ptr, ptr %op, align 8, !dbg !960
  %incdec.ptr321 = getelementptr i8, ptr %202, i32 1, !dbg !960
  store ptr %incdec.ptr321, ptr %op, align 8, !dbg !960
  store i8 %conv320, ptr %202, align 1, !dbg !961
  br label %if.end341, !dbg !962

if.else322:                                       ; preds = %if.then313
  %203 = load i64, ptr %m_len, align 8, !dbg !963
  %sub323 = sub i64 %203, 33, !dbg !963
  store i64 %sub323, ptr %m_len, align 8, !dbg !963
  %204 = load ptr, ptr %op, align 8, !dbg !965
  %incdec.ptr324 = getelementptr i8, ptr %204, i32 1, !dbg !965
  store ptr %incdec.ptr324, ptr %op, align 8, !dbg !965
  store i8 32, ptr %204, align 1, !dbg !966
  br label %while.cond325, !dbg !967

while.cond325:                                    ; preds = %while.body335, %if.else322
  %205 = load i64, ptr %m_len, align 8, !dbg !968
  %cmp326 = icmp ugt i64 %205, 255, !dbg !968
  %lnot328 = xor i1 %cmp326, true, !dbg !968
  %lnot330 = xor i1 %lnot328, true, !dbg !968
  %lnot.ext331 = zext i1 %lnot330 to i32, !dbg !968
  %conv332 = sext i32 %lnot.ext331 to i64, !dbg !968
  %expval333 = call i64 @llvm.expect.i64(i64 %conv332, i64 0), !dbg !968
  %tobool334 = icmp ne i64 %expval333, 0, !dbg !967
  br i1 %tobool334, label %while.body335, label %while.end338, !dbg !967

while.body335:                                    ; preds = %while.cond325
  %206 = load i64, ptr %m_len, align 8, !dbg !969
  %sub336 = sub i64 %206, 255, !dbg !969
  store i64 %sub336, ptr %m_len, align 8, !dbg !969
  %207 = load ptr, ptr %op, align 8, !dbg !971
  %incdec.ptr337 = getelementptr i8, ptr %207, i32 1, !dbg !971
  store ptr %incdec.ptr337, ptr %op, align 8, !dbg !971
  store i8 0, ptr %207, align 1, !dbg !972
  br label %while.cond325, !dbg !967, !llvm.loop !973

while.end338:                                     ; preds = %while.cond325
  %208 = load i64, ptr %m_len, align 8, !dbg !975
  %conv339 = trunc i64 %208 to i8, !dbg !976
  %209 = load ptr, ptr %op, align 8, !dbg !977
  %incdec.ptr340 = getelementptr i8, ptr %209, i32 1, !dbg !977
  store ptr %incdec.ptr340, ptr %op, align 8, !dbg !977
  store i8 %conv339, ptr %209, align 1, !dbg !978
  br label %if.end341

if.end341:                                        ; preds = %while.end338, %if.then317
  %210 = load i64, ptr %m_off, align 8, !dbg !979
  %shl342 = shl i64 %210, 2, !dbg !980
  %conv343 = trunc i64 %shl342 to i8, !dbg !981
  %211 = load ptr, ptr %op, align 8, !dbg !982
  %incdec.ptr344 = getelementptr i8, ptr %211, i32 1, !dbg !982
  store ptr %incdec.ptr344, ptr %op, align 8, !dbg !982
  store i8 %conv343, ptr %211, align 1, !dbg !983
  %212 = load i64, ptr %m_off, align 8, !dbg !984
  %shr345 = lshr i64 %212, 6, !dbg !985
  %conv346 = trunc i64 %shr345 to i8, !dbg !986
  %213 = load ptr, ptr %op, align 8, !dbg !987
  %incdec.ptr347 = getelementptr i8, ptr %213, i32 1, !dbg !987
  store ptr %incdec.ptr347, ptr %op, align 8, !dbg !987
  store i8 %conv346, ptr %213, align 1, !dbg !988
  br label %if.end421, !dbg !989

if.else348:                                       ; preds = %if.else310
  %214 = load i64, ptr %m_off, align 8, !dbg !990
  %sub349 = sub i64 %214, 16384, !dbg !990
  store i64 %sub349, ptr %m_off, align 8, !dbg !990
  %215 = load i64, ptr %m_len, align 8, !dbg !992
  %cmp350 = icmp ule i64 %215, 9, !dbg !994
  br i1 %cmp350, label %if.then352, label %if.else360, !dbg !995

if.then352:                                       ; preds = %if.else348
  %216 = load i64, ptr %m_off, align 8, !dbg !996
  %shr353 = lshr i64 %216, 11, !dbg !997
  %and354 = and i64 %shr353, 8, !dbg !998
  %or355 = or i64 16, %and354, !dbg !999
  %217 = load i64, ptr %m_len, align 8, !dbg !1000
  %sub356 = sub i64 %217, 2, !dbg !1001
  %or357 = or i64 %or355, %sub356, !dbg !1002
  %conv358 = trunc i64 %or357 to i8, !dbg !1003
  %218 = load ptr, ptr %op, align 8, !dbg !1004
  %incdec.ptr359 = getelementptr i8, ptr %218, i32 1, !dbg !1004
  store ptr %incdec.ptr359, ptr %op, align 8, !dbg !1004
  store i8 %conv358, ptr %218, align 1, !dbg !1005
  br label %if.end414, !dbg !1006

if.else360:                                       ; preds = %if.else348
  %219 = load i64, ptr %m_off, align 8, !dbg !1007
  %and361 = and i64 %219, 16447, !dbg !1007
  %cmp362 = icmp eq i64 %and361, 16447, !dbg !1007
  br i1 %cmp362, label %land.lhs.true364, label %land.end370, !dbg !1007

land.lhs.true364:                                 ; preds = %if.else360
  %220 = load i64, ptr %m_len, align 8, !dbg !1007
  %cmp365 = icmp uge i64 %220, 261, !dbg !1007
  br i1 %cmp365, label %land.rhs367, label %land.end370, !dbg !1007

land.rhs367:                                      ; preds = %land.lhs.true364
  %221 = load i64, ptr %m_len, align 8, !dbg !1007
  %cmp368 = icmp ule i64 %221, 264, !dbg !1007
  br label %land.end370

land.end370:                                      ; preds = %land.rhs367, %land.lhs.true364, %if.else360
  %222 = phi i1 [ false, %land.lhs.true364 ], [ false, %if.else360 ], [ %cmp368, %land.rhs367 ], !dbg !1010
  %lnot371 = xor i1 %222, true, !dbg !1007
  %lnot373 = xor i1 %lnot371, true, !dbg !1007
  %lnot.ext374 = zext i1 %lnot373 to i32, !dbg !1007
  %conv375 = sext i32 %lnot.ext374 to i64, !dbg !1007
  %expval376 = call i64 @llvm.expect.i64(i64 %conv375, i64 0), !dbg !1007
  %tobool377 = icmp ne i64 %expval376, 0, !dbg !1007
  br i1 %tobool377, label %land.lhs.true378, label %if.end391, !dbg !1011

land.lhs.true378:                                 ; preds = %land.end370
  %223 = load i8, ptr %bitstream_version.addr, align 1, !dbg !1012
  %tobool379 = icmp ne i8 %223, 0, !dbg !1012
  %lnot380 = xor i1 %tobool379, true, !dbg !1012
  %lnot382 = xor i1 %lnot380, true, !dbg !1012
  %lnot.ext383 = zext i1 %lnot382 to i32, !dbg !1012
  %conv384 = sext i32 %lnot.ext383 to i64, !dbg !1012
  %expval385 = call i64 @llvm.expect.i64(i64 %conv384, i64 1), !dbg !1012
  %tobool386 = icmp ne i64 %expval385, 0, !dbg !1012
  br i1 %tobool386, label %if.then387, label %if.end391, !dbg !1013

if.then387:                                       ; preds = %land.lhs.true378
  %224 = load i64, ptr %m_len, align 8, !dbg !1014
  %sub388 = sub i64 %224, 260, !dbg !1016
  %225 = load ptr, ptr %ip, align 8, !dbg !1017
  %idx.neg389 = sub i64 0, %sub388, !dbg !1017
  %add.ptr390 = getelementptr i8, ptr %225, i64 %idx.neg389, !dbg !1017
  store ptr %add.ptr390, ptr %ip, align 8, !dbg !1017
  store i64 260, ptr %m_len, align 8, !dbg !1018
  br label %if.end391, !dbg !1019

if.end391:                                        ; preds = %if.then387, %land.lhs.true378, %land.end370
  %226 = load i64, ptr %m_len, align 8, !dbg !1020
  %sub392 = sub i64 %226, 9, !dbg !1020
  store i64 %sub392, ptr %m_len, align 8, !dbg !1020
  %227 = load i64, ptr %m_off, align 8, !dbg !1021
  %shr393 = lshr i64 %227, 11, !dbg !1022
  %and394 = and i64 %shr393, 8, !dbg !1023
  %or395 = or i64 16, %and394, !dbg !1024
  %conv396 = trunc i64 %or395 to i8, !dbg !1025
  %228 = load ptr, ptr %op, align 8, !dbg !1026
  %incdec.ptr397 = getelementptr i8, ptr %228, i32 1, !dbg !1026
  store ptr %incdec.ptr397, ptr %op, align 8, !dbg !1026
  store i8 %conv396, ptr %228, align 1, !dbg !1027
  br label %while.cond398, !dbg !1028

while.cond398:                                    ; preds = %while.body408, %if.end391
  %229 = load i64, ptr %m_len, align 8, !dbg !1029
  %cmp399 = icmp ugt i64 %229, 255, !dbg !1029
  %lnot401 = xor i1 %cmp399, true, !dbg !1029
  %lnot403 = xor i1 %lnot401, true, !dbg !1029
  %lnot.ext404 = zext i1 %lnot403 to i32, !dbg !1029
  %conv405 = sext i32 %lnot.ext404 to i64, !dbg !1029
  %expval406 = call i64 @llvm.expect.i64(i64 %conv405, i64 0), !dbg !1029
  %tobool407 = icmp ne i64 %expval406, 0, !dbg !1028
  br i1 %tobool407, label %while.body408, label %while.end411, !dbg !1028

while.body408:                                    ; preds = %while.cond398
  %230 = load i64, ptr %m_len, align 8, !dbg !1030
  %sub409 = sub i64 %230, 255, !dbg !1030
  store i64 %sub409, ptr %m_len, align 8, !dbg !1030
  %231 = load ptr, ptr %op, align 8, !dbg !1032
  %incdec.ptr410 = getelementptr i8, ptr %231, i32 1, !dbg !1032
  store ptr %incdec.ptr410, ptr %op, align 8, !dbg !1032
  store i8 0, ptr %231, align 1, !dbg !1033
  br label %while.cond398, !dbg !1028, !llvm.loop !1034

while.end411:                                     ; preds = %while.cond398
  %232 = load i64, ptr %m_len, align 8, !dbg !1036
  %conv412 = trunc i64 %232 to i8, !dbg !1037
  %233 = load ptr, ptr %op, align 8, !dbg !1038
  %incdec.ptr413 = getelementptr i8, ptr %233, i32 1, !dbg !1038
  store ptr %incdec.ptr413, ptr %op, align 8, !dbg !1038
  store i8 %conv412, ptr %233, align 1, !dbg !1039
  br label %if.end414

if.end414:                                        ; preds = %while.end411, %if.then352
  %234 = load i64, ptr %m_off, align 8, !dbg !1040
  %shl415 = shl i64 %234, 2, !dbg !1041
  %conv416 = trunc i64 %shl415 to i8, !dbg !1042
  %235 = load ptr, ptr %op, align 8, !dbg !1043
  %incdec.ptr417 = getelementptr i8, ptr %235, i32 1, !dbg !1043
  store ptr %incdec.ptr417, ptr %op, align 8, !dbg !1043
  store i8 %conv416, ptr %235, align 1, !dbg !1044
  %236 = load i64, ptr %m_off, align 8, !dbg !1045
  %shr418 = lshr i64 %236, 6, !dbg !1046
  %conv419 = trunc i64 %shr418 to i8, !dbg !1047
  %237 = load ptr, ptr %op, align 8, !dbg !1048
  %incdec.ptr420 = getelementptr i8, ptr %237, i32 1, !dbg !1048
  store ptr %incdec.ptr420, ptr %op, align 8, !dbg !1048
  store i8 %conv419, ptr %237, align 1, !dbg !1049
  br label %if.end421

if.end421:                                        ; preds = %if.end414, %if.end341
  br label %if.end422

if.end422:                                        ; preds = %if.end421, %if.then298
  %238 = load ptr, ptr %state_offset.addr, align 8, !dbg !1050
  store i8 -2, ptr %238, align 1, !dbg !1051
  br label %finished_writing_instruction, !dbg !1052

finished_writing_instruction:                     ; preds = %if.end422, %if.then231
  call void @llvm.dbg.label(metadata !282), !dbg !1053
  %239 = load ptr, ptr %ip, align 8, !dbg !1054
  store ptr %239, ptr %ii, align 8, !dbg !1055
  br label %next, !dbg !1056

cleanup423:                                       ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %run_length) #8, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 4, ptr %dv) #8, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_off) #8, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_len) #8, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #8, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_pos) #8, !dbg !1057
  br label %for.end429

for.end429:                                       ; preds = %cleanup423
  %240 = load ptr, ptr %op, align 8, !dbg !1058
  %241 = load ptr, ptr %out.addr, align 8, !dbg !1059
  %sub.ptr.lhs.cast430 = ptrtoint ptr %240 to i64, !dbg !1060
  %sub.ptr.rhs.cast431 = ptrtoint ptr %241 to i64, !dbg !1060
  %sub.ptr.sub432 = sub i64 %sub.ptr.lhs.cast430, %sub.ptr.rhs.cast431, !dbg !1060
  %242 = load ptr, ptr %out_len.addr, align 8, !dbg !1061
  store i64 %sub.ptr.sub432, ptr %242, align 8, !dbg !1062
  %243 = load ptr, ptr %in_end, align 8, !dbg !1063
  %244 = load ptr, ptr %ii, align 8, !dbg !1064
  %245 = load i64, ptr %ti.addr, align 8, !dbg !1065
  %idx.neg433 = sub i64 0, %245, !dbg !1066
  %add.ptr434 = getelementptr i8, ptr %244, i64 %idx.neg433, !dbg !1066
  %sub.ptr.lhs.cast435 = ptrtoint ptr %243 to i64, !dbg !1067
  %sub.ptr.rhs.cast436 = ptrtoint ptr %add.ptr434 to i64, !dbg !1067
  %sub.ptr.sub437 = sub i64 %sub.ptr.lhs.cast435, %sub.ptr.rhs.cast436, !dbg !1067
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dict) #8, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #8, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip_end) #8, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_end) #8, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #8, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #8, !dbg !1068
  ret i64 %sub.ptr.sub437, !dbg !1069
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #6 align 16 !dbg !293 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !299, metadata !DIExpression()), !dbg !1070
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !1071
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !300, metadata !DIExpression()), !dbg !1071
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1071
  store ptr %0, ptr %__pptr, align 8, !dbg !1071
  %1 = load ptr, ptr %__pptr, align 8, !dbg !1071
  %x = getelementptr inbounds %struct.anon.22, ptr %1, i32 0, i32 0, !dbg !1071
  %2 = load i32, ptr %x, align 1, !dbg !1071
  store i32 %2, ptr %tmp, align 4, !dbg !1071
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !1072
  %3 = load i32, ptr %tmp, align 4, !dbg !1071
  ret i32 %3, !dbg !1073
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_unaligned_le32(i32 noundef %val, ptr noundef %p) #6 align 16 !dbg !306 {
entry:
  %val.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !310, metadata !DIExpression()), !dbg !1074
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !311, metadata !DIExpression()), !dbg !1075
  br label %do.body, !dbg !1076

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !1077
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !312, metadata !DIExpression()), !dbg !1077
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1077
  store ptr %0, ptr %__pptr, align 8, !dbg !1077
  %1 = load i32, ptr %val.addr, align 4, !dbg !1077
  %2 = load ptr, ptr %__pptr, align 8, !dbg !1077
  %x = getelementptr inbounds %struct.anon.23, ptr %2, i32 0, i32 0, !dbg !1077
  store i32 %1, ptr %x, align 1, !dbg !1077
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !1076
  br label %do.end, !dbg !1077

do.end:                                           ; preds = %do.body
  ret void, !dbg !1078
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!336, !337, !338, !339, !340, !341, !342, !343}
!llvm.ident = !{!344}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lzo1x_1_compress200", scope: !2, file: !3, line: 394, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/lzo/.lzo1x_compress.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/lzo/lzo_compress\22 -D KBUILD_BASENAME=\22lzo1x_compress\22 -D KBUILD_MODNAME=\22lzo_compress\22 -D __KBUILD_MODNAME=kmod_lzo_compress -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/lzo/lzo1x_compress.ll lib/lzo/lzo1x_compress.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !316, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/lzo/lzo1x_compress.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "44a96fa52113a3573816d9f7c11612b5")
!4 = !{!5, !6, !12, !13, !86, !60, !87, !73, !79, !88, !90, !142, !149, !156, !166, !89, !177, !285, !183, !286, !193, !199, !206, !212, !224, !230, !237, !243, !252, !259, !269, !276, !39, !123, !287, !289, !304}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 61, baseType: !8)
!7 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !9, line: 72, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !9, line: 16, baseType: !11)
!11 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !7, line: 42, baseType: !11)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !15, file: !3, line: 360, size: 64, elements: !84)
!15 = distinct !DISubprogram(name: "lzogeneric1x_1_compress", scope: !3, file: !3, line: 302, type: !16, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !24)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !6, !22, !23, !5, !20}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !40, !42, !44, !45, !46, !49, !54, !58, !71, !77}
!25 = !DILocalVariable(name: "in", arg: 1, scope: !15, file: !3, line: 302, type: !19)
!26 = !DILocalVariable(name: "in_len", arg: 2, scope: !15, file: !3, line: 302, type: !6)
!27 = !DILocalVariable(name: "out", arg: 3, scope: !15, file: !3, line: 303, type: !22)
!28 = !DILocalVariable(name: "out_len", arg: 4, scope: !15, file: !3, line: 303, type: !23)
!29 = !DILocalVariable(name: "wrkmem", arg: 5, scope: !15, file: !3, line: 304, type: !5)
!30 = !DILocalVariable(name: "bitstream_version", arg: 6, scope: !15, file: !3, line: 304, type: !20)
!31 = !DILocalVariable(name: "ip", scope: !15, file: !3, line: 306, type: !19)
!32 = !DILocalVariable(name: "op", scope: !15, file: !3, line: 307, type: !22)
!33 = !DILocalVariable(name: "data_start", scope: !15, file: !3, line: 308, type: !22)
!34 = !DILocalVariable(name: "l", scope: !15, file: !3, line: 309, type: !6)
!35 = !DILocalVariable(name: "t", scope: !15, file: !3, line: 310, type: !6)
!36 = !DILocalVariable(name: "state_offset", scope: !15, file: !3, line: 311, type: !37)
!37 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DILocalVariable(name: "m4_max_offset", scope: !15, file: !3, line: 312, type: !39)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !DILocalVariable(name: "ll", scope: !41, file: !3, line: 327, type: !6)
!41 = distinct !DILexicalBlock(scope: !15, file: !3, line: 326, column: 17)
!42 = !DILocalVariable(name: "__UNIQUE_ID___x197", scope: !43, file: !3, line: 327, type: !6)
!43 = distinct !DILexicalBlock(scope: !41, file: !3, line: 327, column: 15)
!44 = !DILocalVariable(name: "__UNIQUE_ID___y198", scope: !43, file: !3, line: 327, type: !6)
!45 = !DILocalVariable(name: "ll_end", scope: !41, file: !3, line: 328, type: !12)
!46 = !DILocalVariable(name: "ii", scope: !47, file: !3, line: 342, type: !19)
!47 = distinct !DILexicalBlock(scope: !48, file: !3, line: 341, column: 13)
!48 = distinct !DILexicalBlock(scope: !15, file: !3, line: 341, column: 6)
!49 = !DILocalVariable(name: "tt", scope: !50, file: !3, line: 351, type: !6)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 350, column: 10)
!51 = distinct !DILexicalBlock(scope: !52, file: !3, line: 348, column: 14)
!52 = distinct !DILexicalBlock(scope: !53, file: !3, line: 346, column: 14)
!53 = distinct !DILexicalBlock(scope: !47, file: !3, line: 344, column: 7)
!54 = !DILocalVariable(name: "__pptr", scope: !55, file: !3, line: 360, type: !13)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 360, column: 4)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 359, column: 19)
!57 = distinct !DILexicalBlock(scope: !47, file: !3, line: 359, column: 7)
!58 = !DILocalVariable(name: "__pptr", scope: !59, file: !3, line: 360, type: !60)
!59 = distinct !DILexicalBlock(scope: !55, file: !3, line: 360, column: 4)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !15, file: !3, line: 360, size: 64, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !62, file: !3, line: 360, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !67, line: 23, baseType: !68)
!67 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !69, line: 31, baseType: !70)
!69 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!70 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocalVariable(name: "__pptr", scope: !72, file: !3, line: 361, type: !73)
!72 = distinct !DILexicalBlock(scope: !56, file: !3, line: 361, column: 4)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !15, file: !3, line: 361, size: 64, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !74, file: !3, line: 361, baseType: !66, size: 64)
!77 = !DILocalVariable(name: "__pptr", scope: !78, file: !3, line: 361, type: !79)
!78 = distinct !DILexicalBlock(scope: !72, file: !3, line: 361, column: 4)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !15, file: !3, line: 361, size: 64, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !81, file: !3, line: 361, baseType: !65, size: 64)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !14, file: !3, line: 360, baseType: !66, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 59, size: 64, elements: !283)
!93 = distinct !DISubprogram(name: "lzo1x_1_do_compress", scope: !3, file: !3, line: 22, type: !94, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!94 = !DISubroutineType(types: !95)
!95 = !{!6, !19, !6, !22, !23, !6, !5, !96, !20}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !110, !111, !112, !114, !118, !119, !120, !121, !124, !125, !126, !127, !130, !131, !133, !134, !135, !140, !147, !154, !161, !171, !181, !189, !197, !204, !210, !217, !221, !228, !235, !241, !248, !250, !257, !264, !274, !281, !282}
!98 = !DILocalVariable(name: "in", arg: 1, scope: !93, file: !3, line: 22, type: !19)
!99 = !DILocalVariable(name: "in_len", arg: 2, scope: !93, file: !3, line: 22, type: !6)
!100 = !DILocalVariable(name: "out", arg: 3, scope: !93, file: !3, line: 23, type: !22)
!101 = !DILocalVariable(name: "out_len", arg: 4, scope: !93, file: !3, line: 23, type: !23)
!102 = !DILocalVariable(name: "ti", arg: 5, scope: !93, file: !3, line: 24, type: !6)
!103 = !DILocalVariable(name: "wrkmem", arg: 6, scope: !93, file: !3, line: 24, type: !5)
!104 = !DILocalVariable(name: "state_offset", arg: 7, scope: !93, file: !3, line: 24, type: !96)
!105 = !DILocalVariable(name: "bitstream_version", arg: 8, scope: !93, file: !3, line: 25, type: !20)
!106 = !DILocalVariable(name: "ip", scope: !93, file: !3, line: 27, type: !19)
!107 = !DILocalVariable(name: "op", scope: !93, file: !3, line: 28, type: !22)
!108 = !DILocalVariable(name: "in_end", scope: !93, file: !3, line: 29, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!110 = !DILocalVariable(name: "ip_end", scope: !93, file: !3, line: 30, type: !109)
!111 = !DILocalVariable(name: "ii", scope: !93, file: !3, line: 31, type: !19)
!112 = !DILocalVariable(name: "dict", scope: !93, file: !3, line: 32, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!114 = !DILocalVariable(name: "m_pos", scope: !115, file: !3, line: 40, type: !19)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 39, column: 11)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 39, column: 2)
!117 = distinct !DILexicalBlock(scope: !93, file: !3, line: 39, column: 2)
!118 = !DILocalVariable(name: "t", scope: !115, file: !3, line: 41, type: !6)
!119 = !DILocalVariable(name: "m_len", scope: !115, file: !3, line: 41, type: !6)
!120 = !DILocalVariable(name: "m_off", scope: !115, file: !3, line: 41, type: !6)
!121 = !DILocalVariable(name: "dv", scope: !115, file: !3, line: 42, type: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !67, line: 21, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !69, line: 27, baseType: !39)
!124 = !DILocalVariable(name: "run_length", scope: !115, file: !3, line: 43, type: !122)
!125 = !DILabel(scope: !115, name: "literal", file: !3, line: 44)
!126 = !DILabel(scope: !115, name: "next", file: !3, line: 46)
!127 = !DILocalVariable(name: "ir", scope: !128, file: !3, line: 52, type: !19)
!128 = distinct !DILexicalBlock(scope: !129, file: !3, line: 51, column: 37)
!129 = distinct !DILexicalBlock(scope: !115, file: !3, line: 51, column: 7)
!130 = !DILocalVariable(name: "limit", scope: !128, file: !3, line: 53, type: !19)
!131 = !DILocalVariable(name: "__UNIQUE_ID___x195", scope: !132, file: !3, line: 53, type: !109)
!132 = distinct !DILexicalBlock(scope: !128, file: !3, line: 53, column: 33)
!133 = !DILocalVariable(name: "__UNIQUE_ID___y196", scope: !132, file: !3, line: 53, type: !19)
!134 = !DILocalVariable(name: "dv64", scope: !128, file: !3, line: 56, type: !66)
!135 = !DILocalVariable(name: "__pptr", scope: !136, file: !3, line: 59, type: !90)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 59, column: 12)
!137 = distinct !DILexicalBlock(scope: !138, file: !3, line: 58, column: 41)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 58, column: 4)
!139 = distinct !DILexicalBlock(scope: !128, file: !3, line: 58, column: 4)
!140 = !DILocalVariable(name: "__pptr", scope: !141, file: !3, line: 60, type: !142)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 60, column: 13)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 60, size: 64, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !144, file: !3, line: 60, baseType: !66, size: 64)
!147 = !DILocalVariable(name: "__pptr", scope: !148, file: !3, line: 61, type: !149)
!148 = distinct !DILexicalBlock(scope: !137, file: !3, line: 61, column: 13)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 61, size: 64, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !151, file: !3, line: 61, baseType: !66, size: 64)
!154 = !DILocalVariable(name: "__pptr", scope: !155, file: !3, line: 62, type: !156)
!155 = distinct !DILexicalBlock(scope: !137, file: !3, line: 62, column: 13)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 62, size: 64, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !158, file: !3, line: 62, baseType: !66, size: 64)
!161 = !DILocalVariable(name: "__pptr", scope: !162, file: !3, line: 67, type: !166)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 67, column: 12)
!163 = distinct !DILexicalBlock(scope: !164, file: !3, line: 66, column: 39)
!164 = distinct !DILexicalBlock(scope: !165, file: !3, line: 66, column: 4)
!165 = distinct !DILexicalBlock(scope: !128, file: !3, line: 66, column: 4)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 67, size: 64, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !168, file: !3, line: 67, baseType: !66, size: 64)
!171 = !DILocalVariable(name: "__pptr", scope: !172, file: !3, line: 119, type: !177)
!172 = distinct !DILexicalBlock(scope: !173, file: !3, line: 119, column: 5)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 117, column: 16)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 117, column: 8)
!175 = distinct !DILexicalBlock(scope: !176, file: !3, line: 116, column: 15)
!176 = distinct !DILexicalBlock(scope: !115, file: !3, line: 116, column: 7)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 119, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !178, file: !3, line: 119, baseType: !122, size: 32)
!181 = !DILocalVariable(name: "__pptr", scope: !182, file: !3, line: 119, type: !183)
!182 = distinct !DILexicalBlock(scope: !172, file: !3, line: 119, column: 5)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 119, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !185, file: !3, line: 119, baseType: !188, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!189 = !DILocalVariable(name: "__pptr", scope: !190, file: !3, line: 123, type: !193)
!190 = distinct !DILexicalBlock(scope: !191, file: !3, line: 123, column: 5)
!191 = distinct !DILexicalBlock(scope: !192, file: !3, line: 121, column: 24)
!192 = distinct !DILexicalBlock(scope: !174, file: !3, line: 121, column: 15)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 123, size: 64, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !194, file: !3, line: 123, baseType: !66, size: 64)
!197 = !DILocalVariable(name: "__pptr", scope: !198, file: !3, line: 123, type: !199)
!198 = distinct !DILexicalBlock(scope: !190, file: !3, line: 123, column: 5)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 123, size: 64, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !201, file: !3, line: 123, baseType: !65, size: 64)
!204 = !DILocalVariable(name: "__pptr", scope: !205, file: !3, line: 124, type: !206)
!205 = distinct !DILexicalBlock(scope: !191, file: !3, line: 124, column: 5)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 124, size: 64, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !207, file: !3, line: 124, baseType: !66, size: 64)
!210 = !DILocalVariable(name: "__pptr", scope: !211, file: !3, line: 124, type: !212)
!211 = distinct !DILexicalBlock(scope: !205, file: !3, line: 124, column: 5)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 124, size: 64, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !214, file: !3, line: 124, baseType: !65, size: 64)
!217 = !DILocalVariable(name: "tt", scope: !218, file: !3, line: 130, type: !6)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 129, column: 12)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 127, column: 9)
!220 = distinct !DILexicalBlock(scope: !192, file: !3, line: 126, column: 11)
!221 = !DILocalVariable(name: "__pptr", scope: !222, file: !3, line: 139, type: !224)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 139, column: 6)
!223 = distinct !DILexicalBlock(scope: !220, file: !3, line: 138, column: 8)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 139, size: 64, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !225, file: !3, line: 139, baseType: !66, size: 64)
!228 = !DILocalVariable(name: "__pptr", scope: !229, file: !3, line: 139, type: !230)
!229 = distinct !DILexicalBlock(scope: !222, file: !3, line: 139, column: 6)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 139, size: 64, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !232, file: !3, line: 139, baseType: !65, size: 64)
!235 = !DILocalVariable(name: "__pptr", scope: !236, file: !3, line: 140, type: !237)
!236 = distinct !DILexicalBlock(scope: !223, file: !3, line: 140, column: 6)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 140, size: 64, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !238, file: !3, line: 140, baseType: !66, size: 64)
!241 = !DILocalVariable(name: "__pptr", scope: !242, file: !3, line: 140, type: !243)
!242 = distinct !DILexicalBlock(scope: !236, file: !3, line: 140, column: 6)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 140, size: 64, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !245, file: !3, line: 140, baseType: !65, size: 64)
!248 = !DILocalVariable(name: "v", scope: !249, file: !3, line: 165, type: !66)
!249 = distinct !DILexicalBlock(scope: !115, file: !3, line: 163, column: 3)
!250 = !DILocalVariable(name: "__pptr", scope: !251, file: !3, line: 166, type: !252)
!251 = distinct !DILexicalBlock(scope: !249, file: !3, line: 166, column: 7)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 166, size: 64, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !254, file: !3, line: 166, baseType: !65, size: 64)
!257 = !DILocalVariable(name: "__pptr", scope: !258, file: !3, line: 167, type: !259)
!258 = distinct !DILexicalBlock(scope: !249, file: !3, line: 167, column: 7)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 167, size: 64, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !261, file: !3, line: 167, baseType: !65, size: 64)
!264 = !DILocalVariable(name: "__pptr", scope: !265, file: !3, line: 171, type: !269)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 171, column: 9)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 169, column: 7)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 168, column: 25)
!268 = distinct !DILexicalBlock(scope: !249, file: !3, line: 168, column: 7)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 171, size: 64, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !271, file: !3, line: 171, baseType: !65, size: 64)
!274 = !DILocalVariable(name: "__pptr", scope: !275, file: !3, line: 172, type: !276)
!275 = distinct !DILexicalBlock(scope: !266, file: !3, line: 172, column: 9)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !3, line: 172, size: 64, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !278, file: !3, line: 172, baseType: !65, size: 64)
!281 = !DILabel(scope: !115, name: "m_len_done", file: !3, line: 240)
!282 = !DILabel(scope: !115, name: "finished_writing_instruction", file: !3, line: 294)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !92, file: !3, line: 59, baseType: !66, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !288, line: 38, baseType: !123)
!288 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !293, file: !292, line: 32, size: 32, elements: !302)
!292 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!293 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !292, file: !292, line: 30, type: !294, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!294 = !DISubroutineType(types: !295)
!295 = !{!122, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!298 = !{!299, !300}
!299 = !DILocalVariable(name: "p", arg: 1, scope: !293, file: !292, line: 30, type: !296)
!300 = !DILocalVariable(name: "__pptr", scope: !301, file: !292, line: 32, type: !289)
!301 = distinct !DILexicalBlock(scope: !293, file: !292, line: 32, column: 9)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !291, file: !292, line: 32, baseType: !287, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !292, line: 47, size: 32, elements: !314)
!306 = distinct !DISubprogram(name: "put_unaligned_le32", scope: !292, file: !292, line: 45, type: !307, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !122, !5}
!309 = !{!310, !311, !312}
!310 = !DILocalVariable(name: "val", arg: 1, scope: !306, file: !292, line: 45, type: !122)
!311 = !DILocalVariable(name: "p", arg: 2, scope: !306, file: !292, line: 45, type: !5)
!312 = !DILocalVariable(name: "__pptr", scope: !313, file: !292, line: 47, type: !304)
!313 = distinct !DILexicalBlock(scope: !306, file: !292, line: 47, column: 2)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !305, file: !292, line: 47, baseType: !287, size: 32)
!316 = !{!0, !317, !319, !326, !331}
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lzorle1x_1_compress201", scope: !2, file: !3, line: 395, type: !5, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file202", scope: !2, file: !3, line: 397, type: !321, isLocal: true, isDefinition: true, align: 8)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 312, elements: !324)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!324 = !{!325}
!325 = !DISubrange(count: 39)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license203", scope: !2, file: !3, line: 397, type: !328, isLocal: true, isDefinition: true, align: 8)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 200, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 25)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description204", scope: !2, file: !3, line: 398, type: !333, isLocal: true, isDefinition: true, align: 8)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 352, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 44)
!336 = !{i32 7, !"Dwarf Version", i32 5}
!337 = !{i32 2, !"Debug Info Version", i32 3}
!338 = !{i32 1, !"wchar_size", i32 2}
!339 = !{i32 8, !"cf-protection-branch", i32 1}
!340 = !{i32 4, !"function_return_thunk_extern", i32 1}
!341 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!342 = !{i32 1, !"Code Model", i32 2}
!343 = !{i32 1, !"override-stack-alignment", i32 8}
!344 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!345 = distinct !DISubprogram(name: "lzo1x_1_compress", scope: !3, file: !3, line: 379, type: !346, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!18, !19, !6, !22, !23, !5}
!348 = !{!349, !350, !351, !352, !353}
!349 = !DILocalVariable(name: "in", arg: 1, scope: !345, file: !3, line: 379, type: !19)
!350 = !DILocalVariable(name: "in_len", arg: 2, scope: !345, file: !3, line: 379, type: !6)
!351 = !DILocalVariable(name: "out", arg: 3, scope: !345, file: !3, line: 380, type: !22)
!352 = !DILocalVariable(name: "out_len", arg: 4, scope: !345, file: !3, line: 380, type: !23)
!353 = !DILocalVariable(name: "wrkmem", arg: 5, scope: !345, file: !3, line: 381, type: !5)
!354 = !DILocation(line: 379, column: 43, scope: !345)
!355 = !DILocation(line: 379, column: 54, scope: !345)
!356 = !DILocation(line: 380, column: 23, scope: !345)
!357 = !DILocation(line: 380, column: 36, scope: !345)
!358 = !DILocation(line: 381, column: 14, scope: !345)
!359 = !DILocation(line: 383, column: 33, scope: !345)
!360 = !DILocation(line: 383, column: 37, scope: !345)
!361 = !DILocation(line: 383, column: 45, scope: !345)
!362 = !DILocation(line: 383, column: 50, scope: !345)
!363 = !DILocation(line: 383, column: 59, scope: !345)
!364 = !DILocation(line: 383, column: 9, scope: !345)
!365 = !DILocation(line: 383, column: 2, scope: !345)
!366 = !DILocation(line: 302, column: 57, scope: !15)
!367 = !DILocation(line: 302, column: 68, scope: !15)
!368 = !DILocation(line: 303, column: 23, scope: !15)
!369 = !DILocation(line: 303, column: 36, scope: !15)
!370 = !DILocation(line: 304, column: 14, scope: !15)
!371 = !DILocation(line: 304, column: 42, scope: !15)
!372 = !DILocation(line: 306, column: 2, scope: !15)
!373 = !DILocation(line: 306, column: 23, scope: !15)
!374 = !DILocation(line: 306, column: 28, scope: !15)
!375 = !DILocation(line: 307, column: 2, scope: !15)
!376 = !DILocation(line: 307, column: 17, scope: !15)
!377 = !DILocation(line: 307, column: 22, scope: !15)
!378 = !DILocation(line: 308, column: 2, scope: !15)
!379 = !DILocation(line: 308, column: 17, scope: !15)
!380 = !DILocation(line: 309, column: 2, scope: !15)
!381 = !DILocation(line: 309, column: 9, scope: !15)
!382 = !DILocation(line: 309, column: 13, scope: !15)
!383 = !DILocation(line: 310, column: 2, scope: !15)
!384 = !DILocation(line: 310, column: 9, scope: !15)
!385 = !DILocation(line: 311, column: 2, scope: !15)
!386 = !DILocation(line: 311, column: 14, scope: !15)
!387 = !DILocation(line: 312, column: 2, scope: !15)
!388 = !DILocation(line: 312, column: 15, scope: !15)
!389 = !DILocation(line: 316, column: 6, scope: !390)
!390 = distinct !DILexicalBlock(scope: !15, file: !3, line: 316, column: 6)
!391 = !DILocation(line: 316, column: 24, scope: !390)
!392 = !DILocation(line: 316, column: 6, scope: !15)
!393 = !DILocation(line: 317, column: 6, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !3, line: 316, column: 29)
!395 = !DILocation(line: 317, column: 9, scope: !394)
!396 = !DILocation(line: 318, column: 11, scope: !394)
!397 = !DILocation(line: 318, column: 6, scope: !394)
!398 = !DILocation(line: 318, column: 9, scope: !394)
!399 = !DILocation(line: 319, column: 17, scope: !394)
!400 = !DILocation(line: 320, column: 2, scope: !394)
!401 = !DILocation(line: 321, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !390, file: !3, line: 320, column: 9)
!403 = !DILocation(line: 324, column: 15, scope: !15)
!404 = !DILocation(line: 324, column: 13, scope: !15)
!405 = !DILocation(line: 326, column: 2, scope: !15)
!406 = !DILocation(line: 326, column: 9, scope: !15)
!407 = !DILocation(line: 326, column: 11, scope: !15)
!408 = !DILocation(line: 327, column: 3, scope: !41)
!409 = !DILocation(line: 327, column: 10, scope: !41)
!410 = !DILocation(line: 327, column: 15, scope: !43)
!411 = !DILocation(line: 327, column: 15, scope: !41)
!412 = !DILocation(line: 328, column: 3, scope: !41)
!413 = !DILocation(line: 328, column: 13, scope: !41)
!414 = !DILocation(line: 328, column: 34, scope: !41)
!415 = !DILocation(line: 328, column: 22, scope: !41)
!416 = !DILocation(line: 328, column: 39, scope: !41)
!417 = !DILocation(line: 328, column: 37, scope: !41)
!418 = !DILocation(line: 329, column: 8, scope: !419)
!419 = distinct !DILexicalBlock(scope: !41, file: !3, line: 329, column: 7)
!420 = !DILocation(line: 329, column: 19, scope: !419)
!421 = !DILocation(line: 329, column: 23, scope: !419)
!422 = !DILocation(line: 329, column: 21, scope: !419)
!423 = !DILocation(line: 329, column: 27, scope: !419)
!424 = !DILocation(line: 329, column: 15, scope: !419)
!425 = !DILocation(line: 329, column: 37, scope: !419)
!426 = !DILocation(line: 329, column: 34, scope: !419)
!427 = !DILocation(line: 329, column: 7, scope: !41)
!428 = !DILocation(line: 330, column: 4, scope: !419)
!429 = !DILocation(line: 331, column: 3, scope: !41)
!430 = !DILocation(line: 331, column: 3, scope: !431)
!431 = distinct !DILexicalBlock(scope: !41, file: !3, line: 331, column: 3)
!432 = !DILocation(line: 332, column: 10, scope: !41)
!433 = !DILocation(line: 332, column: 3, scope: !41)
!434 = !DILocation(line: 333, column: 27, scope: !41)
!435 = !DILocation(line: 333, column: 31, scope: !41)
!436 = !DILocation(line: 333, column: 35, scope: !41)
!437 = !DILocation(line: 333, column: 39, scope: !41)
!438 = !DILocation(line: 333, column: 48, scope: !41)
!439 = !DILocation(line: 333, column: 51, scope: !41)
!440 = !DILocation(line: 334, column: 21, scope: !41)
!441 = !DILocation(line: 333, column: 7, scope: !41)
!442 = !DILocation(line: 333, column: 5, scope: !41)
!443 = !DILocation(line: 335, column: 9, scope: !41)
!444 = !DILocation(line: 335, column: 6, scope: !41)
!445 = !DILocation(line: 336, column: 10, scope: !41)
!446 = !DILocation(line: 336, column: 9, scope: !41)
!447 = !DILocation(line: 336, column: 6, scope: !41)
!448 = !DILocation(line: 337, column: 9, scope: !41)
!449 = !DILocation(line: 337, column: 6, scope: !41)
!450 = !DILocation(line: 338, column: 2, scope: !15)
!451 = distinct !{!451, !405, !450, !452, !453}
!452 = !{!"llvm.loop.mustprogress"}
!453 = !{!"llvm.loop.unroll.disable"}
!454 = !DILocation(line: 339, column: 7, scope: !15)
!455 = !DILocation(line: 339, column: 4, scope: !15)
!456 = !DILocation(line: 341, column: 6, scope: !48)
!457 = !DILocation(line: 341, column: 8, scope: !48)
!458 = !DILocation(line: 341, column: 6, scope: !15)
!459 = !DILocation(line: 342, column: 3, scope: !47)
!460 = !DILocation(line: 342, column: 24, scope: !47)
!461 = !DILocation(line: 342, column: 29, scope: !47)
!462 = !DILocation(line: 342, column: 34, scope: !47)
!463 = !DILocation(line: 342, column: 32, scope: !47)
!464 = !DILocation(line: 342, column: 43, scope: !47)
!465 = !DILocation(line: 342, column: 41, scope: !47)
!466 = !DILocation(line: 344, column: 7, scope: !53)
!467 = !DILocation(line: 344, column: 13, scope: !53)
!468 = !DILocation(line: 344, column: 10, scope: !53)
!469 = !DILocation(line: 344, column: 24, scope: !53)
!470 = !DILocation(line: 344, column: 27, scope: !53)
!471 = !DILocation(line: 344, column: 29, scope: !53)
!472 = !DILocation(line: 344, column: 7, scope: !47)
!473 = !DILocation(line: 345, column: 18, scope: !474)
!474 = distinct !DILexicalBlock(scope: !53, file: !3, line: 344, column: 37)
!475 = !DILocation(line: 345, column: 16, scope: !474)
!476 = !DILocation(line: 345, column: 12, scope: !474)
!477 = !DILocation(line: 345, column: 7, scope: !474)
!478 = !DILocation(line: 345, column: 10, scope: !474)
!479 = !DILocation(line: 346, column: 3, scope: !474)
!480 = !DILocation(line: 346, column: 14, scope: !52)
!481 = !DILocation(line: 346, column: 16, scope: !52)
!482 = !DILocation(line: 346, column: 14, scope: !53)
!483 = !DILocation(line: 347, column: 24, scope: !484)
!484 = distinct !DILexicalBlock(scope: !52, file: !3, line: 346, column: 22)
!485 = !DILocation(line: 347, column: 4, scope: !484)
!486 = !DILocation(line: 347, column: 7, scope: !484)
!487 = !DILocation(line: 347, column: 21, scope: !484)
!488 = !DILocation(line: 348, column: 3, scope: !484)
!489 = !DILocation(line: 348, column: 14, scope: !51)
!490 = !DILocation(line: 348, column: 16, scope: !51)
!491 = !DILocation(line: 348, column: 14, scope: !52)
!492 = !DILocation(line: 349, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !51, file: !3, line: 348, column: 23)
!494 = !DILocation(line: 349, column: 15, scope: !493)
!495 = !DILocation(line: 349, column: 12, scope: !493)
!496 = !DILocation(line: 349, column: 7, scope: !493)
!497 = !DILocation(line: 349, column: 10, scope: !493)
!498 = !DILocation(line: 350, column: 3, scope: !493)
!499 = !DILocation(line: 351, column: 4, scope: !50)
!500 = !DILocation(line: 351, column: 11, scope: !50)
!501 = !DILocation(line: 351, column: 16, scope: !50)
!502 = !DILocation(line: 351, column: 18, scope: !50)
!503 = !DILocation(line: 352, column: 7, scope: !50)
!504 = !DILocation(line: 352, column: 10, scope: !50)
!505 = !DILocation(line: 353, column: 4, scope: !50)
!506 = !DILocation(line: 353, column: 11, scope: !50)
!507 = !DILocation(line: 353, column: 14, scope: !50)
!508 = !DILocation(line: 354, column: 8, scope: !509)
!509 = distinct !DILexicalBlock(scope: !50, file: !3, line: 353, column: 21)
!510 = !DILocation(line: 355, column: 8, scope: !509)
!511 = !DILocation(line: 355, column: 11, scope: !509)
!512 = distinct !{!512, !505, !513, !452, !453}
!513 = !DILocation(line: 356, column: 4, scope: !50)
!514 = !DILocation(line: 357, column: 12, scope: !50)
!515 = !DILocation(line: 357, column: 7, scope: !50)
!516 = !DILocation(line: 357, column: 10, scope: !50)
!517 = !DILocation(line: 358, column: 3, scope: !51)
!518 = !DILocation(line: 359, column: 7, scope: !57)
!519 = !DILocation(line: 359, column: 9, scope: !57)
!520 = !DILocation(line: 359, column: 7, scope: !47)
!521 = !DILocation(line: 359, column: 16, scope: !57)
!522 = !DILocation(line: 360, column: 4, scope: !56)
!523 = !DILocation(line: 360, column: 4, scope: !55)
!524 = !DILocation(line: 360, column: 4, scope: !59)
!525 = !DILocation(line: 361, column: 4, scope: !56)
!526 = !DILocation(line: 361, column: 4, scope: !72)
!527 = !DILocation(line: 361, column: 4, scope: !78)
!528 = !DILocation(line: 362, column: 7, scope: !56)
!529 = !DILocation(line: 363, column: 7, scope: !56)
!530 = !DILocation(line: 364, column: 6, scope: !56)
!531 = !DILocation(line: 365, column: 3, scope: !56)
!532 = !DILocation(line: 365, column: 12, scope: !57)
!533 = !DILocation(line: 365, column: 14, scope: !57)
!534 = distinct !{!534, !521, !535, !452, !453}
!535 = !DILocation(line: 365, column: 19, scope: !57)
!536 = !DILocation(line: 366, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !47, file: !3, line: 366, column: 7)
!538 = !DILocation(line: 366, column: 9, scope: !537)
!539 = !DILocation(line: 366, column: 7, scope: !47)
!540 = !DILocation(line: 366, column: 14, scope: !537)
!541 = !DILocation(line: 367, column: 15, scope: !542)
!542 = distinct !DILexicalBlock(scope: !537, file: !3, line: 366, column: 17)
!543 = !DILocation(line: 367, column: 12, scope: !542)
!544 = !DILocation(line: 367, column: 7, scope: !542)
!545 = !DILocation(line: 367, column: 10, scope: !542)
!546 = !DILocation(line: 368, column: 3, scope: !542)
!547 = !DILocation(line: 368, column: 12, scope: !537)
!548 = !DILocation(line: 368, column: 16, scope: !537)
!549 = distinct !{!549, !540, !550, !452, !453}
!550 = !DILocation(line: 368, column: 19, scope: !537)
!551 = !DILocation(line: 369, column: 2, scope: !48)
!552 = !DILocation(line: 369, column: 2, scope: !47)
!553 = !DILocation(line: 371, column: 5, scope: !15)
!554 = !DILocation(line: 371, column: 8, scope: !15)
!555 = !DILocation(line: 372, column: 5, scope: !15)
!556 = !DILocation(line: 372, column: 8, scope: !15)
!557 = !DILocation(line: 373, column: 5, scope: !15)
!558 = !DILocation(line: 373, column: 8, scope: !15)
!559 = !DILocation(line: 375, column: 13, scope: !15)
!560 = !DILocation(line: 375, column: 18, scope: !15)
!561 = !DILocation(line: 375, column: 16, scope: !15)
!562 = !DILocation(line: 375, column: 3, scope: !15)
!563 = !DILocation(line: 375, column: 11, scope: !15)
!564 = !DILocation(line: 377, column: 1, scope: !15)
!565 = !DILocation(line: 376, column: 2, scope: !15)
!566 = distinct !DISubprogram(name: "lzorle1x_1_compress", scope: !3, file: !3, line: 386, type: !346, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !567)
!567 = !{!568, !569, !570, !571, !572}
!568 = !DILocalVariable(name: "in", arg: 1, scope: !566, file: !3, line: 386, type: !19)
!569 = !DILocalVariable(name: "in_len", arg: 2, scope: !566, file: !3, line: 386, type: !6)
!570 = !DILocalVariable(name: "out", arg: 3, scope: !566, file: !3, line: 387, type: !22)
!571 = !DILocalVariable(name: "out_len", arg: 4, scope: !566, file: !3, line: 387, type: !23)
!572 = !DILocalVariable(name: "wrkmem", arg: 5, scope: !566, file: !3, line: 388, type: !5)
!573 = !DILocation(line: 386, column: 46, scope: !566)
!574 = !DILocation(line: 386, column: 57, scope: !566)
!575 = !DILocation(line: 387, column: 23, scope: !566)
!576 = !DILocation(line: 387, column: 36, scope: !566)
!577 = !DILocation(line: 388, column: 14, scope: !566)
!578 = !DILocation(line: 390, column: 33, scope: !566)
!579 = !DILocation(line: 390, column: 37, scope: !566)
!580 = !DILocation(line: 390, column: 45, scope: !566)
!581 = !DILocation(line: 390, column: 50, scope: !566)
!582 = !DILocation(line: 391, column: 12, scope: !566)
!583 = !DILocation(line: 390, column: 9, scope: !566)
!584 = !DILocation(line: 390, column: 2, scope: !566)
!585 = !DILocation(line: 22, column: 42, scope: !93)
!586 = !DILocation(line: 22, column: 53, scope: !93)
!587 = !DILocation(line: 23, column: 22, scope: !93)
!588 = !DILocation(line: 23, column: 35, scope: !93)
!589 = !DILocation(line: 24, column: 14, scope: !93)
!590 = !DILocation(line: 24, column: 24, scope: !93)
!591 = !DILocation(line: 24, column: 45, scope: !93)
!592 = !DILocation(line: 25, column: 27, scope: !93)
!593 = !DILocation(line: 27, column: 2, scope: !93)
!594 = !DILocation(line: 27, column: 23, scope: !93)
!595 = !DILocation(line: 28, column: 2, scope: !93)
!596 = !DILocation(line: 28, column: 17, scope: !93)
!597 = !DILocation(line: 29, column: 2, scope: !93)
!598 = !DILocation(line: 29, column: 30, scope: !93)
!599 = !DILocation(line: 29, column: 39, scope: !93)
!600 = !DILocation(line: 29, column: 44, scope: !93)
!601 = !DILocation(line: 29, column: 42, scope: !93)
!602 = !DILocation(line: 30, column: 2, scope: !93)
!603 = !DILocation(line: 30, column: 30, scope: !93)
!604 = !DILocation(line: 30, column: 39, scope: !93)
!605 = !DILocation(line: 30, column: 44, scope: !93)
!606 = !DILocation(line: 30, column: 42, scope: !93)
!607 = !DILocation(line: 30, column: 51, scope: !93)
!608 = !DILocation(line: 31, column: 2, scope: !93)
!609 = !DILocation(line: 31, column: 23, scope: !93)
!610 = !DILocation(line: 32, column: 2, scope: !93)
!611 = !DILocation(line: 32, column: 21, scope: !93)
!612 = !DILocation(line: 32, column: 43, scope: !93)
!613 = !DILocation(line: 34, column: 7, scope: !93)
!614 = !DILocation(line: 34, column: 5, scope: !93)
!615 = !DILocation(line: 35, column: 7, scope: !93)
!616 = !DILocation(line: 35, column: 5, scope: !93)
!617 = !DILocation(line: 36, column: 7, scope: !93)
!618 = !DILocation(line: 36, column: 5, scope: !93)
!619 = !DILocation(line: 37, column: 8, scope: !93)
!620 = !DILocation(line: 37, column: 11, scope: !93)
!621 = !DILocation(line: 37, column: 21, scope: !93)
!622 = !DILocation(line: 37, column: 19, scope: !93)
!623 = !DILocation(line: 37, column: 5, scope: !93)
!624 = !DILocation(line: 39, column: 2, scope: !93)
!625 = !DILocation(line: 40, column: 3, scope: !115)
!626 = !DILocation(line: 40, column: 24, scope: !115)
!627 = !DILocation(line: 41, column: 3, scope: !115)
!628 = !DILocation(line: 41, column: 10, scope: !115)
!629 = !DILocation(line: 41, column: 13, scope: !115)
!630 = !DILocation(line: 41, column: 20, scope: !115)
!631 = !DILocation(line: 42, column: 3, scope: !115)
!632 = !DILocation(line: 42, column: 7, scope: !115)
!633 = !DILocation(line: 43, column: 3, scope: !115)
!634 = !DILocation(line: 43, column: 7, scope: !115)
!635 = !DILocation(line: 44, column: 1, scope: !115)
!636 = !DILocation(line: 45, column: 15, scope: !115)
!637 = !DILocation(line: 45, column: 20, scope: !115)
!638 = !DILocation(line: 45, column: 18, scope: !115)
!639 = !DILocation(line: 45, column: 24, scope: !115)
!640 = !DILocation(line: 45, column: 11, scope: !115)
!641 = !DILocation(line: 45, column: 6, scope: !115)
!642 = !DILocation(line: 45, column: 3, scope: !115)
!643 = !DILocation(line: 46, column: 1, scope: !115)
!644 = !DILocation(line: 47, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !115, file: !3, line: 47, column: 7)
!646 = !DILocation(line: 47, column: 7, scope: !115)
!647 = !DILocation(line: 48, column: 4, scope: !645)
!648 = !DILocation(line: 49, column: 27, scope: !115)
!649 = !DILocation(line: 49, column: 8, scope: !115)
!650 = !DILocation(line: 49, column: 6, scope: !115)
!651 = !DILocation(line: 51, column: 7, scope: !129)
!652 = !DILocation(line: 51, column: 10, scope: !129)
!653 = !DILocation(line: 51, column: 15, scope: !129)
!654 = !DILocation(line: 51, column: 18, scope: !129)
!655 = !DILocation(line: 51, column: 7, scope: !115)
!656 = !DILocation(line: 52, column: 4, scope: !128)
!657 = !DILocation(line: 52, column: 25, scope: !128)
!658 = !DILocation(line: 52, column: 30, scope: !128)
!659 = !DILocation(line: 52, column: 33, scope: !128)
!660 = !DILocation(line: 53, column: 4, scope: !128)
!661 = !DILocation(line: 53, column: 25, scope: !128)
!662 = !DILocation(line: 53, column: 33, scope: !132)
!663 = !DILocation(line: 53, column: 33, scope: !128)
!664 = !DILocation(line: 56, column: 4, scope: !128)
!665 = !DILocation(line: 56, column: 8, scope: !128)
!666 = !DILocation(line: 58, column: 4, scope: !128)
!667 = !DILocation(line: 58, column: 12, scope: !138)
!668 = !DILocation(line: 58, column: 15, scope: !138)
!669 = !DILocation(line: 58, column: 24, scope: !138)
!670 = !DILocation(line: 58, column: 21, scope: !138)
!671 = !DILocation(line: 58, column: 4, scope: !139)
!672 = !DILocation(line: 59, column: 12, scope: !136)
!673 = !DILocation(line: 59, column: 12, scope: !137)
!674 = !DILocation(line: 59, column: 10, scope: !137)
!675 = !DILocation(line: 60, column: 13, scope: !141)
!676 = !DILocation(line: 60, column: 13, scope: !137)
!677 = !DILocation(line: 60, column: 10, scope: !137)
!678 = !DILocation(line: 61, column: 13, scope: !148)
!679 = !DILocation(line: 61, column: 13, scope: !137)
!680 = !DILocation(line: 61, column: 10, scope: !137)
!681 = !DILocation(line: 62, column: 13, scope: !155)
!682 = !DILocation(line: 62, column: 13, scope: !137)
!683 = !DILocation(line: 62, column: 10, scope: !137)
!684 = !DILocation(line: 63, column: 9, scope: !685)
!685 = distinct !DILexicalBlock(scope: !137, file: !3, line: 63, column: 9)
!686 = !DILocation(line: 63, column: 9, scope: !137)
!687 = !DILocation(line: 64, column: 6, scope: !685)
!688 = !DILocation(line: 65, column: 4, scope: !137)
!689 = !DILocation(line: 58, column: 34, scope: !138)
!690 = !DILocation(line: 58, column: 4, scope: !138)
!691 = distinct !{!691, !671, !692, !452, !453}
!692 = !DILocation(line: 65, column: 4, scope: !139)
!693 = !DILocation(line: 66, column: 4, scope: !128)
!694 = !DILocation(line: 66, column: 12, scope: !164)
!695 = !DILocation(line: 66, column: 15, scope: !164)
!696 = !DILocation(line: 66, column: 23, scope: !164)
!697 = !DILocation(line: 66, column: 20, scope: !164)
!698 = !DILocation(line: 66, column: 4, scope: !165)
!699 = !DILocation(line: 67, column: 12, scope: !162)
!700 = !DILocation(line: 67, column: 12, scope: !163)
!701 = !DILocation(line: 67, column: 10, scope: !163)
!702 = !DILocation(line: 68, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !163, file: !3, line: 68, column: 9)
!704 = !DILocation(line: 68, column: 9, scope: !163)
!705 = !DILocation(line: 70, column: 28, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !3, line: 68, column: 15)
!707 = !DILocation(line: 70, column: 12, scope: !706)
!708 = !DILocation(line: 70, column: 34, scope: !706)
!709 = !DILocation(line: 70, column: 9, scope: !706)
!710 = !DILocation(line: 76, column: 6, scope: !706)
!711 = !DILocation(line: 78, column: 4, scope: !163)
!712 = !DILocation(line: 66, column: 33, scope: !164)
!713 = !DILocation(line: 66, column: 4, scope: !164)
!714 = distinct !{!714, !698, !715, !452, !453}
!715 = !DILocation(line: 78, column: 4, scope: !165)
!716 = !DILocation(line: 100, column: 4, scope: !128)
!717 = !DILocation(line: 100, column: 11, scope: !128)
!718 = !DILocation(line: 100, column: 30, scope: !128)
!719 = !DILocation(line: 100, column: 33, scope: !128)
!720 = !DILocation(line: 0, scope: !128)
!721 = !DILocation(line: 101, column: 7, scope: !128)
!722 = distinct !{!722, !716, !721, !452, !453}
!723 = !DILocation(line: 102, column: 17, scope: !128)
!724 = !DILocation(line: 102, column: 22, scope: !128)
!725 = !DILocation(line: 102, column: 20, scope: !128)
!726 = !DILocation(line: 102, column: 15, scope: !128)
!727 = !DILocation(line: 103, column: 8, scope: !728)
!728 = distinct !DILexicalBlock(scope: !128, file: !3, line: 103, column: 8)
!729 = !DILocation(line: 103, column: 19, scope: !728)
!730 = !DILocation(line: 103, column: 8, scope: !128)
!731 = !DILocation(line: 104, column: 16, scope: !728)
!732 = !DILocation(line: 104, column: 5, scope: !728)
!733 = !DILocation(line: 105, column: 3, scope: !129)
!734 = !DILocation(line: 105, column: 3, scope: !128)
!735 = !DILocation(line: 106, column: 10, scope: !736)
!736 = distinct !DILexicalBlock(scope: !129, file: !3, line: 105, column: 10)
!737 = !DILocation(line: 106, column: 13, scope: !736)
!738 = !DILocation(line: 106, column: 27, scope: !736)
!739 = !DILocation(line: 106, column: 45, scope: !736)
!740 = !DILocation(line: 106, column: 8, scope: !736)
!741 = !DILocation(line: 106, column: 6, scope: !736)
!742 = !DILocation(line: 107, column: 12, scope: !736)
!743 = !DILocation(line: 107, column: 17, scope: !736)
!744 = !DILocation(line: 107, column: 22, scope: !736)
!745 = !DILocation(line: 107, column: 15, scope: !736)
!746 = !DILocation(line: 107, column: 10, scope: !736)
!747 = !DILocation(line: 108, column: 28, scope: !736)
!748 = !DILocation(line: 108, column: 33, scope: !736)
!749 = !DILocation(line: 108, column: 31, scope: !736)
!750 = !DILocation(line: 108, column: 14, scope: !736)
!751 = !DILocation(line: 108, column: 4, scope: !736)
!752 = !DILocation(line: 108, column: 9, scope: !736)
!753 = !DILocation(line: 108, column: 12, scope: !736)
!754 = !DILocation(line: 109, column: 8, scope: !755)
!755 = distinct !DILexicalBlock(scope: !736, file: !3, line: 109, column: 8)
!756 = !DILocation(line: 109, column: 8, scope: !736)
!757 = !DILocation(line: 110, column: 5, scope: !755)
!758 = !DILocation(line: 113, column: 9, scope: !115)
!759 = !DILocation(line: 113, column: 6, scope: !115)
!760 = !DILocation(line: 114, column: 6, scope: !115)
!761 = !DILocation(line: 115, column: 7, scope: !115)
!762 = !DILocation(line: 115, column: 12, scope: !115)
!763 = !DILocation(line: 115, column: 10, scope: !115)
!764 = !DILocation(line: 115, column: 5, scope: !115)
!765 = !DILocation(line: 116, column: 7, scope: !176)
!766 = !DILocation(line: 116, column: 9, scope: !176)
!767 = !DILocation(line: 116, column: 7, scope: !115)
!768 = !DILocation(line: 117, column: 8, scope: !174)
!769 = !DILocation(line: 117, column: 10, scope: !174)
!770 = !DILocation(line: 117, column: 8, scope: !175)
!771 = !DILocation(line: 118, column: 26, scope: !173)
!772 = !DILocation(line: 118, column: 5, scope: !173)
!773 = !DILocation(line: 118, column: 9, scope: !173)
!774 = !DILocation(line: 118, column: 8, scope: !173)
!775 = !DILocation(line: 118, column: 23, scope: !173)
!776 = !DILocation(line: 119, column: 5, scope: !173)
!777 = !DILocation(line: 119, column: 5, scope: !172)
!778 = !DILocation(line: 119, column: 5, scope: !182)
!779 = !DILocation(line: 120, column: 11, scope: !173)
!780 = !DILocation(line: 120, column: 8, scope: !173)
!781 = !DILocation(line: 121, column: 4, scope: !173)
!782 = !DILocation(line: 121, column: 15, scope: !192)
!783 = !DILocation(line: 121, column: 17, scope: !192)
!784 = !DILocation(line: 121, column: 15, scope: !174)
!785 = !DILocation(line: 122, column: 14, scope: !191)
!786 = !DILocation(line: 122, column: 16, scope: !191)
!787 = !DILocation(line: 122, column: 13, scope: !191)
!788 = !DILocation(line: 122, column: 8, scope: !191)
!789 = !DILocation(line: 122, column: 11, scope: !191)
!790 = !DILocation(line: 123, column: 5, scope: !191)
!791 = !DILocation(line: 123, column: 5, scope: !190)
!792 = !DILocation(line: 123, column: 5, scope: !198)
!793 = !DILocation(line: 124, column: 5, scope: !191)
!794 = !DILocation(line: 124, column: 5, scope: !205)
!795 = !DILocation(line: 124, column: 5, scope: !211)
!796 = !DILocation(line: 125, column: 11, scope: !191)
!797 = !DILocation(line: 125, column: 8, scope: !191)
!798 = !DILocation(line: 126, column: 4, scope: !191)
!799 = !DILocation(line: 127, column: 9, scope: !219)
!800 = !DILocation(line: 127, column: 11, scope: !219)
!801 = !DILocation(line: 127, column: 9, scope: !220)
!802 = !DILocation(line: 128, column: 15, scope: !803)
!803 = distinct !DILexicalBlock(scope: !219, file: !3, line: 127, column: 18)
!804 = !DILocation(line: 128, column: 17, scope: !803)
!805 = !DILocation(line: 128, column: 14, scope: !803)
!806 = !DILocation(line: 128, column: 9, scope: !803)
!807 = !DILocation(line: 128, column: 12, scope: !803)
!808 = !DILocation(line: 129, column: 5, scope: !803)
!809 = !DILocation(line: 130, column: 6, scope: !218)
!810 = !DILocation(line: 130, column: 13, scope: !218)
!811 = !DILocation(line: 130, column: 18, scope: !218)
!812 = !DILocation(line: 130, column: 20, scope: !218)
!813 = !DILocation(line: 131, column: 9, scope: !218)
!814 = !DILocation(line: 131, column: 12, scope: !218)
!815 = !DILocation(line: 132, column: 6, scope: !218)
!816 = !DILocation(line: 132, column: 13, scope: !218)
!817 = !DILocation(line: 133, column: 10, scope: !818)
!818 = distinct !DILexicalBlock(scope: !218, file: !3, line: 132, column: 33)
!819 = !DILocation(line: 134, column: 10, scope: !818)
!820 = !DILocation(line: 134, column: 13, scope: !818)
!821 = distinct !{!821, !815, !822, !452, !453}
!822 = !DILocation(line: 135, column: 6, scope: !218)
!823 = !DILocation(line: 136, column: 14, scope: !218)
!824 = !DILocation(line: 136, column: 9, scope: !218)
!825 = !DILocation(line: 136, column: 12, scope: !218)
!826 = !DILocation(line: 137, column: 5, scope: !219)
!827 = !DILocation(line: 138, column: 5, scope: !220)
!828 = !DILocation(line: 139, column: 6, scope: !223)
!829 = !DILocation(line: 139, column: 6, scope: !222)
!830 = !DILocation(line: 139, column: 6, scope: !229)
!831 = !DILocation(line: 140, column: 6, scope: !223)
!832 = !DILocation(line: 140, column: 6, scope: !236)
!833 = !DILocation(line: 140, column: 6, scope: !242)
!834 = !DILocation(line: 141, column: 9, scope: !223)
!835 = !DILocation(line: 142, column: 9, scope: !223)
!836 = !DILocation(line: 143, column: 8, scope: !223)
!837 = !DILocation(line: 144, column: 5, scope: !223)
!838 = !DILocation(line: 144, column: 14, scope: !220)
!839 = !DILocation(line: 144, column: 16, scope: !220)
!840 = distinct !{!840, !827, !841, !452, !453}
!841 = !DILocation(line: 144, column: 21, scope: !220)
!842 = !DILocation(line: 145, column: 9, scope: !843)
!843 = distinct !DILexicalBlock(scope: !220, file: !3, line: 145, column: 9)
!844 = !DILocation(line: 145, column: 11, scope: !843)
!845 = !DILocation(line: 145, column: 9, scope: !220)
!846 = !DILocation(line: 145, column: 16, scope: !843)
!847 = !DILocation(line: 146, column: 17, scope: !848)
!848 = distinct !DILexicalBlock(scope: !843, file: !3, line: 145, column: 19)
!849 = !DILocation(line: 146, column: 14, scope: !848)
!850 = !DILocation(line: 146, column: 9, scope: !848)
!851 = !DILocation(line: 146, column: 12, scope: !848)
!852 = !DILocation(line: 147, column: 5, scope: !848)
!853 = !DILocation(line: 147, column: 14, scope: !843)
!854 = !DILocation(line: 147, column: 18, scope: !843)
!855 = distinct !{!855, !846, !856, !452, !453}
!856 = !DILocation(line: 147, column: 21, scope: !843)
!857 = !DILocation(line: 149, column: 3, scope: !175)
!858 = !DILocation(line: 151, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !115, file: !3, line: 151, column: 7)
!860 = !DILocation(line: 151, column: 7, scope: !115)
!861 = !DILocation(line: 152, column: 10, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !3, line: 151, column: 29)
!863 = !DILocation(line: 152, column: 7, scope: !862)
!864 = !DILocation(line: 153, column: 15, scope: !862)
!865 = !DILocation(line: 154, column: 24, scope: !862)
!866 = !DILocation(line: 154, column: 35, scope: !862)
!867 = !DILocation(line: 154, column: 42, scope: !862)
!868 = !DILocation(line: 155, column: 12, scope: !862)
!869 = !DILocation(line: 155, column: 23, scope: !862)
!870 = !DILocation(line: 155, column: 9, scope: !862)
!871 = !DILocation(line: 155, column: 31, scope: !862)
!872 = !DILocation(line: 154, column: 4, scope: !862)
!873 = !DILocation(line: 156, column: 7, scope: !862)
!874 = !DILocation(line: 157, column: 15, scope: !862)
!875 = !DILocation(line: 158, column: 5, scope: !862)
!876 = !DILocation(line: 158, column: 18, scope: !862)
!877 = !DILocation(line: 159, column: 4, scope: !862)
!878 = !DILocation(line: 162, column: 9, scope: !115)
!879 = !DILocation(line: 165, column: 3, scope: !249)
!880 = !DILocation(line: 165, column: 7, scope: !249)
!881 = !DILocation(line: 166, column: 7, scope: !251)
!882 = !DILocation(line: 166, column: 7, scope: !249)
!883 = !DILocation(line: 167, column: 7, scope: !258)
!884 = !DILocation(line: 167, column: 7, scope: !249)
!885 = !DILocation(line: 166, column: 49, scope: !249)
!886 = !DILocation(line: 166, column: 5, scope: !249)
!887 = !DILocation(line: 168, column: 7, scope: !268)
!888 = !DILocation(line: 168, column: 7, scope: !249)
!889 = !DILocation(line: 169, column: 4, scope: !267)
!890 = !DILocation(line: 170, column: 11, scope: !266)
!891 = !DILocation(line: 171, column: 9, scope: !265)
!892 = !DILocation(line: 171, column: 9, scope: !266)
!893 = !DILocation(line: 172, column: 9, scope: !275)
!894 = !DILocation(line: 172, column: 9, scope: !266)
!895 = !DILocation(line: 171, column: 51, scope: !266)
!896 = !DILocation(line: 171, column: 7, scope: !266)
!897 = !DILocation(line: 173, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !266, file: !3, line: 173, column: 9)
!899 = !DILocation(line: 173, column: 9, scope: !266)
!900 = !DILocation(line: 174, column: 6, scope: !898)
!901 = !DILocation(line: 175, column: 4, scope: !266)
!902 = !DILocation(line: 175, column: 13, scope: !267)
!903 = !DILocation(line: 175, column: 15, scope: !267)
!904 = distinct !{!904, !889, !905, !452, !453}
!905 = !DILocation(line: 175, column: 19, scope: !267)
!906 = !DILocation(line: 176, column: 3, scope: !267)
!907 = !DILocation(line: 178, column: 39, scope: !249)
!908 = !DILocation(line: 178, column: 23, scope: !249)
!909 = !DILocation(line: 178, column: 42, scope: !249)
!910 = !DILocation(line: 178, column: 12, scope: !249)
!911 = !DILocation(line: 178, column: 9, scope: !249)
!912 = !DILocation(line: 239, column: 3, scope: !115)
!913 = !DILocation(line: 239, column: 3, scope: !249)
!914 = !DILocation(line: 240, column: 1, scope: !115)
!915 = !DILocation(line: 242, column: 11, scope: !115)
!916 = !DILocation(line: 242, column: 16, scope: !115)
!917 = !DILocation(line: 242, column: 14, scope: !115)
!918 = !DILocation(line: 242, column: 9, scope: !115)
!919 = !DILocation(line: 243, column: 9, scope: !115)
!920 = !DILocation(line: 243, column: 6, scope: !115)
!921 = !DILocation(line: 244, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !115, file: !3, line: 244, column: 7)
!923 = !DILocation(line: 244, column: 13, scope: !922)
!924 = !DILocation(line: 244, column: 27, scope: !922)
!925 = !DILocation(line: 244, column: 30, scope: !922)
!926 = !DILocation(line: 244, column: 36, scope: !922)
!927 = !DILocation(line: 244, column: 7, scope: !115)
!928 = !DILocation(line: 245, column: 10, scope: !929)
!929 = distinct !DILexicalBlock(scope: !922, file: !3, line: 244, column: 54)
!930 = !DILocation(line: 246, column: 15, scope: !929)
!931 = !DILocation(line: 246, column: 21, scope: !929)
!932 = !DILocation(line: 246, column: 26, scope: !929)
!933 = !DILocation(line: 246, column: 36, scope: !929)
!934 = !DILocation(line: 246, column: 42, scope: !929)
!935 = !DILocation(line: 246, column: 47, scope: !929)
!936 = !DILocation(line: 246, column: 32, scope: !929)
!937 = !DILocation(line: 246, column: 12, scope: !929)
!938 = !DILocation(line: 246, column: 7, scope: !929)
!939 = !DILocation(line: 246, column: 10, scope: !929)
!940 = !DILocation(line: 247, column: 13, scope: !929)
!941 = !DILocation(line: 247, column: 19, scope: !929)
!942 = !DILocation(line: 247, column: 12, scope: !929)
!943 = !DILocation(line: 247, column: 7, scope: !929)
!944 = !DILocation(line: 247, column: 10, scope: !929)
!945 = !DILocation(line: 248, column: 3, scope: !929)
!946 = !DILocation(line: 248, column: 14, scope: !947)
!947 = distinct !DILexicalBlock(scope: !922, file: !3, line: 248, column: 14)
!948 = !DILocation(line: 248, column: 20, scope: !947)
!949 = !DILocation(line: 248, column: 14, scope: !922)
!950 = !DILocation(line: 249, column: 10, scope: !951)
!951 = distinct !DILexicalBlock(scope: !947, file: !3, line: 248, column: 38)
!952 = !DILocation(line: 250, column: 8, scope: !953)
!953 = distinct !DILexicalBlock(scope: !951, file: !3, line: 250, column: 8)
!954 = !DILocation(line: 250, column: 14, scope: !953)
!955 = !DILocation(line: 250, column: 8, scope: !951)
!956 = !DILocation(line: 251, column: 27, scope: !953)
!957 = !DILocation(line: 251, column: 33, scope: !953)
!958 = !DILocation(line: 251, column: 24, scope: !953)
!959 = !DILocation(line: 251, column: 13, scope: !953)
!960 = !DILocation(line: 251, column: 8, scope: !953)
!961 = !DILocation(line: 251, column: 11, scope: !953)
!962 = !DILocation(line: 251, column: 5, scope: !953)
!963 = !DILocation(line: 253, column: 11, scope: !964)
!964 = distinct !DILexicalBlock(scope: !953, file: !3, line: 252, column: 9)
!965 = !DILocation(line: 254, column: 8, scope: !964)
!966 = !DILocation(line: 254, column: 11, scope: !964)
!967 = !DILocation(line: 255, column: 5, scope: !964)
!968 = !DILocation(line: 255, column: 12, scope: !964)
!969 = !DILocation(line: 256, column: 12, scope: !970)
!970 = distinct !DILexicalBlock(scope: !964, file: !3, line: 255, column: 35)
!971 = !DILocation(line: 257, column: 9, scope: !970)
!972 = !DILocation(line: 257, column: 12, scope: !970)
!973 = distinct !{!973, !967, !974, !452, !453}
!974 = !DILocation(line: 258, column: 5, scope: !964)
!975 = !DILocation(line: 259, column: 14, scope: !964)
!976 = !DILocation(line: 259, column: 13, scope: !964)
!977 = !DILocation(line: 259, column: 8, scope: !964)
!978 = !DILocation(line: 259, column: 11, scope: !964)
!979 = !DILocation(line: 261, column: 13, scope: !951)
!980 = !DILocation(line: 261, column: 19, scope: !951)
!981 = !DILocation(line: 261, column: 12, scope: !951)
!982 = !DILocation(line: 261, column: 7, scope: !951)
!983 = !DILocation(line: 261, column: 10, scope: !951)
!984 = !DILocation(line: 262, column: 13, scope: !951)
!985 = !DILocation(line: 262, column: 19, scope: !951)
!986 = !DILocation(line: 262, column: 12, scope: !951)
!987 = !DILocation(line: 262, column: 7, scope: !951)
!988 = !DILocation(line: 262, column: 10, scope: !951)
!989 = !DILocation(line: 263, column: 3, scope: !951)
!990 = !DILocation(line: 264, column: 10, scope: !991)
!991 = distinct !DILexicalBlock(scope: !947, file: !3, line: 263, column: 10)
!992 = !DILocation(line: 265, column: 8, scope: !993)
!993 = distinct !DILexicalBlock(scope: !991, file: !3, line: 265, column: 8)
!994 = !DILocation(line: 265, column: 14, scope: !993)
!995 = !DILocation(line: 265, column: 8, scope: !991)
!996 = !DILocation(line: 266, column: 28, scope: !993)
!997 = !DILocation(line: 266, column: 34, scope: !993)
!998 = !DILocation(line: 266, column: 41, scope: !993)
!999 = !DILocation(line: 266, column: 24, scope: !993)
!1000 = !DILocation(line: 267, column: 10, scope: !993)
!1001 = !DILocation(line: 267, column: 16, scope: !993)
!1002 = !DILocation(line: 267, column: 7, scope: !993)
!1003 = !DILocation(line: 266, column: 13, scope: !993)
!1004 = !DILocation(line: 266, column: 8, scope: !993)
!1005 = !DILocation(line: 266, column: 11, scope: !993)
!1006 = !DILocation(line: 266, column: 5, scope: !993)
!1007 = !DILocation(line: 269, column: 9, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 269, column: 9)
!1009 = distinct !DILexicalBlock(scope: !993, file: !3, line: 268, column: 9)
!1010 = !DILocation(line: 0, scope: !1008)
!1011 = !DILocation(line: 272, column: 7, scope: !1008)
!1012 = !DILocation(line: 272, column: 10, scope: !1008)
!1013 = !DILocation(line: 269, column: 9, scope: !1009)
!1014 = !DILocation(line: 279, column: 12, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 272, column: 37)
!1016 = !DILocation(line: 279, column: 18, scope: !1015)
!1017 = !DILocation(line: 279, column: 9, scope: !1015)
!1018 = !DILocation(line: 280, column: 12, scope: !1015)
!1019 = !DILocation(line: 281, column: 5, scope: !1015)
!1020 = !DILocation(line: 282, column: 11, scope: !1009)
!1021 = !DILocation(line: 283, column: 28, scope: !1009)
!1022 = !DILocation(line: 283, column: 34, scope: !1009)
!1023 = !DILocation(line: 283, column: 41, scope: !1009)
!1024 = !DILocation(line: 283, column: 24, scope: !1009)
!1025 = !DILocation(line: 283, column: 13, scope: !1009)
!1026 = !DILocation(line: 283, column: 8, scope: !1009)
!1027 = !DILocation(line: 283, column: 11, scope: !1009)
!1028 = !DILocation(line: 284, column: 5, scope: !1009)
!1029 = !DILocation(line: 284, column: 12, scope: !1009)
!1030 = !DILocation(line: 285, column: 12, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 284, column: 35)
!1032 = !DILocation(line: 286, column: 9, scope: !1031)
!1033 = !DILocation(line: 286, column: 12, scope: !1031)
!1034 = distinct !{!1034, !1028, !1035, !452, !453}
!1035 = !DILocation(line: 287, column: 5, scope: !1009)
!1036 = !DILocation(line: 288, column: 14, scope: !1009)
!1037 = !DILocation(line: 288, column: 13, scope: !1009)
!1038 = !DILocation(line: 288, column: 8, scope: !1009)
!1039 = !DILocation(line: 288, column: 11, scope: !1009)
!1040 = !DILocation(line: 290, column: 13, scope: !991)
!1041 = !DILocation(line: 290, column: 19, scope: !991)
!1042 = !DILocation(line: 290, column: 12, scope: !991)
!1043 = !DILocation(line: 290, column: 7, scope: !991)
!1044 = !DILocation(line: 290, column: 10, scope: !991)
!1045 = !DILocation(line: 291, column: 13, scope: !991)
!1046 = !DILocation(line: 291, column: 19, scope: !991)
!1047 = !DILocation(line: 291, column: 12, scope: !991)
!1048 = !DILocation(line: 291, column: 7, scope: !991)
!1049 = !DILocation(line: 291, column: 10, scope: !991)
!1050 = !DILocation(line: 293, column: 4, scope: !115)
!1051 = !DILocation(line: 293, column: 17, scope: !115)
!1052 = !DILocation(line: 293, column: 3, scope: !115)
!1053 = !DILocation(line: 294, column: 1, scope: !115)
!1054 = !DILocation(line: 295, column: 8, scope: !115)
!1055 = !DILocation(line: 295, column: 6, scope: !115)
!1056 = !DILocation(line: 296, column: 3, scope: !115)
!1057 = !DILocation(line: 297, column: 2, scope: !116)
!1058 = !DILocation(line: 298, column: 13, scope: !93)
!1059 = !DILocation(line: 298, column: 18, scope: !93)
!1060 = !DILocation(line: 298, column: 16, scope: !93)
!1061 = !DILocation(line: 298, column: 3, scope: !93)
!1062 = !DILocation(line: 298, column: 11, scope: !93)
!1063 = !DILocation(line: 299, column: 9, scope: !93)
!1064 = !DILocation(line: 299, column: 19, scope: !93)
!1065 = !DILocation(line: 299, column: 24, scope: !93)
!1066 = !DILocation(line: 299, column: 22, scope: !93)
!1067 = !DILocation(line: 299, column: 16, scope: !93)
!1068 = !DILocation(line: 300, column: 1, scope: !93)
!1069 = !DILocation(line: 299, column: 2, scope: !93)
!1070 = !DILocation(line: 30, column: 50, scope: !293)
!1071 = !DILocation(line: 32, column: 9, scope: !301)
!1072 = !DILocation(line: 32, column: 9, scope: !293)
!1073 = !DILocation(line: 32, column: 2, scope: !293)
!1074 = !DILocation(line: 45, column: 43, scope: !306)
!1075 = !DILocation(line: 45, column: 54, scope: !306)
!1076 = !DILocation(line: 47, column: 2, scope: !306)
!1077 = !DILocation(line: 47, column: 2, scope: !313)
!1078 = !DILocation(line: 48, column: 1, scope: !306)
