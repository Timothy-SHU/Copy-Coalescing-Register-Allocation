; ModuleID = 'lib/asn1_decoder.c'
source_filename = "lib/asn1_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_asn1_ber_decoder: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad asn1_ber_decoder ; .previous"

%struct.asn1_decoder = type { ptr, i64, ptr }

@asn1_op_lengths = internal constant [41 x i8] c"\02\02\03\03\03\03\00\00\01\01\02\02\00\00\00\00\00\02\00\03\00\03\00\00\01\01\02\02\01\01\02\02\01\01\02\02\02\02\03\03\01", align 16, !dbg !0
@.str = private unnamed_addr constant [64 x i8] c"\013ASN.1 decoder error: Stacks not empty at completion (%u, %u)\0A\00", align 1, !dbg !80
@.str.1 = private unnamed_addr constant [58 x i8] c"\013ASN.1 decoder error: Found reserved opcode (%u) pc=%zu\0A\00", align 1, !dbg !86
@.str.2 = private unnamed_addr constant [19 x i8] c"Data overrun error\00", align 1, !dbg !91
@.str.3 = private unnamed_addr constant [22 x i8] c"Machine overrun error\00", align 1, !dbg !96
@.str.4 = private unnamed_addr constant [21 x i8] c"Jump stack underflow\00", align 1, !dbg !101
@.str.5 = private unnamed_addr constant [20 x i8] c"Jump stack overflow\00", align 1, !dbg !106
@.str.6 = private unnamed_addr constant [21 x i8] c"Cons stack underflow\00", align 1, !dbg !111
@.str.7 = private unnamed_addr constant [20 x i8] c"Cons stack overflow\00", align 1, !dbg !113
@.str.8 = private unnamed_addr constant [18 x i8] c"Cons length error\00", align 1, !dbg !115
@.str.9 = private unnamed_addr constant [35 x i8] c"Missing EOC in indefinite len cons\00", align 1, !dbg !120
@.str.10 = private unnamed_addr constant [19 x i8] c"Invalid length EOC\00", align 1, !dbg !125
@.str.11 = private unnamed_addr constant [19 x i8] c"Unsupported length\00", align 1, !dbg !127
@.str.12 = private unnamed_addr constant [39 x i8] c"Indefinite len primitive not permitted\00", align 1, !dbg !129
@.str.13 = private unnamed_addr constant [15 x i8] c"Unexpected tag\00", align 1, !dbg !134
@.str.14 = private unnamed_addr constant [23 x i8] c"Long tag not supported\00", align 1, !dbg !139
@__UNIQUE_ID___addressable_asn1_ber_decoder195 = internal global ptr @asn1_ber_decoder, section ".discard.addressable", align 8, !dbg !144
@__UNIQUE_ID_file196 = internal constant [35 x i8] c"asn1_decoder.file=lib/asn1_decoder\00", section ".modinfo", align 1, !dbg !146
@__UNIQUE_ID_license197 = internal constant [25 x i8] c"asn1_decoder.license=GPL\00", section ".modinfo", align 1, !dbg !150
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_asn1_ber_decoder195, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @asn1_ber_decoder(ptr noundef %decoder, ptr noundef %context, ptr noundef %data, i64 noundef %datalen) #0 align 16 !dbg !169 {
entry:
  %retval = alloca i32, align 4
  %decoder.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %datalen.addr = alloca i64, align 8
  %machine = alloca ptr, align 8
  %actions = alloca ptr, align 8
  %machlen = alloca i64, align 8
  %op = alloca i32, align 4
  %tag = alloca i8, align 1
  %csp = alloca i8, align 1
  %jsp = alloca i8, align 1
  %optag = alloca i8, align 1
  %hdr = alloca i8, align 1
  %errmsg = alloca ptr, align 8
  %pc = alloca i64, align 8
  %dp = alloca i64, align 8
  %tdp = alloca i64, align 8
  %len = alloca i64, align 8
  %ret = alloca i32, align 4
  %flags = alloca i8, align 1
  %cons_dp_stack = alloca [10 x i16], align 16
  %cons_datalen_stack = alloca [10 x i16], align 16
  %cons_hdrlen_stack = alloca [10 x i8], align 1
  %jump_stack = alloca [10 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp25 = alloca i8, align 1
  %tmp72 = alloca i32, align 4
  %tmp87 = alloca i32, align 4
  %n = alloca i32, align 4
  %tmp249 = alloca i32, align 4
  %tmp262 = alloca i64, align 8
  %tmp271 = alloca i32, align 4
  %act = alloca i8, align 1
  %tmp308 = alloca i32, align 4
  %tmp366 = alloca i32, align 4
  %tmp408 = alloca i32, align 4
  %tmp438 = alloca i32, align 4
  %tmp461 = alloca i32, align 4
  %tmp468 = alloca i32, align 4
  %act473 = alloca i8, align 1
  %tmp549 = alloca i32, align 4
  %tmp551 = alloca i32, align 4
  store ptr %decoder, ptr %decoder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %decoder.addr, metadata !196, metadata !DIExpression()), !dbg !261
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !197, metadata !DIExpression()), !dbg !262
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !198, metadata !DIExpression()), !dbg !263
  store i64 %datalen, ptr %datalen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datalen.addr, metadata !199, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 8, ptr %machine) #5, !dbg !265
  call void @llvm.dbg.declare(metadata ptr %machine, metadata !200, metadata !DIExpression()), !dbg !266
  %0 = load ptr, ptr %decoder.addr, align 8, !dbg !267
  %machine1 = getelementptr inbounds %struct.asn1_decoder, ptr %0, i32 0, i32 0, !dbg !268
  %1 = load ptr, ptr %machine1, align 8, !dbg !268
  store ptr %1, ptr %machine, align 8, !dbg !266
  call void @llvm.lifetime.start.p0(i64 8, ptr %actions) #5, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %actions, metadata !201, metadata !DIExpression()), !dbg !270
  %2 = load ptr, ptr %decoder.addr, align 8, !dbg !271
  %actions2 = getelementptr inbounds %struct.asn1_decoder, ptr %2, i32 0, i32 2, !dbg !272
  %3 = load ptr, ptr %actions2, align 8, !dbg !272
  store ptr %3, ptr %actions, align 8, !dbg !270
  call void @llvm.lifetime.start.p0(i64 8, ptr %machlen) #5, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %machlen, metadata !202, metadata !DIExpression()), !dbg !274
  %4 = load ptr, ptr %decoder.addr, align 8, !dbg !275
  %machlen3 = getelementptr inbounds %struct.asn1_decoder, ptr %4, i32 0, i32 1, !dbg !276
  %5 = load i64, ptr %machlen3, align 8, !dbg !276
  store i64 %5, ptr %machlen, align 8, !dbg !274
  call void @llvm.lifetime.start.p0(i64 4, ptr %op) #5, !dbg !277
  call void @llvm.dbg.declare(metadata ptr %op, metadata !203, metadata !DIExpression()), !dbg !278
  call void @llvm.lifetime.start.p0(i64 1, ptr %tag) #5, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %tag, metadata !204, metadata !DIExpression()), !dbg !280
  store i8 0, ptr %tag, align 1, !dbg !280
  call void @llvm.lifetime.start.p0(i64 1, ptr %csp) #5, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %csp, metadata !205, metadata !DIExpression()), !dbg !281
  store i8 0, ptr %csp, align 1, !dbg !281
  call void @llvm.lifetime.start.p0(i64 1, ptr %jsp) #5, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %jsp, metadata !206, metadata !DIExpression()), !dbg !282
  store i8 0, ptr %jsp, align 1, !dbg !282
  call void @llvm.lifetime.start.p0(i64 1, ptr %optag) #5, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %optag, metadata !207, metadata !DIExpression()), !dbg !283
  store i8 0, ptr %optag, align 1, !dbg !283
  call void @llvm.lifetime.start.p0(i64 1, ptr %hdr) #5, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %hdr, metadata !208, metadata !DIExpression()), !dbg !284
  store i8 0, ptr %hdr, align 1, !dbg !284
  call void @llvm.lifetime.start.p0(i64 8, ptr %errmsg) #5, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %errmsg, metadata !209, metadata !DIExpression()), !dbg !286
  call void @llvm.lifetime.start.p0(i64 8, ptr %pc) #5, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %pc, metadata !211, metadata !DIExpression()), !dbg !288
  store i64 0, ptr %pc, align 8, !dbg !288
  call void @llvm.lifetime.start.p0(i64 8, ptr %dp) #5, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %dp, metadata !212, metadata !DIExpression()), !dbg !289
  store i64 0, ptr %dp, align 8, !dbg !289
  call void @llvm.lifetime.start.p0(i64 8, ptr %tdp) #5, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %tdp, metadata !213, metadata !DIExpression()), !dbg !290
  store i64 0, ptr %tdp, align 8, !dbg !290
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #5, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %len, metadata !214, metadata !DIExpression()), !dbg !291
  store i64 0, ptr %len, align 8, !dbg !291
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5, !dbg !292
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !215, metadata !DIExpression()), !dbg !293
  call void @llvm.lifetime.start.p0(i64 1, ptr %flags) #5, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !216, metadata !DIExpression()), !dbg !295
  store i8 0, ptr %flags, align 1, !dbg !295
  call void @llvm.lifetime.start.p0(i64 20, ptr %cons_dp_stack) #5, !dbg !296
  call void @llvm.dbg.declare(metadata ptr %cons_dp_stack, metadata !217, metadata !DIExpression()), !dbg !297
  call void @llvm.lifetime.start.p0(i64 20, ptr %cons_datalen_stack) #5, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %cons_datalen_stack, metadata !222, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 10, ptr %cons_hdrlen_stack) #5, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %cons_hdrlen_stack, metadata !223, metadata !DIExpression()), !dbg !301
  call void @llvm.lifetime.start.p0(i64 10, ptr %jump_stack) #5, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %jump_stack, metadata !225, metadata !DIExpression()), !dbg !303
  %6 = load i64, ptr %datalen.addr, align 8, !dbg !304
  %cmp = icmp ugt i64 %6, 65535, !dbg !306
  br i1 %cmp, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  store i32 -90, ptr %retval, align 4, !dbg !308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup552, !dbg !308

if.end:                                           ; preds = %entry
  br label %next_op, !dbg !309

next_op:                                          ; preds = %if.end538, %if.end521, %if.then504, %if.end495, %if.then456, %if.then432, %if.end346, %if.end320, %if.end302, %cleanup250, %if.end
  call void @llvm.dbg.label(metadata !226), !dbg !310
  store i32 0, ptr %tmp, align 4, !dbg !311
  %7 = load i32, ptr %tmp, align 4, !dbg !314
  %8 = load i64, ptr %pc, align 8, !dbg !315
  %9 = load i64, ptr %machlen, align 8, !dbg !315
  %cmp4 = icmp uge i64 %8, %9, !dbg !315
  %lnot = xor i1 %cmp4, true, !dbg !315
  %lnot5 = xor i1 %lnot, true, !dbg !315
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !315
  %conv = sext i32 %lnot.ext to i64, !dbg !315
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !315
  %tobool = icmp ne i64 %expval, 0, !dbg !315
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !317

if.then6:                                         ; preds = %next_op
  br label %machine_overrun_error, !dbg !318

if.end7:                                          ; preds = %next_op
  %10 = load ptr, ptr %machine, align 8, !dbg !319
  %11 = load i64, ptr %pc, align 8, !dbg !320
  %arrayidx = getelementptr i8, ptr %10, i64 %11, !dbg !319
  %12 = load i8, ptr %arrayidx, align 1, !dbg !319
  %conv8 = zext i8 %12 to i32, !dbg !319
  store i32 %conv8, ptr %op, align 4, !dbg !321
  %13 = load i64, ptr %pc, align 8, !dbg !322
  %14 = load i32, ptr %op, align 4, !dbg !322
  %idxprom = zext i32 %14 to i64, !dbg !322
  %arrayidx9 = getelementptr [41 x i8], ptr @asn1_op_lengths, i64 0, i64 %idxprom, !dbg !322
  %15 = load i8, ptr %arrayidx9, align 1, !dbg !322
  %conv10 = zext i8 %15 to i64, !dbg !322
  %add = add i64 %13, %conv10, !dbg !322
  %16 = load i64, ptr %machlen, align 8, !dbg !322
  %cmp11 = icmp ugt i64 %add, %16, !dbg !322
  %lnot13 = xor i1 %cmp11, true, !dbg !322
  %lnot15 = xor i1 %lnot13, true, !dbg !322
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !322
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !322
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !322
  %tobool19 = icmp ne i64 %expval18, 0, !dbg !322
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !324

if.then20:                                        ; preds = %if.end7
  br label %machine_overrun_error, !dbg !325

if.end21:                                         ; preds = %if.end7
  %17 = load i32, ptr %op, align 4, !dbg !326
  %cmp22 = icmp ule i32 %17, 27, !dbg !327
  br i1 %cmp22, label %if.then24, label %if.end253, !dbg !328

if.then24:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 1, ptr %tmp25) #5, !dbg !329
  call void @llvm.dbg.declare(metadata ptr %tmp25, metadata !227, metadata !DIExpression()), !dbg !330
  %18 = load i32, ptr %op, align 4, !dbg !331
  %and = and i32 %18, 16, !dbg !333
  %tobool26 = icmp ne i32 %and, 0, !dbg !333
  br i1 %tobool26, label %land.lhs.true, label %lor.lhs.false, !dbg !334

land.lhs.true:                                    ; preds = %if.then24
  %19 = load i8, ptr %flags, align 1, !dbg !335
  %conv27 = zext i8 %19 to i32, !dbg !335
  %and28 = and i32 %conv27, 2, !dbg !336
  %tobool29 = icmp ne i32 %and28, 0, !dbg !336
  br i1 %tobool29, label %if.then35, label %lor.lhs.false, !dbg !337

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then24
  %20 = load i32, ptr %op, align 4, !dbg !338
  %and30 = and i32 %20, 1, !dbg !339
  %tobool31 = icmp ne i32 %and30, 0, !dbg !339
  br i1 %tobool31, label %land.lhs.true32, label %if.end43, !dbg !340

land.lhs.true32:                                  ; preds = %lor.lhs.false
  %21 = load i64, ptr %dp, align 8, !dbg !341
  %22 = load i64, ptr %datalen.addr, align 8, !dbg !342
  %cmp33 = icmp eq i64 %21, %22, !dbg !343
  br i1 %cmp33, label %if.then35, label %if.end43, !dbg !344

if.then35:                                        ; preds = %land.lhs.true32, %land.lhs.true
  %23 = load i8, ptr %flags, align 1, !dbg !345
  %conv36 = zext i8 %23 to i32, !dbg !345
  %and37 = and i32 %conv36, -5, !dbg !345
  %conv38 = trunc i32 %and37 to i8, !dbg !345
  store i8 %conv38, ptr %flags, align 1, !dbg !345
  %24 = load i32, ptr %op, align 4, !dbg !347
  %idxprom39 = zext i32 %24 to i64, !dbg !348
  %arrayidx40 = getelementptr [41 x i8], ptr @asn1_op_lengths, i64 0, i64 %idxprom39, !dbg !348
  %25 = load i8, ptr %arrayidx40, align 1, !dbg !348
  %conv41 = zext i8 %25 to i64, !dbg !348
  %26 = load i64, ptr %pc, align 8, !dbg !349
  %add42 = add i64 %26, %conv41, !dbg !349
  store i64 %add42, ptr %pc, align 8, !dbg !349
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup250, !dbg !350

if.end43:                                         ; preds = %land.lhs.true32, %lor.lhs.false
  store i8 0, ptr %flags, align 1, !dbg !351
  store i8 2, ptr %hdr, align 1, !dbg !352
  %27 = load i64, ptr %datalen.addr, align 8, !dbg !353
  %28 = load i64, ptr %dp, align 8, !dbg !353
  %sub = sub i64 %27, %28, !dbg !353
  %cmp44 = icmp ult i64 %sub, 2, !dbg !353
  %lnot46 = xor i1 %cmp44, true, !dbg !353
  %lnot48 = xor i1 %lnot46, true, !dbg !353
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !353
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !353
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !353
  %tobool52 = icmp ne i64 %expval51, 0, !dbg !353
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !355

if.then53:                                        ; preds = %if.end43
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup250, !dbg !356

if.end54:                                         ; preds = %if.end43
  %29 = load ptr, ptr %data.addr, align 8, !dbg !357
  %30 = load i64, ptr %dp, align 8, !dbg !358
  %inc = add i64 %30, 1, !dbg !358
  store i64 %inc, ptr %dp, align 8, !dbg !358
  %arrayidx55 = getelementptr i8, ptr %29, i64 %30, !dbg !357
  %31 = load i8, ptr %arrayidx55, align 1, !dbg !357
  store i8 %31, ptr %tag, align 1, !dbg !359
  %32 = load i8, ptr %tag, align 1, !dbg !360
  %conv56 = zext i8 %32 to i32, !dbg !360
  %and57 = and i32 %conv56, 31, !dbg !360
  %cmp58 = icmp eq i32 %and57, 31, !dbg !360
  %lnot60 = xor i1 %cmp58, true, !dbg !360
  %lnot62 = xor i1 %lnot60, true, !dbg !360
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !360
  %conv64 = sext i32 %lnot.ext63 to i64, !dbg !360
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 0), !dbg !360
  %tobool66 = icmp ne i64 %expval65, 0, !dbg !360
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !362

if.then67:                                        ; preds = %if.end54
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup250, !dbg !363

if.end68:                                         ; preds = %if.end54
  %33 = load i32, ptr %op, align 4, !dbg !364
  %and69 = and i32 %33, 8, !dbg !366
  %tobool70 = icmp ne i32 %and69, 0, !dbg !366
  br i1 %tobool70, label %if.then71, label %if.else, !dbg !367

if.then71:                                        ; preds = %if.end68
  store i32 0, ptr %tmp72, align 4, !dbg !368
  %34 = load i32, ptr %tmp72, align 4, !dbg !372
  br label %if.end101, !dbg !373

if.else:                                          ; preds = %if.end68
  %35 = load ptr, ptr %machine, align 8, !dbg !374
  %36 = load i64, ptr %pc, align 8, !dbg !376
  %add73 = add i64 %36, 1, !dbg !377
  %arrayidx74 = getelementptr i8, ptr %35, i64 %add73, !dbg !374
  %37 = load i8, ptr %arrayidx74, align 1, !dbg !374
  store i8 %37, ptr %optag, align 1, !dbg !378
  %38 = load i8, ptr %optag, align 1, !dbg !379
  %conv75 = zext i8 %38 to i32, !dbg !379
  %and76 = and i32 %conv75, 32, !dbg !380
  %39 = load i8, ptr %flags, align 1, !dbg !381
  %conv77 = zext i8 %39 to i32, !dbg !381
  %or = or i32 %conv77, %and76, !dbg !381
  %conv78 = trunc i32 %or to i8, !dbg !381
  store i8 %conv78, ptr %flags, align 1, !dbg !381
  %40 = load i8, ptr %optag, align 1, !dbg !382
  %conv79 = zext i8 %40 to i32, !dbg !382
  %41 = load i8, ptr %tag, align 1, !dbg !383
  %conv80 = zext i8 %41 to i32, !dbg !383
  %xor = xor i32 %conv79, %conv80, !dbg !384
  %conv81 = trunc i32 %xor to i8, !dbg !382
  store i8 %conv81, ptr %tmp25, align 1, !dbg !385
  %42 = load i8, ptr %optag, align 1, !dbg !386
  %conv82 = zext i8 %42 to i32, !dbg !386
  %and83 = and i32 %conv82, 32, !dbg !387
  %not = xor i32 %and83, -1, !dbg !388
  %43 = load i8, ptr %tmp25, align 1, !dbg !389
  %conv84 = zext i8 %43 to i32, !dbg !389
  %and85 = and i32 %conv84, %not, !dbg !389
  %conv86 = trunc i32 %and85 to i8, !dbg !389
  store i8 %conv86, ptr %tmp25, align 1, !dbg !389
  store i32 0, ptr %tmp87, align 4, !dbg !390
  %44 = load i32, ptr %tmp87, align 4, !dbg !393
  %45 = load i8, ptr %tmp25, align 1, !dbg !394
  %conv88 = zext i8 %45 to i32, !dbg !394
  %cmp89 = icmp ne i32 %conv88, 0, !dbg !396
  br i1 %cmp89, label %if.then91, label %if.end100, !dbg !397

if.then91:                                        ; preds = %if.else
  %46 = load i32, ptr %op, align 4, !dbg !398
  %and92 = and i32 %46, 1, !dbg !401
  %tobool93 = icmp ne i32 %and92, 0, !dbg !401
  br i1 %tobool93, label %if.then94, label %if.end99, !dbg !402

if.then94:                                        ; preds = %if.then91
  %47 = load i32, ptr %op, align 4, !dbg !403
  %idxprom95 = zext i32 %47 to i64, !dbg !405
  %arrayidx96 = getelementptr [41 x i8], ptr @asn1_op_lengths, i64 0, i64 %idxprom95, !dbg !405
  %48 = load i8, ptr %arrayidx96, align 1, !dbg !405
  %conv97 = zext i8 %48 to i64, !dbg !405
  %49 = load i64, ptr %pc, align 8, !dbg !406
  %add98 = add i64 %49, %conv97, !dbg !406
  store i64 %add98, ptr %pc, align 8, !dbg !406
  %50 = load i64, ptr %dp, align 8, !dbg !407
  %dec = add i64 %50, -1, !dbg !407
  store i64 %dec, ptr %dp, align 8, !dbg !407
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup250, !dbg !408

if.end99:                                         ; preds = %if.then91
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup250, !dbg !409

if.end100:                                        ; preds = %if.else
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then71
  %51 = load i8, ptr %flags, align 1, !dbg !410
  %conv102 = zext i8 %51 to i32, !dbg !410
  %or103 = or i32 %conv102, 2, !dbg !410
  %conv104 = trunc i32 %or103 to i8, !dbg !410
  store i8 %conv104, ptr %flags, align 1, !dbg !410
  %52 = load ptr, ptr %data.addr, align 8, !dbg !411
  %53 = load i64, ptr %dp, align 8, !dbg !412
  %inc105 = add i64 %53, 1, !dbg !412
  store i64 %inc105, ptr %dp, align 8, !dbg !412
  %arrayidx106 = getelementptr i8, ptr %52, i64 %53, !dbg !411
  %54 = load i8, ptr %arrayidx106, align 1, !dbg !411
  %conv107 = zext i8 %54 to i64, !dbg !411
  store i64 %conv107, ptr %len, align 8, !dbg !413
  %55 = load i64, ptr %len, align 8, !dbg !414
  %cmp108 = icmp ugt i64 %55, 127, !dbg !415
  br i1 %cmp108, label %if.then110, label %if.else200, !dbg !416

if.then110:                                       ; preds = %if.end101
  %56 = load i64, ptr %len, align 8, !dbg !417
  %cmp111 = icmp eq i64 %56, 128, !dbg !417
  %lnot113 = xor i1 %cmp111, true, !dbg !417
  %lnot115 = xor i1 %lnot113, true, !dbg !417
  %lnot.ext116 = zext i1 %lnot115 to i32, !dbg !417
  %conv117 = sext i32 %lnot.ext116 to i64, !dbg !417
  %expval118 = call i64 @llvm.expect.i64(i64 %conv117, i64 0), !dbg !417
  %tobool119 = icmp ne i64 %expval118, 0, !dbg !417
  br i1 %tobool119, label %if.then120, label %if.else150, !dbg !418

if.then120:                                       ; preds = %if.then110
  %57 = load i8, ptr %tag, align 1, !dbg !419
  %conv121 = zext i8 %57 to i32, !dbg !419
  %and122 = and i32 %conv121, 32, !dbg !419
  %tobool123 = icmp ne i32 %and122, 0, !dbg !419
  %lnot124 = xor i1 %tobool123, true, !dbg !419
  %lnot126 = xor i1 %lnot124, true, !dbg !419
  %lnot128 = xor i1 %lnot126, true, !dbg !419
  %lnot.ext129 = zext i1 %lnot128 to i32, !dbg !419
  %conv130 = sext i32 %lnot.ext129 to i64, !dbg !419
  %expval131 = call i64 @llvm.expect.i64(i64 %conv130, i64 0), !dbg !419
  %tobool132 = icmp ne i64 %expval131, 0, !dbg !419
  br i1 %tobool132, label %if.then133, label %if.end134, !dbg !422

if.then133:                                       ; preds = %if.then120
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup250, !dbg !423

if.end134:                                        ; preds = %if.then120
  %58 = load i8, ptr %flags, align 1, !dbg !424
  %conv135 = zext i8 %58 to i32, !dbg !424
  %or136 = or i32 %conv135, 1, !dbg !424
  %conv137 = trunc i32 %or136 to i8, !dbg !424
  store i8 %conv137, ptr %flags, align 1, !dbg !424
  %59 = load i64, ptr %datalen.addr, align 8, !dbg !425
  %60 = load i64, ptr %dp, align 8, !dbg !425
  %sub138 = sub i64 %59, %60, !dbg !425
  %cmp139 = icmp ugt i64 2, %sub138, !dbg !425
  %lnot141 = xor i1 %cmp139, true, !dbg !425
  %lnot143 = xor i1 %lnot141, true, !dbg !425
  %lnot.ext144 = zext i1 %lnot143 to i32, !dbg !425
  %conv145 = sext i32 %lnot.ext144 to i64, !dbg !425
  %expval146 = call i64 @llvm.expect.i64(i64 %conv145, i64 0), !dbg !425
  %tobool147 = icmp ne i64 %expval146, 0, !dbg !425
  br i1 %tobool147, label %if.then148, label %if.end149, !dbg !427

if.then148:                                       ; preds = %if.end134
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup250, !dbg !428

if.end149:                                        ; preds = %if.end134
  br label %if.end199, !dbg !429

if.else150:                                       ; preds = %if.then110
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5, !dbg !430
  call void @llvm.dbg.declare(metadata ptr %n, metadata !230, metadata !DIExpression()), !dbg !431
  %61 = load i64, ptr %len, align 8, !dbg !432
  %sub151 = sub i64 %61, 128, !dbg !433
  %conv152 = trunc i64 %sub151 to i32, !dbg !432
  store i32 %conv152, ptr %n, align 4, !dbg !431
  %62 = load i32, ptr %n, align 4, !dbg !434
  %cmp153 = icmp sgt i32 %62, 2, !dbg !434
  %lnot155 = xor i1 %cmp153, true, !dbg !434
  %lnot157 = xor i1 %lnot155, true, !dbg !434
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !434
  %conv159 = sext i32 %lnot.ext158 to i64, !dbg !434
  %expval160 = call i64 @llvm.expect.i64(i64 %conv159, i64 0), !dbg !434
  %tobool161 = icmp ne i64 %expval160, 0, !dbg !434
  br i1 %tobool161, label %if.then162, label %if.end163, !dbg !436

if.then162:                                       ; preds = %if.else150
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !437

if.end163:                                        ; preds = %if.else150
  %63 = load i32, ptr %n, align 4, !dbg !438
  %conv164 = sext i32 %63 to i64, !dbg !438
  %64 = load i64, ptr %datalen.addr, align 8, !dbg !438
  %65 = load i64, ptr %dp, align 8, !dbg !438
  %sub165 = sub i64 %64, %65, !dbg !438
  %cmp166 = icmp ugt i64 %conv164, %sub165, !dbg !438
  %lnot168 = xor i1 %cmp166, true, !dbg !438
  %lnot170 = xor i1 %lnot168, true, !dbg !438
  %lnot.ext171 = zext i1 %lnot170 to i32, !dbg !438
  %conv172 = sext i32 %lnot.ext171 to i64, !dbg !438
  %expval173 = call i64 @llvm.expect.i64(i64 %conv172, i64 0), !dbg !438
  %tobool174 = icmp ne i64 %expval173, 0, !dbg !438
  br i1 %tobool174, label %if.then175, label %if.end176, !dbg !440

if.then175:                                       ; preds = %if.end163
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !441

if.end176:                                        ; preds = %if.end163
  %66 = load i32, ptr %n, align 4, !dbg !442
  %67 = load i8, ptr %hdr, align 1, !dbg !443
  %conv177 = zext i8 %67 to i32, !dbg !443
  %add178 = add i32 %conv177, %66, !dbg !443
  %conv179 = trunc i32 %add178 to i8, !dbg !443
  store i8 %conv179, ptr %hdr, align 1, !dbg !443
  store i64 0, ptr %len, align 8, !dbg !444
  br label %for.cond, !dbg !446

for.cond:                                         ; preds = %for.inc, %if.end176
  %68 = load i32, ptr %n, align 4, !dbg !447
  %cmp180 = icmp sgt i32 %68, 0, !dbg !449
  br i1 %cmp180, label %for.body, label %for.end, !dbg !450

for.body:                                         ; preds = %for.cond
  %69 = load i64, ptr %len, align 8, !dbg !451
  %shl = shl i64 %69, 8, !dbg !451
  store i64 %shl, ptr %len, align 8, !dbg !451
  %70 = load ptr, ptr %data.addr, align 8, !dbg !453
  %71 = load i64, ptr %dp, align 8, !dbg !454
  %inc182 = add i64 %71, 1, !dbg !454
  store i64 %inc182, ptr %dp, align 8, !dbg !454
  %arrayidx183 = getelementptr i8, ptr %70, i64 %71, !dbg !453
  %72 = load i8, ptr %arrayidx183, align 1, !dbg !453
  %conv184 = zext i8 %72 to i64, !dbg !453
  %73 = load i64, ptr %len, align 8, !dbg !455
  %or185 = or i64 %73, %conv184, !dbg !455
  store i64 %or185, ptr %len, align 8, !dbg !455
  br label %for.inc, !dbg !456

for.inc:                                          ; preds = %for.body
  %74 = load i32, ptr %n, align 4, !dbg !457
  %dec186 = add i32 %74, -1, !dbg !457
  store i32 %dec186, ptr %n, align 4, !dbg !457
  br label %for.cond, !dbg !458, !llvm.loop !459

for.end:                                          ; preds = %for.cond
  %75 = load i64, ptr %len, align 8, !dbg !463
  %76 = load i64, ptr %datalen.addr, align 8, !dbg !463
  %77 = load i64, ptr %dp, align 8, !dbg !463
  %sub187 = sub i64 %76, %77, !dbg !463
  %cmp188 = icmp ugt i64 %75, %sub187, !dbg !463
  %lnot190 = xor i1 %cmp188, true, !dbg !463
  %lnot192 = xor i1 %lnot190, true, !dbg !463
  %lnot.ext193 = zext i1 %lnot192 to i32, !dbg !463
  %conv194 = sext i32 %lnot.ext193 to i64, !dbg !463
  %expval195 = call i64 @llvm.expect.i64(i64 %conv194, i64 0), !dbg !463
  %tobool196 = icmp ne i64 %expval195, 0, !dbg !463
  br i1 %tobool196, label %if.then197, label %if.end198, !dbg !465

if.then197:                                       ; preds = %for.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !466

if.end198:                                        ; preds = %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !467
  br label %cleanup, !dbg !467

cleanup:                                          ; preds = %if.then197, %if.then175, %if.then162, %if.end198
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5, !dbg !467
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup250 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end199

if.end199:                                        ; preds = %cleanup.cont, %if.end149
  br label %if.end213, !dbg !468

if.else200:                                       ; preds = %if.end101
  %78 = load i64, ptr %len, align 8, !dbg !469
  %79 = load i64, ptr %datalen.addr, align 8, !dbg !469
  %80 = load i64, ptr %dp, align 8, !dbg !469
  %sub201 = sub i64 %79, %80, !dbg !469
  %cmp202 = icmp ugt i64 %78, %sub201, !dbg !469
  %lnot204 = xor i1 %cmp202, true, !dbg !469
  %lnot206 = xor i1 %lnot204, true, !dbg !469
  %lnot.ext207 = zext i1 %lnot206 to i32, !dbg !469
  %conv208 = sext i32 %lnot.ext207 to i64, !dbg !469
  %expval209 = call i64 @llvm.expect.i64(i64 %conv208, i64 0), !dbg !469
  %tobool210 = icmp ne i64 %expval209, 0, !dbg !469
  br i1 %tobool210, label %if.then211, label %if.end212, !dbg !472

if.then211:                                       ; preds = %if.else200
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup250, !dbg !473

if.end212:                                        ; preds = %if.else200
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %if.end199
  %81 = load i8, ptr %flags, align 1, !dbg !474
  %conv214 = zext i8 %81 to i32, !dbg !474
  %and215 = and i32 %conv214, 32, !dbg !476
  %tobool216 = icmp ne i32 %and215, 0, !dbg !476
  br i1 %tobool216, label %if.then217, label %if.end248, !dbg !477

if.then217:                                       ; preds = %if.end213
  %82 = load i8, ptr %csp, align 1, !dbg !478
  %conv218 = zext i8 %82 to i32, !dbg !478
  %cmp219 = icmp sge i32 %conv218, 10, !dbg !478
  %lnot221 = xor i1 %cmp219, true, !dbg !478
  %lnot223 = xor i1 %lnot221, true, !dbg !478
  %lnot.ext224 = zext i1 %lnot223 to i32, !dbg !478
  %conv225 = sext i32 %lnot.ext224 to i64, !dbg !478
  %expval226 = call i64 @llvm.expect.i64(i64 %conv225, i64 0), !dbg !478
  %tobool227 = icmp ne i64 %expval226, 0, !dbg !478
  br i1 %tobool227, label %if.then228, label %if.end229, !dbg !481

if.then228:                                       ; preds = %if.then217
  store i32 12, ptr %cleanup.dest.slot, align 4
  br label %cleanup250, !dbg !482

if.end229:                                        ; preds = %if.then217
  %83 = load i64, ptr %dp, align 8, !dbg !483
  %conv230 = trunc i64 %83 to i16, !dbg !483
  %84 = load i8, ptr %csp, align 1, !dbg !484
  %idxprom231 = zext i8 %84 to i64, !dbg !485
  %arrayidx232 = getelementptr [10 x i16], ptr %cons_dp_stack, i64 0, i64 %idxprom231, !dbg !485
  store i16 %conv230, ptr %arrayidx232, align 2, !dbg !486
  %85 = load i8, ptr %hdr, align 1, !dbg !487
  %86 = load i8, ptr %csp, align 1, !dbg !488
  %idxprom233 = zext i8 %86 to i64, !dbg !489
  %arrayidx234 = getelementptr [10 x i8], ptr %cons_hdrlen_stack, i64 0, i64 %idxprom233, !dbg !489
  store i8 %85, ptr %arrayidx234, align 1, !dbg !490
  %87 = load i8, ptr %flags, align 1, !dbg !491
  %conv235 = zext i8 %87 to i32, !dbg !491
  %and236 = and i32 %conv235, 1, !dbg !493
  %tobool237 = icmp ne i32 %and236, 0, !dbg !493
  br i1 %tobool237, label %if.else243, label %if.then238, !dbg !494

if.then238:                                       ; preds = %if.end229
  %88 = load i64, ptr %datalen.addr, align 8, !dbg !495
  %conv239 = trunc i64 %88 to i16, !dbg !495
  %89 = load i8, ptr %csp, align 1, !dbg !497
  %idxprom240 = zext i8 %89 to i64, !dbg !498
  %arrayidx241 = getelementptr [10 x i16], ptr %cons_datalen_stack, i64 0, i64 %idxprom240, !dbg !498
  store i16 %conv239, ptr %arrayidx241, align 2, !dbg !499
  %90 = load i64, ptr %dp, align 8, !dbg !500
  %91 = load i64, ptr %len, align 8, !dbg !501
  %add242 = add i64 %90, %91, !dbg !502
  store i64 %add242, ptr %datalen.addr, align 8, !dbg !503
  br label %if.end246, !dbg !504

if.else243:                                       ; preds = %if.end229
  %92 = load i8, ptr %csp, align 1, !dbg !505
  %idxprom244 = zext i8 %92 to i64, !dbg !507
  %arrayidx245 = getelementptr [10 x i16], ptr %cons_datalen_stack, i64 0, i64 %idxprom244, !dbg !507
  store i16 0, ptr %arrayidx245, align 2, !dbg !508
  br label %if.end246

if.end246:                                        ; preds = %if.else243, %if.then238
  %93 = load i8, ptr %csp, align 1, !dbg !509
  %inc247 = add i8 %93, 1, !dbg !509
  store i8 %inc247, ptr %csp, align 1, !dbg !509
  br label %if.end248, !dbg !510

if.end248:                                        ; preds = %if.end246, %if.end213
  store i32 0, ptr %tmp249, align 4, !dbg !511
  %94 = load i32, ptr %tmp249, align 4, !dbg !514
  %95 = load i64, ptr %dp, align 8, !dbg !515
  store i64 %95, ptr %tdp, align 8, !dbg !516
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !517
  br label %cleanup250, !dbg !517

cleanup250:                                       ; preds = %if.then228, %if.then211, %if.then148, %if.then133, %if.end99, %if.then67, %if.then53, %if.end248, %cleanup, %if.then94, %if.then35
  call void @llvm.lifetime.end.p0(i64 1, ptr %tmp25) #5, !dbg !517
  %cleanup.dest251 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest251, label %cleanup552 [
    i32 0, label %cleanup.cont252
    i32 2, label %next_op
    i32 4, label %data_overrun_error
    i32 12, label %cons_stack_overflow
    i32 8, label %length_too_long
    i32 7, label %indefinite_len_primitive
    i32 6, label %tag_mismatch
    i32 5, label %long_tag_not_supported
  ]

cleanup.cont252:                                  ; preds = %cleanup250
  br label %if.end253, !dbg !518

if.end253:                                        ; preds = %cleanup.cont252, %if.end21
  %96 = load i32, ptr %op, align 4, !dbg !519
  switch i32 %96, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 17, label %sw.bb
    i32 19, label %sw.bb
    i32 24, label %sw.bb
    i32 25, label %sw.bb
    i32 26, label %sw.bb
    i32 27, label %sw.bb
    i32 4, label %sw.bb307
    i32 5, label %sw.bb307
    i32 21, label %sw.bb307
    i32 28, label %sw.bb332
    i32 29, label %sw.bb351
    i32 33, label %sw.bb371
    i32 37, label %sw.bb371
    i32 32, label %sw.bb386
    i32 35, label %sw.bb386
    i32 34, label %sw.bb386
    i32 36, label %sw.bb386
    i32 39, label %sw.bb386
    i32 38, label %sw.bb386
    i32 31, label %sw.bb500
    i32 30, label %sw.bb510
    i32 40, label %sw.bb526
  ], !dbg !520

sw.bb:                                            ; preds = %if.end253, %if.end253, %if.end253, %if.end253, %if.end253, %if.end253, %if.end253, %if.end253, %if.end253, %if.end253, %if.end253, %if.end253, %if.end253, %if.end253
  %97 = load i8, ptr %flags, align 1, !dbg !521
  %conv254 = zext i8 %97 to i32, !dbg !521
  %and255 = and i32 %conv254, 32, !dbg !522
  %tobool256 = icmp ne i32 %and255, 0, !dbg !522
  br i1 %tobool256, label %if.end272, label %if.then257, !dbg !523

if.then257:                                       ; preds = %sw.bb
  %98 = load i8, ptr %flags, align 1, !dbg !524
  %conv258 = zext i8 %98 to i32, !dbg !524
  %and259 = and i32 %conv258, 1, !dbg !525
  %tobool260 = icmp ne i32 %and259, 0, !dbg !525
  br i1 %tobool260, label %if.then261, label %if.end270, !dbg !526

if.then261:                                       ; preds = %if.then257
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp262) #5, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %tmp262, metadata !235, metadata !DIExpression()), !dbg !528
  %99 = load i64, ptr %dp, align 8, !dbg !529
  store i64 %99, ptr %tmp262, align 8, !dbg !528
  %100 = load ptr, ptr %data.addr, align 8, !dbg !530
  %101 = load i64, ptr %datalen.addr, align 8, !dbg !531
  %call = call i32 @asn1_find_indefinite_length(ptr noundef %100, i64 noundef %101, ptr noundef %tmp262, ptr noundef %len, ptr noundef %errmsg) #6, !dbg !532
  store i32 %call, ptr %ret, align 4, !dbg !533
  %102 = load i32, ptr %ret, align 4, !dbg !534
  %cmp263 = icmp slt i32 %102, 0, !dbg !536
  br i1 %cmp263, label %if.then265, label %if.end266, !dbg !537

if.then265:                                       ; preds = %if.then261
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup267, !dbg !538

if.end266:                                        ; preds = %if.then261
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !539
  br label %cleanup267, !dbg !539

cleanup267:                                       ; preds = %if.then265, %if.end266
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp262) #5, !dbg !539
  %cleanup.dest268 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest268, label %cleanup552 [
    i32 0, label %cleanup.cont269
    i32 14, label %error
  ]

cleanup.cont269:                                  ; preds = %cleanup267
  br label %if.end270, !dbg !540

if.end270:                                        ; preds = %cleanup.cont269, %if.then257
  store i32 0, ptr %tmp271, align 4, !dbg !541
  %103 = load i32, ptr %tmp271, align 4, !dbg !544
  br label %if.end272, !dbg !545

if.end272:                                        ; preds = %if.end270, %sw.bb
  %104 = load i32, ptr %op, align 4, !dbg !546
  %and273 = and i32 %104, 2, !dbg !547
  %tobool274 = icmp ne i32 %and273, 0, !dbg !547
  br i1 %tobool274, label %if.then275, label %if.end296, !dbg !548

if.then275:                                       ; preds = %if.end272
  call void @llvm.lifetime.start.p0(i64 1, ptr %act) #5, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %act, metadata !241, metadata !DIExpression()), !dbg !550
  %105 = load i32, ptr %op, align 4, !dbg !551
  %and276 = and i32 %105, 8, !dbg !553
  %tobool277 = icmp ne i32 %and276, 0, !dbg !553
  br i1 %tobool277, label %if.then278, label %if.else281, !dbg !554

if.then278:                                       ; preds = %if.then275
  %106 = load ptr, ptr %machine, align 8, !dbg !555
  %107 = load i64, ptr %pc, align 8, !dbg !556
  %add279 = add i64 %107, 1, !dbg !557
  %arrayidx280 = getelementptr i8, ptr %106, i64 %add279, !dbg !555
  %108 = load i8, ptr %arrayidx280, align 1, !dbg !555
  store i8 %108, ptr %act, align 1, !dbg !558
  br label %if.end284, !dbg !559

if.else281:                                       ; preds = %if.then275
  %109 = load ptr, ptr %machine, align 8, !dbg !560
  %110 = load i64, ptr %pc, align 8, !dbg !561
  %add282 = add i64 %110, 2, !dbg !562
  %arrayidx283 = getelementptr i8, ptr %109, i64 %add282, !dbg !560
  %111 = load i8, ptr %arrayidx283, align 1, !dbg !560
  store i8 %111, ptr %act, align 1, !dbg !563
  br label %if.end284

if.end284:                                        ; preds = %if.else281, %if.then278
  %112 = load ptr, ptr %actions, align 8, !dbg !564
  %113 = load i8, ptr %act, align 1, !dbg !565
  %idxprom285 = zext i8 %113 to i64, !dbg !564
  %arrayidx286 = getelementptr ptr, ptr %112, i64 %idxprom285, !dbg !564
  %114 = load ptr, ptr %arrayidx286, align 8, !dbg !564
  %115 = load ptr, ptr %context.addr, align 8, !dbg !566
  %116 = load i8, ptr %hdr, align 1, !dbg !567
  %conv287 = zext i8 %116 to i64, !dbg !567
  %117 = load i8, ptr %tag, align 1, !dbg !568
  %118 = load ptr, ptr %data.addr, align 8, !dbg !569
  %119 = load i64, ptr %dp, align 8, !dbg !570
  %add.ptr = getelementptr i8, ptr %118, i64 %119, !dbg !571
  %120 = load i64, ptr %len, align 8, !dbg !572
  %call288 = call i32 %114(ptr noundef %115, i64 noundef %conv287, i8 noundef zeroext %117, ptr noundef %add.ptr, i64 noundef %120) #6, !dbg !564
  store i32 %call288, ptr %ret, align 4, !dbg !573
  %121 = load i32, ptr %ret, align 4, !dbg !574
  %cmp289 = icmp slt i32 %121, 0, !dbg !576
  br i1 %cmp289, label %if.then291, label %if.end292, !dbg !577

if.then291:                                       ; preds = %if.end284
  %122 = load i32, ptr %ret, align 4, !dbg !578
  store i32 %122, ptr %retval, align 4, !dbg !579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup293, !dbg !579

if.end292:                                        ; preds = %if.end284
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !580
  br label %cleanup293, !dbg !580

cleanup293:                                       ; preds = %if.end292, %if.then291
  call void @llvm.lifetime.end.p0(i64 1, ptr %act) #5, !dbg !580
  %cleanup.dest294 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest294, label %cleanup552 [
    i32 0, label %cleanup.cont295
  ]

cleanup.cont295:                                  ; preds = %cleanup293
  br label %if.end296, !dbg !581

if.end296:                                        ; preds = %cleanup.cont295, %if.end272
  %123 = load i8, ptr %flags, align 1, !dbg !582
  %conv297 = zext i8 %123 to i32, !dbg !582
  %and298 = and i32 %conv297, 32, !dbg !584
  %tobool299 = icmp ne i32 %and298, 0, !dbg !584
  br i1 %tobool299, label %if.end302, label %if.then300, !dbg !585

if.then300:                                       ; preds = %if.end296
  %124 = load i64, ptr %len, align 8, !dbg !586
  %125 = load i64, ptr %dp, align 8, !dbg !587
  %add301 = add i64 %125, %124, !dbg !587
  store i64 %add301, ptr %dp, align 8, !dbg !587
  br label %if.end302, !dbg !588

if.end302:                                        ; preds = %if.then300, %if.end296
  %126 = load i32, ptr %op, align 4, !dbg !589
  %idxprom303 = zext i32 %126 to i64, !dbg !590
  %arrayidx304 = getelementptr [41 x i8], ptr @asn1_op_lengths, i64 0, i64 %idxprom303, !dbg !590
  %127 = load i8, ptr %arrayidx304, align 1, !dbg !590
  %conv305 = zext i8 %127 to i64, !dbg !590
  %128 = load i64, ptr %pc, align 8, !dbg !591
  %add306 = add i64 %128, %conv305, !dbg !591
  store i64 %add306, ptr %pc, align 8, !dbg !591
  br label %next_op, !dbg !592

sw.bb307:                                         ; preds = %if.end253, %if.end253, %if.end253
  store i32 0, ptr %tmp308, align 4, !dbg !593
  %129 = load i32, ptr %tmp308, align 4, !dbg !596
  %130 = load i8, ptr %jsp, align 1, !dbg !597
  %conv309 = zext i8 %130 to i32, !dbg !597
  %cmp310 = icmp eq i32 %conv309, 10, !dbg !597
  %lnot312 = xor i1 %cmp310, true, !dbg !597
  %lnot314 = xor i1 %lnot312, true, !dbg !597
  %lnot.ext315 = zext i1 %lnot314 to i32, !dbg !597
  %conv316 = sext i32 %lnot.ext315 to i64, !dbg !597
  %expval317 = call i64 @llvm.expect.i64(i64 %conv316, i64 0), !dbg !597
  %tobool318 = icmp ne i64 %expval317, 0, !dbg !597
  br i1 %tobool318, label %if.then319, label %if.end320, !dbg !599

if.then319:                                       ; preds = %sw.bb307
  br label %jump_stack_overflow, !dbg !600

if.end320:                                        ; preds = %sw.bb307
  %131 = load i64, ptr %pc, align 8, !dbg !601
  %132 = load i32, ptr %op, align 4, !dbg !602
  %idxprom321 = zext i32 %132 to i64, !dbg !603
  %arrayidx322 = getelementptr [41 x i8], ptr @asn1_op_lengths, i64 0, i64 %idxprom321, !dbg !603
  %133 = load i8, ptr %arrayidx322, align 1, !dbg !603
  %conv323 = zext i8 %133 to i64, !dbg !603
  %add324 = add i64 %131, %conv323, !dbg !604
  %conv325 = trunc i64 %add324 to i8, !dbg !601
  %134 = load i8, ptr %jsp, align 1, !dbg !605
  %inc326 = add i8 %134, 1, !dbg !605
  store i8 %inc326, ptr %jsp, align 1, !dbg !605
  %idxprom327 = zext i8 %134 to i64, !dbg !606
  %arrayidx328 = getelementptr [10 x i8], ptr %jump_stack, i64 0, i64 %idxprom327, !dbg !606
  store i8 %conv325, ptr %arrayidx328, align 1, !dbg !607
  %135 = load ptr, ptr %machine, align 8, !dbg !608
  %136 = load i64, ptr %pc, align 8, !dbg !609
  %add329 = add i64 %136, 2, !dbg !610
  %arrayidx330 = getelementptr i8, ptr %135, i64 %add329, !dbg !608
  %137 = load i8, ptr %arrayidx330, align 1, !dbg !608
  %conv331 = zext i8 %137 to i64, !dbg !608
  store i64 %conv331, ptr %pc, align 8, !dbg !611
  br label %next_op, !dbg !612

sw.bb332:                                         ; preds = %if.end253
  %138 = load i8, ptr %flags, align 1, !dbg !613
  %conv333 = zext i8 %138 to i32, !dbg !613
  %and334 = and i32 %conv333, 2, !dbg !613
  %tobool335 = icmp ne i32 %and334, 0, !dbg !613
  %lnot336 = xor i1 %tobool335, true, !dbg !613
  %lnot338 = xor i1 %lnot336, true, !dbg !613
  %lnot340 = xor i1 %lnot338, true, !dbg !613
  %lnot.ext341 = zext i1 %lnot340 to i32, !dbg !613
  %conv342 = sext i32 %lnot.ext341 to i64, !dbg !613
  %expval343 = call i64 @llvm.expect.i64(i64 %conv342, i64 0), !dbg !613
  %tobool344 = icmp ne i64 %expval343, 0, !dbg !613
  br i1 %tobool344, label %if.then345, label %if.end346, !dbg !615

if.then345:                                       ; preds = %sw.bb332
  br label %tag_mismatch, !dbg !616

if.end346:                                        ; preds = %sw.bb332
  %139 = load i32, ptr %op, align 4, !dbg !617
  %idxprom347 = zext i32 %139 to i64, !dbg !618
  %arrayidx348 = getelementptr [41 x i8], ptr @asn1_op_lengths, i64 0, i64 %idxprom347, !dbg !618
  %140 = load i8, ptr %arrayidx348, align 1, !dbg !618
  %conv349 = zext i8 %140 to i64, !dbg !618
  %141 = load i64, ptr %pc, align 8, !dbg !619
  %add350 = add i64 %141, %conv349, !dbg !619
  store i64 %add350, ptr %pc, align 8, !dbg !619
  br label %next_op, !dbg !620

sw.bb351:                                         ; preds = %if.end253
  %142 = load i8, ptr %jsp, align 1, !dbg !621
  %conv352 = zext i8 %142 to i32, !dbg !621
  %cmp353 = icmp ne i32 %conv352, 0, !dbg !621
  br i1 %cmp353, label %lor.end, label %lor.rhs, !dbg !621

lor.rhs:                                          ; preds = %sw.bb351
  %143 = load i8, ptr %csp, align 1, !dbg !621
  %conv355 = zext i8 %143 to i32, !dbg !621
  %cmp356 = icmp ne i32 %conv355, 0, !dbg !621
  br label %lor.end, !dbg !621

lor.end:                                          ; preds = %lor.rhs, %sw.bb351
  %144 = phi i1 [ true, %sw.bb351 ], [ %cmp356, %lor.rhs ]
  %lnot358 = xor i1 %144, true, !dbg !621
  %lnot360 = xor i1 %lnot358, true, !dbg !621
  %lnot.ext361 = zext i1 %lnot360 to i32, !dbg !621
  %conv362 = sext i32 %lnot.ext361 to i64, !dbg !621
  %expval363 = call i64 @llvm.expect.i64(i64 %conv362, i64 0), !dbg !621
  %tobool364 = icmp ne i64 %expval363, 0, !dbg !621
  br i1 %tobool364, label %if.then365, label %if.end370, !dbg !623

if.then365:                                       ; preds = %lor.end
  br label %do.body, !dbg !624

do.body:                                          ; preds = %if.then365
  br label %do.cond, !dbg !627

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !627

do.end:                                           ; preds = %do.cond
  %145 = load i8, ptr %jsp, align 1, !dbg !624
  %conv367 = zext i8 %145 to i32, !dbg !624
  %146 = load i8, ptr %csp, align 1, !dbg !624
  %conv368 = zext i8 %146 to i32, !dbg !624
  %call369 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %conv367, i32 noundef %conv368) #7, !dbg !624
  store i32 %call369, ptr %tmp366, align 4, !dbg !627
  %147 = load i32, ptr %tmp366, align 4, !dbg !624
  store i32 -74, ptr %retval, align 4, !dbg !629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup552, !dbg !629

if.end370:                                        ; preds = %lor.end
  store i32 0, ptr %retval, align 4, !dbg !630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup552, !dbg !630

sw.bb371:                                         ; preds = %if.end253, %if.end253
  %148 = load i8, ptr %flags, align 1, !dbg !631
  %conv372 = zext i8 %148 to i32, !dbg !631
  %and373 = and i32 %conv372, 2, !dbg !631
  %tobool374 = icmp ne i32 %and373, 0, !dbg !631
  %lnot375 = xor i1 %tobool374, true, !dbg !631
  %lnot377 = xor i1 %lnot375, true, !dbg !631
  %lnot379 = xor i1 %lnot377, true, !dbg !631
  %lnot.ext380 = zext i1 %lnot379 to i32, !dbg !631
  %conv381 = sext i32 %lnot.ext380 to i64, !dbg !631
  %expval382 = call i64 @llvm.expect.i64(i64 %conv381, i64 0), !dbg !631
  %tobool383 = icmp ne i64 %expval382, 0, !dbg !631
  br i1 %tobool383, label %if.then384, label %if.end385, !dbg !633

if.then384:                                       ; preds = %sw.bb371
  br label %tag_mismatch, !dbg !634

if.end385:                                        ; preds = %sw.bb371
  br label %sw.bb386, !dbg !631

sw.bb386:                                         ; preds = %if.end253, %if.end253, %if.end253, %if.end253, %if.end253, %if.end253, %if.end385
  %149 = load i8, ptr %csp, align 1, !dbg !635
  %conv387 = zext i8 %149 to i32, !dbg !635
  %cmp388 = icmp sle i32 %conv387, 0, !dbg !635
  %lnot390 = xor i1 %cmp388, true, !dbg !635
  %lnot392 = xor i1 %lnot390, true, !dbg !635
  %lnot.ext393 = zext i1 %lnot392 to i32, !dbg !635
  %conv394 = sext i32 %lnot.ext393 to i64, !dbg !635
  %expval395 = call i64 @llvm.expect.i64(i64 %conv394, i64 0), !dbg !635
  %tobool396 = icmp ne i64 %expval395, 0, !dbg !635
  br i1 %tobool396, label %if.then397, label %if.end398, !dbg !637

if.then397:                                       ; preds = %sw.bb386
  br label %cons_stack_underflow, !dbg !638

if.end398:                                        ; preds = %sw.bb386
  %150 = load i8, ptr %csp, align 1, !dbg !639
  %dec399 = add i8 %150, -1, !dbg !639
  store i8 %dec399, ptr %csp, align 1, !dbg !639
  %151 = load i8, ptr %csp, align 1, !dbg !640
  %idxprom400 = zext i8 %151 to i64, !dbg !641
  %arrayidx401 = getelementptr [10 x i16], ptr %cons_dp_stack, i64 0, i64 %idxprom400, !dbg !641
  %152 = load i16, ptr %arrayidx401, align 2, !dbg !641
  %conv402 = zext i16 %152 to i64, !dbg !641
  store i64 %conv402, ptr %tdp, align 8, !dbg !642
  %153 = load i8, ptr %csp, align 1, !dbg !643
  %idxprom403 = zext i8 %153 to i64, !dbg !644
  %arrayidx404 = getelementptr [10 x i8], ptr %cons_hdrlen_stack, i64 0, i64 %idxprom403, !dbg !644
  %154 = load i8, ptr %arrayidx404, align 1, !dbg !644
  store i8 %154, ptr %hdr, align 1, !dbg !645
  %155 = load i64, ptr %datalen.addr, align 8, !dbg !646
  store i64 %155, ptr %len, align 8, !dbg !647
  %156 = load i8, ptr %csp, align 1, !dbg !648
  %idxprom405 = zext i8 %156 to i64, !dbg !649
  %arrayidx406 = getelementptr [10 x i16], ptr %cons_datalen_stack, i64 0, i64 %idxprom405, !dbg !649
  %157 = load i16, ptr %arrayidx406, align 2, !dbg !649
  %conv407 = zext i16 %157 to i64, !dbg !649
  store i64 %conv407, ptr %datalen.addr, align 8, !dbg !650
  store i32 0, ptr %tmp408, align 4, !dbg !651
  %158 = load i32, ptr %tmp408, align 4, !dbg !654
  %159 = load i64, ptr %datalen.addr, align 8, !dbg !655
  %cmp409 = icmp eq i64 %159, 0, !dbg !657
  br i1 %cmp409, label %if.then411, label %if.else450, !dbg !658

if.then411:                                       ; preds = %if.end398
  %160 = load i64, ptr %len, align 8, !dbg !659
  store i64 %160, ptr %datalen.addr, align 8, !dbg !661
  %161 = load i64, ptr %datalen.addr, align 8, !dbg !662
  %162 = load i64, ptr %dp, align 8, !dbg !662
  %sub412 = sub i64 %161, %162, !dbg !662
  %cmp413 = icmp ult i64 %sub412, 2, !dbg !662
  %lnot415 = xor i1 %cmp413, true, !dbg !662
  %lnot417 = xor i1 %lnot415, true, !dbg !662
  %lnot.ext418 = zext i1 %lnot417 to i32, !dbg !662
  %conv419 = sext i32 %lnot.ext418 to i64, !dbg !662
  %expval420 = call i64 @llvm.expect.i64(i64 %conv419, i64 0), !dbg !662
  %tobool421 = icmp ne i64 %expval420, 0, !dbg !662
  br i1 %tobool421, label %if.then422, label %if.end423, !dbg !664

if.then422:                                       ; preds = %if.then411
  br label %data_overrun_error, !dbg !665

if.end423:                                        ; preds = %if.then411
  %163 = load ptr, ptr %data.addr, align 8, !dbg !666
  %164 = load i64, ptr %dp, align 8, !dbg !668
  %inc424 = add i64 %164, 1, !dbg !668
  store i64 %inc424, ptr %dp, align 8, !dbg !668
  %arrayidx425 = getelementptr i8, ptr %163, i64 %164, !dbg !666
  %165 = load i8, ptr %arrayidx425, align 1, !dbg !666
  %conv426 = zext i8 %165 to i32, !dbg !666
  %cmp427 = icmp ne i32 %conv426, 0, !dbg !669
  br i1 %cmp427, label %if.then429, label %if.end440, !dbg !670

if.then429:                                       ; preds = %if.end423
  %166 = load i32, ptr %op, align 4, !dbg !671
  %and430 = and i32 %166, 2, !dbg !674
  %tobool431 = icmp ne i32 %and430, 0, !dbg !674
  br i1 %tobool431, label %if.then432, label %if.end439, !dbg !675

if.then432:                                       ; preds = %if.then429
  %167 = load i64, ptr %dp, align 8, !dbg !676
  %dec433 = add i64 %167, -1, !dbg !676
  store i64 %dec433, ptr %dp, align 8, !dbg !676
  %168 = load i8, ptr %csp, align 1, !dbg !678
  %inc434 = add i8 %168, 1, !dbg !678
  store i8 %inc434, ptr %csp, align 1, !dbg !678
  %169 = load ptr, ptr %machine, align 8, !dbg !679
  %170 = load i64, ptr %pc, align 8, !dbg !680
  %add435 = add i64 %170, 1, !dbg !681
  %arrayidx436 = getelementptr i8, ptr %169, i64 %add435, !dbg !679
  %171 = load i8, ptr %arrayidx436, align 1, !dbg !679
  %conv437 = zext i8 %171 to i64, !dbg !679
  store i64 %conv437, ptr %pc, align 8, !dbg !682
  store i32 0, ptr %tmp438, align 4, !dbg !683
  %172 = load i32, ptr %tmp438, align 4, !dbg !686
  br label %next_op, !dbg !687

if.end439:                                        ; preds = %if.then429
  br label %missing_eoc, !dbg !688

if.end440:                                        ; preds = %if.end423
  %173 = load ptr, ptr %data.addr, align 8, !dbg !689
  %174 = load i64, ptr %dp, align 8, !dbg !691
  %inc441 = add i64 %174, 1, !dbg !691
  store i64 %inc441, ptr %dp, align 8, !dbg !691
  %arrayidx442 = getelementptr i8, ptr %173, i64 %174, !dbg !689
  %175 = load i8, ptr %arrayidx442, align 1, !dbg !689
  %conv443 = zext i8 %175 to i32, !dbg !689
  %cmp444 = icmp ne i32 %conv443, 0, !dbg !692
  br i1 %cmp444, label %if.then446, label %if.end447, !dbg !693

if.then446:                                       ; preds = %if.end440
  br label %invalid_eoc, !dbg !694

if.end447:                                        ; preds = %if.end440
  %176 = load i64, ptr %dp, align 8, !dbg !695
  %177 = load i64, ptr %tdp, align 8, !dbg !696
  %sub448 = sub i64 %176, %177, !dbg !697
  %sub449 = sub i64 %sub448, 2, !dbg !698
  store i64 %sub449, ptr %len, align 8, !dbg !699
  br label %if.end469, !dbg !700

if.else450:                                       ; preds = %if.end398
  %178 = load i64, ptr %dp, align 8, !dbg !701
  %179 = load i64, ptr %len, align 8, !dbg !704
  %cmp451 = icmp ult i64 %178, %179, !dbg !705
  br i1 %cmp451, label %land.lhs.true453, label %if.end462, !dbg !706

land.lhs.true453:                                 ; preds = %if.else450
  %180 = load i32, ptr %op, align 4, !dbg !707
  %and454 = and i32 %180, 2, !dbg !708
  %tobool455 = icmp ne i32 %and454, 0, !dbg !708
  br i1 %tobool455, label %if.then456, label %if.end462, !dbg !709

if.then456:                                       ; preds = %land.lhs.true453
  %181 = load i64, ptr %len, align 8, !dbg !710
  store i64 %181, ptr %datalen.addr, align 8, !dbg !712
  %182 = load i8, ptr %csp, align 1, !dbg !713
  %inc457 = add i8 %182, 1, !dbg !713
  store i8 %inc457, ptr %csp, align 1, !dbg !713
  %183 = load ptr, ptr %machine, align 8, !dbg !714
  %184 = load i64, ptr %pc, align 8, !dbg !715
  %add458 = add i64 %184, 1, !dbg !716
  %arrayidx459 = getelementptr i8, ptr %183, i64 %add458, !dbg !714
  %185 = load i8, ptr %arrayidx459, align 1, !dbg !714
  %conv460 = zext i8 %185 to i64, !dbg !714
  store i64 %conv460, ptr %pc, align 8, !dbg !717
  store i32 0, ptr %tmp461, align 4, !dbg !718
  %186 = load i32, ptr %tmp461, align 4, !dbg !721
  br label %next_op, !dbg !722

if.end462:                                        ; preds = %land.lhs.true453, %if.else450
  %187 = load i64, ptr %dp, align 8, !dbg !723
  %188 = load i64, ptr %len, align 8, !dbg !725
  %cmp463 = icmp ne i64 %187, %188, !dbg !726
  br i1 %cmp463, label %if.then465, label %if.end466, !dbg !727

if.then465:                                       ; preds = %if.end462
  br label %cons_length_error, !dbg !728

if.end466:                                        ; preds = %if.end462
  %189 = load i64, ptr %tdp, align 8, !dbg !729
  %190 = load i64, ptr %len, align 8, !dbg !730
  %sub467 = sub i64 %190, %189, !dbg !730
  store i64 %sub467, ptr %len, align 8, !dbg !730
  store i32 0, ptr %tmp468, align 4, !dbg !731
  %191 = load i32, ptr %tmp468, align 4, !dbg !734
  br label %if.end469

if.end469:                                        ; preds = %if.end466, %if.end447
  %192 = load i32, ptr %op, align 4, !dbg !735
  %and470 = and i32 %192, 4, !dbg !736
  %tobool471 = icmp ne i32 %and470, 0, !dbg !736
  br i1 %tobool471, label %if.then472, label %if.end495, !dbg !737

if.then472:                                       ; preds = %if.end469
  call void @llvm.lifetime.start.p0(i64 1, ptr %act473) #5, !dbg !738
  call void @llvm.dbg.declare(metadata ptr %act473, metadata !244, metadata !DIExpression()), !dbg !739
  %193 = load i32, ptr %op, align 4, !dbg !740
  %and474 = and i32 %193, 2, !dbg !742
  %tobool475 = icmp ne i32 %and474, 0, !dbg !742
  br i1 %tobool475, label %if.then476, label %if.else479, !dbg !743

if.then476:                                       ; preds = %if.then472
  %194 = load ptr, ptr %machine, align 8, !dbg !744
  %195 = load i64, ptr %pc, align 8, !dbg !745
  %add477 = add i64 %195, 2, !dbg !746
  %arrayidx478 = getelementptr i8, ptr %194, i64 %add477, !dbg !744
  %196 = load i8, ptr %arrayidx478, align 1, !dbg !744
  store i8 %196, ptr %act473, align 1, !dbg !747
  br label %if.end482, !dbg !748

if.else479:                                       ; preds = %if.then472
  %197 = load ptr, ptr %machine, align 8, !dbg !749
  %198 = load i64, ptr %pc, align 8, !dbg !750
  %add480 = add i64 %198, 1, !dbg !751
  %arrayidx481 = getelementptr i8, ptr %197, i64 %add480, !dbg !749
  %199 = load i8, ptr %arrayidx481, align 1, !dbg !749
  store i8 %199, ptr %act473, align 1, !dbg !752
  br label %if.end482

if.end482:                                        ; preds = %if.else479, %if.then476
  %200 = load ptr, ptr %actions, align 8, !dbg !753
  %201 = load i8, ptr %act473, align 1, !dbg !754
  %idxprom483 = zext i8 %201 to i64, !dbg !753
  %arrayidx484 = getelementptr ptr, ptr %200, i64 %idxprom483, !dbg !753
  %202 = load ptr, ptr %arrayidx484, align 8, !dbg !753
  %203 = load ptr, ptr %context.addr, align 8, !dbg !755
  %204 = load i8, ptr %hdr, align 1, !dbg !756
  %conv485 = zext i8 %204 to i64, !dbg !756
  %205 = load ptr, ptr %data.addr, align 8, !dbg !757
  %206 = load i64, ptr %tdp, align 8, !dbg !758
  %add.ptr486 = getelementptr i8, ptr %205, i64 %206, !dbg !759
  %207 = load i64, ptr %len, align 8, !dbg !760
  %call487 = call i32 %202(ptr noundef %203, i64 noundef %conv485, i8 noundef zeroext 0, ptr noundef %add.ptr486, i64 noundef %207) #6, !dbg !753
  store i32 %call487, ptr %ret, align 4, !dbg !761
  %208 = load i32, ptr %ret, align 4, !dbg !762
  %cmp488 = icmp slt i32 %208, 0, !dbg !764
  br i1 %cmp488, label %if.then490, label %if.end491, !dbg !765

if.then490:                                       ; preds = %if.end482
  %209 = load i32, ptr %ret, align 4, !dbg !766
  store i32 %209, ptr %retval, align 4, !dbg !767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup492, !dbg !767

if.end491:                                        ; preds = %if.end482
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !768
  br label %cleanup492, !dbg !768

cleanup492:                                       ; preds = %if.end491, %if.then490
  call void @llvm.lifetime.end.p0(i64 1, ptr %act473) #5, !dbg !768
  %cleanup.dest493 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest493, label %cleanup552 [
    i32 0, label %cleanup.cont494
  ]

cleanup.cont494:                                  ; preds = %cleanup492
  br label %if.end495, !dbg !769

if.end495:                                        ; preds = %cleanup.cont494, %if.end469
  %210 = load i32, ptr %op, align 4, !dbg !770
  %idxprom496 = zext i32 %210 to i64, !dbg !771
  %arrayidx497 = getelementptr [41 x i8], ptr @asn1_op_lengths, i64 0, i64 %idxprom496, !dbg !771
  %211 = load i8, ptr %arrayidx497, align 1, !dbg !771
  %conv498 = zext i8 %211 to i64, !dbg !771
  %212 = load i64, ptr %pc, align 8, !dbg !772
  %add499 = add i64 %212, %conv498, !dbg !772
  store i64 %add499, ptr %pc, align 8, !dbg !772
  br label %next_op, !dbg !773

sw.bb500:                                         ; preds = %if.end253
  %213 = load i8, ptr %flags, align 1, !dbg !774
  %conv501 = zext i8 %213 to i32, !dbg !774
  %and502 = and i32 %conv501, 4, !dbg !776
  %tobool503 = icmp ne i32 %and502, 0, !dbg !776
  br i1 %tobool503, label %if.end509, label %if.then504, !dbg !777

if.then504:                                       ; preds = %sw.bb500
  %214 = load i32, ptr %op, align 4, !dbg !778
  %idxprom505 = zext i32 %214 to i64, !dbg !780
  %arrayidx506 = getelementptr [41 x i8], ptr @asn1_op_lengths, i64 0, i64 %idxprom505, !dbg !780
  %215 = load i8, ptr %arrayidx506, align 1, !dbg !780
  %conv507 = zext i8 %215 to i64, !dbg !780
  %216 = load i64, ptr %pc, align 8, !dbg !781
  %add508 = add i64 %216, %conv507, !dbg !781
  store i64 %add508, ptr %pc, align 8, !dbg !781
  br label %next_op, !dbg !782

if.end509:                                        ; preds = %sw.bb500
  br label %sw.bb510, !dbg !783

sw.bb510:                                         ; preds = %if.end253, %if.end509
  %217 = load ptr, ptr %actions, align 8, !dbg !784
  %218 = load ptr, ptr %machine, align 8, !dbg !785
  %219 = load i64, ptr %pc, align 8, !dbg !786
  %add511 = add i64 %219, 1, !dbg !787
  %arrayidx512 = getelementptr i8, ptr %218, i64 %add511, !dbg !785
  %220 = load i8, ptr %arrayidx512, align 1, !dbg !785
  %idxprom513 = zext i8 %220 to i64, !dbg !784
  %arrayidx514 = getelementptr ptr, ptr %217, i64 %idxprom513, !dbg !784
  %221 = load ptr, ptr %arrayidx514, align 8, !dbg !784
  %222 = load ptr, ptr %context.addr, align 8, !dbg !788
  %223 = load i8, ptr %hdr, align 1, !dbg !789
  %conv515 = zext i8 %223 to i64, !dbg !789
  %224 = load i8, ptr %tag, align 1, !dbg !790
  %225 = load ptr, ptr %data.addr, align 8, !dbg !791
  %226 = load i64, ptr %tdp, align 8, !dbg !792
  %add.ptr516 = getelementptr i8, ptr %225, i64 %226, !dbg !793
  %227 = load i64, ptr %len, align 8, !dbg !794
  %call517 = call i32 %221(ptr noundef %222, i64 noundef %conv515, i8 noundef zeroext %224, ptr noundef %add.ptr516, i64 noundef %227) #6, !dbg !784
  store i32 %call517, ptr %ret, align 4, !dbg !795
  %228 = load i32, ptr %ret, align 4, !dbg !796
  %cmp518 = icmp slt i32 %228, 0, !dbg !798
  br i1 %cmp518, label %if.then520, label %if.end521, !dbg !799

if.then520:                                       ; preds = %sw.bb510
  %229 = load i32, ptr %ret, align 4, !dbg !800
  store i32 %229, ptr %retval, align 4, !dbg !801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup552, !dbg !801

if.end521:                                        ; preds = %sw.bb510
  %230 = load i32, ptr %op, align 4, !dbg !802
  %idxprom522 = zext i32 %230 to i64, !dbg !803
  %arrayidx523 = getelementptr [41 x i8], ptr @asn1_op_lengths, i64 0, i64 %idxprom522, !dbg !803
  %231 = load i8, ptr %arrayidx523, align 1, !dbg !803
  %conv524 = zext i8 %231 to i64, !dbg !803
  %232 = load i64, ptr %pc, align 8, !dbg !804
  %add525 = add i64 %232, %conv524, !dbg !804
  store i64 %add525, ptr %pc, align 8, !dbg !804
  br label %next_op, !dbg !805

sw.bb526:                                         ; preds = %if.end253
  %233 = load i8, ptr %jsp, align 1, !dbg !806
  %conv527 = zext i8 %233 to i32, !dbg !806
  %cmp528 = icmp sle i32 %conv527, 0, !dbg !806
  %lnot530 = xor i1 %cmp528, true, !dbg !806
  %lnot532 = xor i1 %lnot530, true, !dbg !806
  %lnot.ext533 = zext i1 %lnot532 to i32, !dbg !806
  %conv534 = sext i32 %lnot.ext533 to i64, !dbg !806
  %expval535 = call i64 @llvm.expect.i64(i64 %conv534, i64 0), !dbg !806
  %tobool536 = icmp ne i64 %expval535, 0, !dbg !806
  br i1 %tobool536, label %if.then537, label %if.end538, !dbg !808

if.then537:                                       ; preds = %sw.bb526
  br label %jump_stack_underflow, !dbg !809

if.end538:                                        ; preds = %sw.bb526
  %234 = load i8, ptr %jsp, align 1, !dbg !810
  %dec539 = add i8 %234, -1, !dbg !810
  store i8 %dec539, ptr %jsp, align 1, !dbg !810
  %idxprom540 = zext i8 %dec539 to i64, !dbg !811
  %arrayidx541 = getelementptr [10 x i8], ptr %jump_stack, i64 0, i64 %idxprom540, !dbg !811
  %235 = load i8, ptr %arrayidx541, align 1, !dbg !811
  %conv542 = zext i8 %235 to i64, !dbg !811
  store i64 %conv542, ptr %pc, align 8, !dbg !812
  %236 = load i8, ptr %flags, align 1, !dbg !813
  %conv543 = zext i8 %236 to i32, !dbg !813
  %or544 = or i32 %conv543, 6, !dbg !813
  %conv545 = trunc i32 %or544 to i8, !dbg !813
  store i8 %conv545, ptr %flags, align 1, !dbg !813
  br label %next_op, !dbg !814

sw.default:                                       ; preds = %if.end253
  br label %sw.epilog, !dbg !815

sw.epilog:                                        ; preds = %sw.default
  br label %do.body546, !dbg !816

do.body546:                                       ; preds = %sw.epilog
  br label %do.cond547, !dbg !818

do.cond547:                                       ; preds = %do.body546
  br label %do.end548, !dbg !818

do.end548:                                        ; preds = %do.cond547
  %237 = load i32, ptr %op, align 4, !dbg !816
  %238 = load i64, ptr %pc, align 8, !dbg !816
  %call550 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %237, i64 noundef %238) #7, !dbg !816
  store i32 %call550, ptr %tmp549, align 4, !dbg !818
  %239 = load i32, ptr %tmp549, align 4, !dbg !816
  store i32 -74, ptr %retval, align 4, !dbg !820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup552, !dbg !820

data_overrun_error:                               ; preds = %cleanup250, %if.then422
  call void @llvm.dbg.label(metadata !247), !dbg !821
  store ptr @.str.2, ptr %errmsg, align 8, !dbg !822
  br label %error, !dbg !823

machine_overrun_error:                            ; preds = %if.then20, %if.then6
  call void @llvm.dbg.label(metadata !248), !dbg !824
  store ptr @.str.3, ptr %errmsg, align 8, !dbg !825
  br label %error, !dbg !826

jump_stack_underflow:                             ; preds = %if.then537
  call void @llvm.dbg.label(metadata !249), !dbg !827
  store ptr @.str.4, ptr %errmsg, align 8, !dbg !828
  br label %error, !dbg !829

jump_stack_overflow:                              ; preds = %if.then319
  call void @llvm.dbg.label(metadata !250), !dbg !830
  store ptr @.str.5, ptr %errmsg, align 8, !dbg !831
  br label %error, !dbg !832

cons_stack_underflow:                             ; preds = %if.then397
  call void @llvm.dbg.label(metadata !251), !dbg !833
  store ptr @.str.6, ptr %errmsg, align 8, !dbg !834
  br label %error, !dbg !835

cons_stack_overflow:                              ; preds = %cleanup250
  call void @llvm.dbg.label(metadata !252), !dbg !836
  store ptr @.str.7, ptr %errmsg, align 8, !dbg !837
  br label %error, !dbg !838

cons_length_error:                                ; preds = %if.then465
  call void @llvm.dbg.label(metadata !253), !dbg !839
  store ptr @.str.8, ptr %errmsg, align 8, !dbg !840
  br label %error, !dbg !841

missing_eoc:                                      ; preds = %if.end439
  call void @llvm.dbg.label(metadata !254), !dbg !842
  store ptr @.str.9, ptr %errmsg, align 8, !dbg !843
  br label %error, !dbg !844

invalid_eoc:                                      ; preds = %if.then446
  call void @llvm.dbg.label(metadata !255), !dbg !845
  store ptr @.str.10, ptr %errmsg, align 8, !dbg !846
  br label %error, !dbg !847

length_too_long:                                  ; preds = %cleanup250
  call void @llvm.dbg.label(metadata !256), !dbg !848
  store ptr @.str.11, ptr %errmsg, align 8, !dbg !849
  br label %error, !dbg !850

indefinite_len_primitive:                         ; preds = %cleanup250
  call void @llvm.dbg.label(metadata !257), !dbg !851
  store ptr @.str.12, ptr %errmsg, align 8, !dbg !852
  br label %error, !dbg !853

tag_mismatch:                                     ; preds = %cleanup250, %if.then384, %if.then345
  call void @llvm.dbg.label(metadata !258), !dbg !854
  store ptr @.str.13, ptr %errmsg, align 8, !dbg !855
  br label %error, !dbg !856

long_tag_not_supported:                           ; preds = %cleanup250
  call void @llvm.dbg.label(metadata !259), !dbg !857
  store ptr @.str.14, ptr %errmsg, align 8, !dbg !858
  br label %error, !dbg !859

error:                                            ; preds = %long_tag_not_supported, %cleanup267, %tag_mismatch, %indefinite_len_primitive, %length_too_long, %invalid_eoc, %missing_eoc, %cons_length_error, %cons_stack_overflow, %cons_stack_underflow, %jump_stack_overflow, %jump_stack_underflow, %machine_overrun_error, %data_overrun_error
  call void @llvm.dbg.label(metadata !260), !dbg !860
  store i32 0, ptr %tmp551, align 4, !dbg !861
  %240 = load i32, ptr %tmp551, align 4, !dbg !864
  store i32 -74, ptr %retval, align 4, !dbg !865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup552, !dbg !865

cleanup552:                                       ; preds = %error, %do.end548, %if.then520, %cleanup492, %if.end370, %do.end, %cleanup293, %cleanup267, %cleanup250, %if.then
  call void @llvm.lifetime.end.p0(i64 10, ptr %jump_stack) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 10, ptr %cons_hdrlen_stack) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 20, ptr %cons_datalen_stack) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 20, ptr %cons_dp_stack) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 1, ptr %flags) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %tdp) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %dp) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %pc) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %errmsg) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 1, ptr %hdr) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 1, ptr %optag) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 1, ptr %jsp) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 1, ptr %csp) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 1, ptr %tag) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 4, ptr %op) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %machlen) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %actions) #5, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %machine) #5, !dbg !866
  %241 = load i32, ptr %retval, align 4, !dbg !866
  ret i32 %241, !dbg !866
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @asn1_find_indefinite_length(ptr noundef %data, i64 noundef %datalen, ptr noundef %_dp, ptr noundef %_len, ptr noundef %_errmsg) #0 align 16 !dbg !867 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %datalen.addr = alloca i64, align 8
  %_dp.addr = alloca ptr, align 8
  %_len.addr = alloca ptr, align 8
  %_errmsg.addr = alloca ptr, align 8
  %tag = alloca i8, align 1
  %tmp = alloca i8, align 1
  %dp = alloca i64, align 8
  %len = alloca i64, align 8
  %n = alloca i64, align 8
  %indef_level = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !873, metadata !DIExpression()), !dbg !892
  store i64 %datalen, ptr %datalen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datalen.addr, metadata !874, metadata !DIExpression()), !dbg !893
  store ptr %_dp, ptr %_dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_dp.addr, metadata !875, metadata !DIExpression()), !dbg !894
  store ptr %_len, ptr %_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_len.addr, metadata !876, metadata !DIExpression()), !dbg !895
  store ptr %_errmsg, ptr %_errmsg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_errmsg.addr, metadata !877, metadata !DIExpression()), !dbg !896
  call void @llvm.lifetime.start.p0(i64 1, ptr %tag) #5, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %tag, metadata !878, metadata !DIExpression()), !dbg !898
  call void @llvm.lifetime.start.p0(i64 1, ptr %tmp) #5, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !879, metadata !DIExpression()), !dbg !899
  call void @llvm.lifetime.start.p0(i64 8, ptr %dp) #5, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %dp, metadata !880, metadata !DIExpression()), !dbg !901
  %0 = load ptr, ptr %_dp.addr, align 8, !dbg !902
  %1 = load i64, ptr %0, align 8, !dbg !903
  store i64 %1, ptr %dp, align 8, !dbg !901
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #5, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %len, metadata !881, metadata !DIExpression()), !dbg !904
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #5, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %n, metadata !882, metadata !DIExpression()), !dbg !905
  call void @llvm.lifetime.start.p0(i64 4, ptr %indef_level) #5, !dbg !906
  call void @llvm.dbg.declare(metadata ptr %indef_level, metadata !883, metadata !DIExpression()), !dbg !907
  store i32 1, ptr %indef_level, align 4, !dbg !907
  br label %next_tag, !dbg !906

next_tag:                                         ; preds = %if.end118, %if.end81, %if.end21, %entry
  call void @llvm.dbg.label(metadata !884), !dbg !908
  %2 = load i64, ptr %datalen.addr, align 8, !dbg !909
  %3 = load i64, ptr %dp, align 8, !dbg !909
  %sub = sub i64 %2, %3, !dbg !909
  %cmp = icmp ult i64 %sub, 2, !dbg !909
  %lnot = xor i1 %cmp, true, !dbg !909
  %lnot1 = xor i1 %lnot, true, !dbg !909
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !909
  %conv = sext i32 %lnot.ext to i64, !dbg !909
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !909
  %tobool = icmp ne i64 %expval, 0, !dbg !909
  br i1 %tobool, label %if.then, label %if.end5, !dbg !911

if.then:                                          ; preds = %next_tag
  %4 = load i64, ptr %datalen.addr, align 8, !dbg !912
  %5 = load i64, ptr %dp, align 8, !dbg !915
  %cmp2 = icmp eq i64 %4, %5, !dbg !916
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !917

if.then4:                                         ; preds = %if.then
  br label %missing_eoc, !dbg !918

if.end:                                           ; preds = %if.then
  br label %data_overrun_error, !dbg !919

if.end5:                                          ; preds = %next_tag
  %6 = load ptr, ptr %data.addr, align 8, !dbg !920
  %7 = load i64, ptr %dp, align 8, !dbg !921
  %inc = add i64 %7, 1, !dbg !921
  store i64 %inc, ptr %dp, align 8, !dbg !921
  %arrayidx = getelementptr i8, ptr %6, i64 %7, !dbg !920
  %8 = load i8, ptr %arrayidx, align 1, !dbg !920
  store i8 %8, ptr %tag, align 1, !dbg !922
  %9 = load i8, ptr %tag, align 1, !dbg !923
  %conv6 = zext i8 %9 to i32, !dbg !923
  %cmp7 = icmp eq i32 %conv6, 0, !dbg !925
  br i1 %cmp7, label %if.then9, label %if.end22, !dbg !926

if.then9:                                         ; preds = %if.end5
  %10 = load ptr, ptr %data.addr, align 8, !dbg !927
  %11 = load i64, ptr %dp, align 8, !dbg !930
  %inc10 = add i64 %11, 1, !dbg !930
  store i64 %inc10, ptr %dp, align 8, !dbg !930
  %arrayidx11 = getelementptr i8, ptr %10, i64 %11, !dbg !927
  %12 = load i8, ptr %arrayidx11, align 1, !dbg !927
  %conv12 = zext i8 %12 to i32, !dbg !927
  %cmp13 = icmp ne i32 %conv12, 0, !dbg !931
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !932

if.then15:                                        ; preds = %if.then9
  br label %invalid_eoc, !dbg !933

if.end16:                                         ; preds = %if.then9
  %13 = load i32, ptr %indef_level, align 4, !dbg !934
  %dec = add i32 %13, -1, !dbg !934
  store i32 %dec, ptr %indef_level, align 4, !dbg !934
  %cmp17 = icmp sle i32 %dec, 0, !dbg !936
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !937

if.then19:                                        ; preds = %if.end16
  %14 = load i64, ptr %dp, align 8, !dbg !938
  %15 = load ptr, ptr %_dp.addr, align 8, !dbg !940
  %16 = load i64, ptr %15, align 8, !dbg !941
  %sub20 = sub i64 %14, %16, !dbg !942
  %17 = load ptr, ptr %_len.addr, align 8, !dbg !943
  store i64 %sub20, ptr %17, align 8, !dbg !944
  %18 = load i64, ptr %dp, align 8, !dbg !945
  %19 = load ptr, ptr %_dp.addr, align 8, !dbg !946
  store i64 %18, ptr %19, align 8, !dbg !947
  store i32 0, ptr %retval, align 4, !dbg !948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !948

if.end21:                                         ; preds = %if.end16
  br label %next_tag, !dbg !949

if.end22:                                         ; preds = %if.end5
  %20 = load i8, ptr %tag, align 1, !dbg !950
  %conv23 = zext i8 %20 to i32, !dbg !950
  %and = and i32 %conv23, 31, !dbg !950
  %cmp24 = icmp eq i32 %and, 31, !dbg !950
  %lnot26 = xor i1 %cmp24, true, !dbg !950
  %lnot28 = xor i1 %lnot26, true, !dbg !950
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !950
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !950
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !950
  %tobool32 = icmp ne i64 %expval31, 0, !dbg !950
  br i1 %tobool32, label %if.then33, label %if.end51, !dbg !952

if.then33:                                        ; preds = %if.end22
  br label %do.body, !dbg !953

do.body:                                          ; preds = %do.cond, %if.then33
  %21 = load i64, ptr %datalen.addr, align 8, !dbg !955
  %22 = load i64, ptr %dp, align 8, !dbg !955
  %sub34 = sub i64 %21, %22, !dbg !955
  %cmp35 = icmp ult i64 %sub34, 2, !dbg !955
  %lnot37 = xor i1 %cmp35, true, !dbg !955
  %lnot39 = xor i1 %lnot37, true, !dbg !955
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !955
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !955
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !955
  %tobool43 = icmp ne i64 %expval42, 0, !dbg !955
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !958

if.then44:                                        ; preds = %do.body
  br label %data_overrun_error, !dbg !959

if.end45:                                         ; preds = %do.body
  %23 = load ptr, ptr %data.addr, align 8, !dbg !960
  %24 = load i64, ptr %dp, align 8, !dbg !961
  %inc46 = add i64 %24, 1, !dbg !961
  store i64 %inc46, ptr %dp, align 8, !dbg !961
  %arrayidx47 = getelementptr i8, ptr %23, i64 %24, !dbg !960
  %25 = load i8, ptr %arrayidx47, align 1, !dbg !960
  store i8 %25, ptr %tmp, align 1, !dbg !962
  br label %do.cond, !dbg !963

do.cond:                                          ; preds = %if.end45
  %26 = load i8, ptr %tmp, align 1, !dbg !964
  %conv48 = zext i8 %26 to i32, !dbg !964
  %and49 = and i32 %conv48, 128, !dbg !965
  %tobool50 = icmp ne i32 %and49, 0, !dbg !963
  br i1 %tobool50, label %do.body, label %do.end, !dbg !963, !llvm.loop !966

do.end:                                           ; preds = %do.cond
  br label %if.end51, !dbg !968

if.end51:                                         ; preds = %do.end, %if.end22
  %27 = load ptr, ptr %data.addr, align 8, !dbg !969
  %28 = load i64, ptr %dp, align 8, !dbg !970
  %inc52 = add i64 %28, 1, !dbg !970
  store i64 %inc52, ptr %dp, align 8, !dbg !970
  %arrayidx53 = getelementptr i8, ptr %27, i64 %28, !dbg !969
  %29 = load i8, ptr %arrayidx53, align 1, !dbg !969
  %conv54 = zext i8 %29 to i64, !dbg !969
  store i64 %conv54, ptr %len, align 8, !dbg !971
  %30 = load i64, ptr %len, align 8, !dbg !972
  %cmp55 = icmp ule i64 %30, 127, !dbg !974
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !975

if.then57:                                        ; preds = %if.end51
  br label %check_length, !dbg !976

if.end58:                                         ; preds = %if.end51
  %31 = load i64, ptr %len, align 8, !dbg !977
  %cmp59 = icmp eq i64 %31, 128, !dbg !977
  %lnot61 = xor i1 %cmp59, true, !dbg !977
  %lnot63 = xor i1 %lnot61, true, !dbg !977
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !977
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !977
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !977
  %tobool67 = icmp ne i64 %expval66, 0, !dbg !977
  br i1 %tobool67, label %if.then68, label %if.end83, !dbg !979

if.then68:                                        ; preds = %if.end58
  %32 = load i8, ptr %tag, align 1, !dbg !980
  %conv69 = zext i8 %32 to i32, !dbg !980
  %and70 = and i32 %conv69, 32, !dbg !980
  %cmp71 = icmp eq i32 %and70, 0, !dbg !980
  %lnot73 = xor i1 %cmp71, true, !dbg !980
  %lnot75 = xor i1 %lnot73, true, !dbg !980
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !980
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !980
  %expval78 = call i64 @llvm.expect.i64(i64 %conv77, i64 0), !dbg !980
  %tobool79 = icmp ne i64 %expval78, 0, !dbg !980
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !983

if.then80:                                        ; preds = %if.then68
  br label %indefinite_len_primitive, !dbg !984

if.end81:                                         ; preds = %if.then68
  %33 = load i32, ptr %indef_level, align 4, !dbg !985
  %inc82 = add i32 %33, 1, !dbg !985
  store i32 %inc82, ptr %indef_level, align 4, !dbg !985
  br label %next_tag, !dbg !986

if.end83:                                         ; preds = %if.end58
  %34 = load i64, ptr %len, align 8, !dbg !987
  %sub84 = sub i64 %34, 128, !dbg !988
  store i64 %sub84, ptr %n, align 8, !dbg !989
  %35 = load i64, ptr %n, align 8, !dbg !990
  %cmp85 = icmp ugt i64 %35, 7, !dbg !990
  %lnot87 = xor i1 %cmp85, true, !dbg !990
  %lnot89 = xor i1 %lnot87, true, !dbg !990
  %lnot.ext90 = zext i1 %lnot89 to i32, !dbg !990
  %conv91 = sext i32 %lnot.ext90 to i64, !dbg !990
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 0), !dbg !990
  %tobool93 = icmp ne i64 %expval92, 0, !dbg !990
  br i1 %tobool93, label %if.then94, label %if.end95, !dbg !992

if.then94:                                        ; preds = %if.end83
  br label %length_too_long, !dbg !993

if.end95:                                         ; preds = %if.end83
  %36 = load i64, ptr %n, align 8, !dbg !994
  %37 = load i64, ptr %datalen.addr, align 8, !dbg !994
  %38 = load i64, ptr %dp, align 8, !dbg !994
  %sub96 = sub i64 %37, %38, !dbg !994
  %cmp97 = icmp ugt i64 %36, %sub96, !dbg !994
  %lnot99 = xor i1 %cmp97, true, !dbg !994
  %lnot101 = xor i1 %lnot99, true, !dbg !994
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !994
  %conv103 = sext i32 %lnot.ext102 to i64, !dbg !994
  %expval104 = call i64 @llvm.expect.i64(i64 %conv103, i64 0), !dbg !994
  %tobool105 = icmp ne i64 %expval104, 0, !dbg !994
  br i1 %tobool105, label %if.then106, label %if.end107, !dbg !996

if.then106:                                       ; preds = %if.end95
  br label %data_overrun_error, !dbg !997

if.end107:                                        ; preds = %if.end95
  store i64 0, ptr %len, align 8, !dbg !998
  br label %for.cond, !dbg !999

for.cond:                                         ; preds = %for.inc, %if.end107
  %39 = load i64, ptr %n, align 8, !dbg !1000
  %cmp108 = icmp ugt i64 %39, 0, !dbg !1003
  br i1 %cmp108, label %for.body, label %for.end, !dbg !1004

for.body:                                         ; preds = %for.cond
  %40 = load i64, ptr %len, align 8, !dbg !1005
  %shl = shl i64 %40, 8, !dbg !1005
  store i64 %shl, ptr %len, align 8, !dbg !1005
  %41 = load ptr, ptr %data.addr, align 8, !dbg !1007
  %42 = load i64, ptr %dp, align 8, !dbg !1008
  %inc110 = add i64 %42, 1, !dbg !1008
  store i64 %inc110, ptr %dp, align 8, !dbg !1008
  %arrayidx111 = getelementptr i8, ptr %41, i64 %42, !dbg !1007
  %43 = load i8, ptr %arrayidx111, align 1, !dbg !1007
  %conv112 = zext i8 %43 to i64, !dbg !1007
  %44 = load i64, ptr %len, align 8, !dbg !1009
  %or = or i64 %44, %conv112, !dbg !1009
  store i64 %or, ptr %len, align 8, !dbg !1009
  br label %for.inc, !dbg !1010

for.inc:                                          ; preds = %for.body
  %45 = load i64, ptr %n, align 8, !dbg !1011
  %dec113 = add i64 %45, -1, !dbg !1011
  store i64 %dec113, ptr %n, align 8, !dbg !1011
  br label %for.cond, !dbg !1012, !llvm.loop !1013

for.end:                                          ; preds = %for.cond
  br label %check_length, !dbg !1014

check_length:                                     ; preds = %for.end, %if.then57
  call void @llvm.dbg.label(metadata !885), !dbg !1015
  %46 = load i64, ptr %len, align 8, !dbg !1016
  %47 = load i64, ptr %datalen.addr, align 8, !dbg !1018
  %48 = load i64, ptr %dp, align 8, !dbg !1019
  %sub114 = sub i64 %47, %48, !dbg !1020
  %cmp115 = icmp ugt i64 %46, %sub114, !dbg !1021
  br i1 %cmp115, label %if.then117, label %if.end118, !dbg !1022

if.then117:                                       ; preds = %check_length
  br label %data_overrun_error, !dbg !1023

if.end118:                                        ; preds = %check_length
  %49 = load i64, ptr %len, align 8, !dbg !1024
  %50 = load i64, ptr %dp, align 8, !dbg !1025
  %add = add i64 %50, %49, !dbg !1025
  store i64 %add, ptr %dp, align 8, !dbg !1025
  br label %next_tag, !dbg !1026

length_too_long:                                  ; preds = %if.then94
  call void @llvm.dbg.label(metadata !886), !dbg !1027
  %51 = load ptr, ptr %_errmsg.addr, align 8, !dbg !1028
  store ptr @.str.11, ptr %51, align 8, !dbg !1029
  br label %error, !dbg !1030

indefinite_len_primitive:                         ; preds = %if.then80
  call void @llvm.dbg.label(metadata !887), !dbg !1031
  %52 = load ptr, ptr %_errmsg.addr, align 8, !dbg !1032
  store ptr @.str.12, ptr %52, align 8, !dbg !1033
  br label %error, !dbg !1034

invalid_eoc:                                      ; preds = %if.then15
  call void @llvm.dbg.label(metadata !888), !dbg !1035
  %53 = load ptr, ptr %_errmsg.addr, align 8, !dbg !1036
  store ptr @.str.10, ptr %53, align 8, !dbg !1037
  br label %error, !dbg !1038

data_overrun_error:                               ; preds = %if.then117, %if.then106, %if.then44, %if.end
  call void @llvm.dbg.label(metadata !889), !dbg !1039
  %54 = load ptr, ptr %_errmsg.addr, align 8, !dbg !1040
  store ptr @.str.2, ptr %54, align 8, !dbg !1041
  br label %error, !dbg !1042

missing_eoc:                                      ; preds = %if.then4
  call void @llvm.dbg.label(metadata !890), !dbg !1043
  %55 = load ptr, ptr %_errmsg.addr, align 8, !dbg !1044
  store ptr @.str.9, ptr %55, align 8, !dbg !1045
  br label %error, !dbg !1046

error:                                            ; preds = %missing_eoc, %data_overrun_error, %invalid_eoc, %indefinite_len_primitive, %length_too_long
  call void @llvm.dbg.label(metadata !891), !dbg !1047
  %56 = load i64, ptr %dp, align 8, !dbg !1048
  %57 = load ptr, ptr %_dp.addr, align 8, !dbg !1049
  store i64 %56, ptr %57, align 8, !dbg !1050
  store i32 -1, ptr %retval, align 4, !dbg !1051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1051

cleanup:                                          ; preds = %error, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %indef_level) #5, !dbg !1052
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #5, !dbg !1052
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #5, !dbg !1052
  call void @llvm.lifetime.end.p0(i64 8, ptr %dp) #5, !dbg !1052
  call void @llvm.lifetime.end.p0(i64 1, ptr %tmp) #5, !dbg !1052
  call void @llvm.lifetime.end.p0(i64 1, ptr %tag) #5, !dbg !1052
  %58 = load i32, ptr %retval, align 4, !dbg !1052
  ret i32 %58, !dbg !1052
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1053 dso_local i32 @_printk(ptr noundef, ...) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "asn1_op_lengths", scope: !2, file: !3, line: 15, type: !155, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.asn1_decoder.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/asn1_decoder\22 -D KBUILD_BASENAME=\22asn1_decoder\22 -D KBUILD_MODNAME=\22asn1_decoder\22 -D __KBUILD_MODNAME=kmod_asn1_decoder -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/asn1_decoder.ll lib/asn1_decoder.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !77, globals: !79, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/asn1_decoder.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e6a120476384b2fb15217337a092d82f")
!4 = !{!5, !40, !73}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "asn1_opcode", file: !6, line: 27, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/asn1_ber_bytecode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f447a7239cd5a777e836536718766e6f")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!9 = !DIEnumerator(name: "ASN1_OP_MATCH", value: 0)
!10 = !DIEnumerator(name: "ASN1_OP_MATCH_OR_SKIP", value: 1)
!11 = !DIEnumerator(name: "ASN1_OP_MATCH_ACT", value: 2)
!12 = !DIEnumerator(name: "ASN1_OP_MATCH_ACT_OR_SKIP", value: 3)
!13 = !DIEnumerator(name: "ASN1_OP_MATCH_JUMP", value: 4)
!14 = !DIEnumerator(name: "ASN1_OP_MATCH_JUMP_OR_SKIP", value: 5)
!15 = !DIEnumerator(name: "ASN1_OP_MATCH_ANY", value: 8)
!16 = !DIEnumerator(name: "ASN1_OP_MATCH_ANY_OR_SKIP", value: 9)
!17 = !DIEnumerator(name: "ASN1_OP_MATCH_ANY_ACT", value: 10)
!18 = !DIEnumerator(name: "ASN1_OP_MATCH_ANY_ACT_OR_SKIP", value: 11)
!19 = !DIEnumerator(name: "ASN1_OP_COND_MATCH_OR_SKIP", value: 17)
!20 = !DIEnumerator(name: "ASN1_OP_COND_MATCH_ACT_OR_SKIP", value: 19)
!21 = !DIEnumerator(name: "ASN1_OP_COND_MATCH_JUMP_OR_SKIP", value: 21)
!22 = !DIEnumerator(name: "ASN1_OP_COND_MATCH_ANY", value: 24)
!23 = !DIEnumerator(name: "ASN1_OP_COND_MATCH_ANY_OR_SKIP", value: 25)
!24 = !DIEnumerator(name: "ASN1_OP_COND_MATCH_ANY_ACT", value: 26)
!25 = !DIEnumerator(name: "ASN1_OP_COND_MATCH_ANY_ACT_OR_SKIP", value: 27)
!26 = !DIEnumerator(name: "ASN1_OP_COND_FAIL", value: 28)
!27 = !DIEnumerator(name: "ASN1_OP_COMPLETE", value: 29)
!28 = !DIEnumerator(name: "ASN1_OP_ACT", value: 30)
!29 = !DIEnumerator(name: "ASN1_OP_MAYBE_ACT", value: 31)
!30 = !DIEnumerator(name: "ASN1_OP_END_SEQ", value: 32)
!31 = !DIEnumerator(name: "ASN1_OP_END_SET", value: 33)
!32 = !DIEnumerator(name: "ASN1_OP_END_SEQ_OF", value: 34)
!33 = !DIEnumerator(name: "ASN1_OP_END_SET_OF", value: 35)
!34 = !DIEnumerator(name: "ASN1_OP_END_SEQ_ACT", value: 36)
!35 = !DIEnumerator(name: "ASN1_OP_END_SET_ACT", value: 37)
!36 = !DIEnumerator(name: "ASN1_OP_END_SEQ_OF_ACT", value: 38)
!37 = !DIEnumerator(name: "ASN1_OP_END_SET_OF_ACT", value: 39)
!38 = !DIEnumerator(name: "ASN1_OP_RETURN", value: 40)
!39 = !DIEnumerator(name: "ASN1_OP__NR", value: 41)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "asn1_tag", file: !41, line: 28, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/asn1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bfb79e98a58ecc0214aefb4ff1311213")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!43 = !DIEnumerator(name: "ASN1_EOC", value: 0)
!44 = !DIEnumerator(name: "ASN1_BOOL", value: 1)
!45 = !DIEnumerator(name: "ASN1_INT", value: 2)
!46 = !DIEnumerator(name: "ASN1_BTS", value: 3)
!47 = !DIEnumerator(name: "ASN1_OTS", value: 4)
!48 = !DIEnumerator(name: "ASN1_NULL", value: 5)
!49 = !DIEnumerator(name: "ASN1_OID", value: 6)
!50 = !DIEnumerator(name: "ASN1_ODE", value: 7)
!51 = !DIEnumerator(name: "ASN1_EXT", value: 8)
!52 = !DIEnumerator(name: "ASN1_REAL", value: 9)
!53 = !DIEnumerator(name: "ASN1_ENUM", value: 10)
!54 = !DIEnumerator(name: "ASN1_EPDV", value: 11)
!55 = !DIEnumerator(name: "ASN1_UTF8STR", value: 12)
!56 = !DIEnumerator(name: "ASN1_RELOID", value: 13)
!57 = !DIEnumerator(name: "ASN1_SEQ", value: 16)
!58 = !DIEnumerator(name: "ASN1_SET", value: 17)
!59 = !DIEnumerator(name: "ASN1_NUMSTR", value: 18)
!60 = !DIEnumerator(name: "ASN1_PRNSTR", value: 19)
!61 = !DIEnumerator(name: "ASN1_TEXSTR", value: 20)
!62 = !DIEnumerator(name: "ASN1_VIDSTR", value: 21)
!63 = !DIEnumerator(name: "ASN1_IA5STR", value: 22)
!64 = !DIEnumerator(name: "ASN1_UNITIM", value: 23)
!65 = !DIEnumerator(name: "ASN1_GENTIM", value: 24)
!66 = !DIEnumerator(name: "ASN1_GRASTR", value: 25)
!67 = !DIEnumerator(name: "ASN1_VISSTR", value: 26)
!68 = !DIEnumerator(name: "ASN1_GENSTR", value: 27)
!69 = !DIEnumerator(name: "ASN1_UNISTR", value: 28)
!70 = !DIEnumerator(name: "ASN1_CHRSTR", value: 29)
!71 = !DIEnumerator(name: "ASN1_BMPSTR", value: 30)
!72 = !DIEnumerator(name: "ASN1_LONG_TAG", value: 31)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "asn1_method", file: !41, line: 21, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76}
!75 = !DIEnumerator(name: "ASN1_PRIM", value: 0)
!76 = !DIEnumerator(name: "ASN1_CONS", value: 1)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !{!80, !86, !91, !96, !101, !106, !111, !113, !115, !120, !125, !127, !129, !134, !139, !144, !146, !150, !0}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !3, line: 374, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 512, elements: !84)
!83 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !{!85}
!85 = !DISubrange(count: 64)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !3, line: 472, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 464, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 58)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !3, line: 477, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 152, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 19)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !3, line: 480, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 176, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 22)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !3, line: 483, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 168, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 21)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !3, line: 486, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 160, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 20)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !3, line: 489, type: !103, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 492, type: !108, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !3, line: 495, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 144, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 18)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 498, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 280, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 35)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 501, type: !93, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !3, line: 504, type: !93, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !3, line: 507, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 312, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 39)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !3, line: 510, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 120, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 15)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !3, line: 513, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 184, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 23)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_asn1_ber_decoder195", scope: !2, file: !3, line: 519, type: !78, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file196", scope: !2, file: !3, line: 521, type: !148, isLocal: true, isDefinition: true, align: 8)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 280, elements: !123)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license197", scope: !2, file: !3, line: 521, type: !152, isLocal: true, isDefinition: true, align: 8)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 200, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 25)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 328, elements: !158)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!158 = !{!159}
!159 = !DISubrange(count: 41)
!160 = !{i32 7, !"Dwarf Version", i32 5}
!161 = !{i32 2, !"Debug Info Version", i32 3}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 8, !"cf-protection-branch", i32 1}
!164 = !{i32 4, !"function_return_thunk_extern", i32 1}
!165 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!166 = !{i32 1, !"Code Model", i32 2}
!167 = !{i32 1, !"override-stack-alignment", i32 8}
!168 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!169 = distinct !DISubprogram(name: "asn1_ber_decoder", scope: !3, file: !3, line: 167, type: !170, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !195)
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !173, !78, !178, !180}
!172 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_decoder", file: !6, line: 21, size: 192, elements: !176)
!176 = !{!177, !179, !186}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !175, file: !6, line: 22, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "machlen", scope: !175, file: !6, line: 23, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 61, baseType: !182)
!181 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !183, line: 72, baseType: !184)
!183 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !183, line: 16, baseType: !185)
!185 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "actions", scope: !175, file: !6, line: 24, baseType: !187, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "asn1_action_t", file: !6, line: 16, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!172, !78, !180, !157, !193, !180}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !211, !212, !213, !214, !215, !216, !217, !222, !223, !225, !226, !227, !230, !235, !241, !244, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!196 = !DILocalVariable(name: "decoder", arg: 1, scope: !169, file: !3, line: 167, type: !173)
!197 = !DILocalVariable(name: "context", arg: 2, scope: !169, file: !3, line: 168, type: !78)
!198 = !DILocalVariable(name: "data", arg: 3, scope: !169, file: !3, line: 169, type: !178)
!199 = !DILocalVariable(name: "datalen", arg: 4, scope: !169, file: !3, line: 170, type: !180)
!200 = !DILocalVariable(name: "machine", scope: !169, file: !3, line: 172, type: !178)
!201 = !DILocalVariable(name: "actions", scope: !169, file: !3, line: 173, type: !187)
!202 = !DILocalVariable(name: "machlen", scope: !169, file: !3, line: 174, type: !180)
!203 = !DILocalVariable(name: "op", scope: !169, file: !3, line: 175, type: !5)
!204 = !DILocalVariable(name: "tag", scope: !169, file: !3, line: 176, type: !157)
!205 = !DILocalVariable(name: "csp", scope: !169, file: !3, line: 176, type: !157)
!206 = !DILocalVariable(name: "jsp", scope: !169, file: !3, line: 176, type: !157)
!207 = !DILocalVariable(name: "optag", scope: !169, file: !3, line: 176, type: !157)
!208 = !DILocalVariable(name: "hdr", scope: !169, file: !3, line: 176, type: !157)
!209 = !DILocalVariable(name: "errmsg", scope: !169, file: !3, line: 177, type: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!211 = !DILocalVariable(name: "pc", scope: !169, file: !3, line: 178, type: !180)
!212 = !DILocalVariable(name: "dp", scope: !169, file: !3, line: 178, type: !180)
!213 = !DILocalVariable(name: "tdp", scope: !169, file: !3, line: 178, type: !180)
!214 = !DILocalVariable(name: "len", scope: !169, file: !3, line: 178, type: !180)
!215 = !DILocalVariable(name: "ret", scope: !169, file: !3, line: 179, type: !172)
!216 = !DILocalVariable(name: "flags", scope: !169, file: !3, line: 181, type: !157)
!217 = !DILocalVariable(name: "cons_dp_stack", scope: !169, file: !3, line: 191, type: !218)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 160, elements: !220)
!219 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!220 = !{!221}
!221 = !DISubrange(count: 10)
!222 = !DILocalVariable(name: "cons_datalen_stack", scope: !169, file: !3, line: 192, type: !218)
!223 = !DILocalVariable(name: "cons_hdrlen_stack", scope: !169, file: !3, line: 193, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 80, elements: !220)
!225 = !DILocalVariable(name: "jump_stack", scope: !169, file: !3, line: 195, type: !224)
!226 = !DILabel(scope: !169, name: "next_op", file: !3, line: 200)
!227 = !DILocalVariable(name: "tmp", scope: !228, file: !3, line: 213, type: !157)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 212, column: 34)
!229 = distinct !DILexicalBlock(scope: !169, file: !3, line: 212, column: 6)
!230 = !DILocalVariable(name: "n", scope: !231, file: !3, line: 270, type: !172)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 269, column: 11)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 262, column: 8)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 261, column: 19)
!234 = distinct !DILexicalBlock(scope: !228, file: !3, line: 261, column: 7)
!235 = !DILocalVariable(name: "tmp", scope: !236, file: !3, line: 329, type: !180)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 328, column: 40)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 328, column: 8)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 327, column: 29)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 327, column: 7)
!240 = distinct !DILexicalBlock(scope: !169, file: !3, line: 311, column: 14)
!241 = !DILocalVariable(name: "act", scope: !242, file: !3, line: 340, type: !157)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 339, column: 32)
!243 = distinct !DILexicalBlock(scope: !240, file: !3, line: 339, column: 7)
!244 = !DILocalVariable(name: "act", scope: !245, file: !3, line: 434, type: !157)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 433, column: 30)
!246 = distinct !DILexicalBlock(scope: !240, file: !3, line: 433, column: 7)
!247 = !DILabel(scope: !169, name: "data_overrun_error", file: !3, line: 476)
!248 = !DILabel(scope: !169, name: "machine_overrun_error", file: !3, line: 479)
!249 = !DILabel(scope: !169, name: "jump_stack_underflow", file: !3, line: 482)
!250 = !DILabel(scope: !169, name: "jump_stack_overflow", file: !3, line: 485)
!251 = !DILabel(scope: !169, name: "cons_stack_underflow", file: !3, line: 488)
!252 = !DILabel(scope: !169, name: "cons_stack_overflow", file: !3, line: 491)
!253 = !DILabel(scope: !169, name: "cons_length_error", file: !3, line: 494)
!254 = !DILabel(scope: !169, name: "missing_eoc", file: !3, line: 497)
!255 = !DILabel(scope: !169, name: "invalid_eoc", file: !3, line: 500)
!256 = !DILabel(scope: !169, name: "length_too_long", file: !3, line: 503)
!257 = !DILabel(scope: !169, name: "indefinite_len_primitive", file: !3, line: 506)
!258 = !DILabel(scope: !169, name: "tag_mismatch", file: !3, line: 509)
!259 = !DILabel(scope: !169, name: "long_tag_not_supported", file: !3, line: 512)
!260 = !DILabel(scope: !169, name: "error", file: !3, line: 514)
!261 = !DILocation(line: 167, column: 49, scope: !169)
!262 = !DILocation(line: 168, column: 14, scope: !169)
!263 = !DILocation(line: 169, column: 29, scope: !169)
!264 = !DILocation(line: 170, column: 15, scope: !169)
!265 = !DILocation(line: 172, column: 2, scope: !169)
!266 = !DILocation(line: 172, column: 23, scope: !169)
!267 = !DILocation(line: 172, column: 33, scope: !169)
!268 = !DILocation(line: 172, column: 42, scope: !169)
!269 = !DILocation(line: 173, column: 2, scope: !169)
!270 = !DILocation(line: 173, column: 23, scope: !169)
!271 = !DILocation(line: 173, column: 33, scope: !169)
!272 = !DILocation(line: 173, column: 42, scope: !169)
!273 = !DILocation(line: 174, column: 2, scope: !169)
!274 = !DILocation(line: 174, column: 9, scope: !169)
!275 = !DILocation(line: 174, column: 19, scope: !169)
!276 = !DILocation(line: 174, column: 28, scope: !169)
!277 = !DILocation(line: 175, column: 2, scope: !169)
!278 = !DILocation(line: 175, column: 19, scope: !169)
!279 = !DILocation(line: 176, column: 2, scope: !169)
!280 = !DILocation(line: 176, column: 16, scope: !169)
!281 = !DILocation(line: 176, column: 25, scope: !169)
!282 = !DILocation(line: 176, column: 34, scope: !169)
!283 = !DILocation(line: 176, column: 43, scope: !169)
!284 = !DILocation(line: 176, column: 54, scope: !169)
!285 = !DILocation(line: 177, column: 2, scope: !169)
!286 = !DILocation(line: 177, column: 14, scope: !169)
!287 = !DILocation(line: 178, column: 2, scope: !169)
!288 = !DILocation(line: 178, column: 9, scope: !169)
!289 = !DILocation(line: 178, column: 17, scope: !169)
!290 = !DILocation(line: 178, column: 25, scope: !169)
!291 = !DILocation(line: 178, column: 34, scope: !169)
!292 = !DILocation(line: 179, column: 2, scope: !169)
!293 = !DILocation(line: 179, column: 6, scope: !169)
!294 = !DILocation(line: 181, column: 2, scope: !169)
!295 = !DILocation(line: 181, column: 16, scope: !169)
!296 = !DILocation(line: 191, column: 2, scope: !169)
!297 = !DILocation(line: 191, column: 17, scope: !169)
!298 = !DILocation(line: 192, column: 2, scope: !169)
!299 = !DILocation(line: 192, column: 17, scope: !169)
!300 = !DILocation(line: 193, column: 2, scope: !169)
!301 = !DILocation(line: 193, column: 16, scope: !169)
!302 = !DILocation(line: 195, column: 2, scope: !169)
!303 = !DILocation(line: 195, column: 16, scope: !169)
!304 = !DILocation(line: 197, column: 6, scope: !305)
!305 = distinct !DILexicalBlock(scope: !169, file: !3, line: 197, column: 6)
!306 = !DILocation(line: 197, column: 14, scope: !305)
!307 = !DILocation(line: 197, column: 6, scope: !169)
!308 = !DILocation(line: 198, column: 3, scope: !305)
!309 = !DILocation(line: 197, column: 16, scope: !305)
!310 = !DILocation(line: 200, column: 1, scope: !169)
!311 = !DILocation(line: 201, column: 2, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !3, line: 201, column: 2)
!313 = distinct !DILexicalBlock(scope: !169, file: !3, line: 201, column: 2)
!314 = !DILocation(line: 201, column: 2, scope: !313)
!315 = !DILocation(line: 203, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !169, file: !3, line: 203, column: 6)
!317 = !DILocation(line: 203, column: 6, scope: !169)
!318 = !DILocation(line: 204, column: 3, scope: !316)
!319 = !DILocation(line: 205, column: 7, scope: !169)
!320 = !DILocation(line: 205, column: 15, scope: !169)
!321 = !DILocation(line: 205, column: 5, scope: !169)
!322 = !DILocation(line: 206, column: 6, scope: !323)
!323 = distinct !DILexicalBlock(scope: !169, file: !3, line: 206, column: 6)
!324 = !DILocation(line: 206, column: 6, scope: !169)
!325 = !DILocation(line: 207, column: 3, scope: !323)
!326 = !DILocation(line: 212, column: 6, scope: !229)
!327 = !DILocation(line: 212, column: 9, scope: !229)
!328 = !DILocation(line: 212, column: 6, scope: !169)
!329 = !DILocation(line: 213, column: 3, scope: !228)
!330 = !DILocation(line: 213, column: 17, scope: !228)
!331 = !DILocation(line: 216, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !228, file: !3, line: 216, column: 7)
!333 = !DILocation(line: 216, column: 11, scope: !332)
!334 = !DILocation(line: 216, column: 33, scope: !332)
!335 = !DILocation(line: 216, column: 36, scope: !332)
!336 = !DILocation(line: 216, column: 42, scope: !332)
!337 = !DILocation(line: 216, column: 58, scope: !332)
!338 = !DILocation(line: 217, column: 8, scope: !332)
!339 = !DILocation(line: 217, column: 11, scope: !332)
!340 = !DILocation(line: 217, column: 33, scope: !332)
!341 = !DILocation(line: 217, column: 36, scope: !332)
!342 = !DILocation(line: 217, column: 42, scope: !332)
!343 = !DILocation(line: 217, column: 39, scope: !332)
!344 = !DILocation(line: 216, column: 7, scope: !228)
!345 = !DILocation(line: 218, column: 10, scope: !346)
!346 = distinct !DILexicalBlock(scope: !332, file: !3, line: 217, column: 52)
!347 = !DILocation(line: 219, column: 26, scope: !346)
!348 = !DILocation(line: 219, column: 10, scope: !346)
!349 = !DILocation(line: 219, column: 7, scope: !346)
!350 = !DILocation(line: 220, column: 4, scope: !346)
!351 = !DILocation(line: 223, column: 9, scope: !228)
!352 = !DILocation(line: 224, column: 7, scope: !228)
!353 = !DILocation(line: 227, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !228, file: !3, line: 227, column: 7)
!355 = !DILocation(line: 227, column: 7, scope: !228)
!356 = !DILocation(line: 228, column: 4, scope: !354)
!357 = !DILocation(line: 229, column: 9, scope: !228)
!358 = !DILocation(line: 229, column: 16, scope: !228)
!359 = !DILocation(line: 229, column: 7, scope: !228)
!360 = !DILocation(line: 230, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !228, file: !3, line: 230, column: 7)
!362 = !DILocation(line: 230, column: 7, scope: !228)
!363 = !DILocation(line: 231, column: 4, scope: !361)
!364 = !DILocation(line: 233, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !228, file: !3, line: 233, column: 7)
!366 = !DILocation(line: 233, column: 10, scope: !365)
!367 = !DILocation(line: 233, column: 7, scope: !228)
!368 = !DILocation(line: 234, column: 4, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !3, line: 234, column: 4)
!370 = distinct !DILexicalBlock(scope: !371, file: !3, line: 234, column: 4)
!371 = distinct !DILexicalBlock(scope: !365, file: !3, line: 233, column: 32)
!372 = !DILocation(line: 234, column: 4, scope: !370)
!373 = !DILocation(line: 235, column: 3, scope: !371)
!374 = !DILocation(line: 241, column: 12, scope: !375)
!375 = distinct !DILexicalBlock(scope: !365, file: !3, line: 235, column: 10)
!376 = !DILocation(line: 241, column: 20, scope: !375)
!377 = !DILocation(line: 241, column: 23, scope: !375)
!378 = !DILocation(line: 241, column: 10, scope: !375)
!379 = !DILocation(line: 242, column: 13, scope: !375)
!380 = !DILocation(line: 242, column: 19, scope: !375)
!381 = !DILocation(line: 242, column: 10, scope: !375)
!382 = !DILocation(line: 245, column: 10, scope: !375)
!383 = !DILocation(line: 245, column: 18, scope: !375)
!384 = !DILocation(line: 245, column: 16, scope: !375)
!385 = !DILocation(line: 245, column: 8, scope: !375)
!386 = !DILocation(line: 246, column: 13, scope: !375)
!387 = !DILocation(line: 246, column: 19, scope: !375)
!388 = !DILocation(line: 246, column: 11, scope: !375)
!389 = !DILocation(line: 246, column: 8, scope: !375)
!390 = !DILocation(line: 247, column: 4, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 247, column: 4)
!392 = distinct !DILexicalBlock(scope: !375, file: !3, line: 247, column: 4)
!393 = !DILocation(line: 247, column: 4, scope: !392)
!394 = !DILocation(line: 248, column: 8, scope: !395)
!395 = distinct !DILexicalBlock(scope: !375, file: !3, line: 248, column: 8)
!396 = !DILocation(line: 248, column: 12, scope: !395)
!397 = !DILocation(line: 248, column: 8, scope: !375)
!398 = !DILocation(line: 250, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !3, line: 250, column: 9)
!400 = distinct !DILexicalBlock(scope: !395, file: !3, line: 248, column: 18)
!401 = !DILocation(line: 250, column: 12, scope: !399)
!402 = !DILocation(line: 250, column: 9, scope: !400)
!403 = !DILocation(line: 251, column: 28, scope: !404)
!404 = distinct !DILexicalBlock(scope: !399, file: !3, line: 250, column: 35)
!405 = !DILocation(line: 251, column: 12, scope: !404)
!406 = !DILocation(line: 251, column: 9, scope: !404)
!407 = !DILocation(line: 252, column: 8, scope: !404)
!408 = !DILocation(line: 253, column: 6, scope: !404)
!409 = !DILocation(line: 255, column: 5, scope: !400)
!410 = !DILocation(line: 258, column: 9, scope: !228)
!411 = !DILocation(line: 260, column: 9, scope: !228)
!412 = !DILocation(line: 260, column: 16, scope: !228)
!413 = !DILocation(line: 260, column: 7, scope: !228)
!414 = !DILocation(line: 261, column: 7, scope: !234)
!415 = !DILocation(line: 261, column: 11, scope: !234)
!416 = !DILocation(line: 261, column: 7, scope: !228)
!417 = !DILocation(line: 262, column: 8, scope: !232)
!418 = !DILocation(line: 262, column: 8, scope: !233)
!419 = !DILocation(line: 264, column: 9, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 264, column: 9)
!421 = distinct !DILexicalBlock(scope: !232, file: !3, line: 262, column: 49)
!422 = !DILocation(line: 264, column: 9, scope: !421)
!423 = !DILocation(line: 265, column: 6, scope: !420)
!424 = !DILocation(line: 266, column: 11, scope: !421)
!425 = !DILocation(line: 267, column: 9, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !3, line: 267, column: 9)
!427 = !DILocation(line: 267, column: 9, scope: !421)
!428 = !DILocation(line: 268, column: 6, scope: !426)
!429 = !DILocation(line: 269, column: 4, scope: !421)
!430 = !DILocation(line: 270, column: 5, scope: !231)
!431 = !DILocation(line: 270, column: 9, scope: !231)
!432 = !DILocation(line: 270, column: 13, scope: !231)
!433 = !DILocation(line: 270, column: 17, scope: !231)
!434 = !DILocation(line: 271, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !231, file: !3, line: 271, column: 9)
!436 = !DILocation(line: 271, column: 9, scope: !231)
!437 = !DILocation(line: 272, column: 6, scope: !435)
!438 = !DILocation(line: 273, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !231, file: !3, line: 273, column: 9)
!440 = !DILocation(line: 273, column: 9, scope: !231)
!441 = !DILocation(line: 274, column: 6, scope: !439)
!442 = !DILocation(line: 275, column: 12, scope: !231)
!443 = !DILocation(line: 275, column: 9, scope: !231)
!444 = !DILocation(line: 276, column: 14, scope: !445)
!445 = distinct !DILexicalBlock(scope: !231, file: !3, line: 276, column: 5)
!446 = !DILocation(line: 276, column: 10, scope: !445)
!447 = !DILocation(line: 276, column: 19, scope: !448)
!448 = distinct !DILexicalBlock(scope: !445, file: !3, line: 276, column: 5)
!449 = !DILocation(line: 276, column: 21, scope: !448)
!450 = !DILocation(line: 276, column: 5, scope: !445)
!451 = !DILocation(line: 277, column: 10, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !3, line: 276, column: 31)
!453 = !DILocation(line: 278, column: 13, scope: !452)
!454 = !DILocation(line: 278, column: 20, scope: !452)
!455 = !DILocation(line: 278, column: 10, scope: !452)
!456 = !DILocation(line: 279, column: 5, scope: !452)
!457 = !DILocation(line: 276, column: 27, scope: !448)
!458 = !DILocation(line: 276, column: 5, scope: !448)
!459 = distinct !{!459, !450, !460, !461, !462}
!460 = !DILocation(line: 279, column: 5, scope: !445)
!461 = !{!"llvm.loop.mustprogress"}
!462 = !{!"llvm.loop.unroll.disable"}
!463 = !DILocation(line: 280, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !231, file: !3, line: 280, column: 9)
!465 = !DILocation(line: 280, column: 9, scope: !231)
!466 = !DILocation(line: 281, column: 6, scope: !464)
!467 = !DILocation(line: 282, column: 4, scope: !232)
!468 = !DILocation(line: 283, column: 3, scope: !233)
!469 = !DILocation(line: 284, column: 8, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !3, line: 284, column: 8)
!471 = distinct !DILexicalBlock(scope: !234, file: !3, line: 283, column: 10)
!472 = !DILocation(line: 284, column: 8, scope: !471)
!473 = !DILocation(line: 285, column: 5, scope: !470)
!474 = !DILocation(line: 288, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !228, file: !3, line: 288, column: 7)
!476 = !DILocation(line: 288, column: 13, scope: !475)
!477 = !DILocation(line: 288, column: 7, scope: !228)
!478 = !DILocation(line: 292, column: 8, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !3, line: 292, column: 8)
!480 = distinct !DILexicalBlock(scope: !475, file: !3, line: 288, column: 26)
!481 = !DILocation(line: 292, column: 8, scope: !480)
!482 = !DILocation(line: 293, column: 5, scope: !479)
!483 = !DILocation(line: 294, column: 25, scope: !480)
!484 = !DILocation(line: 294, column: 18, scope: !480)
!485 = !DILocation(line: 294, column: 4, scope: !480)
!486 = !DILocation(line: 294, column: 23, scope: !480)
!487 = !DILocation(line: 295, column: 29, scope: !480)
!488 = !DILocation(line: 295, column: 22, scope: !480)
!489 = !DILocation(line: 295, column: 4, scope: !480)
!490 = !DILocation(line: 295, column: 27, scope: !480)
!491 = !DILocation(line: 296, column: 10, scope: !492)
!492 = distinct !DILexicalBlock(scope: !480, file: !3, line: 296, column: 8)
!493 = !DILocation(line: 296, column: 16, scope: !492)
!494 = !DILocation(line: 296, column: 8, scope: !480)
!495 = !DILocation(line: 297, column: 31, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !3, line: 296, column: 43)
!497 = !DILocation(line: 297, column: 24, scope: !496)
!498 = !DILocation(line: 297, column: 5, scope: !496)
!499 = !DILocation(line: 297, column: 29, scope: !496)
!500 = !DILocation(line: 298, column: 15, scope: !496)
!501 = !DILocation(line: 298, column: 20, scope: !496)
!502 = !DILocation(line: 298, column: 18, scope: !496)
!503 = !DILocation(line: 298, column: 13, scope: !496)
!504 = !DILocation(line: 299, column: 4, scope: !496)
!505 = !DILocation(line: 300, column: 24, scope: !506)
!506 = distinct !DILexicalBlock(scope: !492, file: !3, line: 299, column: 11)
!507 = !DILocation(line: 300, column: 5, scope: !506)
!508 = !DILocation(line: 300, column: 29, scope: !506)
!509 = !DILocation(line: 302, column: 7, scope: !480)
!510 = !DILocation(line: 303, column: 3, scope: !480)
!511 = !DILocation(line: 305, column: 3, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !3, line: 305, column: 3)
!513 = distinct !DILexicalBlock(scope: !228, file: !3, line: 305, column: 3)
!514 = !DILocation(line: 305, column: 3, scope: !513)
!515 = !DILocation(line: 307, column: 9, scope: !228)
!516 = !DILocation(line: 307, column: 7, scope: !228)
!517 = !DILocation(line: 308, column: 2, scope: !229)
!518 = !DILocation(line: 308, column: 2, scope: !228)
!519 = !DILocation(line: 311, column: 10, scope: !169)
!520 = !DILocation(line: 311, column: 2, scope: !169)
!521 = !DILocation(line: 327, column: 9, scope: !239)
!522 = !DILocation(line: 327, column: 15, scope: !239)
!523 = !DILocation(line: 327, column: 7, scope: !240)
!524 = !DILocation(line: 328, column: 8, scope: !237)
!525 = !DILocation(line: 328, column: 14, scope: !237)
!526 = !DILocation(line: 328, column: 8, scope: !238)
!527 = !DILocation(line: 329, column: 5, scope: !236)
!528 = !DILocation(line: 329, column: 12, scope: !236)
!529 = !DILocation(line: 329, column: 18, scope: !236)
!530 = !DILocation(line: 332, column: 6, scope: !236)
!531 = !DILocation(line: 332, column: 12, scope: !236)
!532 = !DILocation(line: 331, column: 11, scope: !236)
!533 = !DILocation(line: 331, column: 9, scope: !236)
!534 = !DILocation(line: 333, column: 9, scope: !535)
!535 = distinct !DILexicalBlock(scope: !236, file: !3, line: 333, column: 9)
!536 = !DILocation(line: 333, column: 13, scope: !535)
!537 = !DILocation(line: 333, column: 9, scope: !236)
!538 = !DILocation(line: 334, column: 6, scope: !535)
!539 = !DILocation(line: 335, column: 4, scope: !237)
!540 = !DILocation(line: 335, column: 4, scope: !236)
!541 = !DILocation(line: 336, column: 4, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !3, line: 336, column: 4)
!543 = distinct !DILexicalBlock(scope: !238, file: !3, line: 336, column: 4)
!544 = !DILocation(line: 336, column: 4, scope: !543)
!545 = !DILocation(line: 337, column: 3, scope: !238)
!546 = !DILocation(line: 339, column: 7, scope: !243)
!547 = !DILocation(line: 339, column: 10, scope: !243)
!548 = !DILocation(line: 339, column: 7, scope: !240)
!549 = !DILocation(line: 340, column: 4, scope: !242)
!550 = !DILocation(line: 340, column: 18, scope: !242)
!551 = !DILocation(line: 342, column: 8, scope: !552)
!552 = distinct !DILexicalBlock(scope: !242, file: !3, line: 342, column: 8)
!553 = !DILocation(line: 342, column: 11, scope: !552)
!554 = !DILocation(line: 342, column: 8, scope: !242)
!555 = !DILocation(line: 343, column: 11, scope: !552)
!556 = !DILocation(line: 343, column: 19, scope: !552)
!557 = !DILocation(line: 343, column: 22, scope: !552)
!558 = !DILocation(line: 343, column: 9, scope: !552)
!559 = !DILocation(line: 343, column: 5, scope: !552)
!560 = !DILocation(line: 345, column: 11, scope: !552)
!561 = !DILocation(line: 345, column: 19, scope: !552)
!562 = !DILocation(line: 345, column: 22, scope: !552)
!563 = !DILocation(line: 345, column: 9, scope: !552)
!564 = !DILocation(line: 346, column: 10, scope: !242)
!565 = !DILocation(line: 346, column: 18, scope: !242)
!566 = !DILocation(line: 346, column: 23, scope: !242)
!567 = !DILocation(line: 346, column: 32, scope: !242)
!568 = !DILocation(line: 346, column: 37, scope: !242)
!569 = !DILocation(line: 346, column: 42, scope: !242)
!570 = !DILocation(line: 346, column: 49, scope: !242)
!571 = !DILocation(line: 346, column: 47, scope: !242)
!572 = !DILocation(line: 346, column: 53, scope: !242)
!573 = !DILocation(line: 346, column: 8, scope: !242)
!574 = !DILocation(line: 347, column: 8, scope: !575)
!575 = distinct !DILexicalBlock(scope: !242, file: !3, line: 347, column: 8)
!576 = !DILocation(line: 347, column: 12, scope: !575)
!577 = !DILocation(line: 347, column: 8, scope: !242)
!578 = !DILocation(line: 348, column: 12, scope: !575)
!579 = !DILocation(line: 348, column: 5, scope: !575)
!580 = !DILocation(line: 349, column: 3, scope: !243)
!581 = !DILocation(line: 349, column: 3, scope: !242)
!582 = !DILocation(line: 351, column: 9, scope: !583)
!583 = distinct !DILexicalBlock(scope: !240, file: !3, line: 351, column: 7)
!584 = !DILocation(line: 351, column: 15, scope: !583)
!585 = !DILocation(line: 351, column: 7, scope: !240)
!586 = !DILocation(line: 352, column: 10, scope: !583)
!587 = !DILocation(line: 352, column: 7, scope: !583)
!588 = !DILocation(line: 352, column: 4, scope: !583)
!589 = !DILocation(line: 353, column: 25, scope: !240)
!590 = !DILocation(line: 353, column: 9, scope: !240)
!591 = !DILocation(line: 353, column: 6, scope: !240)
!592 = !DILocation(line: 354, column: 3, scope: !240)
!593 = !DILocation(line: 359, column: 3, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 359, column: 3)
!595 = distinct !DILexicalBlock(scope: !240, file: !3, line: 359, column: 3)
!596 = !DILocation(line: 359, column: 3, scope: !595)
!597 = !DILocation(line: 360, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !240, file: !3, line: 360, column: 7)
!599 = !DILocation(line: 360, column: 7, scope: !240)
!600 = !DILocation(line: 361, column: 4, scope: !598)
!601 = !DILocation(line: 362, column: 23, scope: !240)
!602 = !DILocation(line: 362, column: 44, scope: !240)
!603 = !DILocation(line: 362, column: 28, scope: !240)
!604 = !DILocation(line: 362, column: 26, scope: !240)
!605 = !DILocation(line: 362, column: 17, scope: !240)
!606 = !DILocation(line: 362, column: 3, scope: !240)
!607 = !DILocation(line: 362, column: 21, scope: !240)
!608 = !DILocation(line: 363, column: 8, scope: !240)
!609 = !DILocation(line: 363, column: 16, scope: !240)
!610 = !DILocation(line: 363, column: 19, scope: !240)
!611 = !DILocation(line: 363, column: 6, scope: !240)
!612 = !DILocation(line: 364, column: 3, scope: !240)
!613 = !DILocation(line: 367, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !240, file: !3, line: 367, column: 7)
!615 = !DILocation(line: 367, column: 7, scope: !240)
!616 = !DILocation(line: 368, column: 4, scope: !614)
!617 = !DILocation(line: 369, column: 25, scope: !240)
!618 = !DILocation(line: 369, column: 9, scope: !240)
!619 = !DILocation(line: 369, column: 6, scope: !240)
!620 = !DILocation(line: 370, column: 3, scope: !240)
!621 = !DILocation(line: 373, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !240, file: !3, line: 373, column: 7)
!623 = !DILocation(line: 373, column: 7, scope: !240)
!624 = !DILocation(line: 374, column: 4, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 374, column: 4)
!626 = distinct !DILexicalBlock(scope: !622, file: !3, line: 373, column: 39)
!627 = !DILocation(line: 374, column: 4, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !3, line: 374, column: 4)
!629 = !DILocation(line: 376, column: 4, scope: !626)
!630 = !DILocation(line: 378, column: 3, scope: !240)
!631 = !DILocation(line: 382, column: 7, scope: !632)
!632 = distinct !DILexicalBlock(scope: !240, file: !3, line: 382, column: 7)
!633 = !DILocation(line: 382, column: 7, scope: !240)
!634 = !DILocation(line: 383, column: 4, scope: !632)
!635 = !DILocation(line: 392, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !240, file: !3, line: 392, column: 7)
!637 = !DILocation(line: 392, column: 7, scope: !240)
!638 = !DILocation(line: 393, column: 4, scope: !636)
!639 = !DILocation(line: 394, column: 6, scope: !240)
!640 = !DILocation(line: 395, column: 23, scope: !240)
!641 = !DILocation(line: 395, column: 9, scope: !240)
!642 = !DILocation(line: 395, column: 7, scope: !240)
!643 = !DILocation(line: 396, column: 27, scope: !240)
!644 = !DILocation(line: 396, column: 9, scope: !240)
!645 = !DILocation(line: 396, column: 7, scope: !240)
!646 = !DILocation(line: 397, column: 9, scope: !240)
!647 = !DILocation(line: 397, column: 7, scope: !240)
!648 = !DILocation(line: 398, column: 32, scope: !240)
!649 = !DILocation(line: 398, column: 13, scope: !240)
!650 = !DILocation(line: 398, column: 11, scope: !240)
!651 = !DILocation(line: 399, column: 3, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 399, column: 3)
!653 = distinct !DILexicalBlock(scope: !240, file: !3, line: 399, column: 3)
!654 = !DILocation(line: 399, column: 3, scope: !653)
!655 = !DILocation(line: 401, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !240, file: !3, line: 401, column: 7)
!657 = !DILocation(line: 401, column: 15, scope: !656)
!658 = !DILocation(line: 401, column: 7, scope: !240)
!659 = !DILocation(line: 403, column: 14, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !3, line: 401, column: 21)
!661 = !DILocation(line: 403, column: 12, scope: !660)
!662 = !DILocation(line: 404, column: 8, scope: !663)
!663 = distinct !DILexicalBlock(scope: !660, file: !3, line: 404, column: 8)
!664 = !DILocation(line: 404, column: 8, scope: !660)
!665 = !DILocation(line: 405, column: 5, scope: !663)
!666 = !DILocation(line: 406, column: 8, scope: !667)
!667 = distinct !DILexicalBlock(scope: !660, file: !3, line: 406, column: 8)
!668 = !DILocation(line: 406, column: 15, scope: !667)
!669 = !DILocation(line: 406, column: 19, scope: !667)
!670 = !DILocation(line: 406, column: 8, scope: !660)
!671 = !DILocation(line: 407, column: 9, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 407, column: 9)
!673 = distinct !DILexicalBlock(scope: !667, file: !3, line: 406, column: 25)
!674 = !DILocation(line: 407, column: 12, scope: !672)
!675 = !DILocation(line: 407, column: 9, scope: !673)
!676 = !DILocation(line: 408, column: 8, scope: !677)
!677 = distinct !DILexicalBlock(scope: !672, file: !3, line: 407, column: 31)
!678 = !DILocation(line: 409, column: 9, scope: !677)
!679 = !DILocation(line: 410, column: 11, scope: !677)
!680 = !DILocation(line: 410, column: 19, scope: !677)
!681 = !DILocation(line: 410, column: 22, scope: !677)
!682 = !DILocation(line: 410, column: 9, scope: !677)
!683 = !DILocation(line: 411, column: 6, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !3, line: 411, column: 6)
!685 = distinct !DILexicalBlock(scope: !677, file: !3, line: 411, column: 6)
!686 = !DILocation(line: 411, column: 6, scope: !685)
!687 = !DILocation(line: 412, column: 6, scope: !677)
!688 = !DILocation(line: 414, column: 5, scope: !673)
!689 = !DILocation(line: 416, column: 8, scope: !690)
!690 = distinct !DILexicalBlock(scope: !660, file: !3, line: 416, column: 8)
!691 = !DILocation(line: 416, column: 15, scope: !690)
!692 = !DILocation(line: 416, column: 19, scope: !690)
!693 = !DILocation(line: 416, column: 8, scope: !660)
!694 = !DILocation(line: 417, column: 5, scope: !690)
!695 = !DILocation(line: 418, column: 10, scope: !660)
!696 = !DILocation(line: 418, column: 15, scope: !660)
!697 = !DILocation(line: 418, column: 13, scope: !660)
!698 = !DILocation(line: 418, column: 19, scope: !660)
!699 = !DILocation(line: 418, column: 8, scope: !660)
!700 = !DILocation(line: 419, column: 3, scope: !660)
!701 = !DILocation(line: 420, column: 8, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 420, column: 8)
!703 = distinct !DILexicalBlock(scope: !656, file: !3, line: 419, column: 10)
!704 = !DILocation(line: 420, column: 13, scope: !702)
!705 = !DILocation(line: 420, column: 11, scope: !702)
!706 = !DILocation(line: 420, column: 17, scope: !702)
!707 = !DILocation(line: 420, column: 21, scope: !702)
!708 = !DILocation(line: 420, column: 24, scope: !702)
!709 = !DILocation(line: 420, column: 8, scope: !703)
!710 = !DILocation(line: 421, column: 15, scope: !711)
!711 = distinct !DILexicalBlock(scope: !702, file: !3, line: 420, column: 44)
!712 = !DILocation(line: 421, column: 13, scope: !711)
!713 = !DILocation(line: 422, column: 8, scope: !711)
!714 = !DILocation(line: 423, column: 10, scope: !711)
!715 = !DILocation(line: 423, column: 18, scope: !711)
!716 = !DILocation(line: 423, column: 21, scope: !711)
!717 = !DILocation(line: 423, column: 8, scope: !711)
!718 = !DILocation(line: 424, column: 5, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 424, column: 5)
!720 = distinct !DILexicalBlock(scope: !711, file: !3, line: 424, column: 5)
!721 = !DILocation(line: 424, column: 5, scope: !720)
!722 = !DILocation(line: 425, column: 5, scope: !711)
!723 = !DILocation(line: 427, column: 8, scope: !724)
!724 = distinct !DILexicalBlock(scope: !703, file: !3, line: 427, column: 8)
!725 = !DILocation(line: 427, column: 14, scope: !724)
!726 = !DILocation(line: 427, column: 11, scope: !724)
!727 = !DILocation(line: 427, column: 8, scope: !703)
!728 = !DILocation(line: 428, column: 5, scope: !724)
!729 = !DILocation(line: 429, column: 11, scope: !703)
!730 = !DILocation(line: 429, column: 8, scope: !703)
!731 = !DILocation(line: 430, column: 4, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 430, column: 4)
!733 = distinct !DILexicalBlock(scope: !703, file: !3, line: 430, column: 4)
!734 = !DILocation(line: 430, column: 4, scope: !733)
!735 = !DILocation(line: 433, column: 7, scope: !246)
!736 = !DILocation(line: 433, column: 10, scope: !246)
!737 = !DILocation(line: 433, column: 7, scope: !240)
!738 = !DILocation(line: 434, column: 4, scope: !245)
!739 = !DILocation(line: 434, column: 18, scope: !245)
!740 = !DILocation(line: 435, column: 8, scope: !741)
!741 = distinct !DILexicalBlock(scope: !245, file: !3, line: 435, column: 8)
!742 = !DILocation(line: 435, column: 11, scope: !741)
!743 = !DILocation(line: 435, column: 8, scope: !245)
!744 = !DILocation(line: 436, column: 11, scope: !741)
!745 = !DILocation(line: 436, column: 19, scope: !741)
!746 = !DILocation(line: 436, column: 22, scope: !741)
!747 = !DILocation(line: 436, column: 9, scope: !741)
!748 = !DILocation(line: 436, column: 5, scope: !741)
!749 = !DILocation(line: 438, column: 11, scope: !741)
!750 = !DILocation(line: 438, column: 19, scope: !741)
!751 = !DILocation(line: 438, column: 22, scope: !741)
!752 = !DILocation(line: 438, column: 9, scope: !741)
!753 = !DILocation(line: 439, column: 10, scope: !245)
!754 = !DILocation(line: 439, column: 18, scope: !245)
!755 = !DILocation(line: 439, column: 23, scope: !245)
!756 = !DILocation(line: 439, column: 32, scope: !245)
!757 = !DILocation(line: 439, column: 40, scope: !245)
!758 = !DILocation(line: 439, column: 47, scope: !245)
!759 = !DILocation(line: 439, column: 45, scope: !245)
!760 = !DILocation(line: 439, column: 52, scope: !245)
!761 = !DILocation(line: 439, column: 8, scope: !245)
!762 = !DILocation(line: 440, column: 8, scope: !763)
!763 = distinct !DILexicalBlock(scope: !245, file: !3, line: 440, column: 8)
!764 = !DILocation(line: 440, column: 12, scope: !763)
!765 = !DILocation(line: 440, column: 8, scope: !245)
!766 = !DILocation(line: 441, column: 12, scope: !763)
!767 = !DILocation(line: 441, column: 5, scope: !763)
!768 = !DILocation(line: 442, column: 3, scope: !246)
!769 = !DILocation(line: 442, column: 3, scope: !245)
!770 = !DILocation(line: 443, column: 25, scope: !240)
!771 = !DILocation(line: 443, column: 9, scope: !240)
!772 = !DILocation(line: 443, column: 6, scope: !240)
!773 = !DILocation(line: 444, column: 3, scope: !240)
!774 = !DILocation(line: 447, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !240, file: !3, line: 447, column: 7)
!776 = !DILocation(line: 447, column: 15, scope: !775)
!777 = !DILocation(line: 447, column: 7, scope: !240)
!778 = !DILocation(line: 448, column: 26, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !3, line: 447, column: 37)
!780 = !DILocation(line: 448, column: 10, scope: !779)
!781 = !DILocation(line: 448, column: 7, scope: !779)
!782 = !DILocation(line: 449, column: 4, scope: !779)
!783 = !DILocation(line: 447, column: 34, scope: !775)
!784 = !DILocation(line: 454, column: 9, scope: !240)
!785 = !DILocation(line: 454, column: 17, scope: !240)
!786 = !DILocation(line: 454, column: 25, scope: !240)
!787 = !DILocation(line: 454, column: 28, scope: !240)
!788 = !DILocation(line: 454, column: 34, scope: !240)
!789 = !DILocation(line: 454, column: 43, scope: !240)
!790 = !DILocation(line: 454, column: 48, scope: !240)
!791 = !DILocation(line: 454, column: 53, scope: !240)
!792 = !DILocation(line: 454, column: 60, scope: !240)
!793 = !DILocation(line: 454, column: 58, scope: !240)
!794 = !DILocation(line: 454, column: 65, scope: !240)
!795 = !DILocation(line: 454, column: 7, scope: !240)
!796 = !DILocation(line: 455, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !240, file: !3, line: 455, column: 7)
!798 = !DILocation(line: 455, column: 11, scope: !797)
!799 = !DILocation(line: 455, column: 7, scope: !240)
!800 = !DILocation(line: 456, column: 11, scope: !797)
!801 = !DILocation(line: 456, column: 4, scope: !797)
!802 = !DILocation(line: 457, column: 25, scope: !240)
!803 = !DILocation(line: 457, column: 9, scope: !240)
!804 = !DILocation(line: 457, column: 6, scope: !240)
!805 = !DILocation(line: 458, column: 3, scope: !240)
!806 = !DILocation(line: 461, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !240, file: !3, line: 461, column: 7)
!808 = !DILocation(line: 461, column: 7, scope: !240)
!809 = !DILocation(line: 462, column: 4, scope: !807)
!810 = !DILocation(line: 463, column: 19, scope: !240)
!811 = !DILocation(line: 463, column: 8, scope: !240)
!812 = !DILocation(line: 463, column: 6, scope: !240)
!813 = !DILocation(line: 464, column: 9, scope: !240)
!814 = !DILocation(line: 465, column: 3, scope: !240)
!815 = !DILocation(line: 468, column: 3, scope: !240)
!816 = !DILocation(line: 472, column: 2, scope: !817)
!817 = distinct !DILexicalBlock(scope: !169, file: !3, line: 472, column: 2)
!818 = !DILocation(line: 472, column: 2, scope: !819)
!819 = distinct !DILexicalBlock(scope: !817, file: !3, line: 472, column: 2)
!820 = !DILocation(line: 474, column: 2, scope: !169)
!821 = !DILocation(line: 476, column: 1, scope: !169)
!822 = !DILocation(line: 477, column: 9, scope: !169)
!823 = !DILocation(line: 478, column: 2, scope: !169)
!824 = !DILocation(line: 479, column: 1, scope: !169)
!825 = !DILocation(line: 480, column: 9, scope: !169)
!826 = !DILocation(line: 481, column: 2, scope: !169)
!827 = !DILocation(line: 482, column: 1, scope: !169)
!828 = !DILocation(line: 483, column: 9, scope: !169)
!829 = !DILocation(line: 484, column: 2, scope: !169)
!830 = !DILocation(line: 485, column: 1, scope: !169)
!831 = !DILocation(line: 486, column: 9, scope: !169)
!832 = !DILocation(line: 487, column: 2, scope: !169)
!833 = !DILocation(line: 488, column: 1, scope: !169)
!834 = !DILocation(line: 489, column: 9, scope: !169)
!835 = !DILocation(line: 490, column: 2, scope: !169)
!836 = !DILocation(line: 491, column: 1, scope: !169)
!837 = !DILocation(line: 492, column: 9, scope: !169)
!838 = !DILocation(line: 493, column: 2, scope: !169)
!839 = !DILocation(line: 494, column: 1, scope: !169)
!840 = !DILocation(line: 495, column: 9, scope: !169)
!841 = !DILocation(line: 496, column: 2, scope: !169)
!842 = !DILocation(line: 497, column: 1, scope: !169)
!843 = !DILocation(line: 498, column: 9, scope: !169)
!844 = !DILocation(line: 499, column: 2, scope: !169)
!845 = !DILocation(line: 500, column: 1, scope: !169)
!846 = !DILocation(line: 501, column: 9, scope: !169)
!847 = !DILocation(line: 502, column: 2, scope: !169)
!848 = !DILocation(line: 503, column: 1, scope: !169)
!849 = !DILocation(line: 504, column: 9, scope: !169)
!850 = !DILocation(line: 505, column: 2, scope: !169)
!851 = !DILocation(line: 506, column: 1, scope: !169)
!852 = !DILocation(line: 507, column: 9, scope: !169)
!853 = !DILocation(line: 508, column: 2, scope: !169)
!854 = !DILocation(line: 509, column: 1, scope: !169)
!855 = !DILocation(line: 510, column: 9, scope: !169)
!856 = !DILocation(line: 511, column: 2, scope: !169)
!857 = !DILocation(line: 512, column: 1, scope: !169)
!858 = !DILocation(line: 513, column: 9, scope: !169)
!859 = !DILocation(line: 513, column: 2, scope: !169)
!860 = !DILocation(line: 514, column: 1, scope: !169)
!861 = !DILocation(line: 515, column: 2, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 515, column: 2)
!863 = distinct !DILexicalBlock(scope: !169, file: !3, line: 515, column: 2)
!864 = !DILocation(line: 515, column: 2, scope: !863)
!865 = !DILocation(line: 517, column: 2, scope: !169)
!866 = !DILocation(line: 518, column: 1, scope: !169)
!867 = distinct !DISubprogram(name: "asn1_find_indefinite_length", scope: !3, file: !3, line: 57, type: !868, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !872)
!868 = !DISubroutineType(types: !869)
!869 = !{!172, !178, !180, !870, !870, !871}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!872 = !{!873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891}
!873 = !DILocalVariable(name: "data", arg: 1, scope: !867, file: !3, line: 57, type: !178)
!874 = !DILocalVariable(name: "datalen", arg: 2, scope: !867, file: !3, line: 57, type: !180)
!875 = !DILocalVariable(name: "_dp", arg: 3, scope: !867, file: !3, line: 58, type: !870)
!876 = !DILocalVariable(name: "_len", arg: 4, scope: !867, file: !3, line: 58, type: !870)
!877 = !DILocalVariable(name: "_errmsg", arg: 5, scope: !867, file: !3, line: 59, type: !871)
!878 = !DILocalVariable(name: "tag", scope: !867, file: !3, line: 61, type: !157)
!879 = !DILocalVariable(name: "tmp", scope: !867, file: !3, line: 61, type: !157)
!880 = !DILocalVariable(name: "dp", scope: !867, file: !3, line: 62, type: !180)
!881 = !DILocalVariable(name: "len", scope: !867, file: !3, line: 62, type: !180)
!882 = !DILocalVariable(name: "n", scope: !867, file: !3, line: 62, type: !180)
!883 = !DILocalVariable(name: "indef_level", scope: !867, file: !3, line: 63, type: !172)
!884 = !DILabel(scope: !867, name: "next_tag", file: !3, line: 65)
!885 = !DILabel(scope: !867, name: "check_length", file: !3, line: 117)
!886 = !DILabel(scope: !867, name: "length_too_long", file: !3, line: 123)
!887 = !DILabel(scope: !867, name: "indefinite_len_primitive", file: !3, line: 126)
!888 = !DILabel(scope: !867, name: "invalid_eoc", file: !3, line: 129)
!889 = !DILabel(scope: !867, name: "data_overrun_error", file: !3, line: 132)
!890 = !DILabel(scope: !867, name: "missing_eoc", file: !3, line: 135)
!891 = !DILabel(scope: !867, name: "error", file: !3, line: 137)
!892 = !DILocation(line: 57, column: 61, scope: !867)
!893 = !DILocation(line: 57, column: 74, scope: !867)
!894 = !DILocation(line: 58, column: 20, scope: !867)
!895 = !DILocation(line: 58, column: 33, scope: !867)
!896 = !DILocation(line: 59, column: 25, scope: !867)
!897 = !DILocation(line: 61, column: 2, scope: !867)
!898 = !DILocation(line: 61, column: 16, scope: !867)
!899 = !DILocation(line: 61, column: 21, scope: !867)
!900 = !DILocation(line: 62, column: 2, scope: !867)
!901 = !DILocation(line: 62, column: 9, scope: !867)
!902 = !DILocation(line: 62, column: 15, scope: !867)
!903 = !DILocation(line: 62, column: 14, scope: !867)
!904 = !DILocation(line: 62, column: 20, scope: !867)
!905 = !DILocation(line: 62, column: 25, scope: !867)
!906 = !DILocation(line: 63, column: 2, scope: !867)
!907 = !DILocation(line: 63, column: 6, scope: !867)
!908 = !DILocation(line: 65, column: 1, scope: !867)
!909 = !DILocation(line: 66, column: 6, scope: !910)
!910 = distinct !DILexicalBlock(scope: !867, file: !3, line: 66, column: 6)
!911 = !DILocation(line: 66, column: 6, scope: !867)
!912 = !DILocation(line: 67, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 67, column: 7)
!914 = distinct !DILexicalBlock(scope: !910, file: !3, line: 66, column: 34)
!915 = !DILocation(line: 67, column: 18, scope: !913)
!916 = !DILocation(line: 67, column: 15, scope: !913)
!917 = !DILocation(line: 67, column: 7, scope: !914)
!918 = !DILocation(line: 68, column: 4, scope: !913)
!919 = !DILocation(line: 69, column: 3, scope: !914)
!920 = !DILocation(line: 73, column: 8, scope: !867)
!921 = !DILocation(line: 73, column: 15, scope: !867)
!922 = !DILocation(line: 73, column: 6, scope: !867)
!923 = !DILocation(line: 74, column: 6, scope: !924)
!924 = distinct !DILexicalBlock(scope: !867, file: !3, line: 74, column: 6)
!925 = !DILocation(line: 74, column: 10, scope: !924)
!926 = !DILocation(line: 74, column: 6, scope: !867)
!927 = !DILocation(line: 76, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 76, column: 7)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 74, column: 23)
!930 = !DILocation(line: 76, column: 14, scope: !928)
!931 = !DILocation(line: 76, column: 18, scope: !928)
!932 = !DILocation(line: 76, column: 7, scope: !929)
!933 = !DILocation(line: 77, column: 4, scope: !928)
!934 = !DILocation(line: 78, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !929, file: !3, line: 78, column: 7)
!936 = !DILocation(line: 78, column: 21, scope: !935)
!937 = !DILocation(line: 78, column: 7, scope: !929)
!938 = !DILocation(line: 79, column: 12, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !3, line: 78, column: 27)
!940 = !DILocation(line: 79, column: 18, scope: !939)
!941 = !DILocation(line: 79, column: 17, scope: !939)
!942 = !DILocation(line: 79, column: 15, scope: !939)
!943 = !DILocation(line: 79, column: 5, scope: !939)
!944 = !DILocation(line: 79, column: 10, scope: !939)
!945 = !DILocation(line: 80, column: 11, scope: !939)
!946 = !DILocation(line: 80, column: 5, scope: !939)
!947 = !DILocation(line: 80, column: 9, scope: !939)
!948 = !DILocation(line: 81, column: 4, scope: !939)
!949 = !DILocation(line: 83, column: 3, scope: !929)
!950 = !DILocation(line: 86, column: 6, scope: !951)
!951 = distinct !DILexicalBlock(scope: !867, file: !3, line: 86, column: 6)
!952 = !DILocation(line: 86, column: 6, scope: !867)
!953 = !DILocation(line: 87, column: 3, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !3, line: 86, column: 47)
!955 = !DILocation(line: 88, column: 8, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 88, column: 8)
!957 = distinct !DILexicalBlock(scope: !954, file: !3, line: 87, column: 6)
!958 = !DILocation(line: 88, column: 8, scope: !957)
!959 = !DILocation(line: 89, column: 5, scope: !956)
!960 = !DILocation(line: 90, column: 10, scope: !957)
!961 = !DILocation(line: 90, column: 17, scope: !957)
!962 = !DILocation(line: 90, column: 8, scope: !957)
!963 = !DILocation(line: 91, column: 3, scope: !957)
!964 = !DILocation(line: 91, column: 12, scope: !954)
!965 = !DILocation(line: 91, column: 16, scope: !954)
!966 = distinct !{!966, !953, !967, !461, !462}
!967 = !DILocation(line: 91, column: 22, scope: !954)
!968 = !DILocation(line: 92, column: 2, scope: !954)
!969 = !DILocation(line: 95, column: 8, scope: !867)
!970 = !DILocation(line: 95, column: 15, scope: !867)
!971 = !DILocation(line: 95, column: 6, scope: !867)
!972 = !DILocation(line: 96, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !867, file: !3, line: 96, column: 6)
!974 = !DILocation(line: 96, column: 10, scope: !973)
!975 = !DILocation(line: 96, column: 6, scope: !867)
!976 = !DILocation(line: 97, column: 3, scope: !973)
!977 = !DILocation(line: 99, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !867, file: !3, line: 99, column: 6)
!979 = !DILocation(line: 99, column: 6, scope: !867)
!980 = !DILocation(line: 101, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 101, column: 7)
!982 = distinct !DILexicalBlock(scope: !978, file: !3, line: 99, column: 47)
!983 = !DILocation(line: 101, column: 7, scope: !982)
!984 = !DILocation(line: 102, column: 4, scope: !981)
!985 = !DILocation(line: 103, column: 14, scope: !982)
!986 = !DILocation(line: 104, column: 3, scope: !982)
!987 = !DILocation(line: 107, column: 6, scope: !867)
!988 = !DILocation(line: 107, column: 10, scope: !867)
!989 = !DILocation(line: 107, column: 4, scope: !867)
!990 = !DILocation(line: 108, column: 6, scope: !991)
!991 = distinct !DILexicalBlock(scope: !867, file: !3, line: 108, column: 6)
!992 = !DILocation(line: 108, column: 6, scope: !867)
!993 = !DILocation(line: 109, column: 3, scope: !991)
!994 = !DILocation(line: 110, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !867, file: !3, line: 110, column: 6)
!996 = !DILocation(line: 110, column: 6, scope: !867)
!997 = !DILocation(line: 111, column: 3, scope: !995)
!998 = !DILocation(line: 112, column: 6, scope: !867)
!999 = !DILocation(line: 113, column: 2, scope: !867)
!1000 = !DILocation(line: 113, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 113, column: 2)
!1002 = distinct !DILexicalBlock(scope: !867, file: !3, line: 113, column: 2)
!1003 = !DILocation(line: 113, column: 11, scope: !1001)
!1004 = !DILocation(line: 113, column: 2, scope: !1002)
!1005 = !DILocation(line: 114, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 113, column: 21)
!1007 = !DILocation(line: 115, column: 10, scope: !1006)
!1008 = !DILocation(line: 115, column: 17, scope: !1006)
!1009 = !DILocation(line: 115, column: 7, scope: !1006)
!1010 = !DILocation(line: 116, column: 2, scope: !1006)
!1011 = !DILocation(line: 113, column: 17, scope: !1001)
!1012 = !DILocation(line: 113, column: 2, scope: !1001)
!1013 = distinct !{!1013, !1004, !1014, !461, !462}
!1014 = !DILocation(line: 116, column: 2, scope: !1002)
!1015 = !DILocation(line: 117, column: 1, scope: !867)
!1016 = !DILocation(line: 118, column: 6, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !867, file: !3, line: 118, column: 6)
!1018 = !DILocation(line: 118, column: 12, scope: !1017)
!1019 = !DILocation(line: 118, column: 22, scope: !1017)
!1020 = !DILocation(line: 118, column: 20, scope: !1017)
!1021 = !DILocation(line: 118, column: 10, scope: !1017)
!1022 = !DILocation(line: 118, column: 6, scope: !867)
!1023 = !DILocation(line: 119, column: 3, scope: !1017)
!1024 = !DILocation(line: 120, column: 8, scope: !867)
!1025 = !DILocation(line: 120, column: 5, scope: !867)
!1026 = !DILocation(line: 121, column: 2, scope: !867)
!1027 = !DILocation(line: 123, column: 1, scope: !867)
!1028 = !DILocation(line: 124, column: 3, scope: !867)
!1029 = !DILocation(line: 124, column: 11, scope: !867)
!1030 = !DILocation(line: 125, column: 2, scope: !867)
!1031 = !DILocation(line: 126, column: 1, scope: !867)
!1032 = !DILocation(line: 127, column: 3, scope: !867)
!1033 = !DILocation(line: 127, column: 11, scope: !867)
!1034 = !DILocation(line: 128, column: 2, scope: !867)
!1035 = !DILocation(line: 129, column: 1, scope: !867)
!1036 = !DILocation(line: 130, column: 3, scope: !867)
!1037 = !DILocation(line: 130, column: 11, scope: !867)
!1038 = !DILocation(line: 131, column: 2, scope: !867)
!1039 = !DILocation(line: 132, column: 1, scope: !867)
!1040 = !DILocation(line: 133, column: 3, scope: !867)
!1041 = !DILocation(line: 133, column: 11, scope: !867)
!1042 = !DILocation(line: 134, column: 2, scope: !867)
!1043 = !DILocation(line: 135, column: 1, scope: !867)
!1044 = !DILocation(line: 136, column: 3, scope: !867)
!1045 = !DILocation(line: 136, column: 11, scope: !867)
!1046 = !DILocation(line: 136, column: 2, scope: !867)
!1047 = !DILocation(line: 137, column: 1, scope: !867)
!1048 = !DILocation(line: 138, column: 9, scope: !867)
!1049 = !DILocation(line: 138, column: 3, scope: !867)
!1050 = !DILocation(line: 138, column: 7, scope: !867)
!1051 = !DILocation(line: 139, column: 2, scope: !867)
!1052 = !DILocation(line: 140, column: 1, scope: !867)
!1053 = !DISubprogram(name: "_printk", scope: !1054, file: !1054, line: 153, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!172, !210, null}
