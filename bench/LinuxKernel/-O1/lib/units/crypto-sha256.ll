; ModuleID = 'lib/crypto/sha256.c'
source_filename = "lib/crypto/sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sha256_update: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sha256_update ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sha256_final: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sha256_final ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sha224_final: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sha224_final ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sha256: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sha256 ; .previous"

%struct.sha256_state = type { [8 x i32], i64, [64 x i8] }
%struct.anon = type { i32 }
%struct.anon.0 = type { i32 }

@__UNIQUE_ID___addressable_sha256_update197 = internal global ptr @sha256_update, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_sha256_final198 = internal global ptr @sha256_final, section ".discard.addressable", align 8, !dbg !47
@__UNIQUE_ID___addressable_sha224_final199 = internal global ptr @sha224_final, section ".discard.addressable", align 8, !dbg !49
@__UNIQUE_ID___addressable_sha256200 = internal global ptr @sha256, section ".discard.addressable", align 8, !dbg !51
@__UNIQUE_ID_file201 = internal constant [36 x i8] c"libsha256.file=lib/crypto/libsha256\00", section ".modinfo", align 1, !dbg !53
@__UNIQUE_ID_license202 = internal constant [22 x i8] c"libsha256.license=GPL\00", section ".modinfo", align 1, !dbg !60
@SHA256_K = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16, !dbg !65
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_sha256_update197, ptr @__UNIQUE_ID___addressable_sha256_final198, ptr @__UNIQUE_ID___addressable_sha224_final199, ptr @__UNIQUE_ID___addressable_sha256200, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sha256_update(ptr noundef %sctx, ptr noundef %data, i32 noundef %len) #0 align 16 !dbg !80 {
entry:
  %sctx.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %sctx, ptr %sctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sctx.addr, metadata !101, metadata !DIExpression()), !dbg !104
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !102, metadata !DIExpression()), !dbg !105
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !103, metadata !DIExpression()), !dbg !106
  %0 = load ptr, ptr %sctx.addr, align 8, !dbg !107
  %1 = load ptr, ptr %data.addr, align 8, !dbg !108
  %2 = load i32, ptr %len.addr, align 4, !dbg !109
  %call = call i32 @lib_sha256_base_do_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef @sha256_transform_blocks) #7, !dbg !110
  ret void, !dbg !111
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lib_sha256_base_do_update(ptr noundef %sctx, ptr noundef %data, i32 noundef %len, ptr noundef %block_fn) #2 align 16 !dbg !112 {
entry:
  %sctx.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %block_fn.addr = alloca ptr, align 8
  %partial = alloca i32, align 4
  %blocks = alloca i32, align 4
  %p = alloca i32, align 4
  store ptr %sctx, ptr %sctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sctx.addr, metadata !122, metadata !DIExpression()), !dbg !133
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !123, metadata !DIExpression()), !dbg !134
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !124, metadata !DIExpression()), !dbg !135
  store ptr %block_fn, ptr %block_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block_fn.addr, metadata !125, metadata !DIExpression()), !dbg !136
  call void @llvm.lifetime.start.p0(i64 4, ptr %partial) #8, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %partial, metadata !126, metadata !DIExpression()), !dbg !138
  %0 = load ptr, ptr %sctx.addr, align 8, !dbg !139
  %count = getelementptr inbounds %struct.sha256_state, ptr %0, i32 0, i32 1, !dbg !140
  %1 = load i64, ptr %count, align 8, !dbg !140
  %rem = urem i64 %1, 64, !dbg !141
  %conv = trunc i64 %rem to i32, !dbg !139
  store i32 %conv, ptr %partial, align 4, !dbg !138
  %2 = load i32, ptr %len.addr, align 4, !dbg !142
  %conv1 = zext i32 %2 to i64, !dbg !142
  %3 = load ptr, ptr %sctx.addr, align 8, !dbg !143
  %count2 = getelementptr inbounds %struct.sha256_state, ptr %3, i32 0, i32 1, !dbg !144
  %4 = load i64, ptr %count2, align 8, !dbg !145
  %add = add i64 %4, %conv1, !dbg !145
  store i64 %add, ptr %count2, align 8, !dbg !145
  %5 = load i32, ptr %partial, align 4, !dbg !146
  %6 = load i32, ptr %len.addr, align 4, !dbg !146
  %add3 = add i32 %5, %6, !dbg !146
  %cmp = icmp uge i32 %add3, 64, !dbg !146
  %lnot = xor i1 %cmp, true, !dbg !146
  %lnot5 = xor i1 %lnot, true, !dbg !146
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !146
  %conv6 = sext i32 %lnot.ext to i64, !dbg !146
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !146
  %tobool = icmp ne i64 %expval, 0, !dbg !146
  br i1 %tobool, label %if.then, label %if.end21, !dbg !147

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %blocks) #8, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %blocks, metadata !127, metadata !DIExpression()), !dbg !149
  %7 = load i32, ptr %partial, align 4, !dbg !150
  %tobool7 = icmp ne i32 %7, 0, !dbg !150
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !151

if.then8:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #8, !dbg !152
  call void @llvm.dbg.declare(metadata ptr %p, metadata !130, metadata !DIExpression()), !dbg !153
  %8 = load i32, ptr %partial, align 4, !dbg !154
  %sub = sub i32 64, %8, !dbg !155
  store i32 %sub, ptr %p, align 4, !dbg !153
  %9 = load ptr, ptr %sctx.addr, align 8, !dbg !156
  %buf = getelementptr inbounds %struct.sha256_state, ptr %9, i32 0, i32 2, !dbg !157
  %arraydecay = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0, !dbg !156
  %10 = load i32, ptr %partial, align 4, !dbg !158
  %idx.ext = zext i32 %10 to i64, !dbg !159
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !159
  %11 = load ptr, ptr %data.addr, align 8, !dbg !160
  %12 = load i32, ptr %p, align 4, !dbg !161
  %conv9 = sext i32 %12 to i64, !dbg !161
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %11, i64 %conv9, i1 false), !dbg !162
  %13 = load i32, ptr %p, align 4, !dbg !163
  %14 = load ptr, ptr %data.addr, align 8, !dbg !164
  %idx.ext10 = sext i32 %13 to i64, !dbg !164
  %add.ptr11 = getelementptr i8, ptr %14, i64 %idx.ext10, !dbg !164
  store ptr %add.ptr11, ptr %data.addr, align 8, !dbg !164
  %15 = load i32, ptr %p, align 4, !dbg !165
  %16 = load i32, ptr %len.addr, align 4, !dbg !166
  %sub12 = sub i32 %16, %15, !dbg !166
  store i32 %sub12, ptr %len.addr, align 4, !dbg !166
  %17 = load ptr, ptr %block_fn.addr, align 8, !dbg !167
  %18 = load ptr, ptr %sctx.addr, align 8, !dbg !168
  %19 = load ptr, ptr %sctx.addr, align 8, !dbg !169
  %buf13 = getelementptr inbounds %struct.sha256_state, ptr %19, i32 0, i32 2, !dbg !170
  %arraydecay14 = getelementptr inbounds [64 x i8], ptr %buf13, i64 0, i64 0, !dbg !169
  call void %17(ptr noundef %18, ptr noundef %arraydecay14, i32 noundef 1) #7, !dbg !167
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #8, !dbg !171
  br label %if.end, !dbg !172

if.end:                                           ; preds = %if.then8, %if.then
  %20 = load i32, ptr %len.addr, align 4, !dbg !173
  %div = udiv i32 %20, 64, !dbg !174
  store i32 %div, ptr %blocks, align 4, !dbg !175
  %21 = load i32, ptr %len.addr, align 4, !dbg !176
  %rem15 = urem i32 %21, 64, !dbg !176
  store i32 %rem15, ptr %len.addr, align 4, !dbg !176
  %22 = load i32, ptr %blocks, align 4, !dbg !177
  %tobool16 = icmp ne i32 %22, 0, !dbg !177
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !179

if.then17:                                        ; preds = %if.end
  %23 = load ptr, ptr %block_fn.addr, align 8, !dbg !180
  %24 = load ptr, ptr %sctx.addr, align 8, !dbg !182
  %25 = load ptr, ptr %data.addr, align 8, !dbg !183
  %26 = load i32, ptr %blocks, align 4, !dbg !184
  call void %23(ptr noundef %24, ptr noundef %25, i32 noundef %26) #7, !dbg !180
  %27 = load i32, ptr %blocks, align 4, !dbg !185
  %mul = mul i32 %27, 64, !dbg !186
  %28 = load ptr, ptr %data.addr, align 8, !dbg !187
  %idx.ext18 = sext i32 %mul to i64, !dbg !187
  %add.ptr19 = getelementptr i8, ptr %28, i64 %idx.ext18, !dbg !187
  store ptr %add.ptr19, ptr %data.addr, align 8, !dbg !187
  br label %if.end20, !dbg !188

if.end20:                                         ; preds = %if.then17, %if.end
  store i32 0, ptr %partial, align 4, !dbg !189
  call void @llvm.lifetime.end.p0(i64 4, ptr %blocks) #8, !dbg !190
  br label %if.end21, !dbg !191

if.end21:                                         ; preds = %if.end20, %entry
  %29 = load i32, ptr %len.addr, align 4, !dbg !192
  %tobool22 = icmp ne i32 %29, 0, !dbg !192
  br i1 %tobool22, label %if.then23, label %if.end29, !dbg !194

if.then23:                                        ; preds = %if.end21
  %30 = load ptr, ptr %sctx.addr, align 8, !dbg !195
  %buf24 = getelementptr inbounds %struct.sha256_state, ptr %30, i32 0, i32 2, !dbg !196
  %arraydecay25 = getelementptr inbounds [64 x i8], ptr %buf24, i64 0, i64 0, !dbg !195
  %31 = load i32, ptr %partial, align 4, !dbg !197
  %idx.ext26 = zext i32 %31 to i64, !dbg !198
  %add.ptr27 = getelementptr i8, ptr %arraydecay25, i64 %idx.ext26, !dbg !198
  %32 = load ptr, ptr %data.addr, align 8, !dbg !199
  %33 = load i32, ptr %len.addr, align 4, !dbg !200
  %conv28 = zext i32 %33 to i64, !dbg !200
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr27, ptr align 1 %32, i64 %conv28, i1 false), !dbg !201
  br label %if.end29, !dbg !201

if.end29:                                         ; preds = %if.then23, %if.end21
  call void @llvm.lifetime.end.p0(i64 4, ptr %partial) #8, !dbg !202
  ret i32 0, !dbg !203
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sha256_transform_blocks(ptr noundef %sctx, ptr noundef %input, i32 noundef %blocks) #0 align 16 !dbg !204 {
entry:
  %sctx.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %blocks.addr = alloca i32, align 4
  %W = alloca [64 x i32], align 16
  store ptr %sctx, ptr %sctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sctx.addr, metadata !206, metadata !DIExpression()), !dbg !211
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !207, metadata !DIExpression()), !dbg !212
  store i32 %blocks, ptr %blocks.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blocks.addr, metadata !208, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 256, ptr %W) #8, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %W, metadata !209, metadata !DIExpression()), !dbg !215
  br label %do.body, !dbg !216

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %sctx.addr, align 8, !dbg !217
  %state = getelementptr inbounds %struct.sha256_state, ptr %0, i32 0, i32 0, !dbg !219
  %arraydecay = getelementptr inbounds [8 x i32], ptr %state, i64 0, i64 0, !dbg !217
  %1 = load ptr, ptr %input.addr, align 8, !dbg !220
  %arraydecay1 = getelementptr inbounds [64 x i32], ptr %W, i64 0, i64 0, !dbg !221
  call void @sha256_transform(ptr noundef %arraydecay, ptr noundef %1, ptr noundef %arraydecay1) #7, !dbg !222
  %2 = load ptr, ptr %input.addr, align 8, !dbg !223
  %add.ptr = getelementptr i8, ptr %2, i64 64, !dbg !223
  store ptr %add.ptr, ptr %input.addr, align 8, !dbg !223
  br label %do.cond, !dbg !224

do.cond:                                          ; preds = %do.body
  %3 = load i32, ptr %blocks.addr, align 4, !dbg !225
  %dec = add i32 %3, -1, !dbg !225
  store i32 %dec, ptr %blocks.addr, align 4, !dbg !225
  %tobool = icmp ne i32 %dec, 0, !dbg !224
  br i1 %tobool, label %do.body, label %do.end, !dbg !224, !llvm.loop !226

do.end:                                           ; preds = %do.cond
  %arraydecay2 = getelementptr inbounds [64 x i32], ptr %W, i64 0, i64 0, !dbg !230
  call void @memzero_explicit(ptr noundef %arraydecay2, i64 noundef 256) #7, !dbg !231
  call void @llvm.lifetime.end.p0(i64 256, ptr %W) #8, !dbg !232
  ret void, !dbg !232
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sha256_final(ptr noundef %sctx, ptr noundef %out) #0 align 16 !dbg !233 {
entry:
  %sctx.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %sctx, ptr %sctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sctx.addr, metadata !238, metadata !DIExpression()), !dbg !240
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !239, metadata !DIExpression()), !dbg !241
  %0 = load ptr, ptr %sctx.addr, align 8, !dbg !242
  %1 = load ptr, ptr %out.addr, align 8, !dbg !243
  call void @__sha256_final(ptr noundef %0, ptr noundef %1, i32 noundef 32) #7, !dbg !244
  ret void, !dbg !245
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__sha256_final(ptr noundef %sctx, ptr noundef %out, i32 noundef %digest_size) #0 align 16 !dbg !246 {
entry:
  %sctx.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %digest_size.addr = alloca i32, align 4
  store ptr %sctx, ptr %sctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sctx.addr, metadata !250, metadata !DIExpression()), !dbg !253
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !251, metadata !DIExpression()), !dbg !254
  store i32 %digest_size, ptr %digest_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %digest_size.addr, metadata !252, metadata !DIExpression()), !dbg !255
  %0 = load ptr, ptr %sctx.addr, align 8, !dbg !256
  %call = call i32 @lib_sha256_base_do_finalize(ptr noundef %0, ptr noundef @sha256_transform_blocks) #7, !dbg !257
  %1 = load ptr, ptr %sctx.addr, align 8, !dbg !258
  %2 = load ptr, ptr %out.addr, align 8, !dbg !259
  %3 = load i32, ptr %digest_size.addr, align 4, !dbg !260
  %call1 = call i32 @lib_sha256_base_finish(ptr noundef %1, ptr noundef %2, i32 noundef %3) #7, !dbg !261
  ret void, !dbg !262
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sha224_final(ptr noundef %sctx, ptr noundef %out) #0 align 16 !dbg !263 {
entry:
  %sctx.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %sctx, ptr %sctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sctx.addr, metadata !265, metadata !DIExpression()), !dbg !267
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !266, metadata !DIExpression()), !dbg !268
  %0 = load ptr, ptr %sctx.addr, align 8, !dbg !269
  %1 = load ptr, ptr %out.addr, align 8, !dbg !270
  call void @__sha256_final(ptr noundef %0, ptr noundef %1, i32 noundef 28) #7, !dbg !271
  ret void, !dbg !272
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sha256(ptr noundef %data, i32 noundef %len, ptr noundef %out) #0 align 16 !dbg !273 {
entry:
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %sctx = alloca %struct.sha256_state, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !277, metadata !DIExpression()), !dbg !281
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !278, metadata !DIExpression()), !dbg !282
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !279, metadata !DIExpression()), !dbg !283
  call void @llvm.lifetime.start.p0(i64 104, ptr %sctx) #8, !dbg !284
  call void @llvm.dbg.declare(metadata ptr %sctx, metadata !280, metadata !DIExpression()), !dbg !285
  call void @sha256_init(ptr noundef %sctx) #7, !dbg !286
  %0 = load ptr, ptr %data.addr, align 8, !dbg !287
  %1 = load i32, ptr %len.addr, align 4, !dbg !288
  call void @sha256_update(ptr noundef %sctx, ptr noundef %0, i32 noundef %1) #7, !dbg !289
  %2 = load ptr, ptr %out.addr, align 8, !dbg !290
  call void @sha256_final(ptr noundef %sctx, ptr noundef %2) #7, !dbg !291
  call void @llvm.lifetime.end.p0(i64 104, ptr %sctx) #8, !dbg !292
  ret void, !dbg !292
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sha256_init(ptr noundef %sctx) #2 align 16 !dbg !293 {
entry:
  %sctx.addr = alloca ptr, align 8
  store ptr %sctx, ptr %sctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sctx.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load ptr, ptr %sctx.addr, align 8, !dbg !299
  %state = getelementptr inbounds %struct.sha256_state, ptr %0, i32 0, i32 0, !dbg !300
  %arrayidx = getelementptr [8 x i32], ptr %state, i64 0, i64 0, !dbg !299
  store i32 1779033703, ptr %arrayidx, align 8, !dbg !301
  %1 = load ptr, ptr %sctx.addr, align 8, !dbg !302
  %state1 = getelementptr inbounds %struct.sha256_state, ptr %1, i32 0, i32 0, !dbg !303
  %arrayidx2 = getelementptr [8 x i32], ptr %state1, i64 0, i64 1, !dbg !302
  store i32 -1150833019, ptr %arrayidx2, align 4, !dbg !304
  %2 = load ptr, ptr %sctx.addr, align 8, !dbg !305
  %state3 = getelementptr inbounds %struct.sha256_state, ptr %2, i32 0, i32 0, !dbg !306
  %arrayidx4 = getelementptr [8 x i32], ptr %state3, i64 0, i64 2, !dbg !305
  store i32 1013904242, ptr %arrayidx4, align 8, !dbg !307
  %3 = load ptr, ptr %sctx.addr, align 8, !dbg !308
  %state5 = getelementptr inbounds %struct.sha256_state, ptr %3, i32 0, i32 0, !dbg !309
  %arrayidx6 = getelementptr [8 x i32], ptr %state5, i64 0, i64 3, !dbg !308
  store i32 -1521486534, ptr %arrayidx6, align 4, !dbg !310
  %4 = load ptr, ptr %sctx.addr, align 8, !dbg !311
  %state7 = getelementptr inbounds %struct.sha256_state, ptr %4, i32 0, i32 0, !dbg !312
  %arrayidx8 = getelementptr [8 x i32], ptr %state7, i64 0, i64 4, !dbg !311
  store i32 1359893119, ptr %arrayidx8, align 8, !dbg !313
  %5 = load ptr, ptr %sctx.addr, align 8, !dbg !314
  %state9 = getelementptr inbounds %struct.sha256_state, ptr %5, i32 0, i32 0, !dbg !315
  %arrayidx10 = getelementptr [8 x i32], ptr %state9, i64 0, i64 5, !dbg !314
  store i32 -1694144372, ptr %arrayidx10, align 4, !dbg !316
  %6 = load ptr, ptr %sctx.addr, align 8, !dbg !317
  %state11 = getelementptr inbounds %struct.sha256_state, ptr %6, i32 0, i32 0, !dbg !318
  %arrayidx12 = getelementptr [8 x i32], ptr %state11, i64 0, i64 6, !dbg !317
  store i32 528734635, ptr %arrayidx12, align 8, !dbg !319
  %7 = load ptr, ptr %sctx.addr, align 8, !dbg !320
  %state13 = getelementptr inbounds %struct.sha256_state, ptr %7, i32 0, i32 0, !dbg !321
  %arrayidx14 = getelementptr [8 x i32], ptr %state13, i64 0, i64 7, !dbg !320
  store i32 1541459225, ptr %arrayidx14, align 4, !dbg !322
  %8 = load ptr, ptr %sctx.addr, align 8, !dbg !323
  %count = getelementptr inbounds %struct.sha256_state, ptr %8, i32 0, i32 1, !dbg !324
  store i64 0, ptr %count, align 8, !dbg !325
  ret void, !dbg !326
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sha256_transform(ptr noundef %state, ptr noundef %input, ptr noundef %W) #0 align 16 !dbg !327 {
entry:
  %state.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %W.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t156 = alloca i32, align 4
  %t257 = alloca i32, align 4
  %t186 = alloca i32, align 4
  %t287 = alloca i32, align 4
  %t1116 = alloca i32, align 4
  %t2117 = alloca i32, align 4
  %t1146 = alloca i32, align 4
  %t2147 = alloca i32, align 4
  %t1176 = alloca i32, align 4
  %t2177 = alloca i32, align 4
  %t1206 = alloca i32, align 4
  %t2207 = alloca i32, align 4
  %t1236 = alloca i32, align 4
  %t2237 = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !332, metadata !DIExpression()), !dbg !371
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !333, metadata !DIExpression()), !dbg !372
  store ptr %W, ptr %W.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %W.addr, metadata !334, metadata !DIExpression()), !dbg !373
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #8, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %a, metadata !335, metadata !DIExpression()), !dbg !375
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #8, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %b, metadata !336, metadata !DIExpression()), !dbg !376
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #8, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %c, metadata !337, metadata !DIExpression()), !dbg !377
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #8, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %d, metadata !338, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #8, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %e, metadata !339, metadata !DIExpression()), !dbg !379
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #8, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %f, metadata !340, metadata !DIExpression()), !dbg !380
  call void @llvm.lifetime.start.p0(i64 4, ptr %g) #8, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %g, metadata !341, metadata !DIExpression()), !dbg !381
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #8, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %h, metadata !342, metadata !DIExpression()), !dbg !382
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %i, metadata !343, metadata !DIExpression()), !dbg !384
  store i32 0, ptr %i, align 4, !dbg !385
  br label %for.cond, !dbg !387

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !388
  %cmp = icmp slt i32 %0, 16, !dbg !390
  br i1 %cmp, label %for.body, label %for.end, !dbg !391

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !392
  %add = add i32 %1, 0, !dbg !394
  %2 = load ptr, ptr %W.addr, align 8, !dbg !395
  %3 = load ptr, ptr %input.addr, align 8, !dbg !396
  call void @LOAD_OP(i32 noundef %add, ptr noundef %2, ptr noundef %3) #7, !dbg !397
  %4 = load i32, ptr %i, align 4, !dbg !398
  %add1 = add i32 %4, 1, !dbg !399
  %5 = load ptr, ptr %W.addr, align 8, !dbg !400
  %6 = load ptr, ptr %input.addr, align 8, !dbg !401
  call void @LOAD_OP(i32 noundef %add1, ptr noundef %5, ptr noundef %6) #7, !dbg !402
  %7 = load i32, ptr %i, align 4, !dbg !403
  %add2 = add i32 %7, 2, !dbg !404
  %8 = load ptr, ptr %W.addr, align 8, !dbg !405
  %9 = load ptr, ptr %input.addr, align 8, !dbg !406
  call void @LOAD_OP(i32 noundef %add2, ptr noundef %8, ptr noundef %9) #7, !dbg !407
  %10 = load i32, ptr %i, align 4, !dbg !408
  %add3 = add i32 %10, 3, !dbg !409
  %11 = load ptr, ptr %W.addr, align 8, !dbg !410
  %12 = load ptr, ptr %input.addr, align 8, !dbg !411
  call void @LOAD_OP(i32 noundef %add3, ptr noundef %11, ptr noundef %12) #7, !dbg !412
  %13 = load i32, ptr %i, align 4, !dbg !413
  %add4 = add i32 %13, 4, !dbg !414
  %14 = load ptr, ptr %W.addr, align 8, !dbg !415
  %15 = load ptr, ptr %input.addr, align 8, !dbg !416
  call void @LOAD_OP(i32 noundef %add4, ptr noundef %14, ptr noundef %15) #7, !dbg !417
  %16 = load i32, ptr %i, align 4, !dbg !418
  %add5 = add i32 %16, 5, !dbg !419
  %17 = load ptr, ptr %W.addr, align 8, !dbg !420
  %18 = load ptr, ptr %input.addr, align 8, !dbg !421
  call void @LOAD_OP(i32 noundef %add5, ptr noundef %17, ptr noundef %18) #7, !dbg !422
  %19 = load i32, ptr %i, align 4, !dbg !423
  %add6 = add i32 %19, 6, !dbg !424
  %20 = load ptr, ptr %W.addr, align 8, !dbg !425
  %21 = load ptr, ptr %input.addr, align 8, !dbg !426
  call void @LOAD_OP(i32 noundef %add6, ptr noundef %20, ptr noundef %21) #7, !dbg !427
  %22 = load i32, ptr %i, align 4, !dbg !428
  %add7 = add i32 %22, 7, !dbg !429
  %23 = load ptr, ptr %W.addr, align 8, !dbg !430
  %24 = load ptr, ptr %input.addr, align 8, !dbg !431
  call void @LOAD_OP(i32 noundef %add7, ptr noundef %23, ptr noundef %24) #7, !dbg !432
  br label %for.inc, !dbg !433

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4, !dbg !434
  %add8 = add i32 %25, 8, !dbg !434
  store i32 %add8, ptr %i, align 4, !dbg !434
  br label %for.cond, !dbg !435, !llvm.loop !436

for.end:                                          ; preds = %for.cond
  store i32 16, ptr %i, align 4, !dbg !438
  br label %for.cond9, !dbg !440

for.cond9:                                        ; preds = %for.inc20, %for.end
  %26 = load i32, ptr %i, align 4, !dbg !441
  %cmp10 = icmp slt i32 %26, 64, !dbg !443
  br i1 %cmp10, label %for.body11, label %for.end22, !dbg !444

for.body11:                                       ; preds = %for.cond9
  %27 = load i32, ptr %i, align 4, !dbg !445
  %add12 = add i32 %27, 0, !dbg !447
  %28 = load ptr, ptr %W.addr, align 8, !dbg !448
  call void @BLEND_OP(i32 noundef %add12, ptr noundef %28) #7, !dbg !449
  %29 = load i32, ptr %i, align 4, !dbg !450
  %add13 = add i32 %29, 1, !dbg !451
  %30 = load ptr, ptr %W.addr, align 8, !dbg !452
  call void @BLEND_OP(i32 noundef %add13, ptr noundef %30) #7, !dbg !453
  %31 = load i32, ptr %i, align 4, !dbg !454
  %add14 = add i32 %31, 2, !dbg !455
  %32 = load ptr, ptr %W.addr, align 8, !dbg !456
  call void @BLEND_OP(i32 noundef %add14, ptr noundef %32) #7, !dbg !457
  %33 = load i32, ptr %i, align 4, !dbg !458
  %add15 = add i32 %33, 3, !dbg !459
  %34 = load ptr, ptr %W.addr, align 8, !dbg !460
  call void @BLEND_OP(i32 noundef %add15, ptr noundef %34) #7, !dbg !461
  %35 = load i32, ptr %i, align 4, !dbg !462
  %add16 = add i32 %35, 4, !dbg !463
  %36 = load ptr, ptr %W.addr, align 8, !dbg !464
  call void @BLEND_OP(i32 noundef %add16, ptr noundef %36) #7, !dbg !465
  %37 = load i32, ptr %i, align 4, !dbg !466
  %add17 = add i32 %37, 5, !dbg !467
  %38 = load ptr, ptr %W.addr, align 8, !dbg !468
  call void @BLEND_OP(i32 noundef %add17, ptr noundef %38) #7, !dbg !469
  %39 = load i32, ptr %i, align 4, !dbg !470
  %add18 = add i32 %39, 6, !dbg !471
  %40 = load ptr, ptr %W.addr, align 8, !dbg !472
  call void @BLEND_OP(i32 noundef %add18, ptr noundef %40) #7, !dbg !473
  %41 = load i32, ptr %i, align 4, !dbg !474
  %add19 = add i32 %41, 7, !dbg !475
  %42 = load ptr, ptr %W.addr, align 8, !dbg !476
  call void @BLEND_OP(i32 noundef %add19, ptr noundef %42) #7, !dbg !477
  br label %for.inc20, !dbg !478

for.inc20:                                        ; preds = %for.body11
  %43 = load i32, ptr %i, align 4, !dbg !479
  %add21 = add i32 %43, 8, !dbg !479
  store i32 %add21, ptr %i, align 4, !dbg !479
  br label %for.cond9, !dbg !480, !llvm.loop !481

for.end22:                                        ; preds = %for.cond9
  %44 = load ptr, ptr %state.addr, align 8, !dbg !483
  %arrayidx = getelementptr i32, ptr %44, i64 0, !dbg !483
  %45 = load i32, ptr %arrayidx, align 4, !dbg !483
  store i32 %45, ptr %a, align 4, !dbg !484
  %46 = load ptr, ptr %state.addr, align 8, !dbg !485
  %arrayidx23 = getelementptr i32, ptr %46, i64 1, !dbg !485
  %47 = load i32, ptr %arrayidx23, align 4, !dbg !485
  store i32 %47, ptr %b, align 4, !dbg !486
  %48 = load ptr, ptr %state.addr, align 8, !dbg !487
  %arrayidx24 = getelementptr i32, ptr %48, i64 2, !dbg !487
  %49 = load i32, ptr %arrayidx24, align 4, !dbg !487
  store i32 %49, ptr %c, align 4, !dbg !488
  %50 = load ptr, ptr %state.addr, align 8, !dbg !489
  %arrayidx25 = getelementptr i32, ptr %50, i64 3, !dbg !489
  %51 = load i32, ptr %arrayidx25, align 4, !dbg !489
  store i32 %51, ptr %d, align 4, !dbg !490
  %52 = load ptr, ptr %state.addr, align 8, !dbg !491
  %arrayidx26 = getelementptr i32, ptr %52, i64 4, !dbg !491
  %53 = load i32, ptr %arrayidx26, align 4, !dbg !491
  store i32 %53, ptr %e, align 4, !dbg !492
  %54 = load ptr, ptr %state.addr, align 8, !dbg !493
  %arrayidx27 = getelementptr i32, ptr %54, i64 5, !dbg !493
  %55 = load i32, ptr %arrayidx27, align 4, !dbg !493
  store i32 %55, ptr %f, align 4, !dbg !494
  %56 = load ptr, ptr %state.addr, align 8, !dbg !495
  %arrayidx28 = getelementptr i32, ptr %56, i64 6, !dbg !495
  %57 = load i32, ptr %arrayidx28, align 4, !dbg !495
  store i32 %57, ptr %g, align 4, !dbg !496
  %58 = load ptr, ptr %state.addr, align 8, !dbg !497
  %arrayidx29 = getelementptr i32, ptr %58, i64 7, !dbg !497
  %59 = load i32, ptr %arrayidx29, align 4, !dbg !497
  store i32 %59, ptr %h, align 4, !dbg !498
  store i32 0, ptr %i, align 4, !dbg !499
  br label %for.cond30, !dbg !500

for.cond30:                                       ; preds = %for.inc265, %for.end22
  %60 = load i32, ptr %i, align 4, !dbg !501
  %cmp31 = icmp slt i32 %60, 64, !dbg !502
  br i1 %cmp31, label %for.body32, label %for.end267, !dbg !503

for.body32:                                       ; preds = %for.cond30
  br label %do.body, !dbg !504

do.body:                                          ; preds = %for.body32
  call void @llvm.lifetime.start.p0(i64 4, ptr %t1) #8, !dbg !505
  call void @llvm.dbg.declare(metadata ptr %t1, metadata !344, metadata !DIExpression()), !dbg !505
  call void @llvm.lifetime.start.p0(i64 4, ptr %t2) #8, !dbg !505
  call void @llvm.dbg.declare(metadata ptr %t2, metadata !349, metadata !DIExpression()), !dbg !505
  %61 = load i32, ptr %h, align 4, !dbg !505
  %62 = load i32, ptr %e, align 4, !dbg !505
  %call = call i32 @ror32(i32 noundef %62, i32 noundef 6) #7, !dbg !505
  %63 = load i32, ptr %e, align 4, !dbg !505
  %call33 = call i32 @ror32(i32 noundef %63, i32 noundef 11) #7, !dbg !505
  %xor = xor i32 %call, %call33, !dbg !505
  %64 = load i32, ptr %e, align 4, !dbg !505
  %call34 = call i32 @ror32(i32 noundef %64, i32 noundef 25) #7, !dbg !505
  %xor35 = xor i32 %xor, %call34, !dbg !505
  %add36 = add i32 %61, %xor35, !dbg !505
  %65 = load i32, ptr %e, align 4, !dbg !505
  %66 = load i32, ptr %f, align 4, !dbg !505
  %67 = load i32, ptr %g, align 4, !dbg !505
  %call37 = call i32 @Ch(i32 noundef %65, i32 noundef %66, i32 noundef %67) #7, !dbg !505
  %add38 = add i32 %add36, %call37, !dbg !505
  %68 = load i32, ptr %i, align 4, !dbg !505
  %add39 = add i32 %68, 0, !dbg !505
  %idxprom = sext i32 %add39 to i64, !dbg !505
  %arrayidx40 = getelementptr [64 x i32], ptr @SHA256_K, i64 0, i64 %idxprom, !dbg !505
  %69 = load i32, ptr %arrayidx40, align 4, !dbg !505
  %add41 = add i32 %add38, %69, !dbg !505
  %70 = load ptr, ptr %W.addr, align 8, !dbg !505
  %71 = load i32, ptr %i, align 4, !dbg !505
  %add42 = add i32 %71, 0, !dbg !505
  %idxprom43 = sext i32 %add42 to i64, !dbg !505
  %arrayidx44 = getelementptr i32, ptr %70, i64 %idxprom43, !dbg !505
  %72 = load i32, ptr %arrayidx44, align 4, !dbg !505
  %add45 = add i32 %add41, %72, !dbg !505
  store i32 %add45, ptr %t1, align 4, !dbg !505
  %73 = load i32, ptr %a, align 4, !dbg !505
  %call46 = call i32 @ror32(i32 noundef %73, i32 noundef 2) #7, !dbg !505
  %74 = load i32, ptr %a, align 4, !dbg !505
  %call47 = call i32 @ror32(i32 noundef %74, i32 noundef 13) #7, !dbg !505
  %xor48 = xor i32 %call46, %call47, !dbg !505
  %75 = load i32, ptr %a, align 4, !dbg !505
  %call49 = call i32 @ror32(i32 noundef %75, i32 noundef 22) #7, !dbg !505
  %xor50 = xor i32 %xor48, %call49, !dbg !505
  %76 = load i32, ptr %a, align 4, !dbg !505
  %77 = load i32, ptr %b, align 4, !dbg !505
  %78 = load i32, ptr %c, align 4, !dbg !505
  %call51 = call i32 @Maj(i32 noundef %76, i32 noundef %77, i32 noundef %78) #7, !dbg !505
  %add52 = add i32 %xor50, %call51, !dbg !505
  store i32 %add52, ptr %t2, align 4, !dbg !505
  %79 = load i32, ptr %t1, align 4, !dbg !505
  %80 = load i32, ptr %d, align 4, !dbg !505
  %add53 = add i32 %80, %79, !dbg !505
  store i32 %add53, ptr %d, align 4, !dbg !505
  %81 = load i32, ptr %t1, align 4, !dbg !505
  %82 = load i32, ptr %t2, align 4, !dbg !505
  %add54 = add i32 %81, %82, !dbg !505
  store i32 %add54, ptr %h, align 4, !dbg !505
  call void @llvm.lifetime.end.p0(i64 4, ptr %t2) #8, !dbg !504
  call void @llvm.lifetime.end.p0(i64 4, ptr %t1) #8, !dbg !504
  br label %do.cond, !dbg !505

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !505

do.end:                                           ; preds = %do.cond
  br label %do.body55, !dbg !506

do.body55:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %t156) #8, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %t156, metadata !350, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0(i64 4, ptr %t257) #8, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %t257, metadata !352, metadata !DIExpression()), !dbg !507
  %83 = load i32, ptr %g, align 4, !dbg !507
  %84 = load i32, ptr %d, align 4, !dbg !507
  %call58 = call i32 @ror32(i32 noundef %84, i32 noundef 6) #7, !dbg !507
  %85 = load i32, ptr %d, align 4, !dbg !507
  %call59 = call i32 @ror32(i32 noundef %85, i32 noundef 11) #7, !dbg !507
  %xor60 = xor i32 %call58, %call59, !dbg !507
  %86 = load i32, ptr %d, align 4, !dbg !507
  %call61 = call i32 @ror32(i32 noundef %86, i32 noundef 25) #7, !dbg !507
  %xor62 = xor i32 %xor60, %call61, !dbg !507
  %add63 = add i32 %83, %xor62, !dbg !507
  %87 = load i32, ptr %d, align 4, !dbg !507
  %88 = load i32, ptr %e, align 4, !dbg !507
  %89 = load i32, ptr %f, align 4, !dbg !507
  %call64 = call i32 @Ch(i32 noundef %87, i32 noundef %88, i32 noundef %89) #7, !dbg !507
  %add65 = add i32 %add63, %call64, !dbg !507
  %90 = load i32, ptr %i, align 4, !dbg !507
  %add66 = add i32 %90, 1, !dbg !507
  %idxprom67 = sext i32 %add66 to i64, !dbg !507
  %arrayidx68 = getelementptr [64 x i32], ptr @SHA256_K, i64 0, i64 %idxprom67, !dbg !507
  %91 = load i32, ptr %arrayidx68, align 4, !dbg !507
  %add69 = add i32 %add65, %91, !dbg !507
  %92 = load ptr, ptr %W.addr, align 8, !dbg !507
  %93 = load i32, ptr %i, align 4, !dbg !507
  %add70 = add i32 %93, 1, !dbg !507
  %idxprom71 = sext i32 %add70 to i64, !dbg !507
  %arrayidx72 = getelementptr i32, ptr %92, i64 %idxprom71, !dbg !507
  %94 = load i32, ptr %arrayidx72, align 4, !dbg !507
  %add73 = add i32 %add69, %94, !dbg !507
  store i32 %add73, ptr %t156, align 4, !dbg !507
  %95 = load i32, ptr %h, align 4, !dbg !507
  %call74 = call i32 @ror32(i32 noundef %95, i32 noundef 2) #7, !dbg !507
  %96 = load i32, ptr %h, align 4, !dbg !507
  %call75 = call i32 @ror32(i32 noundef %96, i32 noundef 13) #7, !dbg !507
  %xor76 = xor i32 %call74, %call75, !dbg !507
  %97 = load i32, ptr %h, align 4, !dbg !507
  %call77 = call i32 @ror32(i32 noundef %97, i32 noundef 22) #7, !dbg !507
  %xor78 = xor i32 %xor76, %call77, !dbg !507
  %98 = load i32, ptr %h, align 4, !dbg !507
  %99 = load i32, ptr %a, align 4, !dbg !507
  %100 = load i32, ptr %b, align 4, !dbg !507
  %call79 = call i32 @Maj(i32 noundef %98, i32 noundef %99, i32 noundef %100) #7, !dbg !507
  %add80 = add i32 %xor78, %call79, !dbg !507
  store i32 %add80, ptr %t257, align 4, !dbg !507
  %101 = load i32, ptr %t156, align 4, !dbg !507
  %102 = load i32, ptr %c, align 4, !dbg !507
  %add81 = add i32 %102, %101, !dbg !507
  store i32 %add81, ptr %c, align 4, !dbg !507
  %103 = load i32, ptr %t156, align 4, !dbg !507
  %104 = load i32, ptr %t257, align 4, !dbg !507
  %add82 = add i32 %103, %104, !dbg !507
  store i32 %add82, ptr %g, align 4, !dbg !507
  call void @llvm.lifetime.end.p0(i64 4, ptr %t257) #8, !dbg !506
  call void @llvm.lifetime.end.p0(i64 4, ptr %t156) #8, !dbg !506
  br label %do.cond83, !dbg !507

do.cond83:                                        ; preds = %do.body55
  br label %do.end84, !dbg !507

do.end84:                                         ; preds = %do.cond83
  br label %do.body85, !dbg !508

do.body85:                                        ; preds = %do.end84
  call void @llvm.lifetime.start.p0(i64 4, ptr %t186) #8, !dbg !509
  call void @llvm.dbg.declare(metadata ptr %t186, metadata !353, metadata !DIExpression()), !dbg !509
  call void @llvm.lifetime.start.p0(i64 4, ptr %t287) #8, !dbg !509
  call void @llvm.dbg.declare(metadata ptr %t287, metadata !355, metadata !DIExpression()), !dbg !509
  %105 = load i32, ptr %f, align 4, !dbg !509
  %106 = load i32, ptr %c, align 4, !dbg !509
  %call88 = call i32 @ror32(i32 noundef %106, i32 noundef 6) #7, !dbg !509
  %107 = load i32, ptr %c, align 4, !dbg !509
  %call89 = call i32 @ror32(i32 noundef %107, i32 noundef 11) #7, !dbg !509
  %xor90 = xor i32 %call88, %call89, !dbg !509
  %108 = load i32, ptr %c, align 4, !dbg !509
  %call91 = call i32 @ror32(i32 noundef %108, i32 noundef 25) #7, !dbg !509
  %xor92 = xor i32 %xor90, %call91, !dbg !509
  %add93 = add i32 %105, %xor92, !dbg !509
  %109 = load i32, ptr %c, align 4, !dbg !509
  %110 = load i32, ptr %d, align 4, !dbg !509
  %111 = load i32, ptr %e, align 4, !dbg !509
  %call94 = call i32 @Ch(i32 noundef %109, i32 noundef %110, i32 noundef %111) #7, !dbg !509
  %add95 = add i32 %add93, %call94, !dbg !509
  %112 = load i32, ptr %i, align 4, !dbg !509
  %add96 = add i32 %112, 2, !dbg !509
  %idxprom97 = sext i32 %add96 to i64, !dbg !509
  %arrayidx98 = getelementptr [64 x i32], ptr @SHA256_K, i64 0, i64 %idxprom97, !dbg !509
  %113 = load i32, ptr %arrayidx98, align 4, !dbg !509
  %add99 = add i32 %add95, %113, !dbg !509
  %114 = load ptr, ptr %W.addr, align 8, !dbg !509
  %115 = load i32, ptr %i, align 4, !dbg !509
  %add100 = add i32 %115, 2, !dbg !509
  %idxprom101 = sext i32 %add100 to i64, !dbg !509
  %arrayidx102 = getelementptr i32, ptr %114, i64 %idxprom101, !dbg !509
  %116 = load i32, ptr %arrayidx102, align 4, !dbg !509
  %add103 = add i32 %add99, %116, !dbg !509
  store i32 %add103, ptr %t186, align 4, !dbg !509
  %117 = load i32, ptr %g, align 4, !dbg !509
  %call104 = call i32 @ror32(i32 noundef %117, i32 noundef 2) #7, !dbg !509
  %118 = load i32, ptr %g, align 4, !dbg !509
  %call105 = call i32 @ror32(i32 noundef %118, i32 noundef 13) #7, !dbg !509
  %xor106 = xor i32 %call104, %call105, !dbg !509
  %119 = load i32, ptr %g, align 4, !dbg !509
  %call107 = call i32 @ror32(i32 noundef %119, i32 noundef 22) #7, !dbg !509
  %xor108 = xor i32 %xor106, %call107, !dbg !509
  %120 = load i32, ptr %g, align 4, !dbg !509
  %121 = load i32, ptr %h, align 4, !dbg !509
  %122 = load i32, ptr %a, align 4, !dbg !509
  %call109 = call i32 @Maj(i32 noundef %120, i32 noundef %121, i32 noundef %122) #7, !dbg !509
  %add110 = add i32 %xor108, %call109, !dbg !509
  store i32 %add110, ptr %t287, align 4, !dbg !509
  %123 = load i32, ptr %t186, align 4, !dbg !509
  %124 = load i32, ptr %b, align 4, !dbg !509
  %add111 = add i32 %124, %123, !dbg !509
  store i32 %add111, ptr %b, align 4, !dbg !509
  %125 = load i32, ptr %t186, align 4, !dbg !509
  %126 = load i32, ptr %t287, align 4, !dbg !509
  %add112 = add i32 %125, %126, !dbg !509
  store i32 %add112, ptr %f, align 4, !dbg !509
  call void @llvm.lifetime.end.p0(i64 4, ptr %t287) #8, !dbg !508
  call void @llvm.lifetime.end.p0(i64 4, ptr %t186) #8, !dbg !508
  br label %do.cond113, !dbg !509

do.cond113:                                       ; preds = %do.body85
  br label %do.end114, !dbg !509

do.end114:                                        ; preds = %do.cond113
  br label %do.body115, !dbg !510

do.body115:                                       ; preds = %do.end114
  call void @llvm.lifetime.start.p0(i64 4, ptr %t1116) #8, !dbg !511
  call void @llvm.dbg.declare(metadata ptr %t1116, metadata !356, metadata !DIExpression()), !dbg !511
  call void @llvm.lifetime.start.p0(i64 4, ptr %t2117) #8, !dbg !511
  call void @llvm.dbg.declare(metadata ptr %t2117, metadata !358, metadata !DIExpression()), !dbg !511
  %127 = load i32, ptr %e, align 4, !dbg !511
  %128 = load i32, ptr %b, align 4, !dbg !511
  %call118 = call i32 @ror32(i32 noundef %128, i32 noundef 6) #7, !dbg !511
  %129 = load i32, ptr %b, align 4, !dbg !511
  %call119 = call i32 @ror32(i32 noundef %129, i32 noundef 11) #7, !dbg !511
  %xor120 = xor i32 %call118, %call119, !dbg !511
  %130 = load i32, ptr %b, align 4, !dbg !511
  %call121 = call i32 @ror32(i32 noundef %130, i32 noundef 25) #7, !dbg !511
  %xor122 = xor i32 %xor120, %call121, !dbg !511
  %add123 = add i32 %127, %xor122, !dbg !511
  %131 = load i32, ptr %b, align 4, !dbg !511
  %132 = load i32, ptr %c, align 4, !dbg !511
  %133 = load i32, ptr %d, align 4, !dbg !511
  %call124 = call i32 @Ch(i32 noundef %131, i32 noundef %132, i32 noundef %133) #7, !dbg !511
  %add125 = add i32 %add123, %call124, !dbg !511
  %134 = load i32, ptr %i, align 4, !dbg !511
  %add126 = add i32 %134, 3, !dbg !511
  %idxprom127 = sext i32 %add126 to i64, !dbg !511
  %arrayidx128 = getelementptr [64 x i32], ptr @SHA256_K, i64 0, i64 %idxprom127, !dbg !511
  %135 = load i32, ptr %arrayidx128, align 4, !dbg !511
  %add129 = add i32 %add125, %135, !dbg !511
  %136 = load ptr, ptr %W.addr, align 8, !dbg !511
  %137 = load i32, ptr %i, align 4, !dbg !511
  %add130 = add i32 %137, 3, !dbg !511
  %idxprom131 = sext i32 %add130 to i64, !dbg !511
  %arrayidx132 = getelementptr i32, ptr %136, i64 %idxprom131, !dbg !511
  %138 = load i32, ptr %arrayidx132, align 4, !dbg !511
  %add133 = add i32 %add129, %138, !dbg !511
  store i32 %add133, ptr %t1116, align 4, !dbg !511
  %139 = load i32, ptr %f, align 4, !dbg !511
  %call134 = call i32 @ror32(i32 noundef %139, i32 noundef 2) #7, !dbg !511
  %140 = load i32, ptr %f, align 4, !dbg !511
  %call135 = call i32 @ror32(i32 noundef %140, i32 noundef 13) #7, !dbg !511
  %xor136 = xor i32 %call134, %call135, !dbg !511
  %141 = load i32, ptr %f, align 4, !dbg !511
  %call137 = call i32 @ror32(i32 noundef %141, i32 noundef 22) #7, !dbg !511
  %xor138 = xor i32 %xor136, %call137, !dbg !511
  %142 = load i32, ptr %f, align 4, !dbg !511
  %143 = load i32, ptr %g, align 4, !dbg !511
  %144 = load i32, ptr %h, align 4, !dbg !511
  %call139 = call i32 @Maj(i32 noundef %142, i32 noundef %143, i32 noundef %144) #7, !dbg !511
  %add140 = add i32 %xor138, %call139, !dbg !511
  store i32 %add140, ptr %t2117, align 4, !dbg !511
  %145 = load i32, ptr %t1116, align 4, !dbg !511
  %146 = load i32, ptr %a, align 4, !dbg !511
  %add141 = add i32 %146, %145, !dbg !511
  store i32 %add141, ptr %a, align 4, !dbg !511
  %147 = load i32, ptr %t1116, align 4, !dbg !511
  %148 = load i32, ptr %t2117, align 4, !dbg !511
  %add142 = add i32 %147, %148, !dbg !511
  store i32 %add142, ptr %e, align 4, !dbg !511
  call void @llvm.lifetime.end.p0(i64 4, ptr %t2117) #8, !dbg !510
  call void @llvm.lifetime.end.p0(i64 4, ptr %t1116) #8, !dbg !510
  br label %do.cond143, !dbg !511

do.cond143:                                       ; preds = %do.body115
  br label %do.end144, !dbg !511

do.end144:                                        ; preds = %do.cond143
  br label %do.body145, !dbg !512

do.body145:                                       ; preds = %do.end144
  call void @llvm.lifetime.start.p0(i64 4, ptr %t1146) #8, !dbg !513
  call void @llvm.dbg.declare(metadata ptr %t1146, metadata !359, metadata !DIExpression()), !dbg !513
  call void @llvm.lifetime.start.p0(i64 4, ptr %t2147) #8, !dbg !513
  call void @llvm.dbg.declare(metadata ptr %t2147, metadata !361, metadata !DIExpression()), !dbg !513
  %149 = load i32, ptr %d, align 4, !dbg !513
  %150 = load i32, ptr %a, align 4, !dbg !513
  %call148 = call i32 @ror32(i32 noundef %150, i32 noundef 6) #7, !dbg !513
  %151 = load i32, ptr %a, align 4, !dbg !513
  %call149 = call i32 @ror32(i32 noundef %151, i32 noundef 11) #7, !dbg !513
  %xor150 = xor i32 %call148, %call149, !dbg !513
  %152 = load i32, ptr %a, align 4, !dbg !513
  %call151 = call i32 @ror32(i32 noundef %152, i32 noundef 25) #7, !dbg !513
  %xor152 = xor i32 %xor150, %call151, !dbg !513
  %add153 = add i32 %149, %xor152, !dbg !513
  %153 = load i32, ptr %a, align 4, !dbg !513
  %154 = load i32, ptr %b, align 4, !dbg !513
  %155 = load i32, ptr %c, align 4, !dbg !513
  %call154 = call i32 @Ch(i32 noundef %153, i32 noundef %154, i32 noundef %155) #7, !dbg !513
  %add155 = add i32 %add153, %call154, !dbg !513
  %156 = load i32, ptr %i, align 4, !dbg !513
  %add156 = add i32 %156, 4, !dbg !513
  %idxprom157 = sext i32 %add156 to i64, !dbg !513
  %arrayidx158 = getelementptr [64 x i32], ptr @SHA256_K, i64 0, i64 %idxprom157, !dbg !513
  %157 = load i32, ptr %arrayidx158, align 4, !dbg !513
  %add159 = add i32 %add155, %157, !dbg !513
  %158 = load ptr, ptr %W.addr, align 8, !dbg !513
  %159 = load i32, ptr %i, align 4, !dbg !513
  %add160 = add i32 %159, 4, !dbg !513
  %idxprom161 = sext i32 %add160 to i64, !dbg !513
  %arrayidx162 = getelementptr i32, ptr %158, i64 %idxprom161, !dbg !513
  %160 = load i32, ptr %arrayidx162, align 4, !dbg !513
  %add163 = add i32 %add159, %160, !dbg !513
  store i32 %add163, ptr %t1146, align 4, !dbg !513
  %161 = load i32, ptr %e, align 4, !dbg !513
  %call164 = call i32 @ror32(i32 noundef %161, i32 noundef 2) #7, !dbg !513
  %162 = load i32, ptr %e, align 4, !dbg !513
  %call165 = call i32 @ror32(i32 noundef %162, i32 noundef 13) #7, !dbg !513
  %xor166 = xor i32 %call164, %call165, !dbg !513
  %163 = load i32, ptr %e, align 4, !dbg !513
  %call167 = call i32 @ror32(i32 noundef %163, i32 noundef 22) #7, !dbg !513
  %xor168 = xor i32 %xor166, %call167, !dbg !513
  %164 = load i32, ptr %e, align 4, !dbg !513
  %165 = load i32, ptr %f, align 4, !dbg !513
  %166 = load i32, ptr %g, align 4, !dbg !513
  %call169 = call i32 @Maj(i32 noundef %164, i32 noundef %165, i32 noundef %166) #7, !dbg !513
  %add170 = add i32 %xor168, %call169, !dbg !513
  store i32 %add170, ptr %t2147, align 4, !dbg !513
  %167 = load i32, ptr %t1146, align 4, !dbg !513
  %168 = load i32, ptr %h, align 4, !dbg !513
  %add171 = add i32 %168, %167, !dbg !513
  store i32 %add171, ptr %h, align 4, !dbg !513
  %169 = load i32, ptr %t1146, align 4, !dbg !513
  %170 = load i32, ptr %t2147, align 4, !dbg !513
  %add172 = add i32 %169, %170, !dbg !513
  store i32 %add172, ptr %d, align 4, !dbg !513
  call void @llvm.lifetime.end.p0(i64 4, ptr %t2147) #8, !dbg !512
  call void @llvm.lifetime.end.p0(i64 4, ptr %t1146) #8, !dbg !512
  br label %do.cond173, !dbg !513

do.cond173:                                       ; preds = %do.body145
  br label %do.end174, !dbg !513

do.end174:                                        ; preds = %do.cond173
  br label %do.body175, !dbg !514

do.body175:                                       ; preds = %do.end174
  call void @llvm.lifetime.start.p0(i64 4, ptr %t1176) #8, !dbg !515
  call void @llvm.dbg.declare(metadata ptr %t1176, metadata !362, metadata !DIExpression()), !dbg !515
  call void @llvm.lifetime.start.p0(i64 4, ptr %t2177) #8, !dbg !515
  call void @llvm.dbg.declare(metadata ptr %t2177, metadata !364, metadata !DIExpression()), !dbg !515
  %171 = load i32, ptr %c, align 4, !dbg !515
  %172 = load i32, ptr %h, align 4, !dbg !515
  %call178 = call i32 @ror32(i32 noundef %172, i32 noundef 6) #7, !dbg !515
  %173 = load i32, ptr %h, align 4, !dbg !515
  %call179 = call i32 @ror32(i32 noundef %173, i32 noundef 11) #7, !dbg !515
  %xor180 = xor i32 %call178, %call179, !dbg !515
  %174 = load i32, ptr %h, align 4, !dbg !515
  %call181 = call i32 @ror32(i32 noundef %174, i32 noundef 25) #7, !dbg !515
  %xor182 = xor i32 %xor180, %call181, !dbg !515
  %add183 = add i32 %171, %xor182, !dbg !515
  %175 = load i32, ptr %h, align 4, !dbg !515
  %176 = load i32, ptr %a, align 4, !dbg !515
  %177 = load i32, ptr %b, align 4, !dbg !515
  %call184 = call i32 @Ch(i32 noundef %175, i32 noundef %176, i32 noundef %177) #7, !dbg !515
  %add185 = add i32 %add183, %call184, !dbg !515
  %178 = load i32, ptr %i, align 4, !dbg !515
  %add186 = add i32 %178, 5, !dbg !515
  %idxprom187 = sext i32 %add186 to i64, !dbg !515
  %arrayidx188 = getelementptr [64 x i32], ptr @SHA256_K, i64 0, i64 %idxprom187, !dbg !515
  %179 = load i32, ptr %arrayidx188, align 4, !dbg !515
  %add189 = add i32 %add185, %179, !dbg !515
  %180 = load ptr, ptr %W.addr, align 8, !dbg !515
  %181 = load i32, ptr %i, align 4, !dbg !515
  %add190 = add i32 %181, 5, !dbg !515
  %idxprom191 = sext i32 %add190 to i64, !dbg !515
  %arrayidx192 = getelementptr i32, ptr %180, i64 %idxprom191, !dbg !515
  %182 = load i32, ptr %arrayidx192, align 4, !dbg !515
  %add193 = add i32 %add189, %182, !dbg !515
  store i32 %add193, ptr %t1176, align 4, !dbg !515
  %183 = load i32, ptr %d, align 4, !dbg !515
  %call194 = call i32 @ror32(i32 noundef %183, i32 noundef 2) #7, !dbg !515
  %184 = load i32, ptr %d, align 4, !dbg !515
  %call195 = call i32 @ror32(i32 noundef %184, i32 noundef 13) #7, !dbg !515
  %xor196 = xor i32 %call194, %call195, !dbg !515
  %185 = load i32, ptr %d, align 4, !dbg !515
  %call197 = call i32 @ror32(i32 noundef %185, i32 noundef 22) #7, !dbg !515
  %xor198 = xor i32 %xor196, %call197, !dbg !515
  %186 = load i32, ptr %d, align 4, !dbg !515
  %187 = load i32, ptr %e, align 4, !dbg !515
  %188 = load i32, ptr %f, align 4, !dbg !515
  %call199 = call i32 @Maj(i32 noundef %186, i32 noundef %187, i32 noundef %188) #7, !dbg !515
  %add200 = add i32 %xor198, %call199, !dbg !515
  store i32 %add200, ptr %t2177, align 4, !dbg !515
  %189 = load i32, ptr %t1176, align 4, !dbg !515
  %190 = load i32, ptr %g, align 4, !dbg !515
  %add201 = add i32 %190, %189, !dbg !515
  store i32 %add201, ptr %g, align 4, !dbg !515
  %191 = load i32, ptr %t1176, align 4, !dbg !515
  %192 = load i32, ptr %t2177, align 4, !dbg !515
  %add202 = add i32 %191, %192, !dbg !515
  store i32 %add202, ptr %c, align 4, !dbg !515
  call void @llvm.lifetime.end.p0(i64 4, ptr %t2177) #8, !dbg !514
  call void @llvm.lifetime.end.p0(i64 4, ptr %t1176) #8, !dbg !514
  br label %do.cond203, !dbg !515

do.cond203:                                       ; preds = %do.body175
  br label %do.end204, !dbg !515

do.end204:                                        ; preds = %do.cond203
  br label %do.body205, !dbg !516

do.body205:                                       ; preds = %do.end204
  call void @llvm.lifetime.start.p0(i64 4, ptr %t1206) #8, !dbg !517
  call void @llvm.dbg.declare(metadata ptr %t1206, metadata !365, metadata !DIExpression()), !dbg !517
  call void @llvm.lifetime.start.p0(i64 4, ptr %t2207) #8, !dbg !517
  call void @llvm.dbg.declare(metadata ptr %t2207, metadata !367, metadata !DIExpression()), !dbg !517
  %193 = load i32, ptr %b, align 4, !dbg !517
  %194 = load i32, ptr %g, align 4, !dbg !517
  %call208 = call i32 @ror32(i32 noundef %194, i32 noundef 6) #7, !dbg !517
  %195 = load i32, ptr %g, align 4, !dbg !517
  %call209 = call i32 @ror32(i32 noundef %195, i32 noundef 11) #7, !dbg !517
  %xor210 = xor i32 %call208, %call209, !dbg !517
  %196 = load i32, ptr %g, align 4, !dbg !517
  %call211 = call i32 @ror32(i32 noundef %196, i32 noundef 25) #7, !dbg !517
  %xor212 = xor i32 %xor210, %call211, !dbg !517
  %add213 = add i32 %193, %xor212, !dbg !517
  %197 = load i32, ptr %g, align 4, !dbg !517
  %198 = load i32, ptr %h, align 4, !dbg !517
  %199 = load i32, ptr %a, align 4, !dbg !517
  %call214 = call i32 @Ch(i32 noundef %197, i32 noundef %198, i32 noundef %199) #7, !dbg !517
  %add215 = add i32 %add213, %call214, !dbg !517
  %200 = load i32, ptr %i, align 4, !dbg !517
  %add216 = add i32 %200, 6, !dbg !517
  %idxprom217 = sext i32 %add216 to i64, !dbg !517
  %arrayidx218 = getelementptr [64 x i32], ptr @SHA256_K, i64 0, i64 %idxprom217, !dbg !517
  %201 = load i32, ptr %arrayidx218, align 4, !dbg !517
  %add219 = add i32 %add215, %201, !dbg !517
  %202 = load ptr, ptr %W.addr, align 8, !dbg !517
  %203 = load i32, ptr %i, align 4, !dbg !517
  %add220 = add i32 %203, 6, !dbg !517
  %idxprom221 = sext i32 %add220 to i64, !dbg !517
  %arrayidx222 = getelementptr i32, ptr %202, i64 %idxprom221, !dbg !517
  %204 = load i32, ptr %arrayidx222, align 4, !dbg !517
  %add223 = add i32 %add219, %204, !dbg !517
  store i32 %add223, ptr %t1206, align 4, !dbg !517
  %205 = load i32, ptr %c, align 4, !dbg !517
  %call224 = call i32 @ror32(i32 noundef %205, i32 noundef 2) #7, !dbg !517
  %206 = load i32, ptr %c, align 4, !dbg !517
  %call225 = call i32 @ror32(i32 noundef %206, i32 noundef 13) #7, !dbg !517
  %xor226 = xor i32 %call224, %call225, !dbg !517
  %207 = load i32, ptr %c, align 4, !dbg !517
  %call227 = call i32 @ror32(i32 noundef %207, i32 noundef 22) #7, !dbg !517
  %xor228 = xor i32 %xor226, %call227, !dbg !517
  %208 = load i32, ptr %c, align 4, !dbg !517
  %209 = load i32, ptr %d, align 4, !dbg !517
  %210 = load i32, ptr %e, align 4, !dbg !517
  %call229 = call i32 @Maj(i32 noundef %208, i32 noundef %209, i32 noundef %210) #7, !dbg !517
  %add230 = add i32 %xor228, %call229, !dbg !517
  store i32 %add230, ptr %t2207, align 4, !dbg !517
  %211 = load i32, ptr %t1206, align 4, !dbg !517
  %212 = load i32, ptr %f, align 4, !dbg !517
  %add231 = add i32 %212, %211, !dbg !517
  store i32 %add231, ptr %f, align 4, !dbg !517
  %213 = load i32, ptr %t1206, align 4, !dbg !517
  %214 = load i32, ptr %t2207, align 4, !dbg !517
  %add232 = add i32 %213, %214, !dbg !517
  store i32 %add232, ptr %b, align 4, !dbg !517
  call void @llvm.lifetime.end.p0(i64 4, ptr %t2207) #8, !dbg !516
  call void @llvm.lifetime.end.p0(i64 4, ptr %t1206) #8, !dbg !516
  br label %do.cond233, !dbg !517

do.cond233:                                       ; preds = %do.body205
  br label %do.end234, !dbg !517

do.end234:                                        ; preds = %do.cond233
  br label %do.body235, !dbg !518

do.body235:                                       ; preds = %do.end234
  call void @llvm.lifetime.start.p0(i64 4, ptr %t1236) #8, !dbg !519
  call void @llvm.dbg.declare(metadata ptr %t1236, metadata !368, metadata !DIExpression()), !dbg !519
  call void @llvm.lifetime.start.p0(i64 4, ptr %t2237) #8, !dbg !519
  call void @llvm.dbg.declare(metadata ptr %t2237, metadata !370, metadata !DIExpression()), !dbg !519
  %215 = load i32, ptr %a, align 4, !dbg !519
  %216 = load i32, ptr %f, align 4, !dbg !519
  %call238 = call i32 @ror32(i32 noundef %216, i32 noundef 6) #7, !dbg !519
  %217 = load i32, ptr %f, align 4, !dbg !519
  %call239 = call i32 @ror32(i32 noundef %217, i32 noundef 11) #7, !dbg !519
  %xor240 = xor i32 %call238, %call239, !dbg !519
  %218 = load i32, ptr %f, align 4, !dbg !519
  %call241 = call i32 @ror32(i32 noundef %218, i32 noundef 25) #7, !dbg !519
  %xor242 = xor i32 %xor240, %call241, !dbg !519
  %add243 = add i32 %215, %xor242, !dbg !519
  %219 = load i32, ptr %f, align 4, !dbg !519
  %220 = load i32, ptr %g, align 4, !dbg !519
  %221 = load i32, ptr %h, align 4, !dbg !519
  %call244 = call i32 @Ch(i32 noundef %219, i32 noundef %220, i32 noundef %221) #7, !dbg !519
  %add245 = add i32 %add243, %call244, !dbg !519
  %222 = load i32, ptr %i, align 4, !dbg !519
  %add246 = add i32 %222, 7, !dbg !519
  %idxprom247 = sext i32 %add246 to i64, !dbg !519
  %arrayidx248 = getelementptr [64 x i32], ptr @SHA256_K, i64 0, i64 %idxprom247, !dbg !519
  %223 = load i32, ptr %arrayidx248, align 4, !dbg !519
  %add249 = add i32 %add245, %223, !dbg !519
  %224 = load ptr, ptr %W.addr, align 8, !dbg !519
  %225 = load i32, ptr %i, align 4, !dbg !519
  %add250 = add i32 %225, 7, !dbg !519
  %idxprom251 = sext i32 %add250 to i64, !dbg !519
  %arrayidx252 = getelementptr i32, ptr %224, i64 %idxprom251, !dbg !519
  %226 = load i32, ptr %arrayidx252, align 4, !dbg !519
  %add253 = add i32 %add249, %226, !dbg !519
  store i32 %add253, ptr %t1236, align 4, !dbg !519
  %227 = load i32, ptr %b, align 4, !dbg !519
  %call254 = call i32 @ror32(i32 noundef %227, i32 noundef 2) #7, !dbg !519
  %228 = load i32, ptr %b, align 4, !dbg !519
  %call255 = call i32 @ror32(i32 noundef %228, i32 noundef 13) #7, !dbg !519
  %xor256 = xor i32 %call254, %call255, !dbg !519
  %229 = load i32, ptr %b, align 4, !dbg !519
  %call257 = call i32 @ror32(i32 noundef %229, i32 noundef 22) #7, !dbg !519
  %xor258 = xor i32 %xor256, %call257, !dbg !519
  %230 = load i32, ptr %b, align 4, !dbg !519
  %231 = load i32, ptr %c, align 4, !dbg !519
  %232 = load i32, ptr %d, align 4, !dbg !519
  %call259 = call i32 @Maj(i32 noundef %230, i32 noundef %231, i32 noundef %232) #7, !dbg !519
  %add260 = add i32 %xor258, %call259, !dbg !519
  store i32 %add260, ptr %t2237, align 4, !dbg !519
  %233 = load i32, ptr %t1236, align 4, !dbg !519
  %234 = load i32, ptr %e, align 4, !dbg !519
  %add261 = add i32 %234, %233, !dbg !519
  store i32 %add261, ptr %e, align 4, !dbg !519
  %235 = load i32, ptr %t1236, align 4, !dbg !519
  %236 = load i32, ptr %t2237, align 4, !dbg !519
  %add262 = add i32 %235, %236, !dbg !519
  store i32 %add262, ptr %a, align 4, !dbg !519
  call void @llvm.lifetime.end.p0(i64 4, ptr %t2237) #8, !dbg !518
  call void @llvm.lifetime.end.p0(i64 4, ptr %t1236) #8, !dbg !518
  br label %do.cond263, !dbg !519

do.cond263:                                       ; preds = %do.body235
  br label %do.end264, !dbg !519

do.end264:                                        ; preds = %do.cond263
  br label %for.inc265, !dbg !520

for.inc265:                                       ; preds = %do.end264
  %237 = load i32, ptr %i, align 4, !dbg !521
  %add266 = add i32 %237, 8, !dbg !521
  store i32 %add266, ptr %i, align 4, !dbg !521
  br label %for.cond30, !dbg !522, !llvm.loop !523

for.end267:                                       ; preds = %for.cond30
  %238 = load i32, ptr %a, align 4, !dbg !525
  %239 = load ptr, ptr %state.addr, align 8, !dbg !526
  %arrayidx268 = getelementptr i32, ptr %239, i64 0, !dbg !526
  %240 = load i32, ptr %arrayidx268, align 4, !dbg !527
  %add269 = add i32 %240, %238, !dbg !527
  store i32 %add269, ptr %arrayidx268, align 4, !dbg !527
  %241 = load i32, ptr %b, align 4, !dbg !528
  %242 = load ptr, ptr %state.addr, align 8, !dbg !529
  %arrayidx270 = getelementptr i32, ptr %242, i64 1, !dbg !529
  %243 = load i32, ptr %arrayidx270, align 4, !dbg !530
  %add271 = add i32 %243, %241, !dbg !530
  store i32 %add271, ptr %arrayidx270, align 4, !dbg !530
  %244 = load i32, ptr %c, align 4, !dbg !531
  %245 = load ptr, ptr %state.addr, align 8, !dbg !532
  %arrayidx272 = getelementptr i32, ptr %245, i64 2, !dbg !532
  %246 = load i32, ptr %arrayidx272, align 4, !dbg !533
  %add273 = add i32 %246, %244, !dbg !533
  store i32 %add273, ptr %arrayidx272, align 4, !dbg !533
  %247 = load i32, ptr %d, align 4, !dbg !534
  %248 = load ptr, ptr %state.addr, align 8, !dbg !535
  %arrayidx274 = getelementptr i32, ptr %248, i64 3, !dbg !535
  %249 = load i32, ptr %arrayidx274, align 4, !dbg !536
  %add275 = add i32 %249, %247, !dbg !536
  store i32 %add275, ptr %arrayidx274, align 4, !dbg !536
  %250 = load i32, ptr %e, align 4, !dbg !537
  %251 = load ptr, ptr %state.addr, align 8, !dbg !538
  %arrayidx276 = getelementptr i32, ptr %251, i64 4, !dbg !538
  %252 = load i32, ptr %arrayidx276, align 4, !dbg !539
  %add277 = add i32 %252, %250, !dbg !539
  store i32 %add277, ptr %arrayidx276, align 4, !dbg !539
  %253 = load i32, ptr %f, align 4, !dbg !540
  %254 = load ptr, ptr %state.addr, align 8, !dbg !541
  %arrayidx278 = getelementptr i32, ptr %254, i64 5, !dbg !541
  %255 = load i32, ptr %arrayidx278, align 4, !dbg !542
  %add279 = add i32 %255, %253, !dbg !542
  store i32 %add279, ptr %arrayidx278, align 4, !dbg !542
  %256 = load i32, ptr %g, align 4, !dbg !543
  %257 = load ptr, ptr %state.addr, align 8, !dbg !544
  %arrayidx280 = getelementptr i32, ptr %257, i64 6, !dbg !544
  %258 = load i32, ptr %arrayidx280, align 4, !dbg !545
  %add281 = add i32 %258, %256, !dbg !545
  store i32 %add281, ptr %arrayidx280, align 4, !dbg !545
  %259 = load i32, ptr %h, align 4, !dbg !546
  %260 = load ptr, ptr %state.addr, align 8, !dbg !547
  %arrayidx282 = getelementptr i32, ptr %260, i64 7, !dbg !547
  %261 = load i32, ptr %arrayidx282, align 4, !dbg !548
  %add283 = add i32 %261, %259, !dbg !548
  store i32 %add283, ptr %arrayidx282, align 4, !dbg !548
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !549
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #8, !dbg !549
  call void @llvm.lifetime.end.p0(i64 4, ptr %g) #8, !dbg !549
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #8, !dbg !549
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #8, !dbg !549
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #8, !dbg !549
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #8, !dbg !549
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #8, !dbg !549
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #8, !dbg !549
  ret void, !dbg !549
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memzero_explicit(ptr noundef %s, i64 noundef %count) #2 align 16 !dbg !550 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !561, metadata !DIExpression()), !dbg !563
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !562, metadata !DIExpression()), !dbg !564
  %0 = load ptr, ptr %s.addr, align 8, !dbg !565
  %1 = load i64, ptr %count.addr, align 8, !dbg !566
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %1, i1 false), !dbg !567
  %2 = load ptr, ptr %s.addr, align 8, !dbg !568
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2) #8, !dbg !568, !srcloc !569
  ret void, !dbg !570
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @LOAD_OP(i32 noundef %I, ptr noundef %W, ptr noundef %input) #2 align 16 !dbg !571 {
entry:
  %I.addr = alloca i32, align 4
  %W.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  store i32 %I, ptr %I.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %I.addr, metadata !575, metadata !DIExpression()), !dbg !578
  store ptr %W, ptr %W.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %W.addr, metadata !576, metadata !DIExpression()), !dbg !579
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !577, metadata !DIExpression()), !dbg !580
  %0 = load ptr, ptr %input.addr, align 8, !dbg !581
  %1 = load i32, ptr %I.addr, align 4, !dbg !582
  %idx.ext = sext i32 %1 to i64, !dbg !583
  %add.ptr = getelementptr i32, ptr %0, i64 %idx.ext, !dbg !583
  %call = call i32 @get_unaligned_be32(ptr noundef %add.ptr) #7, !dbg !584
  %2 = load ptr, ptr %W.addr, align 8, !dbg !585
  %3 = load i32, ptr %I.addr, align 4, !dbg !586
  %idxprom = sext i32 %3 to i64, !dbg !585
  %arrayidx = getelementptr i32, ptr %2, i64 %idxprom, !dbg !585
  store i32 %call, ptr %arrayidx, align 4, !dbg !587
  ret void, !dbg !588
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @BLEND_OP(i32 noundef %I, ptr noundef %W) #2 align 16 !dbg !589 {
entry:
  %I.addr = alloca i32, align 4
  %W.addr = alloca ptr, align 8
  store i32 %I, ptr %I.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %I.addr, metadata !593, metadata !DIExpression()), !dbg !595
  store ptr %W, ptr %W.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %W.addr, metadata !594, metadata !DIExpression()), !dbg !596
  %0 = load ptr, ptr %W.addr, align 8, !dbg !597
  %1 = load i32, ptr %I.addr, align 4, !dbg !597
  %sub = sub i32 %1, 2, !dbg !597
  %idxprom = sext i32 %sub to i64, !dbg !597
  %arrayidx = getelementptr i32, ptr %0, i64 %idxprom, !dbg !597
  %2 = load i32, ptr %arrayidx, align 4, !dbg !597
  %call = call i32 @ror32(i32 noundef %2, i32 noundef 17) #7, !dbg !597
  %3 = load ptr, ptr %W.addr, align 8, !dbg !597
  %4 = load i32, ptr %I.addr, align 4, !dbg !597
  %sub1 = sub i32 %4, 2, !dbg !597
  %idxprom2 = sext i32 %sub1 to i64, !dbg !597
  %arrayidx3 = getelementptr i32, ptr %3, i64 %idxprom2, !dbg !597
  %5 = load i32, ptr %arrayidx3, align 4, !dbg !597
  %call4 = call i32 @ror32(i32 noundef %5, i32 noundef 19) #7, !dbg !597
  %xor = xor i32 %call, %call4, !dbg !597
  %6 = load ptr, ptr %W.addr, align 8, !dbg !597
  %7 = load i32, ptr %I.addr, align 4, !dbg !597
  %sub5 = sub i32 %7, 2, !dbg !597
  %idxprom6 = sext i32 %sub5 to i64, !dbg !597
  %arrayidx7 = getelementptr i32, ptr %6, i64 %idxprom6, !dbg !597
  %8 = load i32, ptr %arrayidx7, align 4, !dbg !597
  %shr = lshr i32 %8, 10, !dbg !597
  %xor8 = xor i32 %xor, %shr, !dbg !597
  %9 = load ptr, ptr %W.addr, align 8, !dbg !598
  %10 = load i32, ptr %I.addr, align 4, !dbg !599
  %sub9 = sub i32 %10, 7, !dbg !600
  %idxprom10 = sext i32 %sub9 to i64, !dbg !598
  %arrayidx11 = getelementptr i32, ptr %9, i64 %idxprom10, !dbg !598
  %11 = load i32, ptr %arrayidx11, align 4, !dbg !598
  %add = add i32 %xor8, %11, !dbg !601
  %12 = load ptr, ptr %W.addr, align 8, !dbg !602
  %13 = load i32, ptr %I.addr, align 4, !dbg !602
  %sub12 = sub i32 %13, 15, !dbg !602
  %idxprom13 = sext i32 %sub12 to i64, !dbg !602
  %arrayidx14 = getelementptr i32, ptr %12, i64 %idxprom13, !dbg !602
  %14 = load i32, ptr %arrayidx14, align 4, !dbg !602
  %call15 = call i32 @ror32(i32 noundef %14, i32 noundef 7) #7, !dbg !602
  %15 = load ptr, ptr %W.addr, align 8, !dbg !602
  %16 = load i32, ptr %I.addr, align 4, !dbg !602
  %sub16 = sub i32 %16, 15, !dbg !602
  %idxprom17 = sext i32 %sub16 to i64, !dbg !602
  %arrayidx18 = getelementptr i32, ptr %15, i64 %idxprom17, !dbg !602
  %17 = load i32, ptr %arrayidx18, align 4, !dbg !602
  %call19 = call i32 @ror32(i32 noundef %17, i32 noundef 18) #7, !dbg !602
  %xor20 = xor i32 %call15, %call19, !dbg !602
  %18 = load ptr, ptr %W.addr, align 8, !dbg !602
  %19 = load i32, ptr %I.addr, align 4, !dbg !602
  %sub21 = sub i32 %19, 15, !dbg !602
  %idxprom22 = sext i32 %sub21 to i64, !dbg !602
  %arrayidx23 = getelementptr i32, ptr %18, i64 %idxprom22, !dbg !602
  %20 = load i32, ptr %arrayidx23, align 4, !dbg !602
  %shr24 = lshr i32 %20, 3, !dbg !602
  %xor25 = xor i32 %xor20, %shr24, !dbg !602
  %add26 = add i32 %add, %xor25, !dbg !603
  %21 = load ptr, ptr %W.addr, align 8, !dbg !604
  %22 = load i32, ptr %I.addr, align 4, !dbg !605
  %sub27 = sub i32 %22, 16, !dbg !606
  %idxprom28 = sext i32 %sub27 to i64, !dbg !604
  %arrayidx29 = getelementptr i32, ptr %21, i64 %idxprom28, !dbg !604
  %23 = load i32, ptr %arrayidx29, align 4, !dbg !604
  %add30 = add i32 %add26, %23, !dbg !607
  %24 = load ptr, ptr %W.addr, align 8, !dbg !608
  %25 = load i32, ptr %I.addr, align 4, !dbg !609
  %idxprom31 = sext i32 %25 to i64, !dbg !608
  %arrayidx32 = getelementptr i32, ptr %24, i64 %idxprom31, !dbg !608
  store i32 %add30, ptr %arrayidx32, align 4, !dbg !610
  ret void, !dbg !611
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ror32(i32 noundef %word, i32 noundef %shift) #2 align 16 !dbg !612 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !617, metadata !DIExpression()), !dbg !619
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !618, metadata !DIExpression()), !dbg !620
  %0 = load i32, ptr %word.addr, align 4, !dbg !621
  %1 = load i32, ptr %shift.addr, align 4, !dbg !622
  %and = and i32 %1, 31, !dbg !623
  %shr = lshr i32 %0, %and, !dbg !624
  %2 = load i32, ptr %word.addr, align 4, !dbg !625
  %3 = load i32, ptr %shift.addr, align 4, !dbg !626
  %sub = sub i32 0, %3, !dbg !627
  %and1 = and i32 %sub, 31, !dbg !628
  %shl = shl i32 %2, %and1, !dbg !629
  %or = or i32 %shr, %shl, !dbg !630
  ret i32 %or, !dbg !631
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @Ch(i32 noundef %x, i32 noundef %y, i32 noundef %z) #2 align 16 !dbg !632 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !636, metadata !DIExpression()), !dbg !639
  store i32 %y, ptr %y.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !637, metadata !DIExpression()), !dbg !640
  store i32 %z, ptr %z.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %z.addr, metadata !638, metadata !DIExpression()), !dbg !641
  %0 = load i32, ptr %z.addr, align 4, !dbg !642
  %1 = load i32, ptr %x.addr, align 4, !dbg !643
  %2 = load i32, ptr %y.addr, align 4, !dbg !644
  %3 = load i32, ptr %z.addr, align 4, !dbg !645
  %xor = xor i32 %2, %3, !dbg !646
  %and = and i32 %1, %xor, !dbg !647
  %xor1 = xor i32 %0, %and, !dbg !648
  ret i32 %xor1, !dbg !649
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @Maj(i32 noundef %x, i32 noundef %y, i32 noundef %z) #2 align 16 !dbg !650 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !652, metadata !DIExpression()), !dbg !655
  store i32 %y, ptr %y.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !653, metadata !DIExpression()), !dbg !656
  store i32 %z, ptr %z.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %z.addr, metadata !654, metadata !DIExpression()), !dbg !657
  %0 = load i32, ptr %x.addr, align 4, !dbg !658
  %1 = load i32, ptr %y.addr, align 4, !dbg !659
  %and = and i32 %0, %1, !dbg !660
  %2 = load i32, ptr %z.addr, align 4, !dbg !661
  %3 = load i32, ptr %x.addr, align 4, !dbg !662
  %4 = load i32, ptr %y.addr, align 4, !dbg !663
  %or = or i32 %3, %4, !dbg !664
  %and1 = and i32 %2, %or, !dbg !665
  %or2 = or i32 %and, %and1, !dbg !666
  ret i32 %or2, !dbg !667
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_be32(ptr noundef %p) #2 align 16 !dbg !16 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !24, metadata !DIExpression()), !dbg !668
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !669
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !25, metadata !DIExpression()), !dbg !669
  %0 = load ptr, ptr %p.addr, align 8, !dbg !669
  store ptr %0, ptr %__pptr, align 8, !dbg !669
  %1 = load ptr, ptr %__pptr, align 8, !dbg !669
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !669
  %2 = load i32, ptr %x, align 1, !dbg !669
  store i32 %2, ptr %tmp, align 4, !dbg !669
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !670
  %3 = load i32, ptr %tmp, align 4, !dbg !669
  %4 = call i32 @llvm.bswap.i32(i32 %3), !dbg !670
  ret i32 %4, !dbg !671
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lib_sha256_base_do_finalize(ptr noundef %sctx, ptr noundef %block_fn) #2 align 16 !dbg !672 {
entry:
  %sctx.addr = alloca ptr, align 8
  %block_fn.addr = alloca ptr, align 8
  %bit_offset = alloca i32, align 4
  %bits = alloca ptr, align 8
  %partial = alloca i32, align 4
  store ptr %sctx, ptr %sctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sctx.addr, metadata !676, metadata !DIExpression()), !dbg !682
  store ptr %block_fn, ptr %block_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block_fn.addr, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_offset) #8, !dbg !684
  call void @llvm.dbg.declare(metadata ptr %bit_offset, metadata !678, metadata !DIExpression()), !dbg !685
  store i32 56, ptr %bit_offset, align 4, !dbg !685
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #8, !dbg !686
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !680, metadata !DIExpression()), !dbg !687
  %0 = load ptr, ptr %sctx.addr, align 8, !dbg !688
  %buf = getelementptr inbounds %struct.sha256_state, ptr %0, i32 0, i32 2, !dbg !689
  %arraydecay = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0, !dbg !688
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 56, !dbg !690
  store ptr %add.ptr, ptr %bits, align 8, !dbg !687
  call void @llvm.lifetime.start.p0(i64 4, ptr %partial) #8, !dbg !691
  call void @llvm.dbg.declare(metadata ptr %partial, metadata !681, metadata !DIExpression()), !dbg !692
  %1 = load ptr, ptr %sctx.addr, align 8, !dbg !693
  %count = getelementptr inbounds %struct.sha256_state, ptr %1, i32 0, i32 1, !dbg !694
  %2 = load i64, ptr %count, align 8, !dbg !694
  %rem = urem i64 %2, 64, !dbg !695
  %conv = trunc i64 %rem to i32, !dbg !693
  store i32 %conv, ptr %partial, align 4, !dbg !692
  %3 = load ptr, ptr %sctx.addr, align 8, !dbg !696
  %buf1 = getelementptr inbounds %struct.sha256_state, ptr %3, i32 0, i32 2, !dbg !697
  %4 = load i32, ptr %partial, align 4, !dbg !698
  %inc = add i32 %4, 1, !dbg !698
  store i32 %inc, ptr %partial, align 4, !dbg !698
  %idxprom = zext i32 %4 to i64, !dbg !696
  %arrayidx = getelementptr [64 x i8], ptr %buf1, i64 0, i64 %idxprom, !dbg !696
  store i8 -128, ptr %arrayidx, align 1, !dbg !699
  %5 = load i32, ptr %partial, align 4, !dbg !700
  %cmp = icmp ugt i32 %5, 56, !dbg !702
  br i1 %cmp, label %if.then, label %if.end, !dbg !703

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %sctx.addr, align 8, !dbg !704
  %buf3 = getelementptr inbounds %struct.sha256_state, ptr %6, i32 0, i32 2, !dbg !706
  %arraydecay4 = getelementptr inbounds [64 x i8], ptr %buf3, i64 0, i64 0, !dbg !704
  %7 = load i32, ptr %partial, align 4, !dbg !707
  %idx.ext = zext i32 %7 to i64, !dbg !708
  %add.ptr5 = getelementptr i8, ptr %arraydecay4, i64 %idx.ext, !dbg !708
  %8 = load i32, ptr %partial, align 4, !dbg !709
  %sub = sub i32 64, %8, !dbg !710
  %conv6 = zext i32 %sub to i64, !dbg !711
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr5, i8 0, i64 %conv6, i1 false), !dbg !712
  store i32 0, ptr %partial, align 4, !dbg !713
  %9 = load ptr, ptr %block_fn.addr, align 8, !dbg !714
  %10 = load ptr, ptr %sctx.addr, align 8, !dbg !715
  %11 = load ptr, ptr %sctx.addr, align 8, !dbg !716
  %buf7 = getelementptr inbounds %struct.sha256_state, ptr %11, i32 0, i32 2, !dbg !717
  %arraydecay8 = getelementptr inbounds [64 x i8], ptr %buf7, i64 0, i64 0, !dbg !716
  call void %9(ptr noundef %10, ptr noundef %arraydecay8, i32 noundef 1) #7, !dbg !714
  br label %if.end, !dbg !718

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %sctx.addr, align 8, !dbg !719
  %buf9 = getelementptr inbounds %struct.sha256_state, ptr %12, i32 0, i32 2, !dbg !720
  %arraydecay10 = getelementptr inbounds [64 x i8], ptr %buf9, i64 0, i64 0, !dbg !719
  %13 = load i32, ptr %partial, align 4, !dbg !721
  %idx.ext11 = zext i32 %13 to i64, !dbg !722
  %add.ptr12 = getelementptr i8, ptr %arraydecay10, i64 %idx.ext11, !dbg !722
  %14 = load i32, ptr %partial, align 4, !dbg !723
  %sub13 = sub i32 56, %14, !dbg !724
  %conv14 = zext i32 %sub13 to i64, !dbg !725
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr12, i8 0, i64 %conv14, i1 false), !dbg !726
  %15 = load ptr, ptr %sctx.addr, align 8, !dbg !727
  %count15 = getelementptr inbounds %struct.sha256_state, ptr %15, i32 0, i32 1, !dbg !727
  %16 = load i64, ptr %count15, align 8, !dbg !727
  %shl = shl i64 %16, 3, !dbg !727
  %17 = call i64 @llvm.bswap.i64(i64 %shl), !dbg !727
  %18 = load ptr, ptr %bits, align 8, !dbg !728
  store i64 %17, ptr %18, align 8, !dbg !729
  %19 = load ptr, ptr %block_fn.addr, align 8, !dbg !730
  %20 = load ptr, ptr %sctx.addr, align 8, !dbg !731
  %21 = load ptr, ptr %sctx.addr, align 8, !dbg !732
  %buf16 = getelementptr inbounds %struct.sha256_state, ptr %21, i32 0, i32 2, !dbg !733
  %arraydecay17 = getelementptr inbounds [64 x i8], ptr %buf16, i64 0, i64 0, !dbg !732
  call void %19(ptr noundef %20, ptr noundef %arraydecay17, i32 noundef 1) #7, !dbg !730
  call void @llvm.lifetime.end.p0(i64 4, ptr %partial) #8, !dbg !734
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #8, !dbg !734
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_offset) #8, !dbg !734
  ret i32 0, !dbg !735
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lib_sha256_base_finish(ptr noundef %sctx, ptr noundef %out, i32 noundef %digest_size) #2 align 16 !dbg !736 {
entry:
  %sctx.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %digest_size.addr = alloca i32, align 4
  %digest = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %sctx, ptr %sctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sctx.addr, metadata !740, metadata !DIExpression()), !dbg !745
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !741, metadata !DIExpression()), !dbg !746
  store i32 %digest_size, ptr %digest_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %digest_size.addr, metadata !742, metadata !DIExpression()), !dbg !747
  call void @llvm.lifetime.start.p0(i64 8, ptr %digest) #8, !dbg !748
  call void @llvm.dbg.declare(metadata ptr %digest, metadata !743, metadata !DIExpression()), !dbg !749
  %0 = load ptr, ptr %out.addr, align 8, !dbg !750
  store ptr %0, ptr %digest, align 8, !dbg !749
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !751
  call void @llvm.dbg.declare(metadata ptr %i, metadata !744, metadata !DIExpression()), !dbg !752
  store i32 0, ptr %i, align 4, !dbg !753
  br label %for.cond, !dbg !755

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %digest_size.addr, align 4, !dbg !756
  %cmp = icmp ugt i32 %1, 0, !dbg !758
  br i1 %cmp, label %for.body, label %for.end, !dbg !759

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %sctx.addr, align 8, !dbg !760
  %state = getelementptr inbounds %struct.sha256_state, ptr %2, i32 0, i32 0, !dbg !761
  %3 = load i32, ptr %i, align 4, !dbg !762
  %idxprom = sext i32 %3 to i64, !dbg !760
  %arrayidx = getelementptr [8 x i32], ptr %state, i64 0, i64 %idxprom, !dbg !760
  %4 = load i32, ptr %arrayidx, align 4, !dbg !760
  %5 = load ptr, ptr %digest, align 8, !dbg !763
  %incdec.ptr = getelementptr i32, ptr %5, i32 1, !dbg !763
  store ptr %incdec.ptr, ptr %digest, align 8, !dbg !763
  call void @put_unaligned_be32(i32 noundef %4, ptr noundef %5) #7, !dbg !764
  br label %for.inc, !dbg !764

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !765
  %inc = add i32 %6, 1, !dbg !765
  store i32 %inc, ptr %i, align 4, !dbg !765
  %7 = load i32, ptr %digest_size.addr, align 4, !dbg !766
  %conv = zext i32 %7 to i64, !dbg !766
  %sub = sub i64 %conv, 4, !dbg !766
  %conv1 = trunc i64 %sub to i32, !dbg !766
  store i32 %conv1, ptr %digest_size.addr, align 4, !dbg !766
  br label %for.cond, !dbg !767, !llvm.loop !768

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %sctx.addr, align 8, !dbg !770
  call void @memzero_explicit(ptr noundef %8, i64 noundef 104) #7, !dbg !771
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !772
  call void @llvm.lifetime.end.p0(i64 8, ptr %digest) #8, !dbg !772
  ret i32 0, !dbg !773
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_unaligned_be32(i32 noundef %val, ptr noundef %p) #2 align 16 !dbg !36 {
entry:
  %val.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !40, metadata !DIExpression()), !dbg !774
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !41, metadata !DIExpression()), !dbg !775
  br label %do.body, !dbg !776

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #8, !dbg !777
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !42, metadata !DIExpression()), !dbg !777
  %0 = load ptr, ptr %p.addr, align 8, !dbg !777
  store ptr %0, ptr %__pptr, align 8, !dbg !777
  %1 = load i32, ptr %val.addr, align 4, !dbg !777
  %2 = call i32 @llvm.bswap.i32(i32 %1), !dbg !777
  %3 = load ptr, ptr %__pptr, align 8, !dbg !777
  %x = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 0, !dbg !777
  store i32 %2, ptr %x, align 1, !dbg !777
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #8, !dbg !776
  br label %do.end, !dbg !777

do.end:                                           ; preds = %do.body
  ret void, !dbg !778
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sha256_update197", scope: !2, file: !3, line: 138, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/.sha256.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/libsha256\22 -D KBUILD_BASENAME=\22sha256\22 -D KBUILD_MODNAME=\22libsha256\22 -D __KBUILD_MODNAME=kmod_libsha256 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/sha256.ll lib/crypto/sha256.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !46, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/sha256.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83775f6d8174f2e3ce6c4aa9dc411c59")
!4 = !{!5, !6, !7, !10, !12, !29, !30, !31, !33, !34}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !11, line: 39, baseType: !7)
!11 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !16, file: !15, line: 62, size: 32, elements: !27)
!15 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!16 = distinct !DISubprogram(name: "get_unaligned_be32", scope: !15, file: !15, line: 60, type: !17, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !21}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !20, line: 21, baseType: !7)
!20 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!23 = !{!24, !25}
!24 = !DILocalVariable(name: "p", arg: 1, scope: !16, file: !15, line: 60, type: !21)
!25 = !DILocalVariable(name: "__pptr", scope: !26, file: !15, line: 62, type: !12)
!26 = distinct !DILexicalBlock(scope: !16, file: !15, line: 62, column: 9)
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !14, file: !15, line: 62, baseType: !10, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !11, line: 41, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !8, line: 31, baseType: !32)
!32 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !36, file: !15, line: 77, size: 32, elements: !44)
!36 = distinct !DISubprogram(name: "put_unaligned_be32", scope: !15, file: !15, line: 75, type: !37, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !19, !5}
!39 = !{!40, !41, !42}
!40 = !DILocalVariable(name: "val", arg: 1, scope: !36, file: !15, line: 75, type: !19)
!41 = !DILocalVariable(name: "p", arg: 2, scope: !36, file: !15, line: 75, type: !5)
!42 = !DILocalVariable(name: "__pptr", scope: !43, file: !15, line: 77, type: !34)
!43 = distinct !DILexicalBlock(scope: !36, file: !15, line: 77, column: 2)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !35, file: !15, line: 77, baseType: !10, size: 32)
!46 = !{!0, !47, !49, !51, !53, !60, !65}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sha256_final198", scope: !2, file: !3, line: 150, type: !5, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sha224_final199", scope: !2, file: !3, line: 156, type: !5, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sha256200", scope: !2, file: !3, line: 166, type: !5, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file201", scope: !2, file: !3, line: 168, type: !55, isLocal: true, isDefinition: true, align: 8)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 288, elements: !58)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!58 = !{!59}
!59 = !DISubrange(count: 36)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license202", scope: !2, file: !3, line: 168, type: !62, isLocal: true, isDefinition: true, align: 8)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 176, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 22)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "SHA256_K", scope: !2, file: !3, line: 20, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2048, elements: !69)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!69 = !{!70}
!70 = !DISubrange(count: 64)
!71 = !{i32 7, !"Dwarf Version", i32 5}
!72 = !{i32 2, !"Debug Info Version", i32 3}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 8, !"cf-protection-branch", i32 1}
!75 = !{i32 4, !"function_return_thunk_extern", i32 1}
!76 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!77 = !{i32 1, !"Code Model", i32 2}
!78 = !{i32 1, !"override-stack-alignment", i32 8}
!79 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!80 = distinct !DISubprogram(name: "sha256_update", scope: !3, file: !3, line: 134, type: !81, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !100)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, !98, !9}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sha256_state", file: !85, line: 67, size: 832, elements: !86)
!85 = !DIFile(filename: "./include/crypto/sha2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f005b270beb1a5e8a534579b76643c4")
!86 = !{!87, !91, !93}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !84, file: !85, line: 68, baseType: !88, size: 256)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 8)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !84, file: !85, line: 69, baseType: !92, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !20, line: 23, baseType: !31)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !84, file: !85, line: 70, baseType: !94, size: 512, offset: 320)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 512, elements: !69)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !20, line: 17, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !8, line: 21, baseType: !97)
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!100 = !{!101, !102, !103}
!101 = !DILocalVariable(name: "sctx", arg: 1, scope: !80, file: !3, line: 134, type: !83)
!102 = !DILocalVariable(name: "data", arg: 2, scope: !80, file: !3, line: 134, type: !98)
!103 = !DILocalVariable(name: "len", arg: 3, scope: !80, file: !3, line: 134, type: !9)
!104 = !DILocation(line: 134, column: 41, scope: !80)
!105 = !DILocation(line: 134, column: 57, scope: !80)
!106 = !DILocation(line: 134, column: 76, scope: !80)
!107 = !DILocation(line: 136, column: 28, scope: !80)
!108 = !DILocation(line: 136, column: 34, scope: !80)
!109 = !DILocation(line: 136, column: 40, scope: !80)
!110 = !DILocation(line: 136, column: 2, scope: !80)
!111 = !DILocation(line: 137, column: 1, scope: !80)
!112 = distinct !DISubprogram(name: "lib_sha256_base_do_update", scope: !113, file: !113, line: 37, type: !114, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !121)
!113 = !DIFile(filename: "./include/crypto/sha256_base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8347b5c1f99e6fa9d9a96c3dcb627989")
!114 = !DISubroutineType(types: !115)
!115 = !{!116, !83, !98, !9, !117}
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha256_block_fn", file: !113, line: 18, baseType: !119)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !83, !98, !116}
!121 = !{!122, !123, !124, !125, !126, !127, !130}
!122 = !DILocalVariable(name: "sctx", arg: 1, scope: !112, file: !113, line: 37, type: !83)
!123 = !DILocalVariable(name: "data", arg: 2, scope: !112, file: !113, line: 38, type: !98)
!124 = !DILocalVariable(name: "len", arg: 3, scope: !112, file: !113, line: 39, type: !9)
!125 = !DILocalVariable(name: "block_fn", arg: 4, scope: !112, file: !113, line: 40, type: !117)
!126 = !DILocalVariable(name: "partial", scope: !112, file: !113, line: 42, type: !9)
!127 = !DILocalVariable(name: "blocks", scope: !128, file: !113, line: 47, type: !116)
!128 = distinct !DILexicalBlock(scope: !129, file: !113, line: 46, column: 54)
!129 = distinct !DILexicalBlock(scope: !112, file: !113, line: 46, column: 6)
!130 = !DILocalVariable(name: "p", scope: !131, file: !113, line: 50, type: !116)
!131 = distinct !DILexicalBlock(scope: !132, file: !113, line: 49, column: 16)
!132 = distinct !DILexicalBlock(scope: !128, file: !113, line: 49, column: 7)
!133 = !DILocation(line: 37, column: 66, scope: !112)
!134 = !DILocation(line: 38, column: 20, scope: !112)
!135 = !DILocation(line: 39, column: 23, scope: !112)
!136 = !DILocation(line: 40, column: 27, scope: !112)
!137 = !DILocation(line: 42, column: 2, scope: !112)
!138 = !DILocation(line: 42, column: 15, scope: !112)
!139 = !DILocation(line: 42, column: 25, scope: !112)
!140 = !DILocation(line: 42, column: 31, scope: !112)
!141 = !DILocation(line: 42, column: 37, scope: !112)
!142 = !DILocation(line: 44, column: 17, scope: !112)
!143 = !DILocation(line: 44, column: 2, scope: !112)
!144 = !DILocation(line: 44, column: 8, scope: !112)
!145 = !DILocation(line: 44, column: 14, scope: !112)
!146 = !DILocation(line: 46, column: 6, scope: !129)
!147 = !DILocation(line: 46, column: 6, scope: !112)
!148 = !DILocation(line: 47, column: 3, scope: !128)
!149 = !DILocation(line: 47, column: 7, scope: !128)
!150 = !DILocation(line: 49, column: 7, scope: !132)
!151 = !DILocation(line: 49, column: 7, scope: !128)
!152 = !DILocation(line: 50, column: 4, scope: !131)
!153 = !DILocation(line: 50, column: 8, scope: !131)
!154 = !DILocation(line: 50, column: 32, scope: !131)
!155 = !DILocation(line: 50, column: 30, scope: !131)
!156 = !DILocation(line: 52, column: 11, scope: !131)
!157 = !DILocation(line: 52, column: 17, scope: !131)
!158 = !DILocation(line: 52, column: 23, scope: !131)
!159 = !DILocation(line: 52, column: 21, scope: !131)
!160 = !DILocation(line: 52, column: 32, scope: !131)
!161 = !DILocation(line: 52, column: 38, scope: !131)
!162 = !DILocation(line: 52, column: 4, scope: !131)
!163 = !DILocation(line: 53, column: 12, scope: !131)
!164 = !DILocation(line: 53, column: 9, scope: !131)
!165 = !DILocation(line: 54, column: 11, scope: !131)
!166 = !DILocation(line: 54, column: 8, scope: !131)
!167 = !DILocation(line: 56, column: 4, scope: !131)
!168 = !DILocation(line: 56, column: 13, scope: !131)
!169 = !DILocation(line: 56, column: 19, scope: !131)
!170 = !DILocation(line: 56, column: 25, scope: !131)
!171 = !DILocation(line: 57, column: 3, scope: !132)
!172 = !DILocation(line: 57, column: 3, scope: !131)
!173 = !DILocation(line: 59, column: 12, scope: !128)
!174 = !DILocation(line: 59, column: 16, scope: !128)
!175 = !DILocation(line: 59, column: 10, scope: !128)
!176 = !DILocation(line: 60, column: 7, scope: !128)
!177 = !DILocation(line: 62, column: 7, scope: !178)
!178 = distinct !DILexicalBlock(scope: !128, file: !113, line: 62, column: 7)
!179 = !DILocation(line: 62, column: 7, scope: !128)
!180 = !DILocation(line: 63, column: 4, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !113, line: 62, column: 15)
!182 = !DILocation(line: 63, column: 13, scope: !181)
!183 = !DILocation(line: 63, column: 19, scope: !181)
!184 = !DILocation(line: 63, column: 25, scope: !181)
!185 = !DILocation(line: 64, column: 12, scope: !181)
!186 = !DILocation(line: 64, column: 19, scope: !181)
!187 = !DILocation(line: 64, column: 9, scope: !181)
!188 = !DILocation(line: 65, column: 3, scope: !181)
!189 = !DILocation(line: 66, column: 11, scope: !128)
!190 = !DILocation(line: 67, column: 2, scope: !129)
!191 = !DILocation(line: 67, column: 2, scope: !128)
!192 = !DILocation(line: 68, column: 6, scope: !193)
!193 = distinct !DILexicalBlock(scope: !112, file: !113, line: 68, column: 6)
!194 = !DILocation(line: 68, column: 6, scope: !112)
!195 = !DILocation(line: 69, column: 10, scope: !193)
!196 = !DILocation(line: 69, column: 16, scope: !193)
!197 = !DILocation(line: 69, column: 22, scope: !193)
!198 = !DILocation(line: 69, column: 20, scope: !193)
!199 = !DILocation(line: 69, column: 31, scope: !193)
!200 = !DILocation(line: 69, column: 37, scope: !193)
!201 = !DILocation(line: 69, column: 3, scope: !193)
!202 = !DILocation(line: 72, column: 1, scope: !112)
!203 = !DILocation(line: 71, column: 2, scope: !112)
!204 = distinct !DISubprogram(name: "sha256_transform_blocks", scope: !3, file: !3, line: 121, type: !119, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !205)
!205 = !{!206, !207, !208, !209}
!206 = !DILocalVariable(name: "sctx", arg: 1, scope: !204, file: !3, line: 121, type: !83)
!207 = !DILocalVariable(name: "input", arg: 2, scope: !204, file: !3, line: 122, type: !98)
!208 = !DILocalVariable(name: "blocks", arg: 3, scope: !204, file: !3, line: 122, type: !116)
!209 = !DILocalVariable(name: "W", scope: !204, file: !3, line: 124, type: !210)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !69)
!211 = !DILocation(line: 121, column: 58, scope: !204)
!212 = !DILocation(line: 122, column: 19, scope: !204)
!213 = !DILocation(line: 122, column: 30, scope: !204)
!214 = !DILocation(line: 124, column: 2, scope: !204)
!215 = !DILocation(line: 124, column: 6, scope: !204)
!216 = !DILocation(line: 126, column: 2, scope: !204)
!217 = !DILocation(line: 127, column: 20, scope: !218)
!218 = distinct !DILexicalBlock(scope: !204, file: !3, line: 126, column: 5)
!219 = !DILocation(line: 127, column: 26, scope: !218)
!220 = !DILocation(line: 127, column: 33, scope: !218)
!221 = !DILocation(line: 127, column: 40, scope: !218)
!222 = !DILocation(line: 127, column: 3, scope: !218)
!223 = !DILocation(line: 128, column: 9, scope: !218)
!224 = !DILocation(line: 129, column: 2, scope: !218)
!225 = !DILocation(line: 129, column: 11, scope: !204)
!226 = distinct !{!226, !216, !227, !228, !229}
!227 = !DILocation(line: 129, column: 19, scope: !204)
!228 = !{!"llvm.loop.mustprogress"}
!229 = !{!"llvm.loop.unroll.disable"}
!230 = !DILocation(line: 131, column: 19, scope: !204)
!231 = !DILocation(line: 131, column: 2, scope: !204)
!232 = !DILocation(line: 132, column: 1, scope: !204)
!233 = distinct !DISubprogram(name: "sha256_final", scope: !3, file: !3, line: 146, type: !234, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !83, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!237 = !{!238, !239}
!238 = !DILocalVariable(name: "sctx", arg: 1, scope: !233, file: !3, line: 146, type: !83)
!239 = !DILocalVariable(name: "out", arg: 2, scope: !233, file: !3, line: 146, type: !236)
!240 = !DILocation(line: 146, column: 40, scope: !233)
!241 = !DILocation(line: 146, column: 50, scope: !233)
!242 = !DILocation(line: 148, column: 17, scope: !233)
!243 = !DILocation(line: 148, column: 23, scope: !233)
!244 = !DILocation(line: 148, column: 2, scope: !233)
!245 = !DILocation(line: 149, column: 1, scope: !233)
!246 = distinct !DISubprogram(name: "__sha256_final", scope: !3, file: !3, line: 140, type: !247, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !83, !236, !116}
!249 = !{!250, !251, !252}
!250 = !DILocalVariable(name: "sctx", arg: 1, scope: !246, file: !3, line: 140, type: !83)
!251 = !DILocalVariable(name: "out", arg: 2, scope: !246, file: !3, line: 140, type: !236)
!252 = !DILocalVariable(name: "digest_size", arg: 3, scope: !246, file: !3, line: 140, type: !116)
!253 = !DILocation(line: 140, column: 49, scope: !246)
!254 = !DILocation(line: 140, column: 59, scope: !246)
!255 = !DILocation(line: 140, column: 68, scope: !246)
!256 = !DILocation(line: 142, column: 30, scope: !246)
!257 = !DILocation(line: 142, column: 2, scope: !246)
!258 = !DILocation(line: 143, column: 25, scope: !246)
!259 = !DILocation(line: 143, column: 31, scope: !246)
!260 = !DILocation(line: 143, column: 36, scope: !246)
!261 = !DILocation(line: 143, column: 2, scope: !246)
!262 = !DILocation(line: 144, column: 1, scope: !246)
!263 = distinct !DISubprogram(name: "sha224_final", scope: !3, file: !3, line: 152, type: !234, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!264 = !{!265, !266}
!265 = !DILocalVariable(name: "sctx", arg: 1, scope: !263, file: !3, line: 152, type: !83)
!266 = !DILocalVariable(name: "out", arg: 2, scope: !263, file: !3, line: 152, type: !236)
!267 = !DILocation(line: 152, column: 40, scope: !263)
!268 = !DILocation(line: 152, column: 50, scope: !263)
!269 = !DILocation(line: 154, column: 17, scope: !263)
!270 = !DILocation(line: 154, column: 23, scope: !263)
!271 = !DILocation(line: 154, column: 2, scope: !263)
!272 = !DILocation(line: 155, column: 1, scope: !263)
!273 = distinct !DISubprogram(name: "sha256", scope: !3, file: !3, line: 158, type: !274, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !276)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !98, !9, !236}
!276 = !{!277, !278, !279, !280}
!277 = !DILocalVariable(name: "data", arg: 1, scope: !273, file: !3, line: 158, type: !98)
!278 = !DILocalVariable(name: "len", arg: 2, scope: !273, file: !3, line: 158, type: !9)
!279 = !DILocalVariable(name: "out", arg: 3, scope: !273, file: !3, line: 158, type: !236)
!280 = !DILocalVariable(name: "sctx", scope: !273, file: !3, line: 160, type: !84)
!281 = !DILocation(line: 158, column: 23, scope: !273)
!282 = !DILocation(line: 158, column: 42, scope: !273)
!283 = !DILocation(line: 158, column: 51, scope: !273)
!284 = !DILocation(line: 160, column: 2, scope: !273)
!285 = !DILocation(line: 160, column: 22, scope: !273)
!286 = !DILocation(line: 162, column: 2, scope: !273)
!287 = !DILocation(line: 163, column: 23, scope: !273)
!288 = !DILocation(line: 163, column: 29, scope: !273)
!289 = !DILocation(line: 163, column: 2, scope: !273)
!290 = !DILocation(line: 164, column: 22, scope: !273)
!291 = !DILocation(line: 164, column: 2, scope: !273)
!292 = !DILocation(line: 165, column: 1, scope: !273)
!293 = distinct !DISubprogram(name: "sha256_init", scope: !85, file: !85, line: 103, type: !294, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !83}
!296 = !{!297}
!297 = !DILocalVariable(name: "sctx", arg: 1, scope: !293, file: !85, line: 103, type: !83)
!298 = !DILocation(line: 103, column: 53, scope: !293)
!299 = !DILocation(line: 105, column: 2, scope: !293)
!300 = !DILocation(line: 105, column: 8, scope: !293)
!301 = !DILocation(line: 105, column: 17, scope: !293)
!302 = !DILocation(line: 106, column: 2, scope: !293)
!303 = !DILocation(line: 106, column: 8, scope: !293)
!304 = !DILocation(line: 106, column: 17, scope: !293)
!305 = !DILocation(line: 107, column: 2, scope: !293)
!306 = !DILocation(line: 107, column: 8, scope: !293)
!307 = !DILocation(line: 107, column: 17, scope: !293)
!308 = !DILocation(line: 108, column: 2, scope: !293)
!309 = !DILocation(line: 108, column: 8, scope: !293)
!310 = !DILocation(line: 108, column: 17, scope: !293)
!311 = !DILocation(line: 109, column: 2, scope: !293)
!312 = !DILocation(line: 109, column: 8, scope: !293)
!313 = !DILocation(line: 109, column: 17, scope: !293)
!314 = !DILocation(line: 110, column: 2, scope: !293)
!315 = !DILocation(line: 110, column: 8, scope: !293)
!316 = !DILocation(line: 110, column: 17, scope: !293)
!317 = !DILocation(line: 111, column: 2, scope: !293)
!318 = !DILocation(line: 111, column: 8, scope: !293)
!319 = !DILocation(line: 111, column: 17, scope: !293)
!320 = !DILocation(line: 112, column: 2, scope: !293)
!321 = !DILocation(line: 112, column: 8, scope: !293)
!322 = !DILocation(line: 112, column: 17, scope: !293)
!323 = !DILocation(line: 113, column: 2, scope: !293)
!324 = !DILocation(line: 113, column: 8, scope: !293)
!325 = !DILocation(line: 113, column: 14, scope: !293)
!326 = !DILocation(line: 114, column: 1, scope: !293)
!327 = distinct !DISubprogram(name: "sha256_transform", scope: !3, file: !3, line: 72, type: !328, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !330, !98, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !349, !350, !352, !353, !355, !356, !358, !359, !361, !362, !364, !365, !367, !368, !370}
!332 = !DILocalVariable(name: "state", arg: 1, scope: !327, file: !3, line: 72, type: !330)
!333 = !DILocalVariable(name: "input", arg: 2, scope: !327, file: !3, line: 72, type: !98)
!334 = !DILocalVariable(name: "W", arg: 3, scope: !327, file: !3, line: 72, type: !330)
!335 = !DILocalVariable(name: "a", scope: !327, file: !3, line: 74, type: !19)
!336 = !DILocalVariable(name: "b", scope: !327, file: !3, line: 74, type: !19)
!337 = !DILocalVariable(name: "c", scope: !327, file: !3, line: 74, type: !19)
!338 = !DILocalVariable(name: "d", scope: !327, file: !3, line: 74, type: !19)
!339 = !DILocalVariable(name: "e", scope: !327, file: !3, line: 74, type: !19)
!340 = !DILocalVariable(name: "f", scope: !327, file: !3, line: 74, type: !19)
!341 = !DILocalVariable(name: "g", scope: !327, file: !3, line: 74, type: !19)
!342 = !DILocalVariable(name: "h", scope: !327, file: !3, line: 74, type: !19)
!343 = !DILocalVariable(name: "i", scope: !327, file: !3, line: 75, type: !116)
!344 = !DILocalVariable(name: "t1", scope: !345, file: !3, line: 107, type: !19)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 107, column: 3)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 106, column: 30)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 106, column: 2)
!348 = distinct !DILexicalBlock(scope: !327, file: !3, line: 106, column: 2)
!349 = !DILocalVariable(name: "t2", scope: !345, file: !3, line: 107, type: !19)
!350 = !DILocalVariable(name: "t1", scope: !351, file: !3, line: 108, type: !19)
!351 = distinct !DILexicalBlock(scope: !346, file: !3, line: 108, column: 3)
!352 = !DILocalVariable(name: "t2", scope: !351, file: !3, line: 108, type: !19)
!353 = !DILocalVariable(name: "t1", scope: !354, file: !3, line: 109, type: !19)
!354 = distinct !DILexicalBlock(scope: !346, file: !3, line: 109, column: 3)
!355 = !DILocalVariable(name: "t2", scope: !354, file: !3, line: 109, type: !19)
!356 = !DILocalVariable(name: "t1", scope: !357, file: !3, line: 110, type: !19)
!357 = distinct !DILexicalBlock(scope: !346, file: !3, line: 110, column: 3)
!358 = !DILocalVariable(name: "t2", scope: !357, file: !3, line: 110, type: !19)
!359 = !DILocalVariable(name: "t1", scope: !360, file: !3, line: 111, type: !19)
!360 = distinct !DILexicalBlock(scope: !346, file: !3, line: 111, column: 3)
!361 = !DILocalVariable(name: "t2", scope: !360, file: !3, line: 111, type: !19)
!362 = !DILocalVariable(name: "t1", scope: !363, file: !3, line: 112, type: !19)
!363 = distinct !DILexicalBlock(scope: !346, file: !3, line: 112, column: 3)
!364 = !DILocalVariable(name: "t2", scope: !363, file: !3, line: 112, type: !19)
!365 = !DILocalVariable(name: "t1", scope: !366, file: !3, line: 113, type: !19)
!366 = distinct !DILexicalBlock(scope: !346, file: !3, line: 113, column: 3)
!367 = !DILocalVariable(name: "t2", scope: !366, file: !3, line: 113, type: !19)
!368 = !DILocalVariable(name: "t1", scope: !369, file: !3, line: 114, type: !19)
!369 = distinct !DILexicalBlock(scope: !346, file: !3, line: 114, column: 3)
!370 = !DILocalVariable(name: "t2", scope: !369, file: !3, line: 114, type: !19)
!371 = !DILocation(line: 72, column: 35, scope: !327)
!372 = !DILocation(line: 72, column: 52, scope: !327)
!373 = !DILocation(line: 72, column: 64, scope: !327)
!374 = !DILocation(line: 74, column: 2, scope: !327)
!375 = !DILocation(line: 74, column: 6, scope: !327)
!376 = !DILocation(line: 74, column: 9, scope: !327)
!377 = !DILocation(line: 74, column: 12, scope: !327)
!378 = !DILocation(line: 74, column: 15, scope: !327)
!379 = !DILocation(line: 74, column: 18, scope: !327)
!380 = !DILocation(line: 74, column: 21, scope: !327)
!381 = !DILocation(line: 74, column: 24, scope: !327)
!382 = !DILocation(line: 74, column: 27, scope: !327)
!383 = !DILocation(line: 75, column: 2, scope: !327)
!384 = !DILocation(line: 75, column: 6, scope: !327)
!385 = !DILocation(line: 78, column: 9, scope: !386)
!386 = distinct !DILexicalBlock(scope: !327, file: !3, line: 78, column: 2)
!387 = !DILocation(line: 78, column: 7, scope: !386)
!388 = !DILocation(line: 78, column: 14, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !3, line: 78, column: 2)
!390 = !DILocation(line: 78, column: 16, scope: !389)
!391 = !DILocation(line: 78, column: 2, scope: !386)
!392 = !DILocation(line: 79, column: 11, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !3, line: 78, column: 30)
!394 = !DILocation(line: 79, column: 13, scope: !393)
!395 = !DILocation(line: 79, column: 18, scope: !393)
!396 = !DILocation(line: 79, column: 21, scope: !393)
!397 = !DILocation(line: 79, column: 3, scope: !393)
!398 = !DILocation(line: 80, column: 11, scope: !393)
!399 = !DILocation(line: 80, column: 13, scope: !393)
!400 = !DILocation(line: 80, column: 18, scope: !393)
!401 = !DILocation(line: 80, column: 21, scope: !393)
!402 = !DILocation(line: 80, column: 3, scope: !393)
!403 = !DILocation(line: 81, column: 11, scope: !393)
!404 = !DILocation(line: 81, column: 13, scope: !393)
!405 = !DILocation(line: 81, column: 18, scope: !393)
!406 = !DILocation(line: 81, column: 21, scope: !393)
!407 = !DILocation(line: 81, column: 3, scope: !393)
!408 = !DILocation(line: 82, column: 11, scope: !393)
!409 = !DILocation(line: 82, column: 13, scope: !393)
!410 = !DILocation(line: 82, column: 18, scope: !393)
!411 = !DILocation(line: 82, column: 21, scope: !393)
!412 = !DILocation(line: 82, column: 3, scope: !393)
!413 = !DILocation(line: 83, column: 11, scope: !393)
!414 = !DILocation(line: 83, column: 13, scope: !393)
!415 = !DILocation(line: 83, column: 18, scope: !393)
!416 = !DILocation(line: 83, column: 21, scope: !393)
!417 = !DILocation(line: 83, column: 3, scope: !393)
!418 = !DILocation(line: 84, column: 11, scope: !393)
!419 = !DILocation(line: 84, column: 13, scope: !393)
!420 = !DILocation(line: 84, column: 18, scope: !393)
!421 = !DILocation(line: 84, column: 21, scope: !393)
!422 = !DILocation(line: 84, column: 3, scope: !393)
!423 = !DILocation(line: 85, column: 11, scope: !393)
!424 = !DILocation(line: 85, column: 13, scope: !393)
!425 = !DILocation(line: 85, column: 18, scope: !393)
!426 = !DILocation(line: 85, column: 21, scope: !393)
!427 = !DILocation(line: 85, column: 3, scope: !393)
!428 = !DILocation(line: 86, column: 11, scope: !393)
!429 = !DILocation(line: 86, column: 13, scope: !393)
!430 = !DILocation(line: 86, column: 18, scope: !393)
!431 = !DILocation(line: 86, column: 21, scope: !393)
!432 = !DILocation(line: 86, column: 3, scope: !393)
!433 = !DILocation(line: 87, column: 2, scope: !393)
!434 = !DILocation(line: 78, column: 24, scope: !389)
!435 = !DILocation(line: 78, column: 2, scope: !389)
!436 = distinct !{!436, !391, !437, !228, !229}
!437 = !DILocation(line: 87, column: 2, scope: !386)
!438 = !DILocation(line: 90, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !327, file: !3, line: 90, column: 2)
!440 = !DILocation(line: 90, column: 7, scope: !439)
!441 = !DILocation(line: 90, column: 15, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !3, line: 90, column: 2)
!443 = !DILocation(line: 90, column: 17, scope: !442)
!444 = !DILocation(line: 90, column: 2, scope: !439)
!445 = !DILocation(line: 91, column: 12, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !3, line: 90, column: 31)
!447 = !DILocation(line: 91, column: 14, scope: !446)
!448 = !DILocation(line: 91, column: 19, scope: !446)
!449 = !DILocation(line: 91, column: 3, scope: !446)
!450 = !DILocation(line: 92, column: 12, scope: !446)
!451 = !DILocation(line: 92, column: 14, scope: !446)
!452 = !DILocation(line: 92, column: 19, scope: !446)
!453 = !DILocation(line: 92, column: 3, scope: !446)
!454 = !DILocation(line: 93, column: 12, scope: !446)
!455 = !DILocation(line: 93, column: 14, scope: !446)
!456 = !DILocation(line: 93, column: 19, scope: !446)
!457 = !DILocation(line: 93, column: 3, scope: !446)
!458 = !DILocation(line: 94, column: 12, scope: !446)
!459 = !DILocation(line: 94, column: 14, scope: !446)
!460 = !DILocation(line: 94, column: 19, scope: !446)
!461 = !DILocation(line: 94, column: 3, scope: !446)
!462 = !DILocation(line: 95, column: 12, scope: !446)
!463 = !DILocation(line: 95, column: 14, scope: !446)
!464 = !DILocation(line: 95, column: 19, scope: !446)
!465 = !DILocation(line: 95, column: 3, scope: !446)
!466 = !DILocation(line: 96, column: 12, scope: !446)
!467 = !DILocation(line: 96, column: 14, scope: !446)
!468 = !DILocation(line: 96, column: 19, scope: !446)
!469 = !DILocation(line: 96, column: 3, scope: !446)
!470 = !DILocation(line: 97, column: 12, scope: !446)
!471 = !DILocation(line: 97, column: 14, scope: !446)
!472 = !DILocation(line: 97, column: 19, scope: !446)
!473 = !DILocation(line: 97, column: 3, scope: !446)
!474 = !DILocation(line: 98, column: 12, scope: !446)
!475 = !DILocation(line: 98, column: 14, scope: !446)
!476 = !DILocation(line: 98, column: 19, scope: !446)
!477 = !DILocation(line: 98, column: 3, scope: !446)
!478 = !DILocation(line: 99, column: 2, scope: !446)
!479 = !DILocation(line: 90, column: 25, scope: !442)
!480 = !DILocation(line: 90, column: 2, scope: !442)
!481 = distinct !{!481, !444, !482, !228, !229}
!482 = !DILocation(line: 99, column: 2, scope: !439)
!483 = !DILocation(line: 102, column: 6, scope: !327)
!484 = !DILocation(line: 102, column: 4, scope: !327)
!485 = !DILocation(line: 102, column: 21, scope: !327)
!486 = !DILocation(line: 102, column: 19, scope: !327)
!487 = !DILocation(line: 102, column: 36, scope: !327)
!488 = !DILocation(line: 102, column: 34, scope: !327)
!489 = !DILocation(line: 102, column: 51, scope: !327)
!490 = !DILocation(line: 102, column: 49, scope: !327)
!491 = !DILocation(line: 103, column: 6, scope: !327)
!492 = !DILocation(line: 103, column: 4, scope: !327)
!493 = !DILocation(line: 103, column: 21, scope: !327)
!494 = !DILocation(line: 103, column: 19, scope: !327)
!495 = !DILocation(line: 103, column: 36, scope: !327)
!496 = !DILocation(line: 103, column: 34, scope: !327)
!497 = !DILocation(line: 103, column: 51, scope: !327)
!498 = !DILocation(line: 103, column: 49, scope: !327)
!499 = !DILocation(line: 106, column: 9, scope: !348)
!500 = !DILocation(line: 106, column: 7, scope: !348)
!501 = !DILocation(line: 106, column: 14, scope: !347)
!502 = !DILocation(line: 106, column: 16, scope: !347)
!503 = !DILocation(line: 106, column: 2, scope: !348)
!504 = !DILocation(line: 107, column: 3, scope: !346)
!505 = !DILocation(line: 107, column: 3, scope: !345)
!506 = !DILocation(line: 108, column: 3, scope: !346)
!507 = !DILocation(line: 108, column: 3, scope: !351)
!508 = !DILocation(line: 109, column: 3, scope: !346)
!509 = !DILocation(line: 109, column: 3, scope: !354)
!510 = !DILocation(line: 110, column: 3, scope: !346)
!511 = !DILocation(line: 110, column: 3, scope: !357)
!512 = !DILocation(line: 111, column: 3, scope: !346)
!513 = !DILocation(line: 111, column: 3, scope: !360)
!514 = !DILocation(line: 112, column: 3, scope: !346)
!515 = !DILocation(line: 112, column: 3, scope: !363)
!516 = !DILocation(line: 113, column: 3, scope: !346)
!517 = !DILocation(line: 113, column: 3, scope: !366)
!518 = !DILocation(line: 114, column: 3, scope: !346)
!519 = !DILocation(line: 114, column: 3, scope: !369)
!520 = !DILocation(line: 115, column: 2, scope: !346)
!521 = !DILocation(line: 106, column: 24, scope: !347)
!522 = !DILocation(line: 106, column: 2, scope: !347)
!523 = distinct !{!523, !503, !524, !228, !229}
!524 = !DILocation(line: 115, column: 2, scope: !348)
!525 = !DILocation(line: 117, column: 14, scope: !327)
!526 = !DILocation(line: 117, column: 2, scope: !327)
!527 = !DILocation(line: 117, column: 11, scope: !327)
!528 = !DILocation(line: 117, column: 29, scope: !327)
!529 = !DILocation(line: 117, column: 17, scope: !327)
!530 = !DILocation(line: 117, column: 26, scope: !327)
!531 = !DILocation(line: 117, column: 44, scope: !327)
!532 = !DILocation(line: 117, column: 32, scope: !327)
!533 = !DILocation(line: 117, column: 41, scope: !327)
!534 = !DILocation(line: 117, column: 59, scope: !327)
!535 = !DILocation(line: 117, column: 47, scope: !327)
!536 = !DILocation(line: 117, column: 56, scope: !327)
!537 = !DILocation(line: 118, column: 14, scope: !327)
!538 = !DILocation(line: 118, column: 2, scope: !327)
!539 = !DILocation(line: 118, column: 11, scope: !327)
!540 = !DILocation(line: 118, column: 29, scope: !327)
!541 = !DILocation(line: 118, column: 17, scope: !327)
!542 = !DILocation(line: 118, column: 26, scope: !327)
!543 = !DILocation(line: 118, column: 44, scope: !327)
!544 = !DILocation(line: 118, column: 32, scope: !327)
!545 = !DILocation(line: 118, column: 41, scope: !327)
!546 = !DILocation(line: 118, column: 59, scope: !327)
!547 = !DILocation(line: 118, column: 47, scope: !327)
!548 = !DILocation(line: 118, column: 56, scope: !327)
!549 = !DILocation(line: 119, column: 1, scope: !327)
!550 = distinct !DISubprogram(name: "memzero_explicit", scope: !551, file: !551, line: 276, type: !552, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !560)
!551 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!552 = !DISubroutineType(types: !553)
!553 = !{null, !5, !554}
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !555, line: 61, baseType: !556)
!555 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !557, line: 72, baseType: !558)
!557 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !557, line: 16, baseType: !559)
!559 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!560 = !{!561, !562}
!561 = !DILocalVariable(name: "s", arg: 1, scope: !550, file: !551, line: 276, type: !5)
!562 = !DILocalVariable(name: "count", arg: 2, scope: !550, file: !551, line: 276, type: !554)
!563 = !DILocation(line: 276, column: 43, scope: !550)
!564 = !DILocation(line: 276, column: 53, scope: !550)
!565 = !DILocation(line: 278, column: 9, scope: !550)
!566 = !DILocation(line: 278, column: 15, scope: !550)
!567 = !DILocation(line: 278, column: 2, scope: !550)
!568 = !DILocation(line: 279, column: 2, scope: !550)
!569 = !{i64 2148836475}
!570 = !DILocation(line: 280, column: 1, scope: !550)
!571 = distinct !DISubprogram(name: "LOAD_OP", scope: !3, file: !3, line: 54, type: !572, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !116, !330, !98}
!574 = !{!575, !576, !577}
!575 = !DILocalVariable(name: "I", arg: 1, scope: !571, file: !3, line: 54, type: !116)
!576 = !DILocalVariable(name: "W", arg: 2, scope: !571, file: !3, line: 54, type: !330)
!577 = !DILocalVariable(name: "input", arg: 3, scope: !571, file: !3, line: 54, type: !98)
!578 = !DILocation(line: 54, column: 32, scope: !571)
!579 = !DILocation(line: 54, column: 40, scope: !571)
!580 = !DILocation(line: 54, column: 53, scope: !571)
!581 = !DILocation(line: 56, column: 37, scope: !571)
!582 = !DILocation(line: 56, column: 45, scope: !571)
!583 = !DILocation(line: 56, column: 43, scope: !571)
!584 = !DILocation(line: 56, column: 9, scope: !571)
!585 = !DILocation(line: 56, column: 2, scope: !571)
!586 = !DILocation(line: 56, column: 4, scope: !571)
!587 = !DILocation(line: 56, column: 7, scope: !571)
!588 = !DILocation(line: 57, column: 1, scope: !571)
!589 = distinct !DISubprogram(name: "BLEND_OP", scope: !3, file: !3, line: 59, type: !590, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !116, !330}
!592 = !{!593, !594}
!593 = !DILocalVariable(name: "I", arg: 1, scope: !589, file: !3, line: 59, type: !116)
!594 = !DILocalVariable(name: "W", arg: 2, scope: !589, file: !3, line: 59, type: !330)
!595 = !DILocation(line: 59, column: 33, scope: !589)
!596 = !DILocation(line: 59, column: 41, scope: !589)
!597 = !DILocation(line: 61, column: 9, scope: !589)
!598 = !DILocation(line: 61, column: 22, scope: !589)
!599 = !DILocation(line: 61, column: 24, scope: !589)
!600 = !DILocation(line: 61, column: 25, scope: !589)
!601 = !DILocation(line: 61, column: 20, scope: !589)
!602 = !DILocation(line: 61, column: 31, scope: !589)
!603 = !DILocation(line: 61, column: 29, scope: !589)
!604 = !DILocation(line: 61, column: 45, scope: !589)
!605 = !DILocation(line: 61, column: 47, scope: !589)
!606 = !DILocation(line: 61, column: 48, scope: !589)
!607 = !DILocation(line: 61, column: 43, scope: !589)
!608 = !DILocation(line: 61, column: 2, scope: !589)
!609 = !DILocation(line: 61, column: 4, scope: !589)
!610 = !DILocation(line: 61, column: 7, scope: !589)
!611 = !DILocation(line: 62, column: 1, scope: !589)
!612 = distinct !DISubprogram(name: "ror32", scope: !613, file: !613, line: 135, type: !614, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!613 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!614 = !DISubroutineType(types: !615)
!615 = !{!7, !7, !9}
!616 = !{!617, !618}
!617 = !DILocalVariable(name: "word", arg: 1, scope: !612, file: !613, line: 135, type: !7)
!618 = !DILocalVariable(name: "shift", arg: 2, scope: !612, file: !613, line: 135, type: !9)
!619 = !DILocation(line: 135, column: 33, scope: !612)
!620 = !DILocation(line: 135, column: 52, scope: !612)
!621 = !DILocation(line: 137, column: 10, scope: !612)
!622 = !DILocation(line: 137, column: 19, scope: !612)
!623 = !DILocation(line: 137, column: 25, scope: !612)
!624 = !DILocation(line: 137, column: 15, scope: !612)
!625 = !DILocation(line: 137, column: 35, scope: !612)
!626 = !DILocation(line: 137, column: 46, scope: !612)
!627 = !DILocation(line: 137, column: 45, scope: !612)
!628 = !DILocation(line: 137, column: 53, scope: !612)
!629 = !DILocation(line: 137, column: 40, scope: !612)
!630 = !DILocation(line: 137, column: 32, scope: !612)
!631 = !DILocation(line: 137, column: 2, scope: !612)
!632 = distinct !DISubprogram(name: "Ch", scope: !3, file: !3, line: 39, type: !633, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !635)
!633 = !DISubroutineType(types: !634)
!634 = !{!19, !19, !19, !19}
!635 = !{!636, !637, !638}
!636 = !DILocalVariable(name: "x", arg: 1, scope: !632, file: !3, line: 39, type: !19)
!637 = !DILocalVariable(name: "y", arg: 2, scope: !632, file: !3, line: 39, type: !19)
!638 = !DILocalVariable(name: "z", arg: 3, scope: !632, file: !3, line: 39, type: !19)
!639 = !DILocation(line: 39, column: 26, scope: !632)
!640 = !DILocation(line: 39, column: 33, scope: !632)
!641 = !DILocation(line: 39, column: 40, scope: !632)
!642 = !DILocation(line: 41, column: 9, scope: !632)
!643 = !DILocation(line: 41, column: 14, scope: !632)
!644 = !DILocation(line: 41, column: 19, scope: !632)
!645 = !DILocation(line: 41, column: 23, scope: !632)
!646 = !DILocation(line: 41, column: 21, scope: !632)
!647 = !DILocation(line: 41, column: 16, scope: !632)
!648 = !DILocation(line: 41, column: 11, scope: !632)
!649 = !DILocation(line: 41, column: 2, scope: !632)
!650 = distinct !DISubprogram(name: "Maj", scope: !3, file: !3, line: 44, type: !633, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !651)
!651 = !{!652, !653, !654}
!652 = !DILocalVariable(name: "x", arg: 1, scope: !650, file: !3, line: 44, type: !19)
!653 = !DILocalVariable(name: "y", arg: 2, scope: !650, file: !3, line: 44, type: !19)
!654 = !DILocalVariable(name: "z", arg: 3, scope: !650, file: !3, line: 44, type: !19)
!655 = !DILocation(line: 44, column: 27, scope: !650)
!656 = !DILocation(line: 44, column: 34, scope: !650)
!657 = !DILocation(line: 44, column: 41, scope: !650)
!658 = !DILocation(line: 46, column: 10, scope: !650)
!659 = !DILocation(line: 46, column: 14, scope: !650)
!660 = !DILocation(line: 46, column: 12, scope: !650)
!661 = !DILocation(line: 46, column: 20, scope: !650)
!662 = !DILocation(line: 46, column: 25, scope: !650)
!663 = !DILocation(line: 46, column: 29, scope: !650)
!664 = !DILocation(line: 46, column: 27, scope: !650)
!665 = !DILocation(line: 46, column: 22, scope: !650)
!666 = !DILocation(line: 46, column: 17, scope: !650)
!667 = !DILocation(line: 46, column: 2, scope: !650)
!668 = !DILocation(line: 60, column: 50, scope: !16)
!669 = !DILocation(line: 62, column: 9, scope: !26)
!670 = !DILocation(line: 62, column: 9, scope: !16)
!671 = !DILocation(line: 62, column: 2, scope: !16)
!672 = distinct !DISubprogram(name: "lib_sha256_base_do_finalize", scope: !113, file: !113, line: 84, type: !673, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !675)
!673 = !DISubroutineType(types: !674)
!674 = !{!116, !83, !117}
!675 = !{!676, !677, !678, !680, !681}
!676 = !DILocalVariable(name: "sctx", arg: 1, scope: !672, file: !113, line: 84, type: !83)
!677 = !DILocalVariable(name: "block_fn", arg: 2, scope: !672, file: !113, line: 85, type: !117)
!678 = !DILocalVariable(name: "bit_offset", scope: !672, file: !113, line: 87, type: !679)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!680 = !DILocalVariable(name: "bits", scope: !672, file: !113, line: 88, type: !29)
!681 = !DILocalVariable(name: "partial", scope: !672, file: !113, line: 89, type: !9)
!682 = !DILocation(line: 84, column: 68, scope: !672)
!683 = !DILocation(line: 85, column: 29, scope: !672)
!684 = !DILocation(line: 87, column: 2, scope: !672)
!685 = !DILocation(line: 87, column: 12, scope: !672)
!686 = !DILocation(line: 88, column: 2, scope: !672)
!687 = !DILocation(line: 88, column: 10, scope: !672)
!688 = !DILocation(line: 88, column: 28, scope: !672)
!689 = !DILocation(line: 88, column: 34, scope: !672)
!690 = !DILocation(line: 88, column: 38, scope: !672)
!691 = !DILocation(line: 89, column: 2, scope: !672)
!692 = !DILocation(line: 89, column: 15, scope: !672)
!693 = !DILocation(line: 89, column: 25, scope: !672)
!694 = !DILocation(line: 89, column: 31, scope: !672)
!695 = !DILocation(line: 89, column: 37, scope: !672)
!696 = !DILocation(line: 91, column: 2, scope: !672)
!697 = !DILocation(line: 91, column: 8, scope: !672)
!698 = !DILocation(line: 91, column: 19, scope: !672)
!699 = !DILocation(line: 91, column: 23, scope: !672)
!700 = !DILocation(line: 92, column: 6, scope: !701)
!701 = distinct !DILexicalBlock(scope: !672, file: !113, line: 92, column: 6)
!702 = !DILocation(line: 92, column: 14, scope: !701)
!703 = !DILocation(line: 92, column: 6, scope: !672)
!704 = !DILocation(line: 93, column: 10, scope: !705)
!705 = distinct !DILexicalBlock(scope: !701, file: !113, line: 92, column: 28)
!706 = !DILocation(line: 93, column: 16, scope: !705)
!707 = !DILocation(line: 93, column: 22, scope: !705)
!708 = !DILocation(line: 93, column: 20, scope: !705)
!709 = !DILocation(line: 93, column: 56, scope: !705)
!710 = !DILocation(line: 93, column: 54, scope: !705)
!711 = !DILocation(line: 93, column: 36, scope: !705)
!712 = !DILocation(line: 93, column: 3, scope: !705)
!713 = !DILocation(line: 94, column: 11, scope: !705)
!714 = !DILocation(line: 96, column: 3, scope: !705)
!715 = !DILocation(line: 96, column: 12, scope: !705)
!716 = !DILocation(line: 96, column: 18, scope: !705)
!717 = !DILocation(line: 96, column: 24, scope: !705)
!718 = !DILocation(line: 97, column: 2, scope: !705)
!719 = !DILocation(line: 99, column: 9, scope: !672)
!720 = !DILocation(line: 99, column: 15, scope: !672)
!721 = !DILocation(line: 99, column: 21, scope: !672)
!722 = !DILocation(line: 99, column: 19, scope: !672)
!723 = !DILocation(line: 99, column: 48, scope: !672)
!724 = !DILocation(line: 99, column: 46, scope: !672)
!725 = !DILocation(line: 99, column: 35, scope: !672)
!726 = !DILocation(line: 99, column: 2, scope: !672)
!727 = !DILocation(line: 100, column: 10, scope: !672)
!728 = !DILocation(line: 100, column: 3, scope: !672)
!729 = !DILocation(line: 100, column: 8, scope: !672)
!730 = !DILocation(line: 101, column: 2, scope: !672)
!731 = !DILocation(line: 101, column: 11, scope: !672)
!732 = !DILocation(line: 101, column: 17, scope: !672)
!733 = !DILocation(line: 101, column: 23, scope: !672)
!734 = !DILocation(line: 104, column: 1, scope: !672)
!735 = !DILocation(line: 103, column: 2, scope: !672)
!736 = distinct !DISubprogram(name: "lib_sha256_base_finish", scope: !113, file: !113, line: 114, type: !737, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{!116, !83, !236, !9}
!739 = !{!740, !741, !742, !743, !744}
!740 = !DILocalVariable(name: "sctx", arg: 1, scope: !736, file: !113, line: 114, type: !83)
!741 = !DILocalVariable(name: "out", arg: 2, scope: !736, file: !113, line: 114, type: !236)
!742 = !DILocalVariable(name: "digest_size", arg: 3, scope: !736, file: !113, line: 115, type: !9)
!743 = !DILocalVariable(name: "digest", scope: !736, file: !113, line: 117, type: !33)
!744 = !DILocalVariable(name: "i", scope: !736, file: !113, line: 118, type: !116)
!745 = !DILocation(line: 114, column: 63, scope: !736)
!746 = !DILocation(line: 114, column: 73, scope: !736)
!747 = !DILocation(line: 115, column: 20, scope: !736)
!748 = !DILocation(line: 117, column: 2, scope: !736)
!749 = !DILocation(line: 117, column: 10, scope: !736)
!750 = !DILocation(line: 117, column: 29, scope: !736)
!751 = !DILocation(line: 118, column: 2, scope: !736)
!752 = !DILocation(line: 118, column: 6, scope: !736)
!753 = !DILocation(line: 120, column: 9, scope: !754)
!754 = distinct !DILexicalBlock(scope: !736, file: !113, line: 120, column: 2)
!755 = !DILocation(line: 120, column: 7, scope: !754)
!756 = !DILocation(line: 120, column: 14, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !113, line: 120, column: 2)
!758 = !DILocation(line: 120, column: 26, scope: !757)
!759 = !DILocation(line: 120, column: 2, scope: !754)
!760 = !DILocation(line: 121, column: 22, scope: !757)
!761 = !DILocation(line: 121, column: 28, scope: !757)
!762 = !DILocation(line: 121, column: 34, scope: !757)
!763 = !DILocation(line: 121, column: 44, scope: !757)
!764 = !DILocation(line: 121, column: 3, scope: !757)
!765 = !DILocation(line: 120, column: 32, scope: !757)
!766 = !DILocation(line: 120, column: 48, scope: !757)
!767 = !DILocation(line: 120, column: 2, scope: !757)
!768 = distinct !{!768, !759, !769, !228, !229}
!769 = !DILocation(line: 121, column: 46, scope: !754)
!770 = !DILocation(line: 123, column: 19, scope: !736)
!771 = !DILocation(line: 123, column: 2, scope: !736)
!772 = !DILocation(line: 125, column: 1, scope: !736)
!773 = !DILocation(line: 124, column: 2, scope: !736)
!774 = !DILocation(line: 75, column: 43, scope: !36)
!775 = !DILocation(line: 75, column: 54, scope: !36)
!776 = !DILocation(line: 77, column: 2, scope: !36)
!777 = !DILocation(line: 77, column: 2, scope: !43)
!778 = !DILocation(line: 78, column: 1, scope: !36)
