; ModuleID = 'lib/zstd/zstd_common_module.c'
source_filename = "lib/zstd/zstd_common_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_FSE_readNCount: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad FSE_readNCount ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_HUF_readStats: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad HUF_readStats ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_HUF_readStats_wksp: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad HUF_readStats_wksp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ZSTD_isError: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad ZSTD_isError ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ZSTD_getErrorName: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad ZSTD_getErrorName ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ZSTD_getErrorCode: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad ZSTD_getErrorCode ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ZSTD_customMalloc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad ZSTD_customMalloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ZSTD_customCalloc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad ZSTD_customCalloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ZSTD_customFree: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad ZSTD_customFree ; .previous"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }

@__UNIQUE_ID___addressable_FSE_readNCount195 = internal global ptr @FSE_readNCount, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_HUF_readStats196 = internal global ptr @HUF_readStats, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_HUF_readStats_wksp197 = internal global ptr @HUF_readStats_wksp, section ".discard.addressable", align 8, !dbg !9
@__UNIQUE_ID___addressable_ZSTD_isError198 = internal global ptr @ZSTD_isError, section ".discard.addressable", align 8, !dbg !11
@__UNIQUE_ID___addressable_ZSTD_getErrorName199 = internal global ptr @ZSTD_getErrorName, section ".discard.addressable", align 8, !dbg !13
@__UNIQUE_ID___addressable_ZSTD_getErrorCode200 = internal global ptr @ZSTD_getErrorCode, section ".discard.addressable", align 8, !dbg !15
@__UNIQUE_ID___addressable_ZSTD_customMalloc201 = internal global ptr @ZSTD_customMalloc, section ".discard.addressable", align 8, !dbg !17
@__UNIQUE_ID___addressable_ZSTD_customCalloc202 = internal global ptr @ZSTD_customCalloc, section ".discard.addressable", align 8, !dbg !19
@__UNIQUE_ID___addressable_ZSTD_customFree203 = internal global ptr @ZSTD_customFree, section ".discard.addressable", align 8, !dbg !21
@__UNIQUE_ID_file204 = internal constant [38 x i8] c"zstd_common.file=lib/zstd/zstd_common\00", section ".modinfo", align 1, !dbg !23
@__UNIQUE_ID_license205 = internal constant [33 x i8] c"zstd_common.license=Dual BSD/GPL\00", section ".modinfo", align 1, !dbg !30
@__UNIQUE_ID_description206 = internal constant [36 x i8] c"zstd_common.description=Zstd Common\00", section ".modinfo", align 1, !dbg !35
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID___addressable_FSE_readNCount195, ptr @__UNIQUE_ID___addressable_HUF_readStats196, ptr @__UNIQUE_ID___addressable_HUF_readStats_wksp197, ptr @__UNIQUE_ID___addressable_ZSTD_isError198, ptr @__UNIQUE_ID___addressable_ZSTD_getErrorName199, ptr @__UNIQUE_ID___addressable_ZSTD_getErrorCode200, ptr @__UNIQUE_ID___addressable_ZSTD_customMalloc201, ptr @__UNIQUE_ID___addressable_ZSTD_customCalloc202, ptr @__UNIQUE_ID___addressable_ZSTD_customFree203, ptr @__UNIQUE_ID_file204, ptr @__UNIQUE_ID_license205, ptr @__UNIQUE_ID_description206], section "llvm.metadata"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @HUF_readStats(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @HUF_readStats_wksp(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ZSTD_isError(i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ZSTD_getErrorName(i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ZSTD_getErrorCode(i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ZSTD_customMalloc(i64 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ZSTD_customCalloc(i64 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ZSTD_customFree(ptr noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) #0

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_FSE_readNCount195", scope: !2, file: !3, line: 21, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zstd/.zstd_common_module.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zstd/zstd_common\22 -D KBUILD_BASENAME=\22zstd_common_module\22 -D KBUILD_MODNAME=\22zstd_common\22 -D __KBUILD_MODNAME=kmod_zstd_common -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zstd/zstd_common_module.ll lib/zstd/zstd_common_module.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/zstd/zstd_common_module.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117d250a408a90fe3393b1db9795382f")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !9, !11, !13, !15, !17, !19, !21, !23, !30, !35}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_HUF_readStats196", scope: !2, file: !3, line: 22, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_HUF_readStats_wksp197", scope: !2, file: !3, line: 23, type: !5, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ZSTD_isError198", scope: !2, file: !3, line: 24, type: !5, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ZSTD_getErrorName199", scope: !2, file: !3, line: 25, type: !5, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ZSTD_getErrorCode200", scope: !2, file: !3, line: 26, type: !5, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ZSTD_customMalloc201", scope: !2, file: !3, line: 27, type: !5, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ZSTD_customCalloc202", scope: !2, file: !3, line: 28, type: !5, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ZSTD_customFree203", scope: !2, file: !3, line: 29, type: !5, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file204", scope: !2, file: !3, line: 31, type: !25, isLocal: true, isDefinition: true, align: 8)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 304, elements: !28)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{!29}
!29 = !DISubrange(count: 38)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license205", scope: !2, file: !3, line: 31, type: !32, isLocal: true, isDefinition: true, align: 8)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 264, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 33)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description206", scope: !2, file: !3, line: 32, type: !37, isLocal: true, isDefinition: true, align: 8)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 288, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 36)
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 8, !"cf-protection-branch", i32 1}
!44 = !{i32 4, !"function_return_thunk_extern", i32 1}
!45 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!46 = !{i32 1, !"Code Model", i32 2}
!47 = !{i32 1, !"override-stack-alignment", i32 8}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
