; ModuleID = 'arch/x86/kernel/audit_64.c'
source_filename = "arch/x86/kernel/audit_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_audit_64__287_80_audit_classes_init\22, \22a\22\09\09"
module asm "__initcall__kmod_audit_64__287_80_audit_classes_init6:\09\09\09"
module asm ".long\09__initstub__kmod_audit_64__287_80_audit_classes_init6 - .\09"
module asm ".previous\09\09\09\09\09"

@__UNIQUE_ID___addressable___initstub__kmod_audit_64__287_80_audit_classes_init6288 = internal global ptr @__initstub__kmod_audit_64__287_80_audit_classes_init6, section ".discard.addressable", align 8, !dbg !0
@ia32_write_class = external dso_local global [0 x i32], align 4
@ia32_read_class = external dso_local global [0 x i32], align 4
@ia32_dir_class = external dso_local global [0 x i32], align 4
@ia32_chattr_class = external dso_local global [0 x i32], align 4
@ia32_signal_class = external dso_local global [0 x i32], align 4
@write_class = internal global [23 x i32] [i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 133, i32 258, i32 259, i32 263, i32 264, i32 265, i32 266, i32 316, i32 163, i32 167, i32 179, i32 76, i32 77, i32 49, i32 285, i32 -1], align 16, !dbg !20
@read_class = internal global [10 x i32] [i32 89, i32 179, i32 194, i32 195, i32 196, i32 191, i32 192, i32 193, i32 267, i32 -1], align 16, !dbg !25
@dir_class = internal global [16 x i32] [i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 133, i32 258, i32 259, i32 263, i32 264, i32 265, i32 266, i32 316, i32 -1], align 16, !dbg !30
@chattr_class = internal global [16 x i32] [i32 90, i32 91, i32 92, i32 94, i32 93, i32 188, i32 189, i32 190, i32 197, i32 198, i32 199, i32 260, i32 268, i32 86, i32 265, i32 -1], align 16, !dbg !35
@signal_class = internal global [4 x i32] [i32 62, i32 234, i32 200, i32 -1], align 16, !dbg !37
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_audit_64__287_80_audit_classes_init6288], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @audit_classify_arch(i32 noundef %arch) #0 align 16 !dbg !51 {
entry:
  %retval = alloca i32, align 4
  %arch.addr = alloca i32, align 4
  store i32 %arch, ptr %arch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arch.addr, metadata !56, metadata !DIExpression()), !dbg !57
  %0 = load i32, ptr %arch.addr, align 4, !dbg !58
  %cmp = icmp eq i32 %0, 1073741827, !dbg !60
  br i1 %cmp, label %if.then, label %if.end, !dbg !61

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !62
  br label %return, !dbg !62

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !63
  br label %return, !dbg !63

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !64
  ret i32 %1, !dbg !64
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @audit_classify_syscall(i32 noundef %abi, i32 noundef %syscall) #0 align 16 !dbg !65 {
entry:
  %retval = alloca i32, align 4
  %abi.addr = alloca i32, align 4
  %syscall.addr = alloca i32, align 4
  store i32 %abi, ptr %abi.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %abi.addr, metadata !69, metadata !DIExpression()), !dbg !71
  store i32 %syscall, ptr %syscall.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %syscall.addr, metadata !70, metadata !DIExpression()), !dbg !72
  %0 = load i32, ptr %abi.addr, align 4, !dbg !73
  %cmp = icmp eq i32 %0, 1073741827, !dbg !75
  br i1 %cmp, label %if.then, label %if.end, !dbg !76

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %syscall.addr, align 4, !dbg !77
  %call = call i32 @ia32_classify_syscall(i32 noundef %1) #5, !dbg !78
  store i32 %call, ptr %retval, align 4, !dbg !79
  br label %return, !dbg !79

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %syscall.addr, align 4, !dbg !80
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 257, label %sw.bb1
    i32 59, label %sw.bb2
    i32 322, label %sw.bb2
    i32 437, label %sw.bb3
  ], !dbg !81

sw.bb:                                            ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !82
  br label %return, !dbg !82

sw.bb1:                                           ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !84
  br label %return, !dbg !84

sw.bb2:                                           ; preds = %if.end, %if.end
  store i32 5, ptr %retval, align 4, !dbg !85
  br label %return, !dbg !85

sw.bb3:                                           ; preds = %if.end
  store i32 6, ptr %retval, align 4, !dbg !86
  br label %return, !dbg !86

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !87
  br label %return, !dbg !87

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !88
  ret i32 %3, !dbg !88
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !89 dso_local i32 @ia32_classify_syscall(i32 noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_audit_64__287_80_audit_classes_init6() #3 section ".init.text" align 16 !dbg !93 {
entry:
  %call = call i32 @audit_classes_init() #6, !dbg !96
  ret i32 %call, !dbg !96
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @audit_classes_init() #3 section ".init.text" align 16 !dbg !97 {
entry:
  %call = call i32 @audit_register_class(i32 noundef 7, ptr noundef @ia32_write_class) #6, !dbg !98
  %call1 = call i32 @audit_register_class(i32 noundef 5, ptr noundef @ia32_read_class) #6, !dbg !99
  %call2 = call i32 @audit_register_class(i32 noundef 1, ptr noundef @ia32_dir_class) #6, !dbg !100
  %call3 = call i32 @audit_register_class(i32 noundef 3, ptr noundef @ia32_chattr_class) #6, !dbg !101
  %call4 = call i32 @audit_register_class(i32 noundef 9, ptr noundef @ia32_signal_class) #6, !dbg !102
  %call5 = call i32 @audit_register_class(i32 noundef 6, ptr noundef @write_class) #6, !dbg !103
  %call6 = call i32 @audit_register_class(i32 noundef 4, ptr noundef @read_class) #6, !dbg !104
  %call7 = call i32 @audit_register_class(i32 noundef 0, ptr noundef @dir_class) #6, !dbg !105
  %call8 = call i32 @audit_register_class(i32 noundef 2, ptr noundef @chattr_class) #6, !dbg !106
  %call9 = call i32 @audit_register_class(i32 noundef 8, ptr noundef @signal_class) #6, !dbg !107
  ret i32 0, !dbg !108
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !109 dso_local i32 @audit_register_class(i32 noundef, ptr noundef) #4 section ".init.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_audit_64__287_80_audit_classes_init6288", scope: !2, file: !3, line: 80, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.audit_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/audit_64\22 -D KBUILD_BASENAME=\22audit_64\22 -D KBUILD_MODNAME=\22audit_64\22 -D __KBUILD_MODNAME=kmod_audit_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/audit_64.ll arch/x86/kernel/audit_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/audit_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b96b600264ee890b4e754d9b0eaed4dc")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "auditsc_class_t", file: !6, line: 12, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/audit_arch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff304580e5e1c119cb96ebe0cc7cb6c")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "AUDITSC_NATIVE", value: 0)
!10 = !DIEnumerator(name: "AUDITSC_COMPAT", value: 1)
!11 = !DIEnumerator(name: "AUDITSC_OPEN", value: 2)
!12 = !DIEnumerator(name: "AUDITSC_OPENAT", value: 3)
!13 = !DIEnumerator(name: "AUDITSC_SOCKETCALL", value: 4)
!14 = !DIEnumerator(name: "AUDITSC_EXECVE", value: 5)
!15 = !DIEnumerator(name: "AUDITSC_OPENAT2", value: 6)
!16 = !DIEnumerator(name: "AUDITSC_NVALS", value: 7)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !{!0, !20, !25, !30, !35, !37}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "write_class", scope: !2, file: !3, line: 18, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 736, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 23)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "read_class", scope: !2, file: !3, line: 13, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 10)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "dir_class", scope: !2, file: !3, line: 8, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 16)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "chattr_class", scope: !2, file: !3, line: 23, type: !32, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "signal_class", scope: !2, file: !3, line: 28, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 4)
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 8, !"cf-protection-branch", i32 1}
!46 = !{i32 4, !"function_return_thunk_extern", i32 1}
!47 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!48 = !{i32 1, !"Code Model", i32 2}
!49 = !{i32 1, !"override-stack-alignment", i32 8}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = distinct !DISubprogram(name: "audit_classify_arch", scope: !3, file: !3, line: 33, type: !52, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !55)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !54}
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !{!56}
!56 = !DILocalVariable(name: "arch", arg: 1, scope: !51, file: !3, line: 33, type: !54)
!57 = !DILocation(line: 33, column: 29, scope: !51)
!58 = !DILocation(line: 36, column: 6, scope: !59)
!59 = distinct !DILexicalBlock(scope: !51, file: !3, line: 36, column: 6)
!60 = !DILocation(line: 36, column: 11, scope: !59)
!61 = !DILocation(line: 36, column: 6, scope: !51)
!62 = !DILocation(line: 37, column: 3, scope: !59)
!63 = !DILocation(line: 39, column: 2, scope: !51)
!64 = !DILocation(line: 40, column: 1, scope: !51)
!65 = distinct !DISubprogram(name: "audit_classify_syscall", scope: !3, file: !3, line: 42, type: !66, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DISubroutineType(types: !67)
!67 = !{!54, !54, !7}
!68 = !{!69, !70}
!69 = !DILocalVariable(name: "abi", arg: 1, scope: !65, file: !3, line: 42, type: !54)
!70 = !DILocalVariable(name: "syscall", arg: 2, scope: !65, file: !3, line: 42, type: !7)
!71 = !DILocation(line: 42, column: 32, scope: !65)
!72 = !DILocation(line: 42, column: 46, scope: !65)
!73 = !DILocation(line: 45, column: 6, scope: !74)
!74 = distinct !DILexicalBlock(scope: !65, file: !3, line: 45, column: 6)
!75 = !DILocation(line: 45, column: 10, scope: !74)
!76 = !DILocation(line: 45, column: 6, scope: !65)
!77 = !DILocation(line: 46, column: 32, scope: !74)
!78 = !DILocation(line: 46, column: 10, scope: !74)
!79 = !DILocation(line: 46, column: 3, scope: !74)
!80 = !DILocation(line: 48, column: 9, scope: !65)
!81 = !DILocation(line: 48, column: 2, scope: !65)
!82 = !DILocation(line: 50, column: 3, scope: !83)
!83 = distinct !DILexicalBlock(scope: !65, file: !3, line: 48, column: 18)
!84 = !DILocation(line: 52, column: 3, scope: !83)
!85 = !DILocation(line: 55, column: 3, scope: !83)
!86 = !DILocation(line: 57, column: 3, scope: !83)
!87 = !DILocation(line: 59, column: 3, scope: !83)
!88 = !DILocation(line: 61, column: 1, scope: !65)
!89 = !DISubprogram(name: "ia32_classify_syscall", scope: !90, file: !90, line: 5, type: !91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!90 = !DIFile(filename: "./arch/x86/include/asm/audit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d121ca89aa7956a11ec1459e793ae883")
!91 = !DISubroutineType(types: !92)
!92 = !{!54, !7}
!93 = distinct !DISubprogram(name: "__initstub__kmod_audit_64__287_80_audit_classes_init6", scope: !3, file: !3, line: 80, type: !94, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!94 = !DISubroutineType(types: !95)
!95 = !{!54}
!96 = !DILocation(line: 80, column: 1, scope: !93)
!97 = distinct !DISubprogram(name: "audit_classes_init", scope: !3, file: !3, line: 63, type: !94, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!98 = !DILocation(line: 66, column: 2, scope: !97)
!99 = !DILocation(line: 67, column: 2, scope: !97)
!100 = !DILocation(line: 68, column: 2, scope: !97)
!101 = !DILocation(line: 69, column: 2, scope: !97)
!102 = !DILocation(line: 70, column: 2, scope: !97)
!103 = !DILocation(line: 72, column: 2, scope: !97)
!104 = !DILocation(line: 73, column: 2, scope: !97)
!105 = !DILocation(line: 74, column: 2, scope: !97)
!106 = !DILocation(line: 75, column: 2, scope: !97)
!107 = !DILocation(line: 76, column: 2, scope: !97)
!108 = !DILocation(line: 77, column: 2, scope: !97)
!109 = !DISubprogram(name: "audit_register_class", scope: !110, file: !110, line: 125, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DIFile(filename: "./include/linux/audit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51efc630de17afc22cb4c49faf2d3079")
!111 = !DISubroutineType(types: !112)
!112 = !{!54, !54, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
