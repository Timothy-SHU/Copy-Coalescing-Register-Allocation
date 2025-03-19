; ModuleID = 'lib/crypto/utils.c'
source_filename = "lib/crypto/utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___crypto_xor: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __crypto_xor ; .previous"

%struct.anon = type { i64 }
%struct.anon.0 = type { i64 }
%struct.anon.1 = type { i64 }
%struct.anon.2 = type { i32 }
%struct.anon.3 = type { i32 }
%struct.anon.4 = type { i32 }
%struct.anon.5 = type { i16 }
%struct.anon.6 = type { i16 }
%struct.anon.7 = type { i16 }

@__UNIQUE_ID___addressable___crypto_xor195 = internal global ptr @__crypto_xor, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID_file196 = internal constant [46 x i8] c"libcryptoutils.file=lib/crypto/libcryptoutils\00", section ".modinfo", align 1, !dbg !109
@__UNIQUE_ID_license197 = internal constant [27 x i8] c"libcryptoutils.license=GPL\00", section ".modinfo", align 1, !dbg !116
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable___crypto_xor195, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__crypto_xor(ptr noundef %dst, ptr noundef %src1, ptr noundef %src2, i32 noundef %len) #0 align 16 !dbg !8 {
entry:
  %dst.addr = alloca ptr, align 8
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %relalign = alloca i32, align 4
  %l = alloca i64, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pptr1 = alloca ptr, align 8
  %tmp2 = alloca i64, align 8
  %__pptr4 = alloca ptr, align 8
  %l16 = alloca i32, align 4
  %__pptr17 = alloca ptr, align 8
  %tmp18 = alloca i32, align 4
  %__pptr20 = alloca ptr, align 8
  %tmp21 = alloca i32, align 4
  %__pptr25 = alloca ptr, align 8
  %l42 = alloca i16, align 2
  %__pptr43 = alloca ptr, align 8
  %tmp44 = alloca i16, align 2
  %__pptr46 = alloca ptr, align 8
  %tmp47 = alloca i16, align 2
  %__pptr53 = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !21, metadata !DIExpression()), !dbg !130
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !22, metadata !DIExpression()), !dbg !131
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !23, metadata !DIExpression()), !dbg !132
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !24, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 4, ptr %relalign) #3, !dbg !134
  call void @llvm.dbg.declare(metadata ptr %relalign, metadata !25, metadata !DIExpression()), !dbg !135
  store i32 0, ptr %relalign, align 4, !dbg !135
  br label %while.cond, !dbg !136

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, ptr %len.addr, align 4, !dbg !137
  %cmp = icmp uge i32 %0, 8, !dbg !138
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !139

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, ptr %relalign, align 4, !dbg !140
  %and = and i32 %1, 7, !dbg !141
  %tobool = icmp ne i32 %and, 0, !dbg !142
  %lnot = xor i1 %tobool, true, !dbg !142
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !143
  br i1 %2, label %while.body, label %while.end, !dbg !136

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #3, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %l, metadata !27, metadata !DIExpression()), !dbg !145
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #3, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !34, metadata !DIExpression()), !dbg !146
  %3 = load ptr, ptr %src1.addr, align 8, !dbg !146
  store ptr %3, ptr %__pptr, align 8, !dbg !146
  %4 = load ptr, ptr %__pptr, align 8, !dbg !146
  %x = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 0, !dbg !146
  %5 = load i64, ptr %x, align 1, !dbg !146
  store i64 %5, ptr %tmp, align 8, !dbg !146
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #3, !dbg !147
  %6 = load i64, ptr %tmp, align 8, !dbg !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr1) #3, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %__pptr1, metadata !36, metadata !DIExpression()), !dbg !148
  %7 = load ptr, ptr %src2.addr, align 8, !dbg !148
  store ptr %7, ptr %__pptr1, align 8, !dbg !148
  %8 = load ptr, ptr %__pptr1, align 8, !dbg !148
  %x3 = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 0, !dbg !148
  %9 = load i64, ptr %x3, align 1, !dbg !148
  store i64 %9, ptr %tmp2, align 8, !dbg !148
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr1) #3, !dbg !149
  %10 = load i64, ptr %tmp2, align 8, !dbg !148
  %xor = xor i64 %6, %10, !dbg !150
  store i64 %xor, ptr %l, align 8, !dbg !145
  br label %do.body, !dbg !151

do.body:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr4) #3, !dbg !152
  call void @llvm.dbg.declare(metadata ptr %__pptr4, metadata !43, metadata !DIExpression()), !dbg !152
  %11 = load ptr, ptr %dst.addr, align 8, !dbg !152
  store ptr %11, ptr %__pptr4, align 8, !dbg !152
  %12 = load i64, ptr %l, align 8, !dbg !152
  %13 = load ptr, ptr %__pptr4, align 8, !dbg !152
  %x5 = getelementptr inbounds %struct.anon.1, ptr %13, i32 0, i32 0, !dbg !152
  store i64 %12, ptr %x5, align 1, !dbg !152
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr4) #3, !dbg !151
  br label %do.cond, !dbg !152

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !152

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #3, !dbg !153
  %14 = load ptr, ptr %dst.addr, align 8, !dbg !154
  %add.ptr = getelementptr i8, ptr %14, i64 8, !dbg !154
  store ptr %add.ptr, ptr %dst.addr, align 8, !dbg !154
  %15 = load ptr, ptr %src1.addr, align 8, !dbg !155
  %add.ptr6 = getelementptr i8, ptr %15, i64 8, !dbg !155
  store ptr %add.ptr6, ptr %src1.addr, align 8, !dbg !155
  %16 = load ptr, ptr %src2.addr, align 8, !dbg !156
  %add.ptr7 = getelementptr i8, ptr %16, i64 8, !dbg !156
  store ptr %add.ptr7, ptr %src2.addr, align 8, !dbg !156
  %17 = load i32, ptr %len.addr, align 4, !dbg !157
  %sub = sub i32 %17, 8, !dbg !157
  store i32 %sub, ptr %len.addr, align 4, !dbg !157
  br label %while.cond, !dbg !136, !llvm.loop !158

while.end:                                        ; preds = %land.end
  br label %while.cond8, !dbg !162

while.cond8:                                      ; preds = %do.end28, %while.end
  %18 = load i32, ptr %len.addr, align 4, !dbg !163
  %cmp9 = icmp uge i32 %18, 4, !dbg !164
  br i1 %cmp9, label %land.rhs10, label %land.end14, !dbg !165

land.rhs10:                                       ; preds = %while.cond8
  %19 = load i32, ptr %relalign, align 4, !dbg !166
  %and11 = and i32 %19, 3, !dbg !167
  %tobool12 = icmp ne i32 %and11, 0, !dbg !168
  %lnot13 = xor i1 %tobool12, true, !dbg !168
  br label %land.end14

land.end14:                                       ; preds = %land.rhs10, %while.cond8
  %20 = phi i1 [ false, %while.cond8 ], [ %lnot13, %land.rhs10 ], !dbg !143
  br i1 %20, label %while.body15, label %while.end33, !dbg !162

while.body15:                                     ; preds = %land.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr %l16) #3, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %l16, metadata !49, metadata !DIExpression()), !dbg !170
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr17) #3, !dbg !171
  call void @llvm.dbg.declare(metadata ptr %__pptr17, metadata !55, metadata !DIExpression()), !dbg !171
  %21 = load ptr, ptr %src1.addr, align 8, !dbg !171
  store ptr %21, ptr %__pptr17, align 8, !dbg !171
  %22 = load ptr, ptr %__pptr17, align 8, !dbg !171
  %x19 = getelementptr inbounds %struct.anon.2, ptr %22, i32 0, i32 0, !dbg !171
  %23 = load i32, ptr %x19, align 1, !dbg !171
  store i32 %23, ptr %tmp18, align 4, !dbg !171
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr17) #3, !dbg !172
  %24 = load i32, ptr %tmp18, align 4, !dbg !171
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr20) #3, !dbg !173
  call void @llvm.dbg.declare(metadata ptr %__pptr20, metadata !62, metadata !DIExpression()), !dbg !173
  %25 = load ptr, ptr %src2.addr, align 8, !dbg !173
  store ptr %25, ptr %__pptr20, align 8, !dbg !173
  %26 = load ptr, ptr %__pptr20, align 8, !dbg !173
  %x22 = getelementptr inbounds %struct.anon.3, ptr %26, i32 0, i32 0, !dbg !173
  %27 = load i32, ptr %x22, align 1, !dbg !173
  store i32 %27, ptr %tmp21, align 4, !dbg !173
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr20) #3, !dbg !174
  %28 = load i32, ptr %tmp21, align 4, !dbg !173
  %xor23 = xor i32 %24, %28, !dbg !175
  store i32 %xor23, ptr %l16, align 4, !dbg !170
  br label %do.body24, !dbg !176

do.body24:                                        ; preds = %while.body15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr25) #3, !dbg !177
  call void @llvm.dbg.declare(metadata ptr %__pptr25, metadata !69, metadata !DIExpression()), !dbg !177
  %29 = load ptr, ptr %dst.addr, align 8, !dbg !177
  store ptr %29, ptr %__pptr25, align 8, !dbg !177
  %30 = load i32, ptr %l16, align 4, !dbg !177
  %31 = load ptr, ptr %__pptr25, align 8, !dbg !177
  %x26 = getelementptr inbounds %struct.anon.4, ptr %31, i32 0, i32 0, !dbg !177
  store i32 %30, ptr %x26, align 1, !dbg !177
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr25) #3, !dbg !176
  br label %do.cond27, !dbg !177

do.cond27:                                        ; preds = %do.body24
  br label %do.end28, !dbg !177

do.end28:                                         ; preds = %do.cond27
  call void @llvm.lifetime.end.p0(i64 4, ptr %l16) #3, !dbg !178
  %32 = load ptr, ptr %dst.addr, align 8, !dbg !179
  %add.ptr29 = getelementptr i8, ptr %32, i64 4, !dbg !179
  store ptr %add.ptr29, ptr %dst.addr, align 8, !dbg !179
  %33 = load ptr, ptr %src1.addr, align 8, !dbg !180
  %add.ptr30 = getelementptr i8, ptr %33, i64 4, !dbg !180
  store ptr %add.ptr30, ptr %src1.addr, align 8, !dbg !180
  %34 = load ptr, ptr %src2.addr, align 8, !dbg !181
  %add.ptr31 = getelementptr i8, ptr %34, i64 4, !dbg !181
  store ptr %add.ptr31, ptr %src2.addr, align 8, !dbg !181
  %35 = load i32, ptr %len.addr, align 4, !dbg !182
  %sub32 = sub i32 %35, 4, !dbg !182
  store i32 %sub32, ptr %len.addr, align 4, !dbg !182
  br label %while.cond8, !dbg !162, !llvm.loop !183

while.end33:                                      ; preds = %land.end14
  br label %while.cond34, !dbg !185

while.cond34:                                     ; preds = %do.end56, %while.end33
  %36 = load i32, ptr %len.addr, align 4, !dbg !186
  %cmp35 = icmp uge i32 %36, 2, !dbg !187
  br i1 %cmp35, label %land.rhs36, label %land.end40, !dbg !188

land.rhs36:                                       ; preds = %while.cond34
  %37 = load i32, ptr %relalign, align 4, !dbg !189
  %and37 = and i32 %37, 1, !dbg !190
  %tobool38 = icmp ne i32 %and37, 0, !dbg !191
  %lnot39 = xor i1 %tobool38, true, !dbg !191
  br label %land.end40

land.end40:                                       ; preds = %land.rhs36, %while.cond34
  %38 = phi i1 [ false, %while.cond34 ], [ %lnot39, %land.rhs36 ], !dbg !143
  br i1 %38, label %while.body41, label %while.end61, !dbg !185

while.body41:                                     ; preds = %land.end40
  call void @llvm.lifetime.start.p0(i64 2, ptr %l42) #3, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %l42, metadata !75, metadata !DIExpression()), !dbg !193
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr43) #3, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %__pptr43, metadata !82, metadata !DIExpression()), !dbg !194
  %39 = load ptr, ptr %src1.addr, align 8, !dbg !194
  store ptr %39, ptr %__pptr43, align 8, !dbg !194
  %40 = load ptr, ptr %__pptr43, align 8, !dbg !194
  %x45 = getelementptr inbounds %struct.anon.5, ptr %40, i32 0, i32 0, !dbg !194
  %41 = load i16, ptr %x45, align 1, !dbg !194
  store i16 %41, ptr %tmp44, align 2, !dbg !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr43) #3, !dbg !195
  %42 = load i16, ptr %tmp44, align 2, !dbg !194
  %conv = zext i16 %42 to i32, !dbg !195
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr46) #3, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %__pptr46, metadata !89, metadata !DIExpression()), !dbg !196
  %43 = load ptr, ptr %src2.addr, align 8, !dbg !196
  store ptr %43, ptr %__pptr46, align 8, !dbg !196
  %44 = load ptr, ptr %__pptr46, align 8, !dbg !196
  %x48 = getelementptr inbounds %struct.anon.6, ptr %44, i32 0, i32 0, !dbg !196
  %45 = load i16, ptr %x48, align 1, !dbg !196
  store i16 %45, ptr %tmp47, align 2, !dbg !196
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr46) #3, !dbg !197
  %46 = load i16, ptr %tmp47, align 2, !dbg !196
  %conv49 = zext i16 %46 to i32, !dbg !197
  %xor50 = xor i32 %conv, %conv49, !dbg !198
  %conv51 = trunc i32 %xor50 to i16, !dbg !195
  store i16 %conv51, ptr %l42, align 2, !dbg !193
  br label %do.body52, !dbg !199

do.body52:                                        ; preds = %while.body41
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr53) #3, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %__pptr53, metadata !96, metadata !DIExpression()), !dbg !200
  %47 = load ptr, ptr %dst.addr, align 8, !dbg !200
  store ptr %47, ptr %__pptr53, align 8, !dbg !200
  %48 = load i16, ptr %l42, align 2, !dbg !200
  %49 = load ptr, ptr %__pptr53, align 8, !dbg !200
  %x54 = getelementptr inbounds %struct.anon.7, ptr %49, i32 0, i32 0, !dbg !200
  store i16 %48, ptr %x54, align 1, !dbg !200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr53) #3, !dbg !199
  br label %do.cond55, !dbg !200

do.cond55:                                        ; preds = %do.body52
  br label %do.end56, !dbg !200

do.end56:                                         ; preds = %do.cond55
  call void @llvm.lifetime.end.p0(i64 2, ptr %l42) #3, !dbg !201
  %50 = load ptr, ptr %dst.addr, align 8, !dbg !202
  %add.ptr57 = getelementptr i8, ptr %50, i64 2, !dbg !202
  store ptr %add.ptr57, ptr %dst.addr, align 8, !dbg !202
  %51 = load ptr, ptr %src1.addr, align 8, !dbg !203
  %add.ptr58 = getelementptr i8, ptr %51, i64 2, !dbg !203
  store ptr %add.ptr58, ptr %src1.addr, align 8, !dbg !203
  %52 = load ptr, ptr %src2.addr, align 8, !dbg !204
  %add.ptr59 = getelementptr i8, ptr %52, i64 2, !dbg !204
  store ptr %add.ptr59, ptr %src2.addr, align 8, !dbg !204
  %53 = load i32, ptr %len.addr, align 4, !dbg !205
  %sub60 = sub i32 %53, 2, !dbg !205
  store i32 %sub60, ptr %len.addr, align 4, !dbg !205
  br label %while.cond34, !dbg !185, !llvm.loop !206

while.end61:                                      ; preds = %land.end40
  br label %while.cond62, !dbg !208

while.cond62:                                     ; preds = %while.body64, %while.end61
  %54 = load i32, ptr %len.addr, align 4, !dbg !209
  %dec = add i32 %54, -1, !dbg !209
  store i32 %dec, ptr %len.addr, align 4, !dbg !209
  %tobool63 = icmp ne i32 %54, 0, !dbg !208
  br i1 %tobool63, label %while.body64, label %while.end71, !dbg !208

while.body64:                                     ; preds = %while.cond62
  %55 = load ptr, ptr %src1.addr, align 8, !dbg !210
  %incdec.ptr = getelementptr i8, ptr %55, i32 1, !dbg !210
  store ptr %incdec.ptr, ptr %src1.addr, align 8, !dbg !210
  %56 = load i8, ptr %55, align 1, !dbg !211
  %conv65 = zext i8 %56 to i32, !dbg !211
  %57 = load ptr, ptr %src2.addr, align 8, !dbg !212
  %incdec.ptr66 = getelementptr i8, ptr %57, i32 1, !dbg !212
  store ptr %incdec.ptr66, ptr %src2.addr, align 8, !dbg !212
  %58 = load i8, ptr %57, align 1, !dbg !213
  %conv67 = zext i8 %58 to i32, !dbg !213
  %xor68 = xor i32 %conv65, %conv67, !dbg !214
  %conv69 = trunc i32 %xor68 to i8, !dbg !211
  %59 = load ptr, ptr %dst.addr, align 8, !dbg !215
  %incdec.ptr70 = getelementptr i8, ptr %59, i32 1, !dbg !215
  store ptr %incdec.ptr70, ptr %dst.addr, align 8, !dbg !215
  store i8 %conv69, ptr %59, align 1, !dbg !216
  br label %while.cond62, !dbg !208, !llvm.loop !217

while.end71:                                      ; preds = %while.cond62
  call void @llvm.lifetime.end.p0(i64 4, ptr %relalign) #3, !dbg !218
  ret void, !dbg !218
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___crypto_xor195", scope: !2, file: !3, line: 86, type: !107, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/.utils.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/libcryptoutils\22 -D KBUILD_BASENAME=\22utils\22 -D KBUILD_MODNAME=\22libcryptoutils\22 -D __KBUILD_MODNAME=kmod_libcryptoutils -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/utils.ll lib/crypto/utils.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !108, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/utils.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2082bb69586510b8e14a4f5229b8362e")
!4 = !{!5, !104, !38, !45, !57, !105, !64, !71, !84, !106, !91, !98, !107}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !8, file: !3, line: 43, size: 64, elements: !102)
!8 = distinct !DISubprogram(name: "__crypto_xor", scope: !3, file: !3, line: 17, type: !9, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !20)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !17, !17, !19}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !13, line: 17, baseType: !14)
!13 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25, !27, !34, !36, !43, !49, !55, !62, !69, !75, !82, !89, !96}
!21 = !DILocalVariable(name: "dst", arg: 1, scope: !8, file: !3, line: 17, type: !11)
!22 = !DILocalVariable(name: "src1", arg: 2, scope: !8, file: !3, line: 17, type: !17)
!23 = !DILocalVariable(name: "src2", arg: 3, scope: !8, file: !3, line: 17, type: !17)
!24 = !DILocalVariable(name: "len", arg: 4, scope: !8, file: !3, line: 17, type: !19)
!25 = !DILocalVariable(name: "relalign", scope: !8, file: !3, line: 19, type: !26)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocalVariable(name: "l", scope: !28, file: !3, line: 43, type: !31)
!28 = distinct !DILexicalBlock(scope: !29, file: !3, line: 42, column: 59)
!29 = distinct !DILexicalBlock(scope: !30, file: !3, line: 42, column: 7)
!30 = distinct !DILexicalBlock(scope: !8, file: !3, line: 41, column: 66)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !13, line: 23, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !15, line: 31, baseType: !33)
!33 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocalVariable(name: "__pptr", scope: !35, file: !3, line: 43, type: !5)
!35 = distinct !DILexicalBlock(scope: !28, file: !3, line: 43, column: 12)
!36 = !DILocalVariable(name: "__pptr", scope: !37, file: !3, line: 44, type: !38)
!37 = distinct !DILexicalBlock(scope: !28, file: !3, line: 44, column: 5)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !8, file: !3, line: 44, size: 64, elements: !41)
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !40, file: !3, line: 44, baseType: !31, size: 64)
!43 = !DILocalVariable(name: "__pptr", scope: !44, file: !3, line: 45, type: !45)
!44 = distinct !DILexicalBlock(scope: !28, file: !3, line: 45, column: 4)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !8, file: !3, line: 45, size: 64, elements: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !46, file: !3, line: 45, baseType: !31, size: 64)
!49 = !DILocalVariable(name: "l", scope: !50, file: !3, line: 57, type: !53)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 56, column: 59)
!51 = distinct !DILexicalBlock(scope: !52, file: !3, line: 56, column: 7)
!52 = distinct !DILexicalBlock(scope: !8, file: !3, line: 55, column: 38)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !13, line: 21, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !15, line: 27, baseType: !19)
!55 = !DILocalVariable(name: "__pptr", scope: !56, file: !3, line: 57, type: !57)
!56 = distinct !DILexicalBlock(scope: !50, file: !3, line: 57, column: 12)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !8, file: !3, line: 57, size: 32, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !59, file: !3, line: 57, baseType: !53, size: 32)
!62 = !DILocalVariable(name: "__pptr", scope: !63, file: !3, line: 58, type: !64)
!63 = distinct !DILexicalBlock(scope: !50, file: !3, line: 58, column: 5)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !8, file: !3, line: 58, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !66, file: !3, line: 58, baseType: !53, size: 32)
!69 = !DILocalVariable(name: "__pptr", scope: !70, file: !3, line: 59, type: !71)
!70 = distinct !DILexicalBlock(scope: !50, file: !3, line: 59, column: 4)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !8, file: !3, line: 59, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !72, file: !3, line: 59, baseType: !53, size: 32)
!75 = !DILocalVariable(name: "l", scope: !76, file: !3, line: 71, type: !79)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 70, column: 59)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 70, column: 7)
!78 = distinct !DILexicalBlock(scope: !8, file: !3, line: 69, column: 38)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !13, line: 19, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !15, line: 24, baseType: !81)
!81 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!82 = !DILocalVariable(name: "__pptr", scope: !83, file: !3, line: 71, type: !84)
!83 = distinct !DILexicalBlock(scope: !76, file: !3, line: 71, column: 12)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !8, file: !3, line: 71, size: 16, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !86, file: !3, line: 71, baseType: !79, size: 16)
!89 = !DILocalVariable(name: "__pptr", scope: !90, file: !3, line: 72, type: !91)
!90 = distinct !DILexicalBlock(scope: !76, file: !3, line: 72, column: 5)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !8, file: !3, line: 72, size: 16, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !93, file: !3, line: 72, baseType: !79, size: 16)
!96 = !DILocalVariable(name: "__pptr", scope: !97, file: !3, line: 73, type: !98)
!97 = distinct !DILexicalBlock(scope: !76, file: !3, line: 73, column: 4)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !8, file: !3, line: 73, size: 16, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !99, file: !3, line: 73, baseType: !79, size: 16)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !7, file: !3, line: 43, baseType: !31, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!108 = !{!0, !109, !116}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file196", scope: !2, file: !3, line: 88, type: !111, isLocal: true, isDefinition: true, align: 8)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 368, elements: !114)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !{!115}
!115 = !DISubrange(count: 46)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license197", scope: !2, file: !3, line: 88, type: !118, isLocal: true, isDefinition: true, align: 8)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 216, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 27)
!121 = !{i32 7, !"Dwarf Version", i32 5}
!122 = !{i32 2, !"Debug Info Version", i32 3}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 8, !"cf-protection-branch", i32 1}
!125 = !{i32 4, !"function_return_thunk_extern", i32 1}
!126 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!127 = !{i32 1, !"Code Model", i32 2}
!128 = !{i32 1, !"override-stack-alignment", i32 8}
!129 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!130 = !DILocation(line: 17, column: 23, scope: !8)
!131 = !DILocation(line: 17, column: 38, scope: !8)
!132 = !DILocation(line: 17, column: 54, scope: !8)
!133 = !DILocation(line: 17, column: 73, scope: !8)
!134 = !DILocation(line: 19, column: 2, scope: !8)
!135 = !DILocation(line: 19, column: 6, scope: !8)
!136 = !DILocation(line: 41, column: 2, scope: !8)
!137 = !DILocation(line: 41, column: 37, scope: !8)
!138 = !DILocation(line: 41, column: 41, scope: !8)
!139 = !DILocation(line: 41, column: 46, scope: !8)
!140 = !DILocation(line: 41, column: 51, scope: !8)
!141 = !DILocation(line: 41, column: 60, scope: !8)
!142 = !DILocation(line: 41, column: 49, scope: !8)
!143 = !DILocation(line: 0, scope: !8)
!144 = !DILocation(line: 43, column: 4, scope: !28)
!145 = !DILocation(line: 43, column: 8, scope: !28)
!146 = !DILocation(line: 43, column: 12, scope: !35)
!147 = !DILocation(line: 43, column: 12, scope: !28)
!148 = !DILocation(line: 44, column: 5, scope: !37)
!149 = !DILocation(line: 44, column: 5, scope: !28)
!150 = !DILocation(line: 43, column: 39, scope: !28)
!151 = !DILocation(line: 45, column: 4, scope: !28)
!152 = !DILocation(line: 45, column: 4, scope: !44)
!153 = !DILocation(line: 46, column: 3, scope: !29)
!154 = !DILocation(line: 49, column: 7, scope: !30)
!155 = !DILocation(line: 50, column: 8, scope: !30)
!156 = !DILocation(line: 51, column: 8, scope: !30)
!157 = !DILocation(line: 52, column: 7, scope: !30)
!158 = distinct !{!158, !136, !159, !160, !161}
!159 = !DILocation(line: 53, column: 2, scope: !8)
!160 = !{!"llvm.loop.mustprogress"}
!161 = !{!"llvm.loop.unroll.disable"}
!162 = !DILocation(line: 55, column: 2, scope: !8)
!163 = !DILocation(line: 55, column: 9, scope: !8)
!164 = !DILocation(line: 55, column: 13, scope: !8)
!165 = !DILocation(line: 55, column: 18, scope: !8)
!166 = !DILocation(line: 55, column: 23, scope: !8)
!167 = !DILocation(line: 55, column: 32, scope: !8)
!168 = !DILocation(line: 55, column: 21, scope: !8)
!169 = !DILocation(line: 57, column: 4, scope: !50)
!170 = !DILocation(line: 57, column: 8, scope: !50)
!171 = !DILocation(line: 57, column: 12, scope: !56)
!172 = !DILocation(line: 57, column: 12, scope: !50)
!173 = !DILocation(line: 58, column: 5, scope: !63)
!174 = !DILocation(line: 58, column: 5, scope: !50)
!175 = !DILocation(line: 57, column: 39, scope: !50)
!176 = !DILocation(line: 59, column: 4, scope: !50)
!177 = !DILocation(line: 59, column: 4, scope: !70)
!178 = !DILocation(line: 60, column: 3, scope: !51)
!179 = !DILocation(line: 63, column: 7, scope: !52)
!180 = !DILocation(line: 64, column: 8, scope: !52)
!181 = !DILocation(line: 65, column: 8, scope: !52)
!182 = !DILocation(line: 66, column: 7, scope: !52)
!183 = distinct !{!183, !162, !184, !160, !161}
!184 = !DILocation(line: 67, column: 2, scope: !8)
!185 = !DILocation(line: 69, column: 2, scope: !8)
!186 = !DILocation(line: 69, column: 9, scope: !8)
!187 = !DILocation(line: 69, column: 13, scope: !8)
!188 = !DILocation(line: 69, column: 18, scope: !8)
!189 = !DILocation(line: 69, column: 23, scope: !8)
!190 = !DILocation(line: 69, column: 32, scope: !8)
!191 = !DILocation(line: 69, column: 21, scope: !8)
!192 = !DILocation(line: 71, column: 4, scope: !76)
!193 = !DILocation(line: 71, column: 8, scope: !76)
!194 = !DILocation(line: 71, column: 12, scope: !83)
!195 = !DILocation(line: 71, column: 12, scope: !76)
!196 = !DILocation(line: 72, column: 5, scope: !90)
!197 = !DILocation(line: 72, column: 5, scope: !76)
!198 = !DILocation(line: 71, column: 39, scope: !76)
!199 = !DILocation(line: 73, column: 4, scope: !76)
!200 = !DILocation(line: 73, column: 4, scope: !97)
!201 = !DILocation(line: 74, column: 3, scope: !77)
!202 = !DILocation(line: 77, column: 7, scope: !78)
!203 = !DILocation(line: 78, column: 8, scope: !78)
!204 = !DILocation(line: 79, column: 8, scope: !78)
!205 = !DILocation(line: 80, column: 7, scope: !78)
!206 = distinct !{!206, !185, !207, !160, !161}
!207 = !DILocation(line: 81, column: 2, scope: !8)
!208 = !DILocation(line: 83, column: 2, scope: !8)
!209 = !DILocation(line: 83, column: 12, scope: !8)
!210 = !DILocation(line: 84, column: 17, scope: !8)
!211 = !DILocation(line: 84, column: 12, scope: !8)
!212 = !DILocation(line: 84, column: 27, scope: !8)
!213 = !DILocation(line: 84, column: 22, scope: !8)
!214 = !DILocation(line: 84, column: 20, scope: !8)
!215 = !DILocation(line: 84, column: 7, scope: !8)
!216 = !DILocation(line: 84, column: 10, scope: !8)
!217 = distinct !{!217, !208, !212, !160, !161}
!218 = !DILocation(line: 85, column: 1, scope: !8)
