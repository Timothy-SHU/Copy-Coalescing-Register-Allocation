; ModuleID = 'drivers/acpi/acpica/utstrtoul64.c'
source_filename = "drivers/acpi/acpica/utstrtoul64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_gbl_integer_bit_width = external dso_local global i8, align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_strtoul64(ptr noundef %string, ptr noundef %return_value) #0 align 16 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %original_bit_width = alloca i8, align 1
  %base = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !29, metadata !DIExpression()), !dbg !37
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !30, metadata !DIExpression()), !dbg !38
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !39
  call void @llvm.dbg.declare(metadata ptr %status, metadata !31, metadata !DIExpression()), !dbg !40
  store i32 0, ptr %status, align 4, !dbg !40
  call void @llvm.lifetime.start.p0(i64 1, ptr %original_bit_width) #4, !dbg !41
  call void @llvm.dbg.declare(metadata ptr %original_bit_width, metadata !32, metadata !DIExpression()), !dbg !42
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #4, !dbg !43
  call void @llvm.dbg.declare(metadata ptr %base, metadata !36, metadata !DIExpression()), !dbg !44
  store i32 10, ptr %base, align 4, !dbg !44
  %0 = load ptr, ptr %return_value.addr, align 8, !dbg !45
  store i64 0, ptr %0, align 8, !dbg !46
  %1 = load ptr, ptr %string.addr, align 8, !dbg !47
  %2 = load i8, ptr %1, align 1, !dbg !49
  %conv = zext i8 %2 to i32, !dbg !49
  %cmp = icmp eq i32 %conv, 0, !dbg !50
  br i1 %cmp, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !52
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !52

if.end:                                           ; preds = %entry
  %call = call zeroext i8 @acpi_ut_remove_whitespace(ptr noundef %string.addr) #5, !dbg !54
  %tobool = icmp ne i8 %call, 0, !dbg !54
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !56

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !57
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !57

if.end3:                                          ; preds = %if.end
  %call4 = call zeroext i8 @acpi_ut_detect_hex_prefix(ptr noundef %string.addr) #5, !dbg !59
  %tobool5 = icmp ne i8 %call4, 0, !dbg !59
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !61

if.then6:                                         ; preds = %if.end3
  store i32 16, ptr %base, align 4, !dbg !62
  br label %if.end11, !dbg !64

if.else:                                          ; preds = %if.end3
  %call7 = call zeroext i8 @acpi_ut_detect_octal_prefix(ptr noundef %string.addr) #5, !dbg !65
  %tobool8 = icmp ne i8 %call7, 0, !dbg !65
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !67

if.then9:                                         ; preds = %if.else
  store i32 8, ptr %base, align 4, !dbg !68
  br label %if.end10, !dbg !70

if.end10:                                         ; preds = %if.then9, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then6
  %call12 = call zeroext i8 @acpi_ut_remove_leading_zeros(ptr noundef %string.addr) #5, !dbg !71
  %tobool13 = icmp ne i8 %call12, 0, !dbg !71
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !73

if.then14:                                        ; preds = %if.end11
  store i32 0, ptr %retval, align 4, !dbg !74
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !74

if.end15:                                         ; preds = %if.end11
  %3 = load i8, ptr @acpi_gbl_integer_bit_width, align 1, !dbg !76
  store i8 %3, ptr %original_bit_width, align 1, !dbg !77
  store i8 64, ptr @acpi_gbl_integer_bit_width, align 1, !dbg !78
  %4 = load i32, ptr %base, align 4, !dbg !79
  switch i32 %4, label %sw.default [
    i32 8, label %sw.bb
    i32 10, label %sw.bb17
    i32 16, label %sw.bb19
  ], !dbg !80

sw.bb:                                            ; preds = %if.end15
  %5 = load ptr, ptr %string.addr, align 8, !dbg !81
  %6 = load ptr, ptr %return_value.addr, align 8, !dbg !83
  %call16 = call i32 @acpi_ut_convert_octal_string(ptr noundef %5, ptr noundef %6) #5, !dbg !84
  store i32 %call16, ptr %status, align 4, !dbg !85
  br label %sw.epilog, !dbg !86

sw.bb17:                                          ; preds = %if.end15
  %7 = load ptr, ptr %string.addr, align 8, !dbg !87
  %8 = load ptr, ptr %return_value.addr, align 8, !dbg !88
  %call18 = call i32 @acpi_ut_convert_decimal_string(ptr noundef %7, ptr noundef %8) #5, !dbg !89
  store i32 %call18, ptr %status, align 4, !dbg !90
  br label %sw.epilog, !dbg !91

sw.bb19:                                          ; preds = %if.end15
  br label %sw.default, !dbg !92

sw.default:                                       ; preds = %if.end15, %sw.bb19
  %9 = load ptr, ptr %string.addr, align 8, !dbg !93
  %10 = load ptr, ptr %return_value.addr, align 8, !dbg !94
  %call20 = call i32 @acpi_ut_convert_hex_string(ptr noundef %9, ptr noundef %10) #5, !dbg !95
  store i32 %call20, ptr %status, align 4, !dbg !96
  br label %sw.epilog, !dbg !97

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb
  %11 = load i8, ptr %original_bit_width, align 1, !dbg !98
  store i8 %11, ptr @acpi_gbl_integer_bit_width, align 1, !dbg !99
  %12 = load i32, ptr %status, align 4, !dbg !100
  store i32 %12, ptr %retval, align 4, !dbg !100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !100

cleanup:                                          ; preds = %sw.epilog, %if.then14, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #4, !dbg !101
  call void @llvm.lifetime.end.p0(i64 1, ptr %original_bit_width) #4, !dbg !101
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !101
  %13 = load i32, ptr %retval, align 4, !dbg !101
  ret i32 %13, !dbg !101
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !102 dso_local zeroext i8 @acpi_ut_remove_whitespace(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !107 dso_local zeroext i8 @acpi_ut_detect_hex_prefix(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !110 dso_local zeroext i8 @acpi_ut_detect_octal_prefix(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !111 dso_local zeroext i8 @acpi_ut_remove_leading_zeros(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !112 dso_local i32 @acpi_ut_convert_octal_string(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !113 dso_local i32 @acpi_ut_convert_decimal_string(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !114 dso_local i32 @acpi_ut_convert_hex_string(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @acpi_ut_implicit_strtoul64(ptr noundef %string) #0 align 16 !dbg !115 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca ptr, align 8
  %converted_integer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !119, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 8, ptr %converted_integer) #4, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %converted_integer, metadata !120, metadata !DIExpression()), !dbg !123
  store i64 0, ptr %converted_integer, align 8, !dbg !123
  %call = call zeroext i8 @acpi_ut_remove_whitespace(ptr noundef %string.addr) #5, !dbg !124
  %tobool = icmp ne i8 %call, 0, !dbg !124
  br i1 %tobool, label %if.end, label %if.then, !dbg !126

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !127

if.end:                                           ; preds = %entry
  call void @acpi_ut_remove_hex_prefix(ptr noundef %string.addr) #5, !dbg !129
  %call1 = call zeroext i8 @acpi_ut_remove_leading_zeros(ptr noundef %string.addr) #5, !dbg !130
  %tobool2 = icmp ne i8 %call1, 0, !dbg !130
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !132

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !133

if.end4:                                          ; preds = %if.end
  %0 = load ptr, ptr %string.addr, align 8, !dbg !135
  %call5 = call i32 @acpi_ut_convert_hex_string(ptr noundef %0, ptr noundef %converted_integer) #5, !dbg !136
  %1 = load i64, ptr %converted_integer, align 8, !dbg !137
  store i64 %1, ptr %retval, align 8, !dbg !137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !137

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %converted_integer) #4, !dbg !138
  %2 = load i64, ptr %retval, align 8, !dbg !138
  ret i64 %2, !dbg !138
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !139 dso_local void @acpi_ut_remove_hex_prefix(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @acpi_ut_explicit_strtoul64(ptr noundef %string) #0 align 16 !dbg !142 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca ptr, align 8
  %converted_integer = alloca i64, align 8
  %base = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !144, metadata !DIExpression()), !dbg !147
  call void @llvm.lifetime.start.p0(i64 8, ptr %converted_integer) #4, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %converted_integer, metadata !145, metadata !DIExpression()), !dbg !149
  store i64 0, ptr %converted_integer, align 8, !dbg !149
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #4, !dbg !150
  call void @llvm.dbg.declare(metadata ptr %base, metadata !146, metadata !DIExpression()), !dbg !151
  store i32 10, ptr %base, align 4, !dbg !151
  %call = call zeroext i8 @acpi_ut_remove_whitespace(ptr noundef %string.addr) #5, !dbg !152
  %tobool = icmp ne i8 %call, 0, !dbg !152
  br i1 %tobool, label %if.end, label %if.then, !dbg !154

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !155

if.end:                                           ; preds = %entry
  %call1 = call zeroext i8 @acpi_ut_detect_hex_prefix(ptr noundef %string.addr) #5, !dbg !157
  %tobool2 = icmp ne i8 %call1, 0, !dbg !157
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !159

if.then3:                                         ; preds = %if.end
  store i32 16, ptr %base, align 4, !dbg !160
  br label %if.end4, !dbg !162

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = call zeroext i8 @acpi_ut_remove_leading_zeros(ptr noundef %string.addr) #5, !dbg !163
  %tobool6 = icmp ne i8 %call5, 0, !dbg !163
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !165

if.then7:                                         ; preds = %if.end4
  store i64 0, ptr %retval, align 8, !dbg !166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !166

if.end8:                                          ; preds = %if.end4
  %0 = load i32, ptr %base, align 4, !dbg !168
  switch i32 %0, label %sw.default [
    i32 10, label %sw.bb
    i32 16, label %sw.bb10
  ], !dbg !169

sw.bb:                                            ; preds = %if.end8
  br label %sw.default, !dbg !170

sw.default:                                       ; preds = %if.end8, %sw.bb
  %1 = load ptr, ptr %string.addr, align 8, !dbg !172
  %call9 = call i32 @acpi_ut_convert_decimal_string(ptr noundef %1, ptr noundef %converted_integer) #5, !dbg !173
  br label %sw.epilog, !dbg !174

sw.bb10:                                          ; preds = %if.end8
  %2 = load ptr, ptr %string.addr, align 8, !dbg !175
  %call11 = call i32 @acpi_ut_convert_hex_string(ptr noundef %2, ptr noundef %converted_integer) #5, !dbg !176
  br label %sw.epilog, !dbg !177

sw.epilog:                                        ; preds = %sw.bb10, %sw.default
  %3 = load i64, ptr %converted_integer, align 8, !dbg !178
  store i64 %3, ptr %retval, align 8, !dbg !178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !178

cleanup:                                          ; preds = %sw.epilog, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #4, !dbg !179
  call void @llvm.lifetime.end.p0(i64 8, ptr %converted_integer) #4, !dbg !179
  %4 = load i64, ptr %retval, align 8, !dbg !179
  ret i64 %4, !dbg !179
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utstrtoul64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utstrtoul64\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utstrtoul64.ll drivers/acpi/acpica/utstrtoul64.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utstrtoul64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64a8121a90d449f40705718a1e3f6615")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !4, line: 421, baseType: !5)
!4 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, line: 21, baseType: !7)
!6 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 8, !"cf-protection-branch", i32 1}
!14 = !{i32 4, !"function_return_thunk_extern", i32 1}
!15 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!16 = !{i32 1, !"Code Model", i32 2}
!17 = !{i32 1, !"override-stack-alignment", i32 8}
!18 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!19 = distinct !DISubprogram(name: "acpi_ut_strtoul64", scope: !1, file: !1, line: 80, type: !20, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!20 = !DISubroutineType(types: !21)
!21 = !{!3, !22, !24}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !6, line: 23, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !8, line: 31, baseType: !27)
!27 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{!29, !30, !31, !32, !36}
!29 = !DILocalVariable(name: "string", arg: 1, scope: !19, file: !1, line: 80, type: !22)
!30 = !DILocalVariable(name: "return_value", arg: 2, scope: !19, file: !1, line: 80, type: !24)
!31 = !DILocalVariable(name: "status", scope: !19, file: !1, line: 82, type: !3)
!32 = !DILocalVariable(name: "original_bit_width", scope: !19, file: !1, line: 83, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !6, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !8, line: 21, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DILocalVariable(name: "base", scope: !19, file: !1, line: 84, type: !5)
!37 = !DILocation(line: 80, column: 37, scope: !19)
!38 = !DILocation(line: 80, column: 50, scope: !19)
!39 = !DILocation(line: 82, column: 2, scope: !19)
!40 = !DILocation(line: 82, column: 14, scope: !19)
!41 = !DILocation(line: 83, column: 2, scope: !19)
!42 = !DILocation(line: 83, column: 5, scope: !19)
!43 = !DILocation(line: 84, column: 2, scope: !19)
!44 = !DILocation(line: 84, column: 6, scope: !19)
!45 = !DILocation(line: 88, column: 3, scope: !19)
!46 = !DILocation(line: 88, column: 16, scope: !19)
!47 = !DILocation(line: 92, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !19, file: !1, line: 92, column: 6)
!49 = !DILocation(line: 92, column: 6, scope: !48)
!50 = !DILocation(line: 92, column: 14, scope: !48)
!51 = !DILocation(line: 92, column: 6, scope: !19)
!52 = !DILocation(line: 93, column: 3, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 92, column: 20)
!54 = !DILocation(line: 96, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !19, file: !1, line: 96, column: 6)
!56 = !DILocation(line: 96, column: 6, scope: !19)
!57 = !DILocation(line: 97, column: 3, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 96, column: 43)
!59 = !DILocation(line: 103, column: 6, scope: !60)
!60 = distinct !DILexicalBlock(scope: !19, file: !1, line: 103, column: 6)
!61 = !DILocation(line: 103, column: 6, scope: !19)
!62 = !DILocation(line: 104, column: 8, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 103, column: 42)
!64 = !DILocation(line: 105, column: 2, scope: !63)
!65 = !DILocation(line: 111, column: 11, scope: !66)
!66 = distinct !DILexicalBlock(scope: !60, file: !1, line: 111, column: 11)
!67 = !DILocation(line: 111, column: 11, scope: !60)
!68 = !DILocation(line: 112, column: 8, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !1, line: 111, column: 49)
!70 = !DILocation(line: 113, column: 2, scope: !69)
!71 = !DILocation(line: 115, column: 7, scope: !72)
!72 = distinct !DILexicalBlock(scope: !19, file: !1, line: 115, column: 6)
!73 = !DILocation(line: 115, column: 6, scope: !19)
!74 = !DILocation(line: 116, column: 3, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 115, column: 46)
!76 = !DILocation(line: 124, column: 23, scope: !19)
!77 = !DILocation(line: 124, column: 21, scope: !19)
!78 = !DILocation(line: 125, column: 29, scope: !19)
!79 = !DILocation(line: 131, column: 10, scope: !19)
!80 = !DILocation(line: 131, column: 2, scope: !19)
!81 = !DILocation(line: 133, column: 41, scope: !82)
!82 = distinct !DILexicalBlock(scope: !19, file: !1, line: 131, column: 16)
!83 = !DILocation(line: 133, column: 49, scope: !82)
!84 = !DILocation(line: 133, column: 12, scope: !82)
!85 = !DILocation(line: 133, column: 10, scope: !82)
!86 = !DILocation(line: 134, column: 3, scope: !82)
!87 = !DILocation(line: 137, column: 43, scope: !82)
!88 = !DILocation(line: 137, column: 51, scope: !82)
!89 = !DILocation(line: 137, column: 12, scope: !82)
!90 = !DILocation(line: 137, column: 10, scope: !82)
!91 = !DILocation(line: 138, column: 3, scope: !82)
!92 = !DILocation(line: 140, column: 2, scope: !82)
!93 = !DILocation(line: 142, column: 39, scope: !82)
!94 = !DILocation(line: 142, column: 47, scope: !82)
!95 = !DILocation(line: 142, column: 12, scope: !82)
!96 = !DILocation(line: 142, column: 10, scope: !82)
!97 = !DILocation(line: 143, column: 3, scope: !82)
!98 = !DILocation(line: 148, column: 31, scope: !19)
!99 = !DILocation(line: 148, column: 29, scope: !19)
!100 = !DILocation(line: 149, column: 2, scope: !19)
!101 = !DILocation(line: 150, column: 1, scope: !19)
!102 = !DISubprogram(name: "acpi_ut_remove_whitespace", scope: !103, file: !103, line: 194, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!104 = !DISubroutineType(types: !105)
!105 = !{!23, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!107 = !DISubprogram(name: "acpi_ut_detect_hex_prefix", scope: !103, file: !103, line: 198, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!108 = !DISubroutineType(types: !109)
!109 = !{!33, !106}
!110 = !DISubprogram(name: "acpi_ut_detect_octal_prefix", scope: !103, file: !103, line: 202, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!111 = !DISubprogram(name: "acpi_ut_remove_leading_zeros", scope: !103, file: !103, line: 196, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!112 = !DISubprogram(name: "acpi_ut_convert_octal_string", scope: !103, file: !103, line: 188, type: !20, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubprogram(name: "acpi_ut_convert_decimal_string", scope: !103, file: !103, line: 190, type: !20, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DISubprogram(name: "acpi_ut_convert_hex_string", scope: !103, file: !103, line: 192, type: !20, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = distinct !DISubprogram(name: "acpi_ut_implicit_strtoul64", scope: !1, file: !1, line: 206, type: !116, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{!25, !22}
!118 = !{!119, !120}
!119 = !DILocalVariable(name: "string", arg: 1, scope: !115, file: !1, line: 206, type: !22)
!120 = !DILocalVariable(name: "converted_integer", scope: !115, file: !1, line: 208, type: !25)
!121 = !DILocation(line: 206, column: 38, scope: !115)
!122 = !DILocation(line: 208, column: 2, scope: !115)
!123 = !DILocation(line: 208, column: 6, scope: !115)
!124 = !DILocation(line: 212, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !115, file: !1, line: 212, column: 6)
!126 = !DILocation(line: 212, column: 6, scope: !115)
!127 = !DILocation(line: 213, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 212, column: 43)
!129 = !DILocation(line: 221, column: 2, scope: !115)
!130 = !DILocation(line: 223, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !115, file: !1, line: 223, column: 6)
!132 = !DILocation(line: 223, column: 6, scope: !115)
!133 = !DILocation(line: 224, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !1, line: 223, column: 46)
!135 = !DILocation(line: 232, column: 29, scope: !115)
!136 = !DILocation(line: 232, column: 2, scope: !115)
!137 = !DILocation(line: 233, column: 2, scope: !115)
!138 = !DILocation(line: 234, column: 1, scope: !115)
!139 = !DISubprogram(name: "acpi_ut_remove_hex_prefix", scope: !103, file: !103, line: 200, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !106}
!142 = distinct !DISubprogram(name: "acpi_ut_explicit_strtoul64", scope: !1, file: !1, line: 287, type: !116, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !143)
!143 = !{!144, !145, !146}
!144 = !DILocalVariable(name: "string", arg: 1, scope: !142, file: !1, line: 287, type: !22)
!145 = !DILocalVariable(name: "converted_integer", scope: !142, file: !1, line: 289, type: !25)
!146 = !DILocalVariable(name: "base", scope: !142, file: !1, line: 290, type: !5)
!147 = !DILocation(line: 287, column: 38, scope: !142)
!148 = !DILocation(line: 289, column: 2, scope: !142)
!149 = !DILocation(line: 289, column: 6, scope: !142)
!150 = !DILocation(line: 290, column: 2, scope: !142)
!151 = !DILocation(line: 290, column: 6, scope: !142)
!152 = !DILocation(line: 294, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !142, file: !1, line: 294, column: 6)
!154 = !DILocation(line: 294, column: 6, scope: !142)
!155 = !DILocation(line: 295, column: 3, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !1, line: 294, column: 43)
!157 = !DILocation(line: 302, column: 6, scope: !158)
!158 = distinct !DILexicalBlock(scope: !142, file: !1, line: 302, column: 6)
!159 = !DILocation(line: 302, column: 6, scope: !142)
!160 = !DILocation(line: 303, column: 8, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !1, line: 302, column: 42)
!162 = !DILocation(line: 304, column: 2, scope: !161)
!163 = !DILocation(line: 306, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !142, file: !1, line: 306, column: 6)
!165 = !DILocation(line: 306, column: 6, scope: !142)
!166 = !DILocation(line: 307, column: 3, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !1, line: 306, column: 46)
!168 = !DILocation(line: 315, column: 10, scope: !142)
!169 = !DILocation(line: 315, column: 2, scope: !142)
!170 = !DILocation(line: 316, column: 2, scope: !171)
!171 = distinct !DILexicalBlock(scope: !142, file: !1, line: 315, column: 16)
!172 = !DILocation(line: 318, column: 34, scope: !171)
!173 = !DILocation(line: 318, column: 3, scope: !171)
!174 = !DILocation(line: 319, column: 3, scope: !171)
!175 = !DILocation(line: 322, column: 30, scope: !171)
!176 = !DILocation(line: 322, column: 3, scope: !171)
!177 = !DILocation(line: 323, column: 3, scope: !171)
!178 = !DILocation(line: 326, column: 2, scope: !142)
!179 = !DILocation(line: 327, column: 1, scope: !142)
