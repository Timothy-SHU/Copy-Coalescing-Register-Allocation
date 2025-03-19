; ModuleID = 'lib/math/int_pow.c'
source_filename = "lib/math/int_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_int_pow: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad int_pow ; .previous"

@__UNIQUE_ID___addressable_int_pow0 = internal global ptr @int_pow, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_int_pow0], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @int_pow(i64 noundef %base, i32 noundef %exp) #0 align 16 !dbg !16 {
entry:
  %base.addr = alloca i64, align 8
  %exp.addr = alloca i32, align 4
  %result = alloca i64, align 8
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !26, metadata !DIExpression()), !dbg !29
  store i32 %exp, ptr %exp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %exp.addr, metadata !27, metadata !DIExpression()), !dbg !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #3, !dbg !31
  call void @llvm.dbg.declare(metadata ptr %result, metadata !28, metadata !DIExpression()), !dbg !32
  store i64 1, ptr %result, align 8, !dbg !32
  br label %while.cond, !dbg !33

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %exp.addr, align 4, !dbg !34
  %tobool = icmp ne i32 %0, 0, !dbg !33
  br i1 %tobool, label %while.body, label %while.end, !dbg !33

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %exp.addr, align 4, !dbg !35
  %and = and i32 %1, 1, !dbg !38
  %tobool1 = icmp ne i32 %and, 0, !dbg !38
  br i1 %tobool1, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %while.body
  %2 = load i64, ptr %base.addr, align 8, !dbg !40
  %3 = load i64, ptr %result, align 8, !dbg !41
  %mul = mul i64 %3, %2, !dbg !41
  store i64 %mul, ptr %result, align 8, !dbg !41
  br label %if.end, !dbg !42

if.end:                                           ; preds = %if.then, %while.body
  %4 = load i32, ptr %exp.addr, align 4, !dbg !43
  %shr = lshr i32 %4, 1, !dbg !43
  store i32 %shr, ptr %exp.addr, align 4, !dbg !43
  %5 = load i64, ptr %base.addr, align 8, !dbg !44
  %6 = load i64, ptr %base.addr, align 8, !dbg !45
  %mul2 = mul i64 %6, %5, !dbg !45
  store i64 %mul2, ptr %base.addr, align 8, !dbg !45
  br label %while.cond, !dbg !33, !llvm.loop !46

while.end:                                        ; preds = %while.cond
  %7 = load i64, ptr %result, align 8, !dbg !50
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #3, !dbg !51
  ret i64 %7, !dbg !52
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
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_int_pow0", scope: !2, file: !3, line: 32, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/math/.int_pow.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/math/int_pow\22 -D KBUILD_BASENAME=\22int_pow\22 -D KBUILD_MODNAME=\22int_pow\22 -D __KBUILD_MODNAME=kmod_int_pow -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/math/int_pow.ll lib/math/int_pow.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/math/int_pow.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61d38f4012a38611c0355144231663eb")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 8, !"cf-protection-branch", i32 1}
!11 = !{i32 4, !"function_return_thunk_extern", i32 1}
!12 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!13 = !{i32 1, !"Code Model", i32 2}
!14 = !{i32 1, !"override-stack-alignment", i32 8}
!15 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!16 = distinct !DISubprogram(name: "int_pow", scope: !3, file: !3, line: 19, type: !17, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19, !24}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !20, line: 23, baseType: !21)
!20 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !22, line: 31, baseType: !23)
!22 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!23 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26, !27, !28}
!26 = !DILocalVariable(name: "base", arg: 1, scope: !16, file: !3, line: 19, type: !19)
!27 = !DILocalVariable(name: "exp", arg: 2, scope: !16, file: !3, line: 19, type: !24)
!28 = !DILocalVariable(name: "result", scope: !16, file: !3, line: 21, type: !19)
!29 = !DILocation(line: 19, column: 17, scope: !16)
!30 = !DILocation(line: 19, column: 36, scope: !16)
!31 = !DILocation(line: 21, column: 2, scope: !16)
!32 = !DILocation(line: 21, column: 6, scope: !16)
!33 = !DILocation(line: 23, column: 2, scope: !16)
!34 = !DILocation(line: 23, column: 9, scope: !16)
!35 = !DILocation(line: 24, column: 7, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !3, line: 24, column: 7)
!37 = distinct !DILexicalBlock(scope: !16, file: !3, line: 23, column: 14)
!38 = !DILocation(line: 24, column: 11, scope: !36)
!39 = !DILocation(line: 24, column: 7, scope: !37)
!40 = !DILocation(line: 25, column: 14, scope: !36)
!41 = !DILocation(line: 25, column: 11, scope: !36)
!42 = !DILocation(line: 25, column: 4, scope: !36)
!43 = !DILocation(line: 26, column: 7, scope: !37)
!44 = !DILocation(line: 27, column: 11, scope: !37)
!45 = !DILocation(line: 27, column: 8, scope: !37)
!46 = distinct !{!46, !33, !47, !48, !49}
!47 = !DILocation(line: 28, column: 2, scope: !16)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !DILocation(line: 30, column: 9, scope: !16)
!51 = !DILocation(line: 31, column: 1, scope: !16)
!52 = !DILocation(line: 30, column: 2, scope: !16)
