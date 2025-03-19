; ModuleID = 'arch/x86/mm/pgprot.c'
source_filename = "arch/x86/mm/pgprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vm_get_page_prot: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad vm_get_page_prot ; .previous"

%struct.pgprot = type { i64 }

@protection_map = internal global [16 x %struct.pgprot] [%struct.pgprot { i64 288 }, %struct.pgprot { i64 -9223372036854775771 }, %struct.pgprot { i64 -9223372036854775771 }, %struct.pgprot { i64 -9223372036854775771 }, %struct.pgprot { i64 37 }, %struct.pgprot { i64 37 }, %struct.pgprot { i64 37 }, %struct.pgprot { i64 37 }, %struct.pgprot { i64 288 }, %struct.pgprot { i64 -9223372036854775771 }, %struct.pgprot { i64 -9223372036854775769 }, %struct.pgprot { i64 -9223372036854775769 }, %struct.pgprot { i64 37 }, %struct.pgprot { i64 37 }, %struct.pgprot { i64 39 }, %struct.pgprot { i64 39 }], section ".data..ro_after_init", align 16, !dbg !0
@__supported_pte_mask = external dso_local global i64, align 8
@__UNIQUE_ID___addressable_vm_get_page_prot277 = internal global ptr @vm_get_page_prot, section ".discard.addressable", align 8, !dbg !11
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_vm_get_page_prot277], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @add_encrypt_protection_map() #0 align 16 !dbg !31 {
entry:
  %i = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !37
  call void @llvm.dbg.declare(metadata ptr %i, metadata !35, metadata !DIExpression()), !dbg !38
  store i32 0, ptr %i, align 4, !dbg !39
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !42
  %conv = zext i32 %0 to i64, !dbg !42
  %cmp = icmp ult i64 %conv, 16, !dbg !44
  br i1 %cmp, label %for.body, label %for.end, !dbg !45

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !46
  %idxprom = zext i32 %1 to i64, !dbg !47
  %arrayidx = getelementptr [16 x %struct.pgprot], ptr @protection_map, i64 0, i64 %idxprom, !dbg !47
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !48
  %2 = load i32, ptr %i, align 4, !dbg !48
  %idxprom2 = zext i32 %2 to i64, !dbg !48
  %arrayidx3 = getelementptr [16 x %struct.pgprot], ptr @protection_map, i64 0, i64 %idxprom2, !dbg !48
  %pgprot4 = getelementptr inbounds %struct.pgprot, ptr %arrayidx3, i32 0, i32 0, !dbg !48
  %3 = load i64, ptr %pgprot4, align 8, !dbg !48
  %call = call i64 @cc_mkenc(i64 noundef %3) #6, !dbg !48
  store i64 %call, ptr %pgprot, align 8, !dbg !48
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !48
  br label %for.inc, !dbg !47

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !49
  %inc = add i32 %4, 1, !dbg !49
  store i32 %inc, ptr %i, align 4, !dbg !49
  br label %for.cond, !dbg !50, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !55
  ret void, !dbg !55
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cc_mkenc(i64 noundef %val) #3 align 16 !dbg !56 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = load i64, ptr %val.addr, align 8, !dbg !68
  ret i64 %0, !dbg !69
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @vm_get_page_prot(i64 noundef %vm_flags) #0 align 16 !dbg !70 {
entry:
  %retval = alloca %struct.pgprot, align 8
  %vm_flags.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %vm_flags, ptr %vm_flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vm_flags.addr, metadata !74, metadata !DIExpression()), !dbg !76
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #5, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %val, metadata !75, metadata !DIExpression()), !dbg !78
  %0 = load i64, ptr %vm_flags.addr, align 8, !dbg !79
  %and = and i64 %0, 15, !dbg !79
  %arrayidx = getelementptr [16 x %struct.pgprot], ptr @protection_map, i64 0, i64 %and, !dbg !79
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %arrayidx, i32 0, i32 0, !dbg !79
  %1 = load i64, ptr %pgprot, align 8, !dbg !79
  store i64 %1, ptr %val, align 8, !dbg !78
  %2 = load i64, ptr %vm_flags.addr, align 8, !dbg !80
  %and1 = and i64 %2, 4294967296, !dbg !82
  %tobool = icmp ne i64 %and1, 0, !dbg !82
  br i1 %tobool, label %if.then, label %if.end, !dbg !83

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %val, align 8, !dbg !84
  %or = or i64 %3, 576460752303423488, !dbg !84
  store i64 %or, ptr %val, align 8, !dbg !84
  br label %if.end, !dbg !85

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %vm_flags.addr, align 8, !dbg !86
  %and2 = and i64 %4, 8589934592, !dbg !88
  %tobool3 = icmp ne i64 %and2, 0, !dbg !88
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !89

if.then4:                                         ; preds = %if.end
  %5 = load i64, ptr %val, align 8, !dbg !90
  %or5 = or i64 %5, 1152921504606846976, !dbg !90
  store i64 %or5, ptr %val, align 8, !dbg !90
  br label %if.end6, !dbg !91

if.end6:                                          ; preds = %if.then4, %if.end
  %6 = load i64, ptr %vm_flags.addr, align 8, !dbg !92
  %and7 = and i64 %6, 17179869184, !dbg !94
  %tobool8 = icmp ne i64 %and7, 0, !dbg !94
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !95

if.then9:                                         ; preds = %if.end6
  %7 = load i64, ptr %val, align 8, !dbg !96
  %or10 = or i64 %7, 2305843009213693952, !dbg !96
  store i64 %or10, ptr %val, align 8, !dbg !96
  br label %if.end11, !dbg !97

if.end11:                                         ; preds = %if.then9, %if.end6
  %8 = load i64, ptr %vm_flags.addr, align 8, !dbg !98
  %and12 = and i64 %8, 34359738368, !dbg !100
  %tobool13 = icmp ne i64 %and12, 0, !dbg !100
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !101

if.then14:                                        ; preds = %if.end11
  %9 = load i64, ptr %val, align 8, !dbg !102
  %or15 = or i64 %9, 4611686018427387904, !dbg !102
  store i64 %or15, ptr %val, align 8, !dbg !102
  br label %if.end16, !dbg !103

if.end16:                                         ; preds = %if.then14, %if.end11
  %10 = load i64, ptr %val, align 8, !dbg !104
  store i64 %10, ptr %val, align 8, !dbg !105
  %11 = load i64, ptr %val, align 8, !dbg !106
  %and17 = and i64 %11, 1, !dbg !108
  %tobool18 = icmp ne i64 %and17, 0, !dbg !108
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !109

if.then19:                                        ; preds = %if.end16
  %12 = load i64, ptr @__supported_pte_mask, align 8, !dbg !110
  %13 = load i64, ptr %val, align 8, !dbg !111
  %and20 = and i64 %13, %12, !dbg !111
  store i64 %and20, ptr %val, align 8, !dbg !111
  br label %if.end21, !dbg !112

if.end21:                                         ; preds = %if.then19, %if.end16
  %pgprot22 = getelementptr inbounds %struct.pgprot, ptr %retval, i32 0, i32 0, !dbg !113
  %14 = load i64, ptr %val, align 8, !dbg !113
  store i64 %14, ptr %pgprot22, align 8, !dbg !113
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #5, !dbg !114
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %retval, i32 0, i32 0, !dbg !114
  %15 = load i64, ptr %coerce.dive, align 8, !dbg !114
  ret i64 %15, !dbg !114
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "protection_map", scope: !2, file: !3, line: 8, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/.pgprot.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/mm/pgprot\22 -D KBUILD_BASENAME=\22pgprot\22 -D KBUILD_MODNAME=\22pgprot\22 -D __KBUILD_MODNAME=kmod_pgprot -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/pgprot.ll arch/x86/mm/pgprot.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/mm/pgprot.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "397d2174d46dc9222da2bb9b44517727")
!4 = !{!5, !6, !9}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !7, line: 14, baseType: !8)
!7 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !{!11, !0}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vm_get_page_prot277", scope: !2, file: !3, line: 63, type: !9, isLocal: true, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1024, elements: !20)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !15, line: 297, baseType: !16)
!15 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !15, line: 297, size: 64, elements: !17)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !16, file: !15, line: 297, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !7, line: 19, baseType: !8)
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
!31 = distinct !DISubprogram(name: "add_encrypt_protection_map", scope: !3, file: !3, line: 27, type: !32, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{null}
!34 = !{!35}
!35 = !DILocalVariable(name: "i", scope: !31, file: !3, line: 29, type: !36)
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 29, column: 2, scope: !31)
!38 = !DILocation(line: 29, column: 15, scope: !31)
!39 = !DILocation(line: 31, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !31, file: !3, line: 31, column: 2)
!41 = !DILocation(line: 31, column: 7, scope: !40)
!42 = !DILocation(line: 31, column: 14, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !3, line: 31, column: 2)
!44 = !DILocation(line: 31, column: 16, scope: !43)
!45 = !DILocation(line: 31, column: 2, scope: !40)
!46 = !DILocation(line: 32, column: 18, scope: !43)
!47 = !DILocation(line: 32, column: 3, scope: !43)
!48 = !DILocation(line: 32, column: 23, scope: !43)
!49 = !DILocation(line: 31, column: 47, scope: !43)
!50 = !DILocation(line: 31, column: 2, scope: !43)
!51 = distinct !{!51, !45, !52, !53, !54}
!52 = !DILocation(line: 32, column: 23, scope: !40)
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !DILocation(line: 33, column: 1, scope: !31)
!56 = distinct !DISubprogram(name: "cc_mkenc", scope: !57, file: !57, line: 30, type: !58, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!57 = !DIFile(filename: "./arch/x86/include/asm/coco.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86b21b242eb5d608419a067ab7dfc6d8")
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !60}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !61, line: 23, baseType: !62)
!61 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !63, line: 31, baseType: !64)
!63 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!64 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!65 = !{!66}
!66 = !DILocalVariable(name: "val", arg: 1, scope: !56, file: !57, line: 30, type: !60)
!67 = !DILocation(line: 30, column: 32, scope: !56)
!68 = !DILocation(line: 32, column: 9, scope: !56)
!69 = !DILocation(line: 32, column: 2, scope: !56)
!70 = distinct !DISubprogram(name: "vm_get_page_prot", scope: !3, file: !3, line: 35, type: !71, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !73)
!71 = !DISubroutineType(types: !72)
!72 = !{!14, !8}
!73 = !{!74, !75}
!74 = !DILocalVariable(name: "vm_flags", arg: 1, scope: !70, file: !3, line: 35, type: !8)
!75 = !DILocalVariable(name: "val", scope: !70, file: !3, line: 37, type: !8)
!76 = !DILocation(line: 35, column: 41, scope: !70)
!77 = !DILocation(line: 37, column: 2, scope: !70)
!78 = !DILocation(line: 37, column: 16, scope: !70)
!79 = !DILocation(line: 37, column: 22, scope: !70)
!80 = !DILocation(line: 48, column: 6, scope: !81)
!81 = distinct !DILexicalBlock(scope: !70, file: !3, line: 48, column: 6)
!82 = !DILocation(line: 48, column: 15, scope: !81)
!83 = !DILocation(line: 48, column: 6, scope: !70)
!84 = !DILocation(line: 49, column: 7, scope: !81)
!85 = !DILocation(line: 49, column: 3, scope: !81)
!86 = !DILocation(line: 50, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !70, file: !3, line: 50, column: 6)
!88 = !DILocation(line: 50, column: 15, scope: !87)
!89 = !DILocation(line: 50, column: 6, scope: !70)
!90 = !DILocation(line: 51, column: 7, scope: !87)
!91 = !DILocation(line: 51, column: 3, scope: !87)
!92 = !DILocation(line: 52, column: 6, scope: !93)
!93 = distinct !DILexicalBlock(scope: !70, file: !3, line: 52, column: 6)
!94 = !DILocation(line: 52, column: 15, scope: !93)
!95 = !DILocation(line: 52, column: 6, scope: !70)
!96 = !DILocation(line: 53, column: 7, scope: !93)
!97 = !DILocation(line: 53, column: 3, scope: !93)
!98 = !DILocation(line: 54, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !70, file: !3, line: 54, column: 6)
!100 = !DILocation(line: 54, column: 15, scope: !99)
!101 = !DILocation(line: 54, column: 6, scope: !70)
!102 = !DILocation(line: 55, column: 7, scope: !99)
!103 = !DILocation(line: 55, column: 3, scope: !99)
!104 = !DILocation(line: 58, column: 8, scope: !70)
!105 = !DILocation(line: 58, column: 6, scope: !70)
!106 = !DILocation(line: 59, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !70, file: !3, line: 59, column: 6)
!108 = !DILocation(line: 59, column: 10, scope: !107)
!109 = !DILocation(line: 59, column: 6, scope: !70)
!110 = !DILocation(line: 60, column: 10, scope: !107)
!111 = !DILocation(line: 60, column: 7, scope: !107)
!112 = !DILocation(line: 60, column: 3, scope: !107)
!113 = !DILocation(line: 61, column: 9, scope: !70)
!114 = !DILocation(line: 62, column: 1, scope: !70)
