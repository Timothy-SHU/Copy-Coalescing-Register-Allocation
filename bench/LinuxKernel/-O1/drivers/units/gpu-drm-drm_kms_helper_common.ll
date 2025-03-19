; ModuleID = 'drivers/gpu/drm/drm_kms_helper_common.c'
source_filename = "drivers/gpu/drm/drm_kms_helper_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__UNIQUE_ID_author308 = internal constant [49 x i8] c"drm_kms_helper.author=David Airlie, Jesse Barnes\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description309 = internal constant [42 x i8] c"drm_kms_helper.description=DRM KMS helper\00", section ".modinfo", align 1, !dbg !5
@__UNIQUE_ID_file310 = internal constant [51 x i8] c"drm_kms_helper.file=drivers/gpu/drm/drm_kms_helper\00", section ".modinfo", align 1, !dbg !12
@__UNIQUE_ID_license311 = internal constant [49 x i8] c"drm_kms_helper.license=GPL and additional rights\00", section ".modinfo", align 1, !dbg !17
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311], section "llvm.metadata"

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author308", scope: !2, file: !3, line: 35, type: !19, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_kms_helper_common.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm_kms_helper\22 -D KBUILD_BASENAME=\22drm_kms_helper_common\22 -D KBUILD_MODNAME=\22drm_kms_helper\22 -D __KBUILD_MODNAME=kmod_drm_kms_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_kms_helper_common.ll drivers/gpu/drm/drm_kms_helper_common.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_kms_helper_common.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c70fb943d9a02d9dc01906c5233e986")
!4 = !{!0, !5, !12, !17}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description309", scope: !2, file: !3, line: 36, type: !7, isLocal: true, isDefinition: true, align: 8)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 336, elements: !10)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!11}
!11 = !DISubrange(count: 42)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file310", scope: !2, file: !3, line: 37, type: !14, isLocal: true, isDefinition: true, align: 8)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 51)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license311", scope: !2, file: !3, line: 37, type: !19, isLocal: true, isDefinition: true, align: 8)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 392, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 49)
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 8, !"cf-protection-branch", i32 1}
!26 = !{i32 4, !"function_return_thunk_extern", i32 1}
!27 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!28 = !{i32 1, !"Code Model", i32 2}
!29 = !{i32 1, !"override-stack-alignment", i32 8}
!30 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
