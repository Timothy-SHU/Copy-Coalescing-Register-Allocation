; ModuleID = 'arch/x86/kernel/tracepoint.c'
source_filename = "arch/x86/kernel/tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }

@trace_pagefault_key = hidden global %struct.static_key_false zeroinitializer, align 8, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @trace_pagefault_reg() #0 align 16 !dbg !47 {
entry:
  %call = call zeroext i1 @static_key_slow_inc(ptr noundef @trace_pagefault_key) #2, !dbg !50
  ret i32 0, !dbg !51
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !52 dso_local zeroext i1 @static_key_slow_inc(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_pagefault_unreg() #0 align 16 !dbg !58 {
entry:
  call void @static_key_slow_dec(ptr noundef @trace_pagefault_key) #2, !dbg !61
  ret void, !dbg !62
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !63 dso_local void @static_key_slow_dec(ptr noundef) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "trace_pagefault_key", scope: !2, file: !3, line: 10, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.tracepoint.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/tracepoint\22 -D KBUILD_BASENAME=\22tracepoint\22 -D KBUILD_MODNAME=\22tracepoint\22 -D __KBUILD_MODNAME=kmod_tracepoint -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/tracepoint.ll arch/x86/kernel/tracepoint.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/tracepoint.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "840c86d8a8b649419e31c1ab39b33b5c")
!4 = !{!0}
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !6, line: 363, size: 128, elements: !7)
!6 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5, file: !6, line: 364, baseType: !9, size: 128)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !6, line: 85, size: 128, elements: !10)
!10 = !{!11, !18}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !9, file: !6, line: 86, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !13, line: 174, baseType: !14)
!13 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 172, size: 32, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !14, file: !13, line: 173, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, scope: !9, file: !6, line: 101, baseType: !19, size: 64, offset: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !9, file: !6, line: 101, size: 64, elements: !20)
!20 = !{!21, !23, !35}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !19, file: !6, line: 102, baseType: !22, size: 64)
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !19, file: !6, line: 103, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !6, line: 117, size: 128, elements: !26)
!26 = !{!27, !32, !33}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !25, file: !6, line: 118, baseType: !28, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !29, line: 20, baseType: !30)
!29 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !31, line: 26, baseType: !17)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!32 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !25, file: !6, line: 119, baseType: !28, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !25, file: !6, line: 120, baseType: !34, size: 64, offset: 64)
!34 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !19, file: !6, line: 104, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !6, line: 104, flags: DIFlagFwdDecl)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 8, !"cf-protection-branch", i32 1}
!42 = !{i32 4, !"function_return_thunk_extern", i32 1}
!43 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!44 = !{i32 1, !"Code Model", i32 2}
!45 = !{i32 1, !"override-stack-alignment", i32 8}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = distinct !DISubprogram(name: "trace_pagefault_reg", scope: !3, file: !3, line: 12, type: !48, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{!17}
!50 = !DILocation(line: 14, column: 2, scope: !47)
!51 = !DILocation(line: 15, column: 2, scope: !47)
!52 = !DISubprogram(name: "static_key_slow_inc", scope: !6, file: !6, line: 227, type: !53, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !13, line: 35, baseType: !56)
!56 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!58 = distinct !DISubprogram(name: "trace_pagefault_unreg", scope: !3, file: !3, line: 18, type: !59, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocation(line: 20, column: 2, scope: !58)
!62 = !DILocation(line: 21, column: 1, scope: !58)
!63 = !DISubprogram(name: "static_key_slow_dec", scope: !6, file: !6, line: 229, type: !64, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !57}
