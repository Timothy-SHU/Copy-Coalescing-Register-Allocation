; ModuleID = 'lib/zlib_deflate/deflate_syms.c'
source_filename = "lib/zlib_deflate/deflate_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zlib_deflate_workspacesize: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zlib_deflate_workspacesize ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zlib_deflate_dfltcc_enabled: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zlib_deflate_dfltcc_enabled ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zlib_deflate: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zlib_deflate ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zlib_deflateInit2: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zlib_deflateInit2 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zlib_deflateEnd: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zlib_deflateEnd ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_zlib_deflateReset: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad zlib_deflateReset ; .previous"

@__UNIQUE_ID___addressable_zlib_deflate_workspacesize195 = internal global ptr @zlib_deflate_workspacesize, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_zlib_deflate_dfltcc_enabled196 = internal global ptr @zlib_deflate_dfltcc_enabled, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_zlib_deflate197 = internal global ptr @zlib_deflate, section ".discard.addressable", align 8, !dbg !9
@__UNIQUE_ID___addressable_zlib_deflateInit2198 = internal global ptr @zlib_deflateInit2, section ".discard.addressable", align 8, !dbg !11
@__UNIQUE_ID___addressable_zlib_deflateEnd199 = internal global ptr @zlib_deflateEnd, section ".discard.addressable", align 8, !dbg !13
@__UNIQUE_ID___addressable_zlib_deflateReset200 = internal global ptr @zlib_deflateReset, section ".discard.addressable", align 8, !dbg !15
@__UNIQUE_ID_file201 = internal constant [48 x i8] c"zlib_deflate.file=lib/zlib_deflate/zlib_deflate\00", section ".modinfo", align 1, !dbg !17
@__UNIQUE_ID_license202 = internal constant [25 x i8] c"zlib_deflate.license=GPL\00", section ".modinfo", align 1, !dbg !24
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_zlib_deflate_workspacesize195, ptr @__UNIQUE_ID___addressable_zlib_deflate_dfltcc_enabled196, ptr @__UNIQUE_ID___addressable_zlib_deflate197, ptr @__UNIQUE_ID___addressable_zlib_deflateInit2198, ptr @__UNIQUE_ID___addressable_zlib_deflateEnd199, ptr @__UNIQUE_ID___addressable_zlib_deflateReset200, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202], section "llvm.metadata"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @zlib_deflate_workspacesize(i32 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @zlib_deflate_dfltcc_enabled() #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @zlib_deflate(ptr noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @zlib_deflateInit2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @zlib_deflateEnd(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @zlib_deflateReset(ptr noundef) #0

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zlib_deflate_workspacesize195", scope: !2, file: !3, line: 14, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zlib_deflate/.deflate_syms.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zlib_deflate/zlib_deflate\22 -D KBUILD_BASENAME=\22deflate_syms\22 -D KBUILD_MODNAME=\22zlib_deflate\22 -D __KBUILD_MODNAME=kmod_zlib_deflate -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zlib_deflate/deflate_syms.ll lib/zlib_deflate/deflate_syms.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/zlib_deflate/deflate_syms.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a612ea6f070cd5c40ceef5cdf2a234cb")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !9, !11, !13, !15, !17, !24}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zlib_deflate_dfltcc_enabled196", scope: !2, file: !3, line: 15, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zlib_deflate197", scope: !2, file: !3, line: 16, type: !5, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zlib_deflateInit2198", scope: !2, file: !3, line: 17, type: !5, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zlib_deflateEnd199", scope: !2, file: !3, line: 18, type: !5, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_zlib_deflateReset200", scope: !2, file: !3, line: 19, type: !5, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file201", scope: !2, file: !3, line: 20, type: !19, isLocal: true, isDefinition: true, align: 8)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 384, elements: !22)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !{!23}
!23 = !DISubrange(count: 48)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license202", scope: !2, file: !3, line: 20, type: !26, isLocal: true, isDefinition: true, align: 8)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 200, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 25)
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 8, !"cf-protection-branch", i32 1}
!33 = !{i32 4, !"function_return_thunk_extern", i32 1}
!34 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!35 = !{i32 1, !"Code Model", i32 2}
!36 = !{i32 1, !"override-stack-alignment", i32 8}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
