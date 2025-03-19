; ModuleID = 'lib/lz4/lz4_decompress.c'
source_filename = "lib/lz4/lz4_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_decompress_safe: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad LZ4_decompress_safe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_decompress_safe_partial: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad LZ4_decompress_safe_partial ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_decompress_fast: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad LZ4_decompress_fast ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_setStreamDecode: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad LZ4_setStreamDecode ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_decompress_safe_continue: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad LZ4_decompress_safe_continue ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_decompress_fast_continue: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad LZ4_decompress_fast_continue ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_decompress_safe_usingDict: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad LZ4_decompress_safe_usingDict ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_decompress_fast_usingDict: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad LZ4_decompress_fast_usingDict ; .previous"

%struct.LZ4_streamDecode_t_internal = type { ptr, i64, ptr, i64 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i64 }
%struct.anon.2 = type { i64 }
%struct.anon = type { i16 }

@__UNIQUE_ID___addressable_LZ4_decompress_safe202 = internal global ptr @LZ4_decompress_safe, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_LZ4_decompress_safe_partial203 = internal global ptr @LZ4_decompress_safe_partial, section ".discard.addressable", align 8, !dbg !111
@__UNIQUE_ID___addressable_LZ4_decompress_fast204 = internal global ptr @LZ4_decompress_fast, section ".discard.addressable", align 8, !dbg !113
@__UNIQUE_ID___addressable_LZ4_setStreamDecode205 = internal global ptr @LZ4_setStreamDecode, section ".discard.addressable", align 8, !dbg !115
@__UNIQUE_ID___addressable_LZ4_decompress_safe_continue206 = internal global ptr @LZ4_decompress_safe_continue, section ".discard.addressable", align 8, !dbg !117
@__UNIQUE_ID___addressable_LZ4_decompress_fast_continue207 = internal global ptr @LZ4_decompress_fast_continue, section ".discard.addressable", align 8, !dbg !119
@__UNIQUE_ID___addressable_LZ4_decompress_safe_usingDict208 = internal global ptr @LZ4_decompress_safe_usingDict, section ".discard.addressable", align 8, !dbg !121
@__UNIQUE_ID___addressable_LZ4_decompress_fast_usingDict209 = internal global ptr @LZ4_decompress_fast_usingDict, section ".discard.addressable", align 8, !dbg !123
@__UNIQUE_ID_file210 = internal constant [43 x i8] c"lz4_decompress.file=lib/lz4/lz4_decompress\00", section ".modinfo", align 1, !dbg !125
@__UNIQUE_ID_license211 = internal constant [36 x i8] c"lz4_decompress.license=Dual BSD/GPL\00", section ".modinfo", align 1, !dbg !130
@__UNIQUE_ID_description212 = internal constant [44 x i8] c"lz4_decompress.description=LZ4 decompressor\00", section ".modinfo", align 1, !dbg !135
@LZ4_decompress_generic.inc32table = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 0, i32 4, i32 4, i32 4], align 16, !dbg !140
@LZ4_decompress_generic.dec64table = internal constant [8 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -4, i32 1, i32 2, i32 3], align 16, !dbg !218
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID___addressable_LZ4_decompress_safe202, ptr @__UNIQUE_ID___addressable_LZ4_decompress_safe_partial203, ptr @__UNIQUE_ID___addressable_LZ4_decompress_fast204, ptr @__UNIQUE_ID___addressable_LZ4_setStreamDecode205, ptr @__UNIQUE_ID___addressable_LZ4_decompress_safe_continue206, ptr @__UNIQUE_ID___addressable_LZ4_decompress_fast_continue207, ptr @__UNIQUE_ID___addressable_LZ4_decompress_safe_usingDict208, ptr @__UNIQUE_ID___addressable_LZ4_decompress_fast_usingDict209, ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__UNIQUE_ID_description212], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @LZ4_decompress_safe(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxDecompressedSize) #0 align 16 !dbg !230 {
entry:
  %source.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %compressedSize.addr = alloca i32, align 4
  %maxDecompressedSize.addr = alloca i32, align 4
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !234, metadata !DIExpression()), !dbg !238
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !235, metadata !DIExpression()), !dbg !239
  store i32 %compressedSize, ptr %compressedSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %compressedSize.addr, metadata !236, metadata !DIExpression()), !dbg !240
  store i32 %maxDecompressedSize, ptr %maxDecompressedSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxDecompressedSize.addr, metadata !237, metadata !DIExpression()), !dbg !241
  %0 = load ptr, ptr %source.addr, align 8, !dbg !242
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !243
  %2 = load i32, ptr %compressedSize.addr, align 4, !dbg !244
  %3 = load i32, ptr %maxDecompressedSize.addr, align 4, !dbg !245
  %4 = load ptr, ptr %dest.addr, align 8, !dbg !246
  %call = call i32 @LZ4_decompress_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %4, ptr noundef null, i64 noundef 0) #7, !dbg !247
  ret i32 %call, !dbg !248
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @LZ4_decompress_generic(ptr noundef %src, ptr noundef %dst, i32 noundef %srcSize, i32 noundef %outputSize, i32 noundef %endOnInput, i32 noundef %partialDecoding, i32 noundef %dict, ptr noundef %lowPrefix, ptr noundef %dictStart, i64 noundef %dictSize) #2 align 16 !dbg !142 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %srcSize.addr = alloca i32, align 4
  %outputSize.addr = alloca i32, align 4
  %endOnInput.addr = alloca i32, align 4
  %partialDecoding.addr = alloca i32, align 4
  %dict.addr = alloca i32, align 4
  %lowPrefix.addr = alloca ptr, align 8
  %dictStart.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %ip = alloca ptr, align 8
  %iend = alloca ptr, align 8
  %op = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %cpy = alloca ptr, align 8
  %dictEnd = alloca ptr, align 8
  %safeDecode = alloca i32, align 4
  %checkOffset = alloca i32, align 4
  %shortiend = alloca ptr, align 8
  %shortoend = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %length = alloca i64, align 8
  %match = alloca ptr, align 8
  %offset = alloca i64, align 8
  %token = alloca i32, align 4
  %s = alloca i32, align 4
  %s285 = alloca i32, align 4
  %__UNIQUE_ID___x196 = alloca i64, align 8
  %__UNIQUE_ID___y197 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %copySize = alloca i64, align 8
  %restSize = alloca i64, align 8
  %endOfMatch = alloca ptr, align 8
  %copyFrom = alloca ptr, align 8
  %mlen = alloca i64, align 8
  %__UNIQUE_ID___x198 = alloca i64, align 8
  %__UNIQUE_ID___y199 = alloca i64, align 8
  %tmp399 = alloca i64, align 8
  %matchEnd = alloca ptr, align 8
  %copyEnd = alloca ptr, align 8
  %oCopyLimit = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !153, metadata !DIExpression()), !dbg !249
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !154, metadata !DIExpression()), !dbg !250
  store i32 %srcSize, ptr %srcSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !155, metadata !DIExpression()), !dbg !251
  store i32 %outputSize, ptr %outputSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %outputSize.addr, metadata !156, metadata !DIExpression()), !dbg !252
  store i32 %endOnInput, ptr %endOnInput.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %endOnInput.addr, metadata !157, metadata !DIExpression()), !dbg !253
  store i32 %partialDecoding, ptr %partialDecoding.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %partialDecoding.addr, metadata !158, metadata !DIExpression()), !dbg !254
  store i32 %dict, ptr %dict.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dict.addr, metadata !159, metadata !DIExpression()), !dbg !255
  store ptr %lowPrefix, ptr %lowPrefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lowPrefix.addr, metadata !160, metadata !DIExpression()), !dbg !256
  store ptr %dictStart, ptr %dictStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictStart.addr, metadata !161, metadata !DIExpression()), !dbg !257
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !162, metadata !DIExpression()), !dbg !258
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #8, !dbg !259
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !163, metadata !DIExpression()), !dbg !260
  %0 = load ptr, ptr %src.addr, align 8, !dbg !261
  store ptr %0, ptr %ip, align 8, !dbg !260
  call void @llvm.lifetime.start.p0(i64 8, ptr %iend) #8, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %iend, metadata !164, metadata !DIExpression()), !dbg !263
  %1 = load ptr, ptr %ip, align 8, !dbg !264
  %2 = load i32, ptr %srcSize.addr, align 4, !dbg !265
  %idx.ext = sext i32 %2 to i64, !dbg !266
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext, !dbg !266
  store ptr %add.ptr, ptr %iend, align 8, !dbg !263
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #8, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %op, metadata !165, metadata !DIExpression()), !dbg !268
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !269
  store ptr %3, ptr %op, align 8, !dbg !268
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #8, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %oend, metadata !166, metadata !DIExpression()), !dbg !271
  %4 = load ptr, ptr %op, align 8, !dbg !272
  %5 = load i32, ptr %outputSize.addr, align 4, !dbg !273
  %idx.ext1 = sext i32 %5 to i64, !dbg !274
  %add.ptr2 = getelementptr i8, ptr %4, i64 %idx.ext1, !dbg !274
  store ptr %add.ptr2, ptr %oend, align 8, !dbg !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpy) #8, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %cpy, metadata !168, metadata !DIExpression()), !dbg !276
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictEnd) #8, !dbg !277
  call void @llvm.dbg.declare(metadata ptr %dictEnd, metadata !169, metadata !DIExpression()), !dbg !278
  %6 = load ptr, ptr %dictStart.addr, align 8, !dbg !279
  %7 = load i64, ptr %dictSize.addr, align 8, !dbg !280
  %add.ptr3 = getelementptr i8, ptr %6, i64 %7, !dbg !281
  store ptr %add.ptr3, ptr %dictEnd, align 8, !dbg !278
  call void @llvm.lifetime.start.p0(i64 4, ptr %safeDecode) #8, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %safeDecode, metadata !170, metadata !DIExpression()), !dbg !283
  %8 = load i32, ptr %endOnInput.addr, align 4, !dbg !284
  %cmp = icmp eq i32 %8, 1, !dbg !285
  %conv = zext i1 %cmp to i32, !dbg !285
  store i32 %conv, ptr %safeDecode, align 4, !dbg !283
  call void @llvm.lifetime.start.p0(i64 4, ptr %checkOffset) #8, !dbg !286
  call void @llvm.dbg.declare(metadata ptr %checkOffset, metadata !172, metadata !DIExpression()), !dbg !287
  %9 = load i32, ptr %safeDecode, align 4, !dbg !288
  %tobool = icmp ne i32 %9, 0, !dbg !289
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !290

land.rhs:                                         ; preds = %entry
  %10 = load i64, ptr %dictSize.addr, align 8, !dbg !291
  %cmp4 = icmp ult i64 %10, 65536, !dbg !292
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %11 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ], !dbg !293
  %land.ext = zext i1 %11 to i32, !dbg !290
  store i32 %land.ext, ptr %checkOffset, align 4, !dbg !287
  call void @llvm.lifetime.start.p0(i64 8, ptr %shortiend) #8, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %shortiend, metadata !173, metadata !DIExpression()), !dbg !295
  %12 = load ptr, ptr %iend, align 8, !dbg !296
  %13 = load i32, ptr %endOnInput.addr, align 4, !dbg !297
  %tobool6 = icmp ne i32 %13, 0, !dbg !297
  %14 = zext i1 %tobool6 to i64, !dbg !297
  %cond = select i1 %tobool6, i32 14, i32 8, !dbg !297
  %idx.ext7 = sext i32 %cond to i64, !dbg !298
  %idx.neg = sub i64 0, %idx.ext7, !dbg !298
  %add.ptr8 = getelementptr i8, ptr %12, i64 %idx.neg, !dbg !298
  %add.ptr9 = getelementptr i8, ptr %add.ptr8, i64 -2, !dbg !299
  store ptr %add.ptr9, ptr %shortiend, align 8, !dbg !295
  call void @llvm.lifetime.start.p0(i64 8, ptr %shortoend) #8, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %shortoend, metadata !174, metadata !DIExpression()), !dbg !301
  %15 = load ptr, ptr %oend, align 8, !dbg !302
  %16 = load i32, ptr %endOnInput.addr, align 4, !dbg !303
  %tobool10 = icmp ne i32 %16, 0, !dbg !303
  %17 = zext i1 %tobool10 to i64, !dbg !303
  %cond11 = select i1 %tobool10, i32 14, i32 8, !dbg !303
  %idx.ext12 = sext i32 %cond11 to i64, !dbg !304
  %idx.neg13 = sub i64 0, %idx.ext12, !dbg !304
  %add.ptr14 = getelementptr i8, ptr %15, i64 %idx.neg13, !dbg !304
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i64 -18, !dbg !305
  store ptr %add.ptr15, ptr %shortoend, align 8, !dbg !301
  %18 = load i32, ptr %endOnInput.addr, align 4, !dbg !306
  %tobool16 = icmp ne i32 %18, 0, !dbg !308
  br i1 %tobool16, label %land.lhs.true, label %if.end, !dbg !309

land.lhs.true:                                    ; preds = %land.end
  %19 = load i32, ptr %outputSize.addr, align 4, !dbg !310
  %cmp17 = icmp eq i32 %19, 0, !dbg !310
  %lnot = xor i1 %cmp17, true, !dbg !310
  %lnot19 = xor i1 %lnot, true, !dbg !310
  %lnot.ext = zext i1 %lnot19 to i32, !dbg !310
  %conv20 = sext i32 %lnot.ext to i64, !dbg !310
  %expval = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !310
  %tobool21 = icmp ne i64 %expval, 0, !dbg !310
  br i1 %tobool21, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %land.lhs.true
  %20 = load i32, ptr %srcSize.addr, align 4, !dbg !312
  %cmp22 = icmp eq i32 %20, 1, !dbg !313
  br i1 %cmp22, label %land.rhs24, label %land.end28, !dbg !314

land.rhs24:                                       ; preds = %if.then
  %21 = load ptr, ptr %ip, align 8, !dbg !315
  %22 = load i8, ptr %21, align 1, !dbg !316
  %conv25 = zext i8 %22 to i32, !dbg !316
  %cmp26 = icmp eq i32 %conv25, 0, !dbg !317
  br label %land.end28

land.end28:                                       ; preds = %land.rhs24, %if.then
  %23 = phi i1 [ false, %if.then ], [ %cmp26, %land.rhs24 ], !dbg !318
  %24 = zext i1 %23 to i64, !dbg !319
  %cond30 = select i1 %23, i32 0, i32 -1, !dbg !319
  store i32 %cond30, ptr %retval, align 4, !dbg !320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup524, !dbg !320

if.end:                                           ; preds = %land.lhs.true, %land.end
  %25 = load i32, ptr %endOnInput.addr, align 4, !dbg !321
  %tobool31 = icmp ne i32 %25, 0, !dbg !321
  br i1 %tobool31, label %if.end47, label %land.lhs.true32, !dbg !323

land.lhs.true32:                                  ; preds = %if.end
  %26 = load i32, ptr %outputSize.addr, align 4, !dbg !324
  %cmp33 = icmp eq i32 %26, 0, !dbg !324
  %lnot35 = xor i1 %cmp33, true, !dbg !324
  %lnot37 = xor i1 %lnot35, true, !dbg !324
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !324
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !324
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !324
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !324
  br i1 %tobool41, label %if.then42, label %if.end47, !dbg !325

if.then42:                                        ; preds = %land.lhs.true32
  %27 = load ptr, ptr %ip, align 8, !dbg !326
  %28 = load i8, ptr %27, align 1, !dbg !327
  %conv43 = zext i8 %28 to i32, !dbg !327
  %cmp44 = icmp eq i32 %conv43, 0, !dbg !328
  %29 = zext i1 %cmp44 to i64, !dbg !327
  %cond46 = select i1 %cmp44, i32 1, i32 -1, !dbg !327
  store i32 %cond46, ptr %retval, align 4, !dbg !329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup524, !dbg !329

if.end47:                                         ; preds = %land.lhs.true32, %if.end
  %30 = load i32, ptr %endOnInput.addr, align 4, !dbg !330
  %tobool48 = icmp ne i32 %30, 0, !dbg !332
  br i1 %tobool48, label %land.lhs.true49, label %if.end60, !dbg !333

land.lhs.true49:                                  ; preds = %if.end47
  %31 = load i32, ptr %srcSize.addr, align 4, !dbg !334
  %cmp50 = icmp eq i32 %31, 0, !dbg !334
  %lnot52 = xor i1 %cmp50, true, !dbg !334
  %lnot54 = xor i1 %lnot52, true, !dbg !334
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !334
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !334
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !334
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !334
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !335

if.then59:                                        ; preds = %land.lhs.true49
  store i32 -1, ptr %retval, align 4, !dbg !336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup524, !dbg !336

if.end60:                                         ; preds = %land.lhs.true49, %if.end47
  br label %while.cond, !dbg !337

while.cond:                                       ; preds = %cleanup.cont505, %cleanup500, %if.end60
  br label %while.body, !dbg !337

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #8, !dbg !338
  call void @llvm.dbg.declare(metadata ptr %length, metadata !175, metadata !DIExpression()), !dbg !339
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #8, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %match, metadata !177, metadata !DIExpression()), !dbg !341
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #8, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !178, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 4, ptr %token) #8, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %token, metadata !179, metadata !DIExpression()), !dbg !345
  %32 = load ptr, ptr %ip, align 8, !dbg !346
  %incdec.ptr = getelementptr i8, ptr %32, i32 1, !dbg !346
  store ptr %incdec.ptr, ptr %ip, align 8, !dbg !346
  %33 = load i8, ptr %32, align 1, !dbg !347
  %conv61 = zext i8 %33 to i32, !dbg !347
  store i32 %conv61, ptr %token, align 4, !dbg !345
  %34 = load i32, ptr %token, align 4, !dbg !348
  %shr = lshr i32 %34, 4, !dbg !349
  %conv62 = zext i32 %shr to i64, !dbg !348
  store i64 %conv62, ptr %length, align 8, !dbg !350
  %35 = load i32, ptr %endOnInput.addr, align 4, !dbg !351
  %tobool63 = icmp ne i32 %35, 0, !dbg !351
  br i1 %tobool63, label %cond.true, label %cond.false, !dbg !353

cond.true:                                        ; preds = %while.body
  %36 = load i64, ptr %length, align 8, !dbg !354
  %cmp64 = icmp ne i64 %36, 15, !dbg !355
  br i1 %cmp64, label %land.lhs.true68, label %if.end116, !dbg !351

cond.false:                                       ; preds = %while.body
  %37 = load i64, ptr %length, align 8, !dbg !356
  %cmp66 = icmp ule i64 %37, 8, !dbg !357
  br i1 %cmp66, label %land.lhs.true68, label %if.end116, !dbg !353

land.lhs.true68:                                  ; preds = %cond.false, %cond.true
  %38 = load i32, ptr %endOnInput.addr, align 4, !dbg !358
  %tobool69 = icmp ne i32 %38, 0, !dbg !358
  br i1 %tobool69, label %cond.true70, label %cond.false73, !dbg !358

cond.true70:                                      ; preds = %land.lhs.true68
  %39 = load ptr, ptr %ip, align 8, !dbg !358
  %40 = load ptr, ptr %shortiend, align 8, !dbg !358
  %cmp71 = icmp ult ptr %39, %40, !dbg !358
  %conv72 = zext i1 %cmp71 to i32, !dbg !358
  br label %cond.end, !dbg !358

cond.false73:                                     ; preds = %land.lhs.true68
  br label %cond.end, !dbg !358

cond.end:                                         ; preds = %cond.false73, %cond.true70
  %cond74 = phi i32 [ %conv72, %cond.true70 ], [ 1, %cond.false73 ], !dbg !358
  %41 = load ptr, ptr %op, align 8, !dbg !358
  %42 = load ptr, ptr %shortoend, align 8, !dbg !358
  %cmp75 = icmp ule ptr %41, %42, !dbg !358
  %conv76 = zext i1 %cmp75 to i32, !dbg !358
  %and = and i32 %cond74, %conv76, !dbg !358
  %tobool77 = icmp ne i32 %and, 0, !dbg !358
  %lnot78 = xor i1 %tobool77, true, !dbg !358
  %lnot80 = xor i1 %lnot78, true, !dbg !358
  %lnot.ext81 = zext i1 %lnot80 to i32, !dbg !358
  %conv82 = sext i32 %lnot.ext81 to i64, !dbg !358
  %expval83 = call i64 @llvm.expect.i64(i64 %conv82, i64 1), !dbg !358
  %tobool84 = icmp ne i64 %expval83, 0, !dbg !358
  br i1 %tobool84, label %if.then85, label %if.end116, !dbg !359

if.then85:                                        ; preds = %cond.end
  %43 = load ptr, ptr %op, align 8, !dbg !360
  %44 = load ptr, ptr %ip, align 8, !dbg !360
  %45 = load i32, ptr %endOnInput.addr, align 4, !dbg !360
  %tobool86 = icmp ne i32 %45, 0, !dbg !360
  %46 = zext i1 %tobool86 to i64, !dbg !360
  %cond87 = select i1 %tobool86, i32 16, i32 8, !dbg !360
  %conv88 = sext i32 %cond87 to i64, !dbg !360
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %43, ptr align 1 %44, i64 %conv88, i1 false), !dbg !360
  %47 = load i64, ptr %length, align 8, !dbg !362
  %48 = load ptr, ptr %op, align 8, !dbg !363
  %add.ptr89 = getelementptr i8, ptr %48, i64 %47, !dbg !363
  store ptr %add.ptr89, ptr %op, align 8, !dbg !363
  %49 = load i64, ptr %length, align 8, !dbg !364
  %50 = load ptr, ptr %ip, align 8, !dbg !365
  %add.ptr90 = getelementptr i8, ptr %50, i64 %49, !dbg !365
  store ptr %add.ptr90, ptr %ip, align 8, !dbg !365
  %51 = load i32, ptr %token, align 4, !dbg !366
  %and91 = and i32 %51, 15, !dbg !367
  %conv92 = zext i32 %and91 to i64, !dbg !366
  store i64 %conv92, ptr %length, align 8, !dbg !368
  %52 = load ptr, ptr %ip, align 8, !dbg !369
  %call = call zeroext i16 @LZ4_readLE16(ptr noundef %52) #7, !dbg !370
  %conv93 = zext i16 %call to i64, !dbg !370
  store i64 %conv93, ptr %offset, align 8, !dbg !371
  %53 = load ptr, ptr %ip, align 8, !dbg !372
  %add.ptr94 = getelementptr i8, ptr %53, i64 2, !dbg !372
  store ptr %add.ptr94, ptr %ip, align 8, !dbg !372
  %54 = load ptr, ptr %op, align 8, !dbg !373
  %55 = load i64, ptr %offset, align 8, !dbg !374
  %idx.neg95 = sub i64 0, %55, !dbg !375
  %add.ptr96 = getelementptr i8, ptr %54, i64 %idx.neg95, !dbg !375
  store ptr %add.ptr96, ptr %match, align 8, !dbg !376
  %56 = load i64, ptr %length, align 8, !dbg !377
  %cmp97 = icmp ne i64 %56, 15, !dbg !379
  br i1 %cmp97, label %land.lhs.true99, label %if.end115, !dbg !380

land.lhs.true99:                                  ; preds = %if.then85
  %57 = load i64, ptr %offset, align 8, !dbg !381
  %cmp100 = icmp uge i64 %57, 8, !dbg !382
  br i1 %cmp100, label %land.lhs.true102, label %if.end115, !dbg !383

land.lhs.true102:                                 ; preds = %land.lhs.true99
  %58 = load i32, ptr %dict.addr, align 4, !dbg !384
  %cmp103 = icmp eq i32 %58, 1, !dbg !385
  br i1 %cmp103, label %if.then107, label %lor.lhs.false, !dbg !386

lor.lhs.false:                                    ; preds = %land.lhs.true102
  %59 = load ptr, ptr %match, align 8, !dbg !387
  %60 = load ptr, ptr %lowPrefix.addr, align 8, !dbg !388
  %cmp105 = icmp uge ptr %59, %60, !dbg !389
  br i1 %cmp105, label %if.then107, label %if.end115, !dbg !390

if.then107:                                       ; preds = %lor.lhs.false, %land.lhs.true102
  %61 = load ptr, ptr %op, align 8, !dbg !391
  %add.ptr108 = getelementptr i8, ptr %61, i64 0, !dbg !391
  %62 = load ptr, ptr %match, align 8, !dbg !391
  %add.ptr109 = getelementptr i8, ptr %62, i64 0, !dbg !391
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr108, ptr align 1 %add.ptr109, i64 8, i1 false), !dbg !391
  %63 = load ptr, ptr %op, align 8, !dbg !393
  %add.ptr110 = getelementptr i8, ptr %63, i64 8, !dbg !393
  %64 = load ptr, ptr %match, align 8, !dbg !393
  %add.ptr111 = getelementptr i8, ptr %64, i64 8, !dbg !393
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr110, ptr align 1 %add.ptr111, i64 8, i1 false), !dbg !393
  %65 = load ptr, ptr %op, align 8, !dbg !394
  %add.ptr112 = getelementptr i8, ptr %65, i64 16, !dbg !394
  %66 = load ptr, ptr %match, align 8, !dbg !394
  %add.ptr113 = getelementptr i8, ptr %66, i64 16, !dbg !394
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr112, ptr align 1 %add.ptr113, i64 2, i1 false), !dbg !394
  %67 = load i64, ptr %length, align 8, !dbg !395
  %add = add i64 %67, 4, !dbg !396
  %68 = load ptr, ptr %op, align 8, !dbg !397
  %add.ptr114 = getelementptr i8, ptr %68, i64 %add, !dbg !397
  store ptr %add.ptr114, ptr %op, align 8, !dbg !397
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup500, !dbg !398, !llvm.loop !399

if.end115:                                        ; preds = %lor.lhs.false, %land.lhs.true99, %if.then85
  br label %_copy_match, !dbg !402

if.end116:                                        ; preds = %cond.end, %cond.false, %cond.true
  %69 = load i64, ptr %length, align 8, !dbg !403
  %cmp117 = icmp eq i64 %69, 15, !dbg !404
  br i1 %cmp117, label %if.then119, label %if.end190, !dbg !405

if.then119:                                       ; preds = %if.end116
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #8, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %s, metadata !181, metadata !DIExpression()), !dbg !407
  %70 = load i32, ptr %endOnInput.addr, align 4, !dbg !408
  %tobool120 = icmp ne i32 %70, 0, !dbg !408
  br i1 %tobool120, label %cond.true121, label %cond.false125, !dbg !408

cond.true121:                                     ; preds = %if.then119
  %71 = load ptr, ptr %ip, align 8, !dbg !408
  %72 = load ptr, ptr %iend, align 8, !dbg !408
  %add.ptr122 = getelementptr i8, ptr %72, i64 -15, !dbg !408
  %cmp123 = icmp uge ptr %71, %add.ptr122, !dbg !408
  %conv124 = zext i1 %cmp123 to i32, !dbg !408
  br label %cond.end126, !dbg !408

cond.false125:                                    ; preds = %if.then119
  br label %cond.end126, !dbg !408

cond.end126:                                      ; preds = %cond.false125, %cond.true121
  %cond127 = phi i32 [ %conv124, %cond.true121 ], [ 0, %cond.false125 ], !dbg !408
  %tobool128 = icmp ne i32 %cond127, 0, !dbg !408
  %lnot129 = xor i1 %tobool128, true, !dbg !408
  %lnot131 = xor i1 %lnot129, true, !dbg !408
  %lnot.ext132 = zext i1 %lnot131 to i32, !dbg !408
  %conv133 = sext i32 %lnot.ext132 to i64, !dbg !408
  %expval134 = call i64 @llvm.expect.i64(i64 %conv133, i64 0), !dbg !408
  %tobool135 = icmp ne i64 %expval134, 0, !dbg !408
  br i1 %tobool135, label %if.then136, label %if.end137, !dbg !410

if.then136:                                       ; preds = %cond.end126
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !411

if.end137:                                        ; preds = %cond.end126
  br label %do.body, !dbg !413

do.body:                                          ; preds = %cond.end148, %if.end137
  %73 = load ptr, ptr %ip, align 8, !dbg !414
  %incdec.ptr138 = getelementptr i8, ptr %73, i32 1, !dbg !414
  store ptr %incdec.ptr138, ptr %ip, align 8, !dbg !414
  %74 = load i8, ptr %73, align 1, !dbg !416
  %conv139 = zext i8 %74 to i32, !dbg !416
  store i32 %conv139, ptr %s, align 4, !dbg !417
  %75 = load i32, ptr %s, align 4, !dbg !418
  %conv140 = zext i32 %75 to i64, !dbg !418
  %76 = load i64, ptr %length, align 8, !dbg !419
  %add141 = add i64 %76, %conv140, !dbg !419
  store i64 %add141, ptr %length, align 8, !dbg !419
  br label %do.cond, !dbg !420

do.cond:                                          ; preds = %do.body
  %77 = load i32, ptr %endOnInput.addr, align 4, !dbg !421
  %tobool142 = icmp ne i32 %77, 0, !dbg !421
  br i1 %tobool142, label %cond.true143, label %cond.false147, !dbg !421

cond.true143:                                     ; preds = %do.cond
  %78 = load ptr, ptr %ip, align 8, !dbg !421
  %79 = load ptr, ptr %iend, align 8, !dbg !421
  %add.ptr144 = getelementptr i8, ptr %79, i64 -15, !dbg !421
  %cmp145 = icmp ult ptr %78, %add.ptr144, !dbg !421
  %conv146 = zext i1 %cmp145 to i32, !dbg !421
  br label %cond.end148, !dbg !421

cond.false147:                                    ; preds = %do.cond
  br label %cond.end148, !dbg !421

cond.end148:                                      ; preds = %cond.false147, %cond.true143
  %cond149 = phi i32 [ %conv146, %cond.true143 ], [ 1, %cond.false147 ], !dbg !421
  %tobool150 = icmp ne i32 %cond149, 0, !dbg !421
  %lnot151 = xor i1 %tobool150, true, !dbg !421
  %lnot153 = xor i1 %lnot151, true, !dbg !421
  %lnot.ext154 = zext i1 %lnot153 to i32, !dbg !421
  %conv155 = sext i32 %lnot.ext154 to i64, !dbg !421
  %expval156 = call i64 @llvm.expect.i64(i64 %conv155, i64 1), !dbg !421
  %80 = load i32, ptr %s, align 4, !dbg !422
  %cmp157 = icmp eq i32 %80, 255, !dbg !423
  %conv158 = zext i1 %cmp157 to i32, !dbg !423
  %conv159 = sext i32 %conv158 to i64, !dbg !424
  %and160 = and i64 %expval156, %conv159, !dbg !425
  %tobool161 = icmp ne i64 %and160, 0, !dbg !420
  br i1 %tobool161, label %do.body, label %do.end, !dbg !420, !llvm.loop !426

do.end:                                           ; preds = %cond.end148
  %81 = load i32, ptr %safeDecode, align 4, !dbg !429
  %tobool162 = icmp ne i32 %81, 0, !dbg !431
  br i1 %tobool162, label %land.lhs.true163, label %if.end175, !dbg !432

land.lhs.true163:                                 ; preds = %do.end
  %82 = load ptr, ptr %op, align 8, !dbg !433
  %83 = ptrtoint ptr %82 to i64, !dbg !433
  %84 = load i64, ptr %length, align 8, !dbg !433
  %add164 = add i64 %83, %84, !dbg !433
  %85 = load ptr, ptr %op, align 8, !dbg !433
  %86 = ptrtoint ptr %85 to i64, !dbg !433
  %cmp165 = icmp ult i64 %add164, %86, !dbg !433
  %lnot167 = xor i1 %cmp165, true, !dbg !433
  %lnot169 = xor i1 %lnot167, true, !dbg !433
  %lnot.ext170 = zext i1 %lnot169 to i32, !dbg !433
  %conv171 = sext i32 %lnot.ext170 to i64, !dbg !433
  %expval172 = call i64 @llvm.expect.i64(i64 %conv171, i64 0), !dbg !433
  %tobool173 = icmp ne i64 %expval172, 0, !dbg !433
  br i1 %tobool173, label %if.then174, label %if.end175, !dbg !434

if.then174:                                       ; preds = %land.lhs.true163
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !435

if.end175:                                        ; preds = %land.lhs.true163, %do.end
  %87 = load i32, ptr %safeDecode, align 4, !dbg !437
  %tobool176 = icmp ne i32 %87, 0, !dbg !439
  br i1 %tobool176, label %land.lhs.true177, label %if.end189, !dbg !440

land.lhs.true177:                                 ; preds = %if.end175
  %88 = load ptr, ptr %ip, align 8, !dbg !441
  %89 = ptrtoint ptr %88 to i64, !dbg !441
  %90 = load i64, ptr %length, align 8, !dbg !441
  %add178 = add i64 %89, %90, !dbg !441
  %91 = load ptr, ptr %ip, align 8, !dbg !441
  %92 = ptrtoint ptr %91 to i64, !dbg !441
  %cmp179 = icmp ult i64 %add178, %92, !dbg !441
  %lnot181 = xor i1 %cmp179, true, !dbg !441
  %lnot183 = xor i1 %lnot181, true, !dbg !441
  %lnot.ext184 = zext i1 %lnot183 to i32, !dbg !441
  %conv185 = sext i32 %lnot.ext184 to i64, !dbg !441
  %expval186 = call i64 @llvm.expect.i64(i64 %conv185, i64 0), !dbg !441
  %tobool187 = icmp ne i64 %expval186, 0, !dbg !441
  br i1 %tobool187, label %if.then188, label %if.end189, !dbg !442

if.then188:                                       ; preds = %land.lhs.true177
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !443

if.end189:                                        ; preds = %land.lhs.true177, %if.end175
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !445
  br label %cleanup, !dbg !445

cleanup:                                          ; preds = %if.then188, %if.then174, %if.then136, %if.end189
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #8, !dbg !445
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup500 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end190, !dbg !446

if.end190:                                        ; preds = %cleanup.cont, %if.end116
  %93 = load ptr, ptr %op, align 8, !dbg !447
  %94 = load i64, ptr %length, align 8, !dbg !448
  %add.ptr191 = getelementptr i8, ptr %93, i64 %94, !dbg !449
  store ptr %add.ptr191, ptr %cpy, align 8, !dbg !450
  br label %do.body192, !dbg !451

do.body192:                                       ; preds = %if.end190
  br label %do.cond193, !dbg !452

do.cond193:                                       ; preds = %do.body192
  br label %do.end194, !dbg !452

do.end194:                                        ; preds = %do.cond193
  %95 = load i32, ptr %endOnInput.addr, align 4, !dbg !454
  %tobool195 = icmp ne i32 %95, 0, !dbg !456
  br i1 %tobool195, label %land.lhs.true196, label %lor.lhs.false205, !dbg !457

land.lhs.true196:                                 ; preds = %do.end194
  %96 = load ptr, ptr %cpy, align 8, !dbg !458
  %97 = load ptr, ptr %oend, align 8, !dbg !459
  %add.ptr197 = getelementptr i8, ptr %97, i64 -12, !dbg !460
  %cmp198 = icmp ugt ptr %96, %add.ptr197, !dbg !461
  br i1 %cmp198, label %if.then211, label %lor.lhs.false200, !dbg !462

lor.lhs.false200:                                 ; preds = %land.lhs.true196
  %98 = load ptr, ptr %ip, align 8, !dbg !463
  %99 = load i64, ptr %length, align 8, !dbg !464
  %add.ptr201 = getelementptr i8, ptr %98, i64 %99, !dbg !465
  %100 = load ptr, ptr %iend, align 8, !dbg !466
  %add.ptr202 = getelementptr i8, ptr %100, i64 -8, !dbg !467
  %cmp203 = icmp ugt ptr %add.ptr201, %add.ptr202, !dbg !468
  br i1 %cmp203, label %if.then211, label %lor.lhs.false205, !dbg !469

lor.lhs.false205:                                 ; preds = %lor.lhs.false200, %do.end194
  %101 = load i32, ptr %endOnInput.addr, align 4, !dbg !470
  %tobool206 = icmp ne i32 %101, 0, !dbg !470
  br i1 %tobool206, label %if.else254, label %land.lhs.true207, !dbg !471

land.lhs.true207:                                 ; preds = %lor.lhs.false205
  %102 = load ptr, ptr %cpy, align 8, !dbg !472
  %103 = load ptr, ptr %oend, align 8, !dbg !473
  %add.ptr208 = getelementptr i8, ptr %103, i64 -8, !dbg !474
  %cmp209 = icmp ugt ptr %102, %add.ptr208, !dbg !475
  br i1 %cmp209, label %if.then211, label %if.else254, !dbg !476

if.then211:                                       ; preds = %land.lhs.true207, %lor.lhs.false200, %land.lhs.true196
  %104 = load i32, ptr %partialDecoding.addr, align 4, !dbg !477
  %tobool212 = icmp ne i32 %104, 0, !dbg !477
  br i1 %tobool212, label %if.then213, label %if.else, !dbg !480

if.then213:                                       ; preds = %if.then211
  %105 = load ptr, ptr %cpy, align 8, !dbg !481
  %106 = load ptr, ptr %oend, align 8, !dbg !484
  %cmp214 = icmp ugt ptr %105, %106, !dbg !485
  br i1 %cmp214, label %if.then216, label %if.end217, !dbg !486

if.then216:                                       ; preds = %if.then213
  %107 = load ptr, ptr %oend, align 8, !dbg !487
  store ptr %107, ptr %cpy, align 8, !dbg !489
  %108 = load ptr, ptr %oend, align 8, !dbg !490
  %109 = load ptr, ptr %op, align 8, !dbg !491
  %sub.ptr.lhs.cast = ptrtoint ptr %108 to i64, !dbg !492
  %sub.ptr.rhs.cast = ptrtoint ptr %109 to i64, !dbg !492
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !492
  store i64 %sub.ptr.sub, ptr %length, align 8, !dbg !493
  br label %if.end217, !dbg !494

if.end217:                                        ; preds = %if.then216, %if.then213
  %110 = load i32, ptr %endOnInput.addr, align 4, !dbg !495
  %tobool218 = icmp ne i32 %110, 0, !dbg !497
  br i1 %tobool218, label %land.lhs.true219, label %if.end224, !dbg !498

land.lhs.true219:                                 ; preds = %if.end217
  %111 = load ptr, ptr %ip, align 8, !dbg !499
  %112 = load i64, ptr %length, align 8, !dbg !500
  %add.ptr220 = getelementptr i8, ptr %111, i64 %112, !dbg !501
  %113 = load ptr, ptr %iend, align 8, !dbg !502
  %cmp221 = icmp ugt ptr %add.ptr220, %113, !dbg !503
  br i1 %cmp221, label %if.then223, label %if.end224, !dbg !504

if.then223:                                       ; preds = %land.lhs.true219
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup500, !dbg !505

if.end224:                                        ; preds = %land.lhs.true219, %if.end217
  br label %if.end241, !dbg !507

if.else:                                          ; preds = %if.then211
  %114 = load i32, ptr %endOnInput.addr, align 4, !dbg !508
  %tobool225 = icmp ne i32 %114, 0, !dbg !508
  br i1 %tobool225, label %if.end230, label %land.lhs.true226, !dbg !511

land.lhs.true226:                                 ; preds = %if.else
  %115 = load ptr, ptr %cpy, align 8, !dbg !512
  %116 = load ptr, ptr %oend, align 8, !dbg !513
  %cmp227 = icmp ne ptr %115, %116, !dbg !514
  br i1 %cmp227, label %if.then229, label %if.end230, !dbg !515

if.then229:                                       ; preds = %land.lhs.true226
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup500, !dbg !516

if.end230:                                        ; preds = %land.lhs.true226, %if.else
  %117 = load i32, ptr %endOnInput.addr, align 4, !dbg !518
  %tobool231 = icmp ne i32 %117, 0, !dbg !520
  br i1 %tobool231, label %land.lhs.true232, label %if.end240, !dbg !521

land.lhs.true232:                                 ; preds = %if.end230
  %118 = load ptr, ptr %ip, align 8, !dbg !522
  %119 = load i64, ptr %length, align 8, !dbg !523
  %add.ptr233 = getelementptr i8, ptr %118, i64 %119, !dbg !524
  %120 = load ptr, ptr %iend, align 8, !dbg !525
  %cmp234 = icmp ne ptr %add.ptr233, %120, !dbg !526
  br i1 %cmp234, label %if.then239, label %lor.lhs.false236, !dbg !527

lor.lhs.false236:                                 ; preds = %land.lhs.true232
  %121 = load ptr, ptr %cpy, align 8, !dbg !528
  %122 = load ptr, ptr %oend, align 8, !dbg !529
  %cmp237 = icmp ugt ptr %121, %122, !dbg !530
  br i1 %cmp237, label %if.then239, label %if.end240, !dbg !531

if.then239:                                       ; preds = %lor.lhs.false236, %land.lhs.true232
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup500, !dbg !532

if.end240:                                        ; preds = %lor.lhs.false236, %if.end230
  br label %if.end241

if.end241:                                        ; preds = %if.end240, %if.end224
  %123 = load ptr, ptr %op, align 8, !dbg !534
  %124 = load ptr, ptr %ip, align 8, !dbg !534
  %125 = load i64, ptr %length, align 8, !dbg !534
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %123, ptr align 1 %124, i64 %125, i1 false), !dbg !534
  %126 = load i64, ptr %length, align 8, !dbg !535
  %127 = load ptr, ptr %ip, align 8, !dbg !536
  %add.ptr242 = getelementptr i8, ptr %127, i64 %126, !dbg !536
  store ptr %add.ptr242, ptr %ip, align 8, !dbg !536
  %128 = load i64, ptr %length, align 8, !dbg !537
  %129 = load ptr, ptr %op, align 8, !dbg !538
  %add.ptr243 = getelementptr i8, ptr %129, i64 %128, !dbg !538
  store ptr %add.ptr243, ptr %op, align 8, !dbg !538
  %130 = load i32, ptr %partialDecoding.addr, align 4, !dbg !539
  %tobool244 = icmp ne i32 %130, 0, !dbg !539
  br i1 %tobool244, label %lor.lhs.false245, label %if.then252, !dbg !541

lor.lhs.false245:                                 ; preds = %if.end241
  %131 = load ptr, ptr %cpy, align 8, !dbg !542
  %132 = load ptr, ptr %oend, align 8, !dbg !543
  %cmp246 = icmp eq ptr %131, %132, !dbg !544
  br i1 %cmp246, label %if.then252, label %lor.lhs.false248, !dbg !545

lor.lhs.false248:                                 ; preds = %lor.lhs.false245
  %133 = load ptr, ptr %ip, align 8, !dbg !546
  %134 = load ptr, ptr %iend, align 8, !dbg !547
  %add.ptr249 = getelementptr i8, ptr %134, i64 -2, !dbg !548
  %cmp250 = icmp uge ptr %133, %add.ptr249, !dbg !549
  br i1 %cmp250, label %if.then252, label %if.end253, !dbg !550

if.then252:                                       ; preds = %lor.lhs.false248, %lor.lhs.false245, %if.end241
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup500, !dbg !551

if.end253:                                        ; preds = %lor.lhs.false248
  br label %if.end256, !dbg !552

if.else254:                                       ; preds = %land.lhs.true207, %lor.lhs.false205
  %135 = load ptr, ptr %op, align 8, !dbg !553
  %136 = load ptr, ptr %ip, align 8, !dbg !555
  %137 = load ptr, ptr %cpy, align 8, !dbg !556
  call void @LZ4_wildCopy(ptr noundef %135, ptr noundef %136, ptr noundef %137) #7, !dbg !557
  %138 = load i64, ptr %length, align 8, !dbg !558
  %139 = load ptr, ptr %ip, align 8, !dbg !559
  %add.ptr255 = getelementptr i8, ptr %139, i64 %138, !dbg !559
  store ptr %add.ptr255, ptr %ip, align 8, !dbg !559
  %140 = load ptr, ptr %cpy, align 8, !dbg !560
  store ptr %140, ptr %op, align 8, !dbg !561
  br label %if.end256

if.end256:                                        ; preds = %if.else254, %if.end253
  %141 = load ptr, ptr %ip, align 8, !dbg !562
  %call257 = call zeroext i16 @LZ4_readLE16(ptr noundef %141) #7, !dbg !563
  %conv258 = zext i16 %call257 to i64, !dbg !563
  store i64 %conv258, ptr %offset, align 8, !dbg !564
  %142 = load ptr, ptr %ip, align 8, !dbg !565
  %add.ptr259 = getelementptr i8, ptr %142, i64 2, !dbg !565
  store ptr %add.ptr259, ptr %ip, align 8, !dbg !565
  %143 = load ptr, ptr %op, align 8, !dbg !566
  %144 = load i64, ptr %offset, align 8, !dbg !567
  %idx.neg260 = sub i64 0, %144, !dbg !568
  %add.ptr261 = getelementptr i8, ptr %143, i64 %idx.neg260, !dbg !568
  store ptr %add.ptr261, ptr %match, align 8, !dbg !569
  %145 = load i32, ptr %token, align 4, !dbg !570
  %and262 = and i32 %145, 15, !dbg !571
  %conv263 = zext i32 %and262 to i64, !dbg !570
  store i64 %conv263, ptr %length, align 8, !dbg !572
  br label %_copy_match, !dbg !573

_copy_match:                                      ; preds = %if.end256, %if.end115
  call void @llvm.dbg.label(metadata !184), !dbg !574
  %146 = load i32, ptr %checkOffset, align 4, !dbg !575
  %tobool264 = icmp ne i32 %146, 0, !dbg !577
  br i1 %tobool264, label %land.lhs.true265, label %if.end277, !dbg !578

land.lhs.true265:                                 ; preds = %_copy_match
  %147 = load ptr, ptr %match, align 8, !dbg !579
  %148 = load i64, ptr %dictSize.addr, align 8, !dbg !579
  %add.ptr266 = getelementptr i8, ptr %147, i64 %148, !dbg !579
  %149 = load ptr, ptr %lowPrefix.addr, align 8, !dbg !579
  %cmp267 = icmp ult ptr %add.ptr266, %149, !dbg !579
  %lnot269 = xor i1 %cmp267, true, !dbg !579
  %lnot271 = xor i1 %lnot269, true, !dbg !579
  %lnot.ext272 = zext i1 %lnot271 to i32, !dbg !579
  %conv273 = sext i32 %lnot.ext272 to i64, !dbg !579
  %expval274 = call i64 @llvm.expect.i64(i64 %conv273, i64 0), !dbg !579
  %tobool275 = icmp ne i64 %expval274, 0, !dbg !579
  br i1 %tobool275, label %if.then276, label %if.end277, !dbg !580

if.then276:                                       ; preds = %land.lhs.true265
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup500, !dbg !581

if.end277:                                        ; preds = %land.lhs.true265, %_copy_match
  %150 = load i32, ptr %partialDecoding.addr, align 4, !dbg !583
  %tobool278 = icmp ne i32 %150, 0, !dbg !583
  br i1 %tobool278, label %if.end281, label %if.then279, !dbg !585

if.then279:                                       ; preds = %if.end277
  %151 = load ptr, ptr %op, align 8, !dbg !586
  %152 = load i64, ptr %offset, align 8, !dbg !588
  %conv280 = trunc i64 %152 to i32, !dbg !589
  call void @LZ4_write32(ptr noundef %151, i32 noundef %conv280) #7, !dbg !590
  br label %if.end281, !dbg !591

if.end281:                                        ; preds = %if.then279, %if.end277
  %153 = load i64, ptr %length, align 8, !dbg !592
  %cmp282 = icmp eq i64 %153, 15, !dbg !593
  br i1 %cmp282, label %if.then284, label %if.end319, !dbg !594

if.then284:                                       ; preds = %if.end281
  call void @llvm.lifetime.start.p0(i64 4, ptr %s285) #8, !dbg !595
  call void @llvm.dbg.declare(metadata ptr %s285, metadata !185, metadata !DIExpression()), !dbg !596
  br label %do.body286, !dbg !597

do.body286:                                       ; preds = %do.cond298, %if.then284
  %154 = load ptr, ptr %ip, align 8, !dbg !598
  %incdec.ptr287 = getelementptr i8, ptr %154, i32 1, !dbg !598
  store ptr %incdec.ptr287, ptr %ip, align 8, !dbg !598
  %155 = load i8, ptr %154, align 1, !dbg !600
  %conv288 = zext i8 %155 to i32, !dbg !600
  store i32 %conv288, ptr %s285, align 4, !dbg !601
  %156 = load i32, ptr %endOnInput.addr, align 4, !dbg !602
  %tobool289 = icmp ne i32 %156, 0, !dbg !604
  br i1 %tobool289, label %land.lhs.true290, label %if.end295, !dbg !605

land.lhs.true290:                                 ; preds = %do.body286
  %157 = load ptr, ptr %ip, align 8, !dbg !606
  %158 = load ptr, ptr %iend, align 8, !dbg !607
  %add.ptr291 = getelementptr i8, ptr %158, i64 -5, !dbg !608
  %cmp292 = icmp ugt ptr %157, %add.ptr291, !dbg !609
  br i1 %cmp292, label %if.then294, label %if.end295, !dbg !610

if.then294:                                       ; preds = %land.lhs.true290
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup316, !dbg !611

if.end295:                                        ; preds = %land.lhs.true290, %do.body286
  %159 = load i32, ptr %s285, align 4, !dbg !612
  %conv296 = zext i32 %159 to i64, !dbg !612
  %160 = load i64, ptr %length, align 8, !dbg !613
  %add297 = add i64 %160, %conv296, !dbg !613
  store i64 %add297, ptr %length, align 8, !dbg !613
  br label %do.cond298, !dbg !614

do.cond298:                                       ; preds = %if.end295
  %161 = load i32, ptr %s285, align 4, !dbg !615
  %cmp299 = icmp eq i32 %161, 255, !dbg !616
  br i1 %cmp299, label %do.body286, label %do.end301, !dbg !614, !llvm.loop !617

do.end301:                                        ; preds = %do.cond298
  %162 = load i32, ptr %safeDecode, align 4, !dbg !619
  %tobool302 = icmp ne i32 %162, 0, !dbg !621
  br i1 %tobool302, label %land.lhs.true303, label %if.end315, !dbg !622

land.lhs.true303:                                 ; preds = %do.end301
  %163 = load ptr, ptr %op, align 8, !dbg !623
  %164 = ptrtoint ptr %163 to i64, !dbg !623
  %165 = load i64, ptr %length, align 8, !dbg !623
  %add304 = add i64 %164, %165, !dbg !623
  %166 = load ptr, ptr %op, align 8, !dbg !623
  %167 = ptrtoint ptr %166 to i64, !dbg !623
  %cmp305 = icmp ult i64 %add304, %167, !dbg !623
  %lnot307 = xor i1 %cmp305, true, !dbg !623
  %lnot309 = xor i1 %lnot307, true, !dbg !623
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !623
  %conv311 = sext i32 %lnot.ext310 to i64, !dbg !623
  %expval312 = call i64 @llvm.expect.i64(i64 %conv311, i64 0), !dbg !623
  %tobool313 = icmp ne i64 %expval312, 0, !dbg !623
  br i1 %tobool313, label %if.then314, label %if.end315, !dbg !624

if.then314:                                       ; preds = %land.lhs.true303
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup316, !dbg !625

if.end315:                                        ; preds = %land.lhs.true303, %do.end301
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !627
  br label %cleanup316, !dbg !627

cleanup316:                                       ; preds = %if.then314, %if.then294, %if.end315
  call void @llvm.lifetime.end.p0(i64 4, ptr %s285) #8, !dbg !627
  %cleanup.dest317 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest317, label %cleanup500 [
    i32 0, label %cleanup.cont318
  ]

cleanup.cont318:                                  ; preds = %cleanup316
  br label %if.end319, !dbg !628

if.end319:                                        ; preds = %cleanup.cont318, %if.end281
  %168 = load i64, ptr %length, align 8, !dbg !629
  %add320 = add i64 %168, 4, !dbg !629
  store i64 %add320, ptr %length, align 8, !dbg !629
  %169 = load i32, ptr %dict.addr, align 4, !dbg !630
  %cmp321 = icmp eq i32 %169, 2, !dbg !631
  br i1 %cmp321, label %land.lhs.true323, label %if.end388, !dbg !632

land.lhs.true323:                                 ; preds = %if.end319
  %170 = load ptr, ptr %match, align 8, !dbg !633
  %171 = load ptr, ptr %lowPrefix.addr, align 8, !dbg !634
  %cmp324 = icmp ult ptr %170, %171, !dbg !635
  br i1 %cmp324, label %if.then326, label %if.end388, !dbg !636

if.then326:                                       ; preds = %land.lhs.true323
  %172 = load ptr, ptr %op, align 8, !dbg !637
  %173 = load i64, ptr %length, align 8, !dbg !637
  %add.ptr327 = getelementptr i8, ptr %172, i64 %173, !dbg !637
  %174 = load ptr, ptr %oend, align 8, !dbg !637
  %add.ptr328 = getelementptr i8, ptr %174, i64 -5, !dbg !637
  %cmp329 = icmp ugt ptr %add.ptr327, %add.ptr328, !dbg !637
  %lnot331 = xor i1 %cmp329, true, !dbg !637
  %lnot333 = xor i1 %lnot331, true, !dbg !637
  %lnot.ext334 = zext i1 %lnot333 to i32, !dbg !637
  %conv335 = sext i32 %lnot.ext334 to i64, !dbg !637
  %expval336 = call i64 @llvm.expect.i64(i64 %conv335, i64 0), !dbg !637
  %tobool337 = icmp ne i64 %expval336, 0, !dbg !637
  br i1 %tobool337, label %if.then338, label %if.end351, !dbg !638

if.then338:                                       ; preds = %if.then326
  %175 = load i32, ptr %partialDecoding.addr, align 4, !dbg !639
  %tobool339 = icmp ne i32 %175, 0, !dbg !639
  br i1 %tobool339, label %if.end341, label %if.then340, !dbg !641

if.then340:                                       ; preds = %if.then338
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup500, !dbg !642

if.end341:                                        ; preds = %if.then338
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x196) #8, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x196, metadata !188, metadata !DIExpression()), !dbg !643
  %176 = load i64, ptr %length, align 8, !dbg !643
  store i64 %176, ptr %__UNIQUE_ID___x196, align 8, !dbg !643
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y197) #8, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y197, metadata !194, metadata !DIExpression()), !dbg !643
  %177 = load ptr, ptr %oend, align 8, !dbg !643
  %178 = load ptr, ptr %op, align 8, !dbg !643
  %sub.ptr.lhs.cast342 = ptrtoint ptr %177 to i64, !dbg !643
  %sub.ptr.rhs.cast343 = ptrtoint ptr %178 to i64, !dbg !643
  %sub.ptr.sub344 = sub i64 %sub.ptr.lhs.cast342, %sub.ptr.rhs.cast343, !dbg !643
  store i64 %sub.ptr.sub344, ptr %__UNIQUE_ID___y197, align 8, !dbg !643
  %179 = load i64, ptr %__UNIQUE_ID___x196, align 8, !dbg !643
  %180 = load i64, ptr %__UNIQUE_ID___y197, align 8, !dbg !643
  %cmp345 = icmp ult i64 %179, %180, !dbg !643
  br i1 %cmp345, label %cond.true347, label %cond.false348, !dbg !643

cond.true347:                                     ; preds = %if.end341
  %181 = load i64, ptr %__UNIQUE_ID___x196, align 8, !dbg !643
  br label %cond.end349, !dbg !643

cond.false348:                                    ; preds = %if.end341
  %182 = load i64, ptr %__UNIQUE_ID___y197, align 8, !dbg !643
  br label %cond.end349, !dbg !643

cond.end349:                                      ; preds = %cond.false348, %cond.true347
  %cond350 = phi i64 [ %181, %cond.true347 ], [ %182, %cond.false348 ], !dbg !643
  store i64 %cond350, ptr %tmp, align 8, !dbg !643
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y197) #8, !dbg !644
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x196) #8, !dbg !644
  %183 = load i64, ptr %tmp, align 8, !dbg !643
  store i64 %183, ptr %length, align 8, !dbg !645
  br label %if.end351, !dbg !646

if.end351:                                        ; preds = %cond.end349, %if.then326
  %184 = load i64, ptr %length, align 8, !dbg !647
  %185 = load ptr, ptr %lowPrefix.addr, align 8, !dbg !648
  %186 = load ptr, ptr %match, align 8, !dbg !649
  %sub.ptr.lhs.cast352 = ptrtoint ptr %185 to i64, !dbg !650
  %sub.ptr.rhs.cast353 = ptrtoint ptr %186 to i64, !dbg !650
  %sub.ptr.sub354 = sub i64 %sub.ptr.lhs.cast352, %sub.ptr.rhs.cast353, !dbg !650
  %cmp355 = icmp ule i64 %184, %sub.ptr.sub354, !dbg !651
  br i1 %cmp355, label %if.then357, label %if.else364, !dbg !652

if.then357:                                       ; preds = %if.end351
  %187 = load ptr, ptr %op, align 8, !dbg !653
  %188 = load ptr, ptr %dictEnd, align 8, !dbg !655
  %189 = load ptr, ptr %lowPrefix.addr, align 8, !dbg !656
  %190 = load ptr, ptr %match, align 8, !dbg !657
  %sub.ptr.lhs.cast358 = ptrtoint ptr %189 to i64, !dbg !658
  %sub.ptr.rhs.cast359 = ptrtoint ptr %190 to i64, !dbg !658
  %sub.ptr.sub360 = sub i64 %sub.ptr.lhs.cast358, %sub.ptr.rhs.cast359, !dbg !658
  %idx.neg361 = sub i64 0, %sub.ptr.sub360, !dbg !659
  %add.ptr362 = getelementptr i8, ptr %188, i64 %idx.neg361, !dbg !659
  %191 = load i64, ptr %length, align 8, !dbg !660
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %187, ptr align 1 %add.ptr362, i64 %191, i1 false), !dbg !661
  %192 = load i64, ptr %length, align 8, !dbg !662
  %193 = load ptr, ptr %op, align 8, !dbg !663
  %add.ptr363 = getelementptr i8, ptr %193, i64 %192, !dbg !663
  store ptr %add.ptr363, ptr %op, align 8, !dbg !663
  br label %if.end387, !dbg !664

if.else364:                                       ; preds = %if.end351
  call void @llvm.lifetime.start.p0(i64 8, ptr %copySize) #8, !dbg !665
  call void @llvm.dbg.declare(metadata ptr %copySize, metadata !195, metadata !DIExpression()), !dbg !666
  %194 = load ptr, ptr %lowPrefix.addr, align 8, !dbg !667
  %195 = load ptr, ptr %match, align 8, !dbg !668
  %sub.ptr.lhs.cast365 = ptrtoint ptr %194 to i64, !dbg !669
  %sub.ptr.rhs.cast366 = ptrtoint ptr %195 to i64, !dbg !669
  %sub.ptr.sub367 = sub i64 %sub.ptr.lhs.cast365, %sub.ptr.rhs.cast366, !dbg !669
  store i64 %sub.ptr.sub367, ptr %copySize, align 8, !dbg !666
  call void @llvm.lifetime.start.p0(i64 8, ptr %restSize) #8, !dbg !670
  call void @llvm.dbg.declare(metadata ptr %restSize, metadata !198, metadata !DIExpression()), !dbg !671
  %196 = load i64, ptr %length, align 8, !dbg !672
  %197 = load i64, ptr %copySize, align 8, !dbg !673
  %sub = sub i64 %196, %197, !dbg !674
  store i64 %sub, ptr %restSize, align 8, !dbg !671
  %198 = load ptr, ptr %op, align 8, !dbg !675
  %199 = load ptr, ptr %dictEnd, align 8, !dbg !675
  %200 = load i64, ptr %copySize, align 8, !dbg !675
  %idx.neg368 = sub i64 0, %200, !dbg !675
  %add.ptr369 = getelementptr i8, ptr %199, i64 %idx.neg368, !dbg !675
  %201 = load i64, ptr %copySize, align 8, !dbg !675
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %198, ptr align 1 %add.ptr369, i64 %201, i1 false), !dbg !675
  %202 = load i64, ptr %copySize, align 8, !dbg !676
  %203 = load ptr, ptr %op, align 8, !dbg !677
  %add.ptr370 = getelementptr i8, ptr %203, i64 %202, !dbg !677
  store ptr %add.ptr370, ptr %op, align 8, !dbg !677
  %204 = load i64, ptr %restSize, align 8, !dbg !678
  %205 = load ptr, ptr %op, align 8, !dbg !679
  %206 = load ptr, ptr %lowPrefix.addr, align 8, !dbg !680
  %sub.ptr.lhs.cast371 = ptrtoint ptr %205 to i64, !dbg !681
  %sub.ptr.rhs.cast372 = ptrtoint ptr %206 to i64, !dbg !681
  %sub.ptr.sub373 = sub i64 %sub.ptr.lhs.cast371, %sub.ptr.rhs.cast372, !dbg !681
  %cmp374 = icmp ugt i64 %204, %sub.ptr.sub373, !dbg !682
  br i1 %cmp374, label %if.then376, label %if.else384, !dbg !683

if.then376:                                       ; preds = %if.else364
  call void @llvm.lifetime.start.p0(i64 8, ptr %endOfMatch) #8, !dbg !684
  call void @llvm.dbg.declare(metadata ptr %endOfMatch, metadata !199, metadata !DIExpression()), !dbg !685
  %207 = load ptr, ptr %op, align 8, !dbg !686
  %208 = load i64, ptr %restSize, align 8, !dbg !687
  %add.ptr377 = getelementptr i8, ptr %207, i64 %208, !dbg !688
  store ptr %add.ptr377, ptr %endOfMatch, align 8, !dbg !685
  call void @llvm.lifetime.start.p0(i64 8, ptr %copyFrom) #8, !dbg !689
  call void @llvm.dbg.declare(metadata ptr %copyFrom, metadata !202, metadata !DIExpression()), !dbg !690
  %209 = load ptr, ptr %lowPrefix.addr, align 8, !dbg !691
  store ptr %209, ptr %copyFrom, align 8, !dbg !690
  br label %while.cond378, !dbg !692

while.cond378:                                    ; preds = %while.body381, %if.then376
  %210 = load ptr, ptr %op, align 8, !dbg !693
  %211 = load ptr, ptr %endOfMatch, align 8, !dbg !694
  %cmp379 = icmp ult ptr %210, %211, !dbg !695
  br i1 %cmp379, label %while.body381, label %while.end, !dbg !692

while.body381:                                    ; preds = %while.cond378
  %212 = load ptr, ptr %copyFrom, align 8, !dbg !696
  %incdec.ptr382 = getelementptr i8, ptr %212, i32 1, !dbg !696
  store ptr %incdec.ptr382, ptr %copyFrom, align 8, !dbg !696
  %213 = load i8, ptr %212, align 1, !dbg !697
  %214 = load ptr, ptr %op, align 8, !dbg !698
  %incdec.ptr383 = getelementptr i8, ptr %214, i32 1, !dbg !698
  store ptr %incdec.ptr383, ptr %op, align 8, !dbg !698
  store i8 %213, ptr %214, align 1, !dbg !699
  br label %while.cond378, !dbg !692, !llvm.loop !700

while.end:                                        ; preds = %while.cond378
  call void @llvm.lifetime.end.p0(i64 8, ptr %copyFrom) #8, !dbg !701
  call void @llvm.lifetime.end.p0(i64 8, ptr %endOfMatch) #8, !dbg !701
  br label %if.end386, !dbg !702

if.else384:                                       ; preds = %if.else364
  %215 = load ptr, ptr %op, align 8, !dbg !703
  %216 = load ptr, ptr %lowPrefix.addr, align 8, !dbg !703
  %217 = load i64, ptr %restSize, align 8, !dbg !703
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %215, ptr align 1 %216, i64 %217, i1 false), !dbg !703
  %218 = load i64, ptr %restSize, align 8, !dbg !705
  %219 = load ptr, ptr %op, align 8, !dbg !706
  %add.ptr385 = getelementptr i8, ptr %219, i64 %218, !dbg !706
  store ptr %add.ptr385, ptr %op, align 8, !dbg !706
  br label %if.end386

if.end386:                                        ; preds = %if.else384, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %restSize) #8, !dbg !707
  call void @llvm.lifetime.end.p0(i64 8, ptr %copySize) #8, !dbg !707
  br label %if.end387

if.end387:                                        ; preds = %if.end386, %if.then357
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup500, !dbg !708, !llvm.loop !399

if.end388:                                        ; preds = %land.lhs.true323, %if.end319
  %220 = load ptr, ptr %op, align 8, !dbg !709
  %221 = load i64, ptr %length, align 8, !dbg !710
  %add.ptr389 = getelementptr i8, ptr %220, i64 %221, !dbg !711
  store ptr %add.ptr389, ptr %cpy, align 8, !dbg !712
  %222 = load i32, ptr %partialDecoding.addr, align 4, !dbg !713
  %tobool390 = icmp ne i32 %222, 0, !dbg !713
  br i1 %tobool390, label %land.lhs.true391, label %if.end427, !dbg !714

land.lhs.true391:                                 ; preds = %if.end388
  %223 = load ptr, ptr %cpy, align 8, !dbg !715
  %224 = load ptr, ptr %oend, align 8, !dbg !716
  %add.ptr392 = getelementptr i8, ptr %224, i64 -12, !dbg !717
  %cmp393 = icmp ugt ptr %223, %add.ptr392, !dbg !718
  br i1 %cmp393, label %if.then395, label %if.end427, !dbg !719

if.then395:                                       ; preds = %land.lhs.true391
  call void @llvm.lifetime.start.p0(i64 8, ptr %mlen) #8, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %mlen, metadata !203, metadata !DIExpression()), !dbg !721
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x198) #8, !dbg !722
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x198, metadata !206, metadata !DIExpression()), !dbg !722
  %225 = load i64, ptr %length, align 8, !dbg !722
  store i64 %225, ptr %__UNIQUE_ID___x198, align 8, !dbg !722
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y199) #8, !dbg !722
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y199, metadata !208, metadata !DIExpression()), !dbg !722
  %226 = load ptr, ptr %oend, align 8, !dbg !722
  %227 = load ptr, ptr %op, align 8, !dbg !722
  %sub.ptr.lhs.cast396 = ptrtoint ptr %226 to i64, !dbg !722
  %sub.ptr.rhs.cast397 = ptrtoint ptr %227 to i64, !dbg !722
  %sub.ptr.sub398 = sub i64 %sub.ptr.lhs.cast396, %sub.ptr.rhs.cast397, !dbg !722
  store i64 %sub.ptr.sub398, ptr %__UNIQUE_ID___y199, align 8, !dbg !722
  %228 = load i64, ptr %__UNIQUE_ID___x198, align 8, !dbg !722
  %229 = load i64, ptr %__UNIQUE_ID___y199, align 8, !dbg !722
  %cmp400 = icmp ult i64 %228, %229, !dbg !722
  br i1 %cmp400, label %cond.true402, label %cond.false403, !dbg !722

cond.true402:                                     ; preds = %if.then395
  %230 = load i64, ptr %__UNIQUE_ID___x198, align 8, !dbg !722
  br label %cond.end404, !dbg !722

cond.false403:                                    ; preds = %if.then395
  %231 = load i64, ptr %__UNIQUE_ID___y199, align 8, !dbg !722
  br label %cond.end404, !dbg !722

cond.end404:                                      ; preds = %cond.false403, %cond.true402
  %cond405 = phi i64 [ %230, %cond.true402 ], [ %231, %cond.false403 ], !dbg !722
  store i64 %cond405, ptr %tmp399, align 8, !dbg !722
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y199) #8, !dbg !723
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x198) #8, !dbg !723
  %232 = load i64, ptr %tmp399, align 8, !dbg !722
  store i64 %232, ptr %mlen, align 8, !dbg !721
  call void @llvm.lifetime.start.p0(i64 8, ptr %matchEnd) #8, !dbg !724
  call void @llvm.dbg.declare(metadata ptr %matchEnd, metadata !209, metadata !DIExpression()), !dbg !725
  %233 = load ptr, ptr %match, align 8, !dbg !726
  %234 = load i64, ptr %mlen, align 8, !dbg !727
  %add.ptr406 = getelementptr i8, ptr %233, i64 %234, !dbg !728
  store ptr %add.ptr406, ptr %matchEnd, align 8, !dbg !725
  call void @llvm.lifetime.start.p0(i64 8, ptr %copyEnd) #8, !dbg !729
  call void @llvm.dbg.declare(metadata ptr %copyEnd, metadata !210, metadata !DIExpression()), !dbg !730
  %235 = load ptr, ptr %op, align 8, !dbg !731
  %236 = load i64, ptr %mlen, align 8, !dbg !732
  %add.ptr407 = getelementptr i8, ptr %235, i64 %236, !dbg !733
  store ptr %add.ptr407, ptr %copyEnd, align 8, !dbg !730
  %237 = load ptr, ptr %matchEnd, align 8, !dbg !734
  %238 = load ptr, ptr %op, align 8, !dbg !736
  %cmp408 = icmp ugt ptr %237, %238, !dbg !737
  br i1 %cmp408, label %if.then410, label %if.else418, !dbg !738

if.then410:                                       ; preds = %cond.end404
  br label %while.cond411, !dbg !739

while.cond411:                                    ; preds = %while.body414, %if.then410
  %239 = load ptr, ptr %op, align 8, !dbg !741
  %240 = load ptr, ptr %copyEnd, align 8, !dbg !742
  %cmp412 = icmp ult ptr %239, %240, !dbg !743
  br i1 %cmp412, label %while.body414, label %while.end417, !dbg !739

while.body414:                                    ; preds = %while.cond411
  %241 = load ptr, ptr %match, align 8, !dbg !744
  %incdec.ptr415 = getelementptr i8, ptr %241, i32 1, !dbg !744
  store ptr %incdec.ptr415, ptr %match, align 8, !dbg !744
  %242 = load i8, ptr %241, align 1, !dbg !745
  %243 = load ptr, ptr %op, align 8, !dbg !746
  %incdec.ptr416 = getelementptr i8, ptr %243, i32 1, !dbg !746
  store ptr %incdec.ptr416, ptr %op, align 8, !dbg !746
  store i8 %242, ptr %243, align 1, !dbg !747
  br label %while.cond411, !dbg !739, !llvm.loop !748

while.end417:                                     ; preds = %while.cond411
  br label %if.end419, !dbg !749

if.else418:                                       ; preds = %cond.end404
  %244 = load ptr, ptr %op, align 8, !dbg !750
  %245 = load ptr, ptr %match, align 8, !dbg !750
  %246 = load i64, ptr %mlen, align 8, !dbg !750
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %244, ptr align 1 %245, i64 %246, i1 false), !dbg !750
  br label %if.end419

if.end419:                                        ; preds = %if.else418, %while.end417
  %247 = load ptr, ptr %copyEnd, align 8, !dbg !752
  store ptr %247, ptr %op, align 8, !dbg !753
  %248 = load ptr, ptr %op, align 8, !dbg !754
  %249 = load ptr, ptr %oend, align 8, !dbg !756
  %cmp420 = icmp eq ptr %248, %249, !dbg !757
  br i1 %cmp420, label %if.then422, label %if.end423, !dbg !758

if.then422:                                       ; preds = %if.end419
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup424, !dbg !759

if.end423:                                        ; preds = %if.end419
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup424, !dbg !760, !llvm.loop !399

cleanup424:                                       ; preds = %if.end423, %if.then422
  call void @llvm.lifetime.end.p0(i64 8, ptr %copyEnd) #8, !dbg !761
  call void @llvm.lifetime.end.p0(i64 8, ptr %matchEnd) #8, !dbg !761
  call void @llvm.lifetime.end.p0(i64 8, ptr %mlen) #8, !dbg !761
  br label %cleanup500

if.end427:                                        ; preds = %land.lhs.true391, %if.end388
  %250 = load i64, ptr %offset, align 8, !dbg !762
  %cmp428 = icmp ult i64 %250, 8, !dbg !762
  %lnot430 = xor i1 %cmp428, true, !dbg !762
  %lnot432 = xor i1 %lnot430, true, !dbg !762
  %lnot.ext433 = zext i1 %lnot432 to i32, !dbg !762
  %conv434 = sext i32 %lnot.ext433 to i64, !dbg !762
  %expval435 = call i64 @llvm.expect.i64(i64 %conv434, i64 0), !dbg !762
  %tobool436 = icmp ne i64 %expval435, 0, !dbg !762
  br i1 %tobool436, label %if.then437, label %if.else453, !dbg !764

if.then437:                                       ; preds = %if.end427
  %251 = load ptr, ptr %match, align 8, !dbg !765
  %arrayidx = getelementptr i8, ptr %251, i64 0, !dbg !765
  %252 = load i8, ptr %arrayidx, align 1, !dbg !765
  %253 = load ptr, ptr %op, align 8, !dbg !767
  %arrayidx438 = getelementptr i8, ptr %253, i64 0, !dbg !767
  store i8 %252, ptr %arrayidx438, align 1, !dbg !768
  %254 = load ptr, ptr %match, align 8, !dbg !769
  %arrayidx439 = getelementptr i8, ptr %254, i64 1, !dbg !769
  %255 = load i8, ptr %arrayidx439, align 1, !dbg !769
  %256 = load ptr, ptr %op, align 8, !dbg !770
  %arrayidx440 = getelementptr i8, ptr %256, i64 1, !dbg !770
  store i8 %255, ptr %arrayidx440, align 1, !dbg !771
  %257 = load ptr, ptr %match, align 8, !dbg !772
  %arrayidx441 = getelementptr i8, ptr %257, i64 2, !dbg !772
  %258 = load i8, ptr %arrayidx441, align 1, !dbg !772
  %259 = load ptr, ptr %op, align 8, !dbg !773
  %arrayidx442 = getelementptr i8, ptr %259, i64 2, !dbg !773
  store i8 %258, ptr %arrayidx442, align 1, !dbg !774
  %260 = load ptr, ptr %match, align 8, !dbg !775
  %arrayidx443 = getelementptr i8, ptr %260, i64 3, !dbg !775
  %261 = load i8, ptr %arrayidx443, align 1, !dbg !775
  %262 = load ptr, ptr %op, align 8, !dbg !776
  %arrayidx444 = getelementptr i8, ptr %262, i64 3, !dbg !776
  store i8 %261, ptr %arrayidx444, align 1, !dbg !777
  %263 = load i64, ptr %offset, align 8, !dbg !778
  %arrayidx445 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i64 0, i64 %263, !dbg !779
  %264 = load i32, ptr %arrayidx445, align 4, !dbg !779
  %265 = load ptr, ptr %match, align 8, !dbg !780
  %idx.ext446 = zext i32 %264 to i64, !dbg !780
  %add.ptr447 = getelementptr i8, ptr %265, i64 %idx.ext446, !dbg !780
  store ptr %add.ptr447, ptr %match, align 8, !dbg !780
  %266 = load ptr, ptr %op, align 8, !dbg !781
  %add.ptr448 = getelementptr i8, ptr %266, i64 4, !dbg !781
  %267 = load ptr, ptr %match, align 8, !dbg !781
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr448, ptr align 1 %267, i64 4, i1 false), !dbg !781
  %268 = load i64, ptr %offset, align 8, !dbg !782
  %arrayidx449 = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i64 0, i64 %268, !dbg !783
  %269 = load i32, ptr %arrayidx449, align 4, !dbg !783
  %270 = load ptr, ptr %match, align 8, !dbg !784
  %idx.ext450 = sext i32 %269 to i64, !dbg !784
  %idx.neg451 = sub i64 0, %idx.ext450, !dbg !784
  %add.ptr452 = getelementptr i8, ptr %270, i64 %idx.neg451, !dbg !784
  store ptr %add.ptr452, ptr %match, align 8, !dbg !784
  br label %if.end455, !dbg !785

if.else453:                                       ; preds = %if.end427
  %271 = load ptr, ptr %op, align 8, !dbg !786
  %272 = load ptr, ptr %match, align 8, !dbg !788
  call void @LZ4_copy8(ptr noundef %271, ptr noundef %272) #7, !dbg !789
  %273 = load ptr, ptr %match, align 8, !dbg !790
  %add.ptr454 = getelementptr i8, ptr %273, i64 8, !dbg !790
  store ptr %add.ptr454, ptr %match, align 8, !dbg !790
  br label %if.end455

if.end455:                                        ; preds = %if.else453, %if.then437
  %274 = load ptr, ptr %op, align 8, !dbg !791
  %add.ptr456 = getelementptr i8, ptr %274, i64 8, !dbg !791
  store ptr %add.ptr456, ptr %op, align 8, !dbg !791
  %275 = load ptr, ptr %cpy, align 8, !dbg !792
  %276 = load ptr, ptr %oend, align 8, !dbg !792
  %add.ptr457 = getelementptr i8, ptr %276, i64 -12, !dbg !792
  %cmp458 = icmp ugt ptr %275, %add.ptr457, !dbg !792
  %lnot460 = xor i1 %cmp458, true, !dbg !792
  %lnot462 = xor i1 %lnot460, true, !dbg !792
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !792
  %conv464 = sext i32 %lnot.ext463 to i64, !dbg !792
  %expval465 = call i64 @llvm.expect.i64(i64 %conv464, i64 0), !dbg !792
  %tobool466 = icmp ne i64 %expval465, 0, !dbg !792
  br i1 %tobool466, label %if.then467, label %if.else492, !dbg !793

if.then467:                                       ; preds = %if.end455
  call void @llvm.lifetime.start.p0(i64 8, ptr %oCopyLimit) #8, !dbg !794
  call void @llvm.dbg.declare(metadata ptr %oCopyLimit, metadata !211, metadata !DIExpression()), !dbg !795
  %277 = load ptr, ptr %oend, align 8, !dbg !796
  %add.ptr468 = getelementptr i8, ptr %277, i64 -7, !dbg !797
  store ptr %add.ptr468, ptr %oCopyLimit, align 8, !dbg !795
  %278 = load ptr, ptr %cpy, align 8, !dbg !798
  %279 = load ptr, ptr %oend, align 8, !dbg !800
  %add.ptr469 = getelementptr i8, ptr %279, i64 -5, !dbg !801
  %cmp470 = icmp ugt ptr %278, %add.ptr469, !dbg !802
  br i1 %cmp470, label %if.then472, label %if.end473, !dbg !803

if.then472:                                       ; preds = %if.then467
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup489, !dbg !804

if.end473:                                        ; preds = %if.then467
  %280 = load ptr, ptr %op, align 8, !dbg !806
  %281 = load ptr, ptr %oCopyLimit, align 8, !dbg !808
  %cmp474 = icmp ult ptr %280, %281, !dbg !809
  br i1 %cmp474, label %if.then476, label %if.end481, !dbg !810

if.then476:                                       ; preds = %if.end473
  %282 = load ptr, ptr %op, align 8, !dbg !811
  %283 = load ptr, ptr %match, align 8, !dbg !813
  %284 = load ptr, ptr %oCopyLimit, align 8, !dbg !814
  call void @LZ4_wildCopy(ptr noundef %282, ptr noundef %283, ptr noundef %284) #7, !dbg !815
  %285 = load ptr, ptr %oCopyLimit, align 8, !dbg !816
  %286 = load ptr, ptr %op, align 8, !dbg !817
  %sub.ptr.lhs.cast477 = ptrtoint ptr %285 to i64, !dbg !818
  %sub.ptr.rhs.cast478 = ptrtoint ptr %286 to i64, !dbg !818
  %sub.ptr.sub479 = sub i64 %sub.ptr.lhs.cast477, %sub.ptr.rhs.cast478, !dbg !818
  %287 = load ptr, ptr %match, align 8, !dbg !819
  %add.ptr480 = getelementptr i8, ptr %287, i64 %sub.ptr.sub479, !dbg !819
  store ptr %add.ptr480, ptr %match, align 8, !dbg !819
  %288 = load ptr, ptr %oCopyLimit, align 8, !dbg !820
  store ptr %288, ptr %op, align 8, !dbg !821
  br label %if.end481, !dbg !822

if.end481:                                        ; preds = %if.then476, %if.end473
  br label %while.cond482, !dbg !823

while.cond482:                                    ; preds = %while.body485, %if.end481
  %289 = load ptr, ptr %op, align 8, !dbg !824
  %290 = load ptr, ptr %cpy, align 8, !dbg !825
  %cmp483 = icmp ult ptr %289, %290, !dbg !826
  br i1 %cmp483, label %while.body485, label %while.end488, !dbg !823

while.body485:                                    ; preds = %while.cond482
  %291 = load ptr, ptr %match, align 8, !dbg !827
  %incdec.ptr486 = getelementptr i8, ptr %291, i32 1, !dbg !827
  store ptr %incdec.ptr486, ptr %match, align 8, !dbg !827
  %292 = load i8, ptr %291, align 1, !dbg !828
  %293 = load ptr, ptr %op, align 8, !dbg !829
  %incdec.ptr487 = getelementptr i8, ptr %293, i32 1, !dbg !829
  store ptr %incdec.ptr487, ptr %op, align 8, !dbg !829
  store i8 %292, ptr %293, align 1, !dbg !830
  br label %while.cond482, !dbg !823, !llvm.loop !831

while.end488:                                     ; preds = %while.cond482
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !832
  br label %cleanup489, !dbg !832

cleanup489:                                       ; preds = %if.then472, %while.end488
  call void @llvm.lifetime.end.p0(i64 8, ptr %oCopyLimit) #8, !dbg !832
  %cleanup.dest490 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest490, label %cleanup500 [
    i32 0, label %cleanup.cont491
  ]

cleanup.cont491:                                  ; preds = %cleanup489
  br label %if.end499, !dbg !833

if.else492:                                       ; preds = %if.end455
  %294 = load ptr, ptr %op, align 8, !dbg !834
  %295 = load ptr, ptr %match, align 8, !dbg !836
  call void @LZ4_copy8(ptr noundef %294, ptr noundef %295) #7, !dbg !837
  %296 = load i64, ptr %length, align 8, !dbg !838
  %cmp493 = icmp ugt i64 %296, 16, !dbg !840
  br i1 %cmp493, label %if.then495, label %if.end498, !dbg !841

if.then495:                                       ; preds = %if.else492
  %297 = load ptr, ptr %op, align 8, !dbg !842
  %add.ptr496 = getelementptr i8, ptr %297, i64 8, !dbg !843
  %298 = load ptr, ptr %match, align 8, !dbg !844
  %add.ptr497 = getelementptr i8, ptr %298, i64 8, !dbg !845
  %299 = load ptr, ptr %cpy, align 8, !dbg !846
  call void @LZ4_wildCopy(ptr noundef %add.ptr496, ptr noundef %add.ptr497, ptr noundef %299) #7, !dbg !847
  br label %if.end498, !dbg !847

if.end498:                                        ; preds = %if.then495, %if.else492
  br label %if.end499

if.end499:                                        ; preds = %if.end498, %cleanup.cont491
  %300 = load ptr, ptr %cpy, align 8, !dbg !848
  store ptr %300, ptr %op, align 8, !dbg !849
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !400
  br label %cleanup500, !dbg !400

cleanup500:                                       ; preds = %if.then340, %if.then276, %if.then239, %if.then229, %if.then223, %if.end499, %cleanup489, %cleanup424, %if.end387, %cleanup316, %if.then252, %cleanup, %if.then107
  call void @llvm.lifetime.end.p0(i64 4, ptr %token) #8, !dbg !400
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #8, !dbg !400
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #8, !dbg !400
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #8, !dbg !400
  %cleanup.dest504 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest504, label %cleanup524 [
    i32 0, label %cleanup.cont505
    i32 2, label %while.cond
    i32 3, label %while.end506
    i32 5, label %_output_error
  ]

cleanup.cont505:                                  ; preds = %cleanup500
  br label %while.cond, !dbg !337, !llvm.loop !399

while.end506:                                     ; preds = %cleanup500
  %301 = load i32, ptr %endOnInput.addr, align 4, !dbg !850
  %tobool507 = icmp ne i32 %301, 0, !dbg !850
  br i1 %tobool507, label %if.then508, label %if.else513, !dbg !852

if.then508:                                       ; preds = %while.end506
  %302 = load ptr, ptr %op, align 8, !dbg !853
  %303 = load ptr, ptr %dst.addr, align 8, !dbg !855
  %sub.ptr.lhs.cast509 = ptrtoint ptr %302 to i64, !dbg !856
  %sub.ptr.rhs.cast510 = ptrtoint ptr %303 to i64, !dbg !856
  %sub.ptr.sub511 = sub i64 %sub.ptr.lhs.cast509, %sub.ptr.rhs.cast510, !dbg !856
  %conv512 = trunc i64 %sub.ptr.sub511 to i32, !dbg !857
  store i32 %conv512, ptr %retval, align 4, !dbg !858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup524, !dbg !858

if.else513:                                       ; preds = %while.end506
  %304 = load ptr, ptr %ip, align 8, !dbg !859
  %305 = load ptr, ptr %src.addr, align 8, !dbg !861
  %sub.ptr.lhs.cast514 = ptrtoint ptr %304 to i64, !dbg !862
  %sub.ptr.rhs.cast515 = ptrtoint ptr %305 to i64, !dbg !862
  %sub.ptr.sub516 = sub i64 %sub.ptr.lhs.cast514, %sub.ptr.rhs.cast515, !dbg !862
  %conv517 = trunc i64 %sub.ptr.sub516 to i32, !dbg !863
  store i32 %conv517, ptr %retval, align 4, !dbg !864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup524, !dbg !864

_output_error:                                    ; preds = %cleanup500
  call void @llvm.dbg.label(metadata !214), !dbg !865
  %306 = load ptr, ptr %ip, align 8, !dbg !866
  %307 = load ptr, ptr %src.addr, align 8, !dbg !867
  %sub.ptr.lhs.cast518 = ptrtoint ptr %306 to i64, !dbg !868
  %sub.ptr.rhs.cast519 = ptrtoint ptr %307 to i64, !dbg !868
  %sub.ptr.sub520 = sub i64 %sub.ptr.lhs.cast518, %sub.ptr.rhs.cast519, !dbg !868
  %sub521 = sub i64 0, %sub.ptr.sub520, !dbg !869
  %conv522 = trunc i64 %sub521 to i32, !dbg !870
  %sub523 = sub i32 %conv522, 1, !dbg !871
  store i32 %sub523, ptr %retval, align 4, !dbg !872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup524, !dbg !872

cleanup524:                                       ; preds = %_output_error, %if.else513, %if.then508, %cleanup500, %if.then59, %if.then42, %land.end28
  call void @llvm.lifetime.end.p0(i64 8, ptr %shortoend) #8, !dbg !873
  call void @llvm.lifetime.end.p0(i64 8, ptr %shortiend) #8, !dbg !873
  call void @llvm.lifetime.end.p0(i64 4, ptr %checkOffset) #8, !dbg !873
  call void @llvm.lifetime.end.p0(i64 4, ptr %safeDecode) #8, !dbg !873
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictEnd) #8, !dbg !873
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpy) #8, !dbg !873
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #8, !dbg !873
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #8, !dbg !873
  call void @llvm.lifetime.end.p0(i64 8, ptr %iend) #8, !dbg !873
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #8, !dbg !873
  %308 = load i32, ptr %retval, align 4, !dbg !873
  ret i32 %308, !dbg !873
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @LZ4_decompress_safe_partial(ptr noundef %src, ptr noundef %dst, i32 noundef %compressedSize, i32 noundef %targetOutputSize, i32 noundef %dstCapacity) #0 align 16 !dbg !874 {
entry:
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %compressedSize.addr = alloca i32, align 4
  %targetOutputSize.addr = alloca i32, align 4
  %dstCapacity.addr = alloca i32, align 4
  %__UNIQUE_ID___x200 = alloca i32, align 4
  %__UNIQUE_ID___y201 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !878, metadata !DIExpression()), !dbg !886
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !879, metadata !DIExpression()), !dbg !887
  store i32 %compressedSize, ptr %compressedSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %compressedSize.addr, metadata !880, metadata !DIExpression()), !dbg !888
  store i32 %targetOutputSize, ptr %targetOutputSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %targetOutputSize.addr, metadata !881, metadata !DIExpression()), !dbg !889
  store i32 %dstCapacity, ptr %dstCapacity.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dstCapacity.addr, metadata !882, metadata !DIExpression()), !dbg !890
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x200) #8, !dbg !891
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x200, metadata !883, metadata !DIExpression()), !dbg !891
  %0 = load i32, ptr %targetOutputSize.addr, align 4, !dbg !891
  store i32 %0, ptr %__UNIQUE_ID___x200, align 4, !dbg !891
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y201) #8, !dbg !891
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y201, metadata !885, metadata !DIExpression()), !dbg !891
  %1 = load i32, ptr %dstCapacity.addr, align 4, !dbg !891
  store i32 %1, ptr %__UNIQUE_ID___y201, align 4, !dbg !891
  %2 = load i32, ptr %__UNIQUE_ID___x200, align 4, !dbg !891
  %3 = load i32, ptr %__UNIQUE_ID___y201, align 4, !dbg !891
  %cmp = icmp slt i32 %2, %3, !dbg !891
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !891

cond.true:                                        ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___x200, align 4, !dbg !891
  br label %cond.end, !dbg !891

cond.false:                                       ; preds = %entry
  %5 = load i32, ptr %__UNIQUE_ID___y201, align 4, !dbg !891
  br label %cond.end, !dbg !891

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !891
  store i32 %cond, ptr %tmp, align 4, !dbg !891
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y201) #8, !dbg !892
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x200) #8, !dbg !892
  %6 = load i32, ptr %tmp, align 4, !dbg !891
  store i32 %6, ptr %dstCapacity.addr, align 4, !dbg !893
  %7 = load ptr, ptr %src.addr, align 8, !dbg !894
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !895
  %9 = load i32, ptr %compressedSize.addr, align 4, !dbg !896
  %10 = load i32, ptr %dstCapacity.addr, align 4, !dbg !897
  %11 = load ptr, ptr %dst.addr, align 8, !dbg !898
  %call = call i32 @LZ4_decompress_generic(ptr noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef %11, ptr noundef null, i64 noundef 0) #7, !dbg !899
  ret i32 %call, !dbg !900
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @LZ4_decompress_fast(ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize) #0 align 16 !dbg !901 {
entry:
  %source.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %originalSize.addr = alloca i32, align 4
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !905, metadata !DIExpression()), !dbg !908
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !906, metadata !DIExpression()), !dbg !909
  store i32 %originalSize, ptr %originalSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %originalSize.addr, metadata !907, metadata !DIExpression()), !dbg !910
  %0 = load ptr, ptr %source.addr, align 8, !dbg !911
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !912
  %2 = load i32, ptr %originalSize.addr, align 4, !dbg !913
  %3 = load ptr, ptr %dest.addr, align 8, !dbg !914
  %add.ptr = getelementptr i8, ptr %3, i64 -65536, !dbg !915
  %call = call i32 @LZ4_decompress_generic(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %add.ptr, ptr noundef null, i64 noundef 0) #7, !dbg !916
  ret i32 %call, !dbg !917
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @LZ4_setStreamDecode(ptr noundef %LZ4_streamDecode, ptr noundef %dictionary, i32 noundef %dictSize) #0 align 16 !dbg !918 {
entry:
  %LZ4_streamDecode.addr = alloca ptr, align 8
  %dictionary.addr = alloca ptr, align 8
  %dictSize.addr = alloca i32, align 4
  %lz4sd = alloca ptr, align 8
  store ptr %LZ4_streamDecode, ptr %LZ4_streamDecode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %LZ4_streamDecode.addr, metadata !941, metadata !DIExpression()), !dbg !946
  store ptr %dictionary, ptr %dictionary.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictionary.addr, metadata !942, metadata !DIExpression()), !dbg !947
  store i32 %dictSize, ptr %dictSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !943, metadata !DIExpression()), !dbg !948
  call void @llvm.lifetime.start.p0(i64 8, ptr %lz4sd) #8, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %lz4sd, metadata !944, metadata !DIExpression()), !dbg !950
  %0 = load ptr, ptr %LZ4_streamDecode.addr, align 8, !dbg !951
  store ptr %0, ptr %lz4sd, align 8, !dbg !950
  %1 = load i32, ptr %dictSize.addr, align 4, !dbg !952
  %conv = sext i32 %1 to i64, !dbg !953
  %2 = load ptr, ptr %lz4sd, align 8, !dbg !954
  %prefixSize = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %2, i32 0, i32 3, !dbg !955
  store i64 %conv, ptr %prefixSize, align 8, !dbg !956
  %3 = load ptr, ptr %dictionary.addr, align 8, !dbg !957
  %4 = load i32, ptr %dictSize.addr, align 4, !dbg !958
  %idx.ext = sext i32 %4 to i64, !dbg !959
  %add.ptr = getelementptr i8, ptr %3, i64 %idx.ext, !dbg !959
  %5 = load ptr, ptr %lz4sd, align 8, !dbg !960
  %prefixEnd = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %5, i32 0, i32 2, !dbg !961
  store ptr %add.ptr, ptr %prefixEnd, align 8, !dbg !962
  %6 = load ptr, ptr %lz4sd, align 8, !dbg !963
  %externalDict = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %6, i32 0, i32 0, !dbg !964
  store ptr null, ptr %externalDict, align 8, !dbg !965
  %7 = load ptr, ptr %lz4sd, align 8, !dbg !966
  %extDictSize = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %7, i32 0, i32 1, !dbg !967
  store i64 0, ptr %extDictSize, align 8, !dbg !968
  call void @llvm.lifetime.end.p0(i64 8, ptr %lz4sd) #8, !dbg !969
  ret i32 1, !dbg !970
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @LZ4_decompress_safe_continue(ptr noundef %LZ4_streamDecode, ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize) #0 align 16 !dbg !971 {
entry:
  %retval = alloca i32, align 4
  %LZ4_streamDecode.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %compressedSize.addr = alloca i32, align 4
  %maxOutputSize.addr = alloca i32, align 4
  %lz4sd = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %LZ4_streamDecode, ptr %LZ4_streamDecode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %LZ4_streamDecode.addr, metadata !975, metadata !DIExpression()), !dbg !982
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !976, metadata !DIExpression()), !dbg !983
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !977, metadata !DIExpression()), !dbg !984
  store i32 %compressedSize, ptr %compressedSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %compressedSize.addr, metadata !978, metadata !DIExpression()), !dbg !985
  store i32 %maxOutputSize, ptr %maxOutputSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxOutputSize.addr, metadata !979, metadata !DIExpression()), !dbg !986
  call void @llvm.lifetime.start.p0(i64 8, ptr %lz4sd) #8, !dbg !987
  call void @llvm.dbg.declare(metadata ptr %lz4sd, metadata !980, metadata !DIExpression()), !dbg !988
  %0 = load ptr, ptr %LZ4_streamDecode.addr, align 8, !dbg !989
  store ptr %0, ptr %lz4sd, align 8, !dbg !988
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8, !dbg !990
  call void @llvm.dbg.declare(metadata ptr %result, metadata !981, metadata !DIExpression()), !dbg !991
  %1 = load ptr, ptr %lz4sd, align 8, !dbg !992
  %prefixSize = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %1, i32 0, i32 3, !dbg !994
  %2 = load i64, ptr %prefixSize, align 8, !dbg !994
  %cmp = icmp eq i64 %2, 0, !dbg !995
  br i1 %cmp, label %if.then, label %if.else, !dbg !996

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %source.addr, align 8, !dbg !997
  %4 = load ptr, ptr %dest.addr, align 8, !dbg !999
  %5 = load i32, ptr %compressedSize.addr, align 4, !dbg !1000
  %6 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1001
  %call = call i32 @LZ4_decompress_safe(ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #7, !dbg !1002
  store i32 %call, ptr %result, align 4, !dbg !1003
  %7 = load i32, ptr %result, align 4, !dbg !1004
  %cmp1 = icmp sle i32 %7, 0, !dbg !1006
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1007

if.then2:                                         ; preds = %if.then
  %8 = load i32, ptr %result, align 4, !dbg !1008
  store i32 %8, ptr %retval, align 4, !dbg !1009
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1009

if.end:                                           ; preds = %if.then
  %9 = load i32, ptr %result, align 4, !dbg !1010
  %conv = sext i32 %9 to i64, !dbg !1010
  %10 = load ptr, ptr %lz4sd, align 8, !dbg !1011
  %prefixSize3 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %10, i32 0, i32 3, !dbg !1012
  store i64 %conv, ptr %prefixSize3, align 8, !dbg !1013
  %11 = load ptr, ptr %dest.addr, align 8, !dbg !1014
  %12 = load i32, ptr %result, align 4, !dbg !1015
  %idx.ext = sext i32 %12 to i64, !dbg !1016
  %add.ptr = getelementptr i8, ptr %11, i64 %idx.ext, !dbg !1016
  %13 = load ptr, ptr %lz4sd, align 8, !dbg !1017
  %prefixEnd = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %13, i32 0, i32 2, !dbg !1018
  store ptr %add.ptr, ptr %prefixEnd, align 8, !dbg !1019
  br label %if.end54, !dbg !1020

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %lz4sd, align 8, !dbg !1021
  %prefixEnd4 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %14, i32 0, i32 2, !dbg !1023
  %15 = load ptr, ptr %prefixEnd4, align 8, !dbg !1023
  %16 = load ptr, ptr %dest.addr, align 8, !dbg !1024
  %cmp5 = icmp eq ptr %15, %16, !dbg !1025
  br i1 %cmp5, label %if.then7, label %if.else34, !dbg !1026

if.then7:                                         ; preds = %if.else
  %17 = load ptr, ptr %lz4sd, align 8, !dbg !1027
  %prefixSize8 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %17, i32 0, i32 3, !dbg !1030
  %18 = load i64, ptr %prefixSize8, align 8, !dbg !1030
  %cmp9 = icmp uge i64 %18, 65535, !dbg !1031
  br i1 %cmp9, label %if.then11, label %if.else13, !dbg !1032

if.then11:                                        ; preds = %if.then7
  %19 = load ptr, ptr %source.addr, align 8, !dbg !1033
  %20 = load ptr, ptr %dest.addr, align 8, !dbg !1034
  %21 = load i32, ptr %compressedSize.addr, align 4, !dbg !1035
  %22 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1036
  %call12 = call i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22) #7, !dbg !1037
  store i32 %call12, ptr %result, align 4, !dbg !1038
  br label %if.end24, !dbg !1039

if.else13:                                        ; preds = %if.then7
  %23 = load ptr, ptr %lz4sd, align 8, !dbg !1040
  %extDictSize = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %23, i32 0, i32 1, !dbg !1042
  %24 = load i64, ptr %extDictSize, align 8, !dbg !1042
  %cmp14 = icmp eq i64 %24, 0, !dbg !1043
  br i1 %cmp14, label %if.then16, label %if.else19, !dbg !1044

if.then16:                                        ; preds = %if.else13
  %25 = load ptr, ptr %source.addr, align 8, !dbg !1045
  %26 = load ptr, ptr %dest.addr, align 8, !dbg !1046
  %27 = load i32, ptr %compressedSize.addr, align 4, !dbg !1047
  %28 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1048
  %29 = load ptr, ptr %lz4sd, align 8, !dbg !1049
  %prefixSize17 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %29, i32 0, i32 3, !dbg !1050
  %30 = load i64, ptr %prefixSize17, align 8, !dbg !1050
  %call18 = call i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef %28, i64 noundef %30) #7, !dbg !1051
  store i32 %call18, ptr %result, align 4, !dbg !1052
  br label %if.end23, !dbg !1053

if.else19:                                        ; preds = %if.else13
  %31 = load ptr, ptr %source.addr, align 8, !dbg !1054
  %32 = load ptr, ptr %dest.addr, align 8, !dbg !1055
  %33 = load i32, ptr %compressedSize.addr, align 4, !dbg !1056
  %34 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1057
  %35 = load ptr, ptr %lz4sd, align 8, !dbg !1058
  %prefixSize20 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %35, i32 0, i32 3, !dbg !1059
  %36 = load i64, ptr %prefixSize20, align 8, !dbg !1059
  %37 = load ptr, ptr %lz4sd, align 8, !dbg !1060
  %externalDict = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %37, i32 0, i32 0, !dbg !1061
  %38 = load ptr, ptr %externalDict, align 8, !dbg !1061
  %39 = load ptr, ptr %lz4sd, align 8, !dbg !1062
  %extDictSize21 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %39, i32 0, i32 1, !dbg !1063
  %40 = load i64, ptr %extDictSize21, align 8, !dbg !1063
  %call22 = call i32 @LZ4_decompress_safe_doubleDict(ptr noundef %31, ptr noundef %32, i32 noundef %33, i32 noundef %34, i64 noundef %36, ptr noundef %38, i64 noundef %40) #7, !dbg !1064
  store i32 %call22, ptr %result, align 4, !dbg !1065
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.then16
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then11
  %41 = load i32, ptr %result, align 4, !dbg !1066
  %cmp25 = icmp sle i32 %41, 0, !dbg !1068
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1069

if.then27:                                        ; preds = %if.end24
  %42 = load i32, ptr %result, align 4, !dbg !1070
  store i32 %42, ptr %retval, align 4, !dbg !1071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1071

if.end28:                                         ; preds = %if.end24
  %43 = load i32, ptr %result, align 4, !dbg !1072
  %conv29 = sext i32 %43 to i64, !dbg !1072
  %44 = load ptr, ptr %lz4sd, align 8, !dbg !1073
  %prefixSize30 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %44, i32 0, i32 3, !dbg !1074
  %45 = load i64, ptr %prefixSize30, align 8, !dbg !1075
  %add = add i64 %45, %conv29, !dbg !1075
  store i64 %add, ptr %prefixSize30, align 8, !dbg !1075
  %46 = load i32, ptr %result, align 4, !dbg !1076
  %47 = load ptr, ptr %lz4sd, align 8, !dbg !1077
  %prefixEnd31 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %47, i32 0, i32 2, !dbg !1078
  %48 = load ptr, ptr %prefixEnd31, align 8, !dbg !1079
  %idx.ext32 = sext i32 %46 to i64, !dbg !1079
  %add.ptr33 = getelementptr i8, ptr %48, i64 %idx.ext32, !dbg !1079
  store ptr %add.ptr33, ptr %prefixEnd31, align 8, !dbg !1079
  br label %if.end53, !dbg !1080

if.else34:                                        ; preds = %if.else
  %49 = load ptr, ptr %lz4sd, align 8, !dbg !1081
  %prefixSize35 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %49, i32 0, i32 3, !dbg !1083
  %50 = load i64, ptr %prefixSize35, align 8, !dbg !1083
  %51 = load ptr, ptr %lz4sd, align 8, !dbg !1084
  %extDictSize36 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %51, i32 0, i32 1, !dbg !1085
  store i64 %50, ptr %extDictSize36, align 8, !dbg !1086
  %52 = load ptr, ptr %lz4sd, align 8, !dbg !1087
  %prefixEnd37 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %52, i32 0, i32 2, !dbg !1088
  %53 = load ptr, ptr %prefixEnd37, align 8, !dbg !1088
  %54 = load ptr, ptr %lz4sd, align 8, !dbg !1089
  %extDictSize38 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %54, i32 0, i32 1, !dbg !1090
  %55 = load i64, ptr %extDictSize38, align 8, !dbg !1090
  %idx.neg = sub i64 0, %55, !dbg !1091
  %add.ptr39 = getelementptr i8, ptr %53, i64 %idx.neg, !dbg !1091
  %56 = load ptr, ptr %lz4sd, align 8, !dbg !1092
  %externalDict40 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %56, i32 0, i32 0, !dbg !1093
  store ptr %add.ptr39, ptr %externalDict40, align 8, !dbg !1094
  %57 = load ptr, ptr %source.addr, align 8, !dbg !1095
  %58 = load ptr, ptr %dest.addr, align 8, !dbg !1096
  %59 = load i32, ptr %compressedSize.addr, align 4, !dbg !1097
  %60 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1098
  %61 = load ptr, ptr %lz4sd, align 8, !dbg !1099
  %externalDict41 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %61, i32 0, i32 0, !dbg !1100
  %62 = load ptr, ptr %externalDict41, align 8, !dbg !1100
  %63 = load ptr, ptr %lz4sd, align 8, !dbg !1101
  %extDictSize42 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %63, i32 0, i32 1, !dbg !1102
  %64 = load i64, ptr %extDictSize42, align 8, !dbg !1102
  %call43 = call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %57, ptr noundef %58, i32 noundef %59, i32 noundef %60, ptr noundef %62, i64 noundef %64) #7, !dbg !1103
  store i32 %call43, ptr %result, align 4, !dbg !1104
  %65 = load i32, ptr %result, align 4, !dbg !1105
  %cmp44 = icmp sle i32 %65, 0, !dbg !1107
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1108

if.then46:                                        ; preds = %if.else34
  %66 = load i32, ptr %result, align 4, !dbg !1109
  store i32 %66, ptr %retval, align 4, !dbg !1110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1110

if.end47:                                         ; preds = %if.else34
  %67 = load i32, ptr %result, align 4, !dbg !1111
  %conv48 = sext i32 %67 to i64, !dbg !1111
  %68 = load ptr, ptr %lz4sd, align 8, !dbg !1112
  %prefixSize49 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %68, i32 0, i32 3, !dbg !1113
  store i64 %conv48, ptr %prefixSize49, align 8, !dbg !1114
  %69 = load ptr, ptr %dest.addr, align 8, !dbg !1115
  %70 = load i32, ptr %result, align 4, !dbg !1116
  %idx.ext50 = sext i32 %70 to i64, !dbg !1117
  %add.ptr51 = getelementptr i8, ptr %69, i64 %idx.ext50, !dbg !1117
  %71 = load ptr, ptr %lz4sd, align 8, !dbg !1118
  %prefixEnd52 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %71, i32 0, i32 2, !dbg !1119
  store ptr %add.ptr51, ptr %prefixEnd52, align 8, !dbg !1120
  br label %if.end53

if.end53:                                         ; preds = %if.end47, %if.end28
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end
  %72 = load i32, ptr %result, align 4, !dbg !1121
  store i32 %72, ptr %retval, align 4, !dbg !1122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1122

cleanup:                                          ; preds = %if.end54, %if.then46, %if.then27, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8, !dbg !1123
  call void @llvm.lifetime.end.p0(i64 8, ptr %lz4sd) #8, !dbg !1123
  %73 = load i32, ptr %retval, align 4, !dbg !1123
  ret i32 %73, !dbg !1123
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize) #0 align 16 !dbg !1124 {
entry:
  %source.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %compressedSize.addr = alloca i32, align 4
  %maxOutputSize.addr = alloca i32, align 4
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1126, metadata !DIExpression()), !dbg !1130
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !1127, metadata !DIExpression()), !dbg !1131
  store i32 %compressedSize, ptr %compressedSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %compressedSize.addr, metadata !1128, metadata !DIExpression()), !dbg !1132
  store i32 %maxOutputSize, ptr %maxOutputSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxOutputSize.addr, metadata !1129, metadata !DIExpression()), !dbg !1133
  %0 = load ptr, ptr %source.addr, align 8, !dbg !1134
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !1135
  %2 = load i32, ptr %compressedSize.addr, align 4, !dbg !1136
  %3 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1137
  %4 = load ptr, ptr %dest.addr, align 8, !dbg !1138
  %add.ptr = getelementptr i8, ptr %4, i64 -65536, !dbg !1139
  %call = call i32 @LZ4_decompress_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef %add.ptr, ptr noundef null, i64 noundef 0) #7, !dbg !1140
  ret i32 %call, !dbg !1141
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize, i64 noundef %prefixSize) #0 align 16 !dbg !1142 {
entry:
  %source.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %compressedSize.addr = alloca i32, align 4
  %maxOutputSize.addr = alloca i32, align 4
  %prefixSize.addr = alloca i64, align 8
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1146, metadata !DIExpression()), !dbg !1151
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !1147, metadata !DIExpression()), !dbg !1152
  store i32 %compressedSize, ptr %compressedSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %compressedSize.addr, metadata !1148, metadata !DIExpression()), !dbg !1153
  store i32 %maxOutputSize, ptr %maxOutputSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxOutputSize.addr, metadata !1149, metadata !DIExpression()), !dbg !1154
  store i64 %prefixSize, ptr %prefixSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefixSize.addr, metadata !1150, metadata !DIExpression()), !dbg !1155
  %0 = load ptr, ptr %source.addr, align 8, !dbg !1156
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !1157
  %2 = load i32, ptr %compressedSize.addr, align 4, !dbg !1158
  %3 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1159
  %4 = load ptr, ptr %dest.addr, align 8, !dbg !1160
  %5 = load i64, ptr %prefixSize.addr, align 8, !dbg !1161
  %idx.neg = sub i64 0, %5, !dbg !1162
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.neg, !dbg !1162
  %call = call i32 @LZ4_decompress_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %add.ptr, ptr noundef null, i64 noundef 0) #7, !dbg !1163
  ret i32 %call, !dbg !1164
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @LZ4_decompress_safe_doubleDict(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize, i64 noundef %prefixSize, ptr noundef %dictStart, i64 noundef %dictSize) #2 align 16 !dbg !1165 {
entry:
  %source.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %compressedSize.addr = alloca i32, align 4
  %maxOutputSize.addr = alloca i32, align 4
  %prefixSize.addr = alloca i64, align 8
  %dictStart.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1169, metadata !DIExpression()), !dbg !1176
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !1170, metadata !DIExpression()), !dbg !1177
  store i32 %compressedSize, ptr %compressedSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %compressedSize.addr, metadata !1171, metadata !DIExpression()), !dbg !1178
  store i32 %maxOutputSize, ptr %maxOutputSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxOutputSize.addr, metadata !1172, metadata !DIExpression()), !dbg !1179
  store i64 %prefixSize, ptr %prefixSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefixSize.addr, metadata !1173, metadata !DIExpression()), !dbg !1180
  store ptr %dictStart, ptr %dictStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictStart.addr, metadata !1174, metadata !DIExpression()), !dbg !1181
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !1175, metadata !DIExpression()), !dbg !1182
  %0 = load ptr, ptr %source.addr, align 8, !dbg !1183
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !1184
  %2 = load i32, ptr %compressedSize.addr, align 4, !dbg !1185
  %3 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1186
  %4 = load ptr, ptr %dest.addr, align 8, !dbg !1187
  %5 = load i64, ptr %prefixSize.addr, align 8, !dbg !1188
  %idx.neg = sub i64 0, %5, !dbg !1189
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.neg, !dbg !1189
  %6 = load ptr, ptr %dictStart.addr, align 8, !dbg !1190
  %7 = load i64, ptr %dictSize.addr, align 8, !dbg !1191
  %call = call i32 @LZ4_decompress_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef 2, ptr noundef %add.ptr, ptr noundef %6, i64 noundef %7) #7, !dbg !1192
  ret i32 %call, !dbg !1193
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize, ptr noundef %dictStart, i64 noundef %dictSize) #0 align 16 !dbg !1194 {
entry:
  %source.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %compressedSize.addr = alloca i32, align 4
  %maxOutputSize.addr = alloca i32, align 4
  %dictStart.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1198, metadata !DIExpression()), !dbg !1204
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !1199, metadata !DIExpression()), !dbg !1205
  store i32 %compressedSize, ptr %compressedSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %compressedSize.addr, metadata !1200, metadata !DIExpression()), !dbg !1206
  store i32 %maxOutputSize, ptr %maxOutputSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxOutputSize.addr, metadata !1201, metadata !DIExpression()), !dbg !1207
  store ptr %dictStart, ptr %dictStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictStart.addr, metadata !1202, metadata !DIExpression()), !dbg !1208
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !1203, metadata !DIExpression()), !dbg !1209
  %0 = load ptr, ptr %source.addr, align 8, !dbg !1210
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !1211
  %2 = load i32, ptr %compressedSize.addr, align 4, !dbg !1212
  %3 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1213
  %4 = load ptr, ptr %dest.addr, align 8, !dbg !1214
  %5 = load ptr, ptr %dictStart.addr, align 8, !dbg !1215
  %6 = load i64, ptr %dictSize.addr, align 8, !dbg !1216
  %call = call i32 @LZ4_decompress_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef 2, ptr noundef %4, ptr noundef %5, i64 noundef %6) #7, !dbg !1217
  ret i32 %call, !dbg !1218
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @LZ4_decompress_fast_continue(ptr noundef %LZ4_streamDecode, ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize) #0 align 16 !dbg !1219 {
entry:
  %retval = alloca i32, align 4
  %LZ4_streamDecode.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %originalSize.addr = alloca i32, align 4
  %lz4sd = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %LZ4_streamDecode, ptr %LZ4_streamDecode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %LZ4_streamDecode.addr, metadata !1223, metadata !DIExpression()), !dbg !1229
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1224, metadata !DIExpression()), !dbg !1230
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !1225, metadata !DIExpression()), !dbg !1231
  store i32 %originalSize, ptr %originalSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %originalSize.addr, metadata !1226, metadata !DIExpression()), !dbg !1232
  call void @llvm.lifetime.start.p0(i64 8, ptr %lz4sd) #8, !dbg !1233
  call void @llvm.dbg.declare(metadata ptr %lz4sd, metadata !1227, metadata !DIExpression()), !dbg !1234
  %0 = load ptr, ptr %LZ4_streamDecode.addr, align 8, !dbg !1235
  store ptr %0, ptr %lz4sd, align 8, !dbg !1234
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8, !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %result, metadata !1228, metadata !DIExpression()), !dbg !1237
  %1 = load ptr, ptr %lz4sd, align 8, !dbg !1238
  %prefixSize = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %1, i32 0, i32 3, !dbg !1240
  %2 = load i64, ptr %prefixSize, align 8, !dbg !1240
  %cmp = icmp eq i64 %2, 0, !dbg !1241
  br i1 %cmp, label %if.then, label %if.else, !dbg !1242

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %source.addr, align 8, !dbg !1243
  %4 = load ptr, ptr %dest.addr, align 8, !dbg !1245
  %5 = load i32, ptr %originalSize.addr, align 4, !dbg !1246
  %call = call i32 @LZ4_decompress_fast(ptr noundef %3, ptr noundef %4, i32 noundef %5) #7, !dbg !1247
  store i32 %call, ptr %result, align 4, !dbg !1248
  %6 = load i32, ptr %result, align 4, !dbg !1249
  %cmp1 = icmp sle i32 %6, 0, !dbg !1251
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1252

if.then2:                                         ; preds = %if.then
  %7 = load i32, ptr %result, align 4, !dbg !1253
  store i32 %7, ptr %retval, align 4, !dbg !1254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1254

if.end:                                           ; preds = %if.then
  %8 = load i32, ptr %originalSize.addr, align 4, !dbg !1255
  %conv = sext i32 %8 to i64, !dbg !1255
  %9 = load ptr, ptr %lz4sd, align 8, !dbg !1256
  %prefixSize3 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %9, i32 0, i32 3, !dbg !1257
  store i64 %conv, ptr %prefixSize3, align 8, !dbg !1258
  %10 = load ptr, ptr %dest.addr, align 8, !dbg !1259
  %11 = load i32, ptr %originalSize.addr, align 4, !dbg !1260
  %idx.ext = sext i32 %11 to i64, !dbg !1261
  %add.ptr = getelementptr i8, ptr %10, i64 %idx.ext, !dbg !1261
  %12 = load ptr, ptr %lz4sd, align 8, !dbg !1262
  %prefixEnd = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %12, i32 0, i32 2, !dbg !1263
  store ptr %add.ptr, ptr %prefixEnd, align 8, !dbg !1264
  br label %if.end49, !dbg !1265

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %lz4sd, align 8, !dbg !1266
  %prefixEnd4 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %13, i32 0, i32 2, !dbg !1268
  %14 = load ptr, ptr %prefixEnd4, align 8, !dbg !1268
  %15 = load ptr, ptr %dest.addr, align 8, !dbg !1269
  %cmp5 = icmp eq ptr %14, %15, !dbg !1270
  br i1 %cmp5, label %if.then7, label %if.else29, !dbg !1271

if.then7:                                         ; preds = %if.else
  %16 = load ptr, ptr %lz4sd, align 8, !dbg !1272
  %prefixSize8 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %16, i32 0, i32 3, !dbg !1275
  %17 = load i64, ptr %prefixSize8, align 8, !dbg !1275
  %cmp9 = icmp uge i64 %17, 65535, !dbg !1276
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !1277

lor.lhs.false:                                    ; preds = %if.then7
  %18 = load ptr, ptr %lz4sd, align 8, !dbg !1278
  %extDictSize = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %18, i32 0, i32 1, !dbg !1279
  %19 = load i64, ptr %extDictSize, align 8, !dbg !1279
  %cmp11 = icmp eq i64 %19, 0, !dbg !1280
  br i1 %cmp11, label %if.then13, label %if.else15, !dbg !1281

if.then13:                                        ; preds = %lor.lhs.false, %if.then7
  %20 = load ptr, ptr %source.addr, align 8, !dbg !1282
  %21 = load ptr, ptr %dest.addr, align 8, !dbg !1283
  %22 = load i32, ptr %originalSize.addr, align 4, !dbg !1284
  %call14 = call i32 @LZ4_decompress_fast(ptr noundef %20, ptr noundef %21, i32 noundef %22) #7, !dbg !1285
  store i32 %call14, ptr %result, align 4, !dbg !1286
  br label %if.end19, !dbg !1287

if.else15:                                        ; preds = %lor.lhs.false
  %23 = load ptr, ptr %source.addr, align 8, !dbg !1288
  %24 = load ptr, ptr %dest.addr, align 8, !dbg !1289
  %25 = load i32, ptr %originalSize.addr, align 4, !dbg !1290
  %26 = load ptr, ptr %lz4sd, align 8, !dbg !1291
  %prefixSize16 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %26, i32 0, i32 3, !dbg !1292
  %27 = load i64, ptr %prefixSize16, align 8, !dbg !1292
  %28 = load ptr, ptr %lz4sd, align 8, !dbg !1293
  %externalDict = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %28, i32 0, i32 0, !dbg !1294
  %29 = load ptr, ptr %externalDict, align 8, !dbg !1294
  %30 = load ptr, ptr %lz4sd, align 8, !dbg !1295
  %extDictSize17 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %30, i32 0, i32 1, !dbg !1296
  %31 = load i64, ptr %extDictSize17, align 8, !dbg !1296
  %call18 = call i32 @LZ4_decompress_fast_doubleDict(ptr noundef %23, ptr noundef %24, i32 noundef %25, i64 noundef %27, ptr noundef %29, i64 noundef %31) #7, !dbg !1297
  store i32 %call18, ptr %result, align 4, !dbg !1298
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then13
  %32 = load i32, ptr %result, align 4, !dbg !1299
  %cmp20 = icmp sle i32 %32, 0, !dbg !1301
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !1302

if.then22:                                        ; preds = %if.end19
  %33 = load i32, ptr %result, align 4, !dbg !1303
  store i32 %33, ptr %retval, align 4, !dbg !1304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1304

if.end23:                                         ; preds = %if.end19
  %34 = load i32, ptr %originalSize.addr, align 4, !dbg !1305
  %conv24 = sext i32 %34 to i64, !dbg !1305
  %35 = load ptr, ptr %lz4sd, align 8, !dbg !1306
  %prefixSize25 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %35, i32 0, i32 3, !dbg !1307
  %36 = load i64, ptr %prefixSize25, align 8, !dbg !1308
  %add = add i64 %36, %conv24, !dbg !1308
  store i64 %add, ptr %prefixSize25, align 8, !dbg !1308
  %37 = load i32, ptr %originalSize.addr, align 4, !dbg !1309
  %38 = load ptr, ptr %lz4sd, align 8, !dbg !1310
  %prefixEnd26 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %38, i32 0, i32 2, !dbg !1311
  %39 = load ptr, ptr %prefixEnd26, align 8, !dbg !1312
  %idx.ext27 = sext i32 %37 to i64, !dbg !1312
  %add.ptr28 = getelementptr i8, ptr %39, i64 %idx.ext27, !dbg !1312
  store ptr %add.ptr28, ptr %prefixEnd26, align 8, !dbg !1312
  br label %if.end48, !dbg !1313

if.else29:                                        ; preds = %if.else
  %40 = load ptr, ptr %lz4sd, align 8, !dbg !1314
  %prefixSize30 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %40, i32 0, i32 3, !dbg !1316
  %41 = load i64, ptr %prefixSize30, align 8, !dbg !1316
  %42 = load ptr, ptr %lz4sd, align 8, !dbg !1317
  %extDictSize31 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %42, i32 0, i32 1, !dbg !1318
  store i64 %41, ptr %extDictSize31, align 8, !dbg !1319
  %43 = load ptr, ptr %lz4sd, align 8, !dbg !1320
  %prefixEnd32 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %43, i32 0, i32 2, !dbg !1321
  %44 = load ptr, ptr %prefixEnd32, align 8, !dbg !1321
  %45 = load ptr, ptr %lz4sd, align 8, !dbg !1322
  %extDictSize33 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %45, i32 0, i32 1, !dbg !1323
  %46 = load i64, ptr %extDictSize33, align 8, !dbg !1323
  %idx.neg = sub i64 0, %46, !dbg !1324
  %add.ptr34 = getelementptr i8, ptr %44, i64 %idx.neg, !dbg !1324
  %47 = load ptr, ptr %lz4sd, align 8, !dbg !1325
  %externalDict35 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %47, i32 0, i32 0, !dbg !1326
  store ptr %add.ptr34, ptr %externalDict35, align 8, !dbg !1327
  %48 = load ptr, ptr %source.addr, align 8, !dbg !1328
  %49 = load ptr, ptr %dest.addr, align 8, !dbg !1329
  %50 = load i32, ptr %originalSize.addr, align 4, !dbg !1330
  %51 = load ptr, ptr %lz4sd, align 8, !dbg !1331
  %externalDict36 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %51, i32 0, i32 0, !dbg !1332
  %52 = load ptr, ptr %externalDict36, align 8, !dbg !1332
  %53 = load ptr, ptr %lz4sd, align 8, !dbg !1333
  %extDictSize37 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %53, i32 0, i32 1, !dbg !1334
  %54 = load i64, ptr %extDictSize37, align 8, !dbg !1334
  %call38 = call i32 @LZ4_decompress_fast_extDict(ptr noundef %48, ptr noundef %49, i32 noundef %50, ptr noundef %52, i64 noundef %54) #7, !dbg !1335
  store i32 %call38, ptr %result, align 4, !dbg !1336
  %55 = load i32, ptr %result, align 4, !dbg !1337
  %cmp39 = icmp sle i32 %55, 0, !dbg !1339
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !1340

if.then41:                                        ; preds = %if.else29
  %56 = load i32, ptr %result, align 4, !dbg !1341
  store i32 %56, ptr %retval, align 4, !dbg !1342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1342

if.end42:                                         ; preds = %if.else29
  %57 = load i32, ptr %originalSize.addr, align 4, !dbg !1343
  %conv43 = sext i32 %57 to i64, !dbg !1343
  %58 = load ptr, ptr %lz4sd, align 8, !dbg !1344
  %prefixSize44 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %58, i32 0, i32 3, !dbg !1345
  store i64 %conv43, ptr %prefixSize44, align 8, !dbg !1346
  %59 = load ptr, ptr %dest.addr, align 8, !dbg !1347
  %60 = load i32, ptr %originalSize.addr, align 4, !dbg !1348
  %idx.ext45 = sext i32 %60 to i64, !dbg !1349
  %add.ptr46 = getelementptr i8, ptr %59, i64 %idx.ext45, !dbg !1349
  %61 = load ptr, ptr %lz4sd, align 8, !dbg !1350
  %prefixEnd47 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %61, i32 0, i32 2, !dbg !1351
  store ptr %add.ptr46, ptr %prefixEnd47, align 8, !dbg !1352
  br label %if.end48

if.end48:                                         ; preds = %if.end42, %if.end23
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end
  %62 = load i32, ptr %result, align 4, !dbg !1353
  store i32 %62, ptr %retval, align 4, !dbg !1354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1354

cleanup:                                          ; preds = %if.end49, %if.then41, %if.then22, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8, !dbg !1355
  call void @llvm.lifetime.end.p0(i64 8, ptr %lz4sd) #8, !dbg !1355
  %63 = load i32, ptr %retval, align 4, !dbg !1355
  ret i32 %63, !dbg !1355
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @LZ4_decompress_fast_doubleDict(ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize, i64 noundef %prefixSize, ptr noundef %dictStart, i64 noundef %dictSize) #2 align 16 !dbg !1356 {
entry:
  %source.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %originalSize.addr = alloca i32, align 4
  %prefixSize.addr = alloca i64, align 8
  %dictStart.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1360, metadata !DIExpression()), !dbg !1366
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !1361, metadata !DIExpression()), !dbg !1367
  store i32 %originalSize, ptr %originalSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %originalSize.addr, metadata !1362, metadata !DIExpression()), !dbg !1368
  store i64 %prefixSize, ptr %prefixSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefixSize.addr, metadata !1363, metadata !DIExpression()), !dbg !1369
  store ptr %dictStart, ptr %dictStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictStart.addr, metadata !1364, metadata !DIExpression()), !dbg !1370
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !1365, metadata !DIExpression()), !dbg !1371
  %0 = load ptr, ptr %source.addr, align 8, !dbg !1372
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !1373
  %2 = load i32, ptr %originalSize.addr, align 4, !dbg !1374
  %3 = load ptr, ptr %dest.addr, align 8, !dbg !1375
  %4 = load i64, ptr %prefixSize.addr, align 8, !dbg !1376
  %idx.neg = sub i64 0, %4, !dbg !1377
  %add.ptr = getelementptr i8, ptr %3, i64 %idx.neg, !dbg !1377
  %5 = load ptr, ptr %dictStart.addr, align 8, !dbg !1378
  %6 = load i64, ptr %dictSize.addr, align 8, !dbg !1379
  %call = call i32 @LZ4_decompress_generic(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 2, ptr noundef %add.ptr, ptr noundef %5, i64 noundef %6) #7, !dbg !1380
  ret i32 %call, !dbg !1381
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @LZ4_decompress_fast_extDict(ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize, ptr noundef %dictStart, i64 noundef %dictSize) #0 align 16 !dbg !1382 {
entry:
  %source.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %originalSize.addr = alloca i32, align 4
  %dictStart.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1386, metadata !DIExpression()), !dbg !1391
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !1387, metadata !DIExpression()), !dbg !1392
  store i32 %originalSize, ptr %originalSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %originalSize.addr, metadata !1388, metadata !DIExpression()), !dbg !1393
  store ptr %dictStart, ptr %dictStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictStart.addr, metadata !1389, metadata !DIExpression()), !dbg !1394
  store i64 %dictSize, ptr %dictSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !1390, metadata !DIExpression()), !dbg !1395
  %0 = load ptr, ptr %source.addr, align 8, !dbg !1396
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !1397
  %2 = load i32, ptr %originalSize.addr, align 4, !dbg !1398
  %3 = load ptr, ptr %dest.addr, align 8, !dbg !1399
  %4 = load ptr, ptr %dictStart.addr, align 8, !dbg !1400
  %5 = load i64, ptr %dictSize.addr, align 8, !dbg !1401
  %call = call i32 @LZ4_decompress_generic(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #7, !dbg !1402
  ret i32 %call, !dbg !1403
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @LZ4_decompress_safe_usingDict(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize, ptr noundef %dictStart, i32 noundef %dictSize) #0 align 16 !dbg !1404 {
entry:
  %retval = alloca i32, align 4
  %source.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %compressedSize.addr = alloca i32, align 4
  %maxOutputSize.addr = alloca i32, align 4
  %dictStart.addr = alloca ptr, align 8
  %dictSize.addr = alloca i32, align 4
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1408, metadata !DIExpression()), !dbg !1414
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !1409, metadata !DIExpression()), !dbg !1415
  store i32 %compressedSize, ptr %compressedSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %compressedSize.addr, metadata !1410, metadata !DIExpression()), !dbg !1416
  store i32 %maxOutputSize, ptr %maxOutputSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxOutputSize.addr, metadata !1411, metadata !DIExpression()), !dbg !1417
  store ptr %dictStart, ptr %dictStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictStart.addr, metadata !1412, metadata !DIExpression()), !dbg !1418
  store i32 %dictSize, ptr %dictSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !1413, metadata !DIExpression()), !dbg !1419
  %0 = load i32, ptr %dictSize.addr, align 4, !dbg !1420
  %cmp = icmp eq i32 %0, 0, !dbg !1422
  br i1 %cmp, label %if.then, label %if.end, !dbg !1423

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %source.addr, align 8, !dbg !1424
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !1425
  %3 = load i32, ptr %compressedSize.addr, align 4, !dbg !1426
  %4 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1427
  %call = call i32 @LZ4_decompress_safe(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #7, !dbg !1428
  store i32 %call, ptr %retval, align 4, !dbg !1429
  br label %return, !dbg !1429

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dictStart.addr, align 8, !dbg !1430
  %6 = load i32, ptr %dictSize.addr, align 4, !dbg !1432
  %idx.ext = sext i32 %6 to i64, !dbg !1433
  %add.ptr = getelementptr i8, ptr %5, i64 %idx.ext, !dbg !1433
  %7 = load ptr, ptr %dest.addr, align 8, !dbg !1434
  %cmp1 = icmp eq ptr %add.ptr, %7, !dbg !1435
  br i1 %cmp1, label %if.then2, label %if.end8, !dbg !1436

if.then2:                                         ; preds = %if.end
  %8 = load i32, ptr %dictSize.addr, align 4, !dbg !1437
  %cmp3 = icmp sge i32 %8, 65535, !dbg !1440
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !1441

if.then4:                                         ; preds = %if.then2
  %9 = load ptr, ptr %source.addr, align 8, !dbg !1442
  %10 = load ptr, ptr %dest.addr, align 8, !dbg !1443
  %11 = load i32, ptr %compressedSize.addr, align 4, !dbg !1444
  %12 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1445
  %call5 = call i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12) #7, !dbg !1446
  store i32 %call5, ptr %retval, align 4, !dbg !1447
  br label %return, !dbg !1447

if.end6:                                          ; preds = %if.then2
  %13 = load ptr, ptr %source.addr, align 8, !dbg !1448
  %14 = load ptr, ptr %dest.addr, align 8, !dbg !1449
  %15 = load i32, ptr %compressedSize.addr, align 4, !dbg !1450
  %16 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1451
  %17 = load i32, ptr %dictSize.addr, align 4, !dbg !1452
  %conv = sext i32 %17 to i64, !dbg !1452
  %call7 = call i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i64 noundef %conv) #7, !dbg !1453
  store i32 %call7, ptr %retval, align 4, !dbg !1454
  br label %return, !dbg !1454

if.end8:                                          ; preds = %if.end
  %18 = load ptr, ptr %source.addr, align 8, !dbg !1455
  %19 = load ptr, ptr %dest.addr, align 8, !dbg !1456
  %20 = load i32, ptr %compressedSize.addr, align 4, !dbg !1457
  %21 = load i32, ptr %maxOutputSize.addr, align 4, !dbg !1458
  %22 = load ptr, ptr %dictStart.addr, align 8, !dbg !1459
  %23 = load i32, ptr %dictSize.addr, align 4, !dbg !1460
  %conv9 = sext i32 %23 to i64, !dbg !1460
  %call10 = call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef %22, i64 noundef %conv9) #7, !dbg !1461
  store i32 %call10, ptr %retval, align 4, !dbg !1462
  br label %return, !dbg !1462

return:                                           ; preds = %if.end8, %if.end6, %if.then4, %if.then
  %24 = load i32, ptr %retval, align 4, !dbg !1463
  ret i32 %24, !dbg !1463
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @LZ4_decompress_fast_usingDict(ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize, ptr noundef %dictStart, i32 noundef %dictSize) #0 align 16 !dbg !1464 {
entry:
  %retval = alloca i32, align 4
  %source.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %originalSize.addr = alloca i32, align 4
  %dictStart.addr = alloca ptr, align 8
  %dictSize.addr = alloca i32, align 4
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1468, metadata !DIExpression()), !dbg !1473
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !1469, metadata !DIExpression()), !dbg !1474
  store i32 %originalSize, ptr %originalSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %originalSize.addr, metadata !1470, metadata !DIExpression()), !dbg !1475
  store ptr %dictStart, ptr %dictStart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dictStart.addr, metadata !1471, metadata !DIExpression()), !dbg !1476
  store i32 %dictSize, ptr %dictSize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dictSize.addr, metadata !1472, metadata !DIExpression()), !dbg !1477
  %0 = load i32, ptr %dictSize.addr, align 4, !dbg !1478
  %cmp = icmp eq i32 %0, 0, !dbg !1480
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1481

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dictStart.addr, align 8, !dbg !1482
  %2 = load i32, ptr %dictSize.addr, align 4, !dbg !1483
  %idx.ext = sext i32 %2 to i64, !dbg !1484
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext, !dbg !1484
  %3 = load ptr, ptr %dest.addr, align 8, !dbg !1485
  %cmp1 = icmp eq ptr %add.ptr, %3, !dbg !1486
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1487

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %source.addr, align 8, !dbg !1488
  %5 = load ptr, ptr %dest.addr, align 8, !dbg !1489
  %6 = load i32, ptr %originalSize.addr, align 4, !dbg !1490
  %call = call i32 @LZ4_decompress_fast(ptr noundef %4, ptr noundef %5, i32 noundef %6) #7, !dbg !1491
  store i32 %call, ptr %retval, align 4, !dbg !1492
  br label %return, !dbg !1492

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %source.addr, align 8, !dbg !1493
  %8 = load ptr, ptr %dest.addr, align 8, !dbg !1494
  %9 = load i32, ptr %originalSize.addr, align 4, !dbg !1495
  %10 = load ptr, ptr %dictStart.addr, align 8, !dbg !1496
  %11 = load i32, ptr %dictSize.addr, align 4, !dbg !1497
  %conv = sext i32 %11 to i64, !dbg !1497
  %call2 = call i32 @LZ4_decompress_fast_extDict(ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, i64 noundef %conv) #7, !dbg !1498
  store i32 %call2, ptr %retval, align 4, !dbg !1499
  br label %return, !dbg !1499

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !1500
  ret i32 %12, !dbg !1500
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @LZ4_readLE16(ptr noundef %memPtr) #2 align 16 !dbg !1501 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !1507, metadata !DIExpression()), !dbg !1508
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !1509
  %call = call zeroext i16 @get_unaligned_le16(ptr noundef %0) #7, !dbg !1510
  ret i16 %call, !dbg !1511
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @LZ4_wildCopy(ptr noundef %dstPtr, ptr noundef %srcPtr, ptr noundef %dstEnd) #2 align 16 !dbg !1512 {
entry:
  %dstPtr.addr = alloca ptr, align 8
  %srcPtr.addr = alloca ptr, align 8
  %dstEnd.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %s = alloca ptr, align 8
  %e = alloca ptr, align 8
  store ptr %dstPtr, ptr %dstPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstPtr.addr, metadata !1516, metadata !DIExpression()), !dbg !1522
  store ptr %srcPtr, ptr %srcPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcPtr.addr, metadata !1517, metadata !DIExpression()), !dbg !1523
  store ptr %dstEnd, ptr %dstEnd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstEnd.addr, metadata !1518, metadata !DIExpression()), !dbg !1524
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #8, !dbg !1525
  call void @llvm.dbg.declare(metadata ptr %d, metadata !1519, metadata !DIExpression()), !dbg !1526
  %0 = load ptr, ptr %dstPtr.addr, align 8, !dbg !1527
  store ptr %0, ptr %d, align 8, !dbg !1526
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !1528
  call void @llvm.dbg.declare(metadata ptr %s, metadata !1520, metadata !DIExpression()), !dbg !1529
  %1 = load ptr, ptr %srcPtr.addr, align 8, !dbg !1530
  store ptr %1, ptr %s, align 8, !dbg !1529
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #8, !dbg !1531
  call void @llvm.dbg.declare(metadata ptr %e, metadata !1521, metadata !DIExpression()), !dbg !1532
  %2 = load ptr, ptr %dstEnd.addr, align 8, !dbg !1533
  store ptr %2, ptr %e, align 8, !dbg !1532
  br label %do.body, !dbg !1534

do.body:                                          ; preds = %do.cond, %entry
  %3 = load ptr, ptr %d, align 8, !dbg !1535
  %4 = load ptr, ptr %s, align 8, !dbg !1537
  call void @LZ4_copy8(ptr noundef %3, ptr noundef %4) #7, !dbg !1538
  %5 = load ptr, ptr %d, align 8, !dbg !1539
  %add.ptr = getelementptr i8, ptr %5, i64 8, !dbg !1539
  store ptr %add.ptr, ptr %d, align 8, !dbg !1539
  %6 = load ptr, ptr %s, align 8, !dbg !1540
  %add.ptr1 = getelementptr i8, ptr %6, i64 8, !dbg !1540
  store ptr %add.ptr1, ptr %s, align 8, !dbg !1540
  br label %do.cond, !dbg !1541

do.cond:                                          ; preds = %do.body
  %7 = load ptr, ptr %d, align 8, !dbg !1542
  %8 = load ptr, ptr %e, align 8, !dbg !1543
  %cmp = icmp ult ptr %7, %8, !dbg !1544
  br i1 %cmp, label %do.body, label %do.end, !dbg !1541, !llvm.loop !1545

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #8, !dbg !1547
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !1547
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #8, !dbg !1547
  ret void, !dbg !1547
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @LZ4_write32(ptr noundef %memPtr, i32 noundef %value) #2 align 16 !dbg !71 {
entry:
  %memPtr.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %__pptr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !75, metadata !DIExpression()), !dbg !1548
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !76, metadata !DIExpression()), !dbg !1549
  br label %do.body, !dbg !1550

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !1551
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !77, metadata !DIExpression()), !dbg !1551
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !1551
  store ptr %0, ptr %__pptr, align 8, !dbg !1551
  %1 = load i32, ptr %value.addr, align 4, !dbg !1551
  %2 = load ptr, ptr %__pptr, align 8, !dbg !1551
  %x = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 0, !dbg !1551
  store i32 %1, ptr %x, align 1, !dbg !1551
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !1550
  br label %do.end, !dbg !1551

do.end:                                           ; preds = %do.body
  ret void, !dbg !1552
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @LZ4_copy8(ptr noundef %dst, ptr noundef %src) #2 align 16 !dbg !85 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pptr1 = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !89, metadata !DIExpression()), !dbg !1553
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !90, metadata !DIExpression()), !dbg !1554
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #8, !dbg !1555
  call void @llvm.dbg.declare(metadata ptr %a, metadata !91, metadata !DIExpression()), !dbg !1556
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !1557
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !97, metadata !DIExpression()), !dbg !1557
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1557
  store ptr %0, ptr %__pptr, align 8, !dbg !1557
  %1 = load ptr, ptr %__pptr, align 8, !dbg !1557
  %x = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 0, !dbg !1557
  %2 = load i64, ptr %x, align 1, !dbg !1557
  store i64 %2, ptr %tmp, align 8, !dbg !1557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !1558
  %3 = load i64, ptr %tmp, align 8, !dbg !1557
  store i64 %3, ptr %a, align 8, !dbg !1556
  br label %do.body, !dbg !1559

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr1) #8, !dbg !1560
  call void @llvm.dbg.declare(metadata ptr %__pptr1, metadata !99, metadata !DIExpression()), !dbg !1560
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1560
  store ptr %4, ptr %__pptr1, align 8, !dbg !1560
  %5 = load i64, ptr %a, align 8, !dbg !1560
  %6 = load ptr, ptr %__pptr1, align 8, !dbg !1560
  %x2 = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 0, !dbg !1560
  store i64 %5, ptr %x2, align 1, !dbg !1560
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr1) #8, !dbg !1559
  br label %do.cond, !dbg !1560

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1560

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #8, !dbg !1561
  ret void, !dbg !1561
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @get_unaligned_le16(ptr noundef %p) #6 align 16 !dbg !57 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !64, metadata !DIExpression()), !dbg !1562
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !1563
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !65, metadata !DIExpression()), !dbg !1563
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1563
  store ptr %0, ptr %__pptr, align 8, !dbg !1563
  %1 = load ptr, ptr %__pptr, align 8, !dbg !1563
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !1563
  %2 = load i16, ptr %x, align 1, !dbg !1563
  store i16 %2, ptr %tmp, align 2, !dbg !1563
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !1564
  %3 = load i16, ptr %tmp, align 2, !dbg !1563
  ret i16 %3, !dbg !1565
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_LZ4_decompress_safe202", scope: !2, file: !3, line: 709, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/lz4/.lz4_decompress.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -O1 -D KBUILD_MODFILE=\22lib/lz4/lz4_decompress\22 -D KBUILD_BASENAME=\22lz4_decompress\22 -D KBUILD_MODNAME=\22lz4_decompress\22 -D __KBUILD_MODNAME=kmod_lz4_decompress -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/lz4/lz4_decompress.ll lib/lz4/lz4_decompress.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !110, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/lz4/lz4_decompress.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3eec63e1dece28d40e49969337902cbd")
!4 = !{!5, !11, !15}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 242, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "lib/lz4/lz4defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c988d233c207f50354ccfc31db64832")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "endOnOutputSize", value: 0)
!10 = !DIEnumerator(name: "endOnInputSize", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 243, baseType: !7, size: 32, elements: !12)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "decode_full_block", value: 0)
!14 = !DIEnumerator(name: "partial_decode", value: 1)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 239, baseType: !7, size: 32, elements: !16)
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "noDict", value: 0)
!18 = !DIEnumerator(name: "withPrefix64k", value: 1)
!19 = !DIEnumerator(name: "usingExtDict", value: 2)
!20 = !{!21, !30, !35, !37, !38, !39, !41, !45, !47, !49, !51, !53, !69, !81, !82, !108, !101, !109}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !6, line: 50, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !24, line: 108, baseType: !25)
!24 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !26, line: 17, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !28, line: 21, baseType: !29)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 61, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !32, line: 72, baseType: !33)
!32 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !32, line: 16, baseType: !34)
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uptrval", file: !6, line: 55, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !24, line: 42, baseType: !34)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !6, line: 52, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !24, line: 110, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !7)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !28, line: 24, baseType: !50)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !52, line: 36, baseType: !49)
!52 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !57, file: !56, line: 27, size: 16, elements: !67)
!56 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!57 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !56, file: !56, line: 25, type: !58, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !26, line: 19, baseType: !49)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!63 = !{!64, !65}
!64 = !DILocalVariable(name: "p", arg: 1, scope: !57, file: !56, line: 25, type: !61)
!65 = !DILocalVariable(name: "__pptr", scope: !66, file: !56, line: 27, type: !53)
!66 = distinct !DILexicalBlock(scope: !57, file: !56, line: 27, column: 9)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !55, file: !56, line: 27, baseType: !51, size: 16)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !71, file: !6, line: 129, size: 32, elements: !79)
!71 = distinct !DISubprogram(name: "LZ4_write32", scope: !6, file: !6, line: 127, type: !72, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !37, !41}
!74 = !{!75, !76, !77}
!75 = !DILocalVariable(name: "memPtr", arg: 1, scope: !71, file: !6, line: 127, type: !37)
!76 = !DILocalVariable(name: "value", arg: 2, scope: !71, file: !6, line: 127, type: !41)
!77 = !DILocalVariable(name: "__pptr", scope: !78, file: !6, line: 129, type: !69)
!78 = distinct !DILexicalBlock(scope: !71, file: !6, line: 129, column: 2)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !70, file: !6, line: 129, baseType: !41, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !85, file: !6, line: 156, size: 64, elements: !105)
!85 = distinct !DISubprogram(name: "LZ4_copy8", scope: !6, file: !6, line: 153, type: !86, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !37, !61}
!88 = !{!89, !90, !91, !97, !99}
!89 = !DILocalVariable(name: "dst", arg: 1, scope: !85, file: !6, line: 153, type: !37)
!90 = !DILocalVariable(name: "src", arg: 2, scope: !85, file: !6, line: 153, type: !61)
!91 = !DILocalVariable(name: "a", scope: !85, file: !6, line: 156, type: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "U64", file: !6, line: 54, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !24, line: 113, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !96)
!96 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!97 = !DILocalVariable(name: "__pptr", scope: !98, file: !6, line: 156, type: !82)
!98 = distinct !DILexicalBlock(scope: !85, file: !6, line: 156, column: 10)
!99 = !DILocalVariable(name: "__pptr", scope: !100, file: !6, line: 158, type: !101)
!100 = distinct !DILexicalBlock(scope: !85, file: !6, line: 158, column: 2)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !85, file: !6, line: 158, size: 64, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !102, file: !6, line: 158, baseType: !92, size: 64)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !84, file: !6, line: 156, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!110 = !{!0, !111, !113, !115, !117, !119, !121, !123, !125, !130, !135, !140, !218}
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_LZ4_decompress_safe_partial203", scope: !2, file: !3, line: 710, type: !37, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_LZ4_decompress_fast204", scope: !2, file: !3, line: 711, type: !37, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_LZ4_setStreamDecode205", scope: !2, file: !3, line: 712, type: !37, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_LZ4_decompress_safe_continue206", scope: !2, file: !3, line: 713, type: !37, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_LZ4_decompress_fast_continue207", scope: !2, file: !3, line: 714, type: !37, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_LZ4_decompress_safe_usingDict208", scope: !2, file: !3, line: 715, type: !37, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_LZ4_decompress_fast_usingDict209", scope: !2, file: !3, line: 716, type: !37, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file210", scope: !2, file: !3, line: 718, type: !127, isLocal: true, isDefinition: true, align: 8)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 344, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 43)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license211", scope: !2, file: !3, line: 718, type: !132, isLocal: true, isDefinition: true, align: 8)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 288, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 36)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description212", scope: !2, file: !3, line: 719, type: !137, isLocal: true, isDefinition: true, align: 8)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 352, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 44)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "inc32table", scope: !142, file: !3, line: 91, type: !215, isLocal: true, isDefinition: true)
!142 = distinct !DISubprogram(name: "LZ4_decompress_generic", scope: !3, file: !3, line: 60, type: !143, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!143 = !DISubroutineType(types: !144)
!144 = !{!38, !145, !146, !38, !38, !147, !148, !149, !150, !150, !151}
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "endCondition_directive", file: !6, line: 242, baseType: !5)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "earlyEnd_directive", file: !6, line: 243, baseType: !11)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict_directive", file: !6, line: 239, baseType: !15)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !184, !185, !188, !194, !195, !198, !199, !202, !203, !206, !208, !209, !210, !211, !214}
!153 = !DILocalVariable(name: "src", arg: 1, scope: !142, file: !3, line: 61, type: !145)
!154 = !DILocalVariable(name: "dst", arg: 2, scope: !142, file: !3, line: 62, type: !146)
!155 = !DILocalVariable(name: "srcSize", arg: 3, scope: !142, file: !3, line: 63, type: !38)
!156 = !DILocalVariable(name: "outputSize", arg: 4, scope: !142, file: !3, line: 68, type: !38)
!157 = !DILocalVariable(name: "endOnInput", arg: 5, scope: !142, file: !3, line: 70, type: !147)
!158 = !DILocalVariable(name: "partialDecoding", arg: 6, scope: !142, file: !3, line: 72, type: !148)
!159 = !DILocalVariable(name: "dict", arg: 7, scope: !142, file: !3, line: 74, type: !149)
!160 = !DILocalVariable(name: "lowPrefix", arg: 8, scope: !142, file: !3, line: 76, type: !150)
!161 = !DILocalVariable(name: "dictStart", arg: 9, scope: !142, file: !3, line: 78, type: !150)
!162 = !DILocalVariable(name: "dictSize", arg: 10, scope: !142, file: !3, line: 80, type: !151)
!163 = !DILocalVariable(name: "ip", scope: !142, file: !3, line: 83, type: !35)
!164 = !DILocalVariable(name: "iend", scope: !142, file: !3, line: 84, type: !150)
!165 = !DILocalVariable(name: "op", scope: !142, file: !3, line: 86, type: !21)
!166 = !DILocalVariable(name: "oend", scope: !142, file: !3, line: 87, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!168 = !DILocalVariable(name: "cpy", scope: !142, file: !3, line: 88, type: !21)
!169 = !DILocalVariable(name: "dictEnd", scope: !142, file: !3, line: 90, type: !150)
!170 = !DILocalVariable(name: "safeDecode", scope: !142, file: !3, line: 94, type: !171)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!172 = !DILocalVariable(name: "checkOffset", scope: !142, file: !3, line: 95, type: !171)
!173 = !DILocalVariable(name: "shortiend", scope: !142, file: !3, line: 98, type: !150)
!174 = !DILocalVariable(name: "shortoend", scope: !142, file: !3, line: 100, type: !150)
!175 = !DILocalVariable(name: "length", scope: !176, file: !3, line: 122, type: !30)
!176 = distinct !DILexicalBlock(scope: !142, file: !3, line: 121, column: 12)
!177 = !DILocalVariable(name: "match", scope: !176, file: !3, line: 123, type: !35)
!178 = !DILocalVariable(name: "offset", scope: !176, file: !3, line: 124, type: !30)
!179 = !DILocalVariable(name: "token", scope: !176, file: !3, line: 127, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!181 = !DILocalVariable(name: "s", scope: !182, file: !3, line: 193, type: !7)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 192, column: 27)
!183 = distinct !DILexicalBlock(scope: !176, file: !3, line: 192, column: 7)
!184 = !DILabel(scope: !176, name: "_copy_match", file: !3, line: 296)
!185 = !DILocalVariable(name: "s", scope: !186, file: !3, line: 315, type: !7)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 314, column: 26)
!187 = distinct !DILexicalBlock(scope: !176, file: !3, line: 314, column: 7)
!188 = !DILocalVariable(name: "__UNIQUE_ID___x196", scope: !189, file: !3, line: 342, type: !30)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 342, column: 14)
!190 = distinct !DILexicalBlock(scope: !191, file: !3, line: 338, column: 53)
!191 = distinct !DILexicalBlock(scope: !192, file: !3, line: 338, column: 8)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 337, column: 54)
!193 = distinct !DILexicalBlock(scope: !176, file: !3, line: 337, column: 7)
!194 = !DILocalVariable(name: "__UNIQUE_ID___y197", scope: !189, file: !3, line: 342, type: !30)
!195 = !DILocalVariable(name: "copySize", scope: !196, file: !3, line: 358, type: !151)
!196 = distinct !DILexicalBlock(scope: !197, file: !3, line: 353, column: 11)
!197 = distinct !DILexicalBlock(scope: !192, file: !3, line: 345, column: 8)
!198 = !DILocalVariable(name: "restSize", scope: !196, file: !3, line: 359, type: !151)
!199 = !DILocalVariable(name: "endOfMatch", scope: !200, file: !3, line: 365, type: !167)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 363, column: 46)
!201 = distinct !DILexicalBlock(scope: !196, file: !3, line: 363, column: 9)
!202 = !DILocalVariable(name: "copyFrom", scope: !200, file: !3, line: 366, type: !35)
!203 = !DILocalVariable(name: "mlen", scope: !204, file: !3, line: 388, type: !151)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 387, column: 48)
!205 = distinct !DILexicalBlock(scope: !176, file: !3, line: 386, column: 7)
!206 = !DILocalVariable(name: "__UNIQUE_ID___x198", scope: !207, file: !3, line: 388, type: !30)
!207 = distinct !DILexicalBlock(scope: !204, file: !3, line: 388, column: 24)
!208 = !DILocalVariable(name: "__UNIQUE_ID___y199", scope: !207, file: !3, line: 388, type: !30)
!209 = !DILocalVariable(name: "matchEnd", scope: !204, file: !3, line: 389, type: !150)
!210 = !DILocalVariable(name: "copyEnd", scope: !204, file: !3, line: 390, type: !167)
!211 = !DILocalVariable(name: "oCopyLimit", scope: !212, file: !3, line: 421, type: !167)
!212 = distinct !DILexicalBlock(scope: !213, file: !3, line: 420, column: 56)
!213 = distinct !DILexicalBlock(scope: !176, file: !3, line: 420, column: 7)
!214 = !DILabel(scope: !142, name: "_output_error", file: !3, line: 456)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 256, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 8)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "dec64table", scope: !142, file: !3, line: 92, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !216)
!221 = !{i32 7, !"Dwarf Version", i32 5}
!222 = !{i32 2, !"Debug Info Version", i32 3}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 8, !"cf-protection-branch", i32 1}
!225 = !{i32 4, !"function_return_thunk_extern", i32 1}
!226 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!227 = !{i32 1, !"Code Model", i32 2}
!228 = !{i32 1, !"override-stack-alignment", i32 8}
!229 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!230 = distinct !DISubprogram(name: "LZ4_decompress_safe", scope: !3, file: !3, line: 460, type: !231, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{!38, !47, !45, !38, !38}
!233 = !{!234, !235, !236, !237}
!234 = !DILocalVariable(name: "source", arg: 1, scope: !230, file: !3, line: 460, type: !47)
!235 = !DILocalVariable(name: "dest", arg: 2, scope: !230, file: !3, line: 460, type: !45)
!236 = !DILocalVariable(name: "compressedSize", arg: 3, scope: !230, file: !3, line: 461, type: !38)
!237 = !DILocalVariable(name: "maxDecompressedSize", arg: 4, scope: !230, file: !3, line: 461, type: !38)
!238 = !DILocation(line: 460, column: 37, scope: !230)
!239 = !DILocation(line: 460, column: 51, scope: !230)
!240 = !DILocation(line: 461, column: 6, scope: !230)
!241 = !DILocation(line: 461, column: 26, scope: !230)
!242 = !DILocation(line: 463, column: 32, scope: !230)
!243 = !DILocation(line: 463, column: 40, scope: !230)
!244 = !DILocation(line: 464, column: 11, scope: !230)
!245 = !DILocation(line: 464, column: 27, scope: !230)
!246 = !DILocation(line: 466, column: 27, scope: !230)
!247 = !DILocation(line: 463, column: 9, scope: !230)
!248 = !DILocation(line: 463, column: 2, scope: !230)
!249 = !DILocation(line: 61, column: 22, scope: !142)
!250 = !DILocation(line: 62, column: 16, scope: !142)
!251 = !DILocation(line: 63, column: 7, scope: !142)
!252 = !DILocation(line: 68, column: 7, scope: !142)
!253 = !DILocation(line: 70, column: 26, scope: !142)
!254 = !DILocation(line: 72, column: 22, scope: !142)
!255 = !DILocation(line: 74, column: 18, scope: !142)
!256 = !DILocation(line: 76, column: 22, scope: !142)
!257 = !DILocation(line: 78, column: 22, scope: !142)
!258 = !DILocation(line: 80, column: 16, scope: !142)
!259 = !DILocation(line: 83, column: 2, scope: !142)
!260 = !DILocation(line: 83, column: 14, scope: !142)
!261 = !DILocation(line: 83, column: 34, scope: !142)
!262 = !DILocation(line: 84, column: 2, scope: !142)
!263 = !DILocation(line: 84, column: 21, scope: !142)
!264 = !DILocation(line: 84, column: 28, scope: !142)
!265 = !DILocation(line: 84, column: 33, scope: !142)
!266 = !DILocation(line: 84, column: 31, scope: !142)
!267 = !DILocation(line: 86, column: 2, scope: !142)
!268 = !DILocation(line: 86, column: 8, scope: !142)
!269 = !DILocation(line: 86, column: 22, scope: !142)
!270 = !DILocation(line: 87, column: 2, scope: !142)
!271 = !DILocation(line: 87, column: 15, scope: !142)
!272 = !DILocation(line: 87, column: 22, scope: !142)
!273 = !DILocation(line: 87, column: 27, scope: !142)
!274 = !DILocation(line: 87, column: 25, scope: !142)
!275 = !DILocation(line: 88, column: 2, scope: !142)
!276 = !DILocation(line: 88, column: 8, scope: !142)
!277 = !DILocation(line: 90, column: 2, scope: !142)
!278 = !DILocation(line: 90, column: 21, scope: !142)
!279 = !DILocation(line: 90, column: 45, scope: !142)
!280 = !DILocation(line: 90, column: 57, scope: !142)
!281 = !DILocation(line: 90, column: 55, scope: !142)
!282 = !DILocation(line: 94, column: 2, scope: !142)
!283 = !DILocation(line: 94, column: 12, scope: !142)
!284 = !DILocation(line: 94, column: 26, scope: !142)
!285 = !DILocation(line: 94, column: 37, scope: !142)
!286 = !DILocation(line: 95, column: 2, scope: !142)
!287 = !DILocation(line: 95, column: 12, scope: !142)
!288 = !DILocation(line: 95, column: 28, scope: !142)
!289 = !DILocation(line: 95, column: 27, scope: !142)
!290 = !DILocation(line: 95, column: 40, scope: !142)
!291 = !DILocation(line: 95, column: 44, scope: !142)
!292 = !DILocation(line: 95, column: 53, scope: !142)
!293 = !DILocation(line: 0, scope: !142)
!294 = !DILocation(line: 98, column: 2, scope: !142)
!295 = !DILocation(line: 98, column: 20, scope: !142)
!296 = !DILocation(line: 98, column: 32, scope: !142)
!297 = !DILocation(line: 99, column: 4, scope: !142)
!298 = !DILocation(line: 98, column: 37, scope: !142)
!299 = !DILocation(line: 99, column: 35, scope: !142)
!300 = !DILocation(line: 100, column: 2, scope: !142)
!301 = !DILocation(line: 100, column: 20, scope: !142)
!302 = !DILocation(line: 100, column: 32, scope: !142)
!303 = !DILocation(line: 101, column: 4, scope: !142)
!304 = !DILocation(line: 100, column: 37, scope: !142)
!305 = !DILocation(line: 101, column: 35, scope: !142)
!306 = !DILocation(line: 111, column: 7, scope: !307)
!307 = distinct !DILexicalBlock(scope: !142, file: !3, line: 111, column: 6)
!308 = !DILocation(line: 111, column: 6, scope: !307)
!309 = !DILocation(line: 111, column: 19, scope: !307)
!310 = !DILocation(line: 111, column: 23, scope: !307)
!311 = !DILocation(line: 111, column: 6, scope: !142)
!312 = !DILocation(line: 112, column: 12, scope: !307)
!313 = !DILocation(line: 112, column: 20, scope: !307)
!314 = !DILocation(line: 112, column: 26, scope: !307)
!315 = !DILocation(line: 112, column: 31, scope: !307)
!316 = !DILocation(line: 112, column: 30, scope: !307)
!317 = !DILocation(line: 112, column: 34, scope: !307)
!318 = !DILocation(line: 0, scope: !307)
!319 = !DILocation(line: 112, column: 10, scope: !307)
!320 = !DILocation(line: 112, column: 3, scope: !307)
!321 = !DILocation(line: 114, column: 8, scope: !322)
!322 = distinct !DILexicalBlock(scope: !142, file: !3, line: 114, column: 6)
!323 = !DILocation(line: 114, column: 20, scope: !322)
!324 = !DILocation(line: 114, column: 24, scope: !322)
!325 = !DILocation(line: 114, column: 6, scope: !142)
!326 = !DILocation(line: 115, column: 12, scope: !322)
!327 = !DILocation(line: 115, column: 11, scope: !322)
!328 = !DILocation(line: 115, column: 15, scope: !322)
!329 = !DILocation(line: 115, column: 3, scope: !322)
!330 = !DILocation(line: 117, column: 7, scope: !331)
!331 = distinct !DILexicalBlock(scope: !142, file: !3, line: 117, column: 6)
!332 = !DILocation(line: 117, column: 6, scope: !331)
!333 = !DILocation(line: 117, column: 19, scope: !331)
!334 = !DILocation(line: 117, column: 22, scope: !331)
!335 = !DILocation(line: 117, column: 6, scope: !142)
!336 = !DILocation(line: 118, column: 3, scope: !331)
!337 = !DILocation(line: 121, column: 2, scope: !142)
!338 = !DILocation(line: 122, column: 3, scope: !176)
!339 = !DILocation(line: 122, column: 10, scope: !176)
!340 = !DILocation(line: 123, column: 3, scope: !176)
!341 = !DILocation(line: 123, column: 15, scope: !176)
!342 = !DILocation(line: 124, column: 3, scope: !176)
!343 = !DILocation(line: 124, column: 10, scope: !176)
!344 = !DILocation(line: 127, column: 3, scope: !176)
!345 = !DILocation(line: 127, column: 22, scope: !176)
!346 = !DILocation(line: 127, column: 33, scope: !176)
!347 = !DILocation(line: 127, column: 30, scope: !176)
!348 = !DILocation(line: 128, column: 12, scope: !176)
!349 = !DILocation(line: 128, column: 17, scope: !176)
!350 = !DILocation(line: 128, column: 10, scope: !176)
!351 = !DILocation(line: 148, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !176, file: !3, line: 148, column: 7)
!353 = !DILocation(line: 153, column: 6, scope: !352)
!354 = !DILocation(line: 148, column: 21, scope: !352)
!355 = !DILocation(line: 148, column: 28, scope: !352)
!356 = !DILocation(line: 148, column: 42, scope: !352)
!357 = !DILocation(line: 148, column: 49, scope: !352)
!358 = !DILocation(line: 153, column: 9, scope: !352)
!359 = !DILocation(line: 148, column: 7, scope: !176)
!360 = !DILocation(line: 156, column: 4, scope: !361)
!361 = distinct !DILexicalBlock(scope: !352, file: !3, line: 154, column: 29)
!362 = !DILocation(line: 157, column: 10, scope: !361)
!363 = !DILocation(line: 157, column: 7, scope: !361)
!364 = !DILocation(line: 157, column: 24, scope: !361)
!365 = !DILocation(line: 157, column: 21, scope: !361)
!366 = !DILocation(line: 164, column: 13, scope: !361)
!367 = !DILocation(line: 164, column: 19, scope: !361)
!368 = !DILocation(line: 164, column: 11, scope: !361)
!369 = !DILocation(line: 165, column: 26, scope: !361)
!370 = !DILocation(line: 165, column: 13, scope: !361)
!371 = !DILocation(line: 165, column: 11, scope: !361)
!372 = !DILocation(line: 166, column: 7, scope: !361)
!373 = !DILocation(line: 167, column: 12, scope: !361)
!374 = !DILocation(line: 167, column: 17, scope: !361)
!375 = !DILocation(line: 167, column: 15, scope: !361)
!376 = !DILocation(line: 167, column: 10, scope: !361)
!377 = !DILocation(line: 171, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !361, file: !3, line: 171, column: 8)
!379 = !DILocation(line: 171, column: 16, scope: !378)
!380 = !DILocation(line: 171, column: 28, scope: !378)
!381 = !DILocation(line: 172, column: 9, scope: !378)
!382 = !DILocation(line: 172, column: 16, scope: !378)
!383 = !DILocation(line: 172, column: 22, scope: !378)
!384 = !DILocation(line: 173, column: 9, scope: !378)
!385 = !DILocation(line: 173, column: 14, scope: !378)
!386 = !DILocation(line: 173, column: 31, scope: !378)
!387 = !DILocation(line: 173, column: 34, scope: !378)
!388 = !DILocation(line: 173, column: 43, scope: !378)
!389 = !DILocation(line: 173, column: 40, scope: !378)
!390 = !DILocation(line: 171, column: 8, scope: !361)
!391 = !DILocation(line: 175, column: 5, scope: !392)
!392 = distinct !DILexicalBlock(scope: !378, file: !3, line: 173, column: 55)
!393 = !DILocation(line: 176, column: 5, scope: !392)
!394 = !DILocation(line: 177, column: 5, scope: !392)
!395 = !DILocation(line: 178, column: 11, scope: !392)
!396 = !DILocation(line: 178, column: 18, scope: !392)
!397 = !DILocation(line: 178, column: 8, scope: !392)
!398 = !DILocation(line: 180, column: 5, scope: !392)
!399 = distinct !{!399, !337, !400, !401}
!400 = !DILocation(line: 444, column: 2, scope: !142)
!401 = !{!"llvm.loop.unroll.disable"}
!402 = !DILocation(line: 188, column: 4, scope: !361)
!403 = !DILocation(line: 192, column: 7, scope: !183)
!404 = !DILocation(line: 192, column: 14, scope: !183)
!405 = !DILocation(line: 192, column: 7, scope: !176)
!406 = !DILocation(line: 193, column: 4, scope: !182)
!407 = !DILocation(line: 193, column: 17, scope: !182)
!408 = !DILocation(line: 195, column: 8, scope: !409)
!409 = distinct !DILexicalBlock(scope: !182, file: !3, line: 195, column: 8)
!410 = !DILocation(line: 195, column: 8, scope: !182)
!411 = !DILocation(line: 197, column: 5, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !3, line: 195, column: 58)
!413 = !DILocation(line: 199, column: 4, scope: !182)
!414 = !DILocation(line: 200, column: 12, scope: !415)
!415 = distinct !DILexicalBlock(scope: !182, file: !3, line: 199, column: 7)
!416 = !DILocation(line: 200, column: 9, scope: !415)
!417 = !DILocation(line: 200, column: 7, scope: !415)
!418 = !DILocation(line: 201, column: 15, scope: !415)
!419 = !DILocation(line: 201, column: 12, scope: !415)
!420 = !DILocation(line: 202, column: 4, scope: !415)
!421 = !DILocation(line: 202, column: 13, scope: !182)
!422 = !DILocation(line: 204, column: 13, scope: !182)
!423 = !DILocation(line: 204, column: 15, scope: !182)
!424 = !DILocation(line: 204, column: 12, scope: !182)
!425 = !DILocation(line: 204, column: 10, scope: !182)
!426 = distinct !{!426, !413, !427, !428, !401}
!427 = !DILocation(line: 204, column: 22, scope: !182)
!428 = !{!"llvm.loop.mustprogress"}
!429 = !DILocation(line: 206, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !182, file: !3, line: 206, column: 8)
!431 = !DILocation(line: 206, column: 8, scope: !430)
!432 = !DILocation(line: 207, column: 8, scope: !430)
!433 = !DILocation(line: 207, column: 11, scope: !430)
!434 = !DILocation(line: 206, column: 8, scope: !182)
!435 = !DILocation(line: 210, column: 5, scope: !436)
!436 = distinct !DILexicalBlock(scope: !430, file: !3, line: 208, column: 31)
!437 = !DILocation(line: 212, column: 9, scope: !438)
!438 = distinct !DILexicalBlock(scope: !182, file: !3, line: 212, column: 8)
!439 = !DILocation(line: 212, column: 8, scope: !438)
!440 = !DILocation(line: 213, column: 8, scope: !438)
!441 = !DILocation(line: 213, column: 11, scope: !438)
!442 = !DILocation(line: 212, column: 8, scope: !182)
!443 = !DILocation(line: 216, column: 5, scope: !444)
!444 = distinct !DILexicalBlock(scope: !438, file: !3, line: 214, column: 31)
!445 = !DILocation(line: 218, column: 3, scope: !183)
!446 = !DILocation(line: 218, column: 3, scope: !182)
!447 = !DILocation(line: 221, column: 9, scope: !176)
!448 = !DILocation(line: 221, column: 14, scope: !176)
!449 = !DILocation(line: 221, column: 12, scope: !176)
!450 = !DILocation(line: 221, column: 7, scope: !176)
!451 = !DILocation(line: 222, column: 3, scope: !176)
!452 = !DILocation(line: 222, column: 3, scope: !453)
!453 = distinct !DILexicalBlock(scope: !176, file: !3, line: 222, column: 3)
!454 = !DILocation(line: 224, column: 9, scope: !455)
!455 = distinct !DILexicalBlock(scope: !176, file: !3, line: 224, column: 7)
!456 = !DILocation(line: 224, column: 8, scope: !455)
!457 = !DILocation(line: 224, column: 21, scope: !455)
!458 = !DILocation(line: 224, column: 26, scope: !455)
!459 = !DILocation(line: 224, column: 32, scope: !455)
!460 = !DILocation(line: 224, column: 37, scope: !455)
!461 = !DILocation(line: 224, column: 30, scope: !455)
!462 = !DILocation(line: 225, column: 4, scope: !455)
!463 = !DILocation(line: 225, column: 8, scope: !455)
!464 = !DILocation(line: 225, column: 13, scope: !455)
!465 = !DILocation(line: 225, column: 11, scope: !455)
!466 = !DILocation(line: 225, column: 22, scope: !455)
!467 = !DILocation(line: 225, column: 27, scope: !455)
!468 = !DILocation(line: 225, column: 20, scope: !455)
!469 = !DILocation(line: 226, column: 4, scope: !455)
!470 = !DILocation(line: 226, column: 10, scope: !455)
!471 = !DILocation(line: 226, column: 22, scope: !455)
!472 = !DILocation(line: 226, column: 26, scope: !455)
!473 = !DILocation(line: 226, column: 32, scope: !455)
!474 = !DILocation(line: 226, column: 37, scope: !455)
!475 = !DILocation(line: 226, column: 30, scope: !455)
!476 = !DILocation(line: 224, column: 7, scope: !176)
!477 = !DILocation(line: 227, column: 8, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 227, column: 8)
!479 = distinct !DILexicalBlock(scope: !455, file: !3, line: 226, column: 57)
!480 = !DILocation(line: 227, column: 8, scope: !479)
!481 = !DILocation(line: 228, column: 9, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 228, column: 9)
!483 = distinct !DILexicalBlock(scope: !478, file: !3, line: 227, column: 25)
!484 = !DILocation(line: 228, column: 15, scope: !482)
!485 = !DILocation(line: 228, column: 13, scope: !482)
!486 = !DILocation(line: 228, column: 9, scope: !483)
!487 = !DILocation(line: 233, column: 12, scope: !488)
!488 = distinct !DILexicalBlock(scope: !482, file: !3, line: 228, column: 21)
!489 = !DILocation(line: 233, column: 10, scope: !488)
!490 = !DILocation(line: 234, column: 15, scope: !488)
!491 = !DILocation(line: 234, column: 22, scope: !488)
!492 = !DILocation(line: 234, column: 20, scope: !488)
!493 = !DILocation(line: 234, column: 13, scope: !488)
!494 = !DILocation(line: 235, column: 5, scope: !488)
!495 = !DILocation(line: 236, column: 10, scope: !496)
!496 = distinct !DILexicalBlock(scope: !483, file: !3, line: 236, column: 9)
!497 = !DILocation(line: 236, column: 9, scope: !496)
!498 = !DILocation(line: 237, column: 6, scope: !496)
!499 = !DILocation(line: 237, column: 10, scope: !496)
!500 = !DILocation(line: 237, column: 15, scope: !496)
!501 = !DILocation(line: 237, column: 13, scope: !496)
!502 = !DILocation(line: 237, column: 24, scope: !496)
!503 = !DILocation(line: 237, column: 22, scope: !496)
!504 = !DILocation(line: 236, column: 9, scope: !483)
!505 = !DILocation(line: 243, column: 6, scope: !506)
!506 = distinct !DILexicalBlock(scope: !496, file: !3, line: 237, column: 31)
!507 = !DILocation(line: 245, column: 4, scope: !483)
!508 = !DILocation(line: 246, column: 11, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 246, column: 9)
!510 = distinct !DILexicalBlock(scope: !478, file: !3, line: 245, column: 11)
!511 = !DILocation(line: 247, column: 6, scope: !509)
!512 = !DILocation(line: 247, column: 10, scope: !509)
!513 = !DILocation(line: 247, column: 17, scope: !509)
!514 = !DILocation(line: 247, column: 14, scope: !509)
!515 = !DILocation(line: 246, column: 9, scope: !510)
!516 = !DILocation(line: 253, column: 6, scope: !517)
!517 = distinct !DILexicalBlock(scope: !509, file: !3, line: 247, column: 24)
!518 = !DILocation(line: 255, column: 10, scope: !519)
!519 = distinct !DILexicalBlock(scope: !510, file: !3, line: 255, column: 9)
!520 = !DILocation(line: 255, column: 9, scope: !519)
!521 = !DILocation(line: 256, column: 6, scope: !519)
!522 = !DILocation(line: 256, column: 11, scope: !519)
!523 = !DILocation(line: 256, column: 16, scope: !519)
!524 = !DILocation(line: 256, column: 14, scope: !519)
!525 = !DILocation(line: 256, column: 26, scope: !519)
!526 = !DILocation(line: 256, column: 23, scope: !519)
!527 = !DILocation(line: 257, column: 6, scope: !519)
!528 = !DILocation(line: 257, column: 10, scope: !519)
!529 = !DILocation(line: 257, column: 16, scope: !519)
!530 = !DILocation(line: 257, column: 14, scope: !519)
!531 = !DILocation(line: 255, column: 9, scope: !510)
!532 = !DILocation(line: 262, column: 6, scope: !533)
!533 = distinct !DILexicalBlock(scope: !519, file: !3, line: 257, column: 24)
!534 = !DILocation(line: 270, column: 4, scope: !479)
!535 = !DILocation(line: 271, column: 10, scope: !479)
!536 = !DILocation(line: 271, column: 7, scope: !479)
!537 = !DILocation(line: 272, column: 10, scope: !479)
!538 = !DILocation(line: 272, column: 7, scope: !479)
!539 = !DILocation(line: 279, column: 9, scope: !540)
!540 = distinct !DILexicalBlock(scope: !479, file: !3, line: 279, column: 8)
!541 = !DILocation(line: 279, column: 25, scope: !540)
!542 = !DILocation(line: 279, column: 29, scope: !540)
!543 = !DILocation(line: 279, column: 36, scope: !540)
!544 = !DILocation(line: 279, column: 33, scope: !540)
!545 = !DILocation(line: 279, column: 42, scope: !540)
!546 = !DILocation(line: 279, column: 46, scope: !540)
!547 = !DILocation(line: 279, column: 53, scope: !540)
!548 = !DILocation(line: 279, column: 58, scope: !540)
!549 = !DILocation(line: 279, column: 49, scope: !540)
!550 = !DILocation(line: 279, column: 8, scope: !479)
!551 = !DILocation(line: 280, column: 5, scope: !540)
!552 = !DILocation(line: 281, column: 3, scope: !479)
!553 = !DILocation(line: 283, column: 17, scope: !554)
!554 = distinct !DILexicalBlock(scope: !455, file: !3, line: 281, column: 10)
!555 = !DILocation(line: 283, column: 21, scope: !554)
!556 = !DILocation(line: 283, column: 25, scope: !554)
!557 = !DILocation(line: 283, column: 4, scope: !554)
!558 = !DILocation(line: 284, column: 10, scope: !554)
!559 = !DILocation(line: 284, column: 7, scope: !554)
!560 = !DILocation(line: 285, column: 9, scope: !554)
!561 = !DILocation(line: 285, column: 7, scope: !554)
!562 = !DILocation(line: 289, column: 25, scope: !176)
!563 = !DILocation(line: 289, column: 12, scope: !176)
!564 = !DILocation(line: 289, column: 10, scope: !176)
!565 = !DILocation(line: 290, column: 6, scope: !176)
!566 = !DILocation(line: 291, column: 11, scope: !176)
!567 = !DILocation(line: 291, column: 16, scope: !176)
!568 = !DILocation(line: 291, column: 14, scope: !176)
!569 = !DILocation(line: 291, column: 9, scope: !176)
!570 = !DILocation(line: 294, column: 12, scope: !176)
!571 = !DILocation(line: 294, column: 18, scope: !176)
!572 = !DILocation(line: 294, column: 10, scope: !176)
!573 = !DILocation(line: 294, column: 3, scope: !176)
!574 = !DILocation(line: 296, column: 1, scope: !176)
!575 = !DILocation(line: 297, column: 8, scope: !576)
!576 = distinct !DILexicalBlock(scope: !176, file: !3, line: 297, column: 7)
!577 = !DILocation(line: 297, column: 7, scope: !576)
!578 = !DILocation(line: 297, column: 21, scope: !576)
!579 = !DILocation(line: 297, column: 25, scope: !576)
!580 = !DILocation(line: 297, column: 7, scope: !176)
!581 = !DILocation(line: 299, column: 4, scope: !582)
!582 = distinct !DILexicalBlock(scope: !576, file: !3, line: 297, column: 66)
!583 = !DILocation(line: 307, column: 8, scope: !584)
!584 = distinct !DILexicalBlock(scope: !176, file: !3, line: 307, column: 7)
!585 = !DILocation(line: 307, column: 7, scope: !176)
!586 = !DILocation(line: 311, column: 16, scope: !587)
!587 = distinct !DILexicalBlock(scope: !584, file: !3, line: 307, column: 25)
!588 = !DILocation(line: 311, column: 25, scope: !587)
!589 = !DILocation(line: 311, column: 20, scope: !587)
!590 = !DILocation(line: 311, column: 4, scope: !587)
!591 = !DILocation(line: 312, column: 3, scope: !587)
!592 = !DILocation(line: 314, column: 7, scope: !187)
!593 = !DILocation(line: 314, column: 14, scope: !187)
!594 = !DILocation(line: 314, column: 7, scope: !176)
!595 = !DILocation(line: 315, column: 4, scope: !186)
!596 = !DILocation(line: 315, column: 17, scope: !186)
!597 = !DILocation(line: 317, column: 4, scope: !186)
!598 = !DILocation(line: 318, column: 12, scope: !599)
!599 = distinct !DILexicalBlock(scope: !186, file: !3, line: 317, column: 7)
!600 = !DILocation(line: 318, column: 9, scope: !599)
!601 = !DILocation(line: 318, column: 7, scope: !599)
!602 = !DILocation(line: 320, column: 10, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !3, line: 320, column: 9)
!604 = !DILocation(line: 320, column: 9, scope: !603)
!605 = !DILocation(line: 320, column: 22, scope: !603)
!606 = !DILocation(line: 320, column: 26, scope: !603)
!607 = !DILocation(line: 320, column: 31, scope: !603)
!608 = !DILocation(line: 320, column: 36, scope: !603)
!609 = !DILocation(line: 320, column: 29, scope: !603)
!610 = !DILocation(line: 320, column: 9, scope: !599)
!611 = !DILocation(line: 321, column: 6, scope: !603)
!612 = !DILocation(line: 323, column: 15, scope: !599)
!613 = !DILocation(line: 323, column: 12, scope: !599)
!614 = !DILocation(line: 324, column: 4, scope: !599)
!615 = !DILocation(line: 324, column: 13, scope: !186)
!616 = !DILocation(line: 324, column: 15, scope: !186)
!617 = distinct !{!617, !597, !618, !428, !401}
!618 = !DILocation(line: 324, column: 21, scope: !186)
!619 = !DILocation(line: 326, column: 9, scope: !620)
!620 = distinct !DILexicalBlock(scope: !186, file: !3, line: 326, column: 8)
!621 = !DILocation(line: 326, column: 8, scope: !620)
!622 = !DILocation(line: 327, column: 5, scope: !620)
!623 = !DILocation(line: 327, column: 8, scope: !620)
!624 = !DILocation(line: 326, column: 8, scope: !186)
!625 = !DILocation(line: 330, column: 5, scope: !626)
!626 = distinct !DILexicalBlock(scope: !620, file: !3, line: 328, column: 45)
!627 = !DILocation(line: 332, column: 3, scope: !187)
!628 = !DILocation(line: 332, column: 3, scope: !186)
!629 = !DILocation(line: 334, column: 10, scope: !176)
!630 = !DILocation(line: 337, column: 8, scope: !193)
!631 = !DILocation(line: 337, column: 13, scope: !193)
!632 = !DILocation(line: 337, column: 30, scope: !193)
!633 = !DILocation(line: 337, column: 34, scope: !193)
!634 = !DILocation(line: 337, column: 42, scope: !193)
!635 = !DILocation(line: 337, column: 40, scope: !193)
!636 = !DILocation(line: 337, column: 7, scope: !176)
!637 = !DILocation(line: 338, column: 8, scope: !191)
!638 = !DILocation(line: 338, column: 8, scope: !192)
!639 = !DILocation(line: 340, column: 10, scope: !640)
!640 = distinct !DILexicalBlock(scope: !190, file: !3, line: 340, column: 9)
!641 = !DILocation(line: 340, column: 9, scope: !190)
!642 = !DILocation(line: 341, column: 6, scope: !640)
!643 = !DILocation(line: 342, column: 14, scope: !189)
!644 = !DILocation(line: 342, column: 14, scope: !190)
!645 = !DILocation(line: 342, column: 12, scope: !190)
!646 = !DILocation(line: 343, column: 4, scope: !190)
!647 = !DILocation(line: 345, column: 8, scope: !197)
!648 = !DILocation(line: 345, column: 27, scope: !197)
!649 = !DILocation(line: 345, column: 39, scope: !197)
!650 = !DILocation(line: 345, column: 37, scope: !197)
!651 = !DILocation(line: 345, column: 15, scope: !197)
!652 = !DILocation(line: 345, column: 8, scope: !192)
!653 = !DILocation(line: 350, column: 13, scope: !654)
!654 = distinct !DILexicalBlock(scope: !197, file: !3, line: 345, column: 47)
!655 = !DILocation(line: 350, column: 17, scope: !654)
!656 = !DILocation(line: 350, column: 28, scope: !654)
!657 = !DILocation(line: 350, column: 40, scope: !654)
!658 = !DILocation(line: 350, column: 38, scope: !654)
!659 = !DILocation(line: 350, column: 25, scope: !654)
!660 = !DILocation(line: 351, column: 6, scope: !654)
!661 = !DILocation(line: 350, column: 5, scope: !654)
!662 = !DILocation(line: 352, column: 11, scope: !654)
!663 = !DILocation(line: 352, column: 8, scope: !654)
!664 = !DILocation(line: 353, column: 4, scope: !654)
!665 = !DILocation(line: 358, column: 5, scope: !196)
!666 = !DILocation(line: 358, column: 18, scope: !196)
!667 = !DILocation(line: 358, column: 38, scope: !196)
!668 = !DILocation(line: 358, column: 50, scope: !196)
!669 = !DILocation(line: 358, column: 48, scope: !196)
!670 = !DILocation(line: 359, column: 5, scope: !196)
!671 = !DILocation(line: 359, column: 18, scope: !196)
!672 = !DILocation(line: 359, column: 29, scope: !196)
!673 = !DILocation(line: 359, column: 38, scope: !196)
!674 = !DILocation(line: 359, column: 36, scope: !196)
!675 = !DILocation(line: 361, column: 5, scope: !196)
!676 = !DILocation(line: 362, column: 11, scope: !196)
!677 = !DILocation(line: 362, column: 8, scope: !196)
!678 = !DILocation(line: 363, column: 9, scope: !201)
!679 = !DILocation(line: 363, column: 29, scope: !201)
!680 = !DILocation(line: 363, column: 34, scope: !201)
!681 = !DILocation(line: 363, column: 32, scope: !201)
!682 = !DILocation(line: 363, column: 18, scope: !201)
!683 = !DILocation(line: 363, column: 9, scope: !196)
!684 = !DILocation(line: 365, column: 6, scope: !200)
!685 = !DILocation(line: 365, column: 19, scope: !200)
!686 = !DILocation(line: 365, column: 32, scope: !200)
!687 = !DILocation(line: 365, column: 37, scope: !200)
!688 = !DILocation(line: 365, column: 35, scope: !200)
!689 = !DILocation(line: 366, column: 6, scope: !200)
!690 = !DILocation(line: 366, column: 18, scope: !200)
!691 = !DILocation(line: 366, column: 29, scope: !200)
!692 = !DILocation(line: 368, column: 6, scope: !200)
!693 = !DILocation(line: 368, column: 13, scope: !200)
!694 = !DILocation(line: 368, column: 18, scope: !200)
!695 = !DILocation(line: 368, column: 16, scope: !200)
!696 = !DILocation(line: 369, column: 24, scope: !200)
!697 = !DILocation(line: 369, column: 15, scope: !200)
!698 = !DILocation(line: 369, column: 10, scope: !200)
!699 = !DILocation(line: 369, column: 13, scope: !200)
!700 = distinct !{!700, !692, !696, !428, !401}
!701 = !DILocation(line: 370, column: 5, scope: !201)
!702 = !DILocation(line: 370, column: 5, scope: !200)
!703 = !DILocation(line: 371, column: 6, scope: !704)
!704 = distinct !DILexicalBlock(scope: !201, file: !3, line: 370, column: 12)
!705 = !DILocation(line: 372, column: 12, scope: !704)
!706 = !DILocation(line: 372, column: 9, scope: !704)
!707 = !DILocation(line: 374, column: 4, scope: !197)
!708 = !DILocation(line: 375, column: 4, scope: !192)
!709 = !DILocation(line: 379, column: 9, scope: !176)
!710 = !DILocation(line: 379, column: 14, scope: !176)
!711 = !DILocation(line: 379, column: 12, scope: !176)
!712 = !DILocation(line: 379, column: 7, scope: !176)
!713 = !DILocation(line: 386, column: 7, scope: !205)
!714 = !DILocation(line: 386, column: 23, scope: !205)
!715 = !DILocation(line: 387, column: 8, scope: !205)
!716 = !DILocation(line: 387, column: 14, scope: !205)
!717 = !DILocation(line: 387, column: 19, scope: !205)
!718 = !DILocation(line: 387, column: 12, scope: !205)
!719 = !DILocation(line: 386, column: 7, scope: !176)
!720 = !DILocation(line: 388, column: 4, scope: !204)
!721 = !DILocation(line: 388, column: 17, scope: !204)
!722 = !DILocation(line: 388, column: 24, scope: !207)
!723 = !DILocation(line: 388, column: 24, scope: !204)
!724 = !DILocation(line: 389, column: 4, scope: !204)
!725 = !DILocation(line: 389, column: 23, scope: !204)
!726 = !DILocation(line: 389, column: 34, scope: !204)
!727 = !DILocation(line: 389, column: 42, scope: !204)
!728 = !DILocation(line: 389, column: 40, scope: !204)
!729 = !DILocation(line: 390, column: 4, scope: !204)
!730 = !DILocation(line: 390, column: 17, scope: !204)
!731 = !DILocation(line: 390, column: 27, scope: !204)
!732 = !DILocation(line: 390, column: 32, scope: !204)
!733 = !DILocation(line: 390, column: 30, scope: !204)
!734 = !DILocation(line: 392, column: 8, scope: !735)
!735 = distinct !DILexicalBlock(scope: !204, file: !3, line: 392, column: 8)
!736 = !DILocation(line: 392, column: 19, scope: !735)
!737 = !DILocation(line: 392, column: 17, scope: !735)
!738 = !DILocation(line: 392, column: 8, scope: !204)
!739 = !DILocation(line: 394, column: 5, scope: !740)
!740 = distinct !DILexicalBlock(scope: !735, file: !3, line: 392, column: 23)
!741 = !DILocation(line: 394, column: 12, scope: !740)
!742 = !DILocation(line: 394, column: 17, scope: !740)
!743 = !DILocation(line: 394, column: 15, scope: !740)
!744 = !DILocation(line: 395, column: 20, scope: !740)
!745 = !DILocation(line: 395, column: 14, scope: !740)
!746 = !DILocation(line: 395, column: 9, scope: !740)
!747 = !DILocation(line: 395, column: 12, scope: !740)
!748 = distinct !{!748, !739, !744, !428, !401}
!749 = !DILocation(line: 396, column: 4, scope: !740)
!750 = !DILocation(line: 397, column: 5, scope: !751)
!751 = distinct !DILexicalBlock(scope: !735, file: !3, line: 396, column: 11)
!752 = !DILocation(line: 399, column: 9, scope: !204)
!753 = !DILocation(line: 399, column: 7, scope: !204)
!754 = !DILocation(line: 400, column: 8, scope: !755)
!755 = distinct !DILexicalBlock(scope: !204, file: !3, line: 400, column: 8)
!756 = !DILocation(line: 400, column: 14, scope: !755)
!757 = !DILocation(line: 400, column: 11, scope: !755)
!758 = !DILocation(line: 400, column: 8, scope: !204)
!759 = !DILocation(line: 401, column: 5, scope: !755)
!760 = !DILocation(line: 402, column: 4, scope: !204)
!761 = !DILocation(line: 403, column: 3, scope: !205)
!762 = !DILocation(line: 405, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !176, file: !3, line: 405, column: 7)
!764 = !DILocation(line: 405, column: 7, scope: !176)
!765 = !DILocation(line: 406, column: 12, scope: !766)
!766 = distinct !DILexicalBlock(scope: !763, file: !3, line: 405, column: 29)
!767 = !DILocation(line: 406, column: 4, scope: !766)
!768 = !DILocation(line: 406, column: 10, scope: !766)
!769 = !DILocation(line: 407, column: 12, scope: !766)
!770 = !DILocation(line: 407, column: 4, scope: !766)
!771 = !DILocation(line: 407, column: 10, scope: !766)
!772 = !DILocation(line: 408, column: 12, scope: !766)
!773 = !DILocation(line: 408, column: 4, scope: !766)
!774 = !DILocation(line: 408, column: 10, scope: !766)
!775 = !DILocation(line: 409, column: 12, scope: !766)
!776 = !DILocation(line: 409, column: 4, scope: !766)
!777 = !DILocation(line: 409, column: 10, scope: !766)
!778 = !DILocation(line: 410, column: 24, scope: !766)
!779 = !DILocation(line: 410, column: 13, scope: !766)
!780 = !DILocation(line: 410, column: 10, scope: !766)
!781 = !DILocation(line: 411, column: 4, scope: !766)
!782 = !DILocation(line: 412, column: 24, scope: !766)
!783 = !DILocation(line: 412, column: 13, scope: !766)
!784 = !DILocation(line: 412, column: 10, scope: !766)
!785 = !DILocation(line: 413, column: 3, scope: !766)
!786 = !DILocation(line: 414, column: 14, scope: !787)
!787 = distinct !DILexicalBlock(scope: !763, file: !3, line: 413, column: 10)
!788 = !DILocation(line: 414, column: 18, scope: !787)
!789 = !DILocation(line: 414, column: 4, scope: !787)
!790 = !DILocation(line: 415, column: 10, scope: !787)
!791 = !DILocation(line: 418, column: 6, scope: !176)
!792 = !DILocation(line: 420, column: 7, scope: !213)
!793 = !DILocation(line: 420, column: 7, scope: !176)
!794 = !DILocation(line: 421, column: 4, scope: !212)
!795 = !DILocation(line: 421, column: 17, scope: !212)
!796 = !DILocation(line: 421, column: 30, scope: !212)
!797 = !DILocation(line: 421, column: 35, scope: !212)
!798 = !DILocation(line: 423, column: 8, scope: !799)
!799 = distinct !DILexicalBlock(scope: !212, file: !3, line: 423, column: 8)
!800 = !DILocation(line: 423, column: 14, scope: !799)
!801 = !DILocation(line: 423, column: 19, scope: !799)
!802 = !DILocation(line: 423, column: 12, scope: !799)
!803 = !DILocation(line: 423, column: 8, scope: !212)
!804 = !DILocation(line: 428, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !799, file: !3, line: 423, column: 35)
!806 = !DILocation(line: 431, column: 8, scope: !807)
!807 = distinct !DILexicalBlock(scope: !212, file: !3, line: 431, column: 8)
!808 = !DILocation(line: 431, column: 13, scope: !807)
!809 = !DILocation(line: 431, column: 11, scope: !807)
!810 = !DILocation(line: 431, column: 8, scope: !212)
!811 = !DILocation(line: 432, column: 18, scope: !812)
!812 = distinct !DILexicalBlock(scope: !807, file: !3, line: 431, column: 25)
!813 = !DILocation(line: 432, column: 22, scope: !812)
!814 = !DILocation(line: 432, column: 29, scope: !812)
!815 = !DILocation(line: 432, column: 5, scope: !812)
!816 = !DILocation(line: 433, column: 14, scope: !812)
!817 = !DILocation(line: 433, column: 27, scope: !812)
!818 = !DILocation(line: 433, column: 25, scope: !812)
!819 = !DILocation(line: 433, column: 11, scope: !812)
!820 = !DILocation(line: 434, column: 10, scope: !812)
!821 = !DILocation(line: 434, column: 8, scope: !812)
!822 = !DILocation(line: 435, column: 4, scope: !812)
!823 = !DILocation(line: 436, column: 4, scope: !212)
!824 = !DILocation(line: 436, column: 11, scope: !212)
!825 = !DILocation(line: 436, column: 16, scope: !212)
!826 = !DILocation(line: 436, column: 14, scope: !212)
!827 = !DILocation(line: 437, column: 19, scope: !212)
!828 = !DILocation(line: 437, column: 13, scope: !212)
!829 = !DILocation(line: 437, column: 8, scope: !212)
!830 = !DILocation(line: 437, column: 11, scope: !212)
!831 = distinct !{!831, !823, !827, !428, !401}
!832 = !DILocation(line: 438, column: 3, scope: !213)
!833 = !DILocation(line: 438, column: 3, scope: !212)
!834 = !DILocation(line: 439, column: 14, scope: !835)
!835 = distinct !DILexicalBlock(scope: !213, file: !3, line: 438, column: 10)
!836 = !DILocation(line: 439, column: 18, scope: !835)
!837 = !DILocation(line: 439, column: 4, scope: !835)
!838 = !DILocation(line: 440, column: 8, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !3, line: 440, column: 8)
!840 = !DILocation(line: 440, column: 15, scope: !839)
!841 = !DILocation(line: 440, column: 8, scope: !835)
!842 = !DILocation(line: 441, column: 18, scope: !839)
!843 = !DILocation(line: 441, column: 21, scope: !839)
!844 = !DILocation(line: 441, column: 26, scope: !839)
!845 = !DILocation(line: 441, column: 32, scope: !839)
!846 = !DILocation(line: 441, column: 37, scope: !839)
!847 = !DILocation(line: 441, column: 5, scope: !839)
!848 = !DILocation(line: 443, column: 8, scope: !176)
!849 = !DILocation(line: 443, column: 6, scope: !176)
!850 = !DILocation(line: 447, column: 6, scope: !851)
!851 = distinct !DILexicalBlock(scope: !142, file: !3, line: 447, column: 6)
!852 = !DILocation(line: 447, column: 6, scope: !142)
!853 = !DILocation(line: 449, column: 26, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !3, line: 447, column: 18)
!855 = !DILocation(line: 449, column: 32, scope: !854)
!856 = !DILocation(line: 449, column: 30, scope: !854)
!857 = !DILocation(line: 449, column: 10, scope: !854)
!858 = !DILocation(line: 449, column: 3, scope: !854)
!859 = !DILocation(line: 452, column: 32, scope: !860)
!860 = distinct !DILexicalBlock(scope: !851, file: !3, line: 450, column: 9)
!861 = !DILocation(line: 452, column: 38, scope: !860)
!862 = !DILocation(line: 452, column: 36, scope: !860)
!863 = !DILocation(line: 452, column: 10, scope: !860)
!864 = !DILocation(line: 452, column: 3, scope: !860)
!865 = !DILocation(line: 456, column: 1, scope: !142)
!866 = !DILocation(line: 457, column: 33, scope: !142)
!867 = !DILocation(line: 457, column: 39, scope: !142)
!868 = !DILocation(line: 457, column: 37, scope: !142)
!869 = !DILocation(line: 457, column: 16, scope: !142)
!870 = !DILocation(line: 457, column: 9, scope: !142)
!871 = !DILocation(line: 457, column: 45, scope: !142)
!872 = !DILocation(line: 457, column: 2, scope: !142)
!873 = !DILocation(line: 458, column: 1, scope: !142)
!874 = distinct !DISubprogram(name: "LZ4_decompress_safe_partial", scope: !3, file: !3, line: 469, type: !875, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !877)
!875 = !DISubroutineType(types: !876)
!876 = !{!38, !47, !45, !38, !38, !38}
!877 = !{!878, !879, !880, !881, !882, !883, !885}
!878 = !DILocalVariable(name: "src", arg: 1, scope: !874, file: !3, line: 469, type: !47)
!879 = !DILocalVariable(name: "dst", arg: 2, scope: !874, file: !3, line: 469, type: !45)
!880 = !DILocalVariable(name: "compressedSize", arg: 3, scope: !874, file: !3, line: 470, type: !38)
!881 = !DILocalVariable(name: "targetOutputSize", arg: 4, scope: !874, file: !3, line: 470, type: !38)
!882 = !DILocalVariable(name: "dstCapacity", arg: 5, scope: !874, file: !3, line: 470, type: !38)
!883 = !DILocalVariable(name: "__UNIQUE_ID___x200", scope: !884, file: !3, line: 472, type: !38)
!884 = distinct !DILexicalBlock(scope: !874, file: !3, line: 472, column: 16)
!885 = !DILocalVariable(name: "__UNIQUE_ID___y201", scope: !884, file: !3, line: 472, type: !38)
!886 = !DILocation(line: 469, column: 45, scope: !874)
!887 = !DILocation(line: 469, column: 56, scope: !874)
!888 = !DILocation(line: 470, column: 6, scope: !874)
!889 = !DILocation(line: 470, column: 26, scope: !874)
!890 = !DILocation(line: 470, column: 48, scope: !874)
!891 = !DILocation(line: 472, column: 16, scope: !884)
!892 = !DILocation(line: 472, column: 16, scope: !874)
!893 = !DILocation(line: 472, column: 14, scope: !874)
!894 = !DILocation(line: 473, column: 32, scope: !874)
!895 = !DILocation(line: 473, column: 37, scope: !874)
!896 = !DILocation(line: 473, column: 42, scope: !874)
!897 = !DILocation(line: 473, column: 58, scope: !874)
!898 = !DILocation(line: 475, column: 27, scope: !874)
!899 = !DILocation(line: 473, column: 9, scope: !874)
!900 = !DILocation(line: 473, column: 2, scope: !874)
!901 = distinct !DISubprogram(name: "LZ4_decompress_fast", scope: !3, file: !3, line: 478, type: !902, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !904)
!902 = !DISubroutineType(types: !903)
!903 = !{!38, !47, !45, !38}
!904 = !{!905, !906, !907}
!905 = !DILocalVariable(name: "source", arg: 1, scope: !901, file: !3, line: 478, type: !47)
!906 = !DILocalVariable(name: "dest", arg: 2, scope: !901, file: !3, line: 478, type: !45)
!907 = !DILocalVariable(name: "originalSize", arg: 3, scope: !901, file: !3, line: 478, type: !38)
!908 = !DILocation(line: 478, column: 37, scope: !901)
!909 = !DILocation(line: 478, column: 51, scope: !901)
!910 = !DILocation(line: 478, column: 61, scope: !901)
!911 = !DILocation(line: 480, column: 32, scope: !901)
!912 = !DILocation(line: 480, column: 40, scope: !901)
!913 = !DILocation(line: 480, column: 49, scope: !901)
!914 = !DILocation(line: 483, column: 19, scope: !901)
!915 = !DILocation(line: 483, column: 24, scope: !901)
!916 = !DILocation(line: 480, column: 9, scope: !901)
!917 = !DILocation(line: 480, column: 2, scope: !901)
!918 = distinct !DISubprogram(name: "LZ4_setStreamDecode", scope: !3, file: !3, line: 564, type: !919, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !940)
!919 = !DISubroutineType(types: !920)
!920 = !{!38, !921, !47, !38}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4_streamDecode_t", file: !923, line: 151, baseType: !924)
!923 = !DIFile(filename: "./include/linux/lz4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4727ee46206dc24c82a9b9353acd506")
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !923, line: 148, size: 256, elements: !925)
!925 = !{!926, !930}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !924, file: !923, line: 149, baseType: !927, size: 256)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 4)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "internal_donotuse", scope: !924, file: !923, line: 150, baseType: !931, size: 256)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4_streamDecode_t_internal", file: !923, line: 147, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !923, line: 142, size: 256, elements: !933)
!933 = !{!934, !937, !938, !939}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "externalDict", scope: !932, file: !923, line: 143, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "extDictSize", scope: !932, file: !923, line: 144, baseType: !30, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "prefixEnd", scope: !932, file: !923, line: 145, baseType: !935, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "prefixSize", scope: !932, file: !923, line: 146, baseType: !30, size: 64, offset: 192)
!940 = !{!941, !942, !943, !944}
!941 = !DILocalVariable(name: "LZ4_streamDecode", arg: 1, scope: !918, file: !3, line: 564, type: !921)
!942 = !DILocalVariable(name: "dictionary", arg: 2, scope: !918, file: !3, line: 565, type: !47)
!943 = !DILocalVariable(name: "dictSize", arg: 3, scope: !918, file: !3, line: 565, type: !38)
!944 = !DILocalVariable(name: "lz4sd", scope: !918, file: !3, line: 567, type: !945)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!946 = !DILocation(line: 564, column: 45, scope: !918)
!947 = !DILocation(line: 565, column: 14, scope: !918)
!948 = !DILocation(line: 565, column: 30, scope: !918)
!949 = !DILocation(line: 567, column: 2, scope: !918)
!950 = !DILocation(line: 567, column: 31, scope: !918)
!951 = !DILocation(line: 568, column: 4, scope: !918)
!952 = !DILocation(line: 570, column: 31, scope: !918)
!953 = !DILocation(line: 570, column: 22, scope: !918)
!954 = !DILocation(line: 570, column: 2, scope: !918)
!955 = !DILocation(line: 570, column: 9, scope: !918)
!956 = !DILocation(line: 570, column: 20, scope: !918)
!957 = !DILocation(line: 571, column: 36, scope: !918)
!958 = !DILocation(line: 571, column: 49, scope: !918)
!959 = !DILocation(line: 571, column: 47, scope: !918)
!960 = !DILocation(line: 571, column: 2, scope: !918)
!961 = !DILocation(line: 571, column: 9, scope: !918)
!962 = !DILocation(line: 571, column: 19, scope: !918)
!963 = !DILocation(line: 572, column: 2, scope: !918)
!964 = !DILocation(line: 572, column: 9, scope: !918)
!965 = !DILocation(line: 572, column: 22, scope: !918)
!966 = !DILocation(line: 573, column: 2, scope: !918)
!967 = !DILocation(line: 573, column: 9, scope: !918)
!968 = !DILocation(line: 573, column: 21, scope: !918)
!969 = !DILocation(line: 575, column: 1, scope: !918)
!970 = !DILocation(line: 574, column: 2, scope: !918)
!971 = distinct !DISubprogram(name: "LZ4_decompress_safe_continue", scope: !3, file: !3, line: 587, type: !972, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{!38, !921, !47, !45, !38, !38}
!974 = !{!975, !976, !977, !978, !979, !980, !981}
!975 = !DILocalVariable(name: "LZ4_streamDecode", arg: 1, scope: !971, file: !3, line: 587, type: !921)
!976 = !DILocalVariable(name: "source", arg: 2, scope: !971, file: !3, line: 588, type: !47)
!977 = !DILocalVariable(name: "dest", arg: 3, scope: !971, file: !3, line: 588, type: !45)
!978 = !DILocalVariable(name: "compressedSize", arg: 4, scope: !971, file: !3, line: 588, type: !38)
!979 = !DILocalVariable(name: "maxOutputSize", arg: 5, scope: !971, file: !3, line: 588, type: !38)
!980 = !DILocalVariable(name: "lz4sd", scope: !971, file: !3, line: 590, type: !945)
!981 = !DILocalVariable(name: "result", scope: !971, file: !3, line: 592, type: !38)
!982 = !DILocation(line: 587, column: 54, scope: !971)
!983 = !DILocation(line: 588, column: 14, scope: !971)
!984 = !DILocation(line: 588, column: 28, scope: !971)
!985 = !DILocation(line: 588, column: 38, scope: !971)
!986 = !DILocation(line: 588, column: 58, scope: !971)
!987 = !DILocation(line: 590, column: 2, scope: !971)
!988 = !DILocation(line: 590, column: 31, scope: !971)
!989 = !DILocation(line: 591, column: 4, scope: !971)
!990 = !DILocation(line: 592, column: 2, scope: !971)
!991 = !DILocation(line: 592, column: 6, scope: !971)
!992 = !DILocation(line: 594, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !971, file: !3, line: 594, column: 6)
!994 = !DILocation(line: 594, column: 13, scope: !993)
!995 = !DILocation(line: 594, column: 24, scope: !993)
!996 = !DILocation(line: 594, column: 6, scope: !971)
!997 = !DILocation(line: 597, column: 32, scope: !998)
!998 = distinct !DILexicalBlock(scope: !993, file: !3, line: 594, column: 30)
!999 = !DILocation(line: 597, column: 40, scope: !998)
!1000 = !DILocation(line: 598, column: 4, scope: !998)
!1001 = !DILocation(line: 598, column: 20, scope: !998)
!1002 = !DILocation(line: 597, column: 12, scope: !998)
!1003 = !DILocation(line: 597, column: 10, scope: !998)
!1004 = !DILocation(line: 599, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !998, file: !3, line: 599, column: 7)
!1006 = !DILocation(line: 599, column: 14, scope: !1005)
!1007 = !DILocation(line: 599, column: 7, scope: !998)
!1008 = !DILocation(line: 600, column: 11, scope: !1005)
!1009 = !DILocation(line: 600, column: 4, scope: !1005)
!1010 = !DILocation(line: 601, column: 23, scope: !998)
!1011 = !DILocation(line: 601, column: 3, scope: !998)
!1012 = !DILocation(line: 601, column: 10, scope: !998)
!1013 = !DILocation(line: 601, column: 21, scope: !998)
!1014 = !DILocation(line: 602, column: 30, scope: !998)
!1015 = !DILocation(line: 602, column: 37, scope: !998)
!1016 = !DILocation(line: 602, column: 35, scope: !998)
!1017 = !DILocation(line: 602, column: 3, scope: !998)
!1018 = !DILocation(line: 602, column: 10, scope: !998)
!1019 = !DILocation(line: 602, column: 20, scope: !998)
!1020 = !DILocation(line: 603, column: 2, scope: !998)
!1021 = !DILocation(line: 603, column: 13, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !993, file: !3, line: 603, column: 13)
!1023 = !DILocation(line: 603, column: 20, scope: !1022)
!1024 = !DILocation(line: 603, column: 41, scope: !1022)
!1025 = !DILocation(line: 603, column: 30, scope: !1022)
!1026 = !DILocation(line: 603, column: 13, scope: !993)
!1027 = !DILocation(line: 605, column: 7, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 605, column: 7)
!1029 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 603, column: 47)
!1030 = !DILocation(line: 605, column: 14, scope: !1028)
!1031 = !DILocation(line: 605, column: 25, scope: !1028)
!1032 = !DILocation(line: 605, column: 7, scope: !1029)
!1033 = !DILocation(line: 606, column: 47, scope: !1028)
!1034 = !DILocation(line: 606, column: 55, scope: !1028)
!1035 = !DILocation(line: 607, column: 5, scope: !1028)
!1036 = !DILocation(line: 607, column: 21, scope: !1028)
!1037 = !DILocation(line: 606, column: 13, scope: !1028)
!1038 = !DILocation(line: 606, column: 11, scope: !1028)
!1039 = !DILocation(line: 606, column: 4, scope: !1028)
!1040 = !DILocation(line: 608, column: 12, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 608, column: 12)
!1042 = !DILocation(line: 608, column: 19, scope: !1041)
!1043 = !DILocation(line: 608, column: 31, scope: !1041)
!1044 = !DILocation(line: 608, column: 12, scope: !1028)
!1045 = !DILocation(line: 609, column: 49, scope: !1041)
!1046 = !DILocation(line: 610, column: 5, scope: !1041)
!1047 = !DILocation(line: 610, column: 11, scope: !1041)
!1048 = !DILocation(line: 610, column: 27, scope: !1041)
!1049 = !DILocation(line: 611, column: 5, scope: !1041)
!1050 = !DILocation(line: 611, column: 12, scope: !1041)
!1051 = !DILocation(line: 609, column: 13, scope: !1041)
!1052 = !DILocation(line: 609, column: 11, scope: !1041)
!1053 = !DILocation(line: 609, column: 4, scope: !1041)
!1054 = !DILocation(line: 613, column: 44, scope: !1041)
!1055 = !DILocation(line: 613, column: 52, scope: !1041)
!1056 = !DILocation(line: 614, column: 5, scope: !1041)
!1057 = !DILocation(line: 614, column: 21, scope: !1041)
!1058 = !DILocation(line: 615, column: 5, scope: !1041)
!1059 = !DILocation(line: 615, column: 12, scope: !1041)
!1060 = !DILocation(line: 616, column: 5, scope: !1041)
!1061 = !DILocation(line: 616, column: 12, scope: !1041)
!1062 = !DILocation(line: 616, column: 26, scope: !1041)
!1063 = !DILocation(line: 616, column: 33, scope: !1041)
!1064 = !DILocation(line: 613, column: 13, scope: !1041)
!1065 = !DILocation(line: 613, column: 11, scope: !1041)
!1066 = !DILocation(line: 617, column: 7, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 617, column: 7)
!1068 = !DILocation(line: 617, column: 14, scope: !1067)
!1069 = !DILocation(line: 617, column: 7, scope: !1029)
!1070 = !DILocation(line: 618, column: 11, scope: !1067)
!1071 = !DILocation(line: 618, column: 4, scope: !1067)
!1072 = !DILocation(line: 619, column: 24, scope: !1029)
!1073 = !DILocation(line: 619, column: 3, scope: !1029)
!1074 = !DILocation(line: 619, column: 10, scope: !1029)
!1075 = !DILocation(line: 619, column: 21, scope: !1029)
!1076 = !DILocation(line: 620, column: 24, scope: !1029)
!1077 = !DILocation(line: 620, column: 3, scope: !1029)
!1078 = !DILocation(line: 620, column: 10, scope: !1029)
!1079 = !DILocation(line: 620, column: 21, scope: !1029)
!1080 = !DILocation(line: 621, column: 2, scope: !1029)
!1081 = !DILocation(line: 626, column: 24, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 621, column: 9)
!1083 = !DILocation(line: 626, column: 31, scope: !1082)
!1084 = !DILocation(line: 626, column: 3, scope: !1082)
!1085 = !DILocation(line: 626, column: 10, scope: !1082)
!1086 = !DILocation(line: 626, column: 22, scope: !1082)
!1087 = !DILocation(line: 627, column: 25, scope: !1082)
!1088 = !DILocation(line: 627, column: 32, scope: !1082)
!1089 = !DILocation(line: 627, column: 44, scope: !1082)
!1090 = !DILocation(line: 627, column: 51, scope: !1082)
!1091 = !DILocation(line: 627, column: 42, scope: !1082)
!1092 = !DILocation(line: 627, column: 3, scope: !1082)
!1093 = !DILocation(line: 627, column: 10, scope: !1082)
!1094 = !DILocation(line: 627, column: 23, scope: !1082)
!1095 = !DILocation(line: 628, column: 45, scope: !1082)
!1096 = !DILocation(line: 628, column: 53, scope: !1082)
!1097 = !DILocation(line: 629, column: 4, scope: !1082)
!1098 = !DILocation(line: 629, column: 20, scope: !1082)
!1099 = !DILocation(line: 630, column: 4, scope: !1082)
!1100 = !DILocation(line: 630, column: 11, scope: !1082)
!1101 = !DILocation(line: 630, column: 25, scope: !1082)
!1102 = !DILocation(line: 630, column: 32, scope: !1082)
!1103 = !DILocation(line: 628, column: 12, scope: !1082)
!1104 = !DILocation(line: 628, column: 10, scope: !1082)
!1105 = !DILocation(line: 631, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 631, column: 7)
!1107 = !DILocation(line: 631, column: 14, scope: !1106)
!1108 = !DILocation(line: 631, column: 7, scope: !1082)
!1109 = !DILocation(line: 632, column: 11, scope: !1106)
!1110 = !DILocation(line: 632, column: 4, scope: !1106)
!1111 = !DILocation(line: 633, column: 23, scope: !1082)
!1112 = !DILocation(line: 633, column: 3, scope: !1082)
!1113 = !DILocation(line: 633, column: 10, scope: !1082)
!1114 = !DILocation(line: 633, column: 21, scope: !1082)
!1115 = !DILocation(line: 634, column: 31, scope: !1082)
!1116 = !DILocation(line: 634, column: 38, scope: !1082)
!1117 = !DILocation(line: 634, column: 36, scope: !1082)
!1118 = !DILocation(line: 634, column: 3, scope: !1082)
!1119 = !DILocation(line: 634, column: 10, scope: !1082)
!1120 = !DILocation(line: 634, column: 21, scope: !1082)
!1121 = !DILocation(line: 637, column: 9, scope: !971)
!1122 = !DILocation(line: 637, column: 2, scope: !971)
!1123 = !DILocation(line: 638, column: 1, scope: !971)
!1124 = distinct !DISubprogram(name: "LZ4_decompress_safe_withPrefix64k", scope: !3, file: !3, line: 488, type: !231, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1125)
!1125 = !{!1126, !1127, !1128, !1129}
!1126 = !DILocalVariable(name: "source", arg: 1, scope: !1124, file: !3, line: 488, type: !47)
!1127 = !DILocalVariable(name: "dest", arg: 2, scope: !1124, file: !3, line: 488, type: !45)
!1128 = !DILocalVariable(name: "compressedSize", arg: 3, scope: !1124, file: !3, line: 489, type: !38)
!1129 = !DILocalVariable(name: "maxOutputSize", arg: 4, scope: !1124, file: !3, line: 489, type: !38)
!1130 = !DILocation(line: 488, column: 58, scope: !1124)
!1131 = !DILocation(line: 488, column: 72, scope: !1124)
!1132 = !DILocation(line: 489, column: 15, scope: !1124)
!1133 = !DILocation(line: 489, column: 35, scope: !1124)
!1134 = !DILocation(line: 491, column: 32, scope: !1124)
!1135 = !DILocation(line: 491, column: 40, scope: !1124)
!1136 = !DILocation(line: 492, column: 11, scope: !1124)
!1137 = !DILocation(line: 492, column: 27, scope: !1124)
!1138 = !DILocation(line: 495, column: 19, scope: !1124)
!1139 = !DILocation(line: 495, column: 24, scope: !1124)
!1140 = !DILocation(line: 491, column: 9, scope: !1124)
!1141 = !DILocation(line: 491, column: 2, scope: !1124)
!1142 = distinct !DISubprogram(name: "LZ4_decompress_safe_withSmallPrefix", scope: !3, file: !3, line: 498, type: !1143, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1145)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!38, !47, !45, !38, !38, !30}
!1145 = !{!1146, !1147, !1148, !1149, !1150}
!1146 = !DILocalVariable(name: "source", arg: 1, scope: !1142, file: !3, line: 498, type: !47)
!1147 = !DILocalVariable(name: "dest", arg: 2, scope: !1142, file: !3, line: 498, type: !45)
!1148 = !DILocalVariable(name: "compressedSize", arg: 3, scope: !1142, file: !3, line: 499, type: !38)
!1149 = !DILocalVariable(name: "maxOutputSize", arg: 4, scope: !1142, file: !3, line: 500, type: !38)
!1150 = !DILocalVariable(name: "prefixSize", arg: 5, scope: !1142, file: !3, line: 501, type: !30)
!1151 = !DILocation(line: 498, column: 60, scope: !1142)
!1152 = !DILocation(line: 498, column: 74, scope: !1142)
!1153 = !DILocation(line: 499, column: 17, scope: !1142)
!1154 = !DILocation(line: 500, column: 17, scope: !1142)
!1155 = !DILocation(line: 501, column: 20, scope: !1142)
!1156 = !DILocation(line: 503, column: 32, scope: !1142)
!1157 = !DILocation(line: 503, column: 40, scope: !1142)
!1158 = !DILocation(line: 504, column: 11, scope: !1142)
!1159 = !DILocation(line: 504, column: 27, scope: !1142)
!1160 = !DILocation(line: 507, column: 19, scope: !1142)
!1161 = !DILocation(line: 507, column: 26, scope: !1142)
!1162 = !DILocation(line: 507, column: 24, scope: !1142)
!1163 = !DILocation(line: 503, column: 9, scope: !1142)
!1164 = !DILocation(line: 503, column: 2, scope: !1142)
!1165 = distinct !DISubprogram(name: "LZ4_decompress_safe_doubleDict", scope: !3, file: !3, line: 538, type: !1166, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!38, !47, !45, !38, !38, !30, !61, !30}
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175}
!1169 = !DILocalVariable(name: "source", arg: 1, scope: !1165, file: !3, line: 538, type: !47)
!1170 = !DILocalVariable(name: "dest", arg: 2, scope: !1165, file: !3, line: 538, type: !45)
!1171 = !DILocalVariable(name: "compressedSize", arg: 3, scope: !1165, file: !3, line: 539, type: !38)
!1172 = !DILocalVariable(name: "maxOutputSize", arg: 4, scope: !1165, file: !3, line: 539, type: !38)
!1173 = !DILocalVariable(name: "prefixSize", arg: 5, scope: !1165, file: !3, line: 540, type: !30)
!1174 = !DILocalVariable(name: "dictStart", arg: 6, scope: !1165, file: !3, line: 541, type: !61)
!1175 = !DILocalVariable(name: "dictSize", arg: 7, scope: !1165, file: !3, line: 541, type: !30)
!1176 = !DILocation(line: 538, column: 48, scope: !1165)
!1177 = !DILocation(line: 538, column: 62, scope: !1165)
!1178 = !DILocation(line: 539, column: 12, scope: !1165)
!1179 = !DILocation(line: 539, column: 32, scope: !1165)
!1180 = !DILocation(line: 540, column: 15, scope: !1165)
!1181 = !DILocation(line: 541, column: 20, scope: !1165)
!1182 = !DILocation(line: 541, column: 38, scope: !1165)
!1183 = !DILocation(line: 543, column: 32, scope: !1165)
!1184 = !DILocation(line: 543, column: 40, scope: !1165)
!1185 = !DILocation(line: 544, column: 11, scope: !1165)
!1186 = !DILocation(line: 544, column: 27, scope: !1165)
!1187 = !DILocation(line: 546, column: 33, scope: !1165)
!1188 = !DILocation(line: 546, column: 40, scope: !1165)
!1189 = !DILocation(line: 546, column: 38, scope: !1165)
!1190 = !DILocation(line: 547, column: 25, scope: !1165)
!1191 = !DILocation(line: 547, column: 36, scope: !1165)
!1192 = !DILocation(line: 543, column: 9, scope: !1165)
!1193 = !DILocation(line: 543, column: 2, scope: !1165)
!1194 = distinct !DISubprogram(name: "LZ4_decompress_safe_forceExtDict", scope: !3, file: !3, line: 510, type: !1195, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1197)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!38, !47, !45, !38, !38, !61, !30}
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203}
!1198 = !DILocalVariable(name: "source", arg: 1, scope: !1194, file: !3, line: 510, type: !47)
!1199 = !DILocalVariable(name: "dest", arg: 2, scope: !1194, file: !3, line: 510, type: !45)
!1200 = !DILocalVariable(name: "compressedSize", arg: 3, scope: !1194, file: !3, line: 511, type: !38)
!1201 = !DILocalVariable(name: "maxOutputSize", arg: 4, scope: !1194, file: !3, line: 511, type: !38)
!1202 = !DILocalVariable(name: "dictStart", arg: 5, scope: !1194, file: !3, line: 512, type: !61)
!1203 = !DILocalVariable(name: "dictSize", arg: 6, scope: !1194, file: !3, line: 512, type: !30)
!1204 = !DILocation(line: 510, column: 57, scope: !1194)
!1205 = !DILocation(line: 510, column: 71, scope: !1194)
!1206 = !DILocation(line: 511, column: 14, scope: !1194)
!1207 = !DILocation(line: 511, column: 34, scope: !1194)
!1208 = !DILocation(line: 512, column: 22, scope: !1194)
!1209 = !DILocation(line: 512, column: 40, scope: !1194)
!1210 = !DILocation(line: 514, column: 32, scope: !1194)
!1211 = !DILocation(line: 514, column: 40, scope: !1194)
!1212 = !DILocation(line: 515, column: 11, scope: !1194)
!1213 = !DILocation(line: 515, column: 27, scope: !1194)
!1214 = !DILocation(line: 517, column: 33, scope: !1194)
!1215 = !DILocation(line: 518, column: 25, scope: !1194)
!1216 = !DILocation(line: 518, column: 36, scope: !1194)
!1217 = !DILocation(line: 514, column: 9, scope: !1194)
!1218 = !DILocation(line: 514, column: 2, scope: !1194)
!1219 = distinct !DISubprogram(name: "LZ4_decompress_fast_continue", scope: !3, file: !3, line: 640, type: !1220, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!38, !921, !47, !45, !38}
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1228}
!1223 = !DILocalVariable(name: "LZ4_streamDecode", arg: 1, scope: !1219, file: !3, line: 640, type: !921)
!1224 = !DILocalVariable(name: "source", arg: 2, scope: !1219, file: !3, line: 641, type: !47)
!1225 = !DILocalVariable(name: "dest", arg: 3, scope: !1219, file: !3, line: 641, type: !45)
!1226 = !DILocalVariable(name: "originalSize", arg: 4, scope: !1219, file: !3, line: 641, type: !38)
!1227 = !DILocalVariable(name: "lz4sd", scope: !1219, file: !3, line: 643, type: !945)
!1228 = !DILocalVariable(name: "result", scope: !1219, file: !3, line: 644, type: !38)
!1229 = !DILocation(line: 640, column: 54, scope: !1219)
!1230 = !DILocation(line: 641, column: 14, scope: !1219)
!1231 = !DILocation(line: 641, column: 28, scope: !1219)
!1232 = !DILocation(line: 641, column: 38, scope: !1219)
!1233 = !DILocation(line: 643, column: 2, scope: !1219)
!1234 = !DILocation(line: 643, column: 31, scope: !1219)
!1235 = !DILocation(line: 643, column: 40, scope: !1219)
!1236 = !DILocation(line: 644, column: 2, scope: !1219)
!1237 = !DILocation(line: 644, column: 6, scope: !1219)
!1238 = !DILocation(line: 646, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 646, column: 6)
!1240 = !DILocation(line: 646, column: 13, scope: !1239)
!1241 = !DILocation(line: 646, column: 24, scope: !1239)
!1242 = !DILocation(line: 646, column: 6, scope: !1219)
!1243 = !DILocation(line: 648, column: 32, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 646, column: 30)
!1245 = !DILocation(line: 648, column: 40, scope: !1244)
!1246 = !DILocation(line: 648, column: 46, scope: !1244)
!1247 = !DILocation(line: 648, column: 12, scope: !1244)
!1248 = !DILocation(line: 648, column: 10, scope: !1244)
!1249 = !DILocation(line: 649, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 649, column: 7)
!1251 = !DILocation(line: 649, column: 14, scope: !1250)
!1252 = !DILocation(line: 649, column: 7, scope: !1244)
!1253 = !DILocation(line: 650, column: 11, scope: !1250)
!1254 = !DILocation(line: 650, column: 4, scope: !1250)
!1255 = !DILocation(line: 651, column: 23, scope: !1244)
!1256 = !DILocation(line: 651, column: 3, scope: !1244)
!1257 = !DILocation(line: 651, column: 10, scope: !1244)
!1258 = !DILocation(line: 651, column: 21, scope: !1244)
!1259 = !DILocation(line: 652, column: 30, scope: !1244)
!1260 = !DILocation(line: 652, column: 37, scope: !1244)
!1261 = !DILocation(line: 652, column: 35, scope: !1244)
!1262 = !DILocation(line: 652, column: 3, scope: !1244)
!1263 = !DILocation(line: 652, column: 10, scope: !1244)
!1264 = !DILocation(line: 652, column: 20, scope: !1244)
!1265 = !DILocation(line: 653, column: 2, scope: !1244)
!1266 = !DILocation(line: 653, column: 13, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 653, column: 13)
!1268 = !DILocation(line: 653, column: 20, scope: !1267)
!1269 = !DILocation(line: 653, column: 41, scope: !1267)
!1270 = !DILocation(line: 653, column: 30, scope: !1267)
!1271 = !DILocation(line: 653, column: 13, scope: !1239)
!1272 = !DILocation(line: 654, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 654, column: 7)
!1274 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 653, column: 47)
!1275 = !DILocation(line: 654, column: 14, scope: !1273)
!1276 = !DILocation(line: 654, column: 25, scope: !1273)
!1277 = !DILocation(line: 654, column: 40, scope: !1273)
!1278 = !DILocation(line: 655, column: 7, scope: !1273)
!1279 = !DILocation(line: 655, column: 14, scope: !1273)
!1280 = !DILocation(line: 655, column: 26, scope: !1273)
!1281 = !DILocation(line: 654, column: 7, scope: !1274)
!1282 = !DILocation(line: 656, column: 33, scope: !1273)
!1283 = !DILocation(line: 656, column: 41, scope: !1273)
!1284 = !DILocation(line: 657, column: 12, scope: !1273)
!1285 = !DILocation(line: 656, column: 13, scope: !1273)
!1286 = !DILocation(line: 656, column: 11, scope: !1273)
!1287 = !DILocation(line: 656, column: 4, scope: !1273)
!1288 = !DILocation(line: 659, column: 44, scope: !1273)
!1289 = !DILocation(line: 659, column: 52, scope: !1273)
!1290 = !DILocation(line: 660, column: 5, scope: !1273)
!1291 = !DILocation(line: 660, column: 19, scope: !1273)
!1292 = !DILocation(line: 660, column: 26, scope: !1273)
!1293 = !DILocation(line: 661, column: 5, scope: !1273)
!1294 = !DILocation(line: 661, column: 12, scope: !1273)
!1295 = !DILocation(line: 661, column: 26, scope: !1273)
!1296 = !DILocation(line: 661, column: 33, scope: !1273)
!1297 = !DILocation(line: 659, column: 13, scope: !1273)
!1298 = !DILocation(line: 659, column: 11, scope: !1273)
!1299 = !DILocation(line: 662, column: 7, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 662, column: 7)
!1301 = !DILocation(line: 662, column: 14, scope: !1300)
!1302 = !DILocation(line: 662, column: 7, scope: !1274)
!1303 = !DILocation(line: 663, column: 11, scope: !1300)
!1304 = !DILocation(line: 663, column: 4, scope: !1300)
!1305 = !DILocation(line: 664, column: 24, scope: !1274)
!1306 = !DILocation(line: 664, column: 3, scope: !1274)
!1307 = !DILocation(line: 664, column: 10, scope: !1274)
!1308 = !DILocation(line: 664, column: 21, scope: !1274)
!1309 = !DILocation(line: 665, column: 24, scope: !1274)
!1310 = !DILocation(line: 665, column: 3, scope: !1274)
!1311 = !DILocation(line: 665, column: 10, scope: !1274)
!1312 = !DILocation(line: 665, column: 21, scope: !1274)
!1313 = !DILocation(line: 666, column: 2, scope: !1274)
!1314 = !DILocation(line: 667, column: 24, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 666, column: 9)
!1316 = !DILocation(line: 667, column: 31, scope: !1315)
!1317 = !DILocation(line: 667, column: 3, scope: !1315)
!1318 = !DILocation(line: 667, column: 10, scope: !1315)
!1319 = !DILocation(line: 667, column: 22, scope: !1315)
!1320 = !DILocation(line: 668, column: 25, scope: !1315)
!1321 = !DILocation(line: 668, column: 32, scope: !1315)
!1322 = !DILocation(line: 668, column: 44, scope: !1315)
!1323 = !DILocation(line: 668, column: 51, scope: !1315)
!1324 = !DILocation(line: 668, column: 42, scope: !1315)
!1325 = !DILocation(line: 668, column: 3, scope: !1315)
!1326 = !DILocation(line: 668, column: 10, scope: !1315)
!1327 = !DILocation(line: 668, column: 23, scope: !1315)
!1328 = !DILocation(line: 669, column: 40, scope: !1315)
!1329 = !DILocation(line: 669, column: 48, scope: !1315)
!1330 = !DILocation(line: 670, column: 4, scope: !1315)
!1331 = !DILocation(line: 670, column: 18, scope: !1315)
!1332 = !DILocation(line: 670, column: 25, scope: !1315)
!1333 = !DILocation(line: 670, column: 39, scope: !1315)
!1334 = !DILocation(line: 670, column: 46, scope: !1315)
!1335 = !DILocation(line: 669, column: 12, scope: !1315)
!1336 = !DILocation(line: 669, column: 10, scope: !1315)
!1337 = !DILocation(line: 671, column: 7, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 671, column: 7)
!1339 = !DILocation(line: 671, column: 14, scope: !1338)
!1340 = !DILocation(line: 671, column: 7, scope: !1315)
!1341 = !DILocation(line: 672, column: 11, scope: !1338)
!1342 = !DILocation(line: 672, column: 4, scope: !1338)
!1343 = !DILocation(line: 673, column: 23, scope: !1315)
!1344 = !DILocation(line: 673, column: 3, scope: !1315)
!1345 = !DILocation(line: 673, column: 10, scope: !1315)
!1346 = !DILocation(line: 673, column: 21, scope: !1315)
!1347 = !DILocation(line: 674, column: 30, scope: !1315)
!1348 = !DILocation(line: 674, column: 37, scope: !1315)
!1349 = !DILocation(line: 674, column: 35, scope: !1315)
!1350 = !DILocation(line: 674, column: 3, scope: !1315)
!1351 = !DILocation(line: 674, column: 10, scope: !1315)
!1352 = !DILocation(line: 674, column: 20, scope: !1315)
!1353 = !DILocation(line: 676, column: 9, scope: !1219)
!1354 = !DILocation(line: 676, column: 2, scope: !1219)
!1355 = !DILocation(line: 677, column: 1, scope: !1219)
!1356 = distinct !DISubprogram(name: "LZ4_decompress_fast_doubleDict", scope: !3, file: !3, line: 551, type: !1357, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!38, !47, !45, !38, !30, !61, !30}
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365}
!1360 = !DILocalVariable(name: "source", arg: 1, scope: !1356, file: !3, line: 551, type: !47)
!1361 = !DILocalVariable(name: "dest", arg: 2, scope: !1356, file: !3, line: 551, type: !45)
!1362 = !DILocalVariable(name: "originalSize", arg: 3, scope: !1356, file: !3, line: 552, type: !38)
!1363 = !DILocalVariable(name: "prefixSize", arg: 4, scope: !1356, file: !3, line: 552, type: !30)
!1364 = !DILocalVariable(name: "dictStart", arg: 5, scope: !1356, file: !3, line: 553, type: !61)
!1365 = !DILocalVariable(name: "dictSize", arg: 6, scope: !1356, file: !3, line: 553, type: !30)
!1366 = !DILocation(line: 551, column: 48, scope: !1356)
!1367 = !DILocation(line: 551, column: 62, scope: !1356)
!1368 = !DILocation(line: 552, column: 12, scope: !1356)
!1369 = !DILocation(line: 552, column: 33, scope: !1356)
!1370 = !DILocation(line: 553, column: 20, scope: !1356)
!1371 = !DILocation(line: 553, column: 38, scope: !1356)
!1372 = !DILocation(line: 555, column: 32, scope: !1356)
!1373 = !DILocation(line: 555, column: 40, scope: !1356)
!1374 = !DILocation(line: 556, column: 14, scope: !1356)
!1375 = !DILocation(line: 558, column: 33, scope: !1356)
!1376 = !DILocation(line: 558, column: 40, scope: !1356)
!1377 = !DILocation(line: 558, column: 38, scope: !1356)
!1378 = !DILocation(line: 559, column: 25, scope: !1356)
!1379 = !DILocation(line: 559, column: 36, scope: !1356)
!1380 = !DILocation(line: 555, column: 9, scope: !1356)
!1381 = !DILocation(line: 555, column: 2, scope: !1356)
!1382 = distinct !DISubprogram(name: "LZ4_decompress_fast_extDict", scope: !3, file: !3, line: 521, type: !1383, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1385)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!38, !47, !45, !38, !61, !30}
!1385 = !{!1386, !1387, !1388, !1389, !1390}
!1386 = !DILocalVariable(name: "source", arg: 1, scope: !1382, file: !3, line: 521, type: !47)
!1387 = !DILocalVariable(name: "dest", arg: 2, scope: !1382, file: !3, line: 521, type: !45)
!1388 = !DILocalVariable(name: "originalSize", arg: 3, scope: !1382, file: !3, line: 522, type: !38)
!1389 = !DILocalVariable(name: "dictStart", arg: 4, scope: !1382, file: !3, line: 523, type: !61)
!1390 = !DILocalVariable(name: "dictSize", arg: 5, scope: !1382, file: !3, line: 523, type: !30)
!1391 = !DILocation(line: 521, column: 52, scope: !1382)
!1392 = !DILocation(line: 521, column: 66, scope: !1382)
!1393 = !DILocation(line: 522, column: 16, scope: !1382)
!1394 = !DILocation(line: 523, column: 24, scope: !1382)
!1395 = !DILocation(line: 523, column: 42, scope: !1382)
!1396 = !DILocation(line: 525, column: 32, scope: !1382)
!1397 = !DILocation(line: 525, column: 40, scope: !1382)
!1398 = !DILocation(line: 526, column: 14, scope: !1382)
!1399 = !DILocation(line: 528, column: 33, scope: !1382)
!1400 = !DILocation(line: 529, column: 25, scope: !1382)
!1401 = !DILocation(line: 529, column: 36, scope: !1382)
!1402 = !DILocation(line: 525, column: 9, scope: !1382)
!1403 = !DILocation(line: 525, column: 2, scope: !1382)
!1404 = distinct !DISubprogram(name: "LZ4_decompress_safe_usingDict", scope: !3, file: !3, line: 679, type: !1405, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1407)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!38, !47, !45, !38, !38, !47, !38}
!1407 = !{!1408, !1409, !1410, !1411, !1412, !1413}
!1408 = !DILocalVariable(name: "source", arg: 1, scope: !1404, file: !3, line: 679, type: !47)
!1409 = !DILocalVariable(name: "dest", arg: 2, scope: !1404, file: !3, line: 679, type: !45)
!1410 = !DILocalVariable(name: "compressedSize", arg: 3, scope: !1404, file: !3, line: 680, type: !38)
!1411 = !DILocalVariable(name: "maxOutputSize", arg: 4, scope: !1404, file: !3, line: 680, type: !38)
!1412 = !DILocalVariable(name: "dictStart", arg: 5, scope: !1404, file: !3, line: 681, type: !47)
!1413 = !DILocalVariable(name: "dictSize", arg: 6, scope: !1404, file: !3, line: 681, type: !38)
!1414 = !DILocation(line: 679, column: 47, scope: !1404)
!1415 = !DILocation(line: 679, column: 61, scope: !1404)
!1416 = !DILocation(line: 680, column: 11, scope: !1404)
!1417 = !DILocation(line: 680, column: 31, scope: !1404)
!1418 = !DILocation(line: 681, column: 19, scope: !1404)
!1419 = !DILocation(line: 681, column: 34, scope: !1404)
!1420 = !DILocation(line: 683, column: 6, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 683, column: 6)
!1422 = !DILocation(line: 683, column: 15, scope: !1421)
!1423 = !DILocation(line: 683, column: 6, scope: !1404)
!1424 = !DILocation(line: 684, column: 30, scope: !1421)
!1425 = !DILocation(line: 684, column: 38, scope: !1421)
!1426 = !DILocation(line: 685, column: 9, scope: !1421)
!1427 = !DILocation(line: 685, column: 25, scope: !1421)
!1428 = !DILocation(line: 684, column: 10, scope: !1421)
!1429 = !DILocation(line: 684, column: 3, scope: !1421)
!1430 = !DILocation(line: 686, column: 6, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 686, column: 6)
!1432 = !DILocation(line: 686, column: 16, scope: !1431)
!1433 = !DILocation(line: 686, column: 15, scope: !1431)
!1434 = !DILocation(line: 686, column: 28, scope: !1431)
!1435 = !DILocation(line: 686, column: 25, scope: !1431)
!1436 = !DILocation(line: 686, column: 6, scope: !1404)
!1437 = !DILocation(line: 687, column: 7, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 687, column: 7)
!1439 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 686, column: 34)
!1440 = !DILocation(line: 687, column: 16, scope: !1438)
!1441 = !DILocation(line: 687, column: 7, scope: !1439)
!1442 = !DILocation(line: 688, column: 45, scope: !1438)
!1443 = !DILocation(line: 688, column: 53, scope: !1438)
!1444 = !DILocation(line: 689, column: 5, scope: !1438)
!1445 = !DILocation(line: 689, column: 21, scope: !1438)
!1446 = !DILocation(line: 688, column: 11, scope: !1438)
!1447 = !DILocation(line: 688, column: 4, scope: !1438)
!1448 = !DILocation(line: 690, column: 46, scope: !1439)
!1449 = !DILocation(line: 690, column: 54, scope: !1439)
!1450 = !DILocation(line: 691, column: 4, scope: !1439)
!1451 = !DILocation(line: 691, column: 20, scope: !1439)
!1452 = !DILocation(line: 691, column: 35, scope: !1439)
!1453 = !DILocation(line: 690, column: 10, scope: !1439)
!1454 = !DILocation(line: 690, column: 3, scope: !1439)
!1455 = !DILocation(line: 693, column: 42, scope: !1404)
!1456 = !DILocation(line: 693, column: 50, scope: !1404)
!1457 = !DILocation(line: 694, column: 3, scope: !1404)
!1458 = !DILocation(line: 694, column: 19, scope: !1404)
!1459 = !DILocation(line: 694, column: 34, scope: !1404)
!1460 = !DILocation(line: 694, column: 45, scope: !1404)
!1461 = !DILocation(line: 693, column: 9, scope: !1404)
!1462 = !DILocation(line: 693, column: 2, scope: !1404)
!1463 = !DILocation(line: 695, column: 1, scope: !1404)
!1464 = distinct !DISubprogram(name: "LZ4_decompress_fast_usingDict", scope: !3, file: !3, line: 697, type: !1465, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!38, !47, !45, !38, !47, !38}
!1467 = !{!1468, !1469, !1470, !1471, !1472}
!1468 = !DILocalVariable(name: "source", arg: 1, scope: !1464, file: !3, line: 697, type: !47)
!1469 = !DILocalVariable(name: "dest", arg: 2, scope: !1464, file: !3, line: 697, type: !45)
!1470 = !DILocalVariable(name: "originalSize", arg: 3, scope: !1464, file: !3, line: 698, type: !38)
!1471 = !DILocalVariable(name: "dictStart", arg: 4, scope: !1464, file: !3, line: 699, type: !47)
!1472 = !DILocalVariable(name: "dictSize", arg: 5, scope: !1464, file: !3, line: 699, type: !38)
!1473 = !DILocation(line: 697, column: 47, scope: !1464)
!1474 = !DILocation(line: 697, column: 61, scope: !1464)
!1475 = !DILocation(line: 698, column: 11, scope: !1464)
!1476 = !DILocation(line: 699, column: 19, scope: !1464)
!1477 = !DILocation(line: 699, column: 34, scope: !1464)
!1478 = !DILocation(line: 701, column: 6, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 701, column: 6)
!1480 = !DILocation(line: 701, column: 15, scope: !1479)
!1481 = !DILocation(line: 701, column: 20, scope: !1479)
!1482 = !DILocation(line: 701, column: 23, scope: !1479)
!1483 = !DILocation(line: 701, column: 35, scope: !1479)
!1484 = !DILocation(line: 701, column: 33, scope: !1479)
!1485 = !DILocation(line: 701, column: 47, scope: !1479)
!1486 = !DILocation(line: 701, column: 44, scope: !1479)
!1487 = !DILocation(line: 701, column: 6, scope: !1464)
!1488 = !DILocation(line: 702, column: 30, scope: !1479)
!1489 = !DILocation(line: 702, column: 38, scope: !1479)
!1490 = !DILocation(line: 702, column: 44, scope: !1479)
!1491 = !DILocation(line: 702, column: 10, scope: !1479)
!1492 = !DILocation(line: 702, column: 3, scope: !1479)
!1493 = !DILocation(line: 704, column: 37, scope: !1464)
!1494 = !DILocation(line: 704, column: 45, scope: !1464)
!1495 = !DILocation(line: 704, column: 51, scope: !1464)
!1496 = !DILocation(line: 705, column: 3, scope: !1464)
!1497 = !DILocation(line: 705, column: 14, scope: !1464)
!1498 = !DILocation(line: 704, column: 9, scope: !1464)
!1499 = !DILocation(line: 704, column: 2, scope: !1464)
!1500 = !DILocation(line: 706, column: 1, scope: !1464)
!1501 = distinct !DISubprogram(name: "LZ4_readLE16", scope: !6, file: !6, line: 132, type: !1502, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1506)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1504, !61}
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !6, line: 51, baseType: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !24, line: 109, baseType: !60)
!1506 = !{!1507}
!1507 = !DILocalVariable(name: "memPtr", arg: 1, scope: !1501, file: !6, line: 132, type: !61)
!1508 = !DILocation(line: 132, column: 50, scope: !1501)
!1509 = !DILocation(line: 134, column: 28, scope: !1501)
!1510 = !DILocation(line: 134, column: 9, scope: !1501)
!1511 = !DILocation(line: 134, column: 2, scope: !1501)
!1512 = distinct !DISubprogram(name: "LZ4_wildCopy", scope: !6, file: !6, line: 172, type: !1513, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !37, !61, !37}
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521}
!1516 = !DILocalVariable(name: "dstPtr", arg: 1, scope: !1512, file: !6, line: 172, type: !37)
!1517 = !DILocalVariable(name: "srcPtr", arg: 2, scope: !1512, file: !6, line: 173, type: !61)
!1518 = !DILocalVariable(name: "dstEnd", arg: 3, scope: !1512, file: !6, line: 173, type: !37)
!1519 = !DILocalVariable(name: "d", scope: !1512, file: !6, line: 175, type: !21)
!1520 = !DILocalVariable(name: "s", scope: !1512, file: !6, line: 176, type: !35)
!1521 = !DILocalVariable(name: "e", scope: !1512, file: !6, line: 177, type: !167)
!1522 = !DILocation(line: 172, column: 45, scope: !1512)
!1523 = !DILocation(line: 173, column: 14, scope: !1512)
!1524 = !DILocation(line: 173, column: 28, scope: !1512)
!1525 = !DILocation(line: 175, column: 2, scope: !1512)
!1526 = !DILocation(line: 175, column: 8, scope: !1512)
!1527 = !DILocation(line: 175, column: 20, scope: !1512)
!1528 = !DILocation(line: 176, column: 2, scope: !1512)
!1529 = !DILocation(line: 176, column: 14, scope: !1512)
!1530 = !DILocation(line: 176, column: 32, scope: !1512)
!1531 = !DILocation(line: 177, column: 2, scope: !1512)
!1532 = !DILocation(line: 177, column: 14, scope: !1512)
!1533 = !DILocation(line: 177, column: 26, scope: !1512)
!1534 = !DILocation(line: 179, column: 2, scope: !1512)
!1535 = !DILocation(line: 180, column: 13, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1512, file: !6, line: 179, column: 5)
!1537 = !DILocation(line: 180, column: 16, scope: !1536)
!1538 = !DILocation(line: 180, column: 3, scope: !1536)
!1539 = !DILocation(line: 181, column: 5, scope: !1536)
!1540 = !DILocation(line: 182, column: 5, scope: !1536)
!1541 = !DILocation(line: 183, column: 2, scope: !1536)
!1542 = !DILocation(line: 183, column: 11, scope: !1512)
!1543 = !DILocation(line: 183, column: 15, scope: !1512)
!1544 = !DILocation(line: 183, column: 13, scope: !1512)
!1545 = distinct !{!1545, !1534, !1546, !428, !401}
!1546 = !DILocation(line: 183, column: 16, scope: !1512)
!1547 = !DILocation(line: 184, column: 1, scope: !1512)
!1548 = !DILocation(line: 127, column: 44, scope: !71)
!1549 = !DILocation(line: 127, column: 56, scope: !71)
!1550 = !DILocation(line: 129, column: 2, scope: !71)
!1551 = !DILocation(line: 129, column: 2, scope: !78)
!1552 = !DILocation(line: 130, column: 1, scope: !71)
!1553 = !DILocation(line: 153, column: 42, scope: !85)
!1554 = !DILocation(line: 153, column: 59, scope: !85)
!1555 = !DILocation(line: 156, column: 2, scope: !85)
!1556 = !DILocation(line: 156, column: 6, scope: !85)
!1557 = !DILocation(line: 156, column: 10, scope: !98)
!1558 = !DILocation(line: 156, column: 10, scope: !85)
!1559 = !DILocation(line: 158, column: 2, scope: !85)
!1560 = !DILocation(line: 158, column: 2, scope: !100)
!1561 = !DILocation(line: 166, column: 1, scope: !85)
!1562 = !DILocation(line: 25, column: 50, scope: !57)
!1563 = !DILocation(line: 27, column: 9, scope: !66)
!1564 = !DILocation(line: 27, column: 9, scope: !57)
!1565 = !DILocation(line: 27, column: 2, scope: !57)
