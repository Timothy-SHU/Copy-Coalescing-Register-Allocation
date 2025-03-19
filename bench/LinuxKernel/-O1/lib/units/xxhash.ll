; ModuleID = 'lib/xxhash.c'
source_filename = "lib/xxhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xxh32_copy_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad xxh32_copy_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xxh64_copy_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad xxh64_copy_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xxh32: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad xxh32 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xxh64: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad xxh64 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xxh32_reset: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad xxh32_reset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xxh64_reset: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad xxh64_reset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xxh32_update: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad xxh32_update ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xxh32_digest: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad xxh32_digest ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xxh64_update: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad xxh64_update ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xxh64_digest: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad xxh64_digest ; .previous"

%struct.anon = type { i32 }
%struct.anon.0 = type { i64 }
%struct.xxh32_state = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }

@__UNIQUE_ID___addressable_xxh32_copy_state195 = internal global ptr @xxh32_copy_state, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_xxh64_copy_state196 = internal global ptr @xxh64_copy_state, section ".discard.addressable", align 8, !dbg !60
@__UNIQUE_ID___addressable_xxh32197 = internal global ptr @xxh32, section ".discard.addressable", align 8, !dbg !73
@__UNIQUE_ID___addressable_xxh64198 = internal global ptr @xxh64, section ".discard.addressable", align 8, !dbg !86
@__UNIQUE_ID___addressable_xxh32_reset199 = internal global ptr @xxh32_reset, section ".discard.addressable", align 8, !dbg !88
@__UNIQUE_ID___addressable_xxh64_reset200 = internal global ptr @xxh64_reset, section ".discard.addressable", align 8, !dbg !90
@__UNIQUE_ID___addressable_xxh32_update201 = internal global ptr @xxh32_update, section ".discard.addressable", align 8, !dbg !92
@__UNIQUE_ID___addressable_xxh32_digest202 = internal global ptr @xxh32_digest, section ".discard.addressable", align 8, !dbg !94
@__UNIQUE_ID___addressable_xxh64_update203 = internal global ptr @xxh64_update, section ".discard.addressable", align 8, !dbg !96
@__UNIQUE_ID___addressable_xxh64_digest204 = internal global ptr @xxh64_digest, section ".discard.addressable", align 8, !dbg !98
@__UNIQUE_ID_file205 = internal constant [23 x i8] c"xxhash.file=lib/xxhash\00", section ".modinfo", align 1, !dbg !100
@__UNIQUE_ID_license206 = internal constant [28 x i8] c"xxhash.license=Dual BSD/GPL\00", section ".modinfo", align 1, !dbg !107
@__UNIQUE_ID_description207 = internal constant [26 x i8] c"xxhash.description=xxHash\00", section ".modinfo", align 1, !dbg !112
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID___addressable_xxh32_copy_state195, ptr @__UNIQUE_ID___addressable_xxh64_copy_state196, ptr @__UNIQUE_ID___addressable_xxh32197, ptr @__UNIQUE_ID___addressable_xxh64198, ptr @__UNIQUE_ID___addressable_xxh32_reset199, ptr @__UNIQUE_ID___addressable_xxh64_reset200, ptr @__UNIQUE_ID___addressable_xxh32_update201, ptr @__UNIQUE_ID___addressable_xxh32_digest202, ptr @__UNIQUE_ID___addressable_xxh64_update203, ptr @__UNIQUE_ID___addressable_xxh64_digest204, ptr @__UNIQUE_ID_file205, ptr @__UNIQUE_ID_license206, ptr @__UNIQUE_ID_description207], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @xxh32_copy_state(ptr noundef %dst, ptr noundef %src) #0 align 16 !dbg !126 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !147, metadata !DIExpression()), !dbg !149
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !148, metadata !DIExpression()), !dbg !150
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !151
  %1 = load ptr, ptr %src.addr, align 8, !dbg !152
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 44, i1 false), !dbg !153
  ret void, !dbg !154
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @xxh64_copy_state(ptr noundef %dst, ptr noundef %src) #0 align 16 !dbg !155 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !172, metadata !DIExpression()), !dbg !174
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !173, metadata !DIExpression()), !dbg !175
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !176
  %1 = load ptr, ptr %src.addr, align 8, !dbg !177
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 80, i1 false), !dbg !178
  ret void, !dbg !179
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xxh32(ptr noundef %input, i64 noundef %len, i32 noundef %seed) #0 align 16 !dbg !180 {
entry:
  %input.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %seed.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %b_end = alloca ptr, align 8
  %h32 = alloca i32, align 4
  %limit = alloca ptr, align 8
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %v3 = alloca i32, align 4
  %v4 = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !185, metadata !DIExpression()), !dbg !199
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !186, metadata !DIExpression()), !dbg !200
  store i32 %seed, ptr %seed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !187, metadata !DIExpression()), !dbg !201
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %p, metadata !188, metadata !DIExpression()), !dbg !203
  %0 = load ptr, ptr %input.addr, align 8, !dbg !204
  store ptr %0, ptr %p, align 8, !dbg !203
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_end) #6, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %b_end, metadata !189, metadata !DIExpression()), !dbg !206
  %1 = load ptr, ptr %p, align 8, !dbg !207
  %2 = load i64, ptr %len.addr, align 8, !dbg !208
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !209
  store ptr %add.ptr, ptr %b_end, align 8, !dbg !206
  call void @llvm.lifetime.start.p0(i64 4, ptr %h32) #6, !dbg !210
  call void @llvm.dbg.declare(metadata ptr %h32, metadata !190, metadata !DIExpression()), !dbg !211
  %3 = load i64, ptr %len.addr, align 8, !dbg !212
  %cmp = icmp uge i64 %3, 16, !dbg !213
  br i1 %cmp, label %if.then, label %if.else, !dbg !214

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #6, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !191, metadata !DIExpression()), !dbg !216
  %4 = load ptr, ptr %b_end, align 8, !dbg !217
  %add.ptr1 = getelementptr i8, ptr %4, i64 -16, !dbg !218
  store ptr %add.ptr1, ptr %limit, align 8, !dbg !216
  call void @llvm.lifetime.start.p0(i64 4, ptr %v1) #6, !dbg !219
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !195, metadata !DIExpression()), !dbg !220
  %5 = load i32, ptr %seed.addr, align 4, !dbg !221
  %add = add i32 %5, -1640531535, !dbg !222
  %add2 = add i32 %add, -2048144777, !dbg !223
  store i32 %add2, ptr %v1, align 4, !dbg !220
  call void @llvm.lifetime.start.p0(i64 4, ptr %v2) #6, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !196, metadata !DIExpression()), !dbg !225
  %6 = load i32, ptr %seed.addr, align 4, !dbg !226
  %add3 = add i32 %6, -2048144777, !dbg !227
  store i32 %add3, ptr %v2, align 4, !dbg !225
  call void @llvm.lifetime.start.p0(i64 4, ptr %v3) #6, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !197, metadata !DIExpression()), !dbg !229
  %7 = load i32, ptr %seed.addr, align 4, !dbg !230
  %add4 = add i32 %7, 0, !dbg !231
  store i32 %add4, ptr %v3, align 4, !dbg !229
  call void @llvm.lifetime.start.p0(i64 4, ptr %v4) #6, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %v4, metadata !198, metadata !DIExpression()), !dbg !233
  %8 = load i32, ptr %seed.addr, align 4, !dbg !234
  %sub = sub i32 %8, -1640531535, !dbg !235
  store i32 %sub, ptr %v4, align 4, !dbg !233
  br label %do.body, !dbg !236

do.body:                                          ; preds = %do.cond, %if.then
  %9 = load i32, ptr %v1, align 4, !dbg !237
  %10 = load ptr, ptr %p, align 8, !dbg !239
  %call = call i32 @get_unaligned_le32(ptr noundef %10) #7, !dbg !240
  %call5 = call i32 @xxh32_round(i32 noundef %9, i32 noundef %call) #7, !dbg !241
  store i32 %call5, ptr %v1, align 4, !dbg !242
  %11 = load ptr, ptr %p, align 8, !dbg !243
  %add.ptr6 = getelementptr i8, ptr %11, i64 4, !dbg !243
  store ptr %add.ptr6, ptr %p, align 8, !dbg !243
  %12 = load i32, ptr %v2, align 4, !dbg !244
  %13 = load ptr, ptr %p, align 8, !dbg !245
  %call7 = call i32 @get_unaligned_le32(ptr noundef %13) #7, !dbg !246
  %call8 = call i32 @xxh32_round(i32 noundef %12, i32 noundef %call7) #7, !dbg !247
  store i32 %call8, ptr %v2, align 4, !dbg !248
  %14 = load ptr, ptr %p, align 8, !dbg !249
  %add.ptr9 = getelementptr i8, ptr %14, i64 4, !dbg !249
  store ptr %add.ptr9, ptr %p, align 8, !dbg !249
  %15 = load i32, ptr %v3, align 4, !dbg !250
  %16 = load ptr, ptr %p, align 8, !dbg !251
  %call10 = call i32 @get_unaligned_le32(ptr noundef %16) #7, !dbg !252
  %call11 = call i32 @xxh32_round(i32 noundef %15, i32 noundef %call10) #7, !dbg !253
  store i32 %call11, ptr %v3, align 4, !dbg !254
  %17 = load ptr, ptr %p, align 8, !dbg !255
  %add.ptr12 = getelementptr i8, ptr %17, i64 4, !dbg !255
  store ptr %add.ptr12, ptr %p, align 8, !dbg !255
  %18 = load i32, ptr %v4, align 4, !dbg !256
  %19 = load ptr, ptr %p, align 8, !dbg !257
  %call13 = call i32 @get_unaligned_le32(ptr noundef %19) #7, !dbg !258
  %call14 = call i32 @xxh32_round(i32 noundef %18, i32 noundef %call13) #7, !dbg !259
  store i32 %call14, ptr %v4, align 4, !dbg !260
  %20 = load ptr, ptr %p, align 8, !dbg !261
  %add.ptr15 = getelementptr i8, ptr %20, i64 4, !dbg !261
  store ptr %add.ptr15, ptr %p, align 8, !dbg !261
  br label %do.cond, !dbg !262

do.cond:                                          ; preds = %do.body
  %21 = load ptr, ptr %p, align 8, !dbg !263
  %22 = load ptr, ptr %limit, align 8, !dbg !264
  %cmp16 = icmp ule ptr %21, %22, !dbg !265
  br i1 %cmp16, label %do.body, label %do.end, !dbg !262, !llvm.loop !266

do.end:                                           ; preds = %do.cond
  %23 = load i32, ptr %v1, align 4, !dbg !270
  %shl = shl i32 %23, 1, !dbg !270
  %24 = load i32, ptr %v1, align 4, !dbg !270
  %shr = lshr i32 %24, 31, !dbg !270
  %or = or i32 %shl, %shr, !dbg !270
  %25 = load i32, ptr %v2, align 4, !dbg !271
  %shl17 = shl i32 %25, 7, !dbg !271
  %26 = load i32, ptr %v2, align 4, !dbg !271
  %shr18 = lshr i32 %26, 25, !dbg !271
  %or19 = or i32 %shl17, %shr18, !dbg !271
  %add20 = add i32 %or, %or19, !dbg !272
  %27 = load i32, ptr %v3, align 4, !dbg !273
  %shl21 = shl i32 %27, 12, !dbg !273
  %28 = load i32, ptr %v3, align 4, !dbg !273
  %shr22 = lshr i32 %28, 20, !dbg !273
  %or23 = or i32 %shl21, %shr22, !dbg !273
  %add24 = add i32 %add20, %or23, !dbg !274
  %29 = load i32, ptr %v4, align 4, !dbg !275
  %shl25 = shl i32 %29, 18, !dbg !275
  %30 = load i32, ptr %v4, align 4, !dbg !275
  %shr26 = lshr i32 %30, 14, !dbg !275
  %or27 = or i32 %shl25, %shr26, !dbg !275
  %add28 = add i32 %add24, %or27, !dbg !276
  store i32 %add28, ptr %h32, align 4, !dbg !277
  call void @llvm.lifetime.end.p0(i64 4, ptr %v4) #6, !dbg !278
  call void @llvm.lifetime.end.p0(i64 4, ptr %v3) #6, !dbg !278
  call void @llvm.lifetime.end.p0(i64 4, ptr %v2) #6, !dbg !278
  call void @llvm.lifetime.end.p0(i64 4, ptr %v1) #6, !dbg !278
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #6, !dbg !278
  br label %if.end, !dbg !279

if.else:                                          ; preds = %entry
  %31 = load i32, ptr %seed.addr, align 4, !dbg !280
  %add29 = add i32 %31, 374761393, !dbg !282
  store i32 %add29, ptr %h32, align 4, !dbg !283
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %32 = load i64, ptr %len.addr, align 8, !dbg !284
  %conv = trunc i64 %32 to i32, !dbg !285
  %33 = load i32, ptr %h32, align 4, !dbg !286
  %add30 = add i32 %33, %conv, !dbg !286
  store i32 %add30, ptr %h32, align 4, !dbg !286
  br label %while.cond, !dbg !287

while.cond:                                       ; preds = %while.body, %if.end
  %34 = load ptr, ptr %p, align 8, !dbg !288
  %add.ptr31 = getelementptr i8, ptr %34, i64 4, !dbg !289
  %35 = load ptr, ptr %b_end, align 8, !dbg !290
  %cmp32 = icmp ule ptr %add.ptr31, %35, !dbg !291
  br i1 %cmp32, label %while.body, label %while.end, !dbg !287

while.body:                                       ; preds = %while.cond
  %36 = load ptr, ptr %p, align 8, !dbg !292
  %call34 = call i32 @get_unaligned_le32(ptr noundef %36) #7, !dbg !294
  %mul = mul i32 %call34, -1028477379, !dbg !295
  %37 = load i32, ptr %h32, align 4, !dbg !296
  %add35 = add i32 %37, %mul, !dbg !296
  store i32 %add35, ptr %h32, align 4, !dbg !296
  %38 = load i32, ptr %h32, align 4, !dbg !297
  %shl36 = shl i32 %38, 17, !dbg !297
  %39 = load i32, ptr %h32, align 4, !dbg !297
  %shr37 = lshr i32 %39, 15, !dbg !297
  %or38 = or i32 %shl36, %shr37, !dbg !297
  %mul39 = mul i32 %or38, 668265263, !dbg !298
  store i32 %mul39, ptr %h32, align 4, !dbg !299
  %40 = load ptr, ptr %p, align 8, !dbg !300
  %add.ptr40 = getelementptr i8, ptr %40, i64 4, !dbg !300
  store ptr %add.ptr40, ptr %p, align 8, !dbg !300
  br label %while.cond, !dbg !287, !llvm.loop !301

while.end:                                        ; preds = %while.cond
  br label %while.cond41, !dbg !303

while.cond41:                                     ; preds = %while.body44, %while.end
  %41 = load ptr, ptr %p, align 8, !dbg !304
  %42 = load ptr, ptr %b_end, align 8, !dbg !305
  %cmp42 = icmp ult ptr %41, %42, !dbg !306
  br i1 %cmp42, label %while.body44, label %while.end52, !dbg !303

while.body44:                                     ; preds = %while.cond41
  %43 = load ptr, ptr %p, align 8, !dbg !307
  %44 = load i8, ptr %43, align 1, !dbg !309
  %conv45 = zext i8 %44 to i32, !dbg !310
  %mul46 = mul i32 %conv45, 374761393, !dbg !311
  %45 = load i32, ptr %h32, align 4, !dbg !312
  %add47 = add i32 %45, %mul46, !dbg !312
  store i32 %add47, ptr %h32, align 4, !dbg !312
  %46 = load i32, ptr %h32, align 4, !dbg !313
  %shl48 = shl i32 %46, 11, !dbg !313
  %47 = load i32, ptr %h32, align 4, !dbg !313
  %shr49 = lshr i32 %47, 21, !dbg !313
  %or50 = or i32 %shl48, %shr49, !dbg !313
  %mul51 = mul i32 %or50, -1640531535, !dbg !314
  store i32 %mul51, ptr %h32, align 4, !dbg !315
  %48 = load ptr, ptr %p, align 8, !dbg !316
  %incdec.ptr = getelementptr i8, ptr %48, i32 1, !dbg !316
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !316
  br label %while.cond41, !dbg !303, !llvm.loop !317

while.end52:                                      ; preds = %while.cond41
  %49 = load i32, ptr %h32, align 4, !dbg !319
  %shr53 = lshr i32 %49, 15, !dbg !320
  %50 = load i32, ptr %h32, align 4, !dbg !321
  %xor = xor i32 %50, %shr53, !dbg !321
  store i32 %xor, ptr %h32, align 4, !dbg !321
  %51 = load i32, ptr %h32, align 4, !dbg !322
  %mul54 = mul i32 %51, -2048144777, !dbg !322
  store i32 %mul54, ptr %h32, align 4, !dbg !322
  %52 = load i32, ptr %h32, align 4, !dbg !323
  %shr55 = lshr i32 %52, 13, !dbg !324
  %53 = load i32, ptr %h32, align 4, !dbg !325
  %xor56 = xor i32 %53, %shr55, !dbg !325
  store i32 %xor56, ptr %h32, align 4, !dbg !325
  %54 = load i32, ptr %h32, align 4, !dbg !326
  %mul57 = mul i32 %54, -1028477379, !dbg !326
  store i32 %mul57, ptr %h32, align 4, !dbg !326
  %55 = load i32, ptr %h32, align 4, !dbg !327
  %shr58 = lshr i32 %55, 16, !dbg !328
  %56 = load i32, ptr %h32, align 4, !dbg !329
  %xor59 = xor i32 %56, %shr58, !dbg !329
  store i32 %xor59, ptr %h32, align 4, !dbg !329
  %57 = load i32, ptr %h32, align 4, !dbg !330
  call void @llvm.lifetime.end.p0(i64 4, ptr %h32) #6, !dbg !331
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_end) #6, !dbg !331
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !331
  ret i32 %57, !dbg !332
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xxh32_round(i32 noundef %seed, i32 noundef %input) #0 align 16 !dbg !333 {
entry:
  %seed.addr = alloca i32, align 4
  %input.addr = alloca i32, align 4
  store i32 %seed, ptr %seed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !337, metadata !DIExpression()), !dbg !339
  store i32 %input, ptr %input.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !338, metadata !DIExpression()), !dbg !340
  %0 = load i32, ptr %input.addr, align 4, !dbg !341
  %mul = mul i32 %0, -2048144777, !dbg !342
  %1 = load i32, ptr %seed.addr, align 4, !dbg !343
  %add = add i32 %1, %mul, !dbg !343
  store i32 %add, ptr %seed.addr, align 4, !dbg !343
  %2 = load i32, ptr %seed.addr, align 4, !dbg !344
  %shl = shl i32 %2, 13, !dbg !344
  %3 = load i32, ptr %seed.addr, align 4, !dbg !344
  %shr = lshr i32 %3, 19, !dbg !344
  %or = or i32 %shl, %shr, !dbg !344
  store i32 %or, ptr %seed.addr, align 4, !dbg !345
  %4 = load i32, ptr %seed.addr, align 4, !dbg !346
  %mul1 = mul i32 %4, -1640531535, !dbg !346
  store i32 %mul1, ptr %seed.addr, align 4, !dbg !346
  %5 = load i32, ptr %seed.addr, align 4, !dbg !347
  ret i32 %5, !dbg !348
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #4 align 16 !dbg !35 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !41, metadata !DIExpression()), !dbg !349
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #6, !dbg !350
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !42, metadata !DIExpression()), !dbg !350
  %0 = load ptr, ptr %p.addr, align 8, !dbg !350
  store ptr %0, ptr %__pptr, align 8, !dbg !350
  %1 = load ptr, ptr %__pptr, align 8, !dbg !350
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !350
  %2 = load i32, ptr %x, align 1, !dbg !350
  store i32 %2, ptr %tmp, align 4, !dbg !350
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #6, !dbg !351
  %3 = load i32, ptr %tmp, align 4, !dbg !350
  ret i32 %3, !dbg !352
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @xxh64(ptr noundef %input, i64 noundef %len, i64 noundef %seed) #0 align 16 !dbg !353 {
entry:
  %input.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %seed.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %b_end = alloca ptr, align 8
  %h64 = alloca i64, align 8
  %limit = alloca ptr, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %v4 = alloca i64, align 8
  %k1 = alloca i64, align 8
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !357, metadata !DIExpression()), !dbg !372
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !358, metadata !DIExpression()), !dbg !373
  store i64 %seed, ptr %seed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !359, metadata !DIExpression()), !dbg !374
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %p, metadata !360, metadata !DIExpression()), !dbg !376
  %0 = load ptr, ptr %input.addr, align 8, !dbg !377
  store ptr %0, ptr %p, align 8, !dbg !376
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_end) #6, !dbg !378
  call void @llvm.dbg.declare(metadata ptr %b_end, metadata !361, metadata !DIExpression()), !dbg !379
  %1 = load ptr, ptr %p, align 8, !dbg !380
  %2 = load i64, ptr %len.addr, align 8, !dbg !381
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !382
  store ptr %add.ptr, ptr %b_end, align 8, !dbg !379
  call void @llvm.lifetime.start.p0(i64 8, ptr %h64) #6, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %h64, metadata !362, metadata !DIExpression()), !dbg !384
  %3 = load i64, ptr %len.addr, align 8, !dbg !385
  %cmp = icmp uge i64 %3, 32, !dbg !386
  br i1 %cmp, label %if.then, label %if.else, !dbg !387

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #6, !dbg !388
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !363, metadata !DIExpression()), !dbg !389
  %4 = load ptr, ptr %b_end, align 8, !dbg !390
  %add.ptr1 = getelementptr i8, ptr %4, i64 -32, !dbg !391
  store ptr %add.ptr1, ptr %limit, align 8, !dbg !389
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #6, !dbg !392
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !366, metadata !DIExpression()), !dbg !393
  %5 = load i64, ptr %seed.addr, align 8, !dbg !394
  %add = add i64 %5, -7046029288634856825, !dbg !395
  %add2 = add i64 %add, -4417276706812531889, !dbg !396
  store i64 %add2, ptr %v1, align 8, !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #6, !dbg !397
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !367, metadata !DIExpression()), !dbg !398
  %6 = load i64, ptr %seed.addr, align 8, !dbg !399
  %add3 = add i64 %6, -4417276706812531889, !dbg !400
  store i64 %add3, ptr %v2, align 8, !dbg !398
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #6, !dbg !401
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !368, metadata !DIExpression()), !dbg !402
  %7 = load i64, ptr %seed.addr, align 8, !dbg !403
  %add4 = add i64 %7, 0, !dbg !404
  store i64 %add4, ptr %v3, align 8, !dbg !402
  call void @llvm.lifetime.start.p0(i64 8, ptr %v4) #6, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %v4, metadata !369, metadata !DIExpression()), !dbg !406
  %8 = load i64, ptr %seed.addr, align 8, !dbg !407
  %sub = sub i64 %8, -7046029288634856825, !dbg !408
  store i64 %sub, ptr %v4, align 8, !dbg !406
  br label %do.body, !dbg !409

do.body:                                          ; preds = %do.cond, %if.then
  %9 = load i64, ptr %v1, align 8, !dbg !410
  %10 = load ptr, ptr %p, align 8, !dbg !412
  %call = call i64 @get_unaligned_le64(ptr noundef %10) #7, !dbg !413
  %call5 = call i64 @xxh64_round(i64 noundef %9, i64 noundef %call) #7, !dbg !414
  store i64 %call5, ptr %v1, align 8, !dbg !415
  %11 = load ptr, ptr %p, align 8, !dbg !416
  %add.ptr6 = getelementptr i8, ptr %11, i64 8, !dbg !416
  store ptr %add.ptr6, ptr %p, align 8, !dbg !416
  %12 = load i64, ptr %v2, align 8, !dbg !417
  %13 = load ptr, ptr %p, align 8, !dbg !418
  %call7 = call i64 @get_unaligned_le64(ptr noundef %13) #7, !dbg !419
  %call8 = call i64 @xxh64_round(i64 noundef %12, i64 noundef %call7) #7, !dbg !420
  store i64 %call8, ptr %v2, align 8, !dbg !421
  %14 = load ptr, ptr %p, align 8, !dbg !422
  %add.ptr9 = getelementptr i8, ptr %14, i64 8, !dbg !422
  store ptr %add.ptr9, ptr %p, align 8, !dbg !422
  %15 = load i64, ptr %v3, align 8, !dbg !423
  %16 = load ptr, ptr %p, align 8, !dbg !424
  %call10 = call i64 @get_unaligned_le64(ptr noundef %16) #7, !dbg !425
  %call11 = call i64 @xxh64_round(i64 noundef %15, i64 noundef %call10) #7, !dbg !426
  store i64 %call11, ptr %v3, align 8, !dbg !427
  %17 = load ptr, ptr %p, align 8, !dbg !428
  %add.ptr12 = getelementptr i8, ptr %17, i64 8, !dbg !428
  store ptr %add.ptr12, ptr %p, align 8, !dbg !428
  %18 = load i64, ptr %v4, align 8, !dbg !429
  %19 = load ptr, ptr %p, align 8, !dbg !430
  %call13 = call i64 @get_unaligned_le64(ptr noundef %19) #7, !dbg !431
  %call14 = call i64 @xxh64_round(i64 noundef %18, i64 noundef %call13) #7, !dbg !432
  store i64 %call14, ptr %v4, align 8, !dbg !433
  %20 = load ptr, ptr %p, align 8, !dbg !434
  %add.ptr15 = getelementptr i8, ptr %20, i64 8, !dbg !434
  store ptr %add.ptr15, ptr %p, align 8, !dbg !434
  br label %do.cond, !dbg !435

do.cond:                                          ; preds = %do.body
  %21 = load ptr, ptr %p, align 8, !dbg !436
  %22 = load ptr, ptr %limit, align 8, !dbg !437
  %cmp16 = icmp ule ptr %21, %22, !dbg !438
  br i1 %cmp16, label %do.body, label %do.end, !dbg !435, !llvm.loop !439

do.end:                                           ; preds = %do.cond
  %23 = load i64, ptr %v1, align 8, !dbg !441
  %shl = shl i64 %23, 1, !dbg !441
  %24 = load i64, ptr %v1, align 8, !dbg !441
  %shr = lshr i64 %24, 63, !dbg !441
  %or = or i64 %shl, %shr, !dbg !441
  %25 = load i64, ptr %v2, align 8, !dbg !442
  %shl17 = shl i64 %25, 7, !dbg !442
  %26 = load i64, ptr %v2, align 8, !dbg !442
  %shr18 = lshr i64 %26, 57, !dbg !442
  %or19 = or i64 %shl17, %shr18, !dbg !442
  %add20 = add i64 %or, %or19, !dbg !443
  %27 = load i64, ptr %v3, align 8, !dbg !444
  %shl21 = shl i64 %27, 12, !dbg !444
  %28 = load i64, ptr %v3, align 8, !dbg !444
  %shr22 = lshr i64 %28, 52, !dbg !444
  %or23 = or i64 %shl21, %shr22, !dbg !444
  %add24 = add i64 %add20, %or23, !dbg !445
  %29 = load i64, ptr %v4, align 8, !dbg !446
  %shl25 = shl i64 %29, 18, !dbg !446
  %30 = load i64, ptr %v4, align 8, !dbg !446
  %shr26 = lshr i64 %30, 46, !dbg !446
  %or27 = or i64 %shl25, %shr26, !dbg !446
  %add28 = add i64 %add24, %or27, !dbg !447
  store i64 %add28, ptr %h64, align 8, !dbg !448
  %31 = load i64, ptr %h64, align 8, !dbg !449
  %32 = load i64, ptr %v1, align 8, !dbg !450
  %call29 = call i64 @xxh64_merge_round(i64 noundef %31, i64 noundef %32) #7, !dbg !451
  store i64 %call29, ptr %h64, align 8, !dbg !452
  %33 = load i64, ptr %h64, align 8, !dbg !453
  %34 = load i64, ptr %v2, align 8, !dbg !454
  %call30 = call i64 @xxh64_merge_round(i64 noundef %33, i64 noundef %34) #7, !dbg !455
  store i64 %call30, ptr %h64, align 8, !dbg !456
  %35 = load i64, ptr %h64, align 8, !dbg !457
  %36 = load i64, ptr %v3, align 8, !dbg !458
  %call31 = call i64 @xxh64_merge_round(i64 noundef %35, i64 noundef %36) #7, !dbg !459
  store i64 %call31, ptr %h64, align 8, !dbg !460
  %37 = load i64, ptr %h64, align 8, !dbg !461
  %38 = load i64, ptr %v4, align 8, !dbg !462
  %call32 = call i64 @xxh64_merge_round(i64 noundef %37, i64 noundef %38) #7, !dbg !463
  store i64 %call32, ptr %h64, align 8, !dbg !464
  call void @llvm.lifetime.end.p0(i64 8, ptr %v4) #6, !dbg !465
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #6, !dbg !465
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #6, !dbg !465
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #6, !dbg !465
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #6, !dbg !465
  br label %if.end, !dbg !466

if.else:                                          ; preds = %entry
  %39 = load i64, ptr %seed.addr, align 8, !dbg !467
  %add33 = add i64 %39, 2870177450012600261, !dbg !469
  store i64 %add33, ptr %h64, align 8, !dbg !470
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %40 = load i64, ptr %len.addr, align 8, !dbg !471
  %41 = load i64, ptr %h64, align 8, !dbg !472
  %add34 = add i64 %41, %40, !dbg !472
  store i64 %add34, ptr %h64, align 8, !dbg !472
  br label %while.cond, !dbg !473

while.cond:                                       ; preds = %while.body, %if.end
  %42 = load ptr, ptr %p, align 8, !dbg !474
  %add.ptr35 = getelementptr i8, ptr %42, i64 8, !dbg !475
  %43 = load ptr, ptr %b_end, align 8, !dbg !476
  %cmp36 = icmp ule ptr %add.ptr35, %43, !dbg !477
  br i1 %cmp36, label %while.body, label %while.end, !dbg !473

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %k1) #6, !dbg !478
  call void @llvm.dbg.declare(metadata ptr %k1, metadata !370, metadata !DIExpression()), !dbg !479
  %44 = load ptr, ptr %p, align 8, !dbg !480
  %call37 = call i64 @get_unaligned_le64(ptr noundef %44) #7, !dbg !481
  %call38 = call i64 @xxh64_round(i64 noundef 0, i64 noundef %call37) #7, !dbg !482
  store i64 %call38, ptr %k1, align 8, !dbg !479
  %45 = load i64, ptr %k1, align 8, !dbg !483
  %46 = load i64, ptr %h64, align 8, !dbg !484
  %xor = xor i64 %46, %45, !dbg !484
  store i64 %xor, ptr %h64, align 8, !dbg !484
  %47 = load i64, ptr %h64, align 8, !dbg !485
  %shl39 = shl i64 %47, 27, !dbg !485
  %48 = load i64, ptr %h64, align 8, !dbg !485
  %shr40 = lshr i64 %48, 37, !dbg !485
  %or41 = or i64 %shl39, %shr40, !dbg !485
  %mul = mul i64 %or41, -7046029288634856825, !dbg !486
  %add42 = add i64 %mul, -8796714831421723037, !dbg !487
  store i64 %add42, ptr %h64, align 8, !dbg !488
  %49 = load ptr, ptr %p, align 8, !dbg !489
  %add.ptr43 = getelementptr i8, ptr %49, i64 8, !dbg !489
  store ptr %add.ptr43, ptr %p, align 8, !dbg !489
  call void @llvm.lifetime.end.p0(i64 8, ptr %k1) #6, !dbg !490
  br label %while.cond, !dbg !473, !llvm.loop !491

while.end:                                        ; preds = %while.cond
  %50 = load ptr, ptr %p, align 8, !dbg !492
  %add.ptr44 = getelementptr i8, ptr %50, i64 4, !dbg !494
  %51 = load ptr, ptr %b_end, align 8, !dbg !495
  %cmp45 = icmp ule ptr %add.ptr44, %51, !dbg !496
  br i1 %cmp45, label %if.then46, label %if.end56, !dbg !497

if.then46:                                        ; preds = %while.end
  %52 = load ptr, ptr %p, align 8, !dbg !498
  %call47 = call i32 @get_unaligned_le32(ptr noundef %52) #7, !dbg !500
  %conv = zext i32 %call47 to i64, !dbg !501
  %mul48 = mul i64 %conv, -7046029288634856825, !dbg !502
  %53 = load i64, ptr %h64, align 8, !dbg !503
  %xor49 = xor i64 %53, %mul48, !dbg !503
  store i64 %xor49, ptr %h64, align 8, !dbg !503
  %54 = load i64, ptr %h64, align 8, !dbg !504
  %shl50 = shl i64 %54, 23, !dbg !504
  %55 = load i64, ptr %h64, align 8, !dbg !504
  %shr51 = lshr i64 %55, 41, !dbg !504
  %or52 = or i64 %shl50, %shr51, !dbg !504
  %mul53 = mul i64 %or52, -4417276706812531889, !dbg !505
  %add54 = add i64 %mul53, 1609587929392839161, !dbg !506
  store i64 %add54, ptr %h64, align 8, !dbg !507
  %56 = load ptr, ptr %p, align 8, !dbg !508
  %add.ptr55 = getelementptr i8, ptr %56, i64 4, !dbg !508
  store ptr %add.ptr55, ptr %p, align 8, !dbg !508
  br label %if.end56, !dbg !509

if.end56:                                         ; preds = %if.then46, %while.end
  br label %while.cond57, !dbg !510

while.cond57:                                     ; preds = %while.body60, %if.end56
  %57 = load ptr, ptr %p, align 8, !dbg !511
  %58 = load ptr, ptr %b_end, align 8, !dbg !512
  %cmp58 = icmp ult ptr %57, %58, !dbg !513
  br i1 %cmp58, label %while.body60, label %while.end68, !dbg !510

while.body60:                                     ; preds = %while.cond57
  %59 = load ptr, ptr %p, align 8, !dbg !514
  %60 = load i8, ptr %59, align 1, !dbg !516
  %conv61 = zext i8 %60 to i64, !dbg !517
  %mul62 = mul i64 %conv61, 2870177450012600261, !dbg !518
  %61 = load i64, ptr %h64, align 8, !dbg !519
  %xor63 = xor i64 %61, %mul62, !dbg !519
  store i64 %xor63, ptr %h64, align 8, !dbg !519
  %62 = load i64, ptr %h64, align 8, !dbg !520
  %shl64 = shl i64 %62, 11, !dbg !520
  %63 = load i64, ptr %h64, align 8, !dbg !520
  %shr65 = lshr i64 %63, 53, !dbg !520
  %or66 = or i64 %shl64, %shr65, !dbg !520
  %mul67 = mul i64 %or66, -7046029288634856825, !dbg !521
  store i64 %mul67, ptr %h64, align 8, !dbg !522
  %64 = load ptr, ptr %p, align 8, !dbg !523
  %incdec.ptr = getelementptr i8, ptr %64, i32 1, !dbg !523
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !523
  br label %while.cond57, !dbg !510, !llvm.loop !524

while.end68:                                      ; preds = %while.cond57
  %65 = load i64, ptr %h64, align 8, !dbg !526
  %shr69 = lshr i64 %65, 33, !dbg !527
  %66 = load i64, ptr %h64, align 8, !dbg !528
  %xor70 = xor i64 %66, %shr69, !dbg !528
  store i64 %xor70, ptr %h64, align 8, !dbg !528
  %67 = load i64, ptr %h64, align 8, !dbg !529
  %mul71 = mul i64 %67, -4417276706812531889, !dbg !529
  store i64 %mul71, ptr %h64, align 8, !dbg !529
  %68 = load i64, ptr %h64, align 8, !dbg !530
  %shr72 = lshr i64 %68, 29, !dbg !531
  %69 = load i64, ptr %h64, align 8, !dbg !532
  %xor73 = xor i64 %69, %shr72, !dbg !532
  store i64 %xor73, ptr %h64, align 8, !dbg !532
  %70 = load i64, ptr %h64, align 8, !dbg !533
  %mul74 = mul i64 %70, 1609587929392839161, !dbg !533
  store i64 %mul74, ptr %h64, align 8, !dbg !533
  %71 = load i64, ptr %h64, align 8, !dbg !534
  %shr75 = lshr i64 %71, 32, !dbg !535
  %72 = load i64, ptr %h64, align 8, !dbg !536
  %xor76 = xor i64 %72, %shr75, !dbg !536
  store i64 %xor76, ptr %h64, align 8, !dbg !536
  %73 = load i64, ptr %h64, align 8, !dbg !537
  call void @llvm.lifetime.end.p0(i64 8, ptr %h64) #6, !dbg !538
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_end) #6, !dbg !538
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !538
  ret i64 %73, !dbg !539
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @xxh64_round(i64 noundef %acc, i64 noundef %input) #0 align 16 !dbg !540 {
entry:
  %acc.addr = alloca i64, align 8
  %input.addr = alloca i64, align 8
  store i64 %acc, ptr %acc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acc.addr, metadata !544, metadata !DIExpression()), !dbg !546
  store i64 %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !545, metadata !DIExpression()), !dbg !547
  %0 = load i64, ptr %input.addr, align 8, !dbg !548
  %mul = mul i64 %0, -4417276706812531889, !dbg !549
  %1 = load i64, ptr %acc.addr, align 8, !dbg !550
  %add = add i64 %1, %mul, !dbg !550
  store i64 %add, ptr %acc.addr, align 8, !dbg !550
  %2 = load i64, ptr %acc.addr, align 8, !dbg !551
  %shl = shl i64 %2, 31, !dbg !551
  %3 = load i64, ptr %acc.addr, align 8, !dbg !551
  %shr = lshr i64 %3, 33, !dbg !551
  %or = or i64 %shl, %shr, !dbg !551
  store i64 %or, ptr %acc.addr, align 8, !dbg !552
  %4 = load i64, ptr %acc.addr, align 8, !dbg !553
  %mul1 = mul i64 %4, -7046029288634856825, !dbg !553
  store i64 %mul1, ptr %acc.addr, align 8, !dbg !553
  %5 = load i64, ptr %acc.addr, align 8, !dbg !554
  ret i64 %5, !dbg !555
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_unaligned_le64(ptr noundef %p) #4 align 16 !dbg !50 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !54, metadata !DIExpression()), !dbg !556
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #6, !dbg !557
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !55, metadata !DIExpression()), !dbg !557
  %0 = load ptr, ptr %p.addr, align 8, !dbg !557
  store ptr %0, ptr %__pptr, align 8, !dbg !557
  %1 = load ptr, ptr %__pptr, align 8, !dbg !557
  %x = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 0, !dbg !557
  %2 = load i64, ptr %x, align 1, !dbg !557
  store i64 %2, ptr %tmp, align 8, !dbg !557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #6, !dbg !558
  %3 = load i64, ptr %tmp, align 8, !dbg !557
  ret i64 %3, !dbg !559
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @xxh64_merge_round(i64 noundef %acc, i64 noundef %val) #0 align 16 !dbg !560 {
entry:
  %acc.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %acc, ptr %acc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acc.addr, metadata !564, metadata !DIExpression()), !dbg !566
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !565, metadata !DIExpression()), !dbg !567
  %0 = load i64, ptr %val.addr, align 8, !dbg !568
  %call = call i64 @xxh64_round(i64 noundef 0, i64 noundef %0) #7, !dbg !569
  store i64 %call, ptr %val.addr, align 8, !dbg !570
  %1 = load i64, ptr %val.addr, align 8, !dbg !571
  %2 = load i64, ptr %acc.addr, align 8, !dbg !572
  %xor = xor i64 %2, %1, !dbg !572
  store i64 %xor, ptr %acc.addr, align 8, !dbg !572
  %3 = load i64, ptr %acc.addr, align 8, !dbg !573
  %mul = mul i64 %3, -7046029288634856825, !dbg !574
  %add = add i64 %mul, -8796714831421723037, !dbg !575
  store i64 %add, ptr %acc.addr, align 8, !dbg !576
  %4 = load i64, ptr %acc.addr, align 8, !dbg !577
  ret i64 %4, !dbg !578
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @xxh32_reset(ptr noundef %statePtr, i32 noundef %seed) #0 align 16 !dbg !579 {
entry:
  %statePtr.addr = alloca ptr, align 8
  %seed.addr = alloca i32, align 4
  %state = alloca %struct.xxh32_state, align 4
  store ptr %statePtr, ptr %statePtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %statePtr.addr, metadata !583, metadata !DIExpression()), !dbg !586
  store i32 %seed, ptr %seed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !584, metadata !DIExpression()), !dbg !587
  call void @llvm.lifetime.start.p0(i64 44, ptr %state) #6, !dbg !588
  call void @llvm.dbg.declare(metadata ptr %state, metadata !585, metadata !DIExpression()), !dbg !589
  call void @llvm.memset.p0.i64(ptr align 4 %state, i8 0, i64 44, i1 false), !dbg !590
  %0 = load i32, ptr %seed.addr, align 4, !dbg !591
  %add = add i32 %0, -1640531535, !dbg !592
  %add1 = add i32 %add, -2048144777, !dbg !593
  %v1 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 2, !dbg !594
  store i32 %add1, ptr %v1, align 4, !dbg !595
  %1 = load i32, ptr %seed.addr, align 4, !dbg !596
  %add2 = add i32 %1, -2048144777, !dbg !597
  %v2 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 3, !dbg !598
  store i32 %add2, ptr %v2, align 4, !dbg !599
  %2 = load i32, ptr %seed.addr, align 4, !dbg !600
  %add3 = add i32 %2, 0, !dbg !601
  %v3 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 4, !dbg !602
  store i32 %add3, ptr %v3, align 4, !dbg !603
  %3 = load i32, ptr %seed.addr, align 4, !dbg !604
  %sub = sub i32 %3, -1640531535, !dbg !605
  %v4 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 5, !dbg !606
  store i32 %sub, ptr %v4, align 4, !dbg !607
  %4 = load ptr, ptr %statePtr.addr, align 8, !dbg !608
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %state, i64 44, i1 false), !dbg !609
  call void @llvm.lifetime.end.p0(i64 44, ptr %state) #6, !dbg !610
  ret void, !dbg !610
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @xxh64_reset(ptr noundef %statePtr, i64 noundef %seed) #0 align 16 !dbg !611 {
entry:
  %statePtr.addr = alloca ptr, align 8
  %seed.addr = alloca i64, align 8
  %state = alloca %struct.xxh64_state, align 8
  store ptr %statePtr, ptr %statePtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %statePtr.addr, metadata !615, metadata !DIExpression()), !dbg !618
  store i64 %seed, ptr %seed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !616, metadata !DIExpression()), !dbg !619
  call void @llvm.lifetime.start.p0(i64 80, ptr %state) #6, !dbg !620
  call void @llvm.dbg.declare(metadata ptr %state, metadata !617, metadata !DIExpression()), !dbg !621
  call void @llvm.memset.p0.i64(ptr align 8 %state, i8 0, i64 80, i1 false), !dbg !622
  %0 = load i64, ptr %seed.addr, align 8, !dbg !623
  %add = add i64 %0, -7046029288634856825, !dbg !624
  %add1 = add i64 %add, -4417276706812531889, !dbg !625
  %v1 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 1, !dbg !626
  store i64 %add1, ptr %v1, align 8, !dbg !627
  %1 = load i64, ptr %seed.addr, align 8, !dbg !628
  %add2 = add i64 %1, -4417276706812531889, !dbg !629
  %v2 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 2, !dbg !630
  store i64 %add2, ptr %v2, align 8, !dbg !631
  %2 = load i64, ptr %seed.addr, align 8, !dbg !632
  %add3 = add i64 %2, 0, !dbg !633
  %v3 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 3, !dbg !634
  store i64 %add3, ptr %v3, align 8, !dbg !635
  %3 = load i64, ptr %seed.addr, align 8, !dbg !636
  %sub = sub i64 %3, -7046029288634856825, !dbg !637
  %v4 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 4, !dbg !638
  store i64 %sub, ptr %v4, align 8, !dbg !639
  %4 = load ptr, ptr %statePtr.addr, align 8, !dbg !640
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %state, i64 80, i1 false), !dbg !641
  call void @llvm.lifetime.end.p0(i64 80, ptr %state) #6, !dbg !642
  ret void, !dbg !642
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xxh32_update(ptr noundef %state, ptr noundef %input, i64 noundef %len) #0 align 16 !dbg !643 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %b_end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %p32 = alloca ptr, align 8
  %limit = alloca ptr, align 8
  %v154 = alloca i32, align 4
  %v256 = alloca i32, align 4
  %v358 = alloca i32, align 4
  %v460 = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !648, metadata !DIExpression()), !dbg !664
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !649, metadata !DIExpression()), !dbg !665
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !650, metadata !DIExpression()), !dbg !666
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !667
  call void @llvm.dbg.declare(metadata ptr %p, metadata !651, metadata !DIExpression()), !dbg !668
  %0 = load ptr, ptr %input.addr, align 8, !dbg !669
  store ptr %0, ptr %p, align 8, !dbg !668
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_end) #6, !dbg !670
  call void @llvm.dbg.declare(metadata ptr %b_end, metadata !652, metadata !DIExpression()), !dbg !671
  %1 = load ptr, ptr %p, align 8, !dbg !672
  %2 = load i64, ptr %len.addr, align 8, !dbg !673
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !674
  store ptr %add.ptr, ptr %b_end, align 8, !dbg !671
  %3 = load ptr, ptr %input.addr, align 8, !dbg !675
  %cmp = icmp eq ptr %3, null, !dbg !677
  br i1 %cmp, label %if.then, label %if.end, !dbg !678

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !679

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %len.addr, align 8, !dbg !680
  %conv = trunc i64 %4 to i32, !dbg !681
  %5 = load ptr, ptr %state.addr, align 8, !dbg !682
  %total_len_32 = getelementptr inbounds %struct.xxh32_state, ptr %5, i32 0, i32 0, !dbg !683
  %6 = load i32, ptr %total_len_32, align 4, !dbg !684
  %add = add i32 %6, %conv, !dbg !684
  store i32 %add, ptr %total_len_32, align 4, !dbg !684
  %7 = load i64, ptr %len.addr, align 8, !dbg !685
  %cmp1 = icmp uge i64 %7, 16, !dbg !686
  %conv2 = zext i1 %cmp1 to i32, !dbg !686
  %8 = load ptr, ptr %state.addr, align 8, !dbg !687
  %total_len_323 = getelementptr inbounds %struct.xxh32_state, ptr %8, i32 0, i32 0, !dbg !688
  %9 = load i32, ptr %total_len_323, align 4, !dbg !688
  %cmp4 = icmp uge i32 %9, 16, !dbg !689
  %conv5 = zext i1 %cmp4 to i32, !dbg !689
  %or = or i32 %conv2, %conv5, !dbg !690
  %10 = load ptr, ptr %state.addr, align 8, !dbg !691
  %large_len = getelementptr inbounds %struct.xxh32_state, ptr %10, i32 0, i32 1, !dbg !692
  %11 = load i32, ptr %large_len, align 4, !dbg !693
  %or6 = or i32 %11, %or, !dbg !693
  store i32 %or6, ptr %large_len, align 4, !dbg !693
  %12 = load ptr, ptr %state.addr, align 8, !dbg !694
  %memsize = getelementptr inbounds %struct.xxh32_state, ptr %12, i32 0, i32 7, !dbg !696
  %13 = load i32, ptr %memsize, align 4, !dbg !696
  %conv7 = zext i32 %13 to i64, !dbg !694
  %14 = load i64, ptr %len.addr, align 8, !dbg !697
  %add8 = add i64 %conv7, %14, !dbg !698
  %cmp9 = icmp ult i64 %add8, 16, !dbg !699
  br i1 %cmp9, label %if.then11, label %if.end17, !dbg !700

if.then11:                                        ; preds = %if.end
  %15 = load ptr, ptr %state.addr, align 8, !dbg !701
  %mem32 = getelementptr inbounds %struct.xxh32_state, ptr %15, i32 0, i32 6, !dbg !703
  %arraydecay = getelementptr inbounds [4 x i32], ptr %mem32, i64 0, i64 0, !dbg !704
  %16 = load ptr, ptr %state.addr, align 8, !dbg !705
  %memsize12 = getelementptr inbounds %struct.xxh32_state, ptr %16, i32 0, i32 7, !dbg !706
  %17 = load i32, ptr %memsize12, align 4, !dbg !706
  %idx.ext = zext i32 %17 to i64, !dbg !707
  %add.ptr13 = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !707
  %18 = load ptr, ptr %input.addr, align 8, !dbg !708
  %19 = load i64, ptr %len.addr, align 8, !dbg !709
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr13, ptr align 1 %18, i64 %19, i1 false), !dbg !710
  %20 = load i64, ptr %len.addr, align 8, !dbg !711
  %conv14 = trunc i64 %20 to i32, !dbg !712
  %21 = load ptr, ptr %state.addr, align 8, !dbg !713
  %memsize15 = getelementptr inbounds %struct.xxh32_state, ptr %21, i32 0, i32 7, !dbg !714
  %22 = load i32, ptr %memsize15, align 4, !dbg !715
  %add16 = add i32 %22, %conv14, !dbg !715
  store i32 %add16, ptr %memsize15, align 4, !dbg !715
  store i32 0, ptr %retval, align 4, !dbg !716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !716

if.end17:                                         ; preds = %if.end
  %23 = load ptr, ptr %state.addr, align 8, !dbg !717
  %memsize18 = getelementptr inbounds %struct.xxh32_state, ptr %23, i32 0, i32 7, !dbg !718
  %24 = load i32, ptr %memsize18, align 4, !dbg !718
  %tobool = icmp ne i32 %24, 0, !dbg !717
  br i1 %tobool, label %if.then19, label %if.end48, !dbg !719

if.then19:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %p32) #6, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %p32, metadata !653, metadata !DIExpression()), !dbg !721
  %25 = load ptr, ptr %state.addr, align 8, !dbg !722
  %mem3220 = getelementptr inbounds %struct.xxh32_state, ptr %25, i32 0, i32 6, !dbg !723
  %arraydecay21 = getelementptr inbounds [4 x i32], ptr %mem3220, i64 0, i64 0, !dbg !722
  store ptr %arraydecay21, ptr %p32, align 8, !dbg !721
  %26 = load ptr, ptr %state.addr, align 8, !dbg !724
  %mem3222 = getelementptr inbounds %struct.xxh32_state, ptr %26, i32 0, i32 6, !dbg !725
  %arraydecay23 = getelementptr inbounds [4 x i32], ptr %mem3222, i64 0, i64 0, !dbg !726
  %27 = load ptr, ptr %state.addr, align 8, !dbg !727
  %memsize24 = getelementptr inbounds %struct.xxh32_state, ptr %27, i32 0, i32 7, !dbg !728
  %28 = load i32, ptr %memsize24, align 4, !dbg !728
  %idx.ext25 = zext i32 %28 to i64, !dbg !729
  %add.ptr26 = getelementptr i8, ptr %arraydecay23, i64 %idx.ext25, !dbg !729
  %29 = load ptr, ptr %input.addr, align 8, !dbg !730
  %30 = load ptr, ptr %state.addr, align 8, !dbg !731
  %memsize27 = getelementptr inbounds %struct.xxh32_state, ptr %30, i32 0, i32 7, !dbg !732
  %31 = load i32, ptr %memsize27, align 4, !dbg !732
  %sub = sub i32 16, %31, !dbg !733
  %conv28 = zext i32 %sub to i64, !dbg !734
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr26, ptr align 1 %29, i64 %conv28, i1 false), !dbg !735
  %32 = load ptr, ptr %state.addr, align 8, !dbg !736
  %v1 = getelementptr inbounds %struct.xxh32_state, ptr %32, i32 0, i32 2, !dbg !737
  %33 = load i32, ptr %v1, align 4, !dbg !737
  %34 = load ptr, ptr %p32, align 8, !dbg !738
  %call = call i32 @get_unaligned_le32(ptr noundef %34) #7, !dbg !739
  %call29 = call i32 @xxh32_round(i32 noundef %33, i32 noundef %call) #7, !dbg !740
  %35 = load ptr, ptr %state.addr, align 8, !dbg !741
  %v130 = getelementptr inbounds %struct.xxh32_state, ptr %35, i32 0, i32 2, !dbg !742
  store i32 %call29, ptr %v130, align 4, !dbg !743
  %36 = load ptr, ptr %p32, align 8, !dbg !744
  %incdec.ptr = getelementptr i32, ptr %36, i32 1, !dbg !744
  store ptr %incdec.ptr, ptr %p32, align 8, !dbg !744
  %37 = load ptr, ptr %state.addr, align 8, !dbg !745
  %v2 = getelementptr inbounds %struct.xxh32_state, ptr %37, i32 0, i32 3, !dbg !746
  %38 = load i32, ptr %v2, align 4, !dbg !746
  %39 = load ptr, ptr %p32, align 8, !dbg !747
  %call31 = call i32 @get_unaligned_le32(ptr noundef %39) #7, !dbg !748
  %call32 = call i32 @xxh32_round(i32 noundef %38, i32 noundef %call31) #7, !dbg !749
  %40 = load ptr, ptr %state.addr, align 8, !dbg !750
  %v233 = getelementptr inbounds %struct.xxh32_state, ptr %40, i32 0, i32 3, !dbg !751
  store i32 %call32, ptr %v233, align 4, !dbg !752
  %41 = load ptr, ptr %p32, align 8, !dbg !753
  %incdec.ptr34 = getelementptr i32, ptr %41, i32 1, !dbg !753
  store ptr %incdec.ptr34, ptr %p32, align 8, !dbg !753
  %42 = load ptr, ptr %state.addr, align 8, !dbg !754
  %v3 = getelementptr inbounds %struct.xxh32_state, ptr %42, i32 0, i32 4, !dbg !755
  %43 = load i32, ptr %v3, align 4, !dbg !755
  %44 = load ptr, ptr %p32, align 8, !dbg !756
  %call35 = call i32 @get_unaligned_le32(ptr noundef %44) #7, !dbg !757
  %call36 = call i32 @xxh32_round(i32 noundef %43, i32 noundef %call35) #7, !dbg !758
  %45 = load ptr, ptr %state.addr, align 8, !dbg !759
  %v337 = getelementptr inbounds %struct.xxh32_state, ptr %45, i32 0, i32 4, !dbg !760
  store i32 %call36, ptr %v337, align 4, !dbg !761
  %46 = load ptr, ptr %p32, align 8, !dbg !762
  %incdec.ptr38 = getelementptr i32, ptr %46, i32 1, !dbg !762
  store ptr %incdec.ptr38, ptr %p32, align 8, !dbg !762
  %47 = load ptr, ptr %state.addr, align 8, !dbg !763
  %v4 = getelementptr inbounds %struct.xxh32_state, ptr %47, i32 0, i32 5, !dbg !764
  %48 = load i32, ptr %v4, align 4, !dbg !764
  %49 = load ptr, ptr %p32, align 8, !dbg !765
  %call39 = call i32 @get_unaligned_le32(ptr noundef %49) #7, !dbg !766
  %call40 = call i32 @xxh32_round(i32 noundef %48, i32 noundef %call39) #7, !dbg !767
  %50 = load ptr, ptr %state.addr, align 8, !dbg !768
  %v441 = getelementptr inbounds %struct.xxh32_state, ptr %50, i32 0, i32 5, !dbg !769
  store i32 %call40, ptr %v441, align 4, !dbg !770
  %51 = load ptr, ptr %p32, align 8, !dbg !771
  %incdec.ptr42 = getelementptr i32, ptr %51, i32 1, !dbg !771
  store ptr %incdec.ptr42, ptr %p32, align 8, !dbg !771
  %52 = load ptr, ptr %state.addr, align 8, !dbg !772
  %memsize43 = getelementptr inbounds %struct.xxh32_state, ptr %52, i32 0, i32 7, !dbg !773
  %53 = load i32, ptr %memsize43, align 4, !dbg !773
  %sub44 = sub i32 16, %53, !dbg !774
  %54 = load ptr, ptr %p, align 8, !dbg !775
  %idx.ext45 = zext i32 %sub44 to i64, !dbg !775
  %add.ptr46 = getelementptr i8, ptr %54, i64 %idx.ext45, !dbg !775
  store ptr %add.ptr46, ptr %p, align 8, !dbg !775
  %55 = load ptr, ptr %state.addr, align 8, !dbg !776
  %memsize47 = getelementptr inbounds %struct.xxh32_state, ptr %55, i32 0, i32 7, !dbg !777
  store i32 0, ptr %memsize47, align 4, !dbg !778
  call void @llvm.lifetime.end.p0(i64 8, ptr %p32) #6, !dbg !779
  br label %if.end48, !dbg !780

if.end48:                                         ; preds = %if.then19, %if.end17
  %56 = load ptr, ptr %p, align 8, !dbg !781
  %57 = load ptr, ptr %b_end, align 8, !dbg !782
  %add.ptr49 = getelementptr i8, ptr %57, i64 -16, !dbg !783
  %cmp50 = icmp ule ptr %56, %add.ptr49, !dbg !784
  br i1 %cmp50, label %if.then52, label %if.end80, !dbg !785

if.then52:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #6, !dbg !786
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !657, metadata !DIExpression()), !dbg !787
  %58 = load ptr, ptr %b_end, align 8, !dbg !788
  %add.ptr53 = getelementptr i8, ptr %58, i64 -16, !dbg !789
  store ptr %add.ptr53, ptr %limit, align 8, !dbg !787
  call void @llvm.lifetime.start.p0(i64 4, ptr %v154) #6, !dbg !790
  call void @llvm.dbg.declare(metadata ptr %v154, metadata !660, metadata !DIExpression()), !dbg !791
  %59 = load ptr, ptr %state.addr, align 8, !dbg !792
  %v155 = getelementptr inbounds %struct.xxh32_state, ptr %59, i32 0, i32 2, !dbg !793
  %60 = load i32, ptr %v155, align 4, !dbg !793
  store i32 %60, ptr %v154, align 4, !dbg !791
  call void @llvm.lifetime.start.p0(i64 4, ptr %v256) #6, !dbg !794
  call void @llvm.dbg.declare(metadata ptr %v256, metadata !661, metadata !DIExpression()), !dbg !795
  %61 = load ptr, ptr %state.addr, align 8, !dbg !796
  %v257 = getelementptr inbounds %struct.xxh32_state, ptr %61, i32 0, i32 3, !dbg !797
  %62 = load i32, ptr %v257, align 4, !dbg !797
  store i32 %62, ptr %v256, align 4, !dbg !795
  call void @llvm.lifetime.start.p0(i64 4, ptr %v358) #6, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %v358, metadata !662, metadata !DIExpression()), !dbg !799
  %63 = load ptr, ptr %state.addr, align 8, !dbg !800
  %v359 = getelementptr inbounds %struct.xxh32_state, ptr %63, i32 0, i32 4, !dbg !801
  %64 = load i32, ptr %v359, align 4, !dbg !801
  store i32 %64, ptr %v358, align 4, !dbg !799
  call void @llvm.lifetime.start.p0(i64 4, ptr %v460) #6, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %v460, metadata !663, metadata !DIExpression()), !dbg !803
  %65 = load ptr, ptr %state.addr, align 8, !dbg !804
  %v461 = getelementptr inbounds %struct.xxh32_state, ptr %65, i32 0, i32 5, !dbg !805
  %66 = load i32, ptr %v461, align 4, !dbg !805
  store i32 %66, ptr %v460, align 4, !dbg !803
  br label %do.body, !dbg !806

do.body:                                          ; preds = %do.cond, %if.then52
  %67 = load i32, ptr %v154, align 4, !dbg !807
  %68 = load ptr, ptr %p, align 8, !dbg !809
  %call62 = call i32 @get_unaligned_le32(ptr noundef %68) #7, !dbg !810
  %call63 = call i32 @xxh32_round(i32 noundef %67, i32 noundef %call62) #7, !dbg !811
  store i32 %call63, ptr %v154, align 4, !dbg !812
  %69 = load ptr, ptr %p, align 8, !dbg !813
  %add.ptr64 = getelementptr i8, ptr %69, i64 4, !dbg !813
  store ptr %add.ptr64, ptr %p, align 8, !dbg !813
  %70 = load i32, ptr %v256, align 4, !dbg !814
  %71 = load ptr, ptr %p, align 8, !dbg !815
  %call65 = call i32 @get_unaligned_le32(ptr noundef %71) #7, !dbg !816
  %call66 = call i32 @xxh32_round(i32 noundef %70, i32 noundef %call65) #7, !dbg !817
  store i32 %call66, ptr %v256, align 4, !dbg !818
  %72 = load ptr, ptr %p, align 8, !dbg !819
  %add.ptr67 = getelementptr i8, ptr %72, i64 4, !dbg !819
  store ptr %add.ptr67, ptr %p, align 8, !dbg !819
  %73 = load i32, ptr %v358, align 4, !dbg !820
  %74 = load ptr, ptr %p, align 8, !dbg !821
  %call68 = call i32 @get_unaligned_le32(ptr noundef %74) #7, !dbg !822
  %call69 = call i32 @xxh32_round(i32 noundef %73, i32 noundef %call68) #7, !dbg !823
  store i32 %call69, ptr %v358, align 4, !dbg !824
  %75 = load ptr, ptr %p, align 8, !dbg !825
  %add.ptr70 = getelementptr i8, ptr %75, i64 4, !dbg !825
  store ptr %add.ptr70, ptr %p, align 8, !dbg !825
  %76 = load i32, ptr %v460, align 4, !dbg !826
  %77 = load ptr, ptr %p, align 8, !dbg !827
  %call71 = call i32 @get_unaligned_le32(ptr noundef %77) #7, !dbg !828
  %call72 = call i32 @xxh32_round(i32 noundef %76, i32 noundef %call71) #7, !dbg !829
  store i32 %call72, ptr %v460, align 4, !dbg !830
  %78 = load ptr, ptr %p, align 8, !dbg !831
  %add.ptr73 = getelementptr i8, ptr %78, i64 4, !dbg !831
  store ptr %add.ptr73, ptr %p, align 8, !dbg !831
  br label %do.cond, !dbg !832

do.cond:                                          ; preds = %do.body
  %79 = load ptr, ptr %p, align 8, !dbg !833
  %80 = load ptr, ptr %limit, align 8, !dbg !834
  %cmp74 = icmp ule ptr %79, %80, !dbg !835
  br i1 %cmp74, label %do.body, label %do.end, !dbg !832, !llvm.loop !836

do.end:                                           ; preds = %do.cond
  %81 = load i32, ptr %v154, align 4, !dbg !838
  %82 = load ptr, ptr %state.addr, align 8, !dbg !839
  %v176 = getelementptr inbounds %struct.xxh32_state, ptr %82, i32 0, i32 2, !dbg !840
  store i32 %81, ptr %v176, align 4, !dbg !841
  %83 = load i32, ptr %v256, align 4, !dbg !842
  %84 = load ptr, ptr %state.addr, align 8, !dbg !843
  %v277 = getelementptr inbounds %struct.xxh32_state, ptr %84, i32 0, i32 3, !dbg !844
  store i32 %83, ptr %v277, align 4, !dbg !845
  %85 = load i32, ptr %v358, align 4, !dbg !846
  %86 = load ptr, ptr %state.addr, align 8, !dbg !847
  %v378 = getelementptr inbounds %struct.xxh32_state, ptr %86, i32 0, i32 4, !dbg !848
  store i32 %85, ptr %v378, align 4, !dbg !849
  %87 = load i32, ptr %v460, align 4, !dbg !850
  %88 = load ptr, ptr %state.addr, align 8, !dbg !851
  %v479 = getelementptr inbounds %struct.xxh32_state, ptr %88, i32 0, i32 5, !dbg !852
  store i32 %87, ptr %v479, align 4, !dbg !853
  call void @llvm.lifetime.end.p0(i64 4, ptr %v460) #6, !dbg !854
  call void @llvm.lifetime.end.p0(i64 4, ptr %v358) #6, !dbg !854
  call void @llvm.lifetime.end.p0(i64 4, ptr %v256) #6, !dbg !854
  call void @llvm.lifetime.end.p0(i64 4, ptr %v154) #6, !dbg !854
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #6, !dbg !854
  br label %if.end80, !dbg !855

if.end80:                                         ; preds = %do.end, %if.end48
  %89 = load ptr, ptr %p, align 8, !dbg !856
  %90 = load ptr, ptr %b_end, align 8, !dbg !858
  %cmp81 = icmp ult ptr %89, %90, !dbg !859
  br i1 %cmp81, label %if.then83, label %if.end91, !dbg !860

if.then83:                                        ; preds = %if.end80
  %91 = load ptr, ptr %state.addr, align 8, !dbg !861
  %mem3284 = getelementptr inbounds %struct.xxh32_state, ptr %91, i32 0, i32 6, !dbg !863
  %arraydecay85 = getelementptr inbounds [4 x i32], ptr %mem3284, i64 0, i64 0, !dbg !864
  %92 = load ptr, ptr %p, align 8, !dbg !865
  %93 = load ptr, ptr %b_end, align 8, !dbg !866
  %94 = load ptr, ptr %p, align 8, !dbg !867
  %sub.ptr.lhs.cast = ptrtoint ptr %93 to i64, !dbg !868
  %sub.ptr.rhs.cast = ptrtoint ptr %94 to i64, !dbg !868
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !868
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay85, ptr align 1 %92, i64 %sub.ptr.sub, i1 false), !dbg !864
  %95 = load ptr, ptr %b_end, align 8, !dbg !869
  %96 = load ptr, ptr %p, align 8, !dbg !870
  %sub.ptr.lhs.cast86 = ptrtoint ptr %95 to i64, !dbg !871
  %sub.ptr.rhs.cast87 = ptrtoint ptr %96 to i64, !dbg !871
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87, !dbg !871
  %conv89 = trunc i64 %sub.ptr.sub88 to i32, !dbg !872
  %97 = load ptr, ptr %state.addr, align 8, !dbg !873
  %memsize90 = getelementptr inbounds %struct.xxh32_state, ptr %97, i32 0, i32 7, !dbg !874
  store i32 %conv89, ptr %memsize90, align 4, !dbg !875
  br label %if.end91, !dbg !876

if.end91:                                         ; preds = %if.then83, %if.end80
  store i32 0, ptr %retval, align 4, !dbg !877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !877

cleanup:                                          ; preds = %if.end91, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_end) #6, !dbg !878
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !878
  %98 = load i32, ptr %retval, align 4, !dbg !878
  ret i32 %98, !dbg !878
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xxh32_digest(ptr noundef %state) #0 align 16 !dbg !879 {
entry:
  %state.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %b_end = alloca ptr, align 8
  %h32 = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !883, metadata !DIExpression()), !dbg !887
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %p, metadata !884, metadata !DIExpression()), !dbg !889
  %0 = load ptr, ptr %state.addr, align 8, !dbg !890
  %mem32 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 6, !dbg !891
  %arraydecay = getelementptr inbounds [4 x i32], ptr %mem32, i64 0, i64 0, !dbg !890
  store ptr %arraydecay, ptr %p, align 8, !dbg !889
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_end) #6, !dbg !892
  call void @llvm.dbg.declare(metadata ptr %b_end, metadata !885, metadata !DIExpression()), !dbg !893
  %1 = load ptr, ptr %state.addr, align 8, !dbg !894
  %mem321 = getelementptr inbounds %struct.xxh32_state, ptr %1, i32 0, i32 6, !dbg !895
  %arraydecay2 = getelementptr inbounds [4 x i32], ptr %mem321, i64 0, i64 0, !dbg !896
  %2 = load ptr, ptr %state.addr, align 8, !dbg !897
  %memsize = getelementptr inbounds %struct.xxh32_state, ptr %2, i32 0, i32 7, !dbg !898
  %3 = load i32, ptr %memsize, align 4, !dbg !898
  %idx.ext = zext i32 %3 to i64, !dbg !899
  %add.ptr = getelementptr i8, ptr %arraydecay2, i64 %idx.ext, !dbg !899
  store ptr %add.ptr, ptr %b_end, align 8, !dbg !893
  call void @llvm.lifetime.start.p0(i64 4, ptr %h32) #6, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %h32, metadata !886, metadata !DIExpression()), !dbg !901
  %4 = load ptr, ptr %state.addr, align 8, !dbg !902
  %large_len = getelementptr inbounds %struct.xxh32_state, ptr %4, i32 0, i32 1, !dbg !904
  %5 = load i32, ptr %large_len, align 4, !dbg !904
  %tobool = icmp ne i32 %5, 0, !dbg !902
  br i1 %tobool, label %if.then, label %if.else, !dbg !905

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %state.addr, align 8, !dbg !906
  %v1 = getelementptr inbounds %struct.xxh32_state, ptr %6, i32 0, i32 2, !dbg !906
  %7 = load i32, ptr %v1, align 4, !dbg !906
  %shl = shl i32 %7, 1, !dbg !906
  %8 = load ptr, ptr %state.addr, align 8, !dbg !906
  %v13 = getelementptr inbounds %struct.xxh32_state, ptr %8, i32 0, i32 2, !dbg !906
  %9 = load i32, ptr %v13, align 4, !dbg !906
  %shr = lshr i32 %9, 31, !dbg !906
  %or = or i32 %shl, %shr, !dbg !906
  %10 = load ptr, ptr %state.addr, align 8, !dbg !908
  %v2 = getelementptr inbounds %struct.xxh32_state, ptr %10, i32 0, i32 3, !dbg !908
  %11 = load i32, ptr %v2, align 4, !dbg !908
  %shl4 = shl i32 %11, 7, !dbg !908
  %12 = load ptr, ptr %state.addr, align 8, !dbg !908
  %v25 = getelementptr inbounds %struct.xxh32_state, ptr %12, i32 0, i32 3, !dbg !908
  %13 = load i32, ptr %v25, align 4, !dbg !908
  %shr6 = lshr i32 %13, 25, !dbg !908
  %or7 = or i32 %shl4, %shr6, !dbg !908
  %add = add i32 %or, %or7, !dbg !909
  %14 = load ptr, ptr %state.addr, align 8, !dbg !910
  %v3 = getelementptr inbounds %struct.xxh32_state, ptr %14, i32 0, i32 4, !dbg !910
  %15 = load i32, ptr %v3, align 4, !dbg !910
  %shl8 = shl i32 %15, 12, !dbg !910
  %16 = load ptr, ptr %state.addr, align 8, !dbg !910
  %v39 = getelementptr inbounds %struct.xxh32_state, ptr %16, i32 0, i32 4, !dbg !910
  %17 = load i32, ptr %v39, align 4, !dbg !910
  %shr10 = lshr i32 %17, 20, !dbg !910
  %or11 = or i32 %shl8, %shr10, !dbg !910
  %add12 = add i32 %add, %or11, !dbg !911
  %18 = load ptr, ptr %state.addr, align 8, !dbg !912
  %v4 = getelementptr inbounds %struct.xxh32_state, ptr %18, i32 0, i32 5, !dbg !912
  %19 = load i32, ptr %v4, align 4, !dbg !912
  %shl13 = shl i32 %19, 18, !dbg !912
  %20 = load ptr, ptr %state.addr, align 8, !dbg !912
  %v414 = getelementptr inbounds %struct.xxh32_state, ptr %20, i32 0, i32 5, !dbg !912
  %21 = load i32, ptr %v414, align 4, !dbg !912
  %shr15 = lshr i32 %21, 14, !dbg !912
  %or16 = or i32 %shl13, %shr15, !dbg !912
  %add17 = add i32 %add12, %or16, !dbg !913
  store i32 %add17, ptr %h32, align 4, !dbg !914
  br label %if.end, !dbg !915

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %state.addr, align 8, !dbg !916
  %v318 = getelementptr inbounds %struct.xxh32_state, ptr %22, i32 0, i32 4, !dbg !918
  %23 = load i32, ptr %v318, align 4, !dbg !918
  %add19 = add i32 %23, 374761393, !dbg !919
  store i32 %add19, ptr %h32, align 4, !dbg !920
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load ptr, ptr %state.addr, align 8, !dbg !921
  %total_len_32 = getelementptr inbounds %struct.xxh32_state, ptr %24, i32 0, i32 0, !dbg !922
  %25 = load i32, ptr %total_len_32, align 4, !dbg !922
  %26 = load i32, ptr %h32, align 4, !dbg !923
  %add20 = add i32 %26, %25, !dbg !923
  store i32 %add20, ptr %h32, align 4, !dbg !923
  br label %while.cond, !dbg !924

while.cond:                                       ; preds = %while.body, %if.end
  %27 = load ptr, ptr %p, align 8, !dbg !925
  %add.ptr21 = getelementptr i8, ptr %27, i64 4, !dbg !926
  %28 = load ptr, ptr %b_end, align 8, !dbg !927
  %cmp = icmp ule ptr %add.ptr21, %28, !dbg !928
  br i1 %cmp, label %while.body, label %while.end, !dbg !924

while.body:                                       ; preds = %while.cond
  %29 = load ptr, ptr %p, align 8, !dbg !929
  %call = call i32 @get_unaligned_le32(ptr noundef %29) #7, !dbg !931
  %mul = mul i32 %call, -1028477379, !dbg !932
  %30 = load i32, ptr %h32, align 4, !dbg !933
  %add22 = add i32 %30, %mul, !dbg !933
  store i32 %add22, ptr %h32, align 4, !dbg !933
  %31 = load i32, ptr %h32, align 4, !dbg !934
  %shl23 = shl i32 %31, 17, !dbg !934
  %32 = load i32, ptr %h32, align 4, !dbg !934
  %shr24 = lshr i32 %32, 15, !dbg !934
  %or25 = or i32 %shl23, %shr24, !dbg !934
  %mul26 = mul i32 %or25, 668265263, !dbg !935
  store i32 %mul26, ptr %h32, align 4, !dbg !936
  %33 = load ptr, ptr %p, align 8, !dbg !937
  %add.ptr27 = getelementptr i8, ptr %33, i64 4, !dbg !937
  store ptr %add.ptr27, ptr %p, align 8, !dbg !937
  br label %while.cond, !dbg !924, !llvm.loop !938

while.end:                                        ; preds = %while.cond
  br label %while.cond28, !dbg !940

while.cond28:                                     ; preds = %while.body30, %while.end
  %34 = load ptr, ptr %p, align 8, !dbg !941
  %35 = load ptr, ptr %b_end, align 8, !dbg !942
  %cmp29 = icmp ult ptr %34, %35, !dbg !943
  br i1 %cmp29, label %while.body30, label %while.end37, !dbg !940

while.body30:                                     ; preds = %while.cond28
  %36 = load ptr, ptr %p, align 8, !dbg !944
  %37 = load i8, ptr %36, align 1, !dbg !946
  %conv = zext i8 %37 to i32, !dbg !947
  %mul31 = mul i32 %conv, 374761393, !dbg !948
  %38 = load i32, ptr %h32, align 4, !dbg !949
  %add32 = add i32 %38, %mul31, !dbg !949
  store i32 %add32, ptr %h32, align 4, !dbg !949
  %39 = load i32, ptr %h32, align 4, !dbg !950
  %shl33 = shl i32 %39, 11, !dbg !950
  %40 = load i32, ptr %h32, align 4, !dbg !950
  %shr34 = lshr i32 %40, 21, !dbg !950
  %or35 = or i32 %shl33, %shr34, !dbg !950
  %mul36 = mul i32 %or35, -1640531535, !dbg !951
  store i32 %mul36, ptr %h32, align 4, !dbg !952
  %41 = load ptr, ptr %p, align 8, !dbg !953
  %incdec.ptr = getelementptr i8, ptr %41, i32 1, !dbg !953
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !953
  br label %while.cond28, !dbg !940, !llvm.loop !954

while.end37:                                      ; preds = %while.cond28
  %42 = load i32, ptr %h32, align 4, !dbg !956
  %shr38 = lshr i32 %42, 15, !dbg !957
  %43 = load i32, ptr %h32, align 4, !dbg !958
  %xor = xor i32 %43, %shr38, !dbg !958
  store i32 %xor, ptr %h32, align 4, !dbg !958
  %44 = load i32, ptr %h32, align 4, !dbg !959
  %mul39 = mul i32 %44, -2048144777, !dbg !959
  store i32 %mul39, ptr %h32, align 4, !dbg !959
  %45 = load i32, ptr %h32, align 4, !dbg !960
  %shr40 = lshr i32 %45, 13, !dbg !961
  %46 = load i32, ptr %h32, align 4, !dbg !962
  %xor41 = xor i32 %46, %shr40, !dbg !962
  store i32 %xor41, ptr %h32, align 4, !dbg !962
  %47 = load i32, ptr %h32, align 4, !dbg !963
  %mul42 = mul i32 %47, -1028477379, !dbg !963
  store i32 %mul42, ptr %h32, align 4, !dbg !963
  %48 = load i32, ptr %h32, align 4, !dbg !964
  %shr43 = lshr i32 %48, 16, !dbg !965
  %49 = load i32, ptr %h32, align 4, !dbg !966
  %xor44 = xor i32 %49, %shr43, !dbg !966
  store i32 %xor44, ptr %h32, align 4, !dbg !966
  %50 = load i32, ptr %h32, align 4, !dbg !967
  call void @llvm.lifetime.end.p0(i64 4, ptr %h32) #6, !dbg !968
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_end) #6, !dbg !968
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !968
  ret i32 %50, !dbg !969
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xxh64_update(ptr noundef %state, ptr noundef %input, i64 noundef %len) #0 align 16 !dbg !970 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %b_end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %p64 = alloca ptr, align 8
  %limit = alloca ptr, align 8
  %v144 = alloca i64, align 8
  %v246 = alloca i64, align 8
  %v348 = alloca i64, align 8
  %v450 = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !974, metadata !DIExpression()), !dbg !990
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !975, metadata !DIExpression()), !dbg !991
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !976, metadata !DIExpression()), !dbg !992
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !993
  call void @llvm.dbg.declare(metadata ptr %p, metadata !977, metadata !DIExpression()), !dbg !994
  %0 = load ptr, ptr %input.addr, align 8, !dbg !995
  store ptr %0, ptr %p, align 8, !dbg !994
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_end) #6, !dbg !996
  call void @llvm.dbg.declare(metadata ptr %b_end, metadata !978, metadata !DIExpression()), !dbg !997
  %1 = load ptr, ptr %p, align 8, !dbg !998
  %2 = load i64, ptr %len.addr, align 8, !dbg !999
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !1000
  store ptr %add.ptr, ptr %b_end, align 8, !dbg !997
  %3 = load ptr, ptr %input.addr, align 8, !dbg !1001
  %cmp = icmp eq ptr %3, null, !dbg !1003
  br i1 %cmp, label %if.then, label %if.end, !dbg !1004

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1005
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1005

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %len.addr, align 8, !dbg !1006
  %5 = load ptr, ptr %state.addr, align 8, !dbg !1007
  %total_len = getelementptr inbounds %struct.xxh64_state, ptr %5, i32 0, i32 0, !dbg !1008
  %6 = load i64, ptr %total_len, align 8, !dbg !1009
  %add = add i64 %6, %4, !dbg !1009
  store i64 %add, ptr %total_len, align 8, !dbg !1009
  %7 = load ptr, ptr %state.addr, align 8, !dbg !1010
  %memsize = getelementptr inbounds %struct.xxh64_state, ptr %7, i32 0, i32 6, !dbg !1012
  %8 = load i32, ptr %memsize, align 8, !dbg !1012
  %conv = zext i32 %8 to i64, !dbg !1010
  %9 = load i64, ptr %len.addr, align 8, !dbg !1013
  %add1 = add i64 %conv, %9, !dbg !1014
  %cmp2 = icmp ult i64 %add1, 32, !dbg !1015
  br i1 %cmp2, label %if.then4, label %if.end10, !dbg !1016

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %state.addr, align 8, !dbg !1017
  %mem64 = getelementptr inbounds %struct.xxh64_state, ptr %10, i32 0, i32 5, !dbg !1019
  %arraydecay = getelementptr inbounds [4 x i64], ptr %mem64, i64 0, i64 0, !dbg !1017
  %11 = load ptr, ptr %state.addr, align 8, !dbg !1020
  %memsize5 = getelementptr inbounds %struct.xxh64_state, ptr %11, i32 0, i32 6, !dbg !1021
  %12 = load i32, ptr %memsize5, align 8, !dbg !1021
  %idx.ext = zext i32 %12 to i64, !dbg !1022
  %add.ptr6 = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !1022
  %13 = load ptr, ptr %input.addr, align 8, !dbg !1023
  %14 = load i64, ptr %len.addr, align 8, !dbg !1024
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr6, ptr align 1 %13, i64 %14, i1 false), !dbg !1025
  %15 = load i64, ptr %len.addr, align 8, !dbg !1026
  %conv7 = trunc i64 %15 to i32, !dbg !1027
  %16 = load ptr, ptr %state.addr, align 8, !dbg !1028
  %memsize8 = getelementptr inbounds %struct.xxh64_state, ptr %16, i32 0, i32 6, !dbg !1029
  %17 = load i32, ptr %memsize8, align 8, !dbg !1030
  %add9 = add i32 %17, %conv7, !dbg !1030
  store i32 %add9, ptr %memsize8, align 8, !dbg !1030
  store i32 0, ptr %retval, align 4, !dbg !1031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1031

if.end10:                                         ; preds = %if.end
  %18 = load ptr, ptr %state.addr, align 8, !dbg !1032
  %memsize11 = getelementptr inbounds %struct.xxh64_state, ptr %18, i32 0, i32 6, !dbg !1033
  %19 = load i32, ptr %memsize11, align 8, !dbg !1033
  %tobool = icmp ne i32 %19, 0, !dbg !1032
  br i1 %tobool, label %if.then12, label %if.end38, !dbg !1034

if.then12:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p64) #6, !dbg !1035
  call void @llvm.dbg.declare(metadata ptr %p64, metadata !979, metadata !DIExpression()), !dbg !1036
  %20 = load ptr, ptr %state.addr, align 8, !dbg !1037
  %mem6413 = getelementptr inbounds %struct.xxh64_state, ptr %20, i32 0, i32 5, !dbg !1038
  %arraydecay14 = getelementptr inbounds [4 x i64], ptr %mem6413, i64 0, i64 0, !dbg !1037
  store ptr %arraydecay14, ptr %p64, align 8, !dbg !1036
  %21 = load ptr, ptr %p64, align 8, !dbg !1039
  %22 = load ptr, ptr %state.addr, align 8, !dbg !1040
  %memsize15 = getelementptr inbounds %struct.xxh64_state, ptr %22, i32 0, i32 6, !dbg !1041
  %23 = load i32, ptr %memsize15, align 8, !dbg !1041
  %idx.ext16 = zext i32 %23 to i64, !dbg !1042
  %add.ptr17 = getelementptr i8, ptr %21, i64 %idx.ext16, !dbg !1042
  %24 = load ptr, ptr %input.addr, align 8, !dbg !1043
  %25 = load ptr, ptr %state.addr, align 8, !dbg !1044
  %memsize18 = getelementptr inbounds %struct.xxh64_state, ptr %25, i32 0, i32 6, !dbg !1045
  %26 = load i32, ptr %memsize18, align 8, !dbg !1045
  %sub = sub i32 32, %26, !dbg !1046
  %conv19 = zext i32 %sub to i64, !dbg !1047
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr17, ptr align 1 %24, i64 %conv19, i1 false), !dbg !1048
  %27 = load ptr, ptr %state.addr, align 8, !dbg !1049
  %v1 = getelementptr inbounds %struct.xxh64_state, ptr %27, i32 0, i32 1, !dbg !1050
  %28 = load i64, ptr %v1, align 8, !dbg !1050
  %29 = load ptr, ptr %p64, align 8, !dbg !1051
  %call = call i64 @get_unaligned_le64(ptr noundef %29) #7, !dbg !1052
  %call20 = call i64 @xxh64_round(i64 noundef %28, i64 noundef %call) #7, !dbg !1053
  %30 = load ptr, ptr %state.addr, align 8, !dbg !1054
  %v121 = getelementptr inbounds %struct.xxh64_state, ptr %30, i32 0, i32 1, !dbg !1055
  store i64 %call20, ptr %v121, align 8, !dbg !1056
  %31 = load ptr, ptr %p64, align 8, !dbg !1057
  %incdec.ptr = getelementptr i64, ptr %31, i32 1, !dbg !1057
  store ptr %incdec.ptr, ptr %p64, align 8, !dbg !1057
  %32 = load ptr, ptr %state.addr, align 8, !dbg !1058
  %v2 = getelementptr inbounds %struct.xxh64_state, ptr %32, i32 0, i32 2, !dbg !1059
  %33 = load i64, ptr %v2, align 8, !dbg !1059
  %34 = load ptr, ptr %p64, align 8, !dbg !1060
  %call22 = call i64 @get_unaligned_le64(ptr noundef %34) #7, !dbg !1061
  %call23 = call i64 @xxh64_round(i64 noundef %33, i64 noundef %call22) #7, !dbg !1062
  %35 = load ptr, ptr %state.addr, align 8, !dbg !1063
  %v224 = getelementptr inbounds %struct.xxh64_state, ptr %35, i32 0, i32 2, !dbg !1064
  store i64 %call23, ptr %v224, align 8, !dbg !1065
  %36 = load ptr, ptr %p64, align 8, !dbg !1066
  %incdec.ptr25 = getelementptr i64, ptr %36, i32 1, !dbg !1066
  store ptr %incdec.ptr25, ptr %p64, align 8, !dbg !1066
  %37 = load ptr, ptr %state.addr, align 8, !dbg !1067
  %v3 = getelementptr inbounds %struct.xxh64_state, ptr %37, i32 0, i32 3, !dbg !1068
  %38 = load i64, ptr %v3, align 8, !dbg !1068
  %39 = load ptr, ptr %p64, align 8, !dbg !1069
  %call26 = call i64 @get_unaligned_le64(ptr noundef %39) #7, !dbg !1070
  %call27 = call i64 @xxh64_round(i64 noundef %38, i64 noundef %call26) #7, !dbg !1071
  %40 = load ptr, ptr %state.addr, align 8, !dbg !1072
  %v328 = getelementptr inbounds %struct.xxh64_state, ptr %40, i32 0, i32 3, !dbg !1073
  store i64 %call27, ptr %v328, align 8, !dbg !1074
  %41 = load ptr, ptr %p64, align 8, !dbg !1075
  %incdec.ptr29 = getelementptr i64, ptr %41, i32 1, !dbg !1075
  store ptr %incdec.ptr29, ptr %p64, align 8, !dbg !1075
  %42 = load ptr, ptr %state.addr, align 8, !dbg !1076
  %v4 = getelementptr inbounds %struct.xxh64_state, ptr %42, i32 0, i32 4, !dbg !1077
  %43 = load i64, ptr %v4, align 8, !dbg !1077
  %44 = load ptr, ptr %p64, align 8, !dbg !1078
  %call30 = call i64 @get_unaligned_le64(ptr noundef %44) #7, !dbg !1079
  %call31 = call i64 @xxh64_round(i64 noundef %43, i64 noundef %call30) #7, !dbg !1080
  %45 = load ptr, ptr %state.addr, align 8, !dbg !1081
  %v432 = getelementptr inbounds %struct.xxh64_state, ptr %45, i32 0, i32 4, !dbg !1082
  store i64 %call31, ptr %v432, align 8, !dbg !1083
  %46 = load ptr, ptr %state.addr, align 8, !dbg !1084
  %memsize33 = getelementptr inbounds %struct.xxh64_state, ptr %46, i32 0, i32 6, !dbg !1085
  %47 = load i32, ptr %memsize33, align 8, !dbg !1085
  %sub34 = sub i32 32, %47, !dbg !1086
  %48 = load ptr, ptr %p, align 8, !dbg !1087
  %idx.ext35 = zext i32 %sub34 to i64, !dbg !1087
  %add.ptr36 = getelementptr i8, ptr %48, i64 %idx.ext35, !dbg !1087
  store ptr %add.ptr36, ptr %p, align 8, !dbg !1087
  %49 = load ptr, ptr %state.addr, align 8, !dbg !1088
  %memsize37 = getelementptr inbounds %struct.xxh64_state, ptr %49, i32 0, i32 6, !dbg !1089
  store i32 0, ptr %memsize37, align 8, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 8, ptr %p64) #6, !dbg !1091
  br label %if.end38, !dbg !1092

if.end38:                                         ; preds = %if.then12, %if.end10
  %50 = load ptr, ptr %p, align 8, !dbg !1093
  %add.ptr39 = getelementptr i8, ptr %50, i64 32, !dbg !1094
  %51 = load ptr, ptr %b_end, align 8, !dbg !1095
  %cmp40 = icmp ule ptr %add.ptr39, %51, !dbg !1096
  br i1 %cmp40, label %if.then42, label %if.end70, !dbg !1097

if.then42:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #6, !dbg !1098
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !983, metadata !DIExpression()), !dbg !1099
  %52 = load ptr, ptr %b_end, align 8, !dbg !1100
  %add.ptr43 = getelementptr i8, ptr %52, i64 -32, !dbg !1101
  store ptr %add.ptr43, ptr %limit, align 8, !dbg !1099
  call void @llvm.lifetime.start.p0(i64 8, ptr %v144) #6, !dbg !1102
  call void @llvm.dbg.declare(metadata ptr %v144, metadata !986, metadata !DIExpression()), !dbg !1103
  %53 = load ptr, ptr %state.addr, align 8, !dbg !1104
  %v145 = getelementptr inbounds %struct.xxh64_state, ptr %53, i32 0, i32 1, !dbg !1105
  %54 = load i64, ptr %v145, align 8, !dbg !1105
  store i64 %54, ptr %v144, align 8, !dbg !1103
  call void @llvm.lifetime.start.p0(i64 8, ptr %v246) #6, !dbg !1106
  call void @llvm.dbg.declare(metadata ptr %v246, metadata !987, metadata !DIExpression()), !dbg !1107
  %55 = load ptr, ptr %state.addr, align 8, !dbg !1108
  %v247 = getelementptr inbounds %struct.xxh64_state, ptr %55, i32 0, i32 2, !dbg !1109
  %56 = load i64, ptr %v247, align 8, !dbg !1109
  store i64 %56, ptr %v246, align 8, !dbg !1107
  call void @llvm.lifetime.start.p0(i64 8, ptr %v348) #6, !dbg !1110
  call void @llvm.dbg.declare(metadata ptr %v348, metadata !988, metadata !DIExpression()), !dbg !1111
  %57 = load ptr, ptr %state.addr, align 8, !dbg !1112
  %v349 = getelementptr inbounds %struct.xxh64_state, ptr %57, i32 0, i32 3, !dbg !1113
  %58 = load i64, ptr %v349, align 8, !dbg !1113
  store i64 %58, ptr %v348, align 8, !dbg !1111
  call void @llvm.lifetime.start.p0(i64 8, ptr %v450) #6, !dbg !1114
  call void @llvm.dbg.declare(metadata ptr %v450, metadata !989, metadata !DIExpression()), !dbg !1115
  %59 = load ptr, ptr %state.addr, align 8, !dbg !1116
  %v451 = getelementptr inbounds %struct.xxh64_state, ptr %59, i32 0, i32 4, !dbg !1117
  %60 = load i64, ptr %v451, align 8, !dbg !1117
  store i64 %60, ptr %v450, align 8, !dbg !1115
  br label %do.body, !dbg !1118

do.body:                                          ; preds = %do.cond, %if.then42
  %61 = load i64, ptr %v144, align 8, !dbg !1119
  %62 = load ptr, ptr %p, align 8, !dbg !1121
  %call52 = call i64 @get_unaligned_le64(ptr noundef %62) #7, !dbg !1122
  %call53 = call i64 @xxh64_round(i64 noundef %61, i64 noundef %call52) #7, !dbg !1123
  store i64 %call53, ptr %v144, align 8, !dbg !1124
  %63 = load ptr, ptr %p, align 8, !dbg !1125
  %add.ptr54 = getelementptr i8, ptr %63, i64 8, !dbg !1125
  store ptr %add.ptr54, ptr %p, align 8, !dbg !1125
  %64 = load i64, ptr %v246, align 8, !dbg !1126
  %65 = load ptr, ptr %p, align 8, !dbg !1127
  %call55 = call i64 @get_unaligned_le64(ptr noundef %65) #7, !dbg !1128
  %call56 = call i64 @xxh64_round(i64 noundef %64, i64 noundef %call55) #7, !dbg !1129
  store i64 %call56, ptr %v246, align 8, !dbg !1130
  %66 = load ptr, ptr %p, align 8, !dbg !1131
  %add.ptr57 = getelementptr i8, ptr %66, i64 8, !dbg !1131
  store ptr %add.ptr57, ptr %p, align 8, !dbg !1131
  %67 = load i64, ptr %v348, align 8, !dbg !1132
  %68 = load ptr, ptr %p, align 8, !dbg !1133
  %call58 = call i64 @get_unaligned_le64(ptr noundef %68) #7, !dbg !1134
  %call59 = call i64 @xxh64_round(i64 noundef %67, i64 noundef %call58) #7, !dbg !1135
  store i64 %call59, ptr %v348, align 8, !dbg !1136
  %69 = load ptr, ptr %p, align 8, !dbg !1137
  %add.ptr60 = getelementptr i8, ptr %69, i64 8, !dbg !1137
  store ptr %add.ptr60, ptr %p, align 8, !dbg !1137
  %70 = load i64, ptr %v450, align 8, !dbg !1138
  %71 = load ptr, ptr %p, align 8, !dbg !1139
  %call61 = call i64 @get_unaligned_le64(ptr noundef %71) #7, !dbg !1140
  %call62 = call i64 @xxh64_round(i64 noundef %70, i64 noundef %call61) #7, !dbg !1141
  store i64 %call62, ptr %v450, align 8, !dbg !1142
  %72 = load ptr, ptr %p, align 8, !dbg !1143
  %add.ptr63 = getelementptr i8, ptr %72, i64 8, !dbg !1143
  store ptr %add.ptr63, ptr %p, align 8, !dbg !1143
  br label %do.cond, !dbg !1144

do.cond:                                          ; preds = %do.body
  %73 = load ptr, ptr %p, align 8, !dbg !1145
  %74 = load ptr, ptr %limit, align 8, !dbg !1146
  %cmp64 = icmp ule ptr %73, %74, !dbg !1147
  br i1 %cmp64, label %do.body, label %do.end, !dbg !1144, !llvm.loop !1148

do.end:                                           ; preds = %do.cond
  %75 = load i64, ptr %v144, align 8, !dbg !1150
  %76 = load ptr, ptr %state.addr, align 8, !dbg !1151
  %v166 = getelementptr inbounds %struct.xxh64_state, ptr %76, i32 0, i32 1, !dbg !1152
  store i64 %75, ptr %v166, align 8, !dbg !1153
  %77 = load i64, ptr %v246, align 8, !dbg !1154
  %78 = load ptr, ptr %state.addr, align 8, !dbg !1155
  %v267 = getelementptr inbounds %struct.xxh64_state, ptr %78, i32 0, i32 2, !dbg !1156
  store i64 %77, ptr %v267, align 8, !dbg !1157
  %79 = load i64, ptr %v348, align 8, !dbg !1158
  %80 = load ptr, ptr %state.addr, align 8, !dbg !1159
  %v368 = getelementptr inbounds %struct.xxh64_state, ptr %80, i32 0, i32 3, !dbg !1160
  store i64 %79, ptr %v368, align 8, !dbg !1161
  %81 = load i64, ptr %v450, align 8, !dbg !1162
  %82 = load ptr, ptr %state.addr, align 8, !dbg !1163
  %v469 = getelementptr inbounds %struct.xxh64_state, ptr %82, i32 0, i32 4, !dbg !1164
  store i64 %81, ptr %v469, align 8, !dbg !1165
  call void @llvm.lifetime.end.p0(i64 8, ptr %v450) #6, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 8, ptr %v348) #6, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 8, ptr %v246) #6, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 8, ptr %v144) #6, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #6, !dbg !1166
  br label %if.end70, !dbg !1167

if.end70:                                         ; preds = %do.end, %if.end38
  %83 = load ptr, ptr %p, align 8, !dbg !1168
  %84 = load ptr, ptr %b_end, align 8, !dbg !1170
  %cmp71 = icmp ult ptr %83, %84, !dbg !1171
  br i1 %cmp71, label %if.then73, label %if.end81, !dbg !1172

if.then73:                                        ; preds = %if.end70
  %85 = load ptr, ptr %state.addr, align 8, !dbg !1173
  %mem6474 = getelementptr inbounds %struct.xxh64_state, ptr %85, i32 0, i32 5, !dbg !1175
  %arraydecay75 = getelementptr inbounds [4 x i64], ptr %mem6474, i64 0, i64 0, !dbg !1176
  %86 = load ptr, ptr %p, align 8, !dbg !1177
  %87 = load ptr, ptr %b_end, align 8, !dbg !1178
  %88 = load ptr, ptr %p, align 8, !dbg !1179
  %sub.ptr.lhs.cast = ptrtoint ptr %87 to i64, !dbg !1180
  %sub.ptr.rhs.cast = ptrtoint ptr %88 to i64, !dbg !1180
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1180
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay75, ptr align 1 %86, i64 %sub.ptr.sub, i1 false), !dbg !1176
  %89 = load ptr, ptr %b_end, align 8, !dbg !1181
  %90 = load ptr, ptr %p, align 8, !dbg !1182
  %sub.ptr.lhs.cast76 = ptrtoint ptr %89 to i64, !dbg !1183
  %sub.ptr.rhs.cast77 = ptrtoint ptr %90 to i64, !dbg !1183
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77, !dbg !1183
  %conv79 = trunc i64 %sub.ptr.sub78 to i32, !dbg !1184
  %91 = load ptr, ptr %state.addr, align 8, !dbg !1185
  %memsize80 = getelementptr inbounds %struct.xxh64_state, ptr %91, i32 0, i32 6, !dbg !1186
  store i32 %conv79, ptr %memsize80, align 8, !dbg !1187
  br label %if.end81, !dbg !1188

if.end81:                                         ; preds = %if.then73, %if.end70
  store i32 0, ptr %retval, align 4, !dbg !1189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1189

cleanup:                                          ; preds = %if.end81, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_end) #6, !dbg !1190
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !1190
  %92 = load i32, ptr %retval, align 4, !dbg !1190
  ret i32 %92, !dbg !1190
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @xxh64_digest(ptr noundef %state) #0 align 16 !dbg !1191 {
entry:
  %state.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %b_end = alloca ptr, align 8
  %h64 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %v4 = alloca i64, align 8
  %k1 = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1195, metadata !DIExpression()), !dbg !1207
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !1208
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1196, metadata !DIExpression()), !dbg !1209
  %0 = load ptr, ptr %state.addr, align 8, !dbg !1210
  %mem64 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 5, !dbg !1211
  %arraydecay = getelementptr inbounds [4 x i64], ptr %mem64, i64 0, i64 0, !dbg !1210
  store ptr %arraydecay, ptr %p, align 8, !dbg !1209
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_end) #6, !dbg !1212
  call void @llvm.dbg.declare(metadata ptr %b_end, metadata !1197, metadata !DIExpression()), !dbg !1213
  %1 = load ptr, ptr %state.addr, align 8, !dbg !1214
  %mem641 = getelementptr inbounds %struct.xxh64_state, ptr %1, i32 0, i32 5, !dbg !1215
  %arraydecay2 = getelementptr inbounds [4 x i64], ptr %mem641, i64 0, i64 0, !dbg !1214
  %2 = load ptr, ptr %state.addr, align 8, !dbg !1216
  %memsize = getelementptr inbounds %struct.xxh64_state, ptr %2, i32 0, i32 6, !dbg !1217
  %3 = load i32, ptr %memsize, align 8, !dbg !1217
  %idx.ext = zext i32 %3 to i64, !dbg !1218
  %add.ptr = getelementptr i8, ptr %arraydecay2, i64 %idx.ext, !dbg !1218
  store ptr %add.ptr, ptr %b_end, align 8, !dbg !1213
  call void @llvm.lifetime.start.p0(i64 8, ptr %h64) #6, !dbg !1219
  call void @llvm.dbg.declare(metadata ptr %h64, metadata !1198, metadata !DIExpression()), !dbg !1220
  %4 = load ptr, ptr %state.addr, align 8, !dbg !1221
  %total_len = getelementptr inbounds %struct.xxh64_state, ptr %4, i32 0, i32 0, !dbg !1222
  %5 = load i64, ptr %total_len, align 8, !dbg !1222
  %cmp = icmp uge i64 %5, 32, !dbg !1223
  br i1 %cmp, label %if.then, label %if.else, !dbg !1224

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #6, !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !1199, metadata !DIExpression()), !dbg !1226
  %6 = load ptr, ptr %state.addr, align 8, !dbg !1227
  %v13 = getelementptr inbounds %struct.xxh64_state, ptr %6, i32 0, i32 1, !dbg !1228
  %7 = load i64, ptr %v13, align 8, !dbg !1228
  store i64 %7, ptr %v1, align 8, !dbg !1226
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #6, !dbg !1229
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !1202, metadata !DIExpression()), !dbg !1230
  %8 = load ptr, ptr %state.addr, align 8, !dbg !1231
  %v24 = getelementptr inbounds %struct.xxh64_state, ptr %8, i32 0, i32 2, !dbg !1232
  %9 = load i64, ptr %v24, align 8, !dbg !1232
  store i64 %9, ptr %v2, align 8, !dbg !1230
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #6, !dbg !1233
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !1203, metadata !DIExpression()), !dbg !1234
  %10 = load ptr, ptr %state.addr, align 8, !dbg !1235
  %v35 = getelementptr inbounds %struct.xxh64_state, ptr %10, i32 0, i32 3, !dbg !1236
  %11 = load i64, ptr %v35, align 8, !dbg !1236
  store i64 %11, ptr %v3, align 8, !dbg !1234
  call void @llvm.lifetime.start.p0(i64 8, ptr %v4) #6, !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %v4, metadata !1204, metadata !DIExpression()), !dbg !1238
  %12 = load ptr, ptr %state.addr, align 8, !dbg !1239
  %v46 = getelementptr inbounds %struct.xxh64_state, ptr %12, i32 0, i32 4, !dbg !1240
  %13 = load i64, ptr %v46, align 8, !dbg !1240
  store i64 %13, ptr %v4, align 8, !dbg !1238
  %14 = load i64, ptr %v1, align 8, !dbg !1241
  %shl = shl i64 %14, 1, !dbg !1241
  %15 = load i64, ptr %v1, align 8, !dbg !1241
  %shr = lshr i64 %15, 63, !dbg !1241
  %or = or i64 %shl, %shr, !dbg !1241
  %16 = load i64, ptr %v2, align 8, !dbg !1242
  %shl7 = shl i64 %16, 7, !dbg !1242
  %17 = load i64, ptr %v2, align 8, !dbg !1242
  %shr8 = lshr i64 %17, 57, !dbg !1242
  %or9 = or i64 %shl7, %shr8, !dbg !1242
  %add = add i64 %or, %or9, !dbg !1243
  %18 = load i64, ptr %v3, align 8, !dbg !1244
  %shl10 = shl i64 %18, 12, !dbg !1244
  %19 = load i64, ptr %v3, align 8, !dbg !1244
  %shr11 = lshr i64 %19, 52, !dbg !1244
  %or12 = or i64 %shl10, %shr11, !dbg !1244
  %add13 = add i64 %add, %or12, !dbg !1245
  %20 = load i64, ptr %v4, align 8, !dbg !1246
  %shl14 = shl i64 %20, 18, !dbg !1246
  %21 = load i64, ptr %v4, align 8, !dbg !1246
  %shr15 = lshr i64 %21, 46, !dbg !1246
  %or16 = or i64 %shl14, %shr15, !dbg !1246
  %add17 = add i64 %add13, %or16, !dbg !1247
  store i64 %add17, ptr %h64, align 8, !dbg !1248
  %22 = load i64, ptr %h64, align 8, !dbg !1249
  %23 = load i64, ptr %v1, align 8, !dbg !1250
  %call = call i64 @xxh64_merge_round(i64 noundef %22, i64 noundef %23) #7, !dbg !1251
  store i64 %call, ptr %h64, align 8, !dbg !1252
  %24 = load i64, ptr %h64, align 8, !dbg !1253
  %25 = load i64, ptr %v2, align 8, !dbg !1254
  %call18 = call i64 @xxh64_merge_round(i64 noundef %24, i64 noundef %25) #7, !dbg !1255
  store i64 %call18, ptr %h64, align 8, !dbg !1256
  %26 = load i64, ptr %h64, align 8, !dbg !1257
  %27 = load i64, ptr %v3, align 8, !dbg !1258
  %call19 = call i64 @xxh64_merge_round(i64 noundef %26, i64 noundef %27) #7, !dbg !1259
  store i64 %call19, ptr %h64, align 8, !dbg !1260
  %28 = load i64, ptr %h64, align 8, !dbg !1261
  %29 = load i64, ptr %v4, align 8, !dbg !1262
  %call20 = call i64 @xxh64_merge_round(i64 noundef %28, i64 noundef %29) #7, !dbg !1263
  store i64 %call20, ptr %h64, align 8, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 8, ptr %v4) #6, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #6, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #6, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #6, !dbg !1265
  br label %if.end, !dbg !1266

if.else:                                          ; preds = %entry
  %30 = load ptr, ptr %state.addr, align 8, !dbg !1267
  %v321 = getelementptr inbounds %struct.xxh64_state, ptr %30, i32 0, i32 3, !dbg !1269
  %31 = load i64, ptr %v321, align 8, !dbg !1269
  %add22 = add i64 %31, 2870177450012600261, !dbg !1270
  store i64 %add22, ptr %h64, align 8, !dbg !1271
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %32 = load ptr, ptr %state.addr, align 8, !dbg !1272
  %total_len23 = getelementptr inbounds %struct.xxh64_state, ptr %32, i32 0, i32 0, !dbg !1273
  %33 = load i64, ptr %total_len23, align 8, !dbg !1273
  %34 = load i64, ptr %h64, align 8, !dbg !1274
  %add24 = add i64 %34, %33, !dbg !1274
  store i64 %add24, ptr %h64, align 8, !dbg !1274
  br label %while.cond, !dbg !1275

while.cond:                                       ; preds = %while.body, %if.end
  %35 = load ptr, ptr %p, align 8, !dbg !1276
  %add.ptr25 = getelementptr i8, ptr %35, i64 8, !dbg !1277
  %36 = load ptr, ptr %b_end, align 8, !dbg !1278
  %cmp26 = icmp ule ptr %add.ptr25, %36, !dbg !1279
  br i1 %cmp26, label %while.body, label %while.end, !dbg !1275

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %k1) #6, !dbg !1280
  call void @llvm.dbg.declare(metadata ptr %k1, metadata !1205, metadata !DIExpression()), !dbg !1281
  %37 = load ptr, ptr %p, align 8, !dbg !1282
  %call27 = call i64 @get_unaligned_le64(ptr noundef %37) #7, !dbg !1283
  %call28 = call i64 @xxh64_round(i64 noundef 0, i64 noundef %call27) #7, !dbg !1284
  store i64 %call28, ptr %k1, align 8, !dbg !1281
  %38 = load i64, ptr %k1, align 8, !dbg !1285
  %39 = load i64, ptr %h64, align 8, !dbg !1286
  %xor = xor i64 %39, %38, !dbg !1286
  store i64 %xor, ptr %h64, align 8, !dbg !1286
  %40 = load i64, ptr %h64, align 8, !dbg !1287
  %shl29 = shl i64 %40, 27, !dbg !1287
  %41 = load i64, ptr %h64, align 8, !dbg !1287
  %shr30 = lshr i64 %41, 37, !dbg !1287
  %or31 = or i64 %shl29, %shr30, !dbg !1287
  %mul = mul i64 %or31, -7046029288634856825, !dbg !1288
  %add32 = add i64 %mul, -8796714831421723037, !dbg !1289
  store i64 %add32, ptr %h64, align 8, !dbg !1290
  %42 = load ptr, ptr %p, align 8, !dbg !1291
  %add.ptr33 = getelementptr i8, ptr %42, i64 8, !dbg !1291
  store ptr %add.ptr33, ptr %p, align 8, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 8, ptr %k1) #6, !dbg !1292
  br label %while.cond, !dbg !1275, !llvm.loop !1293

while.end:                                        ; preds = %while.cond
  %43 = load ptr, ptr %p, align 8, !dbg !1294
  %add.ptr34 = getelementptr i8, ptr %43, i64 4, !dbg !1296
  %44 = load ptr, ptr %b_end, align 8, !dbg !1297
  %cmp35 = icmp ule ptr %add.ptr34, %44, !dbg !1298
  br i1 %cmp35, label %if.then36, label %if.end46, !dbg !1299

if.then36:                                        ; preds = %while.end
  %45 = load ptr, ptr %p, align 8, !dbg !1300
  %call37 = call i32 @get_unaligned_le32(ptr noundef %45) #7, !dbg !1302
  %conv = zext i32 %call37 to i64, !dbg !1303
  %mul38 = mul i64 %conv, -7046029288634856825, !dbg !1304
  %46 = load i64, ptr %h64, align 8, !dbg !1305
  %xor39 = xor i64 %46, %mul38, !dbg !1305
  store i64 %xor39, ptr %h64, align 8, !dbg !1305
  %47 = load i64, ptr %h64, align 8, !dbg !1306
  %shl40 = shl i64 %47, 23, !dbg !1306
  %48 = load i64, ptr %h64, align 8, !dbg !1306
  %shr41 = lshr i64 %48, 41, !dbg !1306
  %or42 = or i64 %shl40, %shr41, !dbg !1306
  %mul43 = mul i64 %or42, -4417276706812531889, !dbg !1307
  %add44 = add i64 %mul43, 1609587929392839161, !dbg !1308
  store i64 %add44, ptr %h64, align 8, !dbg !1309
  %49 = load ptr, ptr %p, align 8, !dbg !1310
  %add.ptr45 = getelementptr i8, ptr %49, i64 4, !dbg !1310
  store ptr %add.ptr45, ptr %p, align 8, !dbg !1310
  br label %if.end46, !dbg !1311

if.end46:                                         ; preds = %if.then36, %while.end
  br label %while.cond47, !dbg !1312

while.cond47:                                     ; preds = %while.body50, %if.end46
  %50 = load ptr, ptr %p, align 8, !dbg !1313
  %51 = load ptr, ptr %b_end, align 8, !dbg !1314
  %cmp48 = icmp ult ptr %50, %51, !dbg !1315
  br i1 %cmp48, label %while.body50, label %while.end58, !dbg !1312

while.body50:                                     ; preds = %while.cond47
  %52 = load ptr, ptr %p, align 8, !dbg !1316
  %53 = load i8, ptr %52, align 1, !dbg !1318
  %conv51 = zext i8 %53 to i64, !dbg !1319
  %mul52 = mul i64 %conv51, 2870177450012600261, !dbg !1320
  %54 = load i64, ptr %h64, align 8, !dbg !1321
  %xor53 = xor i64 %54, %mul52, !dbg !1321
  store i64 %xor53, ptr %h64, align 8, !dbg !1321
  %55 = load i64, ptr %h64, align 8, !dbg !1322
  %shl54 = shl i64 %55, 11, !dbg !1322
  %56 = load i64, ptr %h64, align 8, !dbg !1322
  %shr55 = lshr i64 %56, 53, !dbg !1322
  %or56 = or i64 %shl54, %shr55, !dbg !1322
  %mul57 = mul i64 %or56, -7046029288634856825, !dbg !1323
  store i64 %mul57, ptr %h64, align 8, !dbg !1324
  %57 = load ptr, ptr %p, align 8, !dbg !1325
  %incdec.ptr = getelementptr i8, ptr %57, i32 1, !dbg !1325
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1325
  br label %while.cond47, !dbg !1312, !llvm.loop !1326

while.end58:                                      ; preds = %while.cond47
  %58 = load i64, ptr %h64, align 8, !dbg !1328
  %shr59 = lshr i64 %58, 33, !dbg !1329
  %59 = load i64, ptr %h64, align 8, !dbg !1330
  %xor60 = xor i64 %59, %shr59, !dbg !1330
  store i64 %xor60, ptr %h64, align 8, !dbg !1330
  %60 = load i64, ptr %h64, align 8, !dbg !1331
  %mul61 = mul i64 %60, -4417276706812531889, !dbg !1331
  store i64 %mul61, ptr %h64, align 8, !dbg !1331
  %61 = load i64, ptr %h64, align 8, !dbg !1332
  %shr62 = lshr i64 %61, 29, !dbg !1333
  %62 = load i64, ptr %h64, align 8, !dbg !1334
  %xor63 = xor i64 %62, %shr62, !dbg !1334
  store i64 %xor63, ptr %h64, align 8, !dbg !1334
  %63 = load i64, ptr %h64, align 8, !dbg !1335
  %mul64 = mul i64 %63, 1609587929392839161, !dbg !1335
  store i64 %mul64, ptr %h64, align 8, !dbg !1335
  %64 = load i64, ptr %h64, align 8, !dbg !1336
  %shr65 = lshr i64 %64, 32, !dbg !1337
  %65 = load i64, ptr %h64, align 8, !dbg !1338
  %xor66 = xor i64 %65, %shr65, !dbg !1338
  store i64 %xor66, ptr %h64, align 8, !dbg !1338
  %66 = load i64, ptr %h64, align 8, !dbg !1339
  call void @llvm.lifetime.end.p0(i64 8, ptr %h64) #6, !dbg !1340
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_end) #6, !dbg !1340
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !1340
  ret i64 %66, !dbg !1341
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xxh32_copy_state195", scope: !2, file: !3, line: 83, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.xxhash.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/xxhash\22 -D KBUILD_BASENAME=\22xxhash\22 -D KBUILD_MODNAME=\22xxhash\22 -D __KBUILD_MODNAME=kmod_xxhash -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/xxhash.ll lib/xxhash.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !59, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/xxhash.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4313bcc866ffc20a3b9f52335a1391a0")
!4 = !{!5, !6, !15, !19, !23, !24, !17, !29, !31, !21, !46, !47}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 108, baseType: !10)
!9 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !11, line: 17, baseType: !12)
!11 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !13, line: 21, baseType: !14)
!13 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 110, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !11, line: 21, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !13, line: 27, baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 113, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !11, line: 23, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !13, line: 31, baseType: !22)
!22 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !9, line: 61, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !26, line: 72, baseType: !27)
!26 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !26, line: 16, baseType: !28)
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !30, line: 38, baseType: !17)
!30 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !34, line: 32, size: 32, elements: !44)
!34 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!35 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !34, file: !34, line: 30, type: !36, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!36 = !DISubroutineType(types: !37)
!37 = !{!16, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!40 = !{!41, !42}
!41 = !DILocalVariable(name: "p", arg: 1, scope: !35, file: !34, line: 30, type: !38)
!42 = !DILocalVariable(name: "__pptr", scope: !43, file: !34, line: 32, type: !31)
!43 = distinct !DILexicalBlock(scope: !35, file: !34, line: 32, column: 9)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !33, file: !34, line: 32, baseType: !29, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !30, line: 40, baseType: !21)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !34, line: 37, size: 64, elements: !57)
!50 = distinct !DISubprogram(name: "get_unaligned_le64", scope: !34, file: !34, line: 35, type: !51, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{!20, !38}
!53 = !{!54, !55}
!54 = !DILocalVariable(name: "p", arg: 1, scope: !50, file: !34, line: 35, type: !38)
!55 = !DILocalVariable(name: "__pptr", scope: !56, file: !34, line: 37, type: !47)
!56 = distinct !DILexicalBlock(scope: !50, file: !34, line: 37, column: 9)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !49, file: !34, line: 37, baseType: !46, size: 64)
!59 = !{!0, !60, !62, !65, !67, !69, !71, !73, !75, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !107, !112}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xxh64_copy_state196", scope: !2, file: !3, line: 89, type: !5, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression(DW_OP_constu, 2654435761, DW_OP_stack_value))
!63 = distinct !DIGlobalVariable(name: "PRIME32_1", scope: !2, file: !3, line: 64, type: !64, isLocal: true, isDefinition: true)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression(DW_OP_constu, 2246822519, DW_OP_stack_value))
!66 = distinct !DIGlobalVariable(name: "PRIME32_2", scope: !2, file: !3, line: 65, type: !64, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression(DW_OP_constu, 374761393, DW_OP_stack_value))
!68 = distinct !DIGlobalVariable(name: "PRIME32_5", scope: !2, file: !3, line: 68, type: !64, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression(DW_OP_constu, 3266489917, DW_OP_stack_value))
!70 = distinct !DIGlobalVariable(name: "PRIME32_3", scope: !2, file: !3, line: 66, type: !64, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression(DW_OP_constu, 668265263, DW_OP_stack_value))
!72 = distinct !DIGlobalVariable(name: "PRIME32_4", scope: !2, file: !3, line: 67, type: !64, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xxh32197", scope: !2, file: !3, line: 154, type: !5, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression(DW_OP_constu, 11400714785074694791, DW_OP_stack_value))
!76 = distinct !DIGlobalVariable(name: "PRIME64_1", scope: !2, file: !3, line: 70, type: !77, isLocal: true, isDefinition: true)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_constu, 14029467366897019727, DW_OP_stack_value))
!79 = distinct !DIGlobalVariable(name: "PRIME64_2", scope: !2, file: !3, line: 71, type: !77, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression(DW_OP_constu, 2870177450012600261, DW_OP_stack_value))
!81 = distinct !DIGlobalVariable(name: "PRIME64_5", scope: !2, file: !3, line: 74, type: !77, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_constu, 9650029242287828579, DW_OP_stack_value))
!83 = distinct !DIGlobalVariable(name: "PRIME64_4", scope: !2, file: !3, line: 73, type: !77, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression(DW_OP_constu, 1609587929392839161, DW_OP_stack_value))
!85 = distinct !DIGlobalVariable(name: "PRIME64_3", scope: !2, file: !3, line: 72, type: !77, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xxh64198", scope: !2, file: !3, line: 237, type: !5, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xxh32_reset199", scope: !2, file: !3, line: 254, type: !5, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xxh64_reset200", scope: !2, file: !3, line: 268, type: !5, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xxh32_update201", scope: !2, file: !3, line: 337, type: !5, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xxh32_digest202", scope: !2, file: !3, line: 375, type: !5, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xxh64_update203", scope: !2, file: !3, line: 442, type: !5, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xxh64_digest204", scope: !2, file: !3, line: 497, type: !5, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file205", scope: !2, file: !3, line: 499, type: !102, isLocal: true, isDefinition: true, align: 8)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 184, elements: !105)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !{!106}
!106 = !DISubrange(count: 23)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license206", scope: !2, file: !3, line: 499, type: !109, isLocal: true, isDefinition: true, align: 8)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 224, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 28)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description207", scope: !2, file: !3, line: 500, type: !114, isLocal: true, isDefinition: true, align: 8)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 208, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 26)
!117 = !{i32 7, !"Dwarf Version", i32 5}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 8, !"cf-protection-branch", i32 1}
!121 = !{i32 4, !"function_return_thunk_extern", i32 1}
!122 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!123 = !{i32 1, !"Code Model", i32 2}
!124 = !{i32 1, !"override-stack-alignment", i32 8}
!125 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!126 = distinct !DISubprogram(name: "xxh32_copy_state", scope: !3, file: !3, line: 79, type: !127, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !146)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !144}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xxh32_state", file: !131, line: 146, size: 352, elements: !132)
!131 = !DIFile(filename: "./include/linux/xxhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c71ec635eedf0b4cf42578b400352c76")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !143}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "total_len_32", scope: !130, file: !131, line: 147, baseType: !15, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "large_len", scope: !130, file: !131, line: 148, baseType: !15, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !130, file: !131, line: 149, baseType: !15, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !130, file: !131, line: 150, baseType: !15, size: 32, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !130, file: !131, line: 151, baseType: !15, size: 32, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !130, file: !131, line: 152, baseType: !15, size: 32, offset: 160)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mem32", scope: !130, file: !131, line: 153, baseType: !140, size: 128, offset: 192)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 4)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "memsize", scope: !130, file: !131, line: 154, baseType: !15, size: 32, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!146 = !{!147, !148}
!147 = !DILocalVariable(name: "dst", arg: 1, scope: !126, file: !3, line: 79, type: !129)
!148 = !DILocalVariable(name: "src", arg: 2, scope: !126, file: !3, line: 79, type: !144)
!149 = !DILocation(line: 79, column: 43, scope: !126)
!150 = !DILocation(line: 79, column: 74, scope: !126)
!151 = !DILocation(line: 81, column: 9, scope: !126)
!152 = !DILocation(line: 81, column: 14, scope: !126)
!153 = !DILocation(line: 81, column: 2, scope: !126)
!154 = !DILocation(line: 82, column: 1, scope: !126)
!155 = distinct !DISubprogram(name: "xxh64_copy_state", scope: !3, file: !3, line: 85, type: !156, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !171)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !158, !169}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xxh64_state", file: !131, line: 160, size: 640, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !168}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "total_len", scope: !159, file: !131, line: 161, baseType: !19, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !159, file: !131, line: 162, baseType: !19, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !159, file: !131, line: 163, baseType: !19, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !159, file: !131, line: 164, baseType: !19, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !159, file: !131, line: 165, baseType: !19, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mem64", scope: !159, file: !131, line: 166, baseType: !167, size: 256, offset: 320)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !141)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "memsize", scope: !159, file: !131, line: 167, baseType: !15, size: 32, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!171 = !{!172, !173}
!172 = !DILocalVariable(name: "dst", arg: 1, scope: !155, file: !3, line: 85, type: !158)
!173 = !DILocalVariable(name: "src", arg: 2, scope: !155, file: !3, line: 85, type: !169)
!174 = !DILocation(line: 85, column: 43, scope: !155)
!175 = !DILocation(line: 85, column: 74, scope: !155)
!176 = !DILocation(line: 87, column: 9, scope: !155)
!177 = !DILocation(line: 87, column: 14, scope: !155)
!178 = !DILocation(line: 87, column: 2, scope: !155)
!179 = !DILocation(line: 88, column: 1, scope: !155)
!180 = distinct !DISubprogram(name: "xxh32", scope: !3, file: !3, line: 102, type: !181, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!181 = !DISubroutineType(types: !182)
!182 = !{!15, !38, !183, !64}
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !195, !196, !197, !198}
!185 = !DILocalVariable(name: "input", arg: 1, scope: !180, file: !3, line: 102, type: !38)
!186 = !DILocalVariable(name: "len", arg: 2, scope: !180, file: !3, line: 102, type: !183)
!187 = !DILocalVariable(name: "seed", arg: 3, scope: !180, file: !3, line: 102, type: !64)
!188 = !DILocalVariable(name: "p", scope: !180, file: !3, line: 104, type: !6)
!189 = !DILocalVariable(name: "b_end", scope: !180, file: !3, line: 105, type: !6)
!190 = !DILocalVariable(name: "h32", scope: !180, file: !3, line: 106, type: !15)
!191 = !DILocalVariable(name: "limit", scope: !192, file: !3, line: 109, type: !194)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 108, column: 17)
!193 = distinct !DILexicalBlock(scope: !180, file: !3, line: 108, column: 6)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!195 = !DILocalVariable(name: "v1", scope: !192, file: !3, line: 110, type: !15)
!196 = !DILocalVariable(name: "v2", scope: !192, file: !3, line: 111, type: !15)
!197 = !DILocalVariable(name: "v3", scope: !192, file: !3, line: 112, type: !15)
!198 = !DILocalVariable(name: "v4", scope: !192, file: !3, line: 113, type: !15)
!199 = !DILocation(line: 102, column: 28, scope: !180)
!200 = !DILocation(line: 102, column: 48, scope: !180)
!201 = !DILocation(line: 102, column: 68, scope: !180)
!202 = !DILocation(line: 104, column: 2, scope: !180)
!203 = !DILocation(line: 104, column: 17, scope: !180)
!204 = !DILocation(line: 104, column: 38, scope: !180)
!205 = !DILocation(line: 105, column: 2, scope: !180)
!206 = !DILocation(line: 105, column: 17, scope: !180)
!207 = !DILocation(line: 105, column: 25, scope: !180)
!208 = !DILocation(line: 105, column: 29, scope: !180)
!209 = !DILocation(line: 105, column: 27, scope: !180)
!210 = !DILocation(line: 106, column: 2, scope: !180)
!211 = !DILocation(line: 106, column: 11, scope: !180)
!212 = !DILocation(line: 108, column: 6, scope: !193)
!213 = !DILocation(line: 108, column: 10, scope: !193)
!214 = !DILocation(line: 108, column: 6, scope: !180)
!215 = !DILocation(line: 109, column: 3, scope: !192)
!216 = !DILocation(line: 109, column: 24, scope: !192)
!217 = !DILocation(line: 109, column: 32, scope: !192)
!218 = !DILocation(line: 109, column: 38, scope: !192)
!219 = !DILocation(line: 110, column: 3, scope: !192)
!220 = !DILocation(line: 110, column: 12, scope: !192)
!221 = !DILocation(line: 110, column: 17, scope: !192)
!222 = !DILocation(line: 110, column: 22, scope: !192)
!223 = !DILocation(line: 110, column: 34, scope: !192)
!224 = !DILocation(line: 111, column: 3, scope: !192)
!225 = !DILocation(line: 111, column: 12, scope: !192)
!226 = !DILocation(line: 111, column: 17, scope: !192)
!227 = !DILocation(line: 111, column: 22, scope: !192)
!228 = !DILocation(line: 112, column: 3, scope: !192)
!229 = !DILocation(line: 112, column: 12, scope: !192)
!230 = !DILocation(line: 112, column: 17, scope: !192)
!231 = !DILocation(line: 112, column: 22, scope: !192)
!232 = !DILocation(line: 113, column: 3, scope: !192)
!233 = !DILocation(line: 113, column: 12, scope: !192)
!234 = !DILocation(line: 113, column: 17, scope: !192)
!235 = !DILocation(line: 113, column: 22, scope: !192)
!236 = !DILocation(line: 115, column: 3, scope: !192)
!237 = !DILocation(line: 116, column: 21, scope: !238)
!238 = distinct !DILexicalBlock(scope: !192, file: !3, line: 115, column: 6)
!239 = !DILocation(line: 116, column: 44, scope: !238)
!240 = !DILocation(line: 116, column: 25, scope: !238)
!241 = !DILocation(line: 116, column: 9, scope: !238)
!242 = !DILocation(line: 116, column: 7, scope: !238)
!243 = !DILocation(line: 117, column: 6, scope: !238)
!244 = !DILocation(line: 118, column: 21, scope: !238)
!245 = !DILocation(line: 118, column: 44, scope: !238)
!246 = !DILocation(line: 118, column: 25, scope: !238)
!247 = !DILocation(line: 118, column: 9, scope: !238)
!248 = !DILocation(line: 118, column: 7, scope: !238)
!249 = !DILocation(line: 119, column: 6, scope: !238)
!250 = !DILocation(line: 120, column: 21, scope: !238)
!251 = !DILocation(line: 120, column: 44, scope: !238)
!252 = !DILocation(line: 120, column: 25, scope: !238)
!253 = !DILocation(line: 120, column: 9, scope: !238)
!254 = !DILocation(line: 120, column: 7, scope: !238)
!255 = !DILocation(line: 121, column: 6, scope: !238)
!256 = !DILocation(line: 122, column: 21, scope: !238)
!257 = !DILocation(line: 122, column: 44, scope: !238)
!258 = !DILocation(line: 122, column: 25, scope: !238)
!259 = !DILocation(line: 122, column: 9, scope: !238)
!260 = !DILocation(line: 122, column: 7, scope: !238)
!261 = !DILocation(line: 123, column: 6, scope: !238)
!262 = !DILocation(line: 124, column: 3, scope: !238)
!263 = !DILocation(line: 124, column: 12, scope: !192)
!264 = !DILocation(line: 124, column: 17, scope: !192)
!265 = !DILocation(line: 124, column: 14, scope: !192)
!266 = distinct !{!266, !236, !267, !268, !269}
!267 = !DILocation(line: 124, column: 22, scope: !192)
!268 = !{!"llvm.loop.mustprogress"}
!269 = !{!"llvm.loop.unroll.disable"}
!270 = !DILocation(line: 126, column: 9, scope: !192)
!271 = !DILocation(line: 126, column: 29, scope: !192)
!272 = !DILocation(line: 126, column: 27, scope: !192)
!273 = !DILocation(line: 127, column: 4, scope: !192)
!274 = !DILocation(line: 126, column: 47, scope: !192)
!275 = !DILocation(line: 127, column: 25, scope: !192)
!276 = !DILocation(line: 127, column: 23, scope: !192)
!277 = !DILocation(line: 126, column: 7, scope: !192)
!278 = !DILocation(line: 128, column: 2, scope: !193)
!279 = !DILocation(line: 128, column: 2, scope: !192)
!280 = !DILocation(line: 129, column: 9, scope: !281)
!281 = distinct !DILexicalBlock(scope: !193, file: !3, line: 128, column: 9)
!282 = !DILocation(line: 129, column: 14, scope: !281)
!283 = !DILocation(line: 129, column: 7, scope: !281)
!284 = !DILocation(line: 132, column: 19, scope: !180)
!285 = !DILocation(line: 132, column: 9, scope: !180)
!286 = !DILocation(line: 132, column: 6, scope: !180)
!287 = !DILocation(line: 134, column: 2, scope: !180)
!288 = !DILocation(line: 134, column: 9, scope: !180)
!289 = !DILocation(line: 134, column: 11, scope: !180)
!290 = !DILocation(line: 134, column: 18, scope: !180)
!291 = !DILocation(line: 134, column: 15, scope: !180)
!292 = !DILocation(line: 135, column: 29, scope: !293)
!293 = distinct !DILexicalBlock(scope: !180, file: !3, line: 134, column: 25)
!294 = !DILocation(line: 135, column: 10, scope: !293)
!295 = !DILocation(line: 135, column: 32, scope: !293)
!296 = !DILocation(line: 135, column: 7, scope: !293)
!297 = !DILocation(line: 136, column: 9, scope: !293)
!298 = !DILocation(line: 136, column: 29, scope: !293)
!299 = !DILocation(line: 136, column: 7, scope: !293)
!300 = !DILocation(line: 137, column: 5, scope: !293)
!301 = distinct !{!301, !287, !302, !268, !269}
!302 = !DILocation(line: 138, column: 2, scope: !180)
!303 = !DILocation(line: 140, column: 2, scope: !180)
!304 = !DILocation(line: 140, column: 9, scope: !180)
!305 = !DILocation(line: 140, column: 13, scope: !180)
!306 = !DILocation(line: 140, column: 11, scope: !180)
!307 = !DILocation(line: 141, column: 12, scope: !308)
!308 = distinct !DILexicalBlock(scope: !180, file: !3, line: 140, column: 20)
!309 = !DILocation(line: 141, column: 11, scope: !308)
!310 = !DILocation(line: 141, column: 10, scope: !308)
!311 = !DILocation(line: 141, column: 15, scope: !308)
!312 = !DILocation(line: 141, column: 7, scope: !308)
!313 = !DILocation(line: 142, column: 9, scope: !308)
!314 = !DILocation(line: 142, column: 29, scope: !308)
!315 = !DILocation(line: 142, column: 7, scope: !308)
!316 = !DILocation(line: 143, column: 4, scope: !308)
!317 = distinct !{!317, !303, !318, !268, !269}
!318 = !DILocation(line: 144, column: 2, scope: !180)
!319 = !DILocation(line: 146, column: 9, scope: !180)
!320 = !DILocation(line: 146, column: 13, scope: !180)
!321 = !DILocation(line: 146, column: 6, scope: !180)
!322 = !DILocation(line: 147, column: 6, scope: !180)
!323 = !DILocation(line: 148, column: 9, scope: !180)
!324 = !DILocation(line: 148, column: 13, scope: !180)
!325 = !DILocation(line: 148, column: 6, scope: !180)
!326 = !DILocation(line: 149, column: 6, scope: !180)
!327 = !DILocation(line: 150, column: 9, scope: !180)
!328 = !DILocation(line: 150, column: 13, scope: !180)
!329 = !DILocation(line: 150, column: 6, scope: !180)
!330 = !DILocation(line: 152, column: 9, scope: !180)
!331 = !DILocation(line: 153, column: 1, scope: !180)
!332 = !DILocation(line: 152, column: 2, scope: !180)
!333 = distinct !DISubprogram(name: "xxh32_round", scope: !3, file: !3, line: 94, type: !334, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!15, !15, !64}
!336 = !{!337, !338}
!337 = !DILocalVariable(name: "seed", arg: 1, scope: !333, file: !3, line: 94, type: !15)
!338 = !DILocalVariable(name: "input", arg: 2, scope: !333, file: !3, line: 94, type: !64)
!339 = !DILocation(line: 94, column: 38, scope: !333)
!340 = !DILocation(line: 94, column: 59, scope: !333)
!341 = !DILocation(line: 96, column: 10, scope: !333)
!342 = !DILocation(line: 96, column: 16, scope: !333)
!343 = !DILocation(line: 96, column: 7, scope: !333)
!344 = !DILocation(line: 97, column: 9, scope: !333)
!345 = !DILocation(line: 97, column: 7, scope: !333)
!346 = !DILocation(line: 98, column: 7, scope: !333)
!347 = !DILocation(line: 99, column: 9, scope: !333)
!348 = !DILocation(line: 99, column: 2, scope: !333)
!349 = !DILocation(line: 30, column: 50, scope: !35)
!350 = !DILocation(line: 32, column: 9, scope: !43)
!351 = !DILocation(line: 32, column: 9, scope: !35)
!352 = !DILocation(line: 32, column: 2, scope: !35)
!353 = distinct !DISubprogram(name: "xxh64", scope: !3, file: !3, line: 172, type: !354, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!19, !38, !183, !77}
!356 = !{!357, !358, !359, !360, !361, !362, !363, !366, !367, !368, !369, !370}
!357 = !DILocalVariable(name: "input", arg: 1, scope: !353, file: !3, line: 172, type: !38)
!358 = !DILocalVariable(name: "len", arg: 2, scope: !353, file: !3, line: 172, type: !183)
!359 = !DILocalVariable(name: "seed", arg: 3, scope: !353, file: !3, line: 172, type: !77)
!360 = !DILocalVariable(name: "p", scope: !353, file: !3, line: 174, type: !6)
!361 = !DILocalVariable(name: "b_end", scope: !353, file: !3, line: 175, type: !194)
!362 = !DILocalVariable(name: "h64", scope: !353, file: !3, line: 176, type: !19)
!363 = !DILocalVariable(name: "limit", scope: !364, file: !3, line: 179, type: !194)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 178, column: 17)
!365 = distinct !DILexicalBlock(scope: !353, file: !3, line: 178, column: 6)
!366 = !DILocalVariable(name: "v1", scope: !364, file: !3, line: 180, type: !19)
!367 = !DILocalVariable(name: "v2", scope: !364, file: !3, line: 181, type: !19)
!368 = !DILocalVariable(name: "v3", scope: !364, file: !3, line: 182, type: !19)
!369 = !DILocalVariable(name: "v4", scope: !364, file: !3, line: 183, type: !19)
!370 = !DILocalVariable(name: "k1", scope: !371, file: !3, line: 210, type: !77)
!371 = distinct !DILexicalBlock(scope: !353, file: !3, line: 209, column: 25)
!372 = !DILocation(line: 172, column: 28, scope: !353)
!373 = !DILocation(line: 172, column: 48, scope: !353)
!374 = !DILocation(line: 172, column: 68, scope: !353)
!375 = !DILocation(line: 174, column: 2, scope: !353)
!376 = !DILocation(line: 174, column: 17, scope: !353)
!377 = !DILocation(line: 174, column: 38, scope: !353)
!378 = !DILocation(line: 175, column: 2, scope: !353)
!379 = !DILocation(line: 175, column: 23, scope: !353)
!380 = !DILocation(line: 175, column: 31, scope: !353)
!381 = !DILocation(line: 175, column: 35, scope: !353)
!382 = !DILocation(line: 175, column: 33, scope: !353)
!383 = !DILocation(line: 176, column: 2, scope: !353)
!384 = !DILocation(line: 176, column: 11, scope: !353)
!385 = !DILocation(line: 178, column: 6, scope: !365)
!386 = !DILocation(line: 178, column: 10, scope: !365)
!387 = !DILocation(line: 178, column: 6, scope: !353)
!388 = !DILocation(line: 179, column: 3, scope: !364)
!389 = !DILocation(line: 179, column: 24, scope: !364)
!390 = !DILocation(line: 179, column: 32, scope: !364)
!391 = !DILocation(line: 179, column: 38, scope: !364)
!392 = !DILocation(line: 180, column: 3, scope: !364)
!393 = !DILocation(line: 180, column: 12, scope: !364)
!394 = !DILocation(line: 180, column: 17, scope: !364)
!395 = !DILocation(line: 180, column: 22, scope: !364)
!396 = !DILocation(line: 180, column: 34, scope: !364)
!397 = !DILocation(line: 181, column: 3, scope: !364)
!398 = !DILocation(line: 181, column: 12, scope: !364)
!399 = !DILocation(line: 181, column: 17, scope: !364)
!400 = !DILocation(line: 181, column: 22, scope: !364)
!401 = !DILocation(line: 182, column: 3, scope: !364)
!402 = !DILocation(line: 182, column: 12, scope: !364)
!403 = !DILocation(line: 182, column: 17, scope: !364)
!404 = !DILocation(line: 182, column: 22, scope: !364)
!405 = !DILocation(line: 183, column: 3, scope: !364)
!406 = !DILocation(line: 183, column: 12, scope: !364)
!407 = !DILocation(line: 183, column: 17, scope: !364)
!408 = !DILocation(line: 183, column: 22, scope: !364)
!409 = !DILocation(line: 185, column: 3, scope: !364)
!410 = !DILocation(line: 186, column: 21, scope: !411)
!411 = distinct !DILexicalBlock(scope: !364, file: !3, line: 185, column: 6)
!412 = !DILocation(line: 186, column: 44, scope: !411)
!413 = !DILocation(line: 186, column: 25, scope: !411)
!414 = !DILocation(line: 186, column: 9, scope: !411)
!415 = !DILocation(line: 186, column: 7, scope: !411)
!416 = !DILocation(line: 187, column: 6, scope: !411)
!417 = !DILocation(line: 188, column: 21, scope: !411)
!418 = !DILocation(line: 188, column: 44, scope: !411)
!419 = !DILocation(line: 188, column: 25, scope: !411)
!420 = !DILocation(line: 188, column: 9, scope: !411)
!421 = !DILocation(line: 188, column: 7, scope: !411)
!422 = !DILocation(line: 189, column: 6, scope: !411)
!423 = !DILocation(line: 190, column: 21, scope: !411)
!424 = !DILocation(line: 190, column: 44, scope: !411)
!425 = !DILocation(line: 190, column: 25, scope: !411)
!426 = !DILocation(line: 190, column: 9, scope: !411)
!427 = !DILocation(line: 190, column: 7, scope: !411)
!428 = !DILocation(line: 191, column: 6, scope: !411)
!429 = !DILocation(line: 192, column: 21, scope: !411)
!430 = !DILocation(line: 192, column: 44, scope: !411)
!431 = !DILocation(line: 192, column: 25, scope: !411)
!432 = !DILocation(line: 192, column: 9, scope: !411)
!433 = !DILocation(line: 192, column: 7, scope: !411)
!434 = !DILocation(line: 193, column: 6, scope: !411)
!435 = !DILocation(line: 194, column: 3, scope: !411)
!436 = !DILocation(line: 194, column: 12, scope: !364)
!437 = !DILocation(line: 194, column: 17, scope: !364)
!438 = !DILocation(line: 194, column: 14, scope: !364)
!439 = distinct !{!439, !409, !440, !268, !269}
!440 = !DILocation(line: 194, column: 22, scope: !364)
!441 = !DILocation(line: 196, column: 9, scope: !364)
!442 = !DILocation(line: 196, column: 29, scope: !364)
!443 = !DILocation(line: 196, column: 27, scope: !364)
!444 = !DILocation(line: 197, column: 4, scope: !364)
!445 = !DILocation(line: 196, column: 47, scope: !364)
!446 = !DILocation(line: 197, column: 25, scope: !364)
!447 = !DILocation(line: 197, column: 23, scope: !364)
!448 = !DILocation(line: 196, column: 7, scope: !364)
!449 = !DILocation(line: 198, column: 27, scope: !364)
!450 = !DILocation(line: 198, column: 32, scope: !364)
!451 = !DILocation(line: 198, column: 9, scope: !364)
!452 = !DILocation(line: 198, column: 7, scope: !364)
!453 = !DILocation(line: 199, column: 27, scope: !364)
!454 = !DILocation(line: 199, column: 32, scope: !364)
!455 = !DILocation(line: 199, column: 9, scope: !364)
!456 = !DILocation(line: 199, column: 7, scope: !364)
!457 = !DILocation(line: 200, column: 27, scope: !364)
!458 = !DILocation(line: 200, column: 32, scope: !364)
!459 = !DILocation(line: 200, column: 9, scope: !364)
!460 = !DILocation(line: 200, column: 7, scope: !364)
!461 = !DILocation(line: 201, column: 27, scope: !364)
!462 = !DILocation(line: 201, column: 32, scope: !364)
!463 = !DILocation(line: 201, column: 9, scope: !364)
!464 = !DILocation(line: 201, column: 7, scope: !364)
!465 = !DILocation(line: 203, column: 2, scope: !365)
!466 = !DILocation(line: 203, column: 2, scope: !364)
!467 = !DILocation(line: 204, column: 10, scope: !468)
!468 = distinct !DILexicalBlock(scope: !365, file: !3, line: 203, column: 9)
!469 = !DILocation(line: 204, column: 15, scope: !468)
!470 = !DILocation(line: 204, column: 8, scope: !468)
!471 = !DILocation(line: 207, column: 19, scope: !353)
!472 = !DILocation(line: 207, column: 6, scope: !353)
!473 = !DILocation(line: 209, column: 2, scope: !353)
!474 = !DILocation(line: 209, column: 9, scope: !353)
!475 = !DILocation(line: 209, column: 11, scope: !353)
!476 = !DILocation(line: 209, column: 18, scope: !353)
!477 = !DILocation(line: 209, column: 15, scope: !353)
!478 = !DILocation(line: 210, column: 3, scope: !371)
!479 = !DILocation(line: 210, column: 18, scope: !371)
!480 = !DILocation(line: 210, column: 57, scope: !371)
!481 = !DILocation(line: 210, column: 38, scope: !371)
!482 = !DILocation(line: 210, column: 23, scope: !371)
!483 = !DILocation(line: 212, column: 10, scope: !371)
!484 = !DILocation(line: 212, column: 7, scope: !371)
!485 = !DILocation(line: 213, column: 9, scope: !371)
!486 = !DILocation(line: 213, column: 29, scope: !371)
!487 = !DILocation(line: 213, column: 41, scope: !371)
!488 = !DILocation(line: 213, column: 7, scope: !371)
!489 = !DILocation(line: 214, column: 5, scope: !371)
!490 = !DILocation(line: 215, column: 2, scope: !353)
!491 = distinct !{!491, !473, !490, !268, !269}
!492 = !DILocation(line: 217, column: 6, scope: !493)
!493 = distinct !DILexicalBlock(scope: !353, file: !3, line: 217, column: 6)
!494 = !DILocation(line: 217, column: 8, scope: !493)
!495 = !DILocation(line: 217, column: 15, scope: !493)
!496 = !DILocation(line: 217, column: 12, scope: !493)
!497 = !DILocation(line: 217, column: 6, scope: !353)
!498 = !DILocation(line: 218, column: 40, scope: !499)
!499 = distinct !DILexicalBlock(scope: !493, file: !3, line: 217, column: 22)
!500 = !DILocation(line: 218, column: 21, scope: !499)
!501 = !DILocation(line: 218, column: 10, scope: !499)
!502 = !DILocation(line: 218, column: 44, scope: !499)
!503 = !DILocation(line: 218, column: 7, scope: !499)
!504 = !DILocation(line: 219, column: 9, scope: !499)
!505 = !DILocation(line: 219, column: 29, scope: !499)
!506 = !DILocation(line: 219, column: 41, scope: !499)
!507 = !DILocation(line: 219, column: 7, scope: !499)
!508 = !DILocation(line: 220, column: 5, scope: !499)
!509 = !DILocation(line: 221, column: 2, scope: !499)
!510 = !DILocation(line: 223, column: 2, scope: !353)
!511 = !DILocation(line: 223, column: 9, scope: !353)
!512 = !DILocation(line: 223, column: 13, scope: !353)
!513 = !DILocation(line: 223, column: 11, scope: !353)
!514 = !DILocation(line: 224, column: 12, scope: !515)
!515 = distinct !DILexicalBlock(scope: !353, file: !3, line: 223, column: 20)
!516 = !DILocation(line: 224, column: 11, scope: !515)
!517 = !DILocation(line: 224, column: 10, scope: !515)
!518 = !DILocation(line: 224, column: 15, scope: !515)
!519 = !DILocation(line: 224, column: 7, scope: !515)
!520 = !DILocation(line: 225, column: 9, scope: !515)
!521 = !DILocation(line: 225, column: 29, scope: !515)
!522 = !DILocation(line: 225, column: 7, scope: !515)
!523 = !DILocation(line: 226, column: 4, scope: !515)
!524 = distinct !{!524, !510, !525, !268, !269}
!525 = !DILocation(line: 227, column: 2, scope: !353)
!526 = !DILocation(line: 229, column: 9, scope: !353)
!527 = !DILocation(line: 229, column: 13, scope: !353)
!528 = !DILocation(line: 229, column: 6, scope: !353)
!529 = !DILocation(line: 230, column: 6, scope: !353)
!530 = !DILocation(line: 231, column: 9, scope: !353)
!531 = !DILocation(line: 231, column: 13, scope: !353)
!532 = !DILocation(line: 231, column: 6, scope: !353)
!533 = !DILocation(line: 232, column: 6, scope: !353)
!534 = !DILocation(line: 233, column: 9, scope: !353)
!535 = !DILocation(line: 233, column: 13, scope: !353)
!536 = !DILocation(line: 233, column: 6, scope: !353)
!537 = !DILocation(line: 235, column: 9, scope: !353)
!538 = !DILocation(line: 236, column: 1, scope: !353)
!539 = !DILocation(line: 235, column: 2, scope: !353)
!540 = distinct !DISubprogram(name: "xxh64_round", scope: !3, file: !3, line: 156, type: !541, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{!19, !19, !77}
!543 = !{!544, !545}
!544 = !DILocalVariable(name: "acc", arg: 1, scope: !540, file: !3, line: 156, type: !19)
!545 = !DILocalVariable(name: "input", arg: 2, scope: !540, file: !3, line: 156, type: !77)
!546 = !DILocation(line: 156, column: 38, scope: !540)
!547 = !DILocation(line: 156, column: 58, scope: !540)
!548 = !DILocation(line: 158, column: 9, scope: !540)
!549 = !DILocation(line: 158, column: 15, scope: !540)
!550 = !DILocation(line: 158, column: 6, scope: !540)
!551 = !DILocation(line: 159, column: 8, scope: !540)
!552 = !DILocation(line: 159, column: 6, scope: !540)
!553 = !DILocation(line: 160, column: 6, scope: !540)
!554 = !DILocation(line: 161, column: 9, scope: !540)
!555 = !DILocation(line: 161, column: 2, scope: !540)
!556 = !DILocation(line: 35, column: 50, scope: !50)
!557 = !DILocation(line: 37, column: 9, scope: !56)
!558 = !DILocation(line: 37, column: 9, scope: !50)
!559 = !DILocation(line: 37, column: 2, scope: !50)
!560 = distinct !DISubprogram(name: "xxh64_merge_round", scope: !3, file: !3, line: 164, type: !561, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!561 = !DISubroutineType(types: !562)
!562 = !{!19, !19, !19}
!563 = !{!564, !565}
!564 = !DILocalVariable(name: "acc", arg: 1, scope: !560, file: !3, line: 164, type: !19)
!565 = !DILocalVariable(name: "val", arg: 2, scope: !560, file: !3, line: 164, type: !19)
!566 = !DILocation(line: 164, column: 44, scope: !560)
!567 = !DILocation(line: 164, column: 58, scope: !560)
!568 = !DILocation(line: 166, column: 23, scope: !560)
!569 = !DILocation(line: 166, column: 8, scope: !560)
!570 = !DILocation(line: 166, column: 6, scope: !560)
!571 = !DILocation(line: 167, column: 9, scope: !560)
!572 = !DILocation(line: 167, column: 6, scope: !560)
!573 = !DILocation(line: 168, column: 8, scope: !560)
!574 = !DILocation(line: 168, column: 12, scope: !560)
!575 = !DILocation(line: 168, column: 24, scope: !560)
!576 = !DILocation(line: 168, column: 6, scope: !560)
!577 = !DILocation(line: 169, column: 9, scope: !560)
!578 = !DILocation(line: 169, column: 2, scope: !560)
!579 = distinct !DISubprogram(name: "xxh32_reset", scope: !3, file: !3, line: 242, type: !580, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !582)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !129, !64}
!582 = !{!583, !584, !585}
!583 = !DILocalVariable(name: "statePtr", arg: 1, scope: !579, file: !3, line: 242, type: !129)
!584 = !DILocalVariable(name: "seed", arg: 2, scope: !579, file: !3, line: 242, type: !64)
!585 = !DILocalVariable(name: "state", scope: !579, file: !3, line: 245, type: !130)
!586 = !DILocation(line: 242, column: 38, scope: !579)
!587 = !DILocation(line: 242, column: 63, scope: !579)
!588 = !DILocation(line: 245, column: 2, scope: !579)
!589 = !DILocation(line: 245, column: 21, scope: !579)
!590 = !DILocation(line: 247, column: 2, scope: !579)
!591 = !DILocation(line: 248, column: 13, scope: !579)
!592 = !DILocation(line: 248, column: 18, scope: !579)
!593 = !DILocation(line: 248, column: 30, scope: !579)
!594 = !DILocation(line: 248, column: 8, scope: !579)
!595 = !DILocation(line: 248, column: 11, scope: !579)
!596 = !DILocation(line: 249, column: 13, scope: !579)
!597 = !DILocation(line: 249, column: 18, scope: !579)
!598 = !DILocation(line: 249, column: 8, scope: !579)
!599 = !DILocation(line: 249, column: 11, scope: !579)
!600 = !DILocation(line: 250, column: 13, scope: !579)
!601 = !DILocation(line: 250, column: 18, scope: !579)
!602 = !DILocation(line: 250, column: 8, scope: !579)
!603 = !DILocation(line: 250, column: 11, scope: !579)
!604 = !DILocation(line: 251, column: 13, scope: !579)
!605 = !DILocation(line: 251, column: 18, scope: !579)
!606 = !DILocation(line: 251, column: 8, scope: !579)
!607 = !DILocation(line: 251, column: 11, scope: !579)
!608 = !DILocation(line: 252, column: 9, scope: !579)
!609 = !DILocation(line: 252, column: 2, scope: !579)
!610 = !DILocation(line: 253, column: 1, scope: !579)
!611 = distinct !DISubprogram(name: "xxh64_reset", scope: !3, file: !3, line: 256, type: !612, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !158, !77}
!614 = !{!615, !616, !617}
!615 = !DILocalVariable(name: "statePtr", arg: 1, scope: !611, file: !3, line: 256, type: !158)
!616 = !DILocalVariable(name: "seed", arg: 2, scope: !611, file: !3, line: 256, type: !77)
!617 = !DILocalVariable(name: "state", scope: !611, file: !3, line: 259, type: !159)
!618 = !DILocation(line: 256, column: 38, scope: !611)
!619 = !DILocation(line: 256, column: 63, scope: !611)
!620 = !DILocation(line: 259, column: 2, scope: !611)
!621 = !DILocation(line: 259, column: 21, scope: !611)
!622 = !DILocation(line: 261, column: 2, scope: !611)
!623 = !DILocation(line: 262, column: 13, scope: !611)
!624 = !DILocation(line: 262, column: 18, scope: !611)
!625 = !DILocation(line: 262, column: 30, scope: !611)
!626 = !DILocation(line: 262, column: 8, scope: !611)
!627 = !DILocation(line: 262, column: 11, scope: !611)
!628 = !DILocation(line: 263, column: 13, scope: !611)
!629 = !DILocation(line: 263, column: 18, scope: !611)
!630 = !DILocation(line: 263, column: 8, scope: !611)
!631 = !DILocation(line: 263, column: 11, scope: !611)
!632 = !DILocation(line: 264, column: 13, scope: !611)
!633 = !DILocation(line: 264, column: 18, scope: !611)
!634 = !DILocation(line: 264, column: 8, scope: !611)
!635 = !DILocation(line: 264, column: 11, scope: !611)
!636 = !DILocation(line: 265, column: 13, scope: !611)
!637 = !DILocation(line: 265, column: 18, scope: !611)
!638 = !DILocation(line: 265, column: 8, scope: !611)
!639 = !DILocation(line: 265, column: 11, scope: !611)
!640 = !DILocation(line: 266, column: 9, scope: !611)
!641 = !DILocation(line: 266, column: 2, scope: !611)
!642 = !DILocation(line: 267, column: 1, scope: !611)
!643 = distinct !DISubprogram(name: "xxh32_update", scope: !3, file: !3, line: 270, type: !644, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !647)
!644 = !DISubroutineType(types: !645)
!645 = !{!646, !129, !38, !183}
!646 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!647 = !{!648, !649, !650, !651, !652, !653, !657, !660, !661, !662, !663}
!648 = !DILocalVariable(name: "state", arg: 1, scope: !643, file: !3, line: 270, type: !129)
!649 = !DILocalVariable(name: "input", arg: 2, scope: !643, file: !3, line: 270, type: !38)
!650 = !DILocalVariable(name: "len", arg: 3, scope: !643, file: !3, line: 270, type: !183)
!651 = !DILocalVariable(name: "p", scope: !643, file: !3, line: 272, type: !6)
!652 = !DILocalVariable(name: "b_end", scope: !643, file: !3, line: 273, type: !194)
!653 = !DILocalVariable(name: "p32", scope: !654, file: !3, line: 288, type: !656)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 287, column: 22)
!655 = distinct !DILexicalBlock(scope: !643, file: !3, line: 287, column: 6)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!657 = !DILocalVariable(name: "limit", scope: !658, file: !3, line: 307, type: !194)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 306, column: 23)
!659 = distinct !DILexicalBlock(scope: !643, file: !3, line: 306, column: 6)
!660 = !DILocalVariable(name: "v1", scope: !658, file: !3, line: 308, type: !15)
!661 = !DILocalVariable(name: "v2", scope: !658, file: !3, line: 309, type: !15)
!662 = !DILocalVariable(name: "v3", scope: !658, file: !3, line: 310, type: !15)
!663 = !DILocalVariable(name: "v4", scope: !658, file: !3, line: 311, type: !15)
!664 = !DILocation(line: 270, column: 38, scope: !643)
!665 = !DILocation(line: 270, column: 57, scope: !643)
!666 = !DILocation(line: 270, column: 77, scope: !643)
!667 = !DILocation(line: 272, column: 2, scope: !643)
!668 = !DILocation(line: 272, column: 17, scope: !643)
!669 = !DILocation(line: 272, column: 38, scope: !643)
!670 = !DILocation(line: 273, column: 2, scope: !643)
!671 = !DILocation(line: 273, column: 23, scope: !643)
!672 = !DILocation(line: 273, column: 31, scope: !643)
!673 = !DILocation(line: 273, column: 35, scope: !643)
!674 = !DILocation(line: 273, column: 33, scope: !643)
!675 = !DILocation(line: 275, column: 6, scope: !676)
!676 = distinct !DILexicalBlock(scope: !643, file: !3, line: 275, column: 6)
!677 = !DILocation(line: 275, column: 12, scope: !676)
!678 = !DILocation(line: 275, column: 6, scope: !643)
!679 = !DILocation(line: 276, column: 3, scope: !676)
!680 = !DILocation(line: 278, column: 35, scope: !643)
!681 = !DILocation(line: 278, column: 25, scope: !643)
!682 = !DILocation(line: 278, column: 2, scope: !643)
!683 = !DILocation(line: 278, column: 9, scope: !643)
!684 = !DILocation(line: 278, column: 22, scope: !643)
!685 = !DILocation(line: 279, column: 23, scope: !643)
!686 = !DILocation(line: 279, column: 27, scope: !643)
!687 = !DILocation(line: 279, column: 37, scope: !643)
!688 = !DILocation(line: 279, column: 44, scope: !643)
!689 = !DILocation(line: 279, column: 57, scope: !643)
!690 = !DILocation(line: 279, column: 34, scope: !643)
!691 = !DILocation(line: 279, column: 2, scope: !643)
!692 = !DILocation(line: 279, column: 9, scope: !643)
!693 = !DILocation(line: 279, column: 19, scope: !643)
!694 = !DILocation(line: 281, column: 6, scope: !695)
!695 = distinct !DILexicalBlock(scope: !643, file: !3, line: 281, column: 6)
!696 = !DILocation(line: 281, column: 13, scope: !695)
!697 = !DILocation(line: 281, column: 23, scope: !695)
!698 = !DILocation(line: 281, column: 21, scope: !695)
!699 = !DILocation(line: 281, column: 27, scope: !695)
!700 = !DILocation(line: 281, column: 6, scope: !643)
!701 = !DILocation(line: 282, column: 22, scope: !702)
!702 = distinct !DILexicalBlock(scope: !695, file: !3, line: 281, column: 33)
!703 = !DILocation(line: 282, column: 29, scope: !702)
!704 = !DILocation(line: 282, column: 21, scope: !702)
!705 = !DILocation(line: 282, column: 38, scope: !702)
!706 = !DILocation(line: 282, column: 45, scope: !702)
!707 = !DILocation(line: 282, column: 36, scope: !702)
!708 = !DILocation(line: 282, column: 54, scope: !702)
!709 = !DILocation(line: 282, column: 61, scope: !702)
!710 = !DILocation(line: 282, column: 3, scope: !702)
!711 = !DILocation(line: 283, column: 31, scope: !702)
!712 = !DILocation(line: 283, column: 21, scope: !702)
!713 = !DILocation(line: 283, column: 3, scope: !702)
!714 = !DILocation(line: 283, column: 10, scope: !702)
!715 = !DILocation(line: 283, column: 18, scope: !702)
!716 = !DILocation(line: 284, column: 3, scope: !702)
!717 = !DILocation(line: 287, column: 6, scope: !655)
!718 = !DILocation(line: 287, column: 13, scope: !655)
!719 = !DILocation(line: 287, column: 6, scope: !643)
!720 = !DILocation(line: 288, column: 3, scope: !654)
!721 = !DILocation(line: 288, column: 19, scope: !654)
!722 = !DILocation(line: 288, column: 25, scope: !654)
!723 = !DILocation(line: 288, column: 32, scope: !654)
!724 = !DILocation(line: 290, column: 22, scope: !654)
!725 = !DILocation(line: 290, column: 29, scope: !654)
!726 = !DILocation(line: 290, column: 21, scope: !654)
!727 = !DILocation(line: 290, column: 38, scope: !654)
!728 = !DILocation(line: 290, column: 45, scope: !654)
!729 = !DILocation(line: 290, column: 36, scope: !654)
!730 = !DILocation(line: 290, column: 54, scope: !654)
!731 = !DILocation(line: 291, column: 9, scope: !654)
!732 = !DILocation(line: 291, column: 16, scope: !654)
!733 = !DILocation(line: 291, column: 7, scope: !654)
!734 = !DILocation(line: 291, column: 4, scope: !654)
!735 = !DILocation(line: 290, column: 3, scope: !654)
!736 = !DILocation(line: 293, column: 27, scope: !654)
!737 = !DILocation(line: 293, column: 34, scope: !654)
!738 = !DILocation(line: 293, column: 57, scope: !654)
!739 = !DILocation(line: 293, column: 38, scope: !654)
!740 = !DILocation(line: 293, column: 15, scope: !654)
!741 = !DILocation(line: 293, column: 3, scope: !654)
!742 = !DILocation(line: 293, column: 10, scope: !654)
!743 = !DILocation(line: 293, column: 13, scope: !654)
!744 = !DILocation(line: 294, column: 6, scope: !654)
!745 = !DILocation(line: 295, column: 27, scope: !654)
!746 = !DILocation(line: 295, column: 34, scope: !654)
!747 = !DILocation(line: 295, column: 57, scope: !654)
!748 = !DILocation(line: 295, column: 38, scope: !654)
!749 = !DILocation(line: 295, column: 15, scope: !654)
!750 = !DILocation(line: 295, column: 3, scope: !654)
!751 = !DILocation(line: 295, column: 10, scope: !654)
!752 = !DILocation(line: 295, column: 13, scope: !654)
!753 = !DILocation(line: 296, column: 6, scope: !654)
!754 = !DILocation(line: 297, column: 27, scope: !654)
!755 = !DILocation(line: 297, column: 34, scope: !654)
!756 = !DILocation(line: 297, column: 57, scope: !654)
!757 = !DILocation(line: 297, column: 38, scope: !654)
!758 = !DILocation(line: 297, column: 15, scope: !654)
!759 = !DILocation(line: 297, column: 3, scope: !654)
!760 = !DILocation(line: 297, column: 10, scope: !654)
!761 = !DILocation(line: 297, column: 13, scope: !654)
!762 = !DILocation(line: 298, column: 6, scope: !654)
!763 = !DILocation(line: 299, column: 27, scope: !654)
!764 = !DILocation(line: 299, column: 34, scope: !654)
!765 = !DILocation(line: 299, column: 57, scope: !654)
!766 = !DILocation(line: 299, column: 38, scope: !654)
!767 = !DILocation(line: 299, column: 15, scope: !654)
!768 = !DILocation(line: 299, column: 3, scope: !654)
!769 = !DILocation(line: 299, column: 10, scope: !654)
!770 = !DILocation(line: 299, column: 13, scope: !654)
!771 = !DILocation(line: 300, column: 6, scope: !654)
!772 = !DILocation(line: 302, column: 11, scope: !654)
!773 = !DILocation(line: 302, column: 18, scope: !654)
!774 = !DILocation(line: 302, column: 10, scope: !654)
!775 = !DILocation(line: 302, column: 5, scope: !654)
!776 = !DILocation(line: 303, column: 3, scope: !654)
!777 = !DILocation(line: 303, column: 10, scope: !654)
!778 = !DILocation(line: 303, column: 18, scope: !654)
!779 = !DILocation(line: 304, column: 2, scope: !655)
!780 = !DILocation(line: 304, column: 2, scope: !654)
!781 = !DILocation(line: 306, column: 6, scope: !659)
!782 = !DILocation(line: 306, column: 11, scope: !659)
!783 = !DILocation(line: 306, column: 17, scope: !659)
!784 = !DILocation(line: 306, column: 8, scope: !659)
!785 = !DILocation(line: 306, column: 6, scope: !643)
!786 = !DILocation(line: 307, column: 3, scope: !658)
!787 = !DILocation(line: 307, column: 24, scope: !658)
!788 = !DILocation(line: 307, column: 32, scope: !658)
!789 = !DILocation(line: 307, column: 38, scope: !658)
!790 = !DILocation(line: 308, column: 3, scope: !658)
!791 = !DILocation(line: 308, column: 12, scope: !658)
!792 = !DILocation(line: 308, column: 17, scope: !658)
!793 = !DILocation(line: 308, column: 24, scope: !658)
!794 = !DILocation(line: 309, column: 3, scope: !658)
!795 = !DILocation(line: 309, column: 12, scope: !658)
!796 = !DILocation(line: 309, column: 17, scope: !658)
!797 = !DILocation(line: 309, column: 24, scope: !658)
!798 = !DILocation(line: 310, column: 3, scope: !658)
!799 = !DILocation(line: 310, column: 12, scope: !658)
!800 = !DILocation(line: 310, column: 17, scope: !658)
!801 = !DILocation(line: 310, column: 24, scope: !658)
!802 = !DILocation(line: 311, column: 3, scope: !658)
!803 = !DILocation(line: 311, column: 12, scope: !658)
!804 = !DILocation(line: 311, column: 17, scope: !658)
!805 = !DILocation(line: 311, column: 24, scope: !658)
!806 = !DILocation(line: 313, column: 3, scope: !658)
!807 = !DILocation(line: 314, column: 21, scope: !808)
!808 = distinct !DILexicalBlock(scope: !658, file: !3, line: 313, column: 6)
!809 = !DILocation(line: 314, column: 44, scope: !808)
!810 = !DILocation(line: 314, column: 25, scope: !808)
!811 = !DILocation(line: 314, column: 9, scope: !808)
!812 = !DILocation(line: 314, column: 7, scope: !808)
!813 = !DILocation(line: 315, column: 6, scope: !808)
!814 = !DILocation(line: 316, column: 21, scope: !808)
!815 = !DILocation(line: 316, column: 44, scope: !808)
!816 = !DILocation(line: 316, column: 25, scope: !808)
!817 = !DILocation(line: 316, column: 9, scope: !808)
!818 = !DILocation(line: 316, column: 7, scope: !808)
!819 = !DILocation(line: 317, column: 6, scope: !808)
!820 = !DILocation(line: 318, column: 21, scope: !808)
!821 = !DILocation(line: 318, column: 44, scope: !808)
!822 = !DILocation(line: 318, column: 25, scope: !808)
!823 = !DILocation(line: 318, column: 9, scope: !808)
!824 = !DILocation(line: 318, column: 7, scope: !808)
!825 = !DILocation(line: 319, column: 6, scope: !808)
!826 = !DILocation(line: 320, column: 21, scope: !808)
!827 = !DILocation(line: 320, column: 44, scope: !808)
!828 = !DILocation(line: 320, column: 25, scope: !808)
!829 = !DILocation(line: 320, column: 9, scope: !808)
!830 = !DILocation(line: 320, column: 7, scope: !808)
!831 = !DILocation(line: 321, column: 6, scope: !808)
!832 = !DILocation(line: 322, column: 3, scope: !808)
!833 = !DILocation(line: 322, column: 12, scope: !658)
!834 = !DILocation(line: 322, column: 17, scope: !658)
!835 = !DILocation(line: 322, column: 14, scope: !658)
!836 = distinct !{!836, !806, !837, !268, !269}
!837 = !DILocation(line: 322, column: 22, scope: !658)
!838 = !DILocation(line: 324, column: 15, scope: !658)
!839 = !DILocation(line: 324, column: 3, scope: !658)
!840 = !DILocation(line: 324, column: 10, scope: !658)
!841 = !DILocation(line: 324, column: 13, scope: !658)
!842 = !DILocation(line: 325, column: 15, scope: !658)
!843 = !DILocation(line: 325, column: 3, scope: !658)
!844 = !DILocation(line: 325, column: 10, scope: !658)
!845 = !DILocation(line: 325, column: 13, scope: !658)
!846 = !DILocation(line: 326, column: 15, scope: !658)
!847 = !DILocation(line: 326, column: 3, scope: !658)
!848 = !DILocation(line: 326, column: 10, scope: !658)
!849 = !DILocation(line: 326, column: 13, scope: !658)
!850 = !DILocation(line: 327, column: 15, scope: !658)
!851 = !DILocation(line: 327, column: 3, scope: !658)
!852 = !DILocation(line: 327, column: 10, scope: !658)
!853 = !DILocation(line: 327, column: 13, scope: !658)
!854 = !DILocation(line: 328, column: 2, scope: !659)
!855 = !DILocation(line: 328, column: 2, scope: !658)
!856 = !DILocation(line: 330, column: 6, scope: !857)
!857 = distinct !DILexicalBlock(scope: !643, file: !3, line: 330, column: 6)
!858 = !DILocation(line: 330, column: 10, scope: !857)
!859 = !DILocation(line: 330, column: 8, scope: !857)
!860 = !DILocation(line: 330, column: 6, scope: !643)
!861 = !DILocation(line: 331, column: 10, scope: !862)
!862 = distinct !DILexicalBlock(scope: !857, file: !3, line: 330, column: 17)
!863 = !DILocation(line: 331, column: 17, scope: !862)
!864 = !DILocation(line: 331, column: 3, scope: !862)
!865 = !DILocation(line: 331, column: 24, scope: !862)
!866 = !DILocation(line: 331, column: 36, scope: !862)
!867 = !DILocation(line: 331, column: 42, scope: !862)
!868 = !DILocation(line: 331, column: 41, scope: !862)
!869 = !DILocation(line: 332, column: 31, scope: !862)
!870 = !DILocation(line: 332, column: 37, scope: !862)
!871 = !DILocation(line: 332, column: 36, scope: !862)
!872 = !DILocation(line: 332, column: 20, scope: !862)
!873 = !DILocation(line: 332, column: 3, scope: !862)
!874 = !DILocation(line: 332, column: 10, scope: !862)
!875 = !DILocation(line: 332, column: 18, scope: !862)
!876 = !DILocation(line: 333, column: 2, scope: !862)
!877 = !DILocation(line: 335, column: 2, scope: !643)
!878 = !DILocation(line: 336, column: 1, scope: !643)
!879 = distinct !DISubprogram(name: "xxh32_digest", scope: !3, file: !3, line: 339, type: !880, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{!15, !144}
!882 = !{!883, !884, !885, !886}
!883 = !DILocalVariable(name: "state", arg: 1, scope: !879, file: !3, line: 339, type: !144)
!884 = !DILocalVariable(name: "p", scope: !879, file: !3, line: 341, type: !6)
!885 = !DILocalVariable(name: "b_end", scope: !879, file: !3, line: 342, type: !194)
!886 = !DILocalVariable(name: "h32", scope: !879, file: !3, line: 344, type: !15)
!887 = !DILocation(line: 339, column: 49, scope: !879)
!888 = !DILocation(line: 341, column: 2, scope: !879)
!889 = !DILocation(line: 341, column: 17, scope: !879)
!890 = !DILocation(line: 341, column: 38, scope: !879)
!891 = !DILocation(line: 341, column: 45, scope: !879)
!892 = !DILocation(line: 342, column: 2, scope: !879)
!893 = !DILocation(line: 342, column: 23, scope: !879)
!894 = !DILocation(line: 342, column: 49, scope: !879)
!895 = !DILocation(line: 342, column: 56, scope: !879)
!896 = !DILocation(line: 342, column: 48, scope: !879)
!897 = !DILocation(line: 343, column: 3, scope: !879)
!898 = !DILocation(line: 343, column: 10, scope: !879)
!899 = !DILocation(line: 342, column: 63, scope: !879)
!900 = !DILocation(line: 344, column: 2, scope: !879)
!901 = !DILocation(line: 344, column: 11, scope: !879)
!902 = !DILocation(line: 346, column: 6, scope: !903)
!903 = distinct !DILexicalBlock(scope: !879, file: !3, line: 346, column: 6)
!904 = !DILocation(line: 346, column: 13, scope: !903)
!905 = !DILocation(line: 346, column: 6, scope: !879)
!906 = !DILocation(line: 347, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !903, file: !3, line: 346, column: 24)
!908 = !DILocation(line: 347, column: 36, scope: !907)
!909 = !DILocation(line: 347, column: 34, scope: !907)
!910 = !DILocation(line: 348, column: 4, scope: !907)
!911 = !DILocation(line: 347, column: 61, scope: !907)
!912 = !DILocation(line: 348, column: 32, scope: !907)
!913 = !DILocation(line: 348, column: 30, scope: !907)
!914 = !DILocation(line: 347, column: 7, scope: !907)
!915 = !DILocation(line: 349, column: 2, scope: !907)
!916 = !DILocation(line: 350, column: 9, scope: !917)
!917 = distinct !DILexicalBlock(scope: !903, file: !3, line: 349, column: 9)
!918 = !DILocation(line: 350, column: 16, scope: !917)
!919 = !DILocation(line: 350, column: 33, scope: !917)
!920 = !DILocation(line: 350, column: 7, scope: !917)
!921 = !DILocation(line: 353, column: 9, scope: !879)
!922 = !DILocation(line: 353, column: 16, scope: !879)
!923 = !DILocation(line: 353, column: 6, scope: !879)
!924 = !DILocation(line: 355, column: 2, scope: !879)
!925 = !DILocation(line: 355, column: 9, scope: !879)
!926 = !DILocation(line: 355, column: 11, scope: !879)
!927 = !DILocation(line: 355, column: 18, scope: !879)
!928 = !DILocation(line: 355, column: 15, scope: !879)
!929 = !DILocation(line: 356, column: 29, scope: !930)
!930 = distinct !DILexicalBlock(scope: !879, file: !3, line: 355, column: 25)
!931 = !DILocation(line: 356, column: 10, scope: !930)
!932 = !DILocation(line: 356, column: 32, scope: !930)
!933 = !DILocation(line: 356, column: 7, scope: !930)
!934 = !DILocation(line: 357, column: 9, scope: !930)
!935 = !DILocation(line: 357, column: 29, scope: !930)
!936 = !DILocation(line: 357, column: 7, scope: !930)
!937 = !DILocation(line: 358, column: 5, scope: !930)
!938 = distinct !{!938, !924, !939, !268, !269}
!939 = !DILocation(line: 359, column: 2, scope: !879)
!940 = !DILocation(line: 361, column: 2, scope: !879)
!941 = !DILocation(line: 361, column: 9, scope: !879)
!942 = !DILocation(line: 361, column: 13, scope: !879)
!943 = !DILocation(line: 361, column: 11, scope: !879)
!944 = !DILocation(line: 362, column: 12, scope: !945)
!945 = distinct !DILexicalBlock(scope: !879, file: !3, line: 361, column: 20)
!946 = !DILocation(line: 362, column: 11, scope: !945)
!947 = !DILocation(line: 362, column: 10, scope: !945)
!948 = !DILocation(line: 362, column: 15, scope: !945)
!949 = !DILocation(line: 362, column: 7, scope: !945)
!950 = !DILocation(line: 363, column: 9, scope: !945)
!951 = !DILocation(line: 363, column: 29, scope: !945)
!952 = !DILocation(line: 363, column: 7, scope: !945)
!953 = !DILocation(line: 364, column: 4, scope: !945)
!954 = distinct !{!954, !940, !955, !268, !269}
!955 = !DILocation(line: 365, column: 2, scope: !879)
!956 = !DILocation(line: 367, column: 9, scope: !879)
!957 = !DILocation(line: 367, column: 13, scope: !879)
!958 = !DILocation(line: 367, column: 6, scope: !879)
!959 = !DILocation(line: 368, column: 6, scope: !879)
!960 = !DILocation(line: 369, column: 9, scope: !879)
!961 = !DILocation(line: 369, column: 13, scope: !879)
!962 = !DILocation(line: 369, column: 6, scope: !879)
!963 = !DILocation(line: 370, column: 6, scope: !879)
!964 = !DILocation(line: 371, column: 9, scope: !879)
!965 = !DILocation(line: 371, column: 13, scope: !879)
!966 = !DILocation(line: 371, column: 6, scope: !879)
!967 = !DILocation(line: 373, column: 9, scope: !879)
!968 = !DILocation(line: 374, column: 1, scope: !879)
!969 = !DILocation(line: 373, column: 2, scope: !879)
!970 = distinct !DISubprogram(name: "xxh64_update", scope: !3, file: !3, line: 377, type: !971, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{!646, !158, !38, !183}
!973 = !{!974, !975, !976, !977, !978, !979, !983, !986, !987, !988, !989}
!974 = !DILocalVariable(name: "state", arg: 1, scope: !970, file: !3, line: 377, type: !158)
!975 = !DILocalVariable(name: "input", arg: 2, scope: !970, file: !3, line: 377, type: !38)
!976 = !DILocalVariable(name: "len", arg: 3, scope: !970, file: !3, line: 377, type: !183)
!977 = !DILocalVariable(name: "p", scope: !970, file: !3, line: 379, type: !6)
!978 = !DILocalVariable(name: "b_end", scope: !970, file: !3, line: 380, type: !194)
!979 = !DILocalVariable(name: "p64", scope: !980, file: !3, line: 394, type: !982)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 393, column: 22)
!981 = distinct !DILexicalBlock(scope: !970, file: !3, line: 393, column: 6)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!983 = !DILocalVariable(name: "limit", scope: !984, file: !3, line: 412, type: !194)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 411, column: 23)
!985 = distinct !DILexicalBlock(scope: !970, file: !3, line: 411, column: 6)
!986 = !DILocalVariable(name: "v1", scope: !984, file: !3, line: 413, type: !19)
!987 = !DILocalVariable(name: "v2", scope: !984, file: !3, line: 414, type: !19)
!988 = !DILocalVariable(name: "v3", scope: !984, file: !3, line: 415, type: !19)
!989 = !DILocalVariable(name: "v4", scope: !984, file: !3, line: 416, type: !19)
!990 = !DILocation(line: 377, column: 38, scope: !970)
!991 = !DILocation(line: 377, column: 57, scope: !970)
!992 = !DILocation(line: 377, column: 77, scope: !970)
!993 = !DILocation(line: 379, column: 2, scope: !970)
!994 = !DILocation(line: 379, column: 17, scope: !970)
!995 = !DILocation(line: 379, column: 38, scope: !970)
!996 = !DILocation(line: 380, column: 2, scope: !970)
!997 = !DILocation(line: 380, column: 23, scope: !970)
!998 = !DILocation(line: 380, column: 31, scope: !970)
!999 = !DILocation(line: 380, column: 35, scope: !970)
!1000 = !DILocation(line: 380, column: 33, scope: !970)
!1001 = !DILocation(line: 382, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !970, file: !3, line: 382, column: 6)
!1003 = !DILocation(line: 382, column: 12, scope: !1002)
!1004 = !DILocation(line: 382, column: 6, scope: !970)
!1005 = !DILocation(line: 383, column: 3, scope: !1002)
!1006 = !DILocation(line: 385, column: 22, scope: !970)
!1007 = !DILocation(line: 385, column: 2, scope: !970)
!1008 = !DILocation(line: 385, column: 9, scope: !970)
!1009 = !DILocation(line: 385, column: 19, scope: !970)
!1010 = !DILocation(line: 387, column: 6, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !970, file: !3, line: 387, column: 6)
!1012 = !DILocation(line: 387, column: 13, scope: !1011)
!1013 = !DILocation(line: 387, column: 23, scope: !1011)
!1014 = !DILocation(line: 387, column: 21, scope: !1011)
!1015 = !DILocation(line: 387, column: 27, scope: !1011)
!1016 = !DILocation(line: 387, column: 6, scope: !970)
!1017 = !DILocation(line: 388, column: 22, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 387, column: 33)
!1019 = !DILocation(line: 388, column: 29, scope: !1018)
!1020 = !DILocation(line: 388, column: 38, scope: !1018)
!1021 = !DILocation(line: 388, column: 45, scope: !1018)
!1022 = !DILocation(line: 388, column: 36, scope: !1018)
!1023 = !DILocation(line: 388, column: 54, scope: !1018)
!1024 = !DILocation(line: 388, column: 61, scope: !1018)
!1025 = !DILocation(line: 388, column: 3, scope: !1018)
!1026 = !DILocation(line: 389, column: 31, scope: !1018)
!1027 = !DILocation(line: 389, column: 21, scope: !1018)
!1028 = !DILocation(line: 389, column: 3, scope: !1018)
!1029 = !DILocation(line: 389, column: 10, scope: !1018)
!1030 = !DILocation(line: 389, column: 18, scope: !1018)
!1031 = !DILocation(line: 390, column: 3, scope: !1018)
!1032 = !DILocation(line: 393, column: 6, scope: !981)
!1033 = !DILocation(line: 393, column: 13, scope: !981)
!1034 = !DILocation(line: 393, column: 6, scope: !970)
!1035 = !DILocation(line: 394, column: 3, scope: !980)
!1036 = !DILocation(line: 394, column: 13, scope: !980)
!1037 = !DILocation(line: 394, column: 19, scope: !980)
!1038 = !DILocation(line: 394, column: 26, scope: !980)
!1039 = !DILocation(line: 396, column: 22, scope: !980)
!1040 = !DILocation(line: 396, column: 29, scope: !980)
!1041 = !DILocation(line: 396, column: 36, scope: !980)
!1042 = !DILocation(line: 396, column: 27, scope: !980)
!1043 = !DILocation(line: 396, column: 45, scope: !980)
!1044 = !DILocation(line: 397, column: 9, scope: !980)
!1045 = !DILocation(line: 397, column: 16, scope: !980)
!1046 = !DILocation(line: 397, column: 7, scope: !980)
!1047 = !DILocation(line: 397, column: 4, scope: !980)
!1048 = !DILocation(line: 396, column: 3, scope: !980)
!1049 = !DILocation(line: 399, column: 27, scope: !980)
!1050 = !DILocation(line: 399, column: 34, scope: !980)
!1051 = !DILocation(line: 399, column: 57, scope: !980)
!1052 = !DILocation(line: 399, column: 38, scope: !980)
!1053 = !DILocation(line: 399, column: 15, scope: !980)
!1054 = !DILocation(line: 399, column: 3, scope: !980)
!1055 = !DILocation(line: 399, column: 10, scope: !980)
!1056 = !DILocation(line: 399, column: 13, scope: !980)
!1057 = !DILocation(line: 400, column: 6, scope: !980)
!1058 = !DILocation(line: 401, column: 27, scope: !980)
!1059 = !DILocation(line: 401, column: 34, scope: !980)
!1060 = !DILocation(line: 401, column: 57, scope: !980)
!1061 = !DILocation(line: 401, column: 38, scope: !980)
!1062 = !DILocation(line: 401, column: 15, scope: !980)
!1063 = !DILocation(line: 401, column: 3, scope: !980)
!1064 = !DILocation(line: 401, column: 10, scope: !980)
!1065 = !DILocation(line: 401, column: 13, scope: !980)
!1066 = !DILocation(line: 402, column: 6, scope: !980)
!1067 = !DILocation(line: 403, column: 27, scope: !980)
!1068 = !DILocation(line: 403, column: 34, scope: !980)
!1069 = !DILocation(line: 403, column: 57, scope: !980)
!1070 = !DILocation(line: 403, column: 38, scope: !980)
!1071 = !DILocation(line: 403, column: 15, scope: !980)
!1072 = !DILocation(line: 403, column: 3, scope: !980)
!1073 = !DILocation(line: 403, column: 10, scope: !980)
!1074 = !DILocation(line: 403, column: 13, scope: !980)
!1075 = !DILocation(line: 404, column: 6, scope: !980)
!1076 = !DILocation(line: 405, column: 27, scope: !980)
!1077 = !DILocation(line: 405, column: 34, scope: !980)
!1078 = !DILocation(line: 405, column: 57, scope: !980)
!1079 = !DILocation(line: 405, column: 38, scope: !980)
!1080 = !DILocation(line: 405, column: 15, scope: !980)
!1081 = !DILocation(line: 405, column: 3, scope: !980)
!1082 = !DILocation(line: 405, column: 10, scope: !980)
!1083 = !DILocation(line: 405, column: 13, scope: !980)
!1084 = !DILocation(line: 407, column: 13, scope: !980)
!1085 = !DILocation(line: 407, column: 20, scope: !980)
!1086 = !DILocation(line: 407, column: 11, scope: !980)
!1087 = !DILocation(line: 407, column: 5, scope: !980)
!1088 = !DILocation(line: 408, column: 3, scope: !980)
!1089 = !DILocation(line: 408, column: 10, scope: !980)
!1090 = !DILocation(line: 408, column: 18, scope: !980)
!1091 = !DILocation(line: 409, column: 2, scope: !981)
!1092 = !DILocation(line: 409, column: 2, scope: !980)
!1093 = !DILocation(line: 411, column: 6, scope: !985)
!1094 = !DILocation(line: 411, column: 8, scope: !985)
!1095 = !DILocation(line: 411, column: 16, scope: !985)
!1096 = !DILocation(line: 411, column: 13, scope: !985)
!1097 = !DILocation(line: 411, column: 6, scope: !970)
!1098 = !DILocation(line: 412, column: 3, scope: !984)
!1099 = !DILocation(line: 412, column: 24, scope: !984)
!1100 = !DILocation(line: 412, column: 32, scope: !984)
!1101 = !DILocation(line: 412, column: 38, scope: !984)
!1102 = !DILocation(line: 413, column: 3, scope: !984)
!1103 = !DILocation(line: 413, column: 12, scope: !984)
!1104 = !DILocation(line: 413, column: 17, scope: !984)
!1105 = !DILocation(line: 413, column: 24, scope: !984)
!1106 = !DILocation(line: 414, column: 3, scope: !984)
!1107 = !DILocation(line: 414, column: 12, scope: !984)
!1108 = !DILocation(line: 414, column: 17, scope: !984)
!1109 = !DILocation(line: 414, column: 24, scope: !984)
!1110 = !DILocation(line: 415, column: 3, scope: !984)
!1111 = !DILocation(line: 415, column: 12, scope: !984)
!1112 = !DILocation(line: 415, column: 17, scope: !984)
!1113 = !DILocation(line: 415, column: 24, scope: !984)
!1114 = !DILocation(line: 416, column: 3, scope: !984)
!1115 = !DILocation(line: 416, column: 12, scope: !984)
!1116 = !DILocation(line: 416, column: 17, scope: !984)
!1117 = !DILocation(line: 416, column: 24, scope: !984)
!1118 = !DILocation(line: 418, column: 3, scope: !984)
!1119 = !DILocation(line: 419, column: 21, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !984, file: !3, line: 418, column: 6)
!1121 = !DILocation(line: 419, column: 44, scope: !1120)
!1122 = !DILocation(line: 419, column: 25, scope: !1120)
!1123 = !DILocation(line: 419, column: 9, scope: !1120)
!1124 = !DILocation(line: 419, column: 7, scope: !1120)
!1125 = !DILocation(line: 420, column: 6, scope: !1120)
!1126 = !DILocation(line: 421, column: 21, scope: !1120)
!1127 = !DILocation(line: 421, column: 44, scope: !1120)
!1128 = !DILocation(line: 421, column: 25, scope: !1120)
!1129 = !DILocation(line: 421, column: 9, scope: !1120)
!1130 = !DILocation(line: 421, column: 7, scope: !1120)
!1131 = !DILocation(line: 422, column: 6, scope: !1120)
!1132 = !DILocation(line: 423, column: 21, scope: !1120)
!1133 = !DILocation(line: 423, column: 44, scope: !1120)
!1134 = !DILocation(line: 423, column: 25, scope: !1120)
!1135 = !DILocation(line: 423, column: 9, scope: !1120)
!1136 = !DILocation(line: 423, column: 7, scope: !1120)
!1137 = !DILocation(line: 424, column: 6, scope: !1120)
!1138 = !DILocation(line: 425, column: 21, scope: !1120)
!1139 = !DILocation(line: 425, column: 44, scope: !1120)
!1140 = !DILocation(line: 425, column: 25, scope: !1120)
!1141 = !DILocation(line: 425, column: 9, scope: !1120)
!1142 = !DILocation(line: 425, column: 7, scope: !1120)
!1143 = !DILocation(line: 426, column: 6, scope: !1120)
!1144 = !DILocation(line: 427, column: 3, scope: !1120)
!1145 = !DILocation(line: 427, column: 12, scope: !984)
!1146 = !DILocation(line: 427, column: 17, scope: !984)
!1147 = !DILocation(line: 427, column: 14, scope: !984)
!1148 = distinct !{!1148, !1118, !1149, !268, !269}
!1149 = !DILocation(line: 427, column: 22, scope: !984)
!1150 = !DILocation(line: 429, column: 15, scope: !984)
!1151 = !DILocation(line: 429, column: 3, scope: !984)
!1152 = !DILocation(line: 429, column: 10, scope: !984)
!1153 = !DILocation(line: 429, column: 13, scope: !984)
!1154 = !DILocation(line: 430, column: 15, scope: !984)
!1155 = !DILocation(line: 430, column: 3, scope: !984)
!1156 = !DILocation(line: 430, column: 10, scope: !984)
!1157 = !DILocation(line: 430, column: 13, scope: !984)
!1158 = !DILocation(line: 431, column: 15, scope: !984)
!1159 = !DILocation(line: 431, column: 3, scope: !984)
!1160 = !DILocation(line: 431, column: 10, scope: !984)
!1161 = !DILocation(line: 431, column: 13, scope: !984)
!1162 = !DILocation(line: 432, column: 15, scope: !984)
!1163 = !DILocation(line: 432, column: 3, scope: !984)
!1164 = !DILocation(line: 432, column: 10, scope: !984)
!1165 = !DILocation(line: 432, column: 13, scope: !984)
!1166 = !DILocation(line: 433, column: 2, scope: !985)
!1167 = !DILocation(line: 433, column: 2, scope: !984)
!1168 = !DILocation(line: 435, column: 6, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !970, file: !3, line: 435, column: 6)
!1170 = !DILocation(line: 435, column: 10, scope: !1169)
!1171 = !DILocation(line: 435, column: 8, scope: !1169)
!1172 = !DILocation(line: 435, column: 6, scope: !970)
!1173 = !DILocation(line: 436, column: 10, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 435, column: 17)
!1175 = !DILocation(line: 436, column: 17, scope: !1174)
!1176 = !DILocation(line: 436, column: 3, scope: !1174)
!1177 = !DILocation(line: 436, column: 24, scope: !1174)
!1178 = !DILocation(line: 436, column: 36, scope: !1174)
!1179 = !DILocation(line: 436, column: 42, scope: !1174)
!1180 = !DILocation(line: 436, column: 41, scope: !1174)
!1181 = !DILocation(line: 437, column: 31, scope: !1174)
!1182 = !DILocation(line: 437, column: 39, scope: !1174)
!1183 = !DILocation(line: 437, column: 37, scope: !1174)
!1184 = !DILocation(line: 437, column: 20, scope: !1174)
!1185 = !DILocation(line: 437, column: 3, scope: !1174)
!1186 = !DILocation(line: 437, column: 10, scope: !1174)
!1187 = !DILocation(line: 437, column: 18, scope: !1174)
!1188 = !DILocation(line: 438, column: 2, scope: !1174)
!1189 = !DILocation(line: 440, column: 2, scope: !970)
!1190 = !DILocation(line: 441, column: 1, scope: !970)
!1191 = distinct !DISubprogram(name: "xxh64_digest", scope: !3, file: !3, line: 444, type: !1192, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!19, !169}
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1202, !1203, !1204, !1205}
!1195 = !DILocalVariable(name: "state", arg: 1, scope: !1191, file: !3, line: 444, type: !169)
!1196 = !DILocalVariable(name: "p", scope: !1191, file: !3, line: 446, type: !6)
!1197 = !DILocalVariable(name: "b_end", scope: !1191, file: !3, line: 447, type: !194)
!1198 = !DILocalVariable(name: "h64", scope: !1191, file: !3, line: 449, type: !19)
!1199 = !DILocalVariable(name: "v1", scope: !1200, file: !3, line: 452, type: !77)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 451, column: 30)
!1201 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 451, column: 6)
!1202 = !DILocalVariable(name: "v2", scope: !1200, file: !3, line: 453, type: !77)
!1203 = !DILocalVariable(name: "v3", scope: !1200, file: !3, line: 454, type: !77)
!1204 = !DILocalVariable(name: "v4", scope: !1200, file: !3, line: 455, type: !77)
!1205 = !DILocalVariable(name: "k1", scope: !1206, file: !3, line: 470, type: !77)
!1206 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 469, column: 25)
!1207 = !DILocation(line: 444, column: 49, scope: !1191)
!1208 = !DILocation(line: 446, column: 2, scope: !1191)
!1209 = !DILocation(line: 446, column: 17, scope: !1191)
!1210 = !DILocation(line: 446, column: 38, scope: !1191)
!1211 = !DILocation(line: 446, column: 45, scope: !1191)
!1212 = !DILocation(line: 447, column: 2, scope: !1191)
!1213 = !DILocation(line: 447, column: 23, scope: !1191)
!1214 = !DILocation(line: 447, column: 48, scope: !1191)
!1215 = !DILocation(line: 447, column: 55, scope: !1191)
!1216 = !DILocation(line: 448, column: 3, scope: !1191)
!1217 = !DILocation(line: 448, column: 10, scope: !1191)
!1218 = !DILocation(line: 447, column: 61, scope: !1191)
!1219 = !DILocation(line: 449, column: 2, scope: !1191)
!1220 = !DILocation(line: 449, column: 11, scope: !1191)
!1221 = !DILocation(line: 451, column: 6, scope: !1201)
!1222 = !DILocation(line: 451, column: 13, scope: !1201)
!1223 = !DILocation(line: 451, column: 23, scope: !1201)
!1224 = !DILocation(line: 451, column: 6, scope: !1191)
!1225 = !DILocation(line: 452, column: 3, scope: !1200)
!1226 = !DILocation(line: 452, column: 18, scope: !1200)
!1227 = !DILocation(line: 452, column: 23, scope: !1200)
!1228 = !DILocation(line: 452, column: 30, scope: !1200)
!1229 = !DILocation(line: 453, column: 3, scope: !1200)
!1230 = !DILocation(line: 453, column: 18, scope: !1200)
!1231 = !DILocation(line: 453, column: 23, scope: !1200)
!1232 = !DILocation(line: 453, column: 30, scope: !1200)
!1233 = !DILocation(line: 454, column: 3, scope: !1200)
!1234 = !DILocation(line: 454, column: 18, scope: !1200)
!1235 = !DILocation(line: 454, column: 23, scope: !1200)
!1236 = !DILocation(line: 454, column: 30, scope: !1200)
!1237 = !DILocation(line: 455, column: 3, scope: !1200)
!1238 = !DILocation(line: 455, column: 18, scope: !1200)
!1239 = !DILocation(line: 455, column: 23, scope: !1200)
!1240 = !DILocation(line: 455, column: 30, scope: !1200)
!1241 = !DILocation(line: 457, column: 9, scope: !1200)
!1242 = !DILocation(line: 457, column: 29, scope: !1200)
!1243 = !DILocation(line: 457, column: 27, scope: !1200)
!1244 = !DILocation(line: 458, column: 4, scope: !1200)
!1245 = !DILocation(line: 457, column: 47, scope: !1200)
!1246 = !DILocation(line: 458, column: 25, scope: !1200)
!1247 = !DILocation(line: 458, column: 23, scope: !1200)
!1248 = !DILocation(line: 457, column: 7, scope: !1200)
!1249 = !DILocation(line: 459, column: 27, scope: !1200)
!1250 = !DILocation(line: 459, column: 32, scope: !1200)
!1251 = !DILocation(line: 459, column: 9, scope: !1200)
!1252 = !DILocation(line: 459, column: 7, scope: !1200)
!1253 = !DILocation(line: 460, column: 27, scope: !1200)
!1254 = !DILocation(line: 460, column: 32, scope: !1200)
!1255 = !DILocation(line: 460, column: 9, scope: !1200)
!1256 = !DILocation(line: 460, column: 7, scope: !1200)
!1257 = !DILocation(line: 461, column: 27, scope: !1200)
!1258 = !DILocation(line: 461, column: 32, scope: !1200)
!1259 = !DILocation(line: 461, column: 9, scope: !1200)
!1260 = !DILocation(line: 461, column: 7, scope: !1200)
!1261 = !DILocation(line: 462, column: 27, scope: !1200)
!1262 = !DILocation(line: 462, column: 32, scope: !1200)
!1263 = !DILocation(line: 462, column: 9, scope: !1200)
!1264 = !DILocation(line: 462, column: 7, scope: !1200)
!1265 = !DILocation(line: 463, column: 2, scope: !1201)
!1266 = !DILocation(line: 463, column: 2, scope: !1200)
!1267 = !DILocation(line: 464, column: 10, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 463, column: 9)
!1269 = !DILocation(line: 464, column: 17, scope: !1268)
!1270 = !DILocation(line: 464, column: 20, scope: !1268)
!1271 = !DILocation(line: 464, column: 8, scope: !1268)
!1272 = !DILocation(line: 467, column: 19, scope: !1191)
!1273 = !DILocation(line: 467, column: 26, scope: !1191)
!1274 = !DILocation(line: 467, column: 6, scope: !1191)
!1275 = !DILocation(line: 469, column: 2, scope: !1191)
!1276 = !DILocation(line: 469, column: 9, scope: !1191)
!1277 = !DILocation(line: 469, column: 11, scope: !1191)
!1278 = !DILocation(line: 469, column: 18, scope: !1191)
!1279 = !DILocation(line: 469, column: 15, scope: !1191)
!1280 = !DILocation(line: 470, column: 3, scope: !1206)
!1281 = !DILocation(line: 470, column: 18, scope: !1206)
!1282 = !DILocation(line: 470, column: 57, scope: !1206)
!1283 = !DILocation(line: 470, column: 38, scope: !1206)
!1284 = !DILocation(line: 470, column: 23, scope: !1206)
!1285 = !DILocation(line: 472, column: 10, scope: !1206)
!1286 = !DILocation(line: 472, column: 7, scope: !1206)
!1287 = !DILocation(line: 473, column: 9, scope: !1206)
!1288 = !DILocation(line: 473, column: 29, scope: !1206)
!1289 = !DILocation(line: 473, column: 41, scope: !1206)
!1290 = !DILocation(line: 473, column: 7, scope: !1206)
!1291 = !DILocation(line: 474, column: 5, scope: !1206)
!1292 = !DILocation(line: 475, column: 2, scope: !1191)
!1293 = distinct !{!1293, !1275, !1292, !268, !269}
!1294 = !DILocation(line: 477, column: 6, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 477, column: 6)
!1296 = !DILocation(line: 477, column: 8, scope: !1295)
!1297 = !DILocation(line: 477, column: 15, scope: !1295)
!1298 = !DILocation(line: 477, column: 12, scope: !1295)
!1299 = !DILocation(line: 477, column: 6, scope: !1191)
!1300 = !DILocation(line: 478, column: 40, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 477, column: 22)
!1302 = !DILocation(line: 478, column: 21, scope: !1301)
!1303 = !DILocation(line: 478, column: 10, scope: !1301)
!1304 = !DILocation(line: 478, column: 44, scope: !1301)
!1305 = !DILocation(line: 478, column: 7, scope: !1301)
!1306 = !DILocation(line: 479, column: 9, scope: !1301)
!1307 = !DILocation(line: 479, column: 29, scope: !1301)
!1308 = !DILocation(line: 479, column: 41, scope: !1301)
!1309 = !DILocation(line: 479, column: 7, scope: !1301)
!1310 = !DILocation(line: 480, column: 5, scope: !1301)
!1311 = !DILocation(line: 481, column: 2, scope: !1301)
!1312 = !DILocation(line: 483, column: 2, scope: !1191)
!1313 = !DILocation(line: 483, column: 9, scope: !1191)
!1314 = !DILocation(line: 483, column: 13, scope: !1191)
!1315 = !DILocation(line: 483, column: 11, scope: !1191)
!1316 = !DILocation(line: 484, column: 12, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 483, column: 20)
!1318 = !DILocation(line: 484, column: 11, scope: !1317)
!1319 = !DILocation(line: 484, column: 10, scope: !1317)
!1320 = !DILocation(line: 484, column: 15, scope: !1317)
!1321 = !DILocation(line: 484, column: 7, scope: !1317)
!1322 = !DILocation(line: 485, column: 9, scope: !1317)
!1323 = !DILocation(line: 485, column: 29, scope: !1317)
!1324 = !DILocation(line: 485, column: 7, scope: !1317)
!1325 = !DILocation(line: 486, column: 4, scope: !1317)
!1326 = distinct !{!1326, !1312, !1327, !268, !269}
!1327 = !DILocation(line: 487, column: 2, scope: !1191)
!1328 = !DILocation(line: 489, column: 9, scope: !1191)
!1329 = !DILocation(line: 489, column: 13, scope: !1191)
!1330 = !DILocation(line: 489, column: 6, scope: !1191)
!1331 = !DILocation(line: 490, column: 6, scope: !1191)
!1332 = !DILocation(line: 491, column: 9, scope: !1191)
!1333 = !DILocation(line: 491, column: 13, scope: !1191)
!1334 = !DILocation(line: 491, column: 6, scope: !1191)
!1335 = !DILocation(line: 492, column: 6, scope: !1191)
!1336 = !DILocation(line: 493, column: 9, scope: !1191)
!1337 = !DILocation(line: 493, column: 13, scope: !1191)
!1338 = !DILocation(line: 493, column: 6, scope: !1191)
!1339 = !DILocation(line: 495, column: 9, scope: !1191)
!1340 = !DILocation(line: 496, column: 1, scope: !1191)
!1341 = !DILocation(line: 495, column: 2, scope: !1191)
