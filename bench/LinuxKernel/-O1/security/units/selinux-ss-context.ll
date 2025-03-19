; ModuleID = 'security/selinux/ss/context.c'
source_filename = "security/selinux/ss/context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i32, i32, i32, %struct.mls_range, ptr }
%struct.mls_range = type { [2 x %struct.mls_level] }
%struct.mls_level = type { i32, %struct.ebitmap }
%struct.ebitmap = type { ptr, i32 }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @context_compute_hash(ptr noundef %c) #0 align 16 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %hash = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !59, metadata !DIExpression()), !dbg !61
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #6, !dbg !62
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !60, metadata !DIExpression()), !dbg !63
  store i32 0, ptr %hash, align 4, !dbg !63
  %0 = load ptr, ptr %c.addr, align 8, !dbg !64
  %len = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 3, !dbg !66
  %1 = load i32, ptr %len, align 4, !dbg !66
  %tobool = icmp ne i32 %1, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.end, !dbg !67

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %c.addr, align 8, !dbg !68
  %str = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 5, !dbg !69
  %3 = load ptr, ptr %str, align 8, !dbg !69
  %4 = load ptr, ptr %c.addr, align 8, !dbg !70
  %len1 = getelementptr inbounds %struct.context, ptr %4, i32 0, i32 3, !dbg !71
  %5 = load i32, ptr %len1, align 4, !dbg !71
  %call = call i32 @full_name_hash(ptr noundef null, ptr noundef %3, i32 noundef %5) #7, !dbg !72
  store i32 %call, ptr %retval, align 4, !dbg !73
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !73

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %c.addr, align 8, !dbg !74
  %user = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 0, !dbg !75
  %7 = load i32, ptr %user, align 8, !dbg !75
  %8 = load ptr, ptr %c.addr, align 8, !dbg !76
  %role = getelementptr inbounds %struct.context, ptr %8, i32 0, i32 1, !dbg !77
  %9 = load i32, ptr %role, align 4, !dbg !77
  %10 = load ptr, ptr %c.addr, align 8, !dbg !78
  %type = getelementptr inbounds %struct.context, ptr %10, i32 0, i32 2, !dbg !79
  %11 = load i32, ptr %type, align 8, !dbg !79
  %12 = load i32, ptr %hash, align 4, !dbg !80
  %call2 = call i32 @jhash_3words(i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %12) #8, !dbg !81
  store i32 %call2, ptr %hash, align 4, !dbg !82
  %13 = load ptr, ptr %c.addr, align 8, !dbg !83
  %range = getelementptr inbounds %struct.context, ptr %13, i32 0, i32 4, !dbg !84
  %14 = load i32, ptr %hash, align 4, !dbg !85
  %call3 = call i32 @mls_range_hash(ptr noundef %range, i32 noundef %14) #8, !dbg !86
  store i32 %call3, ptr %hash, align 4, !dbg !87
  %15 = load i32, ptr %hash, align 4, !dbg !88
  store i32 %15, ptr %retval, align 4, !dbg !89
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !89

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #6, !dbg !90
  %16 = load i32, ptr %retval, align 4, !dbg !90
  ret i32 %16, !dbg !90
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !91 dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jhash_3words(i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %initval) #4 align 16 !dbg !99 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %initval.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !104, metadata !DIExpression()), !dbg !108
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !105, metadata !DIExpression()), !dbg !109
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !106, metadata !DIExpression()), !dbg !110
  store i32 %initval, ptr %initval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initval.addr, metadata !107, metadata !DIExpression()), !dbg !111
  %0 = load i32, ptr %a.addr, align 4, !dbg !112
  %1 = load i32, ptr %b.addr, align 4, !dbg !113
  %2 = load i32, ptr %c.addr, align 4, !dbg !114
  %3 = load i32, ptr %initval.addr, align 4, !dbg !115
  %add = add i32 %3, -559038737, !dbg !116
  %add1 = add i32 %add, 12, !dbg !117
  %call = call i32 @__jhash_nwords(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %add1) #8, !dbg !118
  ret i32 %call, !dbg !119
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mls_range_hash(ptr noundef %r, i32 noundef %hash) #4 align 16 !dbg !120 {
entry:
  %r.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !127, metadata !DIExpression()), !dbg !129
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !128, metadata !DIExpression()), !dbg !130
  %0 = load ptr, ptr %r.addr, align 8, !dbg !131
  %level = getelementptr inbounds %struct.mls_range, ptr %0, i32 0, i32 0, !dbg !132
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !131
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !133
  %1 = load i32, ptr %sens, align 8, !dbg !133
  %2 = load ptr, ptr %r.addr, align 8, !dbg !134
  %level1 = getelementptr inbounds %struct.mls_range, ptr %2, i32 0, i32 0, !dbg !135
  %arrayidx2 = getelementptr [2 x %struct.mls_level], ptr %level1, i64 0, i64 1, !dbg !134
  %sens3 = getelementptr inbounds %struct.mls_level, ptr %arrayidx2, i32 0, i32 0, !dbg !136
  %3 = load i32, ptr %sens3, align 8, !dbg !136
  %4 = load i32, ptr %hash.addr, align 4, !dbg !137
  %call = call i32 @jhash_2words(i32 noundef %1, i32 noundef %3, i32 noundef %4) #8, !dbg !138
  store i32 %call, ptr %hash.addr, align 4, !dbg !139
  %5 = load ptr, ptr %r.addr, align 8, !dbg !140
  %level4 = getelementptr inbounds %struct.mls_range, ptr %5, i32 0, i32 0, !dbg !141
  %arrayidx5 = getelementptr [2 x %struct.mls_level], ptr %level4, i64 0, i64 0, !dbg !140
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx5, i32 0, i32 1, !dbg !142
  %6 = load i32, ptr %hash.addr, align 4, !dbg !143
  %call6 = call i32 @ebitmap_hash(ptr noundef %cat, i32 noundef %6) #8, !dbg !144
  store i32 %call6, ptr %hash.addr, align 4, !dbg !145
  %7 = load ptr, ptr %r.addr, align 8, !dbg !146
  %level7 = getelementptr inbounds %struct.mls_range, ptr %7, i32 0, i32 0, !dbg !147
  %arrayidx8 = getelementptr [2 x %struct.mls_level], ptr %level7, i64 0, i64 1, !dbg !146
  %cat9 = getelementptr inbounds %struct.mls_level, ptr %arrayidx8, i32 0, i32 1, !dbg !148
  %8 = load i32, ptr %hash.addr, align 4, !dbg !149
  %call10 = call i32 @ebitmap_hash(ptr noundef %cat9, i32 noundef %8) #8, !dbg !150
  store i32 %call10, ptr %hash.addr, align 4, !dbg !151
  %9 = load i32, ptr %hash.addr, align 4, !dbg !152
  ret i32 %9, !dbg !153
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__jhash_nwords(i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %initval) #4 align 16 !dbg !154 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %initval.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !156, metadata !DIExpression()), !dbg !160
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !157, metadata !DIExpression()), !dbg !161
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !158, metadata !DIExpression()), !dbg !162
  store i32 %initval, ptr %initval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initval.addr, metadata !159, metadata !DIExpression()), !dbg !163
  %0 = load i32, ptr %initval.addr, align 4, !dbg !164
  %1 = load i32, ptr %a.addr, align 4, !dbg !165
  %add = add i32 %1, %0, !dbg !165
  store i32 %add, ptr %a.addr, align 4, !dbg !165
  %2 = load i32, ptr %initval.addr, align 4, !dbg !166
  %3 = load i32, ptr %b.addr, align 4, !dbg !167
  %add1 = add i32 %3, %2, !dbg !167
  store i32 %add1, ptr %b.addr, align 4, !dbg !167
  %4 = load i32, ptr %initval.addr, align 4, !dbg !168
  %5 = load i32, ptr %c.addr, align 4, !dbg !169
  %add2 = add i32 %5, %4, !dbg !169
  store i32 %add2, ptr %c.addr, align 4, !dbg !169
  %6 = load i32, ptr %b.addr, align 4, !dbg !170
  %7 = load i32, ptr %c.addr, align 4, !dbg !170
  %xor = xor i32 %7, %6, !dbg !170
  store i32 %xor, ptr %c.addr, align 4, !dbg !170
  %8 = load i32, ptr %b.addr, align 4, !dbg !170
  %call = call i32 @rol32(i32 noundef %8, i32 noundef 14) #8, !dbg !170
  %9 = load i32, ptr %c.addr, align 4, !dbg !170
  %sub = sub i32 %9, %call, !dbg !170
  store i32 %sub, ptr %c.addr, align 4, !dbg !170
  %10 = load i32, ptr %c.addr, align 4, !dbg !170
  %11 = load i32, ptr %a.addr, align 4, !dbg !170
  %xor3 = xor i32 %11, %10, !dbg !170
  store i32 %xor3, ptr %a.addr, align 4, !dbg !170
  %12 = load i32, ptr %c.addr, align 4, !dbg !170
  %call4 = call i32 @rol32(i32 noundef %12, i32 noundef 11) #8, !dbg !170
  %13 = load i32, ptr %a.addr, align 4, !dbg !170
  %sub5 = sub i32 %13, %call4, !dbg !170
  store i32 %sub5, ptr %a.addr, align 4, !dbg !170
  %14 = load i32, ptr %a.addr, align 4, !dbg !170
  %15 = load i32, ptr %b.addr, align 4, !dbg !170
  %xor6 = xor i32 %15, %14, !dbg !170
  store i32 %xor6, ptr %b.addr, align 4, !dbg !170
  %16 = load i32, ptr %a.addr, align 4, !dbg !170
  %call7 = call i32 @rol32(i32 noundef %16, i32 noundef 25) #8, !dbg !170
  %17 = load i32, ptr %b.addr, align 4, !dbg !170
  %sub8 = sub i32 %17, %call7, !dbg !170
  store i32 %sub8, ptr %b.addr, align 4, !dbg !170
  %18 = load i32, ptr %b.addr, align 4, !dbg !170
  %19 = load i32, ptr %c.addr, align 4, !dbg !170
  %xor9 = xor i32 %19, %18, !dbg !170
  store i32 %xor9, ptr %c.addr, align 4, !dbg !170
  %20 = load i32, ptr %b.addr, align 4, !dbg !170
  %call10 = call i32 @rol32(i32 noundef %20, i32 noundef 16) #8, !dbg !170
  %21 = load i32, ptr %c.addr, align 4, !dbg !170
  %sub11 = sub i32 %21, %call10, !dbg !170
  store i32 %sub11, ptr %c.addr, align 4, !dbg !170
  %22 = load i32, ptr %c.addr, align 4, !dbg !170
  %23 = load i32, ptr %a.addr, align 4, !dbg !170
  %xor12 = xor i32 %23, %22, !dbg !170
  store i32 %xor12, ptr %a.addr, align 4, !dbg !170
  %24 = load i32, ptr %c.addr, align 4, !dbg !170
  %call13 = call i32 @rol32(i32 noundef %24, i32 noundef 4) #8, !dbg !170
  %25 = load i32, ptr %a.addr, align 4, !dbg !170
  %sub14 = sub i32 %25, %call13, !dbg !170
  store i32 %sub14, ptr %a.addr, align 4, !dbg !170
  %26 = load i32, ptr %a.addr, align 4, !dbg !170
  %27 = load i32, ptr %b.addr, align 4, !dbg !170
  %xor15 = xor i32 %27, %26, !dbg !170
  store i32 %xor15, ptr %b.addr, align 4, !dbg !170
  %28 = load i32, ptr %a.addr, align 4, !dbg !170
  %call16 = call i32 @rol32(i32 noundef %28, i32 noundef 14) #8, !dbg !170
  %29 = load i32, ptr %b.addr, align 4, !dbg !170
  %sub17 = sub i32 %29, %call16, !dbg !170
  store i32 %sub17, ptr %b.addr, align 4, !dbg !170
  %30 = load i32, ptr %b.addr, align 4, !dbg !170
  %31 = load i32, ptr %c.addr, align 4, !dbg !170
  %xor18 = xor i32 %31, %30, !dbg !170
  store i32 %xor18, ptr %c.addr, align 4, !dbg !170
  %32 = load i32, ptr %b.addr, align 4, !dbg !170
  %call19 = call i32 @rol32(i32 noundef %32, i32 noundef 24) #8, !dbg !170
  %33 = load i32, ptr %c.addr, align 4, !dbg !170
  %sub20 = sub i32 %33, %call19, !dbg !170
  store i32 %sub20, ptr %c.addr, align 4, !dbg !170
  %34 = load i32, ptr %c.addr, align 4, !dbg !172
  ret i32 %34, !dbg !173
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #4 align 16 !dbg !174 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !179, metadata !DIExpression()), !dbg !181
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !180, metadata !DIExpression()), !dbg !182
  %0 = load i32, ptr %word.addr, align 4, !dbg !183
  %1 = load i32, ptr %shift.addr, align 4, !dbg !184
  %and = and i32 %1, 31, !dbg !185
  %shl = shl i32 %0, %and, !dbg !186
  %2 = load i32, ptr %word.addr, align 4, !dbg !187
  %3 = load i32, ptr %shift.addr, align 4, !dbg !188
  %sub = sub i32 0, %3, !dbg !189
  %and1 = and i32 %sub, 31, !dbg !190
  %shr = lshr i32 %2, %and1, !dbg !191
  %or = or i32 %shl, %shr, !dbg !192
  ret i32 %or, !dbg !193
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jhash_2words(i32 noundef %a, i32 noundef %b, i32 noundef %initval) #4 align 16 !dbg !194 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %initval.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !198, metadata !DIExpression()), !dbg !201
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !199, metadata !DIExpression()), !dbg !202
  store i32 %initval, ptr %initval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initval.addr, metadata !200, metadata !DIExpression()), !dbg !203
  %0 = load i32, ptr %a.addr, align 4, !dbg !204
  %1 = load i32, ptr %b.addr, align 4, !dbg !205
  %2 = load i32, ptr %initval.addr, align 4, !dbg !206
  %add = add i32 %2, -559038737, !dbg !207
  %add1 = add i32 %add, 8, !dbg !208
  %call = call i32 @__jhash_nwords(i32 noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef %add1) #8, !dbg !209
  ret i32 %call, !dbg !210
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !211 dso_local i32 @ebitmap_hash(ptr noundef, i32 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone nounwind willreturn memory(read) }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/selinux/ss/.context.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -I ./security/selinux -I ./security/selinux/include -D KBUILD_MODFILE=\22security/selinux/selinux\22 -D KBUILD_BASENAME=\22context\22 -D KBUILD_MODNAME=\22selinux\22 -D __KBUILD_MODNAME=kmod_selinux -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/selinux/ss/context.ll security/selinux/ss/context.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "security/selinux/ss/context.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "778382e56ac608315c23b93dbc9b5074")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "context_compute_hash", scope: !1, file: !1, line: 14, type: !12, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !58)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !19}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "context", file: !22, line: 27, size: 576, elements: !23)
!22 = !DIFile(filename: "security/selinux/ss/context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da62b4bf5ddec43330086032ebb96414")
!23 = !{!24, !25, !26, !27, !28, !55}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !21, file: !22, line: 28, baseType: !14, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !21, file: !22, line: 29, baseType: !14, size: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !21, file: !22, line: 30, baseType: !14, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !21, file: !22, line: 31, baseType: !14, size: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !21, file: !22, line: 32, baseType: !29, size: 384, offset: 128)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mls_range", file: !30, line: 26, size: 384, elements: !31)
!30 = !DIFile(filename: "security/selinux/ss/mls_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ea1e0a8d988e75a37cbe0fc79ec24320")
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !29, file: !30, line: 27, baseType: !33, size: 384)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 384, elements: !53)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mls_level", file: !30, line: 21, size: 192, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sens", scope: !34, file: !30, line: 22, baseType: !14, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cat", scope: !34, file: !30, line: 23, baseType: !38, size: 128, offset: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap", file: !39, line: 40, size: 128, elements: !40)
!39 = !DIFile(filename: "security/selinux/ss/ebitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57a81f7285b67f9767135d87fb3569d7")
!40 = !{!41, !52}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !38, file: !39, line: 41, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap_node", file: !39, line: 34, size: 512, elements: !44)
!44 = !{!45, !46, !51}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !43, file: !39, line: 35, baseType: !42, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !43, file: !39, line: 36, baseType: !47, size: 384, offset: 64)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 384, elements: !49)
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !{!50}
!50 = !DISubrange(count: 6)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "startbit", scope: !43, file: !39, line: 37, baseType: !14, size: 32, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "highbit", scope: !38, file: !39, line: 42, baseType: !14, size: 32, offset: 64)
!53 = !{!54}
!54 = !DISubrange(count: 2)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !21, file: !22, line: 33, baseType: !56, size: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!58 = !{!59, !60}
!59 = !DILocalVariable(name: "c", arg: 1, scope: !11, file: !1, line: 14, type: !19)
!60 = !DILocalVariable(name: "hash", scope: !11, file: !1, line: 16, type: !14)
!61 = !DILocation(line: 14, column: 48, scope: !11)
!62 = !DILocation(line: 16, column: 2, scope: !11)
!63 = !DILocation(line: 16, column: 6, scope: !11)
!64 = !DILocation(line: 26, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !11, file: !1, line: 26, column: 6)
!66 = !DILocation(line: 26, column: 9, scope: !65)
!67 = !DILocation(line: 26, column: 6, scope: !11)
!68 = !DILocation(line: 27, column: 31, scope: !65)
!69 = !DILocation(line: 27, column: 34, scope: !65)
!70 = !DILocation(line: 27, column: 39, scope: !65)
!71 = !DILocation(line: 27, column: 42, scope: !65)
!72 = !DILocation(line: 27, column: 10, scope: !65)
!73 = !DILocation(line: 27, column: 3, scope: !65)
!74 = !DILocation(line: 29, column: 22, scope: !11)
!75 = !DILocation(line: 29, column: 25, scope: !11)
!76 = !DILocation(line: 29, column: 31, scope: !11)
!77 = !DILocation(line: 29, column: 34, scope: !11)
!78 = !DILocation(line: 29, column: 40, scope: !11)
!79 = !DILocation(line: 29, column: 43, scope: !11)
!80 = !DILocation(line: 29, column: 49, scope: !11)
!81 = !DILocation(line: 29, column: 9, scope: !11)
!82 = !DILocation(line: 29, column: 7, scope: !11)
!83 = !DILocation(line: 30, column: 25, scope: !11)
!84 = !DILocation(line: 30, column: 28, scope: !11)
!85 = !DILocation(line: 30, column: 35, scope: !11)
!86 = !DILocation(line: 30, column: 9, scope: !11)
!87 = !DILocation(line: 30, column: 7, scope: !11)
!88 = !DILocation(line: 31, column: 9, scope: !11)
!89 = !DILocation(line: 31, column: 2, scope: !11)
!90 = !DILocation(line: 32, column: 1, scope: !11)
!91 = !DISubprogram(name: "full_name_hash", scope: !92, file: !92, line: 66, type: !93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!92 = !DIFile(filename: "./include/linux/stringhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7b260b93de90497fc2d684369b4dec9")
!93 = !DISubroutineType(types: !94)
!94 = !{!18, !95, !97, !18}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!99 = distinct !DISubprogram(name: "jhash_3words", scope: !100, file: !100, line: 161, type: !101, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!100 = !DIFile(filename: "./include/linux/jhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca86fa12155f71794da0bd26a93ce792")
!101 = !DISubroutineType(types: !102)
!102 = !{!14, !14, !14, !14, !14}
!103 = !{!104, !105, !106, !107}
!104 = !DILocalVariable(name: "a", arg: 1, scope: !99, file: !100, line: 161, type: !14)
!105 = !DILocalVariable(name: "b", arg: 2, scope: !99, file: !100, line: 161, type: !14)
!106 = !DILocalVariable(name: "c", arg: 3, scope: !99, file: !100, line: 161, type: !14)
!107 = !DILocalVariable(name: "initval", arg: 4, scope: !99, file: !100, line: 161, type: !14)
!108 = !DILocation(line: 161, column: 36, scope: !99)
!109 = !DILocation(line: 161, column: 43, scope: !99)
!110 = !DILocation(line: 161, column: 50, scope: !99)
!111 = !DILocation(line: 161, column: 57, scope: !99)
!112 = !DILocation(line: 163, column: 24, scope: !99)
!113 = !DILocation(line: 163, column: 27, scope: !99)
!114 = !DILocation(line: 163, column: 30, scope: !99)
!115 = !DILocation(line: 163, column: 33, scope: !99)
!116 = !DILocation(line: 163, column: 41, scope: !99)
!117 = !DILocation(line: 163, column: 57, scope: !99)
!118 = !DILocation(line: 163, column: 9, scope: !99)
!119 = !DILocation(line: 163, column: 2, scope: !99)
!120 = distinct !DISubprogram(name: "mls_range_hash", scope: !121, file: !121, line: 107, type: !122, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!121 = !DIFile(filename: "security/selinux/ss/mls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7dd4943be5b816106285fc137c74333")
!122 = !DISubroutineType(types: !123)
!123 = !{!14, !124, !14}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!126 = !{!127, !128}
!127 = !DILocalVariable(name: "r", arg: 1, scope: !120, file: !121, line: 107, type: !124)
!128 = !DILocalVariable(name: "hash", arg: 2, scope: !120, file: !121, line: 107, type: !14)
!129 = !DILocation(line: 107, column: 58, scope: !120)
!130 = !DILocation(line: 107, column: 65, scope: !120)
!131 = !DILocation(line: 109, column: 22, scope: !120)
!132 = !DILocation(line: 109, column: 25, scope: !120)
!133 = !DILocation(line: 109, column: 34, scope: !120)
!134 = !DILocation(line: 109, column: 40, scope: !120)
!135 = !DILocation(line: 109, column: 43, scope: !120)
!136 = !DILocation(line: 109, column: 52, scope: !120)
!137 = !DILocation(line: 109, column: 58, scope: !120)
!138 = !DILocation(line: 109, column: 9, scope: !120)
!139 = !DILocation(line: 109, column: 7, scope: !120)
!140 = !DILocation(line: 110, column: 23, scope: !120)
!141 = !DILocation(line: 110, column: 26, scope: !120)
!142 = !DILocation(line: 110, column: 35, scope: !120)
!143 = !DILocation(line: 110, column: 40, scope: !120)
!144 = !DILocation(line: 110, column: 9, scope: !120)
!145 = !DILocation(line: 110, column: 7, scope: !120)
!146 = !DILocation(line: 111, column: 23, scope: !120)
!147 = !DILocation(line: 111, column: 26, scope: !120)
!148 = !DILocation(line: 111, column: 35, scope: !120)
!149 = !DILocation(line: 111, column: 40, scope: !120)
!150 = !DILocation(line: 111, column: 9, scope: !120)
!151 = !DILocation(line: 111, column: 7, scope: !120)
!152 = !DILocation(line: 112, column: 9, scope: !120)
!153 = !DILocation(line: 112, column: 2, scope: !120)
!154 = distinct !DISubprogram(name: "__jhash_nwords", scope: !100, file: !100, line: 150, type: !101, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!155 = !{!156, !157, !158, !159}
!156 = !DILocalVariable(name: "a", arg: 1, scope: !154, file: !100, line: 150, type: !14)
!157 = !DILocalVariable(name: "b", arg: 2, scope: !154, file: !100, line: 150, type: !14)
!158 = !DILocalVariable(name: "c", arg: 3, scope: !154, file: !100, line: 150, type: !14)
!159 = !DILocalVariable(name: "initval", arg: 4, scope: !154, file: !100, line: 150, type: !14)
!160 = !DILocation(line: 150, column: 38, scope: !154)
!161 = !DILocation(line: 150, column: 45, scope: !154)
!162 = !DILocation(line: 150, column: 52, scope: !154)
!163 = !DILocation(line: 150, column: 59, scope: !154)
!164 = !DILocation(line: 152, column: 7, scope: !154)
!165 = !DILocation(line: 152, column: 4, scope: !154)
!166 = !DILocation(line: 153, column: 7, scope: !154)
!167 = !DILocation(line: 153, column: 4, scope: !154)
!168 = !DILocation(line: 154, column: 7, scope: !154)
!169 = !DILocation(line: 154, column: 4, scope: !154)
!170 = !DILocation(line: 156, column: 2, scope: !171)
!171 = distinct !DILexicalBlock(scope: !154, file: !100, line: 156, column: 2)
!172 = !DILocation(line: 158, column: 9, scope: !154)
!173 = !DILocation(line: 158, column: 2, scope: !154)
!174 = distinct !DISubprogram(name: "rol32", scope: !175, file: !175, line: 125, type: !176, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !178)
!175 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!176 = !DISubroutineType(types: !177)
!177 = !{!16, !16, !18}
!178 = !{!179, !180}
!179 = !DILocalVariable(name: "word", arg: 1, scope: !174, file: !175, line: 125, type: !16)
!180 = !DILocalVariable(name: "shift", arg: 2, scope: !174, file: !175, line: 125, type: !18)
!181 = !DILocation(line: 125, column: 33, scope: !174)
!182 = !DILocation(line: 125, column: 52, scope: !174)
!183 = !DILocation(line: 127, column: 10, scope: !174)
!184 = !DILocation(line: 127, column: 19, scope: !174)
!185 = !DILocation(line: 127, column: 25, scope: !174)
!186 = !DILocation(line: 127, column: 15, scope: !174)
!187 = !DILocation(line: 127, column: 35, scope: !174)
!188 = !DILocation(line: 127, column: 46, scope: !174)
!189 = !DILocation(line: 127, column: 45, scope: !174)
!190 = !DILocation(line: 127, column: 53, scope: !174)
!191 = !DILocation(line: 127, column: 40, scope: !174)
!192 = !DILocation(line: 127, column: 32, scope: !174)
!193 = !DILocation(line: 127, column: 2, scope: !174)
!194 = distinct !DISubprogram(name: "jhash_2words", scope: !100, file: !100, line: 166, type: !195, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{!14, !14, !14, !14}
!197 = !{!198, !199, !200}
!198 = !DILocalVariable(name: "a", arg: 1, scope: !194, file: !100, line: 166, type: !14)
!199 = !DILocalVariable(name: "b", arg: 2, scope: !194, file: !100, line: 166, type: !14)
!200 = !DILocalVariable(name: "initval", arg: 3, scope: !194, file: !100, line: 166, type: !14)
!201 = !DILocation(line: 166, column: 36, scope: !194)
!202 = !DILocation(line: 166, column: 43, scope: !194)
!203 = !DILocation(line: 166, column: 50, scope: !194)
!204 = !DILocation(line: 168, column: 24, scope: !194)
!205 = !DILocation(line: 168, column: 27, scope: !194)
!206 = !DILocation(line: 168, column: 33, scope: !194)
!207 = !DILocation(line: 168, column: 41, scope: !194)
!208 = !DILocation(line: 168, column: 57, scope: !194)
!209 = !DILocation(line: 168, column: 9, scope: !194)
!210 = !DILocation(line: 168, column: 2, scope: !194)
!211 = !DISubprogram(name: "ebitmap_hash", scope: !39, file: !39, line: 134, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DISubroutineType(types: !213)
!213 = !{!14, !214, !14}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
