; ModuleID = 'lib/math/rational.c'
source_filename = "lib/math/rational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rational_best_approximation: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rational_best_approximation ; .previous"

@__UNIQUE_ID___addressable_rational_best_approximation197 = internal global ptr @rational_best_approximation, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID_file198 = internal constant [32 x i8] c"rational.file=lib/math/rational\00", section ".modinfo", align 1, !dbg !7
@__UNIQUE_ID_license199 = internal constant [24 x i8] c"rational.license=GPL v2\00", section ".modinfo", align 1, !dbg !14
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_rational_best_approximation197, ptr @__UNIQUE_ID_file198, ptr @__UNIQUE_ID_license199], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rational_best_approximation(i64 noundef %given_numerator, i64 noundef %given_denominator, i64 noundef %max_numerator, i64 noundef %max_denominator, ptr noundef %best_numerator, ptr noundef %best_denominator) #0 align 16 !dbg !28 {
entry:
  %given_numerator.addr = alloca i64, align 8
  %given_denominator.addr = alloca i64, align 8
  %max_numerator.addr = alloca i64, align 8
  %max_denominator.addr = alloca i64, align 8
  %best_numerator.addr = alloca ptr, align 8
  %best_denominator.addr = alloca ptr, align 8
  %n = alloca i64, align 8
  %d = alloca i64, align 8
  %n0 = alloca i64, align 8
  %d0 = alloca i64, align 8
  %n1 = alloca i64, align 8
  %d1 = alloca i64, align 8
  %n2 = alloca i64, align 8
  %d2 = alloca i64, align 8
  %dp = alloca i64, align 8
  %a = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %t = alloca i64, align 8
  %__UNIQUE_ID___x195 = alloca i64, align 8
  %__UNIQUE_ID___y196 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %given_numerator, ptr %given_numerator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %given_numerator.addr, metadata !34, metadata !DIExpression()), !dbg !60
  store i64 %given_denominator, ptr %given_denominator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %given_denominator.addr, metadata !35, metadata !DIExpression()), !dbg !61
  store i64 %max_numerator, ptr %max_numerator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_numerator.addr, metadata !36, metadata !DIExpression()), !dbg !62
  store i64 %max_denominator, ptr %max_denominator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max_denominator.addr, metadata !37, metadata !DIExpression()), !dbg !63
  store ptr %best_numerator, ptr %best_numerator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %best_numerator.addr, metadata !38, metadata !DIExpression()), !dbg !64
  store ptr %best_denominator, ptr %best_denominator.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %best_denominator.addr, metadata !39, metadata !DIExpression()), !dbg !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #3, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %n, metadata !40, metadata !DIExpression()), !dbg !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #3, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %d, metadata !41, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %n0) #3, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %n0, metadata !42, metadata !DIExpression()), !dbg !69
  call void @llvm.lifetime.start.p0(i64 8, ptr %d0) #3, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %d0, metadata !43, metadata !DIExpression()), !dbg !70
  call void @llvm.lifetime.start.p0(i64 8, ptr %n1) #3, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %n1, metadata !44, metadata !DIExpression()), !dbg !71
  call void @llvm.lifetime.start.p0(i64 8, ptr %d1) #3, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %d1, metadata !45, metadata !DIExpression()), !dbg !72
  call void @llvm.lifetime.start.p0(i64 8, ptr %n2) #3, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %n2, metadata !46, metadata !DIExpression()), !dbg !73
  call void @llvm.lifetime.start.p0(i64 8, ptr %d2) #3, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %d2, metadata !47, metadata !DIExpression()), !dbg !74
  %0 = load i64, ptr %given_numerator.addr, align 8, !dbg !75
  store i64 %0, ptr %n, align 8, !dbg !76
  %1 = load i64, ptr %given_denominator.addr, align 8, !dbg !77
  store i64 %1, ptr %d, align 8, !dbg !78
  store i64 0, ptr %d1, align 8, !dbg !79
  store i64 0, ptr %n0, align 8, !dbg !80
  store i64 1, ptr %d0, align 8, !dbg !81
  store i64 1, ptr %n1, align 8, !dbg !82
  br label %for.cond, !dbg !83

for.cond:                                         ; preds = %cleanup.cont, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %dp) #3, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %dp, metadata !48, metadata !DIExpression()), !dbg !85
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #3, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %a, metadata !52, metadata !DIExpression()), !dbg !86
  %2 = load i64, ptr %d, align 8, !dbg !87
  %cmp = icmp eq i64 %2, 0, !dbg !89
  br i1 %cmp, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !91

if.end:                                           ; preds = %for.cond
  %3 = load i64, ptr %d, align 8, !dbg !92
  store i64 %3, ptr %dp, align 8, !dbg !93
  %4 = load i64, ptr %n, align 8, !dbg !94
  %5 = load i64, ptr %d, align 8, !dbg !95
  %div = udiv i64 %4, %5, !dbg !96
  store i64 %div, ptr %a, align 8, !dbg !97
  %6 = load i64, ptr %n, align 8, !dbg !98
  %7 = load i64, ptr %d, align 8, !dbg !99
  %rem = urem i64 %6, %7, !dbg !100
  store i64 %rem, ptr %d, align 8, !dbg !101
  %8 = load i64, ptr %dp, align 8, !dbg !102
  store i64 %8, ptr %n, align 8, !dbg !103
  %9 = load i64, ptr %n0, align 8, !dbg !104
  %10 = load i64, ptr %a, align 8, !dbg !105
  %11 = load i64, ptr %n1, align 8, !dbg !106
  %mul = mul i64 %10, %11, !dbg !107
  %add = add i64 %9, %mul, !dbg !108
  store i64 %add, ptr %n2, align 8, !dbg !109
  %12 = load i64, ptr %d0, align 8, !dbg !110
  %13 = load i64, ptr %a, align 8, !dbg !111
  %14 = load i64, ptr %d1, align 8, !dbg !112
  %mul1 = mul i64 %13, %14, !dbg !113
  %add2 = add i64 %12, %mul1, !dbg !114
  store i64 %add2, ptr %d2, align 8, !dbg !115
  %15 = load i64, ptr %n2, align 8, !dbg !116
  %16 = load i64, ptr %max_numerator.addr, align 8, !dbg !117
  %cmp3 = icmp ugt i64 %15, %16, !dbg !118
  br i1 %cmp3, label %if.then5, label %lor.lhs.false, !dbg !119

lor.lhs.false:                                    ; preds = %if.end
  %17 = load i64, ptr %d2, align 8, !dbg !120
  %18 = load i64, ptr %max_denominator.addr, align 8, !dbg !121
  %cmp4 = icmp ugt i64 %17, %18, !dbg !122
  br i1 %cmp4, label %if.then5, label %if.end31, !dbg !123

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #3, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %t, metadata !53, metadata !DIExpression()), !dbg !125
  store i64 -1, ptr %t, align 8, !dbg !125
  %19 = load i64, ptr %d1, align 8, !dbg !126
  %tobool = icmp ne i64 %19, 0, !dbg !126
  br i1 %tobool, label %if.then6, label %if.end8, !dbg !128

if.then6:                                         ; preds = %if.then5
  %20 = load i64, ptr %max_denominator.addr, align 8, !dbg !129
  %21 = load i64, ptr %d0, align 8, !dbg !130
  %sub = sub i64 %20, %21, !dbg !131
  %22 = load i64, ptr %d1, align 8, !dbg !132
  %div7 = udiv i64 %sub, %22, !dbg !133
  store i64 %div7, ptr %t, align 8, !dbg !134
  br label %if.end8, !dbg !135

if.end8:                                          ; preds = %if.then6, %if.then5
  %23 = load i64, ptr %n1, align 8, !dbg !136
  %tobool9 = icmp ne i64 %23, 0, !dbg !136
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !137

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x195) #3, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x195, metadata !56, metadata !DIExpression()), !dbg !138
  %24 = load i64, ptr %t, align 8, !dbg !138
  store i64 %24, ptr %__UNIQUE_ID___x195, align 8, !dbg !138
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y196) #3, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y196, metadata !59, metadata !DIExpression()), !dbg !138
  %25 = load i64, ptr %max_numerator.addr, align 8, !dbg !138
  %26 = load i64, ptr %n0, align 8, !dbg !138
  %sub11 = sub i64 %25, %26, !dbg !138
  %27 = load i64, ptr %n1, align 8, !dbg !138
  %div12 = udiv i64 %sub11, %27, !dbg !138
  store i64 %div12, ptr %__UNIQUE_ID___y196, align 8, !dbg !138
  %28 = load i64, ptr %__UNIQUE_ID___x195, align 8, !dbg !138
  %29 = load i64, ptr %__UNIQUE_ID___y196, align 8, !dbg !138
  %cmp13 = icmp ult i64 %28, %29, !dbg !138
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !138

cond.true:                                        ; preds = %if.then10
  %30 = load i64, ptr %__UNIQUE_ID___x195, align 8, !dbg !138
  br label %cond.end, !dbg !138

cond.false:                                       ; preds = %if.then10
  %31 = load i64, ptr %__UNIQUE_ID___y196, align 8, !dbg !138
  br label %cond.end, !dbg !138

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %30, %cond.true ], [ %31, %cond.false ], !dbg !138
  store i64 %cond, ptr %tmp, align 8, !dbg !138
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y196) #3, !dbg !139
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x195) #3, !dbg !139
  %32 = load i64, ptr %tmp, align 8, !dbg !138
  store i64 %32, ptr %t, align 8, !dbg !140
  br label %if.end14, !dbg !141

if.end14:                                         ; preds = %cond.end, %if.end8
  %33 = load i64, ptr %d1, align 8, !dbg !142
  %tobool15 = icmp ne i64 %33, 0, !dbg !142
  br i1 %tobool15, label %lor.lhs.false16, label %if.then25, !dbg !144

lor.lhs.false16:                                  ; preds = %if.end14
  %34 = load i64, ptr %t, align 8, !dbg !145
  %mul17 = mul i64 2, %34, !dbg !146
  %35 = load i64, ptr %a, align 8, !dbg !147
  %cmp18 = icmp ugt i64 %mul17, %35, !dbg !148
  br i1 %cmp18, label %if.then25, label %lor.lhs.false19, !dbg !149

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %36 = load i64, ptr %t, align 8, !dbg !150
  %mul20 = mul i64 2, %36, !dbg !151
  %37 = load i64, ptr %a, align 8, !dbg !152
  %cmp21 = icmp eq i64 %mul20, %37, !dbg !153
  br i1 %cmp21, label %land.lhs.true, label %if.end30, !dbg !154

land.lhs.true:                                    ; preds = %lor.lhs.false19
  %38 = load i64, ptr %d0, align 8, !dbg !155
  %39 = load i64, ptr %dp, align 8, !dbg !156
  %mul22 = mul i64 %38, %39, !dbg !157
  %40 = load i64, ptr %d1, align 8, !dbg !158
  %41 = load i64, ptr %d, align 8, !dbg !159
  %mul23 = mul i64 %40, %41, !dbg !160
  %cmp24 = icmp ugt i64 %mul22, %mul23, !dbg !161
  br i1 %cmp24, label %if.then25, label %if.end30, !dbg !162

if.then25:                                        ; preds = %land.lhs.true, %lor.lhs.false16, %if.end14
  %42 = load i64, ptr %n0, align 8, !dbg !163
  %43 = load i64, ptr %t, align 8, !dbg !165
  %44 = load i64, ptr %n1, align 8, !dbg !166
  %mul26 = mul i64 %43, %44, !dbg !167
  %add27 = add i64 %42, %mul26, !dbg !168
  store i64 %add27, ptr %n1, align 8, !dbg !169
  %45 = load i64, ptr %d0, align 8, !dbg !170
  %46 = load i64, ptr %t, align 8, !dbg !171
  %47 = load i64, ptr %d1, align 8, !dbg !172
  %mul28 = mul i64 %46, %47, !dbg !173
  %add29 = add i64 %45, %mul28, !dbg !174
  store i64 %add29, ptr %d1, align 8, !dbg !175
  br label %if.end30, !dbg !176

if.end30:                                         ; preds = %if.then25, %land.lhs.true, %lor.lhs.false19
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #3, !dbg !177
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false
  %48 = load i64, ptr %n1, align 8, !dbg !178
  store i64 %48, ptr %n0, align 8, !dbg !179
  %49 = load i64, ptr %n2, align 8, !dbg !180
  store i64 %49, ptr %n1, align 8, !dbg !181
  %50 = load i64, ptr %d1, align 8, !dbg !182
  store i64 %50, ptr %d0, align 8, !dbg !183
  %51 = load i64, ptr %d2, align 8, !dbg !184
  store i64 %51, ptr %d1, align 8, !dbg !185
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !186
  br label %cleanup, !dbg !186

cleanup:                                          ; preds = %if.end31, %if.end30, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #3, !dbg !186
  call void @llvm.lifetime.end.p0(i64 8, ptr %dp) #3, !dbg !186
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !187, !llvm.loop !188

for.end:                                          ; preds = %cleanup
  %52 = load i64, ptr %n1, align 8, !dbg !192
  %53 = load ptr, ptr %best_numerator.addr, align 8, !dbg !193
  store i64 %52, ptr %53, align 8, !dbg !194
  %54 = load i64, ptr %d1, align 8, !dbg !195
  %55 = load ptr, ptr %best_denominator.addr, align 8, !dbg !196
  store i64 %54, ptr %55, align 8, !dbg !197
  call void @llvm.lifetime.end.p0(i64 8, ptr %d2) #3, !dbg !198
  call void @llvm.lifetime.end.p0(i64 8, ptr %n2) #3, !dbg !198
  call void @llvm.lifetime.end.p0(i64 8, ptr %d1) #3, !dbg !198
  call void @llvm.lifetime.end.p0(i64 8, ptr %n1) #3, !dbg !198
  call void @llvm.lifetime.end.p0(i64 8, ptr %d0) #3, !dbg !198
  call void @llvm.lifetime.end.p0(i64 8, ptr %n0) #3, !dbg !198
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #3, !dbg !198
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #3, !dbg !198
  ret void, !dbg !198

unreachable:                                      ; preds = %cleanup
  unreachable
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
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rational_best_approximation197", scope: !2, file: !3, line: 109, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/math/.rational.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/math/rational\22 -D KBUILD_BASENAME=\22rational\22 -D KBUILD_MODNAME=\22rational\22 -D __KBUILD_MODNAME=kmod_rational -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/math/rational.ll lib/math/rational.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/math/rational.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "edd66ba46ccb0e689f272cc4d6b336f2")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !14}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file198", scope: !2, file: !3, line: 111, type: !9, isLocal: true, isDefinition: true, align: 8)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !12)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{!13}
!13 = !DISubrange(count: 32)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license199", scope: !2, file: !3, line: 111, type: !16, isLocal: true, isDefinition: true, align: 8)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 24)
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 8, !"cf-protection-branch", i32 1}
!23 = !{i32 4, !"function_return_thunk_extern", i32 1}
!24 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!25 = !{i32 1, !"Code Model", i32 2}
!26 = !{i32 1, !"override-stack-alignment", i32 8}
!27 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!28 = distinct !DISubprogram(name: "rational_best_approximation", scope: !3, file: !3, line: 35, type: !29, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !31, !31, !32, !32}
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !52, !53, !56, !59}
!34 = !DILocalVariable(name: "given_numerator", arg: 1, scope: !28, file: !3, line: 36, type: !31)
!35 = !DILocalVariable(name: "given_denominator", arg: 2, scope: !28, file: !3, line: 36, type: !31)
!36 = !DILocalVariable(name: "max_numerator", arg: 3, scope: !28, file: !3, line: 37, type: !31)
!37 = !DILocalVariable(name: "max_denominator", arg: 4, scope: !28, file: !3, line: 37, type: !31)
!38 = !DILocalVariable(name: "best_numerator", arg: 5, scope: !28, file: !3, line: 38, type: !32)
!39 = !DILocalVariable(name: "best_denominator", arg: 6, scope: !28, file: !3, line: 38, type: !32)
!40 = !DILocalVariable(name: "n", scope: !28, file: !3, line: 51, type: !31)
!41 = !DILocalVariable(name: "d", scope: !28, file: !3, line: 51, type: !31)
!42 = !DILocalVariable(name: "n0", scope: !28, file: !3, line: 51, type: !31)
!43 = !DILocalVariable(name: "d0", scope: !28, file: !3, line: 51, type: !31)
!44 = !DILocalVariable(name: "n1", scope: !28, file: !3, line: 51, type: !31)
!45 = !DILocalVariable(name: "d1", scope: !28, file: !3, line: 51, type: !31)
!46 = !DILocalVariable(name: "n2", scope: !28, file: !3, line: 51, type: !31)
!47 = !DILocalVariable(name: "d2", scope: !28, file: !3, line: 51, type: !31)
!48 = !DILocalVariable(name: "dp", scope: !49, file: !3, line: 58, type: !31)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 57, column: 11)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 57, column: 2)
!51 = distinct !DILexicalBlock(scope: !28, file: !3, line: 57, column: 2)
!52 = !DILocalVariable(name: "a", scope: !49, file: !3, line: 58, type: !31)
!53 = !DILocalVariable(name: "t", scope: !54, file: !3, line: 83, type: !31)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 82, column: 55)
!55 = distinct !DILexicalBlock(scope: !49, file: !3, line: 82, column: 7)
!56 = !DILocalVariable(name: "__UNIQUE_ID___x195", scope: !57, file: !3, line: 88, type: !31)
!57 = distinct !DILexicalBlock(scope: !58, file: !3, line: 88, column: 9)
!58 = distinct !DILexicalBlock(scope: !54, file: !3, line: 87, column: 8)
!59 = !DILocalVariable(name: "__UNIQUE_ID___y196", scope: !57, file: !3, line: 88, type: !31)
!60 = !DILocation(line: 36, column: 16, scope: !28)
!61 = !DILocation(line: 36, column: 47, scope: !28)
!62 = !DILocation(line: 37, column: 16, scope: !28)
!63 = !DILocation(line: 37, column: 45, scope: !28)
!64 = !DILocation(line: 38, column: 17, scope: !28)
!65 = !DILocation(line: 38, column: 48, scope: !28)
!66 = !DILocation(line: 51, column: 2, scope: !28)
!67 = !DILocation(line: 51, column: 16, scope: !28)
!68 = !DILocation(line: 51, column: 19, scope: !28)
!69 = !DILocation(line: 51, column: 22, scope: !28)
!70 = !DILocation(line: 51, column: 26, scope: !28)
!71 = !DILocation(line: 51, column: 30, scope: !28)
!72 = !DILocation(line: 51, column: 34, scope: !28)
!73 = !DILocation(line: 51, column: 38, scope: !28)
!74 = !DILocation(line: 51, column: 42, scope: !28)
!75 = !DILocation(line: 52, column: 6, scope: !28)
!76 = !DILocation(line: 52, column: 4, scope: !28)
!77 = !DILocation(line: 53, column: 6, scope: !28)
!78 = !DILocation(line: 53, column: 4, scope: !28)
!79 = !DILocation(line: 54, column: 10, scope: !28)
!80 = !DILocation(line: 54, column: 5, scope: !28)
!81 = !DILocation(line: 55, column: 10, scope: !28)
!82 = !DILocation(line: 55, column: 5, scope: !28)
!83 = !DILocation(line: 57, column: 2, scope: !28)
!84 = !DILocation(line: 58, column: 3, scope: !49)
!85 = !DILocation(line: 58, column: 17, scope: !49)
!86 = !DILocation(line: 58, column: 21, scope: !49)
!87 = !DILocation(line: 60, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !49, file: !3, line: 60, column: 7)
!89 = !DILocation(line: 60, column: 9, scope: !88)
!90 = !DILocation(line: 60, column: 7, scope: !49)
!91 = !DILocation(line: 61, column: 4, scope: !88)
!92 = !DILocation(line: 65, column: 8, scope: !49)
!93 = !DILocation(line: 65, column: 6, scope: !49)
!94 = !DILocation(line: 66, column: 7, scope: !49)
!95 = !DILocation(line: 66, column: 11, scope: !49)
!96 = !DILocation(line: 66, column: 9, scope: !49)
!97 = !DILocation(line: 66, column: 5, scope: !49)
!98 = !DILocation(line: 67, column: 7, scope: !49)
!99 = !DILocation(line: 67, column: 11, scope: !49)
!100 = !DILocation(line: 67, column: 9, scope: !49)
!101 = !DILocation(line: 67, column: 5, scope: !49)
!102 = !DILocation(line: 68, column: 7, scope: !49)
!103 = !DILocation(line: 68, column: 5, scope: !49)
!104 = !DILocation(line: 74, column: 8, scope: !49)
!105 = !DILocation(line: 74, column: 13, scope: !49)
!106 = !DILocation(line: 74, column: 17, scope: !49)
!107 = !DILocation(line: 74, column: 15, scope: !49)
!108 = !DILocation(line: 74, column: 11, scope: !49)
!109 = !DILocation(line: 74, column: 6, scope: !49)
!110 = !DILocation(line: 75, column: 8, scope: !49)
!111 = !DILocation(line: 75, column: 13, scope: !49)
!112 = !DILocation(line: 75, column: 17, scope: !49)
!113 = !DILocation(line: 75, column: 15, scope: !49)
!114 = !DILocation(line: 75, column: 11, scope: !49)
!115 = !DILocation(line: 75, column: 6, scope: !49)
!116 = !DILocation(line: 82, column: 8, scope: !55)
!117 = !DILocation(line: 82, column: 13, scope: !55)
!118 = !DILocation(line: 82, column: 11, scope: !55)
!119 = !DILocation(line: 82, column: 28, scope: !55)
!120 = !DILocation(line: 82, column: 32, scope: !55)
!121 = !DILocation(line: 82, column: 37, scope: !55)
!122 = !DILocation(line: 82, column: 35, scope: !55)
!123 = !DILocation(line: 82, column: 7, scope: !49)
!124 = !DILocation(line: 83, column: 4, scope: !54)
!125 = !DILocation(line: 83, column: 18, scope: !54)
!126 = !DILocation(line: 85, column: 8, scope: !127)
!127 = distinct !DILexicalBlock(scope: !54, file: !3, line: 85, column: 8)
!128 = !DILocation(line: 85, column: 8, scope: !54)
!129 = !DILocation(line: 86, column: 10, scope: !127)
!130 = !DILocation(line: 86, column: 28, scope: !127)
!131 = !DILocation(line: 86, column: 26, scope: !127)
!132 = !DILocation(line: 86, column: 34, scope: !127)
!133 = !DILocation(line: 86, column: 32, scope: !127)
!134 = !DILocation(line: 86, column: 7, scope: !127)
!135 = !DILocation(line: 86, column: 5, scope: !127)
!136 = !DILocation(line: 87, column: 8, scope: !58)
!137 = !DILocation(line: 87, column: 8, scope: !54)
!138 = !DILocation(line: 88, column: 9, scope: !57)
!139 = !DILocation(line: 88, column: 9, scope: !58)
!140 = !DILocation(line: 88, column: 7, scope: !58)
!141 = !DILocation(line: 88, column: 5, scope: !58)
!142 = !DILocation(line: 94, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !54, file: !3, line: 94, column: 8)
!144 = !DILocation(line: 94, column: 12, scope: !143)
!145 = !DILocation(line: 94, column: 20, scope: !143)
!146 = !DILocation(line: 94, column: 18, scope: !143)
!147 = !DILocation(line: 94, column: 24, scope: !143)
!148 = !DILocation(line: 94, column: 22, scope: !143)
!149 = !DILocation(line: 94, column: 26, scope: !143)
!150 = !DILocation(line: 94, column: 35, scope: !143)
!151 = !DILocation(line: 94, column: 33, scope: !143)
!152 = !DILocation(line: 94, column: 40, scope: !143)
!153 = !DILocation(line: 94, column: 37, scope: !143)
!154 = !DILocation(line: 94, column: 42, scope: !143)
!155 = !DILocation(line: 94, column: 45, scope: !143)
!156 = !DILocation(line: 94, column: 50, scope: !143)
!157 = !DILocation(line: 94, column: 48, scope: !143)
!158 = !DILocation(line: 94, column: 55, scope: !143)
!159 = !DILocation(line: 94, column: 60, scope: !143)
!160 = !DILocation(line: 94, column: 58, scope: !143)
!161 = !DILocation(line: 94, column: 53, scope: !143)
!162 = !DILocation(line: 94, column: 8, scope: !54)
!163 = !DILocation(line: 95, column: 10, scope: !164)
!164 = distinct !DILexicalBlock(scope: !143, file: !3, line: 94, column: 64)
!165 = !DILocation(line: 95, column: 15, scope: !164)
!166 = !DILocation(line: 95, column: 19, scope: !164)
!167 = !DILocation(line: 95, column: 17, scope: !164)
!168 = !DILocation(line: 95, column: 13, scope: !164)
!169 = !DILocation(line: 95, column: 8, scope: !164)
!170 = !DILocation(line: 96, column: 10, scope: !164)
!171 = !DILocation(line: 96, column: 15, scope: !164)
!172 = !DILocation(line: 96, column: 19, scope: !164)
!173 = !DILocation(line: 96, column: 17, scope: !164)
!174 = !DILocation(line: 96, column: 13, scope: !164)
!175 = !DILocation(line: 96, column: 8, scope: !164)
!176 = !DILocation(line: 97, column: 4, scope: !164)
!177 = !DILocation(line: 99, column: 3, scope: !55)
!178 = !DILocation(line: 100, column: 8, scope: !49)
!179 = !DILocation(line: 100, column: 6, scope: !49)
!180 = !DILocation(line: 101, column: 8, scope: !49)
!181 = !DILocation(line: 101, column: 6, scope: !49)
!182 = !DILocation(line: 102, column: 8, scope: !49)
!183 = !DILocation(line: 102, column: 6, scope: !49)
!184 = !DILocation(line: 103, column: 8, scope: !49)
!185 = !DILocation(line: 103, column: 6, scope: !49)
!186 = !DILocation(line: 104, column: 2, scope: !50)
!187 = !DILocation(line: 57, column: 2, scope: !50)
!188 = distinct !{!188, !189, !190, !191}
!189 = !DILocation(line: 57, column: 2, scope: !51)
!190 = !DILocation(line: 104, column: 2, scope: !51)
!191 = !{!"llvm.loop.unroll.disable"}
!192 = !DILocation(line: 105, column: 20, scope: !28)
!193 = !DILocation(line: 105, column: 3, scope: !28)
!194 = !DILocation(line: 105, column: 18, scope: !28)
!195 = !DILocation(line: 106, column: 22, scope: !28)
!196 = !DILocation(line: 106, column: 3, scope: !28)
!197 = !DILocation(line: 106, column: 20, scope: !28)
!198 = !DILocation(line: 107, column: 1, scope: !28)
