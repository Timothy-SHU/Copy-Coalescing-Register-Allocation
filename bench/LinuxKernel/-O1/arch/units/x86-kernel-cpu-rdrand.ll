; ModuleID = 'arch/x86/kernel/cpu/rdrand.c'
source_filename = "arch/x86/kernel/cpu/rdrand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }

@.str = private unnamed_addr constant [55 x i8] c"\010RDRAND is not reliable on this platform; disabling.\0A\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @x86_init_rdrand(ptr noundef %c) #0 align 16 !dbg !16 {
entry:
  %c.addr = alloca ptr, align 8
  %sample = alloca i64, align 8
  %prev = alloca i64, align 8
  %failure = alloca i8, align 1
  %i = alloca i64, align 8
  %changed = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !104, metadata !DIExpression()), !dbg !129
  call void @llvm.lifetime.start.p0(i64 8, ptr %sample) #9, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %sample, metadata !105, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #9, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !106, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 1, ptr %failure) #9, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %failure, metadata !107, metadata !DIExpression()), !dbg !134
  store i8 0, ptr %failure, align 1, !dbg !134
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %i, metadata !108, metadata !DIExpression()), !dbg !136
  call void @llvm.lifetime.start.p0(i64 8, ptr %changed) #9, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %changed, metadata !113, metadata !DIExpression()), !dbg !137
  br i1 false, label %cond.true, label %cond.false, !dbg !138

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !139

cond.false:                                       ; preds = %entry
  %0 = load ptr, ptr %c.addr, align 8, !dbg !139
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 10, !dbg !139
  %arraydecay = getelementptr inbounds [24 x i32], ptr %1, i64 0, i64 0, !dbg !139
  %call = call zeroext i1 @arch_test_bit(i64 noundef 158, ptr noundef %arraydecay) #10, !dbg !139
  br i1 %call, label %if.end, label %if.then, !dbg !138

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !141

if.end:                                           ; preds = %cond.false, %cond.true
  store i64 0, ptr %changed, align 8, !dbg !142
  store i64 0, ptr %i, align 8, !dbg !144
  br label %for.cond, !dbg !145

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i64, ptr %i, align 8, !dbg !146
  %cmp = icmp ult i64 %2, 8, !dbg !148
  br i1 %cmp, label %for.body, label %for.end, !dbg !149

for.body:                                         ; preds = %for.cond
  %call1 = call zeroext i1 @rdrand_long(ptr noundef %sample) #10, !dbg !150
  br i1 %call1, label %if.end3, label %if.then2, !dbg !153

if.then2:                                         ; preds = %for.body
  store i8 1, ptr %failure, align 1, !dbg !154
  br label %for.end, !dbg !156

if.end3:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !dbg !157
  %tobool = icmp ne i64 %3, 0, !dbg !157
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !158

land.rhs:                                         ; preds = %if.end3
  %4 = load i64, ptr %sample, align 8, !dbg !159
  %5 = load i64, ptr %prev, align 8, !dbg !160
  %cmp4 = icmp ne i64 %4, %5, !dbg !161
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end3
  %6 = phi i1 [ false, %if.end3 ], [ %cmp4, %land.rhs ], !dbg !162
  %land.ext = zext i1 %6 to i32, !dbg !158
  %conv = sext i32 %land.ext to i64, !dbg !157
  %7 = load i64, ptr %changed, align 8, !dbg !163
  %add = add i64 %7, %conv, !dbg !163
  store i64 %add, ptr %changed, align 8, !dbg !163
  %8 = load i64, ptr %sample, align 8, !dbg !164
  store i64 %8, ptr %prev, align 8, !dbg !165
  br label %for.inc, !dbg !166

for.inc:                                          ; preds = %land.end
  %9 = load i64, ptr %i, align 8, !dbg !167
  %inc = add i64 %9, 1, !dbg !167
  store i64 %inc, ptr %i, align 8, !dbg !167
  br label %for.cond, !dbg !168, !llvm.loop !169

for.end:                                          ; preds = %if.then2, %for.cond
  %10 = load i64, ptr %changed, align 8, !dbg !173
  %cmp5 = icmp ult i64 %10, 5, !dbg !175
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !176

if.then7:                                         ; preds = %for.end
  store i8 1, ptr %failure, align 1, !dbg !177
  br label %if.end8, !dbg !178

if.end8:                                          ; preds = %if.then7, %for.end
  %11 = load i8, ptr %failure, align 1, !dbg !179, !range !181, !noundef !182
  %tobool9 = trunc i8 %11 to i1, !dbg !179
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !183

if.then10:                                        ; preds = %if.end8
  %12 = load ptr, ptr %c.addr, align 8, !dbg !184
  call void @clear_cpu_cap(ptr noundef %12, i32 noundef 158) #10, !dbg !186
  %13 = load ptr, ptr %c.addr, align 8, !dbg !187
  call void @clear_cpu_cap(ptr noundef %13, i32 noundef 306) #10, !dbg !188
  br label %do.body, !dbg !189

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !191

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !191

do.end:                                           ; preds = %do.cond
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #11, !dbg !189
  store i32 %call11, ptr %tmp, align 4, !dbg !191
  %14 = load i32, ptr %tmp, align 4, !dbg !189
  br label %if.end12, !dbg !193

if.end12:                                         ; preds = %do.end, %if.end8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !194
  br label %cleanup, !dbg !194

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %changed) #9, !dbg !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !194
  call void @llvm.lifetime.end.p0(i64 1, ptr %failure) #9, !dbg !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #9, !dbg !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %sample) #9, !dbg !194
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !194

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !195 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !203, metadata !DIExpression()), !dbg !205
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !204, metadata !DIExpression()), !dbg !206
  %0 = load i64, ptr %nr.addr, align 8, !dbg !207
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !208
  br i1 %1, label %cond.true, label %cond.false, !dbg !208

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !209
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !210
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !211
  %conv = zext i1 %call to i32, !dbg !211
  br label %cond.end, !dbg !208

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !212
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !213
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !214
  %conv2 = zext i1 %call1 to i32, !dbg !214
  br label %cond.end, !dbg !208

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !208
  %tobool = icmp ne i32 %cond, 0, !dbg !208
  ret i1 %tobool, !dbg !215
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rdrand_long(ptr noundef %v) #4 align 16 !dbg !216 {
entry:
  %retval = alloca i1, align 1
  %v.addr = alloca ptr, align 8
  %ok = alloca i8, align 1
  %retry = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !221, metadata !DIExpression()), !dbg !224
  call void @llvm.lifetime.start.p0(i64 1, ptr %ok) #9, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %ok, metadata !222, metadata !DIExpression()), !dbg !226
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #9, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !223, metadata !DIExpression()), !dbg !228
  store i32 10, ptr %retry, align 4, !dbg !228
  br label %do.body, !dbg !229

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %v.addr, align 8, !dbg !230
  %1 = call { i8, i64 } asm sideeffect "rdrand $1\0A\09/* output condition code c*/\0A", "={@ccc},=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !232, !srcloc !233
  %asmresult = extractvalue { i8, i64 } %1, 0, !dbg !232
  %asmresult1 = extractvalue { i8, i64 } %1, 1, !dbg !232
  %2 = icmp ult i8 %asmresult, 2, !dbg !232
  call void @llvm.assume(i1 %2), !dbg !232
  store i8 %asmresult, ptr %ok, align 1, !dbg !232
  store i64 %asmresult1, ptr %0, align 8, !dbg !232
  %3 = load i8, ptr %ok, align 1, !dbg !234, !range !181, !noundef !182
  %tobool = trunc i8 %3 to i1, !dbg !234
  br i1 %tobool, label %if.then, label %if.end, !dbg !236

if.then:                                          ; preds = %do.body
  store i1 true, ptr %retval, align 1, !dbg !237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !237

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !238

do.cond:                                          ; preds = %if.end
  %4 = load i32, ptr %retry, align 4, !dbg !239
  %dec = add i32 %4, -1, !dbg !239
  store i32 %dec, ptr %retry, align 4, !dbg !239
  %tobool2 = icmp ne i32 %dec, 0, !dbg !238
  br i1 %tobool2, label %do.body, label %do.end, !dbg !238, !llvm.loop !240

do.end:                                           ; preds = %do.cond
  store i1 false, ptr %retval, align 1, !dbg !242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !242

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #9, !dbg !243
  call void @llvm.lifetime.end.p0(i64 1, ptr %ok) #9, !dbg !243
  %5 = load i1, ptr %retval, align 1, !dbg !243
  ret i1 %5, !dbg !243
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !244 dso_local void @clear_cpu_cap(ptr noundef, i32 noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !248 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !254 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !259, metadata !DIExpression()), !dbg !261
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !260, metadata !DIExpression()), !dbg !262
  %0 = load i64, ptr %nr.addr, align 8, !dbg !263
  %and = and i64 %0, 63, !dbg !264
  %shl = shl i64 1, %and, !dbg !265
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !266
  %2 = load i64, ptr %nr.addr, align 8, !dbg !267
  %shr = ashr i64 %2, 6, !dbg !268
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !266
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !266
  %and1 = and i64 %shl, %3, !dbg !269
  %cmp = icmp ne i64 %and1, 0, !dbg !270
  ret i1 %cmp, !dbg !271
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !272 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !274, metadata !DIExpression()), !dbg !277
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !275, metadata !DIExpression()), !dbg !278
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #9, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !276, metadata !DIExpression()), !dbg !280
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !281
  %1 = load i64, ptr %nr.addr, align 8, !dbg !282
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !283, !srcloc !284
  %3 = icmp ult i8 %2, 2, !dbg !283
  call void @llvm.assume(i1 %3), !dbg !283
  store i8 %2, ptr %oldbit, align 1, !dbg !283
  %4 = load i8, ptr %oldbit, align 1, !dbg !285, !range !181, !noundef !182
  %tobool = trunc i8 %4 to i1, !dbg !285
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #9, !dbg !286
  ret i1 %tobool, !dbg !287
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/cpu/rdrand.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd4146b0069103526fd3ebf09c23b7fe")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 55)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.rdrand.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/rdrand\22 -D KBUILD_BASENAME=\22rdrand\22 -D KBUILD_MODNAME=\22rdrand\22 -D __KBUILD_MODNAME=kmod_rdrand -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/rdrand.ll arch/x86/kernel/cpu/rdrand.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !117, globals: !119, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9, !15}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 10, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "false", value: 0)
!14 = !DIEnumerator(name: "true", value: 1)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !16, file: !2, line: 25, baseType: !11, size: 32, elements: !114)
!16 = distinct !DISubprogram(name: "x86_init_rdrand", scope: !2, file: !2, line: 23, type: !17, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !103)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !21, line: 83, size: 2368, elements: !22)
!21 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!22 = !{!23, !38, !39, !41, !45, !46, !47, !48, !49, !50, !51, !60, !64, !68, !69, !70, !71, !72, !73, !74, !75, !80, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !98, !100, !102}
!23 = !DIDerivedType(tag: DW_TAG_member, scope: !20, file: !21, line: 84, baseType: !24, size: 32)
!24 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !20, file: !21, line: 84, size: 32, elements: !25)
!25 = !{!26, !36}
!26 = !DIDerivedType(tag: DW_TAG_member, scope: !24, file: !21, line: 90, baseType: !27, size: 32)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !24, file: !21, line: 90, size: 32, elements: !28)
!28 = !{!29, !33, !34, !35}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !27, file: !21, line: 91, baseType: !30, size: 8)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !31, line: 21, baseType: !32)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !27, file: !21, line: 93, baseType: !30, size: 8, offset: 8)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !27, file: !21, line: 95, baseType: !30, size: 8, offset: 16)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !27, file: !21, line: 96, baseType: !30, size: 8, offset: 24)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !24, file: !21, line: 99, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !11)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !20, file: !21, line: 101, baseType: !30, size: 8, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !20, file: !21, line: 104, baseType: !40, size: 32, offset: 64)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !20, file: !21, line: 107, baseType: !42, size: 160, offset: 96)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 5)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !20, file: !21, line: 109, baseType: !30, size: 8, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !20, file: !21, line: 110, baseType: !30, size: 8, offset: 264)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !20, file: !21, line: 112, baseType: !30, size: 8, offset: 272)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !20, file: !21, line: 113, baseType: !30, size: 8, offset: 280)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !20, file: !21, line: 115, baseType: !37, size: 32, offset: 288)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !20, file: !21, line: 117, baseType: !40, size: 32, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, scope: !20, file: !21, line: 123, baseType: !52, size: 768, offset: 384)
!52 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !20, file: !21, line: 123, size: 768, elements: !53)
!53 = !{!54, !58}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !52, file: !21, line: 124, baseType: !55, size: 768)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 768, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 24)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !52, file: !21, line: 125, baseType: !59, size: 64)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !20, file: !21, line: 127, baseType: !61, size: 128, offset: 1152)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 16)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !20, file: !21, line: 128, baseType: !65, size: 512, offset: 1280)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !20, file: !21, line: 130, baseType: !11, size: 32, offset: 1792)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !20, file: !21, line: 131, baseType: !40, size: 32, offset: 1824)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !20, file: !21, line: 133, baseType: !40, size: 32, offset: 1856)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !20, file: !21, line: 134, baseType: !40, size: 32, offset: 1888)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !20, file: !21, line: 135, baseType: !40, size: 32, offset: 1920)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !20, file: !21, line: 136, baseType: !40, size: 32, offset: 1952)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !20, file: !21, line: 137, baseType: !59, size: 64, offset: 1984)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !20, file: !21, line: 139, baseType: !76, size: 64, offset: 2048)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !77, line: 23, baseType: !78)
!77 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !31, line: 31, baseType: !79)
!79 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !20, file: !21, line: 141, baseType: !81, size: 16, offset: 2112)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !77, line: 19, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !31, line: 24, baseType: !83)
!83 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !20, file: !21, line: 142, baseType: !81, size: 16, offset: 2128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !20, file: !21, line: 143, baseType: !81, size: 16, offset: 2144)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !20, file: !21, line: 144, baseType: !81, size: 16, offset: 2160)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !20, file: !21, line: 146, baseType: !81, size: 16, offset: 2176)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !20, file: !21, line: 148, baseType: !81, size: 16, offset: 2192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !20, file: !21, line: 150, baseType: !81, size: 16, offset: 2208)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !20, file: !21, line: 152, baseType: !81, size: 16, offset: 2224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !20, file: !21, line: 153, baseType: !81, size: 16, offset: 2240)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !20, file: !21, line: 154, baseType: !81, size: 16, offset: 2256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !20, file: !21, line: 156, baseType: !81, size: 16, offset: 2272)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !20, file: !21, line: 158, baseType: !95, size: 8, offset: 2288)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !96, line: 35, baseType: !97)
!96 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!97 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !20, file: !21, line: 159, baseType: !99, size: 32, offset: 2304)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !77, line: 21, baseType: !37)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !20, file: !21, line: 161, baseType: !101, size: 8, offset: 2336)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !77, line: 17, baseType: !30)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !20, file: !21, line: 162, baseType: !11, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!103 = !{!104, !105, !106, !107, !108, !113}
!104 = !DILocalVariable(name: "c", arg: 1, scope: !16, file: !2, line: 23, type: !19)
!105 = !DILocalVariable(name: "sample", scope: !16, file: !2, line: 26, type: !59)
!106 = !DILocalVariable(name: "prev", scope: !16, file: !2, line: 26, type: !59)
!107 = !DILocalVariable(name: "failure", scope: !16, file: !2, line: 27, type: !95)
!108 = !DILocalVariable(name: "i", scope: !16, file: !2, line: 28, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 61, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !111, line: 72, baseType: !112)
!111 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !111, line: 16, baseType: !59)
!113 = !DILocalVariable(name: "changed", scope: !16, file: !2, line: 28, type: !109)
!114 = !{!115, !116}
!115 = !DIEnumerator(name: "SAMPLES", value: 8)
!116 = !DIEnumerator(name: "MIN_CHANGE", value: 5)
!117 = !{!40, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!119 = !{!0}
!120 = !{i32 7, !"Dwarf Version", i32 5}
!121 = !{i32 2, !"Debug Info Version", i32 3}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 8, !"cf-protection-branch", i32 1}
!124 = !{i32 4, !"function_return_thunk_extern", i32 1}
!125 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!126 = !{i32 1, !"Code Model", i32 2}
!127 = !{i32 1, !"override-stack-alignment", i32 8}
!128 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!129 = !DILocation(line: 23, column: 42, scope: !16)
!130 = !DILocation(line: 26, column: 2, scope: !16)
!131 = !DILocation(line: 26, column: 16, scope: !16)
!132 = !DILocation(line: 26, column: 24, scope: !16)
!133 = !DILocation(line: 27, column: 2, scope: !16)
!134 = !DILocation(line: 27, column: 7, scope: !16)
!135 = !DILocation(line: 28, column: 2, scope: !16)
!136 = !DILocation(line: 28, column: 9, scope: !16)
!137 = !DILocation(line: 28, column: 12, scope: !16)
!138 = !DILocation(line: 30, column: 6, scope: !16)
!139 = !DILocation(line: 30, column: 7, scope: !140)
!140 = distinct !DILexicalBlock(scope: !16, file: !2, line: 30, column: 6)
!141 = !DILocation(line: 31, column: 3, scope: !140)
!142 = !DILocation(line: 33, column: 15, scope: !143)
!143 = distinct !DILexicalBlock(scope: !16, file: !2, line: 33, column: 2)
!144 = !DILocation(line: 33, column: 22, scope: !143)
!145 = !DILocation(line: 33, column: 7, scope: !143)
!146 = !DILocation(line: 33, column: 27, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !2, line: 33, column: 2)
!148 = !DILocation(line: 33, column: 29, scope: !147)
!149 = !DILocation(line: 33, column: 2, scope: !143)
!150 = !DILocation(line: 34, column: 8, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !2, line: 34, column: 7)
!152 = distinct !DILexicalBlock(scope: !147, file: !2, line: 33, column: 45)
!153 = !DILocation(line: 34, column: 7, scope: !152)
!154 = !DILocation(line: 35, column: 12, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !2, line: 34, column: 30)
!156 = !DILocation(line: 36, column: 4, scope: !155)
!157 = !DILocation(line: 38, column: 14, scope: !152)
!158 = !DILocation(line: 38, column: 16, scope: !152)
!159 = !DILocation(line: 38, column: 19, scope: !152)
!160 = !DILocation(line: 38, column: 29, scope: !152)
!161 = !DILocation(line: 38, column: 26, scope: !152)
!162 = !DILocation(line: 0, scope: !152)
!163 = !DILocation(line: 38, column: 11, scope: !152)
!164 = !DILocation(line: 39, column: 10, scope: !152)
!165 = !DILocation(line: 39, column: 8, scope: !152)
!166 = !DILocation(line: 40, column: 2, scope: !152)
!167 = !DILocation(line: 33, column: 40, scope: !147)
!168 = !DILocation(line: 33, column: 2, scope: !147)
!169 = distinct !{!169, !149, !170, !171, !172}
!170 = !DILocation(line: 40, column: 2, scope: !143)
!171 = !{!"llvm.loop.mustprogress"}
!172 = !{!"llvm.loop.unroll.disable"}
!173 = !DILocation(line: 41, column: 6, scope: !174)
!174 = distinct !DILexicalBlock(scope: !16, file: !2, line: 41, column: 6)
!175 = !DILocation(line: 41, column: 14, scope: !174)
!176 = !DILocation(line: 41, column: 6, scope: !16)
!177 = !DILocation(line: 42, column: 11, scope: !174)
!178 = !DILocation(line: 42, column: 3, scope: !174)
!179 = !DILocation(line: 44, column: 6, scope: !180)
!180 = distinct !DILexicalBlock(scope: !16, file: !2, line: 44, column: 6)
!181 = !{i8 0, i8 2}
!182 = !{}
!183 = !DILocation(line: 44, column: 6, scope: !16)
!184 = !DILocation(line: 45, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !2, line: 44, column: 15)
!186 = !DILocation(line: 45, column: 3, scope: !185)
!187 = !DILocation(line: 46, column: 17, scope: !185)
!188 = !DILocation(line: 46, column: 3, scope: !185)
!189 = !DILocation(line: 47, column: 3, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !2, line: 47, column: 3)
!191 = !DILocation(line: 47, column: 3, scope: !192)
!192 = distinct !DILexicalBlock(scope: !190, file: !2, line: 47, column: 3)
!193 = !DILocation(line: 48, column: 2, scope: !185)
!194 = !DILocation(line: 49, column: 1, scope: !16)
!195 = distinct !DISubprogram(name: "arch_test_bit", scope: !196, file: !196, line: 237, type: !197, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !202)
!196 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!197 = !DISubroutineType(types: !198)
!198 = !{!95, !59, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!202 = !{!203, !204}
!203 = !DILocalVariable(name: "nr", arg: 1, scope: !195, file: !196, line: 237, type: !59)
!204 = !DILocalVariable(name: "addr", arg: 2, scope: !195, file: !196, line: 237, type: !199)
!205 = !DILocation(line: 237, column: 29, scope: !195)
!206 = !DILocation(line: 237, column: 63, scope: !195)
!207 = !DILocation(line: 239, column: 30, scope: !195)
!208 = !DILocation(line: 239, column: 9, scope: !195)
!209 = !DILocation(line: 239, column: 54, scope: !195)
!210 = !DILocation(line: 239, column: 58, scope: !195)
!211 = !DILocation(line: 239, column: 36, scope: !195)
!212 = !DILocation(line: 240, column: 26, scope: !195)
!213 = !DILocation(line: 240, column: 30, scope: !195)
!214 = !DILocation(line: 240, column: 8, scope: !195)
!215 = !DILocation(line: 239, column: 2, scope: !195)
!216 = distinct !DISubprogram(name: "rdrand_long", scope: !217, file: !217, line: 20, type: !218, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !220)
!217 = !DIFile(filename: "./arch/x86/include/asm/archrandom.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8100e45a646ee0ab0040a389cd0f8b61")
!218 = !DISubroutineType(types: !219)
!219 = !{!95, !118}
!220 = !{!221, !222, !223}
!221 = !DILocalVariable(name: "v", arg: 1, scope: !216, file: !217, line: 20, type: !118)
!222 = !DILocalVariable(name: "ok", scope: !216, file: !217, line: 22, type: !95)
!223 = !DILocalVariable(name: "retry", scope: !216, file: !217, line: 23, type: !11)
!224 = !DILocation(line: 20, column: 60, scope: !216)
!225 = !DILocation(line: 22, column: 2, scope: !216)
!226 = !DILocation(line: 22, column: 7, scope: !216)
!227 = !DILocation(line: 23, column: 2, scope: !216)
!228 = !DILocation(line: 23, column: 15, scope: !216)
!229 = !DILocation(line: 24, column: 2, scope: !216)
!230 = !DILocation(line: 27, column: 40, scope: !231)
!231 = distinct !DILexicalBlock(scope: !216, file: !217, line: 24, column: 5)
!232 = !DILocation(line: 25, column: 3, scope: !231)
!233 = !{i64 1768860, i64 2149265103}
!234 = !DILocation(line: 28, column: 7, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !217, line: 28, column: 7)
!236 = !DILocation(line: 28, column: 7, scope: !231)
!237 = !DILocation(line: 29, column: 4, scope: !235)
!238 = !DILocation(line: 30, column: 2, scope: !231)
!239 = !DILocation(line: 30, column: 11, scope: !216)
!240 = distinct !{!240, !229, !241, !171, !172}
!241 = !DILocation(line: 30, column: 18, scope: !216)
!242 = !DILocation(line: 31, column: 2, scope: !216)
!243 = !DILocation(line: 32, column: 1, scope: !216)
!244 = !DISubprogram(name: "clear_cpu_cap", scope: !245, file: !245, line: 151, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!246 = !DISubroutineType(types: !247)
!247 = !{null, !19, !11}
!248 = !DISubprogram(name: "_printk", scope: !249, file: !249, line: 153, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!250 = !DISubroutineType(types: !251)
!251 = !{!40, !252, null}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!254 = distinct !DISubprogram(name: "constant_test_bit", scope: !196, file: !196, line: 204, type: !255, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !258)
!255 = !DISubroutineType(types: !256)
!256 = !{!95, !257, !199}
!257 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!258 = !{!259, !260}
!259 = !DILocalVariable(name: "nr", arg: 1, scope: !254, file: !196, line: 204, type: !257)
!260 = !DILocalVariable(name: "addr", arg: 2, scope: !254, file: !196, line: 204, type: !199)
!261 = !DILocation(line: 204, column: 52, scope: !254)
!262 = !DILocation(line: 204, column: 86, scope: !254)
!263 = !DILocation(line: 206, column: 19, scope: !254)
!264 = !DILocation(line: 206, column: 22, scope: !254)
!265 = !DILocation(line: 206, column: 15, scope: !254)
!266 = !DILocation(line: 207, column: 4, scope: !254)
!267 = !DILocation(line: 207, column: 9, scope: !254)
!268 = !DILocation(line: 207, column: 12, scope: !254)
!269 = !DILocation(line: 206, column: 44, scope: !254)
!270 = !DILocation(line: 207, column: 37, scope: !254)
!271 = !DILocation(line: 206, column: 2, scope: !254)
!272 = distinct !DISubprogram(name: "variable_test_bit", scope: !196, file: !196, line: 224, type: !255, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !273)
!273 = !{!274, !275, !276}
!274 = !DILocalVariable(name: "nr", arg: 1, scope: !272, file: !196, line: 224, type: !257)
!275 = !DILocalVariable(name: "addr", arg: 2, scope: !272, file: !196, line: 224, type: !199)
!276 = !DILocalVariable(name: "oldbit", scope: !272, file: !196, line: 226, type: !95)
!277 = !DILocation(line: 224, column: 52, scope: !272)
!278 = !DILocation(line: 224, column: 86, scope: !272)
!279 = !DILocation(line: 226, column: 2, scope: !272)
!280 = !DILocation(line: 226, column: 7, scope: !272)
!281 = !DILocation(line: 231, column: 33, scope: !272)
!282 = !DILocation(line: 231, column: 46, scope: !272)
!283 = !DILocation(line: 228, column: 2, scope: !272)
!284 = !{i64 2148126611, i64 2148126685}
!285 = !DILocation(line: 233, column: 9, scope: !272)
!286 = !DILocation(line: 234, column: 1, scope: !272)
!287 = !DILocation(line: 233, column: 2, scope: !272)
