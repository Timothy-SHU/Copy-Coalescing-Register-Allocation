; ModuleID = 'drivers/gpu/drm/ttm/ttm_module.c'
source_filename = "drivers/gpu/drm/ttm/ttm_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.pgprot = type { i64 }
%struct.anon = type { i8, i8, i8, i8 }

@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@__UNIQUE_ID_author274 = internal constant [43 x i8] c"ttm.author=Thomas Hellstrom, Jerome Glisse\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description275 = internal constant [62 x i8] c"ttm.description=TTM memory manager subsystem (for DRM device)\00", section ".modinfo", align 1, !dbg !23
@__UNIQUE_ID_file276 = internal constant [33 x i8] c"ttm.file=drivers/gpu/drm/ttm/ttm\00", section ".modinfo", align 1, !dbg !30
@__UNIQUE_ID_license277 = internal constant [38 x i8] c"ttm.license=GPL and additional rights\00", section ".modinfo", align 1, !dbg !35
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ttm_prot_from_caching(i32 noundef %caching, i64 %tmp.coerce) #0 align 16 !dbg !52 {
entry:
  %retval = alloca %struct.pgprot, align 8
  %tmp = alloca %struct.pgprot, align 8
  %caching.addr = alloca i32, align 4
  %tmp3 = alloca %struct.pgprot, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %tmp, i32 0, i32 0
  store i64 %tmp.coerce, ptr %coerce.dive, align 8
  store i32 %caching, ptr %caching.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %caching.addr, metadata !63, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !64, metadata !DIExpression()), !dbg !66
  %0 = load i32, ptr %caching.addr, align 4, !dbg !67
  %cmp = icmp eq i32 %0, 2, !dbg !69
  br i1 %cmp, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %tmp, i64 8, i1 false), !dbg !71
  br label %return, !dbg !72

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %caching.addr, align 4, !dbg !73
  %cmp1 = icmp eq i32 %1, 1, !dbg !75
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !76

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp3) #5, !dbg !77
  %coerce.dive4 = getelementptr inbounds %struct.pgprot, ptr %tmp, i32 0, i32 0, !dbg !77
  %2 = load i64, ptr %coerce.dive4, align 8, !dbg !77
  %call = call i64 @pgprot_writecombine(i64 %2) #6, !dbg !77
  %coerce.dive5 = getelementptr inbounds %struct.pgprot, ptr %tmp3, i32 0, i32 0, !dbg !77
  store i64 %call, ptr %coerce.dive5, align 8, !dbg !77
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %tmp3, i64 8, i1 false), !dbg !77
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp3) #5, !dbg !77
  br label %if.end15, !dbg !78

if.else:                                          ; preds = %if.end
  %3 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !79
  %conv = zext i8 %3 to i32, !dbg !81
  %cmp6 = icmp sgt i32 %conv, 3, !dbg !82
  br i1 %cmp6, label %if.then8, label %if.end14, !dbg !83

if.then8:                                         ; preds = %if.else
  %4 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !84
  %conv9 = zext i8 %4 to i32, !dbg !84
  %cmp10 = icmp sgt i32 %conv9, 3, !dbg !84
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !84

cond.true:                                        ; preds = %if.then8
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !84
  %pgprot12 = getelementptr inbounds %struct.pgprot, ptr %tmp, i32 0, i32 0, !dbg !84
  %5 = load i64, ptr %pgprot12, align 8, !dbg !84
  %call13 = call i64 @cachemode2protval(i32 noundef 2) #6, !dbg !84
  %or = or i64 %5, %call13, !dbg !84
  store i64 %or, ptr %pgprot, align 8, !dbg !84
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !84
  br label %cond.end, !dbg !84

cond.false:                                       ; preds = %if.then8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %tmp, i64 8, i1 false), !dbg !84
  br label %cond.end, !dbg !84

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end14, !dbg !85

if.end14:                                         ; preds = %cond.end, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %tmp, i64 8, i1 false), !dbg !86
  br label %return, !dbg !87

return:                                           ; preds = %if.end15, %if.then
  %coerce.dive16 = getelementptr inbounds %struct.pgprot, ptr %retval, i32 0, i32 0, !dbg !88
  %6 = load i64, ptr %coerce.dive16, align 8, !dbg !88
  ret i64 %6, !dbg !88
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !89 dso_local i64 @pgprot_writecombine(i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !92 dso_local i64 @cachemode2protval(i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author274", scope: !2, file: !3, line: 89, type: !40, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/ttm/.ttm_module.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/ttm/ttm\22 -D KBUILD_BASENAME=\22ttm_module\22 -D KBUILD_MODNAME=\22ttm\22 -D __KBUILD_MODNAME=kmod_ttm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/ttm/ttm_module.ll drivers/gpu/drm/ttm/ttm_module.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/ttm/ttm_module.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "88fbc279110415ec6f45b02530d16086")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_caching", file: !6, line: 33, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/drm/ttm/ttm_caching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19c2ae3004d13ae67685208908fb2e14")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ttm_uncached", value: 0)
!10 = !DIEnumerator(name: "ttm_write_combined", value: 1)
!11 = !DIEnumerator(name: "ttm_cached", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_cache_mode", file: !13, line: 168, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!14 = !{!15, !16, !17, !18, !19, !20, !21}
!15 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WB", value: 0)
!16 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WC", value: 1)
!17 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC_MINUS", value: 2)
!18 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC", value: 3)
!19 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WT", value: 4)
!20 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WP", value: 5)
!21 = !DIEnumerator(name: "_PAGE_CACHE_MODE_NUM", value: 8)
!22 = !{!0, !23, !30, !35}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description275", scope: !2, file: !3, line: 90, type: !25, isLocal: true, isDefinition: true, align: 8)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 496, elements: !28)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{!29}
!29 = !DISubrange(count: 62)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file276", scope: !2, file: !3, line: 91, type: !32, isLocal: true, isDefinition: true, align: 8)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 264, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 33)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license277", scope: !2, file: !3, line: 91, type: !37, isLocal: true, isDefinition: true, align: 8)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 304, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 38)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 344, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 43)
!43 = !{i32 7, !"Dwarf Version", i32 5}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 8, !"cf-protection-branch", i32 1}
!47 = !{i32 4, !"function_return_thunk_extern", i32 1}
!48 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!49 = !{i32 1, !"Code Model", i32 2}
!50 = !{i32 1, !"override-stack-alignment", i32 8}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = distinct !DISubprogram(name: "ttm_prot_from_caching", scope: !3, file: !3, line: 62, type: !53, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !62)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !5, !55}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !13, line: 297, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !13, line: 297, size: 64, elements: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !56, file: !13, line: 297, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !60, line: 19, baseType: !61)
!60 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!61 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!62 = !{!63, !64}
!63 = !DILocalVariable(name: "caching", arg: 1, scope: !52, file: !3, line: 62, type: !5)
!64 = !DILocalVariable(name: "tmp", arg: 2, scope: !52, file: !3, line: 62, type: !55)
!65 = !DILocation(line: 62, column: 49, scope: !52)
!66 = !DILocation(line: 62, column: 67, scope: !52)
!67 = !DILocation(line: 65, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !52, file: !3, line: 65, column: 6)
!69 = !DILocation(line: 65, column: 14, scope: !68)
!70 = !DILocation(line: 65, column: 6, scope: !52)
!71 = !DILocation(line: 66, column: 10, scope: !68)
!72 = !DILocation(line: 66, column: 3, scope: !68)
!73 = !DILocation(line: 69, column: 6, scope: !74)
!74 = distinct !DILexicalBlock(scope: !52, file: !3, line: 69, column: 6)
!75 = !DILocation(line: 69, column: 14, scope: !74)
!76 = !DILocation(line: 69, column: 6, scope: !52)
!77 = !DILocation(line: 70, column: 9, scope: !74)
!78 = !DILocation(line: 70, column: 3, scope: !74)
!79 = !DILocation(line: 72, column: 25, scope: !80)
!80 = distinct !DILexicalBlock(scope: !74, file: !3, line: 72, column: 11)
!81 = !DILocation(line: 72, column: 11, scope: !80)
!82 = !DILocation(line: 72, column: 29, scope: !80)
!83 = !DILocation(line: 72, column: 11, scope: !74)
!84 = !DILocation(line: 73, column: 9, scope: !80)
!85 = !DILocation(line: 73, column: 3, scope: !80)
!86 = !DILocation(line: 86, column: 9, scope: !52)
!87 = !DILocation(line: 86, column: 2, scope: !52)
!88 = !DILocation(line: 87, column: 1, scope: !52)
!89 = !DISubprogram(name: "pgprot_writecombine", scope: !13, file: !13, line: 528, type: !90, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!90 = !DISubroutineType(types: !91)
!91 = !{!55, !55}
!92 = !DISubprogram(name: "cachemode2protval", scope: !13, file: !13, line: 497, type: !93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!93 = !DISubroutineType(types: !94)
!94 = !{!61, !12}
