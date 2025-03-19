; ModuleID = 'lib/base64.c'
source_filename = "lib/base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_base64_encode: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad base64_encode ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_base64_decode: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad base64_decode ; .previous"

@base64_table = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16, !dbg !0
@__UNIQUE_ID___addressable_base64_encode3 = internal global ptr @base64_encode, section ".discard.addressable", align 8, !dbg !12
@__UNIQUE_ID___addressable_base64_decode4 = internal global ptr @base64_decode, section ".discard.addressable", align 8, !dbg !14
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_base64_encode3, ptr @__UNIQUE_ID___addressable_base64_decode4], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @base64_encode(ptr noundef %src, i32 noundef %srclen, ptr noundef %dst) #0 align 16 !dbg !30 {
entry:
  %src.addr = alloca ptr, align 8
  %srclen.addr = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %ac = alloca i32, align 4
  %bits = alloca i32, align 4
  %i = alloca i32, align 4
  %cp = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !38, metadata !DIExpression()), !dbg !48
  store i32 %srclen, ptr %srclen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %srclen.addr, metadata !39, metadata !DIExpression()), !dbg !49
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !40, metadata !DIExpression()), !dbg !50
  call void @llvm.lifetime.start.p0(i64 4, ptr %ac) #4, !dbg !51
  call void @llvm.dbg.declare(metadata ptr %ac, metadata !41, metadata !DIExpression()), !dbg !52
  store i32 0, ptr %ac, align 4, !dbg !52
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #4, !dbg !53
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !45, metadata !DIExpression()), !dbg !54
  store i32 0, ptr %bits, align 4, !dbg !54
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !55
  call void @llvm.dbg.declare(metadata ptr %i, metadata !46, metadata !DIExpression()), !dbg !56
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #4, !dbg !57
  call void @llvm.dbg.declare(metadata ptr %cp, metadata !47, metadata !DIExpression()), !dbg !58
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !59
  store ptr %0, ptr %cp, align 8, !dbg !58
  store i32 0, ptr %i, align 4, !dbg !60
  br label %for.cond, !dbg !62

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !63
  %2 = load i32, ptr %srclen.addr, align 4, !dbg !65
  %cmp = icmp slt i32 %1, %2, !dbg !66
  br i1 %cmp, label %for.body, label %for.end, !dbg !67

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %ac, align 4, !dbg !68
  %shl = shl i32 %3, 8, !dbg !70
  %4 = load ptr, ptr %src.addr, align 8, !dbg !71
  %5 = load i32, ptr %i, align 4, !dbg !72
  %idxprom = sext i32 %5 to i64, !dbg !71
  %arrayidx = getelementptr i8, ptr %4, i64 %idxprom, !dbg !71
  %6 = load i8, ptr %arrayidx, align 1, !dbg !71
  %conv = zext i8 %6 to i32, !dbg !71
  %or = or i32 %shl, %conv, !dbg !73
  store i32 %or, ptr %ac, align 4, !dbg !74
  %7 = load i32, ptr %bits, align 4, !dbg !75
  %add = add i32 %7, 8, !dbg !75
  store i32 %add, ptr %bits, align 4, !dbg !75
  br label %do.body, !dbg !76

do.body:                                          ; preds = %do.cond, %for.body
  %8 = load i32, ptr %bits, align 4, !dbg !77
  %sub = sub i32 %8, 6, !dbg !77
  store i32 %sub, ptr %bits, align 4, !dbg !77
  %9 = load i32, ptr %ac, align 4, !dbg !79
  %10 = load i32, ptr %bits, align 4, !dbg !80
  %shr = lshr i32 %9, %10, !dbg !81
  %and = and i32 %shr, 63, !dbg !82
  %idxprom1 = zext i32 %and to i64, !dbg !83
  %arrayidx2 = getelementptr [65 x i8], ptr @base64_table, i64 0, i64 %idxprom1, !dbg !83
  %11 = load i8, ptr %arrayidx2, align 1, !dbg !83
  %12 = load ptr, ptr %cp, align 8, !dbg !84
  %incdec.ptr = getelementptr i8, ptr %12, i32 1, !dbg !84
  store ptr %incdec.ptr, ptr %cp, align 8, !dbg !84
  store i8 %11, ptr %12, align 1, !dbg !85
  br label %do.cond, !dbg !86

do.cond:                                          ; preds = %do.body
  %13 = load i32, ptr %bits, align 4, !dbg !87
  %cmp3 = icmp sge i32 %13, 6, !dbg !88
  br i1 %cmp3, label %do.body, label %do.end, !dbg !86, !llvm.loop !89

do.end:                                           ; preds = %do.cond
  br label %for.inc, !dbg !93

for.inc:                                          ; preds = %do.end
  %14 = load i32, ptr %i, align 4, !dbg !94
  %inc = add i32 %14, 1, !dbg !94
  store i32 %inc, ptr %i, align 4, !dbg !94
  br label %for.cond, !dbg !95, !llvm.loop !96

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %bits, align 4, !dbg !98
  %tobool = icmp ne i32 %15, 0, !dbg !98
  br i1 %tobool, label %if.then, label %if.end, !dbg !100

if.then:                                          ; preds = %for.end
  %16 = load i32, ptr %ac, align 4, !dbg !101
  %17 = load i32, ptr %bits, align 4, !dbg !103
  %sub5 = sub i32 6, %17, !dbg !104
  %shl6 = shl i32 %16, %sub5, !dbg !105
  %and7 = and i32 %shl6, 63, !dbg !106
  %idxprom8 = zext i32 %and7 to i64, !dbg !107
  %arrayidx9 = getelementptr [65 x i8], ptr @base64_table, i64 0, i64 %idxprom8, !dbg !107
  %18 = load i8, ptr %arrayidx9, align 1, !dbg !107
  %19 = load ptr, ptr %cp, align 8, !dbg !108
  %incdec.ptr10 = getelementptr i8, ptr %19, i32 1, !dbg !108
  store ptr %incdec.ptr10, ptr %cp, align 8, !dbg !108
  store i8 %18, ptr %19, align 1, !dbg !109
  %20 = load i32, ptr %bits, align 4, !dbg !110
  %sub11 = sub i32 %20, 6, !dbg !110
  store i32 %sub11, ptr %bits, align 4, !dbg !110
  br label %if.end, !dbg !111

if.end:                                           ; preds = %if.then, %for.end
  br label %while.cond, !dbg !112

while.cond:                                       ; preds = %while.body, %if.end
  %21 = load i32, ptr %bits, align 4, !dbg !113
  %cmp12 = icmp slt i32 %21, 0, !dbg !114
  br i1 %cmp12, label %while.body, label %while.end, !dbg !112

while.body:                                       ; preds = %while.cond
  %22 = load ptr, ptr %cp, align 8, !dbg !115
  %incdec.ptr14 = getelementptr i8, ptr %22, i32 1, !dbg !115
  store ptr %incdec.ptr14, ptr %cp, align 8, !dbg !115
  store i8 61, ptr %22, align 1, !dbg !117
  %23 = load i32, ptr %bits, align 4, !dbg !118
  %add15 = add i32 %23, 2, !dbg !118
  store i32 %add15, ptr %bits, align 4, !dbg !118
  br label %while.cond, !dbg !112, !llvm.loop !119

while.end:                                        ; preds = %while.cond
  %24 = load ptr, ptr %cp, align 8, !dbg !121
  %25 = load ptr, ptr %dst.addr, align 8, !dbg !122
  %sub.ptr.lhs.cast = ptrtoint ptr %24 to i64, !dbg !123
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i64, !dbg !123
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !123
  %conv16 = trunc i64 %sub.ptr.sub to i32, !dbg !121
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #4, !dbg !124
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !124
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #4, !dbg !124
  call void @llvm.lifetime.end.p0(i64 4, ptr %ac) #4, !dbg !124
  ret i32 %conv16, !dbg !125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @base64_decode(ptr noundef %src, i32 noundef %srclen, ptr noundef %dst) #0 align 16 !dbg !126 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %srclen.addr = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %ac = alloca i32, align 4
  %bits = alloca i32, align 4
  %i = alloca i32, align 4
  %bp = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !132, metadata !DIExpression()), !dbg !143
  store i32 %srclen, ptr %srclen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %srclen.addr, metadata !133, metadata !DIExpression()), !dbg !144
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !134, metadata !DIExpression()), !dbg !145
  call void @llvm.lifetime.start.p0(i64 4, ptr %ac) #4, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %ac, metadata !135, metadata !DIExpression()), !dbg !147
  store i32 0, ptr %ac, align 4, !dbg !147
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #4, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !136, metadata !DIExpression()), !dbg !149
  store i32 0, ptr %bits, align 4, !dbg !149
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !150
  call void @llvm.dbg.declare(metadata ptr %i, metadata !137, metadata !DIExpression()), !dbg !151
  call void @llvm.lifetime.start.p0(i64 8, ptr %bp) #4, !dbg !152
  call void @llvm.dbg.declare(metadata ptr %bp, metadata !138, metadata !DIExpression()), !dbg !153
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !154
  store ptr %0, ptr %bp, align 8, !dbg !153
  store i32 0, ptr %i, align 4, !dbg !155
  br label %for.cond, !dbg !156

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !157
  %2 = load i32, ptr %srclen.addr, align 4, !dbg !158
  %cmp = icmp slt i32 %1, %2, !dbg !159
  br i1 %cmp, label %for.body, label %for.end, !dbg !160

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %p, metadata !139, metadata !DIExpression()), !dbg !162
  %3 = load ptr, ptr %src.addr, align 8, !dbg !163
  %4 = load i32, ptr %i, align 4, !dbg !164
  %idxprom = sext i32 %4 to i64, !dbg !163
  %arrayidx = getelementptr i8, ptr %3, i64 %idxprom, !dbg !163
  %5 = load i8, ptr %arrayidx, align 1, !dbg !163
  %conv = zext i8 %5 to i32, !dbg !163
  %call = call ptr @strchr(ptr noundef @base64_table, i32 noundef %conv) #5, !dbg !165
  store ptr %call, ptr %p, align 8, !dbg !162
  %6 = load ptr, ptr %src.addr, align 8, !dbg !166
  %7 = load i32, ptr %i, align 4, !dbg !168
  %idxprom1 = sext i32 %7 to i64, !dbg !166
  %arrayidx2 = getelementptr i8, ptr %6, i64 %idxprom1, !dbg !166
  %8 = load i8, ptr %arrayidx2, align 1, !dbg !166
  %conv3 = zext i8 %8 to i32, !dbg !166
  %cmp4 = icmp eq i32 %conv3, 61, !dbg !169
  br i1 %cmp4, label %if.then, label %if.end9, !dbg !170

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %ac, align 4, !dbg !171
  %shl = shl i32 %9, 6, !dbg !173
  store i32 %shl, ptr %ac, align 4, !dbg !174
  %10 = load i32, ptr %bits, align 4, !dbg !175
  %add = add i32 %10, 6, !dbg !175
  store i32 %add, ptr %bits, align 4, !dbg !175
  %11 = load i32, ptr %bits, align 4, !dbg !176
  %cmp6 = icmp sge i32 %11, 8, !dbg !178
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !179

if.then8:                                         ; preds = %if.then
  %12 = load i32, ptr %bits, align 4, !dbg !180
  %sub = sub i32 %12, 8, !dbg !180
  store i32 %sub, ptr %bits, align 4, !dbg !180
  br label %if.end, !dbg !181

if.end:                                           ; preds = %if.then8, %if.then
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !182

if.end9:                                          ; preds = %for.body
  %13 = load ptr, ptr %p, align 8, !dbg !183
  %cmp10 = icmp eq ptr %13, null, !dbg !185
  br i1 %cmp10, label %if.then17, label %lor.lhs.false, !dbg !186

lor.lhs.false:                                    ; preds = %if.end9
  %14 = load ptr, ptr %src.addr, align 8, !dbg !187
  %15 = load i32, ptr %i, align 4, !dbg !188
  %idxprom12 = sext i32 %15 to i64, !dbg !187
  %arrayidx13 = getelementptr i8, ptr %14, i64 %idxprom12, !dbg !187
  %16 = load i8, ptr %arrayidx13, align 1, !dbg !187
  %conv14 = zext i8 %16 to i32, !dbg !187
  %cmp15 = icmp eq i32 %conv14, 0, !dbg !189
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !190

if.then17:                                        ; preds = %lor.lhs.false, %if.end9
  store i32 -1, ptr %retval, align 4, !dbg !191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !191

if.end18:                                         ; preds = %lor.lhs.false
  %17 = load i32, ptr %ac, align 4, !dbg !192
  %shl19 = shl i32 %17, 6, !dbg !193
  %conv20 = zext i32 %shl19 to i64, !dbg !194
  %18 = load ptr, ptr %p, align 8, !dbg !195
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i64, !dbg !196
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @base64_table to i64), !dbg !196
  %or = or i64 %conv20, %sub.ptr.sub, !dbg !197
  %conv21 = trunc i64 %or to i32, !dbg !194
  store i32 %conv21, ptr %ac, align 4, !dbg !198
  %19 = load i32, ptr %bits, align 4, !dbg !199
  %add22 = add i32 %19, 6, !dbg !199
  store i32 %add22, ptr %bits, align 4, !dbg !199
  %20 = load i32, ptr %bits, align 4, !dbg !200
  %cmp23 = icmp sge i32 %20, 8, !dbg !202
  br i1 %cmp23, label %if.then25, label %if.end28, !dbg !203

if.then25:                                        ; preds = %if.end18
  %21 = load i32, ptr %bits, align 4, !dbg !204
  %sub26 = sub i32 %21, 8, !dbg !204
  store i32 %sub26, ptr %bits, align 4, !dbg !204
  %22 = load i32, ptr %ac, align 4, !dbg !206
  %23 = load i32, ptr %bits, align 4, !dbg !207
  %shr = lshr i32 %22, %23, !dbg !208
  %conv27 = trunc i32 %shr to i8, !dbg !209
  %24 = load ptr, ptr %bp, align 8, !dbg !210
  %incdec.ptr = getelementptr i8, ptr %24, i32 1, !dbg !210
  store ptr %incdec.ptr, ptr %bp, align 8, !dbg !210
  store i8 %conv27, ptr %24, align 1, !dbg !211
  br label %if.end28, !dbg !212

if.end28:                                         ; preds = %if.then25, %if.end18
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !213
  br label %cleanup, !dbg !213

cleanup:                                          ; preds = %if.end28, %if.then17, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4, !dbg !213
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup36 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !214

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %25 = load i32, ptr %i, align 4, !dbg !215
  %inc = add i32 %25, 1, !dbg !215
  store i32 %inc, ptr %i, align 4, !dbg !215
  br label %for.cond, !dbg !216, !llvm.loop !217

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %ac, align 4, !dbg !219
  %27 = load i32, ptr %bits, align 4, !dbg !221
  %shl29 = shl i32 1, %27, !dbg !222
  %sub30 = sub i32 %shl29, 1, !dbg !223
  %and = and i32 %26, %sub30, !dbg !224
  %tobool = icmp ne i32 %and, 0, !dbg !224
  br i1 %tobool, label %if.then31, label %if.end32, !dbg !225

if.then31:                                        ; preds = %for.end
  store i32 -1, ptr %retval, align 4, !dbg !226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !226

if.end32:                                         ; preds = %for.end
  %28 = load ptr, ptr %bp, align 8, !dbg !227
  %29 = load ptr, ptr %dst.addr, align 8, !dbg !228
  %sub.ptr.lhs.cast33 = ptrtoint ptr %28 to i64, !dbg !229
  %sub.ptr.rhs.cast = ptrtoint ptr %29 to i64, !dbg !229
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast, !dbg !229
  %conv35 = trunc i64 %sub.ptr.sub34 to i32, !dbg !227
  store i32 %conv35, ptr %retval, align 4, !dbg !230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !230

cleanup36:                                        ; preds = %if.end32, %if.then31, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %bp) #4, !dbg !231
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !231
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #4, !dbg !231
  call void @llvm.lifetime.end.p0(i64 4, ptr %ac) #4, !dbg !231
  %30 = load i32, ptr %retval, align 4, !dbg !231
  ret i32 %30, !dbg !231
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !232 dso_local ptr @strchr(ptr noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "base64_table", scope: !2, file: !3, line: 18, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.base64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/base64\22 -D KBUILD_BASENAME=\22base64\22 -D KBUILD_MODNAME=\22base64\22 -D __KBUILD_MODNAME=kmod_base64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/base64.ll lib/base64.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/base64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a127491704799c1470f148e59f1d9f7")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!12, !14, !0}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_base64_encode3", scope: !2, file: !3, line: 57, type: !5, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_base64_decode4", scope: !2, file: !3, line: 103, type: !5, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 520, elements: !19)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !{!20}
!20 = !DISubrange(count: 65)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 8, !"cf-protection-branch", i32 1}
!25 = !{i32 4, !"function_return_thunk_extern", i32 1}
!26 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!27 = !{i32 1, !"Code Model", i32 2}
!28 = !{i32 1, !"override-stack-alignment", i32 8}
!29 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!30 = distinct !DISubprogram(name: "base64_encode", scope: !3, file: !3, line: 32, type: !31, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !37)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !34, !33, !36}
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!37 = !{!38, !39, !40, !41, !45, !46, !47}
!38 = !DILocalVariable(name: "src", arg: 1, scope: !30, file: !3, line: 32, type: !34)
!39 = !DILocalVariable(name: "srclen", arg: 2, scope: !30, file: !3, line: 32, type: !33)
!40 = !DILocalVariable(name: "dst", arg: 3, scope: !30, file: !3, line: 32, type: !36)
!41 = !DILocalVariable(name: "ac", scope: !30, file: !3, line: 34, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !44)
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!45 = !DILocalVariable(name: "bits", scope: !30, file: !3, line: 35, type: !33)
!46 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 36, type: !33)
!47 = !DILocalVariable(name: "cp", scope: !30, file: !3, line: 37, type: !36)
!48 = !DILocation(line: 32, column: 29, scope: !30)
!49 = !DILocation(line: 32, column: 38, scope: !30)
!50 = !DILocation(line: 32, column: 52, scope: !30)
!51 = !DILocation(line: 34, column: 2, scope: !30)
!52 = !DILocation(line: 34, column: 6, scope: !30)
!53 = !DILocation(line: 35, column: 2, scope: !30)
!54 = !DILocation(line: 35, column: 6, scope: !30)
!55 = !DILocation(line: 36, column: 2, scope: !30)
!56 = !DILocation(line: 36, column: 6, scope: !30)
!57 = !DILocation(line: 37, column: 2, scope: !30)
!58 = !DILocation(line: 37, column: 8, scope: !30)
!59 = !DILocation(line: 37, column: 13, scope: !30)
!60 = !DILocation(line: 39, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !30, file: !3, line: 39, column: 2)
!62 = !DILocation(line: 39, column: 7, scope: !61)
!63 = !DILocation(line: 39, column: 14, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !3, line: 39, column: 2)
!65 = !DILocation(line: 39, column: 18, scope: !64)
!66 = !DILocation(line: 39, column: 16, scope: !64)
!67 = !DILocation(line: 39, column: 2, scope: !61)
!68 = !DILocation(line: 40, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !3, line: 39, column: 31)
!70 = !DILocation(line: 40, column: 12, scope: !69)
!71 = !DILocation(line: 40, column: 20, scope: !69)
!72 = !DILocation(line: 40, column: 24, scope: !69)
!73 = !DILocation(line: 40, column: 18, scope: !69)
!74 = !DILocation(line: 40, column: 6, scope: !69)
!75 = !DILocation(line: 41, column: 8, scope: !69)
!76 = !DILocation(line: 42, column: 3, scope: !69)
!77 = !DILocation(line: 43, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !69, file: !3, line: 42, column: 6)
!79 = !DILocation(line: 44, column: 26, scope: !78)
!80 = !DILocation(line: 44, column: 32, scope: !78)
!81 = !DILocation(line: 44, column: 29, scope: !78)
!82 = !DILocation(line: 44, column: 38, scope: !78)
!83 = !DILocation(line: 44, column: 12, scope: !78)
!84 = !DILocation(line: 44, column: 7, scope: !78)
!85 = !DILocation(line: 44, column: 10, scope: !78)
!86 = !DILocation(line: 45, column: 3, scope: !78)
!87 = !DILocation(line: 45, column: 12, scope: !69)
!88 = !DILocation(line: 45, column: 17, scope: !69)
!89 = distinct !{!89, !76, !90, !91, !92}
!90 = !DILocation(line: 45, column: 21, scope: !69)
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !DILocation(line: 46, column: 2, scope: !69)
!94 = !DILocation(line: 39, column: 27, scope: !64)
!95 = !DILocation(line: 39, column: 2, scope: !64)
!96 = distinct !{!96, !67, !97, !91, !92}
!97 = !DILocation(line: 46, column: 2, scope: !61)
!98 = !DILocation(line: 47, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !30, file: !3, line: 47, column: 6)
!100 = !DILocation(line: 47, column: 6, scope: !30)
!101 = !DILocation(line: 48, column: 25, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !3, line: 47, column: 12)
!103 = !DILocation(line: 48, column: 36, scope: !102)
!104 = !DILocation(line: 48, column: 34, scope: !102)
!105 = !DILocation(line: 48, column: 28, scope: !102)
!106 = !DILocation(line: 48, column: 43, scope: !102)
!107 = !DILocation(line: 48, column: 11, scope: !102)
!108 = !DILocation(line: 48, column: 6, scope: !102)
!109 = !DILocation(line: 48, column: 9, scope: !102)
!110 = !DILocation(line: 49, column: 8, scope: !102)
!111 = !DILocation(line: 50, column: 2, scope: !102)
!112 = !DILocation(line: 51, column: 2, scope: !30)
!113 = !DILocation(line: 51, column: 9, scope: !30)
!114 = !DILocation(line: 51, column: 14, scope: !30)
!115 = !DILocation(line: 52, column: 6, scope: !116)
!116 = distinct !DILexicalBlock(scope: !30, file: !3, line: 51, column: 19)
!117 = !DILocation(line: 52, column: 9, scope: !116)
!118 = !DILocation(line: 53, column: 8, scope: !116)
!119 = distinct !{!119, !112, !120, !91, !92}
!120 = !DILocation(line: 54, column: 2, scope: !30)
!121 = !DILocation(line: 55, column: 9, scope: !30)
!122 = !DILocation(line: 55, column: 14, scope: !30)
!123 = !DILocation(line: 55, column: 12, scope: !30)
!124 = !DILocation(line: 56, column: 1, scope: !30)
!125 = !DILocation(line: 55, column: 2, scope: !30)
!126 = distinct !DISubprogram(name: "base64_decode", scope: !3, file: !3, line: 73, type: !127, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !131)
!127 = !DISubroutineType(types: !128)
!128 = !{!33, !129, !33, !130}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139}
!132 = !DILocalVariable(name: "src", arg: 1, scope: !126, file: !3, line: 73, type: !129)
!133 = !DILocalVariable(name: "srclen", arg: 2, scope: !126, file: !3, line: 73, type: !33)
!134 = !DILocalVariable(name: "dst", arg: 3, scope: !126, file: !3, line: 73, type: !130)
!135 = !DILocalVariable(name: "ac", scope: !126, file: !3, line: 75, type: !42)
!136 = !DILocalVariable(name: "bits", scope: !126, file: !3, line: 76, type: !33)
!137 = !DILocalVariable(name: "i", scope: !126, file: !3, line: 77, type: !33)
!138 = !DILocalVariable(name: "bp", scope: !126, file: !3, line: 78, type: !130)
!139 = !DILocalVariable(name: "p", scope: !140, file: !3, line: 81, type: !129)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 80, column: 31)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 80, column: 2)
!142 = distinct !DILexicalBlock(scope: !126, file: !3, line: 80, column: 2)
!143 = !DILocation(line: 73, column: 31, scope: !126)
!144 = !DILocation(line: 73, column: 40, scope: !126)
!145 = !DILocation(line: 73, column: 52, scope: !126)
!146 = !DILocation(line: 75, column: 2, scope: !126)
!147 = !DILocation(line: 75, column: 6, scope: !126)
!148 = !DILocation(line: 76, column: 2, scope: !126)
!149 = !DILocation(line: 76, column: 6, scope: !126)
!150 = !DILocation(line: 77, column: 2, scope: !126)
!151 = !DILocation(line: 77, column: 6, scope: !126)
!152 = !DILocation(line: 78, column: 2, scope: !126)
!153 = !DILocation(line: 78, column: 6, scope: !126)
!154 = !DILocation(line: 78, column: 11, scope: !126)
!155 = !DILocation(line: 80, column: 9, scope: !142)
!156 = !DILocation(line: 80, column: 7, scope: !142)
!157 = !DILocation(line: 80, column: 14, scope: !141)
!158 = !DILocation(line: 80, column: 18, scope: !141)
!159 = !DILocation(line: 80, column: 16, scope: !141)
!160 = !DILocation(line: 80, column: 2, scope: !142)
!161 = !DILocation(line: 81, column: 3, scope: !140)
!162 = !DILocation(line: 81, column: 15, scope: !140)
!163 = !DILocation(line: 81, column: 40, scope: !140)
!164 = !DILocation(line: 81, column: 44, scope: !140)
!165 = !DILocation(line: 81, column: 19, scope: !140)
!166 = !DILocation(line: 83, column: 7, scope: !167)
!167 = distinct !DILexicalBlock(scope: !140, file: !3, line: 83, column: 7)
!168 = !DILocation(line: 83, column: 11, scope: !167)
!169 = !DILocation(line: 83, column: 14, scope: !167)
!170 = !DILocation(line: 83, column: 7, scope: !140)
!171 = !DILocation(line: 84, column: 10, scope: !172)
!172 = distinct !DILexicalBlock(scope: !167, file: !3, line: 83, column: 22)
!173 = !DILocation(line: 84, column: 13, scope: !172)
!174 = !DILocation(line: 84, column: 7, scope: !172)
!175 = !DILocation(line: 85, column: 9, scope: !172)
!176 = !DILocation(line: 86, column: 8, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !3, line: 86, column: 8)
!178 = !DILocation(line: 86, column: 13, scope: !177)
!179 = !DILocation(line: 86, column: 8, scope: !172)
!180 = !DILocation(line: 87, column: 10, scope: !177)
!181 = !DILocation(line: 87, column: 5, scope: !177)
!182 = !DILocation(line: 88, column: 4, scope: !172)
!183 = !DILocation(line: 90, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !140, file: !3, line: 90, column: 7)
!185 = !DILocation(line: 90, column: 9, scope: !184)
!186 = !DILocation(line: 90, column: 17, scope: !184)
!187 = !DILocation(line: 90, column: 20, scope: !184)
!188 = !DILocation(line: 90, column: 24, scope: !184)
!189 = !DILocation(line: 90, column: 27, scope: !184)
!190 = !DILocation(line: 90, column: 7, scope: !140)
!191 = !DILocation(line: 91, column: 4, scope: !184)
!192 = !DILocation(line: 92, column: 9, scope: !140)
!193 = !DILocation(line: 92, column: 12, scope: !140)
!194 = !DILocation(line: 92, column: 8, scope: !140)
!195 = !DILocation(line: 92, column: 21, scope: !140)
!196 = !DILocation(line: 92, column: 23, scope: !140)
!197 = !DILocation(line: 92, column: 18, scope: !140)
!198 = !DILocation(line: 92, column: 6, scope: !140)
!199 = !DILocation(line: 93, column: 8, scope: !140)
!200 = !DILocation(line: 94, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !140, file: !3, line: 94, column: 7)
!202 = !DILocation(line: 94, column: 12, scope: !201)
!203 = !DILocation(line: 94, column: 7, scope: !140)
!204 = !DILocation(line: 95, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !3, line: 94, column: 18)
!206 = !DILocation(line: 96, column: 17, scope: !205)
!207 = !DILocation(line: 96, column: 23, scope: !205)
!208 = !DILocation(line: 96, column: 20, scope: !205)
!209 = !DILocation(line: 96, column: 12, scope: !205)
!210 = !DILocation(line: 96, column: 7, scope: !205)
!211 = !DILocation(line: 96, column: 10, scope: !205)
!212 = !DILocation(line: 97, column: 3, scope: !205)
!213 = !DILocation(line: 98, column: 2, scope: !141)
!214 = !DILocation(line: 98, column: 2, scope: !140)
!215 = !DILocation(line: 80, column: 27, scope: !141)
!216 = !DILocation(line: 80, column: 2, scope: !141)
!217 = distinct !{!217, !160, !218, !91, !92}
!218 = !DILocation(line: 98, column: 2, scope: !142)
!219 = !DILocation(line: 99, column: 6, scope: !220)
!220 = distinct !DILexicalBlock(scope: !126, file: !3, line: 99, column: 6)
!221 = !DILocation(line: 99, column: 18, scope: !220)
!222 = !DILocation(line: 99, column: 15, scope: !220)
!223 = !DILocation(line: 99, column: 24, scope: !220)
!224 = !DILocation(line: 99, column: 9, scope: !220)
!225 = !DILocation(line: 99, column: 6, scope: !126)
!226 = !DILocation(line: 100, column: 3, scope: !220)
!227 = !DILocation(line: 101, column: 9, scope: !126)
!228 = !DILocation(line: 101, column: 14, scope: !126)
!229 = !DILocation(line: 101, column: 12, scope: !126)
!230 = !DILocation(line: 101, column: 2, scope: !126)
!231 = !DILocation(line: 102, column: 1, scope: !126)
!232 = !DISubprogram(name: "strchr", scope: !233, file: !233, line: 100, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!234 = !DISubroutineType(types: !235)
!235 = !{!36, !129, !33}
