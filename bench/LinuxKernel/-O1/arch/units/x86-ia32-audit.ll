; ModuleID = 'arch/x86/ia32/audit.c'
source_filename = "arch/x86/ia32/audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ia32_dir_class = hidden global [16 x i32] [i32 38, i32 39, i32 40, i32 8, i32 9, i32 10, i32 83, i32 14, i32 296, i32 297, i32 301, i32 302, i32 303, i32 304, i32 353, i32 -1], align 16, !dbg !0
@ia32_chattr_class = hidden global [19 x i32] [i32 15, i32 94, i32 182, i32 16, i32 95, i32 226, i32 227, i32 228, i32 235, i32 236, i32 237, i32 298, i32 306, i32 212, i32 207, i32 198, i32 9, i32 303, i32 -1], align 16, !dbg !18
@ia32_write_class = hidden global [25 x i32] [i32 38, i32 39, i32 40, i32 8, i32 9, i32 10, i32 83, i32 14, i32 296, i32 297, i32 301, i32 302, i32 303, i32 304, i32 353, i32 51, i32 87, i32 131, i32 92, i32 193, i32 93, i32 194, i32 361, i32 324, i32 -1], align 16, !dbg !23
@ia32_read_class = hidden global [10 x i32] [i32 85, i32 131, i32 232, i32 233, i32 234, i32 229, i32 230, i32 231, i32 305, i32 -1], align 16, !dbg !28
@ia32_signal_class = hidden global [4 x i32] [i32 37, i32 270, i32 238, i32 -1], align 16, !dbg !33

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ia32_classify_syscall(i32 noundef %syscall) #0 align 16 !dbg !50 {
entry:
  %retval = alloca i32, align 4
  %syscall.addr = alloca i32, align 4
  store i32 %syscall, ptr %syscall.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %syscall.addr, metadata !55, metadata !DIExpression()), !dbg !56
  %0 = load i32, ptr %syscall.addr, align 4, !dbg !57
  switch i32 %0, label %sw.default [
    i32 5, label %sw.bb
    i32 295, label %sw.bb1
    i32 102, label %sw.bb2
    i32 11, label %sw.bb3
    i32 358, label %sw.bb3
    i32 437, label %sw.bb4
  ], !dbg !58

sw.bb:                                            ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !59
  br label %return, !dbg !59

sw.bb1:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !61
  br label %return, !dbg !61

sw.bb2:                                           ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !62
  br label %return, !dbg !62

sw.bb3:                                           ; preds = %entry, %entry
  store i32 5, ptr %retval, align 4, !dbg !63
  br label %return, !dbg !63

sw.bb4:                                           ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !64
  br label %return, !dbg !64

sw.default:                                       ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !65
  br label %return, !dbg !65

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4, !dbg !66
  ret i32 %1, !dbg !66
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ia32_dir_class", scope: !2, file: !3, line: 6, type: !38, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/ia32/.audit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/ia32/audit\22 -D KBUILD_BASENAME=\22audit\22 -D KBUILD_MODNAME=\22audit\22 -D __KBUILD_MODNAME=kmod_audit -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/ia32/audit.ll arch/x86/ia32/audit.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/ia32/audit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af17b6552e9a331f44f274122f3efb3e")
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
!17 = !{!0, !18, !23, !28, !33}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "ia32_chattr_class", scope: !2, file: !3, line: 11, type: !20, isLocal: false, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 608, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 19)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "ia32_write_class", scope: !2, file: !3, line: 16, type: !25, isLocal: false, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 800, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 25)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "ia32_read_class", scope: !2, file: !3, line: 21, type: !30, isLocal: false, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 10)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "ia32_signal_class", scope: !2, file: !3, line: 26, type: !35, isLocal: false, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 4)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 16)
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 8, !"cf-protection-branch", i32 1}
!45 = !{i32 4, !"function_return_thunk_extern", i32 1}
!46 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!47 = !{i32 1, !"Code Model", i32 2}
!48 = !{i32 1, !"override-stack-alignment", i32 8}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = distinct !DISubprogram(name: "ia32_classify_syscall", scope: !3, file: !3, line: 31, type: !51, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !7}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{!55}
!55 = !DILocalVariable(name: "syscall", arg: 1, scope: !50, file: !3, line: 31, type: !7)
!56 = !DILocation(line: 31, column: 36, scope: !50)
!57 = !DILocation(line: 33, column: 10, scope: !50)
!58 = !DILocation(line: 33, column: 2, scope: !50)
!59 = !DILocation(line: 35, column: 3, scope: !60)
!60 = distinct !DILexicalBlock(scope: !50, file: !3, line: 33, column: 19)
!61 = !DILocation(line: 37, column: 3, scope: !60)
!62 = !DILocation(line: 39, column: 3, scope: !60)
!63 = !DILocation(line: 42, column: 3, scope: !60)
!64 = !DILocation(line: 44, column: 3, scope: !60)
!65 = !DILocation(line: 46, column: 3, scope: !60)
!66 = !DILocation(line: 48, column: 1, scope: !50)
