; ModuleID = 'crypto/asymmetric_keys/pkcs7.asn1.c'
source_filename = "crypto/asymmetric_keys/pkcs7.asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_decoder = type { ptr, i64, ptr }

@pkcs7_machine = internal constant [239 x i8] c"\000\02\06\02\1E\00\05\A0\0C \1D\000\02\02\07\051=\150C\1C\000\02\06\02\1E\02\05\A0I \1E\04\05\A0M\15\A2U\1E\03\05\A1Z\15\A3`\051f\150l\1C  (\040r#=(\040r\22C(\0A\05 (\0B\01\1B\01\1C#M(\0A\01\22U(\040x#Z(\040x\22`(\040}#f(\040}\22l(\02\06\02\09 (\0A\01\22x(\02\02\08\050\A9\13\80\10\1C\040r\1E\0A\05\A0\C0\1F\0E\15\A2\C6\000\02\06\02\09 \1E\0C\02\04\0F\05\A1\CF\15\A3\D5$\06(\000\001\000\02\06\02\08 #\AD\22\AB\1E\0B\00\02\1E\0D (\040\DB#\C0(\000\040\DB\22\C8 (\040\E6#\CF(\040\E6\22\D5(\02\06\02\001\0A\09#\E0 (\00\06\001\08#\EA (", align 16, !dbg !0
@pkcs7_action_table = internal constant [17 x ptr] [ptr @pkcs7_check_content_type, ptr @pkcs7_extract_cert, ptr @pkcs7_note_OID, ptr @pkcs7_note_certificate_list, ptr @pkcs7_note_content, ptr @pkcs7_note_data, ptr @pkcs7_note_signed_info, ptr @pkcs7_note_signeddata_version, ptr @pkcs7_note_signerinfo_version, ptr @pkcs7_sig_note_authenticated_attr, ptr @pkcs7_sig_note_digest_algo, ptr @pkcs7_sig_note_issuer, ptr @pkcs7_sig_note_pkey_algo, ptr @pkcs7_sig_note_serial, ptr @pkcs7_sig_note_set_of_authattrs, ptr @pkcs7_sig_note_signature, ptr @pkcs7_sig_note_skid], align 16, !dbg !33
@pkcs7_decoder = hidden constant %struct.asn1_decoder { ptr @pkcs7_machine, i64 239, ptr @pkcs7_action_table }, align 8, !dbg !5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_check_content_type(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_extract_cert(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_note_OID(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_note_certificate_list(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_note_content(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_note_data(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_note_signed_info(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_note_signeddata_version(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_note_signerinfo_version(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_authenticated_attr(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_digest_algo(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_issuer(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_pkey_algo(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_serial(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_set_of_authattrs(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_signature(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_skid(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #0

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pkcs7_machine", scope: !2, file: !3, line: 50, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/asymmetric_keys/.pkcs7.asn1.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/asymmetric_keys/pkcs7_message\22 -D KBUILD_BASENAME=\22pkcs7.asn1\22 -D KBUILD_MODNAME=\22pkcs7_message\22 -D __KBUILD_MODNAME=kmod_pkcs7_message -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/asymmetric_keys/pkcs7.asn1.ll crypto/asymmetric_keys/pkcs7.asn1.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/asymmetric_keys/pkcs7.asn1.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90bc421ac36bb273110ee040608d69d2")
!4 = !{!5, !0, !33}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "pkcs7_decoder", scope: !2, file: !3, line: 351, type: !7, isLocal: false, isDefinition: true)
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
!34 = distinct !DIGlobalVariable(name: "pkcs7_action_table", scope: !2, file: !3, line: 30, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1088, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 17)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1912, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 239)
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 8, !"cf-protection-branch", i32 1}
!45 = !{i32 4, !"function_return_thunk_extern", i32 1}
!46 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!47 = !{i32 1, !"Code Model", i32 2}
!48 = !{i32 1, !"override-stack-alignment", i32 8}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
