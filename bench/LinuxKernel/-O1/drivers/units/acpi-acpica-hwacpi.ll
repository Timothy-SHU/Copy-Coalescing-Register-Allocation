; ModuleID = 'drivers/acpi/acpica/hwacpi.c'
source_filename = "drivers/acpi/acpica/hwacpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>

@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@_acpi_module_name = internal constant [7 x i8] c"hwacpi\00", align 1, !dbg !0
@.str = private unnamed_addr constant [43 x i8] c"No SMI_CMD in FADT, mode transition failed\00", align 1, !dbg !13
@.str.1 = private unnamed_addr constant [76 x i8] c"No ACPI mode transition supported in this system (enable/disable both zero)\00", align 1, !dbg !19
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not write ACPI mode change\00", align 1, !dbg !24

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_set_mode(i32 noundef %mode) #0 align 16 !dbg !42 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !45, metadata !DIExpression()), !dbg !47
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !48
  call void @llvm.dbg.declare(metadata ptr %status, metadata !46, metadata !DIExpression()), !dbg !49
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !50
  %tobool = icmp ne i8 %0, 0, !dbg !50
  br i1 %tobool, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !53
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !53

if.end:                                           ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !55
  %tobool1 = icmp ne i32 %1, 0, !dbg !57
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !58

if.then2:                                         ; preds = %if.end
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 46, ptr noundef @.str) #5, !dbg !59
  store i32 22, ptr %retval, align 4, !dbg !61
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !61

if.end3:                                          ; preds = %if.end
  %2 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 7), align 1, !dbg !62
  %tobool4 = icmp ne i8 %2, 0, !dbg !64
  br i1 %tobool4, label %if.end7, label %land.lhs.true, !dbg !65

land.lhs.true:                                    ; preds = %if.end3
  %3 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 8), align 1, !dbg !66
  %tobool5 = icmp ne i8 %3, 0, !dbg !67
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !68

if.then6:                                         ; preds = %land.lhs.true
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 59, ptr noundef @.str.1) #5, !dbg !69
  store i32 0, ptr %retval, align 4, !dbg !71
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !71

if.end7:                                          ; preds = %land.lhs.true, %if.end3
  %4 = load i32, ptr %mode.addr, align 4, !dbg !72
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
  ], !dbg !73

sw.bb:                                            ; preds = %if.end7
  %5 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !74
  %conv = zext i32 %5 to i64, !dbg !76
  %6 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 7), align 1, !dbg !77
  %conv8 = zext i8 %6 to i32, !dbg !78
  %call = call i32 @acpi_hw_write_port(i64 noundef %conv, i32 noundef %conv8, i32 noundef 8) #5, !dbg !79
  store i32 %call, ptr %status, align 4, !dbg !80
  br label %sw.epilog, !dbg !81

sw.bb9:                                           ; preds = %if.end7
  %7 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !82
  %conv10 = zext i32 %7 to i64, !dbg !83
  %8 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 8), align 1, !dbg !84
  %conv11 = zext i8 %8 to i32, !dbg !85
  %call12 = call i32 @acpi_hw_write_port(i64 noundef %conv10, i32 noundef %conv11, i32 noundef 8) #5, !dbg !86
  store i32 %call12, ptr %status, align 4, !dbg !87
  br label %sw.epilog, !dbg !88

sw.default:                                       ; preds = %if.end7
  store i32 4097, ptr %retval, align 4, !dbg !89
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !89

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  %9 = load i32, ptr %status, align 4, !dbg !90
  %tobool13 = icmp ne i32 %9, 0, !dbg !90
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !92

if.then14:                                        ; preds = %sw.epilog
  %10 = load i32, ptr %status, align 4, !dbg !93
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 93, i32 noundef %10, ptr noundef @.str.2) #5, !dbg !93
  %11 = load i32, ptr %status, align 4, !dbg !95
  store i32 %11, ptr %retval, align 4, !dbg !95
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !95

if.end15:                                         ; preds = %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !96
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !96

cleanup:                                          ; preds = %if.end15, %if.then14, %sw.default, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !97
  %12 = load i32, ptr %retval, align 4, !dbg !97
  ret i32 %12, !dbg !97
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !98 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !103 dso_local i32 @acpi_hw_write_port(i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !111 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_get_mode() #0 align 16 !dbg !114 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %status, metadata !118, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #4, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %value, metadata !119, metadata !DIExpression()), !dbg !123
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !124
  %tobool = icmp ne i8 %0, 0, !dbg !124
  br i1 %tobool, label %if.then, label %if.end, !dbg !126

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !127

if.end:                                           ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !129
  %tobool1 = icmp ne i32 %1, 0, !dbg !131
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !132

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !133

if.end3:                                          ; preds = %if.end
  %call = call i32 @acpi_read_bit_register(i32 noundef 14, ptr noundef %value) #5, !dbg !135
  store i32 %call, ptr %status, align 4, !dbg !136
  %2 = load i32, ptr %status, align 4, !dbg !137
  %tobool4 = icmp ne i32 %2, 0, !dbg !137
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !139

if.then5:                                         ; preds = %if.end3
  store i32 2, ptr %retval, align 4, !dbg !140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !140

if.end6:                                          ; preds = %if.end3
  %3 = load i32, ptr %value, align 4, !dbg !142
  %tobool7 = icmp ne i32 %3, 0, !dbg !142
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !144

if.then8:                                         ; preds = %if.end6
  store i32 1, ptr %retval, align 4, !dbg !145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !145

if.else:                                          ; preds = %if.end6
  store i32 2, ptr %retval, align 4, !dbg !147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !147

cleanup:                                          ; preds = %if.else, %if.then8, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #4, !dbg !149
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !149
  %4 = load i32, ptr %retval, align 4, !dbg !149
  ret i32 %4, !dbg !149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !150 dso_local i32 @acpi_read_bit_register(i32 noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !29, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.hwacpi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22hwacpi\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/hwacpi.ll drivers/acpi/acpica/hwacpi.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwacpi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b7c73e5be8ec6ee449899beaf05d5f1")
!4 = !{!5, !7}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !19, !24, !0}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 344, elements: !17)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !{!18}
!18 = !DISubrange(count: 43)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 608, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 76)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 264, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 33)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 56, elements: !31)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!31 = !{!32}
!32 = !DISubrange(count: 7)
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 8, !"cf-protection-branch", i32 1}
!37 = !{i32 4, !"function_return_thunk_extern", i32 1}
!38 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!39 = !{i32 1, !"Code Model", i32 2}
!40 = !{i32 1, !"override-stack-alignment", i32 8}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = distinct !DISubprogram(name: "acpi_hw_set_mode", scope: !3, file: !3, line: 28, type: !43, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !44)
!43 = !DISubroutineType(types: !4)
!44 = !{!45, !46}
!45 = !DILocalVariable(name: "mode", arg: 1, scope: !42, file: !3, line: 28, type: !7)
!46 = !DILocalVariable(name: "status", scope: !42, file: !3, line: 31, type: !5)
!47 = !DILocation(line: 28, column: 34, scope: !42)
!48 = !DILocation(line: 31, column: 2, scope: !42)
!49 = !DILocation(line: 31, column: 14, scope: !42)
!50 = !DILocation(line: 37, column: 6, scope: !51)
!51 = distinct !DILexicalBlock(scope: !42, file: !3, line: 37, column: 6)
!52 = !DILocation(line: 37, column: 6, scope: !42)
!53 = !DILocation(line: 38, column: 3, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !3, line: 37, column: 33)
!55 = !DILocation(line: 45, column: 21, scope: !56)
!56 = distinct !DILexicalBlock(scope: !42, file: !3, line: 45, column: 6)
!57 = !DILocation(line: 45, column: 7, scope: !56)
!58 = !DILocation(line: 45, column: 6, scope: !42)
!59 = !DILocation(line: 46, column: 3, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !3, line: 45, column: 34)
!61 = !DILocation(line: 48, column: 3, scope: !60)
!62 = !DILocation(line: 58, column: 21, scope: !63)
!63 = distinct !DILexicalBlock(scope: !42, file: !3, line: 58, column: 6)
!64 = !DILocation(line: 58, column: 7, scope: !63)
!65 = !DILocation(line: 58, column: 33, scope: !63)
!66 = !DILocation(line: 58, column: 51, scope: !63)
!67 = !DILocation(line: 58, column: 37, scope: !63)
!68 = !DILocation(line: 58, column: 6, scope: !42)
!69 = !DILocation(line: 59, column: 3, scope: !70)
!70 = distinct !DILexicalBlock(scope: !63, file: !3, line: 58, column: 65)
!71 = !DILocation(line: 62, column: 3, scope: !70)
!72 = !DILocation(line: 65, column: 10, scope: !42)
!73 = !DILocation(line: 65, column: 2, scope: !42)
!74 = !DILocation(line: 70, column: 45, scope: !75)
!75 = distinct !DILexicalBlock(scope: !42, file: !3, line: 65, column: 16)
!76 = !DILocation(line: 70, column: 31, scope: !75)
!77 = !DILocation(line: 71, column: 30, scope: !75)
!78 = !DILocation(line: 71, column: 10, scope: !75)
!79 = !DILocation(line: 70, column: 12, scope: !75)
!80 = !DILocation(line: 70, column: 10, scope: !75)
!81 = !DILocation(line: 74, column: 3, scope: !75)
!82 = !DILocation(line: 81, column: 45, scope: !75)
!83 = !DILocation(line: 81, column: 31, scope: !75)
!84 = !DILocation(line: 82, column: 29, scope: !75)
!85 = !DILocation(line: 82, column: 10, scope: !75)
!86 = !DILocation(line: 81, column: 12, scope: !75)
!87 = !DILocation(line: 81, column: 10, scope: !75)
!88 = !DILocation(line: 85, column: 3, scope: !75)
!89 = !DILocation(line: 89, column: 3, scope: !75)
!90 = !DILocation(line: 92, column: 6, scope: !91)
!91 = distinct !DILexicalBlock(scope: !42, file: !3, line: 92, column: 6)
!92 = !DILocation(line: 92, column: 6, scope: !42)
!93 = !DILocation(line: 93, column: 3, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !3, line: 92, column: 28)
!95 = !DILocation(line: 95, column: 3, scope: !94)
!96 = !DILocation(line: 98, column: 2, scope: !42)
!97 = !DILocation(line: 99, column: 1, scope: !42)
!98 = !DISubprogram(name: "acpi_error", scope: !99, file: !99, line: 901, type: !100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!99 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102, !7, !102, null}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!103 = !DISubprogram(name: "acpi_hw_write_port", scope: !104, file: !104, line: 74, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !107, !7, !7}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !110)
!110 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!111 = !DISubprogram(name: "acpi_exception", scope: !99, file: !99, line: 906, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !102, !7, !5, !102, null}
!114 = distinct !DISubprogram(name: "acpi_hw_get_mode", scope: !3, file: !3, line: 114, type: !115, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!7}
!117 = !{!118, !119}
!118 = !DILocalVariable(name: "status", scope: !114, file: !3, line: 116, type: !5)
!119 = !DILocalVariable(name: "value", scope: !114, file: !3, line: 117, type: !7)
!120 = !DILocation(line: 116, column: 2, scope: !114)
!121 = !DILocation(line: 116, column: 14, scope: !114)
!122 = !DILocation(line: 117, column: 2, scope: !114)
!123 = !DILocation(line: 117, column: 6, scope: !114)
!124 = !DILocation(line: 123, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !114, file: !3, line: 123, column: 6)
!126 = !DILocation(line: 123, column: 6, scope: !114)
!127 = !DILocation(line: 124, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !3, line: 123, column: 33)
!129 = !DILocation(line: 131, column: 21, scope: !130)
!130 = distinct !DILexicalBlock(scope: !114, file: !3, line: 131, column: 6)
!131 = !DILocation(line: 131, column: 7, scope: !130)
!132 = !DILocation(line: 131, column: 6, scope: !114)
!133 = !DILocation(line: 132, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !3, line: 131, column: 34)
!135 = !DILocation(line: 135, column: 11, scope: !114)
!136 = !DILocation(line: 135, column: 9, scope: !114)
!137 = !DILocation(line: 136, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !114, file: !3, line: 136, column: 6)
!139 = !DILocation(line: 136, column: 6, scope: !114)
!140 = !DILocation(line: 137, column: 3, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !3, line: 136, column: 28)
!142 = !DILocation(line: 140, column: 6, scope: !143)
!143 = distinct !DILexicalBlock(scope: !114, file: !3, line: 140, column: 6)
!144 = !DILocation(line: 140, column: 6, scope: !114)
!145 = !DILocation(line: 141, column: 3, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !3, line: 140, column: 13)
!147 = !DILocation(line: 143, column: 3, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !3, line: 142, column: 9)
!149 = !DILocation(line: 145, column: 1, scope: !114)
!150 = !DISubprogram(name: "acpi_read_bit_register", scope: !99, file: !99, line: 856, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DISubroutineType(types: !152)
!152 = !{!5, !7, !153}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
