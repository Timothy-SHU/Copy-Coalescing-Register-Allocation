; ModuleID = 'lib/glob.c'
source_filename = "lib/glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_glob_match: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad glob_match ; .previous"

@__UNIQUE_ID_description195 = internal constant [34 x i8] c"glob.description=glob(7) matching\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_file196 = internal constant [19 x i8] c"glob.file=lib/glob\00", section ".modinfo", align 1, !dbg !14
@__UNIQUE_ID_license197 = internal constant [26 x i8] c"glob.license=Dual MIT/GPL\00", section ".modinfo", align 1, !dbg !21
@__UNIQUE_ID___addressable_glob_match198 = internal global ptr @glob_match, section ".discard.addressable", align 8, !dbg !26
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @__UNIQUE_ID___addressable_glob_match198], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read)
define hidden zeroext i1 @glob_match(ptr noundef %pat, ptr noundef %str) #0 align 16 !dbg !40 {
entry:
  %retval = alloca i1, align 1
  %pat.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %back_pat = alloca ptr, align 8
  %back_str = alloca ptr, align 8
  %c = alloca i8, align 1
  %d = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %match = alloca i8, align 1
  %inverted = alloca i8, align 1
  %class = alloca ptr, align 8
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  store ptr %pat, ptr %pat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pat.addr, metadata !48, metadata !DIExpression()), !dbg !68
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !49, metadata !DIExpression()), !dbg !69
  call void @llvm.lifetime.start.p0(i64 8, ptr %back_pat) #3, !dbg !70
  call void @llvm.dbg.declare(metadata ptr %back_pat, metadata !50, metadata !DIExpression()), !dbg !71
  store ptr null, ptr %back_pat, align 8, !dbg !71
  call void @llvm.lifetime.start.p0(i64 8, ptr %back_str) #3, !dbg !70
  call void @llvm.dbg.declare(metadata ptr %back_str, metadata !51, metadata !DIExpression()), !dbg !72
  br label %for.cond, !dbg !73

for.cond:                                         ; preds = %cleanup.cont91, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #3, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %c, metadata !52, metadata !DIExpression()), !dbg !75
  %0 = load ptr, ptr %str.addr, align 8, !dbg !76
  %incdec.ptr = getelementptr i8, ptr %0, i32 1, !dbg !76
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !76
  %1 = load i8, ptr %0, align 1, !dbg !77
  store i8 %1, ptr %c, align 1, !dbg !75
  call void @llvm.lifetime.start.p0(i64 1, ptr %d) #3, !dbg !78
  call void @llvm.dbg.declare(metadata ptr %d, metadata !57, metadata !DIExpression()), !dbg !79
  %2 = load ptr, ptr %pat.addr, align 8, !dbg !80
  %incdec.ptr1 = getelementptr i8, ptr %2, i32 1, !dbg !80
  store ptr %incdec.ptr1, ptr %pat.addr, align 8, !dbg !80
  %3 = load i8, ptr %2, align 1, !dbg !81
  store i8 %3, ptr %d, align 1, !dbg !79
  %4 = load i8, ptr %d, align 1, !dbg !82
  %conv = zext i8 %4 to i32, !dbg !82
  switch i32 %conv, label %sw.default [
    i32 63, label %sw.bb
    i32 42, label %sw.bb4
    i32 91, label %sw.bb11
    i32 92, label %sw.bb68
  ], !dbg !83

sw.bb:                                            ; preds = %for.cond
  %5 = load i8, ptr %c, align 1, !dbg !84
  %conv2 = zext i8 %5 to i32, !dbg !84
  %cmp = icmp eq i32 %conv2, 0, !dbg !86
  br i1 %cmp, label %if.then, label %if.end, !dbg !87

if.then:                                          ; preds = %sw.bb
  store i1 false, ptr %retval, align 1, !dbg !88
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !88

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !89

sw.bb4:                                           ; preds = %for.cond
  %6 = load ptr, ptr %pat.addr, align 8, !dbg !90
  %7 = load i8, ptr %6, align 1, !dbg !92
  %conv5 = zext i8 %7 to i32, !dbg !92
  %cmp6 = icmp eq i32 %conv5, 0, !dbg !93
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !94

if.then8:                                         ; preds = %sw.bb4
  store i1 true, ptr %retval, align 1, !dbg !95
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !95

if.end9:                                          ; preds = %sw.bb4
  %8 = load ptr, ptr %pat.addr, align 8, !dbg !96
  store ptr %8, ptr %back_pat, align 8, !dbg !97
  %9 = load ptr, ptr %str.addr, align 8, !dbg !98
  %incdec.ptr10 = getelementptr i8, ptr %9, i32 -1, !dbg !98
  store ptr %incdec.ptr10, ptr %str.addr, align 8, !dbg !98
  store ptr %incdec.ptr10, ptr %back_str, align 8, !dbg !99
  br label %sw.epilog, !dbg !100

sw.bb11:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %match) #3, !dbg !101
  call void @llvm.dbg.declare(metadata ptr %match, metadata !58, metadata !DIExpression()), !dbg !102
  store i8 0, ptr %match, align 1, !dbg !102
  call void @llvm.lifetime.start.p0(i64 1, ptr %inverted) #3, !dbg !101
  call void @llvm.dbg.declare(metadata ptr %inverted, metadata !61, metadata !DIExpression()), !dbg !103
  %10 = load ptr, ptr %pat.addr, align 8, !dbg !104
  %11 = load i8, ptr %10, align 1, !dbg !105
  %conv12 = zext i8 %11 to i32, !dbg !105
  %cmp13 = icmp eq i32 %conv12, 33, !dbg !106
  %frombool = zext i1 %cmp13 to i8, !dbg !103
  store i8 %frombool, ptr %inverted, align 1, !dbg !103
  call void @llvm.lifetime.start.p0(i64 8, ptr %class) #3, !dbg !107
  call void @llvm.dbg.declare(metadata ptr %class, metadata !62, metadata !DIExpression()), !dbg !108
  %12 = load ptr, ptr %pat.addr, align 8, !dbg !109
  %13 = load i8, ptr %inverted, align 1, !dbg !110, !range !111, !noundef !112
  %tobool = trunc i8 %13 to i1, !dbg !110
  %conv15 = zext i1 %tobool to i32, !dbg !110
  %idx.ext = sext i32 %conv15 to i64, !dbg !113
  %add.ptr = getelementptr i8, ptr %12, i64 %idx.ext, !dbg !113
  store ptr %add.ptr, ptr %class, align 8, !dbg !108
  call void @llvm.lifetime.start.p0(i64 1, ptr %a) #3, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %a, metadata !63, metadata !DIExpression()), !dbg !115
  %14 = load ptr, ptr %class, align 8, !dbg !116
  %incdec.ptr16 = getelementptr i8, ptr %14, i32 1, !dbg !116
  store ptr %incdec.ptr16, ptr %class, align 8, !dbg !116
  %15 = load i8, ptr %14, align 1, !dbg !117
  store i8 %15, ptr %a, align 1, !dbg !115
  br label %do.body, !dbg !118

do.body:                                          ; preds = %do.cond, %sw.bb11
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #3, !dbg !119
  call void @llvm.dbg.declare(metadata ptr %b, metadata !64, metadata !DIExpression()), !dbg !120
  %16 = load i8, ptr %a, align 1, !dbg !121
  store i8 %16, ptr %b, align 1, !dbg !120
  %17 = load i8, ptr %a, align 1, !dbg !122
  %conv17 = zext i8 %17 to i32, !dbg !122
  %cmp18 = icmp eq i32 %conv17, 0, !dbg !124
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !125

if.then20:                                        ; preds = %do.body
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !126

if.end21:                                         ; preds = %do.body
  %18 = load ptr, ptr %class, align 8, !dbg !127
  %arrayidx = getelementptr i8, ptr %18, i64 0, !dbg !127
  %19 = load i8, ptr %arrayidx, align 1, !dbg !127
  %conv22 = zext i8 %19 to i32, !dbg !127
  %cmp23 = icmp eq i32 %conv22, 45, !dbg !129
  br i1 %cmp23, label %land.lhs.true, label %if.end37, !dbg !130

land.lhs.true:                                    ; preds = %if.end21
  %20 = load ptr, ptr %class, align 8, !dbg !131
  %arrayidx25 = getelementptr i8, ptr %20, i64 1, !dbg !131
  %21 = load i8, ptr %arrayidx25, align 1, !dbg !131
  %conv26 = zext i8 %21 to i32, !dbg !131
  %cmp27 = icmp ne i32 %conv26, 93, !dbg !132
  br i1 %cmp27, label %if.then29, label %if.end37, !dbg !133

if.then29:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %class, align 8, !dbg !134
  %arrayidx30 = getelementptr i8, ptr %22, i64 1, !dbg !134
  %23 = load i8, ptr %arrayidx30, align 1, !dbg !134
  store i8 %23, ptr %b, align 1, !dbg !136
  %24 = load i8, ptr %b, align 1, !dbg !137
  %conv31 = zext i8 %24 to i32, !dbg !137
  %cmp32 = icmp eq i32 %conv31, 0, !dbg !139
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !140

if.then34:                                        ; preds = %if.then29
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !141

if.end35:                                         ; preds = %if.then29
  %25 = load ptr, ptr %class, align 8, !dbg !142
  %add.ptr36 = getelementptr i8, ptr %25, i64 2, !dbg !142
  store ptr %add.ptr36, ptr %class, align 8, !dbg !142
  br label %if.end37, !dbg !143

if.end37:                                         ; preds = %if.end35, %land.lhs.true, %if.end21
  %26 = load i8, ptr %a, align 1, !dbg !144
  %conv38 = zext i8 %26 to i32, !dbg !144
  %27 = load i8, ptr %c, align 1, !dbg !145
  %conv39 = zext i8 %27 to i32, !dbg !145
  %cmp40 = icmp sle i32 %conv38, %conv39, !dbg !146
  br i1 %cmp40, label %land.rhs, label %land.end, !dbg !147

land.rhs:                                         ; preds = %if.end37
  %28 = load i8, ptr %c, align 1, !dbg !148
  %conv42 = zext i8 %28 to i32, !dbg !148
  %29 = load i8, ptr %b, align 1, !dbg !149
  %conv43 = zext i8 %29 to i32, !dbg !149
  %cmp44 = icmp sle i32 %conv42, %conv43, !dbg !150
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end37
  %30 = phi i1 [ false, %if.end37 ], [ %cmp44, %land.rhs ], !dbg !151
  %land.ext = zext i1 %30 to i32, !dbg !147
  %31 = load i8, ptr %match, align 1, !dbg !152, !range !111, !noundef !112
  %tobool46 = trunc i8 %31 to i1, !dbg !152
  %conv47 = zext i1 %tobool46 to i32, !dbg !152
  %or = or i32 %conv47, %land.ext, !dbg !152
  %tobool48 = icmp ne i32 %or, 0, !dbg !152
  %frombool49 = zext i1 %tobool48 to i8, !dbg !152
  store i8 %frombool49, ptr %match, align 1, !dbg !152
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !153
  br label %cleanup, !dbg !153

cleanup:                                          ; preds = %if.then34, %if.then20, %land.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #3, !dbg !153
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup62 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !154

do.cond:                                          ; preds = %cleanup.cont
  %32 = load ptr, ptr %class, align 8, !dbg !155
  %incdec.ptr50 = getelementptr i8, ptr %32, i32 1, !dbg !155
  store ptr %incdec.ptr50, ptr %class, align 8, !dbg !155
  %33 = load i8, ptr %32, align 1, !dbg !156
  store i8 %33, ptr %a, align 1, !dbg !157
  %conv51 = zext i8 %33 to i32, !dbg !158
  %cmp52 = icmp ne i32 %conv51, 93, !dbg !159
  br i1 %cmp52, label %do.body, label %do.end, !dbg !154, !llvm.loop !160

do.end:                                           ; preds = %do.cond
  %34 = load i8, ptr %match, align 1, !dbg !164, !range !111, !noundef !112
  %tobool54 = trunc i8 %34 to i1, !dbg !164
  %conv55 = zext i1 %tobool54 to i32, !dbg !164
  %35 = load i8, ptr %inverted, align 1, !dbg !166, !range !111, !noundef !112
  %tobool56 = trunc i8 %35 to i1, !dbg !166
  %conv57 = zext i1 %tobool56 to i32, !dbg !166
  %cmp58 = icmp eq i32 %conv55, %conv57, !dbg !167
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !168

if.then60:                                        ; preds = %do.end
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup62, !dbg !169

if.end61:                                         ; preds = %do.end
  %36 = load ptr, ptr %class, align 8, !dbg !170
  store ptr %36, ptr %pat.addr, align 8, !dbg !171
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !172
  br label %cleanup62, !dbg !172

cleanup62:                                        ; preds = %if.then60, %if.end61, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %a) #3, !dbg !172
  call void @llvm.lifetime.end.p0(i64 8, ptr %class) #3, !dbg !172
  call void @llvm.lifetime.end.p0(i64 1, ptr %inverted) #3, !dbg !172
  call void @llvm.lifetime.end.p0(i64 1, ptr %match) #3, !dbg !172
  %cleanup.dest66 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest66, label %cleanup88 [
    i32 0, label %cleanup.cont67
    i32 7, label %literal
    i32 8, label %backtrack
  ]

cleanup.cont67:                                   ; preds = %cleanup62
  br label %sw.epilog, !dbg !173

sw.bb68:                                          ; preds = %for.cond
  %37 = load ptr, ptr %pat.addr, align 8, !dbg !174
  %incdec.ptr69 = getelementptr i8, ptr %37, i32 1, !dbg !174
  store ptr %incdec.ptr69, ptr %pat.addr, align 8, !dbg !174
  %38 = load i8, ptr %37, align 1, !dbg !175
  store i8 %38, ptr %d, align 1, !dbg !176
  br label %sw.default, !dbg !177

sw.default:                                       ; preds = %for.cond, %sw.bb68
  br label %literal, !dbg !177

literal:                                          ; preds = %sw.default, %cleanup62
  call void @llvm.dbg.label(metadata !66), !dbg !178
  %39 = load i8, ptr %c, align 1, !dbg !179
  %conv70 = zext i8 %39 to i32, !dbg !179
  %40 = load i8, ptr %d, align 1, !dbg !181
  %conv71 = zext i8 %40 to i32, !dbg !181
  %cmp72 = icmp eq i32 %conv70, %conv71, !dbg !182
  br i1 %cmp72, label %if.then74, label %if.end80, !dbg !183

if.then74:                                        ; preds = %literal
  %41 = load i8, ptr %d, align 1, !dbg !184
  %conv75 = zext i8 %41 to i32, !dbg !184
  %cmp76 = icmp eq i32 %conv75, 0, !dbg !187
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !188

if.then78:                                        ; preds = %if.then74
  store i1 true, ptr %retval, align 1, !dbg !189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !189

if.end79:                                         ; preds = %if.then74
  br label %sw.epilog, !dbg !190

if.end80:                                         ; preds = %literal
  br label %backtrack, !dbg !181

backtrack:                                        ; preds = %if.end80, %cleanup62
  call void @llvm.dbg.label(metadata !67), !dbg !191
  %42 = load i8, ptr %c, align 1, !dbg !192
  %conv81 = zext i8 %42 to i32, !dbg !192
  %cmp82 = icmp eq i32 %conv81, 0, !dbg !194
  br i1 %cmp82, label %if.then85, label %lor.lhs.false, !dbg !195

lor.lhs.false:                                    ; preds = %backtrack
  %43 = load ptr, ptr %back_pat, align 8, !dbg !196
  %tobool84 = icmp ne ptr %43, null, !dbg !196
  br i1 %tobool84, label %if.end86, label %if.then85, !dbg !197

if.then85:                                        ; preds = %lor.lhs.false, %backtrack
  store i1 false, ptr %retval, align 1, !dbg !198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !198

if.end86:                                         ; preds = %lor.lhs.false
  %44 = load ptr, ptr %back_pat, align 8, !dbg !199
  store ptr %44, ptr %pat.addr, align 8, !dbg !200
  %45 = load ptr, ptr %back_str, align 8, !dbg !201
  %incdec.ptr87 = getelementptr i8, ptr %45, i32 1, !dbg !201
  store ptr %incdec.ptr87, ptr %back_str, align 8, !dbg !201
  store ptr %incdec.ptr87, ptr %str.addr, align 8, !dbg !202
  br label %sw.epilog, !dbg !203

sw.epilog:                                        ; preds = %if.end86, %if.end79, %cleanup.cont67, %if.end9, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !204
  br label %cleanup88, !dbg !204

cleanup88:                                        ; preds = %sw.epilog, %if.then85, %if.then78, %cleanup62, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %d) #3, !dbg !204
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #3, !dbg !204
  %cleanup.dest90 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest90, label %cleanup92 [
    i32 0, label %cleanup.cont91
  ]

cleanup.cont91:                                   ; preds = %cleanup88
  br label %for.cond, !dbg !205, !llvm.loop !206

cleanup92:                                        ; preds = %cleanup88
  call void @llvm.lifetime.end.p0(i64 8, ptr %back_str) #3, !dbg !209
  call void @llvm.lifetime.end.p0(i64 8, ptr %back_pat) #3, !dbg !209
  %46 = load i1, ptr %retval, align 1, !dbg !209
  ret i1 %46, !dbg !209
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description195", scope: !2, file: !3, line: 9, type: !28, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.glob.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/glob\22 -D KBUILD_BASENAME=\22glob\22 -D KBUILD_MODNAME=\22glob\22 -D __KBUILD_MODNAME=kmod_glob -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/glob.ll lib/glob.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/glob.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03c408efa3335b3b4190243fb7754a54")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0, !14, !21, !26}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file196", scope: !2, file: !3, line: 10, type: !16, isLocal: true, isDefinition: true, align: 8)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 152, elements: !19)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !{!20}
!20 = !DISubrange(count: 19)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license197", scope: !2, file: !3, line: 10, type: !23, isLocal: true, isDefinition: true, align: 8)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 208, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 26)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_glob_match198", scope: !2, file: !3, line: 123, type: !12, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 272, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 34)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 8, !"cf-protection-branch", i32 1}
!35 = !{i32 4, !"function_return_thunk_extern", i32 1}
!36 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!37 = !{i32 1, !"Code Model", i32 2}
!38 = !{i32 1, !"override-stack-alignment", i32 8}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = distinct !DISubprogram(name: "glob_match", scope: !3, file: !3, line: 40, type: !41, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !46, !46}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !44, line: 35, baseType: !45)
!44 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!45 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!47 = !{!48, !49, !50, !51, !52, !57, !58, !61, !62, !63, !64, !66, !67}
!48 = !DILocalVariable(name: "pat", arg: 1, scope: !40, file: !3, line: 40, type: !46)
!49 = !DILocalVariable(name: "str", arg: 2, scope: !40, file: !3, line: 40, type: !46)
!50 = !DILocalVariable(name: "back_pat", scope: !40, file: !3, line: 48, type: !46)
!51 = !DILocalVariable(name: "back_str", scope: !40, file: !3, line: 48, type: !46)
!52 = !DILocalVariable(name: "c", scope: !53, file: !3, line: 56, type: !56)
!53 = distinct !DILexicalBlock(scope: !54, file: !3, line: 55, column: 11)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 55, column: 2)
!55 = distinct !DILexicalBlock(scope: !40, file: !3, line: 55, column: 2)
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DILocalVariable(name: "d", scope: !53, file: !3, line: 57, type: !56)
!58 = !DILocalVariable(name: "match", scope: !59, file: !3, line: 71, type: !43)
!59 = distinct !DILexicalBlock(scope: !60, file: !3, line: 70, column: 13)
!60 = distinct !DILexicalBlock(scope: !53, file: !3, line: 59, column: 14)
!61 = !DILocalVariable(name: "inverted", scope: !59, file: !3, line: 71, type: !43)
!62 = !DILocalVariable(name: "class", scope: !59, file: !3, line: 72, type: !46)
!63 = !DILocalVariable(name: "a", scope: !59, file: !3, line: 73, type: !56)
!64 = !DILocalVariable(name: "b", scope: !65, file: !3, line: 81, type: !56)
!65 = distinct !DILexicalBlock(scope: !59, file: !3, line: 80, column: 7)
!66 = !DILabel(scope: !60, name: "literal", file: !3, line: 107)
!67 = !DILabel(scope: !60, name: "backtrack", file: !3, line: 113)
!68 = !DILocation(line: 40, column: 36, scope: !40)
!69 = !DILocation(line: 40, column: 53, scope: !40)
!70 = !DILocation(line: 48, column: 2, scope: !40)
!71 = !DILocation(line: 48, column: 14, scope: !40)
!72 = !DILocation(line: 48, column: 32, scope: !40)
!73 = !DILocation(line: 55, column: 2, scope: !40)
!74 = !DILocation(line: 56, column: 3, scope: !53)
!75 = !DILocation(line: 56, column: 17, scope: !53)
!76 = !DILocation(line: 56, column: 25, scope: !53)
!77 = !DILocation(line: 56, column: 21, scope: !53)
!78 = !DILocation(line: 57, column: 3, scope: !53)
!79 = !DILocation(line: 57, column: 17, scope: !53)
!80 = !DILocation(line: 57, column: 25, scope: !53)
!81 = !DILocation(line: 57, column: 21, scope: !53)
!82 = !DILocation(line: 59, column: 11, scope: !53)
!83 = !DILocation(line: 59, column: 3, scope: !53)
!84 = !DILocation(line: 61, column: 8, scope: !85)
!85 = distinct !DILexicalBlock(scope: !60, file: !3, line: 61, column: 8)
!86 = !DILocation(line: 61, column: 10, scope: !85)
!87 = !DILocation(line: 61, column: 8, scope: !60)
!88 = !DILocation(line: 62, column: 5, scope: !85)
!89 = !DILocation(line: 63, column: 4, scope: !60)
!90 = !DILocation(line: 65, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !60, file: !3, line: 65, column: 8)
!92 = !DILocation(line: 65, column: 8, scope: !91)
!93 = !DILocation(line: 65, column: 13, scope: !91)
!94 = !DILocation(line: 65, column: 8, scope: !60)
!95 = !DILocation(line: 66, column: 5, scope: !91)
!96 = !DILocation(line: 67, column: 15, scope: !60)
!97 = !DILocation(line: 67, column: 13, scope: !60)
!98 = !DILocation(line: 68, column: 15, scope: !60)
!99 = !DILocation(line: 68, column: 13, scope: !60)
!100 = !DILocation(line: 69, column: 4, scope: !60)
!101 = !DILocation(line: 71, column: 4, scope: !59)
!102 = !DILocation(line: 71, column: 9, scope: !59)
!103 = !DILocation(line: 71, column: 24, scope: !59)
!104 = !DILocation(line: 71, column: 37, scope: !59)
!105 = !DILocation(line: 71, column: 36, scope: !59)
!106 = !DILocation(line: 71, column: 41, scope: !59)
!107 = !DILocation(line: 72, column: 4, scope: !59)
!108 = !DILocation(line: 72, column: 16, scope: !59)
!109 = !DILocation(line: 72, column: 24, scope: !59)
!110 = !DILocation(line: 72, column: 30, scope: !59)
!111 = !{i8 0, i8 2}
!112 = !{}
!113 = !DILocation(line: 72, column: 28, scope: !59)
!114 = !DILocation(line: 73, column: 4, scope: !59)
!115 = !DILocation(line: 73, column: 18, scope: !59)
!116 = !DILocation(line: 73, column: 28, scope: !59)
!117 = !DILocation(line: 73, column: 22, scope: !59)
!118 = !DILocation(line: 80, column: 4, scope: !59)
!119 = !DILocation(line: 81, column: 5, scope: !65)
!120 = !DILocation(line: 81, column: 19, scope: !65)
!121 = !DILocation(line: 81, column: 23, scope: !65)
!122 = !DILocation(line: 83, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !65, file: !3, line: 83, column: 9)
!124 = !DILocation(line: 83, column: 11, scope: !123)
!125 = !DILocation(line: 83, column: 9, scope: !65)
!126 = !DILocation(line: 84, column: 6, scope: !123)
!127 = !DILocation(line: 86, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !65, file: !3, line: 86, column: 9)
!129 = !DILocation(line: 86, column: 18, scope: !128)
!130 = !DILocation(line: 86, column: 25, scope: !128)
!131 = !DILocation(line: 86, column: 28, scope: !128)
!132 = !DILocation(line: 86, column: 37, scope: !128)
!133 = !DILocation(line: 86, column: 9, scope: !65)
!134 = !DILocation(line: 87, column: 10, scope: !135)
!135 = distinct !DILexicalBlock(scope: !128, file: !3, line: 86, column: 45)
!136 = !DILocation(line: 87, column: 8, scope: !135)
!137 = !DILocation(line: 89, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 89, column: 10)
!139 = !DILocation(line: 89, column: 12, scope: !138)
!140 = !DILocation(line: 89, column: 10, scope: !135)
!141 = !DILocation(line: 90, column: 7, scope: !138)
!142 = !DILocation(line: 92, column: 12, scope: !135)
!143 = !DILocation(line: 94, column: 5, scope: !135)
!144 = !DILocation(line: 95, column: 15, scope: !65)
!145 = !DILocation(line: 95, column: 20, scope: !65)
!146 = !DILocation(line: 95, column: 17, scope: !65)
!147 = !DILocation(line: 95, column: 22, scope: !65)
!148 = !DILocation(line: 95, column: 25, scope: !65)
!149 = !DILocation(line: 95, column: 30, scope: !65)
!150 = !DILocation(line: 95, column: 27, scope: !65)
!151 = !DILocation(line: 0, scope: !65)
!152 = !DILocation(line: 95, column: 11, scope: !65)
!153 = !DILocation(line: 96, column: 4, scope: !59)
!154 = !DILocation(line: 96, column: 4, scope: !65)
!155 = !DILocation(line: 96, column: 24, scope: !59)
!156 = !DILocation(line: 96, column: 18, scope: !59)
!157 = !DILocation(line: 96, column: 16, scope: !59)
!158 = !DILocation(line: 96, column: 13, scope: !59)
!159 = !DILocation(line: 96, column: 28, scope: !59)
!160 = distinct !{!160, !118, !161, !162, !163}
!161 = !DILocation(line: 96, column: 34, scope: !59)
!162 = !{!"llvm.loop.mustprogress"}
!163 = !{!"llvm.loop.unroll.disable"}
!164 = !DILocation(line: 98, column: 8, scope: !165)
!165 = distinct !DILexicalBlock(scope: !59, file: !3, line: 98, column: 8)
!166 = !DILocation(line: 98, column: 17, scope: !165)
!167 = !DILocation(line: 98, column: 14, scope: !165)
!168 = !DILocation(line: 98, column: 8, scope: !59)
!169 = !DILocation(line: 99, column: 5, scope: !165)
!170 = !DILocation(line: 100, column: 10, scope: !59)
!171 = !DILocation(line: 100, column: 8, scope: !59)
!172 = !DILocation(line: 101, column: 4, scope: !60)
!173 = !DILocation(line: 102, column: 4, scope: !60)
!174 = !DILocation(line: 104, column: 12, scope: !60)
!175 = !DILocation(line: 104, column: 8, scope: !60)
!176 = !DILocation(line: 104, column: 6, scope: !60)
!177 = !DILocation(line: 104, column: 4, scope: !60)
!178 = !DILocation(line: 107, column: 1, scope: !60)
!179 = !DILocation(line: 108, column: 8, scope: !180)
!180 = distinct !DILexicalBlock(scope: !60, file: !3, line: 108, column: 8)
!181 = !DILocation(line: 108, column: 13, scope: !180)
!182 = !DILocation(line: 108, column: 10, scope: !180)
!183 = !DILocation(line: 108, column: 8, scope: !60)
!184 = !DILocation(line: 109, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 109, column: 9)
!186 = distinct !DILexicalBlock(scope: !180, file: !3, line: 108, column: 16)
!187 = !DILocation(line: 109, column: 11, scope: !185)
!188 = !DILocation(line: 109, column: 9, scope: !186)
!189 = !DILocation(line: 110, column: 6, scope: !185)
!190 = !DILocation(line: 111, column: 5, scope: !186)
!191 = !DILocation(line: 113, column: 1, scope: !60)
!192 = !DILocation(line: 114, column: 8, scope: !193)
!193 = distinct !DILexicalBlock(scope: !60, file: !3, line: 114, column: 8)
!194 = !DILocation(line: 114, column: 10, scope: !193)
!195 = !DILocation(line: 114, column: 18, scope: !193)
!196 = !DILocation(line: 114, column: 22, scope: !193)
!197 = !DILocation(line: 114, column: 8, scope: !60)
!198 = !DILocation(line: 115, column: 5, scope: !193)
!199 = !DILocation(line: 117, column: 10, scope: !60)
!200 = !DILocation(line: 117, column: 8, scope: !60)
!201 = !DILocation(line: 118, column: 10, scope: !60)
!202 = !DILocation(line: 118, column: 8, scope: !60)
!203 = !DILocation(line: 119, column: 4, scope: !60)
!204 = !DILocation(line: 121, column: 2, scope: !54)
!205 = !DILocation(line: 55, column: 2, scope: !54)
!206 = distinct !{!206, !207, !208, !163}
!207 = !DILocation(line: 55, column: 2, scope: !55)
!208 = !DILocation(line: 121, column: 2, scope: !55)
!209 = !DILocation(line: 122, column: 1, scope: !40)
