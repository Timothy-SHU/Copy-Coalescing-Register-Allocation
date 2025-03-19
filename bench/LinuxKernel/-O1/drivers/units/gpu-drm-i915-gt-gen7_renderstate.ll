; ModuleID = 'drivers/gpu/drm/i915/gt/gen7_renderstate.c'
source_filename = "drivers/gpu/drm/i915/gt/gen7_renderstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_renderstate_rodata = type { ptr, ptr, i32 }

@gen7_null_state_relocs = internal constant [5 x i32] [i32 12, i32 16, i32 24, i32 492, i32 -1], align 16, !dbg !0
@gen7_null_state = hidden constant %struct.intel_renderstate_rodata { ptr @gen7_null_state_relocs, ptr @gen7_null_state_batch, i32 240 }, align 8, !dbg !5
@gen7_null_state_batch = internal constant <{ [218 x i32], [22 x i32] }> <{ [218 x i32] [i32 1761869824, i32 1627455496, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 2030895106, i32 0, i32 0, i32 0, i32 2014838784, i32 1, i32 2031484928, i32 8, i32 2016411648, i32 33620032, i32 2016477184, i32 67108864, i32 2016542720, i32 67108864, i32 2016608256, i32 33554432, i32 2014314500, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2015035397, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2015100930, i32 0, i32 0, i32 0, i32 2015166468, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2014380037, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2014445570, i32 0, i32 0, i32 0, i32 2015428608, i32 0, i32 2014511109, i32 0, i32 536870912, i32 67108864, i32 0, i32 0, i32 0, i32 2014576641, i32 536872960, i32 0, i32 2015232001, i32 0, i32 0, i32 2013593605, i32 -536608768, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2013528065, i32 0, i32 0, i32 2015625216, i32 576, i32 2015559680, i32 608, i32 2016346112, i32 640, i32 2015297548, i32 4196368, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2015363078, i32 704, i32 134742016, i32 0, i32 671089666, i32 393216, i32 0, i32 0, i32 2013855749, i32 33554432, i32 572653568, i32 49676288, i32 287506432, i32 49676292, i32 287506432, i32 2013790211, i32 24584, i32 832, i32 -1, i32 0, i32 2016018432, i32 864, i32 2030043138, i32 -1, i32 0, i32 0, i32 2063597573, i32 15, i32 3, i32 0, i32 1, i32 0, i32 0, i32 83886080, i32 0, i32 0, i32 0, i32 0, i32 49, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -107343092, i32 2040140556, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1170, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8388698, i32 773879741, i32 192, i32 9240640, i32 8388698, i32 778074045, i32 208, i32 9240640, i32 41943089, i32 562044841, i32 9244192, i32 142868481, i32 8388609, i32 773850045, i32 9240960, i32 0, i32 8388609, i32 778044349, i32 9241024, i32 0, i32 8388609, i32 782238653, i32 9241088, i32 0, i32 8388609, i32 786432957, i32 9241152, i32 0, i32 92274737, i32 536879016, i32 9244192, i32 -1878847488, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 896, i32 928], [22 x i32] zeroinitializer }>, align 16, !dbg !21

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gen7_null_state_relocs", scope: !2, file: !3, line: 10, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/i915/gt/.gen7_renderstate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -Wall -Wextra -Wno-format-security -Wno-unused-parameter -Wno-type-limits -Wno-missing-field-initializers -Wno-sign-compare -Wno-shift-negative-value -Wunused-but-set-variable -Wno-frame-address -I ./drivers/gpu/drm/i915 -D KBUILD_MODFILE=\22drivers/gpu/drm/i915/i915\22 -D KBUILD_BASENAME=\22gen7_renderstate\22 -D KBUILD_MODNAME=\22i915\22 -D __KBUILD_MODNAME=kmod_i915 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/i915/gt/gen7_renderstate.ll drivers/gpu/drm/i915/gt/gen7_renderstate.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/i915/gt/gen7_renderstate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e382206c6f85c4512277f22dffa4f736")
!4 = !{!5, !0, !21}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "gen7_null_state", scope: !2, file: !3, line: 261, type: !7, isLocal: false, isDefinition: true)
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
!22 = distinct !DIGlobalVariable(name: "gen7_null_state_batch", scope: !2, file: !3, line: 18, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 7680, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 240)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 5)
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 8, !"cf-protection-branch", i32 1}
!33 = !{i32 4, !"function_return_thunk_extern", i32 1}
!34 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!35 = !{i32 1, !"Code Model", i32 2}
!36 = !{i32 1, !"override-stack-alignment", i32 8}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
