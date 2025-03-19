; ModuleID = 'arch/x86/lib/cache-smp.c'
source_filename = "arch/x86/lib/cache-smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_wbinvd_on_cpu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad wbinvd_on_cpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_wbinvd_on_all_cpus: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad wbinvd_on_all_cpus ; .previous"

%struct.cpumask = type { [1 x i64] }

@__UNIQUE_ID___addressable_wbinvd_on_cpu43 = internal global ptr @wbinvd_on_cpu, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_wbinvd_on_all_cpus44 = internal global ptr @wbinvd_on_all_cpus, section ".discard.addressable", align 8, !dbg !17
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_wbinvd_on_cpu43, ptr @__UNIQUE_ID___addressable_wbinvd_on_all_cpus44], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @wbinvd_on_cpu(i32 noundef %cpu) #0 align 16 !dbg !28 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !33, metadata !DIExpression()), !dbg !34
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !35
  %call = call i32 @smp_call_function_single(i32 noundef %0, ptr noundef @__wbinvd, ptr noundef null, i32 noundef 1) #5, !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !38 dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wbinvd(ptr noundef %dummy) #0 align 16 !dbg !46 {
entry:
  %dummy.addr = alloca ptr, align 8
  store ptr %dummy, ptr %dummy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dummy.addr, metadata !48, metadata !DIExpression()), !dbg !49
  call void @wbinvd() #5, !dbg !50
  ret void, !dbg !51
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @wbinvd_on_all_cpus() #0 align 16 !dbg !52 {
entry:
  call void @on_each_cpu(ptr noundef @__wbinvd, ptr noundef null, i32 noundef 1) #5, !dbg !55
  ret i32 0, !dbg !56
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @on_each_cpu(ptr noundef %func, ptr noundef %info, i32 noundef %wait) #3 align 16 !dbg !57 {
entry:
  %func.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %wait.addr = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !61, metadata !DIExpression()), !dbg !64
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !62, metadata !DIExpression()), !dbg !65
  store i32 %wait, ptr %wait.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !63, metadata !DIExpression()), !dbg !66
  %0 = load ptr, ptr %func.addr, align 8, !dbg !67
  %1 = load ptr, ptr %info.addr, align 8, !dbg !68
  %2 = load i32, ptr %wait.addr, align 4, !dbg !69
  %tobool = icmp ne i32 %2, 0, !dbg !69
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef %0, ptr noundef %1, i1 noundef zeroext %tobool, ptr noundef @__cpu_online_mask) #5, !dbg !70
  ret void, !dbg !71
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wbinvd() #4 align 16 !dbg !72 {
entry:
  call void @native_wbinvd() #5, !dbg !76
  ret void, !dbg !77
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_wbinvd() #4 align 16 !dbg !78 {
entry:
  call void asm sideeffect "wbinvd", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !79, !srcloc !80
  ret void, !dbg !81
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !82 dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_wbinvd_on_cpu43", scope: !2, file: !3, line: 14, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.cache-smp.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/cache-smp\22 -D KBUILD_BASENAME=\22cache_smp\22 -D KBUILD_MODNAME=\22cache_smp\22 -D __KBUILD_MODNAME=kmod_cache_smp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/cache-smp.ll arch/x86/lib/cache-smp.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/cache-smp.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9277f20f9dcb0c3b7f159776cebddbb3")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !9, line: 19, size: 64, elements: !10)
!9 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !8, file: !9, line: 19, baseType: !12, size: 64)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !14)
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DISubrange(count: 1)
!16 = !{!0, !17}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_wbinvd_on_all_cpus44", scope: !2, file: !3, line: 21, type: !5, isLocal: true, isDefinition: true)
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 8, !"cf-protection-branch", i32 1}
!23 = !{i32 4, !"function_return_thunk_extern", i32 1}
!24 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!25 = !{i32 1, !"Code Model", i32 2}
!26 = !{i32 1, !"override-stack-alignment", i32 8}
!27 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!28 = distinct !DISubprogram(name: "wbinvd_on_cpu", scope: !3, file: !3, line: 10, type: !29, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !32)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{!33}
!33 = !DILocalVariable(name: "cpu", arg: 1, scope: !28, file: !3, line: 10, type: !31)
!34 = !DILocation(line: 10, column: 24, scope: !28)
!35 = !DILocation(line: 12, column: 27, scope: !28)
!36 = !DILocation(line: 12, column: 2, scope: !28)
!37 = !DILocation(line: 13, column: 1, scope: !28)
!38 = !DISubprogram(name: "smp_call_function_single", scope: !39, file: !39, line: 50, type: !40, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!39 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!40 = !DISubroutineType(types: !41)
!41 = !{!31, !31, !42, !5, !31}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !39, line: 17, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !5}
!46 = distinct !DISubprogram(name: "__wbinvd", scope: !3, file: !3, line: 5, type: !44, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!47 = !{!48}
!48 = !DILocalVariable(name: "dummy", arg: 1, scope: !46, file: !3, line: 5, type: !5)
!49 = !DILocation(line: 5, column: 28, scope: !46)
!50 = !DILocation(line: 7, column: 2, scope: !46)
!51 = !DILocation(line: 8, column: 1, scope: !46)
!52 = distinct !DISubprogram(name: "wbinvd_on_all_cpus", scope: !3, file: !3, line: 16, type: !53, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!53 = !DISubroutineType(types: !54)
!54 = !{!31}
!55 = !DILocation(line: 18, column: 2, scope: !52)
!56 = !DILocation(line: 19, column: 2, scope: !52)
!57 = distinct !DISubprogram(name: "on_each_cpu", scope: !39, file: !39, line: 69, type: !58, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !42, !5, !31}
!60 = !{!61, !62, !63}
!61 = !DILocalVariable(name: "func", arg: 1, scope: !57, file: !39, line: 69, type: !42)
!62 = !DILocalVariable(name: "info", arg: 2, scope: !57, file: !39, line: 69, type: !5)
!63 = !DILocalVariable(name: "wait", arg: 3, scope: !57, file: !39, line: 69, type: !31)
!64 = !DILocation(line: 69, column: 48, scope: !57)
!65 = !DILocation(line: 69, column: 60, scope: !57)
!66 = !DILocation(line: 69, column: 70, scope: !57)
!67 = !DILocation(line: 71, column: 30, scope: !57)
!68 = !DILocation(line: 71, column: 36, scope: !57)
!69 = !DILocation(line: 71, column: 42, scope: !57)
!70 = !DILocation(line: 71, column: 2, scope: !57)
!71 = !DILocation(line: 72, column: 1, scope: !57)
!72 = distinct !DISubprogram(name: "wbinvd", scope: !73, file: !73, line: 171, type: !74, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!73 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!74 = !DISubroutineType(types: !75)
!75 = !{null}
!76 = !DILocation(line: 173, column: 2, scope: !72)
!77 = !DILocation(line: 174, column: 1, scope: !72)
!78 = distinct !DISubprogram(name: "native_wbinvd", scope: !73, file: !73, line: 118, type: !74, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!79 = !DILocation(line: 120, column: 2, scope: !78)
!80 = !{i64 1871464}
!81 = !DILocation(line: 121, column: 1, scope: !78)
!82 = !DISubprogram(name: "on_each_cpu_cond_mask", scope: !39, file: !39, line: 53, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85, !42, !5, !89, !6}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_cond_func_t", file: !39, line: 18, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !31, !5}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !90, line: 35, baseType: !91)
!90 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!91 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
