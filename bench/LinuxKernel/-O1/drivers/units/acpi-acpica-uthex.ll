; ModuleID = 'drivers/acpi/acpica/uthex.c'
source_filename = "drivers/acpi/acpica/uthex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_gbl_hex_to_ascii = internal constant [16 x i8] c"0123456789ABCDEF", align 16, !dbg !0
@_ctype = external dso_local constant [0 x i8], align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef %integer, i32 noundef %position) #0 align 16 !dbg !31 {
entry:
  %integer.addr = alloca i64, align 8
  %position.addr = alloca i32, align 4
  %index = alloca i64, align 8
  store i64 %integer, ptr %integer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %integer.addr, metadata !38, metadata !DIExpression()), !dbg !41
  store i32 %position, ptr %position.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %position.addr, metadata !39, metadata !DIExpression()), !dbg !42
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #4, !dbg !43
  call void @llvm.dbg.declare(metadata ptr %index, metadata !40, metadata !DIExpression()), !dbg !44
  %0 = load i64, ptr %integer.addr, align 8, !dbg !45
  %1 = load i32, ptr %position.addr, align 4, !dbg !46
  %call = call i32 @acpi_ut_short_shift_right(i64 noundef %0, i32 noundef %1, ptr noundef %index) #5, !dbg !47
  %2 = load i64, ptr %index, align 8, !dbg !48
  %and = and i64 %2, 15, !dbg !49
  %arrayidx = getelementptr [16 x i8], ptr @acpi_gbl_hex_to_ascii, i64 0, i64 %and, !dbg !50
  %3 = load i8, ptr %arrayidx, align 1, !dbg !50
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #4, !dbg !51
  ret i8 %3, !dbg !52
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !53 dso_local i32 @acpi_ut_short_shift_right(i64 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_ascii_to_hex_byte(ptr noundef %two_ascii_chars, ptr noundef %return_byte) #0 align 16 !dbg !58 {
entry:
  %retval = alloca i32, align 4
  %two_ascii_chars.addr = alloca ptr, align 8
  %return_byte.addr = alloca ptr, align 8
  store ptr %two_ascii_chars, ptr %two_ascii_chars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %two_ascii_chars.addr, metadata !64, metadata !DIExpression()), !dbg !66
  store ptr %return_byte, ptr %return_byte.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_byte.addr, metadata !65, metadata !DIExpression()), !dbg !67
  %0 = load ptr, ptr %two_ascii_chars.addr, align 8, !dbg !68
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !68
  %1 = load i8, ptr %arrayidx, align 1, !dbg !68
  %conv = zext i8 %1 to i32, !dbg !68
  %conv1 = trunc i32 %conv to i8, !dbg !68
  %conv2 = zext i8 %conv1 to i32, !dbg !68
  %idxprom = sext i32 %conv2 to i64, !dbg !68
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !68
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !68
  %conv4 = zext i8 %2 to i32, !dbg !68
  %and = and i32 %conv4, 68, !dbg !68
  %cmp = icmp ne i32 %and, 0, !dbg !68
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !70

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %two_ascii_chars.addr, align 8, !dbg !71
  %arrayidx6 = getelementptr i8, ptr %3, i64 1, !dbg !71
  %4 = load i8, ptr %arrayidx6, align 1, !dbg !71
  %conv7 = zext i8 %4 to i32, !dbg !71
  %conv8 = trunc i32 %conv7 to i8, !dbg !71
  %conv9 = zext i8 %conv8 to i32, !dbg !71
  %idxprom10 = sext i32 %conv9 to i64, !dbg !71
  %arrayidx11 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom10, !dbg !71
  %5 = load i8, ptr %arrayidx11, align 1, !dbg !71
  %conv12 = zext i8 %5 to i32, !dbg !71
  %and13 = and i32 %conv12, 68, !dbg !71
  %cmp14 = icmp ne i32 %and13, 0, !dbg !71
  br i1 %cmp14, label %if.end, label %if.then, !dbg !72

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4101, ptr %retval, align 4, !dbg !73
  br label %return, !dbg !73

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %two_ascii_chars.addr, align 8, !dbg !75
  %arrayidx16 = getelementptr i8, ptr %6, i64 1, !dbg !75
  %7 = load i8, ptr %arrayidx16, align 1, !dbg !75
  %conv17 = zext i8 %7 to i32, !dbg !75
  %call = call zeroext i8 @acpi_ut_ascii_char_to_hex(i32 noundef %conv17) #5, !dbg !76
  %conv18 = zext i8 %call to i32, !dbg !76
  %8 = load ptr, ptr %two_ascii_chars.addr, align 8, !dbg !77
  %arrayidx19 = getelementptr i8, ptr %8, i64 0, !dbg !77
  %9 = load i8, ptr %arrayidx19, align 1, !dbg !77
  %conv20 = zext i8 %9 to i32, !dbg !77
  %call21 = call zeroext i8 @acpi_ut_ascii_char_to_hex(i32 noundef %conv20) #5, !dbg !78
  %conv22 = zext i8 %call21 to i32, !dbg !78
  %shl = shl i32 %conv22, 4, !dbg !79
  %or = or i32 %conv18, %shl, !dbg !80
  %conv23 = trunc i32 %or to i8, !dbg !76
  %10 = load ptr, ptr %return_byte.addr, align 8, !dbg !81
  store i8 %conv23, ptr %10, align 1, !dbg !82
  store i32 0, ptr %retval, align 4, !dbg !83
  br label %return, !dbg !83

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !84
  ret i32 %11, !dbg !84
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_ascii_char_to_hex(i32 noundef %hex_char) #0 align 16 !dbg !85 {
entry:
  %retval = alloca i8, align 1
  %hex_char.addr = alloca i32, align 4
  store i32 %hex_char, ptr %hex_char.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hex_char.addr, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load i32, ptr %hex_char.addr, align 4, !dbg !91
  %cmp = icmp sle i32 %0, 57, !dbg !93
  br i1 %cmp, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %hex_char.addr, align 4, !dbg !95
  %sub = sub i32 %1, 48, !dbg !97
  %conv = trunc i32 %sub to i8, !dbg !98
  store i8 %conv, ptr %retval, align 1, !dbg !99
  br label %return, !dbg !99

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %hex_char.addr, align 4, !dbg !100
  %cmp1 = icmp sle i32 %2, 70, !dbg !102
  br i1 %cmp1, label %if.then3, label %if.end6, !dbg !103

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %hex_char.addr, align 4, !dbg !104
  %sub4 = sub i32 %3, 55, !dbg !106
  %conv5 = trunc i32 %sub4 to i8, !dbg !107
  store i8 %conv5, ptr %retval, align 1, !dbg !108
  br label %return, !dbg !108

if.end6:                                          ; preds = %if.end
  %4 = load i32, ptr %hex_char.addr, align 4, !dbg !109
  %sub7 = sub i32 %4, 87, !dbg !110
  %conv8 = trunc i32 %sub7 to i8, !dbg !111
  store i8 %conv8, ptr %retval, align 1, !dbg !112
  br label %return, !dbg !112

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %5 = load i8, ptr %retval, align 1, !dbg !113
  ret i8 %5, !dbg !113
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_hex_to_ascii", scope: !2, file: !3, line: 17, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.uthex.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22uthex\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/uthex.ll drivers/acpi/acpica/uthex.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/uthex.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd08850cc873eba729b7cbcf07ac343f")
!4 = !{!5, !6, !7, !14}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !8, line: 421, baseType: !9)
!8 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !10, line: 21, baseType: !11)
!10 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !12, line: 27, baseType: !13)
!12 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !10, line: 17, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !12, line: 21, baseType: !6)
!16 = !{!0}
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !20)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !{!21}
!21 = !DISubrange(count: 16)
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 8, !"cf-protection-branch", i32 1}
!26 = !{i32 4, !"function_return_thunk_extern", i32 1}
!27 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!28 = !{i32 1, !"Code Model", i32 2}
!29 = !{i32 1, !"override-stack-alignment", i32 8}
!30 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!31 = distinct !DISubprogram(name: "acpi_ut_hex_to_ascii_char", scope: !3, file: !3, line: 36, type: !32, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !37)
!32 = !DISubroutineType(types: !33)
!33 = !{!19, !34, !9}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !10, line: 23, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !12, line: 31, baseType: !36)
!36 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(name: "integer", arg: 1, scope: !31, file: !3, line: 36, type: !34)
!39 = !DILocalVariable(name: "position", arg: 2, scope: !31, file: !3, line: 36, type: !9)
!40 = !DILocalVariable(name: "index", scope: !31, file: !3, line: 38, type: !34)
!41 = !DILocation(line: 36, column: 36, scope: !31)
!42 = !DILocation(line: 36, column: 49, scope: !31)
!43 = !DILocation(line: 38, column: 2, scope: !31)
!44 = !DILocation(line: 38, column: 6, scope: !31)
!45 = !DILocation(line: 40, column: 28, scope: !31)
!46 = !DILocation(line: 40, column: 37, scope: !31)
!47 = !DILocation(line: 40, column: 2, scope: !31)
!48 = !DILocation(line: 41, column: 32, scope: !31)
!49 = !DILocation(line: 41, column: 38, scope: !31)
!50 = !DILocation(line: 41, column: 10, scope: !31)
!51 = !DILocation(line: 42, column: 1, scope: !31)
!52 = !DILocation(line: 41, column: 2, scope: !31)
!53 = !DISubprogram(name: "acpi_ut_short_shift_right", scope: !54, file: !54, line: 549, type: !55, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!54 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!55 = !DISubroutineType(types: !56)
!56 = !{!7, !34, !9, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!58 = distinct !DISubprogram(name: "acpi_ut_ascii_to_hex_byte", scope: !3, file: !3, line: 58, type: !59, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!59 = !DISubroutineType(types: !60)
!60 = !{!7, !61, !62}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!63 = !{!64, !65}
!64 = !DILocalVariable(name: "two_ascii_chars", arg: 1, scope: !58, file: !3, line: 58, type: !61)
!65 = !DILocalVariable(name: "return_byte", arg: 2, scope: !58, file: !3, line: 58, type: !62)
!66 = !DILocation(line: 58, column: 45, scope: !58)
!67 = !DILocation(line: 58, column: 66, scope: !58)
!68 = !DILocation(line: 63, column: 7, scope: !69)
!69 = distinct !DILexicalBlock(scope: !58, file: !3, line: 63, column: 6)
!70 = !DILocation(line: 63, column: 41, scope: !69)
!71 = !DILocation(line: 64, column: 7, scope: !69)
!72 = !DILocation(line: 63, column: 6, scope: !58)
!73 = !DILocation(line: 65, column: 3, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !3, line: 64, column: 42)
!75 = !DILocation(line: 69, column: 32, scope: !58)
!76 = !DILocation(line: 69, column: 6, scope: !58)
!77 = !DILocation(line: 70, column: 33, scope: !58)
!78 = !DILocation(line: 70, column: 7, scope: !58)
!79 = !DILocation(line: 70, column: 53, scope: !58)
!80 = !DILocation(line: 69, column: 52, scope: !58)
!81 = !DILocation(line: 68, column: 3, scope: !58)
!82 = !DILocation(line: 68, column: 15, scope: !58)
!83 = !DILocation(line: 72, column: 2, scope: !58)
!84 = !DILocation(line: 73, column: 1, scope: !58)
!85 = distinct !DISubprogram(name: "acpi_ut_ascii_char_to_hex", scope: !3, file: !3, line: 88, type: !86, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!14, !5}
!88 = !{!89}
!89 = !DILocalVariable(name: "hex_char", arg: 1, scope: !85, file: !3, line: 88, type: !5)
!90 = !DILocation(line: 88, column: 34, scope: !85)
!91 = !DILocation(line: 93, column: 6, scope: !92)
!92 = distinct !DILexicalBlock(scope: !85, file: !3, line: 93, column: 6)
!93 = !DILocation(line: 93, column: 15, scope: !92)
!94 = !DILocation(line: 93, column: 6, scope: !85)
!95 = !DILocation(line: 94, column: 16, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !3, line: 93, column: 23)
!97 = !DILocation(line: 94, column: 25, scope: !96)
!98 = !DILocation(line: 94, column: 11, scope: !96)
!99 = !DILocation(line: 94, column: 3, scope: !96)
!100 = !DILocation(line: 99, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !85, file: !3, line: 99, column: 6)
!102 = !DILocation(line: 99, column: 15, scope: !101)
!103 = !DILocation(line: 99, column: 6, scope: !85)
!104 = !DILocation(line: 100, column: 16, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !3, line: 99, column: 23)
!106 = !DILocation(line: 100, column: 25, scope: !105)
!107 = !DILocation(line: 100, column: 11, scope: !105)
!108 = !DILocation(line: 100, column: 3, scope: !105)
!109 = !DILocation(line: 105, column: 15, scope: !85)
!110 = !DILocation(line: 105, column: 24, scope: !85)
!111 = !DILocation(line: 105, column: 10, scope: !85)
!112 = !DILocation(line: 105, column: 2, scope: !85)
!113 = !DILocation(line: 106, column: 1, scope: !85)
