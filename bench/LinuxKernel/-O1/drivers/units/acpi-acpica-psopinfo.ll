; ModuleID = 'drivers/acpi/acpica/psopinfo.c'
source_filename = "drivers/acpi/acpica/psopinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }

@acpi_gbl_aml_op_info = external dso_local constant [131 x %struct.acpi_opcode_info], align 16
@.str = private unnamed_addr constant [23 x i8] c"OpcodeName unavailable\00", align 1, !dbg !0
@acpi_gbl_argument_count = internal constant [12 x i8] c"\00\01\01\01\01\02\02\02\02\03\03\06", align 1, !dbg !7
@acpi_gbl_short_op_index = hidden constant [256 x i8] c"\00\01kkkk\02k\03k\04\05\06\07nk\08\09\0Ao\0B\81kkkkkkkkkkkkkkkkkkkkkkkcmmgfheidj}\7F\80kkkkkkkllllllllllllllllllllllllllkmkml\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1Ak\1B\1C\1D\1E\1F !\22#$%&'()*+,-.pq/01234567r89:;<=stuvkkwxyz>?@ABC`ab\82kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkDkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkE", align 16, !dbg !20
@acpi_gbl_long_op_index = hidden constant [137 x i8] c"kFGkkkkkkkkkkkkkkkHIkkkkkkkkkkk{JKLMNOPQRSTkkkkkUVW~kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkXYZ[\\]^_|", align 16, !dbg !26

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %opcode) #0 align 16 !dbg !43 {
entry:
  %retval = alloca ptr, align 8
  %opcode.addr = alloca i16, align 2
  store i16 %opcode, ptr %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !61, metadata !DIExpression()), !dbg !62
  %0 = load i16, ptr %opcode.addr, align 2, !dbg !63
  %conv = zext i16 %0 to i32, !dbg !63
  %and = and i32 %conv, 65280, !dbg !65
  %tobool = icmp ne i32 %and, 0, !dbg !65
  br i1 %tobool, label %if.end, label %if.then, !dbg !66

if.then:                                          ; preds = %entry
  %1 = load i16, ptr %opcode.addr, align 2, !dbg !67
  %conv1 = trunc i16 %1 to i8, !dbg !69
  %idxprom = zext i8 %conv1 to i64, !dbg !70
  %arrayidx = getelementptr [0 x i8], ptr @acpi_gbl_short_op_index, i64 0, i64 %idxprom, !dbg !70
  %2 = load i8, ptr %arrayidx, align 1, !dbg !70
  %idxprom2 = zext i8 %2 to i64, !dbg !71
  %arrayidx3 = getelementptr [131 x %struct.acpi_opcode_info], ptr @acpi_gbl_aml_op_info, i64 0, i64 %idxprom2, !dbg !71
  store ptr %arrayidx3, ptr %retval, align 8, !dbg !72
  br label %return, !dbg !72

if.end:                                           ; preds = %entry
  %3 = load i16, ptr %opcode.addr, align 2, !dbg !73
  %conv4 = zext i16 %3 to i32, !dbg !73
  %and5 = and i32 %conv4, 65280, !dbg !75
  %cmp = icmp eq i32 %and5, 23296, !dbg !76
  br i1 %cmp, label %land.lhs.true, label %if.end17, !dbg !77

land.lhs.true:                                    ; preds = %if.end
  %4 = load i16, ptr %opcode.addr, align 2, !dbg !78
  %conv7 = trunc i16 %4 to i8, !dbg !79
  %conv8 = zext i8 %conv7 to i32, !dbg !80
  %cmp9 = icmp sle i32 %conv8, 136, !dbg !81
  br i1 %cmp9, label %if.then11, label %if.end17, !dbg !82

if.then11:                                        ; preds = %land.lhs.true
  %5 = load i16, ptr %opcode.addr, align 2, !dbg !83
  %conv12 = trunc i16 %5 to i8, !dbg !85
  %idxprom13 = zext i8 %conv12 to i64, !dbg !86
  %arrayidx14 = getelementptr [0 x i8], ptr @acpi_gbl_long_op_index, i64 0, i64 %idxprom13, !dbg !86
  %6 = load i8, ptr %arrayidx14, align 1, !dbg !86
  %idxprom15 = zext i8 %6 to i64, !dbg !87
  %arrayidx16 = getelementptr [131 x %struct.acpi_opcode_info], ptr @acpi_gbl_aml_op_info, i64 0, i64 %idxprom15, !dbg !87
  store ptr %arrayidx16, ptr %retval, align 8, !dbg !88
  br label %return, !dbg !88

if.end17:                                         ; preds = %land.lhs.true, %if.end
  store ptr getelementptr inbounds ([131 x %struct.acpi_opcode_info], ptr @acpi_gbl_aml_op_info, i64 0, i64 107), ptr %retval, align 8, !dbg !89
  br label %return, !dbg !89

return:                                           ; preds = %if.end17, %if.then11, %if.then
  %7 = load ptr, ptr %retval, align 8, !dbg !90
  ret ptr %7, !dbg !90
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ps_get_opcode_name(i16 noundef zeroext %opcode) #0 align 16 !dbg !91 {
entry:
  %opcode.addr = alloca i16, align 2
  store i16 %opcode, ptr %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !97, metadata !DIExpression()), !dbg !98
  ret ptr @.str, !dbg !99
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ps_get_argument_count(i32 noundef %op_type) #0 align 16 !dbg !100 {
entry:
  %retval = alloca i8, align 1
  %op_type.addr = alloca i32, align 4
  store i32 %op_type, ptr %op_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op_type.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load i32, ptr %op_type.addr, align 4, !dbg !106
  %cmp = icmp ule i32 %0, 11, !dbg !108
  br i1 %cmp, label %if.then, label %if.end, !dbg !109

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %op_type.addr, align 4, !dbg !110
  %idxprom = zext i32 %1 to i64, !dbg !112
  %arrayidx = getelementptr [12 x i8], ptr @acpi_gbl_argument_count, i64 0, i64 %idxprom, !dbg !112
  %2 = load i8, ptr %arrayidx, align 1, !dbg !112
  store i8 %2, ptr %retval, align 1, !dbg !113
  br label %return, !dbg !113

if.end:                                           ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !114
  br label %return, !dbg !114

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, ptr %retval, align 1, !dbg !115
  ret i8 %3, !dbg !115
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/psopinfo.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9cd8a9846db4e98ebd0cceea8ca6f36")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "acpi_gbl_argument_count", scope: !9, file: !2, line: 19, type: !31, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.psopinfo.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22psopinfo\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/psopinfo.ll drivers/acpi/acpica/psopinfo.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !19, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !16}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !12, line: 17, baseType: !13)
!12 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !14, line: 21, baseType: !15)
!14 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !12, line: 19, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !14, line: 24, baseType: !18)
!18 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!19 = !{!0, !20, !26, !7}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "acpi_gbl_short_op_index", scope: !9, file: !2, line: 171, type: !22, isLocal: false, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !24)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!24 = !{!25}
!25 = !DISubrange(count: 256)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "acpi_gbl_long_op_index", scope: !9, file: !2, line: 212, type: !28, isLocal: false, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 1096, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 137)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 96, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 12)
!34 = !{i32 7, !"Dwarf Version", i32 5}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 8, !"cf-protection-branch", i32 1}
!38 = !{i32 4, !"function_return_thunk_extern", i32 1}
!39 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!40 = !{i32 1, !"Code Model", i32 2}
!41 = !{i32 1, !"override-stack-alignment", i32 8}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = distinct !DISubprogram(name: "acpi_ps_get_opcode_info", scope: !2, file: !2, line: 35, type: !44, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !60)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !16}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !49, line: 718, size: 128, elements: !50)
!49 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!50 = !{!51, !55, !56, !57, !58, !59}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !48, file: !49, line: 722, baseType: !52, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !12, line: 21, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !14, line: 27, baseType: !54)
!54 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !48, file: !49, line: 723, baseType: !52, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !48, file: !49, line: 724, baseType: !16, size: 16, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !48, file: !49, line: 725, baseType: !11, size: 8, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !48, file: !49, line: 726, baseType: !11, size: 8, offset: 88)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !49, line: 727, baseType: !11, size: 8, offset: 96)
!60 = !{!61}
!61 = !DILocalVariable(name: "opcode", arg: 1, scope: !43, file: !2, line: 35, type: !16)
!62 = !DILocation(line: 35, column: 60, scope: !43)
!63 = !DILocation(line: 46, column: 8, scope: !64)
!64 = distinct !DILexicalBlock(scope: !43, file: !2, line: 46, column: 6)
!65 = !DILocation(line: 46, column: 15, scope: !64)
!66 = !DILocation(line: 46, column: 6, scope: !43)
!67 = !DILocation(line: 51, column: 33, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !2, line: 46, column: 26)
!69 = !DILocation(line: 51, column: 29, scope: !68)
!70 = !DILocation(line: 51, column: 5, scope: !68)
!71 = !DILocation(line: 50, column: 12, scope: !68)
!72 = !DILocation(line: 50, column: 3, scope: !68)
!73 = !DILocation(line: 54, column: 8, scope: !74)
!74 = distinct !DILexicalBlock(scope: !43, file: !2, line: 54, column: 6)
!75 = !DILocation(line: 54, column: 15, scope: !74)
!76 = !DILocation(line: 54, column: 25, scope: !74)
!77 = !DILocation(line: 54, column: 49, scope: !74)
!78 = !DILocation(line: 55, column: 12, scope: !74)
!79 = !DILocation(line: 55, column: 8, scope: !74)
!80 = !DILocation(line: 55, column: 7, scope: !74)
!81 = !DILocation(line: 55, column: 20, scope: !74)
!82 = !DILocation(line: 54, column: 6, scope: !43)
!83 = !DILocation(line: 60, column: 32, scope: !84)
!84 = distinct !DILexicalBlock(scope: !74, file: !2, line: 55, column: 45)
!85 = !DILocation(line: 60, column: 28, scope: !84)
!86 = !DILocation(line: 60, column: 5, scope: !84)
!87 = !DILocation(line: 59, column: 12, scope: !84)
!88 = !DILocation(line: 59, column: 3, scope: !84)
!89 = !DILocation(line: 111, column: 2, scope: !43)
!90 = !DILocation(line: 112, column: 1, scope: !43)
!91 = distinct !DISubprogram(name: "acpi_ps_get_opcode_name", scope: !2, file: !2, line: 127, type: !92, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !96)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !16}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!96 = !{!97}
!97 = !DILocalVariable(name: "opcode", arg: 1, scope: !91, file: !2, line: 127, type: !16)
!98 = !DILocation(line: 127, column: 41, scope: !91)
!99 = !DILocation(line: 140, column: 2, scope: !91)
!100 = distinct !DISubprogram(name: "acpi_ps_get_argument_count", scope: !2, file: !2, line: 157, type: !101, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{!11, !52}
!103 = !{!104}
!104 = !DILocalVariable(name: "op_type", arg: 1, scope: !100, file: !2, line: 157, type: !52)
!105 = !DILocation(line: 157, column: 35, scope: !100)
!106 = !DILocation(line: 160, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !100, file: !2, line: 160, column: 6)
!108 = !DILocation(line: 160, column: 14, scope: !107)
!109 = !DILocation(line: 160, column: 6, scope: !100)
!110 = !DILocation(line: 161, column: 35, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !2, line: 160, column: 41)
!112 = !DILocation(line: 161, column: 11, scope: !111)
!113 = !DILocation(line: 161, column: 3, scope: !111)
!114 = !DILocation(line: 164, column: 2, scope: !100)
!115 = !DILocation(line: 165, column: 1, scope: !100)
