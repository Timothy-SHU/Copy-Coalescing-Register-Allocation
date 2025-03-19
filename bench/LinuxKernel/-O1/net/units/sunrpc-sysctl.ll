; ModuleID = 'net/sunrpc/sysctl.c'
source_filename = "net/sunrpc/sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rpc_debug: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rpc_debug ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nfs_debug: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad nfs_debug ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nfsd_debug: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad nfsd_debug ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nlm_debug: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad nlm_debug ; .previous"

@rpc_debug = hidden global i32 0, align 4, !dbg !0
@__UNIQUE_ID___addressable_rpc_debug345 = internal global ptr @rpc_debug, section ".discard.addressable", align 8, !dbg !7
@nfs_debug = hidden global i32 0, align 4, !dbg !15
@__UNIQUE_ID___addressable_nfs_debug346 = internal global ptr @nfs_debug, section ".discard.addressable", align 8, !dbg !9
@nfsd_debug = hidden global i32 0, align 4, !dbg !18
@__UNIQUE_ID___addressable_nfsd_debug347 = internal global ptr @nfsd_debug, section ".discard.addressable", align 8, !dbg !11
@nlm_debug = hidden global i32 0, align 4, !dbg !20
@__UNIQUE_ID___addressable_nlm_debug348 = internal global ptr @nlm_debug, section ".discard.addressable", align 8, !dbg !13
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_rpc_debug345, ptr @__UNIQUE_ID___addressable_nfs_debug346, ptr @__UNIQUE_ID___addressable_nfsd_debug347, ptr @__UNIQUE_ID___addressable_nlm_debug348], section "llvm.metadata"

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rpc_debug", scope: !2, file: !3, line: 29, type: !17, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/sunrpc/.sysctl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/sunrpc/sunrpc\22 -D KBUILD_BASENAME=\22sysctl\22 -D KBUILD_MODNAME=\22sunrpc\22 -D __KBUILD_MODNAME=kmod_sunrpc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/sunrpc/sysctl.ll net/sunrpc/sysctl.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/sunrpc/sysctl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a744cd8347f59a3af746e81d4a3dca1")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!7, !9, !11, !13, !0, !15, !18, !20}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rpc_debug345", scope: !2, file: !3, line: 30, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nfs_debug346", scope: !2, file: !3, line: 33, type: !5, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nfsd_debug347", scope: !2, file: !3, line: 36, type: !5, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nlm_debug348", scope: !2, file: !3, line: 39, type: !5, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "nfs_debug", scope: !2, file: !3, line: 32, type: !17, isLocal: false, isDefinition: true)
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "nfsd_debug", scope: !2, file: !3, line: 35, type: !17, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "nlm_debug", scope: !2, file: !3, line: 38, type: !17, isLocal: false, isDefinition: true)
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 8, !"cf-protection-branch", i32 1}
!26 = !{i32 4, !"function_return_thunk_extern", i32 1}
!27 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!28 = !{i32 1, !"Code Model", i32 2}
!29 = !{i32 1, !"override-stack-alignment", i32 8}
!30 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
