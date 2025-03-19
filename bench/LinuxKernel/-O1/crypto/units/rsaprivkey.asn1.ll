; ModuleID = 'crypto/rsaprivkey.asn1.c'
source_filename = "crypto/rsaprivkey.asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_decoder = type { ptr, i64, ptr }

@rsaprivkey_machine = internal constant [30 x i8] c"\000\00\02\02\02\04\02\02\03\02\02\00\02\02\05\02\02\06\02\02\01\02\02\02\02\02\07 \1D", align 16, !dbg !0
@rsaprivkey_action_table = internal constant [8 x ptr] [ptr @rsa_get_d, ptr @rsa_get_dp, ptr @rsa_get_dq, ptr @rsa_get_e, ptr @rsa_get_n, ptr @rsa_get_p, ptr @rsa_get_q, ptr @rsa_get_qinv], align 16, !dbg !33
@rsaprivkey_decoder = hidden constant %struct.asn1_decoder { ptr @rsaprivkey_machine, i64 30, ptr @rsaprivkey_action_table }, align 8, !dbg !5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rsa_get_d(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rsa_get_dp(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rsa_get_dq(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rsa_get_e(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rsa_get_n(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rsa_get_p(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rsa_get_q(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rsa_get_qinv(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rsaprivkey_machine", scope: !2, file: !3, line: 32, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/.rsaprivkey.asn1.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/rsa_generic\22 -D KBUILD_BASENAME=\22rsaprivkey.asn1\22 -D KBUILD_MODNAME=\22rsa_generic\22 -D __KBUILD_MODNAME=kmod_rsa_generic -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/rsaprivkey.asn1.ll crypto/rsaprivkey.asn1.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/rsaprivkey.asn1.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0947b0bc0ee0e84d437c4b3767313b27")
!4 = !{!5, !0, !33}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "rsaprivkey_decoder", scope: !2, file: !3, line: 66, type: !7, isLocal: false, isDefinition: true)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_decoder", file: !9, line: 21, size: 192, elements: !10)
!9 = !DIFile(filename: "./include/linux/asn1_ber_bytecode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f447a7239cd5a777e836536718766e6f")
!10 = !{!11, !15, !22}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !8, file: !9, line: 22, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "machlen", scope: !8, file: !9, line: 23, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 61, baseType: !18)
!17 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !19, line: 72, baseType: !20)
!19 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !19, line: 16, baseType: !21)
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "actions", scope: !8, file: !9, line: 24, baseType: !23, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "asn1_action_t", file: !9, line: 16, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !30, !16, !14, !31, !16}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "rsaprivkey_action_table", scope: !2, file: !3, line: 21, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 512, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 8)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 240, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 30)
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 8, !"cf-protection-branch", i32 1}
!45 = !{i32 4, !"function_return_thunk_extern", i32 1}
!46 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!47 = !{i32 1, !"Code Model", i32 2}
!48 = !{i32 1, !"override-stack-alignment", i32 8}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
