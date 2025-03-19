; ModuleID = 'drivers/acpi/acpica/utmath.c'
source_filename = "drivers/acpi/acpica/utmath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_acpi_module_name = internal constant [7 x i8] c"utmath\00", align 1, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"Divide by zero\00", align 1, !dbg !13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_short_multiply(i64 noundef %multiplicand, i32 noundef %multiplier, ptr noundef %out_product) #0 align 16 !dbg !32 {
entry:
  %multiplicand.addr = alloca i64, align 8
  %multiplier.addr = alloca i32, align 4
  %out_product.addr = alloca ptr, align 8
  store i64 %multiplicand, ptr %multiplicand.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %multiplicand.addr, metadata !40, metadata !DIExpression()), !dbg !43
  store i32 %multiplier, ptr %multiplier.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %multiplier.addr, metadata !41, metadata !DIExpression()), !dbg !44
  store ptr %out_product, ptr %out_product.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_product.addr, metadata !42, metadata !DIExpression()), !dbg !45
  %0 = load ptr, ptr %out_product.addr, align 8, !dbg !46
  %tobool = icmp ne ptr %0, null, !dbg !46
  br i1 %tobool, label %if.then, label %if.end, !dbg !48

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %multiplicand.addr, align 8, !dbg !49
  %2 = load i32, ptr %multiplier.addr, align 4, !dbg !51
  %conv = zext i32 %2 to i64, !dbg !51
  %mul = mul i64 %1, %conv, !dbg !52
  %3 = load ptr, ptr %out_product.addr, align 8, !dbg !53
  store i64 %mul, ptr %3, align 8, !dbg !54
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !56
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_short_shift_left(i64 noundef %operand, i32 noundef %count, ptr noundef %out_result) #0 align 16 !dbg !57 {
entry:
  %operand.addr = alloca i64, align 8
  %count.addr = alloca i32, align 4
  %out_result.addr = alloca ptr, align 8
  store i64 %operand, ptr %operand.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %operand.addr, metadata !59, metadata !DIExpression()), !dbg !62
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !60, metadata !DIExpression()), !dbg !63
  store ptr %out_result, ptr %out_result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_result.addr, metadata !61, metadata !DIExpression()), !dbg !64
  %0 = load ptr, ptr %out_result.addr, align 8, !dbg !65
  %tobool = icmp ne ptr %0, null, !dbg !65
  br i1 %tobool, label %if.then, label %if.end, !dbg !67

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %operand.addr, align 8, !dbg !68
  %2 = load i32, ptr %count.addr, align 4, !dbg !70
  %sh_prom = zext i32 %2 to i64, !dbg !71
  %shl = shl i64 %1, %sh_prom, !dbg !71
  %3 = load ptr, ptr %out_result.addr, align 8, !dbg !72
  store i64 %shl, ptr %3, align 8, !dbg !73
  br label %if.end, !dbg !74

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !75
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_short_shift_right(i64 noundef %operand, i32 noundef %count, ptr noundef %out_result) #0 align 16 !dbg !76 {
entry:
  %operand.addr = alloca i64, align 8
  %count.addr = alloca i32, align 4
  %out_result.addr = alloca ptr, align 8
  store i64 %operand, ptr %operand.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %operand.addr, metadata !78, metadata !DIExpression()), !dbg !81
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !79, metadata !DIExpression()), !dbg !82
  store ptr %out_result, ptr %out_result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_result.addr, metadata !80, metadata !DIExpression()), !dbg !83
  %0 = load ptr, ptr %out_result.addr, align 8, !dbg !84
  %tobool = icmp ne ptr %0, null, !dbg !84
  br i1 %tobool, label %if.then, label %if.end, !dbg !86

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %operand.addr, align 8, !dbg !87
  %2 = load i32, ptr %count.addr, align 4, !dbg !89
  %sh_prom = zext i32 %2 to i64, !dbg !90
  %shr = lshr i64 %1, %sh_prom, !dbg !90
  %3 = load ptr, ptr %out_result.addr, align 8, !dbg !91
  store i64 %shr, ptr %3, align 8, !dbg !92
  br label %if.end, !dbg !93

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !94
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_short_divide(i64 noundef %in_dividend, i32 noundef %divisor, ptr noundef %out_quotient, ptr noundef %out_remainder) #0 align 16 !dbg !95 {
entry:
  %retval = alloca i32, align 4
  %in_dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %out_quotient.addr = alloca ptr, align 8
  %out_remainder.addr = alloca ptr, align 8
  store i64 %in_dividend, ptr %in_dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_dividend.addr, metadata !100, metadata !DIExpression()), !dbg !104
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !101, metadata !DIExpression()), !dbg !105
  store ptr %out_quotient, ptr %out_quotient.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_quotient.addr, metadata !102, metadata !DIExpression()), !dbg !106
  store ptr %out_remainder, ptr %out_remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_remainder.addr, metadata !103, metadata !DIExpression()), !dbg !107
  %0 = load i32, ptr %divisor.addr, align 4, !dbg !108
  %cmp = icmp eq i32 %0, 0, !dbg !110
  br i1 %cmp, label %if.then, label %if.end, !dbg !111

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 453, ptr noundef @.str) #3, !dbg !112
  store i32 12300, ptr %retval, align 4, !dbg !114
  br label %return, !dbg !114

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %out_quotient.addr, align 8, !dbg !115
  %tobool = icmp ne ptr %1, null, !dbg !115
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !117

if.then1:                                         ; preds = %if.end
  %2 = load i64, ptr %in_dividend.addr, align 8, !dbg !118
  %3 = load i32, ptr %divisor.addr, align 4, !dbg !120
  %conv = zext i32 %3 to i64, !dbg !120
  %div = udiv i64 %2, %conv, !dbg !121
  %4 = load ptr, ptr %out_quotient.addr, align 8, !dbg !122
  store i64 %div, ptr %4, align 8, !dbg !123
  br label %if.end2, !dbg !124

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = load ptr, ptr %out_remainder.addr, align 8, !dbg !125
  %tobool3 = icmp ne ptr %5, null, !dbg !125
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !127

if.then4:                                         ; preds = %if.end2
  %6 = load i64, ptr %in_dividend.addr, align 8, !dbg !128
  %7 = load i32, ptr %divisor.addr, align 4, !dbg !130
  %conv5 = zext i32 %7 to i64, !dbg !130
  %rem = urem i64 %6, %conv5, !dbg !131
  %conv6 = trunc i64 %rem to i32, !dbg !132
  %8 = load ptr, ptr %out_remainder.addr, align 8, !dbg !133
  store i32 %conv6, ptr %8, align 4, !dbg !134
  br label %if.end7, !dbg !135

if.end7:                                          ; preds = %if.then4, %if.end2
  store i32 0, ptr %retval, align 4, !dbg !136
  br label %return, !dbg !136

return:                                           ; preds = %if.end7, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !137
  ret i32 %9, !dbg !137
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !138 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_divide(i64 noundef %in_dividend, i64 noundef %in_divisor, ptr noundef %out_quotient, ptr noundef %out_remainder) #0 align 16 !dbg !143 {
entry:
  %retval = alloca i32, align 4
  %in_dividend.addr = alloca i64, align 8
  %in_divisor.addr = alloca i64, align 8
  %out_quotient.addr = alloca ptr, align 8
  %out_remainder.addr = alloca ptr, align 8
  store i64 %in_dividend, ptr %in_dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_dividend.addr, metadata !147, metadata !DIExpression()), !dbg !151
  store i64 %in_divisor, ptr %in_divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_divisor.addr, metadata !148, metadata !DIExpression()), !dbg !152
  store ptr %out_quotient, ptr %out_quotient.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_quotient.addr, metadata !149, metadata !DIExpression()), !dbg !153
  store ptr %out_remainder, ptr %out_remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_remainder.addr, metadata !150, metadata !DIExpression()), !dbg !154
  %0 = load i64, ptr %in_divisor.addr, align 8, !dbg !155
  %cmp = icmp eq i64 %0, 0, !dbg !157
  br i1 %cmp, label %if.then, label %if.end, !dbg !158

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 478, ptr noundef @.str) #3, !dbg !159
  store i32 12300, ptr %retval, align 4, !dbg !161
  br label %return, !dbg !161

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %out_quotient.addr, align 8, !dbg !162
  %tobool = icmp ne ptr %1, null, !dbg !162
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !164

if.then1:                                         ; preds = %if.end
  %2 = load i64, ptr %in_dividend.addr, align 8, !dbg !165
  %3 = load i64, ptr %in_divisor.addr, align 8, !dbg !167
  %div = udiv i64 %2, %3, !dbg !168
  %4 = load ptr, ptr %out_quotient.addr, align 8, !dbg !169
  store i64 %div, ptr %4, align 8, !dbg !170
  br label %if.end2, !dbg !171

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = load ptr, ptr %out_remainder.addr, align 8, !dbg !172
  %tobool3 = icmp ne ptr %5, null, !dbg !172
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !174

if.then4:                                         ; preds = %if.end2
  %6 = load i64, ptr %in_dividend.addr, align 8, !dbg !175
  %7 = load i64, ptr %in_divisor.addr, align 8, !dbg !177
  %rem = urem i64 %6, %7, !dbg !178
  %8 = load ptr, ptr %out_remainder.addr, align 8, !dbg !179
  store i64 %rem, ptr %8, align 8, !dbg !180
  br label %if.end5, !dbg !181

if.end5:                                          ; preds = %if.then4, %if.end2
  store i32 0, ptr %retval, align 4, !dbg !182
  br label %return, !dbg !182

return:                                           ; preds = %if.end5, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !183
  ret i32 %9, !dbg !183
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 12, type: !19, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utmath.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utmath\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utmath.ll drivers/acpi/acpica/utmath.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utmath.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7bf6a8d77fc1b8ca7161bebb88d1a086")
!4 = !{!5, !7}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !0}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !3, line: 453, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 120, elements: !17)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !{!18}
!18 = !DISubrange(count: 15)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 56, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!21 = !{!22}
!22 = !DISubrange(count: 7)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 8, !"cf-protection-branch", i32 1}
!27 = !{i32 4, !"function_return_thunk_extern", i32 1}
!28 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!29 = !{i32 1, !"Code Model", i32 2}
!30 = !{i32 1, !"override-stack-alignment", i32 8}
!31 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!32 = distinct !DISubprogram(name: "acpi_ut_short_multiply", scope: !3, file: !3, line: 165, type: !33, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!33 = !DISubroutineType(types: !34)
!34 = !{!5, !35, !7, !38}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !37)
!37 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!39 = !{!40, !41, !42}
!40 = !DILocalVariable(name: "multiplicand", arg: 1, scope: !32, file: !3, line: 165, type: !35)
!41 = !DILocalVariable(name: "multiplier", arg: 2, scope: !32, file: !3, line: 165, type: !7)
!42 = !DILocalVariable(name: "out_product", arg: 3, scope: !32, file: !3, line: 165, type: !38)
!43 = !DILocation(line: 165, column: 28, scope: !32)
!44 = !DILocation(line: 165, column: 46, scope: !32)
!45 = !DILocation(line: 165, column: 63, scope: !32)
!46 = !DILocation(line: 172, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !32, file: !3, line: 172, column: 6)
!48 = !DILocation(line: 172, column: 6, scope: !32)
!49 = !DILocation(line: 173, column: 18, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !3, line: 172, column: 19)
!51 = !DILocation(line: 173, column: 33, scope: !50)
!52 = !DILocation(line: 173, column: 31, scope: !50)
!53 = !DILocation(line: 173, column: 4, scope: !50)
!54 = !DILocation(line: 173, column: 16, scope: !50)
!55 = !DILocation(line: 174, column: 2, scope: !50)
!56 = !DILocation(line: 176, column: 2, scope: !32)
!57 = distinct !DISubprogram(name: "acpi_ut_short_shift_left", scope: !3, file: !3, line: 189, type: !33, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !58)
!58 = !{!59, !60, !61}
!59 = !DILocalVariable(name: "operand", arg: 1, scope: !57, file: !3, line: 189, type: !35)
!60 = !DILocalVariable(name: "count", arg: 2, scope: !57, file: !3, line: 189, type: !7)
!61 = !DILocalVariable(name: "out_result", arg: 3, scope: !57, file: !3, line: 189, type: !38)
!62 = !DILocation(line: 189, column: 42, scope: !57)
!63 = !DILocation(line: 189, column: 55, scope: !57)
!64 = !DILocation(line: 189, column: 67, scope: !57)
!65 = !DILocation(line: 196, column: 6, scope: !66)
!66 = distinct !DILexicalBlock(scope: !57, file: !3, line: 196, column: 6)
!67 = !DILocation(line: 196, column: 6, scope: !57)
!68 = !DILocation(line: 197, column: 17, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !3, line: 196, column: 18)
!70 = !DILocation(line: 197, column: 28, scope: !69)
!71 = !DILocation(line: 197, column: 25, scope: !69)
!72 = !DILocation(line: 197, column: 4, scope: !69)
!73 = !DILocation(line: 197, column: 15, scope: !69)
!74 = !DILocation(line: 198, column: 2, scope: !69)
!75 = !DILocation(line: 200, column: 2, scope: !57)
!76 = distinct !DISubprogram(name: "acpi_ut_short_shift_right", scope: !3, file: !3, line: 213, type: !33, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!77 = !{!78, !79, !80}
!78 = !DILocalVariable(name: "operand", arg: 1, scope: !76, file: !3, line: 213, type: !35)
!79 = !DILocalVariable(name: "count", arg: 2, scope: !76, file: !3, line: 213, type: !7)
!80 = !DILocalVariable(name: "out_result", arg: 3, scope: !76, file: !3, line: 213, type: !38)
!81 = !DILocation(line: 213, column: 43, scope: !76)
!82 = !DILocation(line: 213, column: 56, scope: !76)
!83 = !DILocation(line: 213, column: 68, scope: !76)
!84 = !DILocation(line: 220, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !76, file: !3, line: 220, column: 6)
!86 = !DILocation(line: 220, column: 6, scope: !76)
!87 = !DILocation(line: 221, column: 17, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !3, line: 220, column: 18)
!89 = !DILocation(line: 221, column: 28, scope: !88)
!90 = !DILocation(line: 221, column: 25, scope: !88)
!91 = !DILocation(line: 221, column: 4, scope: !88)
!92 = !DILocation(line: 221, column: 15, scope: !88)
!93 = !DILocation(line: 222, column: 2, scope: !88)
!94 = !DILocation(line: 224, column: 2, scope: !76)
!95 = distinct !DISubprogram(name: "acpi_ut_short_divide", scope: !3, file: !3, line: 444, type: !96, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!96 = !DISubroutineType(types: !97)
!97 = !{!5, !35, !7, !38, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!99 = !{!100, !101, !102, !103}
!100 = !DILocalVariable(name: "in_dividend", arg: 1, scope: !95, file: !3, line: 444, type: !35)
!101 = !DILocalVariable(name: "divisor", arg: 2, scope: !95, file: !3, line: 445, type: !7)
!102 = !DILocalVariable(name: "out_quotient", arg: 3, scope: !95, file: !3, line: 445, type: !38)
!103 = !DILocalVariable(name: "out_remainder", arg: 4, scope: !95, file: !3, line: 445, type: !98)
!104 = !DILocation(line: 444, column: 26, scope: !95)
!105 = !DILocation(line: 445, column: 12, scope: !95)
!106 = !DILocation(line: 445, column: 26, scope: !95)
!107 = !DILocation(line: 445, column: 45, scope: !95)
!108 = !DILocation(line: 452, column: 6, scope: !109)
!109 = distinct !DILexicalBlock(scope: !95, file: !3, line: 452, column: 6)
!110 = !DILocation(line: 452, column: 14, scope: !109)
!111 = !DILocation(line: 452, column: 6, scope: !95)
!112 = !DILocation(line: 453, column: 3, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !3, line: 452, column: 20)
!114 = !DILocation(line: 454, column: 3, scope: !113)
!115 = !DILocation(line: 459, column: 6, scope: !116)
!116 = distinct !DILexicalBlock(scope: !95, file: !3, line: 459, column: 6)
!117 = !DILocation(line: 459, column: 6, scope: !95)
!118 = !DILocation(line: 460, column: 19, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !3, line: 459, column: 20)
!120 = !DILocation(line: 460, column: 33, scope: !119)
!121 = !DILocation(line: 460, column: 31, scope: !119)
!122 = !DILocation(line: 460, column: 4, scope: !119)
!123 = !DILocation(line: 460, column: 17, scope: !119)
!124 = !DILocation(line: 461, column: 2, scope: !119)
!125 = !DILocation(line: 462, column: 6, scope: !126)
!126 = distinct !DILexicalBlock(scope: !95, file: !3, line: 462, column: 6)
!127 = !DILocation(line: 462, column: 6, scope: !95)
!128 = !DILocation(line: 463, column: 27, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !3, line: 462, column: 21)
!130 = !DILocation(line: 463, column: 41, scope: !129)
!131 = !DILocation(line: 463, column: 39, scope: !129)
!132 = !DILocation(line: 463, column: 20, scope: !129)
!133 = !DILocation(line: 463, column: 4, scope: !129)
!134 = !DILocation(line: 463, column: 18, scope: !129)
!135 = !DILocation(line: 464, column: 2, scope: !129)
!136 = !DILocation(line: 466, column: 2, scope: !95)
!137 = !DILocation(line: 467, column: 1, scope: !95)
!138 = !DISubprogram(name: "acpi_error", scope: !139, file: !139, line: 901, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!140 = !DISubroutineType(types: !141)
!141 = !{null, !142, !7, !142, null}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!143 = distinct !DISubprogram(name: "acpi_ut_divide", scope: !3, file: !3, line: 470, type: !144, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !146)
!144 = !DISubroutineType(types: !145)
!145 = !{!5, !35, !35, !38, !38}
!146 = !{!147, !148, !149, !150}
!147 = !DILocalVariable(name: "in_dividend", arg: 1, scope: !143, file: !3, line: 470, type: !35)
!148 = !DILocalVariable(name: "in_divisor", arg: 2, scope: !143, file: !3, line: 471, type: !35)
!149 = !DILocalVariable(name: "out_quotient", arg: 3, scope: !143, file: !3, line: 471, type: !38)
!150 = !DILocalVariable(name: "out_remainder", arg: 4, scope: !143, file: !3, line: 471, type: !38)
!151 = !DILocation(line: 470, column: 20, scope: !143)
!152 = !DILocation(line: 471, column: 13, scope: !143)
!153 = !DILocation(line: 471, column: 30, scope: !143)
!154 = !DILocation(line: 471, column: 49, scope: !143)
!155 = !DILocation(line: 477, column: 6, scope: !156)
!156 = distinct !DILexicalBlock(scope: !143, file: !3, line: 477, column: 6)
!157 = !DILocation(line: 477, column: 17, scope: !156)
!158 = !DILocation(line: 477, column: 6, scope: !143)
!159 = !DILocation(line: 478, column: 3, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !3, line: 477, column: 23)
!161 = !DILocation(line: 479, column: 3, scope: !160)
!162 = !DILocation(line: 484, column: 6, scope: !163)
!163 = distinct !DILexicalBlock(scope: !143, file: !3, line: 484, column: 6)
!164 = !DILocation(line: 484, column: 6, scope: !143)
!165 = !DILocation(line: 485, column: 19, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !3, line: 484, column: 20)
!167 = !DILocation(line: 485, column: 33, scope: !166)
!168 = !DILocation(line: 485, column: 31, scope: !166)
!169 = !DILocation(line: 485, column: 4, scope: !166)
!170 = !DILocation(line: 485, column: 17, scope: !166)
!171 = !DILocation(line: 486, column: 2, scope: !166)
!172 = !DILocation(line: 487, column: 6, scope: !173)
!173 = distinct !DILexicalBlock(scope: !143, file: !3, line: 487, column: 6)
!174 = !DILocation(line: 487, column: 6, scope: !143)
!175 = !DILocation(line: 488, column: 20, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !3, line: 487, column: 21)
!177 = !DILocation(line: 488, column: 34, scope: !176)
!178 = !DILocation(line: 488, column: 32, scope: !176)
!179 = !DILocation(line: 488, column: 4, scope: !176)
!180 = !DILocation(line: 488, column: 18, scope: !176)
!181 = !DILocation(line: 489, column: 2, scope: !176)
!182 = !DILocation(line: 491, column: 2, scope: !143)
!183 = !DILocation(line: 492, column: 1, scope: !143)
