; ModuleID = 'lib/bcd.c'
source_filename = "lib/bcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__bcd2bin: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _bcd2bin ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__bin2bcd: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _bin2bcd ; .previous"

@__UNIQUE_ID___addressable__bcd2bin0 = internal global ptr @_bcd2bin, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable__bin2bcd1 = internal global ptr @_bin2bcd, section ".discard.addressable", align 8, !dbg !7
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable__bcd2bin0, ptr @__UNIQUE_ID___addressable__bin2bcd1], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define hidden i32 @_bcd2bin(i8 noundef zeroext %val) #0 align 16 !dbg !18 {
entry:
  %val.addr = alloca i8, align 1
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load i8, ptr %val.addr, align 1, !dbg !26
  %conv = zext i8 %0 to i32, !dbg !26
  %and = and i32 %conv, 15, !dbg !27
  %1 = load i8, ptr %val.addr, align 1, !dbg !28
  %conv1 = zext i8 %1 to i32, !dbg !28
  %shr = ashr i32 %conv1, 4, !dbg !29
  %mul = mul i32 %shr, 10, !dbg !30
  %add = add i32 %and, %mul, !dbg !31
  ret i32 %add, !dbg !32
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define hidden zeroext i8 @_bin2bcd(i32 noundef %val) #0 align 16 !dbg !33 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !37, metadata !DIExpression()), !dbg !38
  %0 = load i32, ptr %val.addr, align 4, !dbg !39
  %div = udiv i32 %0, 10, !dbg !40
  %shl = shl i32 %div, 4, !dbg !41
  %1 = load i32, ptr %val.addr, align 4, !dbg !42
  %rem = urem i32 %1, 10, !dbg !43
  %add = add i32 %shl, %rem, !dbg !44
  %conv = trunc i32 %add to i8, !dbg !45
  ret i8 %conv, !dbg !46
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__bcd2bin0", scope: !2, file: !3, line: 9, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.bcd.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/bcd\22 -D KBUILD_BASENAME=\22bcd\22 -D KBUILD_MODNAME=\22bcd\22 -D __KBUILD_MODNAME=kmod_bcd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/bcd.ll lib/bcd.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/bcd.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3765e192c64edf4acb1131353f2c6277")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__bin2bcd1", scope: !2, file: !3, line: 15, type: !5, isLocal: true, isDefinition: true)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 8, !"cf-protection-branch", i32 1}
!13 = !{i32 4, !"function_return_thunk_extern", i32 1}
!14 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!15 = !{i32 1, !"Code Model", i32 2}
!16 = !{i32 1, !"override-stack-alignment", i32 8}
!17 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!18 = distinct !DISubprogram(name: "_bcd2bin", scope: !3, file: !3, line: 5, type: !19, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !22}
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24}
!24 = !DILocalVariable(name: "val", arg: 1, scope: !18, file: !3, line: 5, type: !22)
!25 = !DILocation(line: 5, column: 33, scope: !18)
!26 = !DILocation(line: 7, column: 10, scope: !18)
!27 = !DILocation(line: 7, column: 14, scope: !18)
!28 = !DILocation(line: 7, column: 25, scope: !18)
!29 = !DILocation(line: 7, column: 29, scope: !18)
!30 = !DILocation(line: 7, column: 35, scope: !18)
!31 = !DILocation(line: 7, column: 22, scope: !18)
!32 = !DILocation(line: 7, column: 2, scope: !18)
!33 = distinct !DISubprogram(name: "_bin2bcd", scope: !3, file: !3, line: 11, type: !34, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!22, !21}
!36 = !{!37}
!37 = !DILocalVariable(name: "val", arg: 1, scope: !33, file: !3, line: 11, type: !21)
!38 = !DILocation(line: 11, column: 33, scope: !33)
!39 = !DILocation(line: 13, column: 11, scope: !33)
!40 = !DILocation(line: 13, column: 15, scope: !33)
!41 = !DILocation(line: 13, column: 21, scope: !33)
!42 = !DILocation(line: 13, column: 29, scope: !33)
!43 = !DILocation(line: 13, column: 33, scope: !33)
!44 = !DILocation(line: 13, column: 27, scope: !33)
!45 = !DILocation(line: 13, column: 9, scope: !33)
!46 = !DILocation(line: 13, column: 2, scope: !33)
