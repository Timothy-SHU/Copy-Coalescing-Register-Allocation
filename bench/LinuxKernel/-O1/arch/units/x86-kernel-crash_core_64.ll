; ModuleID = 'arch/x86/kernel/crash_core_64.c'
source_filename = "arch/x86/kernel/crash_core_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgd_t = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }

@.str = private unnamed_addr constant [16 x i8] c"NUMBER(%s)=%ld\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"phys_base\00", align 1, !dbg !7
@phys_base = external dso_local global i64, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"SYMBOL(%s)=%lx\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [13 x i8] c"init_top_pgt\00", align 1, !dbg !14
@init_top_pgt = external dso_local global [0 x %struct.pgd_t], align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"NUMBER(pgtable_l5_enabled)=%d\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [10 x i8] c"node_data\00", align 1, !dbg !24
@node_data = external dso_local global [0 x ptr], align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"LENGTH(%s)=%lu\0A\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [18 x i8] c"KERNELOFFSET=%lx\0A\00", align 1, !dbg !28
@.str.8 = private unnamed_addr constant [18 x i8] c"KERNEL_IMAGE_SIZE\00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [9 x i8] c"sme_mask\00", align 1, !dbg !35
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@_text = external dso_local global [0 x i8], align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_crash_save_vmcoreinfo() #0 align 16 !dbg !64 {
entry:
  %sme_mask = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sme_mask) #6, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %sme_mask, metadata !68, metadata !DIExpression()), !dbg !75
  store i64 0, ptr %sme_mask, align 8, !dbg !75
  %0 = load i64, ptr @phys_base, align 8, !dbg !76
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str, ptr noundef @.str.1, i64 noundef %0) #7, !dbg !76
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.2, ptr noundef @.str.3, i64 noundef ptrtoint (ptr @init_top_pgt to i64)) #7, !dbg !77
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #7, !dbg !78
  %conv = zext i1 %call to i32, !dbg !78
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.4, i32 noundef %conv) #7, !dbg !79
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.2, ptr noundef @.str.5, i64 noundef ptrtoint (ptr @node_data to i64)) #7, !dbg !80
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.6, ptr noundef @.str.5, i64 noundef 64) #7, !dbg !81
  %call1 = call i64 @kaslr_offset() #7, !dbg !82
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str.7, i64 noundef %call1) #7, !dbg !83
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str, ptr noundef @.str.8, i64 noundef 1073741824) #7, !dbg !84
  %1 = load i64, ptr %sme_mask, align 8, !dbg !85
  call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef @.str, ptr noundef @.str.9, i64 noundef %1) #7, !dbg !85
  call void @llvm.lifetime.end.p0(i64 8, ptr %sme_mask) #6, !dbg !86
  ret void, !dbg !86
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !87 dso_local void @vmcoreinfo_append_str(ptr noundef, ...) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !91 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !102, metadata !DIExpression()), !dbg !105
  %0 = load i16, ptr %bit.addr, align 2, !dbg !106
  %1 = load i16, ptr %bit.addr, align 2, !dbg !107
  %conv = zext i16 %1 to i32, !dbg !107
  %and = and i32 %conv, 7, !dbg !108
  %shl = shl i32 1, %and, !dbg !109
  %2 = load i16, ptr %bit.addr, align 2, !dbg !110
  %conv1 = zext i16 %2 to i32, !dbg !110
  %shr = ashr i32 %conv1, 3, !dbg !111
  %idxprom = sext i32 %shr to i64, !dbg !112
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !112
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #6
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !113, !srcloc !114

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !113

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !103), !dbg !115
  store i1 true, ptr %retval, align 1, !dbg !116
  br label %return, !dbg !116

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !104), !dbg !117
  store i1 false, ptr %retval, align 1, !dbg !118
  br label %return, !dbg !118

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !119
  ret i1 %3, !dbg !119
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kaslr_offset() #5 align 16 !dbg !120 {
entry:
  ret i64 sub (i64 ptrtoint (ptr @_text to i64), i64 -2130706432), !dbg !124
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!40}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 12, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/crash_core_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "662c02a492406895fb0c6a2d3df25a1e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 12, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !3, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 13)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 14, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 31)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !9, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !3, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 18)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !30, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 9)
!40 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.crash_core_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/crash_core_64\22 -D KBUILD_BASENAME=\22crash_core_64\22 -D KBUILD_MODNAME=\22crash_core_64\22 -D __KBUILD_MODNAME=kmod_crash_core_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/crash_core_64.ll arch/x86/kernel/crash_core_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !48, globals: !54, splitDebugInlining: false, nameTableKind: None)
!41 = !{!42}
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 10, baseType: !44, size: 32, elements: !45)
!43 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "false", value: 0)
!47 = !DIEnumerator(name: "true", value: 1)
!48 = !{!49, !50, !51, !53}
!49 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{!0, !7, !12, !14, !19, !24, !26, !28, !33, !35}
!55 = !{i32 7, !"Dwarf Version", i32 5}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 8, !"cf-protection-branch", i32 1}
!59 = !{i32 4, !"function_return_thunk_extern", i32 1}
!60 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!61 = !{i32 1, !"Code Model", i32 2}
!62 = !{i32 1, !"override-stack-alignment", i32 8}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = distinct !DISubprogram(name: "arch_crash_save_vmcoreinfo", scope: !2, file: !2, line: 8, type: !65, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null}
!67 = !{!68}
!68 = !DILocalVariable(name: "sme_mask", scope: !64, file: !2, line: 10, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !70, line: 23, baseType: !71)
!70 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !72, line: 31, baseType: !73)
!72 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!73 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocation(line: 10, column: 2, scope: !64)
!75 = !DILocation(line: 10, column: 6, scope: !64)
!76 = !DILocation(line: 12, column: 2, scope: !64)
!77 = !DILocation(line: 13, column: 2, scope: !64)
!78 = !DILocation(line: 15, column: 10, scope: !64)
!79 = !DILocation(line: 14, column: 2, scope: !64)
!80 = !DILocation(line: 18, column: 2, scope: !64)
!81 = !DILocation(line: 19, column: 2, scope: !64)
!82 = !DILocation(line: 21, column: 46, scope: !64)
!83 = !DILocation(line: 21, column: 2, scope: !64)
!84 = !DILocation(line: 22, column: 2, scope: !64)
!85 = !DILocation(line: 23, column: 2, scope: !64)
!86 = !DILocation(line: 24, column: 1, scope: !64)
!87 = !DISubprogram(name: "vmcoreinfo_append_str", scope: !88, file: !88, line: 38, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!88 = !DIFile(filename: "./include/linux/crash_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bd649c63340ff894fc599265eb4c65d6")
!89 = !DISubroutineType(types: !90)
!90 = !{null, !51, null}
!91 = distinct !DISubprogram(name: "_static_cpu_has", scope: !92, file: !92, line: 173, type: !93, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !101)
!92 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !98}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !96, line: 35, baseType: !97)
!96 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!97 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !70, line: 19, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !72, line: 24, baseType: !100)
!100 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101 = !{!102, !103, !104}
!102 = !DILocalVariable(name: "bit", arg: 1, scope: !91, file: !92, line: 173, type: !98)
!103 = !DILabel(scope: !91, name: "t_yes", file: !92, line: 187)
!104 = !DILabel(scope: !91, name: "t_no", file: !92, line: 189)
!105 = !DILocation(line: 173, column: 49, scope: !91)
!106 = !DILocation(line: 183, column: 24, scope: !91)
!107 = !DILocation(line: 184, column: 30, scope: !91)
!108 = !DILocation(line: 184, column: 34, scope: !91)
!109 = !DILocation(line: 184, column: 26, scope: !91)
!110 = !DILocation(line: 185, column: 70, scope: !91)
!111 = !DILocation(line: 185, column: 74, scope: !91)
!112 = !DILocation(line: 185, column: 25, scope: !91)
!113 = !DILocation(line: 175, column: 2, scope: !91)
!114 = !{i64 2149584669, i64 2149584702, i64 2149584708, i64 2149584724, i64 2149584743, i64 2149584774, i64 2149585727, i64 2149584316, i64 2149585733, i64 2149585781, i64 2149585845, i64 2149585909, i64 2149585966, i64 2149586173, i64 2149586221, i64 2149586285, i64 2149586349, i64 2149586406, i64 2149584434, i64 2149584459, i64 2149586616, i64 2149586744, i64 2149586677, i64 2149586758, i64 2149586772, i64 2149586888, i64 2149586833, i64 2149586902, i64 2149584593, i64 1711414, i64 1711454, i64 1711463, i64 1711513, i64 1711534, i64 1711554}
!115 = !DILocation(line: 187, column: 1, scope: !91)
!116 = !DILocation(line: 188, column: 2, scope: !91)
!117 = !DILocation(line: 189, column: 1, scope: !91)
!118 = !DILocation(line: 190, column: 2, scope: !91)
!119 = !DILocation(line: 191, column: 1, scope: !91)
!120 = distinct !DISubprogram(name: "kaslr_offset", scope: !121, file: !121, line: 95, type: !122, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40)
!121 = !DIFile(filename: "./arch/x86/include/asm/setup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70163219e3d956dec6d0e7b32cf67c8b")
!122 = !DISubroutineType(types: !123)
!123 = !{!50}
!124 = !DILocation(line: 97, column: 2, scope: !120)
