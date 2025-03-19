; ModuleID = 'drivers/gpu/drm/i915/gt/gen6_renderstate.c'
source_filename = "drivers/gpu/drm/i915/gt/gen6_renderstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_renderstate_rodata = type { ptr, ptr, i32 }

@gen6_null_state_relocs = internal constant [6 x i32] [i32 32, i32 36, i32 44, i32 480, i32 484, i32 -1], align 16, !dbg !0
@gen6_null_state_batch = internal constant [275 x i32] [i32 1761869824, i32 2030895105, i32 0, i32 0, i32 2014838784, i32 1, i32 1627455496, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1627521024, i32 0, i32 2013593601, i32 24, i32 0, i32 2014121986, i32 0, i32 0, i32 1056, i32 2014642179, i32 0, i32 0, i32 0, i32 0, i32 2014314500, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2014707715, i32 0, i32 0, i32 0, i32 0, i32 2014380037, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2014445570, i32 0, i32 0, i32 0, i32 2014773251, i32 0, i32 0, i32 0, i32 0, i32 2030370821, i32 -536608768, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2031091712, i32 0, i32 2030043138, i32 -1, i32 0, i32 0, i32 2014183426, i32 1089, i32 1025, i32 1025, i32 2013401090, i32 0, i32 0, i32 1024, i32 2014511122, i32 4196368, i32 0, i32 536870912, i32 67108864, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2014576647, i32 640, i32 134742016, i32 0, i32 393216, i32 1309147138, i32 1049600, i32 0, i32 0, i32 2013855749, i32 33554432, i32 572653568, i32 49676288, i32 288555008, i32 42270724, i32 287440896, i32 2013335554, i32 0, i32 0, i32 512, i32 2013790211, i32 8192, i32 1096, i32 1096, i32 0, i32 83886080, i32 0, i32 0, i32 0, i32 0, i32 544, i32 576, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6291546, i32 541095870, i32 192, i32 9240640, i32 6291546, i32 543193022, i32 192, i32 9240704, i32 6291546, i32 545290174, i32 208, i32 9240640, i32 6291546, i32 547387326, i32 208, i32 9240704, i32 513, i32 537395297, i32 0, i32 0, i32 6291457, i32 538968098, i32 9240576, i32 0, i32 41943089, i32 566238409, i32 32, i32 176816129, i32 6291457, i32 541066174, i32 9241024, i32 0, i32 6291457, i32 543163326, i32 9241056, i32 0, i32 6291457, i32 545260478, i32 9241088, i32 0, i32 6291457, i32 547357630, i32 9241120, i32 0, i32 6291457, i32 549454782, i32 9241152, i32 0, i32 6291457, i32 551551934, i32 9241184, i32 0, i32 6291457, i32 553649086, i32 9241216, i32 0, i32 6291457, i32 555746238, i32 9241248, i32 0, i32 92274737, i32 603987144, i32 64, i32 -1878945792, i32 126, i32 0, i32 0, i32 0, i32 126, i32 0, i32 0, i32 0, i32 126, i32 0, i32 0, i32 0, i32 126, i32 0, i32 0, i32 0, i32 126, i32 0, i32 0, i32 0, i32 126, i32 0, i32 0, i32 0, i32 126, i32 0, i32 0, i32 0, i32 126, i32 0, i32 0, i32 0, i32 805306368, i32 292, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -107343092, i32 2040140556, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2147483599, i32 3, i32 0], align 16, !dbg !21
@gen6_null_state = hidden constant %struct.intel_renderstate_rodata { ptr @gen6_null_state_relocs, ptr @gen6_null_state_batch, i32 275 }, align 8, !dbg !5

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gen6_null_state_relocs", scope: !2, file: !3, line: 10, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/i915/gt/.gen6_renderstate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -Wall -Wextra -Wno-format-security -Wno-unused-parameter -Wno-type-limits -Wno-missing-field-initializers -Wno-sign-compare -Wno-shift-negative-value -Wunused-but-set-variable -Wno-frame-address -I ./drivers/gpu/drm/i915 -D KBUILD_MODFILE=\22drivers/gpu/drm/i915/i915\22 -D KBUILD_BASENAME=\22gen6_renderstate\22 -D KBUILD_MODNAME=\22i915\22 -D __KBUILD_MODNAME=kmod_i915 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/i915/gt/gen6_renderstate.ll drivers/gpu/drm/i915/gt/gen6_renderstate.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/i915/gt/gen6_renderstate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a459b033ef357d8911e600f8633db80a")
!4 = !{!5, !0, !21}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "gen6_null_state", scope: !2, file: !3, line: 297, type: !7, isLocal: false, isDefinition: true)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_renderstate_rodata", file: !9, line: 17, size: 192, elements: !10)
!9 = !DIFile(filename: "drivers/gpu/drm/i915/gt/intel_renderstate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "de01fd1fd3c6ca8d632e5540368f7c3b")
!10 = !{!11, !19, !20}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "reloc", scope: !8, file: !9, line: 18, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !8, file: !9, line: 19, baseType: !12, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "batch_items", scope: !8, file: !9, line: 20, baseType: !13, size: 32, offset: 128)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "gen6_null_state_batch", scope: !2, file: !3, line: 19, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 275)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 6)
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 8, !"cf-protection-branch", i32 1}
!33 = !{i32 4, !"function_return_thunk_extern", i32 1}
!34 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!35 = !{i32 1, !"Code Model", i32 2}
!36 = !{i32 1, !"override-stack-alignment", i32 8}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
